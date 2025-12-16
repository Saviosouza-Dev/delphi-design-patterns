unit unTPush;

interface

uses
  INotificacaoIntef,
  Vcl.Dialogs;

type
  TPush = class(TInterfacedObject, INotificacao)
    procedure Enviar(msg: string); // Contrato assinado
  end;

implementation

procedure TPush.Enviar(msg: string);
begin
  ShowMessage('Notificação: ' + msg);  // Comportamento concreto
end;

end.
