object fmMain: TfmMain
  Left = 0
  Top = 0
  Caption = #1050#1083#1080#1085#1080#1082#1072' '#39#1041#1091#1076#1100#1090#1077' '#1079#1076#1086#1088#1086#1074#1099'!'#39
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 280
    Width = 635
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 280
    Align = alClient
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 16
    object mnFile: TMenuItem
      Caption = 'File'
      object Exit1: TMenuItem
        Action = acExit
      end
    end
    object mnService: TMenuItem
      Caption = 'Service'
      object PopulationGen1: TMenuItem
        Action = acPopGen
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 16
    Top = 72
  end
  object ActionList1: TActionList
    Left = 72
    Top = 16
    object acExit: TAction
      Caption = 'Exit'
      OnExecute = acExitExecute
    end
    object acPopGen: TAction
      Caption = 'Population Gen.'
      OnExecute = acPopGenExecute
    end
  end
end
