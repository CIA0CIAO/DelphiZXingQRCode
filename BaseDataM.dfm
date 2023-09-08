object DataMod: TDataMod
  BrowserOptions = [boDisableMouseRightClick, boDisableChromeRefresh]
  MonitoredKeys.Keys = <>
  Height = 905
  Width = 1721
  PixelsPerInch = 144
  object ADO_Server: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=HBJS2020168!@;Persist Security Info' +
      '=True;User ID=SA;Initial Catalog=MCDATA;Data Source=47.113.112.1' +
      '47;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4' +
      '096;Workstation ID=DESKTOP-MV1HKIN;Use Encryption for Data=False' +
      ';Tag with column collation when possible=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 26
    Top = 19
  end
  object ADOQ_User: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 163
    Top = 19
  end
  object ADODS_AccSet: TADODataSet
    CursorType = ctStatic
    CommandText = 'select * from sysdatabases where dbid>6'
    Parameters = <>
    Left = 424
    Top = 235
  end
  object ADOSP_Date: TADOStoredProc
    Connection = ADO_Server
    CursorType = ctStatic
    ProcedureName = 'Select Com_NO,Com_Name,Com_Parent From SYS_Company  '
    Parameters = <>
    Left = 299
    Top = 19
  end
  object ADOQ_Comp: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 158
    Top = 106
  end
  object ADOQ_TMenu: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 436
    Top = 19
  end
  object FCDS_Run: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_FRun'
    Left = 22
    Top = 463
  end
  object ADOQ_FRun: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 22
    Top = 154
  end
  object DSP_FRun: TDataSetProvider
    DataSet = ADOQ_FRun
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 22
    Top = 304
  end
  object CDS_ICON: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * From SYS_ICON'
    Params = <>
    ProviderName = 'DSP_ICON'
    Left = 160
    Top = 646
    object CDS_ICONICON_NO: TStringField
      FieldName = 'ICON_NO'
      FixedChar = True
      Size = 16
    end
    object CDS_ICONMENU_NO: TStringField
      FieldName = 'MENU_NO'
      Size = 15
    end
    object CDS_ICONICON_STREAM: TBlobField
      FieldName = 'ICON_STREAM'
    end
  end
  object ADOQ_Icon: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 102
    Top = 271
  end
  object DSP_ICON: TDataSetProvider
    DataSet = ADOQ_Icon
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 158
    Top = 463
  end
  object ADOQ_Warn: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 710
    Top = 304
  end
  object ADOQ_Period: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 296
    Top = 122
  end
  object ADOQ_Bar: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 847
    Top = 19
  end
  object ADOQ_Lock: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 295
    Top = 463
  end
  object ADOQ_Action: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 298
    Top = 646
  end
  object ADOQ_Equal: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 320
    Top = 271
  end
  object ADOQ_Com: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 22
    Top = 646
  end
  object ADOQ_Team: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 431
    Top = 463
  end
  object CDS_Public: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Public'
    Left = 185
    Top = 582
  end
  object DSP_Public: TDataSetProvider
    DataSet = ADOQ_Public
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 568
    Top = 463
  end
  object ADOQ_Public: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 47
    Top = 582
  end
  object ADOQ_Menu: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 572
    Top = 154
  end
  object ADOQ_MUser: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 572
    Top = 304
  end
  object ADOSP_SQLExec: TADOStoredProc
    Connection = ADO_Server
    CursorType = ctStatic
    ProcedureName = 'PROC_FI_WEALTH'
    Parameters = <
      item
        Name = 'VarOne'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'VarTwo'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 1394
    Top = 19
  end
  object ADOQ_Plan: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 710
    Top = 154
  end
  object ADOQ_Attend: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 572
    Top = 19
  end
  object ADOQ_YTime: TADOQuery
    Connection = ADO_Server
    Parameters = <>
    Left = 847
    Top = 154
  end
  object ADOQ_Vacate: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 848
    Top = 304
  end
  object DSP_Day: TDataSetProvider
    Options = [poAllowCommandText]
    Left = 463
    Top = 582
  end
  object ADOQ_Mount: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 863
    Top = 797
  end
  object CDS_YDate: TClientDataSet
    Aggregates = <>
    CommandText = 'SYS_GetDate'
    FieldDefs = <
      item
        Name = 'COLUMN1'
        Attributes = [faReadonly]
        DataType = ftDateTime
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSP_YDate'
    StoreDefs = True
    Left = 722
    Top = 448
    object CDS_YDateCOLUMN1: TDateTimeField
      FieldName = 'COLUMN1'
      ReadOnly = True
    end
  end
  object DSP_YDate: TDataSetProvider
    DataSet = ADOSP_Date
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 434
    Top = 154
  end
  object ADO_YuTable: TADOTable
    Connection = ADO_Server
    TableName = 'Select * From SYS_TABLE'
    Left = 25
    Top = 797
  end
  object ADOQ_Fire: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 842
    Top = 463
  end
  object CDS_Power: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * From SYS_Power'
    Params = <>
    ProviderName = 'DSP_Power'
    Left = 590
    Top = 797
  end
  object DSP_Power: TDataSetProvider
    DataSet = ADOQ_Power
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 430
    Top = 806
  end
  object ADOQ_Power: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'USER_NO'
        DataType = ftWideString
        Size = 4
        Value = 'CG01'
      end
      item
        Name = 'COM_NO'
        DataType = ftWideString
        Size = 2
        Value = 'HM'
      end>
    Left = 298
    Top = 806
  end
  object ADOQ_UserC: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 157
    Top = 797
  end
  object ADOQ_YuDepart: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 986
    Top = 304
  end
  object ADOQ_YuDuty: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 710
    Top = 19
  end
  object ADOQ_YuPerson: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 979
    Top = 463
  end
  object ADOQ_Look: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 713
    Top = 806
  end
  object ADOQ_YuComp: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 985
    Top = 154
  end
  object ADOQ_YuMenu: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 601
    Top = 582
  end
  object ADOQ_YuSelect: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 996
    Top = 778
  end
  object ADOQ_YuPlanH: TADOQuery
    Connection = ADO_Server
    Parameters = <>
    Left = 1123
    Top = 154
  end
  object ADOQ_YuPlanS: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1120
    Top = 19
  end
  object ADOQ_YuPlanP: TADOQuery
    Connection = ADO_Server
    Parameters = <>
    Left = 1124
    Top = 304
  end
  object DSP_YuTemp: TDataSetProvider
    DataSet = ADOQ_YuTemp
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 740
    Top = 582
  end
  object CDS_YuTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Public'
    Left = 1138
    Top = 797
  end
  object ADOQ_YuTemp: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1115
    Top = 463
  end
  object ADOQ_YuVouch: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1194
    Top = 154
  end
  object ADOQ_YuVouchS: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1262
    Top = 304
  end
  object ADOQ_YuCust: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1256
    Top = 19
  end
  object ADOQ_YuApply: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1399
    Top = 154
  end
  object ADOQ_YuAccount: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1400
    Top = 304
  end
  object ADOQ_Execute: TADOQuery
    Connection = ADO_Server
    Parameters = <>
    Left = 1252
    Top = 463
  end
  object ADOSP_ACCP: TADOStoredProc
    Connection = ADO_Server
    CursorType = ctStatic
    ProcedureName = 'SYS_GetACCP;1'
    Parameters = <>
    Left = 19
    Top = 1018
  end
  object CDS_Temp: TClientDataSet
    Aggregates = <>
    PacketRecords = 1000
    Params = <>
    ProviderName = 'DSP_Public'
    Left = 325
    Top = 582
  end
  object ADOQ_File: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1360
    Top = 454
  end
  object ADOQ_FileS: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 878
    Top = 582
  end
  object ADOQ_Shops: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1278
    Top = 778
  end
  object ADOQ_YuMade: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1495
    Top = 474
  end
  object ADOQ_YuMadeS: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1018
    Top = 582
  end
  object ADOQ_YuHouse: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1411
    Top = 787
  end
  object ADOQ_YuHouseS: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 448
    Top = 1018
  end
  object ADOQ_YuOrder: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 161
    Top = 1018
  end
  object ADOQ_YuOrderS: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 305
    Top = 1018
  end
  object ADOQ_YuHouseA: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 592
    Top = 1018
  end
  object ADOQ_YuStock: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 736
    Top = 1018
  end
  object ADOQ_YuPay: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1478
    Top = 600
  end
  object ADOQ_YuPayS: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1294
    Top = 594
  end
  object ADOQ_YuAccCom: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1464
    Top = 304
  end
  object ADOQ_YuDetail: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1146
    Top = 502
  end
  object ADOQ_YuTotal: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1462
    Top = 384
  end
  object DS_Com: TDataSource
    DataSet = CDS_Com
    Left = 1039
    Top = 40
  end
  object CDS_Com: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'Select * From SYS_Comp'
    Params = <>
    ProviderName = 'DSP_Comp'
    Left = 787
    Top = 400
    object CDS_ComCOM_NO: TStringField
      FieldName = 'COM_NO'
      Size = 15
    end
    object CDS_ComCOM_NAME: TStringField
      FieldName = 'COM_NAME'
    end
    object CDS_ComCOM_CNAME: TStringField
      FieldName = 'COM_CNAME'
      Size = 100
    end
    object CDS_ComCOM_ENAME: TStringField
      FieldName = 'COM_ENAME'
      Size = 100
    end
    object CDS_ComCOM_MAN: TStringField
      FieldName = 'COM_MAN'
      Size = 30
    end
    object CDS_ComCOM_MANID: TStringField
      FieldName = 'COM_MANID'
      Size = 18
    end
    object CDS_ComCOM_ATTN: TStringField
      FieldName = 'COM_ATTN'
    end
    object CDS_ComCom_BANK: TStringField
      FieldName = 'COM_BANK'
      Size = 60
    end
    object CDS_ComCOM_TAX: TStringField
      FieldName = 'COM_TAX'
      Size = 25
    end
    object CDS_ComCOM_BANKID: TStringField
      FieldName = 'COM_BANKID'
      Size = 30
    end
    object CDS_ComCUR_NO: TStringField
      FieldName = 'CUR_NO'
      Size = 3
    end
    object CDS_ComCOM_FAX: TStringField
      FieldName = 'COM_FAX'
      Size = 30
    end
    object CDS_ComCOM_TEL: TStringField
      FieldName = 'COM_TEL'
      Size = 60
    end
    object CDS_ComCOM_ZIP: TStringField
      FieldName = 'COM_ZIP'
      Size = 6
    end
    object CDS_ComCOM_EMAIL: TStringField
      FieldName = 'COM_EMAIL'
      Size = 30
    end
    object CDS_ComCOM_HTTP: TStringField
      FieldName = 'COM_HTTP'
      Size = 30
    end
    object CDS_ComCOM_ADD: TStringField
      FieldName = 'COM_ADD'
      Size = 100
    end
    object CDS_ComCOM_BMP: TBlobField
      FieldName = 'COM_BMP'
    end
    object CDS_ComACP_YEAR: TStringField
      FieldName = 'ACP_YEAR'
      Size = 4
    end
    object CDS_ComCUR_NAME: TStringField
      FieldName = 'CUR_NAME'
      Size = 10
    end
    object CDS_ComACP_MONTH: TStringField
      FieldName = 'ACP_MONTH'
      Size = 2
    end
    object CDS_ComCOM_ISACC: TBooleanField
      FieldName = 'COM_ISACC'
    end
    object CDS_ComCOM_ISFIRST: TBooleanField
      FieldName = 'COM_ISFIRST'
    end
    object CDS_ComCOM_PARENT: TStringField
      FieldName = 'COM_PARENT'
      Size = 15
    end
    object CDS_ComCOM_ISEND: TBooleanField
      FieldName = 'COM_ISEND'
    end
    object CDS_ComRUN_NO: TStringField
      FieldName = 'RUN_NO'
      Size = 16
    end
  end
  object DSP_Comp: TDataSetProvider
    DataSet = ADOQ_Comp
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1454
    Top = 71
  end
  object CDS_Date: TClientDataSet
    Aggregates = <>
    CommandText = 'SYS_GetDate'
    FieldDefs = <
      item
        Name = 'COLUMN1'
        Attributes = [faReadonly]
        DataType = ftDateTime
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSP_Date'
    StoreDefs = True
    Left = 1484
    Top = 174
    object CDS_DateCOLUMN1: TDateTimeField
      FieldName = 'COLUMN1'
      ReadOnly = True
    end
  end
  object DSP_Date: TDataSetProvider
    DataSet = ADOSP_Date
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 924
    Top = 412
  end
  object CDS_Rule: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Rule'
    Left = 1096
    Top = 472
  end
  object CDS_Time: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Time'
    Left = 358
    Top = 359
  end
  object DSP_Rule: TDataSetProvider
    DataSet = ADOQ_Rule
    Options = [poAllowCommandText]
    Left = 1070
    Top = 311
  end
  object ADOQ_Rule: TADOQuery
    Connection = ADO_Server
    Parameters = <>
    Left = 1076
    Top = 191
  end
  object ADODS_Execute: TADODataSet
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1142
    Top = 302
  end
  object ADOQ_YuEmail: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1190
    Top = 90
  end
  object ADOQ_YuPort: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1223
    Top = 196
  end
  object ADOQ_YuMail: TADOQuery
    Connection = ADO_Server
    CursorType = ctStatic
    Parameters = <>
    Left = 1308
    Top = 346
  end
  object CDS_Field: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Field'
    Left = 176
    Top = 368
  end
  object DSP_Field: TDataSetProvider
    DataSet = ADOQ_Field
    Options = [poAllowCommandText]
    Left = 113
    Top = 348
  end
  object ADOQ_Field: TADOQuery
    Connection = ADO_Server
    Parameters = <>
    Left = 206
    Top = 222
  end
  object CDS_SetEXEC: TClientDataSet
    Aggregates = <>
    CommandText = 'SYS_SETEXEC'
    FieldDefs = <
      item
        Name = 'COLUMN1'
        Attributes = [faReadonly]
        DataType = ftInteger
      end>
    IndexDefs = <>
    PacketRecords = 3
    Params = <
      item
        DataType = ftString
        Name = 'ValueOne'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSP_SETEXEC'
    StoreDefs = True
    Left = 492
    Top = 458
  end
  object CDS_SExec: TClientDataSet
    Aggregates = <>
    PacketRecords = 1000
    Params = <>
    ProviderName = 'DSP_SEXEC'
    Left = 208
    Top = 440
  end
  object CDS_SExecS: TClientDataSet
    Aggregates = <>
    PacketRecords = 1000
    Params = <>
    ProviderName = 'DSP_SEXECS'
    Left = 88
    Top = 440
  end
  object CDS_FlowS: TClientDataSet
    Aggregates = <>
    PacketRecords = 1000
    Params = <>
    ProviderName = 'DSP_FlowS'
    Left = 472
    Top = 356
  end
  object DSP_Flow: TDataSetProvider
    DataSet = ADOQ_Flow
    Options = [poAllowCommandText]
    Left = 980
    Top = 576
  end
  object ADOQ_Flow: TADOQuery
    Connection = ADO_Server
    Parameters = <>
    Left = 968
    Top = 497
  end
  object DSP_SEXEC: TDataSetProvider
    DataSet = ADOQ_SEXEC
    Options = [poAllowCommandText]
    Left = 572
    Top = 658
  end
  object ADOQ_SEXEC: TADOQuery
    Connection = ADO_Server
    Parameters = <>
    Left = 440
    Top = 658
  end
  object DSP_SEXECS: TDataSetProvider
    DataSet = ADOQ_SEXECS
    Options = [poAllowCommandText]
    Left = 836
    Top = 658
  end
  object ADOQ_SEXECS: TADOQuery
    Connection = ADO_Server
    Parameters = <>
    Left = 704
    Top = 658
  end
  object ADOQ_FLowS: TADOQuery
    Connection = ADO_Server
    Parameters = <>
    Left = 968
    Top = 658
  end
  object DSP_FLowS: TDataSetProvider
    DataSet = ADOQ_FLowS
    Options = [poAllowCommandText]
    Left = 1076
    Top = 658
  end
  object ADOSP_SETEXEC: TADOStoredProc
    Connection = ADO_Server
    CursorType = ctStatic
    ProcedureName = 'SYS_SETEXEC;1'
    Parameters = <>
    Left = 1040
    Top = 658
  end
  object DSP_SETEXEC: TDataSetProvider
    DataSet = ADOSP_SETEXEC
    Options = [poAllowCommandText]
    Left = 1104
    Top = 658
  end
  object DSP_FlowP: TDataSetProvider
    DataSet = ADOQ_FLowP
    Options = [poAllowCommandText]
    Left = 920
    Top = 658
  end
  object ADOQ_FLowP: TADOQuery
    Connection = ADO_Server
    Parameters = <>
    Left = 812
    Top = 658
  end
end
