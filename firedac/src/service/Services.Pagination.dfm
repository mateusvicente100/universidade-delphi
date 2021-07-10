object ServicePagination: TServicePagination
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 357
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
  object qryClientes: TFDQuery
    Connection = Connection
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evAutoFetchAll, evDetailCascade, evDetailServerCascade]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    SQL.Strings = (
      'select id, nome, sobrenome'
      'from clientes'
      'order by id')
    Left = 272
    Top = 56
    object qryClientesid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryClientesnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object qryClientessobrenome: TWideStringField
      FieldName = 'sobrenome'
      Origin = 'sobrenome'
      Size = 100
    end
  end
end
