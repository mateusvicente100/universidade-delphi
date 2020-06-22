object frmMainMenu: TfrmMainMenu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Balan'#231'o Financeiro'
  ClientHeight = 561
  ClientWidth = 610
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameOperacao: TFrameOperacao
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 300
    Height = 551
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    inherited pnlContent: TPanel
      Height = 526
      inherited DBGridOperacoes: TDBGrid
        Height = 362
        OnDrawDataCell = nil
        OnDrawColumnCell = nil
      end
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 315
    Top = 5
    Width = 290
    Height = 551
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 296
    ExplicitTop = 272
    ExplicitWidth = 185
    ExplicitHeight = 41
    inline FrameBalancoFinanceiro: TFrameBalancoFinanceiro
      Left = 0
      Top = 0
      Width = 290
      Height = 100
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 290
      inherited pnlHeader: TPanel
        Width = 290
      end
      inherited pnlContent: TPanel
        Width = 290
        ExplicitTop = 25
        ExplicitHeight = 75
        inherited lblValorCredito: TLabel
          Left = 256
        end
        inherited lblValorDebito: TLabel
          Left = 256
        end
        inherited lblValorSaldo: TLabel
          Left = 256
        end
      end
    end
    inline FrameDebitoCategoria: TFrameDebitoCategoria
      Left = 0
      Top = 100
      Width = 290
      Height = 240
      Align = alTop
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = -10
      inherited pnlHeader: TPanel
        Width = 290
      end
      inherited DBGridDebitos: TDBGrid
        Width = 280
      end
    end
    inline FrameLog: TFrameLog
      Left = 0
      Top = 340
      Width = 290
      Height = 211
      Align = alClient
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      ExplicitLeft = -10
      inherited pnlHeader: TPanel
        Width = 290
      end
      inherited ListBoxLog: TListBox
        Width = 280
        Height = 176
        ExplicitLeft = 5
        ExplicitTop = 30
        ExplicitWidth = 290
        ExplicitHeight = 205
      end
    end
  end
end
