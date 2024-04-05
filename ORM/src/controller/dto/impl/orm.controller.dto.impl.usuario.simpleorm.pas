unit orm.controller.dto.impl.usuario.simpleorm;

interface

uses
  orm.controller.dto.interfaces,
  orm.model.service.interfaces,
  orm.model.entity.usuario.simpleorm;

type
  TUsuarioDTOSimpleORM = class(TInterfacedObject, IUsuarioSimpleORM)
  private
    FEntity: TUsuario;
    FService: IService<TUsuario>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IUsuarioSimpleORM;

    function Id(const AID: Integer): IUsuarioSimpleORM; overload;
    function Id: Integer; overload;

    function Name(const AName: string): IUsuarioSimpleORM; overload;
    function Name: string; overload;

    function Build: IService<TUsuario>;
  end;

implementation

uses
  orm.model.service.impl.simpleorm,
  SysUtils;

{ TUsuarioDTOSimpleORM }

function TUsuarioDTOSimpleORM.Build: IService<TUsuario>;
begin
  Result := FService;
end;

constructor TUsuarioDTOSimpleORM.Create;
begin
  FEntity := TUsuario.Create;
  FService := TServiceSimpleORM<TUsuario>.New(FEntity);
end;

destructor TUsuarioDTOSimpleORM.Destroy;
begin
  FreeAndNil(FEntity);
  inherited;
end;

function TUsuarioDTOSimpleORM.Id(const AID: Integer): IUsuarioSimpleORM;
begin
  Result := Self;
  FEntity.Id := AID;
end;

function TUsuarioDTOSimpleORM.Id: Integer;
begin
  Result := FEntity.Id;
end;

function TUsuarioDTOSimpleORM.Name(const AName: string): IUsuarioSimpleORM;
begin
  Result := Self;
  FEntity.Name := AName;
end;

function TUsuarioDTOSimpleORM.Name: string;
begin
  Result := FEntity.Name;
end;

class function TUsuarioDTOSimpleORM.New: IUsuarioSimpleORM;
begin
  Result := Self.Create;
end;

end.
