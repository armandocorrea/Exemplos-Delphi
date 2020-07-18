unit UdtmDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, uDWAbout, uRESTDWServerEvents,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, Data.DB, FireDAC.Comp.Client,

  uDWDatamodule,
  uDWJSONObject, uRESTDWPoolerDB, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, uRESTDWBase,
  uDWConstsData, uRESTDWServerContext, uDWConsts;

type
  TDataModule2 = class(TServerMethodDataModule)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    DWServerEvents1: TDWServerEvents;
    RESTDWPoolerDB1: TRESTDWPoolerDB;
    FDQryAux: TFDQuery;
    procedure DWServerEvents1EventstesteReplyEvent(var Params: TDWParams; var Result: string);
    procedure DWServerEvents1EventsclienteReplyEventByType(
      var Params: TDWParams; var Result: string;
      const RequestType: TRequestType; var StatusCode: Integer;
      RequestHeader: TStringList);
  private
    function BuscarCliente(const pID : String; pNome : String = ''): String;
    function DeletarCliente(const pID: String): String;
    function InserirCliente(const pNome, pIdade: String): String;
    function AtualizarCliente(const pId, pNome, pIdade: String): String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

uses
  System.JSON,
  DataSetConverter4D.Helper;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule2.DWServerEvents1EventsclienteReplyEventByType(
  var Params: TDWParams; var Result: string; const RequestType: TRequestType;
  var StatusCode: Integer; RequestHeader: TStringList);
begin
  if RequestType = rtGet then
    Result := Self.BuscarCliente(Params.ItemsString['ID'].Value);
  if RequestType = rtDelete then
    Result := Self.DeletarCliente(Params.ItemsString['ID'].Value);
  if RequestType = rtPost then // Insere
    Result := Self.InserirCliente(Params.ItemsString['NOME'].Value, Params.ItemsString['IDADE'].Value);
  if RequestType = rtPut then // Atualiza
    Result := Self.AtualizarCliente(Params.ItemsString['ID'].Value, Params.ItemsString['NOME'].Value, Params.ItemsString['IDADE'].Value);
end;

procedure TDataModule2.DWServerEvents1EventstesteReplyEvent(var Params: TDWParams; var Result: string);
var
  Json : TJsonObject;
begin
  Json := TJSONObject.Create;
  try
    Json.AddPair('Nome', 'Armando Corrêa');
    Json.AddPair('Cidade', 'Blumenau');
    Result := Json.ToJSON;
  finally
    FreeAndNil(Json);
  end;
end;

function TDataModule2.BuscarCliente(const pID : String; pNome : String = ''): String;
var
  JsonArray : TJsonArray;
begin
  Result := '';
  FDConnection1.Connected := True;

  try
    FDQryAux.Close;
    FDQryAux.SQL.Clear;
    FDQryAux.SQL.Add('SELECT * FROM CLIENTES');
    FDQryAux.SQL.Add('WHERE 1 = 1');

    if pID <> '' then
      FDQryAux.SQL.Add('AND ID = ' + pID);

    if pNome <> '' then
      FDQryAux.SQL.Add('AND NOME = ' + QuotedStr(pNome));

    FDQryAux.Open;

    JsonArray := FDQryAux.AsJSONArray;
    Result := JsonArray.ToJSON;
  finally
    FDConnection1.Connected := False;
    FreeAndNil(JsonArray);
  end;
end;

function TDataModule2.DeletarCliente(const pID : String): String;
var
  xJson : TJsonObject;
  xMsg  : String;
begin
  Result := '';
  FDConnection1.Connected := True;
  xJson := TJSONObject.Create;

  try
    FDQryAux.Close;
    FDQryAux.SQL.Clear;
    FDQryAux.SQL.Add('DELETE FROM CLIENTES');

    if pID = '' then
    begin
      xMsg := 'Parâmetro ID não foi informado!';
      Exit;
    end;

    FDQryAux.SQL.Add('WHERE ID = ' + pID);
    try
      FDQryAux.ExecSQL;
      xMsg := 'Sucesso';
    except
      on e: Exception do
        xMsg := e.Message;
    end;
  finally
    xJson.AddPair('Mensagem', xMsg);
    Result := xJson.ToJSON;
    FDConnection1.Connected := False;
  end;
end;

function TDataModule2.InserirCliente(const pNome, pIdade: String): String;
var
  xJson : TJsonObject;
  xMsg  : String;
begin
  Result := '';
  FDConnection1.Connected := True;
  xJson := TJSONObject.Create;

  try
    FDQryAux.Close;
    FDQryAux.SQL.Clear;
    FDQryAux.SQL.Add('INSERT INTO CLIENTES (NOME, IDADE) VALUES (:PNOME, :PIDADE)');

    if pNome = '' then
    begin
      xMsg := 'Parâmetro NOME não foi informado!';
      Exit;
    end;

    if pIdade = '' then
    begin
      xMsg := 'Parâmetro IDADE não foi informado!';
      Exit;
    end;

    try
      FDQryAux.ParamByName('PNOME').AsString  := pNome;
      FDQryAux.ParamByName('PIDADE').AsString := pIdade;
      FDQryAux.ExecSQL;

      xMsg := Self.BuscarCliente('', pNome);
    except
      on e: Exception do
        xMsg := e.Message;
    end;
  finally
    xJson.AddPair('Mensagem', xMsg);
    Result := xJson.ToJSON;
    FDConnection1.Connected := False;
  end;
end;

function TDataModule2.AtualizarCliente(const pId, pNome, pIdade: String): String;
var
  xJson : TJsonObject;
  xMsg  : String;
begin
  Result := '';
  FDConnection1.Connected := True;
  xJson := TJSONObject.Create;

  try
    FDQryAux.Close;
    FDQryAux.SQL.Clear;
    FDQryAux.SQL.Add('UPDATE CLIENTES SET NOME = :PNOME, IDADE = :PIDADE WHERE ID = :PID');

    if pId = '' then
    begin
      xMsg := 'Parâmetro ID não foi informado!';
      Exit;
    end;

    if pNome = '' then
    begin
      xMsg := 'Parâmetro NOME não foi informado!';
      Exit;
    end;

    if pIdade = '' then
    begin
      xMsg := 'Parâmetro IDADE não foi informado!';
      Exit;
    end;

    try
      FDQryAux.ParamByName('PNOME').AsString  := pNome;
      FDQryAux.ParamByName('PIDADE').AsString := pIdade;
      FDQryAux.ParamByName('PID').AsString    := pId;
      FDQryAux.ExecSQL;

      xMsg := Self.BuscarCliente(pId);
    except
      on e: Exception do
        xMsg := e.Message;
    end;
  finally
    xJson.AddPair('Mensagem', xMsg);
    Result := xJson.ToJSON;
    FDConnection1.Connected := False;
  end;
end;

end.
