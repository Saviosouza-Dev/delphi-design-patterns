unit unNotificacaoSMS;

interface

uses
  unINotificacao,
  System.SysUtils,
  Vcl.Dialogs;

type
  TNotificacaoSMS = class(TInterfacedObject, INotificacao)
  public
    procedure Enviar;
  end;

implementation

procedure TNotificacaoSMS.Enviar;
begin
  ShowMessage('Enviando SMS...');
end;

end.
