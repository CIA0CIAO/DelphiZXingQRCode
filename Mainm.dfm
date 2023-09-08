object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 640
  ClientWidth = 360
  Caption = 'MainmForm'
  AutoHeight = False
  Scrollable = True
  ShowTitle = False
  TitleButtons = <>
  HideKeyboardOnEnter = False
  TextHeight = 15
  ScrollPosition = 0
  ScrollHeight = 193
  PlatformData = {}
  object UnimPanel1: TUnimPanel
    Left = 0
    Top = 0
    Width = 360
    Height = 640
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BorderStyle = ubsNone
    object PanelPlan: TUnimPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 354
      Height = 40
      Hint = ''
      Align = alTop
      Anchors = []
      BorderStyle = ubsNone
      object btnScan: TUnimButton
        AlignWithMargins = True
        Left = 278
        Top = 3
        Width = 73
        Height = 34
        Hint = ''
        Align = alRight
        Caption = #25195#30721
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Height = -10
        Font.Name = #23435#20307
        OnClick = btnScanClick
      end
      object UnimPanel2: TUnimPanel
        Left = 0
        Top = 0
        Width = 196
        Height = 40
        Hint = ''
        Align = alClient
        object EditPan_Auto: TUnimEdit
          Left = 1
          Top = 1
          Width = 194
          Height = 38
          Hint = ''
          HelpType = htKeyword
          Align = alClient
          Text = ''
          ClearButton = False
          EmptyText = #24037#21333
          FieldLabelWidth = 15
          FieldLabelFont.Charset = ANSI_CHARSET
          FieldLabelFont.Height = -10
          FieldLabelFont.Name = #23435#20307
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Height = -10
          Font.Name = #23435#20307
          TabOrder = 1
          OnChange = EditPan_AutoChange
          OnChangeValue = EditPan_AutoChange
        end
      end
      object btnConfirm: TUnimButton
        AlignWithMargins = True
        Left = 199
        Top = 3
        Width = 73
        Height = 34
        Hint = ''
        Align = alRight
        Caption = #30830#35748
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Height = -10
        Font.Name = #23435#20307
      end
    end
    object PanelMade: TUnimPanel
      Left = 0
      Top = 46
      Width = 360
      Height = 40
      Hint = ''
      Align = alTop
      BorderStyle = ubsNone
      object UnimPanel3: TUnimPanel
        AlignWithMargins = True
        Left = 171
        Top = 3
        Width = 90
        Height = 34
        Hint = ''
        Align = alRight
        object DBEditPan_Num: TUnimDBEdit
          Left = 1
          Top = 1
          Width = 88
          Height = 32
          Hint = ''
          DataField = 'Pan_Num'
          DataSource = DS_Plan
          Align = alClient
          ClearButton = False
          FieldLabelWidth = 10
          FieldLabelFont.Charset = ANSI_CHARSET
          FieldLabelFont.Height = -10
          FieldLabelFont.Name = #23435#20307
          Font.Charset = ANSI_CHARSET
          Font.Height = -10
          Font.Name = #23435#20307
          TabOrder = 1
        end
      end
      object UnimPanel4: TUnimPanel
        AlignWithMargins = True
        Left = 267
        Top = 3
        Width = 90
        Height = 34
        Hint = ''
        Align = alRight
        object DBEditPan_SNum: TUnimDBEdit
          Left = 1
          Top = 1
          Width = 88
          Height = 32
          Hint = ''
          DataField = 'Pan_SNum'
          DataSource = DS_Plan
          Align = alClient
          ClearButton = False
          FieldLabelWidth = 10
          FieldLabelFont.Charset = ANSI_CHARSET
          FieldLabelFont.Height = -10
          FieldLabelFont.Name = #23435#20307
          Font.Charset = ANSI_CHARSET
          Font.Height = -10
          Font.Name = #23435#20307
          TabOrder = 1
        end
      end
      object UnimPanel5: TUnimPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 162
        Height = 34
        Hint = ''
        Align = alClient
        object DBEditMad_Auto: TUnimDBEdit
          Left = 1
          Top = 1
          Width = 160
          Height = 32
          Hint = ''
          DataField = 'Mad_Auto'
          DataSource = DS_Plan
          Align = alClient
          ClearButton = False
          FieldLabelWidth = 10
          FieldLabelFont.Charset = ANSI_CHARSET
          FieldLabelFont.Height = -10
          FieldLabelFont.Name = #23435#20307
          Font.Charset = ANSI_CHARSET
          Font.Height = -10
          Font.Name = #23435#20307
          TabOrder = 1
        end
      end
    end
    object UnimPanel6: TUnimPanel
      Left = 0
      Top = 86
      Width = 360
      Height = 40
      Hint = ''
      Align = alTop
      BorderStyle = ubsNone
      object UnimPanel7: TUnimPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 107
        Height = 34
        Hint = ''
        Align = alClient
        object EditMads_Site: TUnimEdit
          Left = 1
          Top = 1
          Width = 105
          Height = 32
          Hint = ''
          Align = alClient
          Text = ''
          EmptyText = #31449#20301
          FieldLabelAlign = laTop
          FieldLabelWidth = 5
          FieldLabelFont.Charset = ANSI_CHARSET
          FieldLabelFont.Height = -10
          FieldLabelFont.Name = #23435#20307
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Height = -11
          Font.Name = #23435#20307
          TabOrder = 1
          OnChange = EditMads_SiteChange
          OnChangeValue = EditMads_SiteChange
        end
      end
      object UnimPanel8: TUnimPanel
        AlignWithMargins = True
        Left = 116
        Top = 3
        Width = 110
        Height = 34
        Hint = ''
        Align = alRight
        object EditStk_NO: TUnimEdit
          Left = 1
          Top = 1
          Width = 108
          Height = 32
          Hint = ''
          Align = alClient
          Text = ''
          EmptyText = #26009#21495
          FieldLabelAlign = laTop
          FieldLabelWidth = 5
          FieldLabelFont.Charset = ANSI_CHARSET
          FieldLabelFont.Height = -10
          FieldLabelFont.Name = #23435#20307
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Height = -11
          Font.Name = #23435#20307
          TabOrder = 1
          OnChange = EditStk_NOChange
          OnChangeValue = EditStk_NOChange
        end
      end
      object UnimPanel9: TUnimPanel
        AlignWithMargins = True
        Left = 232
        Top = 3
        Width = 125
        Height = 34
        Hint = ''
        Align = alRight
        object EditMads_Batch: TUnimEdit
          Left = 1
          Top = 1
          Width = 123
          Height = 32
          Hint = ''
          Align = alClient
          Text = ''
          EmptyText = #25209#21495
          FieldLabelAlign = laTop
          FieldLabelWidth = 10
          FieldLabelFont.Charset = ANSI_CHARSET
          FieldLabelFont.Height = -10
          FieldLabelFont.Name = #23435#20307
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Height = -11
          Font.Name = #23435#20307
          TabOrder = 1
          OnChange = EditMads_BatchChange
          OnChangeValue = EditStk_NOChange
        end
      end
    end
    object UnimPanel10: TUnimPanel
      Left = 0
      Top = 126
      Width = 360
      Height = 514
      Hint = ''
      Align = alClient
      object UnimDBGrid1: TUnimDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 352
        Height = 506
        Hint = ''
        Align = alClient
        DataSource = DS_MadeS
        Font.Height = -11
        Columns = <
          item
            Font.Charset = ANSI_CHARSET
            Font.Height = -10
            Font.Name = #23435#20307
            Title.Caption = #31449#28857
            FieldName = 'Mads_Site'
            Width = 115
          end
          item
            Font.Charset = ANSI_CHARSET
            Font.Height = -10
            Font.Name = #23435#20307
            Title.Caption = ' '#26009#21495
            FieldName = 'Stk_PNO'
            Width = 115
          end
          item
            Font.Charset = ANSI_CHARSET
            Font.Height = -10
            Font.Name = #23435#20307
            Title.Caption = ' '#25209#21495
            FieldName = 'Mads_Site'
            Width = 115
          end>
      end
    end
  end
  object DSP_Plan: TDataSetProvider
    DataSet = DataMod.ADOQ_Plan
    Options = [poAllowCommandText]
    Left = 51
    Top = 402
  end
  object CDS_Plan: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * From MP_Plan where Pan_Auto is not null'
    IndexFieldNames = 'Com_NO;Dep_NO'
    PacketRecords = 10000
    Params = <>
    ProviderName = 'DSP_Plan'
    Left = 163
    Top = 410
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
    Left = 259
    Top = 410
  end
  object DSP_MadeS: TDataSetProvider
    DataSet = DataMod.ADOQ_YuMadeS
    Options = [poAllowCommandText]
    Left = 51
    Top = 522
  end
  object CDS_MadeS: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * From MP_MadeS where Mads_ID is not  null'
    IndexFieldNames = 'Stk_PNO;Mads_NO'
    PacketRecords = 1000
    Params = <>
    ProviderName = 'DSP_MadeS'
    Left = 163
    Top = 522
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
  object DS_MadeS: TDataSource
    DataSet = CDS_MadeS
    Left = 270
    Top = 522
  end
end
