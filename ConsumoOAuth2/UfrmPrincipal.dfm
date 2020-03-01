object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Consumo Rest com OAuth2'
  ClientHeight = 539
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 8
    Width = 284
    Height = 25
    Caption = 'Consumo Rest com OAuth2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 80
    Width = 41
    Height = 13
    Caption = 'Client ID'
  end
  object Label3: TLabel
    Left = 141
    Top = 80
    Width = 61
    Height = 13
    Caption = 'Client Secret'
  end
  object Label4: TLabel
    Left = 8
    Top = 306
    Width = 29
    Height = 13
    Caption = 'Token'
  end
  object Label5: TLabel
    Left = 8
    Top = 41
    Width = 84
    Height = 13
    Caption = 'Base URL - Token'
  end
  object Label6: TLabel
    Left = 8
    Top = 263
    Width = 97
    Height = 13
    Caption = 'Base URL - EndPoint'
  end
  object btnObterToken: TButton
    Left = 375
    Top = 93
    Width = 75
    Height = 25
    Caption = 'Obter Token'
    TabOrder = 0
    OnClick = btnObterTokenClick
  end
  object edtClientID: TEdit
    Left = 8
    Top = 95
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtClientSecret: TEdit
    Left = 141
    Top = 95
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object mmToken: TMemo
    Left = 8
    Top = 122
    Width = 442
    Height = 114
    TabOrder = 3
  end
  object btnConsumirRest: TButton
    Left = 344
    Top = 319
    Width = 106
    Height = 25
    Caption = 'Consumir EndPoint'
    TabOrder = 4
    OnClick = btnConsumirRestClick
  end
  object mmBody: TMemo
    Left = 8
    Top = 349
    Width = 442
    Height = 89
    TabOrder = 5
  end
  object edtToken: TEdit
    Left = 8
    Top = 322
    Width = 330
    Height = 21
    TabOrder = 6
  end
  object mmResposta: TMemo
    Left = 8
    Top = 444
    Width = 442
    Height = 89
    TabOrder = 7
  end
  object edtBaseURL: TEdit
    Left = 8
    Top = 56
    Width = 442
    Height = 21
    TabOrder = 8
  end
  object edtBaseURL2: TEdit
    Left = 8
    Top = 278
    Width = 442
    Height = 21
    TabOrder = 9
  end
end
