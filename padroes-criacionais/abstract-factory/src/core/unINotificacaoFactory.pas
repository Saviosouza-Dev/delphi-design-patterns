unit unINotificacaoFactory;

interface

uses unINotificacao;
   //Esta é a interface que define o contrato da *Abstract Factory*.

type
  INotificacaoFactory = interface
    ['{99887766-5544-3322-1100-AABBCCDDEEFF}']
    function CriarEmail: INotificacao;
    function CriarSMS: INotificacao;
    function CriarPush: INotificacao;
  end;

implementation

end.
