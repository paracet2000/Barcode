unit untParameters;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, dxSparkline,
  cxButtonEdit, cxCalendar;

type
  TfrmParameters = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOkParameter: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1Enter(Sender: TObject);
  private
    procedure Setcol;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParameters: TfrmParameters;

implementation

{$R *.dfm}

uses untDM, UntMain;

procedure TfrmParameters.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Setcol;
end;

procedure TfrmParameters.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Setcol;
end;

procedure TfrmParameters.cxGrid1Enter(Sender: TObject);
begin
  Setcol;
end;

procedure TfrmParameters.Setcol();
begin
  cxGrid1DBTableView1Column5.Width:=cxGrid1DBTableView1Column4.Width;
  with cxGrid1DBTableView1.DataController.DataSource.DataSet do
  begin
    FieldByName('DateParameter').ReadOnly:=False;
    if FieldByName('data_type').AsString='datetime' then
    begin
      cxGrid1DBTableView1Column4.Visible:= False;
      cxGrid1DBTableView1Column5.Visible:= True;
    end else
    begin
      cxGrid1DBTableView1Column5.Visible:= False;
      cxGrid1DBTableView1Column4.Visible:= True;
    end;
  end;
end;

end.
