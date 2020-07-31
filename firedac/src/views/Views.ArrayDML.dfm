object FrmArrayDML: TFrmArrayDML
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 680
  ClientWidth = 760
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    760
    680)
  PixelsPerInch = 96
  TextHeight = 21
  object lblRegistros: TLabel
    Left = 669
    Top = 44
    Width = 78
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '0 Registros'
  end
  object Label4: TLabel
    Left = 12
    Top = 485
    Width = 26
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Log'
  end
  object pnlToolbar: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 16119285
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 12
      Top = 7
      Width = 75
      Height = 21
      Caption = 'Array DML'
      Color = 3947580
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3947580
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object DBGridListaTemporaria: TDBGrid
    Left = 12
    Top = 77
    Width = 735
    Height = 180
    Anchors = [akLeft, akTop, akRight]
    DataSource = dsListaTemporaria
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOBRENOME'
        Title.Caption = 'Sobrenome'
        Width = 361
        Visible = True
      end>
  end
  object btnGerarListaTemporaria: TButton
    Left = 12
    Top = 41
    Width = 200
    Height = 30
    Caption = 'Importar Lista Tempor'#225'ria'
    TabOrder = 2
    OnClick = btnGerarListaTemporariaClick
  end
  object btnIncluirNormal: TButton
    Left = 12
    Top = 263
    Width = 150
    Height = 30
    Caption = 'Incluir Normal'
    TabOrder = 3
    OnClick = btnIncluirNormalClick
  end
  object btnIncluirArrayDML: TButton
    Left = 441
    Top = 263
    Width = 150
    Height = 30
    Anchors = [akTop, akRight]
    Caption = 'Incluir Array DML'
    TabOrder = 4
    OnClick = btnIncluirArrayDMLClick
  end
  object btnExcluirArrayDML: TButton
    Left = 597
    Top = 263
    Width = 150
    Height = 30
    Anchors = [akTop, akRight]
    Caption = 'Excluir Array DML'
    TabOrder = 5
    OnClick = btnExcluirArrayDMLClick
  end
  object btnExcluirNormal: TButton
    Left = 168
    Top = 263
    Width = 150
    Height = 30
    Caption = 'Excluir Normal'
    TabOrder = 6
    OnClick = btnExcluirNormalClick
  end
  object memLog: TMemo
    Left = 8
    Top = 512
    Width = 733
    Height = 160
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 299
    Width = 735
    Height = 180
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsClientes
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOBRENOME'
        Title.Caption = 'Sobrenome'
        Width = 361
        Visible = True
      end>
  end
  object dsListaTemporaria: TDataSource
    Left = 518
    Top = 145
  end
  object dsClientes: TDataSource
    Left = 510
    Top = 361
  end
end
