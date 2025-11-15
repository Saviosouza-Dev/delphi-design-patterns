unit unSingleton;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TSingletonForm = class(TForm)
    Button1: TButton;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SingletonForm: TSingletonForm;

implementation

uses
  unTConfig,
  unLojaForm;

{$R *.dfm}

procedure TSingletonForm.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TlojaForm, LojaForm);
  LojaForm.show;
end;

procedure TSingletonForm.Button1Click(Sender: TObject);
begin
  TConfig.GetInstance.LoadSettings;
end;

end.
