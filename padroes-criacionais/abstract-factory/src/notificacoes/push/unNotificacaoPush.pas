unit unNotificacaoPush;

interface

uses
  unINotificacao,
  System.SysUtils,
  Vcl.Dialogs;

type
  TNotificacaoPush = class(TInterfacedObject, INotificacao)
  public
    procedure Enviar;
  end;

implementation

procedure TNotificacaoPush.Enviar;
begin
  ShowMessage('Enviando Push...');
end;

end.
