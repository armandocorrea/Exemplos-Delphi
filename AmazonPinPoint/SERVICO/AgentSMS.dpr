program AgentSMS;

uses
  Vcl.SvcMgr,
  Vcl.Forms,
  UntPrincipal in 'UntPrincipal.pas' {LifeVetSMS: TService},
  Interfaces.EnviaSMS in 'Interfaces.EnviaSMS.pas',
  UAmazonPinPoint in 'UAmazonPinPoint.pas',
  UntFormTeste in 'UntFormTeste.pas' {FormTeste},
  UFuncoesExtras in 'UFuncoesExtras.pas';

{$R *.RES}

begin
  // Windows 2003 Server requires StartServiceCtrlDispatcher to be
  // called before CoRegisterClassObject, which can be called indirectly
  // by Application.Initialize. TServiceApplication.DelayInitialize allows
  // Application.Initialize to be called from TService.Main (after
  // StartServiceCtrlDispatcher has been called).
  //
  // Delayed initialization of the Application object may affect
  // events which then occur prior to initialization, such as
  // TService.OnCreate. It is only recommended if the ServiceApplication
  // registers a class object with OLE and is intended for use with
  // Windows 2003 Server.
  //
  // Application.DelayInitialize := True;
  //
  if ParamStr(1) = '-mcdebug' then
  begin
    Vcl.Forms.Application.Initialize;
    Vcl.Forms.Application.MainFormOnTaskbar := True;
    Vcl.Forms.Application.CreateForm(TFormTeste, FormTeste);
    Vcl.Forms.Application.Run;
  end
  else
  begin
    if not Vcl.SvcMgr.Application.DelayInitialize or Vcl.SvcMgr.Application.Installing then
      Vcl.SvcMgr.Application.Initialize;
    Vcl.SvcMgr.Application.CreateForm(TLifeVetSMS, LifeVetSMS);
    Vcl.SvcMgr.Application.Run;
  end;
end.
