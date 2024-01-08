program Calculadora;

uses
  Vcl.Forms,
  UCalculadora in 'src\classes\UCalculadora.pas',
  UfrmPrincipal in 'src\view\UfrmPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
