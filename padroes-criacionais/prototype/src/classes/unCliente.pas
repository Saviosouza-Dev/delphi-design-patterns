unit unCliente;

interface

uses unPrototype;

type
  TCliente = class(TInterfacedObject, IPrototype)
  private
    FNome: string;
    FCPF: string;
  public
    property Nome: string read FNome write FNome;
    property CPF: string read FCPF write FCPF;

    function Clone: IPrototype;
  end;

implementation

function TCliente.Clone: IPrototype;
var
  Novo: TCliente;
begin
  Novo := TCliente.Create;
  Novo.Nome := Self.Nome;
  Novo.CPF := Self.CPF;
  Result := Novo;
end;

end.

