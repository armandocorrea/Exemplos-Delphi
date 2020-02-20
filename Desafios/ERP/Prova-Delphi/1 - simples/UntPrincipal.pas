unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtTexto: TEdit;
    lblSubstituido: TLabel;
    btnSubstituir: TButton;
    edtVelho: TEdit;
    edtNovo: TEdit;
    btnSubstitui2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSubstituirClick(Sender: TObject);
    procedure btnSubstitui2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uSubstitui, uSubstitui2;

{$R *.dfm}

procedure TfrmPrincipal.btnSubstitui2Click(Sender: TObject);
var
  sResultado : String;
begin
  //Programação Funcional
  TSubstitui2
    .New
      .Substituir(edtTexto.Text, edtVelho.Text, edtNovo.Text)
      .SetSubstituido(sResultado);

  lblSubstituido.Caption := sResultado;
end;

procedure TfrmPrincipal.btnSubstituirClick(Sender: TObject);
var
  classSubstituir : TSubstitui;
  sNovoTexto : String;
begin
  classSubstituir := TSubstitui.Create;
  try
    sNovoTexto             := classSubstituir.Substituir(edtTexto.Text, edtVelho.Text, edtNovo.Text);
    lblSubstituido.Caption := sNovoTexto;
  finally
    FreeAndNil(classSubstituir);
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  edtTexto.Text := 'O rato roeu a roupa do rei de roma';
  edtVelho.Text := 'ro';
  edtNovo.Text  := 'teste';
end;

end.
