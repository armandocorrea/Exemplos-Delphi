unit POC.Controller.Dto.Impl.Login;

interface

uses
  POC.Controller.Dto.Interfaces,
  POC.Model.Service.Interfaces,
  POC.Model.Login;

type
  TLoginDTO = class(TInterfacedObject, ILogin)
  private
    FEntity: TLogin;
    FService: IServiceData<TLogin>;

    function ValidarEmail(const AEmail: string): Boolean;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: ILogin;

    function Id: Integer; overload;
    function Id(AValue: Integer): ILogin; overload;
    function Name: string; overload;
    function Name(AValue: string): ILogin; overload;
    function Email: string; overload;
    function Email(AValue: string): ILogin; overload;
    function Password: string; overload;
    function Password(AValue: string): ILogin; overload;

    function Build: IServiceData<TLogin>;
  end;

implementation

uses
  System.RegularExpressions,
  SysUtils,
  POC.Model.Service.Impl.ServiceData;

{ TLoginDTO }

function TLoginDTO.ValidarEmail(const AEmail: string): Boolean;
var
  LRegex: TRegEx;
begin
  LRegex := TRegEx.Create('[_a-zA-Z\d\-\.]+@([_a-zA-Z\d\-]+(\.[_a-zA-Z\d\-]+)+)');
  Result := LRegex.IsMatch(AEmail);
end;

function TLoginDTO.Build: IServiceData<TLogin>;
begin
  Result := FService;
end;

constructor TLoginDTO.Create;
begin
  FEntity := TLogin.Create;
  FService := TServiceData<TLogin>.New(FEntity);
end;

destructor TLoginDTO.Destroy;
begin
  FreeAndNil(FEntity);
  inherited;
end;

function TLoginDTO.Email: string;
begin
  Result := FEntity.Email;
end;

function TLoginDTO.Email(AValue: string): ILogin;
begin
  Result := Self;

  if not Self.ValidarEmail(AValue) then
    raise Exception.Create('E-mail Inválido');

  FEntity.Email := AValue;
end;

function TLoginDTO.Id: Integer;
begin
  Result := FEntity.Id;
end;

function TLoginDTO.Id(AValue: Integer): ILogin;
begin
  Result := Self;
  FEntity.Id := AValue;
end;

function TLoginDTO.Name(AValue: string): ILogin;
begin
  Result := Self;
  FEntity.Name := AValue;
end;

function TLoginDTO.Name: string;
begin
  Result := FEntity.Name;
end;

class function TLoginDTO.New: ILogin;
begin
  Result := Self.Create;
end;

function TLoginDTO.Password: string;
begin
  Result := FEntity.Password;
end;

function TLoginDTO.Password(AValue: string): ILogin;
begin
  Result := Self;
  FEntity.Password := AValue;
end;

end.
