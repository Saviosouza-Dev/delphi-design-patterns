unit INotificacaoIntef;

interface

type
  INotificacao = interface (IInterface)    // interface base usada pelo Factory Method
    ['{65712FFE-8626-48FC-B3A7-D8E5844CB50F}']    //GUID necessário para referência de interface
    procedure Enviar(msg: string);     //contrato que todas as notificações devem seguir

  end;

implementation

end.

