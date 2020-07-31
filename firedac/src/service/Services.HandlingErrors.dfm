object ServiceHandlingErrors: TServiceHandlingErrors
  OldCreateOrder = False
  Height = 150
  Width = 279
  object Connection: TFDConnection
    Params.Strings = (
      'Database=firedac-samples'
      'User_Name=postgres'
      'Password=postdba'
      'Server=localhost'
      'DriverID=pG')
    LoginPrompt = False
    Left = 64
    Top = 56
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorHome = 
      'C:\Projetos\Git\mateus-vicente\public\universidade-delphi\fireda' +
      'c\Win32\Debug\'
    Left = 168
    Top = 56
  end
end
