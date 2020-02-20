unit uMaquina2;

interface

uses
  ulMaquina2, System.Classes;

Type
  TMaquina2 = class(TInterfacedObject, IMaquina2)
    private
      FTroco : Double;
      FList  : TList;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : IMaquina2;

      function SetaTroco(aTroco : Double) : IMaquina2;
      function MontarTroco: IMaquina2;
      function &End : TList;
  end;

implementation

uses
  System.SysUtils, uTroco;

{ TMaquina2 }

function TMaquina2.&End: TList;
begin
  Result := FList;
end;

constructor TMaquina2.Create;
begin
  FList := TList.Create;
end;

destructor TMaquina2.Destroy;
begin
  FreeAndNil(FList);
  inherited;
end;

function TMaquina2.MontarTroco: IMaquina2;
var
  classeTroco : TTroco;
  vValor      : Integer;
begin
  Result := Self;
  vValor := Trunc(FTroco);

  //Notas de 100
  if ((vValor / 100) >= 1) then
  begin
    classeTroco := TTroco.Create(ceNota100, (Trunc(vValor / 100)));
    FList.Add(classeTroco);
    vValor := Trunc(vValor mod 100);
  end;

  //Notas de 50
  if ((vValor / 50) >= 1) then
  begin
    classeTroco := TTroco.Create(ceNota50, (Trunc(vValor / 50)));
    FList.Add(classeTroco);
    vValor := Trunc(vValor mod 50);
  end;

  //Notas de 20
  if ((vValor / 20) >= 1) then
  begin
    classeTroco := TTroco.Create(ceNota20, (Trunc(vValor / 20)));
    FList.Add(classeTroco);
    vValor := Trunc(vValor mod 20);
  end;

  //Notas de 10
  if ((vValor / 10) >= 1) then
  begin
    classeTroco := TTroco.Create(ceNota10, (Trunc(vValor / 10)));
    FList.Add(classeTroco);
    vValor := Trunc(vValor mod 10);
  end;

  //Notas de 5
  if ((vValor / 5) >= 1) then
  begin
    classeTroco := TTroco.Create(ceNota5, (Trunc(vValor / 5)));
    FList.Add(classeTroco);
    vValor := Trunc(vValor mod 5);
  end;

  //Notas de 2
  if ((vValor / 2) >= 1) then
  begin
    classeTroco := TTroco.Create(ceNota2, (Trunc(vValor / 2)));
    FList.Add(classeTroco);
    vValor := Trunc(vValor mod 2);
  end;

  vValor := Round(Frac(FTroco) * 100);

  //Moedas 100
  if ((vValor / 100) >= 1) then
  begin
    classeTroco := TTroco.Create(ceMoeda100, (Trunc(vValor / 100)));
    FList.Add(classeTroco);
    vValor := Trunc(vValor mod 100);
  end;

  //Moedas 50
  if ((vValor / 50) >= 1) then
  begin
    classeTroco := TTroco.Create(ceMoeda50, (Trunc(vValor / 50)));
    FList.Add(classeTroco);
    vValor := Trunc(vValor mod 50);
  end;

  //Moedas 25
  if ((vValor / 25) >= 1) then
  begin
    classeTroco := TTroco.Create(ceMoeda25, (Trunc(vValor / 25)));
    FList.Add(classeTroco);
    vValor := Trunc(vValor mod 25);
  end;

  //Moedas 10
  if ((vValor / 10) >= 1) then
  begin
    classeTroco := TTroco.Create(ceMoeda10, (Trunc(vValor / 10)));
    FList.Add(classeTroco);
    vValor := Trunc(vValor mod 10);
  end;

  //Moedas 5
  if ((vValor / 5) >= 1) then
  begin
    classeTroco := TTroco.Create(ceMoeda5, (Trunc(vValor / 5)));
    FList.Add(classeTroco);
    vValor := Trunc(vValor mod 5);
  end;

  //Moedas 1
  if ((vValor / 1) >= 1) then
  begin
    classeTroco := TTroco.Create(ceMoeda1, (Trunc(vValor / 1)));
    FList.Add(classeTroco);
    vValor := Trunc(vValor mod 1);
  end;
end;

class function TMaquina2.New: IMaquina2;
begin
  Result := Self.Create;
end;

function TMaquina2.SetaTroco(aTroco: Double): IMaquina2;
begin
  Result := Self;
  FTroco := aTroco;
end;

end.
