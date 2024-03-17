unit POC.Controller.Impl.Controller;

interface

uses
  POC.Controller.Interfaces,
  POC.Controller.Dto.Interfaces;

type
  TController = class(TInterfacedObject, IController)
  private
    FLogin: ILogin;
  public
    class function New: IController;

    function Login: ILogin;
  end;

implementation

uses
  POC.Controller.Dto.Impl.Login;

{ TController }

function TController.Login: ILogin;
begin
  if not Assigned(FLogin) then
    FLogin := TLoginDTO.New;

  Result := FLogin;
end;

class function TController.New: IController;
begin
  Result := Self.Create;
end;

end.
