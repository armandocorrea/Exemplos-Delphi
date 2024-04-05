unit orm.model.service.impl.ormbr;

interface

uses
  dbebr.factory.interfaces,
  dbebr.factory.firedac,
  ormbr.dml.generator.sqlite,
  ormbr.container.objectset.interfaces,
  ormbr.container.objectset,

  System.Generics.Collections,
  orm.model.resource.interfaces,
  orm.model.service.interfaces;

type
  TServiceORMBr<T: class, constructor> = class(TInterfacedObject, IService<T>)
  private
    FParent: T;
    FConnection: IConnection;
    FConnectionORM: IDBConnection;
    FORMBrContainer: IContainerObjectSet<T>;
  public
    constructor Create(aParent: T);
    destructor Destroy; override;
    class function New(aParent: T): IService<T>;

    function ListAll(aFilter: String; var aList: TObjectList<T>; const aOrderBy: String = ''): IService<T>;
    function ListById(aId: Integer): IService<T>;
    function Insert: IService<T>;
    function Modify(AValue: T): IService<T>;
    function Update: IService<T>;
    function Delete: IService<T>;
    function This: T;
  end;

implementation

uses
  orm.model.resource.impl.factory,
  SysUtils;

{ TServiceORMBr<T> }

constructor TServiceORMBr<T>.Create(aParent: T);
begin
  FParent := aParent;

  FConnection := TResource.New.Connection;
  FConnectionORM := TFactoryFiredac.Create(FConnection.Connect, dnSQLite);
  FORMBrContainer := TContainerObjectSet<T>.Create(FConnectionORM);
end;

function TServiceORMBr<T>.Delete: IService<T>;
begin
  Result := Self;
  FORMBrContainer.Delete(FParent);
end;

destructor TServiceORMBr<T>.Destroy;
begin
  inherited;
end;

function TServiceORMBr<T>.Insert: IService<T>;
begin
  Result := Self;
  FORMBrContainer.Insert(FParent);
end;

function TServiceORMBr<T>.ListAll(aFilter: String; var aList: TObjectList<T>;
  const aOrderBy: String): IService<T>;
begin
  Result := Self;
  AList := FORMBrContainer.FindWhere(AFilter, AOrderBy);
end;

function TServiceORMBr<T>.ListById(aId: Integer): IService<T>;
begin
  Result := Self;
  var LList := FORMBrContainer.FindWhere(Format('id = %d', [aId]));
  if Assigned(LList) and (LList.Count > 0) then
    FParent := LList.First;
end;

function TServiceORMBr<T>.Modify(AValue: T): IService<T>;
begin
  Result := Self;
  FORMBrContainer.Modify(FParent);
end;

class function TServiceORMBr<T>.New(aParent: T): IService<T>;
begin
  Result := Self.Create(aParent);
end;

function TServiceORMBr<T>.This: T;
begin
  Result := FParent;
end;

function TServiceORMBr<T>.Update: IService<T>;
begin
  Result := Self;
  FORMBrContainer.Update(FParent);
end;

end.
