unit UntGlobalLibs;

interface

uses
  Windows, winsock, Vcl.StdCtrls, SysUtils, StrUtils, DBCtrls;
Var
  i:integer;

  ActiveEdit: TEdit;
  ActiveDBEdit: TDBEdit;
  function GetIP(const HostName: string): string;
  procedure SetValue(Sender: TEdit);
  procedure SetValueDB(Sender: TDBEdit);
  function CheckLotNo(LotNo: String): Boolean;
  function MyComputerName():String;
implementation

uses untDM;

function GetIP(const HostName: string): string;
var
  WSAData: TWSAData;
  R: PHostEnt;
  A: TInAddr;
begin
  Result := '127.0.0.1'; // '0.0.0.0'
  WSAStartup($101, WSAData);
  R := Winsock.GetHostByName(PAnsiChar(AnsiString(HostName)));
  if Assigned(R) then
  begin
    A := PInAddr(r^.h_Addr_List^)^;
    Result := WinSock.inet_ntoa(A);
  end;
end;

procedure SetValue(Sender: TEdit);
Begin
  if Sender.Tag = 1 then
    (Sender as TEdit).Text:= DM.dSource.Dataset.fields[0].AsString
  else
    (Sender as TEdit).Text:= DM.dSource.Dataset.fields[1].AsString;
End;

procedure SetValueDB(Sender: TDBEdit);
Begin
  if Sender.Tag = 1 then
    (Sender as TDBEdit).DataSource.DataSet.FieldByName((Sender as TDBEdit).DataField).AsString:= DM.dSource.Dataset.fields[0].AsString
  else
    (Sender as TDBEdit).DataSource.DataSet.FieldByName((Sender as TDBEdit).DataField).AsString:= DM.dSource.Dataset.fields[1].AsString;
End;

function CheckLotNo(LotNo: String): Boolean;
Var
  i,sum,digit,res: integer;
  s:String;
Begin
  Result:=False;
  sum:=0;
  for i := 1 to 13 do
  Begin
    digit := StrToIntDef(Copy(LotNo,i,1),-1);
    if digit>=0 then
      sum:=sum+(digit* (15-i));
  End;
    res := 11-(sum mod 11);
    s:=RightStr(IntToStr(res),1);
    Result:=(s=RightStr(LotNo,1));
End;

function MyComputerName():String;
var
  ComputerName: Array [0 .. 256] of char;
  Size: DWORD;
begin
  Size := 256;
  GetComputerName(ComputerName, Size);
  Result := ComputerName;
end;
end.


