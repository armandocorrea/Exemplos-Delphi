unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.SvcMgr, Vcl.Dialogs,
  Vcl.ExtCtrls;

type
  TServiceDelphi = class(TService)
    Timer: TTimer;
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure TimerTimer(Sender: TObject);
    procedure ServiceAfterInstall(Sender: TService);
  private
    { Private declarations }
    procedure GravarLog(aTexto: string);
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  ServiceDelphi: TServiceDelphi;

implementation

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  ServiceDelphi.Controller(CtrlCode);
end;

function TServiceDelphi.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TServiceDelphi.GravarLog(aTexto: string);
var
  xFile: TextFile;
  xArqLog: String;
begin
  aTexto := FormatDateTime('dd/mm/yyyy hh:nn:ss', now) + ' - ' + aTexto;

  xArqLog := 'C:\log-email-' + FormatDateTime('yyyyMMdd', now) + '.txt';

  AssignFile(xFile, xArqLog);
  try
    if FileExists(xArqLog) then
      Append(xFile)
    else
      Rewrite(xFile);

    WriteLn(xFile, aTexto);
  finally
    CloseFile(xFile);
  end;
end;

procedure TServiceDelphi.ServiceAfterInstall(Sender: TService);
begin
  Self.GravarLog('Serviço Instalado com Sucesso.');
end;

procedure TServiceDelphi.ServiceStart(Sender: TService; var Started: Boolean);
begin
  Timer.Enabled := True;
end;

procedure TServiceDelphi.TimerTimer(Sender: TObject);
begin
  Timer.Enabled := False;
  try
    {
     Aqui estaria a sua regra para enviar o e-mail ou o Push Notification
     Para exemplificar vamos logar uma mensagem em um arquivo texto
    }
    Self.GravarLog('Enviando e-mail ou push para o cliente ABC...');
  finally
    Timer.Enabled := True;
  end;
end;

end.
