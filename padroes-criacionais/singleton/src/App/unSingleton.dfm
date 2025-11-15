object SingletonForm: TSingletonForm
  Left = 0
  Top = 0
  Caption = 'Singleton Demo'
  ClientHeight = 157
  ClientWidth = 461
  Color = clWhitesmoke
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 8
    Top = 32
    Width = 201
    Height = 41
    Caption = 'Carregar Configura'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 248
    Top = 32
    Width = 201
    Height = 41
    Caption = 'Abrir Loja '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
