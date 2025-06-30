object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 238
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object btnProducer: TButton
    Left = 8
    Top = 183
    Width = 75
    Height = 25
    Caption = 'Producer'
    TabOrder = 0
    OnClick = btnProducerClick
  end
  object mmMessage: TMemo
    Left = 8
    Top = 8
    Width = 289
    Height = 169
    Lines.Strings = (
      '{'
      '  "code": 1,'
      '  "name": "armando neto"'
      '}')
    TabOrder = 1
  end
end
