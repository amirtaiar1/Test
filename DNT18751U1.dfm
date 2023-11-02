inherited DNT18751F1: TDNT18751F1
  Left = 1080
  Top = 0
  Width = 520
  Height = 452
  Caption = 'Wochen-AZ-Modell'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ClientArea: TPanel
    Width = 512
    Height = 354
    object wwdbgDNT18T75: TwwDBGrid
      Left = 1
      Top = 1
      Width = 510
      Height = 352
      Selected.Strings = (
        'AZ_MODELL_ABK'#9'20'#9'Arbeitszeitmodell-Abk.'
        'AZ_MODELL_BEZ'#9'40'#9'Arbeitszeitmodellbezeichnung'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = wwdsDNT18751
      KeyOptions = []
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = wwdbgDNT18T75CalcCellColors
      OnDblClick = wwdbgDNT18T75DblClick
      OnKeyDown = wwdbgDNT18T75KeyDown
      IndicatorColor = icBlack
    end
  end
  inherited StatusBar: TStatusBar
    Top = 387
    Width = 512
    Panels = <
      item
        Alignment = taCenter
        Width = 50
      end
      item
        Width = 100
      end
      item
        Width = 250
      end
      item
        Width = 50
      end>
  end
  inherited ToolBar: TPanel
    Width = 512
    inherited ButtonBar: TToolBar
      Left = 216
      inherited SearchButton: TDBSpeedButton
        Enabled = False
        RuntimeEnabled = False
      end
      inherited NewButton: TDBSpeedButton
        Enabled = True
        OnBeforeAction = NewButtonBeforeAction
        DisableReasons = [drEditing]
        RuntimeEnabled = True
      end
      inherited SaveButton: TDBSpeedButton
        RuntimeEnabled = False
      end
      inherited CancelButton: TDBSpeedButton
        RuntimeEnabled = False
      end
      inherited DeleteButton: TDBSpeedButton
        RuntimeEnabled = False
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
  end
  inherited MainMenu: TMainMenu
    inherited N1Datei1: TMenuItem
      inherited DateiSearch: TMenuItem
        Enabled = False
      end
      inherited DateiDelete: TMenuItem
        Enabled = False
      end
      inherited DateiSave: TMenuItem
        Enabled = False
      end
      inherited DateiCancel: TMenuItem
        Enabled = False
      end
    end
    inherited N2Bearbeiten1: TMenuItem
      inherited BearbeitenPaketErzeugen: TMenuItem
        Enabled = False
      end
      inherited BearbeitenPaketAblegen: TMenuItem
        Enabled = False
      end
      inherited BearbeitenErweitertePakete: TMenuItem
        Enabled = False
      end
    end
  end
  object wwdsDNT18751: TwwDataSource
    DataSet = mtDNT18T75
    Left = 220
    Top = 125
  end
  object wwqryDNT18751: TwwQuery
    DatabaseName = 'DB-DAISY-NT'
    SQL.Strings = (
      'select DNT18T75.*'
      'from DNT18T75')
    ValidateWithMask = True
    Left = 248
    Top = 125
  end
  object mtDNT18T75: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
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
    OnLoadRecord = mtDNT18T75LoadRecord
    AfterScroll = mtDNT18T75AfterScroll
    Left = 192
    Top = 125
    object mtDNT18T75SYS_PK: TIntegerField
      FieldName = 'SYS_PK'
    end
    object mtDNT18T75SYS_DEL: TStringField
      FieldName = 'SYS_DEL'
      Size = 1
    end
    object mtDNT18T75SYS_KOC: TIntegerField
      FieldName = 'SYS_KOC'
    end
    object mtDNT18T75SYS_KLM: TIntegerField
      FieldName = 'SYS_KLM'
    end
    object mtDNT18T75SYS_DOC: TDateTimeField
      FieldName = 'SYS_DOC'
    end
    object mtDNT18T75SYS_DLM: TDateTimeField
      FieldName = 'SYS_DLM'
    end
    object mtDNT18T75AZ_MODELL_ABK: TStringField
      FieldName = 'AZ_MODELL_ABK'
    end
    object mtDNT18T75AZ_MODELL_BEZ: TStringField
      FieldName = 'AZ_MODELL_BEZ'
      Size = 40
    end
  end
end
