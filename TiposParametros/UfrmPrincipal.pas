unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnVar: TButton;
    btnConst: TButton;
    btnOut: TButton;
    edtValor: TEdit;
    edtResultado: TEdit;
    btnPadrao: TButton;
    procedure btnPadraoClick(Sender: TObject);
    procedure btnConstClick(Sender: TObject);
    procedure btnVarClick(Sender: TObject);
    procedure btnOutClick(Sender: TObject);
  private
    { Private declarations }

    procedure MetodoParametroPadrao(aValor: String);
    procedure MetodoParametroConst(const aValor: String);
    procedure MetodoParametroVar(var aValor: String);
    procedure MetodoParametroOut(out aValor: String);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnConstClick(Sender: TObject);
begin
  var aValor: String;
  aValor := edtValor.Text;

  Self.MetodoParametroConst(aValor);

  ShowMessage(aValor);
end;

procedure TfrmPrincipal.btnOutClick(Sender: TObject);
begin
  var aValor: String;
  aValor := edtValor.Text;

  Self.MetodoParametroOut(aValor);

  ShowMessage(aValor);
end;

procedure TfrmPrincipal.btnPadraoClick(Sender: TObject);
begin
  var aValor: String;
  aValor := edtValor.Text;

  Self.MetodoParametroPadrao(edtValor.Text);

  ShowMessage(aValor);
end;

procedure TfrmPrincipal.btnVarClick(Sender: TObject);
begin
  var aValor: String;
  aValor := edtValor.Text;

  Self.MetodoParametroVar(aValor);

  ShowMessage(aValor);
end;

//Permite que seu valor seja alterado dentro do m�todo
//Seu valor inicial n�o � descartado
//Mas n�o � passagem por referencia
procedure TfrmPrincipal.MetodoParametroPadrao(aValor: String);
begin
  //aValor := 'Armando - Desenvolvedor Delphi';
  aValor := aValor + ' - Desenvolvedor Delphi';

  edtResultado.Text := aValor;
end;

//Const n�o pode ter seu valor alterado dentro do m�todo
//Otimiza o compilador
procedure TfrmPrincipal.MetodoParametroConst(const aValor: String);
begin
  //aValor := 10;
  edtResultado.Text := aValor;
end;

//Var passagem por referencia. Tudo o que for alterado no seu valor ser� refletido externamente
//Seu valor inicial n�o � descartado
procedure TfrmPrincipal.MetodoParametroVar(var aValor: String);
begin
  aValor := aValor + ' - Desenvolvedor';
  edtResultado.Text := aValor;
end;

//Out passagem por referencia. Por�m seu valor inicial � descartado
procedure TfrmPrincipal.MetodoParametroOut(out aValor: String);
begin
  aValor := ' - Desenvolvedor';
  edtResultado.Text := aValor;
end;

end.
