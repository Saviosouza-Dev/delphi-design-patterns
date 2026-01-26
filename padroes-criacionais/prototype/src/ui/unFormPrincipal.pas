unit unFormPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  RLReport,

  // ======================================================
  // PROTOTYPE – DEPENDÊNCIAS
  // ======================================================
  unPrototype,
  unRelatorioRegistry,
  unRelatorioModelo,
  unRelBase;

type
  {
    ------------------------------------------------------
    Atua como CLIENTE do padrão Prototype.

    Responsabilidades:
    - Criar e registrar prototypes
    - Solicitar clones ao Registry
    - Configurar os clones
    - Entregar os dados à camada de UI

    Importante:
    - NÃO implementa regras de clonagem
    - NÃO conhece detalhes internos do relatório
    ------------------------------------------------------
  }
  TfrmPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlCentro: TPanel;
    pnlRodape: TPanel;
    pnlVerRels: TPanel;
    pnlSair: TPanel;
    cbcMes: TComboBox;
    Label1: TLabel;

    procedure pnlSairClick(Sender: TObject);
    procedure pnlVerRelsClick(Sender: TObject);
  private

     // Registra todos os prototypes disponíveis no Prototype Manager (Registry).
    procedure RegistrarPrototypes;
    function MesSelecionado: Boolean;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ ======================================================
  REGISTRO DOS PROTOTYPES
  ====================================================== }

procedure TfrmPrincipal.RegistrarPrototypes;
var
  Prototype: IPrototypeRelatorio;
begin
  //  Cria o Prototype base. Aqui ainda NÃO é um clone, é o objeto que servirá de modelo.

  Prototype := TRelatorioFinanceiro.Create;
  Prototype.Configurar(cbcMes.Text, 0, 0);

  //Registra o prototype no Registry usando um identificador.

  TRelatorioRegistry.RegisterPrototype(
    'FINANCEIRO_MENSAL',
    Prototype
  );
end;

function TfrmPrincipal.MesSelecionado: Boolean;
begin
  Result := Trim(cbcMes.Text) <> '';
end;

procedure TfrmPrincipal.pnlSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.pnlVerRelsClick(Sender: TObject);
var
  Relatorio: IPrototypeRelatorio;
  FormRelatorio: TFrmRelatorioBase;
begin
  //   Validação para o usuário gerar o Mês correto
  if not MesSelecionado then
  begin
    MessageDlg('Selecione o mês do relatório.', mtWarning, [mbOK], 0);
    Exit;
  end;

  //   Garante que os prototypes estejam registrados antes do uso.
  RegistrarPrototypes;

  //    Solicita um CLONE ao Registry. O cliente NÃO sabe qual classe concreta será instanciada.

  Relatorio := TRelatorioRegistry.GetClone('FINANCEIRO_MENSAL');

  //   Configura APENAS o clone, nunca o prototype base.

  Relatorio.Configurar(cbcMes.Text, 12500, 8300);

  //    A View consome SOMENTE a interface de leitura, garantindo baixo acoplamento.

  FormRelatorio := TFrmRelatorioBase.Create(nil);
  try
    FormRelatorio.CarregarRelatorio(
      Relatorio as IRelatorioLeitura
    );
    FormRelatorio.Preview;
  finally
    FormRelatorio.Free;
  end;
end;

end.

