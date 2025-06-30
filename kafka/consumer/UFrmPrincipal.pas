unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,

  System.Generics.Collections,
  Kafka.Interfaces;

type
  TKafkaMsg = record
    Key: TBytes;
    Data: TBytes;
    Partition: Integer;
  end;

  TForm1 = class(TForm)
    mmMessage: TMemo;
    btnConsume: TButton;
    mmConfig: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    mmTopicConfig: TMemo;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnConsumeClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FKafkaServers: String;
    FKafkaConsumer: IKafkaConsumer;
    FStringEncoding: TEncoding;
    FMsgs: TList<TKafkaMsg>;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Kafka.Lib,
  Kafka.Factory,
  Kafka.Helper,
  Kafka.Types;

{$R *.dfm}

procedure TForm1.btnConsumeClick(Sender: TObject);
var
  LKafkaNames,
  LKafkaValues,
  LTopicNames,
  LTopicValues: TArray<String>;
begin
  if FKafkaConsumer = nil then
  begin
    TKafkaUtils.StringsToConfigArrays(
      mmConfig.Lines, LKafkaNames, LKafkaValues);
    TKafkaUtils.StringsToConfigArrays(
      mmTopicConfig.Lines, LTopicNames, LTopicValues);

    FKafkaConsumer := TKafkaFactory.NewConsumer(
      LKafkaNames,
      LKafkaValues,
      LTopicNames,
      LTopicValues,
      FKafkaServers,
      ['delphi'],
      TKafkaUtils.StringsToIntegerArray('0'),
      procedure(const Msg: prd_kafka_message_t)
      begin
        TThread.Synchronize(
          TThread.Current,
          procedure
          var
            MsgRec: TKafkaMsg;
          begin
            MsgRec.Key := TKafkaUtils.PointerToBytes(Msg.key, Msg.key_len);
            MsgRec.Partition := Msg.partition;

            if TKafkaHelper.IsKafkaError(Msg.err) then
            begin
              MsgRec.Data := TEncoding.ASCII.GetBytes('ERROR - ' + Integer(Msg.err).ToString);
            end
            else
            begin
              MsgRec.Data := TKafkaUtils.PointerToBytes(Msg.payload, Msg.len);
            end;

            FMsgs.Add(MsgRec);
            mmMessage.Lines.Add(
              FStringEncoding.GetString(FMsgs[Pred(FMsgs.Count)].Data));

            while FMsgs.Count > 5000 do
            begin
              FMsgs.Delete(0);
            end;
          end);
      end);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FKafkaServers := 'localhost:9091';
  FStringEncoding := TEncoding.UTF8;

  FMsgs := TList<TKafkaMsg>.Create;
  mmConfig.Lines.Add('bootstrap.servers=' + FKafkaServers);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FMsgs);
end;

end.
