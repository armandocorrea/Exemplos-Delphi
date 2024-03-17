unit POC.view.cadastro.login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,

  POC.Controller.Interfaces;

type
  TfrmCadastroLogin = class(TForm)
    imgNovoLogin: TImage;
    dbLogin: TDBGrid;
    dsLogin: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FController: IController;
  public
    { Public declarations }
  end;

var
  frmCadastroLogin: TfrmCadastroLogin;

implementation

uses
  POC.Controller.Impl.Controller;

{$R *.dfm}

procedure TfrmCadastroLogin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadastroLogin.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  try
    dsLogin.DataSet := FController.Login.Build.Retrieve;
  except
    on E: Exception do
      raise Exception.Create('Erro ao recuperar cadastro de login: ' +
        E.Message);
  end;
end;

end.
