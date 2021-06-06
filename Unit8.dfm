object add_otprav: Tadd_otprav
  Left = 1013
  Top = 394
  Width = 350
  Height = 244
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
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
    Top = 80
    Width = 137
    Height = 19
    Caption = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Small'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 176
    Top = 48
    Width = 127
    Height = 19
    Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Small'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 130
    Top = 128
    Width = 79
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
    Left = 32
    Top = 16
    Width = 121
    Height = 21
    Color = 15790320
    DataField = #1053#1086#1084#1077#1088' '#1087#1086#1077#1079#1076#1072
    DataSource = Form3.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
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
    Left = 32
    Top = 48
    Width = 121
    Height = 21
    Color = 15790320
    DataField = #1044#1072#1090#1072
    DataSource = Form3.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
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
    Left = 32
    Top = 80
    Width = 121
    Height = 21
    Color = 15790320
    DataField = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
    DataSource = Form3.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
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
