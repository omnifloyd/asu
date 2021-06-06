object Form10: TForm10
  Left = 809
  Top = 362
  Width = 336
  Height = 179
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 120
    Top = 64
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    DataField = #1053#1086#1084#1077#1088'_'#1087#1086#1077#1079#1076#1072
    DataSource = Form6.DataSource1
    TabOrder = 1
  end
end
