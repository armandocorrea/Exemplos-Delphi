object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Tipos de Par'#226'metros'
  ClientHeight = 223
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnVar: TButton
    Left = 250
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Var'
    TabOrder = 0
    OnClick = btnVarClick
  end
  object btnConst: TButton
    Left = 169
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Const'
    TabOrder = 1
    OnClick = btnConstClick
  end
  object btnOut: TButton
    Left = 331
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Out'
    TabOrder = 2
    OnClick = btnOutClick
  end
  object edtValor: TEdit
    Left = 88
    Top = 48
    Width = 318
    Height = 23
    TabOrder = 3
    TextHint = 'Entre com um valor'
  end
  object edtResultado: TEdit
    Left = 88
    Top = 114
    Width = 318
    Height = 23
    TabOrder = 4
    TextHint = 'Resultado'
  end
  object btnPadrao: TButton
    Left = 88
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 5
    OnClick = btnPadraoClick
  end
end
