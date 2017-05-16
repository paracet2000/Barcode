unit untFraProduction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBAccess, Uni,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls
  ,SYstem.Math, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxSplitter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxGridCustomView, cxGridCustomTableView, cxGridCustomLayoutView,
  cxGridCardView, cxClasses, cxGridLevel, cxGrid, cxDBData, cxGridDBCardView,
  Vcl.DBCtrls, cxContainer, cxImage, cxDBEdit, cxGridTableView,
  cxGridDBTableView, cxMaskEdit, cxCurrencyEdit, StrUtils, Vcl.Menus;

type
  TfraProduction = class(TFrame)
    dbgSelection: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnShowPrdDetail: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lblCustomerId: TLabel;
    lblPartInternal: TLabel;
    edtPartCode: TEdit;
    edtPartName: TEdit;
    edtCustomer: TEdit;
    edtCustomerName: TEdit;
    edtOrderNo: TEdit;
    edtMaterialType: TEdit;
    dtDueDate: TDateTimePicker;
    edtMaterialSize: TEdit;
    edtCertificate: TEdit;
    edtQnty: TEdit;
    edtLotNo: TEdit;
    edtCoil: TEdit;
    edtWeight: TEdit;
    chkNoProductionOrder: TCheckBox;
    Panel4: TPanel;
    cxSplitter1: TcxSplitter;
    pnlCustomer: TPanel;
    pnlPart: TPanel;
    lblProductDetail: TLabel;
    btnPrdLine: TBitBtn;
    cxDBImage1: TcxDBImage;
    grdPartDetail: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    grdPartDetailColumn1: TcxGridDBColumn;
    grdPartDetailColumn2: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    edtCheckSum: TEdit;
    Panel5: TPanel;
    btnCheckAmount: TBitBtn;
    pnlSelect: TPanel;
    chkFilterPart: TCheckBox;
    btnAutoCreate: TBitBtn;
    PopupMenu1: TPopupMenu;
    A1: TMenuItem;
    S1: TMenuItem;
    procedure edtPartCodeEnter(Sender: TObject);
    procedure edtCustomerEnter(Sender: TObject);
    procedure edtPartCodeChange(Sender: TObject);
    procedure edtCustomerChange(Sender: TObject);
    procedure dbgSelectionDblClick(Sender: TObject);
    procedure dbgSelectionKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPartNameClick(Sender: TObject);
    procedure edtCustomerNameClick(Sender: TObject);
    procedure edtCustomerNameChange(Sender: TObject);
    procedure edtPartNameChange(Sender: TObject);
    procedure edtPartCodeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPartNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCustomerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCustomerNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPartNameEnter(Sender: TObject);
    procedure edtCustomerNameEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtWeightKeyPress(Sender: TObject; var Key: Char);
    procedure edtQntyKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure edtWeightEnter(Sender: TObject);
    procedure edtWeightExit(Sender: TObject);
    procedure edtOrderNoEnter(Sender: TObject);
    procedure edtOrderNoChange(Sender: TObject);
    procedure btnShowPrdDetailClick(Sender: TObject);
    Function GetBalance(PartCode:String): integer;
    procedure edtLotNoChange(Sender: TObject);
    procedure ApplyData;
    procedure btnCheckAmountClick(Sender: TObject);
    procedure btnAutoCreateClick(Sender: TObject);
    procedure ApplyTemplate;
    procedure A1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

implementation

{$R *.dfm}

uses untDM, UntConstant, UntGlobalLibs;

procedure TfraProduction.A1Click(Sender: TObject);
begin
  ApplyTemplate;
end;

procedure TfraProduction.ApplyData;
begin
  with dm.stPrdOrder do
  begin
    if Eof then
      Exit;

    edtPartCode.Text:=FieldByName('Part_No').AsString;
    DM.RequestData('Select Part_Name from Parts where Part_No='''+FieldByName('Part_No').AsString+'''');
    edtPartName.Text:=DM.qSelect.FieldByName('Part_Name').AsString;
    lblPartInternal.Caption:=FieldByName('Part_No').AsString;
    lblCustomerId.Caption:=FieldByName('Cus_Id').AsString;

    DM.RequestData('Select cus_code,Cus_Name from customers where cus_id='''+FieldByName('Cus_Id').AsString+'''');
    edtCustomer.Text:=DM.qSelect.FieldByName('Cus_Code').AsString;
    edtCustomerName.Text:= DM.qSelect.FieldByName('Cus_Name').AsString;


    edtOrderNo.Text:=FieldByName('Order_No').AsString;
    dtDueDate.DateTime:=FieldByName('Due_Date').AsDateTime;
    edtMaterialType.Text:=FieldByName('Mat_Code').AsString;
    edtMaterialSize.Text:=FieldByName('Mat_Size').AsString;

    edtCertificate.Text:=FieldByName('Cert_No').AsString;
    edtQnty.Text:= FieldByName('Qnty').AsString;
    edtLotNo.Text:= LeftStr(FieldByName('Lot_No').AsString,13);
    edtWeight.Text:= FieldByName('Total_Weight').AsString;

    edtCoil.Text:= FieldByName('Coil_No').AsString;
    edtWeight.SetFocus;
  end;
end;

procedure TfraProduction.ApplyTemplate;
begin
  with dm.store_InsertInventory do
  begin
    dm.stGlobal.Close;
    StoredProcName:='SelectPrdTemplateByPart';
    Prepare;
    Params[0].Value:= edtPartCode.Text;
    ExecProc;
//    if not eof then
    begin
      edtPartName.Text:=FieldByName('Part_Name').AsString;
      lblPartInternal.Caption:=FieldByName('Part_Code').AsString;
      edtCustomer.Text:=FieldByName('Cus_Code').AsString;
      lblCustomerId.Caption:=FieldByName('Cus_Id').AsString;
      dm.RequestData('Select Cus_Name from Customers where cus_id='''+FieldByName('Cus_Id').AsString+'''');
      edtCustomerName.Text:=dm.qSelect.Fields[0].AsString;

      edtMaterialType.Text:= FieldByName('Material_Code').AsString;
      edtMaterialSize.Text:=FieldByName('Material_Size').AsString;
      edtQnty.Text:=FieldByName('Qnty').AsString;
      edtWeight.Text:= FieldByName('Weight').AsString;
      edtCertificate.Text:=FieldByName('Certificate').AsString;
    end;
    pnlSelect.Visible:=False;
  end;

end;

procedure TfraProduction.BitBtn1Click(Sender: TObject);
Var
  i:integer;
function CheckForComplete:boolean;
Begin
  Result:=True;
  if chkNoProductionOrder.Checked then
  Begin
    if StrToIntDef(edtQnty.Text,-1)<0 then
      result:=False;

    if edtPartCode.Text = '' then
      result:=False;

    if edtCustomer.Text = '' then
      result:=False;

    if edtLotNo.Text = '' then
      result:=False;

  End else
  Begin
    if StrToIntDef(edtQnty.Text,-1)<0 then
      result:=False;

    if StrToIntDef(edtWeight.Text,-1)<0 then
      result:=False;

    if edtPartCode.Text = '' then
      result:=False;

    if edtCustomer.Text = '' then
      result:=False;

    if edtLotNo.Text = '' then
      result:=False;

    if edtOrderNo.Text = '' then
      result:=False;
  End;
End;
begin
  if not CheckForComplete then
  Begin
    MessageDlg(msgNotComplete, mtWarning, [mbOK], 0);
    Exit;
  end;
  try
    dm.stGlobal.Close;
    dm.stGlobal.StoredProcName:='InsertProductionOrder';
    dm.stGlobal.Prepare;
    dm.stGlobal.ParamByName('OrderNo').Value:=edtOrderNo.Text;
    dm.stGlobal.ParamByName('DueDate').Value:=dtDueDate.Date;
    dm.stGlobal.ParamByName('PartNo').Value:=edtPartCode.Text;
    dm.stGlobal.ParamByName('PartName').Value:=edtPartName.Text;
    dm.stGlobal.ParamByName('PartNoInternal').Value:=lblPartInternal.Caption;
    dm.stGlobal.ParamByName('cusid').Value:=lblCustomerId.Caption;
    dm.stGlobal.ParamByName('MatCode').Value:=edtMaterialType.Text;
    dm.stGlobal.ParamByName('MatSize').Value:=edtMaterialSize.Text;
    dm.stGlobal.ParamByName('Qnty').Value:=edtQnty.Text;
    dm.stGlobal.ParamByName('CoilNo').Value:=edtCoil.Text;
    dm.stGlobal.ParamByName('CertNo').Value:=edtCertificate.Text;
    dm.stGlobal.ParamByName('LotNo').Value:=edtLotNo.Text+IfThen(AddCheckSum,edtCheckSum.Text,'');
    dm.stGlobal.ParamByName('Userid').Value:=Uid;
    dm.stGlobal.ParamByName('Weight').Value:= StrToIntDef(edtWeight.Text,-1);

    dm.stGlobal.ParamByName('PrdOrdertype').Value:=IfThen(chkNoProductionOrder.Checked,1,0);
    dm.stGlobal.ExecProc;
    MessageDlg(msgSaveCompleted, mtInformation, [mbOK], 0);
    dm.stPrdOrder.ExecProc;
    for I := 0 to TBitBtn(Sender).Parent.ComponentCount -1  do
    Begin
      if TBitBtn(Sender).Parent.Components[i] is TEdit then
      Begin
        (TBitBtn(Sender).Parent.Components[i] as TEdit).Text:='';
      End;
    End;
  except on E:Exception do
  begin
    MessageDlg(msgSaveFail+#10#13 + E.Message, mtError, [mbOK], 0);
  end;
  end;
end;

procedure TfraProduction.BitBtn2Click(Sender: TObject);
begin
  try
    if (MessageDlg(msgConfirmToDelete, mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
    begin
       dm.UniConnection1.ExecSQL('Update ProductionOrders Set Record_Status=null where ' +
       ' Order_No='''+dm.stPrdOrder.FieldByName('Order_No').AsString+''''+
       ' and Order_Date='''+FormatDateTime('yyyy-mm-dd HH:MM:SS',dm.stPrdOrder.FieldByName('Order_Date').AsDateTime)+'''');
       MessageDlg(msgCancelComplete, mtInformation, [mbOK], 0);
       dm.stPrdOrder.ExecProc;
    end;
  except on E:Exception do
    MessageDlg(msgNotComplete+#13#10+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TfraProduction.btnAutoCreateClick(Sender: TObject);
begin
  ApplyTemplate;
end;

procedure TfraProduction.btnCheckAmountClick(Sender: TObject);
begin
  edtPartCode.SetFocus;
  Application.ProcessMessages;
  dbgSelectionDblClick(Sender);
end;

procedure TfraProduction.btnShowPrdDetailClick(Sender: TObject);
begin
  dm.stPrdOrder.ExecProc;
end;

procedure TfraProduction.dbgSelectionDblClick(Sender: TObject);
begin
  SetValue((ActiveEdit as TEdit));

  if ActiveEdit = edtPartCode then
  begin
    SetValue(edtPartName);
    lblPartInternal.Caption:= dbgSelection.Fields[2].AsString;
    lblProductDetail.Caption:= dbgSelection.Fields[1].AsString;
    ApplyTemplate;
  end;
  if ActiveEdit = edtPartName then
  begin
    SetValue(edtPartCode );
    lblPartInternal.Caption:= dbgSelection.Fields[2].AsString;
    ApplyTemplate;
  end;

  if ActiveEdit = edtCustomer then
  begin
    SetValue(edtCustomerName);
    lblCustomerId.Caption:= dbgSelection.Fields[2].AsString;
  end;
  if ActiveEdit = edtCustomerName then
  begin
    SetValue(edtCustomer );
    lblCustomerId.Caption:= dbgSelection.Fields[2].AsString;
  end;

  if (ActiveEdit = edtPartCode) or (ActiveEdit = edtPartName) then
  Begin
    GetBalance(edtPartCode.Text);
    edtOrderNo.SetFocus;
  End;

  if (ActiveEdit = edtCustomer) or (ActiveEdit = edtCustomerName) then
  Begin
    edtPartCode.SetFocus;
  End;

  pnlSelect.Hide;
end;

procedure TfraProduction.dbgSelectionKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    pnlSelect.Top:=3000;
    dbgSelectionDblClick(Sender);
    Repaint;
  end;
end;

procedure TfraProduction.edtCustomerChange(Sender: TObject);
begin
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectCustomerByCode';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=edtCustomer.Text;
  dm.stGlobal.ExecProc;
  pnlSelect.Show;
end;

procedure TfraProduction.edtCustomerEnter(Sender: TObject);
begin
  pnlSelect.Top:= edtCustomer.Top+edtCustomer.Height;
  pnlSelect.Left:=edtCustomer.Left;
  pnlSelect.Visible:=True;
  
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectCustomerByCode';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=edtCustomer.Text;
  dm.stGlobal.ExecProc;

  ActiveEdit:= TEdit(Sender);
  edtCustomerChange(Sender);
  dbgSelection.Visible:=True;
end;

procedure TfraProduction.edtCustomerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    dbgSelection.SetFocus;
end;

procedure TfraProduction.edtCustomerNameChange(Sender: TObject);
begin
  if not TEdit(Sender).Focused then
    Exit;

  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectCustomerByName';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=TEdit(Sender).Text;
  dm.stGlobal.ExecProc;
end;

procedure TfraProduction.edtCustomerNameClick(Sender: TObject);
begin
  pnlSelect.Top:=TEdit(Sender).Top+TEdit(Sender).Height;
  pnlSelect.Visible:=True;
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectCustomerByName';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=TEdit(Sender).Text;
  dm.stGlobal.ExecProc;
end;

procedure TfraProduction.edtCustomerNameEnter(Sender: TObject);
begin
  ActiveEdit:= Tedit(Sender);
  dbgSelection.Visible:=True;
end;

procedure TfraProduction.edtCustomerNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    dbgSelection.SetFocus;
end;

procedure TfraProduction.edtLotNoChange(Sender: TObject);
Var
  i,sum:integer;
  a:String;
begin
  edtCheckSum.Text:='-';
  if Length(edtLotNo.Text) = 11 then
  begin
    for i  := 1 to 11 do
    begin
      sum:=sum+(i*ord(edtLotNo.Text[i]));
    end;
    Sum:= 11-(Sum Mod 11);
    edtCheckSum.Text:=RightStr(IntToStr(Sum),1);
  end;
end;

procedure TfraProduction.edtOrderNoChange(Sender: TObject);
begin
  Repaint;
end;

procedure TfraProduction.edtOrderNoEnter(Sender: TObject);
begin
  pnlSelect.Hide;
  pnlSelect.Top:= 2000;
end;

procedure TfraProduction.edtPartCodeChange(Sender: TObject);
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

procedure TfraProduction.edtPartCodeEnter(Sender: TObject);
begin
  pnlSelect.Top:= edtPartCode.Top+edtPartCode.Height;
  pnlSelect.Left:=edtPartCode.Left;

  ActiveEdit:= Tedit(Sender);
  edtPartCodeChange(Sender);
  pnlSelect.Visible:=True;
end;

procedure TfraProduction.edtPartCodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    dbgSelection.SetFocus;
end;

procedure TfraProduction.edtPartNameChange(Sender: TObject);
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

procedure TfraProduction.edtPartNameClick(Sender: TObject);
begin
  pnlSelect.Top:=TEdit(Sender).Top+TEdit(Sender).Height;
  pnlSelect.Visible:=True;
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectPartByName';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=TEdit(Sender).Text;
  dm.stGlobal.ExecProc;
end;

procedure TfraProduction.edtPartNameEnter(Sender: TObject);
begin
  ActiveEdit:= Tedit(Sender);
  dbgSelection.Visible:=True;
end;

procedure TfraProduction.edtPartNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    dbgSelection.SetFocus;
end;

procedure TfraProduction.edtQntyKeyPress(Sender: TObject; var Key: Char);
begin
  pnlSelect.Hide;
  if Not (Key in ['0'..'9',#8]) then
    Key :=#0;
end;

procedure TfraProduction.edtWeightEnter(Sender: TObject);
begin
  pnlSelect.Hide;
  TEdit(Sender).Color:=clYellow;
end;

procedure TfraProduction.edtWeightExit(Sender: TObject);
begin
  TEdit(Sender).Color:=clWhite;
end;

procedure TfraProduction.edtWeightKeyPress(Sender: TObject; var Key: Char);
begin
  if Not (Key in ['0'..'9',#8]) then
    Key :=#0;
end;

function TfraProduction.GetBalance(PartCode: String): integer;
begin

  With DM do
  Begin
    stBalance.Close;
    stBalance.StoredProcName:='SelectInventoryByPart';
    stBalance.Prepare;
    stBalance.Params[0].AsString:=edtPartCode.Text;
    stBalance.ExecProc;
    grdPartDetail.DataController.DataSource:=DM.dBalance;
    Application.ProcessMessages;

    gString:='Select Part_Image from Parts Where Part_No ='''+edtPartCode.Text+'''';
    RequestDataDset(gString,qPartDetail);
  end;

end;

procedure TfraProduction.S1Click(Sender: TObject);
Var
 i: integer;
begin
  Try
    gString:='Insert into ProductionTemplate(' +
     'Part_No,Part_Code,Part_Name' +
     ',Cus_id,Cus_code,Weight' +
     ',Qnty,Material_Size,Material_Code) values (' +
     ''''+edtPartCode.Text+''','''+lblPartInternal.Caption+''','''+edtPartName.Text+''''
     +','''+lblCustomerId.Caption+''','''+edtCustomer.Text+''','+edtWeight.Text
     +','+edtQnty.Text+','+edtMaterialSize.Text+','''+edtMaterialType.Text+''')';

    dm.UniConnection1.ExecSQL(gString);
    MessageDlg(msgSaveCompleted, mtInformation, [mbOK], 0);

    edtPartCode.Clear;
    edtPartName.Clear;
    edtCustomerName.Clear;
    edtOrderNo.Clear;
    edtMaterialType.Clear;
    edtMaterialSize.Clear;
    edtCertificate.Clear;
    edtQnty.Clear;
    edtLotNo.Clear;
    edtCoil.Clear;
    edtWeight.Clear;
    edtPartCode.SetFocus;

  Except On E:Exception do
    MessageDlg(msgSaveFail+#13#10+e.Message , mtError, [mbOK], 0);
  End;
end;

end.
