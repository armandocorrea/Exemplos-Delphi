unit uFrame;

interface

uses
  uComponente;

type

  TFrame = class(TComponente)
  private
  public
    procedure AdicionaComponente(aComponente: TComponente);
    procedure RemoveComponente(aComponente: TComponente);
    procedure RedimensionaComponentes;
  end;

implementation

uses
  uBotao, uLabel, uMemo;

{ TFrame }

procedure TFrame.AdicionaComponente(aComponente: TComponente);
begin
  inherited;
end;

procedure TFrame.RedimensionaComponentes;
var
  I         : Integer;
  proporcao : Double;
begin
  inherited;

  for I := 0 to Pred(Length(Componentes)) do
  begin
    if Componentes[I] IS TBotao then
    begin
      proporcao := 1;
      if Self.LarguraAnterior > 0 then
        proporcao := (Self.Largura / Self.LarguraAnterior);
      proporcao := proporcao * Componentes[I].Largura;
      Componentes[I].Largura := Trunc(proporcao);

      proporcao := 1;
      if Self.XAnterior > 0 then
        proporcao := (Self.X / Self.XAnterior);
      proporcao := proporcao * Componentes[I].X;
      Componentes[I].X := Trunc(proporcao);

      proporcao := 1;
      if Self.YAnterior > 0 then
        proporcao := (Self.Y / Self.YAnterior);
      proporcao := proporcao * Componentes[I].Y;
      Componentes[I].Y := Trunc(proporcao);
    end
    else if Componentes[I] IS TMemo then
    begin
      proporcao := 1;
      if Self.LarguraAnterior > 0 then
        proporcao := (Self.Largura / Self.LarguraAnterior);
      proporcao := proporcao * Componentes[I].Largura;
      Componentes[I].Largura := Trunc(proporcao);

      proporcao := 1;
      if Self.AlturaAnterior > 0 then
        proporcao := (Self.Altura / Self.AlturaAnterior);
      proporcao := proporcao * Componentes[I].Altura;
      Componentes[I].Altura := Trunc(proporcao);

      proporcao := 1;
      if Self.XAnterior > 0 then
        proporcao := (Self.X / Self.XAnterior);
      proporcao := proporcao * Componentes[I].X;
      Componentes[I].X := Trunc(proporcao);

      proporcao := 1;
      if Self.YAnterior > 0 then
        proporcao := (Self.Y / Self.YAnterior);
      proporcao := proporcao * Componentes[I].Y;
      Componentes[I].Y := Trunc(proporcao);
    end
    else if Componentes[I] IS TLabel then
    begin
      proporcao := 1;
      if Self.XAnterior > 0 then
        proporcao := (Self.X / Self.XAnterior);
      proporcao := proporcao * Componentes[I].X;
      Componentes[I].X := Trunc(proporcao);

      proporcao := 1;
      if Self.YAnterior > 0 then
        proporcao := (Self.Y / Self.YAnterior);
      proporcao := proporcao * Componentes[I].Y;
      Componentes[I].Y := Trunc(proporcao);
    end
    else
    begin
      proporcao := 1;
      if Self.LarguraAnterior > 0 then
        proporcao := (Self.Largura / Self.LarguraAnterior);
      proporcao := proporcao * Componentes[I].Largura;
      Componentes[I].Largura := Trunc(proporcao);

      proporcao := 1;
      if Self.AlturaAnterior > 0 then
        proporcao := (Self.Altura / Self.AlturaAnterior);
      proporcao := proporcao * Componentes[I].Altura;
      Componentes[I].Altura := Trunc(proporcao);

      proporcao := 1;
      if Self.XAnterior > 0 then
        proporcao := (Self.X / Self.XAnterior);
      proporcao := proporcao * Componentes[I].X;
      Componentes[I].X := Trunc(proporcao);

      proporcao := 1;
      if Self.YAnterior > 0 then
        proporcao := (Self.Y / Self.YAnterior);
      proporcao := proporcao * Componentes[I].Y;
      Componentes[I].Y := Trunc(proporcao);
    end;
  end;
end;

procedure TFrame.RemoveComponente(aComponente: TComponente);
begin
  inherited;
end;

end.

