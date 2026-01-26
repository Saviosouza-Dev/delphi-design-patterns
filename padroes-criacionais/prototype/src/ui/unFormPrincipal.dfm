object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Demo Prototype'
  ClientHeight = 434
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 616
    Height = 81
    Align = alTop
    Caption = 'Sistema de Relat'#243'rio Financeiro- Prototype'
    Color = 10842913
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pnlCentro: TPanel
    Left = 0
    Top = 81
    Width = 616
    Height = 285
    Align = alClient
    Color = 16777192
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      616
      285)
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 314
      Height = 32
      Caption = 'Selecione  o M'#234's do relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object cbcMes: TComboBox
      Left = 24
      Top = 62
      Width = 241
      Height = 36
      AutoComplete = False
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 0
      Items.Strings = (
        ''
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 366
    Width = 616
    Height = 68
    Align = alBottom
    Color = 16777192
    ParentBackground = False
    TabOrder = 2
    object pnlVerRels: TPanel
      Left = 291
      Top = 6
      Width = 142
      Height = 51
      Caption = 'Exibrir Relat'#243'rio'
      Color = 10842913
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = pnlVerRelsClick
    end
    object pnlSair: TPanel
      Left = 462
      Top = 6
      Width = 142
      Height = 51
      Caption = 'Sair'
      Color = 10842913
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = pnlSairClick
    end
  end
end
