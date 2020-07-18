unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,

  uRESTDWBase, Vcl.StdCtrls, uDWAbout;

type
  TForm1 = class(TForm)
    RESTServicePooler1: TRESTServicePooler;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UdtmDados;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  RESTServicePooler1.ServerMethodClass := TDataModule2;
  RESTServicePooler1.Active := not RESTServicePooler1.Active;
end;

end.
