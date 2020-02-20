unit uSubstitui2;

interface

uses
  uISubstitui2;

//Programação Funcional
Type
  TSubstitui2 = class(TInterfacedObject, ISubstitui2)
    private
      FValue : String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : ISubstitui2;

      function Substituir(aStr, aVelho, aNovo: String) : ISubstitui2;
      function SetSubstituido(var Value: String) : ISubstitui2;
  end;

implementation

{ TSubstitui2 }

constructor TSubstitui2.Create;
begin

end;

destructor TSubstitui2.Destroy;
begin

  inherited;
end;

class function TSubstitui2.New: ISubstitui2;
begin
  Result := Self.Create;
end;

function TSubstitui2.SetSubstituido(var Value: String) : ISubstitui2;
begin
  Result := Self;
  Value  := FValue;
end;

function TSubstitui2.Substituir(aStr, aVelho, aNovo: String) : ISubstitui2;
var
  vNovoValor : String;
  vStrOcor   : String;
  vStrAux    : String;
  vStrAux2   : String;
  I, Y, Prox : Integer;
  Qnt        : Integer;
begin
  Result  := Self;
  vStrAux := aStr;

  while (vStrAux <> '') do
  begin
    vStrOcor := '';
    Qnt      := 0;
    Prox     := 2;

    for I := 1 to Length(vStrAux) do
    begin
      Inc(Qnt);
      vStrOcor := vStrOcor + vStrAux[I];
      if Qnt = Length(aVelho) then
        Break;
    end;

    if vStrOcor = aVelho then
    begin
      vNovoValor := vNovoValor + aNovo;
      Prox := (Prox + Qnt-1);
    end
    else
      vNovoValor := vNovoValor + vStrOcor[1];

    vStrAux2 := vStrAux;
    vStrAux  := '';
    for I := Prox to Length(vStrAux2) do
      vStrAux := vStrAux + vStrAux2[I];
  end;

  FValue := vNovoValor;
end;

end.
