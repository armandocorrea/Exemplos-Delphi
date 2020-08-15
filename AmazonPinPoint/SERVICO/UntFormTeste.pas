unit UntFormTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormTeste = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTeste: TFormTeste;

implementation

uses
  UFuncoesExtras, Interfaces.EnviaSMS, UAmazonPinPoint;

{$R *.dfm}

procedure TFormTeste.Button1Click(Sender: TObject);
var
  xEnviaSMS: IEnviaSMS;
  xResultado : String;
begin
  {TFuncoesExtras.Processa_Ini();

  ShowMessage(Parametros.TempoTimer);

  TFuncoesExtras.Grava_Log('Serviço Email iniciado...');}

  xEnviaSMS := TAmazonPinPoint.Create;
  xEnviaSMS
    .NumeroCelularValido('') // numero_celular com o código do pais, brasil +55
    .SetMensagem('') //Olá Mundo
    .SetRegiao('') //us-east-1
    .SetAppId('') // id do projeto
    .SetAccessKey('') //Access key
    .SetSecretKey('') //Secret Key
    .EnviaSMS(xResultado);

  ShowMessage(xResultado);
end;

end.
