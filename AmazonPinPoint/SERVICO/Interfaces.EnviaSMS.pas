unit Interfaces.EnviaSMS;

interface

type
  IEnviaSMS = interface
    ['{6DF04580-13AC-41C5-8F9E-39916DD96483}']
    function NumeroCelularValido (const aNumero: String) : IEnviaSMS;
    procedure EnviaSMS (var aResultado: String);
    function SetMensagem (const Value: String) : IEnviaSMS;
    function SetNumeroCelular (const Value: String) : IEnviaSMS;
    function SetAccessKey (const Value: String) : IEnviaSMS;
    function SetAppId (const Value: String) : IEnviaSMS;
    function SetRegiao (const Value: String) : IEnviaSMS;
    function SetSecretKey (const Value: String) : IEnviaSMS;
  end;

implementation

end.
