unit POC.View.Login;

interface

uses
  System.Classes, Vcl.Controls, Vcl.Forms, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    edtEmail: TEdit;
    edtPassword: TEdit;
    btnEntrar: TButton;
    btnSair: TButton;
    Label3: TLabel;
    Label4: TLabel;
    imgLogin: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    lblNovoCadastro: TLabel;
    lblCadastro: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure lblNovoCadastroClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure lblCadastroClick(Sender: TObject);
  private
    { Private declarations }
    procedure Logar;
  end;

var
  frmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses
  Vcl.Dialogs,
  System.SysUtils,
  POC.Controller.Impl.Controller,
  POC.View.Novo.Login,
  POC.view.cadastro.login;

procedure TFrmLogin.btnEntrarClick(Sender: TObject);
begin
  Self.Logar;
end;

procedure TFrmLogin.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmLogin.lblCadastroClick(Sender: TObject);
begin
  var LCadastroLogin := TFrmCadastroLogin.Create(nil);
  try
    LCadastroLogin.ShowModal;
  finally
    LCadastroLogin.Free;
  end;
end;

procedure TFrmLogin.lblNovoCadastroClick(Sender: TObject);
begin
  var LNovoLogin := TFrmNovoLogin.Create(nil);
  try
    LNovoLogin.ShowModal;
  finally
    LNovoLogin.Free;
  end;
end;

procedure TFrmLogin.Logar;
begin
  var LController := TController.New;
  try
    LController
      .Login
        .Build
          .Search('email', edtEmail.Text);

    if (LController.Login.Id > 0) and (LController.Login.Password = edtPassword.Text) then
        ShowMessage(Format('Seja bem vindo de volta %s', [LController.Login.Name]))
    else
      raise Exception.Create('Usuário ou senha inválida.');
  except
    on e: Exception do
      raise Exception.Create('Erro ao realizar o login: ' + e.Message);
  end;
end;

end.
