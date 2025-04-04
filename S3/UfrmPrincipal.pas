unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Cloud.CloudAPI,
  Data.Cloud.AmazonAPI, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnCarregarBuckets: TButton;
    AmazonConnectionInfo1: TAmazonConnectionInfo;
    lstBuckets: TListBox;
    lstFiles: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure btnCarregarBucketsClick(Sender: TObject);
    procedure lstBucketsClick(Sender: TObject);
  private
    { Private declarations }
    S3: TAmazonStorageService;
    S3Region: TAmazonRegion;
    SRegion: String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

const
  ACCESS_KEY = 'SUA KEY';
  SECRET_KEY = 'SUA SECRET';

implementation

{$R *.dfm}

procedure TForm1.btnCarregarBucketsClick(Sender: TObject);
var
  LCloudResp: TCloudResponseInfo;
  LList: TStrings;
begin
  LCloudResp := TCloudResponseInfo.Create;

  try
    LList := S3.ListBuckets(LCloudResp);
    lstBuckets.Clear;

    if Assigned(LList) then
      for var i := 0 to pred(LList.Count) do
        lstBuckets.Items.Add(LList.Names[i]);
  finally
    LCloudResp.Free;
    LList.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AmazonConnectionInfo1.AccountName := ACCESS_KEY;
  AmazonConnectionInfo1.AccountKey := SECRET_KEY;
  AmazonConnectionInfo1.Region := 'sa-east-1';

  S3 := TAmazonStorageService.Create(AmazonConnectionInfo1);
end;

procedure TForm1.lstBucketsClick(Sender: TObject);
var
  LBucket: String;
  LBucketInfo: TAmazonBucketResult;
  LObjInfo: TAmazonObjectResult;
begin
  LBucket := lstBuckets.Items[lstBuckets.ItemIndex];
  LBucketInfo := S3.GetBucket(LBucket, nil);
  lstFiles.Items.Clear;

  if Assigned(LBucketInfo) then
    for LObjInfo in LBucketInfo.Objects do
      lstFiles.Items.Add(LObjInfo.Name);
end;

end.
