unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,

  Kafka.Interfaces;

type
  TForm1 = class(TForm)
    btnProducer: TButton;
    mmMessage: TMemo;
    procedure btnProducerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FKafkaProducer: IKafkaProducer;
    FStringEncoding: TEncoding;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  DateUtils, Kafka.Factory, Kafka.Lib, Kafka.Helper;

{$R *.dfm}

procedure TForm1.btnProducerClick(Sender: TObject);
begin
  // Create a new producer if required
  if FKafkaProducer = nil then
  begin
    FKafkaProducer := TKafkaFactory.NewProducer(
      ['bootstrap.servers'],
      ['localhost:9091']);
  end;

  FKafkaProducer.Produce(
    'delphi',
    mmMessage.Text,
    'key',
    FStringEncoding,
    RD_KAFKA_PARTITION_UA,
    RD_KAFKA_MSG_F_COPY,
    @self);

  TKafkaHelper.Flush(FKafkaProducer.KafkaHandle);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FStringEncoding := TEncoding.UTF8;
end;

end.
