program Swagger;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  Dext.Web,
  Dext.Utils,
  Startup in 'Startup.pas',
  Users in 'Users.pas';

begin
  SetConsoleCharSet;
  try
    Writeln('🚀 Starting Dext Swagger Example...');
    Writeln('');

    var App: IWebApplication := TDextApplication.Create;
    //App.UseStartup(TStartup.Create);

    App.MapControllers;

    var Options := TOpenAPIOptions.Default;
    Options.Title := 'Dext Example API';
    Options.Description := 'A sample API demonstrating Dext Framework with Swagger/OpenAPI integration';
    Options.Version := '1.0.0';
    Options.ContactName := 'Dext Team';
    Options.ContactEmail := 'contact@dext.dev';
    Options.LicenseName := 'MIT';
    Options.LicenseUrl := 'https://opensource.org/licenses/MIT';

    Options.WithServer('http://localhost:8080', 'Development server');
    Options.WithBearerAuth('JWT', 'Enter JWT token in format: Bearer {token}');
    Options.WithApiKeyAuth('X-API-Key', aklHeader, 'API Key for administrative access');
    App.Builder.UseSwagger(Options);

    Writeln('');
    Writeln('✅ Server configured successfully!');
    Writeln('');
    Writeln('📖 Swagger UI: http://localhost:8080/swagger');
    Writeln('');

    App.Services.AddControllers;

    App.Run(8080);

    ConsolePause;
    App.Stop;

  except
    on E: Exception do
    begin
      Writeln('❌ Error: ', E.Message);
      Writeln('Press Enter to exit...');
      Readln;
    end;
  end;
end.
