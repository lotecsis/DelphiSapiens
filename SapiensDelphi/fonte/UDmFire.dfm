object DmFire: TDmFire
  OldCreateOrder = False
  Height = 636
  Width = 938
  object IBDBanco: TIBDatabase
    DatabaseName = 
      '192.168.10.44:C:\DelphiSapiens\SapiensDelphi\ServerRep\BANCO\BAN' +
      'CO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = IBTransacao
    Left = 40
    Top = 24
  end
  object ConsE100Usu: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    SQL.Strings = (
      'select * from E100USU where atuusu = '#39'S'#39' order by codusu ')
    Left = 40
    Top = 80
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
    object ConsE100UsuATUUSU: TIBStringField
      FieldName = 'ATUUSU'
      Origin = '"E100USU"."ATUUSU"'
      FixedChar = True
      Size = 1
    end
    object ConsE100UsuQTDDIA: TIntegerField
      FieldName = 'QTDDIA'
      Origin = '"E100USU"."QTDDIA"'
    end
    object ConsE100UsuDATATU: TDateField
      FieldName = 'DATATU'
      Origin = '"E100USU"."DATATU"'
    end
    object ConsE100UsuHORATU: TIBStringField
      FieldName = 'HORATU'
      Origin = '"E100USU"."HORATU"'
      Size = 10
    end
    object ConsE100UsuVEREXE: TIBStringField
      FieldName = 'VEREXE'
      Origin = '"E100USU"."VEREXE"'
    end
  end
  object IBTransacao: TIBTransaction
    DefaultDatabase = IBDBanco
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 120
    Top = 24
  end
  object CadE100Usu: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from E100USU'
      'where'
      '  CODUSU = :OLD_CODUSU')
    InsertSQL.Strings = (
      'insert into E100USU'
      
        '  (ATUUSU, CHAVE, CODREP, CODUSU, DATATU, DATCAD, HORATU, LOGUSU' +
        ', NOMREP, '
      '   NOMUSU, QTDDIA, SENUSU, SITUSU, USUADM, VEREXE)'
      'values'
      
        '  (:ATUUSU, :CHAVE, :CODREP, :CODUSU, :DATATU, :DATCAD, :HORATU,' +
        ' :LOGUSU, '
      
        '   :NOMREP, :NOMUSU, :QTDDIA, :SENUSU, :SITUSU, :USUADM, :VEREXE' +
        ')')
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
      '  ATUUSU,'
      '  QTDDIA,'
      '  DATATU,'
      '  HORATU,'
      '  VEREXE'
      'from E100USU '
      'where'
      '  CODUSU = :CODUSU')
    SelectSQL.Strings = (
      'select * from E100USU where codusu = :codusu')
    ModifySQL.Strings = (
      'update E100USU'
      'set'
      '  ATUUSU = :ATUUSU,'
      '  CHAVE = :CHAVE,'
      '  CODREP = :CODREP,'
      '  CODUSU = :CODUSU,'
      '  DATATU = :DATATU,'
      '  DATCAD = :DATCAD,'
      '  HORATU = :HORATU,'
      '  LOGUSU = :LOGUSU,'
      '  NOMREP = :NOMREP,'
      '  NOMUSU = :NOMUSU,'
      '  QTDDIA = :QTDDIA,'
      '  SENUSU = :SENUSU,'
      '  SITUSU = :SITUSU,'
      '  USUADM = :USUADM,'
      '  VEREXE = :VEREXE'
      'where'
      '  CODUSU = :OLD_CODUSU')
    Left = 144
    Top = 80
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
    object CadE100UsuATUUSU: TIBStringField
      FieldName = 'ATUUSU'
      Origin = '"E100USU"."ATUUSU"'
      FixedChar = True
      Size = 1
    end
    object CadE100UsuQTDDIA: TIntegerField
      FieldName = 'QTDDIA'
      Origin = '"E100USU"."QTDDIA"'
    end
    object CadE100UsuDATATU: TDateField
      FieldName = 'DATATU'
      Origin = '"E100USU"."DATATU"'
    end
    object CadE100UsuHORATU: TIBStringField
      FieldName = 'HORATU'
      Origin = '"E100USU"."HORATU"'
      Size = 10
    end
    object CadE100UsuVEREXE: TIBStringField
      FieldName = 'VEREXE'
      Origin = '"E100USU"."VEREXE"'
    end
  end
  object ConsE028Cpg: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    SQL.Strings = (
      'select * from E028CPG where codusu = :codusu ')
    Left = 40
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codusu'
        ParamType = ptUnknown
      end>
    object ConsE028CpgCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E028CPG"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE028CpgCODCPG: TIBStringField
      FieldName = 'CODCPG'
      Origin = '"E028CPG"."CODCPG"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object ConsE028CpgCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E028CPG"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE028CpgDESCPG: TIBStringField
      FieldName = 'DESCPG'
      Origin = '"E028CPG"."DESCPG"'
      Size = 50
    end
    object ConsE028CpgABRCPG: TIBStringField
      FieldName = 'ABRCPG'
      Origin = '"E028CPG"."ABRCPG"'
      Size = 10
    end
    object ConsE028CpgPRZMED: TIntegerField
      FieldName = 'PRZMED'
      Origin = '"E028CPG"."PRZMED"'
    end
    object ConsE028CpgQTDPAR: TIntegerField
      FieldName = 'QTDPAR'
      Origin = '"E028CPG"."QTDPAR"'
    end
    object ConsE028CpgSITCPG: TIBStringField
      FieldName = 'SITCPG'
      Origin = '"E028CPG"."SITCPG"'
      FixedChar = True
      Size = 1
    end
    object ConsE028CpgCPGLIB: TIBStringField
      FieldName = 'CPGLIB'
      Origin = '"E028CPG"."CPGLIB"'
      FixedChar = True
      Size = 1
    end
    object ConsE028CpgPERCOM: TFloatField
      FieldName = 'PERCOM'
      Origin = '"E028CPG"."PERCOM"'
    end
  end
  object CadE028Cpg: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from E028CPG'
      'where'
      '  CODCPG = :OLD_CODCPG and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODUSU = :OLD_CODUSU')
    InsertSQL.Strings = (
      'insert into E028CPG'
      
        '  (ABRCPG, CODCPG, CODEMP, CODUSU, CPGLIB, DESCPG, PERCOM, PRZME' +
        'D, QTDPAR, '
      '   SITCPG)'
      'values'
      
        '  (:ABRCPG, :CODCPG, :CODEMP, :CODUSU, :CPGLIB, :DESCPG, :PERCOM' +
        ', :PRZMED, '
      '   :QTDPAR, :SITCPG)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODCPG,'
      '  CODUSU,'
      '  DESCPG,'
      '  ABRCPG,'
      '  PRZMED,'
      '  QTDPAR,'
      '  SITCPG,'
      '  PERCOM,'
      '  CPGLIB'
      'from E028CPG '
      'where'
      '  CODCPG = :CODCPG and'
      '  CODEMP = :CODEMP and'
      '  CODUSU = :CODUSU')
    SelectSQL.Strings = (
      'select * from E028CPG where codemp = :codemp and'
      
        '                                                 codcpg = :codcp' +
        'g and'
      
        '                                                 codusu = :codus' +
        'u')
    ModifySQL.Strings = (
      'update E028CPG'
      'set'
      '  ABRCPG = :ABRCPG,'
      '  CODCPG = :CODCPG,'
      '  CODEMP = :CODEMP,'
      '  CODUSU = :CODUSU,'
      '  CPGLIB = :CPGLIB,'
      '  DESCPG = :DESCPG,'
      '  PERCOM = :PERCOM,'
      '  PRZMED = :PRZMED,'
      '  QTDPAR = :QTDPAR,'
      '  SITCPG = :SITCPG'
      'where'
      '  CODCPG = :OLD_CODCPG and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODUSU = :OLD_CODUSU')
    Left = 136
    Top = 152
    object CadE028CpgCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E028CPG"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE028CpgCODCPG: TIBStringField
      FieldName = 'CODCPG'
      Origin = '"E028CPG"."CODCPG"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CadE028CpgCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E028CPG"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE028CpgDESCPG: TIBStringField
      FieldName = 'DESCPG'
      Origin = '"E028CPG"."DESCPG"'
      Size = 50
    end
    object CadE028CpgABRCPG: TIBStringField
      FieldName = 'ABRCPG'
      Origin = '"E028CPG"."ABRCPG"'
      Size = 10
    end
    object CadE028CpgPRZMED: TIntegerField
      FieldName = 'PRZMED'
      Origin = '"E028CPG"."PRZMED"'
    end
    object CadE028CpgQTDPAR: TIntegerField
      FieldName = 'QTDPAR'
      Origin = '"E028CPG"."QTDPAR"'
    end
    object CadE028CpgSITCPG: TIBStringField
      FieldName = 'SITCPG'
      Origin = '"E028CPG"."SITCPG"'
      FixedChar = True
      Size = 1
    end
    object CadE028CpgCPGLIB: TIBStringField
      FieldName = 'CPGLIB'
      Origin = '"E028CPG"."CPGLIB"'
      FixedChar = True
      Size = 1
    end
    object CadE028CpgPERCOM: TFloatField
      FieldName = 'PERCOM'
      Origin = '"E028CPG"."PERCOM"'
    end
  end
  object ConsE081Itp: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    SQL.Strings = (
      'select * from E081ITP')
    Left = 56
    Top = 216
    object ConsE081ItpCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E081ITP"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE081ItpCODTPR: TIBStringField
      FieldName = 'CODTPR'
      Origin = '"E081ITP"."CODTPR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object ConsE081ItpCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E081ITP"."CODPRO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object ConsE081ItpCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"E081ITP"."CODDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object ConsE081ItpCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E081ITP"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE081ItpPREBAS: TFloatField
      FieldName = 'PREBAS'
      Origin = '"E081ITP"."PREBAS"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object ConsE081ItpTOLMAI: TFloatField
      FieldName = 'TOLMAI'
      Origin = '"E081ITP"."TOLMAI"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object ConsE081ItpTOLMEN: TFloatField
      FieldName = 'TOLMEN'
      Origin = '"E081ITP"."TOLMEN"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object ConsE081ItpVLRMAI: TFloatField
      FieldName = 'VLRMAI'
      Origin = '"E081ITP"."VLRMAI"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object ConsE081ItpVLRMEN: TFloatField
      FieldName = 'VLRMEN'
      Origin = '"E081ITP"."VLRMEN"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object ConsE081ItpSITREG: TIBStringField
      FieldName = 'SITREG'
      Origin = '"E081ITP"."SITREG"'
      FixedChar = True
      Size = 1
    end
    object ConsE081ItpDATINI: TDateField
      FieldName = 'DATINI'
      Origin = '"E081ITP"."DATINI"'
    end
    object ConsE081ItpDATFIM: TDateField
      FieldName = 'DATFIM'
      Origin = '"E081ITP"."DATFIM"'
    end
    object ConsE081ItpDESPRO: TIBStringField
      FieldName = 'DESPRO'
      Origin = '"E081ITP"."DESPRO"'
      Size = 100
    end
  end
  object CadE081Itp: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from E081ITP'
      'where'
      '  CODDER = :OLD_CODDER and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO and'
      '  CODTPR = :OLD_CODTPR and'
      '  CODUSU = :OLD_CODUSU')
    InsertSQL.Strings = (
      'insert into E081ITP'
      
        '  (CODDER, CODEMP, CODPRO, CODTPR, CODUSU, DATFIM, DATINI, DESPR' +
        'O, PREBAS, '
      '   SITREG, TOLMAI, TOLMEN, VLRMAI, VLRMEN)'
      'values'
      
        '  (:CODDER, :CODEMP, :CODPRO, :CODTPR, :CODUSU, :DATFIM, :DATINI' +
        ', :DESPRO, '
      '   :PREBAS, :SITREG, :TOLMAI, :TOLMEN, :VLRMAI, :VLRMEN)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODTPR,'
      '  CODPRO,'
      '  CODDER,'
      '  CODUSU,'
      '  DESPRO,'
      '  PREBAS,'
      '  TOLMAI,'
      '  TOLMEN,'
      '  VLRMAI,'
      '  VLRMEN,'
      '  SITREG,'
      '  DATINI,'
      '  DATFIM'
      'from E081ITP '
      'where'
      '  CODDER = :CODDER and'
      '  CODEMP = :CODEMP and'
      '  CODPRO = :CODPRO and'
      '  CODTPR = :CODTPR and'
      '  CODUSU = :CODUSU')
    SelectSQL.Strings = (
      'select * from E081ITP where codemp = :codemp and'
      
        '                                               codtpr = :codtpr ' +
        'and'
      
        '                                               codpro = :codpro ' +
        'and'
      
        '                                               codder = :codder ' +
        'and'
      '                                               codusu = :codusu')
    ModifySQL.Strings = (
      'update E081ITP'
      'set'
      '  CODDER = :CODDER,'
      '  CODEMP = :CODEMP,'
      '  CODPRO = :CODPRO,'
      '  CODTPR = :CODTPR,'
      '  CODUSU = :CODUSU,'
      '  DATFIM = :DATFIM,'
      '  DATINI = :DATINI,'
      '  DESPRO = :DESPRO,'
      '  PREBAS = :PREBAS,'
      '  SITREG = :SITREG,'
      '  TOLMAI = :TOLMAI,'
      '  TOLMEN = :TOLMEN,'
      '  VLRMAI = :VLRMAI,'
      '  VLRMEN = :VLRMEN'
      'where'
      '  CODDER = :OLD_CODDER and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO and'
      '  CODTPR = :OLD_CODTPR and'
      '  CODUSU = :OLD_CODUSU')
    Left = 133
    Top = 216
    object CadE081ItpCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E081ITP"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE081ItpCODTPR: TIBStringField
      FieldName = 'CODTPR'
      Origin = '"E081ITP"."CODTPR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CadE081ItpCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E081ITP"."CODPRO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object CadE081ItpCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"E081ITP"."CODDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object CadE081ItpCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E081ITP"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE081ItpPREBAS: TFloatField
      FieldName = 'PREBAS'
      Origin = '"E081ITP"."PREBAS"'
    end
    object CadE081ItpTOLMAI: TFloatField
      FieldName = 'TOLMAI'
      Origin = '"E081ITP"."TOLMAI"'
    end
    object CadE081ItpTOLMEN: TFloatField
      FieldName = 'TOLMEN'
      Origin = '"E081ITP"."TOLMEN"'
    end
    object CadE081ItpVLRMAI: TFloatField
      FieldName = 'VLRMAI'
      Origin = '"E081ITP"."VLRMAI"'
    end
    object CadE081ItpVLRMEN: TFloatField
      FieldName = 'VLRMEN'
      Origin = '"E081ITP"."VLRMEN"'
    end
    object CadE081ItpSITREG: TIBStringField
      FieldName = 'SITREG'
      Origin = '"E081ITP"."SITREG"'
      FixedChar = True
      Size = 1
    end
    object CadE081ItpDATINI: TDateField
      FieldName = 'DATINI'
      Origin = '"E081ITP"."DATINI"'
    end
    object CadE081ItpDATFIM: TDateField
      FieldName = 'DATFIM'
      Origin = '"E081ITP"."DATFIM"'
    end
    object CadE081ItpDESPRO: TIBStringField
      FieldName = 'DESPRO'
      Origin = '"E081ITP"."DESPRO"'
      Size = 100
    end
  end
  object CadE081Tab: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from E081TAB'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODTPR = :OLD_CODTPR and'
      '  CODUSU = :OLD_CODUSU')
    InsertSQL.Strings = (
      'insert into E081TAB'
      '  (CODEMP, CODTPR, CODUSU, DESTPR, SITTPR)'
      'values'
      '  (:CODEMP, :CODTPR, :CODUSU, :DESTPR, :SITTPR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODTPR,'
      '  CODUSU,'
      '  DESTPR,'
      '  SITTPR'
      'from E081TAB '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODTPR = :CODTPR and'
      '  CODUSU = :CODUSU')
    SelectSQL.Strings = (
      'select * from E081TAB where codemp = :codemp and'
      
        '                                                 codtpr = :codtp' +
        'r and'
      
        '                                                 codusu = :codus' +
        'u')
    ModifySQL.Strings = (
      'update E081TAB'
      'set'
      '  CODEMP = :CODEMP,'
      '  CODTPR = :CODTPR,'
      '  CODUSU = :CODUSU,'
      '  DESTPR = :DESTPR,'
      '  SITTPR = :SITTPR'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODTPR = :OLD_CODTPR and'
      '  CODUSU = :OLD_CODUSU')
    Left = 133
    Top = 266
    object CadE081TabCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E081TAB"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE081TabCODTPR: TIBStringField
      FieldName = 'CODTPR'
      Origin = '"E081TAB"."CODTPR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CadE081TabCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E081TAB"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE081TabDESTPR: TIBStringField
      FieldName = 'DESTPR'
      Origin = '"E081TAB"."DESTPR"'
      Size = 30
    end
    object CadE081TabSITTPR: TIBStringField
      FieldName = 'SITTPR'
      Origin = '"E081TAB"."SITTPR"'
      FixedChar = True
      Size = 1
    end
  end
  object CadE120Ped: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from E120PED'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON')
    InsertSQL.Strings = (
      'insert into E120PED'
      
        '  (CODCLI, CODCPG, CODEMP, CODFIL, CODREP, DATCON, DATEMI, DATEN' +
        'V, DATGER, '
      
        '   NUMCON, NUMPED, PEDCON, PEDENV, SITCON, SITPED, TNSPRO, USUCO' +
        'N, USUGER)'
      'values'
      
        '  (:CODCLI, :CODCPG, :CODEMP, :CODFIL, :CODREP, :DATCON, :DATEMI' +
        ', :DATENV, '
      
        '   :DATGER, :NUMCON, :NUMPED, :PEDCON, :PEDENV, :SITCON, :SITPED' +
        ', :TNSPRO, '
      '   :USUCON, :USUGER)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMCON,'
      '  CODREP,'
      '  NUMPED,'
      '  CODCLI,'
      '  TNSPRO,'
      '  DATEMI,'
      '  CODCPG,'
      '  SITPED,'
      '  USUGER,'
      '  DATGER,'
      '  PEDENV,'
      '  DATENV,'
      '  PEDCON,'
      '  DATCON,'
      '  USUCON,'
      '  SITCON'
      'from E120PED '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL and'
      '  CODREP = :CODREP and'
      '  NUMCON = :NUMCON')
    SelectSQL.Strings = (
      'select * from E120PED where codemp = :codemp and'
      
        '                                                codfil = :codfil' +
        ' and'
      
        '                                                numcon = :numcon' +
        ' and'
      '                                               codrep = :codrep'
      '')
    ModifySQL.Strings = (
      'update E120PED'
      'set'
      '  CODCLI = :CODCLI,'
      '  CODCPG = :CODCPG,'
      '  CODEMP = :CODEMP,'
      '  CODFIL = :CODFIL,'
      '  CODREP = :CODREP,'
      '  DATCON = :DATCON,'
      '  DATEMI = :DATEMI,'
      '  DATENV = :DATENV,'
      '  DATGER = :DATGER,'
      '  NUMCON = :NUMCON,'
      '  NUMPED = :NUMPED,'
      '  PEDCON = :PEDCON,'
      '  PEDENV = :PEDENV,'
      '  SITCON = :SITCON,'
      '  SITPED = :SITPED,'
      '  TNSPRO = :TNSPRO,'
      '  USUCON = :USUCON,'
      '  USUGER = :USUGER'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON')
    Left = 48
    Top = 336
    object CadE120PedCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120PED"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120PedCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120PED"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120PedNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120PED"."NUMPED"'
    end
    object CadE120PedNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120PED"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120PedCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"E120PED"."CODCLI"'
    end
    object CadE120PedTNSPRO: TIBStringField
      FieldName = 'TNSPRO'
      Origin = '"E120PED"."TNSPRO"'
      Size = 5
    end
    object CadE120PedDATEMI: TDateField
      FieldName = 'DATEMI'
      Origin = '"E120PED"."DATEMI"'
    end
    object CadE120PedCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120PED"."CODREP"'
    end
    object CadE120PedCODCPG: TIBStringField
      FieldName = 'CODCPG'
      Origin = '"E120PED"."CODCPG"'
      Size = 6
    end
    object CadE120PedSITPED: TIBStringField
      FieldName = 'SITPED'
      Origin = '"E120PED"."SITPED"'
      FixedChar = True
      Size = 1
    end
    object CadE120PedUSUGER: TIntegerField
      FieldName = 'USUGER'
      Origin = '"E120PED"."USUGER"'
    end
    object CadE120PedDATGER: TDateField
      FieldName = 'DATGER'
      Origin = '"E120PED"."DATGER"'
    end
    object CadE120PedPEDENV: TIBStringField
      FieldName = 'PEDENV'
      Origin = '"E120PED"."PEDENV"'
      FixedChar = True
      Size = 1
    end
    object CadE120PedDATENV: TDateField
      FieldName = 'DATENV'
      Origin = '"E120PED"."DATENV"'
    end
    object CadE120PedPEDCON: TIBStringField
      FieldName = 'PEDCON'
      Origin = '"E120PED"."PEDCON"'
      FixedChar = True
      Size = 1
    end
    object CadE120PedDATCON: TDateField
      FieldName = 'DATCON'
      Origin = '"E120PED"."DATCON"'
    end
    object CadE120PedUSUCON: TIntegerField
      FieldName = 'USUCON'
      Origin = '"E120PED"."USUCON"'
    end
    object CadE120PedSITCON: TIBStringField
      FieldName = 'SITCON'
      Origin = '"E120PED"."SITCON"'
      FixedChar = True
      Size = 1
    end
  end
  object CadE120Ipd: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from E120IPD'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD')
    InsertSQL.Strings = (
      'insert into E120IPD'
      
        '  (CODDEP, CODDER, CODEMP, CODFAM, CODFIL, CODPRO, CODREP, CODTP' +
        'R, DESCAPR, '
      
        '   NUMCON, NUMPED, PREUNI, QTDPED, SEQIPD, SITIPD, TNSPRO, TOTDE' +
        'SC, VLRBRU, '
      '   VLRORI)'
      'values'
      
        '  (:CODDEP, :CODDER, :CODEMP, :CODFAM, :CODFIL, :CODPRO, :CODREP' +
        ', :CODTPR, '
      
        '   :DESCAPR, :NUMCON, :NUMPED, :PREUNI, :QTDPED, :SEQIPD, :SITIP' +
        'D, :TNSPRO, '
      '   :TOTDESC, :VLRBRU, :VLRORI)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMCON,'
      '  CODREP,'
      '  SEQIPD,'
      '  NUMPED,'
      '  TNSPRO,'
      '  CODPRO,'
      '  CODDER,'
      '  CODFAM,'
      '  CODDEP,'
      '  QTDPED,'
      '  CODTPR,'
      '  PREUNI,'
      '  SITIPD,'
      '  TOTDESC,'
      '  VLRORI,'
      '  VLRBRU,'
      '  DESCAPR'
      'from E120IPD '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL and'
      '  CODREP = :CODREP and'
      '  NUMCON = :NUMCON and'
      '  SEQIPD = :SEQIPD')
    SelectSQL.Strings = (
      'select * from E120IPD where'
      '                                    codemp = :codemp and'
      '                                    codfil = :codfil and'
      '                                    numcon = :numcon and'
      '                                    seqipd = :seqipd and'
      '                                   codrep = :codrep')
    ModifySQL.Strings = (
      'update E120IPD'
      'set'
      '  CODDEP = :CODDEP,'
      '  CODDER = :CODDER,'
      '  CODEMP = :CODEMP,'
      '  CODFAM = :CODFAM,'
      '  CODFIL = :CODFIL,'
      '  CODPRO = :CODPRO,'
      '  CODREP = :CODREP,'
      '  CODTPR = :CODTPR,'
      '  DESCAPR = :DESCAPR,'
      '  NUMCON = :NUMCON,'
      '  NUMPED = :NUMPED,'
      '  PREUNI = :PREUNI,'
      '  QTDPED = :QTDPED,'
      '  SEQIPD = :SEQIPD,'
      '  SITIPD = :SITIPD,'
      '  TNSPRO = :TNSPRO,'
      '  TOTDESC = :TOTDESC,'
      '  VLRBRU = :VLRBRU,'
      '  VLRORI = :VLRORI'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD')
    Left = 160
    Top = 336
    object CadE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120IPD"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120IPD"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120IPD"."NUMPED"'
    end
    object CadE120IpdNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120IPD"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      Origin = '"E120IPD"."SEQIPD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120IpdTNSPRO: TIBStringField
      FieldName = 'TNSPRO'
      Origin = '"E120IPD"."TNSPRO"'
      Size = 5
    end
    object CadE120IpdCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E120IPD"."CODPRO"'
      Size = 14
    end
    object CadE120IpdCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"E120IPD"."CODDER"'
      Size = 7
    end
    object CadE120IpdCODFAM: TIBStringField
      FieldName = 'CODFAM'
      Origin = '"E120IPD"."CODFAM"'
      Size = 6
    end
    object CadE120IpdCODDEP: TIBStringField
      FieldName = 'CODDEP'
      Origin = '"E120IPD"."CODDEP"'
      Size = 10
    end
    object CadE120IpdQTDPED: TIntegerField
      FieldName = 'QTDPED'
      Origin = '"E120IPD"."QTDPED"'
    end
    object CadE120IpdCODTPR: TIBStringField
      FieldName = 'CODTPR'
      Origin = '"E120IPD"."CODTPR"'
      Size = 4
    end
    object CadE120IpdPREUNI: TFloatField
      FieldName = 'PREUNI'
      Origin = '"E120IPD"."PREUNI"'
    end
    object CadE120IpdSITIPD: TIBStringField
      FieldName = 'SITIPD'
      Origin = '"E120IPD"."SITIPD"'
      FixedChar = True
      Size = 1
    end
    object CadE120IpdTOTDESC: TFloatField
      FieldName = 'TOTDESC'
      Origin = '"E120IPD"."TOTDESC"'
    end
    object CadE120IpdVLRORI: TFloatField
      FieldName = 'VLRORI'
      Origin = '"E120IPD"."VLRORI"'
    end
    object CadE120IpdVLRBRU: TFloatField
      FieldName = 'VLRBRU'
      Origin = '"E120IPD"."VLRBRU"'
    end
    object CadE120IpdCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120IPD"."CODREP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120IpdDESCAPR: TIBStringField
      FieldName = 'DESCAPR'
      Origin = '"E120IPD"."DESCAPR"'
      FixedChar = True
      Size = 1
    end
  end
  object CadUsu120Ipd: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from USU120IPD'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD and'
      '  SEQITE = :OLD_SEQITE')
    InsertSQL.Strings = (
      'insert into USU120IPD'
      
        '  (CODDER, CODEMP, CODFIL, CODPRO, CODREP, COR001, COR002, NUMCO' +
        'N, NUMPED, '
      
        '   PRECAR, QTDABE, QTDCAN, QTDCOR, SEQIPD, SEQITE, TECTRA, TIPCM' +
        'B)'
      'values'
      
        '  (:CODDER, :CODEMP, :CODFIL, :CODPRO, :CODREP, :COR001, :COR002' +
        ', :NUMCON, '
      
        '   :NUMPED, :PRECAR, :QTDABE, :QTDCAN, :QTDCOR, :SEQIPD, :SEQITE' +
        ', :TECTRA, '
      '   :TIPCMB)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMCON,'
      '  CODREP,'
      '  SEQIPD,'
      '  SEQITE,'
      '  NUMPED,'
      '  QTDCOR,'
      '  QTDABE,'
      '  QTDCAN,'
      '  TIPCMB,'
      '  COR001,'
      '  COR002,'
      '  CODPRO,'
      '  CODDER,'
      '  TECTRA,'
      '  PRECAR'
      'from USU120IPD '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL and'
      '  CODREP = :CODREP and'
      '  NUMCON = :NUMCON and'
      '  SEQIPD = :SEQIPD and'
      '  SEQITE = :SEQITE')
    SelectSQL.Strings = (
      'select * from USU120IPD where codemp = :codemp and'
      
        '                                                    codfil = :co' +
        'dfil and'
      
        '                                                    numcon = :nu' +
        'mcon and'
      
        '                                                    seqipd = :se' +
        'qipd and'
      
        '                                                    seqite = :se' +
        'qite and'
      
        '                                                    codrep = :co' +
        'drep')
    ModifySQL.Strings = (
      'update USU120IPD'
      'set'
      '  CODDER = :CODDER,'
      '  CODEMP = :CODEMP,'
      '  CODFIL = :CODFIL,'
      '  CODPRO = :CODPRO,'
      '  CODREP = :CODREP,'
      '  COR001 = :COR001,'
      '  COR002 = :COR002,'
      '  NUMCON = :NUMCON,'
      '  NUMPED = :NUMPED,'
      '  PRECAR = :PRECAR,'
      '  QTDABE = :QTDABE,'
      '  QTDCAN = :QTDCAN,'
      '  QTDCOR = :QTDCOR,'
      '  SEQIPD = :SEQIPD,'
      '  SEQITE = :SEQITE,'
      '  TECTRA = :TECTRA,'
      '  TIPCMB = :TIPCMB'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD and'
      '  SEQITE = :OLD_SEQITE')
    Left = 264
    Top = 336
    object CadUsu120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"USU120IPD"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadUsu120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"USU120IPD"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadUsu120IpdNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"USU120IPD"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadUsu120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      Origin = '"USU120IPD"."SEQIPD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadUsu120IpdSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = '"USU120IPD"."SEQITE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadUsu120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"USU120IPD"."NUMPED"'
    end
    object CadUsu120IpdQTDCOR: TIntegerField
      FieldName = 'QTDCOR'
      Origin = '"USU120IPD"."QTDCOR"'
    end
    object CadUsu120IpdQTDABE: TIntegerField
      FieldName = 'QTDABE'
      Origin = '"USU120IPD"."QTDABE"'
    end
    object CadUsu120IpdQTDCAN: TIntegerField
      FieldName = 'QTDCAN'
      Origin = '"USU120IPD"."QTDCAN"'
    end
    object CadUsu120IpdTIPCMB: TIntegerField
      FieldName = 'TIPCMB'
      Origin = '"USU120IPD"."TIPCMB"'
    end
    object CadUsu120IpdCOR001: TIBStringField
      FieldName = 'COR001'
      Origin = '"USU120IPD"."COR001"'
      Size = 14
    end
    object CadUsu120IpdCOR002: TIBStringField
      FieldName = 'COR002'
      Origin = '"USU120IPD"."COR002"'
      Size = 14
    end
    object CadUsu120IpdCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"USU120IPD"."CODPRO"'
      Size = 14
    end
    object CadUsu120IpdCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"USU120IPD"."CODDER"'
      Size = 7
    end
    object CadUsu120IpdTECTRA: TIBStringField
      FieldName = 'TECTRA'
      Origin = '"USU120IPD"."TECTRA"'
      FixedChar = True
      Size = 1
    end
    object CadUsu120IpdPRECAR: TIntegerField
      FieldName = 'PRECAR'
      Origin = '"USU120IPD"."PRECAR"'
    end
    object CadUsu120IpdCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"USU120IPD"."CODREP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object CadE120Obs: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from e120obs'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQOBS = :OLD_SEQOBS')
    InsertSQL.Strings = (
      'insert into e120obs'
      
        '  (CODEMP, CODFIL, CODREP, NUMCON, NUMPED, OBSDAT, OBSPED, OBSUS' +
        'U, SEQOBS, '
      '   SITOBS)'
      'values'
      
        '  (:CODEMP, :CODFIL, :CODREP, :NUMCON, :NUMPED, :OBSDAT, :OBSPED' +
        ', :OBSUSU, '
      '   :SEQOBS, :SITOBS)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMCON,'
      '  CODREP,'
      '  SEQOBS,'
      '  NUMPED,'
      '  OBSPED,'
      '  SITOBS,'
      '  OBSUSU,'
      '  OBSDAT'
      'from e120obs '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL and'
      '  CODREP = :CODREP and'
      '  NUMCON = :NUMCON and'
      '  SEQOBS = :SEQOBS')
    SelectSQL.Strings = (
      'select * from e120obs where'
      '                       codemp = :codemp and'
      '                       codfil = :codfil and'
      '                       numcon = :numcon and'
      '                       seqobs = :seqobs and'
      '                       codrep = :codrep'
      '                       ')
    ModifySQL.Strings = (
      'update e120obs'
      'set'
      '  CODEMP = :CODEMP,'
      '  CODFIL = :CODFIL,'
      '  CODREP = :CODREP,'
      '  NUMCON = :NUMCON,'
      '  NUMPED = :NUMPED,'
      '  OBSDAT = :OBSDAT,'
      '  OBSPED = :OBSPED,'
      '  OBSUSU = :OBSUSU,'
      '  SEQOBS = :SEQOBS,'
      '  SITOBS = :SITOBS'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQOBS = :OLD_SEQOBS')
    Left = 368
    Top = 336
    object CadE120ObsCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120OBS"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120ObsCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120OBS"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120ObsNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120OBS"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120ObsSEQOBS: TIntegerField
      FieldName = 'SEQOBS'
      Origin = '"E120OBS"."SEQOBS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120ObsNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120OBS"."NUMPED"'
    end
    object CadE120ObsOBSPED: TIBStringField
      FieldName = 'OBSPED'
      Origin = '"E120OBS"."OBSPED"'
      Size = 250
    end
    object CadE120ObsSITOBS: TIBStringField
      FieldName = 'SITOBS'
      Origin = '"E120OBS"."SITOBS"'
      FixedChar = True
      Size = 1
    end
    object CadE120ObsOBSUSU: TIntegerField
      FieldName = 'OBSUSU'
      Origin = '"E120OBS"."OBSUSU"'
    end
    object CadE120ObsOBSDAT: TDateField
      FieldName = 'OBSDAT'
      Origin = '"E120OBS"."OBSDAT"'
    end
    object CadE120ObsCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120OBS"."CODREP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object ConsE120PedChegou: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    AfterScroll = ConsE120PedChegouAfterScroll
    SQL.Strings = (
      'select e120ped.*,e028cpg.descpg,'
      '       (select SUM(e120ipd.vlrbru) from e120ipd'
      '                             where'
      '                             e120ipd.codemp = e120ped.codemp and'
      '                             e120ipd.codfil = e120ped.codfil and'
      '                             e120ipd.numcon = e120ped.numcon and'
      
        '                             e120ipd.codrep = e120ped.codrep ) a' +
        's TotBru'
      '                    from e120ped'
      'left join e028cpg on e028cpg.codemp = e120ped.codemp and'
      '                      e028cpg.codcpg = e120ped.codcpg and'
      '                      e028cpg.codusu = e120ped.usuger'
      '                       where'
      '                       e120ped.sitped in (1,3,9)'
      '                       order by e120ped.codrep, e120ped.numcon')
    Left = 88
    Top = 448
    object ConsE120PedChegouCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120PED"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120PedChegouCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120PED"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120PedChegouNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120PED"."NUMPED"'
    end
    object ConsE120PedChegouNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120PED"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120PedChegouCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"E120PED"."CODCLI"'
    end
    object ConsE120PedChegouTNSPRO: TIBStringField
      FieldName = 'TNSPRO'
      Origin = '"E120PED"."TNSPRO"'
      Size = 5
    end
    object ConsE120PedChegouDATEMI: TDateField
      FieldName = 'DATEMI'
      Origin = '"E120PED"."DATEMI"'
    end
    object ConsE120PedChegouCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120PED"."CODREP"'
    end
    object ConsE120PedChegouCODCPG: TIBStringField
      FieldName = 'CODCPG'
      Origin = '"E120PED"."CODCPG"'
      Size = 6
    end
    object ConsE120PedChegouSITPED: TIBStringField
      FieldName = 'SITPED'
      Origin = '"E120PED"."SITPED"'
      FixedChar = True
      Size = 1
    end
    object ConsE120PedChegouUSUGER: TIntegerField
      FieldName = 'USUGER'
      Origin = '"E120PED"."USUGER"'
    end
    object ConsE120PedChegouDATGER: TDateField
      FieldName = 'DATGER'
      Origin = '"E120PED"."DATGER"'
    end
    object ConsE120PedChegouPEDENV: TIBStringField
      FieldName = 'PEDENV'
      Origin = '"E120PED"."PEDENV"'
      FixedChar = True
      Size = 1
    end
    object ConsE120PedChegouDATENV: TDateField
      FieldName = 'DATENV'
      Origin = '"E120PED"."DATENV"'
    end
    object ConsE120PedChegouPEDCON: TIBStringField
      FieldName = 'PEDCON'
      Origin = '"E120PED"."PEDCON"'
      FixedChar = True
      Size = 1
    end
    object ConsE120PedChegouDATCON: TDateField
      FieldName = 'DATCON'
      Origin = '"E120PED"."DATCON"'
    end
    object ConsE120PedChegouUSUCON: TIntegerField
      FieldName = 'USUCON'
      Origin = '"E120PED"."USUCON"'
    end
    object ConsE120PedChegouDESCPG: TIBStringField
      FieldName = 'DESCPG'
      Origin = '"E028CPG"."DESCPG"'
      Size = 50
    end
    object ConsE120PedChegouTOTBRU: TFloatField
      FieldName = 'TOTBRU'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsE120PedChegouSITCON: TIBStringField
      FieldName = 'SITCON'
      Origin = '"E120PED"."SITCON"'
      FixedChar = True
      Size = 1
    end
    object ConsE120PedChegouImagem: TStringField
      FieldKind = fkCalculated
      FieldName = 'Imagem'
      Size = 30
      Calculated = True
    end
  end
  object ConsE120ObsChegou: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    SQL.Strings = (
      'select e120obs.* from e120obs'
      '                          where'
      '                          e120obs.codemp = :codemp and'
      '                          e120obs.codfil = :codfil and'
      '                          e120obs.numcon = :numcon and'
      '                          e120obs.codrep = :codrep')
    Left = 184
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codfil'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numcon'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codrep'
        ParamType = ptUnknown
      end>
    object ConsE120ObsChegouCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120OBS"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120ObsChegouCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120OBS"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120ObsChegouNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120OBS"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120ObsChegouCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120OBS"."CODREP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120ObsChegouSEQOBS: TIntegerField
      FieldName = 'SEQOBS'
      Origin = '"E120OBS"."SEQOBS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120ObsChegouNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120OBS"."NUMPED"'
    end
    object ConsE120ObsChegouOBSPED: TIBStringField
      FieldName = 'OBSPED'
      Origin = '"E120OBS"."OBSPED"'
      Size = 250
    end
    object ConsE120ObsChegouSITOBS: TIBStringField
      FieldName = 'SITOBS'
      Origin = '"E120OBS"."SITOBS"'
      FixedChar = True
      Size = 1
    end
    object ConsE120ObsChegouOBSUSU: TIntegerField
      FieldName = 'OBSUSU'
      Origin = '"E120OBS"."OBSUSU"'
    end
    object ConsE120ObsChegouOBSDAT: TDateField
      FieldName = 'OBSDAT'
      Origin = '"E120OBS"."OBSDAT"'
    end
  end
  object ConsE120Ipd: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    AfterScroll = ConsE120IpdAfterScroll
    SQL.Strings = (
      'select e120ipd.*,e075pro.despro'
      '                       from e120ipd'
      'inner join e075pro on e075pro.codemp = e120ipd.codemp and'
      '                      e075pro.codpro = e120ipd.codpro'
      '                      where'
      '                      e120ipd.codemp = :codemp and'
      '                      e120ipd.codfil = :codfil and'
      '                      e120ipd.numcon = :numcon and'
      '                      e120ipd.codrep = :codrep'
      '                     order by e120ipd.seqipd')
    Left = 40
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codfil'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numcon'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codrep'
        ParamType = ptUnknown
      end>
    object ConsE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120IPD"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120IPD"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120IpdNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120IPD"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120IpdCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120IPD"."CODREP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      Origin = '"E120IPD"."SEQIPD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120IPD"."NUMPED"'
    end
    object ConsE120IpdTNSPRO: TIBStringField
      FieldName = 'TNSPRO'
      Origin = '"E120IPD"."TNSPRO"'
      Size = 5
    end
    object ConsE120IpdCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E120IPD"."CODPRO"'
      Size = 14
    end
    object ConsE120IpdCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"E120IPD"."CODDER"'
      Size = 7
    end
    object ConsE120IpdCODFAM: TIBStringField
      FieldName = 'CODFAM'
      Origin = '"E120IPD"."CODFAM"'
      Size = 6
    end
    object ConsE120IpdCODDEP: TIBStringField
      FieldName = 'CODDEP'
      Origin = '"E120IPD"."CODDEP"'
      Size = 10
    end
    object ConsE120IpdQTDPED: TIntegerField
      FieldName = 'QTDPED'
      Origin = '"E120IPD"."QTDPED"'
    end
    object ConsE120IpdCODTPR: TIBStringField
      FieldName = 'CODTPR'
      Origin = '"E120IPD"."CODTPR"'
      Size = 4
    end
    object ConsE120IpdPREUNI: TFloatField
      FieldName = 'PREUNI'
      Origin = '"E120IPD"."PREUNI"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsE120IpdSITIPD: TIBStringField
      FieldName = 'SITIPD'
      Origin = '"E120IPD"."SITIPD"'
      FixedChar = True
      Size = 1
    end
    object ConsE120IpdTOTDESC: TFloatField
      FieldName = 'TOTDESC'
      Origin = '"E120IPD"."TOTDESC"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsE120IpdVLRORI: TFloatField
      FieldName = 'VLRORI'
      Origin = '"E120IPD"."VLRORI"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsE120IpdVLRBRU: TFloatField
      FieldName = 'VLRBRU'
      Origin = '"E120IPD"."VLRBRU"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsE120IpdDESPRO: TIBStringField
      FieldName = 'DESPRO'
      Origin = '"E075PRO"."DESPRO"'
      Size = 50
    end
    object ConsE120IpdDESCAPR: TIBStringField
      FieldName = 'DESCAPR'
      Origin = '"E120IPD"."DESCAPR"'
      FixedChar = True
      Size = 1
    end
  end
  object ConsUsu120Ipd: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    SQL.Strings = (
      'select usu120ipd.* from usu120ipd'
      '                        where'
      '                        usu120ipd.codemp = :codemp and'
      '                        usu120ipd.codfil = :codfil and'
      '                        usu120ipd.numcon = :numcon and'
      '                        usu120ipd.codrep = :codrep and'
      '                        usu120ipd.seqipd = :seqipd'
      '                       order by usu120ipd.seqite')
    Left = 256
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'CODFIL'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'NUMCON'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'CODREP'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'SEQIPD'
        ParamType = ptUnknown
        Size = 4
      end>
    object ConsUsu120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"USU120IPD"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsUsu120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"USU120IPD"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsUsu120IpdNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"USU120IPD"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsUsu120IpdCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"USU120IPD"."CODREP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsUsu120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      Origin = '"USU120IPD"."SEQIPD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsUsu120IpdSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = '"USU120IPD"."SEQITE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsUsu120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"USU120IPD"."NUMPED"'
    end
    object ConsUsu120IpdQTDCOR: TIntegerField
      FieldName = 'QTDCOR'
      Origin = '"USU120IPD"."QTDCOR"'
    end
    object ConsUsu120IpdQTDABE: TIntegerField
      FieldName = 'QTDABE'
      Origin = '"USU120IPD"."QTDABE"'
    end
    object ConsUsu120IpdQTDCAN: TIntegerField
      FieldName = 'QTDCAN'
      Origin = '"USU120IPD"."QTDCAN"'
    end
    object ConsUsu120IpdTIPCMB: TIntegerField
      FieldName = 'TIPCMB'
      Origin = '"USU120IPD"."TIPCMB"'
    end
    object ConsUsu120IpdCOR001: TIBStringField
      FieldName = 'COR001'
      Origin = '"USU120IPD"."COR001"'
      Size = 14
    end
    object ConsUsu120IpdCOR002: TIBStringField
      FieldName = 'COR002'
      Origin = '"USU120IPD"."COR002"'
      Size = 14
    end
    object ConsUsu120IpdCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"USU120IPD"."CODPRO"'
      Size = 14
    end
    object ConsUsu120IpdCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"USU120IPD"."CODDER"'
      Size = 7
    end
    object ConsUsu120IpdTECTRA: TIBStringField
      FieldName = 'TECTRA'
      Origin = '"USU120IPD"."TECTRA"'
      FixedChar = True
      Size = 1
    end
    object ConsUsu120IpdPRECAR: TIntegerField
      FieldName = 'PRECAR'
      Origin = '"USU120IPD"."PRECAR"'
    end
  end
  object CadE075LLDC: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from e075lldc'
      'where'
      '  DATMOV = :OLD_DATMOV and'
      '  NUMMOV = :OLD_NUMMOV')
    InsertSQL.Strings = (
      'insert into e075lldc'
      '  (CODDER, CODEMP, CODPRO, CODTEC, DATMOV, NUMMOV, TIPMOV)'
      'values'
      
        '  (:CODDER, :CODEMP, :CODPRO, :CODTEC, :DATMOV, :NUMMOV, :TIPMOV' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  NUMMOV,'
      '  CODEMP,'
      '  CODPRO,'
      '  CODDER,'
      '  CODTEC,'
      '  DATMOV,'
      '  TIPMOV'
      'from e075lldc '
      'where'
      '  DATMOV = :DATMOV and'
      '  NUMMOV = :NUMMOV')
    SelectSQL.Strings = (
      'select * from e075lldc where nummov = :nummov and'
      '                             codpro = :codpro')
    ModifySQL.Strings = (
      'update e075lldc'
      'set'
      '  CODDER = :CODDER,'
      '  CODEMP = :CODEMP,'
      '  CODPRO = :CODPRO,'
      '  CODTEC = :CODTEC,'
      '  DATMOV = :DATMOV,'
      '  NUMMOV = :NUMMOV,'
      '  TIPMOV = :TIPMOV'
      'where'
      '  DATMOV = :OLD_DATMOV and'
      '  NUMMOV = :OLD_NUMMOV')
    Left = 320
    Top = 456
    object CadE075LLDCNUMMOV: TIntegerField
      FieldName = 'NUMMOV'
      Origin = '"E075LLDC"."NUMMOV"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE075LLDCCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E075LLDC"."CODEMP"'
      Required = True
    end
    object CadE075LLDCCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E075LLDC"."CODPRO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE075LLDCCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"E075LLDC"."CODDER"'
      Required = True
      Size = 10
    end
    object CadE075LLDCCODTEC: TIBStringField
      FieldName = 'CODTEC'
      Origin = '"E075LLDC"."CODTEC"'
      Required = True
    end
    object CadE075LLDCDATMOV: TDateField
      FieldName = 'DATMOV'
      Origin = '"E075LLDC"."DATMOV"'
    end
    object CadE075LLDCTIPMOV: TIBStringField
      FieldName = 'TIPMOV'
      Origin = '"E075LLDC"."TIPMOV"'
      FixedChar = True
      Size = 1
    end
  end
  object ConsSql: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    Left = 392
    Top = 464
  end
  object CadE100Sql: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from e100sql'
      'where'
      '  CODUSU = :OLD_CODUSU and'
      '  NUMCON = :OLD_NUMCON')
    InsertSQL.Strings = (
      'insert into e100sql'
      '  (CODUSU, COMSQL, DATGER, NUMCON)'
      'values'
      '  (:CODUSU, :COMSQL, :DATGER, :NUMCON)')
    RefreshSQL.Strings = (
      'Select '
      '  CODUSU,'
      '  NUMCON,'
      '  DATGER,'
      '  COMSQL'
      'from e100sql '
      'where'
      '  CODUSU = :CODUSU and'
      '  NUMCON = :NUMCON')
    SelectSQL.Strings = (
      'select * from e100sql where'
      '                           codusu = :codusu and'
      '                           numcon = :numcon')
    ModifySQL.Strings = (
      'update e100sql'
      'set'
      '  CODUSU = :CODUSU,'
      '  COMSQL = :COMSQL,'
      '  DATGER = :DATGER,'
      '  NUMCON = :NUMCON'
      'where'
      '  CODUSU = :OLD_CODUSU and'
      '  NUMCON = :OLD_NUMCON')
    Left = 88
    Top = 552
    object CadE100SqlCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E100SQL"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE100SqlNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E100SQL"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE100SqlDATGER: TDateField
      FieldName = 'DATGER'
      Origin = '"E100SQL"."DATGER"'
    end
    object CadE100SqlCOMSQL: TIBStringField
      FieldName = 'COMSQL'
      Origin = '"E100SQL"."COMSQL"'
      Size = 10000
    end
  end
  object ConsE100Sql: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    AfterScroll = ConsE100SqlAfterScroll
    SQL.Strings = (
      'select * from e100sql where'
      '                           codusu = :codusu'
      '                           order by numcon desc'
      '                           ')
    Left = 184
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codusu'
        ParamType = ptUnknown
      end>
    object ConsE100SqlCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E100SQL"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE100SqlNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E100SQL"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE100SqlDATGER: TDateField
      FieldName = 'DATGER'
      Origin = '"E100SQL"."DATGER"'
    end
    object ConsE100SqlCOMSQL: TIBStringField
      FieldName = 'COMSQL'
      Origin = '"E100SQL"."COMSQL"'
      Size = 10000
    end
  end
  object IBDBancoSysRep: TIBDatabase
    DatabaseName = 'C:\SysRep\banco\BANCO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = IBTransacaoSysRep
    Left = 280
    Top = 32
  end
  object IBTransacaoSysRep: TIBTransaction
    DefaultDatabase = IBDBancoSysRep
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 288
    Top = 80
  end
  object SqlSysRep: TIBQuery
    Database = IBDBancoSysRep
    Transaction = IBTransacaoSysRep
    Left = 288
    Top = 128
  end
  object CadE120Ped_Ocu: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from E120PED_OCU'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON')
    InsertSQL.Strings = (
      'insert into E120PED_OCU'
      
        '  (CODCLI, CODCPG, CODEMP, CODFIL, CODREP, DATCON, DATEMI, DATEN' +
        'V, DATGER, '
      
        '   NUMCON, NUMPED, PEDCON, PEDENV, SITCON, SITPED, TNSPRO, USUCO' +
        'N, USUGER)'
      'values'
      
        '  (:CODCLI, :CODCPG, :CODEMP, :CODFIL, :CODREP, :DATCON, :DATEMI' +
        ', :DATENV, '
      
        '   :DATGER, :NUMCON, :NUMPED, :PEDCON, :PEDENV, :SITCON, :SITPED' +
        ', :TNSPRO, '
      '   :USUCON, :USUGER)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMCON,'
      '  CODREP,'
      '  NUMPED,'
      '  CODCLI,'
      '  TNSPRO,'
      '  DATEMI,'
      '  CODCPG,'
      '  SITPED,'
      '  USUGER,'
      '  DATGER,'
      '  PEDENV,'
      '  DATENV,'
      '  PEDCON,'
      '  DATCON,'
      '  USUCON,'
      '  SITCON'
      'from E120PED_OCU '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL and'
      '  CODREP = :CODREP and'
      '  NUMCON = :NUMCON')
    SelectSQL.Strings = (
      'select * from E120PED_OCU where codemp = :codemp and'
      
        '                                                codfil = :codfil' +
        ' and'
      
        '                                                numcon = :numcon' +
        ' and'
      '                                               codrep = :codrep')
    ModifySQL.Strings = (
      'update E120PED_OCU'
      'set'
      '  CODCLI = :CODCLI,'
      '  CODCPG = :CODCPG,'
      '  CODEMP = :CODEMP,'
      '  CODFIL = :CODFIL,'
      '  CODREP = :CODREP,'
      '  DATCON = :DATCON,'
      '  DATEMI = :DATEMI,'
      '  DATENV = :DATENV,'
      '  DATGER = :DATGER,'
      '  NUMCON = :NUMCON,'
      '  NUMPED = :NUMPED,'
      '  PEDCON = :PEDCON,'
      '  PEDENV = :PEDENV,'
      '  SITCON = :SITCON,'
      '  SITPED = :SITPED,'
      '  TNSPRO = :TNSPRO,'
      '  USUCON = :USUCON,'
      '  USUGER = :USUGER'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON')
    Left = 48
    Top = 392
    object CadE120Ped_OcuCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120PED_OCU"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120Ped_OcuCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120PED_OCU"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120Ped_OcuNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120PED_OCU"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120Ped_OcuCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120PED_OCU"."CODREP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120Ped_OcuNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120PED_OCU"."NUMPED"'
    end
    object CadE120Ped_OcuCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"E120PED_OCU"."CODCLI"'
    end
    object CadE120Ped_OcuTNSPRO: TIBStringField
      FieldName = 'TNSPRO'
      Origin = '"E120PED_OCU"."TNSPRO"'
      Size = 5
    end
    object CadE120Ped_OcuDATEMI: TDateField
      FieldName = 'DATEMI'
      Origin = '"E120PED_OCU"."DATEMI"'
    end
    object CadE120Ped_OcuCODCPG: TIBStringField
      FieldName = 'CODCPG'
      Origin = '"E120PED_OCU"."CODCPG"'
      Size = 6
    end
    object CadE120Ped_OcuSITPED: TIBStringField
      FieldName = 'SITPED'
      Origin = '"E120PED_OCU"."SITPED"'
      FixedChar = True
      Size = 1
    end
    object CadE120Ped_OcuUSUGER: TIntegerField
      FieldName = 'USUGER'
      Origin = '"E120PED_OCU"."USUGER"'
    end
    object CadE120Ped_OcuDATGER: TDateField
      FieldName = 'DATGER'
      Origin = '"E120PED_OCU"."DATGER"'
    end
    object CadE120Ped_OcuPEDENV: TIBStringField
      FieldName = 'PEDENV'
      Origin = '"E120PED_OCU"."PEDENV"'
      FixedChar = True
      Size = 1
    end
    object CadE120Ped_OcuDATENV: TDateField
      FieldName = 'DATENV'
      Origin = '"E120PED_OCU"."DATENV"'
    end
    object CadE120Ped_OcuPEDCON: TIBStringField
      FieldName = 'PEDCON'
      Origin = '"E120PED_OCU"."PEDCON"'
      FixedChar = True
      Size = 1
    end
    object CadE120Ped_OcuDATCON: TDateField
      FieldName = 'DATCON'
      Origin = '"E120PED_OCU"."DATCON"'
    end
    object CadE120Ped_OcuUSUCON: TIntegerField
      FieldName = 'USUCON'
      Origin = '"E120PED_OCU"."USUCON"'
    end
    object CadE120Ped_OcuSITCON: TIBStringField
      FieldName = 'SITCON'
      Origin = '"E120PED_OCU"."SITCON"'
      FixedChar = True
      Size = 1
    end
  end
  object CadE120Ipd_Ocu: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from E120IPD_OCU'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD')
    InsertSQL.Strings = (
      'insert into E120IPD_OCU'
      
        '  (CODDEP, CODDER, CODEMP, CODFAM, CODFIL, CODPRO, CODREP, CODTP' +
        'R, NUMCON, '
      
        '   NUMPED, PREUNI, QTDPED, SEQIPD, SITIPD, TNSPRO, TOTDESC, VLRB' +
        'RU, VLRORI)'
      'values'
      
        '  (:CODDEP, :CODDER, :CODEMP, :CODFAM, :CODFIL, :CODPRO, :CODREP' +
        ', :CODTPR, '
      
        '   :NUMCON, :NUMPED, :PREUNI, :QTDPED, :SEQIPD, :SITIPD, :TNSPRO' +
        ', :TOTDESC, '
      '   :VLRBRU, :VLRORI)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMCON,'
      '  CODREP,'
      '  SEQIPD,'
      '  NUMPED,'
      '  TNSPRO,'
      '  CODPRO,'
      '  CODDER,'
      '  CODFAM,'
      '  CODDEP,'
      '  QTDPED,'
      '  CODTPR,'
      '  PREUNI,'
      '  SITIPD,'
      '  TOTDESC,'
      '  VLRORI,'
      '  VLRBRU'
      'from E120IPD_OCU '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL and'
      '  CODREP = :CODREP and'
      '  NUMCON = :NUMCON and'
      '  SEQIPD = :SEQIPD')
    SelectSQL.Strings = (
      'select * from E120IPD_OCU where'
      '                                    codemp = :codemp and'
      '                                    codfil = :codfil and'
      '                                    numcon = :numcon and'
      '                                    seqipd = :seqipd and'
      '                                   codrep = :codrep')
    ModifySQL.Strings = (
      'update E120IPD_OCU'
      'set'
      '  CODDEP = :CODDEP,'
      '  CODDER = :CODDER,'
      '  CODEMP = :CODEMP,'
      '  CODFAM = :CODFAM,'
      '  CODFIL = :CODFIL,'
      '  CODPRO = :CODPRO,'
      '  CODREP = :CODREP,'
      '  CODTPR = :CODTPR,'
      '  NUMCON = :NUMCON,'
      '  NUMPED = :NUMPED,'
      '  PREUNI = :PREUNI,'
      '  QTDPED = :QTDPED,'
      '  SEQIPD = :SEQIPD,'
      '  SITIPD = :SITIPD,'
      '  TNSPRO = :TNSPRO,'
      '  TOTDESC = :TOTDESC,'
      '  VLRBRU = :VLRBRU,'
      '  VLRORI = :VLRORI'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD')
    Left = 160
    Top = 392
    object CadE120Ipd_OcuCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120IPD_OCU"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120Ipd_OcuCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120IPD_OCU"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120Ipd_OcuNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120IPD_OCU"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120Ipd_OcuCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120IPD_OCU"."CODREP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120Ipd_OcuSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      Origin = '"E120IPD_OCU"."SEQIPD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120Ipd_OcuNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120IPD_OCU"."NUMPED"'
    end
    object CadE120Ipd_OcuTNSPRO: TIBStringField
      FieldName = 'TNSPRO'
      Origin = '"E120IPD_OCU"."TNSPRO"'
      Size = 5
    end
    object CadE120Ipd_OcuCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E120IPD_OCU"."CODPRO"'
      Size = 14
    end
    object CadE120Ipd_OcuCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"E120IPD_OCU"."CODDER"'
      Size = 7
    end
    object CadE120Ipd_OcuCODFAM: TIBStringField
      FieldName = 'CODFAM'
      Origin = '"E120IPD_OCU"."CODFAM"'
      Size = 6
    end
    object CadE120Ipd_OcuCODDEP: TIBStringField
      FieldName = 'CODDEP'
      Origin = '"E120IPD_OCU"."CODDEP"'
      Size = 10
    end
    object CadE120Ipd_OcuQTDPED: TIntegerField
      FieldName = 'QTDPED'
      Origin = '"E120IPD_OCU"."QTDPED"'
    end
    object CadE120Ipd_OcuCODTPR: TIBStringField
      FieldName = 'CODTPR'
      Origin = '"E120IPD_OCU"."CODTPR"'
      Size = 4
    end
    object CadE120Ipd_OcuPREUNI: TFloatField
      FieldName = 'PREUNI'
      Origin = '"E120IPD_OCU"."PREUNI"'
    end
    object CadE120Ipd_OcuSITIPD: TIBStringField
      FieldName = 'SITIPD'
      Origin = '"E120IPD_OCU"."SITIPD"'
      FixedChar = True
      Size = 1
    end
    object CadE120Ipd_OcuTOTDESC: TFloatField
      FieldName = 'TOTDESC'
      Origin = '"E120IPD_OCU"."TOTDESC"'
    end
    object CadE120Ipd_OcuVLRORI: TFloatField
      FieldName = 'VLRORI'
      Origin = '"E120IPD_OCU"."VLRORI"'
    end
    object CadE120Ipd_OcuVLRBRU: TFloatField
      FieldName = 'VLRBRU'
      Origin = '"E120IPD_OCU"."VLRBRU"'
    end
  end
  object CadUsu120Ipd_Ocu: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from USU120IPD_OCU'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD and'
      '  SEQITE = :OLD_SEQITE')
    InsertSQL.Strings = (
      'insert into USU120IPD_OCU'
      
        '  (CODDER, CODEMP, CODFIL, CODPRO, CODREP, COR001, COR002, NUMCO' +
        'N, NUMPED, '
      
        '   PRECAR, QTDABE, QTDCAN, QTDCOR, SEQIPD, SEQITE, TECTRA, TIPCM' +
        'B)'
      'values'
      
        '  (:CODDER, :CODEMP, :CODFIL, :CODPRO, :CODREP, :COR001, :COR002' +
        ', :NUMCON, '
      
        '   :NUMPED, :PRECAR, :QTDABE, :QTDCAN, :QTDCOR, :SEQIPD, :SEQITE' +
        ', :TECTRA, '
      '   :TIPCMB)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMCON,'
      '  CODREP,'
      '  SEQIPD,'
      '  SEQITE,'
      '  NUMPED,'
      '  QTDCOR,'
      '  QTDABE,'
      '  QTDCAN,'
      '  TIPCMB,'
      '  COR001,'
      '  COR002,'
      '  CODPRO,'
      '  CODDER,'
      '  TECTRA,'
      '  PRECAR'
      'from USU120IPD_OCU '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL and'
      '  CODREP = :CODREP and'
      '  NUMCON = :NUMCON and'
      '  SEQIPD = :SEQIPD and'
      '  SEQITE = :SEQITE')
    SelectSQL.Strings = (
      'select * from USU120IPD_OCU where codemp = :codemp and'
      
        '                                                    codfil = :co' +
        'dfil and'
      
        '                                                    numcon = :nu' +
        'mcon and'
      
        '                                                    seqipd = :se' +
        'qipd and'
      
        '                                                    seqite = :se' +
        'qite and'
      
        '                                                    codrep = :co' +
        'drep')
    ModifySQL.Strings = (
      'update USU120IPD_OCU'
      'set'
      '  CODDER = :CODDER,'
      '  CODEMP = :CODEMP,'
      '  CODFIL = :CODFIL,'
      '  CODPRO = :CODPRO,'
      '  CODREP = :CODREP,'
      '  COR001 = :COR001,'
      '  COR002 = :COR002,'
      '  NUMCON = :NUMCON,'
      '  NUMPED = :NUMPED,'
      '  PRECAR = :PRECAR,'
      '  QTDABE = :QTDABE,'
      '  QTDCAN = :QTDCAN,'
      '  QTDCOR = :QTDCOR,'
      '  SEQIPD = :SEQIPD,'
      '  SEQITE = :SEQITE,'
      '  TECTRA = :TECTRA,'
      '  TIPCMB = :TIPCMB'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD and'
      '  SEQITE = :OLD_SEQITE')
    Left = 264
    Top = 392
    object CadUsu120Ipd_OcuCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"USU120IPD_OCU"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadUsu120Ipd_OcuCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"USU120IPD_OCU"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadUsu120Ipd_OcuNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"USU120IPD_OCU"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadUsu120Ipd_OcuCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"USU120IPD_OCU"."CODREP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadUsu120Ipd_OcuSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      Origin = '"USU120IPD_OCU"."SEQIPD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadUsu120Ipd_OcuSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = '"USU120IPD_OCU"."SEQITE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadUsu120Ipd_OcuNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"USU120IPD_OCU"."NUMPED"'
    end
    object CadUsu120Ipd_OcuQTDCOR: TIntegerField
      FieldName = 'QTDCOR'
      Origin = '"USU120IPD_OCU"."QTDCOR"'
    end
    object CadUsu120Ipd_OcuQTDABE: TIntegerField
      FieldName = 'QTDABE'
      Origin = '"USU120IPD_OCU"."QTDABE"'
    end
    object CadUsu120Ipd_OcuQTDCAN: TIntegerField
      FieldName = 'QTDCAN'
      Origin = '"USU120IPD_OCU"."QTDCAN"'
    end
    object CadUsu120Ipd_OcuTIPCMB: TIntegerField
      FieldName = 'TIPCMB'
      Origin = '"USU120IPD_OCU"."TIPCMB"'
    end
    object CadUsu120Ipd_OcuCOR001: TIBStringField
      FieldName = 'COR001'
      Origin = '"USU120IPD_OCU"."COR001"'
      Size = 14
    end
    object CadUsu120Ipd_OcuCOR002: TIBStringField
      FieldName = 'COR002'
      Origin = '"USU120IPD_OCU"."COR002"'
      Size = 14
    end
    object CadUsu120Ipd_OcuCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"USU120IPD_OCU"."CODPRO"'
      Size = 14
    end
    object CadUsu120Ipd_OcuCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"USU120IPD_OCU"."CODDER"'
      Size = 7
    end
    object CadUsu120Ipd_OcuTECTRA: TIBStringField
      FieldName = 'TECTRA'
      Origin = '"USU120IPD_OCU"."TECTRA"'
      FixedChar = True
      Size = 1
    end
    object CadUsu120Ipd_OcuPRECAR: TIntegerField
      FieldName = 'PRECAR'
      Origin = '"USU120IPD_OCU"."PRECAR"'
    end
  end
  object CadE120Obs_Ocu: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from e120obs_OCU'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQOBS = :OLD_SEQOBS')
    InsertSQL.Strings = (
      'insert into e120obs_OCU'
      
        '  (CODEMP, CODFIL, CODREP, NUMCON, NUMPED, OBSDAT, OBSPED, OBSUS' +
        'U, SEQOBS, '
      '   SITOBS)'
      'values'
      
        '  (:CODEMP, :CODFIL, :CODREP, :NUMCON, :NUMPED, :OBSDAT, :OBSPED' +
        ', :OBSUSU, '
      '   :SEQOBS, :SITOBS)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMCON,'
      '  CODREP,'
      '  SEQOBS,'
      '  NUMPED,'
      '  OBSPED,'
      '  SITOBS,'
      '  OBSUSU,'
      '  OBSDAT'
      'from e120obs_OCU '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL and'
      '  CODREP = :CODREP and'
      '  NUMCON = :NUMCON and'
      '  SEQOBS = :SEQOBS')
    SelectSQL.Strings = (
      'select * from e120obs_OCU where'
      '                       codemp = :codemp and'
      '                       codfil = :codfil and'
      '                       numcon = :numcon and'
      '                       seqobs = :seqobs and'
      '                       codrep = :codrep'
      '                       ')
    ModifySQL.Strings = (
      'update e120obs_OCU'
      'set'
      '  CODEMP = :CODEMP,'
      '  CODFIL = :CODFIL,'
      '  CODREP = :CODREP,'
      '  NUMCON = :NUMCON,'
      '  NUMPED = :NUMPED,'
      '  OBSDAT = :OBSDAT,'
      '  OBSPED = :OBSPED,'
      '  OBSUSU = :OBSUSU,'
      '  SEQOBS = :SEQOBS,'
      '  SITOBS = :SITOBS'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODREP = :OLD_CODREP and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQOBS = :OLD_SEQOBS')
    Left = 376
    Top = 392
    object CadE120Obs_OcuCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120OBS_OCU"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120Obs_OcuCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120OBS_OCU"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120Obs_OcuNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120OBS_OCU"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120Obs_OcuCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120OBS_OCU"."CODREP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120Obs_OcuSEQOBS: TIntegerField
      FieldName = 'SEQOBS'
      Origin = '"E120OBS_OCU"."SEQOBS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE120Obs_OcuNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120OBS_OCU"."NUMPED"'
    end
    object CadE120Obs_OcuOBSPED: TIBStringField
      FieldName = 'OBSPED'
      Origin = '"E120OBS_OCU"."OBSPED"'
      Size = 250
    end
    object CadE120Obs_OcuSITOBS: TIBStringField
      FieldName = 'SITOBS'
      Origin = '"E120OBS_OCU"."SITOBS"'
      FixedChar = True
      Size = 1
    end
    object CadE120Obs_OcuOBSUSU: TIntegerField
      FieldName = 'OBSUSU'
      Origin = '"E120OBS_OCU"."OBSUSU"'
    end
    object CadE120Obs_OcuOBSDAT: TDateField
      FieldName = 'OBSDAT'
      Origin = '"E120OBS_OCU"."OBSDAT"'
    end
  end
  object BancoTransLider: TIBDatabase
    DatabaseName = '192.168.10.44:C:\TransLider\Banco\BANCO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = TransacaoTransLider
    Left = 448
    Top = 40
  end
  object TransacaoTransLider: TIBTransaction
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 448
    Top = 96
  end
  object ConsEntradas_Saidas: TIBQuery
    Database = BancoTransLider
    Transaction = TransacaoTransLider
    Left = 448
    Top = 144
  end
  object BancoSapLider: TIBDatabase
    DatabaseName = '192.168.10.44:C:\DelphiSapiens\SapiensDelphi\banco\SAPLIDER.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = IBTBancoSapLider
    Left = 808
    Top = 24
  end
  object IBTBancoSapLider: TIBTransaction
    DefaultDatabase = BancoSapLider
    Left = 808
    Top = 80
  end
  object CadApelidos_Prod: TIBDataSet
    Database = BancoSapLider
    Transaction = IBTBancoSapLider
    DeleteSQL.Strings = (
      'delete from APELIDOS_PROD'
      'where'
      '  IDAPE = :OLD_IDAPE')
    InsertSQL.Strings = (
      'insert into APELIDOS_PROD'
      '  (CODPROSAP, DESAPE, DESPROSAP, IDAPE, OBSAPE)'
      'values'
      '  (:CODPROSAP, :DESAPE, :DESPROSAP, :IDAPE, :OBSAPE)')
    RefreshSQL.Strings = (
      'Select '
      '  IDAPE,'
      '  CODPROSAP,'
      '  DESPROSAP,'
      '  DESAPE,'
      '  OBSAPE'
      'from APELIDOS_PROD '
      'where'
      '  IDAPE = :IDAPE')
    SelectSQL.Strings = (
      'select * from APELIDOS_PROD where idape = :idape')
    ModifySQL.Strings = (
      'update APELIDOS_PROD'
      'set'
      '  CODPROSAP = :CODPROSAP,'
      '  DESAPE = :DESAPE,'
      '  DESPROSAP = :DESPROSAP,'
      '  IDAPE = :IDAPE,'
      '  OBSAPE = :OBSAPE'
      'where'
      '  IDAPE = :OLD_IDAPE')
    Left = 808
    Top = 152
    object CadApelidos_ProdIDAPE: TIntegerField
      FieldName = 'IDAPE'
      Origin = '"APELIDOS_PROD"."IDAPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadApelidos_ProdCODPROSAP: TIBStringField
      FieldName = 'CODPROSAP'
      Origin = '"APELIDOS_PROD"."CODPROSAP"'
      Size = 14
    end
    object CadApelidos_ProdDESPROSAP: TIBStringField
      FieldName = 'DESPROSAP'
      Origin = '"APELIDOS_PROD"."DESPROSAP"'
      Size = 100
    end
    object CadApelidos_ProdDESAPE: TIBStringField
      FieldName = 'DESAPE'
      Origin = '"APELIDOS_PROD"."DESAPE"'
      Size = 100
    end
    object CadApelidos_ProdOBSAPE: TIBStringField
      FieldName = 'OBSAPE'
      Origin = '"APELIDOS_PROD"."OBSAPE"'
      Size = 200
    end
  end
  object ConsSqlSapLider: TIBQuery
    Database = BancoSapLider
    Transaction = IBTBancoSapLider
    Left = 808
    Top = 200
  end
  object ConsApelidos_Prod: TIBQuery
    Database = BancoSapLider
    Transaction = IBTBancoSapLider
    SQL.Strings = (
      'SELECT apelidos_prod.*'
      'FROM apelidos_prod'
      'ORDER BY apelidos_prod.desprosap')
    Left = 808
    Top = 256
    object ConsApelidos_ProdIDAPE: TIntegerField
      FieldName = 'IDAPE'
      Origin = '"APELIDOS_PROD"."IDAPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsApelidos_ProdCODPROSAP: TIBStringField
      FieldName = 'CODPROSAP'
      Origin = '"APELIDOS_PROD"."CODPROSAP"'
      Size = 14
    end
    object ConsApelidos_ProdDESPROSAP: TIBStringField
      FieldName = 'DESPROSAP'
      Origin = '"APELIDOS_PROD"."DESPROSAP"'
      Size = 100
    end
    object ConsApelidos_ProdDESAPE: TIBStringField
      FieldName = 'DESAPE'
      Origin = '"APELIDOS_PROD"."DESAPE"'
      Size = 100
    end
    object ConsApelidos_Prodimg: TStringField
      FieldKind = fkCalculated
      FieldName = 'img'
      Size = 10
      Calculated = True
    end
    object ConsApelidos_ProdOBSAPE: TIBStringField
      FieldName = 'OBSAPE'
      Origin = '"APELIDOS_PROD"."OBSAPE"'
      Size = 200
    end
  end
end
