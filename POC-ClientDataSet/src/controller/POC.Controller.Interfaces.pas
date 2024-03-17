unit POC.Controller.Interfaces;

interface

uses
  POC.Controller.Dto.Interfaces;

type
  IController = interface
    ['{B50090EE-0E0E-4778-BA03-98AB253FB00F}']
    function Login: ILogin;
  end;

implementation

end.
