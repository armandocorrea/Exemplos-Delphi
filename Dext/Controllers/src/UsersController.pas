unit UsersController;

interface

uses
  Dext.Web;

type
  TUser = record
    Id: Integer;
    Name: string;
  end;

  [DextController('/api/users')]
  TUsersController = class
  public
    [DextGet('')]
    function GetAll: IResult;

    [DextGet('/{id}')]
    function Get(Id: Int64): IResult;

    [DextPost('')]
    function Create([Body] User: TUser): IResult;

    [DextPut('/{id}')]
    function Update(Id: Int64; [Body] User: TUser): IResult;

    [DextDelete('/{id}')]
    function Delete(Id: Int64): IResult;
  end;

implementation

uses
  System.SysUtils,
  System.Generics.Collections;

{ TUsersController }

function TUsersController.Create(User: TUser): IResult;
begin
  Result := Results.Created('/api/users/' + User.Id.ToString, User);
end;

function TUsersController.Delete(Id: Int64): IResult;
begin
  Result := Results.NoContent;
end;

function TUsersController.Get(Id: Int64): IResult;
var
  LUser: TUser;
begin
  if Id = 1 then
  begin
    LUser.Id := 1;
    LUser.Name := 'Dext';

    Result := Results.Ok(LUser);
  end
  else
    Result := Results.NotFound('Registro não encontrado');
end;

function TUsersController.GetAll: IResult;
var
  LUsers: TList<TUser>;
  LUser1, LUser2: TUser;
begin
  LUsers := TList<TUser>.Create;

  LUser1.Id := 1;
  LUser1.Name := 'Dext';
  LUsers.Add(LUser1);

  LUser2.Id := 2;
  LUser2.Name := 'Web Framework';
  LUsers.Add(LUser2);

  Result := Results.Ok(LUsers);
end;

function TUsersController.Update(Id: Int64; User: TUser): IResult;
begin
  Result := Results.Ok('/api/users/' + User.Id.ToString);
end;

initialization
  TUsersController.ClassName;

end.
