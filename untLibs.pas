unit untLibs;

interface

uses
  FMX.Graphics, System.UITypes, FMX.Objects, FMX.PixelFormats, FMX.Types,
  System.Math, System.IOUtils, System.Classes, System.Types, StrUtils, IdGlobal,
  IdHash, IdHashMessageDigest, FMX.Helpers.Android,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Provider, Androidapi.JNI.JavaTypes, System.SysUtils,FMX.Dialogs;

Function GetColorOfPixel(Sender: TObject; x: integer; y: integer): TAlphaColor;
procedure ApplyNoAlphaEdge(ABitmap: TBitmap; OpacityThreshold: integer);
procedure RGBToHLS(CONST R, G, B: Single; VAR H, L, S: Single);
procedure HLStoRGB(CONST H, L, S: Single; VAR R, G, B: integer);
procedure RGBToCMYK(CONST R, G, B: Single; VAR C, M, y, K: Single);
Procedure RGBtoLAB(R, G, B: Single; L1, A1, B1: Single);
Procedure LABtoRGB(cL, cA, cB: Single; Var R, G, B: Single);
Function BrowseForImage: TStringList;
Function BrowseForDB: TStringList;
Function Encrypt(ustring: string): String;
Function GetVersion: string;
procedure WriteTextToBitMap(Var ABitmap: TBitmap; sTxt: string; X,Y: Single);

implementation

uses untVariables;

procedure WriteTextToBitMap(Var ABitmap: TBitmap; sTxt: string; X,Y: Single);
Var
  LRect: TRectF;
begin
  LRect.Create(X, Y, ABitmap.canvas.Width, 100);
  ABitmap.canvas.BeginScene();
  ABitmap.canvas.Fill.Color := TAlphaColors.Black;
  ABitmap.canvas.Font.Family := 'Tahoma';
  ABitmap.canvas.Font.Size := 24;
  ABitmap.canvas.FillText(LRect, sTxt, True, 255, [], TTextAlign.taCenter,
    TTextAlign.taCenter);
  ABitmap.canvas.endscene;;
end;

Function GetVersion: string;
var
  PackageManager: JPackageManager;
  PackageInfo: JPackageInfo;
begin
{$IFDEF ANDROID}
  PackageManager := SharedActivityContext.getPackageManager;
  PackageInfo := PackageManager.getPackageInfo
    (SharedActivityContext.getPackageName, 0);
  Result := JStringToString(PackageInfo.versionName);
{$ENDIF}
{$IFDEF IOS}
  Result := TNSString.Wrap(CFBundleGetValueForInfoDictionaryKey
    (CFBundleGetMainBundle, kCFBundleVersionKey)).UTF8String;
{$ENDIF}
End;

Function GetColorOfPixel(Sender: TObject; x: integer; y: integer): TAlphaColor;
var
  vBitMapData: TBitmapData;
begin
  if TImage(Sender).Bitmap.Map(TMapAccess.maRead, vBitMapData) then
    Result := vBitMapData.GetPixel(x, y)
  else
    Result := vBitMapData.GetPixel(0, 0);
  TImage(Sender).Bitmap.Unmap(vBitMapData);

end;

procedure WritePixelColor(Sender: TObject; x: integer; y: integer);
// example of setting a single pixel in a TImage bitmap.
// the image must already be loaded in the TImage
var
  vBitMapData: TBitmapData;
  vPixelColor: TAlphaColor;
  // note: FireMonkey colors are different from VCL TColor
begin
  // lock and get the bitmap pixels
  if TImage(Sender).Bitmap.Map(TMapAccess.maWrite, vBitMapData) then
  begin
    vPixelColor := TAlphaColorRec.Black; // determine colour to use
    vBitMapData.SetPixel(x, y, vPixelColor);
    // set the pixel colour at x:10, y:20

    TImage(Sender).Bitmap.Unmap(vBitMapData); // unlock the bitmap
  end;
end;

procedure ApplyNoAlphaEdge(ABitmap: TBitmap; OpacityThreshold: integer);
var
  bitdata1: TBitmapData;
  I: integer;
  J: integer;
  C: TAlphaColor;
begin
  if (ABitmap.Map(TMapAccess.maReadWrite, bitdata1)) then
    try
      for I := 0 to ABitmap.Width - 1 do
        for J := 0 to ABitmap.Height - 1 do
        begin
          begin
            C := PixelToAlphaColor(@PAlphaColorArray(bitdata1.Data)
              [J * (bitdata1.Pitch div GetPixelFormatBytes(ABitmap.PixelFormat))
              + 1 * I], ABitmap.PixelFormat);
            if TAlphaColorRec(C).A < OpacityThreshold then
            begin
              TAlphaColorRec(C).A := 0;

              AlphaColorToPixel(C, @PAlphaColorArray(bitdata1.Data)
                [J * (bitdata1.Pitch div GetPixelFormatBytes
                (ABitmap.PixelFormat)) + 1 * I], ABitmap.PixelFormat);
            end;
          end;
        end;
    finally
      ABitmap.Unmap(bitdata1);
    end;
end;

procedure RGBToHLS(CONST R, G, B: Single; VAR H, L, S: Single);
VAR
  Delta: integer;
  Max: integer;
  Min: integer;
BEGIN
  Max := Trunc(MaxValue([R, G, B]));
  Min := Trunc(MinValue([R, G, B]));

  L := (Max + Min) / 2.0; // Lightness

  IF Max = Min // Achromatic case since r = g = b
  THEN
  BEGIN
    S := 0.0;
    H := NAN; // Undefined
  END
  ELSE
  BEGIN
    Delta := Max - Min;

    IF L <= 0.5 THEN
      S := Delta / (Max + Min)
    ELSE
      S := Delta / (2.0 - (Max + Min));

    IF R = Max THEN // degrees between yellow and magenta
      H := (60.0 * (G - B)) / Delta
    ELSE IF G = Max THEN // degrees between cyan and yellow
      H := 120.0 + (60.0 * (B - R)) / Delta
    ELSE IF B = Max THEN // degrees between magenta and cyan
      H := 240.0 + (60.0 * (R - G)) / Delta;

    IF H < 0 THEN
      H := H + 360.0; // Keep in interval [0, 360)

  END
END { RGBtoHLS };

Procedure HLStoRGB(CONST H, L, S: Single; VAR R, G, B: integer);
VAR
  m1: Single;
  m2: Single;

  FUNCTION Value(CONST n1, n2: Single; hue: Single): Single;
  BEGIN
    IF hue > 360.0 THEN
      hue := hue - 360.0
    ELSE IF hue < 0.0 THEN
      hue := hue + 360.0;

    IF hue < 60.0 THEN
      Result := n1 + (n2 - n1) * hue / 60.0
    ELSE IF hue < 180 THEN
      Result := n2
    ELSE IF hue < 240.0 THEN
      Result := n1 + (n2 - n1) * (240.0 - hue) / 60.0
    ELSE
      Result := n1
  END { Value };

BEGIN

  // There is an error in Computer Graphics Principles and Practice,
  // Foley, et al, 1996, pp. 592-596.  The formula uses a lower case
  // "el", "l", and defines in C:
  //
  // m2 = (l < 0.5) ? (l * (l+s)):(l+s-l*s)
  //
  // This is a perfect example of why "l" (a lower case "el") should
  // NEVER be used as a variable name, and why a programming convention --
  // to use lower case letters in variable names -- should not override
  // the problem definition, which defines the color space using an "L".
  // The 1982 version of the book, in Pascal, shows the correct formula
  // (but alas, also used a lower case "l"):
  //
  // if   l <= 0.5
  // then m2 := l*(1+s)    //  NOTE the one, in "1+s", here
  // else m2 := l + s - l*s
  //
  // [Thanks to Gary Freestone, IBM Global Services Australia, for
  // bringing this to my attention.  efg, Sept. 2001]

  IF L <= 0.5 THEN
    m2 := L * (1 + S)
  ELSE
    m2 := L + S - L * S;

  m1 := 2.0 * L - m2;

  IF S = 0.0 THEN
  BEGIN // achromatic -- no hue
    IF IsNAN(H) THEN
    BEGIN
      R := Trunc(L);
      G := Trunc(L);
      B := Trunc(L)
    END
  END
  ELSE
  BEGIN
    // Chromatic case -- there is a hue
    R := Trunc(Value(m1, m2, H + 120.0));
    G := Trunc(Value(m1, m2, H));
    B := Trunc(Value(m1, m2, H - 120.0))
  END
END { HLStoRGB };

// == CMY / RGB =======================================================
//
// Based on C Code in "Computer Graphics -- Principles and Practice,"
// Foley et al, 1996, p. 588

// R, G, B, C, M, Y each IN [0.0 .. 1.0]
Procedure CMYtoRGB(CONST C, M, y: Single; VAR R, G, B: integer);
BEGIN
  R := Trunc(1.0 - C);
  G := Trunc(1.0 - M);
  B := Trunc(1.0 - y)
END { CMYtoRGB };

// R, G, B, C, M, Y each IN [0.0 .. 1.0]
Procedure RGBtoCMY(CONST R, G, B: Single; VAR C, M, y: Single);
BEGIN
  C := 1.0 - R;
  M := 1.0 - G;
  y := 1.0 - B;
  // if C < 0 then
  // C:=0;
  // if M < 0 then
  // M:=0;
  // if Y < 0 then
  // Y:=0;

END { RGBtoCMY };


// == CMYK / RGB ======================================================
//
// Based on C Code in "Computer Graphics -- Principles and Practice,"
// Foley et al, 1996, p. 589

// R, G, B, C, M, Y, K each IN [0.0 .. 1.0]
Procedure CMYKtoRGB(CONST C, M, y, K: Single; VAR R, G, B: integer);
BEGIN
  R := Trunc(1.0 - (C + K));
  G := Trunc(1.0 - (M + K));
  B := Trunc(1.0 - (y + K))
END { CMYtoRGB };

// R, G, B, C, M, Y each IN [0.0 .. 1.0]
Procedure RGBToCMYK(CONST R, G, B: Single; VAR C, M, y, K: Single);
BEGIN
  RGBtoCMY(R, G, B, C, M, y);
  K := MinValue([C, M, y]);
  C := (C - K);
  M := (M - K);
  y := (y - K);
  if K < 0 then
    K := 0;
END { RGBtoCMYK };

Procedure RBGtoXYZ(R, G, B: Single; Var x, y, Z: Single);
Var
  var_R, var_G, var_B: Single;
Begin
  var_R := R/255; // R from 0 to 255
  var_G := G/255; // G from 0 to 255
  var_B := B/255; // B from 0 to 255

  if (var_R > 0.04045) then
    var_R := Power(((var_R + 0.055) / 1.055), 2.4)
  else
    var_R := var_R / 12.92;
  if (var_G > 0.04045) then
    var_G := Power(((var_G + 0.055) / 1.055), 2.4)
  else
    var_G := var_G / 12.92;
  if (var_B > 0.04045) then
    var_B := Power(((var_B + 0.055) / 1.055), 2.4)
  else
    var_B := var_B / 12.92;

  var_R := var_R * 100;
  var_G := var_G * 100;
  var_B := var_B * 100;

  // Observer. := 2°, Illuminant := D65
  x := var_R * 0.4124 + var_G * 0.3576 + var_B * 0.1805;
  y := var_R * 0.2126 + var_G * 0.7152 + var_B * 0.0722;
  Z := var_R * 0.0193 + var_G * 0.1192 + var_B * 0.9505;
End;

/// <url>element://model:project::Jaundice/design:view:::0c59uvgy8ral7x84h_v</url>
Procedure XYZtoLAB(x, y, Z: Single; Var L, A, B: Single);
Var
  var_X, var_Y, var_Z: Single;
Begin

  var_X := x / 95.047; // ref_X :=  95.047   Observer:= 2°, Illuminant:= D65
  var_Y := y / 100.000; // ref_Y := 100.000
  var_Z := Z / 108.883; // ref_Z := 108.883

  if (var_X > 0.008856) then
    var_X := Power(var_X, (1 / 3))
  else
    var_X := (7.787 * var_X) + (16 / 116);
  if (var_Y > 0.008856) then
    var_Y := Power(var_Y, (1 / 3))
  else
    var_Y := (7.787 * var_Y) + (16 / 116);
  if (var_Z > 0.008856) then
    var_Z := Power(var_Z, (1 / 3))
  else
    var_Z := (7.787 * var_Z) + (16 / 116);

  L := (116 * var_Y) - 16;
  A := 500 * (var_X - var_Y);
  B := 200 * (var_Y - var_Z);
  gL:=L;
  gA:=A;
  gB:=B;
End;

Procedure RGBtoLAB(R, G, B: Single; L1, A1, B1: Single);
Var
  var_X, var_Y, var_Z: Single;
Begin
  RBGtoXYZ(R, G, B, var_X, var_Y, var_Z);
  XYZtoLAB(var_X, var_Y, var_Z, L1, A1, B1);
End;

Procedure LABtoXYZ(L, A, B: Single; Var x, y, Z: Single);
Var
  var_X, var_Y, var_Z: Single;
Begin
  var_Y := (L + 16) / 116;
  var_X := A / 500 + var_Y;
  var_Z := var_Y - B / 200;

  if (Power(var_Y, 3) > 0.008856) then
    var_Y := Power(var_Y, 3)
  else
    var_Y := (var_Y - 16 / 116) / 7.787;
  if (Power(var_X, 3) > 0.008856) then
    var_X := Power(var_X, 3)
  else
    var_X := (var_X - 16 / 116) / 7.787;
  if (Power(var_Z, 3) > 0.008856) then
    var_Z := Power(var_Z, 3)
  else
    var_Z := (var_Z - 16 / 116) / 7.787;

  x := 95.047 * var_X; // ref_X :=  95.047     Observer:= 2°, Illuminant:= D65
  y := 100.000 * var_Y; // ref_Y := 100.000
  Z := 108.883 * var_Z; // ref_Z := 108.883
end;

Procedure XYZtoRGB(x, y, Z: Single; Var R, G, B: Single);
Var
  var_X, var_Y, var_Z, var_R, var_G, var_B: Single;
Begin
  var_X := x / 100;
  // X from 0 to  95.047      (Observer := 2°, Illuminant := D65)
  var_Y := y / 100; // Y from 0 to 100.000
  var_Z := Z / 100; // Z from 0 to 108.883

  var_R := var_X * 3.2406 + var_Y * -1.5372 + var_Z * -0.4986;
  var_G := var_X * -0.9689 + var_Y * 1.8758 + var_Z * 0.0415;
  var_B := var_X * 0.0557 + var_Y * -0.2040 + var_Z * 1.0570;

  if (var_R > 0.0031308) then
    var_R := 1.055 * Power(var_R, (1 / 2.4)) - 0.055
  else
    var_R := 12.92 * var_R;
  if (var_G > 0.0031308) then
    var_G := 1.055 * Power(var_G, (1 / 2.4)) - 0.055
  else
    var_G := 12.92 * var_G;
  if (var_B > 0.0031308) then
    var_B := 1.055 * Power(var_B, (1 / 2.4)) - 0.055
  else
    var_B := 12.92 * var_B;

  R := var_R ;
  G := var_G ;
  B := var_B ;
End;

Procedure LABtoRGB(cL, cA, cB: Single; Var R, G, B: Single);
Var
  var_X, var_Y, var_Z: Single;
Begin
  //ShowMessage(FloatToStr(cL));
  LABtoXYZ(cL, cA, cB, var_X, var_Y, var_Z);

  XYZtoRGB(var_X, var_Y, var_Z, R, G, B);
End;

Function BrowseForImage: TStringList;
var
  DirList: TStringDynArray;
  DirPath: string;
  S: string;
  StrList: TStringList;
begin
  DirPath := System.IOUtils.TPath.GetHomePath;
  StrList := TStringList.Create;

  if System.IOUtils.TDirectory.Exists(DirPath, True) then
  begin
    // Get all files. Non-Windows systems don't typically care about
    // extensions, so we just use a single '*' as a mask.
    DirList := TDirectory.GetFiles(DirPath, 'HN*');

    // If none found, show that in memo
    if Length(DirList) = 0 then
      StrList.Add('No files found in ' + DirPath)
    else // Files found. List them.
    begin
      for S in DirList do
        StrList.Add(ReplaceStr(S, DirPath + '/', ''));
    end;
  end;

  Result := StrList;
end;

Function BrowseForDB: TStringList;
var
  DirList: TStringDynArray;
  DirPath: string;
  S: string;
  StrList: TStringList;
begin
  DirPath := LeftStr(BackupPath, Length(BackupPath) - 1);
  StrList := TStringList.Create;

  if System.IOUtils.TDirectory.Exists(DirPath, True) then
  begin
    // Get all files. Non-Windows systems don't typically care about
    // extensions, so we just use a single '*' as a mask.
    DirList := System.IOUtils.TDirectory.GetFiles(DirPath, 'Jaun*');

    // If none found, show that in memo
    if Length(DirList) = 0 then
      StrList.Add('No files found in ' + DirPath)
    else // Files found. List them.
    begin
      for S in DirList do
        StrList.Add(ReplaceStr(S, DirPath + '/', ''));
    end;
  end;

  Result := StrList;
end;

Function Encrypt(ustring: string): String;
Var
  pwd: TIdHashMessageDigest5;
begin
  pwd := TIdHashMessageDigest5.Create;
  with pwd do
    try
      Result := pwd.HashStringAsHex(ustring);
    finally
      Free;
    end;
End;

end.
