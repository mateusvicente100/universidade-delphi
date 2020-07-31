object ServiceArrayDML: TServiceArrayDML
  OldCreateOrder = False
  Height = 150
  Width = 496
  object mtListaTemporaria: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 88
    Top = 56
    object mtListaTemporariaID: TIntegerField
      FieldName = 'ID'
    end
    object mtListaTemporariaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object mtListaTemporariaSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 100
    end
  end
  object Connection: TFDConnection
    Params.Strings = (
      'Database=firedac-samples'
      'User_Name=postgres'
      'Password=postdba'
      'Server=localhost'
      'DriverID=pG')
    LoginPrompt = False
    Left = 192
    Top = 56
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorHome = 
      'C:\Projetos\Git\mateus-vicente\public\universidade-delphi\fireda' +
      'c\Win32\Debug\'
    Left = 296
    Top = 56
  end
  object qryClientes: TFDQuery
    CachedUpdates = True
    Connection = Connection
    FetchOptions.AssignedValues = [evAutoFetchAll]
    SQL.Strings = (
      'select id, nome, sobrenome'
      'from clientes')
    Left = 400
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
