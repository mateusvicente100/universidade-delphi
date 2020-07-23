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
  PixelsPerInch = 96
  TextHeight = 21
  object lblRegistros: TLabel
    Left = 669
    Top = 59
    Width = 78
    Height = 21
    Alignment = taRightJustify
    Caption = '0 Registros'
  end
  object Label4: TLabel
    Left = 12
    Top = 500
    Width = 26
    Height = 21
    Caption = 'Log'
  end
  object pnlToolbar: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = 12477460
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 1
    ExplicitWidth = 700
    object lblTitle: TLabel
      Left = 12
      Top = 12
      Width = 28
      Height = 21
      Caption = 'Fire'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 41
      Top = 12
      Width = 33
      Height = 21
      Caption = 'DAC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 80
      Top = 12
      Width = 90
      Height = 21
      Caption = '- Array DML'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object imgMenu: TImage
      Left = 715
      Top = 9
      Width = 32
      Height = 32
      Cursor = crHandPoint
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        000000200806000000737A7AF400000006624B474400FF00FF00FFA0BDA79300
        0001E3494441545885ED96CD4E135114C7FFE3D62E95A8B591AF58DF8552B662
        9FA05017045E849D181E80544A82511F842E1A37BA10F67CAC4AA93F1673261D
        CA9DE9BD034493729226CD3DE7FF71CFCCDC7BA4C798F688428A818AA415494B
        926625552CF547D26F49DF251D4651747C8F1E25A00CEC000326C71068036FEE
        4BBC0E9C1B791FD803DE0355E0A9FDAAC0AAE5FA567B0E2CDF55FCA3ED08DBD5
        9C07661ED84F75A35554BC6E0457C04601FCA66187C19DB0679EB43D587CCC04
        C019F03204B89BB4BDA8788AAB635C3BBE808AB5AEEF7AE640139871ACCF004D
        C7FA82710D80B28F819639DE73E4D62CD74D9B30F1AEE5D61CB87656CE65E087
        15AF66ECB29B36E15A73E01A96FFE663E0A715BFCDC88F0BE68A1BA66A353D1F
        0317565CCAA9790E1C318A1EF022A7BE647517E3B927AEFA892EDD9177AF243A
        7F27B2FC0F8FE09FBF84EB56FC109FE1AD73C265E035F1A1D107E61DF9D08368
        919083C8409FCDF1BE17209FEBC0B83E85805E31BA8C36EF20BE651CA7799F69
        167899D1751C6CC2C493EB7829149F90B4180D241D60C103B3986AFB10582F24
        9E22AC11DFE7D8CBD4063E00EF884FB892FD6F005F80CB54DB8BEDDC61E219B0
        8DDF503A201E60BD0690D0B1BC2CA92EA926694E37C7F25F8AC7F2AF51149D84
        F03EC674C735DB1994F4C8F752490000000049454E44AE426082}
      OnClick = imgMenuClick
    end
  end
  object DBGridListaTemporaria: TDBGrid
    Left = 12
    Top = 92
    Width = 735
    Height = 180
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
    Top = 56
    Width = 200
    Height = 30
    Caption = 'Importar Lista Tempor'#225'ria'
    TabOrder = 2
    OnClick = btnGerarListaTemporariaClick
  end
  object btnIncluirNormal: TButton
    Left = 12
    Top = 278
    Width = 150
    Height = 30
    Caption = 'Incluir Normal'
    TabOrder = 3
    OnClick = btnIncluirNormalClick
  end
  object btnIncluirArrayDML: TButton
    Left = 441
    Top = 278
    Width = 150
    Height = 30
    Caption = 'Incluir Array DML'
    TabOrder = 4
    OnClick = btnIncluirArrayDMLClick
  end
  object btnExcluirArrayDML: TButton
    Left = 597
    Top = 278
    Width = 150
    Height = 30
    Caption = 'Excluir Array DML'
    TabOrder = 5
    OnClick = btnExcluirArrayDMLClick
  end
  object btnExcluirNormal: TButton
    Left = 168
    Top = 278
    Width = 150
    Height = 30
    Caption = 'Excluir Normal'
    TabOrder = 6
    OnClick = btnExcluirNormalClick
  end
  object memLog: TMemo
    Left = 12
    Top = 527
    Width = 733
    Height = 145
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 314
    Width = 735
    Height = 180
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
    Top = 160
  end
  object dsClientes: TDataSource
    Left = 510
    Top = 376
  end
end
