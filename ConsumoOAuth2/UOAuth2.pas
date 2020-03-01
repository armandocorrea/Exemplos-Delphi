unit UOAuth2;

interface

uses
  REST.Client,
  REST.Types,
  System.SysUtils;

type
  TOAuth2 = class
    private
      RestClient   : TRestClient;
      RestRequest  : TRestRequest;
      RestResponse : TRestResponse;
    public
      constructor create(const pBaseURL : String);
      destructor destroy; override;

      function obterToken(const sClientID, sClientSecret : String; sScope: String = ''): String;
      function consumirEndPoint(aMethod: word; sNameParam, sBody, sToken: String): String;
  end;

implementation

{ OAuth2 }

{rmPOST = 0, rmPUT = 1, rmGET = 2, rmDELETE = 3, rmPATCH = 4}
function TOAuth2.consumirEndPoint(aMethod: word; sNameParam, sBody, sToken: String): String;
begin
  Result := '';
  try
    RestRequest.Method := TRESTRequestMethod(aMethod);
    RestRequest.Params.Clear;
    RestRequest.Params.AddItem(sNameParam, sBody, TRestRequestParameterKind.pkREQUESTBODY);
    RESTRequest.Params.AddHeader('Authorization', 'Bearer ' + sToken);
    RESTRequest.Params.ParameterByName('Authorization').Options := [poDoNotEncode];

    RESTRequest.Execute;
    Result := RestResponse.Content;
  except
    on E: Exception do
      Result := 'Erro ao consumir EndPoint: ' + e.Message;
  end;
end;

constructor TOAuth2.create(const pBaseURL : String);
begin
  RestClient   := TRestClient.Create(pBaseURL);
  RestRequest  := TRestRequest.Create(nil);
  RestResponse := TRestResponse.Create(nil);

  RestRequest.Client   := RestClient;
  RestRequest.Method   := rmPOST;
  RestRequest.Response := RestResponse;
end;

destructor TOAuth2.destroy;
begin
  RestClient.Free;
  RestRequest.Free;
  RestResponse.Free;
  inherited;
end;

function TOAuth2.obterToken(const sClientID, sClientSecret : String; sScope: String = ''): String;
begin
  Result := '';

  try
    RestRequest.Params.Clear;
    RestRequest.Params.AddItem('Content-Type', 'application/x-www-form-urlencoded', TRestRequestParameterKind.pkGETorPOST);
    RestRequest.Params.AddItem('grant_type', 'client_credentials', TRestRequestParameterKind.pkGETorPOST);
    if sScope <> '' then
      RestRequest.Params.AddItem('scope', sScope, TRestRequestParameterKind.pkGETorPOST);
    RestRequest.Params.AddItem('client_id', sClientID, TRestRequestParameterKind.pkGETorPOST);
    RestRequest.Params.AddItem('client_secret', sClientSecret, TRestRequestParameterKind.pkGETorPOST);
    RestRequest.Params.AddItem('Cache-Control', 'no-cache', TRestRequestParameterKind.pkGETorPOST);

    RestRequest.Execute;
    Result := RestResponse.Content;
  except
    on E: Exception do
      Result := 'Erro ao obter token: ' + e.Message;
  end;
end;

end.
