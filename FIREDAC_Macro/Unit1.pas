unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, Vcl.StdCtrls, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  FireDAC.Comp.DataSet;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    FDConnection1: TFDConnection;
    Button1: TButton;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('SELECT * FROM PRODUTOS {IF !Where} WHERE !Where {FI}');

  if Edit1.Text <> '' then
    FDQuery1.MacroByName('Where').AsRaw := 'DESCRICAO = ' + QuotedStr(Edit1.Text);

  FDQuery1.Open;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDConnection1.Close;
  FDConnection1.Open;

  Button1Click(Sender);
end;

end.
