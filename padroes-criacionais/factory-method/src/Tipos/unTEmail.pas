unit unTEmail;

interface

uses
  INotificacaoIntef,
  Vcl.Dialogs;

type
  TEmail = class(TInterfacedObject, INotificacao)
    procedure Enviar(msg: string); // Contrato assinado
  end;

implementation

procedure TEmail.Enviar(msg: string);
begin
  ShowMessage('Notificação: ' + msg);   // Comportamento concreto
end;

end.

