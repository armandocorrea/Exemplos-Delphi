object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Consumo SOAP com Header'
  ClientHeight = 456
  ClientWidth = 580
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
    Left = 56
    Top = 8
    Width = 509
    Height = 25
    Caption = 'CONSUMO SOAP COM HEADER PERSONALIZADO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 272
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object edtUsuario: TEdit
    Left = 24
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Usu'#225'rio'
  end
  object edtSenha: TEdit
    Left = 151
    Top = 56
    Width = 106
    Height = 21
    TabOrder = 2
    TextHint = 'Senha'
  end
  object Memo1: TMemo
    Left = 24
    Top = 83
    Width = 541
    Height = 166
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 24
    Top = 267
    Width = 541
    Height = 166
    TabOrder = 4
  end
end
