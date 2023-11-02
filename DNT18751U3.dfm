inherited DNT18751F3: TDNT18751F3
  Left = 350
  Top = 141
  Width = 638
  Height = 450
  Caption = 'Wochen AZ-Modell'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ClientArea: TPanel
    Width = 630
    Height = 352
    object lWochentag: TLabel
      Left = 54
      Top = 12
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = '&Wochentag'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 35
      Top = 40
      Width = 85
      Height = 13
      Alignment = taRightJustify
      Caption = 'Arbeitsbeginn von'
    end
    object Label3: TLabel
      Left = 288
      Top = 40
      Width = 13
      Height = 13
      Caption = 'bis'
    end
    object Label4: TLabel
      Left = 228
      Top = 40
      Width = 17
      Height = 13
      Caption = 'Uhr'
    end
    object Label5: TLabel
      Left = 408
      Top = 40
      Width = 17
      Height = 13
      Caption = 'Uhr'
    end
    object Label6: TLabel
      Left = 63
      Top = 68
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pause1 von'
    end
    object Label7: TLabel
      Left = 228
      Top = 68
      Width = 17
      Height = 13
      Caption = 'Uhr'
    end
    object Label8: TLabel
      Left = 288
      Top = 68
      Width = 13
      Height = 13
      Alignment = taRightJustify
      Caption = 'bis'
    end
    object Label9: TLabel
      Left = 408
      Top = 68
      Width = 17
      Height = 13
      Caption = 'Uhr'
    end
    object Label10: TLabel
      Left = 63
      Top = 96
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pause2 von'
    end
    object Label11: TLabel
      Left = 228
      Top = 96
      Width = 17
      Height = 13
      Caption = 'Uhr'
    end
    object Label12: TLabel
      Left = 288
      Top = 96
      Width = 13
      Height = 13
      Alignment = taRightJustify
      Caption = 'bis'
    end
    object Label13: TLabel
      Left = 408
      Top = 96
      Width = 17
      Height = 13
      Caption = 'Uhr'
    end
    object Label14: TLabel
      Left = 464
      Top = 68
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dauer Soll'
    end
    object Label15: TLabel
      Left = 580
      Top = 68
      Width = 20
      Height = 13
      Caption = 'Min.'
    end
    object Label16: TLabel
      Left = 464
      Top = 96
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dauer Soll'
    end
    object Label17: TLabel
      Left = 580
      Top = 96
      Width = 20
      Height = 13
      Caption = 'Min.'
    end
    object Label18: TLabel
      Left = 43
      Top = 124
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'Arbeistende von'
    end
    object Label19: TLabel
      Left = 228
      Top = 124
      Width = 17
      Height = 13
      Caption = 'Uhr'
    end
    object Label20: TLabel
      Left = 288
      Top = 124
      Width = 13
      Height = 13
      Alignment = taRightJustify
      Caption = 'bis'
    end
    object Label21: TLabel
      Left = 408
      Top = 124
      Width = 17
      Height = 13
      Caption = 'Uhr'
    end
    object Label22: TLabel
      Left = 23
      Top = 152
      Width = 96
      Height = 13
      Alignment = taRightJustify
      Caption = 'Arbeitszeitdauer von'
    end
    object Label23: TLabel
      Left = 288
      Top = 152
      Width = 13
      Height = 13
      Caption = 'bis'
    end
    object Label24: TLabel
      Left = 464
      Top = 152
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dauer Soll'
    end
    object Label25: TLabel
      Left = 228
      Top = 152
      Width = 45
      Height = 13
      Caption = 'Std., Min.'
    end
    object Label26: TLabel
      Left = 408
      Top = 152
      Width = 45
      Height = 13
      Caption = 'Std., Min.'
    end
    object Label27: TLabel
      Left = 620
      Top = 152
      Width = 45
      Height = 13
      Caption = 'Std., Min.'
    end
    object Label28: TLabel
      Left = 240
      Top = 178
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Buchungsart'
    end
    object wwdbcWochentag: TwwDBComboBox
      Left = 128
      Top = 8
      Width = 121
      Height = 21
      ShowButton = True
      Style = csDropDownList
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      ShowMatchText = True
      DataField = 'WOCHENTAG'
      DataSource = wwdsDNT18T76
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'Montag'#9'1'
        'Dienstag'#9'2'
        'Mittwoch'#9'3'
        'Donnerstag'#9'4'
        'Freitag'#9'5'
        'Samstag'#9'6'
        'Sonntag'#9'7')
      Sorted = False
      TabOrder = 0
      UnboundDataType = wwDefault
      OnExit = wwdbcWochentagExit
    end
    object wwdbdBeginnMin: TwwDBDateTimePicker
      Left = 128
      Top = 36
      Width = 93
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'BEGINN_MIN'
      DataSource = wwdsDNT18T76
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
      DisplayFormat = 'hh:nn'
    end
    object wwdbdBeginnMax: TwwDBDateTimePicker
      Left = 308
      Top = 36
      Width = 93
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'BEGINN_MAX'
      DataSource = wwdsDNT18T76
      Epoch = 1950
      ShowButton = True
      TabOrder = 2
      DisplayFormat = 'hh:nn'
    end
    object wwdbdPause1Von: TwwDBDateTimePicker
      Left = 128
      Top = 64
      Width = 93
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'PAUSE1_VON'
      DataSource = wwdsDNT18T76
      Epoch = 1950
      ShowButton = True
      TabOrder = 3
      DisplayFormat = 'hh:nn'
    end
    object wwdbdPause1Bis: TwwDBDateTimePicker
      Left = 308
      Top = 64
      Width = 93
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'PAUSE1_BIS'
      DataSource = wwdsDNT18T76
      Epoch = 1950
      ShowButton = True
      TabOrder = 4
      DisplayFormat = 'hh:nn'
    end
    object wwdbdPause2Von: TwwDBDateTimePicker
      Left = 128
      Top = 92
      Width = 93
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'PAUSE2_VON'
      DataSource = wwdsDNT18T76
      Epoch = 1950
      ShowButton = True
      TabOrder = 6
      DisplayFormat = 'hh:nn'
    end
    object wwdbdPause2Bis: TwwDBDateTimePicker
      Left = 308
      Top = 92
      Width = 93
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'PAUSE2_BIS'
      DataSource = wwdsDNT18T76
      Epoch = 1950
      ShowButton = True
      TabOrder = 7
      DisplayFormat = 'hh:nn'
    end
    object dbePause1DauerSoll: TDBEdit
      Left = 520
      Top = 64
      Width = 53
      Height = 21
      DataField = 'PAUSE1_DAUER_SOLL'
      DataSource = wwdsDNT18T76
      TabOrder = 5
    end
    object dbePause2DauerSoll: TDBEdit
      Left = 520
      Top = 92
      Width = 53
      Height = 21
      DataField = 'PAUSE2_DAUER_SOLL'
      DataSource = wwdsDNT18T76
      TabOrder = 8
    end
    object wwdbdEndeMin: TwwDBDateTimePicker
      Left = 128
      Top = 120
      Width = 93
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'ENDE_MIN'
      DataSource = wwdsDNT18T76
      Epoch = 1950
      ShowButton = True
      TabOrder = 9
      DisplayFormat = 'hh:nn'
    end
    object wwdbdEndeMax: TwwDBDateTimePicker
      Left = 308
      Top = 120
      Width = 93
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'ENDE_MAX'
      DataSource = wwdsDNT18T76
      Epoch = 1950
      ShowButton = True
      TabOrder = 10
      DisplayFormat = 'hh:nn'
    end
    object dbeDauerMin: TDBEdit
      Left = 128
      Top = 148
      Width = 93
      Height = 21
      DataField = 'DauerMin'
      DataSource = wwdsDauer
      TabOrder = 11
    end
    object dbeDauerMax: TDBEdit
      Left = 308
      Top = 148
      Width = 93
      Height = 21
      DataField = 'DauerMax'
      DataSource = wwdsDauer
      TabOrder = 12
    end
    object dbeDauerSoll: TDBEdit
      Left = 520
      Top = 148
      Width = 93
      Height = 21
      DataField = 'DauerSoll'
      DataSource = wwdsDauer
      TabOrder = 13
    end
    object dbcDauerAutomatischJn: TDBCheckBox
      Left = 28
      Top = 176
      Width = 113
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Dauer automatisch'
      DataField = 'DAUER_AUTOM_JN'
      DataSource = wwdsDNT18T76
      TabOrder = 14
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object wwdblcDNT18T70: TwwDBLookupCombo
      Left = 308
      Top = 176
      Width = 97
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BUCHUNGSART_ABK'#9'20'#9'BUCHUNGSART_ABK'#9'F'
        'BUCHUNGSART_BEZ'#9'40'#9'BUCHUNGSART_BEZ'#9'F')
      DataField = 'FK_DNT18T70'
      DataSource = wwdsDNT18T76
      LookupTable = wwqryDNT18T70
      LookupField = 'SYS_PK'
      Style = csDropDownList
      TabOrder = 15
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = True
      ShowMatchText = True
      OnDropDown = wwdblcDNT18T70DropDown
      OnCloseUp = wwdblcDNT18T70CloseUp
      OnExit = wwdblcDNT18T70Exit
    end
    object eBuchungsartBez: TEdit
      Left = 412
      Top = 176
      Width = 257
      Height = 21
      TabOrder = 16
    end
    object pKopieren: TPanel
      Left = 32
      Top = 220
      Width = 225
      Height = 109
      TabOrder = 17
      object gbKopieren: TGroupBox
        Left = 0
        Top = 8
        Width = 185
        Height = 61
        Caption = 'Kopieren f�r'
        TabOrder = 0
        object lMontag: TLabel
          Left = 12
          Top = 17
          Width = 15
          Height = 13
          Caption = 'Mo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lDienstag: TLabel
          Left = 45
          Top = 17
          Width = 10
          Height = 13
          Caption = 'Di'
        end
        object lMittwoch: TLabel
          Left = 81
          Top = 17
          Width = 11
          Height = 13
          Caption = 'Mi'
        end
        object lDonnerstag: TLabel
          Left = 117
          Top = 17
          Width = 14
          Height = 13
          Caption = 'Do'
        end
        object lFreitag: TLabel
          Left = 153
          Top = 17
          Width = 9
          Height = 13
          Caption = 'Fr'
        end
        object cbMo: TCheckBox
          Left = 12
          Top = 32
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object cbDienstag: TCheckBox
          Left = 44
          Top = 32
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object cbMittwoch: TCheckBox
          Left = 80
          Top = 32
          Width = 17
          Height = 17
          TabOrder = 2
        end
        object cbDonnerstag: TCheckBox
          Left = 116
          Top = 32
          Width = 17
          Height = 17
          TabOrder = 3
        end
        object cbFreitag: TCheckBox
          Left = 152
          Top = 32
          Width = 17
          Height = 17
          TabOrder = 4
        end
      end
      object bbKopieren: TBitBtn
        Left = 128
        Top = 76
        Width = 89
        Height = 25
        Caption = 'Kopieren'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Glyph.Data = {
          56070000424D5607000000000000360400002800000028000000140000000100
          0800000000002003000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
          03030303030303030303030303030303030303030303FFFFFFFFFFFFFFFFFFFF
          0303030303030303030000000000000000000003030303030303030303F8F8F8
          F8F8F8F8F8F8F8FF03030303030303030300FFFFFFFFFFFFFFFF000303030303
          0303030303F8FF03030303030303F8FF03030303030303030300FBFFFBFFFBFF
          FBFF0003030303030303030303F8FF03FFFFFFFFFFFFF8FF0303030303030303
          0300FFF8F8F8F8F8F8FF0003030303030303030303F8FFF8F8F8F8F8F803F8FF
          03030303030303030300FBFFFBFFFBFFFBFF00030303030303FFFFFFFFF8FF03
          FFFFFFFFFFFFF8FF03030303000000000000FFF8F8F8F8F8F8FF000303030303
          F8F8F8F8F8F8FFF8F8F8F8F8F803F8FF0303030300FFFFFFFF00FBFFFBFFFBFF
          FBFF000303030303F8FF030303F8FF03FFFFFFFFFFFFF8FF0303030300FFFFFF
          FF00FFF8F8F8F8F8F8FF000303030303F8FF030303F8FFF8F8F8F8F8F803F8FF
          0303030300FF07070700FBFFFBFFFBFFFBFF000303030303F8FF030303F8FF03
          0303030303FFF8FF0303030300FFFFFFFF00FFFFFFFFFFFF0000000303030303
          F8FF030303F8FF0303030303F8F8F8030303030300FF07070700FBFFFBFFFBFF
          0000030303030303F8FF030303F8FFFFFFFFFFFFF8F803030303030300FFFFFF
          FF000000000000000003030303030303F8FF030303F8F8F8F8F8F8F8F8030303
          0303030300FF070707070707FF0003030303030303030303F8FF030303030303
          03F8FF03030303030303030300FFFFFFFFFFFFFFFF0003030303030303030303
          F8FF030303030303FFF8FF03030303030303030300FFFFFFFFFFFF0000000303
          0303030303030303F8FF0303030303F8F8F80303030303030303030300FFFFFF
          FFFFFF00000303030303030303030303F8FFFFFFFFFFFFF8F803030303030303
          030303030000000000000000030303030303030303030303F8F8F8F8F8F8F8F8
          0303030303030303030303030303030303030303030303030303030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303030303030303030303030303030303030303030303030303}
        NumGlyphs = 2
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 385
    Width = 630
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
    Width = 630
    inherited ButtonBar: TToolBar
      Left = 334
      inherited SearchButton: TDBSpeedButton
        Enabled = False
        RuntimeEnabled = False
      end
      inherited NewButton: TDBSpeedButton
        Enabled = True
        DataSource = wwdsDNT18T76
        OnBeforeAction = NewButtonBeforeAction
        RuntimeEnabled = True
      end
      inherited SaveButton: TDBSpeedButton
        Enabled = True
        DataSource = wwdsDNT18T76
        OnBeforeAction = SaveButtonBeforeAction
        RuntimeEnabled = True
      end
      inherited CancelButton: TDBSpeedButton
        Enabled = True
        DataSource = wwdsDNT18T76
        RuntimeEnabled = True
      end
      inherited DeleteButton: TDBSpeedButton
        Enabled = True
        DataSource = wwdsDNT18T76
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
  end
  inherited MainMenu: TMainMenu
    Left = 84
    Top = 388
  end
  inherited ShowModeButtonMenu: TPopupMenu
    Left = 56
    Top = 389
  end
  inherited ilShowModeButton: TImageList
    Left = 28
    Top = 389
  end
  inherited wwIntl: TwwIntl
    Left = 0
    Top = 391
  end
  inherited dbDaisy: TDatabase
    Left = 2
    Top = 422
  end
  object hqryDNT18T76: THpoQuery
    AfterOpen = hqryDNT18T76AfterOpen
    AfterInsert = hqryDNT18T76AfterInsert
    AfterPost = hqryDNT18T76AfterPost
    AfterCancel = hqryDNT18T76AfterCancel
    DatabaseName = 'DB-DAISY-NT'
    RequestLive = True
    SQL.Strings = (
      'Select *'
      ' From DNT18T76'
      ' Where DNT18T76.SYS_DEL <> "T" ')
    ValidateWithMask = True
    ExportFile = True
    ImportParentFile = False
    ImportChildFile = False
    DeleteLogical = False
    TableName = 'DNT18T76'
    SelectClause = '*'
    FromClause = 'DNT18T76'
    SysPK = 0
    ShowMode = smNotDel
    LoadDefaultFromInifile = True
    Left = 540
    Top = 37
    object hqryDNT18T76SYS_PK: TIntegerField
      FieldName = 'SYS_PK'
      Origin = 'DB-DAISY-NT.DNT18T76.SYS_PK'
    end
    object hqryDNT18T76SYS_DEL: TStringField
      FieldName = 'SYS_DEL'
      Origin = 'DB-DAISY-NT.DNT18T76.SYS_DEL'
      Size = 1
    end
    object hqryDNT18T76SYS_STATE: TIntegerField
      FieldName = 'SYS_STATE'
      Origin = 'DB-DAISY-NT.DNT18T76.SYS_STATE'
    end
    object hqryDNT18T76SYS_DOC: TDateTimeField
      FieldName = 'SYS_DOC'
      Origin = 'DB-DAISY-NT.DNT18T76.SYS_DOC'
    end
    object hqryDNT18T76SYS_KOC: TIntegerField
      FieldName = 'SYS_KOC'
      Origin = 'DB-DAISY-NT.DNT18T76.SYS_KOC'
    end
    object hqryDNT18T76SYS_DLM: TDateTimeField
      FieldName = 'SYS_DLM'
      Origin = 'DB-DAISY-NT.DNT18T76.SYS_DLM'
    end
    object hqryDNT18T76SYS_KLM: TIntegerField
      FieldName = 'SYS_KLM'
      Origin = 'DB-DAISY-NT.DNT18T76.SYS_KLM'
    end
    object hqryDNT18T76FK_DNT18T75: TIntegerField
      FieldName = 'FK_DNT18T75'
      Origin = 'DB-DAISY-NT.DNT18T76.FK_DNT18T75'
    end
    object hqryDNT18T76WOCHENTAG: TIntegerField
      FieldName = 'WOCHENTAG'
      Origin = 'DB-DAISY-NT.DNT18T76.WOCHENTAG'
    end
    object hqryDNT18T76BEGINN_MIN: TDateTimeField
      FieldName = 'BEGINN_MIN'
      Origin = 'DB-DAISY-NT.DNT18T76.BEGINN_MIN'
    end
    object hqryDNT18T76BEGINN_MAX: TDateTimeField
      FieldName = 'BEGINN_MAX'
      Origin = 'DB-DAISY-NT.DNT18T76.BEGINN_MAX'
    end
    object hqryDNT18T76PAUSE1_VON: TDateTimeField
      FieldName = 'PAUSE1_VON'
      Origin = 'DB-DAISY-NT.DNT18T76.PAUSE1_VON'
    end
    object hqryDNT18T76PAUSE1_BIS: TDateTimeField
      FieldName = 'PAUSE1_BIS'
      Origin = 'DB-DAISY-NT.DNT18T76.PAUSE1_BIS'
    end
    object hqryDNT18T76PAUSE1_DAUER_SOLL: TIntegerField
      FieldName = 'PAUSE1_DAUER_SOLL'
      Origin = 'DB-DAISY-NT.DNT18T76.PAUSE1_DAUER_SOLL'
    end
    object hqryDNT18T76PAUSE2_VON: TDateTimeField
      FieldName = 'PAUSE2_VON'
      Origin = 'DB-DAISY-NT.DNT18T76.PAUSE2_VON'
    end
    object hqryDNT18T76PAUSE2_BIS: TDateTimeField
      FieldName = 'PAUSE2_BIS'
      Origin = 'DB-DAISY-NT.DNT18T76.PAUSE2_BIS'
    end
    object hqryDNT18T76PAUSE2_DAUER_SOLL: TIntegerField
      FieldName = 'PAUSE2_DAUER_SOLL'
      Origin = 'DB-DAISY-NT.DNT18T76.PAUSE2_DAUER_SOLL'
    end
    object hqryDNT18T76ENDE_MIN: TDateTimeField
      FieldName = 'ENDE_MIN'
      Origin = 'DB-DAISY-NT.DNT18T76.ENDE_MIN'
    end
    object hqryDNT18T76ENDE_MAX: TDateTimeField
      FieldName = 'ENDE_MAX'
      Origin = 'DB-DAISY-NT.DNT18T76.ENDE_MAX'
    end
    object hqryDNT18T76DAUER_SOLL: TIntegerField
      FieldName = 'DAUER_SOLL'
      Origin = 'DB-DAISY-NT.DNT18T76.DAUER_SOLL'
    end
    object hqryDNT18T76DAUER_MIN: TIntegerField
      FieldName = 'DAUER_MIN'
      Origin = 'DB-DAISY-NT.DNT18T76.DAUER_MIN'
    end
    object hqryDNT18T76DAUER_MAX: TIntegerField
      FieldName = 'DAUER_MAX'
      Origin = 'DB-DAISY-NT.DNT18T76.DAUER_MAX'
    end
    object hqryDNT18T76DAUER_AUTOM_JN: TStringField
      FieldName = 'DAUER_AUTOM_JN'
      Origin = 'DB-DAISY-NT.DNT18T76.DAUER_AUTOM_JN'
      Size = 1
    end
    object hqryDNT18T76FK_DNT18T70: TIntegerField
      FieldName = 'FK_DNT18T70'
      Origin = 'DB-DAISY-NT.DNT18T76.FK_DNT18T70'
      OnChange = hqryDNT18T76FK_DNT18T70Change
    end
  end
  object wwdsDNT18T76: TwwDataSource
    DataSet = hqryDNT18T76
    Left = 512
    Top = 37
  end
  object qryWork: TQuery
    DatabaseName = 'DB-DAISY-NT'
    Left = 464
    Top = 25
  end
  object mtDauer: TkbmMemTable
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
    Left = 584
    Top = 37
    object mtDauerDauerMin: TFloatField
      FieldName = 'DauerMin'
      OnChange = mtDauerDauerMinChange
    end
    object mtDauerDauerMax: TFloatField
      FieldName = 'DauerMax'
      OnChange = mtDauerDauerMaxChange
    end
    object mtDauerDauerSoll: TFloatField
      FieldName = 'DauerSoll'
      OnChange = mtDauerDauerSollChange
    end
  end
  object wwdsDauer: TwwDataSource
    DataSet = mtDauer
    OnDataChange = wwdsDauerDataChange
    Left = 616
    Top = 37
  end
  object wwqryDNT18T70: TwwQuery
    DatabaseName = 'DB-DAISY-NT'
    SQL.Strings = (
      
        'select DNT18T70.SYS_PK, DNT18T70.SYS_DEL, DNT18T70.BUCHUNGSART_A' +
        'BK, '
      ' DNT18T70.BUCHUNGSART_BEZ'
      'from DNT18T70'
      'order by DNT18T70.BUCHUNGSART_ABK')
    ValidateWithMask = True
    Left = 612
    Top = 213
  end
end
