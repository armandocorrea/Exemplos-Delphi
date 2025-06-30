object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 379
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 18
    Width = 79
    Height = 15
    Caption = 'Configurations'
  end
  object Label2: TLabel
    Left = 8
    Top = 154
    Width = 59
    Height = 15
    Caption = 'Mensagem'
  end
  object Label3: TLabel
    Left = 304
    Top = 18
    Width = 111
    Height = 15
    Caption = 'Topic Configurations'
  end
  object mmMessage: TMemo
    Left = 8
    Top = 175
    Width = 577
    Height = 161
    TabOrder = 0
  end
  object btnConsume: TButton
    Left = 510
    Top = 346
    Width = 75
    Height = 25
    Caption = 'Consume'
    TabOrder = 1
    OnClick = btnConsumeClick
  end
  object mmConfig: TMemo
    Left = 8
    Top = 39
    Width = 281
    Height = 89
    Lines.Strings = (
      'group.id=1')
    TabOrder = 2
  end
  object mmTopicConfig: TMemo
    Left = 304
    Top = 39
    Width = 281
    Height = 89
    Lines.Strings = (
      'auto.offset.reset=latest'
      'enable.auto.commit=true')
    TabOrder = 3
  end
end
