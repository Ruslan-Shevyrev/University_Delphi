object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 500
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 517
    Top = 8
    Width = 75
    Height = 16
    Caption = #1058#1080#1087' '#1075#1088#1072#1085#1080#1094#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Image1: TImage
    Left = 232
    Top = 304
    Width = 105
    Height = 105
  end
  object Button1: TButton
    Left = 517
    Top = 383
    Width = 75
    Height = 25
    Caption = 'square'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 557
    Top = 448
    Width = 35
    Height = 25
    Caption = '+'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 517
    Top = 344
    Width = 75
    Height = 25
    Caption = 'circle'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 517
    Top = 448
    Width = 35
    Height = 25
    Caption = '-'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 517
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Ellipse'
    TabOrder = 4
    OnClick = Button5Click
  end
  object ComboBox1: TComboBox
    Left = 517
    Top = 32
    Width = 75
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 5
    Text = #1057#1087#1083#1086#1096#1085#1072#1103
    Items.Strings = (
      #1057#1087#1083#1086#1096#1085#1072#1103
      #1055#1091#1085#1082#1090#1080#1088#1072#1103
      #1041#1077#1079' '#1083#1080#1085#1080#1080)
  end
end
