program Controller;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  Dext.Web,
  UsersController in 'src\UsersController.pas';

var
  GApp: IWebApplication;

begin
  GApp := TDextApplication.Create;

  try
    GApp
      .Services
      .AddControllers;

    GApp
      .MapControllers
      .Run(8080);
  except
    on E: Exception do
      Writeln('❌ Error: ', E.ClassName, ': ', E.Message);
  end;
end.
