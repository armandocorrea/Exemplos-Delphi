program QC2;

uses
  Vcl.Forms,
  uComponente in 'uComponente.pas',
  uFrame in 'uFrame.pas',
  uBotao in 'uBotao.pas',
  uMemo in 'uMemo.pas',
  uLabel in 'uLabel.pas',
  UntPrincipal in 'UntPrincipal.pas' {frmPrincipal};

{$R *.RES}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

