unit unFactoryBasica;

interface

uses
  unINotificacaoFactory,
  unINotificacao,
  unNotificacaoEmail,
  unNotificacaoSMS,
  unNotificacaoPush;

type
  TFactoryBasica = class(TInterfacedObject, INotificacaoFactory)
  public
   // Cria as notificações da versão básica seguindo assinatura de contrato da interface a qual assina
   // Retorna sempre via INotificacao, garantindo encapsulamento e desacoplamento do cliente
    function CriarEmail: INotificacao;
    function CriarSMS: INotificacao;
    function CriarPush: INotificacao;
  end;

implementation

function TFactoryBasica.CriarEmail: INotificacao;
begin
  Result := TNotificacaoEmail.Create;
end;

function TFactoryBasica.CriarSMS: INotificacao;
begin
  Result := TNotificacaoSMS.Create;
end;

function TFactoryBasica.CriarPush: INotificacao;
begin
  Result := TNotificacaoPush.Create;
end;

end.
