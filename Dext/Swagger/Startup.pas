unit Startup;

interface

uses
  Dext,
  Dext.Web,
  Dext.Swagger.Middleware,
  Dext.OpenAPI.Attributes,
  Dext.OpenAPI.Extensions,
  Dext.OpenAPI.Fluent,
  Dext.OpenAPI.Generator,
  Dext.OpenAPI.Types;

type
  [SwaggerSchema('User', 'Represents a user in the system')]
  TUser = record
    [SwaggerProperty('Unique identifier for the user')]
    [SwaggerExample('1')]
    Id: Integer;

    [SwaggerProperty('Full name of the user')]
    [SwaggerExample('John Doe')]
    Name: string;

    [SwaggerProperty('Email address')]
    [SwaggerFormat('email')]
    [SwaggerExample('john@example.com')]
    Email: string;
  end;

  [SwaggerSchema('CreateUserRequest', 'Request body for creating a new user')]
  TCreateUserRequest = record
    [SwaggerProperty('Full name of the user')]
    [SwaggerRequired]
    Name: string;

    [SwaggerProperty('Email address')]
    [SwaggerFormat('email')]
    [SwaggerRequired]
    Email: string;

    [SwaggerProperty('User password')]
    [SwaggerFormat('password')]
    [SwaggerRequired]
    Password: string;
  end;

  [SwaggerSchema('ErrorResponse', 'Standard error response')]
  TErrorResponse = record
    [SwaggerProperty('Error message description')]
    error: string;
  end;

  TStartup = class(TInterfacedObject, IStartup)
  private
    class var FUsers: TArray<TUser>;
    class procedure InitializeSampleData;
  public
    procedure ConfigureServices(const Services: TDextServices; const Configuration: IConfiguration);
    procedure Configure(const App: IWebApplication);
  end;

implementation

{ TStartup }

class procedure TStartup.InitializeSampleData;
begin
  if Length(FUsers) > 0 then Exit;

  SetLength(FUsers, 2);
  FUsers[0].Id := 1;
  FUsers[0].Name := 'John Doe';
  FUsers[0].Email := 'john@example.com';

  FUsers[1].Id := 2;
  FUsers[1].Name := 'Jane Smith';
  FUsers[1].Email := 'jane@example.com';
end;

procedure TStartup.ConfigureServices(const Services: TDextServices; const Configuration: IConfiguration);
begin
  Writeln('📚 Configuring services...');
  InitializeSampleData;
end;

procedure TStartup.Configure(const App: IWebApplication);
var
  Options: TOpenAPIOptions;
begin
  Writeln('📚 Configuring routes...');
  Writeln('');

  Options := TOpenAPIOptions.Default;
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

  // GET /api/users
  Writeln('1. GET /api/users');
  var GetAllUsers := App.Builder.MapGet('/api/users',
    procedure(Ctx: IHttpContext)
    begin
      Ctx.Response.Json(TDextJson.Serialize<TArray<TUser>>(FUsers));
    end);

  SwaggerEndpoint.From(GetAllUsers)
    .Summary('Get all users')
    .Description('Retrieves a list of all registered users in the system')
    .Tag('Users');

  // GET /api/users/{id}
  Writeln('2. GET /api/users/{id}');
  SwaggerEndpoint.From(
    TApplicationBuilderExtensions.MapGet<Integer, IHttpContext>(App.Builder, '/api/users/{id}',
      procedure(UserId: Integer; Ctx: IHttpContext)
      var
        User: TUser;
        Found: Boolean;
      begin
        Found := False;
        for User in FUsers do
        begin
          if User.Id = UserId then
          begin
            Ctx.Response.Json(TDextJson.Serialize<TUser>(User));
            Found := True;
            Break;
          end;
        end;

        if not Found then
        begin
          Ctx.Response.StatusCode := 404;
          Ctx.Response.Json('{"error": "User not found"}');
        end;
      end))
    .Summary('Get user by ID')
    .Description('Retrieves detailed information about a specific user by their unique identifier. Returns 404 if the user is not found.')
    .Tag('Users')
    .Response(200, TypeInfo(TUser), 'User found')
    .Response(404, TypeInfo(TErrorResponse), 'User not found');

  // POST /api/users
  Writeln('3. POST /api/users');
  SwaggerEndpoint.From(
    TApplicationBuilderExtensions.MapPost<TCreateUserRequest, IHttpContext>(App.Builder, '/api/users',
      procedure(Req: TCreateUserRequest; Ctx: IHttpContext)
      var
        NewUser: TUser;
      begin
        if (Req.Name = '') or (Req.Email = '') or (Req.Password = '') then
        begin
          Ctx.Response.StatusCode := 400;
          Ctx.Response.Json('{"error": "Name, email, and password are required"}');
          Exit;
        end;

        NewUser.Id := Length(FUsers) + 1;
        NewUser.Name := Req.Name;
        NewUser.Email := Req.Email;

        SetLength(FUsers, Length(FUsers) + 1);
        FUsers[High(FUsers)] := NewUser;

        Ctx.Response.StatusCode := 201;
        Ctx.Response.Json(TDextJson.Serialize<TUser>(NewUser));
      end))
    .Summary('Create a new user')
    .Description('Creates a new user account with the provided information. Returns the created user with assigned ID.')
    .Tag('Users')
    .RequestType(TypeInfo(TCreateUserRequest))
    .Response(201, TypeInfo(TUser), 'User created')
    .Response(400, TypeInfo(TErrorResponse), 'Invalid input');

  // DELETE /api/users/{id}
  Writeln('4. DELETE /api/users/{id}');
  SwaggerEndpoint.From(
    TApplicationBuilderExtensions.MapDelete<Integer, IHttpContext>(App.Builder, '/api/users/{id}',
      procedure(UserId: Integer; Ctx: IHttpContext)
      var
        I: Integer;
        Found: Boolean;
      begin
        Found := False;
        for I := 0 to High(FUsers) do
        begin
          if FUsers[I].Id = UserId then
          begin
            if I < High(FUsers) then
              FUsers[I] := FUsers[High(FUsers)];
            SetLength(FUsers, Length(FUsers) - 1);
            Found := True;
            Break;
          end;
        end;

        if Found then
        begin
          Ctx.Response.StatusCode := 204;
          Ctx.Response.Write('');
        end
        else
        begin
          Ctx.Response.StatusCode := 404;
          Ctx.Response.Json('{"error": "User not found"}');
        end;
      end))
    .Summary('Delete user')
    .Description('Deletes a user from the system. Returns 204 on success, 404 if user not found.')
    .Tag('Users')
    .Response(204, nil, 'User deleted')
    .Response(404, TypeInfo(TErrorResponse), 'User not found');

  Writeln('📚 Configuring Swagger...');
  App.Builder.UseSwagger(Options);
end;

end.
