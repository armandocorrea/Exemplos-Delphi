program QS6;

uses
  Vcl.Forms,
  uISubstitui in 'uISubstitui.pas',
  uSubstitui in 'uSubstitui.pas',
  UntPrincipal in 'UntPrincipal.pas' {frmPrincipal},
  uSubstitui2 in 'uSubstitui2.pas',
  uISubstitui2 in 'uISubstitui2.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

