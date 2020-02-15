unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,

  Soap.SOAPHTTPClient,
  Soap.SOAPHTTPTrans,
  System.Net.HttpClient;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    procedure DoBeforeExecute(const MethodName: string; SOAPRequest: TStream);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
 UntHeaderCustomer, Integracao;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  HttpRio     : THTTPRIO;
  SOAPHeader  : TSOAPHeaderCustomer;
  Integracao  : IWCFIntegracao;
  sResultado  : String;
begin
  HttpRio                 := THTTPRIO.Create(nil);
  HttpRio.OnBeforeExecute := Self.DoBeforeExecute;

  SOAPHeader              := TSOAPHeaderCustomer.Create;
  SOAPHeader.userName     := edtUsuario.Text;
  SOAPHeader.userPassword := edtSenha.Text;

  HttpRio.SOAPHeaders.Send(SOAPHeader);

  Integracao := GetIWCFIntegracao(True, '', HTTPRIO);

  sResultado := Integracao.ConsultarEditalEnviado('123');
  Memo2.Lines.Clear;
  Memo2.Lines.Add(sResultado);
end;

procedure TForm1.DoBeforeExecute(const MethodName: string; SOAPRequest: TStream);
begin
  SOAPRequest.Position := 0;
  Memo1.Lines.Clear;
  Memo1.Lines.LoadFromStream(SOAPRequest);
end;



end.
