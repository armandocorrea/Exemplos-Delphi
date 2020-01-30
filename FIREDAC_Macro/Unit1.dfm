object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 280
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 45
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label2: TLabel
    Left = 128
    Top = 8
    Width = 263
    Height = 23
    Alignment = taCenter
    Caption = 'FIREDAC - Where Din'#226'mico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 16
    Top = 64
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object Button1: TButton
    Left = 160
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 93
    Width = 462
    Height = 156
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\PROJETOS\GitHub\trunk\FIREDAC_Macro\DADOS\DADOS.FB2'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 104
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 176
    Top = 240
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 248
    Top = 240
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 312
    Top = 240
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 392
    Top = 240
  end
end
