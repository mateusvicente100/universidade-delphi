object FrmPagination: TFrmPagination
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 680
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoeu UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
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
      Width = 73
      Height = 21
      Caption = 'Pagination'
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
  object DBGridClientes: TDBGrid
    Left = 0
    Top = 35
    Width = 760
    Height = 615
    Align = alClient
    DataSource = dsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoeu UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Segoeu UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoeu UI'
        Title.Font.Style = []
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
  object pnlFooterPesquisa: TPanel
    Left = 0
    Top = 650
    Width = 760
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = 16119285
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = -40
    ExplicitTop = 535
    ExplicitWidth = 800
    object pnlPaginacao: TPanel
      Left = 0
      Top = 0
      Width = 363
      Height = 30
      Align = alLeft
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object btnNext: TSpeedButton
        Left = 141
        Top = 0
        Width = 28
        Height = 30
        Cursor = crHandPoint
        Align = alLeft
        Flat = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000120B0000120B00000001000000000000BE641400FFFF
          FF00EBD7BE00CD884A00EED6C000CE8A4E000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010504010101010101010101010101010101010101010101
          0100000304010101010101010101010101010101010101010100000000030401
          0101010101010101010101010101010101000000000000030401010101010101
          0101010101010101010000000000000000030401010101010101010101010101
          0100000000000000000304010101010101010101010101010100000000000003
          0401010101010101010101010101010101000000000304010101010101010101
          0101010101010101010000030401010101010101010101010101010101010101
          0103040101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101}
        OnClick = btnNextClick
      end
      object lblPaginas: TLabel
        AlignWithMargins = True
        Left = 64
        Top = 0
        Width = 69
        Height = 30
        Margins.Left = 8
        Margins.Top = 0
        Margins.Right = 8
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taCenter
        Caption = 'P'#225'gina 1 de 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object btnLast: TSpeedButton
        Left = 169
        Top = 0
        Width = 28
        Height = 30
        Cursor = crHandPoint
        Align = alLeft
        Flat = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000120B0000120B00000001000000000000BE641400FCF9
          F600D8A27200E4BF9D00C97E3B00ECD2BB00DEB18900D08E5400ECD1B900F3E2
          D400BE651500FFFFFF00E1B79100C0691B000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000B0B0B0B0B0B
          0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0B0B0B03050B0B0B0B0B0000060B0B0B0B0B0B0B0B0B0B0B0B0B
          0B060A02010B0B0B0000060B0B0B0B0B0B0B0B0B0B0B0B0B0B06000004090B0B
          0000060B0B0B0B0B0B0B0B0B0B0B0B0B0B060000000D0C0B0000060B0B0B0B0B
          0B0B0B0B0B0B0B0B0B060000000000070000060B0B0B0B0B0B0B0B0B0B0B0B0B
          0B060000000000070000060B0B0B0B0B0B0B0B0B0B0B0B0B0B060000000D0C0B
          0000060B0B0B0B0B0B0B0B0B0B0B0B0B0B06000004090B0B0000060B0B0B0B0B
          0B0B0B0B0B0B0B0B0B060A02010B0B0B0000060B0B0B0B0B0B0B0B0B0B0B0B0B
          0B03080B0B0B0B0B0000060B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B}
        OnClick = btnLastClick
        ExplicitLeft = 166
        ExplicitTop = 6
      end
      object btnPrevious: TSpeedButton
        Left = 28
        Top = 0
        Width = 28
        Height = 30
        Cursor = crHandPoint
        Align = alLeft
        Flat = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000120B0000120B00000001000000000000BE641400FFFF
          FF00EBD7BE00CD884A00EED6C000CE8A4E000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101040301010101010101010101010101
          0101010101010104030000010101010101010101010101010101010101040300
          0000000101010101010101010101010101010104030000000000000101010101
          0101010101010101010403000000000000000001010101010101010101010101
          0104030000000000000000010101010101010101010101010101010403000000
          0000000101010101010101010101010101010101010403000000000101010101
          0101010101010101010101010101010403000001010101010101010101010101
          0101010101010101010405010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101}
        OnClick = btnPreviousClick
      end
      object btnFirst: TSpeedButton
        Left = 0
        Top = 0
        Width = 28
        Height = 30
        Cursor = crHandPoint
        Align = alLeft
        Flat = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000120B0000120B00000001000000000000BE641400FDFA
          F800DCAC8200E4BF9E00CA813F00ECD2BB00F4E5D800D1925A00C16A1D00FFFF
          FF00DEB18900EDD5BF00BF651600E5C1A100CA81400000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000090909090909
          0909090909090909090909090909090909090909090909090909090909090909
          0909090909090909090909090909090909090909090909090909090909090909
          0909090909090909090909090909090909090909090909090909090909090909
          0909090909090909090909090909090909090909090909090909090909090909
          0909090909090909090909090909090909090909090909090909090909090909
          0909090909090909090A00000909090909050309090909090909090909090909
          090A000009090901020C0A09090909090909090909090909090A00000909060E
          00000A09090909090909090909090909090A0000090D080000000A0909090909
          0909090909090909090A00000700000000000A09090909090909090909090909
          090A00000700000000000A09090909090909090909090909090A0000090D0800
          00000A09090909090909090909090909090A00000909060400000A0909090909
          0909090909090909090A000009090901020C0A09090909090909090909090909
          090A000009090909090B0D090909090909090909090909090909090909090909
          0909090909090909090909090909090909090909090909090909090909090909
          0909090909090909090909090909090909090909090909090909090909090909
          0909090909090909090909090909090909090909090909090909090909090909
          0909090909090909090909090909090909090909090909090909090909090909
          0909090909090909090909090909090909090909090909090909}
        OnClick = btnFirstClick
      end
      object pnlRegistrosPagina: TPanel
        Left = 197
        Top = 0
        Width = 166
        Height = 30
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object lblRegistrosPagina: TLabel
          Left = 58
          Top = 0
          Width = 108
          Height = 30
          Align = alRight
          Alignment = taCenter
          Caption = 'Registros por p'#225'gina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 13
        end
        object cbxRegistrosPagina: TComboBox
          AlignWithMargins = True
          Left = 6
          Top = 4
          Width = 45
          Height = 22
          Margins.Left = 6
          Margins.Top = 4
          Align = alLeft
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoeu UI'
          Font.Style = []
          ItemIndex = 1
          ParentFont = False
          TabOrder = 0
          Text = '50'
          OnChange = cbxRegistrosPaginaChange
          Items.Strings = (
            '25'
            '50'
            '75'
            '100')
        end
      end
    end
  end
  object dsClientes: TDataSource
    Left = 518
    Top = 137
  end
end