unit untPurchasingOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxSplitter, untPusrchasingRequest, Vcl.ExtCtrls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus, untPresaveData, Vcl.Buttons,
  cxGridCustomPopupMenu, cxGridPopupMenu, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppEndUsr, ppDesignLayer, ppParameter;

type
  TfrmPurchase = class(TForm)
    Panel1: TPanel;
    cxSplitter1: TcxSplitter;
    FraPurChasingRequest1: TFraPurChasingRequest;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    grdOrder: TcxGridDBTableView;
    colOrderDate: TcxGridDBColumn;
    colOrderNo: TcxGridDBColumn;
    colOrderStatus: TcxGridDBColumn;
    colCus_Code: TcxGridDBColumn;
    colCus_Name: TcxGridDBColumn;
    colPartCode: TcxGridDBColumn;
    colPartName: TcxGridDBColumn;
    colQnty: TcxGridDBColumn;
    colUnit: TcxGridDBColumn;
    colDiscount: TcxGridDBColumn;
    colAmount: TcxGridDBColumn;
    colVat: TcxGridDBColumn;
    colSubtotal: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    dtFromDate: TDateTimePicker;
    Label2: TLabel;
    dtToDate: TDateTimePicker;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    mnuWarning: TMenuItem;
    btnPrintPR: TBitBtn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    PopupMenu1: TPopupMenu;
    D1: TMenuItem;
    D2: TMenuItem;
    E1: TMenuItem;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDesigner1: TppDesigner;
    procedure FormShow(Sender: TObject);
    procedure FraPurChasingRequest1btnShowClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdOrderCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure mnuWarningClick(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure FraPurChasingRequest1btnAddClick(Sender: TObject);
  private
    procedure ApplyOrder;
    procedure ShowReport(ReportMode: String);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPurchase: TfrmPurchase;

implementation

{$R *.dfm}

uses untDM, UntConstant, untDocumentNo, UntGlobalLibs;

procedure TfrmPurchase.E1Click(Sender: TObject);
begin

  ShowReport(TMenuItem(Sender).Caption);
end;

procedure TfrmPurchase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.stPrdOrder.Close;
end;

procedure TfrmPurchase.FormShow(Sender: TObject);
begin
  //width := Trunc(Screen.Width*8 /10);
  dtFromDate.Date:=Now;
  dtToDate.Date:=Now;
  FraPurChasingRequest1.dtDocumentDate.Date:=Now;
  FraPurChasingRequest1.dtDueDate.Date:=Now;
end;




procedure TfrmPurchase.FraPurChasingRequest1btnAddClick(Sender: TObject);
begin
  FraPurChasingRequest1.btnAddClick(Sender);

end;

procedure TfrmPurchase.FraPurChasingRequest1btnShowClick(Sender: TObject);
begin
  with DM.stPrdOrder do
  begin
    StoredProcName:='SelectOrderByDate';
    Prepare;
    ParamByName('FromDate').Value:=dtFromDate.Date;
    ParamByName('ToDate').Value:=dtToDate.Date;
    ParamByName('docType').Value:='PR';
    ExecProc;
    grdOrder.DataController.DataSource:=DM.dstPrdOrder;
  end;
end;

procedure TfrmPurchase.grdOrderCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ApplyOrder;
end;

procedure TfrmPurchase.mnuWarningClick(Sender: TObject);
Var
  frmPresaveData1 : TfrmPresaveData;
begin
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='Stock_Warning';
  dm.stGlobal.ExecProc;
  dm.dPrevious.DataSet:=dm.stGlobal;
  if dm.stGlobal.RecordCount>0 then
  Begin
    frmPresaveData1 := TfrmPresaveData.Create(Self);
    try
      frmPresaveData1.Caption:='Warning Point';
      frmPresaveData1.cxGrid1DBTableView1Column3.Caption:= 'สัญลักษณ์';
      frmPresaveData1.cxGrid1DBTableView1Column3.DataBinding.FieldName:='WarningSign';
      frmPresaveData1.cxGrid1DBTableView1Column3.GroupIndex:=0;
      frmPresaveData1.cxGrid1DBTableView1Column4.GroupIndex:=-1;
      frmPresaveData1.cxGrid1DBTableView1Column5.GroupIndex:=-1;
      frmPresaveData1.cxGrid1DBTableView1Column6.GroupIndex:=-1;
      frmPresaveData1.cxGrid1DBTableView1Column1.DataBinding.FieldName:='AsIsDate';
      frmPresaveData1.cxGrid1DBTableView1Column1.Caption:='วันที่';
      frmPresaveData1.cxGrid1DBTableView1.ApplyBestFit();
      frmPresaveData1.BorderStyle:=bsDialog;
      frmPresaveData1.ShowModal;
    finally
      frmPresaveData1.Free;
    end;
  End else
    MessageDlg(msgNoItemsForwarning, mtInformation, [mbOK], 0);
end;

Procedure TfrmPurchase.ApplyOrder;
Var
  i:Integer;
begin
  with FraPurChasingRequest1 do
  begin
    edtPRNumber.Text:=dm.stPrdOrder.FieldByName('Head_No').AsString;
    edtVenderCode.Text:=dm.stPrdOrder.FieldByName('Cus_Code').AsString;
    lblSaler.Caption:=dm.stPrdOrder.FieldByName('Cus_Id').AsString;
    edtVenderName.Text:=dm.stPrdOrder.FieldByName('Cus_Name').AsString;
    edtReferenceDoc.Text:=dm.stPrdOrder.FieldByName('Referent_Doc').AsString;
    edtCondition.Text:=dm.stPrdOrder.FieldByName('Head_Condition').AsString;
    edtDiscount.Text:=dm.stPrdOrder.FieldByName('Discount').AsString;
    edtPrepaid.Text:=dm.stPrdOrder.FieldByName('Booking_Amount').AsString;
    edtBooking.Text:=dm.stPrdOrder.FieldByName('Booking_doc').AsString;
    edtSpecialMessage.Text:=dm.stPrdOrder.FieldByName('Special_Message').AsString;

    dm.stPrdOrder.Filter:='Head_No='''+edtPRNumber.Text+'''';
    dm.stPrdOrder.Filtered:=True;
    DM.stPrdOrder.First;
    with grdPurchasingRequest.DataController do
    Begin
      i:=0;
      while Not DM.stPrdOrder.Eof do
      Begin
        Values[i,colRemark.Index]:=DM.stPrdOrder.FieldByName('Det_Remark').Value;
        Values[i,colNo.Index]:=i;//DM.stPrdOrder.FieldByName('Det_Remark').Value;
        Values[i,colCode.Index]:=DM.stPrdOrder.FieldByName('Part_No').Value;
        DM.stPrdOrder.Next;
      End;
    End;
  end;
end;

procedure TfrmPurchase.ShowReport(ReportMode:String);
Var
  frmDoc: TfrmDocumentNo;
  dlg: TSaveDialog;
begin
  frmDoc := TfrmDocumentNo.Create(Self);
  try
    frmDoc.edtDocumentNo.Text := gDocumentNo;
    if frmDoc.ShowModal = 1 then
    begin
      With DM.stReport do
      Begin
        StoredProcName:='SelectOrderByDocNo';
        Prepare;
        ParamByName('DocumentNo').AsString:= grdOrder.DataController.DataSource.DataSet.FieldByName('Head_No').AsString;
        ExecProc;
      End;
      if FileExists(AppPath+'\PurchasingOrder.rtm', True) then
      begin
        ppReport1.Template.FileName := AppPath+'\PurchasingOrder.rtm';
        ppReport1.Template.LoadFromFile;
      end;
      if ReportMode='Print' then
      begin
        ppReport1.ShowCancelDialog:=False;
        ppReport1.Print;
      end
      else
      if ReportMode='Design' then
      Begin
        ppDesigner1.ShowModal;
      End
      else
      if ReportMode='Export' then
      Begin
          ppReport1.AllowPrintToFile:=True;
          ppReport1.DeviceType:= 'PDF';
          ppReport1.PDFSettings.Author := 'SKM.';
          ppReport1.PDFSettings.Title := 'Pusrchasing request';
          ppReport1.PDFSettings.OpenPDFFile := True;

          dlg := TSaveDialog.Create(Self);
          try
            if dlg.Execute then
            begin
              ppReport1.TextFileName := dlg.FileName;
              ppReport1.Print;
            end;
          finally
            dlg.Free;
          end;
      End;

      DM.InsertLogs(dm.qReport.FieldByName('Part_no').AsString,dm.qReport.FieldByName('Lot_no').AsString,dm.qReport.FieldByName('Serial_no').AsString
            ,StrToIntDef(Uid,0),ReportMode+' '+AppPath+'\PurchasingOrder.rtm',MyComputerName);
    end;
  finally
    frmDoc.Free;
  end;
end;

end.
