program SingletonDemo;

uses
  Vcl.Forms,
  unSingleton in 'src\App\unSingleton.pas' {SingletonForm},
  unTConfig in 'src\config\unTConfig.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSingletonForm, SingletonForm);
  Application.Run;
end.
