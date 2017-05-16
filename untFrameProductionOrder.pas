unit untFrameProductionOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCardView,
  cxGridTableView, cxClasses, cxGridLevel, cxGridCustomTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.ExtCtrls, StrUtils;

type
  TFraProductionOrder = class(TFrame)
    Panel1: TPanel;
    lblProductionNo: TLabel;
    lblAsOfdate: TLabel;
    edtProductionNo: TEdit;
    edtCheckSum: TEdit;
    dtAsOfDate: TDateTimePicker;
    Panel2: TPanel;
    btnCreatePart: TBitBtn;
    btnDeletePart: TBitBtn;
    btnEditPart: TBitBtn;
    btnSavePart: TBitBtn;
    btnUpdatePart: TBitBtn;
    btnClose: TBitBtn;
    cxGrid1: TcxGrid;
    grdProductionOrder: TcxGridDBTableView;
    grdProductionOrderColumn1: TcxGridDBColumn;
    grdProductionOrderColumn2: TcxGridDBColumn;
    grdProductionOrderColumn4: TcxGridDBColumn;
    grdProductionOrderColumn3: TcxGridDBColumn;
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

    procedure btnCloseClick(Sender: TObject);
    procedure btnSavePartClick(Sender: TObject);
    procedure dtAsOfDateKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure edtProductionNoChange(Sender: TObject);
    procedure edtProductionNoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses untDM, UntConstant;

procedure TFraProductionOrder.btnCloseClick(Sender: TObject);
begin
  //Hide;
end;

procedure TFraProductionOrder.btnSavePartClick(Sender: TObject);
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
    DM.stReport.Close;
    DM.stReport.StoredProcName:='Select_Pack_Template';
    DM.stReport.ExecProc;
    grdProductionOrder.DataController.DataSource:=DM.dReportStore;
  End;

end;

procedure TFraProductionOrder.dtAsOfDateKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    edtProductionNo.SetFocus;
end;

procedure TFraProductionOrder.edtProductionNoChange(Sender: TObject);
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
    Order := RightStr(IntToStr(Sum),2);
    edtCheckSum.Text:=Order;
  end;
end;

procedure TFraProductionOrder.edtProductionNoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key =13  then
    cxGrid1.SetFocus;
end;

end.
