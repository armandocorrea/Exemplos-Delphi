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

uses UCalculadora;

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  edtResultado.Text :=
    TCalculadora.New.Calcular(StrToIntDef(edtNumero1.Text,0),
                              StrToIntDef(edtNumero2.Text, 0),
                              TOperacao(cmbOperacao.ItemIndex)).ToString;
end;

end.
