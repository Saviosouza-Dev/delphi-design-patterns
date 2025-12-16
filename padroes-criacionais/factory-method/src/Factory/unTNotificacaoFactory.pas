unit unTNotificacaoFactory;

interface

uses
  INotificacaoIntef,
  unTEmail,
  unTSMS,
  unTPush;

type
  TNotificacaoFactory = class
    class function Criar(tipo: string): INotificacao; // Método de fábrica: instancia a classe correta com base no tipo informado.
  end;

implementation

uses
  System.SysUtils;

class function TNotificacaoFactory.Criar(tipo: string): INotificacao;
begin
  tipo := LowerCase(tipo);  //normaliza o texto para evitar erros de comparação

  // decisão da fábrica — identifica o tipo de classe e instancia a ser criada
  if tipo = 'email' then
    Result := TEmail.Create
  else if tipo = 'sms' then
    Result := TSMS.Create
  else if tipo = 'push' then
    Result := TPush.Create
  else
    raise Exception.Create('Tipo de notificação inválido');
end;

end.
