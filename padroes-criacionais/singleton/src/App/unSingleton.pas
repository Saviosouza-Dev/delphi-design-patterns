unit unSingleton;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSingletonForm = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SingletonForm: TSingletonForm;

implementation

uses
  unTConfig;

{$R *.dfm}

procedure TSingletonForm.Button1Click(Sender: TObject);
begin
  TConfig.GetInstance.LoadSettings;
end;

end.
