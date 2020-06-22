object FrameOperacao: TFrameOperacao
  Left = 0
  Top = 0
  Width = 300
  Height = 460
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 300
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Opera'#231#227'o'
    Color = 13731361
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pnlContent: TPanel
    Left = 0
    Top = 25
    Width = 300
    Height = 435
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 56
    ExplicitTop = 104
    ExplicitWidth = 185
    ExplicitHeight = 41
    DesignSize = (
      300
      435)
    object lblTipo: TLabel
      Left = 37
      Top = 9
      Width = 26
      Height = 13
      Caption = 'Tipo:'
    end
    object lblCategoria: TLabel
      Left = 10
      Top = 37
      Width = 53
      Height = 13
      Caption = 'Categoria:'
    end
    object lblValor: TLabel
      Left = 34
      Top = 64
      Width = 29
      Height = 13
      Caption = 'Valor:'
    end
    object line: TShape
      Left = 10
      Top = 139
      Width = 275
      Height = 1
      Anchors = [akLeft, akTop, akRight]
      Brush.Color = 14606046
      Pen.Color = 14606046
    end
    object cbxTipo: TComboBox
      Left = 69
      Top = 6
      Width = 216
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      ItemIndex = 0
      TabOrder = 0
      Text = 'Cr'#233'dito'
      Items.Strings = (
        'Cr'#233'dito'
        'D'#233'bito')
    end
    object cbxCategoria: TComboBox
      Left = 69
      Top = 34
      Width = 216
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      ItemIndex = 0
      TabOrder = 1
      Text = 'Farm'#225'cia'
      Items.Strings = (
        'Farm'#225'cia'
        'Supermecado'
        'Combust'#237'vel'
        'Aluguel'
        'Sal'#225'rio'
        'Servi'#231'os')
    end
    object edtValor: TEdit
      Left = 69
      Top = 61
      Width = 216
      Height = 21
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
    end
    object btnAdicionar: TButton
      Left = 10
      Top = 95
      Width = 275
      Height = 30
      Caption = 'Adicionar'
      TabOrder = 3
      OnClick = btnAdicionarClick
    end
    object DBGridOperacoes: TDBGrid
      Left = 10
      Top = 146
      Width = 275
      Height = 271
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderStyle = bsNone
      Color = clWhite
      DataSource = dsOperacoes
      FixedColor = clWhite
      GradientEndColor = clWhite
      Options = [dgTitles, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'OPERACAO'
          Title.Caption = 'Opera'#231#227'o'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CATEGORIA'
          Title.Caption = 'Categoria'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor'
          Width = 60
          Visible = True
        end>
    end
  end
  object dsOperacoes: TDataSource
    DataSet = mtOperacoes
    Left = 128
    Top = 224
  end
  object mtOperacoes: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 208
    Top = 240
    object mtOperacoesOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 100
    end
    object mtOperacoesCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object mtOperacoesVALOR: TCurrencyField
      FieldName = 'VALOR'
      DisplayFormat = ',0.00;'
    end
  end
end
