unit orm.model.resource.impl.connection.firedac;

interface

uses
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client,
  Data.DB,
  orm.model.resource.interfaces;

type
  TConnection = class(TInterfacedObject, IConnection)
    private
      FConfiguration: IConfiguration;
      FConn: TFDConnection;
    public
      constructor Create(aConfiguration: IConfiguration);
      destructor Destroy; override;
      class function New(aConfiguration: IConfiguration): IConnection;

      function Connect: TCustomConnection;
  end;

implementation

uses
  SysUtils;

{ TConnection }

function TConnection.Connect: TCustomConnection;
begin
  try
    FConn.Params.DriverID := FConfiguration.DriverID;
    FConn.Params.Database := FConfiguration.Database;
    FConn.Params.UserName := FConfiguration.Username;
    FConn.Params.Password := FConfiguration.Password;
    FConn.Params.Add('Port=' + FConfiguration.Port);
    FConn.Params.Add('Server=' + FConfiguration.Server);

    if not FConfiguration.Schema.IsEmpty then
    begin
      FConn.Params.Add('MetaCurSchema=' + FConfiguration.Schema);
      FConn.Params.Add('MetaDefSchema=' + FConfiguration.Schema);
    end;

    FConn.Connected := True;
    Result := FConn;
  except
    raise Exception.Create('Não foi possível realizar a conexão.');
  end;
end;

constructor TConnection.Create(aConfiguration: IConfiguration);
begin
  FConn := TFDConnection.Create(nil);
  FConfiguration := aConfiguration;
end;

destructor TConnection.Destroy;
begin
  FreeAndNil(FConn);
  inherited;
end;

class function TConnection.New(aConfiguration: IConfiguration): IConnection;
begin
  Result := Self.Create(aConfiguration);
end;

end.
