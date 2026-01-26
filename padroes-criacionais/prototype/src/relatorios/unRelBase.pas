unit unRelBase;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Types,
  System.Math,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  RLReport,
  unPrototype;

type
  TFrmRelatorioBase = class(TForm)
    RLReport1: TRLReport;
    rlbTitulo: TRLBand;
    rlbConteudo: TRLBand;
    rlbSummary: TRLBand;

    rllTitulo: TRLLabel;
    rllTotalReceitas: TRLLabel;
    rllTotalDespesas: TRLLabel;
    rllTotalSaldoFinal: TRLLabel;
    rlbObservacoes: TRLLabel;

    imgGrafico: TRLImage;
    imgGraficoPizza: TRLImage;
    RLDraw1: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;

    procedure rlbTituloBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlbConteudoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlbSummaryBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    FRelatorio: IRelatorioLeitura;

    procedure DesenharGraficoReceitasDespesas;
    procedure DesenharGraficoPizza;
  public
    procedure CarregarRelatorio(
      ARelatorio: IRelatorioLeitura
    );
    procedure Preview;
  end;

implementation

{$R *.dfm}

{ ================= PUBLIC ================= }

procedure TFrmRelatorioBase.CarregarRelatorio(
  ARelatorio: IRelatorioLeitura);
begin
  FRelatorio := ARelatorio;
end;

procedure TFrmRelatorioBase.Preview;
begin
  RLReport1.Preview;
end;

{ ================= EVENTOS ================= }

procedure TFrmRelatorioBase.rlbTituloBeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
  rllTitulo.Caption :=
    'Relatório Financeiro - ' + FRelatorio.GetMes;
end;

procedure TFrmRelatorioBase.rlbConteudoBeforePrint(
  Sender: TObject; var PrintIt: Boolean);
var
  Saldo: Currency;
begin
  rllTotalReceitas.Caption :=
    Format('Total Receitas: R$ %n', [FRelatorio.GetReceitas]);

  rllTotalDespesas.Caption :=
    Format('Total Despesas: R$ %n', [FRelatorio.GetDespesas]);

  Saldo :=
    FRelatorio.GetReceitas - FRelatorio.GetDespesas;

  rllTotalSaldoFinal.Caption :=
    Format('Saldo Final: R$ %n', [Saldo]);

  rllTotalReceitas.Font.Color := clBlue;
  rllTotalDespesas.Font.Color := clRed;
  rllTotalSaldoFinal.Font.Color :=
    IfThen(Saldo >= 0, clGreen, clMaroon);
end;

procedure TFrmRelatorioBase.rlbSummaryBeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
  rlbObservacoes.Caption :=
    'Obs: Este relatório mostra a proporção entre Receitas e Despesas do mês de ' +
    FRelatorio.GetMes;

  DesenharGraficoReceitasDespesas;
  DesenharGraficoPizza;
end;

{ ================= GRÁFICOS ================= }

procedure TFrmRelatorioBase.DesenharGraficoReceitasDespesas;
var
  bmp: TBitmap;
  Total: Currency;
  wReceita, wDespesa: Integer;
begin
  Total :=
    FRelatorio.GetReceitas +
    FRelatorio.GetDespesas;

  if Total <= 0 then Exit;

  bmp := TBitmap.Create;
  try
    bmp.SetSize(420, 180);
    bmp.Canvas.Brush.Color := clWhite;
    bmp.Canvas.FillRect(bmp.Canvas.ClipRect);

    wReceita :=
      Round((FRelatorio.GetReceitas / Total) * 300);

    wDespesa :=
      Round((FRelatorio.GetDespesas / Total) * 300);

    bmp.Canvas.Brush.Color := clNavy;
    bmp.Canvas.Rectangle(10, 35, 10 + wReceita, 65);

    bmp.Canvas.Brush.Color := clRed;
    bmp.Canvas.Rectangle(10, 80, 10 + wDespesa, 110);

    imgGrafico.Picture.Assign(bmp);
  finally
    bmp.Free;
  end;
end;

procedure TFrmRelatorioBase.DesenharGraficoPizza;
var
  bmp: TBitmap;
  Total: Currency;
  rect: TRect;
  angReceita: Double;
  cx, cy, raio: Integer;
  xIni, yIni, xFim, yFim: Integer;
begin
  Total :=
    FRelatorio.GetReceitas +
    FRelatorio.GetDespesas;

  if Total <= 0 then Exit;

  bmp := TBitmap.Create;
  try
    bmp.SetSize(180, 200);
    bmp.Canvas.Brush.Color := clWhite;
    bmp.Canvas.FillRect(bmp.Canvas.ClipRect);

    rect := System.Types.Rect(30, 10, 150, 130);

    cx := (rect.Left + rect.Right) div 2;
    cy := (rect.Top + rect.Bottom) div 2;
    raio := (rect.Right - rect.Left) div 2;

    angReceita :=
      (FRelatorio.GetReceitas / Total) * 360;

    xIni := cx + raio;
    yIni := cy;

    xFim := cx + Round(Cos(DegToRad(angReceita)) * raio);
    yFim := cy - Round(Sin(DegToRad(angReceita)) * raio);

    bmp.Canvas.Brush.Color := clNavy;
    bmp.Canvas.Pie(rect.Left, rect.Top, rect.Right, rect.Bottom,
      xIni, yIni, xFim, yFim);

    bmp.Canvas.Brush.Color := clRed;
    bmp.Canvas.Pie(rect.Left, rect.Top, rect.Right, rect.Bottom,
      xFim, yFim, xIni, yIni);

    imgGraficoPizza.Picture.Assign(bmp);
  finally
    bmp.Free;
  end;
end;

end.

