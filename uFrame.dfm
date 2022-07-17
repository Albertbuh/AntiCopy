object frMain: TfrMain
  Left = 0
  Top = 0
  Width = 394
  Height = 524
  ParentShowHint = False
  ShowHint = True
  TabOrder = 0
  object btnOpen: TButton
    Tag = 1
    Left = 23
    Top = 72
    Width = 330
    Height = 33
    Action = actOpen
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object reMain: TRichEdit
    Tag = 1
    Left = 24
    Top = 112
    Width = 329
    Height = 377
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object toolbMain: TToolBar
    Left = 360
    Top = 112
    Width = 25
    Height = 148
    Align = alNone
    ButtonHeight = 25
    ButtonWidth = 25
    Caption = 'toolbMain'
    EdgeBorders = []
    Images = ilMain
    TabOrder = 2
    Transparent = True
    object tbSave: TToolButton
      Left = 0
      Top = 2
      Action = actSave
    end
    object ToolButton3: TToolButton
      Left = 0
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 7
      Wrap = True
      Style = tbsSeparator
    end
    object tbSaveAs: TToolButton
      Left = 0
      Top = 32
      Action = actSaveAs
    end
    object ToolButton4: TToolButton
      Left = 0
      Top = 32
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 8
      Wrap = True
      Style = tbsSeparator
    end
    object tbClear: TToolButton
      Left = 0
      Top = 62
      Action = actClear
    end
    object ToolButton6: TToolButton
      Left = 0
      Top = 62
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 9
      Wrap = True
      Style = tbsSeparator
    end
    object tbRewrite: TToolButton
      Left = 0
      Top = 92
      Action = actReWrite
    end
    object ToolButton1: TToolButton
      Left = 0
      Top = 92
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 4
      Wrap = True
      Style = tbsSeparator
    end
    object tbChangeColor: TToolButton
      Left = 0
      Top = 122
      Action = actChangeColor
    end
  end
  object odMain: TOpenDialog
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1092#1072#1081#1083#1099'|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 40
    Top = 8
  end
  object alMain: TActionList
    Images = ilMain
    Left = 8
    Top = 8
    object actOpen: TAction
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
      Hint = #1054#1090#1082#1088#1099#1090#1100
      ShortCut = 16463
      OnExecute = actOpenExecute
    end
    object actSave: TAction
      Caption = #1089#1086#1093#1088#1072#1085#1080#1090#1100
      Enabled = False
      Hint = 'Save File'
      ImageIndex = 0
      ShortCut = 16467
      OnExecute = actSaveExecute
    end
    object actSaveAs: TAction
      Caption = #1089#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
      Enabled = False
      Hint = 'Save as'
      ImageIndex = 1
      ShortCut = 49235
      OnExecute = actSaveAsExecute
    end
    object actClear: TAction
      Caption = #1086#1095#1080#1089#1090#1080#1090#1100
      Enabled = False
      Hint = 'Clear Form'
      ImageIndex = 2
      ShortCut = 16453
      OnExecute = actClearExecute
    end
    object actReWrite: TAction
      Caption = #1074#1077#1088#1085#1091#1090#1100' '#1094#1077#1083#1100#1085#1099#1081' '#1090#1077#1082#1089#1090
      Enabled = False
      Hint = 'ReturnSolid '
      ImageIndex = 3
      ShortCut = 16450
      OnExecute = actReWriteExecute
    end
    object actChangeColor: TAction
      Hint = 'Change text color'
      ImageIndex = 4
      ShortCut = 16452
      OnExecute = actChangeColorExecute
    end
  end
  object ilMain: TImageList
    Left = 8
    Top = 40
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      000000000000000000000000000050B04DAA4AC38BBB00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4A903FE50AF4CFF50AF4CFF50AF4CFF4AC38BFF4AC38BFF4AC38BFF3BEB
      FFFE000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5A9
      0365F4A903FF50AF4CFF50AF4CFF50AF4CFF4AC38BFF4AC38BFF4AC38BFF3BEB
      FFFF3BECFF6C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4A903FEF4A9
      03FFF4A903FFF4A903FF50AF4CFF50AF4CFF4AC38BFF4AC38BFF3BEBFFFF3BEB
      FFFF3BEBFFFF3BEBFFFE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5513FFFB551
      3FFFF4A903FFF4A903FFECA807F450AF4CFF4AC38BFF3BEBFEF23BEBFFFF3BEB
      FFFF07C1FFFF07C1FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5513FFFB551
      3FFFB5513FFFF0A306F2F4A903FF50AF4CFF4AC38BFF3BEBFFFF39EAFFF507C1
      FFFF07C1FFFF07C1FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5503FBBB5513FFFB551
      3FFFB5513FFFB5513FFFB5513FFFF4A903FF3BEBFFFF07C1FFFF07C1FFFF07C1
      FFFF07C1FFFF07C1FFFF07C1FFBA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B73B68BBB73A67FFB73A
      67FFB73A67FFB73A67FFB73A67FFB0279CFF2257FFFF0098FFFF0098FFFF0098
      FFFF0098FFFF0098FFFF0098FFBA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B73A67FFB73A
      67FFB73A67FFB02899F2B0279CFF631EE9FF3643F4FF2257FFFF215AFFF40098
      FFFF0098FFFF0098FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B73A67FFB73A
      67FFB0279CFFB0279CFFB0279DF4631EE9FF3643F4FF2355FEF22257FFFF2257
      FFFF0098FFFF0098FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B0279CFEB027
      9CFFB0279CFFB0279CFF631EE9FF631EE9FF3643F4FF3643F4FF2257FFFF2257
      FFFF2257FFFF2257FFFE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B126
      9D65B0279CFF631EE9FF631EE9FF631EE9FF3643F4FF3643F4FF3643F4FF2257
      FFFF2357FF6D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B0279CFE631EE9FF631EE9FF631EE9FF3643F4FF3643F4FF3643F4FF2257
      FFFE000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000631EE9AA3743F4BB00000000000000000000
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
      0000BABABAB20000005900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000040000001000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F1F1FDF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF1F1F1FD000000590000000000000000CDCDCDC5F2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FF734046FFF2F2F2FF919191920000000000000000BBBBBB87F2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FF00000059000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB84
      08FA0000000000000000000000000000000000000000F2F2F2FC6E3940FF6E39
      40FF6E3940FF6E3940FF6E3940FF6E3940FF6E3940FF6E3940FF6E3940FF6E39
      40FF6E3940FF6E3940FFF1F1F1FD0000000000000000F2F2F2FF6E3940FF6E39
      40FF6E3940FF6E3940FF6E3940FF6E3940FF6E3940FF6E3940FF6E3940FF6E39
      40FF5C66F4FF5E61DFFFF2F2F2FF0000005900000000F2F2F2FF6E3940FFFFEE
      D9FF6E3940FFFFEED9FF6E3940FFFFEED9FF6E3940FFFFEED9FF6E3940FFFFEE
      D9FF7575FFFF6E3940FFF2F2F2FF000000590000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB84
      08FFDC830A5000000000000000000000000000000000F2F2F2FF6E3940FFFFBF
      70FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFFFBF70FF6E3940FFF2F2F2FF0000000000000000F2F2F2FFFFBF70FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FF4FB8
      F9FFE6A29AFF5C66F4FFD0C3C4FF0303035300000000F2F2F2FFFFEED9FFFFEE
      D9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FF7469
      D9FF7575FFFF7575FFFF6E3940FFF2F2F2FF000000000000000000000000DF80
      0008DB8408FFDB8408FFDB8408FFDB8408FFDB8408FFDB8408FFDB8408FFDB84
      08FFDB8408FFD9800D14000000000000000000000000F2F2F2FF6E3940FFFFBF
      70FFF2F2F2FFC5A79BFFC5A79BFFC5A79BFFC5A79BFFC5A79BFFC5A79BFFF2F2
      F2FFFFBF70FF6E3940FFF2F2F2FF0000000000000000F2F2F2FFFFBF70FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FF4FB8F9FF4FB8
      F9FF5DB9EDFFF2F2F2FFC5C5C5730000000000000000F2F2F2FFFFEED9FFFFEE
      D9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFE4CDBDFFBD8527FFBD85
      27FF7575FFFF71528EFFF2F2F2FF000000020000000000000000DB8409B3DB84
      08FFDB8408FFDB8408FFDB8408FFDB8408FFDB8408FFDB8408FFDB8408FFDB84
      08FFDB8408FF00000000000000000000000000000000F2F2F2FF6E3940FFFFBF
      70FFF2F2F2FFC5A79BFFC5A79BFFC5A79BFFC5A79BFFC5A79BFFC5A79BFFF2F2
      F2FFFFBF70FF6E3940FFF2F2F2FF0000000000000000F2F2F2FFFFBF70FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FF4FB8F9FF4FB8F9FF4FB8
      F9FFFFBF70FFF2F2F2FF000000000000000000000000F2F2F2FFFFEED9FFFFEE
      D9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFBF70FFBD8527FFBD85
      27FF8C5637FFF2F2F2FFB6B6B607000000000000000000000000BA6803FFBA68
      03FF00000000000000000000000000000000000000000000000000000000DB84
      08FF0000000000000000000000000000000000000000F2F2F2FF6E3940FFFFBF
      70FFF2F2F2FFC5A79BFFC5A79BFFC5A79BFFC5A79BFFC5A79BFFC5A79BFFF2F2
      F2FFFFBF70FF6E3940FFF2F2F2FF0000000000000000F2F2F2FFFFBF70FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFB3DEFEFF4FB8F9FFF2F2
      F2FFFFBF70FFF2F2F2FF000000000000000000000000F2F2F2FFFFEED9FFFFEE
      D9FFDAA0C6FFFFEED9FFFFEED9FFC87BBDFFFDEAD8FF854960FFFFBF70FFBC84
      27FFFFEED9FFF2F2F2FF00000000000000000000000000000000BA6803FFBA68
      03FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F2FF6E3940FFFFBF
      70FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFFFBF70FF6E3940FFF2F2F2FF0000000000000000F2F2F2FFFFBF70FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFFFBF70FFF2F2F2FF000000000000000000000000F2F2F2FFFFEED9FFFFEE
      D9FFC87BBDFFC87BBDFFC87BBDFFC87BBDFFC87BBDFFFFEED9FF915270FFFEEC
      D7FFFFEED9FFF2F2F2FF00000000000000000000000000000000BA6803FFBA68
      03FF000000000000000000000000000000000000000000000000000000000000
      0000BA6803BCBA6803FF000000000000000000000000F2F2F2FF6E3940FFFFBF
      70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF
      70FFFFBF70FF6E3940FFF2F2F2FF0000000000000000F2F2F2FFFFBF70FFFFBF
      70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF
      70FFFFBF70FFF2F2F2FF000000000000000000000000F2F2F2FFFFEED9FFFFEE
      D9FFFFEDD9FFEBC5CFFFC87BBDFFFFEED9FFDCA5C7FFF1CFD2FFC87BBDFFFFEE
      D9FFFFEED9FFF2F2F2FF00000000000000000000000000000000BA6803FFBA68
      03C1000000000000000000000000000000000000000000000000000000000000
      0000BA6803FFBA6803FF000000000000000000000000F2F2F2FF6E3940FFFFBF
      70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF
      70FFFFBF70FF6E3940FFF2F2F2FF0000000000000000F2F2F2FFFFBF70FFFFBF
      70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF70FFFFBF
      70FFFFBF70FFF2F2F2FF000000000000000000000000F2F2F2FFFFEED9FFFFEE
      D9FFFFEED9FFC87BBDFFC87BBDFFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEE
      D9FFFFEED9FFF2F2F2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BA6803FFBA6803FF000000000000000000000000F2F2F2FF6E3940FFFFBF
      70FFFFBF70FFC07C70FFC07C70FFC07C70FFC07C70FFFFBF70FFC07C70FFFFBF
      70FFFFBF70FF6E3940FFF2F2F2FF0000000000000000F2F2F2FFFFBF70FFFFBF
      70FFC07C70FFC07C70FFC07C70FFC07C70FFFFBF70FFC07C70FFFFBF70FFFFBF
      70FFFFBF70FFF2F2F2FF000000000000000000000000F2F2F2FFFFEED9FFFFEE
      D9FFFFEED9FFFFEDD9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEE
      D9FFFFEED9FFF2F2F2FF00000000000000000000000000000000000000000000
      0000DB8408FF0000000000000000000000000000000000000000000000000000
      0000BA6803FFBA6803FF000000000000000000000000F2F2F2FF6E3940FFFFBF
      70FFFFBF70FFC07C70FFC07C70FFC07C70FFC07C70FFFFBF70FFC07C70FFFFBF
      70FFFFBF70FF6E3940FFF2F2F2FF0000000000000000F2F2F2FFFFBF70FFFFBF
      70FFC07C70FFC07C70FFC07C70FFC07C70FFFFBF70FFC07C70FFFFBF70FFFFBF
      70FFFFBF70FFF2F2F2FF000000000000000000000000F2F2F2FFFFEED9FFFFEE
      D9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEE
      D9FFFFEED9FFF2F2F2FF0000000000000000000000000000000000000000DB84
      08FFDB8408FFDB8408FFDB8408FFDB8408FFDB8408FFDB8408FFDB8408FFDB84
      08FFDB8408FFDB8408B9000000000000000000000000F2F2F2FF6E3940FFFFBF
      70FFFFBF70FFC07C70FFC07C70FFC07C70FFC07C70FFFFBF70FFC07C70FFFFBF
      70FFDD9F65FFF2F2F2FF525252190000000000000000F2F2F2FFFFBF70FFFFBF
      70FFC07C70FFC07C70FFC07C70FFC07C70FFFFBF70FFC07C70FFFFBF70FFFFBF
      70FF7B4B51FFF2F2F2FF000000000000000000000000F2F2F2FFFFEED9FFFFEE
      D9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEED9FFFFEE
      D9FFFFEED9FFF2F2F2FF00000000000000000000000000000000DB860C15DB84
      08FFDB8408FFDB8408FFDB8408FFDB8408FFDB8408FFDB8408FFDB8408FFDB84
      08FFDF80000800000000000000000000000000000000F2F2F2FC6E3940FF6E39
      40FF6E3940FF6E3940FF6E3940FF6E3940FF6E3940FF6E3940FF6E3940FF6E39
      40FFF2F2F2FFB9B9B93E000000000000000000000000F2F2F2FF6E3940FF6E39
      40FF6E3940FF6E3940FF6E3940FF6E3940FF6E3940FF6E3940FF6E3940FF6E39
      40FFF2F2F2FF00000000000000000000000000000000F2F2F2FF6E3940FFFFEE
      D9FF6E3940FFFFEED9FF6E3940FFFFEED9FF6E3940FFFFEED9FF6E3940FFFFEE
      D9FF6E3940FFF2F2F2FF0000000000000000000000000000000000000000DA85
      074BDB8408FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F2FCF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFFFFFFF0900000000000000000000000000000000F1F1F1A8F2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2F20000000000000000000000000000000000000000F3F3F36BF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF3F3F36A00000000000000000000000000000000000000000000
      0000DB8408F80000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000FE7F000000000000
      F00F000000000000E007000000000000C003000000000000C003000000000000
      C00300000000000080010000000000008001000000000000C003000000000000
      C003000000000000C003000000000000E007000000000000F00F000000000000
      FE7F000000000000FFFF000000000000FFFFFFF3FFF3FFFFC00180018001FFEF
      800180008000FFE7800180008000E003800180018000C007800180038001CFEF
      800180038003CFFF800180038003CFF3800180038003CFF3800180038003FFF3
      800180038003F7F3800180038003E003800180038003C007800380078003E7FF
      C007800F8003F7FFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object sdMain: TSaveDialog
    DefaultExt = 'txt'
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1092#1072#1081#1083#1099'|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 40
    Top = 40
  end
  object clrdMain: TColorDialog
    CustomColors.Strings = (
      'ColorA=FFFFFFFF'
      'ColorB=FFFFFFFF'
      'ColorC=FFFFFFFF'
      'ColorD=FFFFFFFF'
      'ColorE=FFFFFFFF'
      'ColorF=FFFFFFFF'
      'ColorG=FFFFFFFF'
      'ColorH=FFFFFFFF'
      'ColorI=FFFFFFFF'
      'ColorJ=FFFFFFFF'
      'ColorK=FFFFFFFF'
      'ColorL=FFFFFFFF'
      'ColorM=FFFFFFFF'
      'ColorN=FFFFFFFF'
      'ColorO=FFFFFFFF'
      'ColorP=FFFFFFFF')
    Left = 72
    Top = 8
  end
end
