object DmFireRep: TDmFireRep
  OldCreateOrder = False
  Height = 367
  Width = 668
  object Banco: TIBDatabase
    DatabaseName = 
      '192.168.10.44:C:\DelphiSapiens\SapiensDelphi\ServerRep\Banco_Bas' +
      'e\BANCO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = ibtTransacao
    Left = 32
    Top = 32
  end
  object ibtTransacao: TIBTransaction
    DefaultDatabase = Banco
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 32
  end
  object E120IpdRec: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT * FROM E120IPD WHERE NUMPED = 0')
    Left = 104
    Top = 168
    object E120IpdRecCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120IPD"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object E120IpdRecCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120IPD"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object E120IpdRecNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120IPD"."NUMPED"'
    end
    object E120IpdRecNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120IPD"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object E120IpdRecCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120IPD"."CODREP"'
      Required = True
    end
    object E120IpdRecSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      Origin = '"E120IPD"."SEQIPD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object E120IpdRecTNSPRO: TIBStringField
      FieldName = 'TNSPRO'
      Origin = '"E120IPD"."TNSPRO"'
      Size = 5
    end
    object E120IpdRecCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E120IPD"."CODPRO"'
      Size = 14
    end
    object E120IpdRecCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"E120IPD"."CODDER"'
      Size = 7
    end
    object E120IpdRecCODFAM: TIBStringField
      FieldName = 'CODFAM'
      Origin = '"E120IPD"."CODFAM"'
      Size = 6
    end
    object E120IpdRecCODDEP: TIBStringField
      FieldName = 'CODDEP'
      Origin = '"E120IPD"."CODDEP"'
      Size = 10
    end
    object E120IpdRecQTDPED: TIntegerField
      FieldName = 'QTDPED'
      Origin = '"E120IPD"."QTDPED"'
    end
    object E120IpdRecQTDFAT: TIntegerField
      FieldName = 'QTDFAT'
      Origin = '"E120IPD"."QTDFAT"'
    end
    object E120IpdRecQTDCAN: TIntegerField
      FieldName = 'QTDCAN'
      Origin = '"E120IPD"."QTDCAN"'
    end
    object E120IpdRecQTDABE: TIntegerField
      FieldName = 'QTDABE'
      Origin = '"E120IPD"."QTDABE"'
    end
    object E120IpdRecUNIMED: TIBStringField
      FieldName = 'UNIMED'
      Origin = '"E120IPD"."UNIMED"'
      Size = 3
    end
    object E120IpdRecCODTPR: TIBStringField
      FieldName = 'CODTPR'
      Origin = '"E120IPD"."CODTPR"'
      Size = 4
    end
    object E120IpdRecPREUNI: TFloatField
      FieldName = 'PREUNI'
      Origin = '"E120IPD"."PREUNI"'
    end
    object E120IpdRecPERIPI: TFloatField
      FieldName = 'PERIPI'
      Origin = '"E120IPD"."PERIPI"'
    end
    object E120IpdRecPERICM: TFloatField
      FieldName = 'PERICM'
      Origin = '"E120IPD"."PERICM"'
    end
    object E120IpdRecPERCOM: TFloatField
      FieldName = 'PERCOM'
      Origin = '"E120IPD"."PERCOM"'
    end
    object E120IpdRecVLRBRU: TFloatField
      FieldName = 'VLRBRU'
      Origin = '"E120IPD"."VLRBRU"'
    end
    object E120IpdRecVLRBIP: TFloatField
      FieldName = 'VLRBIP'
      Origin = '"E120IPD"."VLRBIP"'
    end
    object E120IpdRecVLRIPI: TFloatField
      FieldName = 'VLRIPI'
      Origin = '"E120IPD"."VLRIPI"'
    end
    object E120IpdRecVLRBIC: TFloatField
      FieldName = 'VLRBIC'
      Origin = '"E120IPD"."VLRBIC"'
    end
    object E120IpdRecVLRICM: TFloatField
      FieldName = 'VLRICM'
      Origin = '"E120IPD"."VLRICM"'
    end
    object E120IpdRecVLRBSI: TFloatField
      FieldName = 'VLRBSI'
      Origin = '"E120IPD"."VLRBSI"'
    end
    object E120IpdRecVLRICS: TFloatField
      FieldName = 'VLRICS'
      Origin = '"E120IPD"."VLRICS"'
    end
    object E120IpdRecVLRBCO: TFloatField
      FieldName = 'VLRBCO'
      Origin = '"E120IPD"."VLRBCO"'
    end
    object E120IpdRecVLRCOM: TFloatField
      FieldName = 'VLRCOM'
      Origin = '"E120IPD"."VLRCOM"'
    end
    object E120IpdRecVLRLPR: TFloatField
      FieldName = 'VLRLPR'
      Origin = '"E120IPD"."VLRLPR"'
    end
    object E120IpdRecVLRLIQ: TFloatField
      FieldName = 'VLRLIQ'
      Origin = '"E120IPD"."VLRLIQ"'
    end
    object E120IpdRecSITIPD: TIBStringField
      FieldName = 'SITIPD'
      Origin = '"E120IPD"."SITIPD"'
      FixedChar = True
      Size = 1
    end
    object E120IpdRecUSUGER: TIntegerField
      FieldName = 'USUGER'
      Origin = '"E120IPD"."USUGER"'
    end
    object E120IpdRecDATGER: TDateField
      FieldName = 'DATGER'
      Origin = '"E120IPD"."DATGER"'
    end
    object E120IpdRecTOTDESC: TFloatField
      FieldName = 'TOTDESC'
      Origin = '"E120IPD"."TOTDESC"'
    end
    object E120IpdRecVLRORI: TFloatField
      FieldName = 'VLRORI'
      Origin = '"E120IPD"."VLRORI"'
    end
    object E120IpdRecDATEMI: TDateField
      FieldName = 'DATEMI'
      Origin = '"E120IPD"."DATEMI"'
    end
    object E120IpdRecDATENT: TDateField
      FieldName = 'DATENT'
      Origin = '"E120IPD"."DATENT"'
    end
    object E120IpdRecCORGRID: TIBStringField
      FieldName = 'CORGRID'
      Origin = '"E120IPD"."CORGRID"'
      Size = 30
    end
    object E120IpdRecCORES: TIBStringField
      FieldName = 'CORES'
      Origin = '"E120IPD"."CORES"'
      Size = 400
    end
  end
  object Usu120IpdRec: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT * FROM USU120IPD WHERE NUMPED = 0')
    Left = 184
    Top = 168
    object Usu120IpdRecCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"USU120IPD"."CODEMP"'
      Required = True
    end
    object Usu120IpdRecCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"USU120IPD"."CODFIL"'
      Required = True
    end
    object Usu120IpdRecNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"USU120IPD"."NUMCON"'
    end
    object Usu120IpdRecCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"USU120IPD"."CODREP"'
      Required = True
    end
    object Usu120IpdRecSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      Origin = '"USU120IPD"."SEQIPD"'
    end
    object Usu120IpdRecSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = '"USU120IPD"."SEQITE"'
    end
    object Usu120IpdRecNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"USU120IPD"."NUMPED"'
    end
    object Usu120IpdRecQTDCOR: TIntegerField
      FieldName = 'QTDCOR'
      Origin = '"USU120IPD"."QTDCOR"'
    end
    object Usu120IpdRecQTDABE: TIntegerField
      FieldName = 'QTDABE'
      Origin = '"USU120IPD"."QTDABE"'
    end
    object Usu120IpdRecQTDCAN: TIntegerField
      FieldName = 'QTDCAN'
      Origin = '"USU120IPD"."QTDCAN"'
    end
    object Usu120IpdRecTIPCMB: TIntegerField
      FieldName = 'TIPCMB'
      Origin = '"USU120IPD"."TIPCMB"'
    end
    object Usu120IpdRecCOR001: TIBStringField
      FieldName = 'COR001'
      Origin = '"USU120IPD"."COR001"'
      Size = 14
    end
    object Usu120IpdRecCOR002: TIBStringField
      FieldName = 'COR002'
      Origin = '"USU120IPD"."COR002"'
      Size = 14
    end
    object Usu120IpdRecCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"USU120IPD"."CODPRO"'
      Size = 14
    end
    object Usu120IpdRecCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"USU120IPD"."CODDER"'
      Size = 7
    end
    object Usu120IpdRecTECTRA: TIBStringField
      FieldName = 'TECTRA'
      Origin = '"USU120IPD"."TECTRA"'
      FixedChar = True
      Size = 1
    end
    object Usu120IpdRecPRECAR: TIntegerField
      FieldName = 'PRECAR'
      Origin = '"USU120IPD"."PRECAR"'
    end
  end
  object E120ObsRec: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT * FROM E120OBS WHERE NUMPED = 0')
    Left = 256
    Top = 168
    object E120ObsRecCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120OBS"."CODEMP"'
      Required = True
    end
    object E120ObsRecCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120OBS"."CODFIL"'
      Required = True
    end
    object E120ObsRecNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120OBS"."NUMCON"'
    end
    object E120ObsRecCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120OBS"."CODREP"'
      Required = True
    end
    object E120ObsRecSEQOBS: TIntegerField
      FieldName = 'SEQOBS'
      Origin = '"E120OBS"."SEQOBS"'
    end
    object E120ObsRecNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120OBS"."NUMPED"'
    end
    object E120ObsRecOBSPED: TIBStringField
      FieldName = 'OBSPED'
      Origin = '"E120OBS"."OBSPED"'
      Size = 250
    end
    object E120ObsRecSITOBS: TIBStringField
      FieldName = 'SITOBS'
      Origin = '"E120OBS"."SITOBS"'
      FixedChar = True
      Size = 1
    end
    object E120ObsRecOBSUSU: TIntegerField
      FieldName = 'OBSUSU'
      Origin = '"E120OBS"."OBSUSU"'
    end
    object E120ObsRecOBSDAT: TDateField
      FieldName = 'OBSDAT'
      Origin = '"E120OBS"."OBSDAT"'
    end
  end
  object E120PedRec: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT * FROM E120PED WHERE NUMPED = 0 ')
    Left = 32
    Top = 168
    object E120PedRecCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120PED"."CODEMP"'
      Required = True
    end
    object E120PedRecCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120PED"."CODFIL"'
      Required = True
    end
    object E120PedRecNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120PED"."NUMCON"'
    end
    object E120PedRecNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120PED"."NUMPED"'
    end
    object E120PedRecCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120PED"."CODREP"'
      Required = True
    end
    object E120PedRecCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"E120PED"."CODCLI"'
    end
    object E120PedRecTNSPRO: TIBStringField
      FieldName = 'TNSPRO'
      Origin = '"E120PED"."TNSPRO"'
      Required = True
      Size = 5
    end
    object E120PedRecDATEMI: TDateField
      FieldName = 'DATEMI'
      Origin = '"E120PED"."DATEMI"'
    end
    object E120PedRecCODCPG: TIBStringField
      FieldName = 'CODCPG'
      Origin = '"E120PED"."CODCPG"'
      Size = 6
    end
    object E120PedRecQTDORI: TFloatField
      FieldName = 'QTDORI'
      Origin = '"E120PED"."QTDORI"'
    end
    object E120PedRecQTDABE: TFloatField
      FieldName = 'QTDABE'
      Origin = '"E120PED"."QTDABE"'
    end
    object E120PedRecVLRBIP: TFloatField
      FieldName = 'VLRBIP'
      Origin = '"E120PED"."VLRBIP"'
    end
    object E120PedRecVLRIPI: TFloatField
      FieldName = 'VLRIPI'
      Origin = '"E120PED"."VLRIPI"'
    end
    object E120PedRecVLRBIC: TFloatField
      FieldName = 'VLRBIC'
      Origin = '"E120PED"."VLRBIC"'
    end
    object E120PedRecVLRICM: TFloatField
      FieldName = 'VLRICM'
      Origin = '"E120PED"."VLRICM"'
    end
    object E120PedRecVLRBCO: TFloatField
      FieldName = 'VLRBCO'
      Origin = '"E120PED"."VLRBCO"'
    end
    object E120PedRecVLRCOM: TFloatField
      FieldName = 'VLRCOM'
      Origin = '"E120PED"."VLRCOM"'
    end
    object E120PedRecVLRLIQ: TFloatField
      FieldName = 'VLRLIQ'
      Origin = '"E120PED"."VLRLIQ"'
    end
    object E120PedRecVLRORI: TFloatField
      FieldName = 'VLRORI'
      Origin = '"E120PED"."VLRORI"'
    end
    object E120PedRecSITPED: TIBStringField
      FieldName = 'SITPED'
      Origin = '"E120PED"."SITPED"'
      FixedChar = True
      Size = 1
    end
    object E120PedRecUSUGER: TIntegerField
      FieldName = 'USUGER'
      Origin = '"E120PED"."USUGER"'
    end
    object E120PedRecDATGER: TDateField
      FieldName = 'DATGER'
      Origin = '"E120PED"."DATGER"'
    end
    object E120PedRecPEDENV: TIBStringField
      FieldName = 'PEDENV'
      Origin = '"E120PED"."PEDENV"'
      FixedChar = True
      Size = 1
    end
    object E120PedRecDATENV: TDateField
      FieldName = 'DATENV'
      Origin = '"E120PED"."DATENV"'
    end
    object E120PedRecPEDCON: TIBStringField
      FieldName = 'PEDCON'
      Origin = '"E120PED"."PEDCON"'
      FixedChar = True
      Size = 1
    end
    object E120PedRecDATCON: TDateField
      FieldName = 'DATCON'
      Origin = '"E120PED"."DATCON"'
    end
    object E120PedRecUSUCON: TIntegerField
      FieldName = 'USUCON'
      Origin = '"E120PED"."USUCON"'
    end
    object E120PedRecPRECAR: TIntegerField
      FieldName = 'PRECAR'
      Origin = '"E120PED"."PRECAR"'
    end
    object E120PedRecPEDPRO: TIBStringField
      FieldName = 'PEDPRO'
      Origin = '"E120PED"."PEDPRO"'
      FixedChar = True
      Size = 1
    end
  end
  object ConsSql: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    Left = 328
    Top = 8
  end
  object CadE100Usu: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E100USU'
      'where'
      '  CODUSU = :OLD_CODUSU')
    InsertSQL.Strings = (
      'insert into E100USU'
      
        '  (CHAVE, CODREP, CODUSU, DATCAD, LOGUSU, NCAE, NCAI, NCFE, NCFI' +
        ', NCIE, '
      '   NCII, NOMREP, NOMUSU, SENUSU, SITUSU, USUADM)'
      'values'
      
        '  (:CHAVE, :CODREP, :CODUSU, :DATCAD, :LOGUSU, :NCAE, :NCAI, :NC' +
        'FE, :NCFI, '
      '   :NCIE, :NCII, :NOMREP, :NOMUSU, :SENUSU, :SITUSU, :USUADM)')
    RefreshSQL.Strings = (
      'Select '
      '  CODUSU,'
      '  LOGUSU,'
      '  SENUSU,'
      '  DATCAD,'
      '  SITUSU,'
      '  CHAVE,'
      '  NOMUSU,'
      '  CODREP,'
      '  NOMREP,'
      '  USUADM,'
      '  NCIE,'
      '  NCFE,'
      '  NCAE,'
      '  NCII,'
      '  NCFI,'
      '  NCAI'
      'from E100USU '
      'where'
      '  CODUSU = :CODUSU')
    SelectSQL.Strings = (
      'SELECT * FROM E100USU WHERE CODUSU = :CODUSU')
    ModifySQL.Strings = (
      'update E100USU'
      'set'
      '  CHAVE = :CHAVE,'
      '  CODREP = :CODREP,'
      '  CODUSU = :CODUSU,'
      '  DATCAD = :DATCAD,'
      '  LOGUSU = :LOGUSU,'
      '  NCAE = :NCAE,'
      '  NCAI = :NCAI,'
      '  NCFE = :NCFE,'
      '  NCFI = :NCFI,'
      '  NCIE = :NCIE,'
      '  NCII = :NCII,'
      '  NOMREP = :NOMREP,'
      '  NOMUSU = :NOMUSU,'
      '  SENUSU = :SENUSU,'
      '  SITUSU = :SITUSU,'
      '  USUADM = :USUADM'
      'where'
      '  CODUSU = :OLD_CODUSU')
    Left = 408
    Top = 128
    object CadE100UsuCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E100USU"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE100UsuLOGUSU: TIBStringField
      FieldName = 'LOGUSU'
      Origin = '"E100USU"."LOGUSU"'
      Size = 40
    end
    object CadE100UsuSENUSU: TIBStringField
      FieldName = 'SENUSU'
      Origin = '"E100USU"."SENUSU"'
      Size = 40
    end
    object CadE100UsuDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"E100USU"."DATCAD"'
    end
    object CadE100UsuSITUSU: TIBStringField
      FieldName = 'SITUSU'
      Origin = '"E100USU"."SITUSU"'
      FixedChar = True
      Size = 1
    end
    object CadE100UsuCHAVE: TIBStringField
      FieldName = 'CHAVE'
      Origin = '"E100USU"."CHAVE"'
    end
    object CadE100UsuNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"E100USU"."NOMUSU"'
      Size = 50
    end
    object CadE100UsuCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E100USU"."CODREP"'
    end
    object CadE100UsuNOMREP: TIBStringField
      FieldName = 'NOMREP'
      Origin = '"E100USU"."NOMREP"'
      Size = 60
    end
    object CadE100UsuUSUADM: TIBStringField
      FieldName = 'USUADM'
      Origin = '"E100USU"."USUADM"'
      FixedChar = True
      Size = 1
    end
    object CadE100UsuNCIE: TIntegerField
      FieldName = 'NCIE'
      Origin = '"E100USU"."NCIE"'
    end
    object CadE100UsuNCFE: TIntegerField
      FieldName = 'NCFE'
      Origin = '"E100USU"."NCFE"'
    end
    object CadE100UsuNCAE: TIntegerField
      FieldName = 'NCAE'
      Origin = '"E100USU"."NCAE"'
    end
    object CadE100UsuNCII: TIntegerField
      FieldName = 'NCII'
      Origin = '"E100USU"."NCII"'
    end
    object CadE100UsuNCFI: TIntegerField
      FieldName = 'NCFI'
      Origin = '"E100USU"."NCFI"'
    end
    object CadE100UsuNCAI: TIntegerField
      FieldName = 'NCAI'
      Origin = '"E100USU"."NCAI"'
    end
  end
  object UltimaFaixaNumCon: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      
        'SELECT MAX(NCFI) AS ULTIMA_I, MAX(NCFE) AS ULTIMA_E FROM E100USU' +
        ' ')
    Left = 240
    Top = 72
    object UltimaFaixaNumConULTIMA_I: TIntegerField
      FieldName = 'ULTIMA_I'
      ProviderFlags = []
    end
    object UltimaFaixaNumConULTIMA_E: TIntegerField
      FieldName = 'ULTIMA_E'
      ProviderFlags = []
    end
  end
  object ConsE100Usu: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT * FROM E100USU'
      'ORDER BY CODREP')
    Left = 496
    Top = 128
    object ConsE100UsuCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E100USU"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE100UsuLOGUSU: TIBStringField
      FieldName = 'LOGUSU'
      Origin = '"E100USU"."LOGUSU"'
      Size = 40
    end
    object ConsE100UsuSENUSU: TIBStringField
      FieldName = 'SENUSU'
      Origin = '"E100USU"."SENUSU"'
      Size = 40
    end
    object ConsE100UsuDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"E100USU"."DATCAD"'
    end
    object ConsE100UsuSITUSU: TIBStringField
      FieldName = 'SITUSU'
      Origin = '"E100USU"."SITUSU"'
      FixedChar = True
      Size = 1
    end
    object ConsE100UsuCHAVE: TIBStringField
      FieldName = 'CHAVE'
      Origin = '"E100USU"."CHAVE"'
    end
    object ConsE100UsuNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"E100USU"."NOMUSU"'
      Size = 50
    end
    object ConsE100UsuCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E100USU"."CODREP"'
    end
    object ConsE100UsuNOMREP: TIBStringField
      FieldName = 'NOMREP'
      Origin = '"E100USU"."NOMREP"'
      Size = 60
    end
    object ConsE100UsuUSUADM: TIBStringField
      FieldName = 'USUADM'
      Origin = '"E100USU"."USUADM"'
      FixedChar = True
      Size = 1
    end
    object ConsE100UsuNCIE: TIntegerField
      FieldName = 'NCIE'
      Origin = '"E100USU"."NCIE"'
    end
    object ConsE100UsuNCFE: TIntegerField
      FieldName = 'NCFE'
      Origin = '"E100USU"."NCFE"'
    end
    object ConsE100UsuNCAE: TIntegerField
      FieldName = 'NCAE'
      Origin = '"E100USU"."NCAE"'
    end
    object ConsE100UsuNCII: TIntegerField
      FieldName = 'NCII'
      Origin = '"E100USU"."NCII"'
    end
    object ConsE100UsuNCFI: TIntegerField
      FieldName = 'NCFI'
      Origin = '"E100USU"."NCFI"'
    end
    object ConsE100UsuNCAI: TIntegerField
      FieldName = 'NCAI'
      Origin = '"E100USU"."NCAI"'
    end
  end
end
