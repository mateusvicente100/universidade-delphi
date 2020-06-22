object frmMainMenu: TfrmMainMenu
  Left = 0
  Top = 0
  Caption = 'Reader and Writers JSON'
  ClientHeight = 461
  ClientWidth = 890
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 14
    Top = 11
    Width = 50
    Height = 21
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 141
    Top = 11
    Width = 43
    Height = 21
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 268
    Top = 11
    Width = 81
    Height = 21
    Caption = 'Sobrenome'
  end
  object edtCodigo: TEdit
    Left = 14
    Top = 38
    Width = 121
    Height = 29
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 141
    Top = 38
    Width = 121
    Height = 29
    TabOrder = 1
  end
  object edtSobrenome: TEdit
    Left = 268
    Top = 38
    Width = 121
    Height = 29
    TabOrder = 2
  end
  object btnGerar: TButton
    Left = 14
    Top = 417
    Width = 121
    Height = 35
    Caption = 'Gerar'
    TabOrder = 3
    OnClick = btnGerarClick
  end
  object memoJSON: TMemo
    Left = 14
    Top = 73
    Width = 375
    Height = 338
    TabOrder = 4
  end
  object btnAdicionar: TButton
    Left = 141
    Top = 417
    Width = 121
    Height = 35
    Caption = 'Adicionar'
    TabOrder = 5
    OnClick = btnAdicionarClick
  end
  object btnGerarLista: TButton
    Left = 268
    Top = 417
    Width = 121
    Height = 35
    Caption = 'Gerar Lista'
    TabOrder = 6
    OnClick = btnGerarListaClick
  end
  object DBGrid1: TDBGrid
    Left = 395
    Top = 73
    Width = 487
    Height = 338
    DataSource = dsUsuarios
    TabOrder = 7
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
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOBRENOME'
        Title.Caption = 'Sobrenome'
        Width = 170
        Visible = True
      end>
  end
  object btnImportar: TButton
    Left = 395
    Top = 417
    Width = 121
    Height = 35
    Caption = 'Importar'
    TabOrder = 8
    OnClick = btnImportarClick
  end
  object mtUsuarios: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 240
    Top = 208
    object mtUsuariosID: TIntegerField
      FieldName = 'ID'
    end
    object mtUsuariosNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object mtUsuariosSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 100
    end
  end
  object dsUsuarios: TDataSource
    DataSet = mtUsuarios
    Left = 440
    Top = 240
  end
end
