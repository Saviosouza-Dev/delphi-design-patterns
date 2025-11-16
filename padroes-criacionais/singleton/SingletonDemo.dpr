program SingletonDemo;

uses
  Vcl.Forms,
  unSingleton in 'src\App\unSingleton.pas' {SingletonForm},
  unTConfig in 'src\config\unTConfig.pas',
  unLojaForm in 'src\App\unLojaForm.pas' {LojaForm},
  unBrinquedoManager in 'src\config\unBrinquedoManager.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSingletonForm, SingletonForm);
  Application.CreateForm(TLojaForm, LojaForm);
  Application.Run;
end.
