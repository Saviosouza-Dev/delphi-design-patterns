unit unNotificacaoEmail;

interface

uses
  unINotificacao,
  System.SysUtils,
  Vcl.Dialogs;

type
  TNotificacaoEmail = class(TInterfacedObject, INotificacao)
  public
    procedure Enviar;
  end;

implementation

procedure TNotificacaoEmail.Enviar;
begin
  ShowMessage('Enviando Email...');
end;

end.
