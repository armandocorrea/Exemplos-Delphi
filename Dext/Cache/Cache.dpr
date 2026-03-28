program Cache;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  Dext.Web,
  Dext.Caching,
  Products in 'Products.pas';

var
  GApp: IWebApplication;

begin
  (*TWebHostBuilder.CreateDefault(nil)
    .UseUrls('http://localhost:8080')
    .Configure(procedure(App: IApplicationBuilder)
      begin
        //var options := TResponseCacheOptions.Create(30);
        //options.CacheableMethods := ['GET'];

        TApplicationBuilderCacheExtensions.UseResponseCache(App, 30);
        //TApplicationBuilderCacheExtensions.UseResponseCache(App, options);

        TApplicationBuilderExtensions.MapGetR<IResult>(
          App,
          '/api/noticias',
          function: IResult
          begin
            WriteLn('  Generating fresh response for /api/noticias');
            Result := Results.Ok(Format('{"time":"%s","message":"This response is cached for 30s"}',
              [DateTimeToStr(Now)]));
          end);
      end)
    .Build
    .Run;*)


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
