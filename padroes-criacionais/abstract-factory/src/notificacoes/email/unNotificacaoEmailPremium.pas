unit unNotificacaoEmailPremium;

interface

uses
  unINotificacao,
  Vcl.Dialogs;

type
  //Variante Premium da notificação de e-mail. Implementa o contrato (Enviar)INotificacao, mas adiciona comportamento diferenciado
  TNotificacaoEmailPremium = class(TInterfacedObject, INotificacao)
  public
    procedure Enviar;
  end;

implementation

procedure TNotificacaoEmailPremium.Enviar;
begin
  ShowMessage(
    #$1F4E7 + ' Email PREMIUM enviado com sucesso!' + sLineBreak +
    #$2714 + ' Template avançado aplicado' + sLineBreak +
    #$2714 + ' Log detalhado registrado' + sLineBreak +
    #$2714 + ' Entrega com prioridade e rastreio'
  );
end;

end.
