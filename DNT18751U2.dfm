inherited DNT18751F2: TDNT18751F2
  Left = 9
  Top = 4
  Width = 112
  Height = 450
  Caption = 'Wochen-AZ-Modell'
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ClientArea: TPanel
    Width = 104
    Height = 334
    object pKopf: TPanel
      Left = 1
      Top = 1
      Width = 102
      Height = 41
      Align = alTop
      TabOrder = 0
      OnEnter = pKopfEnter
      object Label1: TLabel
        Left = 13
        Top = 12
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = '&AZ-Modell-Abk.'
        FocusControl = dbeAzModellAbk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 280
        Top = 12
        Width = 113
        Height = 13
        Alignment = taRightJustify
        Caption = 'AZ-Modell-Bezeichnung'
      end
      object dbeAzModellAbk: TDBEdit
        Left = 108
        Top = 8
        Width = 153
        Height = 21
        CharCase = ecUpperCase
        DataField = 'AZ_MODELL_ABK'
        DataSource = wwdsDNT18T75
        TabOrder = 0
        OnExit = dbeAzModellAbkExit
      end
      object DBEdit1: TDBEdit
        Left = 400
        Top = 8
        Width = 377
        Height = 21
        DataField = 'AZ_MODELL_BEZ'
        DataSource = wwdsDNT18T75
        TabOrder = 1
        OnExit = DBEdit1Exit
      end
    end
    object wwdbgDNT18T76: TwwDBGrid
      Left = 1
      Top = 42
      Width = 102
      Height = 291
      ControlType.Strings = (
        'DAUER_AUTOM_JN;CheckBox;T;F')
      Selected.Strings = (
        'WOCHENTAGStr'#9'10'#9'Wochentag'#9'F'
        'BEGINN_MIN'#9'18'#9'Beginn Min.'#9'F'
        'BEGINN_MAX'#9'18'#9'Beginn Max.'#9'F'
        'PAUSE1_VON'#9'18'#9'Pause 1 von'#9'F'
        'PAUSE1_BIS'#9'18'#9'Pause1 bis'#9'F'
        'PAUSE1_DAUER_SOLL'#9'10'#9'Dauer Pause1'#9'F'
        'PAUSE2_VON'#9'18'#9'Pause2 von'#9'F'
        'PAUSE2_BIS'#9'18'#9'Pause2 bis'#9'F'
        'PAUSE2_DAUER_SOLL'#9'10'#9'Dauer Pause2'#9'F'
        'ENDE_MIN'#9'18'#9'Ende Min.'#9'F'
        'ENDE_MAX'#9'18'#9'Ende Max'#9'F'
        'cDauerVon'#9'10'#9'Dauer von~in Std., Min.'#9'F'
        'cDauerBis'#9'10'#9'Dauer bis~in Std., Min.'#9'F'
        'cDauerSoll'#9'10'#9'Dauer Soll~in Std., Min.'#9'F'
        'DAUER_AUTOM_JN'#9'1'#9'autom. Dauer'#9'F'
        'cBuchungsartBez'#9'40'#9'Buchungsart'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = wwdsDNT18T76
      KeyOptions = []
      ReadOnly = True
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDrawDataCell = wwdbgDNT18T76DrawDataCell
      OnDblClick = wwdbgDNT18T76DblClick
      OnEnter = wwdbgDNT18T76Enter
      OnKeyDown = wwdbgDNT18T76KeyDown
      IndicatorColor = icBlack
    end
  end
  inherited StatusBar: TStatusBar
    Top = 367
    Width = 104
    Panels = <
      item
        Alignment = taCenter
        Width = 50
      end
      item
        Width = 100
      end
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  inherited ToolBar: TPanel
    Width = 104
    inherited ButtonBar: TToolBar
      Left = -192
      inherited SearchButton: TDBSpeedButton
        Enabled = False
        RuntimeEnabled = False
      end
      inherited NewButton: TDBSpeedButton
        Enabled = True
        DataSource = wwdsDNT18T75
        OnBeforeAction = NewButtonBeforeAction
        RuntimeEnabled = True
      end
      inherited SaveButton: TDBSpeedButton
        Enabled = True
        DataSource = wwdsDNT18T75
        OnBeforeAction = SaveButtonBeforeAction
        RuntimeEnabled = True
      end
      inherited CancelButton: TDBSpeedButton
        Enabled = True
        DataSource = wwdsDNT18T75
        RuntimeEnabled = True
      end
      inherited DeleteButton: TDBSpeedButton
        Enabled = True
        DataSource = wwdsDNT18T75
        OnBeforeAction = DeleteButtonBeforeAction
        RuntimeEnabled = True
      end
      inherited CreatePackageButton: TDBSpeedButton
        Enabled = False
        RuntimeEnabled = False
      end
      inherited DropPackageButton: TDBSpeedButton
        Enabled = False
        RuntimeEnabled = False
      end
      inherited PrintButton: TDBSpeedButton
        RuntimeEnabled = True
      end
      inherited HelpButton: TDBSpeedButton
        RuntimeEnabled = True
      end
    end
    object HPODBTrafficLight1: THPODBTrafficLight
      Left = 2
      Top = 2
      Width = 16
      Height = 29
      Align = alLeft
      TabOrder = 1
      DataField = 'SYS_DEL'
      DataSource = wwdsDNT18T75
      CharGreen = 'F'
      CharRed = 'T'
      CharIndex = 1
    end
  end
  object hqryDNT18T75: THpoQuery
    AfterOpen = hqryDNT18T75AfterOpen
    AfterInsert = hqryDNT18T75AfterInsert
    AfterPost = hqryDNT18T75AfterPost
    AfterCancel = hqryDNT18T75AfterCancel
    DatabaseName = 'DB-DAISY-NT'
    RequestLive = True
    SQL.Strings = (
      'Select *'
      ' From DNT18T75'
      ' Where DNT18T75.SYS_DEL <> "T" ')
    ValidateWithMask = True
    ExportFile = True
    ImportParentFile = False
    ImportChildFile = False
    DeleteLogical = False
    TableName = 'DNT18T75'
    SelectClause = '*'
    FromClause = 'DNT18T75'
    SysPK = 0
    ShowMode = smNotDel
    LoadDefaultFromInifile = True
    Left = 497
    Top = 38
  end
  object wwdsDNT18T75: TwwDataSource
    DataSet = hqryDNT18T75
    Left = 525
    Top = 34
  end
  object qryWork: TQuery
    DatabaseName = 'DB-DAISY-NT'
    Left = 697
    Top = 38
  end
  object wwdsDNT18T76: TwwDataSource
    DataSet = mtDNT18T76
    Left = 240
    Top = 189
  end
  object wwqryDNT18T76: TwwQuery
    Active = True
    DatabaseName = 'DB-DAISY-NT'
    SQL.Strings = (
      'select *'
      'from DNT18T76'
      'where DNT18T76.FK_DNT18T75 = :FK_DNT18T75'
      'order by DNT18T76.WOCHENTAG')
    ControlType.Strings = (
      'DAUER_AUTOM_JN;CheckBox;T;F')
    ValidateWithMask = True
    Left = 212
    Top = 189
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FK_DNT18T75'
        ParamType = ptUnknown
      end>
  end
  object mtDNT18T76: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'WOCHENTAGStr'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BEGINN_MIN'
        DataType = ftDateTime
      end
      item
        Name = 'BEGINN_MAX'
        DataType = ftDateTime
      end
      item
        Name = 'PAUSE1_VON'
        DataType = ftDateTime
      end
      item
        Name = 'PAUSE1_BIS'
        DataType = ftDateTime
      end
      item
        Name = 'PAUSE1_DAUER_SOLL'
        DataType = ftInteger
      end
      item
        Name = 'PAUSE2_VON'
        DataType = ftDateTime
      end
      item
        Name = 'PAUSE2_BIS'
        DataType = ftDateTime
      end
      item
        Name = 'PAUSE2_DAUER_SOLL'
        DataType = ftInteger
      end
      item
        Name = 'ENDE_MIN'
        DataType = ftDateTime
      end
      item
        Name = 'ENDE_MAX'
        DataType = ftDateTime
      end
      item
        Name = 'DAUER_AUTOM_JN'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DAUER_SOLL'
        DataType = ftInteger
      end
      item
        Name = 'DAUER_MIN'
        DataType = ftInteger
      end
      item
        Name = 'DAUER_MAX'
        DataType = ftInteger
      end
      item
        Name = 'SYS_PK'
        DataType = ftInteger
      end
      item
        Name = 'FK_DNT18T70'
        DataType = ftInteger
      end
      item
        Name = 'SYS_DEL'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SYS_KOC'
        DataType = ftInteger
      end
      item
        Name = 'SYS_KLM'
        DataType = ftInteger
      end
      item
        Name = 'SYS_DOC'
        DataType = ftDateTime
      end
      item
        Name = 'SYS_DLM'
        DataType = ftDateTime
      end
      item
        Name = 'WOCHENTAG'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '3.05'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    OnLoadRecord = mtDNT18T76LoadRecord
    AfterScroll = mtDNT18T76AfterScroll
    OnCalcFields = mtDNT18T76CalcFields
    Left = 184
    Top = 189
    object mtDNT18T76WOCHENTAGStr: TStringField
      DisplayLabel = 'Wochentag'
      DisplayWidth = 10
      FieldName = 'WOCHENTAGStr'
      Size = 10
    end
    object mtDNT18T76BEGINN_MIN: TDateTimeField
      DisplayLabel = 'Beginn Min.'
      DisplayWidth = 18
      FieldName = 'BEGINN_MIN'
    end
    object mtDNT18T76BEGINN_MAX: TDateTimeField
      DisplayLabel = 'Beginn Max.'
      DisplayWidth = 18
      FieldName = 'BEGINN_MAX'
    end
    object mtDNT18T76PAUSE1_VON: TDateTimeField
      DisplayLabel = 'Pause 1 von'
      DisplayWidth = 18
      FieldName = 'PAUSE1_VON'
      Origin = 'DB-DAISY-NT.DNT18T76.PAUSE1_VON'
    end
    object mtDNT18T76PAUSE1_BIS: TDateTimeField
      DisplayLabel = 'Pause1 bis'
      DisplayWidth = 18
      FieldName = 'PAUSE1_BIS'
      Origin = 'DB-DAISY-NT.DNT18T76.PAUSE1_BIS'
    end
    object mtDNT18T76PAUSE1_DAUER_SOLL: TIntegerField
      DisplayLabel = 'Dauer Pause1'
      DisplayWidth = 10
      FieldName = 'PAUSE1_DAUER_SOLL'
      Origin = 'DB-DAISY-NT.DNT18T76.PAUSE1_DAUER_SOLL'
    end
    object mtDNT18T76PAUSE2_VON: TDateTimeField
      DisplayLabel = 'Pause2 von'
      DisplayWidth = 18
      FieldName = 'PAUSE2_VON'
      Origin = 'DB-DAISY-NT.DNT18T76.PAUSE2_VON'
    end
    object mtDNT18T76PAUSE2_BIS: TDateTimeField
      DisplayLabel = 'Pause2 bis'
      DisplayWidth = 18
      FieldName = 'PAUSE2_BIS'
      Origin = 'DB-DAISY-NT.DNT18T76.PAUSE2_BIS'
    end
    object mtDNT18T76PAUSE2_DAUER_SOLL: TIntegerField
      DisplayLabel = 'Dauer Pause2'
      DisplayWidth = 10
      FieldName = 'PAUSE2_DAUER_SOLL'
      Origin = 'DB-DAISY-NT.DNT18T76.PAUSE2_DAUER_SOLL'
    end
    object mtDNT18T76ENDE_MIN: TDateTimeField
      DisplayLabel = 'Ende Min.'
      DisplayWidth = 18
      FieldName = 'ENDE_MIN'
      Origin = 'DB-DAISY-NT.DNT18T76.ENDE_MIN'
    end
    object mtDNT18T76ENDE_MAX: TDateTimeField
      DisplayLabel = 'Ende Max'
      DisplayWidth = 18
      FieldName = 'ENDE_MAX'
      Origin = 'DB-DAISY-NT.DNT18T76.ENDE_MAX'
    end
    object mtDNT18T76cDauerVon: TFloatField
      DisplayLabel = 'Dauer von~in Std., Min.'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'cDauerVon'
      Calculated = True
    end
    object mtDNT18T76cDauerBis: TFloatField
      DisplayLabel = 'Dauer bis~in Std., Min.'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'cDauerBis'
      Calculated = True
    end
    object mtDNT18T76cDauerSoll: TFloatField
      DisplayLabel = 'Dauer Soll~in Std., Min.'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'cDauerSoll'
      Calculated = True
    end
    object mtDNT18T76DAUER_AUTOM_JN: TStringField
      DisplayLabel = 'autom. Dauer'
      DisplayWidth = 1
      FieldName = 'DAUER_AUTOM_JN'
      Origin = 'DB-DAISY-NT.DNT18T76.DAUER_AUTOM_JN'
      Size = 1
    end
    object mtDNT18T76cBuchungsartBez: TStringField
      DisplayLabel = 'Buchungsart'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'cBuchungsartBez'
      Size = 40
      Calculated = True
    end
    object mtDNT18T76DAUER_SOLL: TIntegerField
      DisplayLabel = 'Dauer Soll'
      DisplayWidth = 10
      FieldName = 'DAUER_SOLL'
      Origin = 'DB-DAISY-NT.DNT18T76.DAUER_SOLL'
      Visible = False
    end
    object mtDNT18T76DAUER_MIN: TIntegerField
      DisplayLabel = 'Dauer von'
      DisplayWidth = 10
      FieldName = 'DAUER_MIN'
      Origin = 'DB-DAISY-NT.DNT18T76.DAUER_MIN'
      Visible = False
    end
    object mtDNT18T76DAUER_MAX: TIntegerField
      DisplayLabel = 'Dauer bis'
      DisplayWidth = 10
      FieldName = 'DAUER_MAX'
      Origin = 'DB-DAISY-NT.DNT18T76.DAUER_MAX'
      Visible = False
    end
    object mtDNT18T76SYS_PK: TIntegerField
      DisplayWidth = 10
      FieldName = 'SYS_PK'
      Visible = False
    end
    object mtDNT18T76FK_DNT18T70: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_DNT18T70'
      Origin = 'DB-DAISY-NT.DNT18T76.FK_DNT18T70'
      Visible = False
    end
    object mtDNT18T76SYS_DEL: TStringField
      DisplayWidth = 1
      FieldName = 'SYS_DEL'
      Visible = False
      Size = 1
    end
    object mtDNT18T76SYS_KOC: TIntegerField
      DisplayWidth = 10
      FieldName = 'SYS_KOC'
      Visible = False
    end
    object mtDNT18T76SYS_KLM: TIntegerField
      DisplayWidth = 10
      FieldName = 'SYS_KLM'
      Visible = False
    end
    object mtDNT18T76SYS_DOC: TDateTimeField
      DisplayWidth = 18
      FieldName = 'SYS_DOC'
      Visible = False
    end
    object mtDNT18T76SYS_DLM: TDateTimeField
      DisplayWidth = 18
      FieldName = 'SYS_DLM'
      Visible = False
    end
    object mtDNT18T76WOCHENTAG: TIntegerField
      DisplayWidth = 10
      FieldName = 'WOCHENTAG'
      Visible = False
    end
  end
  object qryDelete: TQuery
    DatabaseName = 'DB-DAISY-NT'
    RequestLive = True
    Left = 228
    Top = 229
  end
end
