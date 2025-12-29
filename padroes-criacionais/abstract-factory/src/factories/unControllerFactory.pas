unit unControllerFactory;

interface

uses
  unINotificacaoFactory,
  unFactoryBasica,
  unFactoryPremium;

type
  // Enum para definir os tipos de fábrica disponíveis
  TTipoFactory = (tfBasica, tfPremium);

  TControllerFactory = class
  public
    class function ObterFactory(tipo: TTipoFactory): INotificacaoFactory;
  end;

implementation

{ TControllerFactory }

class function TControllerFactory.ObterFactory(tipo: TTipoFactory): INotificacaoFactory;
begin
  case tipo of
    tfPremium: Result := TFactoryPremium.Create;
    tfBasica:  Result := TFactoryBasica.Create;
  end;
end;

end.
