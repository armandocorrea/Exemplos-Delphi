program MinimalApi;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  System.Classes,
  Dext.Web;

type
  TUserIdRequest = record
    [FromRoute('id')]
    Id: Integer;
  end;

  TSearchFilter = record
    [FromQuery('q')]
    Query: string;
    [FromQuery('limit')]
    Limit: Integer;
  end;

  TTenantRequest = record
    [FromHeader('X-Tenant-Id')]
    TenantId: string;
  end;

  TCreateUserRequest = record
    [Required]
    Name: string;
    [StringLength(5, 100)]
    Email: string;
  end;

begin
  TWebHostBuilder.CreateDefault(nil)
    .UseUrls('http://localhost:8080')
    .Configure(procedure(App: IApplicationBuilder)
      begin
        //EndPoints Básicos
        App.MapGet('/hello', procedure(Ctx: IHttpContext)
        begin
          Ctx.Response.Write('Olá, Mundo!');
        end);

        App.MapPost('/data', procedure(Ctx: IHttpContext)
        var
          SR: TStreamReader;
          Body: string;
        begin
          SR := TStreamReader.Create(Ctx.Request.Body);
          try
            Body := SR.ReadToEnd;
            Ctx.Response.Json(Body);
          finally
            SR.Free;
          end;
        end);

        //Parâmetros de Rota [FromRoute]
        TApplicationBuilderExtensions.MapGetR<TUserIdRequest, IResult>(App,
        '/users/{id}',
        function(Request: TUserIdRequest): IResult
        begin
          if Request.Id = 0 then
            Result := Results.NotFound('Usuário não encontrado')
          else
            Result := Results.Ok(Request);
        end);

        App.MapGet('/users2/{id}', procedure(Ctx: IHttpContext)
        begin
          var Id := Ctx.Request.RouteParams['id'];
          Ctx.Response.Write('ID do Usuário: ' + Id);
        end);

        //Parâmetros de Query [FromQuery]
        TApplicationBuilderExtensions.MapGet<TSearchFilter, IResult>(App,
        '/search',
        function(Filter: TSearchFilter): IResult
        begin
          Result := Results.Ok(Format('Busca: %s, Limite: %d', [Filter.Query, Filter.Limit]));
        end);

        //Binding de Headers [FromHeader]
        TApplicationBuilderExtensions.MapGet<TTenantRequest, IResult>(App,
        '/api/data',
        function(Request: TTenantRequest): IResult
        begin
          if Request.TenantId = '' then
            Exit(Results.BadRequest('Header X-Tenant-Id obrigatório'));

          Result := Results.Ok(Request.TenantId);
        end);

        //Binding do Body
        TApplicationBuilderExtensions.MapPost<TCreateUserRequest, IResult>(App,
        '/users',
        function(Request: TCreateUserRequest): IResult
        begin
          Result := Results.Ok(Request);
        end);
      end)
    .Build
    .Run;
end.
