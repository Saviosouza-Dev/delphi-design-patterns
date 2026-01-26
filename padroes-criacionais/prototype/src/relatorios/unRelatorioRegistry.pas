unit unRelatorioRegistry;

interface

uses
  System.Generics.Collections,
  System.SysUtils,
  unPrototype;

type
  {
    TRelatorioRegistry

    ➜ Atua como o *Prototype Registry* (GoF).

    Responsabilidades:
    - Manter um catálogo de protótipos base
    - Evitar instanciação direta (Create) no cliente
    - Fornecer CLONES sob demanda
    - Centralizar a criação de objetos complexos

    Observação:
    O cliente nunca conhece classes concretas,
    apenas solicita um clone via identificador.
  }
  TRelatorioRegistry = class
  private
  //  Dicionário que armazena os protótipos registrados. A chave representa um identificador semântico(ex: 'FINANCEIRO_MENSAL').
    class var FPrototypes: TDictionary<string, IPrototypeRelatorio>;
  public
  //  Inicializa o Registry.
  //  É executado automaticamente na primeira referência
  // à classe (antes de qualquer método).
    class constructor Create;
  //  Finaliza o Registry liberando os protótipos.
    class destructor Destroy;

{    Registra um protótipo base no catálogo.
     Esse protótipo:
     - NÃO será usado diretamente
     - Servirá apenas como "molde" para clonagem
}
    class procedure RegisterPrototype(const AKey: string; APrototype: IPrototypeRelatorio);

{
      Retorna um CLONE do protótipo registrado.

      Fluxo:
      1. Localiza o protótipo base pelo identificador
      2. Executa Clone
      3. Retorna uma nova instância independente
}
    class function GetClone(const AKey: string): IPrototypeRelatorio;
  end;

implementation

{ ================= TRelatorioRegistry ================= }

class constructor TRelatorioRegistry.Create;
begin
  //  Cria o dicionário de protótipos.  O uso de class constructor garante inicialização automática e segura.
  FPrototypes := TDictionary<string, IPrototypeRelatorio>.Create;
end;

class destructor TRelatorioRegistry.Destroy;
begin
  //  Libera o catálogo de protótipos. Como os valores são interfaces, o gerenciamento de memória é automático.
  FPrototypes.Free;
end;

class procedure TRelatorioRegistry.RegisterPrototype(const AKey: string; APrototype: IPrototypeRelatorio);
begin
  //  Registra ou substitui um protótipo existente. Permite sobrescrever configurações em tempo de execução.
  FPrototypes.AddOrSetValue(AKey, APrototype);
end;

class function TRelatorioRegistry.GetClone(const AKey: string): IPrototypeRelatorio;
begin
  //  Busca o protótipo base. Caso não exista, lança exceção explícita.
  if not FPrototypes.TryGetValue(AKey, Result) then
    raise Exception.CreateFmt(
      'Prototype "%s" não registrado', [AKey]);

  //  Retorna um CLONE do protótipo encontrado. O objeto retornado é totalmente independente do protótipo armazenado no Registry.
  Result := Result.Clone;
end;

end.

