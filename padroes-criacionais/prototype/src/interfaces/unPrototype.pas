unit unPrototype;

interface

{
  ==========================================================
  PADRÃO PROTOTYPE – CONTRATOS
  ----------------------------------------------------------
  Esta unit define SOMENTE abstrações (interfaces).

  Nenhuma regra de negócio, nenhuma implementação concreta.
  Apenas os contratos que serão usados pelo sistema.
  ==========================================================
}

type
  {
    ----------------------------------------------------------
    IPrototypeRelatorio
    ----------------------------------------------------------
    Interface principal do padrão Prototype.

    Responsabilidades:
    - Definir o método Clone(), responsável por criar
      cópias do objeto sem acoplamento à classe concreta.
    - Permitir configuração do estado do objeto clonado.

    O cliente conhece apenas essa interface,
    nunca a classe concreta.
    ----------------------------------------------------------
  }
  IPrototypeRelatorio = interface
    ['{B1E0A7C4-1234-5678-ABCD-1234567890AB}']
    function Clone: IPrototypeRelatorio;
    procedure Configurar(const AMes: string;AReceitas, ADespesas: Currency);
  end;

  {
    ----------------------------------------------------------
    IRelatorioLeitura
    ----------------------------------------------------------
    Interface SOMENTE PARA LEITURA.

    Usada pela camada de UI (Form / Relatório),
    garantindo que a View:

    ✔ NÃO modifique o estado do objeto
    ✔ NÃO dependa da classe concreta
    ✔ Acesse apenas dados necessários para exibição

    Isso reforça:
    - Encapsulamento
    - Princípio da Segregação de Interfaces (ISP)
    - Baixo acoplamento
    ----------------------------------------------------------
  }
  IRelatorioLeitura = interface
    ['{C9D7E321-AAAA-BBBB-CCCC-1234567890AB}']
    function GetMes: string;
    function GetReceitas: Currency;
    function GetDespesas: Currency;
  end;

implementation

end.

