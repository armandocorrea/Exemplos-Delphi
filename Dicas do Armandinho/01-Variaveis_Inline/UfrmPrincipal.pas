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
    btnComInterface: TButton;
    btnSemInterface: TButton;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnSemInterfaceClick(Sender: TObject);
    procedure btnComInterfaceClick(Sender: TObject);
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
  UCalculadora,
  UCalculadoraSemInterface;

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  edtResultado.Text := TCalculadora.New.Calcular(StrToFloatDef(edtNumero1.Text,0),
                                                 StrToFloatDef(edtNumero2.Text, 0),
                                                 UCalculadora.TOperacao(cmbOperacao.ItemIndex)).ToString;
end;

procedure TfrmPrincipal.btnComInterfaceClick(Sender: TObject);
begin
  var LCalculadora := TCalculadora.New;
  edtResultado.Text := LCalculadora.Calcular(StrToFloatDef(edtNumero1.Text,0),
                                             StrToFloatDef(edtNumero2.Text, 0),
                                             UCalculadora.TOperacao(cmbOperacao.ItemIndex)).ToString;

  //Bloco begin..end
  //Acesso somente dentro do begin end
  if TOperacao(cmbOperacao.ItemIndex) = tpSomar then
  begin
    var LCalculadoraBeginEnd := TCalculadora.New;
    edtResultado.Text := LCalculadoraBeginEnd.Calcular(StrToFloatDef(edtNumero1.Text,0),
                                                       StrToFloatDef(edtNumero2.Text, 0),
                                                       UCalculadora.TOperacao(cmbOperacao.ItemIndex)).ToString;
  end;
end;

procedure TfrmPrincipal.btnSemInterfaceClick(Sender: TObject);
var
  LCalculadoraSemInterface: TCalculadoraSemInterface;
begin
  //Forma Tradicional
  LCalculadoraSemInterface := TCalculadoraSemInterface.Create;
  try
    edtResultado.Text := LCalculadoraSemInterface.Calcular(StrToFloatDef(edtNumero1.Text,0),
                                                           StrToFloatDef(edtNumero2.Text, 0),
                                                           UCalculadoraSemInterface.TOperacao(cmbOperacao.ItemIndex)).ToString;
  finally
    FreeAndNil(LCalculadoraSemInterface);
  end;

  //Nova Forma com Inferencia
  var LCalculadoraInLineSemInferencia: TCalculadoraSemInterface;
  LCalculadoraInLineSemInferencia := TCalculadoraSemInterface.Create;
  try
    edtResultado.Text := LCalculadoraInLineSemInferencia.Calcular(StrToFloatDef(edtNumero1.Text,0),
                                                     StrToFloatDef(edtNumero2.Text, 0),
                                                     UCalculadoraSemInterface.TOperacao(cmbOperacao.ItemIndex)).ToString;
  finally
    FreeAndNil(LCalculadoraInLineSemInferencia);
  end;

  //Nova Forma com Inferencia
  var LCalculadoraInLine := TCalculadoraSemInterface.Create;
  try
    edtResultado.Text := LCalculadoraInLine.Calcular(StrToFloatDef(edtNumero1.Text,0),
                                                     StrToFloatDef(edtNumero2.Text, 0),
                                                     UCalculadoraSemInterface.TOperacao(cmbOperacao.ItemIndex)).ToString;
  finally
    FreeAndNil(LCalculadoraInLine);
  end;

  //Bloco begin..end
  //Acesso somente dentro do begin end
  if TOperacao(cmbOperacao.ItemIndex) = tpSomar then
  begin
    var LCalculadoraBeginEnd := TCalculadoraSemInterface.Create;
    try
      edtResultado.Text := LCalculadoraBeginEnd.Calcular(StrToFloatDef(edtNumero1.Text,0),
                                                         StrToFloatDef(edtNumero2.Text, 0),
                                                         UCalculadoraSemInterface.TOperacao(cmbOperacao.ItemIndex)).ToString;
    finally
      FreeAndNil(LCalculadoraBeginEnd);
    end;
  end;
end;

end.
