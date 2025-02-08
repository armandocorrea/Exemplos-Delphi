program StringLiterals;

uses
  Vcl.Forms,
  UfrmStringLiterals in 'UfrmStringLiterals.pas' {frmStringLiterals};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmStringLiterals, frmStringLiterals);
  Application.Run;
end.
