unit unMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,

  // Interfaces e fábricas do padrão Abstract Factory
  unINotificacaoFactory,
  unFactoryBasica,
  unFactoryPremium,
  unINotificacao;

type
  TfrmAbstractFactory = class(TForm)
    lblFactoryAtual: TLabel;
    pnlFactoryBasica: TPanel;
    pnlFactoryPremium: TPanel;
    pnlEnviarEmail: TPanel;
    pnlEnviarSMS: TPanel;
    pnlEnviarPush: TPanel;

    // Eventos de clique dos painéis (atuando como botões)
    procedure pnlFactoryBasicaClick(Sender: TObject);
    procedure pnlFactoryPremiumClick(Sender: TObject);
    procedure pnlEnviarEmailClick(Sender: TObject);
    procedure pnlEnviarSMSClick(Sender: TObject);
    procedure pnlEnviarPushClick(Sender: TObject);
  private
    // A fábrica atual selecionada (Básica ou Premium)
    FFactory: INotificacaoFactory;
  public

  end;

var
  frmAbstractFactory: TfrmAbstractFactory;

implementation
uses
  // Unit responsável apenas pelo tema visual (cores)
  unTemaNotificacao;


{$R *.dfm}

procedure TfrmAbstractFactory.pnlEnviarEmailClick(Sender: TObject);
begin
  if Assigned(FFactory) then
    FFactory.CriarEmail.Enviar;
end;

procedure TfrmAbstractFactory.pnlEnviarPushClick(Sender: TObject);
begin
  if assigned(FFactory) then
    FFactory.CriarPush.Enviar;
end;

procedure TfrmAbstractFactory.pnlEnviarSMSClick(Sender: TObject);
begin
  if Assigned(FFactory) then
    FFactory.CriarSMS.Enviar;
end;

procedure TfrmAbstractFactory.pnlFactoryBasicaClick(Sender: TObject);
begin
   lblFactoryAtual.Caption := 'Factory atual: BÁSICA';
    // Instancia a fábrica concreta do tipo Básica
   FFactory := TFactoryBasica.Create;
   TTemaNotificacao.AplicarBasico(pnlEnviarEmail, pnlEnviarSMS, pnlEnviarPush); // Aplica o tema visual da versão básica

end;

procedure TfrmAbstractFactory.pnlFactoryPremiumClick(Sender: TObject);
begin
  lblFactoryAtual.Caption := 'Factory atual: PREMIUM';
  // Instancia a fábrica concreta do tipo Premium
  FFactory := TFactoryPremium.create;
  TTemaNotificacao.AplicarPremium(pnlEnviarEmail, pnlEnviarSMS, pnlEnviarPush) ;  // Aplica o tema visual da versão Premium
end;

end.


