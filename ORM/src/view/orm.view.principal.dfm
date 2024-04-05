object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Usu'#225'rio'
  ClientHeight = 271
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 19
    Width = 10
    Height = 15
    Caption = 'Id'
  end
  object Label2: TLabel
    Left = 16
    Top = 71
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object edtId: TEdit
    Left = 16
    Top = 40
    Width = 121
    Height = 23
    NumbersOnly = True
    TabOrder = 0
    TextHint = 'Id'
  end
  object edtName: TEdit
    Left = 16
    Top = 92
    Width = 337
    Height = 23
    TabOrder = 1
    TextHint = 'Nome'
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 121
    Width = 337
    Height = 57
    Caption = 'SimpleORM'
    TabOrder = 2
    object btnInsertSimpleOrm: TButton
      Left = 8
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnInsertSimpleOrmClick
    end
    object btnUpdateSimpleOrm: TButton
      Left = 89
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 1
      OnClick = btnUpdateSimpleOrmClick
    end
    object btnDeleteSimpleOrm: TButton
      Left = 170
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnDeleteSimpleOrmClick
    end
    object btnFindSimpleOrm: TButton
      Left = 251
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 3
      OnClick = btnFindSimpleOrmClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 185
    Width = 337
    Height = 64
    Caption = 'ORMBr'
    TabOrder = 3
    object btnInsertORMBr: TButton
      Left = 8
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnInsertORMBrClick
    end
    object btnUpdateORMBr: TButton
      Left = 89
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 1
      OnClick = btnUpdateORMBrClick
    end
    object btnDeleteORMBr: TButton
      Left = 170
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnDeleteORMBrClick
    end
    object btnFindORMBr: TButton
      Left = 251
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 3
      OnClick = btnFindORMBrClick
    end
  end
end
