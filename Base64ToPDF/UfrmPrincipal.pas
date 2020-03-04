unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,

  ShellApi,
  IdCoderMIME;

type
  TfrmPrincipal = class(TForm)
    mmPDF: TMemo;
    Label1: TLabel;
    btnBase64ToPDF: TButton;
    procedure btnBase64ToPDFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnBase64ToPDFClick(Sender: TObject);
var
  lsString : TStrings;
  sPDF     : WideString;
  sStream  : TMemoryStream;
  utf8     : UTF8String;
  decoder  : TIdDecoderMIME;
begin
  try
    Deletefile('Boleto.PDF');

    lsString := TStringList.Create;
    sPDF := mmPDF.Lines.Text;

    decoder := TIdDecoderMIME.Create;
    sStream := TMemoryStream.Create;

    decoder.DecodeStream(sPDF, sStream);
    SetString(utf8, PChar(sStream.Memory), sStream.Size);
    sStream.SaveToFile('Boleto.PDF');

    ShellExecute(handle,'open', PChar('Boleto.PDF'), '','',SW_SHOWNORMAL);
  finally
    lsString.Free;
    decoder.Free;
    sStream.Free;
  end;
end;

end.
