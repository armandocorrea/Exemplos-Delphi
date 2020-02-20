object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Desafio - Avan'#231'ado'
  ClientHeight = 394
  ClientWidth = 297
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
    Left = 18
    Top = 49
    Width = 37
    Height = 13
    Caption = 'Largura'
  end
  object Label2: TLabel
    Left = 162
    Top = 49
    Width = 29
    Height = 13
    Caption = 'Altura'
  end
  object Label3: TLabel
    Left = 18
    Top = 93
    Width = 29
    Height = 13
    Caption = 'Eixo X'
  end
  object Label4: TLabel
    Left = 162
    Top = 93
    Width = 29
    Height = 13
    Caption = 'Eixo Y'
  end
  object btnCriar: TButton
    Left = 18
    Top = 16
    Width = 111
    Height = 25
    Caption = 'Criar Componentes'
    TabOrder = 0
    OnClick = btnCriarClick
  end
  object edtLargura: TEdit
    Left = 18
    Top = 66
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Largura'
  end
  object edtAltura: TEdit
    Left = 162
    Top = 66
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Altura'
  end
  object edtX: TEdit
    Left = 18
    Top = 108
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'X'
  end
  object edtY: TEdit
    Left = 162
    Top = 108
    Width = 121
    Height = 21
    TabOrder = 4
    TextHint = 'Y'
  end
  object btnMudaValores: TButton
    Left = 18
    Top = 141
    Width = 111
    Height = 25
    Caption = 'Mudar Valores'
    TabOrder = 5
    OnClick = btnMudaValoresClick
  end
  object Memo1: TMemo
    Left = 18
    Top = 184
    Width = 265
    Height = 185
    ScrollBars = ssVertical
    TabOrder = 6
  end
end
