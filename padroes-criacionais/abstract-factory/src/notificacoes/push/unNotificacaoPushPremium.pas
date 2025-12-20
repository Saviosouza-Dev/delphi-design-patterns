unit unNotificacaoPushPremium;

interface

uses
  unINotificacao,
  Vcl.Dialogs;

type
  //Variante Premium da notificação de Push. Implementa o contrato (Enviar)INotificacao, mas adiciona comportamento diferenciado
  TNotificacaoPushPremium = class(TInterfacedObject, INotificacao)
  public
    procedure Enviar;
  end;

implementation

procedure TNotificacaoPushPremium.Enviar;
begin
  ShowMessage(
    #$1F514 + ' Push PREMIUM enviado com sucesso!' + sLineBreak +
    #$2714 + ' Notificação personalizada exibida' + sLineBreak +
    #$2714 + ' Log detalhado registrado' + sLineBreak +
    #$2714 + ' Entrega em tempo real garantida'
  );
end;

end.

