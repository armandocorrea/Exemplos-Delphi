unit UfrmMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani;

type
  TfrmMain = class(TForm)
    rectMensagem: TRectangle;
    ShadowEffect1: TShadowEffect;
    rectPrincipal: TRectangle;
    lblTitulo: TLabel;
    lblMensagem: TLabel;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure PrepararPopup;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  Notify;

{$R *.fmx}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  Self.PrepararPopup;
end;

procedure TfrmMain.PrepararPopup;
begin
  rectMensagem.Position.Y := (rectMensagem.Height * -1) - 25;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  Ntfy.Subscribe('notify-delphi-integration-devs2blu',
  procedure (AEvent: INotifyEvent)
  begin
    lblTitulo.Text   := AEvent.Title;
    lblMensagem.Text := AEvent.MessageContent;

    rectMensagem.Position.Y := -75;
    TAnimator.AnimateFloat(rectMensagem, 'Position.Y', 25, 0.7);
  end);
end;

end.
