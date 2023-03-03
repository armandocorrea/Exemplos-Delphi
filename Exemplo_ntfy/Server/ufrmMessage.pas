unit ufrmMessage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    edtTopic: TEdit;
    edtTitle: TEdit;
    edtMessage: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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

{$R *.fmx}

uses USendMessage.Ntfy;

procedure TForm1.Button1Click(Sender: TObject);
var
  xMessage: TMessage;
  xNotification: TNotification;
begin
  xMessage      := TMessage.Create;
  xNotification := TNotification.Create;

  try
    xMessage.Topic   := edtTopic.Text;
    xMessage.Title   := edtTitle.Text;
    xMessage.Message := edtMessage.Text;

    xNotification.Message := xMessage;

    try
      xNotification.SendMessage;
    except
      on e: exception do
        raise Exception.Create('Erro ao enviar mensagem: ' + E.Message);
    end;

    ShowMessage('Mensagem enviada com sucesso!');
  finally
    FreeAndNil(xMessage);
    FreeAndNil(xNotification)
  end;
end;

end.
