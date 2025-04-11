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
    btnDownload: TButton;
    btnUpload: TButton;
    OpenDialog1: TOpenDialog;
    btnCriarBucket: TButton;
    btnExcluir: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCarregarBucketsClick(Sender: TObject);
    procedure lstBucketsClick(Sender: TObject);
    procedure btnDownloadClick(Sender: TObject);
    procedure btnUploadClick(Sender: TObject);
    procedure btnCriarBucketClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    S3: TAmazonStorageService;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

const
  ACCESS_KEY = 'SUA ACCESS KEY';
  SECRET_KEY = 'SUA SECRET KEY';
  SUCCESS = 200;
  NO_CONTENT = 204;

implementation

{$R *.dfm}

procedure TForm1.btnCarregarBucketsClick(Sender: TObject);
var
  LCloudResp: TCloudResponseInfo;
  LList: TStrings;
begin
  LCloudResp := TCloudResponseInfo.Create;
  LList := S3.ListBuckets(LCloudResp);

  try
    lstBuckets.Clear;

    if LCloudResp.StatusCode <> SUCCESS then
      raise Exception.Create('Error: ' + LCloudResp.StatusCode.ToString + ' - ' +
        LCloudResp.StatusMessage);

    if Assigned(LList) then
      for var i := 0 to pred(LList.Count) do
        lstBuckets.Items.Add(LList.Names[i]);
  finally
    LCloudResp.Free;
    LList.Free;
  end;
end;

procedure TForm1.btnCriarBucketClick(Sender: TObject);
var
  LNewBucket: String;
begin
  LNewBucket := InputBox('Nome da Bucket', 'Informe o nome da Bucket', '');

  S3.CreateBucket(LNewBucket, TAmazonACLType.amzbaPrivate, amzrSAEast1, nil);
  btnCarregarBuckets.Click;
  ShowMessage('Bucket criada com sucesso.');
end;

procedure TForm1.btnDownloadClick(Sender: TObject);
var
  LStream: TStream;
  LDir, LBucket, LFile: String;
begin
  Screen.Cursor := crHourGlass;
  LStream := TMemoryStream.Create;
  try
    LBucket := lstBuckets.Items[lstBuckets.ItemIndex];
    LFile := lstFiles.Items[lstFiles.ItemIndex];

    S3.GetObject(LBucket, LFile, LStream);

    LDir := ExtractFilePath(ParamStr(0));

    TMemoryStream(LStream).SaveToFile(LDir + PathDelim + LFile);
    ShowMessage('Arquivo baixado com sucesso!');
  finally
    LStream.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm1.btnExcluirClick(Sender: TObject);
var
  LFile: String;
  LResponse: TCloudResponseInfo;
begin
  LResponse := TCloudResponseInfo.Create;
  LFile := lstFiles.Items[lstFiles.ItemIndex];

  try
    try
      Screen.Cursor := crHourGlass;
      S3.DeleteObject(lstBuckets.Items[lstBuckets.ItemIndex], LFile, LResponse);

      if LResponse.StatusCode <> NO_CONTENT then
        raise Exception.Create(LResponse.StatusMessage);

      ShowMessage('Arquivo excluido com sucesso.');
    except
      on e: exception do
        raise Exception.Create('Erro ao excluir o arquivo: ' + e.Message);
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm1.btnUploadClick(Sender: TObject);
var
  LFile: String;
  LContents: TBytes;
  LReader: TBinaryReader;
  LMeta: TStringList;
begin
  if OpenDialog1.Execute then
  begin
    LFile := ExtractFileName(OpenDialog1.FileName);
    LReader := TBinaryReader.Create(OpenDialog1.FileName);

    try
      LContents := LReader.ReadBytes(LReader.BaseStream.Size);
    finally
      LReader.Free;
    end;

    try
      try
        LMeta := TStringList.Create;
        LMeta.Add('Content-type=*.jpg');
        Screen.Cursor := crHourGlass;

        S3.UploadObject(lstBuckets.Items[lstBuckets.ItemIndex], LFile,
          LContents, False, LMeta);

        ShowMessage('Upload realizado com sucesso.');
      except
        on e: exception do
          raise Exception.Create('Erro ao executar o upload: ' + e.Message);
      end;
    finally
      Screen.Cursor := crDefault;
    end;
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
