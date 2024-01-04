object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 222
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 53
    Height = 15
    Caption = 'N'#250'mero 1'
  end
  object Label2: TLabel
    Left = 136
    Top = 16
    Width = 53
    Height = 15
    Caption = 'N'#250'mero 2'
  end
  object edtNumero1: TEdit
    Left = 8
    Top = 37
    Width = 121
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 0
  end
  object edtNumero2: TEdit
    Left = 136
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object edtResultado: TEdit
    Left = 8
    Top = 126
    Width = 249
    Height = 23
    ReadOnly = True
    TabOrder = 2
    TextHint = 'Resultado'
  end
  object btnCalcular: TButton
    Left = 8
    Top = 95
    Width = 249
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
  object cmbOperacao: TComboBox
    Left = 8
    Top = 66
    Width = 249
    Height = 23
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 4
    Text = 'Somar'
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
  end
  object btnComInterface: TButton
    Left = 8
    Top = 184
    Width = 81
    Height = 25
    Caption = 'Com Interface'
    TabOrder = 5
    OnClick = btnComInterfaceClick
  end
  object btnSemInterface: TButton
    Left = 95
    Top = 184
    Width = 87
    Height = 25
    Caption = 'Sem Interface'
    TabOrder = 6
    OnClick = btnSemInterfaceClick
  end
end
