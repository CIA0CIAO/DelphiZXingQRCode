object F_BaseScan: TF_BaseScan
  Left = 0
  Top = 0
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  ClientHeight = 960
  ClientWidth = 1266
  Caption = 'F_BaseScan'
  BorderStyle = bsNone
  WindowState = wsMaximized
  Position = poDesigned
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PageMode = True
  TextHeight = 15
  object PanelPlan: TUniPanel
    Left = 0
    Top = 107
    Width = 1266
    Height = 60
    Hint = ''
    Align = alTop
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    object PanelMade: TUniPanel
      Left = 0
      Top = 31
      Width = 1266
      Height = 29
      Hint = ''
      Align = alBottom
      TabOrder = 1
      Caption = ''
      object DBEditMad_Auto: TUniDBEdit
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 1037
        Height = 21
        Hint = ''
        DataField = 'Mad_Auto'
        DataSource = DS_Plan
        Align = alClient
        TabOrder = 1
        ReadOnly = True
        FieldLabelFont.Charset = ANSI_CHARSET
        FieldLabelFont.Name = #23435#20307
      end
      object DBEditPan_Num: TUniDBEdit
        AlignWithMargins = True
        Left = 1047
        Top = 4
        Width = 121
        Height = 21
        Hint = ''
        DataField = 'Pan_Num'
        DataSource = DS_Plan
        Align = alRight
        TabOrder = 2
        ReadOnly = True
        FieldLabelFont.Charset = ANSI_CHARSET
        FieldLabelFont.Name = #23435#20307
      end
      object DBEditPan_SNum: TUniDBEdit
        AlignWithMargins = True
        Left = 1174
        Top = 4
        Width = 88
        Height = 21
        Hint = ''
        DataField = 'Pan_SNum'
        DataSource = DS_Plan
        Align = alRight
        TabOrder = 3
        FieldLabelFont.Charset = ANSI_CHARSET
        FieldLabelFont.Name = #23435#20307
      end
    end
    object EditPan_Auto: TUniEdit
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1165
      Height = 25
      Hint = ''
      Text = ''
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Name = #23435#20307
      Align = alClient
      TabOrder = 2
      FieldLabel = #24037#21333
      FieldLabelWidth = 39
      FieldLabelFont.Charset = ANSI_CHARSET
      FieldLabelFont.Name = #23435#20307
      OnKeyDown = EditPan_AutoKeyDown
    end
    object UniBitBtn1: TUniBitBtn
      AlignWithMargins = True
      Left = 1174
      Top = 3
      Width = 89
      Height = 25
      Hint = ''
      Caption = #30830#23450
      Align = alRight
      TabOrder = 3
    end
  end
  object UniPanel4: TUniPanel
    Left = 0
    Top = 167
    Width = 1266
    Height = 793
    Hint = ''
    Align = alClient
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
    object UniDBGrid1: TUniDBGrid
      Left = 0
      Top = 47
      Width = 1266
      Height = 746
      Hint = ''
      DataSource = DS_MadeS
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Height = -13
      Font.Name = #23435#20307
      ParentFont = False
      TabOrder = 1
      Columns = <
        item
          FieldName = 'Mads_Site'
          Title.Alignment = taCenter
          Title.Caption = #31449#28857
          Title.Color = 16755027
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Height = -13
          Title.Font.Name = #23435#20307
          Width = 74
          Font.Charset = ANSI_CHARSET
          Font.Name = #23435#20307
          Menu.MenuEnabled = False
          Menu.ColumnHideable = False
        end
        item
          FieldName = 'Stk_NO'
          Title.Alignment = taCenter
          Title.Caption = #26009#21495
          Title.Color = 16755027
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Height = -13
          Title.Font.Name = #23435#20307
          Width = 144
          Font.Charset = ANSI_CHARSET
          Font.Name = #23435#20307
          Menu.MenuEnabled = False
          Menu.ColumnHideable = False
        end
        item
          FieldName = 'Mads_Batch'
          Title.Alignment = taCenter
          Title.Caption = #25209#21495
          Title.Color = 16755027
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Height = -13
          Title.Font.Name = #23435#20307
          Width = 144
          Font.Charset = ANSI_CHARSET
          Font.Name = #23435#20307
          Menu.MenuEnabled = False
          Menu.ColumnHideable = False
        end>
    end
    object UniPanel2: TUniPanel
      Left = 0
      Top = 0
      Width = 1266
      Height = 47
      Hint = ''
      Align = alTop
      TabOrder = 2
      BorderStyle = ubsNone
      Caption = ''
      object EditStk_NO: TUniEdit
        AlignWithMargins = True
        Left = 73
        Top = 0
        Width = 120
        Height = 47
        Hint = ''
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Text = ''
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Name = #23435#20307
        Align = alLeft
        TabOrder = 1
        FieldLabel = #26009#21495
        FieldLabelWidth = 39
        FieldLabelAlign = laTop
        FieldLabelFont.Charset = ANSI_CHARSET
        FieldLabelFont.Height = -9
        FieldLabelFont.Name = #23435#20307
        OnChange = EditStk_NOChange
        OnChangeValue = EditStk_NOChange
        OnKeyDown = EditStk_NOKeyDown
      end
      object EditMads_Site: TUniEdit
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 73
        Height = 47
        Hint = ''
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Text = ''
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Name = #23435#20307
        Align = alLeft
        TabOrder = 2
        FieldLabel = #31449#20301
        FieldLabelWidth = 39
        FieldLabelAlign = laTop
        FieldLabelFont.Charset = ANSI_CHARSET
        FieldLabelFont.Height = -9
        FieldLabelFont.Name = #23435#20307
        OnKeyDown = EditMads_SiteKeyDown
      end
      object EditMads_Batch: TUniEdit
        AlignWithMargins = True
        Left = 193
        Top = 0
        Width = 1073
        Height = 47
        Hint = ''
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Text = ''
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Name = #23435#20307
        Align = alClient
        TabOrder = 3
        FieldLabel = #25209#21495
        FieldLabelWidth = 39
        FieldLabelAlign = laTop
        FieldLabelFont.Charset = ANSI_CHARSET
        FieldLabelFont.Height = -9
        FieldLabelFont.Name = #23435#20307
        OnKeyDown = EditMads_BatchKeyDown
      end
    end
  end
  object PControlScan: TUniPageControl
    Left = 0
    Top = 0
    Width = 1266
    Height = 107
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ActivePage = TSheetMoble
    Align = alTop
    TabOrder = 2
    OnChange = PControlScanChange
    object TSheetScan: TUniTabSheet
      Hint = ''
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = #37319#38598#22120
      Font.Charset = ANSI_CHARSET
      Font.Name = #23435#20307
      ParentFont = False
    end
    object TSheetMoble: TUniTabSheet
      Hint = ''
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = #25163#26426
      Font.Charset = ANSI_CHARSET
      Font.Name = #23435#20307
      ParentFont = False
      object UniHTMLFrame1: TUniHTMLFrame
        Left = 33
        Top = 0
        Width = 1190
        Height = 79
        Hint = ''
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        HTML.Strings = (
          
            '<audio id="player" height="0px" src="files/beep-digital.mp3" sty' +
            'le="display:none"></audio>'
          '<div>'
          
            '  <video id="video" width="100%" height="100%" style="border: 1p' +
            'x solid gray"></video>'
          '</div>'
          ''
          '<div id="sourceSelectPanel" style="display:none">'
          '  <label for="sourceSelect">'#20462#25913#38236#22836#65306'</label>'
          '  <select id="sourceSelect" style="max-width:400px">'
          '  </select>'
          '</div>')
        Align = alClient
        OnAjaxEvent = UniHTMLFrame1AjaxEvent
        ExplicitTop = 1
      end
      object btnReset: TUniButton
        Left = 0
        Top = 0
        Width = 33
        Height = 79
        Hint = ''
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = #37325#32622
        Align = alLeft
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Height = -15
        Font.Name = #23435#20307
        TabOrder = 1
        OnClick = btnResetClick
      end
      object btnStart: TUniButton
        Left = 1223
        Top = 0
        Width = 35
        Height = 79
        Hint = ''
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = #25195#30721
        Align = alRight
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Height = -15
        Font.Name = #23435#20307
        TabOrder = 2
        OnClick = btnStartClick
      end
    end
    object TSheetClose: TUniTabSheet
      Hint = ''
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = ' '#20851#38381
    end
  end
  object DSP_Plan: TDataSetProvider
    DataSet = DataMod.ADOQ_Plan
    Options = [poAllowCommandText]
    Left = 35
    Top = 34
  end
  object CDS_Plan: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * From MP_Plan where Pan_Auto is not null'
    IndexFieldNames = 'Com_NO;Dep_NO'
    PacketRecords = 10000
    Params = <>
    ProviderName = 'DSP_Plan'
    Left = 147
    Top = 42
    object CDS_PlanPan_Auto: TAutoIncField
      DisplayLabel = #24207#21495
      FieldName = 'Pan_Auto'
      ReadOnly = True
    end
    object CDS_PlanCom_NO: TStringField
      DisplayLabel = #20844#21496#32534#30721
      FieldName = 'Com_NO'
      Visible = False
      Size = 15
    end
    object CDS_PlanAcp_NO: TStringField
      DisplayLabel = #20250#35745#26376#20221
      FieldName = 'Acp_NO'
      Visible = False
      Size = 6
    end
    object CDS_PlanStk_NO: TStringField
      DisplayLabel = #23384#36135#32534#30721
      FieldName = 'Stk_NO'
    end
    object CDS_PlanStk_Name: TStringField
      DisplayLabel = #23384#36135#21517#31216
      FieldName = 'Stk_Name'
      Size = 100
    end
    object CDS_PlanStk_Stand: TStringField
      DisplayLabel = #35268#26684#22411#21495
      FieldName = 'Stk_Stand'
      Size = 100
    end
    object CDS_PlanStk_Unit: TStringField
      DisplayLabel = #21333#20301
      FieldName = 'Stk_Unit'
      Size = 8
    end
    object CDS_PlanDep_NO: TStringField
      DisplayLabel = #37096#38376#32534#30721
      FieldName = 'Dep_NO'
      Size = 15
    end
    object CDS_PlanDep_Name: TStringField
      DisplayLabel = #37096#38376#21517#31216
      FieldName = 'Dep_Name'
      Size = 30
    end
    object CDS_PlanPan_Num: TBCDField
      DisplayLabel = #21046#36896#25968#37327
      FieldName = 'Pan_Num'
    end
    object CDS_PlanMad_Auto: TStringField
      DisplayLabel = #21046#20196#21333#21495
      FieldName = 'Mad_Auto'
      Size = 16
    end
    object CDS_PlanSod_Auto: TStringField
      DisplayLabel = #25351#20196#21333#21495
      FieldName = 'Sod_Auto'
      Size = 16
    end
    object CDS_PlanSod_KNO: TStringField
      DisplayLabel = #20844#21496#21333#21495
      FieldName = 'Sod_KNO'
      Size = 16
    end
    object CDS_PlanCus_NO: TStringField
      DisplayLabel = #23458#25143#32534#30721
      FieldName = 'Cus_NO'
      Size = 6
    end
    object CDS_PlanCus_Name: TStringField
      DisplayLabel = #23458#25143#21517#31216
      FieldName = 'Cus_Name'
      Size = 30
    end
    object CDS_PlanPan_TNum: TBCDField
      DisplayLabel = #21046#36896#25968#37327
      FieldName = 'Pan_TNum'
    end
    object CDS_PlanPan_SNum: TBCDField
      DisplayLabel = #25490#20135#25968#37327
      FieldName = 'Pan_SNum'
    end
    object CDS_PlanPan_Type: TStringField
      DisplayLabel = #31867#21035
      FieldName = 'Pan_Type'
      Size = 1
    end
    object CDS_PlanPan_Date: TDateTimeField
      FieldName = 'Pan_Date'
    end
  end
  object DS_Plan: TDataSource
    DataSet = CDS_Plan
    Left = 243
    Top = 42
  end
  object CDS_MadeS: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * From MP_MadeS where Mads_ID is not  null'
    IndexFieldNames = 'Stk_PNO;Mads_NO'
    PacketRecords = 1000
    Params = <>
    ProviderName = 'DSP_MadeS'
    Left = 227
    Top = 314
    object CDS_MadeSMads_ID: TStringField
      FieldName = 'Mads_ID'
      Size = 16
    end
    object CDS_MadeSMad_Auto: TStringField
      FieldName = 'Mad_Auto'
      Size = 16
    end
    object CDS_MadeSMads_NO: TIntegerField
      FieldName = 'Mads_NO'
    end
    object CDS_MadeSStk_NO: TStringField
      FieldName = 'Stk_NO'
    end
    object CDS_MadeSMads_Site: TStringField
      FieldName = 'Mads_Site'
      Size = 10
    end
    object CDS_MadeSMads_Batch: TStringField
      FieldName = 'Mads_Batch'
    end
    object CDS_MadeSStk_PNO: TStringField
      FieldName = 'Stk_PNO'
    end
  end
  object DSP_MadeS: TDataSetProvider
    DataSet = DataMod.ADOQ_YuMadeS
    Options = [poAllowCommandText]
    Left = 67
    Top = 306
  end
  object DS_MadeS: TDataSource
    DataSet = CDS_MadeS
    Left = 331
    Top = 306
  end
end
