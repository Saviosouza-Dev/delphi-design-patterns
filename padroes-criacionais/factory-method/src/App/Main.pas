unit Main;

interface

uses
 Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Buttons,
  INotificacaoIntef, System.Classes, Vcl.Controls;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  unTNotificacaoFactory;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  notificacao: INotificacao;  // Variável interface que receberá o objeto criado pela Factory

begin
  //chamada ao Factory Method — o fluxo agora vai para a fábrica
  notificacao := TNotificacaoFactory.Criar('Email');
  //polimorfismo — chamamos Enviar sem saber qual classe concreta foi criada
  notificacao.Enviar('Olá, Savio! Seu email foi enviado.');
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
  notificacao: INotificacao;
begin
  notificacao := TNotificacaoFactory.Criar('SMS');
  notificacao.Enviar('SMS enviado com sucesso.');
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
  notificacao: INotificacao;
begin
  notificacao := TNotificacaoFactory.Criar('Push');
  notificacao.Enviar('Push concluído com sucesso.');

end;

end.
