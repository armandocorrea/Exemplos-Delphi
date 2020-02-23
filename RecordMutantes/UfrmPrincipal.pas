unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFuncionario = record
    Nome      : string[50];
    Profissao : string[60];
    case CLT : Boolean of
      True  : (ValorCLT : Currency);
      False : (ValorHora : Currency);
  end;

  TfrmPrincipal = class(TForm)
    btnAssalariado: TButton;
    btnHorista: TButton;
    Label1: TLabel;
    procedure btnAssalariadoClick(Sender: TObject);
    procedure btnHoristaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnAssalariadoClick(Sender: TObject);
var
  rFuncionario : TFuncionario;
begin
  rFuncionario.Nome      := 'Armando Corrêa';
  rFuncionario.Profissao := 'Programador Delphi';
  rFuncionario.CLT       := True;
  rFuncionario.ValorCLT  := 1000.00;

  ShowMessage(CurrToStr(rFuncionario.ValorCLT));
  //ShowMessage(CurrToStr(rFuncionario.ValorHora));
end;

procedure TfrmPrincipal.btnHoristaClick(Sender: TObject);
var
  rFuncionario : TFuncionario;
begin
  rFuncionario.Nome      := 'Armando Corrêa';
  rFuncionario.Profissao := 'Programador Delphi';
  rFuncionario.CLT       := True;
  rFuncionario.ValorHora := 5;

  ShowMessage(CurrToStr(rFuncionario.ValorHora));
  //ShowMessage(CurrToStr(rFuncionario.ValorCLT));
end;

end.
