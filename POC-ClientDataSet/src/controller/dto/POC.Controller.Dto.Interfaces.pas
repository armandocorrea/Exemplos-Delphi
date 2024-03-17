unit POC.Controller.Dto.Interfaces;

interface

uses
  POC.Model.Service.Interfaces,
  POC.Model.Login;

type
  ILogin = interface
    ['{C129A8A3-457D-4AEF-B8F0-CC6DFD12C277}']
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

end.
