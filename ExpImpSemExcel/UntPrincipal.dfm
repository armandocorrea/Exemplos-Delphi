object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Exemplo sem o Office'
  ClientHeight = 183
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnExportar: TButton
    Left = 16
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Exportar'
    TabOrder = 0
    OnClick = btnExportarClick
  end
  object btnImportar: TButton
    Left = 462
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Importar'
    TabOrder = 1
    OnClick = btnImportarClick
  end
  object grdMain: TDBGrid
    Left = 16
    Top = 48
    Width = 521
    Height = 120
    DataSource = dtsMain
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dtsMain: TDataSource
    DataSet = FDQryMain
    Left = 32
    Top = 96
  end
  object FDConexao: TFDConnection
    Params.Strings = (
      'DriverID=CDataExcel')
    Left = 160
    Top = 8
  end
  object FDPhysCDataExcelDriverLink1: TFDPhysCDataExcelDriverLink
    DriverID = 'CDataExcel'
    Left = 224
    Top = 8
  end
  object FDQryMain: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT * FROM CData.Excel.Dados')
    Left = 80
    Top = 96
  end
  object FDStp: TFDStoredProc
    Connection = FDConexao
    StoredProcName = 'CData.Excel.CreateWorksheet'
    Left = 328
    Top = 8
    ParamData = <
      item
        Position = 1
        Name = 'file'
        DataType = ftWideString
        ParamType = ptInput
        Size = 2000
      end
      item
        Position = 2
        Name = 'sheet'
        DataType = ftWideString
        ParamType = ptInput
        Size = 2000
      end
      item
        Position = 3
        Name = 'columnnames'
        DataType = ftWideString
        ParamType = ptInput
        Size = 2000
      end>
  end
end
