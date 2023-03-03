unit USendMessage.Ntfy;

interface

uses
  Notify;

type
  TMessage = class
    private
      FTopic: String;
      FTitle: String;
      FMessage: String;
    public
      property Topic: String   read FTopic   write FTopic;
      property Title: String   read FTitle   write FTitle;
      property Message: String read FMessage write FMessage;
  end;

  TNotification = class
    private
      FMessage: TMessage;
    public
      procedure SendMessage;
      property Message: TMessage read FMessage write FMessage;
  end;

implementation

uses
  SysUtils;

{ TNotification }

procedure TNotification.SendMessage;
begin
  Ntfy.Notification(
    New.Notification
      .Topic(FMessage.Topic)   //'notify-delphi-integration-devs2blu'
      .Title(FMessage.FTitle) //'Exemplo Devs2Blu
      .MessageContent(FMessage.FMessage) //'Serviço de notificações gratuito'
  );

  Ntfy.Publish;
end;

end.
