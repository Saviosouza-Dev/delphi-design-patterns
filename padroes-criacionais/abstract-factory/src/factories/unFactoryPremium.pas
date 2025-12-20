unit unFactoryPremium;

interface

uses
  unINotificacaoFactory,
  unINotificacao,
  unNotificacaoEmailPremium,
  unNotificacaoSMSPremium,
  unNotificacaoPushPremium;

type
  TFactoryPremium = class(TInterfacedObject, INotificacaoFactory)
  public
    // Cria as notificações da versão premium seguindo assinatura de contrato da interface a qual assina
    // Retorna sempre via INotificacao, garantindo encapsulamento e desacoplamento do cliente
    function CriarEmail: INotificacao;
    function CriarSMS: INotificacao;
    function CriarPush: INotificacao;
  end;

implementation

function TFactoryPremium.CriarEmail: INotificacao;
begin
  Result := TNotificacaoEmailPremium.Create;
end;

function TFactoryPremium.CriarSMS: INotificacao;
begin
  Result := TNotificacaoSMSPremium.Create;
end;

function TFactoryPremium.CriarPush: INotificacao;
begin
  Result := TNotificacaoPushPremium.Create;
end;

end.
