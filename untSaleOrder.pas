unit untSaleOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,System.UITypes, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCardView, cxGridTableView, cxClasses,
  cxGridLevel, cxGridCustomTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls, cxCalendar;

type
  TfrmSaleOrder = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
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
    edtCode: TLabeledEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    procedure BitBtn3Click(Sender: TObject);
    procedure edtCodeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSaleOrder: TfrmSaleOrder;

implementation

{$R *.dfm}

uses untDM, UntConstant;

procedure TfrmSaleOrder.BitBtn3Click(Sender: TObject);
begin
  gString:='SELECT H.DATE,H.DOC_NO,CUS.CUS_CODE,CUS.CUS_NAME,D.PRD_CODE,D.DESC'
  +' FROM SVOHEAD H INNER JOIN SVODESC D ON H.DOC_ID=D.DOC_ID'
  +' LEFT JOIN CUSTOMER CUS ON H.CUS_ID=CUS.CUS_ID'
  +' WHERE H.DATE <= '+FormatDateTime('{DD/MM/YYYY}',DateTimePicker1.Date)+' AND H.DATE >='+FormatDateTime('{DD/MM/YYYY}',DateTimePicker2.Date)
  +' ORDER BY H.DATE DESC';
  dm.qfoxQuery.close;
  dm.qFoxQuery.SQL.Text:=gString;
  dm.qFoxQuery.Open;
  cxGrid1DBTableView1.DataController.DataSource:=dm.dFoxQuery;
  if dm.qFoxQuery.RecordCount=0 then
    MessageDlg(msgDataNotFound, mtWarning, [mbOK], 0);
end;

procedure TfrmSaleOrder.edtCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
  gString:='SELECT H.DATE,H.DOC_NO,CUS.CUS_CODE,CUS.CUS_NAME,D.PRD_CODE,D.DESC'
  +' FROM SVOHEAD H INNER JOIN SVODESC D ON H.DOC_ID=D.DOC_ID'
  +' LEFT JOIN CUSTOMER CUS ON H.CUS_ID=CUS.CUS_ID'
  +' WHERE H.DOC_NO='''+edtCode.Text+''''
  +' ORDER BY H.DATE DESC';
  dm.qfoxQuery.close;
  dm.qFoxQuery.SQL.Text:=gString;
  dm.qFoxQuery.Open;
  cxGrid1DBTableView1.DataController.DataSource:=dm.dFoxQuery;
  end;
end;

end.
