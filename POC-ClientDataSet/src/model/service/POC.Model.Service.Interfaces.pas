unit POC.Model.Service.Interfaces;

interface

uses
  DB;

type
  IServiceData<T: class> = interface
    ['{63180CFD-A9D4-4EC4-AAB4-A420257896A2}']
    function Insert: IServiceData<T>;
    function Search(AField: string; AValue: Variant): IServiceData<T>;
    function Retrieve: TDataSet;
  end;

implementation

end.
