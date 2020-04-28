object frmMainMenu: TfrmMainMenu
  Left = 0
  Top = 0
  Caption = 'JSON Objects'
  ClientHeight = 321
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 50
    Height = 21
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 137
    Top = 10
    Width = 43
    Height = 21
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 264
    Top = 10
    Width = 81
    Height = 21
    Caption = 'Sobrenome'
  end
  object edtCodigo: TEdit
    Left = 10
    Top = 37
    Width = 121
    Height = 29
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 137
    Top = 37
    Width = 121
    Height = 29
    TabOrder = 1
  end
  object edtSobrenome: TEdit
    Left = 264
    Top = 37
    Width = 121
    Height = 29
    TabOrder = 2
  end
  object btnGerar: TButton
    Left = 10
    Top = 263
    Width = 100
    Height = 35
    Caption = 'Gerar'
    TabOrder = 3
    OnClick = btnGerarClick
  end
  object memoJSON: TMemo
    Left = 10
    Top = 72
    Width = 481
    Height = 185
    Lines.Strings = (
      'memoJSON')
    TabOrder = 4
  end
  object btnAdicionar: TButton
    Left = 116
    Top = 263
    Width = 100
    Height = 35
    Caption = 'Adicionar'
    TabOrder = 5
    OnClick = btnAdicionarClick
  end
  object btnGerarLista: TButton
    Left = 222
    Top = 263
    Width = 100
    Height = 35
    Caption = 'Gerar Lista'
    TabOrder = 6
    OnClick = btnGerarListaClick
  end
end
