program Server_Ntfy;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmMessage in 'ufrmMessage.pas' {Form1},
  USendMessage.Ntfy in 'USendMessage.Ntfy.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
