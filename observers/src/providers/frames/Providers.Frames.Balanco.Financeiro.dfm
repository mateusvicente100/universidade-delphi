object FrameBalancoFinanceiro: TFrameBalancoFinanceiro
  Left = 0
  Top = 0
  Width = 300
  Height = 100
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
    Caption = 'Balan'#231'o financeiro'
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
  object pnlContent: TPanel
    Left = 0
    Top = 25
    Width = 300
    Height = 75
    Align = alClient
    BevelOuter = bvNone
    Color = 16710907
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 8
    ExplicitHeight = 41
    DesignSize = (
      300
      75)
    object lblCreditos: TLabel
      Left = 10
      Top = 10
      Width = 43
      Height = 13
      Caption = 'Cr'#233'ditos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13024603
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValorCredito: TLabel
      Left = 266
      Top = 10
      Width = 21
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13024603
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDebitos: TLabel
      Left = 10
      Top = 29
      Width = 40
      Height = 13
      Caption = 'D'#233'bitos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10851050
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValorDebito: TLabel
      Left = 266
      Top = 29
      Width = 21
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10851050
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 10
      Top = 48
      Width = 277
      Height = 1
      Brush.Color = 14606046
      Pen.Color = 14606046
    end
    object lblSaldo: TLabel
      Left = 10
      Top = 55
      Width = 29
      Height = 13
      Caption = 'Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6579300
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValorSaldo: TLabel
      Left = 266
      Top = 55
      Width = 21
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6579300
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
