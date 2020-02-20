unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtTroco: TEdit;
    btnTroco: TButton;
    Memo1: TMemo;
    btnFuncional: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnTrocoClick(Sender: TObject);
    procedure btnFuncionalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uMaquina, uTroco, uMaquina2;

{$R *.dfm}

//Programação Funcional
procedure TfrmPrincipal.btnFuncionalClick(Sender: TObject);
var
  I           : Integer;
  sTrocos     : TList;
  classeTroco : TTroco;
begin
  Memo1.Lines.Clear;

  sTrocos := TMaquina2
              .New
                .SetaTroco(StrToFloat(edtTroco.Text))
                .MontarTroco
              .&End;

  if Assigned(sTrocos) then
  begin
    for I := 0 to Pred(sTrocos.Count) do
    begin
      classeTroco := TTroco(sTrocos[I]);
                                                        //ClasseHelper
      Memo1.Lines.Add(classeTroco.Quantidade.ToString + classeTroco.TextoMonetario);
    end;
  end;
end;

procedure TfrmPrincipal.btnTrocoClick(Sender: TObject);
var
  I             : Integer;
  classeMaquina : TMaquina;
  sTrocos       : TList;
  classeTroco   : TTroco;
begin
  Memo1.Lines.Clear;

  try
    classeMaquina := TMaquina.Create;
    sTrocos       := classeMaquina.MontarTroco(StrToFloat(edtTroco.Text));

    if Assigned(sTrocos) then
    begin
      for I := 0 to Pred(sTrocos.Count) do
      begin
        classeTroco := TTroco(sTrocos[I]);
                                                          //ClasseHelper
        Memo1.Lines.Add(classeTroco.Quantidade.ToString + classeTroco.TextoMonetario);
      end;
    end;
  finally
    FreeAndNil(sTrocos);
    FreeAndNil(classeMaquina);
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  edtTroco.Text := '125,15';
end;

end.
