unit untSummary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit, Vcl.ComCtrls, ppViewr, Vcl.Mask, Vcl.Buttons
  ,ppTypes, ppDB, ppDBPipe, ppEndUsr, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppDesignLayer, ppParameter
  ,StrUtils, ppBands, ppCache, DateUtils;

type
  TfrmSummary = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    pnlDocument: TPanel;
    pnlSerial: TPanel;
    pnlTime: TPanel;
    edtFromDocumentNo: TLabeledEdit;
    edtToDocumentNo: TLabeledEdit;
    edtFromSerial: TLabeledEdit;
    edtToserial: TLabeledEdit;
    dtFromPackage: TDateTimePicker;
    ttFromTimePackage: TcxTimeEdit;
    ttToTime: TcxTimeEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnlPreviewBar: TPanel;
    spbPreviewPrint: TSpeedButton;
    spbPreviewWhole: TSpeedButton;
    spbPreviewFirst: TSpeedButton;
    spbPreviewPrior: TSpeedButton;
    spbPreviewNext: TSpeedButton;
    spbPreviewLast: TSpeedButton;
    spbPreviewWidth: TSpeedButton;
    spbPreview100Percent: TSpeedButton;
    Bevel1: TBevel;
    mskPreviewPercentage: TMaskEdit;
    mskPreviewPage: TMaskEdit;
    pnlCancelButton: TPanel;
    spbPreviewCancel: TSpeedButton;
    ppViewer1: TppViewer;
    btnSearchPackaged: TBitBtn;
    ppReport1: TppReport;
    ppDesigner1: TppDesigner;
    ppDBPipeline1: TppDBPipeline;
    btnSearchCheckedIn: TBitBtn;
    btnSearchCheckdOut: TBitBtn;
    btnSearchBalance: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    spdDesign: TSpeedButton;

    procedure mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
    procedure mskPreviewPercentageKeyPress(Sender: TObject; var Key: Char);
    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewCancelClick(Sender: TObject);
    procedure spbPreviewFirstClick(Sender: TObject);
    procedure spbPreviewLastClick(Sender: TObject);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewPrintClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure btnSearchPackagedClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spdDesignClick(Sender: TObject);
    procedure btnSearchCheckedInClick(Sender: TObject);
    procedure btnSearchCheckdOutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSummary: TfrmSummary;
implementation

{$R *.dfm}

uses untDM;

procedure TfrmSummary.btnSearchCheckdOutClick(Sender: TObject);
Var
  FileName:String;
  fd: TDateTime;
  td: TDateTime;
begin
  td := 0;
  fd := 0;
  if RadioGroup1.ItemIndex = 0 then
  begin
      with dm.stReport do
      begin
        StoredProcName :='SumCheckOutByTranCode';
        Prepare;
        ParamByName('FromTranCode').Value:= edtFromDocumentNo.Text;
        ParamByName('ToTranCode').Value:= edtToDocumentNo.Text;
        ExecProc;
      end;
  end
  else if RadioGroup1.ItemIndex =1 then
  begin
      with dm.stReport do
      begin
        StoredProcName :='SumCheckOutBySerial';
        Prepare;
        ParamByName('FromSerial').Value:= edtFromSerial.Text;
        ParamByName('ToSerial').Value:= edtToserial.Text;
        ExecProc;
      end;
  end
  else
  begin
      dtFromPackage.Time:=0;

      fd := DateOf(dtFromPackage.Date);
      fd := IncHour(fd,HourOf(ttFromTimePackage.Time));
      fd := IncMinute(fd,MinuteOf(ttFromTimePackage.Time));

      td := DateOf(dtFromPackage.Date);
      td := IncHour(td,HourOf(ttToTime.Time));
      td := IncMinute(td,MinuteOf(ttToTime.Time));
      with dm.stReport do
      begin
        StoredProcName :='SumCheckOutByDate';
        Prepare;
        ParamByName('FromDate').Value:= fd;
        ParamByName('ToDate').Value:= td;
        ExecProc;
      end;
  end;
  ppDBPipeline1.DataSource:=dm.dReportStore;

  FileName:=AppPath+'SummaryReport_004.rtm';
  ppReport1.Template.FileName:=FileName;
  if FileExists(FileName) then
  begin
    ppReport1.Template.LoadFromFile;
  end
  else
  begin
    ppReport1.Template.New;
  end;

  ppReport1.PrintToDevices;
end;

procedure TfrmSummary.btnSearchCheckedInClick(Sender: TObject);
Var
  FileName:String;
  fd,td: TDateTime;
begin
  fd := 0;
  if RadioGroup1.ItemIndex = 0 then
  begin
      with dm.stReport do
      begin
        StoredProcName :='SumCheckInByTranCode';
        Prepare;
        ParamByName('FromTranCode').Value:= edtFromDocumentNo.Text;
        ParamByName('ToTranCode').Value:= edtToDocumentNo.Text;
        ExecProc;
      end;
  end
  else if RadioGroup1.ItemIndex =1 then
  begin
      with dm.stReport do
      begin
        StoredProcName :='SumCheckInBySerial';
        Prepare;
        ParamByName('FromSerial').Value:= edtFromSerial.Text;
        ParamByName('ToSerial').Value:= edtToserial.Text;
        ExecProc;
      end;
  end
  else
  begin
      dtFromPackage.Time:=0;

      fd := DateOf(dtFromPackage.Date);
      fd := IncHour(fd,HourOf(ttFromTimePackage.Time));
      fd := IncMinute(fd,MinuteOf(ttFromTimePackage.Time));

      td := DateOf(dtFromPackage.Date);
      td := IncHour(td,HourOf(ttToTime.Time));
      td := IncMinute(td,MinuteOf(ttToTime.Time));

      with dm.stReport do
      begin
        StoredProcName :='SumCheckInByDate';
        Prepare;
        ParamByName('FromDate').Value:= fd;
        ParamByName('ToDate').Value:= td;
        ExecProc;
      end;
  end;
  ppDBPipeline1.DataSource:=dm.dReportStore;

  FileName:=AppPath+'SummaryReport_003.rtm';
  ppReport1.Template.FileName:=FileName;
  if FileExists(FileName) then
  begin
    ppReport1.Template.LoadFromFile;
  end
  else
  begin
    ppReport1.Template.New;
  end;

  ppReport1.PrintToDevices;
end;

procedure TfrmSummary.btnSearchPackagedClick(Sender: TObject);
Var
  FileName:String;
  fd,td :TDateTime;
begin
  if RadioGroup1.ItemIndex = 0 then
  begin
      with dm.stReport do
      begin
        StoredProcName :='Sum_PackSendByTranSactionCode';
        Prepare;
        ParamByName('FromTranCode').Value:= edtFromDocumentNo.Text;
        ParamByName('ToTranCode').Value:= edtToDocumentNo.Text;
        ExecProc;
      end;
  end
  else if RadioGroup1.ItemIndex =1 then
  begin
      with dm.stReport do
      begin
        StoredProcName :='Sum_PackSendBySerial';
        Prepare;
        ParamByName('FromSerial').Value:= edtFromSerial.Text;
        ParamByName('ToSerial').Value:= edtToserial.Text;
        ExecProc;
      end;
  end
  else
  begin
      dtFromPackage.Time:=0;

      fd := DateOf(dtFromPackage.Date);
      fd := IncHour(fd,HourOf(ttFromTimePackage.Time));
      fd := IncMinute(fd,MinuteOf(ttFromTimePackage.Time));

      td := DateOf(dtFromPackage.Date);
      td := IncHour(td,HourOf(ttToTime.Time));
      td := IncMinute(td,MinuteOf(ttToTime.Time));

      with dm.stReport do
      begin
        StoredProcName :='Sum_PackSendByDate';
        Prepare;
        ParamByName('FromDate').Value:= fd;
        ParamByName('ToDate').Value:= td;
        ExecProc;
      end;
  end;
  ppDBPipeline1.DataSource:=dm.dReportStore;

  FileName:=AppPath+'SummaryReport_002.rtm';
  ppReport1.Template.FileName:=FileName;
  if FileExists(FileName) then
  begin
    ppReport1.Template.LoadFromFile;
  end
  else
  begin
    ppReport1.Template.New;
  end;

  ppReport1.PrintToDevices;
end;

procedure TfrmSummary.FormShow(Sender: TObject);
begin
  dtFromPackage.Date:=Now;
end;

procedure TfrmSummary.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);

      ppViewer1.GotoPage(liPage);
    end; {if, carriage return pressed}

end;
procedure TfrmSummary.mskPreviewPercentageKeyPress(Sender: TObject; var Key: Char);
var
  liPercentage: Integer;
begin
  if (Key = #13) then
    begin
      liPercentage := StrToIntDef(mskPreviewPercentage.Text, 100);

      ppViewer1.ZoomPercentage := liPercentage;

      spbPreviewWhole.Down := False;
      spbPreviewWidth.Down := False;
      spbPreview100Percent.Down := False;

      mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
    end; {if, carriage return pressed}

end;
procedure TfrmSummary.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex =0 then
  begin
    pnlDocument.Visible:=True;pnlDocument.Color:=clGreen;
    pnlSerial.Visible:=False;pnlSerial.Color:=clBtnFace;
    pnlTime.Visible:=False;pnlTime.Color:=clBtnFace;
  end
  else   if RadioGroup1.ItemIndex =1 then
  begin
    pnlDocument.Visible:=False; pnlDocument.Color:=clBtnFace;
    pnlSerial.Visible:=True;pnlSerial.Color:=clGreen;
    pnlTime.Visible:=False;pnlTime.Color:=clBtnFace;
  end
  else if RadioGroup1.ItemIndex =2 then
  begin
    pnlDocument.Visible:=False;pnlDocument.Color:=clBtnFace;
    pnlSerial.Visible:=False;pnlSerial.Color:=clBtnFace;
    pnlTime.Visible:=True;pnlTime.Color:=clGreen;
    ttToTime.Time:=Now;
  end;
end;

procedure TfrmSummary.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;
end;
procedure TfrmSummary.spbPreviewCancelClick(Sender: TObject);
begin
  if ppViewer1.Report.Printing then
    ppViewer1.Cancel;
end;
procedure TfrmSummary.spbPreviewFirstClick(Sender: TObject);
begin
  ppViewer1.FirstPage;
end;
procedure TfrmSummary.spbPreviewLastClick(Sender: TObject);
begin
  ppViewer1.LastPage;
end;
procedure TfrmSummary.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
end;
procedure TfrmSummary.spbPreviewPrintClick(Sender: TObject);
begin
  ppViewer1.Print;
end;
procedure TfrmSummary.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
end;
procedure TfrmSummary.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;
end;
procedure TfrmSummary.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;
end;
procedure TfrmSummary.spdDesignClick(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

end.


