unit untProductionOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxGridCardView, Vcl.ComCtrls,
  Vcl.Buttons, StrUtils;

type
  TfrmProductionOrder = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdProductionOrder: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    grdProductionOrderColumn1: TcxGridDBColumn;
    grdProductionOrderColumn2: TcxGridDBColumn;
    grdProductionOrderColumn3: TcxGridDBColumn;
    grdProductionOrderColumn4: TcxGridDBColumn;
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
    edtProductionNo: TEdit;
    edtCheckSum: TEdit;
    lblProductionNo: TLabel;
    dtAsOfDate: TDateTimePicker;
    lblAsOfdate: TLabel;
    btnCreatePart: TBitBtn;
    btnDeletePart: TBitBtn;
    btnEditPart: TBitBtn;
    btnSavePart: TBitBtn;
    btnUpdatePart: TBitBtn;
    btnClose: TBitBtn;
    procedure edtProductionNoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtAsOfDateKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProductionNoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSavePartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProductionOrder: TfrmProductionOrder;

implementation

{$R *.dfm}

uses untDM, UntConstant;

procedure TfrmProductionOrder.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmProductionOrder.btnSavePartClick(Sender: TObject);
begin
  //Save and Close;
  With grdProductionOrder.DataController.DataSource.DataSet do
  Begin
    First;
    DM.UniConnection1.StartTransaction;
    while Not Eof do
    Begin
      //Insert into Pack_Template
      Try
        DM.UniConnection1.ExecProc('Insert_Pack_Template',[dtAsOfDate.Date,edtProductionNo.Text
        ,FieldByName('Set_Code').AsString,FieldByName('Set_Value').AsString,Uid]);
        Next;
      Except on E:Exception Do
        Begin
          Dm.UniConnection1.Rollback;
          MessageDlg(msgSaveFail, mtError, [mbOK], 0);
          Exit;
        End;
      End;

    End;
    Dm.UniConnection1.Commit;
    MessageDlg(msgSaveCompleted, mtInformation, [mbOK], 0);
    Close;
  End;

end;

procedure TfrmProductionOrder.dtAsOfDateKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    edtProductionNo.SetFocus;
end;

procedure TfrmProductionOrder.edtProductionNoChange(Sender: TObject);
var
  I,Sum: Integer;
  Order:String;
begin
  if Length(edtProductionNo.Text) = 11 then
  begin
    Order:= edtProductionNo.Text;
    for I := 1 to 11 do
    Begin
      Sum:=Sum+i*StrToIntDef(Copy(Order,i,1),1);
    End;
    Sum:= Sum mod 256;
    Order := RightStr(Order,2);
    edtCheckSum.Text:=Order;
  end;
end;

procedure TfrmProductionOrder.edtProductionNoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key =13  then
    cxGrid1.SetFocus;
end;

procedure TfrmProductionOrder.FormShow(Sender: TObject);
begin
  gString:='Select * from settings where set_type=''PACK_TEMPL''';
  dm.RequestDataDset(gString,DM.qReport);
  grdProductionOrder.DataController.DataSource:= Dm.dReport;
end;

end.
