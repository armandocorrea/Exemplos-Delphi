unit orm.model.service.impl.simpleorm;

interface

uses
  SimpleInterface,

  System.Generics.Collections,
  orm.model.resource.interfaces,
  orm.model.service.interfaces;

type
  TServiceSimpleORM<T: class, constructor> = class(TInterfacedObject, IService<T>)
  private
    FParent: T;
    FConnection: IConnection;
    FConn: ISimpleQuery;
    FDAO: ISimpleDAO<T>;
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
  SimpleDAO,
  SimpleQueryFiredac,
  orm.model.resource.impl.factory,
  FireDAC.Comp.Client,
  SysUtils;

{ TServiceSimpleORM<T> }

constructor TServiceSimpleORM<T>.Create(aParent: T);
begin
  FParent := aParent;

  FConnection := TResource.New.Connection;
  FConn := TSimpleQueryFiredac.New(TFDConnection(FConnection.Connect));

  FDAO := TSimpleDAO<T>.New(FConn);
end;

function TServiceSimpleORM<T>.Delete: IService<T>;
begin
  Result := Self;
  FDAO.Delete(FParent);
end;

destructor TServiceSimpleORM<T>.Destroy;
begin
  inherited;
end;

function TServiceSimpleORM<T>.Insert: IService<T>;
begin
  Result := Self;
  FDAO.Insert(FParent);
end;

function TServiceSimpleORM<T>.ListAll(aFilter: String;
  var aList: TObjectList<T>; const aOrderBy: String): IService<T>;
begin
  Result := Self;
  FDAO.SQL.Where(aFilter);
  if aOrderBy <> Emptystr then
    FDAO.SQL.OrderBy(aOrderBy);
  FDAO.Find(aList);
end;

function TServiceSimpleORM<T>.ListById(aId: Integer): IService<T>;
begin
  Result := Self;
  FParent := FDAO.Find(aId);
end;

function TServiceSimpleORM<T>.Modify(AValue: T): IService<T>;
begin
  Result := Self;
  //Esse método não existe no SimpleORM
end;

class function TServiceSimpleORM<T>.New(aParent: T): IService<T>;
begin
  Result := Self.Create(aParent);
end;

function TServiceSimpleORM<T>.This: T;
begin
  Result := FParent;
end;

function TServiceSimpleORM<T>.Update: IService<T>;
begin
  Result := Self;
  FDAO.Update(FParent);
end;

end.
