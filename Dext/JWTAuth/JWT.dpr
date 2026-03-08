program JWT;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  Dext.Web,
  Dext.Auth.JWT,
  Dext.Auth.Middleware;

type
  TLoginRequest = record
    Username: string;
    Password: string;
  end;

var
  App: IWebApplication;

begin
  App := TWebApplication.Create;
  var LBuilder := App.GetApplicationBuilder;

  var LSecretKey := 'sua-chave-secreta-deve-ter-pelo-menos-32-caracteres';
  var LJwtHandler := TJwtTokenHandler.Create(LSecretkey,
    'DextAuthDemo', 'DextAPI', 60);

  TApplicationBuilderJwtExtensions.UseJwtAuthentication(LBuilder, TJwtOptions.Create(LSecretKey));

  // Login
  TApplicationBuilderExtensions.MapPostR<TLoginRequest, IResult>(
    LBuilder,
    '/login',
    function(Request: TLoginRequest): IResult
    begin
      // Validar credenciais (substitua por validação real)
      if (Request.Username <> 'admin') or (Request.Password <> 'secret') then
      begin
        Result := Results.BadRequest('Invalid username or password');
        Exit;
      end;

      // Construir claims
      var LClaims := TClaimsBuilder.Create
        .WithNameIdentifier('123')
        .WithName(Request.Username)
        .WithRole('Admin')
        //.WithRole('Financeiro')
        .WithEmail('admin@example.com')
        .Build;

      // Gerar token
      var LToken := LJwtHandler.GenerateToken(LClaims);

      Result := Results.Ok('{"token": "' + LToken + '"}');
    end);

  // Requer autenticação
  TApplicationBuilderExtensions.MapGetR<IHttpContext, IResult>(
    LBuilder,
    '/protegido',
    function(Context: IHttpContext): IResult
    begin
      var LUser := Context.User;

      // Check if authenticated
      if (LUser = nil) or not LUser.Identity.IsAuthenticated then
      begin
        WriteLn('   ❌ Unauthorized access attempt');
        Result := Results.StatusCode(401, '{"error":"Unauthorized"}');
        Exit;
      end;

      // Extract user information
      var LUserName := LUser.Identity.Name;
      var LUserId := LUser.FindClaim(TClaimTypes.NameIdentifier).Value;

      WriteLn(Format('   ✅ Authorized access: %s (ID: %s)', [LUserName, LUserId]));

      Result := Results.Ok(Format(
        '{"message":"This is protected data","userId":"%s","username":"%s","timestamp":"%s"}',
        [LUserId, LUserName, DateTimeToStr(Now)]
      ));
    end);

  // Requer role específica
  TApplicationBuilderExtensions.MapGetR<IHttpContext, IResult>(
    LBuilder,
    '/api/admin',
    function(Context: IHttpContext): IResult
    var
      User: IClaimsPrincipal;
    begin
      User := Context.User;

      // Check authentication
      if (User = nil) or not User.Identity.IsAuthenticated then
      begin
        Result := Results.StatusCode(401, '{"error":"Unauthorized"}');
        Exit;
      end;

      // Check role
      if not User.IsInRole('Admin') then
      begin
        WriteLn(Format('   ❌ Forbidden: %s is not an Admin', [User.Identity.Name]));
        Result := Results.StatusCode(403, '{"error":"Forbidden - Admin role required"}');
        Exit;
      end;

      WriteLn(Format('   ✅ Admin access granted: %s', [User.Identity.Name]));
      Result := Results.Ok('{"message":"Welcome, Admin!"}');
    end);

  // Sem autenticação
  TApplicationBuilderExtensions.MapGetR<IResult>(
    LBuilder,
    '/api/public',
    function: IResult
    begin
      WriteLn('   📖 Public endpoint accessed');
      Result := Results.Ok('{"message":"This is public data, no authentication required"}');
    end);

  App.Run(8080);
end.
