object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Desafio - M'#233'dio'
  ClientHeight = 254
  ClientWidth = 424
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
  object edtTroco: TEdit
    Left = 40
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Informe o Troco'
  end
  object btnTroco: TButton
    Left = 167
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Troco'
    TabOrder = 1
    OnClick = btnTrocoClick
  end
  object Memo1: TMemo
    Left = 40
    Top = 64
    Width = 314
    Height = 145
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object btnFuncional: TButton
    Left = 255
    Top = 22
    Width = 99
    Height = 25
    Caption = 'Troco (Funcional)'
    TabOrder = 3
    OnClick = btnFuncionalClick
  end
end
