unit UntPattern;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, Vcl.Buttons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Vcl.Mask, Vcl.DBCtrls;

type
  TFramePattern = class(TFrame)
    pnlSelect: TPanel;
    dbgSelection: TDBGrid;
    chkFilterPart: TCheckBox;
    lblPartInternal: TLabel;
    lblPart: TLabel;
    lblCustomer: TLabel;
    lblCustomerId: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    btnSave: TBitBtn;
    BitBtn2: TBitBtn;
    colCustCode: TcxGridDBColumn;
    colCusId: TcxGridDBColumn;
    colPartNo: TcxGridDBColumn;
    colPartName: TcxGridDBColumn;
    colCustName: TcxGridDBColumn;
    colPackSize: TcxGridDBColumn;
    colPackPerbox: TcxGridDBColumn;
    edtCustomer: TDBEdit;
    edtCustomerName: TDBEdit;
    edtPartCode: TDBEdit;
    edtPartName: TDBEdit;
    edtPackSize: TDBEdit;
    edtPackPerBox: TDBEdit;
    edtCusId: TDBEdit;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;

    procedure edtCustomerChange(Sender: TObject);
    procedure edtCustomerEnter(Sender: TObject);
    procedure edtCustomerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure edtCustomerNameChange(Sender: TObject);
    procedure edtCustomerNameClick(Sender: TObject);
    procedure edtCustomerNameEnter(Sender: TObject);
    procedure edtCustomerNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure edtPartCodeChange(Sender: TObject);
    procedure edtPartCodeEnter(Sender: TObject);
    procedure edtPartCodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure edtPartNameChange(Sender: TObject);
    procedure edtPartNameClick(Sender: TObject);
    procedure edtPartNameEnter(Sender: TObject);
    procedure edtPartNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);

    procedure dbgSelectionDblClick(Sender: TObject);
    procedure dbgSelectionKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure btnSaveClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses untDM, UntGlobalLibs, UntConstant;

procedure TFramePattern.edtCustomerChange(Sender: TObject);
begin
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectCustomerByCode';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=edtCustomer.Text;
  dm.stGlobal.ExecProc;
  pnlSelect.Show;
end;

procedure TFramePattern.edtCustomerEnter(Sender: TObject);
begin
  pnlSelect.Top:= edtCustomer.Top+edtCustomer.Height;
  pnlSelect.Left:=edtCustomer.Left;
  pnlSelect.Visible:=True;

  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectCustomerByCode';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=edtCustomer.Text;
  dm.stGlobal.ExecProc;


  ActiveDBEdit:= TDBEdit(Sender);
  edtCustomerChange(Sender);
  dbgSelection.Visible:=True;
end;

procedure TFramePattern.edtCustomerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    dbgSelection.SetFocus;
end;

procedure TFramePattern.edtCustomerNameChange(Sender: TObject);
begin
  if not TEdit(Sender).Focused then
    Exit;

  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectCustomerByName';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=TEdit(Sender).Text;
  dm.stGlobal.ExecProc;
end;

procedure TFramePattern.edtCustomerNameClick(Sender: TObject);
begin
  pnlSelect.Top:=TEdit(Sender).Top+TEdit(Sender).Height;
  pnlSelect.Visible:=True;
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectCustomerByName';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=TEdit(Sender).Text;
  dm.stGlobal.ExecProc;
end;

procedure TFramePattern.edtCustomerNameEnter(Sender: TObject);
begin
  ActiveDBEdit:= TDBEdit(Sender);
  dbgSelection.Visible:=True;
end;

procedure TFramePattern.edtCustomerNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    dbgSelection.SetFocus;
end;

procedure TFramePattern.edtPartCodeChange(Sender: TObject);
begin
  if chkFilterPart.Checked then
  begin
    dm.stGlobal.Close;
    dm.stGlobal.UnPrepare;
    dm.stGlobal.StoredProcName:='selectPartByCodeAndCusId';
    dm.stGlobal.Prepare;
    dm.stGlobal.Params[0].Value:=edtPartCode.Text;
    dm.stGlobal.Params[1].Value:=lblCustomerId.Caption;
  end else
  Begin
    dm.stGlobal.Close;
    dm.stGlobal.UnPrepare;
    dm.stGlobal.StoredProcName:='selectPartByCode';
    dm.stGlobal.Prepare;
    dm.stGlobal.Params[0].Value:=edtPartCode.Text;
  End;

  dm.stGlobal.ExecProc;
  pnlSelect.Visible:=True;
end;

procedure TFramePattern.edtPartCodeEnter(Sender: TObject);
begin
  pnlSelect.Top:= edtPartCode.Top+edtPartCode.Height;
  pnlSelect.Left:=edtPartCode.Left;

  ActiveDBEdit:= TDBedit(Sender);
  edtPartCodeChange(Sender);
  pnlSelect.Visible:=True;
end;

procedure TFramePattern.edtPartCodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    dbgSelection.SetFocus;
end;

procedure TFramePattern.edtPartNameChange(Sender: TObject);
begin
  if not TEdit(Sender).Focused then
    Exit;

  pnlSelect.Top:=TEdit(Sender).Top+TEdit(Sender).Height;
  pnlSelect.Visible:=True;
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectPartByName';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=TEdit(Sender).Text;
  dm.stGlobal.ExecProc;
end;

procedure TFramePattern.edtPartNameClick(Sender: TObject);
begin
  pnlSelect.Top:=TEdit(Sender).Top+TEdit(Sender).Height;
  pnlSelect.Visible:=True;
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectPartByName';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=TEdit(Sender).Text;
  dm.stGlobal.ExecProc;
end;

procedure TFramePattern.edtPartNameEnter(Sender: TObject);
begin
  ActiveDBEdit:= TDBedit(Sender);
  dbgSelection.Visible:=True;
end;

procedure TFramePattern.edtPartNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    dbgSelection.SetFocus;
end;

procedure TFramePattern.btnSaveClick(Sender: TObject);
begin
  With DM.qPattern do
  Begin
    TBitBtn(Sender).Enabled:=False;
    ApplyUpdates;
    btnAdd.Enabled:=True;
    btnEdit.Enabled:=True;
  End;
end;

procedure TFramePattern.BitBtn2Click(Sender: TObject);
begin
  if (MessageDlg(msgConfirmToDelete+#13#10+dm.qPattern.FieldByName('Part_Name').AsString, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      DM.qPattern.Delete;
end;

procedure TFramePattern.btnAddClick(Sender: TObject);
begin
  dm.qPattern.Append;
  edtCustomer.SetFocus;
  TBitBtn(Sender).Enabled:=False;
  btnSave.Enabled:=True;
end;

procedure TFramePattern.btnEditClick(Sender: TObject);
begin
  DM.qPattern.Edit;
  TBitBtn(Sender).Enabled:=False;
  btnSave.Enabled:=True;
end;

procedure TFramePattern.dbgSelectionDblClick(Sender: TObject);
begin
  SetValueDB((ActiveDBEdit as TDBEdit));

  if ActiveDBEdit = edtPartCode then
  begin
    SetValueDB(edtPartName);
    lblPartInternal.Caption:= dbgSelection.Fields[2].AsString;

  end;
  if ActiveDBEdit = edtPartName then
  begin
    SetValueDB(edtPartCode );
    lblPartInternal.Caption:= dbgSelection.Fields[2].AsString;
  end;

  if ActiveDBEdit = edtCustomer then
  begin
    SetValueDB(edtCustomerName);
    lblCustomerId.Caption:= dbgSelection.Fields[2].AsString;
    dm.qPattern.FieldByName('Cus_Id').AsString:=dbgSelection.Fields[2].AsString;
  end;
  if ActiveDBEdit = edtCustomerName then
  begin
    SetValueDB(edtCustomer );
    lblCustomerId.Caption:= dbgSelection.Fields[2].AsString;
    dm.qPattern.FieldByName('Cus_Id').AsString:=dbgSelection.Fields[2].AsString;
  end;

  if (ActiveDBEdit = edtPartCode) or (ActiveDBEdit = edtPartName) then
  Begin

  End;

  if (ActiveDBEdit = edtCustomer) or (ActiveDBEdit = edtCustomerName) then
  Begin
    edtPartCode.SetFocus;
  End;

  pnlSelect.Hide;
end;

procedure TFramePattern.dbgSelectionKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    pnlSelect.Top:=3000;
    dbgSelectionDblClick(Sender);
    Repaint;
  end;
end;

end.
