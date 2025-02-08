unit UfrmStringLiterals;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmStringLiterals = class(TForm)
    FDConnection1: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDQuery1: TFDQuery;
    btnMultilines: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnStringLiteral: TButton;
    procedure btnMultilinesClick(Sender: TObject);
    procedure btnStringLiteralClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExecuteQuery(const aSQL: String);
  public
    { Public declarations }
  end;

var
  frmStringLiterals: TfrmStringLiterals;

implementation

{$R *.dfm}

procedure TfrmStringLiterals.btnMultilinesClick(Sender: TObject);
var
  xMultiLinesFake: String;
  xMultiLines: String;
begin
  (*xMultiLinesFake := 'select * ' +
                     '  from dicas_armandinho.cliente ' +
                     ' where cidade = ''Blumenau''';

  Self.ExecuteQuery(xMultiLinesFake);*)

  xMultiLines :=
  '''
    select *
      from dicas_armandinho.cliente
     where cidade = 'Blumenau'
 ''';

  Self.ExecuteQuery(xMultiLines);
end;

procedure TfrmStringLiterals.btnStringLiteralClick(Sender: TObject);
var
  xStringLiteral: String;
begin
  xStringLiteral := '1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890';
  ShowMessage(xStringLiteral);
end;

procedure TfrmStringLiterals.ExecuteQuery(const aSQL: String);
begin
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add(aSQL);

  FDConnection1.Close;
  FDConnection1.Open;

  FDQuery1.Open;
end;

end.
