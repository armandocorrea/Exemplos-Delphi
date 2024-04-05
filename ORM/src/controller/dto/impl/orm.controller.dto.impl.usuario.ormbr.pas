unit orm.controller.dto.impl.usuario.ormbr;

interface

uses
  orm.controller.dto.interfaces,
  orm.model.service.interfaces,
  orm.model.entity.usuario.ormbr;

type
  TUsuarioDTOORMBr = class(TInterfacedObject, IUsuarioORMBr)
  private
    FEntity: TUsuario;
    FService: IService<TUsuario>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IUsuarioORMBr;

    function Id(const AID: Integer): IUsuarioORMBr; overload;
    function Id: Integer; overload;

    function Name(const AName: string): IUsuarioORMBr; overload;
    function Name: string; overload;

    function Build: IService<TUsuario>;
  end;

implementation

uses
  SysUtils,
  orm.model.service.impl.ormbr;

{ TUsuarioDTOORMBr }

function TUsuarioDTOORMBr.Build: IService<TUsuario>;
begin
  Result := FService;
end;

constructor TUsuarioDTOORMBr.Create;
begin
  FEntity := TUsuario.Create;
  FService := TServiceORMBr<TUsuario>.New(FEntity);
end;

destructor TUsuarioDTOORMBr.Destroy;
begin
  inherited;
end;

function TUsuarioDTOORMBr.Id(const AID: Integer): IUsuarioORMBr;
begin
  Result := Self;
  FEntity.Id := AID;
end;

function TUsuarioDTOORMBr.Id: Integer;
begin
  Result := FEntity.Id;
end;

function TUsuarioDTOORMBr.Name(const AName: string): IUsuarioORMBr;
begin
  Result := Self;
  FEntity.Name := AName;
end;

function TUsuarioDTOORMBr.Name: string;
begin
  Result := FEntity.Name;
end;

class function TUsuarioDTOORMBr.New: IUsuarioORMBr;
begin
  Result := Self.Create;
end;

end.
