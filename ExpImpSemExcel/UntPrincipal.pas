unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.CDataExcel, FireDAC.Phys.CDataExcelDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnExportar: TButton;
    btnImportar: TButton;
    grdMain: TDBGrid;
    dtsMain: TDataSource;
    FDConexao: TFDConnection;
    FDPhysCDataExcelDriverLink1: TFDPhysCDataExcelDriverLink;
    FDQryMain: TFDQuery;
    FDStp: TFDStoredProc;
    procedure btnImportarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnExportarClick(Sender: TObject);
var
  sPath : String;
begin
  sPath := ExtractFilePath(Application.ExeName) + 'Temp.xlsx';
  try
    FDConexao.Close;
    FDConexao.Params.Values['ExcelFile'] := sPath;
    FDConexao.Open;
  except
    //Sua mensagem de Exceção
  end;

  sPath := ExtractFilePath(Application.ExeName) + 'Planilha.xlsx';
  try
    FDStp.Close;
    FDStp.ParamByName('file').AsString        := sPath;
    FDStp.ParamByName('sheet').AsString       := 'Dados';
    FDStp.ParamByName('columnnames').AsString := 'NOME,IDADE';
    FDStp.ExecProc;
  except
    //Sua mensagem de Exceção
  end;

  try
    FDConexao.Close;
    FDConexao.Params.Values['ExcelFile'] := sPath;
    FDConexao.Open;
  except
    //Sua mensagem de Exceção
  end;

  try
    FDQryMain.Close;
    FDQryMain.SQL.Clear;
    FDQryMain.SQL.Text := 'INSERT INTO Dados (NOME,IDADE) VALUES ("Armando Corrêa", "28")';
    FDQryMain.ExecSQL;

    FDQryMain.SQL.Clear;
    FDQryMain.SQL.Text := 'INSERT INTO Dados (NOME,IDADE) VALUES ("Delphi na Veia", "60")';
    FDQryMain.ExecSQL;
  except
    //Sua mensagem de Exceção
  end;
end;

procedure TfrmPrincipal.btnImportarClick(Sender: TObject);
var
  sPath : String;
begin
  sPath := ExtractFilePath(Application.ExeName) + 'Planilha.xlsx';

  try
    FDConexao.Close;
    FDConexao.Params.Values['ExcelFile'] := sPath;
    FDConexao.Open;
  except
    //Sua Mensagem de Exceção
  end;

  try
    FDQryMain.Close;
    FDQryMain.SQL.Clear;
    FDQryMain.SQL.Text := 'SELECT * FROM CData.Excel.Dados';
    FDQryMain.Open;
  except
    //Sua Mensagem de Exceção
  end;
end;

end.
