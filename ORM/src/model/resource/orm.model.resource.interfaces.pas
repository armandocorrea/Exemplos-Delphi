unit orm.model.resource.interfaces;

interface

uses
  DB;

type
  IConnection = interface
    function Connect: TCustomConnection;
  end;

  IConfiguration = interface
    function DriverID(aValue: String): IConfiguration; overload;
    function DriverID: String; overload;

    function Database(aValue: String): IConfiguration; overload;
    function Database: String; overload;

    function Username(aValue: String): IConfiguration; overload;
    function Username: String; overload;

    function Password(aValue: String): IConfiguration; overload;
    function Password: String; overload;

    function Port(aValue: String): IConfiguration; overload;
    function Port: String; overload;

    function Server(aValue: String): IConfiguration; overload;
    function Server: String; overload;

    function Schema(aValue: String): IConfiguration; overload;
    function Schema: String; overload;
  end;

  IResource = interface
    function Connection: IConnection;
    function Configuration: IConfiguration;
  end;

implementation

end.
