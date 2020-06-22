object FrameDebitoCategoria: TFrameDebitoCategoria
  Left = 0
  Top = 0
  Width = 300
  Height = 240
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentBackground = False
  ParentColor = False
  ParentFont = False
  TabOrder = 0
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 300
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'D'#233'bitos por categoria'
    Color = 14654521
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object DBGridDebitos: TDBGrid
    AlignWithMargins = True
    Left = 5
    Top = 30
    Width = 290
    Height = 205
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    BorderStyle = bsNone
    DataSource = dsDebitos
    Options = [dgTitles, dgTabs, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CATEGORIA'
        Title.Caption = 'Categoria'
        Width = 177
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
  object dsDebitos: TDataSource
    DataSet = mtDebitos
    Left = 96
    Top = 112
  end
  object mtDebitos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 184
    Top = 112
    object mtDebitosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object mtDebitosVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
  end
end
