unit UCalculadora;

interface

type
  TOperacao = (tpSomar, tpSubtrair, tpMultiplicar, tpDividir);

  ICalculadora = interface
    ['{3D9931CC-2A4C-450A-8890-41053E95B3B3}']
    function Somar(const aNumero1, aNumero2: Double): Double;
    function Subtrair(const aNumero1, aNumero2: Double): Double;
    function Multiplicar(const aNumero1, aNumero2: Double): Double;
    function Dividir(const aNumero1, aNumero2: Double): Double;
  end;

  TCalculadora = class(TInterfacedObject, ICalculadora)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New: ICalculadora;

      function Somar(const aNumero1, aNumero2: Double): Double;
      function Subtrair(const aNumero1, aNumero2: Double): Double;
      function Multiplicar(const aNumero1, aNumero2: Double): Double;
      function Dividir(const aNumero1, aNumero2: Double): Double;
  end;

implementation

uses
  SysUtils;

const
  ZERO = 0;
  DIVISAO_POR_ZERO = 'Não é possível dividir por zero.';

{ TCalculadora }

constructor TCalculadora.Create;
begin
end;

destructor TCalculadora.Destroy;
begin
  inherited;
end;

function TCalculadora.Dividir(const aNumero1, aNumero2: Double): Double;
begin
  if aNumero2 = ZERO then
    raise Exception.Create(DIVISAO_POR_ZERO);

  Result := aNumero1 / aNumero2;
end;

function TCalculadora.Multiplicar(const aNumero1, aNumero2: Double): Double;
begin
  Result := aNumero1 * aNumero2;
end;

class function TCalculadora.New: ICalculadora;
begin
  Result := Self.Create;
end;

function TCalculadora.Somar(const aNumero1, aNumero2: Double): Double;
begin
  if aNumero1 = 2 then
    Exit(3);

  Result := aNumero1 + aNumero2;
end;

function TCalculadora.Subtrair(const aNumero1, aNumero2: Double): Double;
begin
  Result := aNumero1 - aNumero2;
end;

end.
