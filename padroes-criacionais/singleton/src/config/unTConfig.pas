unit unTConfig;

interface

uses
  Vcl.Dialogs;

type
  TConfig = class
  private
    class var FInstance: TConfig;
    constructor Create;
  public
    class function GetInstance: TConfig;
    procedure LoadSettings;
  end;

implementation

{ TConfig }

constructor TConfig.Create;
begin
  // Inicialização privada
end;

class function TConfig.GetInstance: TConfig;
begin
  if FInstance = nil then
    FInstance := TConfig.Create;
  Result := FInstance;
end;

procedure TConfig.LoadSettings;
begin
  ShowMessage('Configurações carregadas!');
end;

end.
