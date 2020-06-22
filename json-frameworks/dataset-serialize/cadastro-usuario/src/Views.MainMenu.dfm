object frmMainMenu: TfrmMainMenu
  Left = 0
  Top = 0
  Caption = 'DataSet-Serialize'
  ClientHeight = 459
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 600
    Height = 449
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 0
    Margins.Bottom = 5
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 600
      Height = 25
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Usu'#225'rios'
      Color = 16091980
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object DBGridUsuarios: TDBGrid
      Left = 0
      Top = 25
      Width = 600
      Height = 115
      Align = alTop
      DataSource = dsUsuarios
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOBRENOME'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDADE'
          Visible = True
        end>
    end
    object btnExportar: TButton
      Left = 0
      Top = 414
      Width = 600
      Height = 35
      Align = alBottom
      Caption = 'Exportar'
      TabOrder = 2
      OnClick = btnExportarClick
    end
    object Panel5: TPanel
      Left = 0
      Top = 140
      Width = 600
      Height = 25
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Contatos'
      Color = 16091980
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
    end
    object DBGridContatos: TDBGrid
      Left = 0
      Top = 165
      Width = 600
      Height = 115
      Align = alTop
      DataSource = dsContatos
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_USUARIO'
          Visible = True
        end>
    end
    object Panel6: TPanel
      Left = 0
      Top = 280
      Width = 600
      Height = 25
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Endere'#231'os'
      Color = 16091980
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 305
      Width = 600
      Height = 109
      Align = alClient
      DataSource = dsEnderecos
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOGRADOURO'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Title.Alignment = taCenter
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_USUARIO'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 610
    Top = 5
    Width = 369
    Height = 449
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 369
      Height = 25
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  JSON'
      Color = 16091980
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object memoJSON: TMemo
      Left = 0
      Top = 25
      Width = 369
      Height = 389
      Align = alClient
      BorderStyle = bsNone
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object btnImportar: TButton
      Left = 0
      Top = 414
      Width = 369
      Height = 35
      Align = alBottom
      Caption = 'Importar'
      TabOrder = 2
      OnClick = btnImportarClick
    end
  end
  object mtUsuarios: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 288
    Top = 80
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
    object mtUsuariosIDADE: TIntegerField
      FieldName = 'IDADE'
    end
  end
  object dsUsuarios: TDataSource
    DataSet = mtUsuarios
    Left = 192
    Top = 80
  end
  object mtContatos: TFDMemTable
    IndexFieldNames = 'ID_USUARIO'
    MasterSource = dsUsuarios
    MasterFields = 'ID'
    DetailFields = 'ID_USUARIO'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 296
    Top = 200
    object mtContatosID: TIntegerField
      FieldName = 'ID'
    end
    object mtContatosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object mtContatosVALOR: TStringField
      FieldName = 'VALOR'
      Size = 100
    end
    object mtContatosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Visible = False
    end
  end
  object dsContatos: TDataSource
    DataSet = mtContatos
    Left = 192
    Top = 200
  end
  object mtEnderecos: TFDMemTable
    IndexFieldNames = 'ID_USUARIO'
    MasterSource = dsUsuarios
    MasterFields = 'ID'
    DetailFields = 'ID_USUARIO'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 296
    Top = 336
    object mtEnderecosID: TIntegerField
      FieldName = 'ID'
    end
    object mtEnderecosLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 100
    end
    object mtEnderecosNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object mtEnderecosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object mtEnderecosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mtEnderecosCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object mtEnderecosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object mtEnderecosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Visible = False
    end
  end
  object dsEnderecos: TDataSource
    DataSet = mtEnderecos
    Left = 192
    Top = 336
  end
end
