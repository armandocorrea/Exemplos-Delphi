unit orm.model.service.interfaces;

interface

uses
  System.Generics.Collections;

type
  IService<T: Class> = interface
    function ListAll(aFilter: String; var aList: TObjectList<T>; const aOrderBy: String = ''): IService<T>;
    function ListById(aId: Integer): IService<T>;
    function Insert: IService<T>;
    function Modify(AValue: T): IService<T>;
    function Update: IService<T>;
    function Delete: IService<T>;
    function This: T;
  end;

implementation

end.
