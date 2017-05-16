unit untDateSelection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  siComp, Vcl.ExtCtrls, StrUtils;

type
  TfrmSendBack = class(TForm)
    btnOk: TBitBtn;
    siLang1: TsiLang;
    edtBoxBarcodePK: TLabeledEdit;
    edtPackBarcodePK: TLabeledEdit;
    chkNoPackPackage: TCheckBox;
    edtStation: TEdit;
    procedure btnOkClick(Sender: TObject);
    procedure edtBoxBarcodePKKeyPress(Sender: TObject; var Key: Char);
    procedure edtPackBarcodePKEnter(Sender: TObject);
    procedure edtPackBarcodePKKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSendBack: TfrmSendBack;

implementation

{$R *.dfm}

uses untDM, UntConstant;

procedure TfrmSendBack.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSendBack.edtBoxBarcodePKKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #9) or (Key = #10) then
    edtPackBarcodePK.SetFocus;
end;

procedure TfrmSendBack.edtPackBarcodePKEnter(Sender: TObject);
begin
  edtPackBarcodePK.SelectAll;
end;

procedure TfrmSendBack.edtPackBarcodePKKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  i, iRecord: Integer;

  Function CheckComplete: Boolean;
  Begin
    Result := False;
    dm.RequestData('Select Check_in,Record_Status from inventory where serial_no='''+edtPackBarcodePK.Text+'''');
    if dm.qSelect.Fields[0].AsString ='' then
      Result:=True;
    if dm.qSelect.Fields[1].AsString <>'1' then
      Result:=False;

  End;

begin
  SystemParametersInfo(SPI_SETBEEP, 0, nil, SPIF_SENDWININICHANGE);

  if edtPackBarcodePK.Text = '' then
    Exit;

  if (Key = 13) or (Key = 9) or (Key = 10) then
  begin
    if chkNoPackPackage.Checked=False then
    begin
      if LeftStr(edtPackBarcodePK.Text,1)='B' then
      begin
        edtBoxBarcodePK.Text:=edtPackBarcodePK.Text;
        edtPackBarcodePK.Clear;
        exit;
      end;
    end else
    begin
      if (edtBoxBarcodePK.Text='') then
      begin
        edtBoxBarcodePK.Text:=edtPackBarcodePK.Text;
        edtPackBarcodePK.Clear;
        exit;
      end;
    end;

    if not CheckComplete then
    begin
      edtPackBarcodePK.Text := '';
      MessageDlg(msgCannotCancel, mtWarning, [mbOK], 0);
      edtPackBarcodePK.SetFocus;
      Exit;
    end
    else
    begin
      Try
        dm.UniConnection1.ExecSQL('Update Inventory Set Pack_Send_By = null, Pack_Send_Date=null '+
        ' Where Serial_No='''+edtPackBarcodePK.Text+'''');
        MessageDlg(msgSendBackComplete, mtInformation, [mbOK], 0);
      Except on E: exception do
        MessageDlg(msgCannotCancel, mtError, [mbOK], 0);
      end;
    end;
    end;
  end;

end.
