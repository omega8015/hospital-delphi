object fmPopGen: TfmPopGen
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1085#1072#1089#1077#1083#1077#1085#1080#1103
  ClientHeight = 766
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 872
    Height = 747
    Align = alClient
    TabOrder = 0
    object gbPersInfo: TGroupBox
      Left = 1
      Top = 1
      Width = 192
      Height = 424
      Caption = #1055#1077#1088#1089#1086#1072#1083#1100#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      TabOrder = 0
      object edName: TLabeledEdit
        Left = 15
        Top = 85
        Width = 121
        Height = 21
        EditLabel.Width = 19
        EditLabel.Height = 13
        EditLabel.Caption = #1048#1084#1103
        TabOrder = 0
      end
      object edPatr: TLabeledEdit
        Left = 15
        Top = 128
        Width = 121
        Height = 21
        EditLabel.Width = 49
        EditLabel.Height = 13
        EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        TabOrder = 1
      end
      object edBirthYear: TLabeledEdit
        Left = 15
        Top = 167
        Width = 121
        Height = 21
        EditLabel.Width = 73
        EditLabel.Height = 13
        EditLabel.Caption = #1043#1086#1076' '#1088#1086#1078#1076#1077#1085#1080#1103
        TabOrder = 2
      end
      object edProf: TLabeledEdit
        Left = 15
        Top = 205
        Width = 121
        Height = 21
        EditLabel.Width = 55
        EditLabel.Height = 13
        EditLabel.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
        TabOrder = 3
      end
      object edPassword: TLabeledEdit
        Left = 15
        Top = 248
        Width = 121
        Height = 21
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = #1055#1072#1088#1086#1083#1100
        TabOrder = 4
      end
      object edCity: TLabeledEdit
        Left = 15
        Top = 296
        Width = 121
        Height = 21
        EditLabel.Width = 31
        EditLabel.Height = 13
        EditLabel.Caption = #1043#1086#1088#1086#1076
        TabOrder = 5
      end
      object edStreet: TLabeledEdit
        Left = 15
        Top = 336
        Width = 121
        Height = 21
        EditLabel.Width = 31
        EditLabel.Height = 13
        EditLabel.Caption = #1059#1083#1080#1094#1072
        TabOrder = 6
      end
      object edBuilding: TLabeledEdit
        Left = 15
        Top = 376
        Width = 121
        Height = 21
        EditLabel.Width = 20
        EditLabel.Height = 13
        EditLabel.Caption = #1044#1086#1084
        TabOrder = 7
      end
      object edSurname: TLabeledEdit
        Left = 16
        Top = 48
        Width = 121
        Height = 21
        EditLabel.Width = 44
        EditLabel.Height = 13
        EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
        TabOrder = 8
      end
    end
    object gbPopList: TGroupBox
      Left = 199
      Top = 1
      Width = 658
      Height = 424
      Caption = #1057#1087#1080#1089#1086#1082' '#1085#1072#1089#1077#1083#1077#1085#1080#1103
      TabOrder = 1
      object memo: TMemo
        Left = 2
        Top = 15
        Width = 654
        Height = 407
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        PopupMenu = pmListShow
        ScrollBars = ssBoth
        TabOrder = 0
        Visible = False
      end
      object stringGrid: TStringGrid
        Left = 2
        Top = 15
        Width = 654
        Height = 407
        Align = alClient
        ColCount = 10
        FixedCols = 0
        RowCount = 16
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        PopupMenu = pmListShow
        TabOrder = 1
        Visible = False
        OnClick = stringGridClick
        ExplicitLeft = 3
      end
    end
    object gbGen: TGroupBox
      Left = 1
      Top = 448
      Width = 870
      Height = 298
      Align = alBottom
      Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088' '#1085#1072#1089#1077#1083#1077#1085#1080#1103
      TabOrder = 2
      object gbPersona: TGroupBox
        Left = 0
        Top = 16
        Width = 553
        Height = 277
        Caption = #1055#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1075#1088#1072#1078#1076#1072#1085#1080#1085#1072
        TabOrder = 0
        object Label1: TLabel
          Left = 154
          Top = 83
          Width = 77
          Height = 13
          Caption = #1043#1086#1076' '#1088#1086#1078#1076#1077#1085#1080#1103':'
        end
        object Label2: TLabel
          Left = 312
          Top = 83
          Width = 58
          Height = 13
          Caption = #1055#1072#1089#1087#1086#1088#1090' '#8470
        end
        object cbSurname: TComboBox
          Left = 3
          Top = 43
          Width = 145
          Height = 21
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          Text = #1060#1072#1084#1080#1083#1080#1103
        end
        object cbName: TComboBox
          Left = 154
          Top = 43
          Width = 145
          Height = 21
          TabOrder = 1
          Text = #1048#1084#1103
        end
        object cbPatr: TComboBox
          Left = 307
          Top = 43
          Width = 145
          Height = 21
          TabOrder = 2
          Text = #1054#1090#1095#1077#1089#1090#1074#1086
        end
        object rgSex: TRadioGroup
          Left = 475
          Top = 22
          Width = 62
          Height = 67
          Caption = #1055#1086#1083':'
          ItemIndex = 0
          Items.Strings = (
            #1052#1091#1078
            #1046#1077#1085)
          TabOrder = 3
          OnClick = rgSexClick
        end
        object cbProf: TComboBox
          Left = 3
          Top = 80
          Width = 145
          Height = 21
          TabOrder = 4
          Text = #1055#1088#1086#1092#1077#1089#1089#1080#1103
        end
        object cbCity: TComboBox
          Left = 3
          Top = 128
          Width = 145
          Height = 21
          TabOrder = 5
          Text = #1043#1086#1088#1086#1076
        end
        object cbStreet: TComboBox
          Left = 154
          Top = 128
          Width = 145
          Height = 21
          TabOrder = 6
          Text = #1059#1083#1080#1094#1072
        end
        object edBuildingNum: TEdit
          Left = 312
          Top = 128
          Width = 33
          Height = 21
          Alignment = taRightJustify
          NumbersOnly = True
          TabOrder = 7
          Text = '1'
        end
        object edYear: TEdit
          Left = 237
          Top = 80
          Width = 31
          Height = 21
          NumbersOnly = True
          TabOrder = 8
          Text = '1913'
        end
        object edPass: TEdit
          Left = 375
          Top = 80
          Width = 78
          Height = 21
          Alignment = taRightJustify
          NumbersOnly = True
          TabOrder = 9
        end
        object btnAdd: TButton
          Left = 422
          Top = 124
          Width = 86
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 10
          OnClick = btnAddClick
        end
      end
      object gbGenPeople: TGroupBox
        Left = 3
        Top = 171
        Width = 534
        Height = 105
        Caption = #1052#1072#1089#1089#1086#1074#1086#1077' '#1089#1086#1079#1076#1072#1085#1080#1077' '#1087#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1093' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object Label3: TLabel
          Left = 12
          Top = 40
          Width = 150
          Height = 13
          Caption = #1055#1088#1086#1094#1077#1085#1090' '#1084#1091#1078#1089#1082#1086#1075#1086' '#1085#1072#1089#1077#1083#1077#1085#1080#1103
        end
        object btnGenerate: TButton
          Left = 419
          Top = 24
          Width = 86
          Height = 25
          Caption = #1057#1086#1079#1076#1072#1090#1100
          TabOrder = 0
          OnClick = btnGenerateClick
        end
        object edAmount: TLabeledEdit
          Left = 118
          Top = 16
          Width = 59
          Height = 21
          Alignment = taCenter
          EditLabel.Width = 107
          EditLabel.Height = 13
          EditLabel.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1075#1088#1072#1076#1078#1072#1085
          LabelPosition = lpLeft
          NumbersOnly = True
          TabOrder = 1
        end
        object tbSexPercentage: TTrackBar
          Left = 3
          Top = 59
          Width = 174
          Height = 30
          Max = 100
          Min = 1
          ParentShowHint = False
          Position = 50
          PositionToolTip = ptTop
          ShowHint = False
          TabOrder = 2
        end
      end
      object btnSave: TButton
        Left = 680
        Top = 46
        Width = 81
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 2
        OnClick = btnSaveClick
      end
      object rgView: TRadioGroup
        Left = 568
        Top = 40
        Width = 81
        Height = 65
        Caption = #1042#1080#1076' '#1074#1099#1074#1086#1076#1072':'
        ItemIndex = 0
        Items.Strings = (
          #1058#1077#1082#1089#1090
          #1058#1072#1073#1083#1080#1094#1072)
        TabOrder = 3
        OnClick = rgViewClick
      end
      object btnLoad: TButton
        Left = 680
        Top = 77
        Width = 81
        Height = 25
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
        TabOrder = 4
        OnClick = btnLoadClick
      end
      object Button1: TButton
        Left = 574
        Top = 120
        Width = 75
        Height = 25
        Action = acSortBySurname
        TabOrder = 5
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 747
    Width = 872
    Height = 19
    Panels = <>
  end
  object dlgOpenText: TOpenTextFileDialog
    Left = 768
    Top = 648
  end
  object dlgSave: TSaveDialog
    Left = 705
    Top = 656
  end
  object dlgOpen: TOpenDialog
    Left = 704
    Top = 584
  end
  object alSort: TActionList
    Left = 769
    Top = 576
    object acSortBySurname: TAction
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
      OnExecute = acSortBySurnameExecute
    end
    object acClearList: TAction
      Caption = #1054#1095#1080#1089#1090#1082#1072' '#1089#1087#1080#1089#1082#1072
      OnExecute = acClearListExecute
    end
  end
  object pmListShow: TPopupMenu
    Left = 521
    Top = 248
    object N1: TMenuItem
      Action = acSortBySurname
    end
    object N2: TMenuItem
      Action = acClearList
    end
  end
end
