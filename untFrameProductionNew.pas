unit untFrameProductionNew;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCurrencyEdit,
  cxContainer, Vcl.Menus, cxClasses, Vcl.Grids, Vcl.DBGrids, cxImage, cxDBEdit,
  cxSplitter, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, CnButtonEdit, StrUtils, System.Math, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppDB, ppDBPipe, ppEndUsr, ppTypes, DateUtils;

type
  TfraProductionNew = class(TFrame)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnShowPrdDetail: TBitBtn;
    btnPrint: TBitBtn;
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
    edtCheckSum: TEdit;
    Panel4: TPanel;
    pnlCustomer: TPanel;
    cxGrid1: TcxGrid;
    grdPartDetail: TcxGridDBTableView;
    grdPartDetailColumn1: TcxGridDBColumn;
    grdPartDetailColumn2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel5: TPanel;
    btnCheckAmount: TBitBtn;
    cxSplitter1: TcxSplitter;
    pnlPart: TPanel;
    lblProductDetail: TLabel;
    cxDBImage1: TcxDBImage;
    pnlSelect: TPanel;
    dbgSelection: TDBGrid;
    chkFilterPart: TCheckBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PopupMenu1: TPopupMenu;
    A1: TMenuItem;
    S1: TMenuItem;
    edtPartCode: TCnButtonEdit;
    P1: TMenuItem;
    ppDesigner1: TppDesigner;
    dtStartdate: TDateTimePicker;
    Label12: TLabel;
    procedure edtPartCodeEnter(Sender: TObject);
    procedure dbgSelectionDblClick(Sender: TObject);
    procedure edtPartCodeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgSelectionKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPartCodeButtonClick(Sender: TObject);
    procedure btnCheckAmountClick(Sender: TObject);
    procedure btnShowPrdDetailClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
  private
    procedure GetPart;
    procedure ApplyPattern;
    procedure ShowDocument(ReportMode: String);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses untDM, UntConstant, untDocumentNo, UntGlobalLibs;

procedure TfraProductionNew.BitBtn1Click(Sender: TObject);
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

    if edtCustomerName.Text = '' then
    Begin
      result:=False;
      edtCustomerName.SetFocus;
    End;

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
    dm.stGlobal.ParamByName('Startdate').Value:=dtStartdate.Date;
    dm.stGlobal.ExecProc;
    MessageDlg(msgSaveCompleted, mtInformation, [mbOK], 0);
    dm.stPrdOrder.ExecProc;
    gDocumentNo:=edtOrderNo.Text;
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

procedure TfraProductionNew.BitBtn2Click(Sender: TObject);
begin
  try
    if (MessageDlg(msgConfirmToDelete+#13#10+dm.stPrdOrder.FieldByName('Order_No').AsString+':'+dm.stPrdOrder.FieldByName('Part_No').AsString, mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
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

procedure TfraProductionNew.btnCheckAmountClick(Sender: TObject);
begin
  edtPartCode.SetFocus;
  Application.ProcessMessages;
  dbgSelectionDblClick(Sender);
end;

procedure TfraProductionNew.btnPrintClick(Sender: TObject);
begin
  ShowDocument('Print');
end;

procedure TfraProductionNew.btnShowPrdDetailClick(Sender: TObject);
begin
  dm.stPrdOrder.ExecProc;
end;

procedure TfraProductionNew.dbgSelectionDblClick(Sender: TObject);
begin
  if dm.stGlobal.StoredProcName='selectPartByCode2' then
  Begin
    edtPartCode.Text:=Dm.stGlobal.Fields[2].AsString;
    edtPartName.Text:=Dm.stGlobal.Fields[1].AsString;
    lblPartInternal.Caption:=Dm.stGlobal.Fields[0].AsString;
    pnlSelect.Visible:=False;
  End;

end;

procedure TfraProductionNew.dbgSelectionKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    if dm.stGlobal.StoredProcName='selectPartByCode2' then
    Begin
      edtPartCode.Text:=Dm.stGlobal.Fields[2].AsString;
      edtPartName.Text:=Dm.stGlobal.Fields[1].AsString;
      lblPartInternal.Caption:=Dm.stGlobal.Fields[0].AsString;
      pnlSelect.Visible:=False;
    End;
  end;
end;

procedure TfraProductionNew.edtPartCodeButtonClick(Sender: TObject);
begin
  ApplyPattern;
end;

procedure TfraProductionNew.edtPartCodeEnter(Sender: TObject);
begin
  dtDueDate.Date:=Now;
  dtStartdate.Date:=Now;
  pnlSelect.Top:=edtPartCode.Top+edtPartCode.Height;
  pnlSelect.Left:= edtPartCode.Left;
  GetPart;
end;

procedure TfraProductionNew.edtPartCodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_DOWN then
    dbgSelection.SetFocus;

  if key = VK_RETURN then
    dbgSelectionDblClick(Sender);
end;

procedure TfraProductionNew.GetPart;
Begin
    dm.stGlobal.Close;
    dm.stGlobal.UnPrepare;
    dm.stGlobal.StoredProcName:='selectPartByCode2';
    dm.stGlobal.Prepare;
    dm.stGlobal.Params[0].Value:=edtPartCode.Text;
    pnlSelect.Visible:=True;
    dm.stGlobal.ExecProc;
End;

procedure TfraProductionNew.P1Click(Sender: TObject);
begin
  ShowDocument('Print');
end;

procedure TfraProductionNew.A1Click(Sender: TObject);
begin
  ShowDocument('Design');
end;

procedure TfraProductionNew.ApplyPattern;
begin
  with dm.store_InsertInventory do
  begin
    dm.stGlobal.Close;
    StoredProcName:='SelectPrdTemplateByPart2';
    Prepare;
    Params[0].Value:= edtPartCode.Text;
    ExecProc;
    if not eof then
    begin
      edtPartName.Text:=FieldByName('Item_Name').AsString;
      lblPartInternal.Caption:=FieldByName('Part_No').AsString;
      edtCustomer.Text:=FieldByName('Cus_Code').AsString;
      lblCustomerId.Caption:=FieldByName('Cus_Id').AsString;
      dm.RequestData('Select Cus_Name from Customers where cus_id='''+FieldByName('Cus_Id').AsString+'''');
      edtCustomerName.Text:=dm.qSelect.Fields[0].AsString;

      edtMaterialType.Text:= FieldByName('Material_Code').AsString;
      edtMaterialSize.Text:=FieldByName('Material_Size').AsString;
      edtWeight.Text:= FieldByName('NumberPerKilo').AsString;
      pnlSelect.Visible:=False;
      edtOrderNo.SetFocus;
    end else
      MessageDlg(msgDataNotFound, mtConfirmation, [mbOK], 0);
  end;
end;

procedure TfraProductionNew.S1Click(Sender: TObject);
begin
  ShowDocument('Preview');
end;

Procedure TfraProductionNew.ShowDocument(ReportMode:String);
Var
  frmDoc: TfrmDocumentNo;
  i,day,day2:integer;
  dt,dt2:TdateTime;
  s:String;
begin
  frmDoc := TfrmDocumentNo.Create(Self);
  try
    frmDoc.edtDocumentNo.Text := gDocumentNo;
    if frmDoc.ShowModal = 1 then
    begin
      With DM.stProductionOrder do
      Begin
        StoredProcName:='SelectProductionOrder';
        Prepare;
        Params[0].Value:=frmDoc.edtDocumentNo.Text;
        ExecProc;
        gString:='Select Process_name from itemProcess pc inner join items i on pc.Item_no=i.item_no '+
        ' Where i.Item_No='''+FieldByName('Part_No').AsString+'''';
        dm.RequestData(gString);
        gString:='';
        dt:=FieldByName('Start_Date').AsDateTime;
        dt2:=IncMonth(dt,1);
        day:=DaysInMonth(dt);
        day2:= DaysInMonth(dt2);

        for I := 6 to 37 do
        Begin

          if Not DM.qSelect.Eof then
            gString:=gString+', '''+DM.qSelect.Fields[0].AsString+ ''' AS Machine'+IntToStr(i)+', GetProcName('''+DM.qSelect.Fields[0].AsString[1]+''') As Process'+IntToStr(i)+', '''+FormatDateTime('dd',dt)+''' AS Date'+IntToStr(i)
          else
            gString:=gString+', ''-'' AS Machine'+IntToStr(i)+', ''-'' AS Process'+IntToStr(i)+', '''+FormatDateTime('dd',dt)+''' AS Date'+IntToStr(i);

          dt:=IncDay(dt,1);
          dm.qSelect.Next;
        End;
        s:=FormatDateTime('yyyy-mm-dd',dt);
        gString:=gString+','''+s+''' as Fromdate1';
        s:=FormatDateTime('yyyy-mm-dd',IncDay(dt,day));
        gString:=gString+','''+s+''' as ToDate1';

        s:=FormatDateTime('yyyy-mm-01',dt2);
        gString:=gString+','''+s+''' as Fromdate2';
        s:=FormatDateTime('yyyy-mm-dd',dt2);
        gString:=gString+','''+s+''' as ToDate2';

        gString:=Copy(gString,2,Length(gString));
        gString:='Select '+gString+' from Items limit 1';
        dm.qPrdProcessDoc.SQL.Text:=gstring;
        dm.qPrdProcessDoc.Open;
      End;
      dm.ppReport1.Template.FileName := AppPath+'\Doc-Production-Order.rtm';

      if FileExists(AppPath+'\Doc-Production-Order.rtm', True) then
        dm.ppReport1.Template.LoadFromFile
      else
        dm.ppReport1.Template.SaveToFile;

      if dm.stProductionOrder.RecordCount > 0 then
      begin
        if ReportMode='Design' then
        Begin
          dm.ppReport1.ShowPrintDialog:=True;
          dm.ppReport1.ShowCancelDialog:=True;
          ppDesigner1.ShowModal;
        End
        else
        if ReportMode='Preview' then
        Begin
          dm.ppReport1.ShowPrintDialog:=True;
          dm.ppReport1.ShowCancelDialog:=True;
          DM.ppReport1.DeviceType:= 'Screen';
          dm.ppReport1.Print;
        End else
        Begin
          dm.ppReport1.ShowPrintDialog:=False;
          dm.ppReport1.ShowCancelDialog:=False;
          DM.ppReport1.DeviceType:= 'Printer';
          dm.ppReport1.Print;
        End;
//        dm.qReport.First;
//        if Not dm.qReport.eof then
//        begin
//          with dm.qReport do
//          begin
//            DM.InsertLogs(FieldByName('Part_no').AsString,FieldByName('Lot_no').AsString,FieldByName('Serial_no').AsString
//            ,StrToIntDef(Uid,0),'Print Sticker',MyComputerName);
//          end;
//        end;
      end
      else
        MessageDlg(msgDataNotFound, mtConfirmation, [mbOK], 0);
    end;
  finally
    frmDoc.Free;
  end;

end;

end.
