object LojaForm: TLojaForm
  Left = 0
  Top = 0
  Caption = 'Loja de Brinquedos'
  ClientHeight = 153
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  Position = poScreenCenter
  TextHeight = 15
  object btnCarrinho: TButton
    Left = 8
    Top = 32
    Width = 121
    Height = 41
    Caption = 'Carrinho'
    TabOrder = 0
    OnClick = btnCarrinhoClick
  end
  object btnBoneca: TButton
    Left = 184
    Top = 32
    Width = 121
    Height = 41
    Caption = 'Boneca'
    TabOrder = 1
    OnClick = btnBonecaClick
  end
end
