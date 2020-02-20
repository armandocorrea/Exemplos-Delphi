program QS7;

uses
  Vcl.Forms,
  uTroco in 'uTroco.pas',
  uIMaquina in 'uIMaquina.pas',
  uMaquina in 'uMaquina.pas',
  UntPrincipal in 'UntPrincipal.pas' {frmPrincipal},
  ulMaquina2 in 'ulMaquina2.pas',
  uMaquina2 in 'uMaquina2.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

