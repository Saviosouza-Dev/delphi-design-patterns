unit unINotificacaoFactory;

interface

uses unINotificacao;
// Esse é o papel da Abstract Factory: definir uma família de objetos relacionados sem especificar suas classes concretas

type
  INotificacaoFactory = interface
    ['{99887766-5544-3322-1100-AABBCCDDEEFF}']
    function CriarEmail: INotificacao;    // Métodos que implemetam a interface central(INotificacao)
    function CriarSMS: INotificacao;
    function CriarPush: INotificacao;
    // Cada fábrica concreta (Básica, Premium) implementa esses métodos retornando suas próprias versões de notificações
  end;

implementation

end.
