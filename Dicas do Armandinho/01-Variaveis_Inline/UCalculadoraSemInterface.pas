unit UCalculadoraSemInterface;

interface

type
  TOperacao = (tpSomar, tpSubtrair, tpMultiplicar, tpDividir);

  TCalculadoraSemInterface = class
    private
    public
      constructor Create;
      destructor Destroy; override;

      function Somar(const aNumero1, aNumero2: Double): Double;
      function Subtrair(const aNumero1, aNumero2: Double): Double;
      function Multiplicar(const aNumero1, aNumero2: Double): Double;
      function Dividir(const aNumero1, aNumero2: Double): Double;

      function Calcular(const aNumero1, aNumero2: Double; const aOperacao: TOperacao): Double;
  end;

implementation

uses
  SysUtils;

const
  ZERO = 0;
  DIVISAO_POR_ZERO = 'Não é possível dividir por zero.';

{ TCalculadora }

function TCalculadoraSemInterface.Calcular(const aNumero1, aNumero2: Double; const aOperacao: TOperacao): Double;
begin
  case aOperacao of
    tpSomar:
      Result := Self.Somar(aNumero1, aNumero2);
    tpSubtrair:
      Result := Self.Subtrair(aNumero1, aNumero2);
    tpMultiplicar:
      Result := Self.Multiplicar(aNumero1, aNumero2);
    tpDividir:
      Result := Self.Dividir(aNumero1, aNumero2);
  end;
end;

constructor TCalculadoraSemInterface.Create;
begin

end;

destructor TCalculadoraSemInterface.Destroy;
begin

  inherited;
end;

function TCalculadoraSemInterface.Dividir(const aNumero1, aNumero2: Double): Double;
begin
  if aNumero2 = ZERO then
    raise Exception.Create(DIVISAO_POR_ZERO);

  Result := aNumero1 / aNumero2;
end;

function TCalculadoraSemInterface.Multiplicar(const aNumero1, aNumero2: Double): Double;
begin
  Result := aNumero1 * aNumero2;
end;

function TCalculadoraSemInterface.Somar(const aNumero1, aNumero2: Double): Double;
begin
  Result := aNumero1 + aNumero2;
end;

function TCalculadoraSemInterface.Subtrair(const aNumero1, aNumero2: Double): Double;
begin
  Result := aNumero1 - aNumero2;
end;

end.
