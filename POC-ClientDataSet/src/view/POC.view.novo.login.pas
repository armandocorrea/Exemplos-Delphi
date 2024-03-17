unit POC.View.Novo.Login;

interface

uses
  System.Classes, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TFrmNovoLogin = class(TForm)
    edtId: TEdit;
    edtName: TEdit;
    edtEmail: TEdit;
    edtPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnSalvar: TButton;
    btnSair: TButton;
    imgNovoLogin: TImage;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    procedure SalvarRegistro;
  end;

var
  FrmNovoLogin: TFrmNovoLogin;

implementation

{$R *.dfm}

uses
  Vcl.Dialogs,
  System.SysUtils,
  POC.Controller.Impl.Controller;

procedure TFrmNovoLogin.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmNovoLogin.btnSalvarClick(Sender: TObject);
begin
  Self.SalvarRegistro;
end;

procedure TFrmNovoLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TFrmNovoLogin.SalvarRegistro;
begin
  var LController := TController.New;
  try
    LController
      .Login
        .Id(StrToIntDef(edtId.Text,0))
        .Name(edtName.Text)
        .Email(edtEmail.Text)
        .Password(edtPassword.Text)
        .Build
          .Insert;

    ShowMessage('Registro salvo com sucesso!');
  except
    on E: Exception do
      raise Exception.Create('Erro ao cadastrar novo login: ' + E.Message);
  end;
end;

end.
