program BasicAuth;

{$APPTYPE CONSOLE}

uses
  Dext.Web;

var
  App: IWebApplication;

begin
  App := TWebApplication.Create;

  App.Builder.UseBasicAuthentication(
    'Meu Realm da API',
    function(const Username, Password: string): Boolean
    begin
      // Validação simples fixa
      Result := (Username = 'admin') and (Password = 'secret');

      // Ou valide contra um serviço/banco de dados
      // Result := UserServiceProvider.Validate(Username, Password);
    end);

  App.Builder.MapGet('/api/privado', procedure(Ctx: IHttpContext)
  begin
    Ctx.Response.Write('Você acessou uma área privada!');
  end)
  .RequireAuthorization;

  App.Run(8080);
end.
