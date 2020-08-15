unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.SvcMgr, Vcl.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, Vcl.ExtCtrls, Interfaces.EnviaSMS;

type
  TLifeVetSMS = class(TService)
    Conexao: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Timer: TTimer;
    procedure ServiceAfterInstall(Sender: TService);
    procedure ServiceBeforeInstall(Sender: TService);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
    FEnviaSMS: IEnviaSMS;
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  LifeVetSMS: TLifeVetSMS;

implementation

uses
  UAmazonPinPoint, UFuncoesExtras;

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  LifeVetSMS.Controller(CtrlCode);
end;

function TLifeVetSMS.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TLifeVetSMS.ServiceAfterInstall(Sender: TService);
begin
  TFuncoesExtras.Grava_Log('Serviço Instalado.');
end;

procedure TLifeVetSMS.ServiceBeforeInstall(Sender: TService);
begin
  TFuncoesExtras.Processa_Ini();
  TFuncoesExtras.Grava_Log('Instalando Serviço...');
end;

procedure TLifeVetSMS.ServiceStart(Sender: TService; var Started: Boolean);
begin
  TFuncoesExtras.Processa_Ini();

  Timer.Enabled  := False;
  Timer.Interval := UFuncoesExtras.Parametros.TempoTimer.ToInteger();
  Timer.Enabled  := True;

  TFuncoesExtras.Grava_Log('Serviço SMS iniciado...');
end;

procedure TLifeVetSMS.TimerTimer(Sender: TObject);
var
  I : Integer;
  xResultado : String;
begin
  Timer.Enabled := false;

  try
    // SMS...
    if not(Assigned(FEnviaSMS)) then
      FEnviaSMS := TAmazonPinPoint.Create;

    //while not sua_query.EOF do
    begin
      try
        FEnviaSMS
          .NumeroCelularValido(''{numero_celular})
          .SetMensagem(''{mensagem})
          .SetRegiao(''{região da sua conta da amazon})
          .SetAppId(''{id do seu projeto no PinPoint})
          .SetAccessKey(''{access_key})
          .SetSecretKey(''{Secret_key})
          .EnviaSMS(xResultado);

        if AnsiSameText(xResultado, 'OK') then
          TFuncoesExtras.Grava_Log('SMS enviado: ' {numero_celular})
        else
          TFuncoesExtras.Grava_Log('SMS com erro: ' {numero_celular} + xResultado);

      except
        On E: Exception do
          TFuncoesExtras.Grava_Log('SMS com erro: ' {numero_celular} + e.Message);
      end;

      {sua_query.Next};
    end;

    except on ex:exception do
    begin
      TFuncoesExtras.Grava_Log('Erro ao enviar SMS: ' + ex.Message);
    end;
  end;

  Timer.Enabled     := True;
end;

end.
