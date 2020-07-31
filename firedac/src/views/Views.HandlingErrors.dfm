object FrmHandlingErrors: TFrmHandlingErrors
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    800
    600)
  PixelsPerInch = 96
  TextHeight = 21
  object Label4: TLabel
    Left = 12
    Top = 77
    Width = 26
    Height = 21
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Log'
  end
  object pnlToolbar: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 16119285
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 12
      Top = 7
      Width = 109
      Height = 21
      Caption = 'Handling Errors'
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
  object btnGerarListaTemporaria: TButton
    Left = 12
    Top = 41
    Width = 150
    Height = 30
    Caption = 'Primary Key'
    TabOrder = 1
    OnClick = btnGerarListaTemporariaClick
  end
  object memLog: TMemo
    Left = 12
    Top = 112
    Width = 780
    Height = 473
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
  end
  object btnFieldRequired: TButton
    Left = 168
    Top = 41
    Width = 150
    Height = 30
    Caption = 'Field Required'
    TabOrder = 3
    OnClick = btnFieldRequiredClick
  end
end
