object FrmRelatorioBase: TFrmRelatorioBase
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Base '
  ClientHeight = 740
  ClientWidth = 1011
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = 136
    Top = -40
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object rlbTitulo: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 91
      BandType = btHeader
      BeforePrint = rlbTituloBeforePrint
      object rllTitulo: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 91
        Align = faClient
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 437
        Top = 66
        Width = 276
        Height = 19
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
    end
    object rlbConteudo: TRLBand
      Left = 38
      Top = 129
      Width = 718
      Height = 160
      BandType = btColumnHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      BeforePrint = rlbConteudoBeforePrint
      object rllTotalReceitas: TRLLabel
        Left = 16
        Top = 24
        Width = 217
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rllTotalDespesas: TRLLabel
        Left = 16
        Top = 67
        Width = 217
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rllTotalSaldoFinal: TRLLabel
        Left = 544
        Top = 112
        Width = 171
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 94
        Width = 712
        Height = 3
      end
    end
    object rlbSummary: TRLBand
      Left = 38
      Top = 289
      Width = 718
      Height = 344
      BandType = btSummary
      BeforePrint = rlbSummaryBeforePrint
      object rlbObservacoes: TRLLabel
        Left = 0
        Top = 16
        Width = 385
        Height = 16
      end
      object imgGrafico: TRLImage
        Left = 3
        Top = 38
        Width = 240
        Height = 100
      end
      object imgGraficoPizza: TRLImage
        Left = 509
        Top = 38
        Width = 180
        Height = 169
      end
    end
  end
end
