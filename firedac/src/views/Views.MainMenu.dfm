object FrmMainMenu: TFrmMainMenu
  Left = 0
  Top = 0
  Caption = 'FireDAC'
  ClientHeight = 741
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 384
    Top = 288
    object memArrayDML: TMenuItem
      Caption = 'Array DML'
      OnClick = memArrayDMLClick
    end
  end
end
