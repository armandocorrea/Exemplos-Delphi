object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Desafio - Simples'
  ClientHeight = 189
  ClientWidth = 398
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
  object lblSubstituido: TLabel
    Left = 24
    Top = 74
    Width = 175
    Height = 19
    Caption = 'TEXTO SUBSTITUIDO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object edtTexto: TEdit
    Left = 24
    Top = 16
    Width = 361
    Height = 21
    TabOrder = 0
    Text = 'edtTexto'
    TextHint = 'Informe o Texto'
  end
  object btnSubstituir: TButton
    Left = 310
    Top = 43
    Width = 75
    Height = 25
    Caption = 'Substituir'
    TabOrder = 3
    OnClick = btnSubstituirClick
  end
  object edtVelho: TEdit
    Left = 24
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Palavra Antiga'
  end
  object edtNovo: TEdit
    Left = 151
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Palavra Nova'
  end
  object btnSubstitui2: TButton
    Left = 272
    Top = 74
    Width = 113
    Height = 25
    Caption = 'Substituir (Funcional)'
    TabOrder = 4
    OnClick = btnSubstitui2Click
  end
end
