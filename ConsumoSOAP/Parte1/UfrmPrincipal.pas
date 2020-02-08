unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AtendeCliente1, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  ws       : AtendeCliente;
  Endereco : enderecoERP;
begin
  ws := GetAtendeCliente;
  Endereco := ws.consultaCEP(Edit1.Text);

  Memo1.Lines.Clear;
  Memo1.Lines.Add('Bairro: ' + Endereco.bairro);
  Memo1.Lines.Add('Cidade: ' + Endereco.cidade);
end;

end.
