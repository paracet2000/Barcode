unit UntLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids, UntMain,
  System.Actions, Vcl.ActnList;

type
  TfrmLogin = class(TForm)
    edtUserName: TLabeledEdit;
    edtPassword: TLabeledEdit;
    BitBtn1: TBitBtn;
    btnCancel: TBitBtn;
    Label1: TLabel;
    edtNewPass1: TLabeledEdit;
    edtNewPass2: TLabeledEdit;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure edtUserNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPasswordKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    function Authenticate: Boolean;
    { Private declarations }
  public
    { Public declarations }
    frmMain:TfrmMain;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses untDM, UntConstant;

procedure GetBuildInfo(var V1, V2, V3, V4: word);
var
  VerInfoSize, VerValueSize, Dummy: DWORD;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize > 0 then
  begin
      GetMem(VerInfo, VerInfoSize);
      try
        if GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo) then
        begin
          VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
          with VerValue^ do
          begin
            V1 := dwFileVersionMS shr 16;
            V2 := dwFileVersionMS and $FFFF;
            V3 := dwFileVersionLS shr 16;
            V4 := dwFileVersionLS and $FFFF;
          end;
        end;
      finally
        FreeMem(VerInfo, VerInfoSize);
      end;
  end;
end;

function GetBuildInfoAsString: string;
var
  V1, V2, V3, V4: word;
begin
  GetBuildInfo(V1, V2, V3, V4);
  Result := IntToStr(V1) + '.' + IntToStr(V2) + '.' +
    IntToStr(V3) + '.' + IntToStr(V4);
end;

procedure TfrmLogin.BitBtn1Click(Sender: TObject);
begin
  if edtNewPass1.Text<>'' then
  begin
    if edtNewPass1.Text<>edtNewPass2.Text then
    begin
      MessageDlg(msgPasswordNotMatch, mtWarning, [mbOK], 0);
      Exit;
    end;
    if Authenticate then
    begin
      dm.RequestData('UPDATE USERS SET '
      +' password='''+edtNewPass1.Text+''''
      +' where user_id='+Uid);
      self.Height:=225;
      edtNewPass1.Text:='';
      edtPassword.Text:='';
      edtPassword.SetFocus;
    end;
  end;

  if Authenticate then
  begin

      UName:=edtUserName.Text;
      UPAss:=edtPassword.Text;
      frmMain := TfrmMain.Create(Self);
      Try
        frmMain.Caption:=Application.Title
        +' [V.'+GetBuildInfoAsString+'] '
        +'['+FullName+']';
        frmMain.Show;

      Finally
        Hide;
      End;
  end
  else
    MessageDlg(msgLoginFail, mtWarning, [mbOK], 0);
end;

procedure TfrmLogin.btnCancelClick(Sender: TObject);
begin
  Self.Close;
  Application.Terminate;
end;

procedure TfrmLogin.edtPasswordKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    Key :=0;
    BitBtn1Click(Sender);
  end;
end;

procedure TfrmLogin.edtUserNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Key1:Word;
begin
  if (ssCtrl in Shift) then
  begin
    Key1:=13;
    edtUserName.Text:='Test';
    edtPassword.Text:='xxx';
    edtPasswordKeyUp(edtPassword as TObject,Key1,Shift);
  end;
  if key = 13  then
  begin
    key := 0;
    if Visible then
      edtPassword.SetFocus;
  end;
end;

procedure TfrmLogin.Label1Click(Sender: TObject);
begin
  Height:=320;
end;

procedure TfrmLogin.Action1Execute(Sender: TObject);
begin
   TLabeledEdit(Sender).Color:=clYellow;
end;

procedure TfrmLogin.Action2Execute(Sender: TObject);
begin
  TLabeledEdit(Sender).Color:=clWhite;
end;

function TfrmLogin.Authenticate(): Boolean;
Var
  S: String;
Begin
  Result := False;
  S := 'set names tis620; select * from Users where User_Name=''' + edtUserName.Text + ''' and password=''' + edtPassword.Text + '''';
  try
    dm.qLogin := dm.RequestData(S);
    dm.qLogin.Assign(dm.qSelect);
    dm.qLogin.Open;
    if dm.qLogin.RecordCount > 0 then
    begin
      Uid :=dm.qLogin.FieldByName('User_id').AsString;
      UName:= dm.qLogin.FieldByName('User_Name').AsString;
      FullName:= dm.qLogin.FieldByName('Full_Name').AsString;
      dm.RequestDataDset('Set Names TIS620; select 1 from users where 0=1;',dm.qReport);

      Result:=True;
    end;
  except
    Result := False;
  end;

End;



end.
