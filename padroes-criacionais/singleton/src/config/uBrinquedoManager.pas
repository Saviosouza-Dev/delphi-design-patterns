unit uBrinquedoManager;

interface
uses
vcl.Dialogs;

type
  TBrinquedoManager = class
    private
      class var FInstance: TBrinquedoManager;
      constructor create;
    public
      class function GetInstance: TBrinquedoManager;
      procedure MostrarBrinquedo(const Nome: string);

  end;

implementation

{ TBrinquedoManager }

constructor TBrinquedoManager.create;
begin
 //// localmente
end;

class function TBrinquedoManager.GetInstance: TBrinquedoManager;
begin
  if FInstance = nil then
  FInstance := TBrinquedoManager.create;
  Result := FInstance;
end;

procedure TBrinquedoManager.MostrarBrinquedo(const Nome: string);
begin
  ShowMessage('Brinquedo Disponível: ' + Nome);
end;

end.
