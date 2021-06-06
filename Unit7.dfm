object Add_poezd: TAdd_poezd
  Left = 979
  Top = 330
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  ClientHeight = 191
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -5
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 176
    Top = 16
    Width = 96
    Height = 19
    Caption = #1053#1086#1084#1077#1088' '#1087#1086#1077#1079#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Small'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 176
    Top = 48
    Width = 137
    Height = 19
    Caption = #1053#1072#1095#1072#1083#1100#1085#1072#1103' '#1089#1090#1072#1085#1094#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Small'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 176
    Top = 80
    Width = 127
    Height = 19
    Caption = #1050#1086#1085#1077#1095#1085#1072#1103' '#1089#1090#1072#1085#1094#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Small'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 146
    Top = 136
    Width = 76
    Height = 25
    Caption = #1054#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Small'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object sDBEdit1: TsDBEdit
    Left = 40
    Top = 16
    Width = 121
    Height = 21
    Color = clWhite
    DataField = #1053#1086#1084#1077#1088' '#1087#1086#1077#1079#1076#1072
    DataSource = Form2.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -5
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
  end
  object sDBEdit2: TsDBEdit
    Left = 40
    Top = 48
    Width = 121
    Height = 21
    Color = clWhite
    DataField = #1053#1072#1095#1072#1083#1100#1085#1072#1103' '#1089#1090#1072#1085#1094#1080#1103
    DataSource = Form2.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -5
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
  end
  object sDBEdit3: TsDBEdit
    Left = 40
    Top = 80
    Width = 121
    Height = 21
    Color = clWhite
    DataField = #1050#1086#1085#1077#1095#1085#1072#1103' '#1089#1090#1072#1085#1094#1080#1103
    DataSource = Form2.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -5
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
  end
end
