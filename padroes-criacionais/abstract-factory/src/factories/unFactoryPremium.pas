unit unFactoryPremium;

interface

uses
  unINotificacaoFactory,
  unINotificacao,
  unNotificacaoEmail,
  unNotificacaoSMS,
  unNotificacaoPush;

type
  TFactoryPremium = class(TInterfacedObject, INotificacaoFactory)
  public
    // Cria as notificações da versão básica seguindo assinatura de contrato da interface a qual assina
    function CriarEmail: INotificacao;
    function CriarSMS: INotificacao;
    function CriarPush: INotificacao;
  end;

implementation

function TFactoryPremium.CriarEmail: INotificacao;
begin
  Result := TNotificacaoEmail.Create;
end;

function TFactoryPremium.CriarSMS: INotificacao;
begin
  Result := TNotificacaoSMS.Create;
end;

function TFactoryPremium.CriarPush: INotificacao;
begin
  Result := TNotificacaoPush.Create;
end;

end.
