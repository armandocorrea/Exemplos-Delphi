object frmStringLiterals: TfrmStringLiterals
  Left = 0
  Top = 0
  Caption = 'String Literals'
  ClientHeight = 210
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnMultilines: TButton
    Left = 95
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Multilines'
    TabOrder = 0
    OnClick = btnMultilinesClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 721
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Width = 60
        Visible = True
      end>
  end
  object btnStringLiteral: TButton
    Left = 8
    Top = 16
    Width = 81
    Height = 25
    Caption = 'String Literals'
    TabOrder = 2
    OnClick = btnStringLiteralClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=postgres'
      'Password=123456'
      'DriverID=PG'
      'Database=postgres'
      'MetaDefSchema=dicas_armandinho'
      'MetaCurSchema=dicas_armandinho')
    Connected = True
    LoginPrompt = False
    Left = 208
    Top = 96
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\10\bin\libpq.dll'
    Left = 320
    Top = 96
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 432
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 40
    Top = 112
  end
end
