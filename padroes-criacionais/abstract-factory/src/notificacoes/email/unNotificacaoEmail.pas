unit unNotificacaoEmail;

interface

uses
  unINotificacao,
  System.SysUtils,
  Vcl.Dialogs;

type
  TNotificacaoEmail = class(TInterfacedObject, INotificacao)
  public
  // Método responsável por executar o envio da notificação
    procedure Enviar;
  end;

implementation

procedure TNotificacaoEmail.Enviar;
begin
  ShowMessage('Enviando Email...');
end;

end.
