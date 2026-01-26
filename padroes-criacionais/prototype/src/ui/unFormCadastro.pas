unit unFormCadastro;

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
  Vcl.StdCtrls;

type
  TfrmCadastro = class(TForm)
    procedure btnSalvarClick(Sender: TObject);
    procedure btnClonarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure rbClienteClick(Sender: TObject);
    procedure rbFornecedorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

uses
  unPrototype,
  unCliente,
  unFornecedor;

{$R *.dfm}

procedure TfrmCadastro.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCadastro.btnClonarClick(Sender: TObject);
var
  Original, Copia : IPrototype;
begin
  if rbCliente.Checked then
  begin
    Original := TCliente.Create;
    (Original as TCliente).Nome := edtNome.Text;
    (Original as TCliente).CPF := edtDocumento.Text;

    Copia := Original.Clone;
    ShowMessage('Clone criado: ' + (Copia as TCliente).Nome);
  end
  else
  if rbFornecedor.Checked then
  begin
    Original := TFornecedor.Create;
    (Original as TFornecedor).Nome := edtNome.Text;
    (Original as TFornecedor).CNPJ := edtDocumento.Text;
    Copia := Original.Clone;
    ShowMessage('Clone criado: ' + (Copia as TFornecedor).Nome);
  end;
end;

procedure TfrmCadastro.btnSalvarClick(Sender: TObject);
begin
  ShowMessage('Cadastro salvo vom sucesso');
end;

procedure TfrmCadastro.rbFornecedorClick(Sender: TObject);
begin
  lblDocumento.Caption := 'CNPJ: ';
end;

procedure TfrmCadastro.rbClienteClick(Sender: TObject);
begin
  lblDocumento.Caption := 'CPF: ';
end;

end.
