object DmFire: TDmFire
  OldCreateOrder = False
  Height = 373
  Width = 652
  object IBDBanco: TIBDatabase
    DatabaseName = 
      '192.168.10.44:C:\DelphiSapiens\SapiensDelphi\ServerRep\BANCO\BAN' +
      'CO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
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
      'select * from E081ITP where codemp = :codemp and'
      
        '                                               codtpr = :codtpr ' +
        'and'
      '                                               codusu = :codusu')
    Left = 128
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codtpr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codusu'
        ParamType = ptUnknown
      end>
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
    object ConsE081ItpDESPRO: TIBStringField
      FieldName = 'DESPRO'
      Origin = '"E081ITP"."DESPRO"'
      Size = 100
    end
    object ConsE081ItpPREBAS: TFloatField
      FieldName = 'PREBAS'
      Origin = '"E081ITP"."PREBAS"'
    end
    object ConsE081ItpTOLMAI: TFloatField
      FieldName = 'TOLMAI'
      Origin = '"E081ITP"."TOLMAI"'
    end
    object ConsE081ItpTOLMEN: TFloatField
      FieldName = 'TOLMEN'
      Origin = '"E081ITP"."TOLMEN"'
    end
    object ConsE081ItpVLRMAI: TFloatField
      FieldName = 'VLRMAI'
      Origin = '"E081ITP"."VLRMAI"'
    end
    object ConsE081ItpVLRMEN: TFloatField
      FieldName = 'VLRMEN'
      Origin = '"E081ITP"."VLRMEN"'
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
  end
  object ConsE081Tab: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    SQL.Strings = (
      'select * from E081TAB where  codusu = :codusu            ')
    Left = 32
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codusu'
        ParamType = ptUnknown
      end>
    object ConsE081TabCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E081TAB"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE081TabCODTPR: TIBStringField
      FieldName = 'CODTPR'
      Origin = '"E081TAB"."CODTPR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object ConsE081TabCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E081TAB"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE081TabDESTPR: TIBStringField
      FieldName = 'DESTPR'
      Origin = '"E081TAB"."DESTPR"'
      Size = 30
    end
    object ConsE081TabSITTPR: TIBStringField
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
      '  NUMCON = :OLD_NUMCON')
    InsertSQL.Strings = (
      'insert into E120PED'
      
        '  (CODCLI, CODCPG, CODEMP, CODFIL, CODREP, DATCON, DATEMI, DATEN' +
        'V, DATGER, '
      
        '   NUMCON, NUMPED, PEDCON, PEDENV, SITPED, TNSPRO, USUCON, USUGE' +
        'R)'
      'values'
      
        '  (:CODCLI, :CODCPG, :CODEMP, :CODFIL, :CODREP, :DATCON, :DATEMI' +
        ', :DATENV, '
      
        '   :DATGER, :NUMCON, :NUMPED, :PEDCON, :PEDENV, :SITPED, :TNSPRO' +
        ', :USUCON, '
      '   :USUGER)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMPED,'
      '  NUMCON,'
      '  CODCLI,'
      '  TNSPRO,'
      '  DATEMI,'
      '  CODREP,'
      '  CODCPG,'
      '  SITPED,'
      '  USUGER,'
      '  DATGER,'
      '  PEDENV,'
      '  DATENV,'
      '  PEDCON,'
      '  DATCON,'
      '  USUCON'
      'from E120PED '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL and'
      '  NUMCON = :NUMCON')
    SelectSQL.Strings = (
      'select * from E120PED where codemp = :codemp and'
      
        '                                                codfil = :codfil' +
        ' and'
      '                                                numcon = :numcon')
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
      '  SITPED = :SITPED,'
      '  TNSPRO = :TNSPRO,'
      '  USUCON = :USUCON,'
      '  USUGER = :USUGER'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  NUMCON = :OLD_NUMCON')
    Left = 136
    Top = 256
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
  end
  object CadE120Ipd: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from E120IPD'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD')
    InsertSQL.Strings = (
      'insert into E120IPD'
      
        '  (CODDEP, CODDER, CODEMP, CODFAM, CODFIL, CODPRO, CODTPR, NUMCO' +
        'N, NUMPED, '
      '   PREUNI, QTDPED, SEQIPD, SITIPD, TNSPRO, TOTDESC, VLRORI)'
      'values'
      
        '  (:CODDEP, :CODDER, :CODEMP, :CODFAM, :CODFIL, :CODPRO, :CODTPR' +
        ', :NUMCON, '
      
        '   :NUMPED, :PREUNI, :QTDPED, :SEQIPD, :SITIPD, :TNSPRO, :TOTDES' +
        'C, :VLRORI)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMPED,'
      '  NUMCON,'
      '  SEQIPD,'
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
      '  VLRORI'
      'from E120IPD '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL and'
      '  NUMCON = :NUMCON and'
      '  SEQIPD = :SEQIPD')
    SelectSQL.Strings = (
      'select * from E120IPD where'
      '                                    codemp = :codemp and'
      '                                    codfil = :codfil and'
      '                                    numcon = :numcon and'
      '                                    seqipd = :seqipd')
    ModifySQL.Strings = (
      'update E120IPD'
      'set'
      '  CODDEP = :CODDEP,'
      '  CODDER = :CODDER,'
      '  CODEMP = :CODEMP,'
      '  CODFAM = :CODFAM,'
      '  CODFIL = :CODFIL,'
      '  CODPRO = :CODPRO,'
      '  CODTPR = :CODTPR,'
      '  NUMCON = :NUMCON,'
      '  NUMPED = :NUMPED,'
      '  PREUNI = :PREUNI,'
      '  QTDPED = :QTDPED,'
      '  SEQIPD = :SEQIPD,'
      '  SITIPD = :SITIPD,'
      '  TNSPRO = :TNSPRO,'
      '  TOTDESC = :TOTDESC,'
      '  VLRORI = :VLRORI'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD')
    Left = 232
    Top = 256
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
  end
  object CadUsu120Ipd: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from USU120IPD'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD and'
      '  SEQITE = :OLD_SEQITE')
    InsertSQL.Strings = (
      'insert into USU120IPD'
      
        '  (CODDER, CODEMP, CODFIL, CODPRO, COR001, COR002, NUMCON, NUMPE' +
        'D, PRECAR, '
      '   QTDABE, QTDCAN, QTDCOR, SEQIPD, SEQITE, TECTRA, TIPCMB)'
      'values'
      
        '  (:CODDER, :CODEMP, :CODFIL, :CODPRO, :COR001, :COR002, :NUMCON' +
        ', :NUMPED, '
      
        '   :PRECAR, :QTDABE, :QTDCAN, :QTDCOR, :SEQIPD, :SEQITE, :TECTRA' +
        ', :TIPCMB)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMCON,'
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
        'qite')
    ModifySQL.Strings = (
      'update USU120IPD'
      'set'
      '  CODDER = :CODDER,'
      '  CODEMP = :CODEMP,'
      '  CODFIL = :CODFIL,'
      '  CODPRO = :CODPRO,'
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
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD and'
      '  SEQITE = :OLD_SEQITE')
    Left = 320
    Top = 256
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
  end
  object CadE120Obs: TIBDataSet
    Database = IBDBanco
    Transaction = IBTransacao
    DeleteSQL.Strings = (
      'delete from e120obs'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQOBS = :OLD_SEQOBS')
    InsertSQL.Strings = (
      'insert into e120obs'
      
        '  (CODEMP, CODFIL, NUMCON, NUMPED, OBSDAT, OBSPED, OBSUSU, SEQOB' +
        'S, SITOBS)'
      'values'
      
        '  (:CODEMP, :CODFIL, :NUMCON, :NUMPED, :OBSDAT, :OBSPED, :OBSUSU' +
        ', :SEQOBS, '
      '   :SITOBS)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMCON,'
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
      '  NUMCON = :NUMCON and'
      '  SEQOBS = :SEQOBS')
    SelectSQL.Strings = (
      'select * from e120obs where'
      '                       codemp = :codemp and'
      '                       codfil = :codfil and'
      '                       numcon = :numcon and'
      '                       seqobs = :seqobs'
      '                       ')
    ModifySQL.Strings = (
      'update e120obs'
      'set'
      '  CODEMP = :CODEMP,'
      '  CODFIL = :CODFIL,'
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
      '  NUMCON = :OLD_NUMCON and'
      '  SEQOBS = :OLD_SEQOBS')
    Left = 400
    Top = 256
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
  end
  object ConsE075LLDC: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    SQL.Strings = (
      'select * from e075lldc where '
      'datmov between :datmov1 and :datmov2'
      ' order by datmov,nummov')
    Left = 264
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datmov1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datmov2'
        ParamType = ptUnknown
      end>
    object ConsE075LLDCNUMMOV: TIntegerField
      FieldName = 'NUMMOV'
      Origin = '"E075LLDC"."NUMMOV"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE075LLDCCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E075LLDC"."CODEMP"'
      Required = True
    end
    object ConsE075LLDCCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E075LLDC"."CODPRO"'
      Required = True
    end
    object ConsE075LLDCCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"E075LLDC"."CODDER"'
      Required = True
      Size = 10
    end
    object ConsE075LLDCCODTEC: TIBStringField
      FieldName = 'CODTEC'
      Origin = '"E075LLDC"."CODTEC"'
      Required = True
    end
    object ConsE075LLDCDATMOV: TDateField
      FieldName = 'DATMOV'
      Origin = '"E075LLDC"."DATMOV"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE075LLDCTIPMOV: TIBStringField
      FieldName = 'TIPMOV'
      Origin = '"E075LLDC"."TIPMOV"'
      FixedChar = True
      Size = 1
    end
  end
  object ConsE100Sql: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    SQL.Strings = (
      
        'select * from e100sql where datger between :datini and :datfim a' +
        'nd'
      '                            codusu = :codusu'
      '                            order by datger,numcon')
    Left = 480
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datfim'
        ParamType = ptUnknown
      end
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
  object ConsSql: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    Left = 392
    Top = 88
  end
  object ConsE028Cpg_: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    SQL.Strings = (
      'select * from E028CPG order by codusu')
    Left = 536
    Top = 40
    object ConsE028Cpg_CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E028CPG"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE028Cpg_CODCPG: TIBStringField
      FieldName = 'CODCPG'
      Origin = '"E028CPG"."CODCPG"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object ConsE028Cpg_CODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E028CPG"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE028Cpg_DESCPG: TIBStringField
      FieldName = 'DESCPG'
      Origin = '"E028CPG"."DESCPG"'
      Size = 50
    end
    object ConsE028Cpg_ABRCPG: TIBStringField
      FieldName = 'ABRCPG'
      Origin = '"E028CPG"."ABRCPG"'
      Size = 10
    end
    object ConsE028Cpg_PRZMED: TIntegerField
      FieldName = 'PRZMED'
      Origin = '"E028CPG"."PRZMED"'
    end
    object ConsE028Cpg_QTDPAR: TIntegerField
      FieldName = 'QTDPAR'
      Origin = '"E028CPG"."QTDPAR"'
    end
    object ConsE028Cpg_SITCPG: TIBStringField
      FieldName = 'SITCPG'
      Origin = '"E028CPG"."SITCPG"'
      FixedChar = True
      Size = 1
    end
    object ConsE028Cpg_PERCOM: TFloatField
      FieldName = 'PERCOM'
      Origin = '"E028CPG"."PERCOM"'
    end
    object ConsE028Cpg_CPGLIB: TIBStringField
      FieldName = 'CPGLIB'
      Origin = '"E028CPG"."CPGLIB"'
      FixedChar = True
      Size = 1
    end
  end
  object ConsE081Itp_: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    SQL.Strings = (
      'select * from E081ITP where codemp = :codemp and'
      '                                               codtpr = :codtpr')
    Left = 536
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codtpr'
        ParamType = ptUnknown
      end>
    object ConsE081Itp_CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E081ITP"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE081Itp_CODTPR: TIBStringField
      FieldName = 'CODTPR'
      Origin = '"E081ITP"."CODTPR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object ConsE081Itp_CODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E081ITP"."CODPRO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object ConsE081Itp_CODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"E081ITP"."CODDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object ConsE081Itp_CODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E081ITP"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE081Itp_DESPRO: TIBStringField
      FieldName = 'DESPRO'
      Origin = '"E081ITP"."DESPRO"'
      Size = 100
    end
    object ConsE081Itp_PREBAS: TFloatField
      FieldName = 'PREBAS'
      Origin = '"E081ITP"."PREBAS"'
    end
    object ConsE081Itp_TOLMAI: TFloatField
      FieldName = 'TOLMAI'
      Origin = '"E081ITP"."TOLMAI"'
    end
    object ConsE081Itp_TOLMEN: TFloatField
      FieldName = 'TOLMEN'
      Origin = '"E081ITP"."TOLMEN"'
    end
    object ConsE081Itp_VLRMAI: TFloatField
      FieldName = 'VLRMAI'
      Origin = '"E081ITP"."VLRMAI"'
    end
    object ConsE081Itp_VLRMEN: TFloatField
      FieldName = 'VLRMEN'
      Origin = '"E081ITP"."VLRMEN"'
    end
    object ConsE081Itp_SITREG: TIBStringField
      FieldName = 'SITREG'
      Origin = '"E081ITP"."SITREG"'
      FixedChar = True
      Size = 1
    end
    object ConsE081Itp_DATINI: TDateField
      FieldName = 'DATINI'
      Origin = '"E081ITP"."DATINI"'
    end
    object ConsE081Itp_DATFIM: TDateField
      FieldName = 'DATFIM'
      Origin = '"E081ITP"."DATFIM"'
    end
  end
  object ConsE075Lldc_: TIBQuery
    Database = IBDBanco
    Transaction = IBTransacao
    SQL.Strings = (
      'SELECT * FROM e075lldc WHERE DATMOV >= :DATMOV'
      '  ORDER BY DATMOV,NUMMOV')
    Left = 536
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATMOV'
        ParamType = ptUnknown
      end>
    object ConsE075Lldc_NUMMOV: TIntegerField
      FieldName = 'NUMMOV'
      Origin = '"E075LLDC"."NUMMOV"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE075Lldc_CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E075LLDC"."CODEMP"'
      Required = True
    end
    object ConsE075Lldc_CODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E075LLDC"."CODPRO"'
      Required = True
    end
    object ConsE075Lldc_CODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"E075LLDC"."CODDER"'
      Required = True
      Size = 10
    end
    object ConsE075Lldc_CODTEC: TIBStringField
      FieldName = 'CODTEC'
      Origin = '"E075LLDC"."CODTEC"'
      Required = True
    end
    object ConsE075Lldc_DATMOV: TDateField
      FieldName = 'DATMOV'
      Origin = '"E075LLDC"."DATMOV"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE075Lldc_TIPMOV: TIBStringField
      FieldName = 'TIPMOV'
      Origin = '"E075LLDC"."TIPMOV"'
      FixedChar = True
      Size = 1
    end
  end
end
