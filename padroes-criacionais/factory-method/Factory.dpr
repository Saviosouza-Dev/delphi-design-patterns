program Factory;

uses
  Vcl.Forms,
  Main in 'src\App\Main.pas' {Form1},
  INotificacaoIntef in 'src\Interfaces\INotificacaoIntef.pas',
  unTEmail in 'src\Tipos\unTEmail.pas',
  unTSMS in 'src\Tipos\unTSMS.pas',
  unTPush in 'src\Tipos\unTPush.pas',
  unTNotificacaoFactory in 'src\Factory\unTNotificacaoFactory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
