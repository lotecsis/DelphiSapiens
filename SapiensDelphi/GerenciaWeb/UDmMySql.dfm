object DmMySql: TDmMySql
  OldCreateOrder = False
  Height = 495
  Width = 628
  object Banco: TZConnection
    Protocol = 'mysql-5'
    HostName = 'mysql12.redehost.com.br'
    Port = 3306
    Database = 'sysrep'
    User = 'sysrep'
    Password = 'liderlar1483'
    TransactIsolationLevel = tiReadCommitted
    Left = 16
    Top = 16
  end
  object AtuE100Usu: TZQuery
    Connection = Banco
    SQL.Strings = (
      'UPDATE E100USU SET LOGUSU = :LOGUSU,'
      '                   SENUSU = :SENUSU,'
      '                   DATCAD = :DATCAD,'
      '                   SITUSU = :SITUSU,'
      '                   CHAVE = :CHAVE,'
      '                   NOMUSU = :NOMUSU,'
      '                   CODREP = :CODREP,'
      '                   NOMREP = :NOMREP,'
      '                   USUADM = :USUADM'
      '  WHERE'
      ' CODUSU = :CODUSU')
    Params = <
      item
        DataType = ftUnknown
        Name = 'LOGUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SENUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATCAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SITUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODREP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMREP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUADM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODUSU'
        ParamType = ptUnknown
      end>
    Left = 24
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LOGUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SENUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATCAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SITUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODREP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMREP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUADM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODUSU'
        ParamType = ptUnknown
      end>
  end
  object E120PedRec: TZQuery
    Connection = Banco
    SQL.Strings = (
      'SELECT * FROM E120PED WHERE NUMPED = 0 ')
    Params = <>
    Left = 8
    Top = 168
    object E120PedRecCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object E120PedRecCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Required = True
    end
    object E120PedRecNUMCON: TIntegerField
      FieldName = 'NUMCON'
    end
    object E120PedRecNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object E120PedRecCODREP: TIntegerField
      FieldName = 'CODREP'
      Required = True
    end
    object E120PedRecCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object E120PedRecTNSPRO: TWideStringField
      FieldName = 'TNSPRO'
      Required = True
      Size = 5
    end
    object E120PedRecDATEMI: TDateField
      FieldName = 'DATEMI'
    end
    object E120PedRecCODCPG: TWideStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object E120PedRecQTDORI: TFloatField
      FieldName = 'QTDORI'
    end
    object E120PedRecQTDABE: TFloatField
      FieldName = 'QTDABE'
    end
    object E120PedRecVLRBIP: TFloatField
      FieldName = 'VLRBIP'
    end
    object E120PedRecVLRIPI: TFloatField
      FieldName = 'VLRIPI'
    end
    object E120PedRecVLRBIC: TFloatField
      FieldName = 'VLRBIC'
    end
    object E120PedRecVLRICM: TFloatField
      FieldName = 'VLRICM'
    end
    object E120PedRecVLRBCO: TFloatField
      FieldName = 'VLRBCO'
    end
    object E120PedRecVLRCOM: TFloatField
      FieldName = 'VLRCOM'
    end
    object E120PedRecVLRLIQ: TFloatField
      FieldName = 'VLRLIQ'
    end
    object E120PedRecVLRORI: TFloatField
      FieldName = 'VLRORI'
    end
    object E120PedRecSITPED: TWideStringField
      FieldName = 'SITPED'
      Size = 1
    end
    object E120PedRecUSUGER: TIntegerField
      FieldName = 'USUGER'
    end
    object E120PedRecDATGER: TDateField
      FieldName = 'DATGER'
    end
    object E120PedRecPEDENV: TWideStringField
      FieldName = 'PEDENV'
      Size = 1
    end
    object E120PedRecDATENV: TDateField
      FieldName = 'DATENV'
    end
    object E120PedRecPEDCON: TWideStringField
      FieldName = 'PEDCON'
      Size = 1
    end
    object E120PedRecDATCON: TDateField
      FieldName = 'DATCON'
    end
    object E120PedRecUSUCON: TIntegerField
      FieldName = 'USUCON'
    end
    object E120PedRecPRECAR: TIntegerField
      FieldName = 'PRECAR'
    end
  end
  object E120IpdRec: TZQuery
    Connection = Banco
    SQL.Strings = (
      'SELECT * FROM E120IPD WHERE NUMPED = 0')
    Params = <>
    Left = 80
    Top = 168
    object E120IpdRecCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object E120IpdRecCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Required = True
    end
    object E120IpdRecNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object E120IpdRecNUMCON: TIntegerField
      FieldName = 'NUMCON'
    end
    object E120IpdRecCODREP: TIntegerField
      FieldName = 'CODREP'
      Required = True
    end
    object E120IpdRecSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object E120IpdRecTNSPRO: TWideStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object E120IpdRecCODPRO: TWideStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object E120IpdRecCODDER: TWideStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object E120IpdRecCODFAM: TWideStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object E120IpdRecCODDEP: TWideStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object E120IpdRecQTDPED: TIntegerField
      FieldName = 'QTDPED'
    end
    object E120IpdRecQTDFAT: TIntegerField
      FieldName = 'QTDFAT'
    end
    object E120IpdRecQTDCAN: TIntegerField
      FieldName = 'QTDCAN'
    end
    object E120IpdRecQTDABE: TIntegerField
      FieldName = 'QTDABE'
    end
    object E120IpdRecUNIMED: TWideStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object E120IpdRecCODTPR: TWideStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object E120IpdRecPREUNI: TFloatField
      FieldName = 'PREUNI'
    end
    object E120IpdRecPERIPI: TFloatField
      FieldName = 'PERIPI'
    end
    object E120IpdRecPERICM: TFloatField
      FieldName = 'PERICM'
    end
    object E120IpdRecPERCOM: TFloatField
      FieldName = 'PERCOM'
    end
    object E120IpdRecVLRBRU: TFloatField
      FieldName = 'VLRBRU'
    end
    object E120IpdRecVLRBIP: TFloatField
      FieldName = 'VLRBIP'
    end
    object E120IpdRecVLRIPI: TFloatField
      FieldName = 'VLRIPI'
    end
    object E120IpdRecVLRBIC: TFloatField
      FieldName = 'VLRBIC'
    end
    object E120IpdRecVLRICM: TFloatField
      FieldName = 'VLRICM'
    end
    object E120IpdRecVLRBSI: TFloatField
      FieldName = 'VLRBSI'
    end
    object E120IpdRecVLRICS: TFloatField
      FieldName = 'VLRICS'
    end
    object E120IpdRecVLRBCO: TFloatField
      FieldName = 'VLRBCO'
    end
    object E120IpdRecVLRCOM: TFloatField
      FieldName = 'VLRCOM'
    end
    object E120IpdRecVLRLPR: TFloatField
      FieldName = 'VLRLPR'
    end
    object E120IpdRecVLRLIQ: TFloatField
      FieldName = 'VLRLIQ'
    end
    object E120IpdRecSITIPD: TWideStringField
      FieldName = 'SITIPD'
      Size = 1
    end
    object E120IpdRecUSUGER: TIntegerField
      FieldName = 'USUGER'
    end
    object E120IpdRecDATGER: TDateField
      FieldName = 'DATGER'
    end
    object E120IpdRecTOTDESC: TFloatField
      FieldName = 'TOTDESC'
    end
    object E120IpdRecVLRORI: TFloatField
      FieldName = 'VLRORI'
    end
    object E120IpdRecDATEMI: TDateField
      FieldName = 'DATEMI'
    end
    object E120IpdRecDATENT: TDateField
      FieldName = 'DATENT'
    end
    object E120IpdRecCORGRID: TWideStringField
      FieldName = 'CORGRID'
      Size = 30
    end
    object E120IpdRecCORES: TWideStringField
      FieldName = 'CORES'
      Size = 400
    end
  end
  object Usu120IpdRec: TZQuery
    Connection = Banco
    SQL.Strings = (
      'SELECT * FROM USU120IPD WHERE NUMPED = 0')
    Params = <>
    Left = 152
    Top = 168
    object Usu120IpdRecCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object Usu120IpdRecCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Required = True
    end
    object Usu120IpdRecNUMCON: TIntegerField
      FieldName = 'NUMCON'
    end
    object Usu120IpdRecCODREP: TIntegerField
      FieldName = 'CODREP'
      Required = True
    end
    object Usu120IpdRecSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object Usu120IpdRecSEQITE: TIntegerField
      FieldName = 'SEQITE'
    end
    object Usu120IpdRecNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object Usu120IpdRecQTDCOR: TIntegerField
      FieldName = 'QTDCOR'
    end
    object Usu120IpdRecQTDABE: TIntegerField
      FieldName = 'QTDABE'
    end
    object Usu120IpdRecQTDCAN: TIntegerField
      FieldName = 'QTDCAN'
    end
    object Usu120IpdRecTIPCMB: TIntegerField
      FieldName = 'TIPCMB'
    end
    object Usu120IpdRecCOR001: TWideStringField
      FieldName = 'COR001'
      Size = 14
    end
    object Usu120IpdRecCOR002: TWideStringField
      FieldName = 'COR002'
      Size = 14
    end
    object Usu120IpdRecCODPRO: TWideStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object Usu120IpdRecCODDER: TWideStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object Usu120IpdRecTECTRA: TWideStringField
      FieldName = 'TECTRA'
      Size = 1
    end
    object Usu120IpdRecPRECAR: TIntegerField
      FieldName = 'PRECAR'
    end
  end
  object E120ObsRec: TZQuery
    Connection = Banco
    SQL.Strings = (
      'SELECT * FROM E120OBS WHERE NUMPED = 0')
    Params = <>
    Left = 232
    Top = 168
    object E120ObsRecCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object E120ObsRecCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Required = True
    end
    object E120ObsRecNUMCON: TIntegerField
      FieldName = 'NUMCON'
    end
    object E120ObsRecCODREP: TIntegerField
      FieldName = 'CODREP'
      Required = True
    end
    object E120ObsRecSEQOBS: TIntegerField
      FieldName = 'SEQOBS'
    end
    object E120ObsRecNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object E120ObsRecOBSPED: TWideStringField
      FieldName = 'OBSPED'
      Size = 250
    end
    object E120ObsRecSITOBS: TWideStringField
      FieldName = 'SITOBS'
      Size = 1
    end
    object E120ObsRecOBSUSU: TIntegerField
      FieldName = 'OBSUSU'
    end
    object E120ObsRecOBSDAT: TDateField
      FieldName = 'OBSDAT'
    end
  end
  object ConsSql: TZQuery
    Connection = Banco
    Params = <>
    Left = 24
    Top = 232
  end
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
    DataSet = CadE100Usu
    Left = 168
    Top = 56
  end
  object ProviderConsE100Usu: TDataSetProvider
    DataSet = ConsE100Usu
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
    object wdstrngfldClientConsE100UsuSENUSU: TWideStringField
      FieldName = 'SENUSU'
      Size = 40
    end
    object dtfldClientConsE100UsuDATCAD: TDateField
      FieldName = 'DATCAD'
    end
    object wdstrngfldClientConsE100UsuSITUSU: TWideStringField
      FieldName = 'SITUSU'
      Size = 1
    end
    object wdstrngfldClientConsE100UsuCHAVE: TWideStringField
      FieldName = 'CHAVE'
    end
    object wdstrngfldClientConsE100UsuNOMUSU: TWideStringField
      FieldName = 'NOMUSU'
      Size = 50
    end
    object ClientConsE100UsuCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object wdstrngfldClientConsE100UsuNOMREP: TWideStringField
      FieldName = 'NOMREP'
      Size = 60
    end
    object wdstrngfldClientConsE100UsuUSUADM: TWideStringField
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
  object UltimaFaixaNumCon: TZQuery
    Connection = Banco
    SQL.Strings = (
      
        'SELECT MAX(NCFI) AS ULTIMA_I, MAX(NCFE) AS ULTIMA_E FROM E100USU' +
        ' ')
    Params = <>
    Left = 120
    Top = 232
    object UltimaFaixaNumConULTIMA_I: TIntegerField
      FieldName = 'ULTIMA_I'
      ReadOnly = True
    end
    object UltimaFaixaNumConULTIMA_E: TIntegerField
      FieldName = 'ULTIMA_E'
      ReadOnly = True
    end
  end
  object CadE100Usu: TZQuery
    Connection = Banco
    SQL.Strings = (
      'SELECT * FROM E100USU WHERE CODUSU = :CODUSU')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODUSU'
        ParamType = ptUnknown
      end>
    Left = 168
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODUSU'
        ParamType = ptUnknown
      end>
    object CadE100UsuCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object CadE100UsuLOGUSU: TWideStringField
      FieldName = 'LOGUSU'
      Size = 40
    end
    object CadE100UsuSENUSU: TWideStringField
      FieldName = 'SENUSU'
      Size = 40
    end
    object CadE100UsuDATCAD: TDateField
      FieldName = 'DATCAD'
    end
    object CadE100UsuSITUSU: TWideStringField
      FieldName = 'SITUSU'
      Size = 1
    end
    object CadE100UsuCHAVE: TWideStringField
      FieldName = 'CHAVE'
    end
    object CadE100UsuNOMUSU: TWideStringField
      FieldName = 'NOMUSU'
      Size = 50
    end
    object CadE100UsuCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object CadE100UsuNOMREP: TWideStringField
      FieldName = 'NOMREP'
      Size = 60
    end
    object CadE100UsuUSUADM: TWideStringField
      FieldName = 'USUADM'
      Size = 1
    end
    object CadE100UsuNCIE: TIntegerField
      FieldName = 'NCIE'
    end
    object CadE100UsuNCFE: TIntegerField
      FieldName = 'NCFE'
    end
    object CadE100UsuNCAE: TIntegerField
      FieldName = 'NCAE'
    end
    object CadE100UsuNCII: TIntegerField
      FieldName = 'NCII'
    end
    object CadE100UsuNCFI: TIntegerField
      FieldName = 'NCFI'
    end
    object CadE100UsuNCAI: TIntegerField
      FieldName = 'NCAI'
    end
  end
  object ConsE100Usu: TZQuery
    Connection = Banco
    SQL.Strings = (
      'SELECT * FROM E100USU'
      'ORDER BY CODREP')
    Params = <>
    Left = 280
    Top = 8
    object ConsE100UsuCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object ConsE100UsuLOGUSU: TWideStringField
      FieldName = 'LOGUSU'
      Size = 40
    end
    object ConsE100UsuSENUSU: TWideStringField
      FieldName = 'SENUSU'
      Size = 40
    end
    object ConsE100UsuDATCAD: TDateField
      FieldName = 'DATCAD'
    end
    object ConsE100UsuSITUSU: TWideStringField
      FieldName = 'SITUSU'
      Size = 1
    end
    object ConsE100UsuCHAVE: TWideStringField
      FieldName = 'CHAVE'
    end
    object ConsE100UsuNOMUSU: TWideStringField
      FieldName = 'NOMUSU'
      Size = 50
    end
    object ConsE100UsuCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE100UsuNOMREP: TWideStringField
      FieldName = 'NOMREP'
      Size = 60
    end
    object ConsE100UsuUSUADM: TWideStringField
      FieldName = 'USUADM'
      Size = 1
    end
    object ConsE100UsuNCIE: TIntegerField
      FieldName = 'NCIE'
    end
    object ConsE100UsuNCFE: TIntegerField
      FieldName = 'NCFE'
    end
    object ConsE100UsuNCAE: TIntegerField
      FieldName = 'NCAE'
    end
    object ConsE100UsuNCII: TIntegerField
      FieldName = 'NCII'
    end
    object ConsE100UsuNCFI: TIntegerField
      FieldName = 'NCFI'
    end
    object ConsE100UsuNCAI: TIntegerField
      FieldName = 'NCAI'
    end
  end
end
