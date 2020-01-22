{
EXEMPLO DIDÁTICO
AUTOR: Armando Corrêa Henrique Neto
DATA: 18/01/2020
}

unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnExportar: TButton;
    btnImportar: TButton;
    Memo1: TMemo;
    procedure btnExportarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UntExcel;

procedure TfrmPrincipal.btnExportarClick(Sender: TObject);
var
  ArquivoExcel : TArquivoExcel;
begin
  ArquivoExcel := TArquivoExcel.Create;

  try
    ArquivoExcel.CriarArquivo;
  finally
    FreeAndNil(ArquivoExcel);
  end;
end;

procedure TfrmPrincipal.btnImportarClick(Sender: TObject);
var
  ArquivoExcel : TArquivoExcel;
begin
  ArquivoExcel := TArquivoExcel.Create;

  try
    ArquivoExcel.LerArquivo(Memo1.Lines);
  finally
    FreeAndNil(ArquivoExcel);
  end;

end;

end.
