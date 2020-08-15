unit UAmazonPinPoint;

interface

uses
  Interfaces.EnviaSMS;

Type
  TEnviar = function(aDestination: PAnsiChar; aMessage: PAnsiChar; aRegionAWS: PAnsiChar;
    aAppID: PAnsiChar; aAccessToken: PAnsiChar; aSecretToken: PAnsiChar): PAnsiChar; stdcall;

  TAmazonPinPoint = class(TInterfacedObject, IEnviaSMS)
    private
      FNumeroCelular: String;
      FMensagem: String;
      FRegiao: String;
      FAppId: String;
      FSecretKey: String;
      FAccessKey: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : IEnviaSMS;

      function NumeroCelularValido (const aNumero: String): IEnviaSMS;
      procedure EnviaSMS(var aResultado: String);

      function SetMensagem(const Value: String) : IEnviaSMS;
      function SetNumeroCelular(const Value: String) : IEnviaSMS;
      function SetAccessKey(const Value: String) : IEnviaSMS;
      function SetAppId(const Value: String) : IEnviaSMS;
      function SetRegiao(const Value: String) : IEnviaSMS;
      function SetSecretKey(const Value: String) : IEnviaSMS;

      property NumeroCelular: String read FNumeroCelular write FNumeroCelular;
      property Mensagem: String read FMensagem write FMensagem;
      property Regiao: String read FRegiao write FRegiao;
      property AppId: String read FAppId write FAppId;
      property AccessKey: String read FAccessKey write FAccessKey;
      property SecretKey: String read FSecretKey write FSecretKey;
  end;

implementation

uses
  System.SysUtils, Winapi.Windows;

{ TAmazonPinPoint }

constructor TAmazonPinPoint.Create;
begin

end;

destructor TAmazonPinPoint.Destroy;
begin

  inherited;
end;

procedure TAmazonPinPoint.EnviaSMS(var aResultado: String);
var
  xHandle: THandle;
  xEnviar: TEnviar;
  xResultado: PAnsiChar;
begin
  aResultado := '';
  xHandle := LoadLibrary('SMSPinPoint.dll');
  if xHandle > 0 then
  begin
    try
      @xEnviar := GetProcAddress(xHandle, 'EnviarSMS'); //nome do seu método no C#

      if @xEnviar <> nil then
      begin
        xResultado := xEnviar(PAnsiChar(AnsiString(NumeroCelular)),
                              PAnsiChar(AnsiString(Mensagem)),
                              PAnsiChar(AnsiString(Regiao)),
                              PAnsiChar(AnsiString(AppId)),
                              PAnsiChar(AnsiString(AccessKey)),
                              PAnsiChar(AnsiString(SecretKey))); //chama o método

        aResultado := xResultado;
      end
      else
        aResultado := 'Método não carregado.';
    finally
      FreeLibrary(xHandle);
    end;
  end
  else
    aResultado := 'DLL não carregada.';
end;

class function TAmazonPinPoint.New: IEnviaSMS;
begin
  Result := Self.Create;
end;

function TAmazonPinPoint.NumeroCelularValido(const aNumero: String): IEnviaSMS;
var
  I: Integer;
  xStr: String;
begin
  Result := Self;

  xStr := aNumero;

  if xStr[1] <> '+' then
    raise Exception.Create('Número inválido: Não existe o caracter "+" no inicio.');

  for I := 2 to Length(xStr) do
  begin
    if not (xStr[I] in ['0'..'9']) then
      raise Exception.Create('Número inválido: Possui caracteres diferente de numerais.');
  end;

  if (Length(xStr) < 13) or (Length(xStr) > 14) then
    raise Exception.Create('Número inválido: Possui tamanho diferente do permitido.');

  NumeroCelular := aNumero;
end;

function TAmazonPinPoint.SetAccessKey(const Value: String) : IEnviaSMS;
begin
  Result := Self;
  FAccessKey := Value;
end;

function TAmazonPinPoint.SetAppId(const Value: String) : IEnviaSMS;
begin
  Result := Self;
  FAppId := Value;
end;

function TAmazonPinPoint.SetMensagem(const Value: String) : IEnviaSMS;
begin
  Result := Self;
  FMensagem := Value;
end;

function TAmazonPinPoint.SetNumeroCelular(const Value: String) : IEnviaSMS;
begin
  Result := Self;
  FNumeroCelular := Value;
end;

function TAmazonPinPoint.SetRegiao(const Value: String) : IEnviaSMS;
begin
  Result := Self;
  FRegiao := Value;
end;

function TAmazonPinPoint.SetSecretKey(const Value: String) : IEnviaSMS;
begin
  Result := Self;
  FSecretKey := Value;
end;

end.
