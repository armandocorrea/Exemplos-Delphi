program Cors;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  Dext.Web,
  Dext.Web.Cors;

begin
  var App: IWebApplication := TDextApplication.Create;
  var Builder := App.Builder;

  {Builder.UseCors(
    CorsOptions
      .Origins(['*'])
      .Methods(['*'])
      .Headers(['*'])
      .Build);}

  Builder.UseCors(
    CorsOptions
      .Origins(['http://localhost:5500'])
      .Methods(['GET', 'POST', 'DELETE', 'OPTIONS'])
      .Headers(['Content-type'])
      .Build);

  Builder.MapGet('/api/cors', procedure(Ctx: IHttpContext)
    begin
      Ctx.Response.Write('CORS - Dext Web Framework!');
    end);

  App.Run(8080);
end.
