unit uSubstitui;

interface

uses
  uISubstitui;

type

  TSubstitui = class(TInterfacedObject, ISubstitui)
  public
    function Substituir(aStr, aVelho, aNovo: String): String;
  end;

implementation

uses
  System.SysUtils;

function TSubstitui.Substituir(aStr, aVelho, aNovo: String): String;
var
  vNovoValor : String;
  vStrOcor   : String;
  vStrAux    : String;
  vStrAux2   : String;
  I, Y, Prox : Integer;
  Qnt        : Integer;
begin
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

  Result := vNovoValor;
end;

end.


