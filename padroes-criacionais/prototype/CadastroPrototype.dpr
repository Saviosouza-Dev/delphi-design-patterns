program CadastroPrototype;

uses
  Vcl.Forms,
  unFormPrincipal in 'src\ui\unFormPrincipal.pas' {frmPrincipal},
  unPrototype in 'src\interfaces\unPrototype.pas',
  unRelBase in 'src\relatorios\unRelBase.pas' {FrmRelatorioBase},
  unRelatorioModelo in 'src\relatorios\unRelatorioModelo.pas',
  unRelatorioRegistry in 'src\relatorios\unRelatorioRegistry.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
