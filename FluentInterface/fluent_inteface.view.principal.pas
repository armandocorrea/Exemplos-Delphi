unit fluent_inteface.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnWithoutFluent: TButton;
    btnWithFluent: TButton;
    mmMessage: TMemo;
    btnInjection: TButton;
    btnWithoutInjection: TButton;
    procedure btnWithoutFluentClick(Sender: TObject);
    procedure btnWithFluentClick(Sender: TObject);
    procedure btnInjectionClick(Sender: TObject);
    procedure btnWithoutInjectionClick(Sender: TObject);
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
  fluent_inteface.pessoa.semfluent,
  fluent_inteface.pessoa.comfluent,
  fluent_inteface.pessoa.comfluent.injecao,
  fluent_inteface.pessoa.comfluent.seminjecao;

//Normal
procedure TfrmPrincipal.btnWithoutFluentClick(Sender: TObject);
var
  LPessoa: TPessoa;
begin
  LPessoa := TPessoa.Create;
  try
    LPessoa.Nome := 'Armando';
    LPessoa.SobreNome := 'Neto';
    LPessoa.Idade := 32;

    mmMessage.Clear;
    //mmMessage.Lines.Add(Format('Nome: %s - Sobrenome: %s - Idade: %d',
      //[LPessoa.Nome, LPessoa.SobreNome, LPessoa.Idade]));
    mmMessage.Lines.Add(LPessoa.Frase);
  finally
    FreeAndNil(LPessoa);
  end;
end;

//Com Fluent
procedure TfrmPrincipal.btnWithFluentClick(Sender: TObject);
begin
  mmMessage.Clear;

  mmMessage.Lines.Add(
    TPessoaFluent.New
      .Nome('Armando')
      .SobreNome('Neto')
      .Idade(32)
      .Frase);
end;

//Com Fluent e Injeção
procedure TfrmPrincipal.btnInjectionClick(Sender: TObject);
begin
  mmMessage.Clear;

  mmMessage.Lines.Add(
    TPessoaFluentInjecao.New(
      TDependente.New
        .Nome('Maria')
        .Grau('Filha'))
      .Nome('Armando')
      .SobreNome('Neto')
      .Idade(32)
      .Frase);
end;

//Com Fluent e Sem Injeção
procedure TfrmPrincipal.btnWithoutInjectionClick(Sender: TObject);
begin
  mmMessage.Clear;

  mmMessage.Lines.Add(
    TPessoaFluentSemInjecao.New
      .Nome('Armando')
      .SobreNome('Neto')
      .Idade(32)
      .Dependente
        .Nome('Maria')
        .Grau('Filha')
      .&End
      .Frase);
end;

end.
