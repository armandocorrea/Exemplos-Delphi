unit uMaquina;

interface

uses
  uIMaquina, Classes;

type

  TMaquina = class(TInterfacedObject, IMaquina)
  public
    function MontarTroco(aTroco: Double): TList;
  end;

implementation

uses
  uTroco, System.SysUtils;

function TMaquina.MontarTroco(aTroco: Double): TList;
var
  classeTroco : TTroco;
  vValor      : Integer;
begin
  Result := TList.Create;
  vValor := Trunc(aTroco);

  //Notas de 100
  if ((vValor / 100) >= 1) then
  begin
    classeTroco := TTroco.Create(ceNota100, (Trunc(vValor / 100)));
    Result.Add(classeTroco);
    vValor := Trunc(vValor mod 100);
  end;

  //Notas de 50
  if ((vValor / 50) >= 1) then
  begin
    classeTroco := TTroco.Create(ceNota50, (Trunc(vValor / 50)));
    Result.Add(classeTroco);
    vValor := Trunc(vValor mod 50);
  end;

  //Notas de 20
  if ((vValor / 20) >= 1) then
  begin
    classeTroco := TTroco.Create(ceNota20, (Trunc(vValor / 20)));
    Result.Add(classeTroco);
    vValor := Trunc(vValor mod 20);
  end;

  //Notas de 10
  if ((vValor / 10) >= 1) then
  begin
    classeTroco := TTroco.Create(ceNota10, (Trunc(vValor / 10)));
    Result.Add(classeTroco);
    vValor := Trunc(vValor mod 10);
  end;

  //Notas de 5
  if ((vValor / 5) >= 1) then
  begin
    classeTroco := TTroco.Create(ceNota5, (Trunc(vValor / 5)));
    Result.Add(classeTroco);
    vValor := Trunc(vValor mod 5);
  end;

  //Notas de 2
  if ((vValor / 2) >= 1) then
  begin
    classeTroco := TTroco.Create(ceNota2, (Trunc(vValor / 2)));
    Result.Add(classeTroco);
    vValor := Trunc(vValor mod 2);
  end;

  vValor := Round(Frac(aTroco) * 100);

  //Moedas 100
  if ((vValor / 100) >= 1) then
  begin
    classeTroco := TTroco.Create(ceMoeda100, (Trunc(vValor / 100)));
    Result.Add(classeTroco);
    vValor := Trunc(vValor mod 100);
  end;

  //Moedas 50
  if ((vValor / 50) >= 1) then
  begin
    classeTroco := TTroco.Create(ceMoeda50, (Trunc(vValor / 50)));
    Result.Add(classeTroco);
    vValor := Trunc(vValor mod 50);
  end;

  //Moedas 25
  if ((vValor / 25) >= 1) then
  begin
    classeTroco := TTroco.Create(ceMoeda25, (Trunc(vValor / 25)));
    Result.Add(classeTroco);
    vValor := Trunc(vValor mod 25);
  end;

  //Moedas 10
  if ((vValor / 10) >= 1) then
  begin
    classeTroco := TTroco.Create(ceMoeda10, (Trunc(vValor / 10)));
    Result.Add(classeTroco);
    vValor := Trunc(vValor mod 10);
  end;

  //Moedas 5
  if ((vValor / 5) >= 1) then
  begin
    classeTroco := TTroco.Create(ceMoeda5, (Trunc(vValor / 5)));
    Result.Add(classeTroco);
    vValor := Trunc(vValor mod 5);
  end;

  //Moedas 1
  if ((vValor / 1) >= 1) then
  begin
    classeTroco := TTroco.Create(ceMoeda1, (Trunc(vValor / 1)));
    Result.Add(classeTroco);
    vValor := Trunc(vValor mod 1);
  end;
end;

end.

