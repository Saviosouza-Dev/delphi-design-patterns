unit unFornecedor;

interface

uses unPrototype;

type
  TFornecedor = class(TInterfacedObject, IPrototype)
  private
    FNome: string;
    FCNPJ: string;
  public
    property Nome: string read FNome write FNome;
    property CNPJ: string read FCNPJ write FCNPJ;

    function Clone: IPrototype;
  end;

implementation

function TFornecedor.Clone: IPrototype;
var
  Novo: TFornecedor;
begin
  Novo := TFornecedor.Create;
  Novo.Nome := Self.Nome;
  Novo.CNPJ := Self.CNPJ;
  Result := Novo;
end;

end.

