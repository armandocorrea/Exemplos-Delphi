program ComExcel;

uses
  Vcl.Forms,
  UntPrincipal in 'UntPrincipal.pas' {frmPrincipal},
  UntExcel in 'UntExcel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
