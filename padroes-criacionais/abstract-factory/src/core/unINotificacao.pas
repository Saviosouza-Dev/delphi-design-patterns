unit unINotificacao;

interface

type
  INotificacao = interface
    ['{A1B2C3D4-E5F6-47A8-9B10-112233445566}']
    procedure Enviar;                         //Essa por sua vez fornece o contrato responsavel pelo envio
  end;

implementation

end.
