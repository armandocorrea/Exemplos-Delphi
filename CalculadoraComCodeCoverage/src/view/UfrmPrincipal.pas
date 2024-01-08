unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtResultado: TEdit;
    btnCalcular: TButton;
    cmbOperacao: TComboBox;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  UCalculadora;

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  var LNumero1: Double;
  if not TryStrToFloat(edtNumero1.Text, LNumero1) then
    raise Exception.Create('Número 1 inválido.');

  var LNumero2: Double;
  if not TryStrToFloat(edtNumero2.Text, LNumero2) then
    raise Exception.Create('Número 2 inválido.');

  var LCalculadora := TCalculadora.New;
  case UCalculadora.TOperacao(cmbOperacao.ItemIndex) of
    tpSomar:
      edtResultado.Text := LCalculadora.Somar(LNumero1, LNumero2).ToString;
    tpSubtrair:
      edtResultado.Text := LCalculadora.Subtrair(LNumero1, LNumero2).ToString;
    tpMultiplicar:
      edtResultado.Text := LCalculadora.Multiplicar(LNumero1, LNumero2).ToString;
    tpDividir:
      edtResultado.Text := LCalculadora.Dividir(LNumero1, LNumero2).ToString;
  end;
end;

end.
