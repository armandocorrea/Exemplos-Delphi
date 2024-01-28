program FluentInterface;

uses
  Vcl.Forms,
  fluent_inteface.view.principal in 'fluent_inteface.view.principal.pas' {frmPrincipal},
  fluent_inteface.pessoa.semfluent in 'fluent_inteface.pessoa.semfluent.pas',
  fluent_inteface.pessoa.comfluent in 'fluent_inteface.pessoa.comfluent.pas',
  fluent_inteface.pessoa.comfluent.injecao in 'fluent_inteface.pessoa.comfluent.injecao.pas',
  fluent_inteface.pessoa.comfluent.seminjecao in 'fluent_inteface.pessoa.comfluent.seminjecao.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
