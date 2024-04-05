program ORM;

uses
  Vcl.Forms,
  orm.view.principal in 'src\view\orm.view.principal.pas' {frmPrincipal},
  orm.model.service.interfaces in 'src\model\service\orm.model.service.interfaces.pas',
  orm.model.service.impl.simpleorm in 'src\model\service\impl\orm.model.service.impl.simpleorm.pas',
  orm.model.resource.interfaces in 'src\model\resource\orm.model.resource.interfaces.pas',
  orm.model.resource.impl.configuration in 'src\model\resource\impl\orm.model.resource.impl.configuration.pas',
  orm.model.resource.impl.connection.firedac in 'src\model\resource\impl\orm.model.resource.impl.connection.firedac.pas',
  orm.model.resource.impl.factory in 'src\model\resource\impl\orm.model.resource.impl.factory.pas',
  orm.model.service.impl.ormbr in 'src\model\service\impl\orm.model.service.impl.ormbr.pas',
  orm.model.entity.usuario.ormbr in 'src\model\entity\orm.model.entity.usuario.ormbr.pas',
  orm.model.entity.usuario.simpleorm in 'src\model\entity\orm.model.entity.usuario.simpleorm.pas',
  orm.controller.dto.interfaces in 'src\controller\dto\orm.controller.dto.interfaces.pas',
  orm.controller.dto.impl.usuario.ormbr in 'src\controller\dto\impl\orm.controller.dto.impl.usuario.ormbr.pas',
  orm.controller.dto.impl.usuario.simpleorm in 'src\controller\dto\impl\orm.controller.dto.impl.usuario.simpleorm.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
