object frmAbstractFactory: TfrmAbstractFactory
  Left = 0
  Top = 0
  Align = alCustom
  BorderStyle = bsSingle
  Caption = 'Demo Abstract Factory'
  ClientHeight = 322
  ClientWidth = 624
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object lblFactoryAtual: TLabel
    Left = 232
    Top = 8
    Width = 6
    Height = 28
    Align = alCustom
    Alignment = taCenter
    Color = clBeige
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object pnlFactoryBasica: TPanel
    Left = 22
    Top = 8
    Width = 190
    Height = 50
    BevelOuter = bvNone
    Caption = 'Factory B'#225'sica'
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    OnClick = pnlFactoryBasicaClick
  end
  object pnlFactoryPremium: TPanel
    Left = 22
    Top = 64
    Width = 190
    Height = 50
    BevelOuter = bvNone
    Caption = 'Factory premium'
    Color = clSilver
    ParentBackground = False
    TabOrder = 1
    OnClick = pnlFactoryPremiumClick
  end
  object pnlEnviarEmail: TPanel
    Left = 22
    Top = 120
    Width = 190
    Height = 50
    BevelOuter = bvNone
    Caption = 'Enviar Email'
    Color = clSilver
    ParentBackground = False
    TabOrder = 2
    OnClick = pnlEnviarEmailClick
  end
  object pnlEnviarSMS: TPanel
    Left = 22
    Top = 176
    Width = 190
    Height = 50
    BevelOuter = bvNone
    Caption = 'Enviar SMS'
    Color = clSilver
    ParentBackground = False
    TabOrder = 3
    OnClick = pnlEnviarSMSClick
  end
  object pnlEnviarPush: TPanel
    Left = 22
    Top = 232
    Width = 190
    Height = 50
    BevelOuter = bvNone
    Caption = 'Enviar Push'
    Color = clSilver
    ParentBackground = False
    TabOrder = 4
    OnClick = pnlEnviarPushClick
  end
end
