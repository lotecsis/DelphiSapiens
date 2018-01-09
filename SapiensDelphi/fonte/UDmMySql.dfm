object DmMySql: TDmMySql
  OldCreateOrder = False
  Height = 480
  Width = 542
  object ClientCadE100Usu: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderCadE100Usu'
    Left = 167
    Top = 104
    object ClientCadE100UsuCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object ClientCadE100UsuLOGUSU: TWideStringField
      FieldName = 'LOGUSU'
      Size = 40
    end
    object ClientCadE100UsuSENUSU: TWideStringField
      FieldName = 'SENUSU'
      Size = 40
    end
    object ClientCadE100UsuDATCAD: TDateField
      FieldName = 'DATCAD'
    end
    object ClientCadE100UsuSITUSU: TWideStringField
      FieldName = 'SITUSU'
      Size = 1
    end
    object ClientCadE100UsuCHAVE: TWideStringField
      FieldName = 'CHAVE'
    end
    object ClientCadE100UsuNOMUSU: TWideStringField
      FieldName = 'NOMUSU'
      Size = 50
    end
    object ClientCadE100UsuCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ClientCadE100UsuNOMREP: TWideStringField
      FieldName = 'NOMREP'
      Size = 60
    end
    object ClientCadE100UsuUSUADM: TWideStringField
      FieldName = 'USUADM'
      Size = 1
    end
    object ClientCadE100UsuNCIE: TIntegerField
      FieldName = 'NCIE'
    end
    object ClientCadE100UsuNCFE: TIntegerField
      FieldName = 'NCFE'
    end
    object ClientCadE100UsuNCAE: TIntegerField
      FieldName = 'NCAE'
    end
    object ClientCadE100UsuNCII: TIntegerField
      FieldName = 'NCII'
    end
    object ClientCadE100UsuNCFI: TIntegerField
      FieldName = 'NCFI'
    end
    object ClientCadE100UsuNCAI: TIntegerField
      FieldName = 'NCAI'
    end
  end
  object ProviderCadE100Usu: TDataSetProvider
    Left = 168
    Top = 56
  end
  object ProviderConsE100Usu: TDataSetProvider
    Left = 280
    Top = 56
  end
  object ClientConsE100Usu: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderConsE100Usu'
    Left = 280
    Top = 104
    object ClientConsE100UsuCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object ClientConsE100UsuLOGUSU: TWideStringField
      FieldName = 'LOGUSU'
      Size = 40
    end
    object ClientConsE100UsuSENUSU: TWideStringField
      FieldName = 'SENUSU'
      Size = 40
    end
    object ClientConsE100UsuDATCAD: TDateField
      FieldName = 'DATCAD'
    end
    object ClientConsE100UsuSITUSU: TWideStringField
      FieldName = 'SITUSU'
      Size = 1
    end
    object ClientConsE100UsuCHAVE: TWideStringField
      FieldName = 'CHAVE'
    end
    object ClientConsE100UsuNOMUSU: TWideStringField
      FieldName = 'NOMUSU'
      Size = 50
    end
    object ClientConsE100UsuCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ClientConsE100UsuNOMREP: TWideStringField
      FieldName = 'NOMREP'
      Size = 60
    end
    object ClientConsE100UsuUSUADM: TWideStringField
      FieldName = 'USUADM'
      Size = 1
    end
    object ClientConsE100UsuNCIE: TIntegerField
      FieldName = 'NCIE'
    end
    object ClientConsE100UsuNCFE: TIntegerField
      FieldName = 'NCFE'
    end
    object ClientConsE100UsuNCAE: TIntegerField
      FieldName = 'NCAE'
    end
    object ClientConsE100UsuNCII: TIntegerField
      FieldName = 'NCII'
    end
    object ClientConsE100UsuNCFI: TIntegerField
      FieldName = 'NCFI'
    end
    object ClientConsE100UsuNCAI: TIntegerField
      FieldName = 'NCAI'
    end
  end
end
