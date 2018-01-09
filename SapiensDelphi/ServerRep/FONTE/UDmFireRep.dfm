object DmFireRep: TDmFireRep
  OldCreateOrder = False
  Height = 642
  Width = 917
  object Banco: TIBDatabase
    Connected = True
    DatabaseName = 
      '192.168.10.44:C:\DelphiSapiens\SapiensDelphi\ServerRep\Banco_Bas' +
      'e\BANCO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = ibtTransacao
    Left = 40
    Top = 24
  end
  object ibtTransacao: TIBTransaction
    Active = True
    DefaultDatabase = Banco
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 24
  end
  object CadE085Cli: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E085CLI'
      'where'
      '  CODCLI = :OLD_CODCLI')
    InsertSQL.Strings = (
      'insert into E085CLI'
      
        '  (APECLI, BAICLI, CEPCLI, CGCCPF, CIDCLI, CODCLI, CODREP, CPLEN' +
        'D, ENDCLI, '
      '   FONCLI, INSEST, NENCLI, NOMCLI, SIGUFS, SITCLI)'
      'values'
      
        '  (:APECLI, :BAICLI, :CEPCLI, :CGCCPF, :CIDCLI, :CODCLI, :CODREP' +
        ', :CPLEND, '
      
        '   :ENDCLI, :FONCLI, :INSEST, :NENCLI, :NOMCLI, :SIGUFS, :SITCLI' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  CODCLI,'
      '  NOMCLI,'
      '  APECLI,'
      '  INSEST,'
      '  ENDCLI,'
      '  NENCLI,'
      '  CPLEND,'
      '  CEPCLI,'
      '  BAICLI,'
      '  CIDCLI,'
      '  SIGUFS,'
      '  SITCLI,'
      '  CGCCPF,'
      '  FONCLI,'
      '  CODREP'
      'from E085CLI '
      'where'
      '  CODCLI = :CODCLI')
    SelectSQL.Strings = (
      'SELECT * FROM E085CLI where codcli = :codcli')
    ModifySQL.Strings = (
      'update E085CLI'
      'set'
      '  APECLI = :APECLI,'
      '  BAICLI = :BAICLI,'
      '  CEPCLI = :CEPCLI,'
      '  CGCCPF = :CGCCPF,'
      '  CIDCLI = :CIDCLI,'
      '  CODCLI = :CODCLI,'
      '  CODREP = :CODREP,'
      '  CPLEND = :CPLEND,'
      '  ENDCLI = :ENDCLI,'
      '  FONCLI = :FONCLI,'
      '  INSEST = :INSEST,'
      '  NENCLI = :NENCLI,'
      '  NOMCLI = :NOMCLI,'
      '  SIGUFS = :SIGUFS,'
      '  SITCLI = :SITCLI'
      'where'
      '  CODCLI = :OLD_CODCLI')
    Left = 56
    Top = 96
    object CadE085CliCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"E085CLI"."CODCLI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE085CliNOMCLI: TIBStringField
      FieldName = 'NOMCLI'
      Origin = '"E085CLI"."NOMCLI"'
      Size = 100
    end
    object CadE085CliAPECLI: TIBStringField
      FieldName = 'APECLI'
      Origin = '"E085CLI"."APECLI"'
      Size = 50
    end
    object CadE085CliINSEST: TIBStringField
      FieldName = 'INSEST'
      Origin = '"E085CLI"."INSEST"'
      Size = 25
    end
    object CadE085CliENDCLI: TIBStringField
      FieldName = 'ENDCLI'
      Origin = '"E085CLI"."ENDCLI"'
      Size = 100
    end
    object CadE085CliNENCLI: TIBStringField
      FieldName = 'NENCLI'
      Origin = '"E085CLI"."NENCLI"'
      Size = 60
    end
    object CadE085CliCPLEND: TIBStringField
      FieldName = 'CPLEND'
      Origin = '"E085CLI"."CPLEND"'
    end
    object CadE085CliCEPCLI: TIBStringField
      FieldName = 'CEPCLI'
      Origin = '"E085CLI"."CEPCLI"'
      Size = 10
    end
    object CadE085CliBAICLI: TIBStringField
      FieldName = 'BAICLI'
      Origin = '"E085CLI"."BAICLI"'
      Size = 75
    end
    object CadE085CliCIDCLI: TIBStringField
      FieldName = 'CIDCLI'
      Origin = '"E085CLI"."CIDCLI"'
      Size = 60
    end
    object CadE085CliSIGUFS: TIBStringField
      FieldName = 'SIGUFS'
      Origin = '"E085CLI"."SIGUFS"'
      Size = 2
    end
    object CadE085CliSITCLI: TIBStringField
      FieldName = 'SITCLI'
      Origin = '"E085CLI"."SITCLI"'
      FixedChar = True
      Size = 1
    end
    object CadE085CliCGCCPF: TIBStringField
      FieldName = 'CGCCPF'
      Origin = '"E085CLI"."CGCCPF"'
      Size = 14
    end
    object CadE085CliFONCLI: TIBStringField
      FieldName = 'FONCLI'
      Origin = '"E085CLI"."FONCLI"'
    end
    object CadE085CliCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E085CLI"."CODREP"'
    end
  end
  object CadE085Hcl: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E085HCL'
      'where'
      '  CODCLI = :OLD_CODCLI and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL')
    InsertSQL.Strings = (
      'insert into E085HCL'
      
        '  (CODCLI, CODEMP, CODFIL, CODREP, DATATR, DATMAC, DATMFA, DATUF' +
        'A, DATUPE, '
      
        '   DATUPG, MAIATR, QTDPGT, SALDUP, ULTNFV, VLRATR, VLRMAC, VLRMF' +
        'A, VLRUFA, '
      '   VLRUPE, VLRUPG)'
      'values'
      
        '  (:CODCLI, :CODEMP, :CODFIL, :CODREP, :DATATR, :DATMAC, :DATMFA' +
        ', :DATUFA, '
      
        '   :DATUPE, :DATUPG, :MAIATR, :QTDPGT, :SALDUP, :ULTNFV, :VLRATR' +
        ', :VLRMAC, '
      '   :VLRMFA, :VLRUFA, :VLRUPE, :VLRUPG)')
    RefreshSQL.Strings = (
      'Select '
      '  CODCLI,'
      '  CODEMP,'
      '  CODFIL,'
      '  CODREP,'
      '  SALDUP,'
      '  DATMAC,'
      '  VLRMAC,'
      '  DATUPE,'
      '  VLRUPE,'
      '  DATUFA,'
      '  VLRUFA,'
      '  DATUPG,'
      '  VLRUPG,'
      '  QTDPGT,'
      '  DATMFA,'
      '  VLRMFA,'
      '  DATATR,'
      '  VLRATR,'
      '  MAIATR,'
      '  ULTNFV'
      'from E085HCL '
      'where'
      '  CODCLI = :CODCLI and'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL')
    SelectSQL.Strings = (
      'SELECT * FROM E085HCL WHERE CODEMP = :CODEMP AND'
      
        '                                                       CODFIL = ' +
        ':CODFIL AND'
      
        '                                                       CODCLI = ' +
        ':CODCLI')
    ModifySQL.Strings = (
      'update E085HCL'
      'set'
      '  CODCLI = :CODCLI,'
      '  CODEMP = :CODEMP,'
      '  CODFIL = :CODFIL,'
      '  CODREP = :CODREP,'
      '  DATATR = :DATATR,'
      '  DATMAC = :DATMAC,'
      '  DATMFA = :DATMFA,'
      '  DATUFA = :DATUFA,'
      '  DATUPE = :DATUPE,'
      '  DATUPG = :DATUPG,'
      '  MAIATR = :MAIATR,'
      '  QTDPGT = :QTDPGT,'
      '  SALDUP = :SALDUP,'
      '  ULTNFV = :ULTNFV,'
      '  VLRATR = :VLRATR,'
      '  VLRMAC = :VLRMAC,'
      '  VLRMFA = :VLRMFA,'
      '  VLRUFA = :VLRUFA,'
      '  VLRUPE = :VLRUPE,'
      '  VLRUPG = :VLRUPG'
      'where'
      '  CODCLI = :OLD_CODCLI and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL')
    Left = 144
    Top = 96
    object CadE085HclCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"E085HCL"."CODCLI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE085HclCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E085HCL"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE085HclCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E085HCL"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE085HclCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E085HCL"."CODREP"'
    end
    object CadE085HclSALDUP: TFloatField
      FieldName = 'SALDUP'
      Origin = '"E085HCL"."SALDUP"'
    end
    object CadE085HclDATMAC: TDateField
      FieldName = 'DATMAC'
      Origin = '"E085HCL"."DATMAC"'
    end
    object CadE085HclVLRMAC: TFloatField
      FieldName = 'VLRMAC'
      Origin = '"E085HCL"."VLRMAC"'
    end
    object CadE085HclDATUPE: TDateField
      FieldName = 'DATUPE'
      Origin = '"E085HCL"."DATUPE"'
    end
    object CadE085HclVLRUPE: TFloatField
      FieldName = 'VLRUPE'
      Origin = '"E085HCL"."VLRUPE"'
    end
    object CadE085HclDATUFA: TDateField
      FieldName = 'DATUFA'
      Origin = '"E085HCL"."DATUFA"'
    end
    object CadE085HclVLRUFA: TFloatField
      FieldName = 'VLRUFA'
      Origin = '"E085HCL"."VLRUFA"'
    end
    object CadE085HclDATUPG: TDateField
      FieldName = 'DATUPG'
      Origin = '"E085HCL"."DATUPG"'
    end
    object CadE085HclVLRUPG: TFloatField
      FieldName = 'VLRUPG'
      Origin = '"E085HCL"."VLRUPG"'
    end
    object CadE085HclQTDPGT: TIntegerField
      FieldName = 'QTDPGT'
      Origin = '"E085HCL"."QTDPGT"'
    end
    object CadE085HclDATMFA: TDateField
      FieldName = 'DATMFA'
      Origin = '"E085HCL"."DATMFA"'
    end
    object CadE085HclVLRMFA: TFloatField
      FieldName = 'VLRMFA'
      Origin = '"E085HCL"."VLRMFA"'
    end
    object CadE085HclDATATR: TDateField
      FieldName = 'DATATR'
      Origin = '"E085HCL"."DATATR"'
    end
    object CadE085HclVLRATR: TFloatField
      FieldName = 'VLRATR'
      Origin = '"E085HCL"."VLRATR"'
    end
    object CadE085HclMAIATR: TIntegerField
      FieldName = 'MAIATR'
      Origin = '"E085HCL"."MAIATR"'
    end
    object CadE085HclULTNFV: TFloatField
      FieldName = 'ULTNFV'
      Origin = '"E085HCL"."ULTNFV"'
    end
  end
  object CadE028Cpg: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E028CPG'
      'where'
      '  CODCPG = :OLD_CODCPG and'
      '  CODEMP = :OLD_CODEMP')
    InsertSQL.Strings = (
      'insert into E028CPG'
      
        '  (ABRCPG, CODCPG, CODEMP, CODUSU, DESCPG, PERCOM, PRZMED, QTDPA' +
        'R, SITCPG)'
      'values'
      
        '  (:ABRCPG, :CODCPG, :CODEMP, :CODUSU, :DESCPG, :PERCOM, :PRZMED' +
        ', :QTDPAR, '
      '   :SITCPG)')
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
      '  PERCOM'
      'from E028CPG '
      'where'
      '  CODCPG = :CODCPG and'
      '  CODEMP = :CODEMP')
    SelectSQL.Strings = (
      'SELECT * FROM E028CPG WHERE'
      '                        CODEMP = :CODEMP AND'
      '                        CODCPG = :CODCPG')
    ModifySQL.Strings = (
      'update E028CPG'
      'set'
      '  ABRCPG = :ABRCPG,'
      '  CODCPG = :CODCPG,'
      '  CODEMP = :CODEMP,'
      '  CODUSU = :CODUSU,'
      '  DESCPG = :DESCPG,'
      '  PERCOM = :PERCOM,'
      '  PRZMED = :PRZMED,'
      '  QTDPAR = :QTDPAR,'
      '  SITCPG = :SITCPG'
      'where'
      '  CODCPG = :OLD_CODCPG and'
      '  CODEMP = :OLD_CODEMP')
    Left = 56
    Top = 160
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
    object CadE028CpgPERCOM: TFloatField
      FieldName = 'PERCOM'
      Origin = '"E028CPG"."PERCOM"'
    end
  end
  object CadE090Rcp: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E090RCP'
      'where'
      '  CODCPG = :OLD_CODCPG and'
      '  CODREP = :OLD_CODREP and'
      '  EMPCPG = :OLD_EMPCPG')
    InsertSQL.Strings = (
      'insert into E090RCP'
      '  (CODCPG, CODREP, EMPCPG, SITLRC)'
      'values'
      '  (:CODCPG, :CODREP, :EMPCPG, :SITLRC)')
    RefreshSQL.Strings = (
      'Select '
      '  CODREP,'
      '  EMPCPG,'
      '  CODCPG,'
      '  SITLRC'
      'from E090RCP '
      'where'
      '  CODCPG = :CODCPG and'
      '  CODREP = :CODREP and'
      '  EMPCPG = :EMPCPG')
    SelectSQL.Strings = (
      'select * from E090RCP where'
      'codrep = :codrep and'
      'empcpg = :empcpg and'
      'codcpg = :codcpg')
    ModifySQL.Strings = (
      'update E090RCP'
      'set'
      '  CODCPG = :CODCPG,'
      '  CODREP = :CODREP,'
      '  EMPCPG = :EMPCPG,'
      '  SITLRC = :SITLRC'
      'where'
      '  CODCPG = :OLD_CODCPG and'
      '  CODREP = :OLD_CODREP and'
      '  EMPCPG = :OLD_EMPCPG')
    Left = 144
    Top = 160
    object CadE090RcpCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E090RCP"."CODREP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE090RcpEMPCPG: TIntegerField
      FieldName = 'EMPCPG'
      Origin = '"E090RCP"."EMPCPG"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE090RcpCODCPG: TIBStringField
      FieldName = 'CODCPG'
      Origin = '"E090RCP"."CODCPG"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CadE090RcpSITLRC: TIBStringField
      FieldName = 'SITLRC'
      Origin = '"E090RCP"."SITLRC"'
      Size = 2
    end
  end
  object CadE081Itp: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E081ITP'
      'where'
      '  CODDER = :OLD_CODDER and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO and'
      '  CODTPR = :OLD_CODTPR')
    InsertSQL.Strings = (
      'insert into E081ITP'
      
        '  (CODAGC, CODDER, CODEMP, CODFAM, CODPRO, CODTPR, CODUSU, DATFI' +
        'M, DATINI, '
      '   DESPRO, PREBAS, SITREG, TOLMAI, TOLMEN, VLRMAI, VLRMEN)'
      'values'
      
        '  (:CODAGC, :CODDER, :CODEMP, :CODFAM, :CODPRO, :CODTPR, :CODUSU' +
        ', :DATFIM, '
      
        '   :DATINI, :DESPRO, :PREBAS, :SITREG, :TOLMAI, :TOLMEN, :VLRMAI' +
        ', :VLRMEN)')
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
      '  DATFIM,'
      '  CODFAM,'
      '  CODAGC'
      'from E081ITP '
      'where'
      '  CODDER = :CODDER and'
      '  CODEMP = :CODEMP and'
      '  CODPRO = :CODPRO and'
      '  CODTPR = :CODTPR')
    SelectSQL.Strings = (
      'SELECT * FROM E081ITP WHERE'
      '                        CODEMP = :CODEMP AND'
      '                        CODTPR = :CODTPR AND'
      '                        CODPRO = :CODPRO AND'
      '                        CODDER = :CODDER')
    ModifySQL.Strings = (
      'update E081ITP'
      'set'
      '  CODAGC = :CODAGC,'
      '  CODDER = :CODDER,'
      '  CODEMP = :CODEMP,'
      '  CODFAM = :CODFAM,'
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
      '  CODTPR = :OLD_CODTPR')
    Left = 56
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
    end
    object CadE081ItpDESPRO: TIBStringField
      FieldName = 'DESPRO'
      Origin = '"E081ITP"."DESPRO"'
      Size = 100
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
    object CadE081ItpCODFAM: TIBStringField
      FieldName = 'CODFAM'
      Origin = '"E081ITP"."CODFAM"'
      Size = 6
    end
    object CadE081ItpCODAGC: TIBStringField
      FieldName = 'CODAGC'
      Origin = '"E081ITP"."CODAGC"'
    end
  end
  object CadE075LLdc: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E075LLDC'
      'where'
      '  CODDER = :OLD_CODDER and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO and'
      '  CODTEC = :OLD_CODTEC and'
      '  DATMOV = :OLD_DATMOV and'
      '  NUMMOV = :OLD_NUMMOV')
    InsertSQL.Strings = (
      'insert into E075LLDC'
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
      'from E075LLDC '
      'where'
      '  CODDER = :CODDER and'
      '  CODEMP = :CODEMP and'
      '  CODPRO = :CODPRO and'
      '  CODTEC = :CODTEC and'
      '  DATMOV = :DATMOV and'
      '  NUMMOV = :NUMMOV')
    SelectSQL.Strings = (
      'SELECT * FROM E075LLDC WHERE'
      '                       CODEMP = :CODEMP AND'
      '                       NUMMOV = :NUMMOV AND'
      '                       CODPRO = :CODPRO AND'
      '                       CODDER = :CODDER AND'
      '                       CODTEC = :CODTEC AND'
      '                       DATMOV = :DATMOV')
    ModifySQL.Strings = (
      'update E075LLDC'
      'set'
      '  CODDER = :CODDER,'
      '  CODEMP = :CODEMP,'
      '  CODPRO = :CODPRO,'
      '  CODTEC = :CODTEC,'
      '  DATMOV = :DATMOV,'
      '  NUMMOV = :NUMMOV,'
      '  TIPMOV = :TIPMOV'
      'where'
      '  CODDER = :OLD_CODDER and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO and'
      '  CODTEC = :OLD_CODTEC and'
      '  DATMOV = :OLD_DATMOV and'
      '  NUMMOV = :OLD_NUMMOV')
    Left = 56
    Top = 272
    object CadE075LLdcNUMMOV: TIntegerField
      FieldName = 'NUMMOV'
      Origin = '"E075LLDC"."NUMMOV"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE075LLdcCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E075LLDC"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE075LLdcCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E075LLDC"."CODPRO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE075LLdcCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"E075LLDC"."CODDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object CadE075LLdcCODTEC: TIBStringField
      FieldName = 'CODTEC'
      Origin = '"E075LLDC"."CODTEC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE075LLdcDATMOV: TDateField
      FieldName = 'DATMOV'
      Origin = '"E075LLDC"."DATMOV"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE075LLdcTIPMOV: TIBStringField
      FieldName = 'TIPMOV'
      Origin = '"E075LLDC"."TIPMOV"'
      FixedChar = True
      Size = 1
    end
  end
  object Sql: TIBSQL
    Database = Banco
    Transaction = ibtTransacao
    Left = 264
    Top = 168
  end
  object CadE301Tcr: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E301TCR'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODTPT = :OLD_CODTPT and'
      '  NUMTIT = :OLD_NUMTIT')
    InsertSQL.Strings = (
      'insert into E301TCR'
      
        '  (CODCLI, CODEMP, CODFIL, CODREP, CODTNS, CODTPT, DATEMI, DATPP' +
        'T, NUMTIT, '
      '   SITTIT, VCTORI, VCTPRO, VLRABE, VLRORI)'
      'values'
      
        '  (:CODCLI, :CODEMP, :CODFIL, :CODREP, :CODTNS, :CODTPT, :DATEMI' +
        ', :DATPPT, '
      '   :NUMTIT, :SITTIT, :VCTORI, :VCTPRO, :VLRABE, :VLRORI)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMTIT,'
      '  CODTPT,'
      '  CODTNS,'
      '  SITTIT,'
      '  DATEMI,'
      '  CODCLI,'
      '  VCTORI,'
      '  VLRORI,'
      '  VCTPRO,'
      '  DATPPT,'
      '  VLRABE,'
      '  CODREP'
      'from E301TCR '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL and'
      '  CODTPT = :CODTPT and'
      '  NUMTIT = :NUMTIT')
    SelectSQL.Strings = (
      'SELECT * FROM E301TCR'
      '         WHERE'
      '         CODEMP = :CODEMP AND'
      '         CODFIL = :CODFIL AND'
      '         NUMTIT = :NUMTIT AND'
      '         CODTPT = :CODTPT')
    ModifySQL.Strings = (
      'update E301TCR'
      'set'
      '  CODCLI = :CODCLI,'
      '  CODEMP = :CODEMP,'
      '  CODFIL = :CODFIL,'
      '  CODREP = :CODREP,'
      '  CODTNS = :CODTNS,'
      '  CODTPT = :CODTPT,'
      '  DATEMI = :DATEMI,'
      '  DATPPT = :DATPPT,'
      '  NUMTIT = :NUMTIT,'
      '  SITTIT = :SITTIT,'
      '  VCTORI = :VCTORI,'
      '  VCTPRO = :VCTPRO,'
      '  VLRABE = :VLRABE,'
      '  VLRORI = :VLRORI'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  CODTPT = :OLD_CODTPT and'
      '  NUMTIT = :OLD_NUMTIT')
    Left = 56
    Top = 320
    object CadE301TcrCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E301TCR"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE301TcrCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E301TCR"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE301TcrNUMTIT: TIBStringField
      FieldName = 'NUMTIT'
      Origin = '"E301TCR"."NUMTIT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object CadE301TcrCODTPT: TIBStringField
      FieldName = 'CODTPT'
      Origin = '"E301TCR"."CODTPT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CadE301TcrCODTNS: TIBStringField
      FieldName = 'CODTNS'
      Origin = '"E301TCR"."CODTNS"'
      Size = 5
    end
    object CadE301TcrSITTIT: TIBStringField
      FieldName = 'SITTIT'
      Origin = '"E301TCR"."SITTIT"'
      Size = 2
    end
    object CadE301TcrDATEMI: TDateField
      FieldName = 'DATEMI'
      Origin = '"E301TCR"."DATEMI"'
    end
    object CadE301TcrCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"E301TCR"."CODCLI"'
    end
    object CadE301TcrVCTORI: TDateField
      FieldName = 'VCTORI'
      Origin = '"E301TCR"."VCTORI"'
    end
    object CadE301TcrVLRORI: TFloatField
      FieldName = 'VLRORI'
      Origin = '"E301TCR"."VLRORI"'
    end
    object CadE301TcrVCTPRO: TDateField
      FieldName = 'VCTPRO'
      Origin = '"E301TCR"."VCTPRO"'
    end
    object CadE301TcrDATPPT: TDateField
      FieldName = 'DATPPT'
      Origin = '"E301TCR"."DATPPT"'
    end
    object CadE301TcrVLRABE: TFloatField
      FieldName = 'VLRABE'
      Origin = '"E301TCR"."VLRABE"'
    end
    object CadE301TcrCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E301TCR"."CODREP"'
    end
  end
  object CadE075Pro: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E075PRO'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO')
    InsertSQL.Strings = (
      'insert into E075PRO'
      '  (CODAGP, CODEMP, CODFAM, CODPRO, DESPRO, SITPRO)'
      'values'
      '  (:CODAGP, :CODEMP, :CODFAM, :CODPRO, :DESPRO, :SITPRO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODPRO,'
      '  DESPRO,'
      '  CODFAM,'
      '  CODAGP,'
      '  SITPRO'
      'from E075PRO '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODPRO = :CODPRO')
    SelectSQL.Strings = (
      'SELECT * FROM E075PRO WHERE CODEMP = :CODEMP AND'
      
        '                                                        CODPRO =' +
        ' :CODPRO')
    ModifySQL.Strings = (
      'update E075PRO'
      'set'
      '  CODAGP = :CODAGP,'
      '  CODEMP = :CODEMP,'
      '  CODFAM = :CODFAM,'
      '  CODPRO = :CODPRO,'
      '  DESPRO = :DESPRO,'
      '  SITPRO = :SITPRO'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO')
    Left = 56
    Top = 368
    object CadE075ProCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E075PRO"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE075ProCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E075PRO"."CODPRO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object CadE075ProDESPRO: TIBStringField
      FieldName = 'DESPRO'
      Origin = '"E075PRO"."DESPRO"'
      Size = 100
    end
    object CadE075ProCODFAM: TIBStringField
      FieldName = 'CODFAM'
      Origin = '"E075PRO"."CODFAM"'
      Size = 10
    end
    object CadE075ProCODAGP: TIBStringField
      FieldName = 'CODAGP'
      Origin = '"E075PRO"."CODAGP"'
      Size = 10
    end
    object CadE075ProSITPRO: TIBStringField
      FieldName = 'SITPRO'
      Origin = '"E075PRO"."SITPRO"'
      FixedChar = True
      Size = 1
    end
  end
  object CadE075Der: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E075DER'
      'where'
      '  CODDER = :OLD_CODDER and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO')
    InsertSQL.Strings = (
      'insert into E075DER'
      
        '  (CMP1AC, CMP1BB, CMP2BB, CMP2EN, CODDER, CODEMP, CODPRO, CORUN' +
        'I, DESDER, '
      '   PESBRU, PESLIQ, SITDER, VOLDER)'
      'values'
      
        '  (:CMP1AC, :CMP1BB, :CMP2BB, :CMP2EN, :CODDER, :CODEMP, :CODPRO' +
        ', :CORUNI, '
      '   :DESDER, :PESBRU, :PESLIQ, :SITDER, :VOLDER)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODPRO,'
      '  CODDER,'
      '  DESDER,'
      '  PESBRU,'
      '  PESLIQ,'
      '  VOLDER,'
      '  SITDER,'
      '  CORUNI,'
      '  CMP1BB,'
      '  CMP1AC,'
      '  CMP2BB,'
      '  CMP2EN'
      'from E075DER '
      'where'
      '  CODDER = :CODDER and'
      '  CODEMP = :CODEMP and'
      '  CODPRO = :CODPRO')
    SelectSQL.Strings = (
      'SELECT * FROM E075DER WHERE CODEMP = :CODEMP AND'
      
        '                                                       CODPRO = ' +
        ':CODPRO AND'
      
        '                                                       CODDER = ' +
        ':CODDER')
    ModifySQL.Strings = (
      'update E075DER'
      'set'
      '  CMP1AC = :CMP1AC,'
      '  CMP1BB = :CMP1BB,'
      '  CMP2BB = :CMP2BB,'
      '  CMP2EN = :CMP2EN,'
      '  CODDER = :CODDER,'
      '  CODEMP = :CODEMP,'
      '  CODPRO = :CODPRO,'
      '  CORUNI = :CORUNI,'
      '  DESDER = :DESDER,'
      '  PESBRU = :PESBRU,'
      '  PESLIQ = :PESLIQ,'
      '  SITDER = :SITDER,'
      '  VOLDER = :VOLDER'
      'where'
      '  CODDER = :OLD_CODDER and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO')
    Left = 56
    Top = 424
    object CadE075DerCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E075DER"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE075DerCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E075DER"."CODPRO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object CadE075DerCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"E075DER"."CODDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object CadE075DerDESDER: TIBStringField
      FieldName = 'DESDER'
      Origin = '"E075DER"."DESDER"'
      Size = 50
    end
    object CadE075DerPESBRU: TFloatField
      FieldName = 'PESBRU'
      Origin = '"E075DER"."PESBRU"'
    end
    object CadE075DerPESLIQ: TFloatField
      FieldName = 'PESLIQ'
      Origin = '"E075DER"."PESLIQ"'
    end
    object CadE075DerVOLDER: TFloatField
      FieldName = 'VOLDER'
      Origin = '"E075DER"."VOLDER"'
    end
    object CadE075DerSITDER: TIBStringField
      FieldName = 'SITDER'
      Origin = '"E075DER"."SITDER"'
      FixedChar = True
      Size = 1
    end
    object CadE075DerCORUNI: TFloatField
      FieldName = 'CORUNI'
      Origin = '"E075DER"."CORUNI"'
    end
    object CadE075DerCMP1BB: TFloatField
      FieldName = 'CMP1BB'
      Origin = '"E075DER"."CMP1BB"'
    end
    object CadE075DerCMP1AC: TFloatField
      FieldName = 'CMP1AC'
      Origin = '"E075DER"."CMP1AC"'
    end
    object CadE075DerCMP2BB: TFloatField
      FieldName = 'CMP2BB'
      Origin = '"E075DER"."CMP2BB"'
    end
    object CadE075DerCMP2EN: TFloatField
      FieldName = 'CMP2EN'
      Origin = '"E075DER"."CMP2EN"'
    end
  end
  object CadE075Cor: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E075COR'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO')
    InsertSQL.Strings = (
      'insert into E075COR'
      '  (CODEMP, CODPRO, DESPRO, SITPRO)'
      'values'
      '  (:CODEMP, :CODPRO, :DESPRO, :SITPRO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODPRO,'
      '  DESPRO,'
      '  SITPRO'
      'from E075COR '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODPRO = :CODPRO')
    SelectSQL.Strings = (
      'SELECT * FROM E075COR WHERE CODEMP = :CODEMP AND'
      
        '                                                        CODPRO =' +
        ' :CODPRO')
    ModifySQL.Strings = (
      'update E075COR'
      'set'
      '  CODEMP = :CODEMP,'
      '  CODPRO = :CODPRO,'
      '  DESPRO = :DESPRO,'
      '  SITPRO = :SITPRO'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO')
    Left = 160
    Top = 424
    object CadE075CorCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E075COR"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE075CorCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E075COR"."CODPRO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object CadE075CorDESPRO: TIBStringField
      FieldName = 'DESPRO'
      Origin = '"E075COR"."DESPRO"'
      Size = 100
    end
    object CadE075CorSITPRO: TIBStringField
      FieldName = 'SITPRO'
      Origin = '"E075COR"."SITPRO"'
      FixedChar = True
      Size = 1
    end
  end
  object CadE075Ldc: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E075LDC'
      'where'
      '  CODDER = :OLD_CODDER and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO and'
      '  CODTEC = :OLD_CODTEC')
    InsertSQL.Strings = (
      'insert into E075LDC'
      '  (CODDER, CODEMP, CODPRO, CODTEC, DESTEC, SITLIG)'
      'values'
      '  (:CODDER, :CODEMP, :CODPRO, :CODTEC, :DESTEC, :SITLIG)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODPRO,'
      '  CODDER,'
      '  CODTEC,'
      '  DESTEC,'
      '  SITLIG'
      'from E075LDC '
      'where'
      '  CODDER = :CODDER and'
      '  CODEMP = :CODEMP and'
      '  CODPRO = :CODPRO and'
      '  CODTEC = :CODTEC')
    SelectSQL.Strings = (
      'SELECT * FROM E075LDC WHERE CODEMP = :CODEMP AND'
      '                            CODPRO = :CODPRO AND'
      '                            CODDER = :CODDER AND'
      '                            CODTEC = :CODTEC')
    ModifySQL.Strings = (
      'update E075LDC'
      'set'
      '  CODDER = :CODDER,'
      '  CODEMP = :CODEMP,'
      '  CODPRO = :CODPRO,'
      '  CODTEC = :CODTEC,'
      '  DESTEC = :DESTEC,'
      '  SITLIG = :SITLIG'
      'where'
      '  CODDER = :OLD_CODDER and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO and'
      '  CODTEC = :OLD_CODTEC')
    Left = 48
    Top = 480
    object CadE075LdcCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E075LDC"."CODEMP"'
      Required = True
    end
    object CadE075LdcCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E075LDC"."CODPRO"'
      Required = True
      Size = 14
    end
    object CadE075LdcCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"E075LDC"."CODDER"'
      Required = True
      Size = 7
    end
    object CadE075LdcCODTEC: TIBStringField
      FieldName = 'CODTEC'
      Origin = '"E075LDC"."CODTEC"'
      Required = True
      Size = 14
    end
    object CadE075LdcDESTEC: TIBStringField
      FieldName = 'DESTEC'
      Origin = '"E075LDC"."DESTEC"'
      Size = 100
    end
    object CadE075LdcSITLIG: TIBStringField
      FieldName = 'SITLIG'
      Origin = '"E075LDC"."SITLIG"'
      FixedChar = True
      Size = 1
    end
  end
  object ConsE120PedZ: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT CODEMP,CODFIL,NUMCON,NUMPED,CODREP'
      'FROM E120PED'
      'WHERE'
      'NUMPED = 0')
    Left = 408
    Top = 56
    object ConsE120PedZCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120PED"."CODEMP"'
      Required = True
    end
    object ConsE120PedZCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120PED"."CODFIL"'
      Required = True
    end
    object ConsE120PedZNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120PED"."NUMCON"'
    end
    object ConsE120PedZNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120PED"."NUMPED"'
    end
    object ConsE120PedZCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120PED"."CODREP"'
      Required = True
    end
  end
  object ConsObsPed: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      
        'SELECT E120OBS.CODEMP,E120OBS.CODFIL,E120OBS.NUMCON,E120OBS.CODR' +
        'EP,E120OBS.NUMPED,E120OBS.SEQOBS'
      'FROM E120OBS'
      'INNER JOIN E120PED ON E120PED.CODEMP = E120OBS.CODEMP AND'
      '                      E120PED.CODFIL = E120OBS.CODFIL AND'
      '                      E120PED.NUMCON = E120OBS.NUMCON'
      'WHERE'
      'E120PED.SITPED IN (1,2,3,6,7,8,9) AND'
      'E120OBS.NUMPED <> 0')
    Left = 408
    Top = 112
    object ConsObsPedCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120OBS"."CODEMP"'
      Required = True
    end
    object ConsObsPedCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120OBS"."CODFIL"'
      Required = True
    end
    object ConsObsPedNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120OBS"."NUMCON"'
    end
    object ConsObsPedCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120OBS"."CODREP"'
      Required = True
    end
    object ConsObsPedNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120OBS"."NUMPED"'
    end
    object ConsObsPedSEQOBS: TIntegerField
      FieldName = 'SEQOBS'
      Origin = '"E120OBS"."SEQOBS"'
    end
  end
  object AtuE120Obs: TIBSQL
    Database = Banco
    SQL.Strings = (
      'UPDATE E120OBS SET CODREP = :CODREP,'
      '                   OBSPED = :OBSPED,'
      '                   SITOBS = :SITOBS,'
      '                   OBSUSU = :OBSUSU,'
      '                   OBSDAT = :OBSDAT'
      'WHERE'
      'CODEMP = :CODEMP AND'
      'CODFIL = :CODFIL AND'
      'NUMPED = :NUMPED AND'
      'SEQOBS = :SEQOBS')
    Transaction = ibtTransacao
    Left = 408
    Top = 168
  end
  object ConsNumPed: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT E120PED.NUMPED'
      'FROM'
      'E120PED'
      'WHERE'
      'E120PED.NUMPED <> 0 AND'
      'E120PED.SITPED IN (1,2,3,6,7,8,9)'
      'ORDER BY E120PED.NUMPED')
    Left = 488
    Top = 112
    object ConsNumPedNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120PED"."NUMPED"'
    end
  end
  object AtuE120Ped: TIBSQL
    Database = Banco
    SQL.Strings = (
      'UPDATE E120PED SET CODREP = :CODREP,'
      '                   CODCLI = :CODCLI,'
      '                   TNSPRO = :TNSPRO,'
      '                   DATEMI = :DATEMI,'
      '                   CODCPG = :CODCPG,'
      '                   QTDORI = :QTDORI,'
      '                   QTDABE = :QTDABE,'
      '                   VLRBCO = :VLRBCO,'
      '                   VLRCOM = :VLRCOM,'
      '                   VLRLIQ = :VLRLIQ,'
      '                   VLRORI = :VLRORI,'
      '                   SITPED = :SITPED,'
      '                   USUGER = :USUGER,'
      '                   DATGER = :DATGER,'
      '                   PRECAR = :PRECAR'
      '    WHERE'
      '    CODEMP = :CODEMP AND'
      '    CODFIL = :CODFIL AND'
      '    NUMPED = :NUMPED')
    Transaction = ibtTransacao
    Left = 488
    Top = 168
  end
  object ConsProPed: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT CODEMP,CODFIL,NUMCON,NUMPED,SEQIPD'
      'FROM E120IPD'
      'WHERE'
      'SITIPD IN (1,2,3,6,7,8,9) AND'
      'NUMPED <> 0 AND'
      'CODEMP = :CODEMP AND'
      'CODFIL = :CODFIL '
      'ORDER BY SEQIPD')
    Left = 560
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFIL'
        ParamType = ptUnknown
      end>
    object ConsProPedCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120IPD"."CODEMP"'
      Required = True
    end
    object ConsProPedCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120IPD"."CODFIL"'
      Required = True
    end
    object ConsProPedNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120IPD"."NUMCON"'
    end
    object ConsProPedNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120IPD"."NUMPED"'
    end
    object ConsProPedSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      Origin = '"E120IPD"."SEQIPD"'
    end
  end
  object AtuE120Ipd: TIBSQL
    Database = Banco
    SQL.Strings = (
      'UPDATE E120IPD SET CODREP = :CODREP,'
      '                   TNSPRO = :TNSPRO,'
      '                   CODPRO = :CODPRO,'
      '                   CODDER = :CODDER,'
      '                   CODFAM = :CODFAM,'
      '                   CODDEP = :CODDEP,'
      '                   QTDPED = :QTDPED,'
      '                   QTDFAT = :QTDFAT,'
      '                   QTDCAN = :QTDCAN,'
      '                   QTDABE = :QTDABE,'
      '                   UNIMED = :UNIMED,'
      '                   CODTPR = :CODTPR,'
      '                   PREUNI = :PREUNI,'
      '                   PERCOM = :PERCOM,'
      '                   VLRBRU = :VLRBRU,'
      '                   VLRBCO = :VLRBCO,'
      '                   VLRCOM = :VLRCOM,'
      '                   VLRLPR = :VLRLPR,'
      '                   VLRLIQ = :VLRLIQ,'
      '                   SITIPD = :SITIPD,'
      '                   USUGER = :USUGER,'
      '                   DATGER = :DATGER,'
      '                   TOTDESC = :TOTDESC,'
      '                   VLRORI = :VLRORI'
      '   WHERE'
      '   CODEMP = :CODEMP AND'
      '   CODFIL = :CODFIL AND'
      '   NUMPED = :NUMPED AND'
      '   SEQIPD = :SEQIPD')
    Transaction = ibtTransacao
    Left = 560
    Top = 168
  end
  object ConsCoresPed: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      
        'SELECT USU120IPD.CODEMP,USU120IPD.CODFIL,USU120IPD.NUMCON,USU120' +
        'IPD.NUMPED,USU120IPD.CODREP,'
      '             USU120IPD.SEQIPD,USU120IPD.SEQITE'
      'FROM USU120IPD'
      'INNER JOIN E120IPD ON E120IPD.CODEMP = USU120IPD.CODEMP AND'
      '                      E120IPD.CODFIL = USU120IPD.CODFIL AND'
      '                      E120IPD.NUMCON = USU120IPD.NUMCON AND'
      '                      E120IPD.SEQIPD = USU120IPD.SEQIPD'
      'WHERE'
      'E120IPD.SITIPD IN (1,2,3,6,7,8,9) AND'
      'USU120IPD.NUMPED <> 0'
      '')
    Left = 632
    Top = 112
    object ConsCoresPedCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"USU120IPD"."CODEMP"'
      Required = True
    end
    object ConsCoresPedCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"USU120IPD"."CODFIL"'
      Required = True
    end
    object ConsCoresPedNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"USU120IPD"."NUMCON"'
    end
    object ConsCoresPedNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"USU120IPD"."NUMPED"'
    end
    object ConsCoresPedCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"USU120IPD"."CODREP"'
      Required = True
    end
    object ConsCoresPedSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      Origin = '"USU120IPD"."SEQIPD"'
    end
    object ConsCoresPedSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = '"USU120IPD"."SEQITE"'
    end
  end
  object AtuUsu120Ipd: TIBSQL
    Database = Banco
    SQL.Strings = (
      'UPDATE USU120IPD SET QTDCOR = :QTDCOR,'
      '                     QTDABE = :QTDABE,'
      '                     QTDCAN = :QTDCAN,'
      '                     TIPCMB = :TIPCMB,'
      '                     COR001 = :COR001,'
      '                     COR002 = :COR002,'
      '                     CODPRO = :CODPRO,'
      '                     CODDER = :CODDER,'
      '                     TECTRA = :TECTRA,'
      '                     PRECAR = :PRECAR'
      ' WHERE'
      ' CODEMP = :CODEMP AND'
      ' CODFIL = :CODFIL AND'
      ' NUMPED = :NUMPED AND'
      ' SEQIPD = :SEQIPD AND'
      ' SEQITE = :SEQITE')
    Transaction = ibtTransacao
    Left = 632
    Top = 168
  end
  object CadE120Ped: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
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
      
        '   NUMCON, NUMPED, PEDCON, PEDENV, PEDPRO, PRECAR, QTDABE, QTDOR' +
        'I, SITPED, '
      
        '   TNSPRO, USUCON, USUGER, VLRBCO, VLRBIC, VLRBIP, VLRCOM, VLRIC' +
        'M, VLRIPI, '
      '   VLRLIQ, VLRORI)'
      'values'
      
        '  (:CODCLI, :CODCPG, :CODEMP, :CODFIL, :CODREP, :DATCON, :DATEMI' +
        ', :DATENV, '
      
        '   :DATGER, :NUMCON, :NUMPED, :PEDCON, :PEDENV, :PEDPRO, :PRECAR' +
        ', :QTDABE, '
      
        '   :QTDORI, :SITPED, :TNSPRO, :USUCON, :USUGER, :VLRBCO, :VLRBIC' +
        ', :VLRBIP, '
      '   :VLRCOM, :VLRICM, :VLRIPI, :VLRLIQ, :VLRORI)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMCON,'
      '  NUMPED,'
      '  CODREP,'
      '  CODCLI,'
      '  TNSPRO,'
      '  DATEMI,'
      '  CODCPG,'
      '  QTDORI,'
      '  QTDABE,'
      '  VLRBIP,'
      '  VLRIPI,'
      '  VLRBIC,'
      '  VLRICM,'
      '  VLRBCO,'
      '  VLRCOM,'
      '  VLRLIQ,'
      '  VLRORI,'
      '  SITPED,'
      '  USUGER,'
      '  DATGER,'
      '  PEDENV,'
      '  DATENV,'
      '  PEDCON,'
      '  DATCON,'
      '  USUCON,'
      '  PRECAR,'
      '  PEDPRO'
      'from E120PED '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL and'
      '  NUMCON = :NUMCON')
    SelectSQL.Strings = (
      'SELECT * FROM E120PED'
      'WHERE'
      'CODEMP = :CODEMP AND'
      'CODFIL = :CODFIL AND'
      'NUMCON = :NUMCON')
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
      '  PEDPRO = :PEDPRO,'
      '  PRECAR = :PRECAR,'
      '  QTDABE = :QTDABE,'
      '  QTDORI = :QTDORI,'
      '  SITPED = :SITPED,'
      '  TNSPRO = :TNSPRO,'
      '  USUCON = :USUCON,'
      '  USUGER = :USUGER,'
      '  VLRBCO = :VLRBCO,'
      '  VLRBIC = :VLRBIC,'
      '  VLRBIP = :VLRBIP,'
      '  VLRCOM = :VLRCOM,'
      '  VLRICM = :VLRICM,'
      '  VLRIPI = :VLRIPI,'
      '  VLRLIQ = :VLRLIQ,'
      '  VLRORI = :VLRORI'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  NUMCON = :OLD_NUMCON')
    Left = 488
    Top = 224
    object CadE120PedCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120PED"."CODEMP"'
      Required = True
    end
    object CadE120PedCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120PED"."CODFIL"'
      Required = True
    end
    object CadE120PedNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120PED"."NUMCON"'
    end
    object CadE120PedNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120PED"."NUMPED"'
    end
    object CadE120PedCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120PED"."CODREP"'
      Required = True
    end
    object CadE120PedCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"E120PED"."CODCLI"'
    end
    object CadE120PedTNSPRO: TIBStringField
      FieldName = 'TNSPRO'
      Origin = '"E120PED"."TNSPRO"'
      Required = True
      Size = 5
    end
    object CadE120PedDATEMI: TDateField
      FieldName = 'DATEMI'
      Origin = '"E120PED"."DATEMI"'
    end
    object CadE120PedCODCPG: TIBStringField
      FieldName = 'CODCPG'
      Origin = '"E120PED"."CODCPG"'
      Size = 6
    end
    object CadE120PedQTDORI: TFloatField
      FieldName = 'QTDORI'
      Origin = '"E120PED"."QTDORI"'
    end
    object CadE120PedQTDABE: TFloatField
      FieldName = 'QTDABE'
      Origin = '"E120PED"."QTDABE"'
    end
    object CadE120PedVLRBIP: TFloatField
      FieldName = 'VLRBIP'
      Origin = '"E120PED"."VLRBIP"'
    end
    object CadE120PedVLRIPI: TFloatField
      FieldName = 'VLRIPI'
      Origin = '"E120PED"."VLRIPI"'
    end
    object CadE120PedVLRBIC: TFloatField
      FieldName = 'VLRBIC'
      Origin = '"E120PED"."VLRBIC"'
    end
    object CadE120PedVLRICM: TFloatField
      FieldName = 'VLRICM'
      Origin = '"E120PED"."VLRICM"'
    end
    object CadE120PedVLRBCO: TFloatField
      FieldName = 'VLRBCO'
      Origin = '"E120PED"."VLRBCO"'
    end
    object CadE120PedVLRCOM: TFloatField
      FieldName = 'VLRCOM'
      Origin = '"E120PED"."VLRCOM"'
    end
    object CadE120PedVLRLIQ: TFloatField
      FieldName = 'VLRLIQ'
      Origin = '"E120PED"."VLRLIQ"'
    end
    object CadE120PedVLRORI: TFloatField
      FieldName = 'VLRORI'
      Origin = '"E120PED"."VLRORI"'
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
    object CadE120PedPRECAR: TIntegerField
      FieldName = 'PRECAR'
      Origin = '"E120PED"."PRECAR"'
    end
    object CadE120PedPEDPRO: TIBStringField
      FieldName = 'PEDPRO'
      Origin = '"E120PED"."PEDPRO"'
      FixedChar = True
      Size = 1
    end
  end
  object ConsSql: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    Left = 280
    Top = 88
  end
  object UltimaFaixaNumCon: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      
        'SELECT MAX(NCFI) AS ULTIMA_I, MAX(NCFE) AS ULTIMA_E FROM E100USU' +
        ' ')
    Left = 488
    Top = 280
    object UltimaFaixaNumConULTIMA_I: TIntegerField
      FieldName = 'ULTIMA_I'
      ProviderFlags = []
    end
    object UltimaFaixaNumConULTIMA_E: TIntegerField
      FieldName = 'ULTIMA_E'
      ProviderFlags = []
    end
  end
  object CadE100Usu: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E100USU'
      'where'
      '  CODREP = :OLD_CODREP')
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
      '  CODREP = :CODREP')
    SelectSQL.Strings = (
      'SELECT * FROM E100USU WHERE'
      'CODREP = :CODREP')
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
      '  CODREP = :OLD_CODREP')
    Left = 240
    Top = 24
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
  object CadE120Ipd: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E120IPD'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD')
    InsertSQL.Strings = (
      'insert into E120IPD'
      
        '  (CODDEP, CODDER, CODEMP, CODFAM, CODFIL, CODPRO, CODREP, CODTP' +
        'R, CORES, '
      
        '   CORGRID, DATEMI, DATENT, DATGER, NUMCON, NUMPED, PERCOM, PERI' +
        'CM, PERIPI, '
      
        '   PREUNI, QTDABE, QTDCAN, QTDFAT, QTDPED, SEQIPD, SITIPD, TNSPR' +
        'O, TOTDESC, '
      
        '   UNIMED, USUGER, VLRBCO, VLRBIC, VLRBIP, VLRBRU, VLRBSI, VLRCO' +
        'M, VLRICM, '
      '   VLRICS, VLRIPI, VLRLIQ, VLRLPR, VLRORI)'
      'values'
      
        '  (:CODDEP, :CODDER, :CODEMP, :CODFAM, :CODFIL, :CODPRO, :CODREP' +
        ', :CODTPR, '
      
        '   :CORES, :CORGRID, :DATEMI, :DATENT, :DATGER, :NUMCON, :NUMPED' +
        ', :PERCOM, '
      
        '   :PERICM, :PERIPI, :PREUNI, :QTDABE, :QTDCAN, :QTDFAT, :QTDPED' +
        ', :SEQIPD, '
      
        '   :SITIPD, :TNSPRO, :TOTDESC, :UNIMED, :USUGER, :VLRBCO, :VLRBI' +
        'C, :VLRBIP, '
      
        '   :VLRBRU, :VLRBSI, :VLRCOM, :VLRICM, :VLRICS, :VLRIPI, :VLRLIQ' +
        ', :VLRLPR, '
      '   :VLRORI)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODFIL,'
      '  NUMPED,'
      '  NUMCON,'
      '  CODREP,'
      '  SEQIPD,'
      '  TNSPRO,'
      '  CODPRO,'
      '  CODDER,'
      '  CODFAM,'
      '  CODDEP,'
      '  QTDPED,'
      '  QTDFAT,'
      '  QTDCAN,'
      '  QTDABE,'
      '  UNIMED,'
      '  CODTPR,'
      '  PREUNI,'
      '  PERIPI,'
      '  PERICM,'
      '  PERCOM,'
      '  VLRBRU,'
      '  VLRBIP,'
      '  VLRIPI,'
      '  VLRBIC,'
      '  VLRICM,'
      '  VLRBSI,'
      '  VLRICS,'
      '  VLRBCO,'
      '  VLRCOM,'
      '  VLRLPR,'
      '  VLRLIQ,'
      '  SITIPD,'
      '  USUGER,'
      '  DATGER,'
      '  TOTDESC,'
      '  VLRORI,'
      '  DATEMI,'
      '  DATENT,'
      '  CORGRID,'
      '  CORES'
      'from E120IPD '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL and'
      '  NUMCON = :NUMCON and'
      '  SEQIPD = :SEQIPD')
    SelectSQL.Strings = (
      'SELECT * FROM E120IPD'
      'WHERE'
      'CODEMP = :CODEMP AND'
      'CODFIL = :CODFIL AND'
      'NUMCON = :NUMCON AND'
      'SEQIPD = :SEQIPD')
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
      '  CORES = :CORES,'
      '  CORGRID = :CORGRID,'
      '  DATEMI = :DATEMI,'
      '  DATENT = :DATENT,'
      '  DATGER = :DATGER,'
      '  NUMCON = :NUMCON,'
      '  NUMPED = :NUMPED,'
      '  PERCOM = :PERCOM,'
      '  PERICM = :PERICM,'
      '  PERIPI = :PERIPI,'
      '  PREUNI = :PREUNI,'
      '  QTDABE = :QTDABE,'
      '  QTDCAN = :QTDCAN,'
      '  QTDFAT = :QTDFAT,'
      '  QTDPED = :QTDPED,'
      '  SEQIPD = :SEQIPD,'
      '  SITIPD = :SITIPD,'
      '  TNSPRO = :TNSPRO,'
      '  TOTDESC = :TOTDESC,'
      '  UNIMED = :UNIMED,'
      '  USUGER = :USUGER,'
      '  VLRBCO = :VLRBCO,'
      '  VLRBIC = :VLRBIC,'
      '  VLRBIP = :VLRBIP,'
      '  VLRBRU = :VLRBRU,'
      '  VLRBSI = :VLRBSI,'
      '  VLRCOM = :VLRCOM,'
      '  VLRICM = :VLRICM,'
      '  VLRICS = :VLRICS,'
      '  VLRIPI = :VLRIPI,'
      '  VLRLIQ = :VLRLIQ,'
      '  VLRLPR = :VLRLPR,'
      '  VLRORI = :VLRORI'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD')
    Left = 560
    Top = 224
    object CadE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120IPD"."CODEMP"'
      Required = True
    end
    object CadE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120IPD"."CODFIL"'
      Required = True
    end
    object CadE120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120IPD"."NUMPED"'
    end
    object CadE120IpdNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120IPD"."NUMCON"'
    end
    object CadE120IpdCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120IPD"."CODREP"'
      Required = True
    end
    object CadE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      Origin = '"E120IPD"."SEQIPD"'
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
    object CadE120IpdQTDFAT: TIntegerField
      FieldName = 'QTDFAT'
      Origin = '"E120IPD"."QTDFAT"'
    end
    object CadE120IpdQTDCAN: TIntegerField
      FieldName = 'QTDCAN'
      Origin = '"E120IPD"."QTDCAN"'
    end
    object CadE120IpdQTDABE: TIntegerField
      FieldName = 'QTDABE'
      Origin = '"E120IPD"."QTDABE"'
    end
    object CadE120IpdUNIMED: TIBStringField
      FieldName = 'UNIMED'
      Origin = '"E120IPD"."UNIMED"'
      Size = 3
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
    object CadE120IpdPERIPI: TFloatField
      FieldName = 'PERIPI'
      Origin = '"E120IPD"."PERIPI"'
    end
    object CadE120IpdPERICM: TFloatField
      FieldName = 'PERICM'
      Origin = '"E120IPD"."PERICM"'
    end
    object CadE120IpdPERCOM: TFloatField
      FieldName = 'PERCOM'
      Origin = '"E120IPD"."PERCOM"'
    end
    object CadE120IpdVLRBRU: TFloatField
      FieldName = 'VLRBRU'
      Origin = '"E120IPD"."VLRBRU"'
    end
    object CadE120IpdVLRBIP: TFloatField
      FieldName = 'VLRBIP'
      Origin = '"E120IPD"."VLRBIP"'
    end
    object CadE120IpdVLRIPI: TFloatField
      FieldName = 'VLRIPI'
      Origin = '"E120IPD"."VLRIPI"'
    end
    object CadE120IpdVLRBIC: TFloatField
      FieldName = 'VLRBIC'
      Origin = '"E120IPD"."VLRBIC"'
    end
    object CadE120IpdVLRICM: TFloatField
      FieldName = 'VLRICM'
      Origin = '"E120IPD"."VLRICM"'
    end
    object CadE120IpdVLRBSI: TFloatField
      FieldName = 'VLRBSI'
      Origin = '"E120IPD"."VLRBSI"'
    end
    object CadE120IpdVLRICS: TFloatField
      FieldName = 'VLRICS'
      Origin = '"E120IPD"."VLRICS"'
    end
    object CadE120IpdVLRBCO: TFloatField
      FieldName = 'VLRBCO'
      Origin = '"E120IPD"."VLRBCO"'
    end
    object CadE120IpdVLRCOM: TFloatField
      FieldName = 'VLRCOM'
      Origin = '"E120IPD"."VLRCOM"'
    end
    object CadE120IpdVLRLPR: TFloatField
      FieldName = 'VLRLPR'
      Origin = '"E120IPD"."VLRLPR"'
    end
    object CadE120IpdVLRLIQ: TFloatField
      FieldName = 'VLRLIQ'
      Origin = '"E120IPD"."VLRLIQ"'
    end
    object CadE120IpdSITIPD: TIBStringField
      FieldName = 'SITIPD'
      Origin = '"E120IPD"."SITIPD"'
      FixedChar = True
      Size = 1
    end
    object CadE120IpdUSUGER: TIntegerField
      FieldName = 'USUGER'
      Origin = '"E120IPD"."USUGER"'
    end
    object CadE120IpdDATGER: TDateField
      FieldName = 'DATGER'
      Origin = '"E120IPD"."DATGER"'
    end
    object CadE120IpdTOTDESC: TFloatField
      FieldName = 'TOTDESC'
      Origin = '"E120IPD"."TOTDESC"'
    end
    object CadE120IpdVLRORI: TFloatField
      FieldName = 'VLRORI'
      Origin = '"E120IPD"."VLRORI"'
    end
    object CadE120IpdDATEMI: TDateField
      FieldName = 'DATEMI'
      Origin = '"E120IPD"."DATEMI"'
    end
    object CadE120IpdDATENT: TDateField
      FieldName = 'DATENT'
      Origin = '"E120IPD"."DATENT"'
    end
    object CadE120IpdCORGRID: TIBStringField
      FieldName = 'CORGRID'
      Origin = '"E120IPD"."CORGRID"'
      Size = 30
    end
    object CadE120IpdCORES: TIBStringField
      FieldName = 'CORES'
      Origin = '"E120IPD"."CORES"'
      Size = 400
    end
  end
  object CadUsu120Ipd: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
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
      '  NUMCON = :NUMCON and'
      '  SEQIPD = :SEQIPD and'
      '  SEQITE = :SEQITE')
    SelectSQL.Strings = (
      'SELECT * FROM USU120IPD WHERE'
      'CODEMP = :CODEMP AND'
      'CODFIL = :CODFIL AND'
      'NUMCON = :NUMCON AND'
      'SEQIPD = :SEQIPD AND'
      'SEQITE = :SEQITE')
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
      '  NUMCON = :OLD_NUMCON and'
      '  SEQIPD = :OLD_SEQIPD and'
      '  SEQITE = :OLD_SEQITE')
    Left = 640
    Top = 224
    object CadUsu120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"USU120IPD"."CODEMP"'
      Required = True
    end
    object CadUsu120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"USU120IPD"."CODFIL"'
      Required = True
    end
    object CadUsu120IpdNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"USU120IPD"."NUMCON"'
    end
    object CadUsu120IpdCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"USU120IPD"."CODREP"'
      Required = True
    end
    object CadUsu120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      Origin = '"USU120IPD"."SEQIPD"'
    end
    object CadUsu120IpdSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = '"USU120IPD"."SEQITE"'
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
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from E120OBS'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODFIL = :OLD_CODFIL and'
      '  NUMCON = :OLD_NUMCON and'
      '  SEQOBS = :OLD_SEQOBS')
    InsertSQL.Strings = (
      'insert into E120OBS'
      
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
      'from E120OBS '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODFIL = :CODFIL and'
      '  NUMCON = :NUMCON and'
      '  SEQOBS = :SEQOBS')
    SelectSQL.Strings = (
      'SELECT * FROM E120OBS'
      'WHERE'
      'CODEMP = :CODEMP AND'
      'CODFIL = :CODFIL AND'
      'NUMCON = :NUMCON AND'
      'SEQOBS = :SEQOBS')
    ModifySQL.Strings = (
      'update E120OBS'
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
      '  NUMCON = :OLD_NUMCON and'
      '  SEQOBS = :OLD_SEQOBS')
    Left = 408
    Top = 224
    object CadE120ObsCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120OBS"."CODEMP"'
      Required = True
    end
    object CadE120ObsCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120OBS"."CODFIL"'
      Required = True
    end
    object CadE120ObsNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120OBS"."NUMCON"'
    end
    object CadE120ObsCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120OBS"."CODREP"'
      Required = True
    end
    object CadE120ObsSEQOBS: TIntegerField
      FieldName = 'SEQOBS'
      Origin = '"E120OBS"."SEQOBS"'
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
  object ConsE120IpdTeste: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'select * from E120IPD'
      'WHERE'
      'SITIPD IN (1,2,3,6,7,8,9) AND'
      'NUMPED <> 0 AND'
      'CODEMP = :CODEMP AND'
      'CODFIL = :CODFIL '
      'ORDER BY SEQIPD'
      '')
    Left = 792
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFIL'
        ParamType = ptUnknown
      end>
    object ConsE120IpdTesteCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E120IPD"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120IpdTesteCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = '"E120IPD"."CODFIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120IpdTesteNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = '"E120IPD"."NUMPED"'
    end
    object ConsE120IpdTesteNUMCON: TIntegerField
      FieldName = 'NUMCON'
      Origin = '"E120IPD"."NUMCON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120IpdTesteCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120IPD"."CODREP"'
      Required = True
    end
    object ConsE120IpdTesteSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      Origin = '"E120IPD"."SEQIPD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE120IpdTesteTNSPRO: TIBStringField
      FieldName = 'TNSPRO'
      Origin = '"E120IPD"."TNSPRO"'
      Size = 5
    end
    object ConsE120IpdTesteCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E120IPD"."CODPRO"'
      Size = 14
    end
    object ConsE120IpdTesteCODDER: TIBStringField
      FieldName = 'CODDER'
      Origin = '"E120IPD"."CODDER"'
      Size = 7
    end
    object ConsE120IpdTesteCODFAM: TIBStringField
      FieldName = 'CODFAM'
      Origin = '"E120IPD"."CODFAM"'
      Size = 6
    end
    object ConsE120IpdTesteCODDEP: TIBStringField
      FieldName = 'CODDEP'
      Origin = '"E120IPD"."CODDEP"'
      Size = 10
    end
    object ConsE120IpdTesteQTDPED: TIntegerField
      FieldName = 'QTDPED'
      Origin = '"E120IPD"."QTDPED"'
    end
    object ConsE120IpdTesteQTDFAT: TIntegerField
      FieldName = 'QTDFAT'
      Origin = '"E120IPD"."QTDFAT"'
    end
    object ConsE120IpdTesteQTDCAN: TIntegerField
      FieldName = 'QTDCAN'
      Origin = '"E120IPD"."QTDCAN"'
    end
    object ConsE120IpdTesteQTDABE: TIntegerField
      FieldName = 'QTDABE'
      Origin = '"E120IPD"."QTDABE"'
    end
    object ConsE120IpdTesteUNIMED: TIBStringField
      FieldName = 'UNIMED'
      Origin = '"E120IPD"."UNIMED"'
      Size = 3
    end
    object ConsE120IpdTesteCODTPR: TIBStringField
      FieldName = 'CODTPR'
      Origin = '"E120IPD"."CODTPR"'
      Size = 4
    end
    object ConsE120IpdTestePREUNI: TFloatField
      FieldName = 'PREUNI'
      Origin = '"E120IPD"."PREUNI"'
    end
    object ConsE120IpdTestePERIPI: TFloatField
      FieldName = 'PERIPI'
      Origin = '"E120IPD"."PERIPI"'
    end
    object ConsE120IpdTestePERICM: TFloatField
      FieldName = 'PERICM'
      Origin = '"E120IPD"."PERICM"'
    end
    object ConsE120IpdTestePERCOM: TFloatField
      FieldName = 'PERCOM'
      Origin = '"E120IPD"."PERCOM"'
    end
    object ConsE120IpdTesteVLRBRU: TFloatField
      FieldName = 'VLRBRU'
      Origin = '"E120IPD"."VLRBRU"'
    end
    object ConsE120IpdTesteVLRBIP: TFloatField
      FieldName = 'VLRBIP'
      Origin = '"E120IPD"."VLRBIP"'
    end
    object ConsE120IpdTesteVLRIPI: TFloatField
      FieldName = 'VLRIPI'
      Origin = '"E120IPD"."VLRIPI"'
    end
    object ConsE120IpdTesteVLRBIC: TFloatField
      FieldName = 'VLRBIC'
      Origin = '"E120IPD"."VLRBIC"'
    end
    object ConsE120IpdTesteVLRICM: TFloatField
      FieldName = 'VLRICM'
      Origin = '"E120IPD"."VLRICM"'
    end
    object ConsE120IpdTesteVLRBSI: TFloatField
      FieldName = 'VLRBSI'
      Origin = '"E120IPD"."VLRBSI"'
    end
    object ConsE120IpdTesteVLRICS: TFloatField
      FieldName = 'VLRICS'
      Origin = '"E120IPD"."VLRICS"'
    end
    object ConsE120IpdTesteVLRBCO: TFloatField
      FieldName = 'VLRBCO'
      Origin = '"E120IPD"."VLRBCO"'
    end
    object ConsE120IpdTesteVLRCOM: TFloatField
      FieldName = 'VLRCOM'
      Origin = '"E120IPD"."VLRCOM"'
    end
    object ConsE120IpdTesteVLRLPR: TFloatField
      FieldName = 'VLRLPR'
      Origin = '"E120IPD"."VLRLPR"'
    end
    object ConsE120IpdTesteVLRLIQ: TFloatField
      FieldName = 'VLRLIQ'
      Origin = '"E120IPD"."VLRLIQ"'
    end
    object ConsE120IpdTesteSITIPD: TIBStringField
      FieldName = 'SITIPD'
      Origin = '"E120IPD"."SITIPD"'
      FixedChar = True
      Size = 1
    end
    object ConsE120IpdTesteUSUGER: TIntegerField
      FieldName = 'USUGER'
      Origin = '"E120IPD"."USUGER"'
    end
    object ConsE120IpdTesteDATGER: TDateField
      FieldName = 'DATGER'
      Origin = '"E120IPD"."DATGER"'
    end
    object ConsE120IpdTesteTOTDESC: TFloatField
      FieldName = 'TOTDESC'
      Origin = '"E120IPD"."TOTDESC"'
    end
    object ConsE120IpdTesteVLRORI: TFloatField
      FieldName = 'VLRORI'
      Origin = '"E120IPD"."VLRORI"'
    end
    object ConsE120IpdTesteDATEMI: TDateField
      FieldName = 'DATEMI'
      Origin = '"E120IPD"."DATEMI"'
    end
    object ConsE120IpdTesteDATENT: TDateField
      FieldName = 'DATENT'
      Origin = '"E120IPD"."DATENT"'
    end
    object ConsE120IpdTesteCORGRID: TIBStringField
      FieldName = 'CORGRID'
      Origin = '"E120IPD"."CORGRID"'
      Size = 30
    end
    object ConsE120IpdTesteCORES: TIBStringField
      FieldName = 'CORES'
      Origin = '"E120IPD"."CORES"'
      Size = 400
    end
  end
end
