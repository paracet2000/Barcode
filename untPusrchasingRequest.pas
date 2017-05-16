unit untPusrchasingRequest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ComCtrls, cxSplitter,
  Vcl.ExtCtrls, cxTextEdit, cxCurrencyEdit, cxButtonEdit, Math, cxCalc,
  Vcl.Grids, Vcl.DBGrids,StrUtils;

type
  TFraPurChasingRequest = class(TFrame)
    Panel1: TPanel;
    Panel2: TPanel;
    lblSaler: TLabel;
    lblPRNumber: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtVenderCode: TEdit;
    edtVenderName: TEdit;
    edtPRNumber: TEdit;
    edtReferenceDoc: TEdit;
    BitBtn1: TBitBtn;
    dtDocumentDate: TDateTimePicker;
    dtDueDate: TDateTimePicker;
    edtCondition: TEdit;
    cmbTaxType: TComboBox;
    Panel3: TPanel;
    grdPRLevel1: TcxGridLevel;
    grdPR: TcxGrid;
    grdPurchasingRequest: TcxGridTableView;
    colRemark: TcxGridColumn;
    colNo: TcxGridColumn;
    colCode: TcxGridColumn;
    colDescription: TcxGridColumn;
    colQnty: TcxGridColumn;
    colUnit: TcxGridColumn;
    colPrice: TcxGridColumn;
    colDiscount: TcxGridColumn;
    colAmount: TcxGridColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    Panel4: TPanel;
    edtRemark: TEdit;
    Label6: TLabel;
    btnSave: TBitBtn;
    btnClose: TBitBtn;
    btnClear: TBitBtn;
    btnCancel: TBitBtn;
    edtDiscount: TEdit;
    Label7: TLabel;
    edtPrepaid: TEdit;
    Label8: TLabel;
    edtBooking: TEdit;
    Label9: TLabel;
    edtSpecialMessage: TEdit;
    Label10: TLabel;
    colVat: TcxGridColumn;
    cxStyle4: TcxStyle;
    btnShow: TBitBtn;
    pnlRight: TPanel;
    lblCode: TLabel;
    lblDesc: TLabel;
    edtDesc: TEdit;
    Label12: TLabel;
    edtQnty: TEdit;
    Label13: TLabel;
    edtUnit: TEdit;
    Label14: TLabel;
    edtPrice: TEdit;
    Label15: TLabel;
    edtDisc: TEdit;
    btnAdd: TBitBtn;
    dbgSelection: TDBGrid;
    edtCode: TEdit;
    procedure edtDiscountKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelClick(Sender: TObject);
    procedure grdPurchasingRequestDataControllerAfterPost(
      ADataController: TcxCustomDataController);
    procedure grdPurchasingRequestEditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure grdPurchasingRequestDataControllerBeforePost(
      ADataController: TcxCustomDataController);
    procedure edtVenderCodeEnter(Sender: TObject);
    procedure dbgSelectionDblClick(Sender: TObject);
    procedure dbgSelectionKeyPress(Sender: TObject; var Key: Char);
    procedure dbgSelectionCellClick(Column: TColumn);
    procedure grdPurchasingRequestEditKeyUp(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure colRemarkPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnSaveClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure grdPRMouseEnter(Sender: TObject);
    procedure edtVenderCodeChange(Sender: TObject);
    procedure edtVenderCodeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPRNumberEnter(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnShowClick(Sender: TObject);
    procedure edtCodeEnter(Sender: TObject);
    procedure edtCodeChange(Sender: TObject);
    procedure edtDiscExit(Sender: TObject);
    procedure edtPriceChange(Sender: TObject);
    procedure edtQntyChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
    iTotal, iVat, iDiscount: Double;
    ActiveControl:TControl;
    procedure GetSummary;
    Function GetVatInclude(Amount: Double): Double;
    Function GetVatExclude(Amount: Double): Double;
    procedure DiscountCalc(Key:String);

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UntConstant, untDM;

procedure TFraPurChasingRequest.BitBtn1Click(Sender: TObject);
begin
  edtPRNumber.Text:=DM.GetDocNumber('PR_NO');
end;

procedure TFraPurChasingRequest.btnAddClick(Sender: TObject);
begin
  if edtCode.Text='' then
  Begin
    edtCode.SetFocus;
    Exit;
  End;
  if edtQnty.Text='' then
  Begin
    edtQnty.SetFocus;
    Exit;
  End;
  if edtUnit.Text='' then
  Begin
    edtUnit.SetFocus;
    Exit;
  End;
  if edtPrice.Text='' then
  Begin
    edtPrice.SetFocus;
    Exit;
  End;
  if edtDisc.Text='' then
  Begin
    edtDisc.text:='0';
  End;

  with grdPurchasingRequest.DataController do
  begin
    RecordCount:= RecordCount+1;
    BeginUpdate;
    try
      Values[RecordCount - 1, colNo.Index] := RecordCount;
      Values[RecordCount - 1, colCode.Index] := edtCode.Text;
      Values[RecordCount - 1, colDescription.Index] := edtDesc.Text;
      Values[RecordCount - 1, colQnty.Index] := edtQnty.Text;
      Values[RecordCount - 1, colUnit.Index] := edtUnit.Text;
      Values[RecordCount - 1, colPrice.Index] := edtPrice.Text;
      Values[RecordCount - 1, colDiscount.Index] := edtDisc.Text;
    finally
      edtCode.Clear;
      edtDesc.Clear;
      edtQnty.Clear;
      edtUnit.Clear;
      edtPrice.Clear;
      edtDisc.Clear;
      dbgSelection.Show;
      EndUpdate;
      dbgSelection.Hide;
    end;
  end;
end;

procedure TFraPurChasingRequest.btnCancelClick(Sender: TObject);
Var
  sDocNo:String;
begin
  if edtPRNumber.Text ='' then
  Begin
    MessageDlg(msgSpecifyPRNumber, mtWarning, [mbOK], 0);
    Exit;
  End;

  if InputQuery('Cancel',msgConfirmToCancel,sDocNo) then
  Begin
    Try
      gString:='Update PurchaseHead Set Record_Status =''C''' +
               ',Cancel_By='+Uid+', Cancel_Date=Current_TimeStamp' +
               ' Where Head_Type=''PR'''+
               ' and Head_No='''+edtPRNumber.Text+''''+
               ' and Head_Date ='''+FormatDateTime('yyyy-mm-dd 00:00:00',dtDocumentDate.Date)+'''';
      DM.UniConnection1.ExecSQL(gString);
      MessageDlg(msgCancelComplete, mtWarning, [mbOK], 0);
    Except on E:Exception do
      MessageDlg(msgCannotCancel+ #10#13+ E.Message, mtError, [mbOK], 0);
    End;
  End;
end;

procedure TFraPurChasingRequest.btnClearClick(Sender: TObject);
begin
  edtVenderCode.Clear;
  edtVenderName.Clear;
  edtPRNumber.Clear;
  edtReferenceDoc.Clear;
  edtCondition.Clear;
  edtRemark.Clear;
  edtDiscount.Clear;
  edtPrepaid.Clear;
  edtBooking.Clear;
  edtSpecialMessage.Clear;
  dtDocumentDate.DateTime:=Now;
  dtDueDate.Date:=Now;
  grdPurchasingRequest.DataController.RecordCount:=0;
end;

procedure TFraPurChasingRequest.btnCloseClick(Sender: TObject);
begin
  (Self.Parent.Parent as TForm).Close;
end;

procedure TFraPurChasingRequest.btnSaveClick(Sender: TObject);
Function CheckForComplete: Boolean;
Begin
  Result:=True;
  if (grdPurchasingRequest.DataController.Values[grdPurchasingRequest.DataController.RecordCount-1,1] = '') or
     (grdPurchasingRequest.DataController.Values[grdPurchasingRequest.DataController.RecordCount-1,1] = null) then
    grdPurchasingRequest.DataController.Cancel;
  if edtDiscount.Text='' then
    edtDiscount.Text:='0';
  if edtPrepaid.Text='' then
    edtPrepaid.Text:='0';

  if edtVenderCode.Text='' then
  Begin
    Result:=False;
    edtVenderCode.SetFocus;
  End;
  if grdPurchasingRequest.DataController.RecordCount=0 then
  begin
    Result:=False;
    grdPR.SetFocus;
  end;

End;
Var
  i:integer;
  HDN:String;
  dt:TDateTime;
begin

  if Not CheckForComplete then
  Begin
    MessageDlg(msgNotComplete, mtError, [mbOK], 0);
    Exit;
  End;

  With DM.UniConnection1 Do
  Begin
    dt:=dm.GetServerDate;

    if edtPRNumber.Text='' Then
      HDN:= DM.GetDocNumber('PR_NO')
    else
      HDN:=edtPRNumber.Text;

    StartTransaction;
    try
      ExecProc('InsertOrderHead',
        ['PR',
        HDN,
        Dt,
        edtVenderCode.Text,
        edtReferenceDoc.Text,
        dtDueDate.Date,
        dtDocumentDate.Date,
        edtCondition.Text,
        StrToFloatDef(GetOption('SYSTEM','VATRATE'),7),
        IfThen(edtDiscount.Text='',0,StrToFloat(edtDiscount.Text)),
        IfThen(edtPrepaid.Text='',0,StrToFloat(edtPrepaid.Text)),
        edtBooking.Text,
        edtSpecialMessage.Text,
        Uid]
        );

        for i := 0 to grdPurchasingRequest.DataController.RowCount-1 do
          ExecProc('InsertOrderDetail',
            ['PR',
            HDN,
            dt,
            grdPurchasingRequest.DataController.Values[i,colRemark.Index],
            grdPurchasingRequest.DataController.Values[i,colCode.Index],
            grdPurchasingRequest.DataController.Values[i,colQnty.Index],
            grdPurchasingRequest.DataController.Values[i,colUnit.Index],
            grdPurchasingRequest.DataController.Values[i,colPrice.Index],
            grdPurchasingRequest.DataController.Values[i,colDiscount.Index],
            cmbTaxType.ItemIndex]
          );
      Commit;
      MessageDlg(msgSaveCompleted, mtInformation, [mbOK], 0);
      edtVenderCode.Clear;
      edtVenderName.Clear;
      edtPRNumber.Clear;
      edtReferenceDoc.Clear;
      edtCondition.Clear;
      edtRemark.Clear;
      edtDiscount.Clear;
      edtPrepaid.Clear;
      edtBooking.Clear;
      edtSpecialMessage.Clear;
      dtDocumentDate.DateTime:=Now;
      dtDueDate.Date:=Now;
      grdPurchasingRequest.DataController.RecordCount:=0;
    except on E: Exception do
      Begin
        Rollback;
        MessageDlg(msgSaveFail+#10#13+E.Message, mtError, [mbOK], 0);
      End;
    end;
  End;
end;

procedure TFraPurChasingRequest.btnShowClick(Sender: TObject);
begin
//  With DM.stPrOrder do
//  begin
//    StoredProcName:='SelectPRByDate';
//    Prepare;
//    ParamByName('PRDate').AsDate:= dtDocumentDate.Date;
//    ExecProc;
//  end;
end;

procedure TFraPurChasingRequest.colRemarkPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var
  sRemark:String;
begin
  if InputQuery('Remark',msgPleaseRemark,sRemark) then
  Begin
    grdPurchasingRequest.DataController.Values[grdPurchasingRequest.DataController.RecordCount-1,colRemark.Index]:= sRemark;
  End;
end;

procedure TFraPurChasingRequest.dbgSelectionCellClick(Column: TColumn);
begin
   dbgSelectionDblClick(dbgSelection);
end;

procedure TFraPurChasingRequest.dbgSelectionDblClick(Sender: TObject);
begin
  if ActiveControl = TControl(grdPR) then
  Begin
    grdPurchasingRequest.DataController.Values[grdPurchasingRequest.DataController.RecordCount - 1,
      colCode.Index] := DM.stGlobal.Fields[0].AsString;
    grdPurchasingRequest.DataController.Values[grdPurchasingRequest.DataController.RecordCount - 1,
      colDescription.Index] := DM.stGlobal.Fields[1].AsString;
    dbgSelection.Hide;
    grdPR.SetFocus;
    SendKeyPress(TWinControl(grdPR), #13);
    Application.ProcessMessages;
    SendKeyPress(grdPR, #13);
  End
  else if ActiveControl = TControl(edtCode) then
  Begin
    edtCode.Text := DM.stGlobal.FieldByName('Code').AsString;
    edtDesc.Text := DM.stGlobal.FieldByName('Name').AsString;
    lblDesc.Caption := DM.stGlobal.FieldByName('Other').AsString;
    edtQnty.SetFocus;
    //dbgSelection.Hide;
  end
  else if ActiveControl = TControl(edtVenderCode) then
  Begin
    edtVenderCode.Text := DM.stGlobal.FieldByName('Code').AsString;
    edtVenderName.Text := DM.stGlobal.FieldByName('Name').AsString;
    lblSaler.Caption := DM.stGlobal.FieldByName('Other').AsString;
    edtPRNumber.SetFocus;
    dbgSelection.Hide;
  End;

  DM.stGlobal.Close;
end;

procedure TFraPurChasingRequest.dbgSelectionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    dbgSelectionDblClick(Sender);
    dbgSelection.Hide;
  end;
end;

procedure TFraPurChasingRequest.edtCodeChange(Sender: TObject);
begin
    dm.stGlobal.Close;
    dm.stGlobal.UnPrepare;
    dm.stGlobal.StoredProcName:='selectPartByCode2';
    dm.stGlobal.Prepare;
    dm.stGlobal.Params[0].Value:=edtCode.Text;
    dm.stGlobal.ExecProc;
end;

procedure TFraPurChasingRequest.edtCodeEnter(Sender: TObject);
begin
    ActiveControl := Tcontrol(edtVenderCode);
    dbgSelection.Top:=0;// edtcode.Top+edtCode.Height;
    dbgSelection.Left:= edtCode.Left;
    dbgSelection.BringToFront;

    dm.stGlobal.Close;
    dm.stGlobal.UnPrepare;
    dm.stGlobal.StoredProcName:='SelectPartByCode';
    dm.stGlobal.Prepare;

    dm.stGlobal.Params[0].Value:=(edtCode.Text);
    dm.stGlobal.ExecProc;

end;

procedure TFraPurChasingRequest.edtDiscExit(Sender: TObject);
begin
 DiscountCalc(RightStr(edtDisc.Text,1));
end;

Procedure TFraPurChasingRequest.DiscountCalc(Key: String);
Var
  price,disc:double;
begin
  if edtPrice.Text<>'' then
  Begin
    price:= StrToFloatDef(edtPrice.Text,0);
    disc :=  StrToFloatDef(edtDisc.Text,0);
    if Key ='%' then
      disc:=0.01*price*StrToFloatDef(LeftStr(edtDisc.Text,Length(edtDisc.Text)-1),0);

    edtDisc.Text:=FormatFloat('###.00',disc);
  End;

end;

procedure TFraPurChasingRequest.edtDiscountKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9',#8,'%']) then
    Key := #0;
end;

procedure TFraPurChasingRequest.edtPriceChange(Sender: TObject);
begin
  DiscountCalc(RightStr(edtDisc.Text,1));
end;

procedure TFraPurChasingRequest.edtPRNumberEnter(Sender: TObject);
begin
  dbgSelection.Visible:=False;
end;

procedure TFraPurChasingRequest.edtQntyChange(Sender: TObject);
begin
  DiscountCalc(RightStr(edtDisc.Text,1));
end;

procedure TFraPurChasingRequest.edtVenderCodeChange(Sender: TObject);
begin
  Dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectCustomerByCode';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:= edtVenderCode.Text;
  dm.stGlobal.ExecProc;
end;

procedure TFraPurChasingRequest.edtVenderCodeEnter(Sender: TObject);
begin
  try
    ActiveControl := Tcontrol(Sender);
    if grdPurchasingRequest.DataController.RowCount=0 then
      grdPurchasingRequest.DataController.Append;

    dbgSelection.Top:= TEdit(Sender).Height+TEdit(Sender).Top;
    dbgSelection.Left:= TEdit(Sender).Left;
    dbgSelection.Visible:=True;

    dm.stGlobal.Close;
  except

  end;

end;

procedure TFraPurChasingRequest.edtVenderCodeKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_DOWN then
    dbgSelection.SetFocus;
end;

procedure TFraPurChasingRequest.GetSummary;
Begin

  iTotal:= grdPurchasingRequest.DataController.Summary.FooterSummaryValues[1];
  iDiscount:= grdPurchasingRequest.DataController.Summary.FooterSummaryValues[2];
  iVat:= grdPurchasingRequest.DataController.Summary.FooterSummaryValues[3];

end;

function TFraPurChasingRequest.GetVatExclude(Amount: Double): Double;
begin
  Result:= Amount*(StrToFloatDef(GetOption('SYSTEM','VATRATE'),7))*0.01;
end;

function TFraPurChasingRequest.GetVatInclude(Amount: Double): Double;
begin
  Result:= Amount*StrToFloatDef(GetOption('SYSTEM','VATRATE'),7)/(StrToFloatDef(GetOption('SYSTEM','VATRATE'),7)+100);
end;

procedure TFraPurChasingRequest.grdPRMouseEnter(Sender: TObject);
begin
  if grdPurchasingRequest.DataController.RecordCount=0 then
    grdPurchasingRequest.DataController.Append;
end;

procedure TFraPurChasingRequest.grdPurchasingRequestDataControllerAfterPost(
  ADataController: TcxCustomDataController);
begin
  GetSummary;
end;

procedure TFraPurChasingRequest.grdPurchasingRequestDataControllerBeforePost(
  ADataController: TcxCustomDataController);
Var
  vat,Amount,Qnty,Price,Discount:double;
begin
  Qnty:= StrToFloatDef(grdPurchasingRequest.DataController.Values[grdPurchasingRequest.DataController.RecordCount-1,colQnty.Index],0);

  Price:=StrToFloatDef(grdPurchasingRequest.DataController.Values[grdPurchasingRequest.DataController.RecordCount-1,colPrice.Index],0);

  Discount:=StrToFloatDef(grdPurchasingRequest.DataController.Values[grdPurchasingRequest.DataController.RecordCount-1,colDiscount.Index],0);

  Amount:= (Qnty* Price) - Discount;

  grdPurchasingRequest.DataController.Values[grdPurchasingRequest.DataController.RecordCount-1,colAmount.Index]:= Amount;
  grdPurchasingRequest.DataController.Values[grdPurchasingRequest.DataController.RecordCount-1,colNo.Index]:= grdPurchasingRequest.DataController.RecordCount;

  case cmbTaxType.ItemIndex of
    0:
      vat:= 0;
    1:
      vat:= GetVatInclude(grdPurchasingRequest.DataController.Values[grdPurchasingRequest.DataController.RecordCount-1,colAmount.Index]);
    2:
      vat:=  GetVatExclude(grdPurchasingRequest.DataController.Values[grdPurchasingRequest.DataController.RecordCount-1,colAmount.Index]);
  end;



  grdPurchasingRequest.DataController.Values[grdPurchasingRequest.DataController.RecordCount-1,colVat.Index]:= vat;
  grdPurchasingRequest.DataController.Values[grdPurchasingRequest.DataController.RecordCount-1,colNo.Index]:= grdPurchasingRequest.DataController.RecordCount;

end;

procedure TFraPurChasingRequest.grdPurchasingRequestEditKeyPress(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
Var
  Ch:Char;
begin
  ActiveControl:=TControl(grdPR);
  if (AItem.Index = colQnty.Index) or (AItem.Index = colNo.Index) or (AItem.Index = colPrice.Index) then
  Begin
    if Not (Key in ['0'..'9',#8,'.']) then
      Key := #0;
  End;

  if (AItem.Index = colDiscount.Index) and (Key = #13) then
  Begin
    grdPurchasingRequest.DataController.Post;
    grdPurchasingRequest.DataController.Append;
  End;

  if (AItem.Index = colCode.Index) Then
  Begin
    dbgSelection.Parent:= Panel2.Parent;
    dbgSelection.Top:= Panel2.Height;
    dbgSelection.Left:= grdPR.Width - dbgSelection.Width;
    dm.stGlobal.Close;
    dm.stGlobal.UnPrepare;
    dm.stGlobal.StoredProcName:='SelectPartByCode';
    dm.stGlobal.Prepare;
    if Key<>#8 then
      Ch:=Key
    else
      Ch:=#32;
    dm.stGlobal.Params[0].Value:=(AEdit as TcxTextEdit).Text+Trim(Ch);
    dm.stGlobal.ExecProc;
    dbgSelection.Show;
  End;

end;

procedure TFraPurChasingRequest.grdPurchasingRequestEditKeyUp(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if (key = VK_UP) or (Key = VK_DOWN) or (Key= VK_RIGHT) then
    if AItem.Index = colCode.Index then
      if dbgSelection.Visible then
        dbgSelection.SetFocus;
end;

end.
