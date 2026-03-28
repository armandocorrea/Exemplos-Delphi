unit Users;

interface

uses
  System.Generics.Collections,
  Dext.Web;

type
  [SwaggerSchema('User', 'Represents a user in the system')]
  TUser = class
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

  [Route('/api/users')]
  [SwaggerTag('Usuários')]
  TUsersController = class(TController)
  public
    [HttpGet]
    [SwaggerSummary('Listar todos os usuários')]
    [SwaggerResponse(200, 'Usuário encontrado')]
    function GetAll: IResult;

    [HttpGet('/{id}')]
    [SwaggerSummary('Buscar usuário por ID')]
    [SwaggerParam('id', 'ID do usuário', TSwaggerParamLocation.Path)]
    [SwaggerResponse(200, TUser, 'Usuário encontrado')]
    [SwaggerResponse(404, 'Usuário não encontrado')]
    function GetById(Id: Integer): IResult;
  end;

implementation

{ TUsersController }

function TUsersController.GetAll: IResult;
begin
  Result := Results.Json('Ok', 200);
end;

function TUsersController.GetById(Id: Integer): IResult;
begin
  Result := Results.Json('Ok', 200);
end;

initialization
  TUsersController.ClassName;

end.
