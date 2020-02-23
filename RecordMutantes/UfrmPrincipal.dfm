object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Records Mutantes / Vari'#225'veis'
  ClientHeight = 183
  ClientWidth = 438
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
    Left = 80
    Top = 16
    Width = 309
    Height = 25
    Caption = 'Records Mutantes / Vari'#225'veis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnAssalariado: TButton
    Left = 32
    Top = 80
    Width = 105
    Height = 25
    Caption = 'Valor Assalariado'
    TabOrder = 0
    OnClick = btnAssalariadoClick
  end
  object btnHorista: TButton
    Left = 32
    Top = 111
    Width = 105
    Height = 25
    Caption = 'Valor Horista'
    TabOrder = 1
    OnClick = btnHoristaClick
  end
end
