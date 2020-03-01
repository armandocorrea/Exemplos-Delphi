unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    btnObterToken: TButton;
    edtClientID: TEdit;
    edtClientSecret: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    mmToken: TMemo;
    btnConsumirRest: TButton;
    mmBody: TMemo;
    edtToken: TEdit;
    Label4: TLabel;
    mmResposta: TMemo;
    Label5: TLabel;
    edtBaseURL: TEdit;
    Label6: TLabel;
    edtBaseURL2: TEdit;
    procedure btnObterTokenClick(Sender: TObject);
    procedure btnConsumirRestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UOAuth2;

procedure TfrmPrincipal.btnConsumirRestClick(Sender: TObject);
var
  OAuth2     : TOAuth2;
  sResultado : String;
begin
  OAuth2 := TOAuth2.create(edtBaseURL2.Text);
  try
    sResultado := OAuth2.consumirEndPoint(0, 'body', mmBody.Lines.Text, edtToken.Text);
    mmResposta.Lines.Clear;
    mmResposta.Lines.Add(sResultado);
  finally
    OAuth2.Free;
  end;
end;

procedure TfrmPrincipal.btnObterTokenClick(Sender: TObject);
var
  OAuth2     : TOAuth2;
  sResultado : String;
begin
  OAuth2 := TOAuth2.create(edtBaseURL.Text);
  try
    sResultado := OAuth2.obterToken(edtClientID.Text, edtClientSecret.Text, '');
    mmToken.Lines.Clear;
    mmToken.Lines.Add(sResultado);
  finally
    OAuth2.Free;
  end;
end;

end.
