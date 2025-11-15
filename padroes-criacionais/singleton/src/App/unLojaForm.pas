unit unLojaForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TLojaForm = class(TForm)
    btnCarrinho: TButton;
    btnBoneca: TButton;
    procedure btnCarrinhoClick(Sender: TObject);
    procedure btnBonecaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LojaForm: TLojaForm;

implementation
uses
uBrinquedoManager;

{$R *.dfm}

procedure TLojaForm.btnBonecaClick(Sender: TObject);
begin
  TBrinquedoManager.GetInstance.MostrarBrinquedo('Boneca Barbie');
end;

procedure TLojaForm.btnCarrinhoClick(Sender: TObject);
begin
  TBrinquedoManager.GetInstance.MostrarBrinquedo('Carrinho de Corrida');
end;

end.
