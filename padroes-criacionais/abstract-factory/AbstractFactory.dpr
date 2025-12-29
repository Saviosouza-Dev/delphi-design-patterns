program AbstractFactory;

uses
  Vcl.Forms,
  unMain in 'src\ui\unMain.pas' {frmAbstractFactory},
  unTemaNotificacao in 'src\tema\unTemaNotificacao.pas',
  unINotificacao in 'src\core\unINotificacao.pas',
  unINotificacaoFactory in 'src\core\unINotificacaoFactory.pas',
  unNotificacaoEmail in 'src\notificacoes\email\unNotificacaoEmail.pas',
  unNotificacaoSMS in 'src\notificacoes\sms\unNotificacaoSMS.pas',
  unNotificacaoPush in 'src\notificacoes\push\unNotificacaoPush.pas',
  unFactoryBasica in 'src\factories\unFactoryBasica.pas',
  unFactoryPremium in 'src\factories\unFactoryPremium.pas',
  unNotificacaoEmailPremium in 'src\notificacoes\email\unNotificacaoEmailPremium.pas',
  unNotificacaoSMSPremium in 'src\notificacoes\sms\unNotificacaoSMSPremium.pas',
  unNotificacaoPushPremium in 'src\notificacoes\push\unNotificacaoPushPremium.pas',
  unControllerFactory in 'src\factories\unControllerFactory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAbstractFactory, frmAbstractFactory);
  Application.Run;
end.
