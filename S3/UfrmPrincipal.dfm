object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 289
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object btnCarregarBuckets: TButton
    Left = 8
    Top = 16
    Width = 105
    Height = 25
    Caption = 'Carregar Buckets'
    TabOrder = 0
    OnClick = btnCarregarBucketsClick
  end
  object lstBuckets: TListBox
    Left = 8
    Top = 47
    Width = 369
    Height = 224
    ItemHeight = 15
    TabOrder = 1
    OnClick = lstBucketsClick
  end
  object lstFiles: TListBox
    Left = 400
    Top = 47
    Width = 369
    Height = 224
    ItemHeight = 15
    TabOrder = 2
  end
  object btnDownload: TButton
    Left = 400
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Download'
    TabOrder = 3
    OnClick = btnDownloadClick
  end
  object AmazonConnectionInfo1: TAmazonConnectionInfo
    TableEndpoint = 'sdb.amazonaws.com'
    QueueEndpoint = 'sqs.amazonaws.com'
    StorageEndpoint = 's3.amazonaws.com'
    Left = 320
    Top = 22
  end
end
