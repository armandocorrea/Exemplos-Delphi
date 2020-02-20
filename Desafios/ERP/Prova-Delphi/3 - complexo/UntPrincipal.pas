unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uFrame;

type
  TfrmPrincipal = class(TForm)
    btnCriar: TButton;
    edtLargura: TEdit;
    edtAltura: TEdit;
    edtX: TEdit;
    edtY: TEdit;
    btnMudaValores: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    procedure btnCriarClick(Sender: TObject);
    procedure btnMudaValoresClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFrame : TFrame;
    procedure ImprimeValores;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  uBotao, uMemo, uLabel;

procedure TfrmPrincipal.btnCriarClick(Sender: TObject);
var
  cBotao : TBotao;
  cMemo  : TMemo;
  cLabel : TLabel;
begin
  //Frame
  FFrame         := TFrame.Create;
  FFrame.X       := 0;
  FFrame.Y       := 0;
  FFrame.Altura  := 500;
  FFrame.Largura := 500;

  //Botão
  cBotao         := TBotao.Create;
  cBotao.X       := 5;
  cBotao.Y       := 0;
  cBotao.Altura  := 25;
  cBotao.Largura := 75;

  //Memo
  cMemo         := TMemo.Create;
  cMemo.X       := 5;
  cMemo.Y       := 30;
  cMemo.Altura  := 100;
  cMemo.Largura := 100;

  //Label
  cLabel         := TLabel.Create;
  cLabel.X       := 5;
  cLabel.Y       := 150;
  cLabel.Altura  := 10;
  cLabel.Largura := 50;

  FFrame.AdicionaComponente(cBotao);
  FFrame.AdicionaComponente(cMemo);
  FFrame.AdicionaComponente(cLabel);
  Self.ImprimeValores;
end;

procedure TfrmPrincipal.btnMudaValoresClick(Sender: TObject);
begin
  FFrame.X       := StrToInt(edtX.Text);
  FFrame.Y       := StrToInt(edtY.Text);
  FFrame.Altura  := StrToInt(edtAltura.Text);
  FFrame.Largura := StrToInt(edtLargura.Text);

  FFrame.RedimensionaComponentes;
  Self.ImprimeValores;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  edtLargura.Text := '400';
  edtAltura.Text  := '400';
  edtX.Text       := '10';
  edtY.Text       := '10';

  Memo1.Lines.Clear;
end;

procedure TfrmPrincipal.ImprimeValores;
var
  I: Integer;
begin
  Memo1.Lines.Add('FRAME');
  Memo1.Lines.Add('Altura: ' + FFrame.Altura.ToString + ' - Largura: ' + FFrame.Largura.ToString);
  Memo1.Lines.Add('X: ' + FFrame.X.ToString + ' - Y: ' + FFrame.Y.ToString);

  Memo1.Lines.Add('----------------------------------');

  for I := 0 to Pred(Length(FFrame.Componentes)) do
  begin
    if FFrame.Componentes[I] IS TBotao then
      Memo1.Lines.Add('BOTÃO')
    else if FFrame.Componentes[I] IS TMemo then
      Memo1.Lines.Add('MEMO')
    else if FFrame.Componentes[I] IS TLabel then
      Memo1.Lines.Add('LABEL')
    else if FFrame.Componentes[I] IS TFrame then
      Memo1.Lines.Add('FRAME')
    else
      Memo1.Lines.Add('OUTROS');

    Memo1.Lines.Add('Altura: ' + FFrame.Componentes[I].Altura.ToString + ' - Largura: ' + FFrame.Componentes[I].Largura.ToString);
    Memo1.Lines.Add('X: ' + FFrame.Componentes[I].X.ToString + ' - Y: ' + FFrame.Componentes[I].Y.ToString);

    Memo1.Lines.Add('----------------------------------');
    Memo1.Lines.Add('');
  end;

end;

end.
