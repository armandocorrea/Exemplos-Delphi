unit uTroco;

interface

type
  TCedula = (ceNota100, ceNota50, ceNota20, ceNota10, ceNota5, ceNota2, ceMoeda100, ceMoeda50, ceMoeda25, ceMoeda10, ceMoeda5, ceMoeda1);

  TTroco = class
  private
    FTipo: TCedula;
    FQuantidade: Integer;
  public
    constructor Create(aTipo: TCedula; aQuantidade: Integer);

    property Tipo: TCedula read FTipo;
    property Quantidade: Integer read FQuantidade write FQuantidade;
  end;

  TCedulaHelper = class helper for TTroco
    function TextoMonetario : String;
  end;

const
  CValorCedula: array [TCedula] of Double = (100, 50, 20, 10, 5, 2, 1, 0.5, 0.25, 0.1, 0.05, 0.01);

implementation

constructor TTroco.Create(aTipo: TCedula; aQuantidade: Integer);
begin
  inherited Create;

  FTipo       := aTipo;
  FQuantidade := aQuantidade;
end;

{ TCedulaHelper }

function TCedulaHelper.TextoMonetario: String;
begin
  case TCedula(Self.FTipo) of
    ceNota100  : Result := ' nota de 100 ';
    ceNota50   : Result := ' nota de 50 ';
    ceNota20   : Result := ' nota de 20 ';
    ceNota10   : Result := ' nota de 10 ';
    ceNota5    : Result := ' nota de 5 ';
    ceMoeda100 : Result := ' moeda de 1 ';
    ceMoeda50  : Result := ' moeda de 0.50 ';
    ceMoeda25  : Result := ' moeda de 0.25 ';
    ceMoeda10  : Result := ' moeda de 0.10 ';
    ceMoeda5   : Result := ' moeda de 0.05 ';
    ceMoeda1   : Result := ' moeda de 0.01 ';
  end;
end;

end.

