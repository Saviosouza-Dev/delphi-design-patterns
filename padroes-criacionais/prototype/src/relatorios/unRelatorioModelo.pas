unit unRelatorioModelo;

interface

uses
  unPrototype;

{
  ==========================================================
  PADRÃO PROTOTYPE – CONCRETE PROTOTYPE
  ----------------------------------------------------------
  Esta unit contém a IMPLEMENTAÇÃO CONCRETA do Prototype.

  Responsabilidades:
  - Manter o estado do objeto (dados do relatório)
  - Implementar o método Clone()
  - Permitir configuração do objeto
  - Expor dados SOMENTE para leitura à camada de UI
  ==========================================================
}

type
  {
    ----------------------------------------------------------
    TRelatorioFinanceiro
    ----------------------------------------------------------
    Essa é a Classe concreta que representa um relatório financeiro.

    Implementa:
    - IPrototypeRelatorio → criação/clonagem (Prototype)
    - IRelatorioLeitura   → acesso seguro aos dados (UI)

    Importante:
    - O cliente NUNCA instancia esta classe diretamente
    - O cliente NUNCA conhece esta classe
    - O acesso acontece sempre via interfaces
    ----------------------------------------------------------
  }
  TRelatorioFinanceiro = class(TInterfacedObject,IPrototypeRelatorio,IRelatorioLeitura)
  private
    // Estado interno do objeto (dados clonáveis)
    FMes: string;
    FReceitas: Currency;
    FDespesas: Currency;
  public
    // ======================================================
    // PROTOTYPE
    // ======================================================

  //  Cria uma cópia exata do objeto atual. Nenhum conhecimento da classe concreta é exigido por quem chama este método.
    function Clone: IPrototypeRelatorio;

  //  Permite configurar os dados do relatório. Normalmente usado APÓS a clonagem.
    procedure Configurar(const AMes: string; AReceitas, ADespesas: Currency);

    // ======================================================
    // LEITURA (UI)
    // ======================================================

  //  Métodos SOMENTE para leitura. Garantem que a camada de apresentação não altere o estado do objeto.
    function GetMes: string;
    function GetReceitas: Currency;
    function GetDespesas: Currency;
  end;

implementation

{ ==========================================================
  PROTOTYPE – IMPLEMENTAÇÃO
  ========================================================== }

function TRelatorioFinanceiro.Clone: IPrototypeRelatorio;
var
  Novo: TRelatorioFinanceiro;
begin
  //  Cria uma nova instância e copia o estado atual. Esse é o ponto central do padrão Prototype.
  Novo := TRelatorioFinanceiro.Create;
  Novo.FMes := FMes;
  Novo.FReceitas := FReceitas;
  Novo.FDespesas := FDespesas;

  Result := Novo;
end;

procedure TRelatorioFinanceiro.Configurar(
  const AMes: string;
  AReceitas, ADespesas: Currency);
begin
  //   Configuração do estado do objeto. Pode ser usada tanto no prototype base quanto nos clones.
  FMes := AMes;
  FReceitas := AReceitas;
  FDespesas := ADespesas;
end;

{ ==========================================================
  LEITURA – IMPLEMENTAÇÃO
  ========================================================== }

function TRelatorioFinanceiro.GetMes: string;
begin
  Result := FMes;
end;

function TRelatorioFinanceiro.GetReceitas: Currency;
begin
  Result := FReceitas;
end;

function TRelatorioFinanceiro.GetDespesas: Currency;
begin
  Result := FDespesas;
end;

end.

