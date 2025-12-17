unit unTemaNotificacao;

interface

uses
  Vcl.ExtCtrls, Vcl.Graphics;

type
  TTemaNotificacao = class
  public
    class procedure AplicarBasico(pnlEmail, pnlSMS, pnlPush: TPanel);
    class procedure AplicarPremium(pnlEmail, pnlSMS, pnlPush: TPanel);
  end;

implementation

class procedure TTemaNotificacao.AplicarBasico(pnlEmail, pnlSMS, pnlPush: TPanel);
begin
  pnlEmail.Color := clSkyBlue;   // Aplica o tema visual da versão básica
  pnlSMS.Color   := clSkyBlue;
  pnlPush.Color  := clSkyBlue;
end;

class procedure TTemaNotificacao.AplicarPremium(pnlEmail, pnlSMS, pnlPush: TPanel);
begin
  pnlEmail.Color := clMoneyGreen;  // Aplica o tema visual da versão Premium
  pnlSMS.Color   := clMoneyGreen;
  pnlPush.Color  := clMoneyGreen;
end;

end.
