object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Fluent Interface'
  ClientHeight = 232
  ClientWidth = 532
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnWithoutFluent: TButton
    Left = 39
    Top = 20
    Width = 75
    Height = 25
    Caption = 'Sem Fluent'
    TabOrder = 0
    OnClick = btnWithoutFluentClick
  end
  object btnWithFluent: TButton
    Left = 120
    Top = 20
    Width = 75
    Height = 25
    Caption = 'Com Fluent'
    TabOrder = 1
    OnClick = btnWithFluentClick
  end
  object mmMessage: TMemo
    Left = 39
    Top = 54
    Width = 442
    Height = 157
    TabOrder = 2
  end
  object btnInjection: TButton
    Left = 201
    Top = 20
    Width = 127
    Height = 25
    Caption = 'Com Fluent e Inje'#231#227'o'
    TabOrder = 3
    OnClick = btnInjectionClick
  end
  object btnWithoutInjection: TButton
    Left = 334
    Top = 20
    Width = 147
    Height = 25
    Caption = 'Com Fluent e Sem Inje'#231#227'o'
    TabOrder = 4
    OnClick = btnWithoutInjectionClick
  end
end
