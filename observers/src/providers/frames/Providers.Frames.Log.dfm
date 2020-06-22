object FrameLog: TFrameLog
  Left = 0
  Top = 0
  Width = 300
  Height = 240
  Color = 16710907
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
    Caption = 'Log'
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
  object ListBoxLog: TListBox
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
    Color = 16710907
    ItemHeight = 13
    TabOrder = 1
    ExplicitLeft = 3
    ExplicitTop = 28
    ExplicitWidth = 294
    ExplicitHeight = 209
  end
end
