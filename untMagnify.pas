unit untMagnify;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Jpeg,
  Vcl.ComCtrls, CnSpin;

type
  TfrmMagnify = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    Image2: TImage;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    edtTop: TCnSpinEdit;
    edtLeft: TCnSpinEdit;
    edtRight: TCnSpinEdit;
    edtBottom: TCnSpinEdit;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMagnify: TfrmMagnify;

implementation

{$R *.dfm}

uses UntMain, untDM, Data.db;

procedure TfrmMagnify.BitBtn1Click(Sender: TObject);
VAR
  Bitmap: TBitmap;

  JPEGImage: TJPEGImage;
  Quality: INTEGER;
begin
  Quality := 90; // or desired value

  Bitmap := TBitmap.Create;
  TRY
    Bitmap := Image2.Picture.Bitmap;

    JPEGImage := TJPEGImage.Create;
    TRY
      JPEGImage.CompressionQuality := Quality;
      // Convert BMP to JPG
      JPEGImage.Assign(Bitmap);

      JPEGFilename := 'C:\Temp\' + FormatDateTime('yyyymmddhhmmss',
        now) + '.jpg';
      if not DirectoryExists('C:\Temp') then
        MkDir('C:\Temp');

      JPEGImage.SaveToFile(JPEGFilename);

      ModalResult := 1;
    FINALLY
      JPEGImage.Free
    END

  FINALLY
    Bitmap.Free
  END;

end;

procedure TfrmMagnify.FormShow(Sender: TObject);
var
  bmp: TBitmap;
  MyOther: TRect;
  jpg: TJPEGImage;
  stm: TStream;
begin

  // Image1.Picture.Graphic.LoadFromStream(frmMain.stJPGStream);
  bmp := TBitmap.Create;
  jpg := TJPEGImage.Create;
  stm := TStream.Create;

  if CheckBox1.Checked then
  begin
    if Sender is TTrackBar then
    begin
      if TTrackBar(Sender) = TrackBar1 then
        TrackBar2.Position:=TrackBar1.Position
      else
        TrackBar1.Position:=TrackBar2.Position;
    end;
  end;
  try

    stm := dm.qPart.CreateBlobStream
      (TBlobField(dm.qPart.FieldByName('Part_image')), bmRead);
    jpg.LoadFromStream(stm);

    bmp.PixelFormat := pf24bit;
    bmp.Height := jpg.Height;
    bmp.Width := jpg.Width;
    bmp.Canvas.Draw(0, 0, jpg);
    TrackBar1.Max := bmp.Width;
    TrackBar2.Max := bmp.Height;
    TrackBar1.Frequency:=TrackBar1.Max div 100;
    TrackBar2.Frequency:=TrackBar2.Max div 100;
    MyOther := Rect(TrackBar1.Position, TrackBar2.Position,
      bmp.Width - TrackBar1.Position, bmp.Height - TrackBar2.Position);

//    MyOther.Left:=MyOther.Left-StrToIntDef(edtLeft.Text,0);
//    MyOther.Right:=MyOther.Left-StrToIntDef(edtRight.Text,0);
//    MyOther.Top:=MyOther.Left-StrToIntDef(edtTop.Text,0);
//    MyOther.Bottom:=MyOther.Left-StrToIntDef(edtBottom.Text,0);

    Image1.Picture.Bitmap.Assign(bmp);

    Image2.Canvas.CopyRect(Image2.Canvas.ClipRect,
      Image1.Picture.Bitmap.Canvas, MyOther);
  finally
    bmp.Free;
    stm.Free;
    jpg.Free;
  end;
end;

end.
