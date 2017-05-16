unit untPopup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  cxGridCardView;

type
  TfrmSelectPopup = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtCode: TLabeledEdit;
    edtDescription: TLabeledEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    StyleRepository: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    procedure edtCodeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtDescriptionKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelectPopup: TfrmSelectPopup;

implementation

{$R *.dfm}

uses untDM, UntConstant;

procedure TfrmSelectPopup.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSelectPopup.cxGrid1DBTableView1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
  begin
    self.ModalResult:=1;
    Hide;
  end;
end;

procedure TfrmSelectPopup.edtCodeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    if edtCode.Text = DM.qPopup.FieldByName(cxGrid1DBTableView1Column1.DataBinding.FieldName).AsString  then
    begin
      self.ModalResult:= mrOk;
      hide;
    end;

    if DM.qPopup.Locate(cxGrid1DBTableView1Column1.DataBinding.FieldName, edtCode.Text,
      [loCaseInsensitive, loPartialKey]) then
      edtDescription.Text := DM.qPopup.FieldByName(cxGrid1DBTableView1Column2.DataBinding.FieldName).AsString
    else
      MessageDlg(msgDataNotFound, mtWarning, [mbOK], 0);
  end;
  if Key = VK_DOWN then
    cxGrid1.SetFocus;
end;

procedure TfrmSelectPopup.edtDescriptionKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
      if edtDescription.Text = DM.qPopup.FieldByName(cxGrid1DBTableView1Column1.DataBinding.FieldName).AsString  then
    begin
      self.ModalResult:= mrOk;
      hide;
    end;
    if DM.qPopup.Locate(cxGrid1DBTableView1Column2.DataBinding.FieldName, edtDescription.Text,
      [loCaseInsensitive, loPartialKey]) then
      edtCode.Text := DM.qPopup.FieldByName(cxGrid1DBTableView1Column1.DataBinding.FieldName).AsString
    else
      MessageDlg(msgDataNotFound, mtWarning, [mbOK], 0);
  end;
  if Key = VK_DOWN then
    cxGrid1.SetFocus;
end;

end.
