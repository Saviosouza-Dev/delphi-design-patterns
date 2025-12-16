unit unTSMS;

interface

uses
  INotificacaoIntef,
  Vcl.Dialogs;

type
  TSMS = class(TInterfacedObject, INotificacao)
    procedure Enviar(msg: string); // Contrato assinado
  end;

implementation

procedure TSMS.Enviar(msg: string);
begin
  ShowMessage('Notificação: ' + msg);  // Comportamento concreto
end;

end.
