program POC_ClientDataSet;

uses
  Vcl.Forms,
  POC.Model.Login in 'src\model\POC.Model.Login.pas',
  POC.Model.Service.Interfaces in 'src\model\service\POC.Model.Service.Interfaces.pas',
  POC.Model.Service.Impl.ServiceData in 'src\model\service\impl\POC.Model.Service.Impl.ServiceData.pas',
  POC.Controller.Interfaces in 'src\controller\POC.Controller.Interfaces.pas',
  POC.Controller.Impl.Controller in 'src\controller\impl\POC.Controller.Impl.Controller.pas',
  POC.Controller.Dto.Impl.Login in 'src\controller\dto\impl\POC.Controller.Dto.Impl.Login.pas',
  POC.Controller.Dto.Interfaces in 'src\controller\dto\POC.Controller.Dto.Interfaces.pas',
  POC.view.login in 'src\view\POC.view.login.pas' {frmLogin},
  POC.view.novo.login in 'src\view\POC.view.novo.login.pas' {FrmNovoLogin},
  POC.view.cadastro.login in 'src\view\POC.view.cadastro.login.pas' {frmCadastroLogin};

{$R *.res}

begin
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
