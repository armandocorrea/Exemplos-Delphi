program Middleware;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  System.Classes,
  System.DateUtils,
  Dext.Web;

var
  App: IWebApplication;

begin
  App := TWebApplication.Create;

  var LWebApp := App.GetBuilder;

  // Tratamento de exceções (deve ser primeiro)
  LWebApp.UseExceptionHandler;

  // Logging
  LWebApp.UseHttpLogging;

  // Autenticação
  var LAuthOptions := LWebApp.CreateJwtOptions('dext-secret-key-must-be-very-long-and-secure-at-least-32-chars');
  LAuthOptions.Issuer := 'dext-issuer';
  LAuthOptions.Audience := 'dext-audience';
  LWebApp.UseJwtAuthentication(LAuthOptions);

  LWebApp.UseBasicAuthentication(
    'Order API',
    function(const Username, Password: string): Boolean
    begin
      Result := (Username = 'admin') and (Password = 'admin');
    end);

  // CORS
  LWebApp.UseCors(CorsOptions);

  // Rate limiting
  LWebApp.UseRateLimiting(RateLimitPolicy.FixedWindow(100, 60));

  // Arquivos estáticos
  LWebApp.UseStaticFiles(LWebApp.CreateStaticFileOptions);

  var LAppBuilder := App.GetApplicationBuilder;

  //Middleware Inline
  LAppBuilder.Use(
    procedure(Ctx: IHttpContext; Next: TRequestDelegate)
    var
      StartTime: TDateTime;
    begin
      StartTime := Now;

      // Antes do endpoint
      WriteLn('Requisição iniciada: ', Ctx.Request.Path);

      Next(Ctx);  // Chama próximo middleware/endpoint

      // Depois do endpoint
      WriteLn('Requisição completada em ', MilliSecondsBetween(Now, StartTime), 'ms');
    end);

  //Middleware de Curto-Circuito
  LAppBuilder.Use(
    procedure(Ctx: IHttpContext; Next: TRequestDelegate)
    var LAPIKey: string;
    begin
      if not Ctx.Request.Headers.TryGetValue('X-API-Key', LApiKey) then
      begin
        Ctx.Response.StatusCode := 401;
        Ctx.Response.Json('{"error": "API key obrigatória"}');
        Exit;  // Não chama Next()
      end;

      Next(Ctx);  // Continua pipeline
    end);

  // Endpoints vêm por último
  LWebApp.MapGet('/api',
    procedure(Context: IHttpContext)
    begin
      Context.Response.Json('{"message": "Dext Framework API", "status": "running", "version": "0.2.0"}');
    end);

  App.Run(8080);
end.
