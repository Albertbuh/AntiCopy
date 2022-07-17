object frmMain: TfrmMain
  Left = 133
  Top = 472
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'AntiCopy'
  ClientHeight = 511
  ClientWidth = 945
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object imFullScreen: TImage
    Left = 0
    Top = 0
    Width = 945
    Height = 511
    Align = alClient
  end
  object lbHead: TLabel
    Left = 408
    Top = 352
    Width = 141
    Height = 37
    Alignment = taCenter
    Caption = #1055#1086#1076#1086#1073#1080#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lbPrintCompare: TLabel
    Left = 408
    Top = 392
    Width = 145
    Height = 29
    Alignment = taCenter
    AutoSize = False
    Caption = ' 100,0%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  inline frLeftText: TfrMain
    Tag = 1
    Left = 8
    Top = 0
    Width = 401
    Height = 559
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited btnOpen: TButton
      Left = 24
      Height = 34
    end
    inherited reMain: TRichEdit
      Width = 330
      Height = 378
      OnChange = cmpbtnEnable
    end
    inherited toolbMain: TToolBar
      Caption = ''
    end
    inherited alMain: TActionList
      inherited actSaveAs: TAction
        ShortCut = 24659
      end
      inherited actReWrite: TAction
        ShortCut = 16466
      end
    end
  end
  inline frRightText: TfrMain
    Tag = 2
    Left = 538
    Top = 0
    Width = 408
    Height = 559
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited reMain: TRichEdit [0]
      Tag = 2
      Left = 40
      Width = 330
      Height = 378
      OnChange = cmpbtnEnable
    end
    inherited btnOpen: TButton [1]
      Tag = 2
      Left = 40
      Height = 34
    end
    inherited toolbMain: TToolBar
      Left = 10
    end
    inherited alMain: TActionList
      inherited actOpen: TAction
        ShortCut = 49231
      end
      inherited actSave: TAction
        ShortCut = 49235
      end
      inherited actSaveAs: TAction
        ShortCut = 41043
      end
      inherited actClear: TAction
        ShortCut = 49221
      end
      inherited actReWrite: TAction
        ShortCut = 49234
      end
      inherited actChangeColor: TAction
        ShortCut = 49220
      end
    end
  end
  object btnCompare: TButton
    Tag = 4
    Left = 392
    Top = 432
    Width = 162
    Height = 58
    Action = actCompare
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object alMain: TActionList
    Left = 456
    object actCompare: TAction
      Caption = #1057#1088#1072#1074#1085#1080#1090#1100
      Enabled = False
      OnExecute = actCompareExecute
    end
  end
end
