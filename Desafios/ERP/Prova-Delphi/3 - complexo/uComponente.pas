unit uComponente;

interface

type

  TComponente = class;

  TComponenteArray = array of TComponente;

  TComponente = class
  private
    FName : String;

    FX: Integer;
    FXAnterior : Integer;

    FY: Integer;
    FYAnterior: Integer;

    FAltura: Integer;
    FAlturaAnterior : Integer;

    FLargura: Integer;
    FLarguraAnterior: Integer;

    FComponentes: TComponenteArray;
    procedure SetX(const Value: Integer);
    procedure SetAltura(const Value: Integer);
    procedure SetLargura(const Value: Integer);
    procedure SetY(const Value: Integer);
  public
    procedure AdicionaComponente(aComponente: TComponente); virtual;
    procedure RemoveComponente(aComponente: TComponente); virtual;

    property Name: String read FName write FName;

    property X : Integer read FX write SetX;
    property XAnterior : Integer read FXAnterior;

    property Y : Integer read FY write SetY;
    property YAnterior : Integer read FYAnterior;

    property Altura : Integer read FAltura write SetAltura;
    property AlturaAnterior : Integer read FAlturaAnterior;

    property Largura : Integer read FLargura write SetLargura;
    property LarguraAnterior : Integer read FLarguraAnterior;

    property Componentes : TComponenteArray read FComponentes write FComponentes;
  end;

implementation

uses
  System.SysUtils;


procedure TComponente.AdicionaComponente(aComponente: TComponente);
begin
  SetLength(FComponentes, Length(FComponentes)+1);
  FComponentes[Length(FComponentes)-1] := aComponente;
end;

procedure TComponente.RemoveComponente(aComponente: TComponente);
var
  I: Integer;
  Removeu : Boolean;
begin
  Removeu := False;
  for I := 0 to Pred(Length(FComponentes)) do
  begin
    if (FComponentes[I].FName = aComponente.FName) and not (Removeu) then
    begin
      FreeAndNil(FComponentes[I]);
      Removeu := True;
    end;

    if Removeu then
      FComponentes[I] := FComponentes[I+1];
  end;

  SetLength(FComponentes, Length(FComponentes)-1);
end;

procedure TComponente.SetAltura(const Value: Integer);
begin
  FAlturaAnterior := FAltura;
  FAltura         := Value;
end;

procedure TComponente.SetLargura(const Value: Integer);
begin
  FLarguraAnterior := FLargura;
  FLargura         := Value;
end;

procedure TComponente.SetX(const Value: Integer);
begin
  FXAnterior := FX;
  FX         := Value;
end;

procedure TComponente.SetY(const Value: Integer);
begin
  FYAnterior := FY;
  FY         := Value;
end;

end.

