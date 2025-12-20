unit unNotificacaoSMSPremium;

interface

uses
  unINotificacao,
  Vcl.Dialogs;

type
  //Variante Premium da notificação de SMS. Implementa o contrato (Enviar)INotificacao, mas adiciona comportamento diferenciado
  TNotificacaoSMSPremium = class(TInterfacedObject, INotificacao)
  public
    procedure Enviar;
  end;

implementation

procedure TNotificacaoSMSPremium.Enviar;
begin
  ShowMessage(
    #$1F4F2 + ' SMS PREMIUM enviado com sucesso!' + sLineBreak +
    #$2714 + ' Template avançado aplicado' + sLineBreak +
    #$2714 + ' Log detalhado registrado' + sLineBreak +
    #$2714 + ' Entrega com prioridade garantida'
  );
end;

end.
