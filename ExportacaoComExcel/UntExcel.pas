{
EXEMPLO DIDÁTICO
AUTOR: Armando Corrêa Henrique Neto
DATA: 18/01/2020
}

unit UntExcel;

interface

uses
  classes, ComObj, System.SysUtils, Vcl.Forms, System.Variants;

type
  TArquivoExcel = class
    private
      FPlanilhaExcel  : Olevariant;
      FAbaExcel       : Olevariant;
      FCaminhoArquivo : String;

      function  AbrirArquivo: Boolean;
      procedure CriarArquivoLeitura;
      function  LerValores: TStringList;
    public
      procedure CriarArquivo;
      procedure LerArquivo(Valor: TStrings);
  end;

implementation

uses
  Vcl.Dialogs, System.UITypes;

{ TArquivoExcel }

procedure TArquivoExcel.CriarArquivo;
begin
  try
    FPlanilhaExcel := CreateOleObject('Excel.Application');
    FPlanilhaExcel.Visible := False;
    FPlanilhaExcel.WorkBooks.Add;

    FPlanilhaExcel.Workbooks[1].Sheets[1].Cells[1, 1] := 'NOME';
    FPlanilhaExcel.Workbooks[1].Sheets[1].Cells[1, 2] := 'IDADE';

    FPlanilhaExcel.Workbooks[1].Sheets[1].Cells[2, 1] := 'ARMANDO CORRÊA';
    FPlanilhaExcel.Workbooks[1].Sheets[1].Cells[2, 2] := '28';

    FPlanilhaExcel.Workbooks[1].Sheets[1].Cells[3, 1] := 'DELPHI NA VEIA';
    FPlanilhaExcel.Workbooks[1].Sheets[1].Cells[3, 2] := '60';

    FPlanilhaExcel.Workbooks[1].SaveAs(ExtractFilePath(Application.ExeName) + 'Planilha.xls');

    if Messagedlg('Deseja abrir o arquivo exportado?', mtInformation, [mbYes, mbNo], 0) = mrYes then
      FPlanilhaExcel.Visible := True
    else
      FPlanilhaExcel.quit;
  except
    on E: Exception do
    begin
      raise Exception.Create('Erro ao criar arquivo excel :' + E.Message);
    end;
  end;
end;

procedure TArquivoExcel.LerArquivo(Valor: TStrings);
begin
  Self.AbrirArquivo;
  Valor.AddStrings(Self.LerValores);
end;

function TArquivoExcel.AbrirArquivo: Boolean;
var
  vDlgOpen: TOpenDialog;
begin
  Result := False;

  vDlgOpen := TOpenDialog.Create(nil);
  vDlgOpen.DefaultExt := '.xls';
  vDlgOpen.Title := 'Abrir Arquivo';
  vDlgOpen.Filter := 'Arquivos do Excel(*.xls;*.xlsx)|*.xls;*.xlsx';

  if vDlgOpen.Execute then
  begin
    FCaminhoArquivo := vDlgOpen.FileName;
    Self.CriarArquivoLeitura;
    Result := True;
  end;

  FreeAndNil(vDlgOpen);
end;

procedure TArquivoExcel.CriarArquivoLeitura;
const
  xlCellTypeLastCell = $0000000B;
begin
  if (not FileExists(FCaminhoArquivo)) then
  begin
    MessageDlg('Arquivo não existe!', mtInformation, [mbOK], 0);
  end;

  try
    FPlanilhaExcel := CreateOleObject('Excel.Application');
    FPlanilhaExcel.Visible := False;
    FPlanilhaExcel.WorkBooks.Open(FCaminhoArquivo);
    FAbaExcel := FPlanilhaExcel.WorkSheets[1];
    FAbaExcel.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
  except
    on E: Exception do
    begin
      raise Exception.Create('Erro ao criar arquivo excel :' + E.Message);
    end;
  end;
end;

function TArquivoExcel.LerValores: TStringList;
var
  I      : Integer;
  sNome  : String;
  sIdade : String;
begin
  Result := TStringList.Create;

  for I := 0 to Pred(Integer(FPlanilhaExcel.ActiveCell.Row)) do
  begin
    sNome  := FAbaExcel.Cells[I+1, 1].Text;
    sIdade := FAbaExcel.Cells[I+1, 2].Text;

    Result.Add('Nome : ' + sNome + ' - Idade : ' + sIdade);
  end;
end;

end.
