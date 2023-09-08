unit BaseDataM;

interface

uses
  uniGUIMainModule,System.SysUtils, Classes, Data.DB, Data.Win.ADODB,Data.SqlExpr, uniGUIVars,
  Datasnap.Provider,Dialogs, Datasnap.DBClient,System.Variants,Winapi.ADOInt,Vcl.Forms;
type
  TDataMod = class(TUniGUIMainModule)
    ADO_Server: TADOConnection;
    ADOQ_User: TADOQuery;
    ADODS_AccSet: TADODataSet;
    ADOSP_Date: TADOStoredProc;
    ADOQ_Comp: TADOQuery;
    ADOQ_TMenu: TADOQuery;
    FCDS_Run: TClientDataSet;
    ADOQ_FRun: TADOQuery;
    DSP_FRun: TDataSetProvider;
    CDS_ICON: TClientDataSet;
    ADOQ_Icon: TADOQuery;
    DSP_ICON: TDataSetProvider;
    CDS_ICONICON_NO: TStringField;
    CDS_ICONMENU_NO: TStringField;
    CDS_ICONICON_STREAM: TBlobField;
    ADOQ_Warn: TADOQuery;
    ADOQ_Period: TADOQuery;
    ADOQ_Bar: TADOQuery;
    ADOQ_Lock: TADOQuery;
    ADOQ_Action: TADOQuery;
    ADOQ_Equal: TADOQuery;
    ADOQ_Com: TADOQuery;
    ADOQ_Team: TADOQuery;
    CDS_Public: TClientDataSet;
    DSP_Public: TDataSetProvider;
    ADOQ_Public: TADOQuery;
    ADOQ_Menu: TADOQuery;
    ADOQ_MUser: TADOQuery;
    ADOSP_SQLExec: TADOStoredProc;
    ADOQ_Plan: TADOQuery;
    ADOQ_Attend: TADOQuery;
    ADOQ_YTime: TADOQuery;
    ADOQ_Vacate: TADOQuery;
    DSP_Day: TDataSetProvider;
    ADOQ_Mount: TADOQuery;
    CDS_YDate: TClientDataSet;
    CDS_YDateCOLUMN1: TDateTimeField;
    DSP_YDate: TDataSetProvider;
    ADO_YuTable: TADOTable;
    ADOQ_Fire: TADOQuery;
    CDS_Power: TClientDataSet;
    DSP_Power: TDataSetProvider;
    ADOQ_Power: TADOQuery;
    ADOQ_UserC: TADOQuery;
    ADOQ_YuDepart: TADOQuery;
    ADOQ_YuDuty: TADOQuery;
    ADOQ_YuPerson: TADOQuery;
    ADOQ_Look: TADOQuery;
    ADOQ_YuComp: TADOQuery;
    ADOQ_YuMenu: TADOQuery;
    ADOQ_YuSelect: TADOQuery;
    ADOQ_YuPlanH: TADOQuery;
    ADOQ_YuPlanS: TADOQuery;
    ADOQ_YuPlanP: TADOQuery;
    DSP_YuTemp: TDataSetProvider;
    CDS_YuTemp: TClientDataSet;
    ADOQ_YuTemp: TADOQuery;
    ADOQ_YuVouch: TADOQuery;
    ADOQ_YuVouchS: TADOQuery;
    ADOQ_YuCust: TADOQuery;
    ADOQ_YuApply: TADOQuery;
    ADOQ_YuAccount: TADOQuery;
    ADOQ_Execute: TADOQuery;
    ADOSP_ACCP: TADOStoredProc;
    CDS_Temp: TClientDataSet;
    ADOQ_File: TADOQuery;
    ADOQ_FileS: TADOQuery;
    ADOQ_Shops: TADOQuery;
    ADOQ_YuMade: TADOQuery;
    ADOQ_YuMadeS: TADOQuery;
    ADOQ_YuHouse: TADOQuery;
    ADOQ_YuHouseS: TADOQuery;
    ADOQ_YuOrder: TADOQuery;
    ADOQ_YuOrderS: TADOQuery;
    ADOQ_YuHouseA: TADOQuery;
    ADOQ_YuStock: TADOQuery;
    ADOQ_YuPay: TADOQuery;
    ADOQ_YuPayS: TADOQuery;
    ADOQ_YuAccCom: TADOQuery;
    ADOQ_YuDetail: TADOQuery;
    ADOQ_YuTotal: TADOQuery;
    DS_Com: TDataSource;
    CDS_Com: TClientDataSet;
    CDS_ComCOM_NO: TStringField;
    CDS_ComCOM_NAME: TStringField;
    CDS_ComCOM_CNAME: TStringField;
    CDS_ComCOM_ENAME: TStringField;
    CDS_ComCOM_MAN: TStringField;
    CDS_ComCOM_MANID: TStringField;
    CDS_ComCOM_ATTN: TStringField;
    CDS_ComCom_BANK: TStringField;
    CDS_ComCOM_TAX: TStringField;
    CDS_ComCOM_BANKID: TStringField;
    CDS_ComCUR_NO: TStringField;
    CDS_ComCOM_FAX: TStringField;
    CDS_ComCOM_TEL: TStringField;
    CDS_ComCOM_ZIP: TStringField;
    CDS_ComCOM_EMAIL: TStringField;
    CDS_ComCOM_HTTP: TStringField;
    CDS_ComCOM_ADD: TStringField;
    CDS_ComCOM_BMP: TBlobField;
    CDS_ComACP_YEAR: TStringField;
    CDS_ComCUR_NAME: TStringField;
    CDS_ComACP_MONTH: TStringField;
    CDS_ComCOM_ISACC: TBooleanField;
    CDS_ComCOM_ISFIRST: TBooleanField;
    CDS_ComCOM_PARENT: TStringField;
    CDS_ComCOM_ISEND: TBooleanField;
    CDS_ComRUN_NO: TStringField;
    DSP_Comp: TDataSetProvider;
    CDS_Date: TClientDataSet;
    CDS_DateCOLUMN1: TDateTimeField;
    DSP_Date: TDataSetProvider;
    CDS_Rule: TClientDataSet;
    CDS_Time: TClientDataSet;
    DSP_Rule: TDataSetProvider;
    ADOQ_Rule: TADOQuery;
    ADODS_Execute: TADODataSet;
    ADOQ_YuEmail: TADOQuery;
    ADOQ_YuPort: TADOQuery;
    ADOQ_YuMail: TADOQuery;
    CDS_Field: TClientDataSet;
    DSP_Field: TDataSetProvider;
    ADOQ_Field: TADOQuery;
    CDS_SetEXEC: TClientDataSet;
    CDS_SExec: TClientDataSet;
    CDS_SExecS: TClientDataSet;
    CDS_FlowS: TClientDataSet;
    DSP_Flow: TDataSetProvider;
    ADOQ_Flow: TADOQuery;
    DSP_SEXEC: TDataSetProvider;
    ADOQ_SEXEC: TADOQuery;
    DSP_SEXECS: TDataSetProvider;
    ADOQ_SEXECS: TADOQuery;
    ADOQ_FLowS: TADOQuery;
    DSP_FLowS: TDataSetProvider;
    ADOSP_SETEXEC: TADOStoredProc;
    DSP_SETEXEC: TDataSetProvider;
    DSP_FlowP: TDataSetProvider;
    ADOQ_FLowP: TADOQuery;
  private
    { Private declarations }
  public
    UserId : integer;
    YUSQLTYPE:String;
    procedure RefreshSysrun(pid:string);
    procedure GetTablesInfo(var paTablesList: OleVariant); safecall;
    procedure GetFieldsInfo(Var paTableName,paFieldsList: OleVariant); safecall;
    procedure SQLText(var SQLCommandText,SQLName,RetName: OleVariant); safecall;
    procedure ExecStoredProc(var pProcName, pInputVars, pbOk:OleVariant); safecall;
    var SQLCommandText: OleVariant;
    { Public declarations }
  end;

//procedure RegisterMainModuleClass(ModuleClass:TMainModuleClass);

function DataMod: TDataMod;

implementation

{$R *.dfm}

uses  ServerModule, uniGUIApplication;

//var  MainModuleClass : TMainModuleClass = nil;

function DataMod: TDataMod;
begin
  Result := TDataMod(UniApplication.UniMainModule)
end;
 {
procedure RegisterMainModuleClass(ModuleClass:TMainModuleClass);
begin
  MainModuleClass := ModuleClass;
end;  }

procedure TDataMod.RefreshSysrun(pid:string);
begin
  FCDS_Run.Close;
  FCDS_Run.CommandText:='Select * From SYS_RUN Order By Sys_NO';
  FCDS_Run.Open;
  FCDS_Run.Locate('RUN_NO',pid,[]);
end;

procedure TDataMod.GetTablesInfo(var paTablesList: OleVariant);
var
  I:Integer;
  loTables:_Recordset;
begin
  loTables:=ADO_Server.ConnectionObject.OpenSchema(adSchemaTables,VarArrayOf([null,null,null,null]),EmptyParam);
  I:=loTables.RecordCount;
  ADO_YuTable.Recordset:=loTables;
  ADO_YuTable.Active:=true;
  I:=0;
  while not loTables.EOF do
  begin
    if (VarToStr(loTables.Fields['Table_type'].Value)='TABLE') then
    begin
      I:=I+1;
    end;
    loTables.MoveNext;
  end;
  paTablesList:=VarArrayCreate([0,I-1,0,0],varVariant);
  loTables.MoveFirst;
  I:=0;
  while not loTables.EOF do
  begin
    if (VarToStr(loTables.Fields['Table_type'].Value)='TABLE') then
    begin
      paTablesList[I,0]:=VarToStr(loTables.Fields['Table_name'].Value);
      I:=I+1;
    end;
    loTables.MoveNext;
  end;
end;

procedure TDataMod.GetFieldsInfo(Var paTableName,paFieldsList: OleVariant); //读字段的属性
var
  I:Integer;
  SQL:String;
begin
  SQL:='select sysobjects.name as tablename,syscolumns.name as columnname,systypes.name as typename,syscolumns.length as length';
  SQL:=SQL+' from sysobjects left Join syscolumns on sysobjects.id=syscolumns.ID left Join systypes';
  SQL:=SQL+' on syscolumns.xtype=systypes.xtype where  sysobjects.name= '+#39+paTableName+#39;
  ADOQ_Public.Close;
  ADOQ_Public.SQL.Clear;
  ADOQ_PubLic.SQL.Add(SQL);
  ADOQ_Public.Open;
  I:=0;
  paFieldsList:=VarArrayCreate([0,ADOQ_PubLic.RecordCount-1,0,4],varVariant);
  ADOQ_Public.First;
  while not ADOQ_Public.Eof do
  begin
    paFieldsList[I,0]:=ADOQ_Public.FieldByName('columnname').AsString;
    paFieldsList[I,1]:=ADOQ_Public.FieldByName('typename').asString;
    paFieldsList[I,2]:=ADOQ_Public.FieldByName('length').Value;
    ADOQ_Public.Next;
    I:=I+1;
  end;
  ADOQ_Public.Close;
end;

procedure TDataMod.SQLText(var SQLCommandText,SQLName,RetName: OleVariant);
var ADOQuery:TADOQuery;
    DSPData:TDataSetProvider;
    I:integer;
begin
  for I:=Self.ComponentCount-1 downto 0  do
  begin
    if Self.Components[I].ClassType=TADOQuery then
    begin
      if ansisametext(TADOQuery(Self.Components[I]).Name,'ADO_'+SQLName) then Exit;
    end;
    if Self.Components[I].ClassType=TDataSetProvider then
    begin
      if ansisametext(TDataSetProvider(Self.Components[I]).Name,'DSP_'+SQLName) then Exit;
    end;
  end;
  ADOQuery:=TADOQuery.Create(Self);
  ADOQuery.Name:='ADO_'+SQLName;
  ADOQuery.Connection:=ADO_Server;
  ADOQuery.SQL.Text:=SQLCommandText;
  DSPData:=TDataSetProvider.Create(Self);
  DspData.Name:='DSP_'+SQLName;
  DsPData.DataSet:=ADOQuery;
  DSPData.Options:=DSPData.Options+[poAllowCommandText];
  RetName:=DSpData.Name;
end;

procedure TDataMod.ExecStoredProc(var pProcName, pInputVars, pbOk: OleVariant);
var
  lStoredProc:TADOStoredProc;
  lInputCount,lOutputCount,I:integer;
  lName:string;
  lValue,loutValue:variant;
  lParameter:TParameter;
  ltype:TFieldtype;
  lntype,lsize,lpecition:integer;
begin
  pbOk:=true;
  LStoredProc:=TADOStoredProc.Create(self);
  try
    LStoredProc.Connection:=ADO_Server;
    LStoredProc.ProcedureName:=pProcName;     //生成输入参数
    if (VarIsArray(pInputVars)) then
    begin
      lInputCount:=VarArrayHighBound(pInputVars,1)+1;
      for I:=0 to lInputCount-1 do
      begin
        lName:=pInputVars[I,0];
        lValue:=pInputVars[I,1];
        lParameter:=lStoredProc.Parameters.AddParameter;
        lParameter.Name:=lName;
        LParameter.Size:=255;
        lParameter.Direction:=pdInput;
        lParameter.Value:=lValue;
      end;
    end;   //生成输出参数
    lStoredProc.ExecProc;
  finally
    lStoredProc.Free;
  end;
end;



initialization
  RegisterMainModuleClass(TDataMod);
end.
