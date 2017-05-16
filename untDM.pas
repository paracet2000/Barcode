unit untDM;

interface

uses
  System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS, Datasnap.Provider, Datasnap.DBClient, StrUtils, Data.Win.ADODB
  ,IniFiles, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDesignLayer, ppParameter;

type
  TDM = class(TDataModule)
    UniConnection1: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    Select: TDataSetProvider;
    Update: TDataSetProvider;
    GetDate: TDataSetProvider;
    qSelect: TUniQuery;
    qUpdate: TUniQuery;
    qGetDate: TUniQuery;
    qLogin: TUniQuery;
    dLogin: TUniDataSource;
    store_InsertInventory: TUniStoredProc;
    qPopup: TUniQuery;
    dPopup: TUniDataSource;
    qReport: TUniQuery;
    dReport: TUniDataSource;
    ADOConnection1: TADOConnection;
    qFoxCustomer: TADOQuery;
    qFoxPart: TADOQuery;
    dFoxCustomer: TDataSource;
    dFoxPart: TDataSource;
    qFoxQuery: TADOQuery;
    dFoxQuery: TDataSource;
    qCheckIn: TUniQuery;
    dCheckin: TUniDataSource;
    qUsers: TUniQuery;
    dUsers: TUniDataSource;
    qSetting: TUniQuery;
    dSetting: TUniDataSource;
    qPart: TUniQuery;
    dPart: TUniDataSource;
    qCustomer: TUniQuery;
    dCustomer: TUniDataSource;
    dSelect: TUniDataSource;
    qShortPart: TUniQuery;
    dShortPath: TUniDataSource;
    qPrevious: TUniQuery;
    dPrevious: TUniDataSource;
    stInsertLogs: TUniStoredProc;
    qStoreInfo: TUniQuery;
    dStoreInfo: TUniDataSource;
    stReport: TUniStoredProc;
    dReportStore: TUniDataSource;
    stGlobal: TUniStoredProc;
    qReportImage: TUniQuery;
    dReportImage: TUniDataSource;
    qRevert: TUniQuery;
    dRevert: TUniDataSource;
    stPrdOrder: TUniStoredProc;
    dstPrdOrder: TUniDataSource;
    dSource: TUniDataSource;
    dusingPrdOrder: TUniDataSource;
    stUsingPrdOrder: TUniStoredProc;
    qNodes: TUniQuery;
    dNodes: TUniDataSource;
    qTableName: TUniQuery;
    dTableName: TUniDataSource;
    stSearch: TUniStoredProc;
    dSearch: TUniDataSource;
    stBalance: TUniStoredProc;
    dBalance: TUniDataSource;
    qPartDetail: TUniQuery;
    dPartDetail: TUniDataSource;
    qPartDetailPart_Image: TBlobField;
    stPrOrder: TUniStoredProc;
    dPrOrder: TUniDataSource;
    qPattern: TUniQuery;
    dPattern: TUniDataSource;
    qPrdItems: TUniQuery;
    dprdItems: TUniDataSource;
    qPrdProcess: TUniQuery;
    dPrdprocess: TUniDataSource;
    qPrdMapping: TUniQuery;
    dPrdMapping: TUniDataSource;
    qPrdItemsGrid: TUniQuery;
    dPrdItemsGrid: TUniDataSource;
    qPrdMappingGrid: TUniQuery;
    dPrdmappinggrid: TUniDataSource;
    dProductionOrder: TUniDataSource;
    stProductionOrder: TUniStoredProc;
    db_Production_Order: TppDBPipeline;
    ppReport1: TppReport;
    db_prodcution_Process: TppDBPipeline;
    dprocessdoc: TUniDataSource;
    qPrdProcessDoc: TUniQuery;
    function SelectDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure UniConnection1BeforeConnect(Sender: TObject);
  private


    { Private declarations }
  public
    { Public declarations }
    function UseCheck: Boolean;
    Function RequestData(S: String): TUniQuery;
    Function GetDocNumber(DocCode: String): String;
    Procedure RequestDataDset(S: String; Dset: TUniQuery);
    function GetServerDate: TDateTime;
    Procedure InsertLogs(Part_No,Lot_No,Serial_No:String;
    User_Id: integer;Activity: WideString;Base_Station: String);

    function CheckFiFo(LotNo, PartNo: String): Boolean;
  end;

var
  DM: TDM;
  UName, Uid, FullName: String;
  gString,gDocumentNo,AppPath: String;
  JPEGFilename,BMPFileName: String;
  sCatalog,sUserName,sPassword,sServer:String;
  ReportMode:String;
  ServerIP: String;
  AddCheckSum:Boolean;
  Function GetOption(OptType,OptCode:String):String;
implementation
uses VCL.Forms, UntGlobalLibs;
{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
Function GetOption(OptType,OptCode:String):String;
Begin
  gString:= 'Select Set_Value from Settings Where Set_Type='''+OptType+'''' +
  ' and Set_Code='''+OptCode+'''';
  dm.RequestData(gString);
  Result:=dm.qSelect.Fields[0].AsString;
End;
Function TDM.UseCheck(): Boolean;
Begin
  DM.RequestData('Select Set_value from Settings Where Set_Type=''CHECKSUM'' and Set_Code=''USE''');
  if (dm.qSelect.Fields[0].AsString='1') or (UpperCase(dm.qSelect.Fields[0].AsString)='YES') then
    Result:= True
  else
    Result:=False;

  AddCheckSum:= Result;
End;
function TDM.CheckFiFo(LotNo,PartNo:String):Boolean;
Begin
  dm.stGlobal.StoredProcName:='CheckFiFo';
  dm.stGlobal.Prepare;
  dm.stGlobal.ParamByName('LotNo').Value:=LotNo;
  dm.stGlobal.ParamByName('PartNo').Value:=PartNo;
  dm.stGlobal.ExecProc;
  Result:=dm.stGlobal.Fields[0].AsString ='';
End;
function TDM.GetDocNumber(DocCode: String): String;
var
  Code, S, SS: string;
  NewValue: Double;
begin
  Code := UpperCase(DocCode);
  with qUpdate do
  begin
    S := 'SELECT * FROM SETTINGS WHERE SET_CODE=''' + Code + '''';
    Close;
    SQL.Clear;
    SQL.Text := S;
    Open;
    if Eof then
    begin
      SS := 'INSERT INTO SETTINGS('
      + ' SET_CODE,SET_TYPE,SET_DESCRIPTION'
      + ',SET_VALUE,SET_STATUS,CREATE_BY'
      + ',CREATE_DATE,UPDATE_BY,UPDATE_DATE) VALUES ('
      + ''''+Code+''',''' + Code + ''',''' + Code + ''''
      + ',''1'',''1'',''' + Uid + '''' +
        ',CURRENT_TIMESTAMP,''' + Uid + ''',CURRENT_TIMESTAMP)';
      SQL.Text := SS;
      ExecSQL;
      Result := FormatFloat('00000#', 1);
    end
    else
    begin
      NewValue := StrToInt64Def(FieldByName('SET_VALUE').AsString,1) + 1;
      SS := 'UPDATE SETTINGS SET SET_VALUE=''' + FormatFloat('00000#', NewValue) + '''' + ', UPDATE_BY=''' + Uid + ''',UPDATE_DATE=CURRENT_TIMESTAMP' + ' WHERE SET_TYPE=''' + Code + '''';
      SQL.Text := SS;
      ExecSQL;
      Result := FormatFloat('00000#', NewValue);
    end;

  end;

end;

function TDM.RequestData(S: String): TUniQuery;
begin
  qSelect.Close;
  qSelect.SQL.Clear;
  qSelect.SQL.Text := S;
  if LeftStr(UpperCase(S), 1) = 'S' then
  Begin
    qSelect.Open;
    Result := qSelect;
  End
  else
  begin
    qSelect.ExecSQL;
    Result := nil;
  end;
End;

Procedure TDM.RequestDataDset(S: String; Dset: TUniQuery);
begin
  Dset.Close;
  Dset.SQL.Clear;
  Dset.SQL.Text := S;
  if LeftStr(UpperCase(S), 1) = 'S' then
  Begin
    Dset.Open;
  End
  else
  begin
    Dset.ExecSQL;
  end;
End;

function TDM.SelectDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
var
  S: String;
begin
  S := Input;
  with qSelect do
  Begin
    Close;
    SQL.Clear;
    SQL.Text := S;
    Open;
    Result := Select.Data;
  End;
end;

procedure TDM.UniConnection1BeforeConnect(Sender: TObject);
Var
  iniFile:TIniFile;

begin
  AppPath:=ExtractShortPathName(Application.ExeName);//+'\SummaryReport_002.rtm';
  AppPath:=ReverseString(AppPath);
  AppPath := Copy(AppPath, Pos('\', AppPath), Length(AppPath));

  AppPath := ReverseString(AppPath);

  iniFile := TIniFile.Create(AppPath + 'Application.ini');
  try
    sCatalog := iniFile.ReadString('Database', 'sCatalog', '');
    sUserName := iniFile.ReadString('Database', 'sUserName', '');
    sPassword := iniFile.ReadString('Database', 'sPassword', '');
    sServer := iniFile.ReadString('Database', 'sServer', '');
    if StrToIntDef(LeftStr(sServer,1),0)=0 then
    begin
      sServer:=GetIP(sServer);
    end;

    if sCatalog = '' then
    begin
      sCatalog := 'production';
      iniFile.WriteString('Database', 'sCatalog', sCatalog);
    end;
    if sUserName = '' then
    begin
      sUserName := 'root';
      iniFile.WriteString('Database', 'sUserName', sUserName);
    end;
    if sPassword = '' then
    begin
      sPassword := 'Love123456';
      iniFile.WriteString('Database', 'sPassword', sPassword);
    end;
    if sServer = '' then
    begin
      sServer := '127.0.0.1';
      iniFile.WriteString('Database', 'sServer', sServer);
    end;

  finally
    iniFile.Free;
  end;

  UniConnection1.Server:=sServer;
  UniConnection1.Database:=sCatalog;
  UniConnection1.Username:=sUserName;
  UniConnection1.Password:= sPassword;

end;

function TDM.GetServerDate():TDateTime;
Begin
  Result:=Now;
  RequestData('Select current_timestamp from users limit 1');
  Result:=dm.qSelect.Fields[0].AsDateTime;
End;

procedure TDM.InsertLogs(Part_No, Lot_No, Serial_No: String; User_Id: integer;
  Activity: WideString; Base_Station: String);
begin
  stInsertLogs.Params.ParamByName('Part_No').Value:=Part_No;
  stInsertLogs.Params.ParamByName('Lot_No').Value:=Lot_No;
  stInsertLogs.Params.ParamByName('Serial_No').Value:=Serial_No;
  stInsertLogs.Params.ParamByName('User_Id').Value:=User_Id;
  stInsertLogs.Params.ParamByName('Activity').Value:=Activity;
  stInsertLogs.Params.ParamByName('Base_Station').Value:=Base_Station;

  stInsertLogs.ExecProc;
end;

end.
