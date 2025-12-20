unit unINotificacao;

interface

type
  INotificacao = interface    // Interface central do projeto
    ['{A1B2C3D4-E5F6-47A8-9B10-112233445566}']
    procedure Enviar;                         //contrato único  responsavel pelo envio da notificão
  end;                                        // Todas as notificações concretas (Email, SMS, Push) devem implementar este método


implementation

end.
