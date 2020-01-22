object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Exemplo com Office'
  ClientHeight = 164
  ClientWidth = 369
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
    Left = 24
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Exportar'
    TabOrder = 0
    OnClick = btnExportarClick
  end
  object btnImportar: TButton
    Left = 262
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Importar'
    TabOrder = 1
    OnClick = btnImportarClick
  end
  object Memo1: TMemo
    Left = 26
    Top = 56
    Width = 311
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 2
  end
end
