unit untNodeConfiguration;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxSplitter;

type
  TFraNodeConfiguration = class(TFrame)
    pageNode: TPageControl;
    tabNodeManage: TTabSheet;
    tabFlow: TTabSheet;
    tabDataInFlow: TTabSheet;
    pnlCommand1: TPanel;
    pnlCommand3: TPanel;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnDelete: TBitBtn;
    Panel1: TPanel;
    edtNodeDescription: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    edtNodeCode: TEdit;
    grdNode: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnAdd: TBitBtn;
    cxStyleRepository1: TcxStyleRepository;
    Odd: TcxStyle;
    Event: TcxStyle;
    Header: TcxStyle;
    Selected: TcxStyle;
    grdNodeColumn1: TcxGridDBColumn;
    grdNodeColumn2: TcxGridDBColumn;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    edtNodedescription2: TEdit;
    edtNodeCode2: TEdit;
    btnAddTable: TBitBtn;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    edtTableDescription: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtTableCode: TEdit;
    Panel4: TPanel;
    cxSplitter1: TcxSplitter;
    Panel5: TPanel;
    Panel6: TPanel;
    cxGrid2: TcxGrid;
    grdTableName: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel7: TPanel;
    lblTableName: TLabel;
    ComboBox1: TComboBox;
    Label7: TLabel;
    procedure pageNodeChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure grdNodeCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnAddTableClick(Sender: TObject);
    procedure edtTableCodeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses untDM, UntConstant;

procedure TFraNodeConfiguration.btnAddTableClick(Sender: TObject);
begin
  if dm.qtableName.Active then
  Begin
    Dm.qTableName.Append;
    Dm.qTableName.FieldByName('Column_Name').AsString:='Id';
    lblTableName.Caption:= 'Table: '+edtTableCode.Text+':'+edtTableDescription.Text;
    cxGrid2.SetFocus;
  End;
end;

procedure TFraNodeConfiguration.btnAddClick(Sender: TObject);
begin
  if dm.qNodes.Active then
  Begin
    Dm.qNodes.Append;
    Dm.qNodes.FieldByName('Node_code').AsString:= edtNodeCode.Text;
    Dm.qNodes.FieldByName('Node_Name').AsString:= edtNodeDescription.Text;
  End;
end;

procedure TFraNodeConfiguration.btnCancelClick(Sender: TObject);
begin
  if dm.qNodes.State <> dsBrowse then
  Begin
    dm.qNodes.Cancel;
    edtNodeCode.Clear;
    edtNodeDescription.Clear;
    edtNodeCode.SetFocus;
  End;
end;

procedure TFraNodeConfiguration.btnDeleteClick(Sender: TObject);
begin
  if (MessageDlg(msgConfirmToDelete+#10#13+ dm.qNodes.Fields[0].AsString
  +#10#13+ dm.qNodes.Fields[1].AsString
  , mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
    Begin
      dm.qNodes.Delete;
      dm.qNodes.ApplyUpdates;
    End;
end;

procedure TFraNodeConfiguration.btnSaveClick(Sender: TObject);
begin
  if dm.qNodes.State <> dsBrowse then
  Begin
    dm.qNodes.FieldByName('User_id').AsInteger:= StrToInt(Uid);
    Dm.qNodes.ApplyUpdates;
    edtNodeCode.Clear;
    edtNodeDescription.Clear;
    edtNodeCode.SetFocus;
  End;
end;

procedure TFraNodeConfiguration.edtTableCodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in [#48..#57,#65..#90,#97..#122]) then
    Key :=#0;
end;

procedure TFraNodeConfiguration.grdNodeCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if not dm.qNodes.Eof then
  begin
    edtNodeCode2.Text:= dm.qNodes.FieldByName('Node_Code').AsString;
    edtNodedescription2.Text:=dm.qNodes.FieldByName('Node_Name').AsString;
  end;
end;

procedure TFraNodeConfiguration.pageNodeChange(Sender: TObject);
begin
  //Initialize Nodes table
  if pageNode.ActivePage = tabNodeManage then
  Begin
    Try
      dm.qNodes.Close;
      dm.qNodes.CachedUpdates:= True;
      gString:='Select Node_Code,Node_Name from Flow_Node Where Node_Status=1 Order By 1';
      DM.RequestDataDset(gString,DM.qNodes);
    Except on E: Exception Do
      if Pos('exist',E.Message)>0 then
      Begin
        gString:='Create Table Flow_Node (' +
        'Node_Id int not null' +
        ',Node_Code Char(30) not null' +
        ',Node_Name Varchar(150)' +
        ',Node_Status Char(1) Default ''1'' Not null' +
        ',User_Id int' +
        ',Create_Date Datetime Default Current_TimeStamp' +
        ',Constraint Pk_Node Primary Key (Node_Id,Node_Code,Node_Status))';
        DM.UniConnection1.ExecSQL(gString);
      End;
    End;
  End else
  if pageNode.ActivePage = tabDataInFlow then
  Begin
    Try
      gString:=' SELECT Table_Name from Information_Schema.Tables Where Table_Name Like ''NODE_'+edtNodeCode2.Text+'%''';
      dm.RequestDataDset(gString,DM.qTableName);
    Except
      //
    End;
  End;

end;

end.
