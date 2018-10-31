object DmOra: TDmOra
  OldCreateOrder = False
  Height = 1361
  Width = 1441
  object ADOBanco: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDAORA.1;Password=saplider;User ID=saplider;Data Sourc' +
      'e=liderlar;Persist Security Info=True'
    LoginPrompt = False
    Provider = 'MSDAORA.1'
    Left = 32
    Top = 16
  end
  object ConsE028Cpg: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select codemp,codcpg,descpg,abrcpg,przmed,qtdpar,percom from e02' +
        '8cpg order by codcpg')
    Left = 144
    Top = 64
    object ConsE028CpgCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE028CpgCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsE028CpgDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ConsE028CpgABRCPG: TStringField
      FieldName = 'ABRCPG'
      Size = 10
    end
    object ConsE028CpgPRZMED: TIntegerField
      FieldName = 'PRZMED'
    end
    object ConsE028CpgQTDPAR: TIntegerField
      FieldName = 'QTDPAR'
    end
    object ConsE028CpgPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
  end
  object ConsE075Pro: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select e075pro.codemp,e075pro.codpro,e075pro.despro,e075pro.codf' +
        'am,e075pro.codagp,e075pro.sitpro'
      '                            from e075pro'
      '                            where codori = 01'
      '                            order by codfam,codpro')
    Left = 64
    Top = 120
    object ConsE075ProCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE075ProCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE075ProDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsE075ProCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE075ProSITPRO: TStringField
      FieldName = 'SITPRO'
      Size = 1
    end
    object ConsE075ProCODAGP: TStringField
      FieldName = 'CODAGP'
      Size = 5
    end
  end
  object ConsE075Der: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select e075der.codemp,e075der.codpro,e075der.codder,e075der.desd' +
        'er,e075der.pesbru,e075der.pesliq,'
      
        '       e075der.volder,e075der.sitder,e075der.usu_coruni,e075der.' +
        'usu_cmp1bb,e075der.usu_cmp1ae,'
      '       e075der.usu_cmp2bb,e075der.usu_cmp2en'
      '       from e075der'
      'inner join e075pro on e075pro.codemp = e075der.codemp and'
      '                      e075pro.codpro = e075der.codpro and'
      '                      e075pro.codori = 01'
      '                      order by e075pro.codfam,e075der.codpro')
    Left = 144
    Top = 120
    object ConsE075DerCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE075DerCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE075DerCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE075DerDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
    object ConsE075DerPESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 11
      Size = 5
    end
    object ConsE075DerPESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 11
      Size = 5
    end
    object ConsE075DerVOLDER: TFMTBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object ConsE075DerSITDER: TStringField
      FieldName = 'SITDER'
      Size = 1
    end
    object ConsE075DerUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object ConsE075DerUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object ConsE075DerUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object ConsE075DerUSU_CMP2BB: TBCDField
      FieldName = 'USU_CMP2BB'
      Precision = 8
      Size = 2
    end
    object ConsE075DerUSU_CMP2EN: TBCDField
      FieldName = 'USU_CMP2EN'
      Precision = 8
      Size = 2
    end
  end
  object ConsE075Cor: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select codemp,codpro,despro,sitpro from e075pro'
      
        '              where codfam in ('#39'1001'#39','#39'1002'#39','#39'1003'#39','#39'1004'#39','#39'1006' +
        #39','#39'1007'#39')'
      '              order by codpro')
    Left = 224
    Top = 120
    object ConsE075CorCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE075CorCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE075CorDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsE075CorSITPRO: TStringField
      FieldName = 'SITPRO'
      Size = 1
    end
  end
  object ConsUsu_TDerCor: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * from usu_tdercor order by usu_codpro,usu_codder')
    Left = 312
    Top = 120
    object ConsUsu_TDerCorUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_TDerCorUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TDerCorUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TDerCorUSU_CODTEC: TStringField
      FieldName = 'USU_CODTEC'
      Size = 14
    end
    object ConsUsu_TDerCorUSU_SITTEC: TStringField
      FieldName = 'USU_SITTEC'
      Size = 1
    end
    object ConsUsu_TDerCorUSU_DESTEC: TStringField
      FieldName = 'USU_DESTEC'
      Size = 50
    end
  end
  object ConsE081Itp: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'datini'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'datfim'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'codtpr'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e081itp.*,e075pro.despro from e081itp'
      'inner join e081tpr on e081tpr.codemp = e081itp.codemp and'
      '                      e081tpr.codtpr = e081itp.codtpr and'
      '                      e081tpr.datini = e081itp.datini'
      'inner join e075pro on e075pro.codemp = e081itp.codemp and'
      '                      e075pro.codpro = e081itp.codpro'
      '                      where'
      '                      e081tpr.datini = :datini and'
      '                      e081tpr.datfim = :datfim and'
      '                      e081tpr.codtpr = :codtpr')
    Left = 64
    Top = 184
    object ConsE081ItpCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE081ItpCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE081ItpDATINI: TDateTimeField
      FieldName = 'DATINI'
    end
    object ConsE081ItpCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE081ItpCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE081ItpQTDMAX: TBCDField
      FieldName = 'QTDMAX'
      Precision = 11
      Size = 2
    end
    object ConsE081ItpPREBAS: TFMTBCDField
      FieldName = 'PREBAS'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE081ItpPERLIM: TBCDField
      FieldName = 'PERLIM'
      Precision = 5
      Size = 2
    end
    object ConsE081ItpPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE081ItpTOLMAI: TBCDField
      FieldName = 'TOLMAI'
      Precision = 5
      Size = 2
    end
    object ConsE081ItpTOLMEN: TBCDField
      FieldName = 'TOLMEN'
      Precision = 5
      Size = 2
    end
    object ConsE081ItpSITREG: TStringField
      FieldName = 'SITREG'
      Size = 1
    end
    object ConsE081ItpINDEXC: TStringField
      FieldName = 'INDEXC'
      Size = 1
    end
    object ConsE081ItpINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsE081ItpDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsE081ItpHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsE081ItpDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE081ItpHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE081ItpUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE081ItpDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ConsE081ItpHORALT: TIntegerField
      FieldName = 'HORALT'
    end
    object ConsE081ItpUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object ConsE081ItpPROEXT: TStringField
      FieldName = 'PROEXT'
      Size = 30
    end
    object ConsE081ItpPREMT2: TFMTBCDField
      FieldName = 'PREMT2'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpVLRCMO: TFMTBCDField
      FieldName = 'VLRCMO'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpVLRCTE: TFMTBCDField
      FieldName = 'VLRCTE'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpVLRCPR: TFMTBCDField
      FieldName = 'VLRCPR'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpPREORC: TFMTBCDField
      FieldName = 'PREORC'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpDATORC: TDateTimeField
      FieldName = 'DATORC'
    end
    object ConsE081ItpCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE081ItpCODPRB: TStringField
      FieldName = 'CODPRB'
      Size = 14
    end
    object ConsE081ItpVLTMAI: TFMTBCDField
      FieldName = 'VLTMAI'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpVLTMEN: TFMTBCDField
      FieldName = 'VLTMEN'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpOBSITP: TStringField
      FieldName = 'OBSITP'
      Size = 99
    end
    object ConsE081ItpDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object ConsE085Cli_E085Rep: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'data'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'data'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'codcli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select (select sum(e301tcr.vlrabe)  from e301tcr where'
      '                       e301tcr.sittit in ('#39'AB'#39','#39'AC'#39')and'
      '                       e301tcr.vctpro < :data and'
      
        '                       e301tcr.codcli = e085cli.codcli) as VlrVe' +
        'n ,'
      'e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.cgccpf,'
      
        '       e085cli.endcli,e085cli.nencli,e085cli.baicli,e085cli.cple' +
        'nd,'
      '       e085cli.cidcli,e085cli.sigufs,e085cli.foncli,'
      '       e085hcl.codrep,e090rep.nomrep,e090rep.aperep,'
      '       (select sum(e301tcr.vlrabe)  from e301tcr where'
      '                       e301tcr.sittit in ('#39'AB'#39','#39'AC'#39')and'
      '                       e301tcr.vctpro > :data and'
      
        '                       e301tcr.codcli = e085cli.codcli) as VlrAV' +
        'en'
      '                                                      from'
      '                                                      e085cli'
      'inner join e085hcl on e085hcl.codcli = e085cli.codcli'
      'inner join e090rep on e090rep.codrep = e085hcl.codrep'
      '                                                      where'
      
        '                                                      e085cli.co' +
        'dcli = :codcli and'
      
        '                                                      e085hcl.co' +
        'dfil = 1')
    Left = 64
    Top = 232
    object ConsE085Cli_E085RepVLRVEN: TFMTBCDField
      FieldName = 'VLRVEN'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ConsE085Cli_E085RepCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE085Cli_E085RepNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsE085Cli_E085RepAPECLI: TStringField
      FieldName = 'APECLI'
      Size = 50
    end
    object ConsE085Cli_E085RepCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
    object ConsE085Cli_E085RepENDCLI: TStringField
      FieldName = 'ENDCLI'
      Size = 100
    end
    object ConsE085Cli_E085RepNENCLI: TStringField
      FieldName = 'NENCLI'
      Size = 60
    end
    object ConsE085Cli_E085RepBAICLI: TStringField
      FieldName = 'BAICLI'
      Size = 75
    end
    object ConsE085Cli_E085RepCPLEND: TStringField
      FieldName = 'CPLEND'
      Size = 60
    end
    object ConsE085Cli_E085RepCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsE085Cli_E085RepSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsE085Cli_E085RepFONCLI: TStringField
      FieldName = 'FONCLI'
    end
    object ConsE085Cli_E085RepCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE085Cli_E085RepNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ConsE085Cli_E085RepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ConsE085Cli_E085RepVLRAVEN: TFMTBCDField
      FieldName = 'VLRAVEN'
      DisplayFormat = ',0.00'
      EditFormat = ',0.000'
      Precision = 38
      Size = 0
    end
  end
  object ConsUsu_E085Mac: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codcli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_t085mac.*,r999usu.nomusu'
      '                   from usu_t085mac'
      'inner join r999usu on r999usu.codusu = usu_t085mac.usu_usucad'
      '                     where'
      '                     usu_codcli = :codcli')
    Left = 64
    Top = 280
    object ConsUsu_E085MacUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object ConsUsu_E085MacUSU_NUMMEN: TIntegerField
      FieldName = 'USU_NUMMEN'
    end
    object ConsUsu_E085MacUSU_MENSAG: TStringField
      FieldName = 'USU_MENSAG'
      Size = 600
    end
    object ConsUsu_E085MacUSU_DATCAD: TDateTimeField
      FieldName = 'USU_DATCAD'
    end
    object ConsUsu_E085MacUSU_HORMEN: TIntegerField
      FieldName = 'USU_HORMEN'
    end
    object ConsUsu_E085MacUSU_USUCAD: TIntegerField
      FieldName = 'USU_USUCAD'
    end
    object ConsUsu_E085MacUSU_DATALE: TDateTimeField
      FieldName = 'USU_DATALE'
    end
    object ConsUsu_E085MacUSU_MENRES: TStringField
      FieldName = 'USU_MENRES'
      Size = 1
    end
    object ConsUsu_E085MacNOMUSU: TStringField
      FieldName = 'NOMUSU'
      Size = 255
    end
  end
  object ConsSql: TADOQuery
    Connection = ADOBanco
    LockType = ltReadOnly
    Parameters = <>
    Left = 40
    Top = 408
  end
  object ConE085Cli: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codcli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e085cli.*,e085hcl.* from e085cli'
      'inner join e085hcl on e085hcl.codcli = e085cli.codcli'
      '                                where'
      '                                e085hcl.codfil = :codemp and'
      '                                e085cli.codcli =:codcli')
    Left = 40
    Top = 336
    object ConE085CliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConE085CliNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConE085CliAPECLI: TStringField
      FieldName = 'APECLI'
      Size = 50
    end
    object ConE085CliMARCLI: TStringField
      FieldName = 'MARCLI'
    end
    object ConE085CliSENCLI: TStringField
      FieldName = 'SENCLI'
      Size = 10
    end
    object ConE085CliTIPCLI: TStringField
      FieldName = 'TIPCLI'
      Size = 1
    end
    object ConE085CliTIPMER: TStringField
      FieldName = 'TIPMER'
      Size = 1
    end
    object ConE085CliTIPEMC: TIntegerField
      FieldName = 'TIPEMC'
    end
    object ConE085CliCLICON: TStringField
      FieldName = 'CLICON'
      Size = 1
    end
    object ConE085CliCODRAM: TStringField
      FieldName = 'CODRAM'
      Size = 5
    end
    object ConE085CliINSEST: TStringField
      FieldName = 'INSEST'
      Size = 25
    end
    object ConE085CliINSMUN: TStringField
      FieldName = 'INSMUN'
      Size = 16
    end
    object ConE085CliCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
    object ConE085CliCODGRE: TIntegerField
      FieldName = 'CODGRE'
    end
    object ConE085CliZONFRA: TIntegerField
      FieldName = 'ZONFRA'
    end
    object ConE085CliCODSUF: TStringField
      FieldName = 'CODSUF'
      Size = 10
    end
    object ConE085CliENDCLI: TStringField
      FieldName = 'ENDCLI'
      Size = 100
    end
    object ConE085CliCPLEND: TStringField
      FieldName = 'CPLEND'
      Size = 60
    end
    object ConE085CliCLIPRX: TStringField
      FieldName = 'CLIPRX'
      Size = 120
    end
    object ConE085CliZIPCOD: TStringField
      FieldName = 'ZIPCOD'
      Size = 14
    end
    object ConE085CliCEPCLI: TIntegerField
      FieldName = 'CEPCLI'
    end
    object ConE085CliCEPINI: TIntegerField
      FieldName = 'CEPINI'
    end
    object ConE085CliBAICLI: TStringField
      FieldName = 'BAICLI'
      Size = 75
    end
    object ConE085CliCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConE085CliSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConE085CliCODPAI: TStringField
      FieldName = 'CODPAI'
      Size = 4
    end
    object ConE085CliTEMENT: TStringField
      FieldName = 'TEMENT'
      Size = 1
    end
    object ConE085CliENDENT: TStringField
      FieldName = 'ENDENT'
      Size = 100
    end
    object ConE085CliCPLENT: TStringField
      FieldName = 'CPLENT'
      Size = 60
    end
    object ConE085CliCEPENT: TIntegerField
      FieldName = 'CEPENT'
    end
    object ConE085CliINIENT: TIntegerField
      FieldName = 'INIENT'
    end
    object ConE085CliCIDENT: TStringField
      FieldName = 'CIDENT'
      Size = 60
    end
    object ConE085CliESTENT: TStringField
      FieldName = 'ESTENT'
      Size = 2
    end
    object ConE085CliINSENT: TStringField
      FieldName = 'INSENT'
      Size = 25
    end
    object ConE085CliCGCENT: TBCDField
      FieldName = 'CGCENT'
      Precision = 14
      Size = 0
    end
    object ConE085CliTEMCOB: TStringField
      FieldName = 'TEMCOB'
      Size = 1
    end
    object ConE085CliENDCOB: TStringField
      FieldName = 'ENDCOB'
      Size = 100
    end
    object ConE085CliCPLCOB: TStringField
      FieldName = 'CPLCOB'
      Size = 60
    end
    object ConE085CliCEPCOB: TIntegerField
      FieldName = 'CEPCOB'
    end
    object ConE085CliINICOB: TIntegerField
      FieldName = 'INICOB'
    end
    object ConE085CliCIDCOB: TStringField
      FieldName = 'CIDCOB'
      Size = 60
    end
    object ConE085CliESTCOB: TStringField
      FieldName = 'ESTCOB'
      Size = 2
    end
    object ConE085CliCGCCOB: TBCDField
      FieldName = 'CGCCOB'
      Precision = 14
      Size = 0
    end
    object ConE085CliENTCOR: TStringField
      FieldName = 'ENTCOR'
      Size = 1
    end
    object ConE085CliFONCLI: TStringField
      FieldName = 'FONCLI'
    end
    object ConE085CliFONCL2: TStringField
      FieldName = 'FONCL2'
    end
    object ConE085CliFONCL3: TStringField
      FieldName = 'FONCL3'
    end
    object ConE085CliFONCL4: TStringField
      FieldName = 'FONCL4'
    end
    object ConE085CliFONCL5: TStringField
      FieldName = 'FONCL5'
    end
    object ConE085CliFAXCLI: TStringField
      FieldName = 'FAXCLI'
    end
    object ConE085CliCXAPST: TIntegerField
      FieldName = 'CXAPST'
    end
    object ConE085CliINTNET: TStringField
      FieldName = 'INTNET'
      Size = 100
    end
    object ConE085CliCODROE: TStringField
      FieldName = 'CODROE'
      Size = 3
    end
    object ConE085CliSEQROE: TIntegerField
      FieldName = 'SEQROE'
    end
    object ConE085CliCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConE085CliCLIREP: TIntegerField
      FieldName = 'CLIREP'
    end
    object ConE085CliCLITRA: TIntegerField
      FieldName = 'CLITRA'
    end
    object ConE085CliUSUCAD: TBCDField
      FieldName = 'USUCAD'
      Precision = 10
      Size = 0
    end
    object ConE085CliDATCAD: TDateTimeField
      FieldName = 'DATCAD'
    end
    object ConE085CliDATFIM: TDateTimeField
      FieldName = 'DATFIM'
    end
    object ConE085CliHORCAD: TIntegerField
      FieldName = 'HORCAD'
    end
    object ConE085CliHORFIM: TIntegerField
      FieldName = 'HORFIM'
    end
    object ConE085CliDATVCT: TDateTimeField
      FieldName = 'DATVCT'
    end
    object ConE085CliDATATU: TDateTimeField
      FieldName = 'DATATU'
    end
    object ConE085CliHORATU: TIntegerField
      FieldName = 'HORATU'
    end
    object ConE085CliUSUATU: TBCDField
      FieldName = 'USUATU'
      Precision = 10
      Size = 0
    end
    object ConE085CliQTDATU: TIntegerField
      FieldName = 'QTDATU'
    end
    object ConE085CliDATICV: TDateTimeField
      FieldName = 'DATICV'
    end
    object ConE085CliSITCLI: TStringField
      FieldName = 'SITCLI'
      Size = 1
    end
    object ConE085CliCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConE085CliBLOCRE: TStringField
      FieldName = 'BLOCRE'
      Size = 1
    end
    object ConE085CliOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConE085CliUSUMOT: TBCDField
      FieldName = 'USUMOT'
      Precision = 10
      Size = 0
    end
    object ConE085CliDATMOT: TDateTimeField
      FieldName = 'DATMOT'
    end
    object ConE085CliHORMOT: TIntegerField
      FieldName = 'HORMOT'
    end
    object ConE085CliUSUOPE: TBCDField
      FieldName = 'USUOPE'
      Precision = 10
      Size = 0
    end
    object ConE085CliCODAMA: TStringField
      FieldName = 'CODAMA'
      Size = 30
    end
    object ConE085CliCODSAB: TStringField
      FieldName = 'CODSAB'
      Size = 30
    end
    object ConE085CliCODGAL: TStringField
      FieldName = 'CODGAL'
      Size = 30
    end
    object ConE085CliTRIICM: TStringField
      FieldName = 'TRIICM'
      Size = 1
    end
    object ConE085CliTRIIPI: TStringField
      FieldName = 'TRIIPI'
      Size = 1
    end
    object ConE085CliBAIENT: TStringField
      FieldName = 'BAIENT'
      Size = 75
    end
    object ConE085CliBAICOB: TStringField
      FieldName = 'BAICOB'
      Size = 75
    end
    object ConE085CliCLIFOR: TStringField
      FieldName = 'CLIFOR'
      Size = 1
    end
    object ConE085CliIDECLI: TStringField
      FieldName = 'IDECLI'
    end
    object ConE085CliTRIPIS: TStringField
      FieldName = 'TRIPIS'
      Size = 1
    end
    object ConE085CliTRICOF: TStringField
      FieldName = 'TRICOF'
      Size = 1
    end
    object ConE085CliINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConE085CliDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConE085CliHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConE085CliRETCOF: TStringField
      FieldName = 'RETCOF'
      Size = 1
    end
    object ConE085CliRETCSL: TStringField
      FieldName = 'RETCSL'
      Size = 1
    end
    object ConE085CliRETPIS: TStringField
      FieldName = 'RETPIS'
      Size = 1
    end
    object ConE085CliRETOUR: TStringField
      FieldName = 'RETOUR'
      Size = 1
    end
    object ConE085CliCODSRO: TStringField
      FieldName = 'CODSRO'
      Size = 3
    end
    object ConE085CliDATSUF: TDateTimeField
      FieldName = 'DATSUF'
    end
    object ConE085CliCEPFRE: TIntegerField
      FieldName = 'CEPFRE'
    end
    object ConE085CliCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object ConE085CliDATPDV: TDateTimeField
      FieldName = 'DATPDV'
    end
    object ConE085CliHORPDV: TIntegerField
      FieldName = 'HORPDV'
    end
    object ConE085CliRETPRO: TStringField
      FieldName = 'RETPRO'
      Size = 1
    end
    object ConE085CliRETIRF: TStringField
      FieldName = 'RETIRF'
      Size = 1
    end
    object ConE085CliLIMRET: TStringField
      FieldName = 'LIMRET'
      Size = 1
    end
    object ConE085CliCODCNV: TIntegerField
      FieldName = 'CODCNV'
    end
    object ConE085CliCALFUN: TStringField
      FieldName = 'CALFUN'
      Size = 1
    end
    object ConE085CliEENCLI: TStringField
      FieldName = 'EENCLI'
      Size = 18
    end
    object ConE085CliEENENT: TStringField
      FieldName = 'EENENT'
      Size = 18
    end
    object ConE085CliEENCOB: TStringField
      FieldName = 'EENCOB'
      Size = 18
    end
    object ConE085CliPERAIN: TBCDField
      FieldName = 'PERAIN'
      Precision = 4
      Size = 2
    end
    object ConE085CliNENCLI: TStringField
      FieldName = 'NENCLI'
      Size = 60
    end
    object ConE085CliNENENT: TStringField
      FieldName = 'NENENT'
      Size = 60
    end
    object ConE085CliNENCOB: TStringField
      FieldName = 'NENCOB'
      Size = 60
    end
    object ConE085CliTIPACE: TIntegerField
      FieldName = 'TIPACE'
    end
    object ConE085CliEMANFE: TStringField
      FieldName = 'EMANFE'
      Size = 100
    end
    object ConE085CliUSU_SIMFED: TStringField
      FieldName = 'USU_SIMFED'
      Size = 1
    end
    object ConE085CliINSANP: TIntegerField
      FieldName = 'INSANP'
    end
    object ConE085CliINDCOO: TStringField
      FieldName = 'INDCOO'
      Size = 1
    end
    object ConE085CliREGEST: TIntegerField
      FieldName = 'REGEST'
    end
    object ConE085CliCODCLI_1: TIntegerField
      FieldName = 'CODCLI_1'
    end
    object ConE085CliCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConE085CliCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConE085CliSALDUP: TBCDField
      FieldName = 'SALDUP'
      Precision = 15
      Size = 2
    end
    object ConE085CliSALOUT: TBCDField
      FieldName = 'SALOUT'
      Precision = 15
      Size = 2
    end
    object ConE085CliSALCRE: TBCDField
      FieldName = 'SALCRE'
      Precision = 15
      Size = 2
    end
    object ConE085CliDATLIM: TDateTimeField
      FieldName = 'DATLIM'
    end
    object ConE085CliVLRLIM: TBCDField
      FieldName = 'VLRLIM'
      Precision = 15
      Size = 2
    end
    object ConE085CliLIMAPR: TStringField
      FieldName = 'LIMAPR'
      Size = 1
    end
    object ConE085CliVLRPFA: TBCDField
      FieldName = 'VLRPFA'
      Precision = 15
      Size = 2
    end
    object ConE085CliDATMAC: TDateTimeField
      FieldName = 'DATMAC'
    end
    object ConE085CliVLRMAC: TBCDField
      FieldName = 'VLRMAC'
      Precision = 15
      Size = 2
    end
    object ConE085CliDATUPE: TDateTimeField
      FieldName = 'DATUPE'
    end
    object ConE085CliVLRUPE: TBCDField
      FieldName = 'VLRUPE'
      Precision = 15
      Size = 2
    end
    object ConE085CliDATUFA: TDateTimeField
      FieldName = 'DATUFA'
    end
    object ConE085CliVLRUFA: TBCDField
      FieldName = 'VLRUFA'
      Precision = 15
      Size = 2
    end
    object ConE085CliDATUPG: TDateTimeField
      FieldName = 'DATUPG'
    end
    object ConE085CliVLRUPG: TBCDField
      FieldName = 'VLRUPG'
      Precision = 15
      Size = 2
    end
    object ConE085CliQTDPGT: TIntegerField
      FieldName = 'QTDPGT'
    end
    object ConE085CliDATUPC: TDateTimeField
      FieldName = 'DATUPC'
    end
    object ConE085CliVLRUPC: TBCDField
      FieldName = 'VLRUPC'
      Precision = 15
      Size = 2
    end
    object ConE085CliQTDTPC: TIntegerField
      FieldName = 'QTDTPC'
    end
    object ConE085CliDATMFA: TDateTimeField
      FieldName = 'DATMFA'
    end
    object ConE085CliVLRMFA: TBCDField
      FieldName = 'VLRMFA'
      Precision = 15
      Size = 2
    end
    object ConE085CliDATATR: TDateTimeField
      FieldName = 'DATATR'
    end
    object ConE085CliVLRATR: TBCDField
      FieldName = 'VLRATR'
      Precision = 15
      Size = 2
    end
    object ConE085CliMAIATR: TIntegerField
      FieldName = 'MAIATR'
    end
    object ConE085CliMEDATR: TIntegerField
      FieldName = 'MEDATR'
    end
    object ConE085CliDATPMR: TDateTimeField
      FieldName = 'DATPMR'
    end
    object ConE085CliPRZMRT: TIntegerField
      FieldName = 'PRZMRT'
    end
    object ConE085CliQTDRPM: TIntegerField
      FieldName = 'QTDRPM'
    end
    object ConE085CliQTDCHS: TIntegerField
      FieldName = 'QTDCHS'
    end
    object ConE085CliCATCLI: TIntegerField
      FieldName = 'CATCLI'
    end
    object ConE085CliACEPAR: TStringField
      FieldName = 'ACEPAR'
      Size = 1
    end
    object ConE085CliQTDMFP: TIntegerField
      FieldName = 'QTDMFP'
    end
    object ConE085CliPERAQA: TBCDField
      FieldName = 'PERAQA'
      Precision = 5
      Size = 2
    end
    object ConE085CliINDAGR: TStringField
      FieldName = 'INDAGR'
      Size = 1
    end
    object ConE085CliJUNPED: TStringField
      FieldName = 'JUNPED'
      Size = 1
    end
    object ConE085CliPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConE085CliPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConE085CliPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConE085CliCODCRP: TStringField
      FieldName = 'CODCRP'
      Size = 3
    end
    object ConE085CliCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConE085CliCODRVE: TStringField
      FieldName = 'CODRVE'
      Size = 3
    end
    object ConE085CliCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConE085CliCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConE085CliCODFPG: TIntegerField
      FieldName = 'CODFPG'
    end
    object ConE085CliQTDDCV: TIntegerField
      FieldName = 'QTDDCV'
    end
    object ConE085CliCRIEDV: TStringField
      FieldName = 'CRIEDV'
      Size = 1
    end
    object ConE085CliCODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object ConE085CliCODRED: TIntegerField
      FieldName = 'CODRED'
    end
    object ConE085CliRECJMM: TBCDField
      FieldName = 'RECJMM'
      Precision = 5
      Size = 2
    end
    object ConE085CliRECTJR: TStringField
      FieldName = 'RECTJR'
      Size = 1
    end
    object ConE085CliRECDTJ: TIntegerField
      FieldName = 'RECDTJ'
    end
    object ConE085CliRECMUL: TBCDField
      FieldName = 'RECMUL'
      Precision = 5
      Size = 2
    end
    object ConE085CliRECDTM: TIntegerField
      FieldName = 'RECDTM'
    end
    object ConE085CliPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 4
      Size = 2
    end
    object ConE085CliTOLDSC: TIntegerField
      FieldName = 'TOLDSC'
    end
    object ConE085CliANTDSC: TStringField
      FieldName = 'ANTDSC'
      Size = 1
    end
    object ConE085CliPORSI1: TStringField
      FieldName = 'PORSI1'
      Size = 4
    end
    object ConE085CliPORSI2: TStringField
      FieldName = 'PORSI2'
      Size = 4
    end
    object ConE085CliPORNA1: TStringField
      FieldName = 'PORNA1'
      Size = 4
    end
    object ConE085CliPORNA2: TStringField
      FieldName = 'PORNA2'
      Size = 4
    end
    object ConE085CliCODIN1: TStringField
      FieldName = 'CODIN1'
      Size = 3
    end
    object ConE085CliCODIN2: TStringField
      FieldName = 'CODIN2'
      Size = 3
    end
    object ConE085CliCODBAN: TStringField
      FieldName = 'CODBAN'
      Size = 3
    end
    object ConE085CliCODAGE: TStringField
      FieldName = 'CODAGE'
      Size = 7
    end
    object ConE085CliCCBCLI: TStringField
      FieldName = 'CCBCLI'
      Size = 14
    end
    object ConE085CliCODFRJ: TStringField
      FieldName = 'CODFRJ'
      Size = 3
    end
    object ConE085CliCRIRAT: TIntegerField
      FieldName = 'CRIRAT'
    end
    object ConE085CliCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConE085CliCTARCR: TIntegerField
      FieldName = 'CTARCR'
    end
    object ConE085CliCTAFDV: TIntegerField
      FieldName = 'CTAFDV'
    end
    object ConE085CliCTAFCR: TIntegerField
      FieldName = 'CTAFCR'
    end
    object ConE085CliUSUAGE: TBCDField
      FieldName = 'USUAGE'
      Precision = 10
      Size = 0
    end
    object ConE085CliEXILCP: TStringField
      FieldName = 'EXILCP'
      Size = 1
    end
    object ConE085CliPERFRE: TBCDField
      FieldName = 'PERFRE'
      Precision = 5
      Size = 2
    end
    object ConE085CliPERSEG: TBCDField
      FieldName = 'PERSEG'
      Precision = 5
      Size = 2
    end
    object ConE085CliPEREMB: TBCDField
      FieldName = 'PEREMB'
      Precision = 5
      Size = 2
    end
    object ConE085CliPERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
    object ConE085CliPEROUT: TBCDField
      FieldName = 'PEROUT'
      Precision = 5
      Size = 2
    end
    object ConE085CliFVETNS: TStringField
      FieldName = 'FVETNS'
      Size = 10
    end
    object ConE085CliFVEFPG: TStringField
      FieldName = 'FVEFPG'
      Size = 10
    end
    object ConE085CliFVECPG: TStringField
      FieldName = 'FVECPG'
      Size = 10
    end
    object ConE085CliPERISS: TBCDField
      FieldName = 'PERISS'
      Precision = 4
      Size = 2
    end
    object ConE085CliCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object ConE085CliINDEXP_1: TIntegerField
      FieldName = 'INDEXP_1'
    end
    object ConE085CliDATPAL_1: TDateTimeField
      FieldName = 'DATPAL_1'
    end
    object ConE085CliHORPAL_1: TIntegerField
      FieldName = 'HORPAL_1'
    end
    object ConE085CliCIFFOB: TStringField
      FieldName = 'CIFFOB'
      Size = 1
    end
    object ConE085CliCODTAB: TStringField
      FieldName = 'CODTAB'
      Size = 4
    end
    object ConE085CliPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConE085CliPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConE085CliPEROF1: TBCDField
      FieldName = 'PEROF1'
      Precision = 5
      Size = 2
    end
    object ConE085CliPEROF2: TBCDField
      FieldName = 'PEROF2'
      Precision = 5
      Size = 2
    end
    object ConE085CliCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ConE085CliDIAESP: TStringField
      FieldName = 'DIAESP'
      Size = 1
    end
    object ConE085CliDIAME1: TIntegerField
      FieldName = 'DIAME1'
    end
    object ConE085CliDIAME2: TIntegerField
      FieldName = 'DIAME2'
    end
    object ConE085CliDIAME3: TIntegerField
      FieldName = 'DIAME3'
    end
    object ConE085CliGERTCC: TStringField
      FieldName = 'GERTCC'
      Size = 1
    end
    object ConE085CliAPMDEN: TStringField
      FieldName = 'APMDEN'
      Size = 1
    end
    object ConE085CliCTRPAD: TIntegerField
      FieldName = 'CTRPAD'
    end
    object ConE085CliEPCPED: TStringField
      FieldName = 'EPCPED'
      Size = 1
    end
    object ConE085CliECPCNP: TStringField
      FieldName = 'ECPCNP'
      Size = 1
    end
    object ConE085CliQTDPRT: TIntegerField
      FieldName = 'QTDPRT'
    end
    object ConE085CliVLRPRT: TBCDField
      FieldName = 'VLRPRT'
      Precision = 15
      Size = 2
    end
    object ConE085CliACRDIA: TBCDField
      FieldName = 'ACRDIA'
      Precision = 5
      Size = 2
    end
    object ConE085CliEXIAGE: TStringField
      FieldName = 'EXIAGE'
      Size = 1
    end
    object ConE085CliULTNFV: TIntegerField
      FieldName = 'ULTNFV'
    end
    object ConE085CliULTSNF: TStringField
      FieldName = 'ULTSNF'
      Size = 3
    end
    object ConE085CliCODFCR: TStringField
      FieldName = 'CODFCR'
      Size = 3
    end
    object ConE085CliCODPDV_1: TIntegerField
      FieldName = 'CODPDV_1'
    end
    object ConE085CliVLRACR: TBCDField
      FieldName = 'VLRACR'
      Precision = 15
      Size = 2
    end
    object ConE085CliPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConE085CliSEQCOB: TIntegerField
      FieldName = 'SEQCOB'
    end
    object ConE085CliSEQENT: TIntegerField
      FieldName = 'SEQENT'
    end
    object ConE085CliINDORF: TStringField
      FieldName = 'INDORF'
      Size = 1
    end
    object ConE085CliPRDDSC: TStringField
      FieldName = 'PRDDSC'
      Size = 1
    end
    object ConE085CliCTAAUX: TIntegerField
      FieldName = 'CTAAUX'
    end
    object ConE085CliCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
  end
  object ConE028Cpg: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codcpg'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codrep'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e028cpg.* from e028cpg'
      'inner join e090rcp on e090rcp.empcpg = e028cpg.codemp and'
      '                      e090rcp.codcpg = e028cpg.codcpg'
      '                       where'
      '                       e028cpg.codemp = :codemp and'
      '                       e028cpg.codcpg = :codcpg and'
      '                       e090rcp.codrep = :codrep and'
      '                       e090rcp.sitlrc = '#39'A'#39)
    Left = 120
    Top = 336
    object ConE028CpgCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConE028CpgCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConE028CpgDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ConE028CpgABRCPG: TStringField
      FieldName = 'ABRCPG'
      Size = 10
    end
    object ConE028CpgAPLCPG: TStringField
      FieldName = 'APLCPG'
      Size = 1
    end
    object ConE028CpgPGTANT: TStringField
      FieldName = 'PGTANT'
      Size = 1
    end
    object ConE028CpgDIAESP: TStringField
      FieldName = 'DIAESP'
      Size = 1
    end
    object ConE028CpgDIAME1: TIntegerField
      FieldName = 'DIAME1'
    end
    object ConE028CpgDIAME2: TIntegerField
      FieldName = 'DIAME2'
    end
    object ConE028CpgDIAME3: TIntegerField
      FieldName = 'DIAME3'
    end
    object ConE028CpgDIASEM: TStringField
      FieldName = 'DIASEM'
      Size = 7
    end
    object ConE028CpgDIAMES: TStringField
      FieldName = 'DIAMES'
      Size = 31
    end
    object ConE028CpgPRZMED: TIntegerField
      FieldName = 'PRZMED'
    end
    object ConE028CpgQTDPAR: TIntegerField
      FieldName = 'QTDPAR'
    end
    object ConE028CpgIPIPAR: TStringField
      FieldName = 'IPIPAR'
      Size = 1
    end
    object ConE028CpgICMPAR: TStringField
      FieldName = 'ICMPAR'
      Size = 1
    end
    object ConE028CpgSUBPAR: TStringField
      FieldName = 'SUBPAR'
      Size = 1
    end
    object ConE028CpgFREPAR: TStringField
      FieldName = 'FREPAR'
      Size = 1
    end
    object ConE028CpgSEGPAR: TStringField
      FieldName = 'SEGPAR'
      Size = 1
    end
    object ConE028CpgENCPAR: TStringField
      FieldName = 'ENCPAR'
      Size = 1
    end
    object ConE028CpgEMBPAR: TStringField
      FieldName = 'EMBPAR'
      Size = 1
    end
    object ConE028CpgOUTPAR: TStringField
      FieldName = 'OUTPAR'
      Size = 1
    end
    object ConE028CpgDARPAR: TStringField
      FieldName = 'DARPAR'
      Size = 1
    end
    object ConE028CpgACRFIN: TBCDField
      FieldName = 'ACRFIN'
      Precision = 5
      Size = 2
    end
    object ConE028CpgVENDSC: TBCDField
      FieldName = 'VENDSC'
      Precision = 5
      Size = 2
    end
    object ConE028CpgCPRDSC: TBCDField
      FieldName = 'CPRDSC'
      Precision = 5
      Size = 2
    end
    object ConE028CpgPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConE028CpgPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConE028CpgREDCOM: TBCDField
      FieldName = 'REDCOM'
      Precision = 5
      Size = 2
    end
    object ConE028CpgTIPPAR: TIntegerField
      FieldName = 'TIPPAR'
    end
    object ConE028CpgSITCPG: TStringField
      FieldName = 'SITCPG'
      Size = 1
    end
    object ConE028CpgCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConE028CpgFVECPG: TStringField
      FieldName = 'FVECPG'
      Size = 10
    end
    object ConE028CpgFVEDEC: TStringField
      FieldName = 'FVEDEC'
      Size = 1
    end
    object ConE028CpgINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConE028CpgDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConE028CpgHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConE028CpgTIPINT: TIntegerField
      FieldName = 'TIPINT'
    end
    object ConE028CpgCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object ConE028CpgISSPAR: TStringField
      FieldName = 'ISSPAR'
      Size = 1
    end
    object ConE028CpgDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConE028CpgHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConE028CpgUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConE028CpgDATATU: TDateTimeField
      FieldName = 'DATATU'
    end
    object ConE028CpgHORATU: TIntegerField
      FieldName = 'HORATU'
    end
    object ConE028CpgUSUATU: TBCDField
      FieldName = 'USUATU'
      Precision = 10
      Size = 0
    end
    object ConE028CpgPERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
    object ConE028CpgCOMTIT: TStringField
      FieldName = 'COMTIT'
      Size = 1
    end
    object ConE028CpgMESES1: TIntegerField
      FieldName = 'MESES1'
    end
    object ConE028CpgMESES2: TIntegerField
      FieldName = 'MESES2'
    end
    object ConE028CpgMESES3: TIntegerField
      FieldName = 'MESES3'
    end
  end
  object ConE075Der: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e075der.* from e075der'
      '                      where'
      '                      e075der.codemp = :codemp and'
      '                      e075der.codpro = :codpro and'
      '                      e075der.codder = :codder')
    Left = 200
    Top = 336
    object ConE075DerCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConE075DerCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConE075DerCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConE075DerDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
    object ConE075DerDESCPL: TStringField
      FieldName = 'DESCPL'
      Size = 90
    end
    object ConE075DerCODBAR: TBCDField
      FieldName = 'CODBAR'
      Precision = 13
      Size = 0
    end
    object ConE075DerCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ConE075DerCODAGT: TStringField
      FieldName = 'CODAGT'
      Size = 5
    end
    object ConE075DerSEQCMD: TIntegerField
      FieldName = 'SEQCMD'
    end
    object ConE075DerDATVAL: TDateTimeField
      FieldName = 'DATVAL'
    end
    object ConE075DerDIAVLT: TIntegerField
      FieldName = 'DIAVLT'
    end
    object ConE075DerTIPCN2: TStringField
      FieldName = 'TIPCN2'
      Size = 1
    end
    object ConE075DerVLRCN2: TFMTBCDField
      FieldName = 'VLRCN2'
      Precision = 13
      Size = 6
    end
    object ConE075DerTIPCN3: TStringField
      FieldName = 'TIPCN3'
      Size = 1
    end
    object ConE075DerVLRCN3: TFMTBCDField
      FieldName = 'VLRCN3'
      Precision = 13
      Size = 6
    end
    object ConE075DerPRECUS: TFMTBCDField
      FieldName = 'PRECUS'
      Precision = 15
      Size = 6
    end
    object ConE075DerDATCUS: TDateTimeField
      FieldName = 'DATCUS'
    end
    object ConE075DerPREMED: TFMTBCDField
      FieldName = 'PREMED'
      Precision = 15
      Size = 6
    end
    object ConE075DerDATMED: TDateTimeField
      FieldName = 'DATMED'
    end
    object ConE075DerPREUEN: TFMTBCDField
      FieldName = 'PREUEN'
      Precision = 15
      Size = 6
    end
    object ConE075DerDATUEN: TDateTimeField
      FieldName = 'DATUEN'
    end
    object ConE075DerPREREP: TFMTBCDField
      FieldName = 'PREREP'
      Precision = 15
      Size = 6
    end
    object ConE075DerDATREP: TDateTimeField
      FieldName = 'DATREP'
    end
    object ConE075DerDIAREP: TIntegerField
      FieldName = 'DIAREP'
    end
    object ConE075DerPESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 11
      Size = 5
    end
    object ConE075DerPESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 11
      Size = 5
    end
    object ConE075DerTOLPES: TBCDField
      FieldName = 'TOLPES'
      Precision = 5
      Size = 3
    end
    object ConE075DerVOLDER: TFMTBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object ConE075DerPERPRD: TBCDField
      FieldName = 'PERPRD'
      Precision = 4
      Size = 2
    end
    object ConE075DerQTDIQL: TFMTBCDField
      FieldName = 'QTDIQL'
      Precision = 14
      Size = 5
    end
    object ConE075DerQTDCIC: TFMTBCDField
      FieldName = 'QTDCIC'
      Precision = 14
      Size = 5
    end
    object ConE075DerQTDPRD: TFMTBCDField
      FieldName = 'QTDPRD'
      Precision = 14
      Size = 5
    end
    object ConE075DerPREUIS: TFMTBCDField
      FieldName = 'PREUIS'
      Precision = 17
    end
    object ConE075DerPERICS: TBCDField
      FieldName = 'PERICS'
      Precision = 5
      Size = 2
    end
    object ConE075DerCODEMB: TIntegerField
      FieldName = 'CODEMB'
    end
    object ConE075DerQTDEMB: TFMTBCDField
      FieldName = 'QTDEMB'
      Precision = 12
      Size = 5
    end
    object ConE075DerCODROT: TStringField
      FieldName = 'CODROT'
      Size = 14
    end
    object ConE075DerCODROY: TIntegerField
      FieldName = 'CODROY'
    end
    object ConE075DerBXAORP: TStringField
      FieldName = 'BXAORP'
      Size = 1
    end
    object ConE075DerSERCCL: TStringField
      FieldName = 'SERCCL'
      Size = 3
    end
    object ConE075DerNUMCCL: TStringField
      FieldName = 'NUMCCL'
      Size = 12
    end
    object ConE075DerCURABC: TStringField
      FieldName = 'CURABC'
      Size = 1
    end
    object ConE075DerCURAB2: TStringField
      FieldName = 'CURAB2'
      Size = 1
    end
    object ConE075DerCURAB3: TStringField
      FieldName = 'CURAB3'
      Size = 1
    end
    object ConE075DerCURAB4: TStringField
      FieldName = 'CURAB4'
      Size = 1
    end
    object ConE075DerCODREG: TIntegerField
      FieldName = 'CODREG'
    end
    object ConE075DerSITDER: TStringField
      FieldName = 'SITDER'
      Size = 1
    end
    object ConE075DerCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConE075DerCTRLOT: TStringField
      FieldName = 'CTRLOT'
      Size = 1
    end
    object ConE075DerCTRSEP: TStringField
      FieldName = 'CTRSEP'
      Size = 1
    end
    object ConE075DerCTRVLD: TStringField
      FieldName = 'CTRVLD'
      Size = 1
    end
    object ConE075DerDEPPAD: TStringField
      FieldName = 'DEPPAD'
      Size = 10
    end
    object ConE075DerDEPPAA: TStringField
      FieldName = 'DEPPAA'
      Size = 10
    end
    object ConE075DerINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ConE075DerINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ConE075DerINDKAN: TStringField
      FieldName = 'INDKAN'
      Size = 1
    end
    object ConE075DerCODREF: TStringField
      FieldName = 'CODREF'
    end
    object ConE075DerCODPIN: TStringField
      FieldName = 'CODPIN'
    end
    object ConE075DerNOTFOR: TBCDField
      FieldName = 'NOTFOR'
      Precision = 5
      Size = 2
    end
    object ConE075DerORICUS: TStringField
      FieldName = 'ORICUS'
      Size = 1
    end
    object ConE075DerINFCUS: TStringField
      FieldName = 'INFCUS'
      Size = 1
    end
    object ConE075DerHORCUS: TIntegerField
      FieldName = 'HORCUS'
    end
    object ConE075DerUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConE075DerHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConE075DerDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConE075DerUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object ConE075DerHORALT: TIntegerField
      FieldName = 'HORALT'
    end
    object ConE075DerDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ConE075DerCODAGE: TStringField
      FieldName = 'CODAGE'
      Size = 10
    end
    object ConE075DerCODBA2: TStringField
      FieldName = 'CODBA2'
      Size = 30
    end
    object ConE075DerINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConE075DerDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConE075DerHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConE075DerEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object ConE075DerSERMVP: TStringField
      FieldName = 'SERMVP'
      Size = 14
    end
    object ConE075DerAPRDFT: TStringField
      FieldName = 'APRDFT'
      Size = 1
    end
    object ConE075DerCODAEM: TStringField
      FieldName = 'CODAEM'
      Size = 10
    end
    object ConE075DerCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object ConE075DerINDGEN: TStringField
      FieldName = 'INDGEN'
      Size = 1
    end
    object ConE075DerQTDMLT: TFMTBCDField
      FieldName = 'QTDMLT'
      Precision = 12
      Size = 5
    end
    object ConE075DerQTDMIN: TFMTBCDField
      FieldName = 'QTDMIN'
      Precision = 12
      Size = 5
    end
    object ConE075DerQTDMAX: TFMTBCDField
      FieldName = 'QTDMAX'
      Precision = 12
      Size = 5
    end
    object ConE075DerCODEND: TStringField
      FieldName = 'CODEND'
      Size = 10
    end
    object ConE075DerROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object ConE075DerNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object ConE075DerINDPCQ: TStringField
      FieldName = 'INDPCQ'
      Size = 1
    end
    object ConE075DerVLRCID: TBCDField
      FieldName = 'VLRCID'
      Precision = 15
      Size = 2
    end
    object ConE075DerUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object ConE075DerUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object ConE075DerUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object ConE075DerUSU_CMP2BB: TBCDField
      FieldName = 'USU_CMP2BB'
      Precision = 8
      Size = 2
    end
    object ConE075DerUSU_CMP2EN: TBCDField
      FieldName = 'USU_CMP2EN'
      Precision = 8
      Size = 2
    end
    object ConE075DerUSU_MEDESP: TStringField
      FieldName = 'USU_MEDESP'
      Size = 1
    end
    object ConE075DerUSU_FATOR: TBCDField
      FieldName = 'USU_FATOR'
      Precision = 9
      Size = 3
    end
    object ConE075DerQTDCUS: TFMTBCDField
      FieldName = 'QTDCUS'
      Precision = 12
      Size = 5
    end
    object ConE075DerVLRUIS: TFMTBCDField
      FieldName = 'VLRUIS'
      Precision = 17
    end
  end
  object CadE120Ped: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e120ped'
      '                where'
      '                codemp = :codemp and'
      '                codfil = :codfil and'
      '                numped = :numped')
    Left = 504
    Top = 56
    object CadE120PedCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE120PedCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE120PedNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object CadE120PedTIPPED: TIntegerField
      FieldName = 'TIPPED'
    end
    object CadE120PedPRCPED: TIntegerField
      FieldName = 'PRCPED'
    end
    object CadE120PedTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object CadE120PedTNSSER: TStringField
      FieldName = 'TNSSER'
      Size = 5
    end
    object CadE120PedDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object CadE120PedHOREMI: TIntegerField
      FieldName = 'HOREMI'
    end
    object CadE120PedDATPRV: TDateTimeField
      FieldName = 'DATPRV'
    end
    object CadE120PedHORPRV: TIntegerField
      FieldName = 'HORPRV'
    end
    object CadE120PedOBSPED: TStringField
      FieldName = 'OBSPED'
      Size = 999
    end
    object CadE120PedCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object CadE120PedCATCLI: TIntegerField
      FieldName = 'CATCLI'
    end
    object CadE120PedQTDVPF: TIntegerField
      FieldName = 'QTDVPF'
    end
    object CadE120PedQTDMFP: TIntegerField
      FieldName = 'QTDMFP'
    end
    object CadE120PedINDAGR: TStringField
      FieldName = 'INDAGR'
      Size = 1
    end
    object CadE120PedSEQENT: TIntegerField
      FieldName = 'SEQENT'
    end
    object CadE120PedSEQCOB: TIntegerField
      FieldName = 'SEQCOB'
    end
    object CadE120PedSEQCTO: TIntegerField
      FieldName = 'SEQCTO'
    end
    object CadE120PedPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object CadE120PedCODROE: TStringField
      FieldName = 'CODROE'
      Size = 3
    end
    object CadE120PedSEQROE: TIntegerField
      FieldName = 'SEQROE'
    end
    object CadE120PedCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object CadE120PedCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object CadE120PedCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object CadE120PedDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object CadE120PedCOTMFP: TFMTBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object CadE120PedDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object CadE120PedCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object CadE120PedFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object CadE120PedCODFCR: TStringField
      FieldName = 'CODFCR'
      Size = 3
    end
    object CadE120PedDATFCR: TDateTimeField
      FieldName = 'DATFCR'
    end
    object CadE120PedCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object CadE120PedPGTANT: TStringField
      FieldName = 'PGTANT'
      Size = 1
    end
    object CadE120PedCODFPG: TIntegerField
      FieldName = 'CODFPG'
    end
    object CadE120PedQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object CadE120PedQTDAEN: TFMTBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object CadE120PedCODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object CadE120PedCODRED: TIntegerField
      FieldName = 'CODRED'
    end
    object CadE120PedCODVIA: TStringField
      FieldName = 'CODVIA'
      Size = 3
    end
    object CadE120PedPLAVEI: TStringField
      FieldName = 'PLAVEI'
      Size = 10
    end
    object CadE120PedVLRFUM: TBCDField
      FieldName = 'VLRFUM'
      Precision = 15
      Size = 2
    end
    object CadE120PedQTDFRE: TFMTBCDField
      FieldName = 'QTDFRE'
      Precision = 14
      Size = 5
    end
    object CadE120PedFORFRE: TIntegerField
      FieldName = 'FORFRE'
    end
    object CadE120PedVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object CadE120PedCIFFOB: TStringField
      FieldName = 'CIFFOB'
      Size = 1
    end
    object CadE120PedVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object CadE120PedPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object CadE120PedPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object CadE120PedPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object CadE120PedPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object CadE120PedVLRBPR: TBCDField
      FieldName = 'VLRBPR'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDPR: TBCDField
      FieldName = 'VLRDPR'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBSE: TBCDField
      FieldName = 'VLRBSE'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDSE: TBCDField
      FieldName = 'VLRDSE'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRSIC: TBCDField
      FieldName = 'VLRSIC'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBIS: TBCDField
      FieldName = 'VLRBIS'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBIN: TBCDField
      FieldName = 'VLRBIN'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRINS: TBCDField
      FieldName = 'VLRINS'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRLSE: TBCDField
      FieldName = 'VLRLSE'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRADT: TBCDField
      FieldName = 'VLRADT'
      Precision = 15
      Size = 2
    end
    object CadE120PedQTDORI: TFMTBCDField
      FieldName = 'QTDORI'
      Precision = 14
      Size = 5
    end
    object CadE120PedVLRORI: TBCDField
      FieldName = 'VLRORI'
      Precision = 15
      Size = 2
    end
    object CadE120PedTEMPAR: TStringField
      FieldName = 'TEMPAR'
      Size = 1
    end
    object CadE120PedCODPOR: TStringField
      FieldName = 'CODPOR'
      Size = 4
    end
    object CadE120PedCODCRT: TStringField
      FieldName = 'CODCRT'
      Size = 2
    end
    object CadE120PedSITPED: TIntegerField
      FieldName = 'SITPED'
    end
    object CadE120PedCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object CadE120PedOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object CadE120PedPEDBLO: TStringField
      FieldName = 'PEDBLO'
      Size = 1
    end
    object CadE120PedUSUBLO: TBCDField
      FieldName = 'USUBLO'
      Precision = 10
      Size = 0
    end
    object CadE120PedDATBLO: TDateTimeField
      FieldName = 'DATBLO'
    end
    object CadE120PedHORBLO: TIntegerField
      FieldName = 'HORBLO'
    end
    object CadE120PedINDSIG: TStringField
      FieldName = 'INDSIG'
      Size = 1
    end
    object CadE120PedVERCAL: TIntegerField
      FieldName = 'VERCAL'
    end
    object CadE120PedHORINI: TIntegerField
      FieldName = 'HORINI'
    end
    object CadE120PedHORFIM: TIntegerField
      FieldName = 'HORFIM'
    end
    object CadE120PedUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object CadE120PedDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object CadE120PedHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object CadE120PedPERFRE: TBCDField
      FieldName = 'PERFRE'
      Precision = 5
      Size = 2
    end
    object CadE120PedPERSEG: TBCDField
      FieldName = 'PERSEG'
      Precision = 5
      Size = 2
    end
    object CadE120PedPEREMB: TBCDField
      FieldName = 'PEREMB'
      Precision = 5
      Size = 2
    end
    object CadE120PedPERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
    object CadE120PedPEROUT: TBCDField
      FieldName = 'PEROUT'
      Precision = 5
      Size = 2
    end
    object CadE120PedCODSAC: TBCDField
      FieldName = 'CODSAC'
      Precision = 14
      Size = 0
    end
    object CadE120PedCODOPE: TIntegerField
      FieldName = 'CODOPE'
    end
    object CadE120PedCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object CadE120PedPEDPAL: TIntegerField
      FieldName = 'PEDPAL'
    end
    object CadE120PedACEPAR: TStringField
      FieldName = 'ACEPAR'
      Size = 1
    end
    object CadE120PedPEROF1: TBCDField
      FieldName = 'PEROF1'
      Precision = 5
      Size = 2
    end
    object CadE120PedPEROF2: TBCDField
      FieldName = 'PEROF2'
      Precision = 5
      Size = 2
    end
    object CadE120PedUSUFEC: TBCDField
      FieldName = 'USUFEC'
      Precision = 10
      Size = 0
    end
    object CadE120PedDATFEC: TDateTimeField
      FieldName = 'DATFEC'
    end
    object CadE120PedHORFEC: TIntegerField
      FieldName = 'HORFEC'
    end
    object CadE120PedCLIREL: TIntegerField
      FieldName = 'CLIREL'
    end
    object CadE120PedVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object CadE120PedCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object CadE120PedCODSRO: TStringField
      FieldName = 'CODSRO'
      Size = 3
    end
    object CadE120PedFILFAT: TIntegerField
      FieldName = 'FILFAT'
    end
    object CadE120PedCODCDI: TIntegerField
      FieldName = 'CODCDI'
    end
    object CadE120PedCODLIP: TStringField
      FieldName = 'CODLIP'
      Size = 5
    end
    object CadE120PedCEPFRE: TIntegerField
      FieldName = 'CEPFRE'
    end
    object CadE120PedVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object CadE120PedANAEMB: TStringField
      FieldName = 'ANAEMB'
      Size = 1
    end
    object CadE120PedNUMEMP: TStringField
      FieldName = 'NUMEMP'
    end
    object CadE120PedQTDANE: TIntegerField
      FieldName = 'QTDANE'
    end
    object CadE120PedDATAGE: TDateTimeField
      FieldName = 'DATAGE'
    end
    object CadE120PedFILNCO: TIntegerField
      FieldName = 'FILNCO'
    end
    object CadE120PedSNFNCO: TStringField
      FieldName = 'SNFNCO'
      Size = 3
    end
    object CadE120PedNUMNCO: TIntegerField
      FieldName = 'NUMNCO'
    end
    object CadE120PedEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object CadE120PedVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object CadE120PedCODAPC: TIntegerField
      FieldName = 'CODAPC'
    end
    object CadE120PedSOMFRE: TStringField
      FieldName = 'SOMFRE'
      Size = 1
    end
    object CadE120PedQTDITP: TIntegerField
      FieldName = 'QTDITP'
    end
    object CadE120PedQTDITS: TIntegerField
      FieldName = 'QTDITS'
    end
    object CadE120PedPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object CadE120PedVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object CadE120PedROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object CadE120PedNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object CadE120PedUSU_FILDIV: TIntegerField
      FieldName = 'USU_FILDIV'
    end
    object CadE120PedUSU_PEDDIV: TIntegerField
      FieldName = 'USU_PEDDIV'
    end
    object CadE120PedUSU_USUDIV: TBCDField
      FieldName = 'USU_USUDIV'
      Precision = 10
      Size = 0
    end
    object CadE120PedUSU_DATDIV: TDateTimeField
      FieldName = 'USU_DATDIV'
    end
    object CadE120PedUSU_HORDIV: TIntegerField
      FieldName = 'USU_HORDIV'
    end
    object CadE120PedUSU_PEDTRA: TStringField
      FieldName = 'USU_PEDTRA'
      Size = 1
    end
    object CadE120PedUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object CadE120PedUSU_USUDES: TBCDField
      FieldName = 'USU_USUDES'
      Precision = 10
      Size = 0
    end
    object CadE120PedUSU_DATDES: TDateTimeField
      FieldName = 'USU_DATDES'
    end
    object CadE120PedUSU_HORDES: TIntegerField
      FieldName = 'USU_HORDES'
    end
    object CadE120PedNUMNSU: TBCDField
      FieldName = 'NUMNSU'
      Precision = 10
      Size = 0
    end
    object CadE120PedDATNSU: TDateTimeField
      FieldName = 'DATNSU'
    end
    object CadE120PedHORNSU: TIntegerField
      FieldName = 'HORNSU'
    end
    object CadE120PedINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object CadE120PedFATPED: TIntegerField
      FieldName = 'FATPED'
    end
    object CadE120PedQTDBPF: TBCDField
      FieldName = 'QTDBPF'
      Precision = 15
      Size = 3
    end
    object CadE120PedQTDBCF: TBCDField
      FieldName = 'QTDBCF'
      Precision = 15
      Size = 3
    end
    object CadE120PedQTDBIP: TBCDField
      FieldName = 'QTDBIP'
      Precision = 15
      Size = 3
    end
    object CadE120PedUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
  end
  object CadE120Ipd: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e120ipd where'
      '                      codemp = :codemp and'
      '                      codfil = :codfil and'
      '                      numped = :numped and'
      '                      seqipd = :seqipd')
    Left = 568
    Top = 56
    object CadE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object CadE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object CadE120IpdTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object CadE120IpdPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object CadE120IpdSEQPCL: TStringField
      FieldName = 'SEQPCL'
      Size = 10
    end
    object CadE120IpdPEDPRV: TStringField
      FieldName = 'PEDPRV'
      Size = 1
    end
    object CadE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object CadE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object CadE120IpdCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object CadE120IpdCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object CadE120IpdCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object CadE120IpdCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object CadE120IpdCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object CadE120IpdCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object CadE120IpdCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object CadE120IpdCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object CadE120IpdCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object CadE120IpdCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object CadE120IpdRESEST: TStringField
      FieldName = 'RESEST'
      Size = 1
    end
    object CadE120IpdQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDAEN: TFMTBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDPOC: TFMTBCDField
      FieldName = 'QTDPOC'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDRAE: TFMTBCDField
      FieldName = 'QTDRAE'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDNLP: TFMTBCDField
      FieldName = 'QTDNLP'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDRES: TFMTBCDField
      FieldName = 'QTDRES'
      Precision = 14
      Size = 5
    end
    object CadE120IpdUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object CadE120IpdCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object CadE120IpdDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object CadE120IpdCOTMFP: TFMTBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object CadE120IpdDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object CadE120IpdCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object CadE120IpdFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object CadE120IpdCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object CadE120IpdPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object CadE120IpdCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object CadE120IpdPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object CadE120IpdPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPEROFE: TBCDField
      FieldName = 'PEROFE'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPERACR: TBCDField
      FieldName = 'PERACR'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object CadE120IpdDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object CadE120IpdDATANE: TDateTimeField
      FieldName = 'DATANE'
    end
    object CadE120IpdDATPOC: TDateTimeField
      FieldName = 'DATPOC'
    end
    object CadE120IpdCODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object CadE120IpdNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object CadE120IpdCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object CadE120IpdCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object CadE120IpdCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object CadE120IpdCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object CadE120IpdVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object CadE120IpdSITIPD: TIntegerField
      FieldName = 'SITIPD'
    end
    object CadE120IpdCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object CadE120IpdOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object CadE120IpdGERNEC: TIntegerField
      FieldName = 'GERNEC'
    end
    object CadE120IpdGERCGA: TStringField
      FieldName = 'GERCGA'
      Size = 1
    end
    object CadE120IpdRESMAN: TStringField
      FieldName = 'RESMAN'
      Size = 1
    end
    object CadE120IpdINDAED: TStringField
      FieldName = 'INDAED'
      Size = 1
    end
    object CadE120IpdNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object CadE120IpdDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object CadE120IpdSEQCVP: TIntegerField
      FieldName = 'SEQCVP'
    end
    object CadE120IpdUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object CadE120IpdDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object CadE120IpdHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object CadE120IpdQTDPPF: TFMTBCDField
      FieldName = 'QTDPPF'
      Precision = 14
      Size = 5
    end
    object CadE120IpdCMPKIT: TStringField
      FieldName = 'CMPKIT'
      Size = 1
    end
    object CadE120IpdFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object CadE120IpdNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object CadE120IpdSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object CadE120IpdUNIVEN: TStringField
      FieldName = 'UNIVEN'
      Size = 3
    end
    object CadE120IpdQTDVEN: TFMTBCDField
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object CadE120IpdPREVEN: TFMTBCDField
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object CadE120IpdPREBRU: TFMTBCDField
      FieldName = 'PREBRU'
      Precision = 14
      Size = 5
    end
    object CadE120IpdFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object CadE120IpdCTRCVS: TIntegerField
      FieldName = 'CTRCVS'
    end
    object CadE120IpdCPTCVS: TDateTimeField
      FieldName = 'CPTCVS'
    end
    object CadE120IpdSEQCVS: TIntegerField
      FieldName = 'SEQCVS'
    end
    object CadE120IpdCODAVC: TIntegerField
      FieldName = 'CODAVC'
    end
    object CadE120IpdCODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object CadE120IpdCODPGR: TStringField
      FieldName = 'CODPGR'
      Size = 5
    end
    object CadE120IpdIDXGRD: TIntegerField
      FieldName = 'IDXGRD'
    end
    object CadE120IpdCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object CadE120IpdCODCLC: TStringField
      FieldName = 'CODCLC'
      Size = 10
    end
    object CadE120IpdPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object CadE120IpdFILPRD: TIntegerField
      FieldName = 'FILPRD'
    end
    object CadE120IpdVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object CadE120IpdINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object CadE120IpdINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object CadE120IpdPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object CadE120IpdVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object CadE120IpdPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object CadE120IpdVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object CadE120IpdPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object CadE120IpdVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object CadE120IpdPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object CadE120IpdVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object CadE120IpdPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object CadE120IpdVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object CadE120IpdFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object CadE120IpdFORNFC: TIntegerField
      FieldName = 'FORNFC'
    end
    object CadE120IpdNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object CadE120IpdSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object CadE120IpdSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object CadE120IpdNCTLCL: TStringField
      FieldName = 'NCTLCL'
    end
    object CadE120IpdNRECLI: TStringField
      FieldName = 'NRECLI'
    end
    object CadE120IpdNOSICL: TBCDField
      FieldName = 'NOSICL'
      Precision = 10
      Size = 0
    end
    object CadE120IpdNOSFCL: TBCDField
      FieldName = 'NOSFCL'
      Precision = 10
      Size = 0
    end
    object CadE120IpdNOCCL1: TStringField
      FieldName = 'NOCCL1'
    end
    object CadE120IpdNOCCL2: TStringField
      FieldName = 'NOCCL2'
    end
    object CadE120IpdNOCCL3: TStringField
      FieldName = 'NOCCL3'
    end
    object CadE120IpdCODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
    object CadE120IpdCTRCVP: TIntegerField
      FieldName = 'CTRCVP'
    end
    object CadE120IpdCPTCVP: TDateTimeField
      FieldName = 'CPTCVP'
    end
    object CadE120IpdSEQCTR: TIntegerField
      FieldName = 'SEQCTR'
    end
    object CadE120IpdINDAPE: TIntegerField
      FieldName = 'INDAPE'
    end
    object CadE120IpdOBSIPD: TStringField
      FieldName = 'OBSIPD'
      Size = 999
    end
    object CadE120IpdSEQISP: TIntegerField
      FieldName = 'SEQISP'
    end
    object CadE120IpdEMPOCP: TIntegerField
      FieldName = 'EMPOCP'
    end
    object CadE120IpdVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object CadE120IpdPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 7
    end
    object CadE120IpdVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object CadE120IpdPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 7
    end
    object CadE120IpdVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object CadE120IpdPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object CadE120IpdVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object CadE120IpdAGRNEC: TStringField
      FieldName = 'AGRNEC'
      Size = 25
    end
    object CadE120IpdAGRPAI: TStringField
      FieldName = 'AGRPAI'
      Size = 25
    end
    object CadE120IpdORIRES: TStringField
      FieldName = 'ORIRES'
      Size = 1
    end
    object CadE120IpdQTDBPF: TBCDField
      FieldName = 'QTDBPF'
      Precision = 15
      Size = 3
    end
    object CadE120IpdALIPIF: TBCDField
      FieldName = 'ALIPIF'
      Precision = 15
    end
    object CadE120IpdQTDBCF: TBCDField
      FieldName = 'QTDBCF'
      Precision = 15
      Size = 3
    end
    object CadE120IpdALICFF: TBCDField
      FieldName = 'ALICFF'
      Precision = 15
    end
    object CadE120IpdQTDBIP: TBCDField
      FieldName = 'QTDBIP'
      Precision = 15
      Size = 3
    end
    object CadE120IpdALIIPI: TBCDField
      FieldName = 'ALIIPI'
      Precision = 15
    end
    object CadE120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object CadE120IpdUSU_CODTEC1: TStringField
      FieldName = 'USU_CODTEC1'
      Size = 14
    end
    object CadE120IpdUSU_CODTEC2: TStringField
      FieldName = 'USU_CODTEC2'
      Size = 14
    end
    object CadE120IpdUSU_QTDREP: TIntegerField
      FieldName = 'USU_QTDREP'
    end
    object CadE120IpdUSU_QTDDIV: TBCDField
      FieldName = 'USU_QTDDIV'
      Precision = 11
      Size = 2
    end
    object CadE120IpdUSU_MEDLAR: TBCDField
      FieldName = 'USU_MEDLAR'
      Precision = 8
      Size = 2
    end
    object CadE120IpdUSU_MEDCOM: TBCDField
      FieldName = 'USU_MEDCOM'
      Precision = 8
      Size = 2
    end
    object CadE120IpdUSU_MEDALT: TBCDField
      FieldName = 'USU_MEDALT'
      Precision = 8
      Size = 2
    end
    object CadE120IpdUSU_PERDESC1: TBCDField
      FieldName = 'USU_PERDESC1'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_PERDESC2: TBCDField
      FieldName = 'USU_PERDESC2'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_PERDESC3: TBCDField
      FieldName = 'USU_PERDESC3'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_PERDESC4: TBCDField
      FieldName = 'USU_PERDESC4'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_PERDESC5: TBCDField
      FieldName = 'USU_PERDESC5'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_PERDESC6: TBCDField
      FieldName = 'USU_PERDESC6'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_CANAPR: TFMTBCDField
      FieldName = 'USU_CANAPR'
      Precision = 14
      Size = 5
    end
    object CadE120IpdUSU_TOTDSC: TBCDField
      FieldName = 'USU_TOTDSC'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_TOTDSCORI: TBCDField
      FieldName = 'USU_TOTDSCORI'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_VLRORI: TBCDField
      FieldName = 'USU_VLRORI'
      Precision = 14
      Size = 2
    end
    object CadE120IpdUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
  end
  object CadUsu120Ipd: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqite'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t120ipd where'
      '                          usu_codemp = :codemp and'
      '                          usu_codfil = :codfil and'
      '                          usu_numped = :numped and'
      '                          usu_seqipd = :seqipd and'
      '                          usu_seqite = :seqite')
    Left = 640
    Top = 56
    object CadUsu120IpdUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUsu120IpdUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadUsu120IpdUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object CadUsu120IpdUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object CadUsu120IpdUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object CadUsu120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object CadUsu120IpdUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object CadUsu120IpdUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object CadUsu120IpdUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object CadUsu120IpdUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu120IpdUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu120IpdUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object CadUsu120IpdUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object CadUsu120IpdUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object CadUsu120IpdUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object CadUsu120IpdUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object CadUsu120IpdUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
  end
  object CadE120Obs: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqobs'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e120obs'
      '                 where'
      '                 codemp = :codemp and'
      '                 codfil = :codfil and'
      '                 numped = :numped and'
      '                 seqobs = :seqobs')
    Left = 720
    Top = 56
    object CadE120ObsCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE120ObsCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE120ObsNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object CadE120ObsSEQOBS: TIntegerField
      FieldName = 'SEQOBS'
    end
    object CadE120ObsTIPOBS: TStringField
      FieldName = 'TIPOBS'
      Size = 1
    end
    object CadE120ObsCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object CadE120ObsOBSPED: TStringField
      FieldName = 'OBSPED'
      Size = 250
    end
    object CadE120ObsOBSUSU: TBCDField
      FieldName = 'OBSUSU'
      Precision = 10
      Size = 0
    end
    object CadE120ObsOBSDAT: TDateTimeField
      FieldName = 'OBSDAT'
    end
    object CadE120ObsOBSHOR: TIntegerField
      FieldName = 'OBSHOR'
    end
    object CadE120ObsSOLOBS: TStringField
      FieldName = 'SOLOBS'
      Size = 250
    end
    object CadE120ObsSOLUSU: TBCDField
      FieldName = 'SOLUSU'
      Precision = 10
      Size = 0
    end
    object CadE120ObsSOLDAT: TDateTimeField
      FieldName = 'SOLDAT'
    end
    object CadE120ObsSOLHOR: TIntegerField
      FieldName = 'SOLHOR'
    end
    object CadE120ObsSITOBS: TStringField
      FieldName = 'SITOBS'
      Size = 1
    end
    object CadE120ObsAREOBS: TStringField
      FieldName = 'AREOBS'
      Size = 3
    end
    object CadE120ObsAPRRPR: TStringField
      FieldName = 'APRRPR'
      Size = 1
    end
    object CadE120ObsSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object CadE120ObsSEQISP: TIntegerField
      FieldName = 'SEQISP'
    end
    object CadE120ObsUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
  end
  object ConsE301TcrAVen: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'data'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'data'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'codcli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select (select sum(e301tcr.vlrabe)  from e301tcr where'
      '                       e301tcr.sittit in ('#39'AB'#39','#39'AC'#39')and'
      '                       e301tcr.vctpro >= :data and'
      
        '                       e301tcr.codcli = e085cli.codcli) as VlrAV' +
        'en,'
      ' (select sum(e301tcr.vlrabe)  from e301tcr where'
      '                       e301tcr.sittit in ('#39'AB'#39','#39'AC'#39')and'
      '                       e301tcr.vctpro < :data and'
      
        '                       e301tcr.codcli = e085cli.codcli) as VlrVe' +
        'n ,'
      'e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.cgccpf,'
      
        '       e085cli.endcli,e085cli.nencli,e085cli.baicli,e085cli.cple' +
        'nd,'
      '       e085cli.cidcli,e085cli.sigufs,e085cli.foncli,'
      '       e085hcl.codrep,e090rep.nomrep,e090rep.aperep'
      '                                                      from'
      '                                                      e085cli'
      'inner join e085hcl on e085hcl.codcli = e085cli.codcli'
      'inner join e090rep on e090rep.codrep = e085hcl.codrep'
      '                                                      where'
      
        '                                                      e085cli.co' +
        'dcli = :codcli and'
      
        '                                                      e085hcl.co' +
        'dfil = 1')
    Left = 184
    Top = 232
    object ConsE301TcrAVenVLRAVEN: TFMTBCDField
      FieldName = 'VLRAVEN'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ConsE301TcrAVenCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
  end
  object CadUsu_TDerCor: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codtec'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tdercor where'
      '                          usu_codemp = :codemp and'
      '                          usu_codpro = :codpro and'
      '                          usu_codder = :codder and'
      '                          usu_codtec = :codtec')
    Left = 400
    Top = 48
    object CadUsu_TDerCorUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUsu_TDerCorUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TDerCorUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu_TDerCorUSU_CODTEC: TStringField
      FieldName = 'USU_CODTEC'
      Size = 14
    end
    object CadUsu_TDerCorUSU_SITTEC: TStringField
      FieldName = 'USU_SITTEC'
      Size = 1
    end
    object CadUsu_TDerCorUSU_DESTEC: TStringField
      FieldName = 'USU_DESTEC'
      Size = 50
    end
  end
  object ComparativoComprasCli: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    AfterScroll = ComparativoComprasCliAfterScroll
    Parameters = <
      item
        Name = 'DatEstofIAnt'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatEstofFAnt'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatEstofIAtu'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatEstofFAtu'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatColchIAnt'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatColchFAnt'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatColchIAtu'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatColchFAtu'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatIniP'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatFimP'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatIniS'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatFimS'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'CodCli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CodRep'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.cidc' +
        'li,e085cli.sigufs,e085cli.foncli,e085cli.emanfe,'
      '       e085hcl.codrep,e090rep.aperep,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      
        '        inner join e075pro on e075pro.codemp = e140ipv.codemp an' +
        'd'
      '                              e075pro.codpro = e140ipv.codpro'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      '                             e075pro.codagp = '#39'ESTOF'#39' and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between :DatEstofIAn' +
        't and :DatEstofFAnt) as TotEstofAnt,'
      '        (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      
        '        inner join e075pro on e075pro.codemp = e140ipv.codemp an' +
        'd'
      '                              e075pro.codpro = e140ipv.codpro'
      '                              where'
      
        '                              e140nfv.codcli = e085cli.codcli an' +
        'd'
      '                              e075pro.codagp = '#39'ESTOF'#39' and'
      
        '                              e140ipv.tnspro not in ('#39'6949'#39','#39'594' +
        '9'#39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39 +
        '5916R'#39','#39'6916R'#39') and'
      
        '                              e140nfv.datemi between :DatEstofIA' +
        'tu and :DatEstofFAtu)  as TotEstofAtu,'
      '          (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      
        '        inner join e075pro on e075pro.codemp = e140ipv.codemp an' +
        'd'
      '                              e075pro.codpro = e140ipv.codpro'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      '                             e075pro.codagp = '#39'COLCH'#39' and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between :DatColchIAn' +
        't and :DatColchFAnt) as TotColchAnt,'
      '          (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      
        '        inner join e075pro on e075pro.codemp = e140ipv.codemp an' +
        'd'
      '                              e075pro.codpro = e140ipv.codpro'
      '                              where'
      
        '                              e140nfv.codcli = e085cli.codcli an' +
        'd'
      '                              e075pro.codagp = '#39'COLCH'#39' and'
      
        '                              e140ipv.tnspro not in ('#39'6949'#39','#39'594' +
        '9'#39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39 +
        '5916R'#39','#39'6916R'#39') and'
      
        '                              e140nfv.datemi between :DatColchIA' +
        'tu and :DatColchFAtu)  as TotColchAtu,'
      '         (select sum(e120ipd.vlrbru) from e120ipd'
      '       inner join e120ped on e120ped.codemp = e120ipd.codemp and'
      '                             e120ped.codfil = e120ipd.codfil and'
      '                             e120ped.numped = e120ipd.numped'
      '       inner join e075pro on e075pro.codemp = e120ipd.codemp and'
      '                             e075pro.codpro = e120ipd.codpro'
      '                             where'
      
        '                             e120ipd.tnspro in ('#39'90100'#39','#39'90106'#39',' +
        #39'90160'#39') and'
      '                             e120ped.sitped in (1,2,3) and'
      '                             e120ped.codcli = e085cli.codcli and'
      
        '                             e075pro.codagp = '#39'ESTOF'#39') as TotPed' +
        'AbeEstof,'
      '      (select sum(e120ipd.vlrbru) from e120ipd'
      '       inner join e120ped on e120ped.codemp = e120ipd.codemp and'
      '                             e120ped.codfil = e120ipd.codfil and'
      '                             e120ped.numped = e120ipd.numped'
      '       inner join e075pro on e075pro.codemp = e120ipd.codemp and'
      '                             e075pro.codpro = e120ipd.codpro'
      '                             where'
      
        '                             e120ipd.tnspro in ('#39'90100'#39','#39'90106'#39',' +
        #39'90160'#39') and'
      '                             e120ped.sitped in (1,2,3) and'
      '                             e120ped.codcli = e085cli.codcli and'
      
        '                             e075pro.codagp = '#39'COLCH'#39') as TotPed' +
        'AbeColch'
      '                                from e085cli'
      'inner join e085hcl on e085hcl.codcli = e085cli.codcli'
      'inner join e090rep on e090rep.codrep = e085hcl.codrep'
      '                                where'
      
        '                                ((select sum(e140ipv.vlrbru) fro' +
        'm e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      
        '                              e140nfv.codcli = e085cli.codcli an' +
        'd'
      
        '                              e140ipv.tnspro not in ('#39'6949'#39','#39'594' +
        '9'#39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39 +
        '5916R'#39','#39'6916R'#39') and '
      
        '                              e140nfv.datemi between :DatIniP an' +
        'd :DatFimP) < (select sum(e140ipv.vlrbru) from e140ipv'
      
        '                                                                ' +
        '                       inner join e140nfv on e140nfv.codemp = e1' +
        '40ipv.codemp and'
      
        '                                                                ' +
        '                                             e140nfv.codfil = e1' +
        '40ipv.codfil and'
      
        '                                                                ' +
        '                                             e140nfv.codsnf = e1' +
        '40ipv.codsnf and'
      
        '                                                                ' +
        '                                             e140nfv.numnfv = e1' +
        '40ipv.numnfv'
      
        '                                                                ' +
        '                                             where'
      
        '                                                                ' +
        '                                             e140nfv.codcli = e0' +
        '85cli.codcli and'
      
        '                                                                ' +
        '                                             e140ipv.tnspro not ' +
        'in ('#39'6949'#39','#39'5949'#39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39',' +
        #39'5916'#39','#39'6916'#39','#39'5916R'#39','#39'6916R'#39') and'
      
        '                                                                ' +
        '                                             e140nfv.datemi betw' +
        'een :DatIniS and :DatFimS))and'
      '                              e085cli.codcli = :CodCli and'
      '                              e085hcl.codemp = 1 and'
      '                              e085hcl.codfil = 1 and'
      '                              e085hcl.codrep = :CodRep')
    Left = 576
    Top = 232
    object ComparativoComprasCliImagem: TStringField
      FieldKind = fkCalculated
      FieldName = 'Imagem'
      Size = 10
      Calculated = True
    end
    object ComparativoComprasCliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ComparativoComprasCliNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ComparativoComprasCliAPECLI: TStringField
      FieldName = 'APECLI'
      Size = 50
    end
    object ComparativoComprasCliCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ComparativoComprasCliSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ComparativoComprasCliFONCLI: TStringField
      FieldName = 'FONCLI'
    end
    object ComparativoComprasCliEMANFE: TStringField
      FieldName = 'EMANFE'
      Size = 100
    end
    object ComparativoComprasCliCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ComparativoComprasCliAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ComparativoComprasCliTOTESTOFANT: TFMTBCDField
      FieldName = 'TOTESTOFANT'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliTOTESTOFATU: TFMTBCDField
      FieldName = 'TOTESTOFATU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliTOTCOLCHANT: TFMTBCDField
      FieldName = 'TOTCOLCHANT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliTOTCOLCHATU: TFMTBCDField
      FieldName = 'TOTCOLCHATU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliTOTPEDABEESTOF: TFMTBCDField
      FieldName = 'TOTPEDABEESTOF'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliTOTPEDABECOLCH: TFMTBCDField
      FieldName = 'TOTPEDABECOLCH'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
  end
  object ComparativoComprasCliMes: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codcli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e085cli.codcli,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/01/2017'#39 +
        ' and '#39'31/01/2017'#39') as TotJaneiroAnt,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/01/2018'#39 +
        ' and '#39'31/01/2018'#39') as TotJaneiroAtu,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/02/2017'#39 +
        ' and '#39'28/02/2017'#39') as TotFevereiroAnt,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/02/2018'#39 +
        ' and '#39'28/02/2018'#39') as TotFevereiroAtu,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/03/2017'#39 +
        ' and '#39'31/03/2017'#39') as TotMarcoAnt,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/03/2018'#39 +
        ' and '#39'31/03/2018'#39') as TotMarcoAtu,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/04/2017'#39 +
        ' and '#39'30/04/2017'#39') as TotAbrilAnt,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/04/2018'#39 +
        ' and '#39'30/04/2018'#39') as TotAbrilAtu,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/05/2017'#39 +
        ' and '#39'31/05/2017'#39') as TotMaioAnt,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/05/2018'#39 +
        ' and '#39'31/05/2018'#39') as TotMaioAtu,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/06/2017'#39 +
        ' and '#39'30/06/2017'#39') as TotJunhoAnt,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/06/2018'#39 +
        ' and '#39'30/06/2018'#39') as TotJunhoAtu,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/07/2017'#39 +
        ' and '#39'31/07/2017'#39') as TotJulhoAnt,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/07/2018'#39 +
        ' and '#39'31/07/2018'#39') as TotJulhoAtu,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/08/2017'#39 +
        ' and '#39'31/08/2017'#39') as TotAgostoAnt,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/08/2018'#39 +
        ' and '#39'31/08/2018'#39') as TotAgostoAtu,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/09/2017'#39 +
        ' and '#39'30/09/2017'#39') as TotSetembroAnt,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/09/2018'#39 +
        ' and '#39'30/09/2018'#39') as TotSetembroAtu,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/10/2017'#39 +
        ' and '#39'31/10/2017'#39') as TotOutubroAnt,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/10/2018'#39 +
        ' and '#39'31/10/2018'#39') as TotOutubroAtu,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/11/2017'#39 +
        ' and '#39'30/11/2017'#39') as TotNovembroAnt,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/11/2018'#39 +
        ' and '#39'30/11/2018'#39') as TotNovembroAtu,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/12/2017'#39 +
        ' and '#39'31/12/2017'#39') as TotDezembroAnt,'
      '       (select sum(e140ipv.vlrbru) from e140ipv'
      
        '        inner join e140nfv on e140nfv.codemp = e140ipv.codemp an' +
        'd'
      
        '                              e140nfv.codfil = e140ipv.codfil an' +
        'd'
      
        '                              e140nfv.codsnf = e140ipv.codsnf an' +
        'd'
      '                              e140nfv.numnfv = e140ipv.numnfv'
      '                              where'
      '                             e140nfv.codcli = e085cli.codcli and'
      
        '                             e140ipv.tnspro not in ('#39'6949'#39','#39'5949' +
        #39','#39'6949R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5' +
        '916R'#39','#39'6916R'#39') and'
      
        '                             e140nfv.datemi between '#39'01/12/2018'#39 +
        ' and '#39'31/12/2018'#39') as TotdezembroAtu'
      '                    from e085cli'
      '                    where'
      '                    e085cli.codcli = :codcli'
      ''
      '')
    Left = 584
    Top = 280
    object ComparativoComprasCliMesCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ComparativoComprasCliMesTOTJANEIROANT: TFMTBCDField
      FieldName = 'TOTJANEIROANT'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTJANEIROATU: TFMTBCDField
      FieldName = 'TOTJANEIROATU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTFEVEREIROANT: TFMTBCDField
      FieldName = 'TOTFEVEREIROANT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTFEVEREIROATU: TFMTBCDField
      FieldName = 'TOTFEVEREIROATU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTMARCOANT: TFMTBCDField
      FieldName = 'TOTMARCOANT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTMARCOATU: TFMTBCDField
      FieldName = 'TOTMARCOATU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTABRILANT: TFMTBCDField
      FieldName = 'TOTABRILANT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTABRILATU: TFMTBCDField
      FieldName = 'TOTABRILATU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTMAIOANT: TFMTBCDField
      FieldName = 'TOTMAIOANT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTMAIOATU: TFMTBCDField
      FieldName = 'TOTMAIOATU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTJUNHOANT: TFMTBCDField
      FieldName = 'TOTJUNHOANT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTJUNHOATU: TFMTBCDField
      FieldName = 'TOTJUNHOATU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTJULHOANT: TFMTBCDField
      FieldName = 'TOTJULHOANT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTJULHOATU: TFMTBCDField
      FieldName = 'TOTJULHOATU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTAGOSTOANT: TFMTBCDField
      FieldName = 'TOTAGOSTOANT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTAGOSTOATU: TFMTBCDField
      FieldName = 'TOTAGOSTOATU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTSETEMBROANT: TFMTBCDField
      FieldName = 'TOTSETEMBROANT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTSETEMBROATU: TFMTBCDField
      FieldName = 'TOTSETEMBROATU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTOUTUBROANT: TFMTBCDField
      FieldName = 'TOTOUTUBROANT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTOUTUBROATU: TFMTBCDField
      FieldName = 'TOTOUTUBROATU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTNOVEMBROANT: TFMTBCDField
      FieldName = 'TOTNOVEMBROANT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTNOVEMBROATU: TFMTBCDField
      FieldName = 'TOTNOVEMBROATU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTDEZEMBROANT: TFMTBCDField
      FieldName = 'TOTDEZEMBROANT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ComparativoComprasCliMesTOTDEZEMBROATU: TFMTBCDField
      FieldName = 'TOTDEZEMBROATU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
  end
  object ConsE301Tcr: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DataA'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DataV'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'CodCli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select (select sum(e301tcr.vlrabe)  from e301tcr where'
      '                       e301tcr.sittit in ('#39'AB'#39','#39'AC'#39')and'
      '                       e301tcr.vctpro >= :DataA and'
      
        '                       e301tcr.codcli = e085cli.codcli) as VlrAV' +
        'en,'
      '       (select sum(e301tcr.vlrabe)  from e301tcr where'
      
        '                                    e301tcr.sittit in ('#39'AB'#39','#39'AC'#39 +
        ')and'
      '                                    e301tcr.vctpro < :DataV and'
      
        '                                    e301tcr.codcli = e085cli.cod' +
        'cli) as VlrVen'
      '                                    from'
      '                                    e085cli'
      '                                    where'
      '                                    e085cli.codcli = :CodCli')
    Left = 464
    Top = 272
    object ConsE301TcrVLRAVEN: TFMTBCDField
      FieldName = 'VLRAVEN'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ConsE301TcrVLRVEN: TFMTBCDField
      FieldName = 'VLRVEN'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
  end
  object ProdComparativoComprasCli: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'datini'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'datfim'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'codcli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codagp'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select distinct (e140ipv.codpro), sum(e140ipv.qtdfat) as QtdFat,' +
        ' sum(e140ipv.vlrbru) as VlrBru,e140ipv.codpro,e075pro.despro'
      '   from e140ipv'
      'inner join e140nfv on e140nfv.codemp = e140ipv.codemp and'
      '                      e140nfv.codfil = e140ipv.codfil and'
      '                      e140nfv.numnfv = e140ipv.numnfv and'
      '                      e140nfv.codsnf = e140ipv.codsnf'
      'inner join e075pro on e075pro.codemp = e140ipv.codemp and'
      '                      e075pro.codpro = e140ipv.codpro'
      '                      where'
      
        '                      e140nfv.datemi between :datini and :datfim' +
        ' and'
      '                      e140nfv.codcli = :codcli and'
      
        '                      e140ipv.tnspro not in ('#39'6949'#39','#39'5949'#39','#39'6949' +
        'R'#39','#39'5949R'#39','#39'6910'#39','#39'5910'#39','#39'6910R'#39','#39'5910R'#39','#39'5916'#39','#39'6916'#39','#39'5916R'#39','#39 +
        '6916R'#39') and'
      '                      e075pro.codagc = :codagp'
      '                      group by e140ipv.codpro,e075pro.despro'
      '                      order by e140ipv.codpro')
    Left = 440
    Top = 232
    object ProdComparativoComprasCliCODPRO: TStringField
      FieldName = 'CODPRO'
      ReadOnly = True
      Size = 14
    end
    object ProdComparativoComprasCliQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ProdComparativoComprasCliVLRBRU: TFMTBCDField
      FieldName = 'VLRBRU'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ProdComparativoComprasCliCODPRO_1: TStringField
      FieldName = 'CODPRO_1'
      Size = 14
    end
    object ProdComparativoComprasCliDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object CadUsu_TRelVia: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_trelvia where'
      '                          usu_codemp = :codemp and'
      '                          usu_codfil = :codfil and'
      '                          usu_numane = :numane')
    Left = 688
    Top = 240
    object CadUsu_TRelViaUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object CadUsu_TRelViaUSU_DATSAI: TDateTimeField
      FieldName = 'USU_DATSAI'
    end
    object CadUsu_TRelViaUSU_DATCHE: TDateTimeField
      FieldName = 'USU_DATCHE'
    end
    object CadUsu_TRelViaUSU_KMSAI: TBCDField
      FieldName = 'USU_KMSAI'
      Precision = 10
      Size = 1
    end
    object CadUsu_TRelViaUSU_KMCHE: TBCDField
      FieldName = 'USU_KMCHE'
      Precision = 10
      Size = 1
    end
    object CadUsu_TRelViaUSU_QTCOMB: TBCDField
      FieldName = 'USU_QTCOMB'
      Precision = 10
      Size = 1
    end
    object CadUsu_TRelViaUSU_VALLIT: TBCDField
      FieldName = 'USU_VALLIT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 12
      Size = 3
    end
    object CadUsu_TRelViaUSU_VALCOM: TBCDField
      FieldName = 'USU_VALCOM'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object CadUsu_TRelViaUSU_VALPED: TBCDField
      FieldName = 'USU_VALPED'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object CadUsu_TRelViaUSU_VALDES: TBCDField
      FieldName = 'USU_VALDES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object CadUsu_TRelViaUSU_VALREF: TBCDField
      FieldName = 'USU_VALREF'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object CadUsu_TRelViaUSU_OUTDES: TBCDField
      FieldName = 'USU_OUTDES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object CadUsu_TRelViaUSU_QTCHEQ: TIntegerField
      FieldName = 'USU_QTCHEQ'
    end
    object CadUsu_TRelViaUSU_PLAVEI: TStringField
      FieldName = 'USU_PLAVEI'
      Size = 10
    end
    object CadUsu_TRelViaUSU_CODTRA: TIntegerField
      FieldName = 'USU_CODTRA'
    end
    object CadUsu_TRelViaUSU_CODMTR: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'USU_CODMTR'
    end
    object CadUsu_TRelViaUSU_DATLAN: TDateTimeField
      FieldName = 'USU_DATLAN'
    end
    object CadUsu_TRelViaUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUsu_TRelViaUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadUsu_TRelViaUSU_CODUSU: TBCDField
      FieldName = 'USU_CODUSU'
      Precision = 10
      Size = 0
    end
    object CadUsu_TRelViaUSU_TOTKM: TBCDField
      FieldName = 'USU_TOTKM'
      Precision = 10
      Size = 1
    end
    object CadUsu_TRelViaUSU_MEDKM: TBCDField
      FieldName = 'USU_MEDKM'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 5
      Size = 2
    end
    object CadUsu_TRelViaUSU_RETCAR: TStringField
      FieldName = 'USU_RETCAR'
      Size = 1
    end
  end
  object CadUsu_T097Pen: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    AfterInsert = CadUsu_T097PenAfterInsert
    BeforePost = CadUsu_T097PenBeforePost
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numpen'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t097pen where usu_codemp = :codemp and'
      '                                usu_numpen = :numpen')
    Left = 520
    Top = 120
    object CadUsu_T097PenUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUsu_T097PenUSU_NUMPEN: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'USU_NUMPEN'
    end
    object CadUsu_T097PenUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object CadUsu_T097PenUSU_TIPPEN: TStringField
      FieldName = 'USU_TIPPEN'
    end
    object CadUsu_T097PenUSU_SITPEN: TStringField
      FieldName = 'USU_SITPEN'
      Size = 2
    end
    object CadUsu_T097PenUSU_DESPEN: TStringField
      FieldName = 'USU_DESPEN'
      Size = 300
    end
    object CadUsu_T097PenUSU_OBSPEN: TStringField
      FieldName = 'USU_OBSPEN'
      Size = 200
    end
    object CadUsu_T097PenUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object CadUsu_T097PenUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object CadUsu_T097PenUSU_USUGER: TIntegerField
      FieldName = 'USU_USUGER'
    end
  end
  object CadUsu_T097Ppen: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    BeforeInsert = CadUsu_T097PpenBeforeInsert
    AfterInsert = CadUsu_T097PpenAfterInsert
    BeforePost = CadUsu_T097PpenBeforePost
    AfterPost = CadUsu_T097PpenAfterPost
    AfterScroll = CadUsu_T097PpenAfterScroll
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numpen'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t097Ppen where usu_codemp = :codemp and'
      '                                usu_numpen = :numpen')
    Left = 624
    Top = 120
    object CadUsu_T097PpenUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUsu_T097PpenUSU_NUMPEN: TIntegerField
      FieldName = 'USU_NUMPEN'
    end
    object CadUsu_T097PpenUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object CadUsu_T097PpenUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_T097PpenUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu_T097PpenUSU_COR01: TStringField
      FieldName = 'USU_COR01'
      Size = 14
    end
    object CadUsu_T097PpenUSU_COR02: TStringField
      FieldName = 'USU_COR02'
      Size = 14
    end
    object CadUsu_T097PpenUSU_OBSPRO: TStringField
      FieldName = 'USU_OBSPRO'
      Size = 200
    end
    object CadUsu_T097PpenUSU_SITIPD: TStringField
      FieldName = 'USU_SITIPD'
      Size = 1
    end
    object CadUsu_T097PpenUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object CadUsu_T097PpenUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object CadUsu_T097PpenUSU_USUGER: TIntegerField
      FieldName = 'USU_USUGER'
    end
    object CadUsu_T097PpenUSU_VLRPRO: TBCDField
      FieldName = 'USU_VLRPRO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object CadUsu_T097PpenUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
  end
  object ClientResultado_old: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 408
    Data = {
      150100009619E0BD010000001800000008000000000003000000150106446174
      496E6904000600000000000644617446696D040006000000000008546F744573
      746F66080004000000010007535542545950450200490006004D6F6E65790008
      546F74436F6C6368080004000000010007535542545950450200490006004D6F
      6E65790008546F74446976657208000400000001000753554254595045020049
      0006004D6F6E65790008546F74427275746F0800040000000100075355425459
      50450200490006004D6F6E65790006546F744C69710800040000000100075355
      42545950450200490006004D6F6E65790009546F744F7574726F730800040000
      00010007535542545950450200490006004D6F6E6579000000}
    object ClientResultado_oldDatIni: TDateField
      Alignment = taCenter
      FieldName = 'DatIni'
      DisplayFormat = 'DD/MM/YYYY'
      EditMask = 'DD/MM/YYYY'
    end
    object ClientResultado_oldDatFim: TDateField
      Alignment = taCenter
      FieldName = 'DatFim'
      DisplayFormat = 'DD/MM/YYYY'
      EditMask = 'DD/MM/YYYY'
    end
    object ClientResultado_oldTotEstof: TCurrencyField
      Alignment = taCenter
      FieldName = 'TotEstof'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      currency = False
    end
    object ClientResultado_oldTotColch: TCurrencyField
      Alignment = taCenter
      FieldName = 'TotColch'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      currency = False
    end
    object ClientResultado_oldTotDiver: TCurrencyField
      Alignment = taCenter
      FieldName = 'TotDiver'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      currency = False
    end
    object ClientResultado_oldTotBruto: TCurrencyField
      Alignment = taCenter
      FieldName = 'TotBruto'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      currency = False
    end
    object ClientResultado_oldTotLiq: TCurrencyField
      Alignment = taCenter
      FieldName = 'TotLiq'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      currency = False
    end
    object ClientResultado_oldTotOutros: TCurrencyField
      Alignment = taCenter
      FieldName = 'TotOutros'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      currency = False
    end
  end
  object CadUsu_TCidades: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    BeforePost = CadUsu_TCidadesBeforePost
    AfterPost = CadUsu_TCidadesAfterPost
    Parameters = <>
    SQL.Strings = (
      'select usu_tcidades.* from usu_tcidades')
    Left = 520
    Top = 168
    object CadUsu_TCidadesUSU_CODCID: TIntegerField
      FieldName = 'USU_CODCID'
    end
    object CadUsu_TCidadesUSU_NOMCID: TStringField
      FieldName = 'USU_NOMCID'
      Size = 60
    end
    object CadUsu_TCidadesUSU_SIGUFS: TStringField
      FieldName = 'USU_SIGUFS'
      Size = 2
    end
    object CadUsu_TCidadesUSU_TOTPOP: TBCDField
      FieldName = 'USU_TOTPOP'
      Precision = 10
      Size = 0
    end
    object CadUsu_TCidadesUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object CadUsu_TCidadesUSU_APEREP: TStringField
      FieldName = 'USU_APEREP'
      Size = 40
    end
  end
  object ClientResultado: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 472
    Data = {
      E90000009619E0BD01000000180000000C000000000003000000E90006446174
      496E6904000600000000000644617446696D040006000000000008546F744573
      746F66080004000000000008546F74436F6C6368080004000000000008546F74
      4469766572080004000000000008546F74427275746F08000400000000000654
      6F744C6971080004000000000009546F744F7574726F73080004000000000008
      446961735472616208000400000000000E4D6564566C72446961735472616208
      000400000000000651746446756E08000400000000000C4D6564566C72517464
      46756E08000400000000000000}
    object ClientResultadoDatIni: TDateField
      FieldName = 'DatIni'
    end
    object ClientResultadoDatFim: TDateField
      FieldName = 'DatFim'
    end
    object ClientResultadoTotEstof: TFloatField
      FieldName = 'TotEstof'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientResultadoTotColch: TFloatField
      FieldName = 'TotColch'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientResultadoTotDiver: TFloatField
      FieldName = 'TotDiver'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientResultadoTotBruto: TFloatField
      FieldName = 'TotBruto'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientResultadoTotLiq: TFloatField
      FieldName = 'TotLiq'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientResultadoTotOutros: TFloatField
      FieldName = 'TotOutros'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientResultadoDiasTrab: TFloatField
      FieldName = 'DiasTrab'
    end
    object ClientResultadoMedVlrDiasTrab: TFloatField
      FieldName = 'MedVlrDiasTrab'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientResultadoQtdFun: TFloatField
      FieldName = 'QtdFun'
    end
    object ClientResultadoMedVlrQtdFun: TFloatField
      FieldName = 'MedVlrQtdFun'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object ConsE085Cli: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'codrep'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.inse' +
        'st,e085cli.cgccpf,e085cli.endcli,e085cli.nencli,'
      
        'e085cli.cplend,e085cli.cepcli,e085cli.baicli,e085cli.cidcli,e085' +
        'cli.sigufs,e085cli.sitcli,'
      
        'e085hcl.codemp,e085hcl.codfil,e085hcl.codrep,e085hcl.saldup,e085' +
        'hcl.datmac,e085hcl.vlrmac,e085hcl.datupe,e085hcl.vlrupe,'
      
        'e085hcl.datufa,e085hcl.vlrufa,e085hcl.datupg,e085hcl.vlrupg,e085' +
        'hcl.qtdpgt,e085hcl.datmfa,e085hcl.vlrmfa,e085hcl.datatr,'
      'e085hcl.vlratr,e085hcl.maiatr,e085hcl.ultnfv'
      
        '                                                        from e08' +
        '5cli'
      'inner join e085hcl on e085hcl.codcli = e085cli.codcli'
      
        '                                          where e085hcl.codemp =' +
        ' 1 and'
      
        '                                                e085hcl.codfil =' +
        ' 1 and'
      
        '                                                e085hcl.codrep =' +
        ' :codrep'
      '                                                order by codcli'
      '')
    Left = 56
    Top = 72
    object ConsE085CliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE085CliNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsE085CliAPECLI: TStringField
      FieldName = 'APECLI'
      Size = 50
    end
    object ConsE085CliINSEST: TStringField
      FieldName = 'INSEST'
      Size = 25
    end
    object ConsE085CliCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
    object ConsE085CliENDCLI: TStringField
      FieldName = 'ENDCLI'
      Size = 100
    end
    object ConsE085CliNENCLI: TStringField
      FieldName = 'NENCLI'
      Size = 60
    end
    object ConsE085CliCPLEND: TStringField
      FieldName = 'CPLEND'
      Size = 60
    end
    object ConsE085CliCEPCLI: TIntegerField
      FieldName = 'CEPCLI'
    end
    object ConsE085CliBAICLI: TStringField
      FieldName = 'BAICLI'
      Size = 75
    end
    object ConsE085CliCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsE085CliSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsE085CliSITCLI: TStringField
      FieldName = 'SITCLI'
      Size = 1
    end
    object ConsE085CliCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE085CliCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE085CliCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE085CliSALDUP: TBCDField
      FieldName = 'SALDUP'
      Precision = 15
      Size = 2
    end
    object ConsE085CliDATMAC: TDateTimeField
      FieldName = 'DATMAC'
    end
    object ConsE085CliVLRMAC: TBCDField
      FieldName = 'VLRMAC'
      Precision = 15
      Size = 2
    end
    object ConsE085CliDATUPE: TDateTimeField
      FieldName = 'DATUPE'
    end
    object ConsE085CliVLRUPE: TBCDField
      FieldName = 'VLRUPE'
      Precision = 15
      Size = 2
    end
    object ConsE085CliDATUFA: TDateTimeField
      FieldName = 'DATUFA'
    end
    object ConsE085CliVLRUFA: TBCDField
      FieldName = 'VLRUFA'
      Precision = 15
      Size = 2
    end
    object ConsE085CliDATUPG: TDateTimeField
      FieldName = 'DATUPG'
    end
    object ConsE085CliVLRUPG: TBCDField
      FieldName = 'VLRUPG'
      Precision = 15
      Size = 2
    end
    object ConsE085CliQTDPGT: TIntegerField
      FieldName = 'QTDPGT'
    end
    object ConsE085CliDATMFA: TDateTimeField
      FieldName = 'DATMFA'
    end
    object ConsE085CliVLRMFA: TBCDField
      FieldName = 'VLRMFA'
      Precision = 15
      Size = 2
    end
    object ConsE085CliDATATR: TDateTimeField
      FieldName = 'DATATR'
    end
    object ConsE085CliVLRATR: TBCDField
      FieldName = 'VLRATR'
      Precision = 15
      Size = 2
    end
    object ConsE085CliMAIATR: TIntegerField
      FieldName = 'MAIATR'
    end
    object ConsE085CliULTNFV: TIntegerField
      FieldName = 'ULTNFV'
    end
  end
  object ConsDesPro: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT E075PRO.DESPRO FROM E075PRO'
      'WHERE'
      'E075PRO.CODPRO = :CODPRO')
    Left = 712
    Top = 128
    object ConsDesProDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object CadUsu_TRhFun: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMCAD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODDEP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_TRHFUN WHERE USU_NUMCAD = :NUMCAD AND'
      
        '                                                               U' +
        'SU_CODDEP = :CODDEP'
      '                                                   ')
    Left = 280
    Top = 440
    object CadUsu_TRhFunUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object CadUsu_TRhFunUSU_NOMFUN: TStringField
      FieldName = 'USU_NOMFUN'
      Size = 40
    end
    object CadUsu_TRhFunUSU_APEFUN: TStringField
      FieldName = 'USU_APEFUN'
      Size = 40
    end
    object CadUsu_TRhFunUSU_DATADM: TDateTimeField
      FieldName = 'USU_DATADM'
    end
    object CadUsu_TRhFunUSU_NUMCPF: TBCDField
      FieldName = 'USU_NUMCPF'
      Precision = 11
      Size = 0
    end
    object CadUsu_TRhFunUSU_TIPCOL: TStringField
      FieldName = 'USU_TIPCOL'
    end
    object CadUsu_TRhFunUSU_CODDEP: TIntegerField
      FieldName = 'USU_CODDEP'
    end
    object CadUsu_TRhFunUSU_SITAFA: TIntegerField
      FieldName = 'USU_SITAFA'
    end
    object CadUsu_TRhFunUSU_DESSIT: TStringField
      FieldName = 'USU_DESSIT'
      Size = 40
    end
    object CadUsu_TRhFunUSU_SITDEP: TStringField
      FieldName = 'USU_SITDEP'
      Size = 10
    end
    object CadUsu_TRhFunUSU_GRAPAR: TIntegerField
      FieldName = 'USU_GRAPAR'
    end
    object CadUsu_TRhFunUSU_DESPAR: TStringField
      FieldName = 'USU_DESPAR'
      Size = 40
    end
  end
  object CadUsu_TRhSerMov: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'SEQSER'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODSER'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_TRHSERMOV WHERE USU_SEQSER = :SEQSER AND'
      
        '                                                                ' +
        '      USU_CODSER = :CODSER')
    Left = 280
    Top = 496
    object CadUsu_TRhSerMovUSU_SEQSER: TIntegerField
      FieldName = 'USU_SEQSER'
    end
    object CadUsu_TRhSerMovUSU_CODSER: TStringField
      FieldName = 'USU_CODSER'
      Size = 40
    end
    object CadUsu_TRhSerMovUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object CadUsu_TRhSerMovUSU_CODDEP: TIntegerField
      FieldName = 'USU_CODDEP'
    end
    object CadUsu_TRhSerMovUSU_QTDSER: TIntegerField
      FieldName = 'USU_QTDSER'
    end
    object CadUsu_TRhSerMovUSU_PREUNI: TBCDField
      FieldName = 'USU_PREUNI'
      Precision = 11
      Size = 2
    end
    object CadUsu_TRhSerMovUSU_DATSER: TDateTimeField
      FieldName = 'USU_DATSER'
    end
    object CadUsu_TRhSerMovUSU_MESSER: TIntegerField
      FieldName = 'USU_MESSER'
    end
    object CadUsu_TRhSerMovUSU_ANOSER: TIntegerField
      FieldName = 'USU_ANOSER'
    end
    object CadUsu_TRhSerMovUSU_NOMFUN: TStringField
      FieldName = 'USU_NOMFUN'
      Size = 40
    end
    object CadUsu_TRhSerMovUSU_OBSSER: TStringField
      FieldName = 'USU_OBSSER'
      Size = 200
    end
    object CadUsu_TRhSerMovUSU_INADT: TStringField
      FieldName = 'USU_INADT'
      Size = 1
    end
    object CadUsu_TRhSerMovUSU_VLRCOB: TBCDField
      FieldName = 'USU_VLRCOB'
      Precision = 11
      Size = 2
    end
    object CadUsu_TRhSerMovUSU_ADTGER: TStringField
      FieldName = 'USU_ADTGER'
      Size = 1
    end
    object CadUsu_TRhSerMovUSU_DATGADT: TDateTimeField
      FieldName = 'USU_DATGADT'
    end
  end
  object ConsFuncionarios: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT FUN.*,'
      
        '(SELECT F.USU_NOMFUN FROM USU_TRHFUN F WHERE F.USU_NUMCAD = FUN.' +
        'USU_NUMCAD AND F.USU_CODDEP = FUN.USU_NUMCAD) as TITULAR'
      'FROM USU_TRHFun FUN'
      'WHERE FUN.USU_SITAFA <> 7')
    Left = 376
    Top = 440
    object ConsFuncionariosUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object ConsFuncionariosUSU_NOMFUN: TStringField
      FieldName = 'USU_NOMFUN'
      Size = 40
    end
    object ConsFuncionariosUSU_APEFUN: TStringField
      FieldName = 'USU_APEFUN'
      Size = 40
    end
    object ConsFuncionariosUSU_DATADM: TDateTimeField
      FieldName = 'USU_DATADM'
    end
    object ConsFuncionariosUSU_NUMCPF: TBCDField
      FieldName = 'USU_NUMCPF'
      Precision = 11
      Size = 0
    end
    object ConsFuncionariosUSU_TIPCOL: TStringField
      FieldName = 'USU_TIPCOL'
    end
    object ConsFuncionariosUSU_CODDEP: TIntegerField
      FieldName = 'USU_CODDEP'
    end
    object ConsFuncionariosUSU_SITAFA: TIntegerField
      FieldName = 'USU_SITAFA'
    end
    object ConsFuncionariosUSU_DESSIT: TStringField
      FieldName = 'USU_DESSIT'
      Size = 40
    end
    object ConsFuncionariosUSU_SITDEP: TStringField
      FieldName = 'USU_SITDEP'
      Size = 10
    end
    object ConsFuncionariosUSU_GRAPAR: TIntegerField
      FieldName = 'USU_GRAPAR'
    end
    object ConsFuncionariosUSU_DESPAR: TStringField
      FieldName = 'USU_DESPAR'
      Size = 40
    end
    object ConsFuncionariosTITULAR: TStringField
      FieldName = 'TITULAR'
      ReadOnly = True
      Size = 40
    end
  end
  object ConsE440Nfc: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select e440nfc.*,e095for.nomfor,e095for.cgccpf'
      '                           from e440nfc'
      'inner join e095for on e095for.codfor = e440nfc.codfor'
      '                           where e440nfc.CHVNEL = '#39' '#39' and'
      
        '                               ( (e440nfc.codsnf = '#39'NFE'#39') or  (e' +
        '440nfc.codsnf = '#39'CTE'#39')) and'
      '                                 e440nfc.tipnfe not in (3,7)'
      
        '                                 order by e095for.codfor,e440nfc' +
        '.datent')
    Left = 488
    Top = 360
    object ConsE440NfcCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE440NfcCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE440NfcCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsE440NfcNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsE440NfcCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object ConsE440NfcTIPNFE: TIntegerField
      FieldName = 'TIPNFE'
    end
    object ConsE440NfcCODEDC: TStringField
      FieldName = 'CODEDC'
      Size = 3
    end
    object ConsE440NfcCODTRI: TStringField
      FieldName = 'CODTRI'
      Size = 5
    end
    object ConsE440NfcDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ConsE440NfcTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE440NfcTNSSER: TStringField
      FieldName = 'TNSSER'
      Size = 5
    end
    object ConsE440NfcNOPPRO: TStringField
      FieldName = 'NOPPRO'
      Size = 5
    end
    object ConsE440NfcNOPSER: TStringField
      FieldName = 'NOPSER'
      Size = 5
    end
    object ConsE440NfcDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE440NfcUFSCIC: TStringField
      FieldName = 'UFSCIC'
      Size = 2
    end
    object ConsE440NfcCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsE440NfcCODFPG: TIntegerField
      FieldName = 'CODFPG'
    end
    object ConsE440NfcCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ConsE440NfcDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ConsE440NfcCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ConsE440NfcFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ConsE440NfcCODFCR: TStringField
      FieldName = 'CODFCR'
      Size = 3
    end
    object ConsE440NfcDATFCR: TDateTimeField
      FieldName = 'DATFCR'
    end
    object ConsE440NfcCODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object ConsE440NfcCODRED: TIntegerField
      FieldName = 'CODRED'
    end
    object ConsE440NfcQTDEMB: TIntegerField
      FieldName = 'QTDEMB'
    end
    object ConsE440NfcCODEMB: TIntegerField
      FieldName = 'CODEMB'
    end
    object ConsE440NfcNUMEMB: TStringField
      FieldName = 'NUMEMB'
      Size = 30
    end
    object ConsE440NfcCODMS1: TIntegerField
      FieldName = 'CODMS1'
    end
    object ConsE440NfcCODMS2: TIntegerField
      FieldName = 'CODMS2'
    end
    object ConsE440NfcCODMS3: TIntegerField
      FieldName = 'CODMS3'
    end
    object ConsE440NfcCODMS4: TIntegerField
      FieldName = 'CODMS4'
    end
    object ConsE440NfcOBSNFC: TStringField
      FieldName = 'OBSNFC'
      Size = 1000
    end
    object ConsE440NfcPESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 14
      Size = 5
    end
    object ConsE440NfcPESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 14
      Size = 5
    end
    object ConsE440NfcPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE440NfcPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE440NfcPERFIN: TBCDField
      FieldName = 'PERFIN'
      Precision = 4
      Size = 2
    end
    object ConsE440NfcVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcCIFFOB: TStringField
      FieldName = 'CIFFOB'
      Size = 1
    end
    object ConsE440NfcVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBPR: TBCDField
      FieldName = 'VLRBPR'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRDPR: TBCDField
      FieldName = 'VLRDPR'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBSE: TBCDField
      FieldName = 'VLRBSE'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRDSE: TBCDField
      FieldName = 'VLRDSE'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBFU: TBCDField
      FieldName = 'VLRBFU'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRFUN: TBCDField
      FieldName = 'VLRFUN'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBID: TBCDField
      FieldName = 'VLRBID'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRIPD: TBCDField
      FieldName = 'VLRIPD'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRSIC: TBCDField
      FieldName = 'VLRSIC'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBSD: TBCDField
      FieldName = 'VLRBSD'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRISD: TBCDField
      FieldName = 'VLRISD'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBIS: TBCDField
      FieldName = 'VLRBIS'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBIN: TBCDField
      FieldName = 'VLRBIN'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRINS: TBCDField
      FieldName = 'VLRINS'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRLSE: TBCDField
      FieldName = 'VLRLSE'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRINF: TBCDField
      FieldName = 'VLRINF'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcSITNFC: TStringField
      FieldName = 'SITNFC'
      Size = 1
    end
    object ConsE440NfcCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE440NfcVERCAL: TIntegerField
      FieldName = 'VERCAL'
    end
    object ConsE440NfcINTIMP: TStringField
      FieldName = 'INTIMP'
      Size = 1
    end
    object ConsE440NfcNUMLOT: TIntegerField
      FieldName = 'NUMLOT'
    end
    object ConsE440NfcFORISS: TIntegerField
      FieldName = 'FORISS'
    end
    object ConsE440NfcINDSIG: TStringField
      FieldName = 'INDSIG'
      Size = 1
    end
    object ConsE440NfcUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE440NfcDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE440NfcHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE440NfcPERFRE: TBCDField
      FieldName = 'PERFRE'
      Precision = 5
      Size = 2
    end
    object ConsE440NfcPERSEG: TBCDField
      FieldName = 'PERSEG'
      Precision = 5
      Size = 2
    end
    object ConsE440NfcPEREMB: TBCDField
      FieldName = 'PEREMB'
      Precision = 5
      Size = 2
    end
    object ConsE440NfcPERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
    object ConsE440NfcPEROUT: TBCDField
      FieldName = 'PEROUT'
      Precision = 5
      Size = 2
    end
    object ConsE440NfcSEQORM: TIntegerField
      FieldName = 'SEQORM'
    end
    object ConsE440NfcVLRBPI: TBCDField
      FieldName = 'VLRBPI'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object ConsE440NfcINDSIN: TStringField
      FieldName = 'INDSIN'
      Size = 1
    end
    object ConsE440NfcPRCNFC: TIntegerField
      FieldName = 'PRCNFC'
    end
    object ConsE440NfcVLRBCR: TBCDField
      FieldName = 'VLRBCR'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRCOR: TBCDField
      FieldName = 'VLRCOR'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBII: TBCDField
      FieldName = 'VLRBII'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRIIM: TBCDField
      FieldName = 'VLRIIM'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcNUMDOI: TStringField
      FieldName = 'NUMDOI'
    end
    object ConsE440NfcDATDOI: TDateTimeField
      FieldName = 'DATDOI'
    end
    object ConsE440NfcINTPAT: TStringField
      FieldName = 'INTPAT'
      Size = 1
    end
    object ConsE440NfcVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLROCL: TBCDField
      FieldName = 'VLROCL'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLROPT: TBCDField
      FieldName = 'VLROPT'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLROCT: TBCDField
      FieldName = 'VLROCT'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLROOR: TBCDField
      FieldName = 'VLROOR'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcCODSEL: TStringField
      FieldName = 'CODSEL'
      Size = 3
    end
    object ConsE440NfcCODSSL: TStringField
      FieldName = 'CODSSL'
      Size = 2
    end
    object ConsE440NfcPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE440NfcPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE440NfcPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConsE440NfcVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcBECIPI: TBCDField
      FieldName = 'BECIPI'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVECIPI: TBCDField
      FieldName = 'VECIPI'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcBECICM: TBCDField
      FieldName = 'BECICM'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVECICM: TBCDField
      FieldName = 'VECICM'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBIE: TBCDField
      FieldName = 'VLRBIE'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRIEM: TBCDField
      FieldName = 'VLRIEM'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRFEI: TBCDField
      FieldName = 'VLRFEI'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRSEI: TBCDField
      FieldName = 'VLRSEI'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLROUI: TBCDField
      FieldName = 'VLROUI'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcBCOIMP: TBCDField
      FieldName = 'BCOIMP'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcCOFIMP: TBCDField
      FieldName = 'COFIMP'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcBPIIMP: TBCDField
      FieldName = 'BPIIMP'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcPISIMP: TBCDField
      FieldName = 'PISIMP'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcNUMCNT: TIntegerField
      FieldName = 'NUMCNT'
    end
    object ConsE440NfcIDENFC: TStringField
      FieldName = 'IDENFC'
      Size = 30
    end
    object ConsE440NfcNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object ConsE440NfcROTNAP: TIntegerField
      FieldName = 'ROTNAP'
    end
    object ConsE440NfcFILAPR: TIntegerField
      FieldName = 'FILAPR'
    end
    object ConsE440NfcNUMAPR: TBCDField
      FieldName = 'NUMAPR'
      Precision = 10
      Size = 0
    end
    object ConsE440NfcSITAPR: TStringField
      FieldName = 'SITAPR'
      Size = 3
    end
    object ConsE440NfcPERICF: TBCDField
      FieldName = 'PERICF'
      Precision = 5
      Size = 2
    end
    object ConsE440NfcICMFRE: TBCDField
      FieldName = 'ICMFRE'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcCLIRCB: TIntegerField
      FieldName = 'CLIRCB'
    end
    object ConsE440NfcVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ConsE440NfcROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object ConsE440NfcNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object ConsE440NfcPLAVEI: TStringField
      FieldName = 'PLAVEI'
      Size = 10
    end
    object ConsE440NfcCODVIA: TStringField
      FieldName = 'CODVIA'
      Size = 3
    end
    object ConsE440NfcCHVNEL: TStringField
      FieldName = 'CHVNEL'
      Size = 50
    end
    object ConsE440NfcSOMFRE: TStringField
      FieldName = 'SOMFRE'
      Size = 1
    end
    object ConsE440NfcUFSVEI: TStringField
      FieldName = 'UFSVEI'
      Size = 2
    end
    object ConsE440NfcNUMINT: TStringField
      FieldName = 'NUMINT'
    end
    object ConsE440NfcFILFIX: TIntegerField
      FieldName = 'FILFIX'
    end
    object ConsE440NfcNUMFIX: TIntegerField
      FieldName = 'NUMFIX'
    end
    object ConsE440NfcFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object ConsE440NfcNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsE440NfcUSU_PLAVEI: TStringField
      FieldName = 'USU_PLAVEI'
      Size = 8
    end
    object ConsE440NfcCODEQU: TIntegerField
      FieldName = 'CODEQU'
    end
    object ConsE440NfcNUMCFI: TIntegerField
      FieldName = 'NUMCFI'
    end
    object ConsE440NfcTIPNDI: TStringField
      FieldName = 'TIPNDI'
      Size = 1
    end
    object ConsE440NfcLOCDES: TStringField
      FieldName = 'LOCDES'
      Size = 60
    end
    object ConsE440NfcDATDES: TDateTimeField
      FieldName = 'DATDES'
    end
    object ConsE440NfcUFSDES: TStringField
      FieldName = 'UFSDES'
      Size = 2
    end
    object ConsE440NfcCODEXP: TIntegerField
      FieldName = 'CODEXP'
    end
    object ConsE440NfcNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
    object ConsE440NfcCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
  end
  object RvValidaXml: TRvProject
    Engine = SysValidaXml
    ProjectFile = 'C:\DelphiSapiens\SapiensDelphi\RelatoriosRave\ValidaXml.rav'
    Left = 560
    Top = 360
    RaveBlobNew = {
      75DD0000C784220154F7E3405241561A803801000000BFED84B00E5200650070
      006F00720074003100075265706F72743100BFED84B026540052006100760065
      00500072006F006A006500630074004D0061006E006100670065007200135452
      61766550726F6A6563744D616E61676572BFED84B01652006100760065005000
      72006F006A006500630074000B5261766550726F6A65637408BFED84B01A4300
      6F006D00700069006C0065004E00650065006400650064000D436F6D70696C65
      4E656564656400BFED84B00A460061006C00730065000546616C7365BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B016
      5200610076006500500072006F006A006500630074000B5261766550726F6A65
      6374BFED84B014430061007400650067006F0072006900650073000A43617465
      676F7269657308BFED84B00000BFED84B01450006100720061006D0065007400
      6500720073000A506172616D657465727308BFED84B00000BFED84B00C500049
      0056006100720073000650495661727308BFED84B00000BFED84B01655006E00
      69007400730046006100630074006F0072000B556E697473466163746F720500
      90C2F5285C8FA20040BFED84B000000006BFED84B01A4400760043006F006E00
      730045003400340030004E00660063000D4476436F6E73453434304E6663BFED
      84B01A54005200610076006500440061007400610056006900650077000D5452
      6176654461746156696577008FB4000000BFED84B01A54005200610076006500
      440061007400610056006900650077000D54526176654461746156696577BFED
      84B01A4400760043006F006E00730045003400340030004E00660063000D4476
      436F6E73453434304E666308BFED84B01A43006F006D00700069006C0065004E
      00650065006400650064000D436F6D70696C654E656564656400BFED84B00A46
      0061006C00730065000546616C7365BFED84B010460075006C006C004E006100
      6D0065000846756C6C4E616D6506BFED84B01A4400760043006F006E00730045
      003400340030004E00660063000D4476436F6E73453434304E6663BFED84B01C
      43006F006E006E0065006300740069006F006E004E0061006D0065000E436F6E
      6E656374696F6E4E616D6506BFED84B01A5200760043006F006E007300450034
      00340030004E00660063000D5276436F6E73453434304E6663BFED84B0000080
      B400BFED84B0225400520061007600650049006E007400650067006500720046
      00690065006C006400115452617665496E74656765724669656C64BFED84B026
      4400760043006F006E00730045003400340030004E006600630043004F004400
      45004D005000134476436F6E73453434304E6663434F44454D5008BFED84B012
      4600690065006C0064004E0061006D006500094669656C644E616D6506BFED84
      B00C43004F00440045004D00500006434F44454D50BFED84B010460075006C00
      6C004E0061006D0065000846756C6C4E616D6506BFED84B00C43004F00440045
      004D00500006434F44454D50BFED84B008530069007A0065000453697A650104
      BFED84B000000000BFED84B0225400520061007600650049006E007400650067
      00650072004600690065006C006400115452617665496E74656765724669656C
      64BFED84B0264400760043006F006E00730045003400340030004E0066006300
      43004F004400460049004C00134476436F6E73453434304E6663434F4446494C
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B00C43004F004400460049004C0006434F4446494CBFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C43
      004F004400460049004C0006434F4446494CBFED84B008530069007A00650004
      53697A650104BFED84B000000000BFED84B0225400520061007600650049006E
      00740065006700650072004600690065006C006400115452617665496E746567
      65724669656C64BFED84B0264400760043006F006E0073004500340034003000
      4E006600630043004F00440046004F005200134476436F6E73453434304E6663
      434F44464F5208BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C43004F00440046004F00520006434F44464F
      52BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C43004F00440046004F00520006434F44464F52BFED84B008530069
      007A0065000453697A650104BFED84B000000000BFED84B02254005200610076
      00650049006E00740065006700650072004600690065006C0064001154526176
      65496E74656765724669656C64BFED84B0264400760043006F006E0073004500
      3400340030004E00660063004E0055004D004E0046004300134476436F6E7345
      3434304E66634E554D4E464308BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B00C4E0055004D004E0046004300
      064E554D4E4643BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00C4E0055004D004E0046004300064E554D4E4643BFED
      84B008530069007A0065000453697A650104BFED84B000000000BFED84B02054
      00520061007600650053007400720069006E0067004600690065006C00640010
      5452617665537472696E674669656C64BFED84B0264400760043006F006E0073
      0045003400340030004E006600630043004F00440053004E004600134476436F
      6E73453434304E6663434F44534E4608BFED84B0124600690065006C0064004E
      0061006D006500094669656C644E616D6506BFED84B00C43004F00440053004E
      00460006434F44534E46BFED84B010460075006C006C004E0061006D00650008
      46756C6C4E616D6506BFED84B00C43004F00440053004E00460006434F44534E
      46BFED84B008530069007A0065000453697A650104BFED84B000000000BFED84
      B0225400520061007600650049006E0074006500670065007200460069006500
      6C006400115452617665496E74656765724669656C64BFED84B0264400760043
      006F006E00730045003400340030004E00660063005400490050004E00460045
      00134476436F6E73453434304E66635449504E464508BFED84B0124600690065
      006C0064004E0061006D006500094669656C644E616D6506BFED84B00C540049
      0050004E0046004500065449504E4645BFED84B010460075006C006C004E0061
      006D0065000846756C6C4E616D6506BFED84B00C5400490050004E0046004500
      065449504E4645BFED84B008530069007A0065000453697A650104BFED84B000
      000000BFED84B0205400520061007600650053007400720069006E0067004600
      690065006C006400105452617665537472696E674669656C64BFED84B0264400
      760043006F006E00730045003400340030004E006600630043004F0044004500
      44004300134476436F6E73453434304E6663434F4445444308BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      43004F00440045004400430006434F44454443BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C43004F004400450044
      00430006434F44454443BFED84B008530069007A0065000453697A650104BFED
      84B000000000BFED84B0205400520061007600650053007400720069006E0067
      004600690065006C006400105452617665537472696E674669656C64BFED84B0
      264400760043006F006E00730045003400340030004E006600630043004F0044
      00540052004900134476436F6E73453434304E6663434F4454524908BFED84B0
      124600690065006C0064004E0061006D006500094669656C644E616D6506BFED
      84B00C43004F00440054005200490006434F44545249BFED84B010460075006C
      006C004E0061006D0065000846756C6C4E616D6506BFED84B00C43004F004400
      54005200490006434F44545249BFED84B008530069007A0065000453697A6501
      06BFED84B000000000BFED84B024540052006100760065004400610074006500
      540069006D0065004600690065006C0064001254526176654461746554696D65
      4669656C64BFED84B0264400760043006F006E00730045003400340030004E00
      6600630044004100540045004E005400134476436F6E73453434304E66634441
      54454E5408BFED84B0124600690065006C0064004E0061006D00650009466965
      6C644E616D6506BFED84B00C44004100540045004E00540006444154454E54BF
      ED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED
      84B00C44004100540045004E00540006444154454E54BFED84B008530069007A
      0065000453697A650108BFED84B000000000BFED84B020540052006100760065
      0053007400720069006E0067004600690065006C006400105452617665537472
      696E674669656C64BFED84B0264400760043006F006E00730045003400340030
      004E006600630054004E005300500052004F00134476436F6E73453434304E66
      63544E5350524F08BFED84B0124600690065006C0064004E0061006D00650009
      4669656C644E616D6506BFED84B00C54004E005300500052004F0006544E5350
      524FBFED84B010460075006C006C004E0061006D0065000846756C6C4E616D65
      06BFED84B00C54004E005300500052004F0006544E5350524FBFED84B0085300
      69007A0065000453697A650106BFED84B000000000BFED84B020540052006100
      7600650053007400720069006E0067004600690065006C006400105452617665
      537472696E674669656C64BFED84B0264400760043006F006E00730045003400
      340030004E006600630054004E005300530045005200134476436F6E73453434
      304E6663544E5353455208BFED84B0124600690065006C0064004E0061006D00
      6500094669656C644E616D6506BFED84B00C54004E0053005300450052000654
      4E53534552BFED84B010460075006C006C004E0061006D0065000846756C6C4E
      616D6506BFED84B00C54004E00530053004500520006544E53534552BFED84B0
      08530069007A0065000453697A650106BFED84B000000000BFED84B020540052
      0061007600650053007400720069006E0067004600690065006C006400105452
      617665537472696E674669656C64BFED84B0264400760043006F006E00730045
      003400340030004E00660063004E004F005000500052004F00134476436F6E73
      453434304E66634E4F5050524F08BFED84B0124600690065006C0064004E0061
      006D006500094669656C644E616D6506BFED84B00C4E004F005000500052004F
      00064E4F5050524FBFED84B010460075006C006C004E0061006D006500084675
      6C6C4E616D6506BFED84B00C4E004F005000500052004F00064E4F5050524FBF
      ED84B008530069007A0065000453697A650106BFED84B000000000BFED84B020
      5400520061007600650053007400720069006E0067004600690065006C006400
      105452617665537472696E674669656C64BFED84B0264400760043006F006E00
      730045003400340030004E00660063004E004F00500053004500520013447643
      6F6E73453434304E66634E4F5053455208BFED84B0124600690065006C006400
      4E0061006D006500094669656C644E616D6506BFED84B00C4E004F0050005300
      45005200064E4F50534552BFED84B010460075006C006C004E0061006D006500
      0846756C6C4E616D6506BFED84B00C4E004F005000530045005200064E4F5053
      4552BFED84B008530069007A0065000453697A650106BFED84B000000000BFED
      84B024540052006100760065004400610074006500540069006D006500460069
      0065006C0064001254526176654461746554696D654669656C64BFED84B02644
      00760043006F006E00730045003400340030004E006600630044004100540045
      004D004900134476436F6E73453434304E6663444154454D4908BFED84B01246
      00690065006C0064004E0061006D006500094669656C644E616D6506BFED84B0
      0C44004100540045004D00490006444154454D49BFED84B010460075006C006C
      004E0061006D0065000846756C6C4E616D6506BFED84B00C4400410054004500
      4D00490006444154454D49BFED84B008530069007A0065000453697A650108BF
      ED84B000000000BFED84B0205400520061007600650053007400720069006E00
      67004600690065006C006400105452617665537472696E674669656C64BFED84
      B0264400760043006F006E00730045003400340030004E006600630055004600
      5300430049004300134476436F6E73453434304E666355465343494308BFED84
      B0124600690065006C0064004E0061006D006500094669656C644E616D6506BF
      ED84B00C55004600530043004900430006554653434943BFED84B01046007500
      6C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C5500460053
      0043004900430006554653434943BFED84B008530069007A0065000453697A65
      0103BFED84B000000000BFED84B0205400520061007600650053007400720069
      006E0067004600690065006C006400105452617665537472696E674669656C64
      BFED84B0264400760043006F006E00730045003400340030004E006600630043
      004F004400430050004700134476436F6E73453434304E6663434F4443504708
      BFED84B0124600690065006C0064004E0061006D006500094669656C644E616D
      6506BFED84B00C43004F00440043005000470006434F44435047BFED84B01046
      0075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C4300
      4F00440043005000470006434F44435047BFED84B008530069007A0065000453
      697A650107BFED84B000000000BFED84B0225400520061007600650049006E00
      740065006700650072004600690065006C006400115452617665496E74656765
      724669656C64BFED84B0264400760043006F006E00730045003400340030004E
      006600630043004F004400460050004700134476436F6E73453434304E666343
      4F4446504708BFED84B0124600690065006C0064004E0061006D006500094669
      656C644E616D6506BFED84B00C43004F00440046005000470006434F44465047
      BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BF
      ED84B00C43004F00440046005000470006434F44465047BFED84B00853006900
      7A0065000453697A650104BFED84B000000000BFED84B0205400520061007600
      650053007400720069006E0067004600690065006C0064001054526176655374
      72696E674669656C64BFED84B0264400760043006F006E007300450034003400
      30004E006600630043004F0044004D004F004500134476436F6E73453434304E
      6663434F444D4F4508BFED84B0124600690065006C0064004E0061006D006500
      094669656C644E616D6506BFED84B00C43004F0044004D004F00450006434F44
      4D4F45BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D
      6506BFED84B00C43004F0044004D004F00450006434F444D4F45BFED84B00853
      0069007A0065000453697A650104BFED84B000000000BFED84B0245400520061
      00760065004400610074006500540069006D0065004600690065006C00640012
      54526176654461746554696D654669656C64BFED84B0264400760043006F006E
      00730045003400340030004E00660063004400410054004D004F004500134476
      436F6E73453434304E66634441544D4F4508BFED84B0124600690065006C0064
      004E0061006D006500094669656C644E616D6506BFED84B00C4400410054004D
      004F004500064441544D4F45BFED84B010460075006C006C004E0061006D0065
      000846756C6C4E616D6506BFED84B00C4400410054004D004F00450006444154
      4D4F45BFED84B008530069007A0065000453697A650108BFED84B000000000BF
      ED84B01A540052006100760065004200430044004600690065006C0064000D54
      526176654243444669656C64BFED84B0264400760043006F006E007300450034
      00340030004E006600630043004F0054004D004F004500134476436F6E734534
      34304E6663434F544D4F4508BFED84B0124600690065006C0064004E0061006D
      006500094669656C644E616D6506BFED84B00C43004F0054004D004F00450006
      434F544D4F45BFED84B010460075006C006C004E0061006D0065000846756C6C
      4E616D6506BFED84B00C43004F0054004D004F00450006434F544D4F45BFED84
      B008530069007A0065000453697A650122BFED84B000000000BFED84B0205400
      520061007600650053007400720069006E0067004600690065006C0064001054
      52617665537472696E674669656C64BFED84B0264400760043006F006E007300
      45003400340030004E00660063004600450043004D004F004500134476436F6E
      73453434304E66634645434D4F4508BFED84B0124600690065006C0064004E00
      61006D006500094669656C644E616D6506BFED84B00C4600450043004D004F00
      4500064645434D4F45BFED84B010460075006C006C004E0061006D0065000846
      756C6C4E616D6506BFED84B00C4600450043004D004F004500064645434D4F45
      BFED84B008530069007A0065000453697A650102BFED84B000000000BFED84B0
      205400520061007600650053007400720069006E0067004600690065006C0064
      00105452617665537472696E674669656C64BFED84B0264400760043006F006E
      00730045003400340030004E006600630043004F004400460043005200134476
      436F6E73453434304E6663434F4446435208BFED84B0124600690065006C0064
      004E0061006D006500094669656C644E616D6506BFED84B00C43004F00440046
      004300520006434F44464352BFED84B010460075006C006C004E0061006D0065
      000846756C6C4E616D6506BFED84B00C43004F00440046004300520006434F44
      464352BFED84B008530069007A0065000453697A650104BFED84B000000000BF
      ED84B024540052006100760065004400610074006500540069006D0065004600
      690065006C0064001254526176654461746554696D654669656C64BFED84B026
      4400760043006F006E00730045003400340030004E0066006300440041005400
      460043005200134476436F6E73453434304E666344415446435208BFED84B012
      4600690065006C0064004E0061006D006500094669656C644E616D6506BFED84
      B00C44004100540046004300520006444154464352BFED84B010460075006C00
      6C004E0061006D0065000846756C6C4E616D6506BFED84B00C44004100540046
      004300520006444154464352BFED84B008530069007A0065000453697A650108
      BFED84B000000000BFED84B0225400520061007600650049006E007400650067
      00650072004600690065006C006400115452617665496E74656765724669656C
      64BFED84B0264400760043006F006E00730045003400340030004E0066006300
      43004F004400540052004100134476436F6E73453434304E6663434F44545241
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B00C43004F00440054005200410006434F44545241BFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C43
      004F00440054005200410006434F44545241BFED84B008530069007A00650004
      53697A650104BFED84B000000000BFED84B0225400520061007600650049006E
      00740065006700650072004600690065006C006400115452617665496E746567
      65724669656C64BFED84B0264400760043006F006E0073004500340034003000
      4E006600630043004F004400520045004400134476436F6E73453434304E6663
      434F4452454408BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C43004F00440052004500440006434F445245
      44BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C43004F00440052004500440006434F44524544BFED84B008530069
      007A0065000453697A650104BFED84B000000000BFED84B02254005200610076
      00650049006E00740065006700650072004600690065006C0064001154526176
      65496E74656765724669656C64BFED84B0264400760043006F006E0073004500
      3400340030004E006600630051005400440045004D004200134476436F6E7345
      3434304E6663515444454D4208BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B00C51005400440045004D004200
      06515444454D42BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00C51005400440045004D00420006515444454D42BFED
      84B008530069007A0065000453697A650104BFED84B000000000BFED84B02254
      00520061007600650049006E00740065006700650072004600690065006C0064
      00115452617665496E74656765724669656C64BFED84B0264400760043006F00
      6E00730045003400340030004E006600630043004F00440045004D0042001344
      76436F6E73453434304E6663434F44454D4208BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B00C43004F004400
      45004D00420006434F44454D42BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00C43004F00440045004D00420006434F
      44454D42BFED84B008530069007A0065000453697A650104BFED84B000000000
      BFED84B0205400520061007600650053007400720069006E0067004600690065
      006C006400105452617665537472696E674669656C64BFED84B0264400760043
      006F006E00730045003400340030004E00660063004E0055004D0045004D0042
      00134476436F6E73453434304E66634E554D454D4208BFED84B0124600690065
      006C0064004E0061006D006500094669656C644E616D6506BFED84B00C4E0055
      004D0045004D004200064E554D454D42BFED84B010460075006C006C004E0061
      006D0065000846756C6C4E616D6506BFED84B00C4E0055004D0045004D004200
      064E554D454D42BFED84B008530069007A0065000453697A65011FBFED84B000
      000000BFED84B0225400520061007600650049006E0074006500670065007200
      4600690065006C006400115452617665496E74656765724669656C64BFED84B0
      264400760043006F006E00730045003400340030004E006600630043004F0044
      004D0053003100134476436F6E73453434304E6663434F444D533108BFED84B0
      124600690065006C0064004E0061006D006500094669656C644E616D6506BFED
      84B00C43004F0044004D005300310006434F444D5331BFED84B010460075006C
      006C004E0061006D0065000846756C6C4E616D6506BFED84B00C43004F004400
      4D005300310006434F444D5331BFED84B008530069007A0065000453697A6501
      04BFED84B000000000BFED84B0225400520061007600650049006E0074006500
      6700650072004600690065006C006400115452617665496E7465676572466965
      6C64BFED84B0264400760043006F006E00730045003400340030004E00660063
      0043004F0044004D0053003200134476436F6E73453434304E6663434F444D53
      3208BFED84B0124600690065006C0064004E0061006D006500094669656C644E
      616D6506BFED84B00C43004F0044004D005300320006434F444D5332BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C
      43004F0044004D005300320006434F444D5332BFED84B008530069007A006500
      0453697A650104BFED84B000000000BFED84B022540052006100760065004900
      6E00740065006700650072004600690065006C006400115452617665496E7465
      6765724669656C64BFED84B0264400760043006F006E00730045003400340030
      004E006600630043004F0044004D0053003300134476436F6E73453434304E66
      63434F444D533308BFED84B0124600690065006C0064004E0061006D00650009
      4669656C644E616D6506BFED84B00C43004F0044004D005300330006434F444D
      5333BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D65
      06BFED84B00C43004F0044004D005300330006434F444D5333BFED84B0085300
      69007A0065000453697A650104BFED84B000000000BFED84B022540052006100
      7600650049006E00740065006700650072004600690065006C00640011545261
      7665496E74656765724669656C64BFED84B0264400760043006F006E00730045
      003400340030004E006600630043004F0044004D0053003400134476436F6E73
      453434304E6663434F444D533408BFED84B0124600690065006C0064004E0061
      006D006500094669656C644E616D6506BFED84B00C43004F0044004D00530034
      0006434F444D5334BFED84B010460075006C006C004E0061006D006500084675
      6C6C4E616D6506BFED84B00C43004F0044004D005300340006434F444D5334BF
      ED84B008530069007A0065000453697A650104BFED84B000000000BFED84B020
      5400520061007600650053007400720069006E0067004600690065006C006400
      105452617665537472696E674669656C64BFED84B0264400760043006F006E00
      730045003400340030004E00660063004F00420053004E004600430013447643
      6F6E73453434304E66634F42534E464308BFED84B0124600690065006C006400
      4E0061006D006500094669656C644E616D6506BFED84B00C4F00420053004E00
      46004300064F42534E4643BFED84B010460075006C006C004E0061006D006500
      0846756C6C4E616D6506BFED84B00C4F00420053004E0046004300064F42534E
      4643BFED84B008530069007A0065000453697A650183E9BFED84B000000000BF
      ED84B01A540052006100760065004200430044004600690065006C0064000D54
      526176654243444669656C64BFED84B0264400760043006F006E007300450034
      00340030004E0066006300500045005300420052005500134476436F6E734534
      34304E666350455342525508BFED84B0124600690065006C0064004E0061006D
      006500094669656C644E616D6506BFED84B00C50004500530042005200550006
      504553425255BFED84B010460075006C006C004E0061006D0065000846756C6C
      4E616D6506BFED84B00C50004500530042005200550006504553425255BFED84
      B008530069007A0065000453697A650122BFED84B000000000BFED84B01A5400
      52006100760065004200430044004600690065006C0064000D54526176654243
      444669656C64BFED84B0264400760043006F006E00730045003400340030004E
      00660063005000450053004C0049005100134476436F6E73453434304E666350
      45534C495108BFED84B0124600690065006C0064004E0061006D006500094669
      656C644E616D6506BFED84B00C5000450053004C0049005100065045534C4951
      BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BF
      ED84B00C5000450053004C0049005100065045534C4951BFED84B00853006900
      7A0065000453697A650122BFED84B000000000BFED84B01A5400520061007600
      65004200430044004600690065006C0064000D54526176654243444669656C64
      BFED84B0264400760043006F006E00730045003400340030004E006600630050
      0045005200440053003100134476436F6E73453434304E666350455244533108
      BFED84B0124600690065006C0064004E0061006D006500094669656C644E616D
      6506BFED84B00C50004500520044005300310006504552445331BFED84B01046
      0075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C5000
      4500520044005300310006504552445331BFED84B008530069007A0065000453
      697A650108BFED84B000000000BFED84B01A5400520061007600650042004300
      44004600690065006C0064000D54526176654243444669656C64BFED84B02644
      00760043006F006E00730045003400340030004E006600630050004500520044
      0053003200134476436F6E73453434304E666350455244533208BFED84B01246
      00690065006C0064004E0061006D006500094669656C644E616D6506BFED84B0
      0C50004500520044005300320006504552445332BFED84B010460075006C006C
      004E0061006D0065000846756C6C4E616D6506BFED84B00C5000450052004400
      5300320006504552445332BFED84B008530069007A0065000453697A650108BF
      ED84B000000000BFED84B01A5400520061007600650042004300440046006900
      65006C0064000D54526176654243444669656C64BFED84B0264400760043006F
      006E00730045003400340030004E0066006300500045005200460049004E0013
      4476436F6E73453434304E666350455246494E08BFED84B0124600690065006C
      0064004E0061006D006500094669656C644E616D6506BFED84B00C5000450052
      00460049004E000650455246494EBFED84B010460075006C006C004E0061006D
      0065000846756C6C4E616D6506BFED84B00C500045005200460049004E000650
      455246494EBFED84B008530069007A0065000453697A650108BFED84B0000000
      00BFED84B01A540052006100760065004200430044004600690065006C006400
      0D54526176654243444669656C64BFED84B0264400760043006F006E00730045
      003400340030004E006600630056004C00520044005A004600134476436F6E73
      453434304E6663564C52445A4608BFED84B0124600690065006C0064004E0061
      006D006500094669656C644E616D6506BFED84B00C56004C00520044005A0046
      0006564C52445A46BFED84B010460075006C006C004E0061006D006500084675
      6C6C4E616D6506BFED84B00C56004C00520044005A00460006564C52445A46BF
      ED84B008530069007A0065000453697A650108BFED84B000000000BFED84B01A
      540052006100760065004200430044004600690065006C0064000D5452617665
      4243444669656C64BFED84B0264400760043006F006E00730045003400340030
      004E006600630056004C005200460052004500134476436F6E73453434304E66
      63564C5246524508BFED84B0124600690065006C0064004E0061006D00650009
      4669656C644E616D6506BFED84B00C56004C00520046005200450006564C5246
      5245BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D65
      06BFED84B00C56004C00520046005200450006564C52465245BFED84B0085300
      69007A0065000453697A650108BFED84B000000000BFED84B020540052006100
      7600650053007400720069006E0067004600690065006C006400105452617665
      537472696E674669656C64BFED84B0264400760043006F006E00730045003400
      340030004E006600630043004900460046004F004200134476436F6E73453434
      304E6663434946464F4208BFED84B0124600690065006C0064004E0061006D00
      6500094669656C644E616D6506BFED84B00C43004900460046004F0042000643
      4946464F42BFED84B010460075006C006C004E0061006D0065000846756C6C4E
      616D6506BFED84B00C43004900460046004F00420006434946464F42BFED84B0
      08530069007A0065000453697A650102BFED84B000000000BFED84B01A540052
      006100760065004200430044004600690065006C0064000D5452617665424344
      4669656C64BFED84B0264400760043006F006E00730045003400340030004E00
      6600630056004C005200530045004700134476436F6E73453434304E6663564C
      5253454708BFED84B0124600690065006C0064004E0061006D00650009466965
      6C644E616D6506BFED84B00C56004C00520053004500470006564C52534547BF
      ED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED
      84B00C56004C00520053004500470006564C52534547BFED84B008530069007A
      0065000453697A650108BFED84B000000000BFED84B01A540052006100760065
      004200430044004600690065006C0064000D54526176654243444669656C64BF
      ED84B0264400760043006F006E00730045003400340030004E00660063005600
      4C00520045004D004200134476436F6E73453434304E6663564C52454D4208BF
      ED84B0124600690065006C0064004E0061006D006500094669656C644E616D65
      06BFED84B00C56004C00520045004D00420006564C52454D42BFED84B0104600
      75006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C
      00520045004D00420006564C52454D42BFED84B008530069007A006500045369
      7A650108BFED84B000000000BFED84B01A540052006100760065004200430044
      004600690065006C0064000D54526176654243444669656C64BFED84B0264400
      760043006F006E00730045003400340030004E006600630056004C0052004500
      4E004300134476436F6E73453434304E6663564C52454E4308BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      56004C00520045004E00430006564C52454E43BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C56004C00520045004E
      00430006564C52454E43BFED84B008530069007A0065000453697A650108BFED
      84B000000000BFED84B01A540052006100760065004200430044004600690065
      006C0064000D54526176654243444669656C64BFED84B0264400760043006F00
      6E00730045003400340030004E006600630056004C0052004F00550054001344
      76436F6E73453434304E6663564C524F555408BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B00C56004C005200
      4F005500540006564C524F5554BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00C56004C0052004F005500540006564C
      524F5554BFED84B008530069007A0065000453697A650108BFED84B000000000
      BFED84B01A540052006100760065004200430044004600690065006C0064000D
      54526176654243444669656C64BFED84B0264400760043006F006E0073004500
      3400340030004E006600630056004C005200440041005200134476436F6E7345
      3434304E6663564C5244415208BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B00C56004C005200440041005200
      06564C52444152BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00C56004C00520044004100520006564C52444152BFED
      84B008530069007A0065000453697A650108BFED84B000000000BFED84B01A54
      0052006100760065004200430044004600690065006C0064000D545261766542
      43444669656C64BFED84B0264400760043006F006E0073004500340034003000
      4E006600630056004C005200460052004400134476436F6E73453434304E6663
      564C5246524408BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C56004C00520046005200440006564C524652
      44BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C56004C00520046005200440006564C52465244BFED84B008530069
      007A0065000453697A650108BFED84B000000000BFED84B01A54005200610076
      0065004200430044004600690065006C0064000D54526176654243444669656C
      64BFED84B0264400760043006F006E00730045003400340030004E0066006300
      56004C0052004F0055004400134476436F6E73453434304E6663564C524F5544
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B00C56004C0052004F005500440006564C524F5544BFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56
      004C0052004F005500440006564C524F5544BFED84B008530069007A00650004
      53697A650108BFED84B000000000BFED84B01A54005200610076006500420043
      0044004600690065006C0064000D54526176654243444669656C64BFED84B026
      4400760043006F006E00730045003400340030004E006600630056004C005200
      420050005200134476436F6E73453434304E6663564C5242505208BFED84B012
      4600690065006C0064004E0061006D006500094669656C644E616D6506BFED84
      B00C56004C00520042005000520006564C52425052BFED84B010460075006C00
      6C004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C00520042
      005000520006564C52425052BFED84B008530069007A0065000453697A650108
      BFED84B000000000BFED84B01A54005200610076006500420043004400460069
      0065006C0064000D54526176654243444669656C64BFED84B026440076004300
      6F006E00730045003400340030004E006600630056004C005200440050005200
      134476436F6E73453434304E6663564C5244505208BFED84B012460069006500
      6C0064004E0061006D006500094669656C644E616D6506BFED84B00C56004C00
      520044005000520006564C52445052BFED84B010460075006C006C004E006100
      6D0065000846756C6C4E616D6506BFED84B00C56004C00520044005000520006
      564C52445052BFED84B008530069007A0065000453697A650108BFED84B00000
      0000BFED84B01A540052006100760065004200430044004600690065006C0064
      000D54526176654243444669656C64BFED84B0264400760043006F006E007300
      45003400340030004E006600630056004C005200420053004500134476436F6E
      73453434304E6663564C5242534508BFED84B0124600690065006C0064004E00
      61006D006500094669656C644E616D6506BFED84B00C56004C00520042005300
      450006564C52425345BFED84B010460075006C006C004E0061006D0065000846
      756C6C4E616D6506BFED84B00C56004C00520042005300450006564C52425345
      BFED84B008530069007A0065000453697A650108BFED84B000000000BFED84B0
      1A540052006100760065004200430044004600690065006C0064000D54526176
      654243444669656C64BFED84B0264400760043006F006E007300450034003400
      30004E006600630056004C005200440053004500134476436F6E73453434304E
      6663564C5244534508BFED84B0124600690065006C0064004E0061006D006500
      094669656C644E616D6506BFED84B00C56004C00520044005300450006564C52
      445345BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D
      6506BFED84B00C56004C00520044005300450006564C52445345BFED84B00853
      0069007A0065000453697A650108BFED84B000000000BFED84B01A5400520061
      00760065004200430044004600690065006C0064000D54526176654243444669
      656C64BFED84B0264400760043006F006E00730045003400340030004E006600
      630056004C005200440053003100134476436F6E73453434304E6663564C5244
      533108BFED84B0124600690065006C0064004E0061006D006500094669656C64
      4E616D6506BFED84B00C56004C00520044005300310006564C52445331BFED84
      B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B0
      0C56004C00520044005300310006564C52445331BFED84B008530069007A0065
      000453697A650108BFED84B000000000BFED84B01A5400520061007600650042
      00430044004600690065006C0064000D54526176654243444669656C64BFED84
      B0264400760043006F006E00730045003400340030004E006600630056004C00
      5200440053003200134476436F6E73453434304E6663564C5244533208BFED84
      B0124600690065006C0064004E0061006D006500094669656C644E616D6506BF
      ED84B00C56004C00520044005300320006564C52445332BFED84B01046007500
      6C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C0052
      0044005300320006564C52445332BFED84B008530069007A0065000453697A65
      0108BFED84B000000000BFED84B01A5400520061007600650042004300440046
      00690065006C0064000D54526176654243444669656C64BFED84B02644007600
      43006F006E00730045003400340030004E006600630056004C00520042004600
      5500134476436F6E73453434304E6663564C5242465508BFED84B01246006900
      65006C0064004E0061006D006500094669656C644E616D6506BFED84B00C5600
      4C00520042004600550006564C52424655BFED84B010460075006C006C004E00
      61006D0065000846756C6C4E616D6506BFED84B00C56004C0052004200460055
      0006564C52424655BFED84B008530069007A0065000453697A650108BFED84B0
      00000000BFED84B01A540052006100760065004200430044004600690065006C
      0064000D54526176654243444669656C64BFED84B0264400760043006F006E00
      730045003400340030004E006600630056004C005200460055004E0013447643
      6F6E73453434304E6663564C5246554E08BFED84B0124600690065006C006400
      4E0061006D006500094669656C644E616D6506BFED84B00C56004C0052004600
      55004E0006564C5246554EBFED84B010460075006C006C004E0061006D006500
      0846756C6C4E616D6506BFED84B00C56004C005200460055004E0006564C5246
      554EBFED84B008530069007A0065000453697A650108BFED84B000000000BFED
      84B01A540052006100760065004200430044004600690065006C0064000D5452
      6176654243444669656C64BFED84B0264400760043006F006E00730045003400
      340030004E006600630056004C005200420049005000134476436F6E73453434
      304E6663564C5242495008BFED84B0124600690065006C0064004E0061006D00
      6500094669656C644E616D6506BFED84B00C56004C0052004200490050000656
      4C52424950BFED84B010460075006C006C004E0061006D0065000846756C6C4E
      616D6506BFED84B00C56004C00520042004900500006564C52424950BFED84B0
      08530069007A0065000453697A650108BFED84B000000000BFED84B01A540052
      006100760065004200430044004600690065006C0064000D5452617665424344
      4669656C64BFED84B0264400760043006F006E00730045003400340030004E00
      6600630056004C005200490050004900134476436F6E73453434304E6663564C
      5249504908BFED84B0124600690065006C0064004E0061006D00650009466965
      6C644E616D6506BFED84B00C56004C00520049005000490006564C52495049BF
      ED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED
      84B00C56004C00520049005000490006564C52495049BFED84B008530069007A
      0065000453697A650108BFED84B000000000BFED84B01A540052006100760065
      004200430044004600690065006C0064000D54526176654243444669656C64BF
      ED84B0264400760043006F006E00730045003400340030004E00660063005600
      4C005200420049004400134476436F6E73453434304E6663564C5242494408BF
      ED84B0124600690065006C0064004E0061006D006500094669656C644E616D65
      06BFED84B00C56004C00520042004900440006564C52424944BFED84B0104600
      75006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C
      00520042004900440006564C52424944BFED84B008530069007A006500045369
      7A650108BFED84B000000000BFED84B01A540052006100760065004200430044
      004600690065006C0064000D54526176654243444669656C64BFED84B0264400
      760043006F006E00730045003400340030004E006600630056004C0052004900
      50004400134476436F6E73453434304E6663564C5249504408BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      56004C00520049005000440006564C52495044BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C56004C005200490050
      00440006564C52495044BFED84B008530069007A0065000453697A650108BFED
      84B000000000BFED84B01A540052006100760065004200430044004600690065
      006C0064000D54526176654243444669656C64BFED84B0264400760043006F00
      6E00730045003400340030004E006600630056004C0052004200490043001344
      76436F6E73453434304E6663564C5242494308BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B00C56004C005200
      42004900430006564C52424943BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00C56004C00520042004900430006564C
      52424943BFED84B008530069007A0065000453697A650108BFED84B000000000
      BFED84B01A540052006100760065004200430044004600690065006C0064000D
      54526176654243444669656C64BFED84B0264400760043006F006E0073004500
      3400340030004E006600630056004C005200490043004D00134476436F6E7345
      3434304E6663564C5249434D08BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B00C56004C005200490043004D00
      06564C5249434DBFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00C56004C005200490043004D0006564C5249434DBFED
      84B008530069007A0065000453697A650108BFED84B000000000BFED84B01A54
      0052006100760065004200430044004600690065006C0064000D545261766542
      43444669656C64BFED84B0264400760043006F006E0073004500340034003000
      4E006600630056004C005200420053004900134476436F6E73453434304E6663
      564C5242534908BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C56004C00520042005300490006564C524253
      49BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C56004C00520042005300490006564C52425349BFED84B008530069
      007A0065000453697A650108BFED84B000000000BFED84B01A54005200610076
      0065004200430044004600690065006C0064000D54526176654243444669656C
      64BFED84B0264400760043006F006E00730045003400340030004E0066006300
      56004C005200530049004300134476436F6E73453434304E6663564C52534943
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B00C56004C00520053004900430006564C52534943BFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56
      004C00520053004900430006564C52534943BFED84B008530069007A00650004
      53697A650108BFED84B000000000BFED84B01A54005200610076006500420043
      0044004600690065006C0064000D54526176654243444669656C64BFED84B026
      4400760043006F006E00730045003400340030004E006600630056004C005200
      420053004400134476436F6E73453434304E6663564C5242534408BFED84B012
      4600690065006C0064004E0061006D006500094669656C644E616D6506BFED84
      B00C56004C00520042005300440006564C52425344BFED84B010460075006C00
      6C004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C00520042
      005300440006564C52425344BFED84B008530069007A0065000453697A650108
      BFED84B000000000BFED84B01A54005200610076006500420043004400460069
      0065006C0064000D54526176654243444669656C64BFED84B026440076004300
      6F006E00730045003400340030004E006600630056004C005200490053004400
      134476436F6E73453434304E6663564C5249534408BFED84B012460069006500
      6C0064004E0061006D006500094669656C644E616D6506BFED84B00C56004C00
      520049005300440006564C52495344BFED84B010460075006C006C004E006100
      6D0065000846756C6C4E616D6506BFED84B00C56004C00520049005300440006
      564C52495344BFED84B008530069007A0065000453697A650108BFED84B00000
      0000BFED84B01A540052006100760065004200430044004600690065006C0064
      000D54526176654243444669656C64BFED84B0264400760043006F006E007300
      45003400340030004E006600630056004C005200420053005000134476436F6E
      73453434304E6663564C5242535008BFED84B0124600690065006C0064004E00
      61006D006500094669656C644E616D6506BFED84B00C56004C00520042005300
      500006564C52425350BFED84B010460075006C006C004E0061006D0065000846
      756C6C4E616D6506BFED84B00C56004C00520042005300500006564C52425350
      BFED84B008530069007A0065000453697A650108BFED84B000000000BFED84B0
      1A540052006100760065004200430044004600690065006C0064000D54526176
      654243444669656C64BFED84B0264400760043006F006E007300450034003400
      30004E006600630056004C005200530054005000134476436F6E73453434304E
      6663564C5253545008BFED84B0124600690065006C0064004E0061006D006500
      094669656C644E616D6506BFED84B00C56004C00520053005400500006564C52
      535450BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D
      6506BFED84B00C56004C00520053005400500006564C52535450BFED84B00853
      0069007A0065000453697A650108BFED84B000000000BFED84B01A5400520061
      00760065004200430044004600690065006C0064000D54526176654243444669
      656C64BFED84B0264400760043006F006E00730045003400340030004E006600
      630056004C005200420053004300134476436F6E73453434304E6663564C5242
      534308BFED84B0124600690065006C0064004E0061006D006500094669656C64
      4E616D6506BFED84B00C56004C00520042005300430006564C52425343BFED84
      B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B0
      0C56004C00520042005300430006564C52425343BFED84B008530069007A0065
      000453697A650108BFED84B000000000BFED84B01A5400520061007600650042
      00430044004600690065006C0064000D54526176654243444669656C64BFED84
      B0264400760043006F006E00730045003400340030004E006600630056004C00
      5200530054004300134476436F6E73453434304E6663564C5253544308BFED84
      B0124600690065006C0064004E0061006D006500094669656C644E616D6506BF
      ED84B00C56004C00520053005400430006564C52535443BFED84B01046007500
      6C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C0052
      0053005400430006564C52535443BFED84B008530069007A0065000453697A65
      0108BFED84B000000000BFED84B01A5400520061007600650042004300440046
      00690065006C0064000D54526176654243444669656C64BFED84B02644007600
      43006F006E00730045003400340030004E006600630056004C00520042004900
      5300134476436F6E73453434304E6663564C5242495308BFED84B01246006900
      65006C0064004E0061006D006500094669656C644E616D6506BFED84B00C5600
      4C00520042004900530006564C52424953BFED84B010460075006C006C004E00
      61006D0065000846756C6C4E616D6506BFED84B00C56004C0052004200490053
      0006564C52424953BFED84B008530069007A0065000453697A650108BFED84B0
      00000000BFED84B01A540052006100760065004200430044004600690065006C
      0064000D54526176654243444669656C64BFED84B0264400760043006F006E00
      730045003400340030004E006600630056004C00520049005300530013447643
      6F6E73453434304E6663564C5249535308BFED84B0124600690065006C006400
      4E0061006D006500094669656C644E616D6506BFED84B00C56004C0052004900
      5300530006564C52495353BFED84B010460075006C006C004E0061006D006500
      0846756C6C4E616D6506BFED84B00C56004C00520049005300530006564C5249
      5353BFED84B008530069007A0065000453697A650108BFED84B000000000BFED
      84B01A540052006100760065004200430044004600690065006C0064000D5452
      6176654243444669656C64BFED84B0264400760043006F006E00730045003400
      340030004E006600630056004C005200420049005200134476436F6E73453434
      304E6663564C5242495208BFED84B0124600690065006C0064004E0061006D00
      6500094669656C644E616D6506BFED84B00C56004C0052004200490052000656
      4C52424952BFED84B010460075006C006C004E0061006D0065000846756C6C4E
      616D6506BFED84B00C56004C00520042004900520006564C52424952BFED84B0
      08530069007A0065000453697A650108BFED84B000000000BFED84B01A540052
      006100760065004200430044004600690065006C0064000D5452617665424344
      4669656C64BFED84B0264400760043006F006E00730045003400340030004E00
      6600630056004C005200490052004600134476436F6E73453434304E6663564C
      5249524608BFED84B0124600690065006C0064004E0061006D00650009466965
      6C644E616D6506BFED84B00C56004C00520049005200460006564C52495246BF
      ED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED
      84B00C56004C00520049005200460006564C52495246BFED84B008530069007A
      0065000453697A650108BFED84B000000000BFED84B01A540052006100760065
      004200430044004600690065006C0064000D54526176654243444669656C64BF
      ED84B0264400760043006F006E00730045003400340030004E00660063005600
      4C005200420049004E00134476436F6E73453434304E6663564C5242494E08BF
      ED84B0124600690065006C0064004E0061006D006500094669656C644E616D65
      06BFED84B00C56004C005200420049004E0006564C5242494EBFED84B0104600
      75006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C
      005200420049004E0006564C5242494EBFED84B008530069007A006500045369
      7A650108BFED84B000000000BFED84B01A540052006100760065004200430044
      004600690065006C0064000D54526176654243444669656C64BFED84B0264400
      760043006F006E00730045003400340030004E006600630056004C0052004900
      4E005300134476436F6E73453434304E6663564C52494E5308BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      56004C00520049004E00530006564C52494E53BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C56004C00520049004E
      00530006564C52494E53BFED84B008530069007A0065000453697A650108BFED
      84B000000000BFED84B01A540052006100760065004200430044004600690065
      006C0064000D54526176654243444669656C64BFED84B0264400760043006F00
      6E00730045003400340030004E006600630056004C0052004C00500052001344
      76436F6E73453434304E6663564C524C505208BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B00C56004C005200
      4C005000520006564C524C5052BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00C56004C0052004C005000520006564C
      524C5052BFED84B008530069007A0065000453697A650108BFED84B000000000
      BFED84B01A540052006100760065004200430044004600690065006C0064000D
      54526176654243444669656C64BFED84B0264400760043006F006E0073004500
      3400340030004E006600630056004C0052004C0053004500134476436F6E7345
      3434304E6663564C524C534508BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B00C56004C0052004C0053004500
      06564C524C5345BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00C56004C0052004C005300450006564C524C5345BFED
      84B008530069007A0065000453697A650108BFED84B000000000BFED84B01A54
      0052006100760065004200430044004600690065006C0064000D545261766542
      43444669656C64BFED84B0264400760043006F006E0073004500340034003000
      4E006600630056004C0052004C004F005500134476436F6E73453434304E6663
      564C524C4F5508BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C56004C0052004C004F00550006564C524C4F
      55BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C56004C0052004C004F00550006564C524C4F55BFED84B008530069
      007A0065000453697A650108BFED84B000000000BFED84B01A54005200610076
      0065004200430044004600690065006C0064000D54526176654243444669656C
      64BFED84B0264400760043006F006E00730045003400340030004E0066006300
      56004C0052004C0049005100134476436F6E73453434304E6663564C524C4951
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B00C56004C0052004C004900510006564C524C4951BFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56
      004C0052004C004900510006564C524C4951BFED84B008530069007A00650004
      53697A650108BFED84B000000000BFED84B01A54005200610076006500420043
      0044004600690065006C0064000D54526176654243444669656C64BFED84B026
      4400760043006F006E00730045003400340030004E006600630056004C005200
      49004E004600134476436F6E73453434304E6663564C52494E4608BFED84B012
      4600690065006C0064004E0061006D006500094669656C644E616D6506BFED84
      B00C56004C00520049004E00460006564C52494E46BFED84B010460075006C00
      6C004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C00520049
      004E00460006564C52494E46BFED84B008530069007A0065000453697A650108
      BFED84B000000000BFED84B01A54005200610076006500420043004400460069
      0065006C0064000D54526176654243444669656C64BFED84B026440076004300
      6F006E00730045003400340030004E006600630056004C005200460049004E00
      134476436F6E73453434304E6663564C5246494E08BFED84B012460069006500
      6C0064004E0061006D006500094669656C644E616D6506BFED84B00C56004C00
      5200460049004E0006564C5246494EBFED84B010460075006C006C004E006100
      6D0065000846756C6C4E616D6506BFED84B00C56004C005200460049004E0006
      564C5246494EBFED84B008530069007A0065000453697A650108BFED84B00000
      0000BFED84B0205400520061007600650053007400720069006E006700460069
      0065006C006400105452617665537472696E674669656C64BFED84B026440076
      0043006F006E00730045003400340030004E00660063005300490054004E0046
      004300134476436F6E73453434304E66635349544E464308BFED84B012460069
      0065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C53
      00490054004E0046004300065349544E4643BFED84B010460075006C006C004E
      0061006D0065000846756C6C4E616D6506BFED84B00C5300490054004E004600
      4300065349544E4643BFED84B008530069007A0065000453697A650102BFED84
      B000000000BFED84B0225400520061007600650049006E007400650067006500
      72004600690065006C006400115452617665496E74656765724669656C64BFED
      84B0264400760043006F006E00730045003400340030004E006600630043004F
      0044004D004F005400134476436F6E73453434304E6663434F444D4F5408BFED
      84B0124600690065006C0064004E0061006D006500094669656C644E616D6506
      BFED84B00C43004F0044004D004F00540006434F444D4F54BFED84B010460075
      006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C43004F00
      44004D004F00540006434F444D4F54BFED84B008530069007A0065000453697A
      650104BFED84B000000000BFED84B0225400520061007600650049006E007400
      65006700650072004600690065006C006400115452617665496E746567657246
      69656C64BFED84B0264400760043006F006E00730045003400340030004E0066
      006300560045005200430041004C00134476436F6E73453434304E6663564552
      43414C08BFED84B0124600690065006C0064004E0061006D006500094669656C
      644E616D6506BFED84B00C560045005200430041004C000656455243414CBFED
      84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84
      B00C560045005200430041004C000656455243414CBFED84B008530069007A00
      65000453697A650104BFED84B000000000BFED84B02054005200610076006500
      53007400720069006E0067004600690065006C00640010545261766553747269
      6E674669656C64BFED84B0264400760043006F006E0073004500340034003000
      4E006600630049004E00540049004D005000134476436F6E73453434304E6663
      494E54494D5008BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C49004E00540049004D00500006494E54494D
      50BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C49004E00540049004D00500006494E54494D50BFED84B008530069
      007A0065000453697A650102BFED84B000000000BFED84B02254005200610076
      00650049006E00740065006700650072004600690065006C0064001154526176
      65496E74656765724669656C64BFED84B0264400760043006F006E0073004500
      3400340030004E00660063004E0055004D004C004F005400134476436F6E7345
      3434304E66634E554D4C4F5408BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B00C4E0055004D004C004F005400
      064E554D4C4F54BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00C4E0055004D004C004F005400064E554D4C4F54BFED
      84B008530069007A0065000453697A650104BFED84B000000000BFED84B02254
      00520061007600650049006E00740065006700650072004600690065006C0064
      00115452617665496E74656765724669656C64BFED84B0264400760043006F00
      6E00730045003400340030004E006600630046004F0052004900530053001344
      76436F6E73453434304E6663464F5249535308BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B00C46004F005200
      49005300530006464F52495353BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00C46004F00520049005300530006464F
      52495353BFED84B008530069007A0065000453697A650104BFED84B000000000
      BFED84B0205400520061007600650053007400720069006E0067004600690065
      006C006400105452617665537472696E674669656C64BFED84B0264400760043
      006F006E00730045003400340030004E006600630049004E0044005300490047
      00134476436F6E73453434304E6663494E4453494708BFED84B0124600690065
      006C0064004E0061006D006500094669656C644E616D6506BFED84B00C49004E
      00440053004900470006494E44534947BFED84B010460075006C006C004E0061
      006D0065000846756C6C4E616D6506BFED84B00C49004E004400530049004700
      06494E44534947BFED84B008530069007A0065000453697A650102BFED84B000
      000000BFED84B01A540052006100760065004200430044004600690065006C00
      64000D54526176654243444669656C64BFED84B0264400760043006F006E0073
      0045003400340030004E0066006300550053005500470045005200134476436F
      6E73453434304E666355535547455208BFED84B0124600690065006C0064004E
      0061006D006500094669656C644E616D6506BFED84B00C550053005500470045
      00520006555355474552BFED84B010460075006C006C004E0061006D00650008
      46756C6C4E616D6506BFED84B00C550053005500470045005200065553554745
      52BFED84B008530069007A0065000453697A650108BFED84B000000000BFED84
      B024540052006100760065004400610074006500540069006D00650046006900
      65006C0064001254526176654461746554696D654669656C64BFED84B0264400
      760043006F006E00730045003400340030004E00660063004400410054004700
      45005200134476436F6E73453434304E666344415447455208BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      44004100540047004500520006444154474552BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C440041005400470045
      00520006444154474552BFED84B008530069007A0065000453697A650108BFED
      84B000000000BFED84B0225400520061007600650049006E0074006500670065
      0072004600690065006C006400115452617665496E74656765724669656C64BF
      ED84B0264400760043006F006E00730045003400340030004E00660063004800
      4F005200470045005200134476436F6E73453434304E6663484F5247455208BF
      ED84B0124600690065006C0064004E0061006D006500094669656C644E616D65
      06BFED84B00C48004F00520047004500520006484F52474552BFED84B0104600
      75006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C48004F
      00520047004500520006484F52474552BFED84B008530069007A006500045369
      7A650104BFED84B000000000BFED84B01A540052006100760065004200430044
      004600690065006C0064000D54526176654243444669656C64BFED84B0264400
      760043006F006E00730045003400340030004E00660063005000450052004600
      52004500134476436F6E73453434304E666350455246524508BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      50004500520046005200450006504552465245BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C500045005200460052
      00450006504552465245BFED84B008530069007A0065000453697A650108BFED
      84B000000000BFED84B01A540052006100760065004200430044004600690065
      006C0064000D54526176654243444669656C64BFED84B0264400760043006F00
      6E00730045003400340030004E00660063005000450052005300450047001344
      76436F6E73453434304E666350455253454708BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B00C500045005200
      53004500470006504552534547BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00C500045005200530045004700065045
      52534547BFED84B008530069007A0065000453697A650108BFED84B000000000
      BFED84B01A540052006100760065004200430044004600690065006C0064000D
      54526176654243444669656C64BFED84B0264400760043006F006E0073004500
      3400340030004E006600630050004500520045004D004200134476436F6E7345
      3434304E6663504552454D4208BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B00C50004500520045004D004200
      06504552454D42BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00C50004500520045004D00420006504552454D42BFED
      84B008530069007A0065000453697A650108BFED84B000000000BFED84B01A54
      0052006100760065004200430044004600690065006C0064000D545261766542
      43444669656C64BFED84B0264400760043006F006E0073004500340034003000
      4E006600630050004500520045004E004300134476436F6E73453434304E6663
      504552454E4308BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C50004500520045004E00430006504552454E
      43BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C50004500520045004E00430006504552454E43BFED84B008530069
      007A0065000453697A650108BFED84B000000000BFED84B01A54005200610076
      0065004200430044004600690065006C0064000D54526176654243444669656C
      64BFED84B0264400760043006F006E00730045003400340030004E0066006300
      5000450052004F0055005400134476436F6E73453434304E66635045524F5554
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B00C5000450052004F0055005400065045524F5554BFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C50
      00450052004F0055005400065045524F5554BFED84B008530069007A00650004
      53697A650108BFED84B000000000BFED84B0225400520061007600650049006E
      00740065006700650072004600690065006C006400115452617665496E746567
      65724669656C64BFED84B0264400760043006F006E0073004500340034003000
      4E00660063005300450051004F0052004D00134476436F6E73453434304E6663
      5345514F524D08BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C5300450051004F0052004D00065345514F52
      4DBFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C5300450051004F0052004D00065345514F524DBFED84B008530069
      007A0065000453697A650104BFED84B000000000BFED84B01A54005200610076
      0065004200430044004600690065006C0064000D54526176654243444669656C
      64BFED84B0264400760043006F006E00730045003400340030004E0066006300
      56004C005200420050004900134476436F6E73453434304E6663564C52425049
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B00C56004C00520042005000490006564C52425049BFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56
      004C00520042005000490006564C52425049BFED84B008530069007A00650004
      53697A650108BFED84B000000000BFED84B01A54005200610076006500420043
      0044004600690065006C0064000D54526176654243444669656C64BFED84B026
      4400760043006F006E00730045003400340030004E006600630056004C005200
      500049005300134476436F6E73453434304E6663564C5250495308BFED84B012
      4600690065006C0064004E0061006D006500094669656C644E616D6506BFED84
      B00C56004C00520050004900530006564C52504953BFED84B010460075006C00
      6C004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C00520050
      004900530006564C52504953BFED84B008530069007A0065000453697A650108
      BFED84B000000000BFED84B0225400520061007600650049006E007400650067
      00650072004600690065006C006400115452617665496E74656765724669656C
      64BFED84B0264400760043006F006E00730045003400340030004E0066006300
      45005800500057004D005300134476436F6E73453434304E6663455850574D53
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B00C45005800500057004D00530006455850574D53BFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C45
      005800500057004D00530006455850574D53BFED84B008530069007A00650004
      53697A650104BFED84B000000000BFED84B02054005200610076006500530074
      00720069006E0067004600690065006C006400105452617665537472696E6746
      69656C64BFED84B0264400760043006F006E00730045003400340030004E0066
      00630049004E004400530049004E00134476436F6E73453434304E6663494E44
      53494E08BFED84B0124600690065006C0064004E0061006D006500094669656C
      644E616D6506BFED84B00C49004E004400530049004E0006494E4453494EBFED
      84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84
      B00C49004E004400530049004E0006494E4453494EBFED84B008530069007A00
      65000453697A650102BFED84B000000000BFED84B02254005200610076006500
      49006E00740065006700650072004600690065006C006400115452617665496E
      74656765724669656C64BFED84B0264400760043006F006E0073004500340034
      0030004E00660063005000520043004E0046004300134476436F6E7345343430
      4E66635052434E464308BFED84B0124600690065006C0064004E0061006D0065
      00094669656C644E616D6506BFED84B00C5000520043004E0046004300065052
      434E4643BFED84B010460075006C006C004E0061006D0065000846756C6C4E61
      6D6506BFED84B00C5000520043004E0046004300065052434E4643BFED84B008
      530069007A0065000453697A650104BFED84B000000000BFED84B01A54005200
      6100760065004200430044004600690065006C0064000D545261766542434446
      69656C64BFED84B0264400760043006F006E00730045003400340030004E0066
      00630056004C005200420043005200134476436F6E73453434304E6663564C52
      42435208BFED84B0124600690065006C0064004E0061006D006500094669656C
      644E616D6506BFED84B00C56004C00520042004300520006564C52424352BFED
      84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84
      B00C56004C00520042004300520006564C52424352BFED84B008530069007A00
      65000453697A650108BFED84B000000000BFED84B01A54005200610076006500
      4200430044004600690065006C0064000D54526176654243444669656C64BFED
      84B0264400760043006F006E00730045003400340030004E006600630056004C
      00520043004F005200134476436F6E73453434304E6663564C52434F5208BFED
      84B0124600690065006C0064004E0061006D006500094669656C644E616D6506
      BFED84B00C56004C00520043004F00520006564C52434F52BFED84B010460075
      006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C00
      520043004F00520006564C52434F52BFED84B008530069007A0065000453697A
      650108BFED84B000000000BFED84B01A54005200610076006500420043004400
      4600690065006C0064000D54526176654243444669656C64BFED84B026440076
      0043006F006E00730045003400340030004E006600630056004C005200420043
      004C00134476436F6E73453434304E6663564C5242434C08BFED84B012460069
      0065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C56
      004C005200420043004C0006564C5242434CBFED84B010460075006C006C004E
      0061006D0065000846756C6C4E616D6506BFED84B00C56004C00520042004300
      4C0006564C5242434CBFED84B008530069007A0065000453697A650108BFED84
      B000000000BFED84B01A54005200610076006500420043004400460069006500
      6C0064000D54526176654243444669656C64BFED84B0264400760043006F006E
      00730045003400340030004E006600630056004C005200430053004C00134476
      436F6E73453434304E6663564C5243534C08BFED84B0124600690065006C0064
      004E0061006D006500094669656C644E616D6506BFED84B00C56004C00520043
      0053004C0006564C5243534CBFED84B010460075006C006C004E0061006D0065
      000846756C6C4E616D6506BFED84B00C56004C005200430053004C0006564C52
      43534CBFED84B008530069007A0065000453697A650108BFED84B000000000BF
      ED84B01A540052006100760065004200430044004600690065006C0064000D54
      526176654243444669656C64BFED84B0264400760043006F006E007300450034
      00340030004E006600630056004C005200420050005400134476436F6E734534
      34304E6663564C5242505408BFED84B0124600690065006C0064004E0061006D
      006500094669656C644E616D6506BFED84B00C56004C00520042005000540006
      564C52425054BFED84B010460075006C006C004E0061006D0065000846756C6C
      4E616D6506BFED84B00C56004C00520042005000540006564C52425054BFED84
      B008530069007A0065000453697A650108BFED84B000000000BFED84B01A5400
      52006100760065004200430044004600690065006C0064000D54526176654243
      444669656C64BFED84B0264400760043006F006E00730045003400340030004E
      006600630056004C005200500049005400134476436F6E73453434304E666356
      4C5250495408BFED84B0124600690065006C0064004E0061006D006500094669
      656C644E616D6506BFED84B00C56004C00520050004900540006564C52504954
      BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BF
      ED84B00C56004C00520050004900540006564C52504954BFED84B00853006900
      7A0065000453697A650108BFED84B000000000BFED84B01A5400520061007600
      65004200430044004600690065006C0064000D54526176654243444669656C64
      BFED84B0264400760043006F006E00730045003400340030004E006600630056
      004C005200420043005400134476436F6E73453434304E6663564C5242435408
      BFED84B0124600690065006C0064004E0061006D006500094669656C644E616D
      6506BFED84B00C56004C00520042004300540006564C52424354BFED84B01046
      0075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C5600
      4C00520042004300540006564C52424354BFED84B008530069007A0065000453
      697A650108BFED84B000000000BFED84B01A5400520061007600650042004300
      44004600690065006C0064000D54526176654243444669656C64BFED84B02644
      00760043006F006E00730045003400340030004E006600630056004C00520043
      0052005400134476436F6E73453434304E6663564C5243525408BFED84B01246
      00690065006C0064004E0061006D006500094669656C644E616D6506BFED84B0
      0C56004C00520043005200540006564C52435254BFED84B010460075006C006C
      004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C0052004300
      5200540006564C52435254BFED84B008530069007A0065000453697A650108BF
      ED84B000000000BFED84B01A5400520061007600650042004300440046006900
      65006C0064000D54526176654243444669656C64BFED84B0264400760043006F
      006E00730045003400340030004E006600630056004C00520042004F00520013
      4476436F6E73453434304E6663564C52424F5208BFED84B0124600690065006C
      0064004E0061006D006500094669656C644E616D6506BFED84B00C56004C0052
      0042004F00520006564C52424F52BFED84B010460075006C006C004E0061006D
      0065000846756C6C4E616D6506BFED84B00C56004C00520042004F0052000656
      4C52424F52BFED84B008530069007A0065000453697A650108BFED84B0000000
      00BFED84B01A540052006100760065004200430044004600690065006C006400
      0D54526176654243444669656C64BFED84B0264400760043006F006E00730045
      003400340030004E006600630056004C0052004F0055005200134476436F6E73
      453434304E6663564C524F555208BFED84B0124600690065006C0064004E0061
      006D006500094669656C644E616D6506BFED84B00C56004C0052004F00550052
      0006564C524F5552BFED84B010460075006C006C004E0061006D006500084675
      6C6C4E616D6506BFED84B00C56004C0052004F005500520006564C524F5552BF
      ED84B008530069007A0065000453697A650108BFED84B000000000BFED84B01A
      540052006100760065004200430044004600690065006C0064000D5452617665
      4243444669656C64BFED84B0264400760043006F006E00730045003400340030
      004E006600630056004C005200420049004900134476436F6E73453434304E66
      63564C5242494908BFED84B0124600690065006C0064004E0061006D00650009
      4669656C644E616D6506BFED84B00C56004C00520042004900490006564C5242
      4949BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D65
      06BFED84B00C56004C00520042004900490006564C52424949BFED84B0085300
      69007A0065000453697A650108BFED84B000000000BFED84B01A540052006100
      760065004200430044004600690065006C0064000D5452617665424344466965
      6C64BFED84B0264400760043006F006E00730045003400340030004E00660063
      0056004C005200490049004D00134476436F6E73453434304E6663564C524949
      4D08BFED84B0124600690065006C0064004E0061006D006500094669656C644E
      616D6506BFED84B00C56004C005200490049004D0006564C5249494DBFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C
      56004C005200490049004D0006564C5249494DBFED84B008530069007A006500
      0453697A650108BFED84B000000000BFED84B020540052006100760065005300
      7400720069006E0067004600690065006C006400105452617665537472696E67
      4669656C64BFED84B0264400760043006F006E00730045003400340030004E00
      660063004E0055004D0044004F004900134476436F6E73453434304E66634E55
      4D444F4908BFED84B0124600690065006C0064004E0061006D00650009466965
      6C644E616D6506BFED84B00C4E0055004D0044004F004900064E554D444F49BF
      ED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED
      84B00C4E0055004D0044004F004900064E554D444F49BFED84B008530069007A
      0065000453697A650115BFED84B000000000BFED84B024540052006100760065
      004400610074006500540069006D0065004600690065006C0064001254526176
      654461746554696D654669656C64BFED84B0264400760043006F006E00730045
      003400340030004E006600630044004100540044004F004900134476436F6E73
      453434304E6663444154444F4908BFED84B0124600690065006C0064004E0061
      006D006500094669656C644E616D6506BFED84B00C44004100540044004F0049
      0006444154444F49BFED84B010460075006C006C004E0061006D006500084675
      6C6C4E616D6506BFED84B00C44004100540044004F00490006444154444F49BF
      ED84B008530069007A0065000453697A650108BFED84B000000000BFED84B020
      5400520061007600650053007400720069006E0067004600690065006C006400
      105452617665537472696E674669656C64BFED84B0264400760043006F006E00
      730045003400340030004E006600630049004E00540050004100540013447643
      6F6E73453434304E6663494E5450415408BFED84B0124600690065006C006400
      4E0061006D006500094669656C644E616D6506BFED84B00C49004E0054005000
      4100540006494E54504154BFED84B010460075006C006C004E0061006D006500
      0846756C6C4E616D6506BFED84B00C49004E00540050004100540006494E5450
      4154BFED84B008530069007A0065000453697A650102BFED84B000000000BFED
      84B01A540052006100760065004200430044004600690065006C0064000D5452
      6176654243444669656C64BFED84B0264400760043006F006E00730045003400
      340030004E006600630056004C005200520049005300134476436F6E73453434
      304E6663564C5252495308BFED84B0124600690065006C0064004E0061006D00
      6500094669656C644E616D6506BFED84B00C56004C0052005200490053000656
      4C52524953BFED84B010460075006C006C004E0061006D0065000846756C6C4E
      616D6506BFED84B00C56004C00520052004900530006564C52524953BFED84B0
      08530069007A0065000453697A650108BFED84B000000000BFED84B01A540052
      006100760065004200430044004600690065006C0064000D5452617665424344
      4669656C64BFED84B0264400760043006F006E00730045003400340030004E00
      6600630056004C0052004F0043004C00134476436F6E73453434304E6663564C
      524F434C08BFED84B0124600690065006C0064004E0061006D00650009466965
      6C644E616D6506BFED84B00C56004C0052004F0043004C0006564C524F434CBF
      ED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED
      84B00C56004C0052004F0043004C0006564C524F434CBFED84B008530069007A
      0065000453697A650108BFED84B000000000BFED84B01A540052006100760065
      004200430044004600690065006C0064000D54526176654243444669656C64BF
      ED84B0264400760043006F006E00730045003400340030004E00660063005600
      4C0052004F0050005400134476436F6E73453434304E6663564C524F505408BF
      ED84B0124600690065006C0064004E0061006D006500094669656C644E616D65
      06BFED84B00C56004C0052004F005000540006564C524F5054BFED84B0104600
      75006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C
      0052004F005000540006564C524F5054BFED84B008530069007A006500045369
      7A650108BFED84B000000000BFED84B01A540052006100760065004200430044
      004600690065006C0064000D54526176654243444669656C64BFED84B0264400
      760043006F006E00730045003400340030004E006600630056004C0052004F00
      43005400134476436F6E73453434304E6663564C524F435408BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      56004C0052004F004300540006564C524F4354BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C56004C0052004F0043
      00540006564C524F4354BFED84B008530069007A0065000453697A650108BFED
      84B000000000BFED84B01A540052006100760065004200430044004600690065
      006C0064000D54526176654243444669656C64BFED84B0264400760043006F00
      6E00730045003400340030004E006600630056004C0052004F004F0052001344
      76436F6E73453434304E6663564C524F4F5208BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B00C56004C005200
      4F004F00520006564C524F4F52BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00C56004C0052004F004F00520006564C
      524F4F52BFED84B008530069007A0065000453697A650108BFED84B000000000
      BFED84B0205400520061007600650053007400720069006E0067004600690065
      006C006400105452617665537472696E674669656C64BFED84B0264400760043
      006F006E00730045003400340030004E006600630043004F004400530045004C
      00134476436F6E73453434304E6663434F4453454C08BFED84B0124600690065
      006C0064004E0061006D006500094669656C644E616D6506BFED84B00C43004F
      004400530045004C0006434F4453454CBFED84B010460075006C006C004E0061
      006D0065000846756C6C4E616D6506BFED84B00C43004F004400530045004C00
      06434F4453454CBFED84B008530069007A0065000453697A650104BFED84B000
      000000BFED84B0205400520061007600650053007400720069006E0067004600
      690065006C006400105452617665537472696E674669656C64BFED84B0264400
      760043006F006E00730045003400340030004E006600630043004F0044005300
      53004C00134476436F6E73453434304E6663434F4453534C08BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      43004F004400530053004C0006434F4453534CBFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C43004F004400530053
      004C0006434F4453534CBFED84B008530069007A0065000453697A650103BFED
      84B000000000BFED84B01A540052006100760065004200430044004600690065
      006C0064000D54526176654243444669656C64BFED84B0264400760043006F00
      6E00730045003400340030004E00660063005000450052004400530033001344
      76436F6E73453434304E666350455244533308BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B00C500045005200
      44005300330006504552445333BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00C500045005200440053003300065045
      52445333BFED84B008530069007A0065000453697A650108BFED84B000000000
      BFED84B01A540052006100760065004200430044004600690065006C0064000D
      54526176654243444669656C64BFED84B0264400760043006F006E0073004500
      3400340030004E0066006300500045005200440053003400134476436F6E7345
      3434304E666350455244533408BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B00C500045005200440053003400
      06504552445334BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00C50004500520044005300340006504552445334BFED
      84B008530069007A0065000453697A650108BFED84B000000000BFED84B01A54
      0052006100760065004200430044004600690065006C0064000D545261766542
      43444669656C64BFED84B0264400760043006F006E0073004500340034003000
      4E0066006300500045005200440053003500134476436F6E73453434304E6663
      50455244533508BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C500045005200440053003500065045524453
      35BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C50004500520044005300350006504552445335BFED84B008530069
      007A0065000453697A650108BFED84B000000000BFED84B01A54005200610076
      0065004200430044004600690065006C0064000D54526176654243444669656C
      64BFED84B0264400760043006F006E00730045003400340030004E0066006300
      56004C005200440053003300134476436F6E73453434304E6663564C52445333
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B00C56004C00520044005300330006564C52445333BFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56
      004C00520044005300330006564C52445333BFED84B008530069007A00650004
      53697A650108BFED84B000000000BFED84B01A54005200610076006500420043
      0044004600690065006C0064000D54526176654243444669656C64BFED84B026
      4400760043006F006E00730045003400340030004E006600630056004C005200
      440053003400134476436F6E73453434304E6663564C5244533408BFED84B012
      4600690065006C0064004E0061006D006500094669656C644E616D6506BFED84
      B00C56004C00520044005300340006564C52445334BFED84B010460075006C00
      6C004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C00520044
      005300340006564C52445334BFED84B008530069007A0065000453697A650108
      BFED84B000000000BFED84B01A54005200610076006500420043004400460069
      0065006C0064000D54526176654243444669656C64BFED84B026440076004300
      6F006E00730045003400340030004E006600630056004C005200440053003500
      134476436F6E73453434304E6663564C5244533508BFED84B012460069006500
      6C0064004E0061006D006500094669656C644E616D6506BFED84B00C56004C00
      520044005300350006564C52445335BFED84B010460075006C006C004E006100
      6D0065000846756C6C4E616D6506BFED84B00C56004C00520044005300350006
      564C52445335BFED84B008530069007A0065000453697A650108BFED84B00000
      0000BFED84B01A540052006100760065004200430044004600690065006C0064
      000D54526176654243444669656C64BFED84B0264400760043006F006E007300
      45003400340030004E0066006300420045004300490050004900134476436F6E
      73453434304E666342454349504908BFED84B0124600690065006C0064004E00
      61006D006500094669656C644E616D6506BFED84B00C42004500430049005000
      490006424543495049BFED84B010460075006C006C004E0061006D0065000846
      756C6C4E616D6506BFED84B00C42004500430049005000490006424543495049
      BFED84B008530069007A0065000453697A650108BFED84B000000000BFED84B0
      1A540052006100760065004200430044004600690065006C0064000D54526176
      654243444669656C64BFED84B0264400760043006F006E007300450034003400
      30004E0066006300560045004300490050004900134476436F6E73453434304E
      666356454349504908BFED84B0124600690065006C0064004E0061006D006500
      094669656C644E616D6506BFED84B00C56004500430049005000490006564543
      495049BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D
      6506BFED84B00C56004500430049005000490006564543495049BFED84B00853
      0069007A0065000453697A650108BFED84B000000000BFED84B01A5400520061
      00760065004200430044004600690065006C0064000D54526176654243444669
      656C64BFED84B0264400760043006F006E00730045003400340030004E006600
      6300420045004300490043004D00134476436F6E73453434304E666342454349
      434D08BFED84B0124600690065006C0064004E0061006D006500094669656C64
      4E616D6506BFED84B00C420045004300490043004D000642454349434DBFED84
      B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B0
      0C420045004300490043004D000642454349434DBFED84B008530069007A0065
      000453697A650108BFED84B000000000BFED84B01A5400520061007600650042
      00430044004600690065006C0064000D54526176654243444669656C64BFED84
      B0264400760043006F006E00730045003400340030004E006600630056004500
      4300490043004D00134476436F6E73453434304E666356454349434D08BFED84
      B0124600690065006C0064004E0061006D006500094669656C644E616D6506BF
      ED84B00C560045004300490043004D000656454349434DBFED84B01046007500
      6C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C5600450043
      00490043004D000656454349434DBFED84B008530069007A0065000453697A65
      0108BFED84B000000000BFED84B01A5400520061007600650042004300440046
      00690065006C0064000D54526176654243444669656C64BFED84B02644007600
      43006F006E00730045003400340030004E006600630056004C00520042004900
      4500134476436F6E73453434304E6663564C5242494508BFED84B01246006900
      65006C0064004E0061006D006500094669656C644E616D6506BFED84B00C5600
      4C00520042004900450006564C52424945BFED84B010460075006C006C004E00
      61006D0065000846756C6C4E616D6506BFED84B00C56004C0052004200490045
      0006564C52424945BFED84B008530069007A0065000453697A650108BFED84B0
      00000000BFED84B01A540052006100760065004200430044004600690065006C
      0064000D54526176654243444669656C64BFED84B0264400760043006F006E00
      730045003400340030004E006600630056004C005200490045004D0013447643
      6F6E73453434304E6663564C5249454D08BFED84B0124600690065006C006400
      4E0061006D006500094669656C644E616D6506BFED84B00C56004C0052004900
      45004D0006564C5249454DBFED84B010460075006C006C004E0061006D006500
      0846756C6C4E616D6506BFED84B00C56004C005200490045004D0006564C5249
      454DBFED84B008530069007A0065000453697A650108BFED84B000000000BFED
      84B01A540052006100760065004200430044004600690065006C0064000D5452
      6176654243444669656C64BFED84B0264400760043006F006E00730045003400
      340030004E006600630056004C005200460045004900134476436F6E73453434
      304E6663564C5246454908BFED84B0124600690065006C0064004E0061006D00
      6500094669656C644E616D6506BFED84B00C56004C0052004600450049000656
      4C52464549BFED84B010460075006C006C004E0061006D0065000846756C6C4E
      616D6506BFED84B00C56004C00520046004500490006564C52464549BFED84B0
      08530069007A0065000453697A650108BFED84B000000000BFED84B01A540052
      006100760065004200430044004600690065006C0064000D5452617665424344
      4669656C64BFED84B0264400760043006F006E00730045003400340030004E00
      6600630056004C005200530045004900134476436F6E73453434304E6663564C
      5253454908BFED84B0124600690065006C0064004E0061006D00650009466965
      6C644E616D6506BFED84B00C56004C00520053004500490006564C52534549BF
      ED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED
      84B00C56004C00520053004500490006564C52534549BFED84B008530069007A
      0065000453697A650108BFED84B000000000BFED84B01A540052006100760065
      004200430044004600690065006C0064000D54526176654243444669656C64BF
      ED84B0264400760043006F006E00730045003400340030004E00660063005600
      4C0052004F0055004900134476436F6E73453434304E6663564C524F554908BF
      ED84B0124600690065006C0064004E0061006D006500094669656C644E616D65
      06BFED84B00C56004C0052004F005500490006564C524F5549BFED84B0104600
      75006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C
      0052004F005500490006564C524F5549BFED84B008530069007A006500045369
      7A650108BFED84B000000000BFED84B01A540052006100760065004200430044
      004600690065006C0064000D54526176654243444669656C64BFED84B0264400
      760043006F006E00730045003400340030004E0066006300420043004F004900
      4D005000134476436F6E73453434304E666342434F494D5008BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      420043004F0049004D0050000642434F494D50BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C420043004F0049004D
      0050000642434F494D50BFED84B008530069007A0065000453697A650108BFED
      84B000000000BFED84B01A540052006100760065004200430044004600690065
      006C0064000D54526176654243444669656C64BFED84B0264400760043006F00
      6E00730045003400340030004E006600630043004F00460049004D0050001344
      76436F6E73453434304E6663434F46494D5008BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B00C43004F004600
      49004D00500006434F46494D50BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00C43004F00460049004D00500006434F
      46494D50BFED84B008530069007A0065000453697A650108BFED84B000000000
      BFED84B01A540052006100760065004200430044004600690065006C0064000D
      54526176654243444669656C64BFED84B0264400760043006F006E0073004500
      3400340030004E006600630042005000490049004D005000134476436F6E7345
      3434304E6663425049494D5008BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B00C42005000490049004D005000
      06425049494D50BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00C42005000490049004D00500006425049494D50BFED
      84B008530069007A0065000453697A650108BFED84B000000000BFED84B01A54
      0052006100760065004200430044004600690065006C0064000D545261766542
      43444669656C64BFED84B0264400760043006F006E0073004500340034003000
      4E006600630050004900530049004D005000134476436F6E73453434304E6663
      504953494D5008BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C50004900530049004D00500006504953494D
      50BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C50004900530049004D00500006504953494D50BFED84B008530069
      007A0065000453697A650108BFED84B000000000BFED84B02254005200610076
      00650049006E00740065006700650072004600690065006C0064001154526176
      65496E74656765724669656C64BFED84B0264400760043006F006E0073004500
      3400340030004E00660063004E0055004D0043004E005400134476436F6E7345
      3434304E66634E554D434E5408BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B00C4E0055004D0043004E005400
      064E554D434E54BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00C4E0055004D0043004E005400064E554D434E54BFED
      84B008530069007A0065000453697A650104BFED84B000000000BFED84B02054
      00520061007600650053007400720069006E0067004600690065006C00640010
      5452617665537472696E674669656C64BFED84B0264400760043006F006E0073
      0045003400340030004E00660063004900440045004E0046004300134476436F
      6E73453434304E66634944454E464308BFED84B0124600690065006C0064004E
      0061006D006500094669656C644E616D6506BFED84B00C4900440045004E0046
      004300064944454E4643BFED84B010460075006C006C004E0061006D00650008
      46756C6C4E616D6506BFED84B00C4900440045004E0046004300064944454E46
      43BFED84B008530069007A0065000453697A65011FBFED84B000000000BFED84
      B0225400520061007600650049006E0074006500670065007200460069006500
      6C006400115452617665496E74656765724669656C64BFED84B0264400760043
      006F006E00730045003400340030004E00660063004E0055004D004300540052
      00134476436F6E73453434304E66634E554D43545208BFED84B0124600690065
      006C0064004E0061006D006500094669656C644E616D6506BFED84B00C4E0055
      004D00430054005200064E554D435452BFED84B010460075006C006C004E0061
      006D0065000846756C6C4E616D6506BFED84B00C4E0055004D00430054005200
      064E554D435452BFED84B008530069007A0065000453697A650104BFED84B000
      000000BFED84B0225400520061007600650049006E0074006500670065007200
      4600690065006C006400115452617665496E74656765724669656C64BFED84B0
      264400760043006F006E00730045003400340030004E006600630052004F0054
      004E0041005000134476436F6E73453434304E6663524F544E415008BFED84B0
      124600690065006C0064004E0061006D006500094669656C644E616D6506BFED
      84B00C52004F0054004E004100500006524F544E4150BFED84B010460075006C
      006C004E0061006D0065000846756C6C4E616D6506BFED84B00C52004F005400
      4E004100500006524F544E4150BFED84B008530069007A0065000453697A6501
      04BFED84B000000000BFED84B0225400520061007600650049006E0074006500
      6700650072004600690065006C006400115452617665496E7465676572466965
      6C64BFED84B0264400760043006F006E00730045003400340030004E00660063
      00460049004C00410050005200134476436F6E73453434304E666346494C4150
      5208BFED84B0124600690065006C0064004E0061006D006500094669656C644E
      616D6506BFED84B00C460049004C004100500052000646494C415052BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C
      460049004C004100500052000646494C415052BFED84B008530069007A006500
      0453697A650104BFED84B000000000BFED84B01A540052006100760065004200
      430044004600690065006C0064000D54526176654243444669656C64BFED84B0
      264400760043006F006E00730045003400340030004E00660063004E0055004D
      00410050005200134476436F6E73453434304E66634E554D41505208BFED84B0
      124600690065006C0064004E0061006D006500094669656C644E616D6506BFED
      84B00C4E0055004D00410050005200064E554D415052BFED84B010460075006C
      006C004E0061006D0065000846756C6C4E616D6506BFED84B00C4E0055004D00
      410050005200064E554D415052BFED84B008530069007A0065000453697A6501
      08BFED84B000000000BFED84B020540052006100760065005300740072006900
      6E0067004600690065006C006400105452617665537472696E674669656C64BF
      ED84B0264400760043006F006E00730045003400340030004E00660063005300
      49005400410050005200134476436F6E73453434304E666353495441505208BF
      ED84B0124600690065006C0064004E0061006D006500094669656C644E616D65
      06BFED84B00C53004900540041005000520006534954415052BFED84B0104600
      75006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C530049
      00540041005000520006534954415052BFED84B008530069007A006500045369
      7A650104BFED84B000000000BFED84B01A540052006100760065004200430044
      004600690065006C0064000D54526176654243444669656C64BFED84B0264400
      760043006F006E00730045003400340030004E00660063005000450052004900
      43004600134476436F6E73453434304E666350455249434608BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      50004500520049004300460006504552494346BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C500045005200490043
      00460006504552494346BFED84B008530069007A0065000453697A650108BFED
      84B000000000BFED84B01A540052006100760065004200430044004600690065
      006C0064000D54526176654243444669656C64BFED84B0264400760043006F00
      6E00730045003400340030004E0066006300490043004D004600520045001344
      76436F6E73453434304E666349434D46524508BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B00C490043004D00
      4600520045000649434D465245BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00C490043004D00460052004500064943
      4D465245BFED84B008530069007A0065000453697A650108BFED84B000000000
      BFED84B0225400520061007600650049006E0074006500670065007200460069
      0065006C006400115452617665496E74656765724669656C64BFED84B0264400
      760043006F006E00730045003400340030004E006600630043004C0049005200
      43004200134476436F6E73453434304E6663434C4952434208BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      43004C00490052004300420006434C49524342BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C43004C004900520043
      00420006434C49524342BFED84B008530069007A0065000453697A650104BFED
      84B000000000BFED84B01A540052006100760065004200430044004600690065
      006C0064000D54526176654243444669656C64BFED84B0264400760043006F00
      6E00730045003400340030004E006600630056004C0052004200500046001344
      76436F6E73453434304E6663564C5242504608BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B00C56004C005200
      42005000460006564C52425046BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00C56004C00520042005000460006564C
      52425046BFED84B008530069007A0065000453697A650108BFED84B000000000
      BFED84B01A540052006100760065004200430044004600690065006C0064000D
      54526176654243444669656C64BFED84B0264400760043006F006E0073004500
      3400340030004E006600630056004C005200500049004600134476436F6E7345
      3434304E6663564C5250494608BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B00C56004C005200500049004600
      06564C52504946BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00C56004C00520050004900460006564C52504946BFED
      84B008530069007A0065000453697A650108BFED84B000000000BFED84B01A54
      0052006100760065004200430044004600690065006C0064000D545261766542
      43444669656C64BFED84B0264400760043006F006E0073004500340034003000
      4E006600630056004C005200420043004600134476436F6E73453434304E6663
      564C5242434608BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C56004C00520042004300460006564C524243
      46BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C56004C00520042004300460006564C52424346BFED84B008530069
      007A0065000453697A650108BFED84B000000000BFED84B01A54005200610076
      0065004200430044004600690065006C0064000D54526176654243444669656C
      64BFED84B0264400760043006F006E00730045003400340030004E0066006300
      56004C005200430046004600134476436F6E73453434304E6663564C52434646
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B00C56004C00520043004600460006564C52434646BFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56
      004C00520043004600460006564C52434646BFED84B008530069007A00650004
      53697A650108BFED84B000000000BFED84B0225400520061007600650049006E
      00740065006700650072004600690065006C006400115452617665496E746567
      65724669656C64BFED84B0264400760043006F006E0073004500340034003000
      4E006600630052004F00540041004E005800134476436F6E73453434304E6663
      524F54414E5808BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C52004F00540041004E00580006524F54414E
      58BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C52004F00540041004E00580006524F54414E58BFED84B008530069
      007A0065000453697A650104BFED84B000000000BFED84B01A54005200610076
      0065004200430044004600690065006C0064000D54526176654243444669656C
      64BFED84B0264400760043006F006E00730045003400340030004E0066006300
      4E0055004D0041004E005800134476436F6E73453434304E66634E554D414E58
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B00C4E0055004D0041004E005800064E554D414E58BFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C4E
      0055004D0041004E005800064E554D414E58BFED84B008530069007A00650004
      53697A650108BFED84B000000000BFED84B02054005200610076006500530074
      00720069006E0067004600690065006C006400105452617665537472696E6746
      69656C64BFED84B0264400760043006F006E00730045003400340030004E0066
      00630050004C004100560045004900134476436F6E73453434304E6663504C41
      56454908BFED84B0124600690065006C0064004E0061006D006500094669656C
      644E616D6506BFED84B00C50004C00410056004500490006504C41564549BFED
      84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84
      B00C50004C00410056004500490006504C41564549BFED84B008530069007A00
      65000453697A65010BBFED84B000000000BFED84B02054005200610076006500
      53007400720069006E0067004600690065006C00640010545261766553747269
      6E674669656C64BFED84B0264400760043006F006E0073004500340034003000
      4E006600630043004F004400560049004100134476436F6E73453434304E6663
      434F4456494108BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C43004F00440056004900410006434F445649
      41BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C43004F00440056004900410006434F44564941BFED84B008530069
      007A0065000453697A650104BFED84B000000000BFED84B02054005200610076
      00650053007400720069006E0067004600690065006C00640010545261766553
      7472696E674669656C64BFED84B0264400760043006F006E0073004500340034
      0030004E00660063004300480056004E0045004C00134476436F6E7345343430
      4E66634348564E454C08BFED84B0124600690065006C0064004E0061006D0065
      00094669656C644E616D6506BFED84B00C4300480056004E0045004C00064348
      564E454CBFED84B010460075006C006C004E0061006D0065000846756C6C4E61
      6D6506BFED84B00C4300480056004E0045004C00064348564E454CBFED84B008
      530069007A0065000453697A650133BFED84B000000000BFED84B02054005200
      61007600650053007400720069006E0067004600690065006C00640010545261
      7665537472696E674669656C64BFED84B0264400760043006F006E0073004500
      3400340030004E006600630053004F004D00460052004500134476436F6E7345
      3434304E6663534F4D46524508BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B00C53004F004D00460052004500
      06534F4D465245BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00C53004F004D0046005200450006534F4D465245BFED
      84B008530069007A0065000453697A650102BFED84B000000000BFED84B02054
      00520061007600650053007400720069006E0067004600690065006C00640010
      5452617665537472696E674669656C64BFED84B0264400760043006F006E0073
      0045003400340030004E0066006300550046005300560045004900134476436F
      6E73453434304E666355465356454908BFED84B0124600690065006C0064004E
      0061006D006500094669656C644E616D6506BFED84B00C550046005300560045
      00490006554653564549BFED84B010460075006C006C004E0061006D00650008
      46756C6C4E616D6506BFED84B00C550046005300560045004900065546535645
      49BFED84B008530069007A0065000453697A650103BFED84B000000000BFED84
      B0205400520061007600650053007400720069006E0067004600690065006C00
      6400105452617665537472696E674669656C64BFED84B0264400760043006F00
      6E00730045003400340030004E00660063004E0055004D0049004E0054001344
      76436F6E73453434304E66634E554D494E5408BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B00C4E0055004D00
      49004E005400064E554D494E54BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00C4E0055004D0049004E005400064E55
      4D494E54BFED84B008530069007A0065000453697A650115BFED84B000000000
      BFED84B0225400520061007600650049006E0074006500670065007200460069
      0065006C006400115452617665496E74656765724669656C64BFED84B0264400
      760043006F006E00730045003400340030004E0066006300460049004C004600
      49005800134476436F6E73453434304E666346494C46495808BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      460049004C004600490058000646494C464958BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C460049004C00460049
      0058000646494C464958BFED84B008530069007A0065000453697A650104BFED
      84B000000000BFED84B0225400520061007600650049006E0074006500670065
      0072004600690065006C006400115452617665496E74656765724669656C64BF
      ED84B0264400760043006F006E00730045003400340030004E00660063004E00
      55004D00460049005800134476436F6E73453434304E66634E554D46495808BF
      ED84B0124600690065006C0064004E0061006D006500094669656C644E616D65
      06BFED84B00C4E0055004D00460049005800064E554D464958BFED84B0104600
      75006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C4E0055
      004D00460049005800064E554D464958BFED84B008530069007A006500045369
      7A650104BFED84B000000000BFED84B0225400520061007600650049006E0074
      0065006700650072004600690065006C006400115452617665496E7465676572
      4669656C64BFED84B0264400760043006F006E00730045003400340030004E00
      66006300460049004C004F0043005000134476436F6E73453434304E66634649
      4C4F435008BFED84B0124600690065006C0064004E0061006D00650009466965
      6C644E616D6506BFED84B00C460049004C004F00430050000646494C4F4350BF
      ED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED
      84B00C460049004C004F00430050000646494C4F4350BFED84B008530069007A
      0065000453697A650104BFED84B000000000BFED84B022540052006100760065
      0049006E00740065006700650072004600690065006C00640011545261766549
      6E74656765724669656C64BFED84B0264400760043006F006E00730045003400
      340030004E00660063004E0055004D004F0043005000134476436F6E73453434
      304E66634E554D4F435008BFED84B0124600690065006C0064004E0061006D00
      6500094669656C644E616D6506BFED84B00C4E0055004D004F0043005000064E
      554D4F4350BFED84B010460075006C006C004E0061006D0065000846756C6C4E
      616D6506BFED84B00C4E0055004D004F0043005000064E554D4F4350BFED84B0
      08530069007A0065000453697A650104BFED84B000000000BFED84B020540052
      0061007600650053007400720069006E0067004600690065006C006400105452
      617665537472696E674669656C64BFED84B02E4400760043006F006E00730045
      003400340030004E00660063005500530055005F0050004C0041005600450049
      00174476436F6E73453434304E66635553555F504C4156454908BFED84B01246
      00690065006C0064004E0061006D006500094669656C644E616D6506BFED84B0
      145500530055005F0050004C0041005600450049000A5553555F504C41564549
      BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BF
      ED84B0145500530055005F0050004C0041005600450049000A5553555F504C41
      564549BFED84B008530069007A0065000453697A650109BFED84B000000000BF
      ED84B0225400520061007600650049006E007400650067006500720046006900
      65006C006400115452617665496E74656765724669656C64BFED84B026440076
      0043006F006E00730045003400340030004E006600630043004F004400450051
      005500134476436F6E73453434304E6663434F4445515508BFED84B012460069
      0065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C43
      004F00440045005100550006434F44455155BFED84B010460075006C006C004E
      0061006D0065000846756C6C4E616D6506BFED84B00C43004F00440045005100
      550006434F44455155BFED84B008530069007A0065000453697A650104BFED84
      B000000000BFED84B0225400520061007600650049006E007400650067006500
      72004600690065006C006400115452617665496E74656765724669656C64BFED
      84B0264400760043006F006E00730045003400340030004E00660063004E0055
      004D00430046004900134476436F6E73453434304E66634E554D43464908BFED
      84B0124600690065006C0064004E0061006D006500094669656C644E616D6506
      BFED84B00C4E0055004D00430046004900064E554D434649BFED84B010460075
      006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C4E005500
      4D00430046004900064E554D434649BFED84B008530069007A0065000453697A
      650104BFED84B000000000BFED84B02054005200610076006500530074007200
      69006E0067004600690065006C006400105452617665537472696E674669656C
      64BFED84B0264400760043006F006E00730045003400340030004E0066006300
      5400490050004E0044004900134476436F6E73453434304E66635449504E4449
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B00C5400490050004E0044004900065449504E4449BFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C54
      00490050004E0044004900065449504E4449BFED84B008530069007A00650004
      53697A650102BFED84B000000000BFED84B02054005200610076006500530074
      00720069006E0067004600690065006C006400105452617665537472696E6746
      69656C64BFED84B0264400760043006F006E00730045003400340030004E0066
      0063004C004F004300440045005300134476436F6E73453434304E66634C4F43
      44455308BFED84B0124600690065006C0064004E0061006D006500094669656C
      644E616D6506BFED84B00C4C004F004300440045005300064C4F43444553BFED
      84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84
      B00C4C004F004300440045005300064C4F43444553BFED84B008530069007A00
      65000453697A65013DBFED84B000000000BFED84B02454005200610076006500
      4400610074006500540069006D0065004600690065006C006400125452617665
      4461746554696D654669656C64BFED84B0264400760043006F006E0073004500
      3400340030004E0066006300440041005400440045005300134476436F6E7345
      3434304E666344415444455308BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B00C440041005400440045005300
      06444154444553BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00C44004100540044004500530006444154444553BFED
      84B008530069007A0065000453697A650108BFED84B000000000BFED84B02054
      00520061007600650053007400720069006E0067004600690065006C00640010
      5452617665537472696E674669656C64BFED84B0264400760043006F006E0073
      0045003400340030004E0066006300550046005300440045005300134476436F
      6E73453434304E666355465344455308BFED84B0124600690065006C0064004E
      0061006D006500094669656C644E616D6506BFED84B00C550046005300440045
      00530006554653444553BFED84B010460075006C006C004E0061006D00650008
      46756C6C4E616D6506BFED84B00C550046005300440045005300065546534445
      53BFED84B008530069007A0065000453697A650103BFED84B000000000BFED84
      B0225400520061007600650049006E0074006500670065007200460069006500
      6C006400115452617665496E74656765724669656C64BFED84B0264400760043
      006F006E00730045003400340030004E006600630043004F0044004500580050
      00134476436F6E73453434304E6663434F4445585008BFED84B0124600690065
      006C0064004E0061006D006500094669656C644E616D6506BFED84B00C43004F
      00440045005800500006434F44455850BFED84B010460075006C006C004E0061
      006D0065000846756C6C4E616D6506BFED84B00C43004F004400450058005000
      06434F44455850BFED84B008530069007A0065000453697A650104BFED84B000
      000000BFED84B0205400520061007600650053007400720069006E0067004600
      690065006C006400105452617665537472696E674669656C64BFED84B0264400
      760043006F006E00730045003400340030004E00660063004E004F004D004600
      4F005200134476436F6E73453434304E66634E4F4D464F5208BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      4E004F004D0046004F005200064E4F4D464F52BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C4E004F004D0046004F
      005200064E4F4D464F52BFED84B008530069007A0065000453697A650165BFED
      84B000000000BFED84B01A540052006100760065004200430044004600690065
      006C0064000D54526176654243444669656C64BFED84B0264400760043006F00
      6E00730045003400340030004E00660063004300470043004300500046001344
      76436F6E73453434304E666343474343504608BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B00C430047004300
      43005000460006434743435046BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00C430047004300430050004600064347
      43435046BFED84B008530069007A0065000453697A650108BFED84B000000004
      BFED84B00E5200650070006F00720074003100075265706F72743100A1260000
      BFED84B00A500061006700650031000550616765310100BFED84B00A50006100
      67006500310005506167653101BFED84B00A5000610067006500310005506167
      653100BFED84B016540052006100760065005200650070006F00720074000B54
      526176655265706F7274BFED84B00E5200650070006F00720074003100075265
      706F72743108BFED84B01A43006F006D00700069006C0065004E006500650064
      00650064000D436F6D70696C654E656564656400BFED84B00A460061006C0073
      0065000546616C7365BFED84B010460075006C006C004E0061006D0065000846
      756C6C4E616D6506BFED84B00E5200650070006F00720074003100075265706F
      727431BFED84B012460069007200730074005000610067006500094669727374
      5061676500BFED84B01A5200650070006F007200740031002E00500061006700
      650031000D5265706F7274312E5061676531BFED84B01450006100720061006D
      00650074006500720073000A506172616D657465727308BFED84B00000BFED84
      B00C5000490056006100720073000650495661727308BFED84B00000BFED84B0
      00000000F924000000BFED84B012540052006100760065005000610067006500
      09545261766550616765BFED84B00A5000610067006500310005506167653108
      BFED84B01A43006F006D00700069006C0065004E00650065006400650064000D
      436F6D70696C654E656564656400BFED84B00A460061006C0073006500054661
      6C7365BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D
      6506BFED84B00A50006100670065003100055061676531BFED84B00642006900
      6E000342696E0201BFED84B01247007200690064004C0069006E006500730009
      477269644C696E65730106BFED84B01647007200690064005300700061006300
      69006E0067000B4772696453706163696E6705005028140A8542A1FA3FBFED84
      B0164F007200690065006E0074006100740069006F006E000B4F7269656E7461
      74696F6E00BFED84B01270006F00440065006600610075006C00740009706F44
      656661756C74BFED84B01250006100700065007200530069007A006500095061
      70657253697A650109BFED84B01450006100720061006D006500740065007200
      73000A506172616D657465727308BFED84B00000BFED84B00C50004900560061
      00720073000650495661727308BFED84B00000BFED84B000000A00BFED84B016
      5400520061007600650052006500670069006F006E000B545261766552656769
      6F6EBFED84B00E52006500670069006F006E00310007526567696F6E3108BFED
      84B00C480065006900670068007400064865696768740500000000000000AC02
      40BFED84B0084C00650066007400044C6566740500003A8EE3388EE3F93FBFED
      84B00654006F00700003546F700500C8711CC7711CE7FE3FBFED84B00A570069
      00640074006800055769647468050078B1E4174B7E830240BFED84B01A43006F
      006C0075006D006E00530070006100630069006E0067000D436F6C756D6E5370
      6163696E670500000000000000000000BFED84B000000100BFED84B01A540052
      006100760065004400610074006100420061006E0064000D5452617665446174
      6142616E64BFED84B00E44006500740061006C006800650007446574616C6865
      08BFED84B00C41006E00630068006F00720006416E63686F720103BFED84B012
      420061006E0064005300740079006C0065000942616E645374796C6508BFED84
      B0105000720069006E0074004C006F006300085072696E744C6F6307BFED84B0
      1070006C00440065007400610069006C0008706C44657461696CBFED84B00000
      BFED84B00000BFED84B00C480065006900670068007400064865696768740500
      005BB0055BB085FD3FBFED84B01A4D0069006E00480065006900670068007400
      4C006500660074000D4D696E4865696768744C65667405000000000000000000
      00BFED84B01A50006F0073006900740069006F006E00560061006C0075006500
      0D506F736974696F6E56616C75650500000000000000000000BFED84B01A4300
      6F006C0075006D006E00530070006100630069006E0067000D436F6C756D6E53
      706163696E670500000000000000000000BFED84B01044006100740061005600
      69006500770008446174615669657700BFED84B01A4400760043006F006E0073
      0045003400340030004E00660063000D4476436F6E73453434304E6663BFED84
      B000000600BFED84B01A54005200610076006500440061007400610054006500
      780074000D54526176654461746154657874BFED84B012440061007400610054
      0065007800740031000944617461546578743108BFED84B00846006F006E0074
      0004466F6E7408BFED84B00E4300680061007200730065007400074368617273
      65740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B008
      4E0061006D006500044E616D6506BFED84B00A41007200690061006C00054172
      69616CBFED84B008530069007A0065000453697A650108BFED84B00A53007400
      79006C006500055374796C6507BFED84B00000BFED84B00000BFED84B0164600
      6F006E0074004A007500730074006900660079000B466F6E744A757374696679
      00BFED84B00E70006A005200690067006800740007706A5269676874BFED84B0
      084C00650066007400044C656674050088FD4186CA0ED3FC3FBFED84B0085400
      650078007400045465787406BFED84B00C43004F00440046004F00520006434F
      44464F52BFED84B00654006F00700003546F700500A06D7F90A1B2C3FA3FBFED
      84B00A57006900640074006800055769647468050098C2F5285C8F82FE3FBFED
      84B01244006100740061004600690065006C00640009446174614669656C6406
      BFED84B00C43004F00440046004F00520006434F44464F52BFED84B010440061
      0074006100560069006500770008446174615669657700BFED84B01A44007600
      43006F006E00730045003400340030004E00660063000D4476436F6E73453434
      304E6663BFED84B000000000BFED84B01A540052006100760065004400610074
      00610054006500780074000D54526176654461746154657874BFED84B0124400
      610074006100540065007800740032000944617461546578743208BFED84B008
      46006F006E00740004466F6E7408BFED84B00E43006800610072007300650074
      0007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F72
      0100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072006900
      61006C0005417269616CBFED84B008530069007A0065000453697A650108BFED
      84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B00000
      BFED84B01646006F006E0074004A007500730074006900660079000B466F6E74
      4A75737469667900BFED84B00C70006A004C0065006600740006706A4C656674
      BFED84B0084C00650066007400044C6566740500308EE3388EE3D8FE3FBFED84
      B0085400650078007400045465787406BFED84B00C4E004F004D0046004F0052
      00064E4F4D464F52BFED84B00654006F00700003546F700500A06D7F90A1B2C3
      FA3FBFED84B00A5700690064007400680005576964746805006036A0BB2FD0B6
      0040BFED84B01244006100740061004600690065006C00640009446174614669
      656C6406BFED84B00C4E004F004D0046004F005200064E4F4D464F52BFED84B0
      104400610074006100560069006500770008446174615669657700BFED84B01A
      4400760043006F006E00730045003400340030004E00660063000D4476436F6E
      73453434304E6663BFED84B000000000BFED84B01A5400520061007600650044
      0061007400610054006500780074000D54526176654461746154657874BFED84
      B0124400610074006100540065007800740033000944617461546578743308BF
      ED84B00846006F006E00740004466F6E7408BFED84B00E430068006100720073
      006500740007436861727365740101BFED84B00A43006F006C006F0072000543
      6F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100
      7200690061006C0005417269616CBFED84B008530069007A0065000453697A65
      0108BFED84B00A5300740079006C006500055374796C6507BFED84B00000BFED
      84B00000BFED84B01646006F006E0074004A007500730074006900660079000B
      466F6E744A75737469667900BFED84B00E70006A005200690067006800740007
      706A5269676874BFED84B0084C00650066007400044C6566740500804C5D6E7F
      90F10040BFED84B0085400650078007400045465787406BFED84B00C4E005500
      4D004E0046004300064E554D4E4643BFED84B00654006F00700003546F700500
      A06D7F90A1B2C3FA3FBFED84B00A570069006400740068000557696474680500
      B091806F5E4DBCFE3FBFED84B01244006100740061004600690065006C006400
      09446174614669656C6406BFED84B00C4E0055004D004E0046004300064E554D
      4E4643BFED84B010440061007400610056006900650077000844617461566965
      7700BFED84B01A4400760043006F006E00730045003400340030004E00660063
      000D4476436F6E73453434304E6663BFED84B000000000BFED84B01A54005200
      610076006500440061007400610054006500780074000D545261766544617461
      54657874BFED84B0124400610074006100540065007800740034000944617461
      546578743408BFED84B00846006F006E00740004466F6E7408BFED84B00E4300
      68006100720073006500740007436861727365740101BFED84B00A43006F006C
      006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506
      BFED84B00A41007200690061006C0005417269616CBFED84B008530069007A00
      65000453697A650108BFED84B00A5300740079006C006500055374796C6507BF
      ED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073007400
      6900660079000B466F6E744A75737469667900BFED84B00C70006A004C006500
      6600740006706A4C656674BFED84B0084C00650066007400044C656674050028
      B73FC850D9990140BFED84B0085400650078007400045465787406BFED84B00C
      44004100540045004D00490006444154454D49BFED84B00654006F0070000354
      6F700500A06D7F90A1B2C3FA3FBFED84B00A5700690064007400680005576964
      74680500D0CCCCCCCCCCCCFE3FBFED84B0124400610074006100460069006500
      6C00640009446174614669656C6406BFED84B00C44004100540045004D004900
      06444154454D49BFED84B0104400610074006100560069006500770008446174
      615669657700BFED84B01A4400760043006F006E00730045003400340030004E
      00660063000D4476436F6E73453434304E6663BFED84B000000000BFED84B01A
      54005200610076006500440061007400610054006500780074000D5452617665
      4461746154657874BFED84B01244006100740061005400650078007400350009
      44617461546578743508BFED84B00846006F006E00740004466F6E7408BFED84
      B00E430068006100720073006500740007436861727365740101BFED84B00A43
      006F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E
      616D6506BFED84B00A41007200690061006C0005417269616CBFED84B0085300
      69007A0065000453697A650108BFED84B00A5300740079006C00650005537479
      6C6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A007500
      730074006900660079000B466F6E744A75737469667900BFED84B00C70006A00
      4C0065006600740006706A4C656674BFED84B0084C00650066007400044C6566
      740500B82EB73FC850B50140BFED84B0085400650078007400045465787406BF
      ED84B00C44004100540045004E00540006444154454E54BFED84B00654006F00
      700003546F700500A06D7F90A1B2C3FA3FBFED84B00A57006900640074006800
      0557696474680500D0CCCCCCCCCCCCFE3FBFED84B01244006100740061004600
      690065006C00640009446174614669656C6406BFED84B00C4400410054004500
      4E00540006444154454E54BFED84B01044006100740061005600690065007700
      08446174615669657700BFED84B01A4400760043006F006E0073004500340034
      0030004E00660063000D4476436F6E73453434304E6663BFED84B000000000BF
      ED84B0145400520061007600650048004C0069006E0065000A5452617665484C
      696E65BFED84B00C48004C0069006E006500310006484C696E653108BFED84B0
      0C480065006900670068007400064865696768740500000000000000000000BF
      ED84B0084C00650066007400044C6566740500D05197DB1F64A8F93FBFED84B0
      124C0069006E0065005300740079006C006500094C696E655374796C6500BFED
      84B00A7000730044006F007400057073446F74BFED84B0124C0069006E006500
      57006900640074006800094C696E655769647468050000000000000080FF3FBF
      ED84B0084E00450053005700044E45535700BFED84B00A460061006C00730065
      000546616C7365BFED84B00654006F00700003546F7005000074DA40A70DF4FC
      3FBFED84B00A570069006400740068000557696474680500388EE3388EE38202
      40BFED84B000000000BFED84B012540052006100760065005400650078007400
      09545261766554657874BFED84B00A5400650078007400310005546578743108
      BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061007200
      73006500740007436861727365740101BFED84B00A43006F006C006F00720005
      436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41
      007200690061006C0005417269616CBFED84B008530069007A0065000453697A
      65010ABFED84B00A5300740079006C006500055374796C6507BFED84B00000BF
      ED84B00000BFED84B01646006F006E0074004A00750073007400690066007900
      0B466F6E744A75737469667900BFED84B00C70006A004C006500660074000670
      6A4C656674BFED84B0084C00650066007400044C6566740500A8814E1BE8B481
      FA3FBFED84B0085400650078007400045465787406BFED84B080C65F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      00635F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5FBFED84B00654006F00700003546F70050020C7711CC771BCFE3FBF
      ED84B00A570069006400740068000557696474680500585555555555830240BF
      ED84B000000000BFED84B0125400520061007600650054006500780074000954
      5261766554657874BFED84B00A5400650078007400320005546578743208BFED
      84B00846006F006E00740004466F6E7408BFED84B00E43006800610072007300
      6500740007436861727365740101BFED84B00A43006F006C006F00720005436F
      6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072
      00690061006C0005417269616CBFED84B008530069007A0065000453697A6501
      0ABFED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84
      B00000BFED84B01646006F006E0074004A007500730074006900660079000B46
      6F6E744A75737469667900BFED84B00C70006A004C0065006600740006706A4C
      656674BFED84B0084C00650066007400044C656674050070B81E85EB51B8FA3F
      BFED84B0085400650078007400045465787406BFED84B080C65F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F0063
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5FBFED84B00654006F00700003546F70050010CF8A4602BEF9FD3FBFED84
      B00A570069006400740068000557696474680500585555555555830240BFED84
      B000000000BFED84B01254005200610076006500540065007800740009545261
      766554657874BFED84B00A5400650078007400330005546578743308BFED84B0
      0846006F006E00740004466F6E7408BFED84B00E430068006100720073006500
      740007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F
      720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069
      0061006C0005417269616CBFED84B008530069007A0065000453697A650109BF
      ED84B00A5300740079006C006500055374796C6507BFED84B00C660073004200
      6F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84B0164600
      6F006E0074004A007500730074006900660079000B466F6E744A757374696679
      00BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00
      650066007400044C6566740500D8277DD2277DD2FD3FBFED84B0085400650078
      007400045465787406BFED84B01446006F0072006E0065006300650064006F00
      72000A466F726E656365646F72BFED84B00654006F00700003546F70050038D0
      69039D36B0FE3FBFED84B00A570069006400740068000557696474680500C871
      1CC7711CE7FE3FBFED84B000000000BFED84B012540052006100760065005400
      65007800740009545261766554657874BFED84B00A5400650078007400340005
      546578743408BFED84B00846006F006E00740004466F6E7408BFED84B00E4300
      68006100720073006500740007436861727365740101BFED84B00A43006F006C
      006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506
      BFED84B00A41007200690061006C0005417269616CBFED84B008530069007A00
      65000453697A650109BFED84B00A5300740079006C006500055374796C6507BF
      ED84B00C6600730042006F006C006400066673426F6C64BFED84B00000BFED84
      B00000BFED84B01646006F006E0074004A007500730074006900660079000B46
      6F6E744A75737469667900BFED84B00C70006A004C0065006600740006706A4C
      656674BFED84B0084C00650066007400044C65667405004035F1AC6824880140
      BFED84B0085400650078007400045465787406BFED84B0064E0046004500034E
      4645BFED84B00654006F00700003546F70050038D069039D36B0FE3FBFED84B0
      0A570069006400740068000557696474680500E069039D36D0A9FD3FBFED84B0
      00000000BFED84B0125400520061007600650054006500780074000954526176
      6554657874BFED84B00A5400650078007400350005546578743508BFED84B008
      46006F006E00740004466F6E7408BFED84B00E43006800610072007300650074
      0007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F72
      0100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072006900
      61006C0005417269616CBFED84B008530069007A0065000453697A650109BFED
      84B00A5300740079006C006500055374796C6507BFED84B00C6600730042006F
      006C006400066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F
      006E0074004A007500730074006900660079000B466F6E744A75737469667900
      BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C0065
      0066007400044C656674050080563412F0CD9B0140BFED84B008540065007800
      7400045465787406BFED84B00E45006D00690073007300E3006F0007456D6973
      73E36FBFED84B00654006F00700003546F70050038D069039D36B0FE3FBFED84
      B00A57006900640074006800055769647468050000D7A3703D0A97FE3FBFED84
      B000000000BFED84B01254005200610076006500540065007800740009545261
      766554657874BFED84B00A5400650078007400360005546578743608BFED84B0
      0846006F006E00740004466F6E7408BFED84B00E430068006100720073006500
      740007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F
      720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069
      0061006C0005417269616CBFED84B008530069007A0065000453697A650109BF
      ED84B00A5300740079006C006500055374796C6507BFED84B00C660073004200
      6F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84B0164600
      6F006E0074004A007500730074006900660079000B466F6E744A757374696679
      00BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00
      650066007400044C6566740500A8F4499FF449B70140BFED84B0085400650078
      007400045465787406BFED84B00E45006E007400720061006400610007456E74
      72616461BFED84B00654006F00700003546F70050038D069039D36B0FE3FBFED
      84B00A570069006400740068000557696474680500408FC2F5285C8FFE3FBFED
      84B000000000BFED84B012540052006100760065005400650078007400095452
      61766554657874BFED84B00A5400650078007400370005546578743708BFED84
      B00846006F006E00740004466F6E7408BFED84B00E4300680061007200730065
      00740007436861727365740101BFED84B00A43006F006C006F00720005436F6C
      6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41007200
      690061006C0005417269616CBFED84B008530069007A0065000453697A65010B
      BFED84B00A5300740079006C006500055374796C6507BFED84B00C6600730042
      006F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84B01646
      006F006E0074004A007500730074006900660079000B466F6E744A7573746966
      7900BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C
      00650066007400044C65667405001851D961EA72930040BFED84B00854006500
      78007400045465787406BFED84B05043006F006E006600690072006D00610072
      0020006F00200058004D004C0020006400610028006100730029002000730065
      006700750069006E0074006500280065007300290020004E0046002D00650028
      436F6E6669726D6172206F20584D4C206461286173292073656775696E746528
      657329204E462D65BFED84B00654006F00700003546F700500B0AAAAAAAAAAAA
      FD3FBFED84B00A57006900640074006800055769647468050028C7711CC771DC
      0040BFED84B000000000BFED84B01A5400520061007600650044006100740061
      0054006500780074000D54526176654461746154657874BFED84B01244006100
      74006100540065007800740036000944617461546578743608BFED84B0084600
      6F006E00740004466F6E7408BFED84B00E430068006100720073006500740007
      436861727365740101BFED84B00A43006F006C006F00720005436F6C6F720100
      BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069006100
      6C0005417269616CBFED84B008530069007A0065000453697A650108BFED84B0
      0A5300740079006C006500055374796C6507BFED84B00000BFED84B00000BFED
      84B01646006F006E0074004A007500730074006900660079000B466F6E744A75
      737469667900BFED84B00C70006A004C0065006600740006706A4C656674BFED
      84B0084C00650066007400044C6566740500B0269E158D04FCFC3FBFED84B008
      5400650078007400045465787406BFED84B0205200650070006F00720074002E
      004400610074006500530068006F0072007400105265706F72742E4461746553
      686F7274BFED84B00654006F00700003546F700500A0DB1F64A8ECF0FD3FBFED
      84B00A570069006400740068000557696474680500706666666666A6FF3FBFED
      84B01244006100740061004600690065006C00640009446174614669656C6406
      BFED84B0205200650070006F00720074002E004400610074006500530068006F
      0072007400105265706F72742E4461746553686F7274BFED84B000000000BFED
      84B01A54005200610076006500440061007400610054006500780074000D5452
      6176654461746154657874BFED84B01244006100740061005400650078007400
      37000944617461546578743708BFED84B00846006F006E00740004466F6E7408
      BFED84B00E430068006100720073006500740007436861727365740101BFED84
      B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D0065
      00044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B0
      08530069007A0065000453697A650108BFED84B00A5300740079006C00650005
      5374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A
      007500730074006900660079000B466F6E744A75737469667900BFED84B00C70
      006A004C0065006600740006706A4C656674BFED84B0084C0065006600740004
      4C6566740500E0388EE3388ED30140BFED84B008540065007800740004546578
      7406BFED84B0505200650070006F00720074002E00430075007200720065006E
      00740050006100670065002B0027002F0027002B005200650070006F00720074
      002E0054006F00740061006C0050006100670065007300285265706F72742E43
      757272656E74506167652B272F272B5265706F72742E546F74616C5061676573
      BFED84B00654006F00700003546F700500D869039D36D0E9FD3FBFED84B00A57
      006900640074006800055769647468050000000000000080FF3FBFED84B01244
      006100740061004600690065006C00640009446174614669656C6406BFED84B0
      505200650070006F00720074002E00430075007200720065006E007400500061
      00670065002B0027002F0027002B005200650070006F00720074002E0054006F
      00740061006C0050006100670065007300285265706F72742E43757272656E74
      506167652B272F272B5265706F72742E546F74616C5061676573BFED84B00000
      00}
  end
  object SysValidaXml: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.MarginBottom = 1.000000000000000000
    SystemPrinter.MarginLeft = 1.000000000000000000
    SystemPrinter.MarginRight = 1.000000000000000000
    SystemPrinter.MarginTop = 1.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 560
    Top = 408
  end
  object RvConsE440Nfc: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ConsE440Nfc
    Left = 560
    Top = 456
  end
  object CadUsu_TRhAdtFun: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMCAD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMADT'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SEQADT'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TRHADTFUN.* FROM USU_TRHADTFUN WHERE'
      
        '                                                USU_TRHADTFUN.US' +
        'U_NUMCAD = :NUMCAD AND'
      
        '                                                USU_TRHADTFUN.US' +
        'U_NUMADT = :NUMADT AND'
      
        '                                                USU_TRHADTFUN.US' +
        'U_SEQADT = :SEQADT    ')
    Left = 280
    Top = 560
    object CadUsu_TRhAdtFunUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object CadUsu_TRhAdtFunUSU_NUMADT: TIntegerField
      FieldName = 'USU_NUMADT'
    end
    object CadUsu_TRhAdtFunUSU_DATADT: TDateTimeField
      FieldName = 'USU_DATADT'
    end
    object CadUsu_TRhAdtFunUSU_VLRADT: TBCDField
      FieldName = 'USU_VLRADT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object CadUsu_TRhAdtFunUSU_VLRPAR: TBCDField
      FieldName = 'USU_VLRPAR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object CadUsu_TRhAdtFunUSU_VLRPGT: TBCDField
      FieldName = 'USU_VLRPGT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object CadUsu_TRhAdtFunUSU_VLRABE: TBCDField
      FieldName = 'USU_VLRABE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object CadUsu_TRhAdtFunUSU_DATVCT: TDateTimeField
      FieldName = 'USU_DATVCT'
    end
    object CadUsu_TRhAdtFunUSU_SITADT: TStringField
      FieldName = 'USU_SITADT'
      Size = 1
    end
    object CadUsu_TRhAdtFunUSU_DSCFLA: TStringField
      FieldName = 'USU_DSCFLA'
      Size = 1
    end
    object CadUsu_TRhAdtFunUSU_DATMOV: TDateTimeField
      FieldName = 'USU_DATMOV'
    end
    object CadUsu_TRhAdtFunUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
    object CadUsu_TRhAdtFunUSU_SEQADT: TIntegerField
      FieldName = 'USU_SEQADT'
    end
    object CadUsu_TRhAdtFunUSU_VLRDSC: TBCDField
      FieldName = 'USU_VLRDSC'
      Precision = 11
      Size = 2
    end
  end
  object CadUsu_TRhAdtPgt: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numcad'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numadt'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqadt'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqpgt'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_trhadtpgt.* from usu_trhadtpgt'
      '                       where'
      '                       usu_trhadtpgt.usu_numcad = :numcad and'
      '                       usu_trhadtpgt.usu_numadt = :numadt and'
      '                       usu_trhadtpgt.usu_seqadt = :seqadt and'
      '                       usu_trhadtpgt.usu_seqpgt = :seqpgt')
    Left = 384
    Top = 560
    object CadUsu_TRhAdtPgtUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object CadUsu_TRhAdtPgtUSU_NUMADT: TIntegerField
      FieldName = 'USU_NUMADT'
    end
    object CadUsu_TRhAdtPgtUSU_SEQADT: TIntegerField
      FieldName = 'USU_SEQADT'
    end
    object CadUsu_TRhAdtPgtUSU_DATPGT: TDateTimeField
      FieldName = 'USU_DATPGT'
    end
    object CadUsu_TRhAdtPgtUSU_VLRPGT: TBCDField
      FieldName = 'USU_VLRPGT'
      Precision = 11
      Size = 2
    end
    object CadUsu_TRhAdtPgtUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object CadUsu_TRhAdtPgtUSU_SEQPGT: TIntegerField
      FieldName = 'USU_SEQPGT'
    end
  end
  object ConsCoresPorProduto: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'COR01'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'COR02'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'CODAGP'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'QTDMIN'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT USU_T120IPD.USU_CODPRO,E075PRO.DESPRO,USU_T120IPD.USU_COR' +
        '001,'
      
        '       USU_T120IPD.USU_COR002,SUM(USU_T120IPD.USU_QTDABE) AS QTD' +
        'COR FROM USU_T120IPD'
      
        'INNER JOIN E120IPD ON E120IPD.CODEMP = USU_T120IPD.USU_CODEMP AN' +
        'D'
      
        '                      E120IPD.CODFIL = USU_T120IPD.USU_CODFIL AN' +
        'D'
      
        '                      E120IPD.NUMPED = USU_T120IPD.USU_NUMPED AN' +
        'D'
      '                      E120IPD.SEQIPD = USU_T120IPD.USU_SEQIPD'
      'INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND'
      '                      E120PED.CODFIL = E120IPD.CODFIL AND'
      '                      E120PED.NUMPED = E120IPD.NUMPED'
      'INNER JOIN E075PRO ON E075PRO.CODEMP = E120PED.CODEMP AND'
      '                      E075PRO.CODPRO = E120IPD.CODPRO'
      
        '                     WHERE ((USU_T120IPD.USU_COr001 = :COR01) or' +
        ' (USU_T120IPD.USU_COr002 = :COR02) )AND'
      '                           E120IPD.CODPRO = :CODPRO AND'
      '                           E120IPD.SITIPD IN (1,4) AND'
      
        '                           E120IPD.TNSPRO IN ('#39'90100'#39','#39'90106'#39') A' +
        'ND'
      
        '                           E120PED.DATEMI BETWEEN :DATINI AND :D' +
        'ATFIM AND'
      '                           E075PRO.CODAGP = :CODAGP'
      
        '                     GROUP BY USU_T120IPD.USU_CODPRO,E075PRO.DES' +
        'PRO,USU_T120IPD.USU_COR001,USU_T120IPD.USU_COR002'
      
        '                     HAVING SUM(USU_T120IPD.USU_QTDABE) >= :QTDM' +
        'IN'
      '                     ORDER BY QTDCOR DESC')
    Left = 568
    Top = 552
    object ConsCoresPorProdutoUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsCoresPorProdutoDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsCoresPorProdutoUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ConsCoresPorProdutoUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ConsCoresPorProdutoQTDCOR: TFMTBCDField
      FieldName = 'QTDCOR'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object RvCoresProProduto: TRvProject
    Engine = RvSysCoresPorProduto
    ProjectFile = 
      'C:\DelphiSapiens\SapiensDelphi\RelatoriosRave\RelacaoCoresPorPro' +
      'dutos.rav'
    Left = 680
    Top = 552
    RaveBlobNew = {
      473D00001301123E97FDE3405241561A803801000000BFED84B00E5200650070
      006F00720074003100075265706F72743100BFED84B026540052006100760065
      00500072006F006A006500630074004D0061006E006100670065007200135452
      61766550726F6A6563744D616E61676572BFED84B01652006100760065005000
      72006F006A006500630074000B5261766550726F6A65637408BFED84B01A4300
      6F006D00700069006C0065004E00650065006400650064000D436F6D70696C65
      4E656564656400BFED84B00A460061006C00730065000546616C7365BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B016
      5200610076006500500072006F006A006500630074000B5261766550726F6A65
      6374BFED84B014430061007400650067006F0072006900650073000A43617465
      676F7269657308BFED84B00000BFED84B01450006100720061006D0065007400
      6500720073000A506172616D657465727308BFED84B00000BFED84B00C500049
      0056006100720073000650495661727308BFED84B00000BFED84B01655006E00
      69007400730046006100630074006F0072000B556E697473466163746F720500
      90C2F5285C8FA20040BFED84B000000006BFED84B02A4400760043006F006E00
      730043006F0072006500730050006F007200500072006F006400750074006F00
      154476436F6E73436F726573506F7250726F6475746FBFED84B01A5400520061
      0076006500440061007400610056006900650077000D54526176654461746156
      696577008207000000BFED84B01A540052006100760065004400610074006100
      56006900650077000D54526176654461746156696577BFED84B02A4400760043
      006F006E00730043006F0072006500730050006F007200500072006F00640075
      0074006F00154476436F6E73436F726573506F7250726F6475746F08BFED84B0
      1A43006F006D00700069006C0065004E00650065006400650064000D436F6D70
      696C654E656564656400BFED84B00A460061006C00730065000546616C7365BF
      ED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED
      84B02A4400760043006F006E00730043006F0072006500730050006F00720050
      0072006F006400750074006F00154476436F6E73436F726573506F7250726F64
      75746FBFED84B01C43006F006E006E0065006300740069006F006E004E006100
      6D0065000E436F6E6E656374696F6E4E616D6506BFED84B02A5200760043006F
      006E00730043006F0072006500730050006F007200500072006F006400750074
      006F00155276436F6E73436F726573506F7250726F6475746FBFED84B0000005
      00BFED84B0205400520061007600650053007400720069006E00670046006900
      65006C006400105452617665537472696E674669656C64BFED84B03E44007600
      43006F006E00730043006F0072006500730050006F007200500072006F006400
      750074006F005500530055005F0043004F004400500052004F001F4476436F6E
      73436F726573506F7250726F6475746F5553555F434F4450524F08BFED84B012
      4600690065006C0064004E0061006D006500094669656C644E616D6506BFED84
      B0145500530055005F0043004F004400500052004F000A5553555F434F445052
      4FBFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B0145500530055005F0043004F004400500052004F000A5553555F434F
      4450524FBFED84B008530069007A0065000453697A65010FBFED84B000000000
      BFED84B0205400520061007600650053007400720069006E0067004600690065
      006C006400105452617665537472696E674669656C64BFED84B0364400760043
      006F006E00730043006F0072006500730050006F007200500072006F00640075
      0074006F00440045005300500052004F001B4476436F6E73436F726573506F72
      50726F6475746F44455350524F08BFED84B0124600690065006C0064004E0061
      006D006500094669656C644E616D6506BFED84B00C440045005300500052004F
      000644455350524FBFED84B010460075006C006C004E0061006D006500084675
      6C6C4E616D6506BFED84B00C440045005300500052004F000644455350524FBF
      ED84B008530069007A0065000453697A650165BFED84B000000000BFED84B020
      5400520061007600650053007400720069006E0067004600690065006C006400
      105452617665537472696E674669656C64BFED84B03E4400760043006F006E00
      730043006F0072006500730050006F007200500072006F006400750074006F00
      5500530055005F0043004F0052003000300031001F4476436F6E73436F726573
      506F7250726F6475746F5553555F434F5230303108BFED84B012460069006500
      6C0064004E0061006D006500094669656C644E616D6506BFED84B01455005300
      55005F0043004F0052003000300031000A5553555F434F52303031BFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B01455
      00530055005F0043004F0052003000300031000A5553555F434F52303031BFED
      84B008530069007A0065000453697A65010FBFED84B000000000BFED84B02054
      00520061007600650053007400720069006E0067004600690065006C00640010
      5452617665537472696E674669656C64BFED84B03E4400760043006F006E0073
      0043006F0072006500730050006F007200500072006F006400750074006F0055
      00530055005F0043004F0052003000300032001F4476436F6E73436F72657350
      6F7250726F6475746F5553555F434F5230303208BFED84B0124600690065006C
      0064004E0061006D006500094669656C644E616D6506BFED84B0145500530055
      005F0043004F0052003000300032000A5553555F434F52303032BFED84B01046
      0075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B0145500
      530055005F0043004F0052003000300032000A5553555F434F52303032BFED84
      B008530069007A0065000453697A65010FBFED84B000000000BFED84B01A5400
      52006100760065004200430044004600690065006C0064000D54526176654243
      444669656C64BFED84B0364400760043006F006E00730043006F007200650073
      0050006F007200500072006F006400750074006F0051005400440043004F0052
      001B4476436F6E73436F726573506F7250726F6475746F515444434F5208BFED
      84B0124600690065006C0064004E0061006D006500094669656C644E616D6506
      BFED84B00C51005400440043004F00520006515444434F52BFED84B010460075
      006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C51005400
      440043004F00520006515444434F52BFED84B008530069007A0065000453697A
      650122BFED84B000000004BFED84B00E5200650070006F007200740031000752
      65706F7274310068330000BFED84B00A50006100670065003100055061676531
      0100BFED84B00A5000610067006500310005506167653101BFED84B00A500061
      0067006500310005506167653100BFED84B01654005200610076006500520065
      0070006F00720074000B54526176655265706F7274BFED84B00E520065007000
      6F00720074003100075265706F72743108BFED84B01A43006F006D0070006900
      6C0065004E00650065006400650064000D436F6D70696C654E656564656400BF
      ED84B00A460061006C00730065000546616C7365BFED84B010460075006C006C
      004E0061006D0065000846756C6C4E616D6506BFED84B00E5200650070006F00
      720074003100075265706F727431BFED84B01246006900720073007400500061
      00670065000946697273745061676500BFED84B01A5200650070006F00720074
      0031002E00500061006700650031000D5265706F7274312E5061676531BFED84
      B01450006100720061006D00650074006500720073000A506172616D65746572
      7308BFED84B00000BFED84B00C50004900560061007200730006504956617273
      08BFED84B00000BFED84B000000000C031000000BFED84B01254005200610076
      006500500061006700650009545261766550616765BFED84B00A500061006700
      6500310005506167653108BFED84B01A43006F006D00700069006C0065004E00
      650065006400650064000D436F6D70696C654E656564656400BFED84B00A4600
      61006C00730065000546616C7365BFED84B010460075006C006C004E0061006D
      0065000846756C6C4E616D6506BFED84B00A5000610067006500310005506167
      6531BFED84B006420069006E000342696E0201BFED84B0124700720069006400
      4C0069006E006500730009477269644C696E65730106BFED84B0164700720069
      006400530070006100630069006E0067000B4772696453706163696E67050050
      28140A8542A1FA3FBFED84B0164F007200690065006E0074006100740069006F
      006E000B4F7269656E746174696F6E00BFED84B01270006F0044006500660061
      0075006C00740009706F44656661756C74BFED84B01250006100700065007200
      530069007A00650009506170657253697A650109BFED84B01450006100720061
      006D00650074006500720073000A506172616D657465727308BFED84B00E5300
      7400720069006E006700730007537472696E677312010606444154494E490606
      44415446494D00BFED84B00000BFED84B00C5000490056006100720073000650
      495661727308BFED84B00000BFED84B000000C00BFED84B01654005200610076
      00650052006500670069006F006E000B5452617665526567696F6EBFED84B00E
      52006500670069006F006E00310007526567696F6E3108BFED84B00C48006500
      6900670068007400064865696768740500706666666666A60240BFED84B0084C
      00650066007400044C656674050080AAAAAAAAAAAAFA3FBFED84B00654006F00
      700003546F700500E0388EE3388E93FF3FBFED84B00A57006900640074006800
      0557696474680500A0158D047CF3820240BFED84B01A43006F006C0075006D00
      6E00530070006100630069006E0067000D436F6C756D6E53706163696E670500
      000000000000000000BFED84B000000200BFED84B01A54005200610076006500
      4400610074006100420061006E0064000D54526176654461746142616E64BFED
      84B00E44006500740061006C006800650007446574616C686508BFED84B00C41
      006E00630068006F00720006416E63686F720103BFED84B012420061006E0064
      005300740079006C0065000942616E645374796C6508BFED84B0105000720069
      006E0074004C006F006300085072696E744C6F6307BFED84B01070006C004400
      65007400610069006C0008706C44657461696CBFED84B00000BFED84B00000BF
      ED84B00C480065006900670068007400064865696768740500D0CCCCCCCCCCCC
      FC3FBFED84B01A4D0069006E004800650069006700680074004C006500660074
      000D4D696E4865696768744C6566740500000000000000000000BFED84B01A50
      006F0073006900740069006F006E00560061006C00750065000D506F73697469
      6F6E56616C75650500000000000000000000BFED84B01A43006F006C0075006D
      006E00530070006100630069006E0067000D436F6C756D6E53706163696E6705
      00000000000000000000BFED84B0104400610074006100560069006500770008
      446174615669657700BFED84B02A4400760043006F006E00730043006F007200
      6500730050006F007200500072006F006400750074006F00154476436F6E7343
      6F726573506F7250726F6475746FBFED84B000000500BFED84B01A5400520061
      0076006500440061007400610054006500780074000D54526176654461746154
      657874BFED84B012440061007400610054006500780074003100094461746154
      6578743108BFED84B00846006F006E00740004466F6E7408BFED84B00E430068
      006100720073006500740007436861727365740101BFED84B00A43006F006C00
      6F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BF
      ED84B00A41007200690061006C0005417269616CBFED84B008530069007A0065
      000453697A650108BFED84B00A5300740079006C006500055374796C6507BFED
      84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300740069
      00660079000B466F6E744A75737469667900BFED84B00C70006A004C00650066
      00740006706A4C656674BFED84B0084C00650066007400044C6566740500A81D
      A62EB73FC8FC3FBFED84B0085400650078007400045465787406BFED84B01455
      00530055005F0043004F004400500052004F000A5553555F434F4450524FBFED
      84B00654006F00700003546F70050008814E1BE8B481FA3FBFED84B00A570069
      006400740068000557696474680500D0A3703D0AD7A3FF3FBFED84B012440061
      00740061004600690065006C00640009446174614669656C6406BFED84B01455
      00530055005F0043004F004400500052004F000A5553555F434F4450524FBFED
      84B0104400610074006100560069006500770008446174615669657700BFED84
      B02A4400760043006F006E00730043006F0072006500730050006F0072005000
      72006F006400750074006F00154476436F6E73436F726573506F7250726F6475
      746FBFED84B000000000BFED84B01A5400520061007600650044006100740061
      0054006500780074000D54526176654461746154657874BFED84B01244006100
      74006100540065007800740032000944617461546578743208BFED84B0084600
      6F006E00740004466F6E7408BFED84B00E430068006100720073006500740007
      436861727365740101BFED84B00A43006F006C006F00720005436F6C6F720100
      BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069006100
      6C0005417269616CBFED84B008530069007A0065000453697A650108BFED84B0
      0A5300740079006C006500055374796C6507BFED84B00000BFED84B00000BFED
      84B01646006F006E0074004A007500730074006900660079000B466F6E744A75
      737469667900BFED84B00C70006A004C0065006600740006706A4C656674BFED
      84B0084C00650066007400044C65667405006898BADCFE20C3FF3FBFED84B008
      5400650078007400045465787406BFED84B00C440045005300500052004F0006
      44455350524FBFED84B00654006F00700003546F70050008814E1BE8B481FA3F
      BFED84B00A570069006400740068000557696474680500E0CC32E6BF2CA30040
      BFED84B01244006100740061004600690065006C00640009446174614669656C
      6406BFED84B00C440045005300500052004F000644455350524FBFED84B01044
      00610074006100560069006500770008446174615669657700BFED84B02A4400
      760043006F006E00730043006F0072006500730050006F007200500072006F00
      6400750074006F00154476436F6E73436F726573506F7250726F6475746FBFED
      84B000000000BFED84B01A540052006100760065004400610074006100540065
      00780074000D54526176654461746154657874BFED84B0124400610074006100
      540065007800740033000944617461546578743308BFED84B00846006F006E00
      740004466F6E7408BFED84B00E43006800610072007300650074000743686172
      7365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0
      084E0061006D006500044E616D6506BFED84B00A41007200690061006C000541
      7269616CBFED84B008530069007A0065000453697A650108BFED84B00A530074
      0079006C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646
      006F006E0074004A007500730074006900660079000B466F6E744A7573746966
      7900BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C
      00650066007400044C6566740500801A09F8E6D5840140BFED84B00854006500
      78007400045465787406BFED84B0145500530055005F0043004F005200300030
      0031000A5553555F434F52303031BFED84B00654006F00700003546F70050008
      814E1BE8B481FA3FBFED84B00A570069006400740068000557696474680500F0
      AD47E17A14EEFE3FBFED84B01244006100740061004600690065006C00640009
      446174614669656C6406BFED84B0145500530055005F0043004F005200300030
      0031000A5553555F434F52303031BFED84B01044006100740061005600690065
      00770008446174615669657700BFED84B02A4400760043006F006E0073004300
      6F0072006500730050006F007200500072006F006400750074006F0015447643
      6F6E73436F726573506F7250726F6475746FBFED84B000000000BFED84B01A54
      005200610076006500440061007400610054006500780074000D545261766544
      61746154657874BFED84B0124400610074006100540065007800740034000944
      617461546578743408BFED84B00846006F006E00740004466F6E7408BFED84B0
      0E430068006100720073006500740007436861727365740101BFED84B00A4300
      6F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E61
      6D6506BFED84B00A41007200690061006C0005417269616CBFED84B008530069
      007A0065000453697A650108BFED84B00A5300740079006C006500055374796C
      6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073
      0074006900660079000B466F6E744A75737469667900BFED84B00C70006A004C
      0065006600740006706A4C656674BFED84B0084C00650066007400044C656674
      0500D8C7711CC771A40140BFED84B0085400650078007400045465787406BFED
      84B0145500530055005F0043004F0052003000300032000A5553555F434F5230
      3032BFED84B00654006F00700003546F70050008814E1BE8B481FA3FBFED84B0
      0A570069006400740068000557696474680500103333333333F3FE3FBFED84B0
      1244006100740061004600690065006C00640009446174614669656C6406BFED
      84B0145500530055005F0043004F0052003000300032000A5553555F434F5230
      3032BFED84B01044006100740061005600690065007700084461746156696577
      00BFED84B02A4400760043006F006E00730043006F0072006500730050006F00
      7200500072006F006400750074006F00154476436F6E73436F726573506F7250
      726F6475746FBFED84B000000000BFED84B01A54005200610076006500440061
      007400610054006500780074000D54526176654461746154657874BFED84B012
      4400610074006100540065007800740035000944617461546578743508BFED84
      B00846006F006E00740004466F6E7408BFED84B00E4300680061007200730065
      00740007436861727365740101BFED84B00A43006F006C006F00720005436F6C
      6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41007200
      690061006C0005417269616CBFED84B008530069007A0065000453697A650108
      BFED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B0
      0000BFED84B01646006F006E0074004A007500730074006900660079000B466F
      6E744A75737469667900BFED84B00C70006A004C0065006600740006706A4C65
      6674BFED84B0084C00650066007400044C6566740500A86F5E4D3C2BCA0140BF
      ED84B0085400650078007400045465787406BFED84B00C51005400440043004F
      00520006515444434F52BFED84B00654006F00700003546F70050008814E1BE8
      B481FA3FBFED84B00A57006900640074006800055769647468050040EA30D4A5
      0E83FF3FBFED84B01244006100740061004600690065006C0064000944617461
      4669656C6406BFED84B00C51005400440043004F00520006515444434F52BFED
      84B0104400610074006100560069006500770008446174615669657700BFED84
      B02A4400760043006F006E00730043006F0072006500730050006F0072005000
      72006F006400750074006F00154476436F6E73436F726573506F7250726F6475
      746FBFED84B000000000BFED84B01254005200610076006500420061006E0064
      0009545261766542616E64BFED84B01053007500620054006F00740061006C00
      08537562546F74616C08BFED84B00C41006E00630068006F00720006416E6368
      6F720103BFED84B012420061006E0064005300740079006C0065000942616E64
      5374796C6508BFED84B0105000720069006E0074004C006F006300085072696E
      744C6F6307BFED84B01A70006C00470072006F007500700046006F006F007400
      650072000D706C47726F7570466F6F746572BFED84B00000BFED84B00000BFED
      84B00C480065006900670068007400064865696768740500D0CCCCCCCCCCCCFC
      3FBFED84B01A4D0069006E004800650069006700680074004C00650066007400
      0D4D696E4865696768744C6566740500000000000000000000BFED84B01A5000
      6F0073006900740069006F006E00560061006C00750065000D506F736974696F
      6E56616C75650500000000000000000000BFED84B000000200BFED84B01A5400
      5200610076006500430061006C00630054006500780074000D54526176654361
      6C6354657874BFED84B012430061006C00630054006500780074003100094361
      6C63546578743108BFED84B00846006F006E00740004466F6E7408BFED84B00E
      430068006100720073006500740007436861727365740101BFED84B00A43006F
      006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D
      6506BFED84B00A41007200690061006C0005417269616CBFED84B00853006900
      7A0065000453697A650108BFED84B00A5300740079006C006500055374796C65
      07BFED84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300
      74006900660079000B466F6E744A75737469667900BFED84B00C70006A004C00
      65006600740006706A4C656674BFED84B0084C00650066007400044C65667405
      0040A62EB73FC8C80140BFED84B0085400650078007400045465787406BFED84
      B016530075006D00280051005400440043004F00520029000B53756D28515444
      434F5229BFED84B00654006F00700003546F700500803EE9933EE993FA3FBFED
      84B00A57006900640074006800055769647468050000000000000080FF3FBFED
      84B01443006F006E00740072006F006C006C00650072000A436F6E74726F6C6C
      657200BFED84B00E44006500740061006C006800650007446574616C6865BFED
      84B0104400610074006100560069006500770008446174615669657700BFED84
      B02A4400760043006F006E00730043006F0072006500730050006F0072005000
      72006F006400750074006F00154476436F6E73436F726573506F7250726F6475
      746FBFED84B01244006100740061004600690065006C00640009446174614669
      656C6406BFED84B00C51005400440043004F00520006515444434F52BFED84B0
      00000000BFED84B0125400520061007600650054006500780074000954526176
      6554657874BFED84B00A5400650078007400380005546578743808BFED84B008
      46006F006E00740004466F6E7408BFED84B00E43006800610072007300650074
      0007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F72
      0100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072006900
      61006C0005417269616CBFED84B008530069007A0065000453697A650108BFED
      84B00A5300740079006C006500055374796C6507BFED84B00C6600730042006F
      006C006400066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F
      006E0074004A007500730074006900660079000B466F6E744A75737469667900
      BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C0065
      0066007400044C6566740500A08888888888B80140BFED84B008540065007800
      7400045465787406BFED84B00A54004F00540041004C0005544F54414CBFED84
      B00654006F00700003546F700500B0388EE3388EE3F93FBFED84B00A57006900
      6400740068000557696474680500E01011111111D1FD3FBFED84B000000000BF
      ED84B01254005200610076006500540065007800740009545261766554657874
      BFED84B00A5400650078007400310005546578743108BFED84B00846006F006E
      00740004466F6E7408BFED84B00E430068006100720073006500740007436861
      727365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84
      B0084E0061006D006500044E616D6506BFED84B00A41007200690061006C0005
      417269616CBFED84B008530069007A0065000453697A650106BFED84B00A5300
      740079006C006500055374796C6507BFED84B00000BFED84B00000BFED84B016
      46006F006E0074004A007500730074006900660079000B466F6E744A75737469
      667900BFED84B00C70006A004C0065006600740006706A4C656674BFED84B008
      4C00650066007400044C656674050000398EE3388EE3FA3FBFED84B008540065
      0078007400045465787406BFED84B081865F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F
      005F005F005F005F005F005F005F005F005F005F005F0080C35F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5FBFED84B0
      0654006F00700003546F700500701CC7711CC781FF3FBFED84B00A5700690064
      0074006800055769647468050020C7711CC771820240BFED84B000000000BFED
      84B01254005200610076006500540065007800740009545261766554657874BF
      ED84B00A5400650078007400320005546578743208BFED84B00846006F006E00
      740004466F6E7408BFED84B00E43006800610072007300650074000743686172
      7365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0
      084E0061006D006500044E616D6506BFED84B00A41007200690061006C000541
      7269616CBFED84B008530069007A0065000453697A650106BFED84B00A530074
      0079006C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646
      006F006E0074004A007500730074006900660079000B466F6E744A7573746966
      7900BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C
      00650066007400044C656674050090E3388EE3388EFB3FBFED84B00854006500
      78007400045465787406BFED84B081845F005F005F005F005F005F005F005F00
      5F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F00
      5F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F00
      5F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F00
      5F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F00
      5F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F00
      5F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F00
      5F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F00
      5F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F00
      5F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F00
      5F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F00
      5F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F00
      5F005F005F005F005F005F005F005F005F005F0080C25F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5FBFED84B00654006F
      00700003546F700500B0AAAAAAAAAACAFE3FBFED84B00A570069006400740068
      00055769647468050090E3388EE338820240BFED84B000000000BFED84B01254
      005200610076006500540065007800740009545261766554657874BFED84B00A
      5400650078007400330005546578743308BFED84B00846006F006E0074000446
      6F6E7408BFED84B00E4300680061007200730065007400074368617273657401
      01BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061
      006D006500044E616D6506BFED84B00A41007200690061006C0005417269616C
      BFED84B008530069007A0065000453697A650108BFED84B00A5300740079006C
      006500055374796C6507BFED84B00C6600730042006F006C006400066673426F
      6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073
      0074006900660079000B466F6E744A75737469667900BFED84B00C70006A004C
      0065006600740006706A4C656674BFED84B0084C00650066007400044C656674
      0500A0B2C3D4E5F687FD3FBFED84B0085400650078007400045465787406BFED
      84B00E500052004F004400550054004F000750524F4455544FBFED84B0065400
      6F00700003546F70050078B9FD4186CAEEFE3FBFED84B00A5700690064007400
      68000557696474680500A047E17A14AEC7FE3FBFED84B000000000BFED84B012
      54005200610076006500540065007800740009545261766554657874BFED84B0
      0A5400650078007400340005546578743408BFED84B00846006F006E00740004
      466F6E7408BFED84B00E43006800610072007300650074000743686172736574
      0101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E00
      61006D006500044E616D6506BFED84B00A41007200690061006C000541726961
      6CBFED84B008530069007A0065000453697A650108BFED84B00A530074007900
      6C006500055374796C6507BFED84B00C6600730042006F006C00640006667342
      6F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A007500
      730074006900660079000B466F6E744A75737469667900BFED84B00C70006A00
      4C0065006600740006706A4C656674BFED84B0084C00650066007400044C6566
      7405002064A8EC3075C9FF3FBFED84B0085400650078007400045465787406BF
      ED84B012440045005300430052004900C700C3004F0009444553435249C7C34F
      BFED84B00654006F00700003546F70050078B9FD4186CAEEFE3FBFED84B00A57
      0069006400740068000557696474680500C0711CC7711CE7FE3FBFED84B00000
      0000BFED84B01254005200610076006500540065007800740009545261766554
      657874BFED84B00A5400650078007400350005546578743508BFED84B0084600
      6F006E00740004466F6E7408BFED84B00E430068006100720073006500740007
      436861727365740101BFED84B00A43006F006C006F00720005436F6C6F720100
      BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069006100
      6C0005417269616CBFED84B008530069007A0065000453697A650108BFED84B0
      0A5300740079006C006500055374796C6507BFED84B00C6600730042006F006C
      006400066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E
      0074004A007500730074006900660079000B466F6E744A75737469667900BFED
      84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00650066
      007400044C656674050040BF58F28B25870140BFED84B0085400650078007400
      045465787406BFED84B00C43004F00520020003000310006434F52203031BFED
      84B00654006F00700003546F700500E8F607192A3BECFE3FBFED84B00A570069
      0064007400680005576964746805008025BF58F28BE5FE3FBFED84B000000000
      BFED84B012540052006100760065005400650078007400095452617665546578
      74BFED84B00A5400650078007400360005546578743608BFED84B00846006F00
      6E00740004466F6E7408BFED84B00E4300680061007200730065007400074368
      61727365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED
      84B0084E0061006D006500044E616D6506BFED84B00A41007200690061006C00
      05417269616CBFED84B008530069007A0065000453697A650108BFED84B00A53
      00740079006C006500055374796C6507BFED84B00C6600730042006F006C0064
      00066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074
      004A007500730074006900660079000B466F6E744A75737469667900BFED84B0
      0C70006A004C0065006600740006706A4C656674BFED84B0084C006500660074
      00044C656674050000F6285C8FC2A50140BFED84B00854006500780074000454
      65787406BFED84B00C43004F00520020003000320006434F52203032BFED84B0
      0654006F00700003546F700500E0F607192A3BECFE3FBFED84B00A5700690064
      00740068000557696474680500B0063A6DA0D386FE3FBFED84B000000000BFED
      84B01254005200610076006500540065007800740009545261766554657874BF
      ED84B00A5400650078007400370005546578743708BFED84B00846006F006E00
      740004466F6E7408BFED84B00E43006800610072007300650074000743686172
      7365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0
      084E0061006D006500044E616D6506BFED84B00A41007200690061006C000541
      7269616CBFED84B008530069007A0065000453697A650108BFED84B00A530074
      0079006C006500055374796C6507BFED84B00C6600730042006F006C00640006
      6673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A
      007500730074006900660079000B466F6E744A75737469667900BFED84B00C70
      006A004C0065006600740006706A4C656674BFED84B0084C0065006600740004
      4C656674050070436587A9CBC90140BFED84B008540065007800740004546578
      7406BFED84B00A51005400440045002E0005515444452EBFED84B00654006F00
      700003546F700500C82F96FC62C9EFFE3FBFED84B00A57006900640074006800
      05576964746805000012F0CDAB89E7FD3FBFED84B000000000BFED84B01A5400
      5200610076006500440061007400610054006500780074000D54526176654461
      746154657874BFED84B012440061007400610054006500780074003600094461
      7461546578743608BFED84B00846006F006E00740004466F6E7408BFED84B00E
      430068006100720073006500740007436861727365740101BFED84B00A43006F
      006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D
      6506BFED84B00A41007200690061006C0005417269616CBFED84B00853006900
      7A0065000453697A65010ABFED84B00A5300740079006C006500055374796C65
      07BFED84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300
      74006900660079000B466F6E744A75737469667900BFED84B00C70006A004C00
      65006600740006706A4C656674BFED84B0084C00650066007400044C65667405
      00A8AAAAAAAAAAEA0140BFED84B0085400650078007400045465787406BFED84
      B0505200650070006F00720074002E00430075007200720065006E0074005000
      6100670065002B0027002F0027002B005200650070006F00720074002E005400
      6F00740061006C0050006100670065007300285265706F72742E43757272656E
      74506167652B272F272B5265706F72742E546F74616C5061676573BFED84B006
      54006F00700003546F700500B0AAAAAAAAAAAAFE3FBFED84B00A570069006400
      74006800055769647468050000398EE3388EA3FE3FBFED84B012440061007400
      61004600690065006C00640009446174614669656C6406BFED84B05052006500
      70006F00720074002E00430075007200720065006E0074005000610067006500
      2B0027002F0027002B005200650070006F00720074002E0054006F0074006100
      6C0050006100670065007300285265706F72742E43757272656E74506167652B
      272F272B5265706F72742E546F74616C5061676573BFED84B000000000BFED84
      B01A54005200610076006500440061007400610054006500780074000D545261
      76654461746154657874BFED84B0124400610074006100540065007800740037
      000944617461546578743708BFED84B00846006F006E00740004466F6E7408BF
      ED84B00E430068006100720073006500740007436861727365740101BFED84B0
      0A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500
      044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B008
      530069007A0065000453697A65010ABFED84B00A5300740079006C0065000553
      74796C6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A00
      7500730074006900660079000B466F6E744A75737469667900BFED84B00C7000
      6A004C0065006600740006706A4C656674BFED84B0084C00650066007400044C
      6566740500F09B5713CF8A86FD3FBFED84B00854006500780074000454657874
      06BFED84B04C5200650070006F00720074002E00440061007400650053006800
      6F00720074002B0027002000200027002B005200650070006F00720074002E00
      540069006D006500530068006F0072007400265265706F72742E446174655368
      6F72742B272020272B5265706F72742E54696D6553686F7274BFED84B0065400
      6F00700003546F700500A8AAAAAAAAAAAAFE3FBFED84B00A5700690064007400
      6800055769647468050020C7711CC771CCFF3FBFED84B0124400610074006100
      4600690065006C00640009446174614669656C6406BFED84B04C520065007000
      6F00720074002E004400610074006500530068006F00720074002B0027002000
      200027002B005200650070006F00720074002E00540069006D00650053006800
      6F0072007400265265706F72742E4461746553686F72742B272020272B526570
      6F72742E54696D6553686F7274BFED84B000000000BFED84B012540052006100
      76006500540065007800740009545261766554657874BFED84B00A5400650078
      007400390005546578743908BFED84B00846006F006E00740004466F6E7408BF
      ED84B00E430068006100720073006500740007436861727365740101BFED84B0
      0A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500
      044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B008
      530069007A0065000453697A65010CBFED84B00A5300740079006C0065000553
      74796C6507BFED84B00C6600730042006F006C006400066673426F6C64BFED84
      B00000BFED84B00000BFED84B01646006F006E0074004A007500730074006900
      660079000B466F6E744A75737469667900BFED84B00C70006A004C0065006600
      740006706A4C656674BFED84B0084C00650066007400044C6566740500C0711C
      C7711CB70040BFED84B0085400650078007400045465787406BFED84B0365200
      65006C006100E700E3006F00200064006500200043006F007200650073002000
      78002000500072006F006400750074006F0073001B52656C61E7E36F20646520
      436F72657320782050726F6475746F73BFED84B00654006F00700003546F7005
      00701CC7711CC7F1FC3FBFED84B00A5700690064007400680005576964746805
      00B8AAAAAAAAAA9A0040BFED84B000000000BFED84B01A540052006100760065
      00440061007400610054006500780074000D54526176654461746154657874BF
      ED84B01244006100740061005400650078007400380009446174615465787438
      08BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800610072
      0073006500740007436861727365740101BFED84B00A43006F006C006F007200
      05436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A
      41007200690061006C0005417269616CBFED84B008530069007A006500045369
      7A65010ABFED84B00A5300740079006C006500055374796C6507BFED84B00000
      BFED84B00000BFED84B01646006F006E0074004A007500730074006900660079
      000B466F6E744A75737469667900BFED84B01070006A00430065006E00740065
      00720008706A43656E746572BFED84B0084C00650066007400044C6566740500
      58D069039D36980040BFED84B0085400650078007400045465787406BFED84B0
      582700500065007200ED006F0064006F003A00200027002B0050006100720061
      006D002E0044004100540049004E0049002B0027002000E000200027002B0050
      006100720061006D002E00440041005400460049004D0020002C27506572ED6F
      646F3A20272B506172616D2E444154494E492B2720E020272B506172616D2E44
      415446494D20BFED84B00654006F00700003546F700500E0388EE3388E83FE3F
      BFED84B00A570069006400740068000557696474680500F8FFFFFFFFFFCF0040
      BFED84B01244006100740061004600690065006C00640009446174614669656C
      6406BFED84B0582700500065007200ED006F0064006F003A00200027002B0050
      006100720061006D002E0044004100540049004E0049002B0027002000E00020
      0027002B0050006100720061006D002E00440041005400460049004D0020002C
      27506572ED6F646F3A20272B506172616D2E444154494E492B2720E020272B50
      6172616D2E44415446494D20BFED84B0000000}
  end
  object RvSysCoresPorProduto: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 680
    Top = 600
  end
  object RvConsCoresPorProduto: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ConsCoresPorProduto
    Left = 680
    Top = 648
  end
  object ClientRelacaoPesBox: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 816
    Top = 560
    Data = {
      A10000009619E0BD010000001800000005000000000003000000A1000643616D
      706F3101004900000001000557494454480200020064000643616D706F320100
      4900000001000557494454480200020064000643616D706F3301004900000001
      000557494454480200020064000643616D706F34010049000000010005574944
      54480200020064000643616D706F350100490000000100055749445448020002
      0064000000}
    object ClientRelacaoPesBoxCampo1: TStringField
      FieldName = 'Campo1'
      Size = 100
    end
    object ClientRelacaoPesBoxCampo2: TStringField
      FieldName = 'Campo2'
      Size = 100
    end
    object ClientRelacaoPesBoxCampo3: TStringField
      FieldName = 'Campo3'
      Size = 100
    end
    object ClientRelacaoPesBoxCampo4: TStringField
      FieldName = 'Campo4'
      Size = 100
    end
    object ClientRelacaoPesBoxCampo5: TStringField
      FieldName = 'Campo5'
      Size = 100
    end
  end
  object ClientEtiqPesBox: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 816
    Top = 616
    Data = {
      A10000009619E0BD010000001800000005000000000003000000A1000643616D
      706F3101004900000001000557494454480200020064000643616D706F320100
      4900000001000557494454480200020064000643616D706F3301004900000001
      000557494454480200020064000643616D706F34010049000000010005574944
      54480200020064000643616D706F350100490000000100055749445448020002
      0064000000}
    object ClientEtiqPesBoxCampo1: TStringField
      FieldName = 'Campo1'
      Size = 100
    end
    object ClientEtiqPesBoxCampo2: TStringField
      FieldName = 'Campo2'
      Size = 100
    end
    object ClientEtiqPesBoxCampo3: TStringField
      FieldName = 'Campo3'
      Size = 100
    end
    object ClientEtiqPesBoxCampo4: TStringField
      FieldName = 'Campo4'
      Size = 100
    end
    object ClientEtiqPesBoxCampo5: TStringField
      FieldName = 'Campo5'
      Size = 100
    end
  end
  object GraficoGeralRep: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT SUM(((E120IPD.QTDPED - E120IPD.QTDCAN)* E120IPD.PREUNI)) ' +
        'AS PEDIDOS,'
      '       E120PED.CODREP,E090REP.NOMREP,E090REP.APEREP FROM E120IPD'
      'INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND'
      '                      E120PED.CODFIL = E120IPD.CODFIL AND'
      '                      E120PED.NUMPED = E120IPD.NUMPED'
      'INNER JOIN E090REP ON E090REP.CODREP = E120PED.CODREP'
      '                      WHERE'
      
        '                      E120PED.DATEMI BETWEEN :DATINI AND :DATFIM' +
        ' AND'
      
        '                      E120IPD.TNSPRO IN ('#39'90100'#39','#39'90106'#39','#39'90150'#39 +
        ','#39'90156'#39')'
      
        '                      GROUP BY E120PED.CODREP,E090REP.NOMREP,E09' +
        '0REP.APEREP'
      '                      ORDER BY PEDIDOS DESC')
    Left = 744
    Top = 368
    object GraficoGeralRepPEDIDOS: TFMTBCDField
      FieldName = 'PEDIDOS'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object GraficoGeralRepCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object GraficoGeralRepNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object GraficoGeralRepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
  end
  object ProviderGraficoGeralRep: TDataSetProvider
    DataSet = GraficoGeralRep
    Left = 744
    Top = 416
  end
  object ClientGraficoGeralRep: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderGraficoGeralRep'
    ReadOnly = True
    Left = 744
    Top = 464
    object ClientGraficoGeralRepPEDIDOS: TFMTBCDField
      FieldName = 'PEDIDOS'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ClientGraficoGeralRepCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ClientGraficoGeralRepNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ClientGraficoGeralRepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
  end
  object GraficoMesalRep: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODREP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT SUM(((E120IPD.QTDPED - E120IPD.QTDCAN)* E120IPD.PREUNI)) ' +
        'AS PEDIDOS,'
      
        '       E120PED.CODREP,E090REP.NOMREP,E090REP.APEREP, CASE (EXTRA' +
        'CT(MONTH FROM E120PED.DATEMI))'
      
        '                                                     WHEN 1 THEN' +
        ' '#39'JAN'#39
      
        '                                                     WHEN 2 THEN' +
        ' '#39'FEV'#39
      
        '                                                     WHEN 3 THEN' +
        ' '#39'MAR'#39
      
        '                                                     WHEN 4 THEN' +
        ' '#39'ABR'#39
      
        '                                                     WHEN 5 THEN' +
        ' '#39'MAI'#39
      
        '                                                     WHEN 6 THEN' +
        ' '#39'JUN'#39
      
        '                                                     WHEN 7 THEN' +
        ' '#39'JUL'#39
      
        '                                                     WHEN 8 THEN' +
        ' '#39'AGO'#39
      
        '                                                     WHEN 9 THEN' +
        ' '#39'SET'#39
      
        '                                                     WHEN 10 THE' +
        'N '#39'OUT'#39
      
        '                                                     WHEN 11 THE' +
        'N '#39'NOV'#39
      
        '                                                     WHEN 12 THE' +
        'N '#39'DEZ'#39
      '                                                     ELSE '#39'-'#39
      '                                                     END'
      '                                                     AS MESEMI,'
      
        '                                                     (EXTRACT(MO' +
        'NTH FROM E120PED.DATEMI)) AS SEQMES'
      '       FROM E120IPD'
      'INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND'
      '                      E120PED.CODFIL = E120IPD.CODFIL AND'
      '                      E120PED.NUMPED = E120IPD.NUMPED'
      'INNER JOIN E090REP ON E090REP.CODREP = E120PED.CODREP'
      '                      WHERE'
      '                      E120PED.CODREP = :CODREP AND'
      
        '                      E120IPD.TNSPRO IN ('#39'90100'#39','#39'90106'#39','#39'90150'#39 +
        ','#39'90156'#39') AND'
      '                      EXTRACT(YEAR FROM E120PED.DATEMI) = :ANO'
      
        '                      GROUP BY E120PED.CODREP,E090REP.NOMREP,E09' +
        '0REP.APEREP,(EXTRACT(MONTH FROM E120PED.DATEMI)),(EXTRACT(MONTH ' +
        'FROM E120PED.DATEMI))'
      '                      ORDER BY SEQMES')
    Left = 832
    Top = 368
    object GraficoMesalRepPEDIDOS: TFMTBCDField
      FieldName = 'PEDIDOS'
      Precision = 38
      Size = 0
    end
    object GraficoMesalRepCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object GraficoMesalRepNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object GraficoMesalRepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object GraficoMesalRepMESEMI: TStringField
      FieldName = 'MESEMI'
      Size = 3
    end
    object GraficoMesalRepSEQMES: TFMTBCDField
      FieldName = 'SEQMES'
      Precision = 38
      Size = 0
    end
  end
  object ClientGraficoMesalRep: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderGraficoMesalRep'
    Left = 840
    Top = 464
    object ClientGraficoMesalRepPEDIDOS: TFMTBCDField
      FieldName = 'PEDIDOS'
      Precision = 38
      Size = 0
    end
    object ClientGraficoMesalRepCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ClientGraficoMesalRepNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ClientGraficoMesalRepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ClientGraficoMesalRepMESEMI: TStringField
      FieldName = 'MESEMI'
      Size = 3
    end
    object ClientGraficoMesalRepSEQMES: TFMTBCDField
      FieldName = 'SEQMES'
      Precision = 38
      Size = 0
    end
  end
  object ProviderGraficoMesalRep: TDataSetProvider
    DataSet = GraficoMesalRep
    Left = 832
    Top = 416
  end
  object GraficoTrimestreRep: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'CODREP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT SUM(((E120IPD.QTDPED - E120IPD.QTDCAN)* E120IPD.PREUNI)) ' +
        'AS PEDIDOS,'
      
        '       E120PED.CODREP,E090REP.NOMREP,E090REP.APEREP, (EXTRACT(MO' +
        'NTH FROM E120PED.DATEMI))AS MESEMI'
      '       FROM E120IPD'
      'INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND'
      '                      E120PED.CODFIL = E120IPD.CODFIL AND'
      '                      E120PED.NUMPED = E120IPD.NUMPED'
      'INNER JOIN E090REP ON E090REP.CODREP = E120PED.CODREP'
      '                      WHERE'
      '                      E120PED.CODREP = :CODREP AND'
      
        '                      E120IPD.TNSPRO IN ('#39'90100'#39','#39'90106'#39','#39'90150'#39 +
        ','#39'90156'#39') AND'
      '                      EXTRACT(YEAR FROM E120PED.DATEMI) = :ANO'
      
        '                      GROUP BY E120PED.CODREP,E090REP.NOMREP,E09' +
        '0REP.APEREP,(EXTRACT(MONTH FROM E120PED.DATEMI))'
      '                      ORDER BY MESEMI')
    Left = 960
    Top = 368
    object GraficoTrimestreRepPEDIDOS: TFMTBCDField
      FieldName = 'PEDIDOS'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object GraficoTrimestreRepCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object GraficoTrimestreRepNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object GraficoTrimestreRepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object GraficoTrimestreRepMESEMI: TFMTBCDField
      FieldName = 'MESEMI'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object ClientGraficoTrimestreRep: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 960
    Top = 416
    Data = {
      870000009619E0BD010000001800000005000000000003000000870007504544
      49444F53080004000000000006434F4452455004000100000000000641504552
      45500100490000000100055749445448020002003200095452494D4553545245
      04000100000000000C4445535452494D45535452450100490000000100055749
      4454480200020014000000}
    object ClientGraficoTrimestreRepPEDIDOS: TFloatField
      FieldName = 'PEDIDOS'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientGraficoTrimestreRepCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ClientGraficoTrimestreRepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ClientGraficoTrimestreRepTRIMESTRE: TIntegerField
      FieldName = 'TRIMESTRE'
    end
    object ClientGraficoTrimestreRepDESTRIMESTRE: TStringField
      FieldName = 'DESTRIMESTRE'
    end
  end
  object GraficoRegioesGeral: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT SUM(((E120IPD.QTDPED - E120IPD.QTDCAN)* E120IPD.PREUNI)) ' +
        'AS PEDIDOS,'
      '       E085CLI.SIGUFS'
      '       FROM E120IPD'
      'INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND'
      '                      E120PED.CODFIL = E120IPD.CODFIL AND'
      '                      E120PED.NUMPED = E120IPD.NUMPED'
      'INNER JOIN E085CLI ON E085CLI.CODCLI = E120PED.CODCLI'
      '                      WHERE'
      '                      E120PED.DATEMI BETWEEN :DATINI AND :DATFIM'
      '                      GROUP BY E085CLI.SIGUFS'
      '                      ORDER BY PEDIDOS DESC')
    Left = 1072
    Top = 360
    object GraficoRegioesGeralPEDIDOS: TFMTBCDField
      FieldName = 'PEDIDOS'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object GraficoRegioesGeralSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
  end
  object ProviderGraficoRegioesGeral: TDataSetProvider
    DataSet = GraficoRegioesGeral
    Left = 1064
    Top = 408
  end
  object ClientGraficoRegioesGeral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderGraficoRegioesGeral'
    Left = 1064
    Top = 456
    object ClientGraficoRegioesGeralPEDIDOS: TFMTBCDField
      FieldName = 'PEDIDOS'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ClientGraficoRegioesGeralSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
  end
  object CadProComp: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    AfterInsert = CadProCompAfterInsert
    BeforePost = CadProCompBeforePost
    AfterPost = CadProCompAfterPost
    AfterDelete = CadProCompAfterDelete
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tprocomp '
      'where'
      'usu_codpro = :codpro and'
      'usu_codder = :codder')
    Left = 840
    Top = 224
    object CadProCompUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadProCompUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadProCompUSU_CODMP: TStringField
      FieldName = 'USU_CODMP'
      Size = 14
    end
    object CadProCompUSU_QTDMIN: TBCDField
      FieldName = 'USU_QTDMIN'
      Precision = 10
      Size = 3
    end
    object CadProCompUSU_QTDMAX: TBCDField
      FieldName = 'USU_QTDMAX'
      Precision = 10
      Size = 3
    end
    object CadProCompDesMp: TStringField
      FieldKind = fkLookup
      FieldName = 'DesMp'
      LookupDataSet = ConsDescProComp
      LookupKeyFields = 'CODPRO'
      LookupResultField = 'DESPRO'
      KeyFields = 'USU_CODMP'
      LookupCache = True
      Size = 100
      Lookup = True
    end
  end
  object ConsDescProComp: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CODPRO,DESPRO'
      'FROM E075PRO'
      'WHERE'
      'CODORI IN (10,11,12) AND'
      'SITPRO = '#39'A'#39' AND'
      'CODFAM NOT IN ('#39'1001'#39','#39'1002'#39','#39'1003'#39','#39'1004'#39','#39'1005'#39','#39'1006'#39','#39'1007'#39')'
      '')
    Left = 928
    Top = 224
    object ConsDescProCompCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsDescProCompDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object ConsComposicao: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tprocomp.*,e075pro.despro'
      'from usu_tprocomp'
      'inner join e075pro on e075pro.codpro = usu_tprocomp.usu_codmp'
      'where'
      'usu_tprocomp.usu_codpro = :codpro and'
      'usu_tprocomp.usu_codder = :codder'
      'order by e075pro.despro')
    Left = 1024
    Top = 224
    object ConsComposicaoUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsComposicaoUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsComposicaoUSU_CODMP: TStringField
      FieldName = 'USU_CODMP'
      Size = 14
    end
    object ConsComposicaoUSU_QTDMIN: TBCDField
      FieldName = 'USU_QTDMIN'
      Precision = 10
      Size = 3
    end
    object ConsComposicaoUSU_QTDMAX: TBCDField
      FieldName = 'USU_QTDMAX'
      Precision = 10
      Size = 3
    end
    object ConsComposicaoDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object CadProCompDuplica: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tprocomp '
      'where'
      'usu_codpro = :codpro and'
      'usu_codder = :codder')
    Left = 840
    Top = 272
    object CadProCompDuplicaUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadProCompDuplicaUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadProCompDuplicaUSU_CODMP: TStringField
      FieldName = 'USU_CODMP'
      Size = 14
    end
    object CadProCompDuplicaUSU_QTDMIN: TBCDField
      FieldName = 'USU_QTDMIN'
      Precision = 10
      Size = 3
    end
    object CadProCompDuplicaUSU_QTDMAX: TBCDField
      FieldName = 'USU_QTDMAX'
      Precision = 10
      Size = 3
    end
  end
  object ConsProdutosComposicao: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select sum(e140ipv.qtdfat) as qtd_faturado,'
      '      (select count(usu_tprocomp.usu_codmp) from usu_tprocomp'
      '           where'
      '           usu_tprocomp.usu_codpro = e140ipv.codpro and'
      
        '           usu_tprocomp.usu_codder = e140ipv.codder) as Qtd_MP_C' +
        'ad,'
      '      (select count(usu_tprocomp.usu_codmp) from usu_tprocomp'
      '           where'
      '           usu_tprocomp.usu_codpro = e140ipv.codpro and'
      '           usu_tprocomp.usu_codder = e140ipv.codder and'
      '           usu_tprocomp.usu_qtdmin = 0) as Qtd_MP_Cad_Faltando,'
      '      e140ipv.codpro,e140ipv.codder,e075pro.despro'
      'from e140ipv'
      'inner join e140nfv on e140nfv.codemp = e140ipv.codemp and'
      '                      e140nfv.codfil = e140ipv.codfil and'
      '                      e140nfv.codsnf = e140ipv.codsnf and'
      '                      e140nfv.numnfv = e140ipv.numnfv'
      'inner join e001tns on e001tns.codemp = e140ipv.codemp and'
      '                      e001tns.codtns = e140ipv.tnspro'
      'inner join e075pro on e075pro.codemp = e140ipv.codemp and'
      '                      e075pro.codpro = e140ipv.codpro'
      '                                               where'
      
        '                                               e140nfv.datemi be' +
        'tween :DATINI and :DATFIM and'
      
        '                                               e001tns.venfat in' +
        ' ('#39'S'#39') and'
      
        '                                               e075pro.sitpro = ' +
        #39'A'#39
      
        '                                                group by e140ipv' +
        '.codpro,e140ipv.codder,e075pro.despro'
      
        '                                                order by 4,5 des' +
        'c')
    Left = 960
    Top = 272
    object ConsProdutosComposicaoQTD_FATURADO: TFMTBCDField
      FieldName = 'QTD_FATURADO'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsProdutosComposicaoQTD_MP_CAD: TFMTBCDField
      FieldName = 'QTD_MP_CAD'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsProdutosComposicaoQTD_MP_CAD_FALTANDO: TFMTBCDField
      FieldName = 'QTD_MP_CAD_FALTANDO'
      Precision = 38
      Size = 0
    end
    object ConsProdutosComposicaoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsProdutosComposicaoCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsProdutosComposicaoDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object ConsE504Cap: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'CODREP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODFIL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e504cap.codemp,e504cap.codfil,e504cap.codrep,e504cap.seqc' +
        'om,e504cap.datbas,e504cap.datlib,'
      
        '       e504cap.codtns,e504cap.vlrcom,e504cap.numtit,e504cap.codt' +
        'pt,e504cap.codfor,e504cap.seqmov,'
      '       e301tcr.codcli,e301tcr.vctpro,e301tcr.vlrabe,'
      '       e301mcr.vlrbco,e301mcr.datmov,'
      '       e085cli.nomcli,'
      '       e140nfv.codcpg,'
      
        '       e028cpg.descpg,e028cpg.przmed,e028cpg.percom,e028cpg.usu_' +
        'perapl'
      'from e504cap'
      'inner join e301tcr on e301tcr.codemp = e504cap.codemp and'
      '                      e301tcr.codfil = e504cap.codfil and'
      '                      e301tcr.numtit = e504cap.numtit and'
      '                      e301tcr.codtpt = e504cap.codtpt'
      'inner join e301mcr on e301mcr.codemp = e504cap.codemp and'
      '                      e301mcr.codfil = e504cap.codfil and'
      '                      e301mcr.numtit = e504cap.numtit and'
      '                      e301mcr.codtpt = e504cap.codtpt and'
      '                      e301mcr.seqmov = e504cap.seqmov'
      'inner join e085cli on e085cli.codcli = e301tcr.codcli'
      'inner join e140nfv on e140nfv.codemp = e301tcr.codemp and'
      '                      e140nfv.codfil = e301tcr.filnfv and'
      '                      e140nfv.codsnf = e301tcr.codsnf and'
      '                      e140nfv.numnfv = e301tcr.numnfv'
      'inner join e028cpg on e028cpg.codemp = e140nfv.codemp and'
      '                      e028cpg.codcpg = e140nfv.codcpg'
      'where datbas between :DATINI and :DATFIM and'
      
        '       not (e504cap.codtns in ('#39'90590'#39','#39'90599'#39','#39'90581'#39','#39'90591'#39'))' +
        ' and'
      '      e504cap.codrep = :CODREP and'
      '      e504cap.vlrcom > 0 and'
      '      e504cap.codfil = :CODFIL'
      'order by e504cap.codfil, e504cap.numtit')
    Left = 920
    Top = 32
    object ConsE504CapCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE504CapCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE504CapCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE504CapSEQCOM: TIntegerField
      FieldName = 'SEQCOM'
    end
    object ConsE504CapDATBAS: TDateTimeField
      FieldName = 'DATBAS'
    end
    object ConsE504CapDATLIB: TDateTimeField
      FieldName = 'DATLIB'
    end
    object ConsE504CapCODTNS: TStringField
      FieldName = 'CODTNS'
      Size = 5
    end
    object ConsE504CapVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ConsE504CapNUMTIT: TStringField
      FieldName = 'NUMTIT'
      Size = 15
    end
    object ConsE504CapCODTPT: TStringField
      FieldName = 'CODTPT'
      Size = 3
    end
    object ConsE504CapCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsE504CapSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object ConsE504CapCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE504CapVCTPRO: TDateTimeField
      FieldName = 'VCTPRO'
    end
    object ConsE504CapVLRABE: TBCDField
      FieldName = 'VLRABE'
      Precision = 15
      Size = 2
    end
    object ConsE504CapVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ConsE504CapDATMOV: TDateTimeField
      FieldName = 'DATMOV'
    end
    object ConsE504CapNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsE504CapCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsE504CapDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ConsE504CapPRZMED: TIntegerField
      FieldName = 'PRZMED'
    end
    object ConsE504CapPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE504CapUSU_PERAPL: TBCDField
      FieldName = 'USU_PERAPL'
      Precision = 5
      Size = 2
    end
  end
  object ClientConsE504Cap: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsE504Cap'
    OnCalcFields = ClientConsE504CapCalcFields
    Left = 928
    Top = 144
    object ClientConsE504CapCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ClientConsE504CapCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ClientConsE504CapCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ClientConsE504CapSEQCOM: TIntegerField
      FieldName = 'SEQCOM'
    end
    object ClientConsE504CapDATBAS: TDateTimeField
      FieldName = 'DATBAS'
    end
    object ClientConsE504CapDATLIB: TDateTimeField
      FieldName = 'DATLIB'
    end
    object ClientConsE504CapCODTNS: TStringField
      FieldName = 'CODTNS'
      Size = 5
    end
    object ClientConsE504CapVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ClientConsE504CapNUMTIT: TStringField
      FieldName = 'NUMTIT'
      Size = 15
    end
    object ClientConsE504CapCODTPT: TStringField
      FieldName = 'CODTPT'
      Size = 3
    end
    object ClientConsE504CapCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ClientConsE504CapSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object ClientConsE504CapCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ClientConsE504CapVCTPRO: TDateTimeField
      FieldName = 'VCTPRO'
    end
    object ClientConsE504CapVLRABE: TBCDField
      FieldName = 'VLRABE'
      Precision = 15
      Size = 2
    end
    object ClientConsE504CapVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ClientConsE504CapDATMOV: TDateTimeField
      FieldName = 'DATMOV'
    end
    object ClientConsE504CapNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ClientConsE504CapCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ClientConsE504CapDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ClientConsE504CapPRZMED: TIntegerField
      FieldName = 'PRZMED'
    end
    object ClientConsE504CapPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ClientConsE504CapUSU_PERAPL: TBCDField
      FieldName = 'USU_PERAPL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 5
      Size = 2
    end
    object ClientConsE504CapvnComissao_Real: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnComissao_Real'
    end
    object ClientConsE504CapvnVlrReajuste: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnVlrReajuste'
      DisplayFormat = ',0.00'
    end
    object ClientConsE504CapvaNumTit: TStringField
      FieldKind = fkCalculated
      FieldName = 'vaNumTit'
      Size = 10
      Calculated = True
    end
    object ClientConsE504CapvnTotalReaJuste: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalReaJuste'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(vnVlrReajuste)'
    end
  end
  object ProviderConsE504Cap: TDataSetProvider
    DataSet = ConsE504Cap
    Left = 928
    Top = 88
  end
  object RvAjusteComissao: TRvProject
    Engine = RvSysCoresPorProduto
    ProjectFile = 'C:\DelphiSapiens\SapiensDelphi\RelatoriosRave\AjusteComissao.rav'
    Left = 808
    Top = 40
    RaveBlobNew = {
      724E00005E5A982E9357E4405241561A803801000000BFED84B00E5200650070
      006F00720074003100075265706F72743100BFED84B026540052006100760065
      00500072006F006A006500630074004D0061006E006100670065007200135452
      61766550726F6A6563744D616E61676572BFED84B01652006100760065005000
      72006F006A006500630074000B5261766550726F6A65637408BFED84B01A4300
      6F006D00700069006C0065004E00650065006400650064000D436F6D70696C65
      4E656564656400BFED84B00A460061006C00730065000546616C7365BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B016
      5200610076006500500072006F006A006500630074000B5261766550726F6A65
      6374BFED84B014430061007400650067006F0072006900650073000A43617465
      676F7269657308BFED84B00000BFED84B01450006100720061006D0065007400
      6500720073000A506172616D657465727308BFED84B00000BFED84B00C500049
      0056006100720073000650495661727308BFED84B00000BFED84B01655006E00
      69007400730046006100630074006F0072000B556E697473466163746F720500
      303333333333CB0340BFED84B000000006BFED84B01244007600450035003000
      340043006100700009447645353034436170BFED84B01A540052006100760065
      00440061007400610056006900650077000D5452617665446174615669657700
      231B000000BFED84B01A54005200610076006500440061007400610056006900
      650077000D54526176654461746156696577BFED84B012440076004500350030
      0034004300610070000944764535303443617008BFED84B01A43006F006D0070
      0069006C0065004E00650065006400650064000D436F6D70696C654E65656465
      6400BFED84B00A460061006C00730065000546616C7365BFED84B01046007500
      6C006C004E0061006D0065000846756C6C4E616D6506BFED84B0124400760045
      0035003000340043006100700009447645353034436170BFED84B01C43006F00
      6E006E0065006300740069006F006E004E0061006D0065000E436F6E6E656374
      696F6E4E616D6506BFED84B0265200760043006C00690065006E00740043006F
      006E0073004500350030003400430061007000135276436C69656E74436F6E73
      45353034436170BFED84B000001A00BFED84B022540052006100760065004900
      6E00740065006700650072004600690065006C006400115452617665496E7465
      6765724669656C64BFED84B01E44007600450035003000340043006100700043
      004F00440045004D0050000F447645353034436170434F44454D5008BFED84B0
      124600690065006C0064004E0061006D006500094669656C644E616D6506BFED
      84B00C43004F00440045004D00500006434F44454D50BFED84B010460075006C
      006C004E0061006D0065000846756C6C4E616D6506BFED84B00C43004F004400
      45004D00500006434F44454D50BFED84B008530069007A0065000453697A6501
      04BFED84B000000000BFED84B0225400520061007600650049006E0074006500
      6700650072004600690065006C006400115452617665496E7465676572466965
      6C64BFED84B01E44007600450035003000340043006100700043004F00440046
      0049004C000F447645353034436170434F4446494C08BFED84B0124600690065
      006C0064004E0061006D006500094669656C644E616D6506BFED84B00C43004F
      004400460049004C0006434F4446494CBFED84B010460075006C006C004E0061
      006D0065000846756C6C4E616D6506BFED84B00C43004F004400460049004C00
      06434F4446494CBFED84B008530069007A0065000453697A650104BFED84B000
      000000BFED84B0225400520061007600650049006E0074006500670065007200
      4600690065006C006400115452617665496E74656765724669656C64BFED84B0
      1E44007600450035003000340043006100700043004F0044005200450050000F
      447645353034436170434F4452455008BFED84B0124600690065006C0064004E
      0061006D006500094669656C644E616D6506BFED84B00C43004F004400520045
      00500006434F44524550BFED84B010460075006C006C004E0061006D00650008
      46756C6C4E616D6506BFED84B00C43004F00440052004500500006434F445245
      50BFED84B008530069007A0065000453697A650104BFED84B000000000BFED84
      B0225400520061007600650049006E0074006500670065007200460069006500
      6C006400115452617665496E74656765724669656C64BFED84B01E4400760045
      0035003000340043006100700053004500510043004F004D000F447645353034
      436170534551434F4D08BFED84B0124600690065006C0064004E0061006D0065
      00094669656C644E616D6506BFED84B00C53004500510043004F004D00065345
      51434F4DBFED84B010460075006C006C004E0061006D0065000846756C6C4E61
      6D6506BFED84B00C53004500510043004F004D0006534551434F4DBFED84B008
      530069007A0065000453697A650104BFED84B000000000BFED84B02454005200
      6100760065004400610074006500540069006D0065004600690065006C006400
      1254526176654461746554696D654669656C64BFED84B01E4400760045003500
      300034004300610070004400410054004200410053000F447645353034436170
      44415442415308BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C440041005400420041005300064441544241
      53BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C44004100540042004100530006444154424153BFED84B008530069
      007A0065000453697A650108BFED84B000000000BFED84B02454005200610076
      0065004400610074006500540069006D0065004600690065006C006400125452
      6176654461746554696D654669656C64BFED84B01E4400760045003500300034
      004300610070004400410054004C00490042000F447645353034436170444154
      4C494208BFED84B0124600690065006C0064004E0061006D006500094669656C
      644E616D6506BFED84B00C4400410054004C0049004200064441544C4942BFED
      84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84
      B00C4400410054004C0049004200064441544C4942BFED84B008530069007A00
      65000453697A650108BFED84B000000000BFED84B02054005200610076006500
      53007400720069006E0067004600690065006C00640010545261766553747269
      6E674669656C64BFED84B01E4400760045003500300034004300610070004300
      4F00440054004E0053000F447645353034436170434F44544E5308BFED84B012
      4600690065006C0064004E0061006D006500094669656C644E616D6506BFED84
      B00C43004F00440054004E00530006434F44544E53BFED84B010460075006C00
      6C004E0061006D0065000846756C6C4E616D6506BFED84B00C43004F00440054
      004E00530006434F44544E53BFED84B008530069007A0065000453697A650106
      BFED84B000000000BFED84B01A54005200610076006500420043004400460069
      0065006C0064000D54526176654243444669656C64BFED84B01E440076004500
      35003000340043006100700056004C00520043004F004D000F44764535303443
      6170564C52434F4D08BFED84B0124600690065006C0064004E0061006D006500
      094669656C644E616D6506BFED84B00C56004C00520043004F004D0006564C52
      434F4DBFED84B010460075006C006C004E0061006D0065000846756C6C4E616D
      6506BFED84B00C56004C00520043004F004D0006564C52434F4DBFED84B00853
      0069007A0065000453697A650108BFED84B000000000BFED84B0205400520061
      007600650053007400720069006E0067004600690065006C0064001054526176
      65537472696E674669656C64BFED84B01E440076004500350030003400430061
      0070004E0055004D005400490054000F4476453530344361704E554D54495408
      BFED84B0124600690065006C0064004E0061006D006500094669656C644E616D
      6506BFED84B00C4E0055004D00540049005400064E554D544954BFED84B01046
      0075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C4E00
      55004D00540049005400064E554D544954BFED84B008530069007A0065000453
      697A650110BFED84B000000000BFED84B0205400520061007600650053007400
      720069006E0067004600690065006C006400105452617665537472696E674669
      656C64BFED84B01E44007600450035003000340043006100700043004F004400
      5400500054000F447645353034436170434F4454505408BFED84B01246006900
      65006C0064004E0061006D006500094669656C644E616D6506BFED84B00C4300
      4F00440054005000540006434F44545054BFED84B010460075006C006C004E00
      61006D0065000846756C6C4E616D6506BFED84B00C43004F0044005400500054
      0006434F44545054BFED84B008530069007A0065000453697A650104BFED84B0
      00000000BFED84B0225400520061007600650049006E00740065006700650072
      004600690065006C006400115452617665496E74656765724669656C64BFED84
      B01E44007600450035003000340043006100700043004F00440046004F005200
      0F447645353034436170434F44464F5208BFED84B0124600690065006C006400
      4E0061006D006500094669656C644E616D6506BFED84B00C43004F0044004600
      4F00520006434F44464F52BFED84B010460075006C006C004E0061006D006500
      0846756C6C4E616D6506BFED84B00C43004F00440046004F00520006434F4446
      4F52BFED84B008530069007A0065000453697A650104BFED84B000000000BFED
      84B0225400520061007600650049006E00740065006700650072004600690065
      006C006400115452617665496E74656765724669656C64BFED84B01E44007600
      45003500300034004300610070005300450051004D004F0056000F4476453530
      344361705345514D4F5608BFED84B0124600690065006C0064004E0061006D00
      6500094669656C644E616D6506BFED84B00C5300450051004D004F0056000653
      45514D4F56BFED84B010460075006C006C004E0061006D0065000846756C6C4E
      616D6506BFED84B00C5300450051004D004F005600065345514D4F56BFED84B0
      08530069007A0065000453697A650104BFED84B000000000BFED84B022540052
      0061007600650049006E00740065006700650072004600690065006C00640011
      5452617665496E74656765724669656C64BFED84B01E44007600450035003000
      340043006100700043004F00440043004C0049000F447645353034436170434F
      44434C4908BFED84B0124600690065006C0064004E0061006D00650009466965
      6C644E616D6506BFED84B00C43004F00440043004C00490006434F44434C49BF
      ED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED
      84B00C43004F00440043004C00490006434F44434C49BFED84B008530069007A
      0065000453697A650104BFED84B000000000BFED84B024540052006100760065
      004400610074006500540069006D0065004600690065006C0064001254526176
      654461746554696D654669656C64BFED84B01E44007600450035003000340043
      0061007000560043005400500052004F000F4476453530344361705643545052
      4F08BFED84B0124600690065006C0064004E0061006D006500094669656C644E
      616D6506BFED84B00C560043005400500052004F000656435450524FBFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C
      560043005400500052004F000656435450524FBFED84B008530069007A006500
      0453697A650108BFED84B000000000BFED84B01A540052006100760065004200
      430044004600690065006C0064000D54526176654243444669656C64BFED84B0
      1E44007600450035003000340043006100700056004C0052004100420045000F
      447645353034436170564C5241424508BFED84B0124600690065006C0064004E
      0061006D006500094669656C644E616D6506BFED84B00C56004C005200410042
      00450006564C52414245BFED84B010460075006C006C004E0061006D00650008
      46756C6C4E616D6506BFED84B00C56004C00520041004200450006564C524142
      45BFED84B008530069007A0065000453697A650108BFED84B000000000BFED84
      B01A540052006100760065004200430044004600690065006C0064000D545261
      76654243444669656C64BFED84B01E4400760045003500300034004300610070
      0056004C005200420043004F000F447645353034436170564C5242434F08BFED
      84B0124600690065006C0064004E0061006D006500094669656C644E616D6506
      BFED84B00C56004C005200420043004F0006564C5242434FBFED84B010460075
      006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C56004C00
      5200420043004F0006564C5242434FBFED84B008530069007A0065000453697A
      650108BFED84B000000000BFED84B02454005200610076006500440061007400
      6500540069006D0065004600690065006C006400125452617665446174655469
      6D654669656C64BFED84B01E4400760045003500300034004300610070004400
      410054004D004F0056000F4476453530344361704441544D4F5608BFED84B012
      4600690065006C0064004E0061006D006500094669656C644E616D6506BFED84
      B00C4400410054004D004F005600064441544D4F56BFED84B010460075006C00
      6C004E0061006D0065000846756C6C4E616D6506BFED84B00C4400410054004D
      004F005600064441544D4F56BFED84B008530069007A0065000453697A650108
      BFED84B000000000BFED84B0205400520061007600650053007400720069006E
      0067004600690065006C006400105452617665537472696E674669656C64BFED
      84B01E4400760045003500300034004300610070004E004F004D0043004C0049
      000F4476453530344361704E4F4D434C4908BFED84B0124600690065006C0064
      004E0061006D006500094669656C644E616D6506BFED84B00C4E004F004D0043
      004C004900064E4F4D434C49BFED84B010460075006C006C004E0061006D0065
      000846756C6C4E616D6506BFED84B00C4E004F004D0043004C004900064E4F4D
      434C49BFED84B008530069007A0065000453697A650165BFED84B000000000BF
      ED84B0205400520061007600650053007400720069006E006700460069006500
      6C006400105452617665537472696E674669656C64BFED84B01E440076004500
      35003000340043006100700043004F0044004300500047000F44764535303443
      6170434F4443504708BFED84B0124600690065006C0064004E0061006D006500
      094669656C644E616D6506BFED84B00C43004F00440043005000470006434F44
      435047BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D
      6506BFED84B00C43004F00440043005000470006434F44435047BFED84B00853
      0069007A0065000453697A650107BFED84B000000000BFED84B0205400520061
      007600650053007400720069006E0067004600690065006C0064001054526176
      65537472696E674669656C64BFED84B01E440076004500350030003400430061
      0070004400450053004300500047000F44764535303443617044455343504708
      BFED84B0124600690065006C0064004E0061006D006500094669656C644E616D
      6506BFED84B00C44004500530043005000470006444553435047BFED84B01046
      0075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C4400
      4500530043005000470006444553435047BFED84B008530069007A0065000453
      697A650133BFED84B000000000BFED84B0225400520061007600650049006E00
      740065006700650072004600690065006C006400115452617665496E74656765
      724669656C64BFED84B01E440076004500350030003400430061007000500052
      005A004D00450044000F44764535303443617050525A4D454408BFED84B01246
      00690065006C0064004E0061006D006500094669656C644E616D6506BFED84B0
      0C500052005A004D00450044000650525A4D4544BFED84B010460075006C006C
      004E0061006D0065000846756C6C4E616D6506BFED84B00C500052005A004D00
      450044000650525A4D4544BFED84B008530069007A0065000453697A650104BF
      ED84B000000000BFED84B01A5400520061007600650042004300440046006900
      65006C0064000D54526176654243444669656C64BFED84B01E44007600450035
      003000340043006100700050004500520043004F004D000F4476453530344361
      70504552434F4D08BFED84B0124600690065006C0064004E0061006D00650009
      4669656C644E616D6506BFED84B00C50004500520043004F004D000650455243
      4F4DBFED84B010460075006C006C004E0061006D0065000846756C6C4E616D65
      06BFED84B00C50004500520043004F004D0006504552434F4DBFED84B0085300
      69007A0065000453697A650108BFED84B000000000BFED84B01A540052006100
      760065004200430044004600690065006C0064000D5452617665424344466965
      6C64BFED84B0264400760045003500300034004300610070005500530055005F
      00500045005200410050004C00134476453530344361705553555F5045524150
      4C08BFED84B0124600690065006C0064004E0061006D006500094669656C644E
      616D6506BFED84B0145500530055005F00500045005200410050004C000A5553
      555F50455241504CBFED84B010460075006C006C004E0061006D006500084675
      6C6C4E616D6506BFED84B0145500530055005F00500045005200410050004C00
      0A5553555F50455241504CBFED84B008530069007A0065000453697A650108BF
      ED84B000000000BFED84B01E5400520061007600650046006C006F0061007400
      4600690065006C0064000F5452617665466C6F61744669656C64BFED84B03044
      007600450035003000340043006100700076006E0043006F006D006900730073
      0061006F005F005200650061006C0018447645353034436170766E436F6D6973
      73616F5F5265616C08BFED84B0124600690065006C0064004E0061006D006500
      094669656C644E616D6506BFED84B01E76006E0043006F006D00690073007300
      61006F005F005200650061006C000F766E436F6D697373616F5F5265616CBFED
      84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84
      B01E76006E0043006F006D0069007300730061006F005F005200650061006C00
      0F766E436F6D697373616F5F5265616CBFED84B008530069007A006500045369
      7A650108BFED84B000000000BFED84B01E5400520061007600650046006C006F
      00610074004600690065006C0064000F5452617665466C6F61744669656C64BF
      ED84B02C44007600450035003000340043006100700076006E0056006C007200
      5200650061006A00750073007400650016447645353034436170766E566C7252
      65616A7573746508BFED84B0124600690065006C0064004E0061006D00650009
      4669656C644E616D6506BFED84B01A76006E0056006C0072005200650061006A
      0075007300740065000D766E566C725265616A75737465BFED84B01046007500
      6C006C004E0061006D0065000846756C6C4E616D6506BFED84B01A76006E0056
      006C0072005200650061006A0075007300740065000D766E566C725265616A75
      737465BFED84B008530069007A0065000453697A650108BFED84B000000000BF
      ED84B0205400520061007600650053007400720069006E006700460069006500
      6C006400105452617665537472696E674669656C64BFED84B022440076004500
      350030003400430061007000760061004E0075006D0054006900740011447645
      35303443617076614E756D54697408BFED84B0124600690065006C0064004E00
      61006D006500094669656C644E616D6506BFED84B010760061004E0075006D00
      5400690074000876614E756D546974BFED84B010460075006C006C004E006100
      6D0065000846756C6C4E616D6506BFED84B010760061004E0075006D00540069
      0074000876614E756D546974BFED84B008530069007A0065000453697A65010B
      BFED84B000000004BFED84B00E5200650070006F00720074003100075265706F
      7274310016310000BFED84B00A500061006700650031000550616765310100BF
      ED84B00A5000610067006500310005506167653101BFED84B00A500061006700
      6500310005506167653100BFED84B01654005200610076006500520065007000
      6F00720074000B54526176655265706F7274BFED84B00E5200650070006F0072
      0074003100075265706F72743108BFED84B01A43006F006D00700069006C0065
      004E00650065006400650064000D436F6D70696C654E656564656400BFED84B0
      0A460061006C00730065000546616C7365BFED84B010460075006C006C004E00
      61006D0065000846756C6C4E616D6506BFED84B00E5200650070006F00720074
      003100075265706F727431BFED84B01246006900720073007400500061006700
      65000946697273745061676500BFED84B01A5200650070006F00720074003100
      2E00500061006700650031000D5265706F7274312E5061676531BFED84B01450
      006100720061006D00650074006500720073000A506172616D657465727308BF
      ED84B00000BFED84B00C5000490056006100720073000650495661727308BFED
      84B00000BFED84B0000000006E2F000000BFED84B01254005200610076006500
      500061006700650009545261766550616765BFED84B00A500061006700650031
      0005506167653108BFED84B01A43006F006D00700069006C0065004E00650065
      006400650064000D436F6D70696C654E656564656400BFED84B00A460061006C
      00730065000546616C7365BFED84B010460075006C006C004E0061006D006500
      0846756C6C4E616D6506BFED84B00A50006100670065003100055061676531BF
      ED84B006420069006E000342696E0201BFED84B01247007200690064004C0069
      006E006500730009477269644C696E65730105BFED84B0164700720069006400
      530070006100630069006E0067000B4772696453706163696E67050048201008
      040281F73FBFED84B0164F007200690065006E0074006100740069006F006E00
      0B4F7269656E746174696F6E00BFED84B01270006F0044006500660061007500
      6C00740009706F44656661756C74BFED84B01250006100700065007200530069
      007A00650009506170657253697A650109BFED84B01450006100720061006D00
      650074006500720073000A506172616D657465727308BFED84B00E5300740072
      0069006E006700730007537472696E67732D0106067661446174610607766E54
      6F74616C060876614E6F6D526570060E766E546F74616C436F6D41766F7300BF
      ED84B00000BFED84B00C5000490056006100720073000650495661727308BFED
      84B00000BFED84B000000B00BFED84B016540052006100760065005200650067
      0069006F006E000B5452617665526567696F6EBFED84B00E5200650067006900
      6F006E00310007526567696F6E3108BFED84B00C480065006900670068007400
      06486569676874050088E3388EE338AA0240BFED84B0084C0065006600740004
      4C656674050000388EE3388EE3F93FBFED84B00654006F00700003546F700500
      488EE3388EE3F8FE3FBFED84B00A570069006400740068000557696474680500
      800C951DA62E830240BFED84B01A43006F006C0075006D006E00530070006100
      630069006E0067000D436F6C756D6E53706163696E6705000000000000000000
      00BFED84B000000200BFED84B01A540052006100760065004400610074006100
      420061006E0064000D54526176654461746142616E64BFED84B00E4400650074
      0061006C006800650007446574616C686508BFED84B00C41006E00630068006F
      00720006416E63686F720103BFED84B012420061006E0064005300740079006C
      0065000942616E645374796C6508BFED84B0105000720069006E0074004C006F
      006300085072696E744C6F6307BFED84B01070006C0044006500740061006900
      6C0008706C44657461696CBFED84B00000BFED84B00000BFED84B00C48006500
      690067006800740006486569676874050050B81E85EB51B8FC3FBFED84B01A4D
      0069006E004800650069006700680074004C006500660074000D4D696E486569
      6768744C6566740500000000000000000000BFED84B01A50006F007300690074
      0069006F006E00560061006C00750065000D506F736974696F6E56616C756505
      00000000000000000000BFED84B01A43006F006C0075006D006E005300700061
      00630069006E0067000D436F6C756D6E53706163696E67050000000000000000
      0000BFED84B01044006100740061005600690065007700084461746156696577
      00BFED84B0124400760045003500300034004300610070000944764535303443
      6170BFED84B000000700BFED84B01A5400520061007600650044006100740061
      0054006500780074000D54526176654461746154657874BFED84B01244006100
      74006100540065007800740031000944617461546578743108BFED84B0084600
      6F006E00740004466F6E7408BFED84B00E430068006100720073006500740007
      436861727365740101BFED84B00A43006F006C006F00720005436F6C6F720100
      BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069006100
      6C0005417269616CBFED84B008530069007A0065000453697A650108BFED84B0
      0A5300740079006C006500055374796C6507BFED84B00000BFED84B00000BFED
      84B01646006F006E0074004A007500730074006900660079000B466F6E744A75
      737469667900BFED84B00C70006A004C0065006600740006706A4C656674BFED
      84B0084C00650066007400044C6566740500E8277DD2277D92FD3FBFED84B008
      5400650078007400045465787406BFED84B010760061004E0075006D00540069
      0074000876614E756D546974BFED84B00654006F00700003546F70050010E7D5
      C4B3A291F93FBFED84B00A570069006400740068000557696474680500203333
      333333B3FE3FBFED84B01244006100740061004600690065006C006400094461
      74614669656C6406BFED84B010760061004E0075006D00540069007400087661
      4E756D546974BFED84B010440061007400610056006900650077000844617461
      5669657700BFED84B01244007600450035003000340043006100700009447645
      353034436170BFED84B000000000BFED84B01A54005200610076006500440061
      007400610054006500780074000D54526176654461746154657874BFED84B012
      4400610074006100540065007800740032000944617461546578743208BFED84
      B00846006F006E00740004466F6E7408BFED84B00E4300680061007200730065
      00740007436861727365740101BFED84B00A43006F006C006F00720005436F6C
      6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41007200
      690061006C0005417269616CBFED84B008530069007A0065000453697A650108
      BFED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B0
      0000BFED84B01646006F006E0074004A007500730074006900660079000B466F
      6E744A75737469667900BFED84B00C70006A004C0065006600740006706A4C65
      6674BFED84B0084C00650066007400044C656674050040A70D74DA4097FF3FBF
      ED84B0085400650078007400045465787406BFED84B00C43004F00440043004C
      00490006434F44434C49BFED84B00654006F00700003546F70050020B1E4174B
      7EB1F93FBFED84B00A5700690064007400680005576964746805000800000000
      0080FE3FBFED84B01244006100740061004600690065006C0064000944617461
      4669656C6406BFED84B00C43004F00440043004C00490006434F44434C49BFED
      84B0104400610074006100560069006500770008446174615669657700BFED84
      B01244007600450035003000340043006100700009447645353034436170BFED
      84B000000000BFED84B01A540052006100760065004400610074006100540065
      00780074000D54526176654461746154657874BFED84B0124400610074006100
      540065007800740033000944617461546578743308BFED84B00846006F006E00
      740004466F6E7408BFED84B00E43006800610072007300650074000743686172
      7365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0
      084E0061006D006500044E616D6506BFED84B00A41007200690061006C000541
      7269616CBFED84B008530069007A0065000453697A650108BFED84B00A530074
      0079006C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646
      006F006E0074004A007500730074006900660079000B466F6E744A7573746966
      7900BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C
      00650066007400044C65667405003875B9FD4186DAFF3FBFED84B00854006500
      78007400045465787406BFED84B00C4E004F004D0043004C004900064E4F4D43
      4C49BFED84B00654006F00700003546F70050010E7D5C4B3A291F93FBFED84B0
      0A570069006400740068000557696474680500B0E22D42BB66A30040BFED84B0
      1244006100740061004600690065006C00640009446174614669656C6406BFED
      84B00C4E004F004D0043004C004900064E4F4D434C49BFED84B0104400610074
      006100560069006500770008446174615669657700BFED84B012440076004500
      35003000340043006100700009447645353034436170BFED84B000000000BFED
      84B01A54005200610076006500440061007400610054006500780074000D5452
      6176654461746154657874BFED84B01244006100740061005400650078007400
      34000944617461546578743408BFED84B00846006F006E00740004466F6E7408
      BFED84B00E430068006100720073006500740007436861727365740101BFED84
      B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D0065
      00044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B0
      08530069007A0065000453697A650108BFED84B00A5300740079006C00650005
      5374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A
      007500730074006900660079000B466F6E744A75737469667900BFED84B00E70
      006A005200690067006800740007706A5269676874BFED84B0084C0065006600
      7400044C6566740500203EC850D961D20140BFED84B008540065007800740004
      5465787406BFED84B01A76006E0056006C0072005200650061006A0075007300
      740065000D766E566C725265616A75737465BFED84B00654006F00700003546F
      700500D8A3703D0AD7A3F93FBFED84B00A570069006400740068000557696474
      680500C0F5285C8FC2B5FE3FBFED84B01244006100740061004600690065006C
      00640009446174614669656C6406BFED84B01A76006E0056006C007200520065
      0061006A0075007300740065000D766E566C725265616A75737465BFED84B010
      4400610074006100560069006500770008446174615669657700BFED84B01244
      007600450035003000340043006100700009447645353034436170BFED84B000
      000000BFED84B01A540052006100760065004400610074006100540065007800
      74000D54526176654461746154657874BFED84B0124400610074006100540065
      007800740035000944617461546578743508BFED84B00846006F006E00740004
      466F6E7408BFED84B00E43006800610072007300650074000743686172736574
      0101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E00
      61006D006500044E616D6506BFED84B00A41007200690061006C000541726961
      6CBFED84B008530069007A0065000453697A650108BFED84B00A530074007900
      6C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646006F00
      6E0074004A007500730074006900660079000B466F6E744A75737469667900BF
      ED84B00E70006A005200690067006800740007706A5269676874BFED84B0084C
      00650066007400044C656674050090E4F607192ABF0140BFED84B00854006500
      78007400045465787406BFED84B0145500530055005F00500045005200410050
      004C000A5553555F50455241504CBFED84B00654006F00700003546F70050088
      547698BADCFEF83FBFED84B00A57006900640074006800055769647468050000
      3333333333B3FD3FBFED84B01244006100740061004600690065006C00640009
      446174614669656C6406BFED84B0145500530055005F00500045005200410050
      004C000A5553555F50455241504CBFED84B01044006100740061005600690065
      00770008446174615669657700BFED84B0124400760045003500300034004300
      6100700009447645353034436170BFED84B000000000BFED84B01A5400520061
      0076006500440061007400610054006500780074000D54526176654461746154
      657874BFED84B012440061007400610054006500780074003600094461746154
      6578743608BFED84B00846006F006E00740004466F6E7408BFED84B00E430068
      006100720073006500740007436861727365740101BFED84B00A43006F006C00
      6F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BF
      ED84B00A41007200690061006C0005417269616CBFED84B008530069007A0065
      000453697A650108BFED84B00A5300740079006C006500055374796C6507BFED
      84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300740069
      00660079000B466F6E744A75737469667900BFED84B00E70006A005200690067
      006800740007706A5269676874BFED84B0084C00650066007400044C65667405
      00C8C5925F2CF98D0140BFED84B0085400650078007400045465787406BFED84
      B00C56004C005200420043004F0006564C5242434FBFED84B00654006F007000
      03546F70050018398EE3388EE3F83FBFED84B00A570069006400740068000557
      696474680500703D0AD7A370BDFE3FBFED84B012440061007400610046006900
      65006C00640009446174614669656C6406BFED84B00C56004C00520042004300
      4F0006564C5242434FBFED84B010440061007400610056006900650077000844
      6174615669657700BFED84B01244007600450035003000340043006100700009
      447645353034436170BFED84B000000000BFED84B01A54005200610076006500
      440061007400610054006500780074000D54526176654461746154657874BFED
      84B0124400610074006100540065007800740037000944617461546578743708
      BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061007200
      73006500740007436861727365740101BFED84B00A43006F006C006F00720005
      436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41
      007200690061006C0005417269616CBFED84B008530069007A0065000453697A
      650108BFED84B00A5300740079006C006500055374796C6507BFED84B00000BF
      ED84B00000BFED84B01646006F006E0074004A00750073007400690066007900
      0B466F6E744A75737469667900BFED84B00E70006A0052006900670068007400
      07706A5269676874BFED84B0084C00650066007400044C6566740500D808F8E6
      D5C4AB0140BFED84B0085400650078007400045465787406BFED84B00C500045
      00520043004F004D0006504552434F4DBFED84B00654006F00700003546F7005
      0000398EE3388EE3F93FBFED84B00A5700690064007400680005576964746805
      0060C2F5285C8FC2FD3FBFED84B01244006100740061004600690065006C0064
      0009446174614669656C6406BFED84B00C50004500520043004F004D00065045
      52434F4DBFED84B0104400610074006100560069006500770008446174615669
      657700BFED84B012440076004500350030003400430061007000094476453530
      34436170BFED84B000000000BFED84B01254005200610076006500420061006E
      00640009545261766542616E64BFED84B00A54006F00740061006C0005546F74
      616C08BFED84B00C41006E00630068006F00720006416E63686F720103BFED84
      B012420061006E0064005300740079006C0065000942616E645374796C6508BF
      ED84B0105000720069006E0074004C006F006300085072696E744C6F6307BFED
      84B01870006C0042006F006400790046006F006F007400650072000C706C426F
      6479466F6F746572BFED84B00000BFED84B00000BFED84B01C43006F006E0074
      0072006F006C006C0065007200420061006E0064000E436F6E74726F6C6C6572
      42616E6400BFED84B00E44006500740061006C006800650007446574616C6865
      BFED84B00C48006500690067006800740006486569676874050088158D047CF3
      AAFE3FBFED84B01A4D0069006E004800650069006700680074004C0065006600
      74000D4D696E4865696768744C6566740500000000000000000000BFED84B01A
      50006F0073006900740069006F006E00560061006C00750065000D506F736974
      696F6E56616C75650500000000000000000000BFED84B000000400BFED84B012
      54005200610076006500540065007800740009545261766554657874BFED84B0
      0A5400650078007400310005546578743108BFED84B00846006F006E00740004
      466F6E7408BFED84B00E43006800610072007300650074000743686172736574
      0101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E00
      61006D006500044E616D6506BFED84B00A41007200690061006C000541726961
      6CBFED84B008530069007A0065000453697A65010ABFED84B00A530074007900
      6C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646006F00
      6E0074004A007500730074006900660079000B466F6E744A75737469667900BF
      ED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C006500
      66007400044C6566740500E81F64A8EC30A90140BFED84B00854006500780074
      00045465787406BFED84B01A54006F00740061006C00200041006A0075007300
      740065003A000D546F74616C20416A757374653ABFED84B00654006F00700003
      546F700500006587A9CBED8FFC3FBFED84B00A57006900640074006800055769
      6474680500B01E85EB51B8DEFE3FBFED84B000000000BFED84B01A5400520061
      0076006500440061007400610054006500780074000D54526176654461746154
      657874BFED84B012440061007400610054006500780074003800094461746154
      6578743808BFED84B00846006F006E00740004466F6E7408BFED84B00E430068
      006100720073006500740007436861727365740101BFED84B00A43006F006C00
      6F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BF
      ED84B00A41007200690061006C0005417269616CBFED84B008530069007A0065
      000453697A65010ABFED84B00A5300740079006C006500055374796C6507BFED
      84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300740069
      00660079000B466F6E744A75737469667900BFED84B00E70006A005200690067
      006800740007706A5269676874BFED84B0084C00650066007400044C65667405
      0058DA40A70D74C60140BFED84B0085400650078007400045465787406BFED84
      B01A50006100720061006D002E0076006E0054006F00740061006C000D506172
      616D2E766E546F74616CBFED84B00654006F00700003546F700500A8D5C4B3A2
      9180FC3FBFED84B00A5700690064007400680005576964746805001085EB51B8
      1EC5FE3FBFED84B01244006100740061004600690065006C0064000944617461
      4669656C6406BFED84B01A50006100720061006D002E0076006E0054006F0074
      0061006C000D506172616D2E766E546F74616CBFED84B000000000BFED84B014
      5400520061007600650048004C0069006E0065000A5452617665484C696E65BF
      ED84B00C48004C0069006E006500330006484C696E653308BFED84B00C480065
      006900670068007400064865696768740500000000000000000000BFED84B008
      4C00650066007400044C656674050068E7B4814E1BE8FA3FBFED84B0124C0069
      006E00650057006900640074006800094C696E65576964746805000000000000
      0080FF3FBFED84B0084E00450053005700044E45535700BFED84B00A46006100
      6C00730065000546616C7365BFED84B00654006F00700003546F70050010814E
      1BE8B481FB3FBFED84B00A57006900640074006800055769647468050088E338
      8EE338820240BFED84B000000000BFED84B01A54005200610076006500440061
      007400610054006500780074000D54526176654461746154657874BFED84B014
      44006100740061005400650078007400310032000A4461746154657874313208
      BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061007200
      73006500740007436861727365740101BFED84B00A43006F006C006F00720005
      436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41
      007200690061006C0005417269616CBFED84B008530069007A0065000453697A
      65010ABFED84B00A5300740079006C006500055374796C6507BFED84B00000BF
      ED84B00000BFED84B01646006F006E0074004A00750073007400690066007900
      0B466F6E744A75737469667900BFED84B00C70006A004C006500660074000670
      6A4C656674BFED84B0084C00650066007400044C656674050090E3388EE338AA
      0140BFED84B0085400650078007400045465787406BFED84B028500061007200
      61006D002E0076006E0054006F00740061006C0043006F006D00410076006F00
      730014506172616D2E766E546F74616C436F6D41766F73BFED84B00654006F00
      700003546F700500E0711CC7711CC7FD3FBFED84B00A57006900640074006800
      0557696474680500C0711CC7711CA70040BFED84B01244006100740061004600
      690065006C00640009446174614669656C6406BFED84B0285000610072006100
      6D002E0076006E0054006F00740061006C0043006F006D00410076006F007300
      14506172616D2E766E546F74616C436F6D41766F73BFED84B000000000BFED84
      B01254005200610076006500540065007800740009545261766554657874BFED
      84B00A5400650078007400330005546578743308BFED84B00846006F006E0074
      0004466F6E7408BFED84B00E4300680061007200730065007400074368617273
      65740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B008
      4E0061006D006500044E616D6506BFED84B00A41007200690061006C00054172
      69616CBFED84B008530069007A0065000453697A650109BFED84B00A53007400
      79006C006500055374796C6507BFED84B00000BFED84B00000BFED84B0164600
      6F006E0074004A007500730074006900660079000B466F6E744A757374696679
      00BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00
      650066007400044C65667405003001DFBC9A78A6FF3FBFED84B0085400650078
      007400045465787406BFED84B00E43004C00490045004E005400450007434C49
      454E5445BFED84B00654006F00700003546F700500C0166CC1166CC1FE3FBFED
      84B00A57006900640074006800055769647468050070EB51B81E85ABFE3FBFED
      84B000000000BFED84B0145400520061007600650048004C0069006E0065000A
      5452617665484C696E65BFED84B00C48004C0069006E006500310006484C696E
      653108BFED84B00C480065006900670068007400064865696768740500000000
      000000000000BFED84B0084C00650066007400044C656674050070106CC1166C
      C1FA3FBFED84B0124C0069006E00650057006900640074006800094C696E6557
      69647468050000000000000080FF3FBFED84B0084E00450053005700044E4553
      5700BFED84B00A460061006C00730065000546616C7365BFED84B00654006F00
      700003546F700500F8EEEEEEEEEEEEFE3FBFED84B00A57006900640074006800
      0557696474680500C8711CC7711C830240BFED84B000000000BFED84B0145400
      520061007600650048004C0069006E0065000A5452617665484C696E65BFED84
      B00C48004C0069006E006500320006484C696E653208BFED84B00C4800650069
      00670068007400064865696768740500000000000000000000BFED84B0084C00
      650066007400044C6566740500E894DB1F64A8ECFA3FBFED84B0124C0069006E
      00650057006900640074006800094C696E655769647468050000000000000080
      FF3FBFED84B0084E00450053005700044E45535700BFED84B00A460061006C00
      730065000546616C7365BFED84B00654006F00700003546F700500608FC2F528
      5CAFFE3FBFED84B00A570069006400740068000557696474680500A8AAAAAAAA
      AA820240BFED84B000000000BFED84B012540052006100760065005400650078
      00740009545261766554657874BFED84B00A5400650078007400340005546578
      743408BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061
      00720073006500740007436861727365740101BFED84B00A43006F006C006F00
      720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84
      B00A41007200690061006C0005417269616CBFED84B008530069007A00650004
      53697A650109BFED84B00A5300740079006C006500055374796C6507BFED84B0
      0000BFED84B00000BFED84B01646006F006E0074004A00750073007400690066
      0079000B466F6E744A75737469667900BFED84B00C70006A004C006500660074
      0006706A4C656674BFED84B0084C00650066007400044C6566740500F8C0166C
      C116940140BFED84B0085400650078007400045465787406BFED84B01056004C
      0052002E00420041005300450008564C522E42415345BFED84B00654006F0070
      0003546F700500E8D5C4B3A291C0FE3FBFED84B00A5700690064007400680005
      57696474680500506666666666A6FE3FBFED84B000000000BFED84B012540052
      00610076006500540065007800740009545261766554657874BFED84B00A5400
      650078007400350005546578743508BFED84B00846006F006E00740004466F6E
      7408BFED84B00E430068006100720073006500740007436861727365740101BF
      ED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D
      006500044E616D6506BFED84B00A41007200690061006C0005417269616CBFED
      84B008530069007A0065000453697A650109BFED84B00A5300740079006C0065
      00055374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E0074
      004A007500730074006900660079000B466F6E744A75737469667900BFED84B0
      0C70006A004C0065006600740006706A4C656674BFED84B0084C006500660074
      00044C6566740500B06AE259D148AC0140BFED84B00854006500780074000454
      65787406BFED84B00C2500200043004F004D002E00062520434F4D2EBFED84B0
      0654006F00700003546F700500985F2CF9C592BFFE3FBFED84B00A5700690064
      00740068000557696474680500C0FFFFFFFFFFFFFD3FBFED84B000000000BFED
      84B01254005200610076006500540065007800740009545261766554657874BF
      ED84B00A5400650078007400360005546578743608BFED84B00846006F006E00
      740004466F6E7408BFED84B00E43006800610072007300650074000743686172
      7365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0
      084E0061006D006500044E616D6506BFED84B00A41007200690061006C000541
      7269616CBFED84B008530069007A0065000453697A650109BFED84B00A530074
      0079006C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646
      006F006E0074004A007500730074006900660079000B466F6E744A7573746966
      7900BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C
      00650066007400044C656674050060055BB0055BC00140BFED84B00854006500
      78007400045465787406BFED84B00C2500200041004A0055002E00062520414A
      552EBFED84B00654006F00700003546F700500E8D5C4B3A291C0FE3FBFED84B0
      0A57006900640074006800055769647468050040EB51B81E85EBFD3FBFED84B0
      00000000BFED84B0125400520061007600650054006500780074000954526176
      6554657874BFED84B00A5400650078007400370005546578743708BFED84B008
      46006F006E00740004466F6E7408BFED84B00E43006800610072007300650074
      0007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F72
      0100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072006900
      61006C0005417269616CBFED84B008530069007A0065000453697A650109BFED
      84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B00000
      BFED84B01646006F006E0074004A007500730074006900660079000B466F6E74
      4A75737469667900BFED84B00C70006A004C0065006600740006706A4C656674
      BFED84B0084C00650066007400044C6566740500C8B63FC850D9D50140BFED84
      B0085400650078007400045465787406BFED84B01656004C0052002E00200041
      004A0055005300540045000B564C522E20414A55535445BFED84B00654006F00
      700003546F700500985F2CF9C592BFFE3FBFED84B00A57006900640074006800
      055769647468050000000000000080FF3FBFED84B000000000BFED84B01A5400
      5200610076006500440061007400610054006500780074000D54526176654461
      746154657874BFED84B012440061007400610054006500780074003900094461
      7461546578743908BFED84B00846006F006E00740004466F6E7408BFED84B00E
      430068006100720073006500740007436861727365740101BFED84B00A43006F
      006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D
      6506BFED84B00A41007200690061006C0005417269616CBFED84B00853006900
      7A0065000453697A65010ABFED84B00A5300740079006C006500055374796C65
      07BFED84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300
      74006900660079000B466F6E744A75737469667900BFED84B01070006A004300
      65006E0074006500720008706A43656E746572BFED84B0084C00650066007400
      044C656674050000DD1F64A8ECB00040BFED84B0085400650078007400045465
      787406BFED84B01850006100720061006D002E00760061004400610074006100
      0C506172616D2E766144617461BFED84B00654006F00700003546F70050020C7
      711CC771DCFD3FBFED84B00A5700690064007400680005576964746805007066
      66666666A6FF3FBFED84B01244006100740061004600690065006C0064000944
      6174614669656C6406BFED84B01850006100720061006D002E00760061004400
      6100740061000C506172616D2E766144617461BFED84B000000000BFED84B01A
      54005200610076006500440061007400610054006500780074000D5452617665
      4461746154657874BFED84B01444006100740061005400650078007400310030
      000A4461746154657874313008BFED84B00846006F006E00740004466F6E7408
      BFED84B00E430068006100720073006500740007436861727365740101BFED84
      B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D0065
      00044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B0
      08530069007A0065000453697A650109BFED84B00A5300740079006C00650005
      5374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A
      007500730074006900660079000B466F6E744A75737469667900BFED84B01070
      006A00430065006E0074006500720008706A43656E746572BFED84B0084C0065
      0066007400044C65667405004825BF58F28BED0140BFED84B008540065007800
      7400045465787406BFED84B0545200650070006F00720074002E004300750072
      00720065006E00740050006100670065002B00270020002F00200027002B0052
      00650070006F00720074002E0054006F00740061006C00500061006700650073
      002A5265706F72742E43757272656E74506167652B27202F20272B5265706F72
      742E546F74616C5061676573BFED84B00654006F00700003546F700500B0269E
      158D04FCFD3FBFED84B00A570069006400740068000557696474680500E0941D
      A62EB79FFE3FBFED84B01244006100740061004600690065006C006400094461
      74614669656C6406BFED84B0545200650070006F00720074002E004300750072
      00720065006E00740050006100670065002B00270020002F00200027002B0052
      00650070006F00720074002E0054006F00740061006C00500061006700650073
      002A5265706F72742E43757272656E74506167652B27202F20272B5265706F72
      742E546F74616C5061676573BFED84B000000000BFED84B01A54005200610076
      006500440061007400610054006500780074000D545261766544617461546578
      74BFED84B01444006100740061005400650078007400310031000A4461746154
      657874313108BFED84B00846006F006E00740004466F6E7408BFED84B00E4300
      68006100720073006500740007436861727365740101BFED84B00A43006F006C
      006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506
      BFED84B00A41007200690061006C0005417269616CBFED84B008530069007A00
      65000453697A65010CBFED84B00A5300740079006C006500055374796C6507BF
      ED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073007400
      6900660079000B466F6E744A75737469667900BFED84B00C70006A004C006500
      6600740006706A4C656674BFED84B0084C00650066007400044C656674050000
      E9933EE993FEFE3FBFED84B0085400650078007400045465787406BFED84B01C
      50006100720061006D002E00760061004E006F006D005200650070000E506172
      616D2E76614E6F6D526570BFED84B00654006F00700003546F70050010CF8A46
      02BEB9FD3FBFED84B00A57006900640074006800055769647468050050A0158D
      047C93FE3FBFED84B01244006100740061004600690065006C00640009446174
      614669656C6406BFED84B01C50006100720061006D002E00760061004E006F00
      6D005200650070000E506172616D2E76614E6F6D526570BFED84B0000000}
  end
  object RvClientConsE504Cap: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ClientConsE504Cap
    Left = 808
    Top = 88
  end
  object ConsE504CapAgru: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ConsE504CapAgruCalcFields
    Parameters = <
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'CODREP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODFIL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select sum(e301mcr.vlrbco) as total_base, round(sum(e504cap.vlrc' +
        'om),2) as total_comissao, e504cap.codemp,e504cap.codfil,e504cap.' +
        'codrep,e504cap.datbas,e504cap.codtns,'
      '       e301tcr.codcli,'
      '       e085cli.nomcli,'
      '       e140nfv.codcpg,e140nfv.numnfv,'
      
        '       e028cpg.descpg,e028cpg.przmed,e028cpg.percom,e028cpg.usu_' +
        'perapl'
      'from e504cap'
      'inner join e301tcr on e301tcr.codemp = e504cap.codemp and'
      '                      e301tcr.codfil = e504cap.codfil and'
      '                      e301tcr.numtit = e504cap.numtit and'
      '                      e301tcr.codtpt = e504cap.codtpt'
      'inner join e301mcr on e301mcr.codemp = e504cap.codemp and'
      '                      e301mcr.codfil = e504cap.codfil and'
      '                      e301mcr.numtit = e504cap.numtit and'
      '                      e301mcr.codtpt = e504cap.codtpt and'
      '                      e301mcr.seqmov = e504cap.seqmov'
      'inner join e085cli on e085cli.codcli = e301tcr.codcli'
      'inner join e140nfv on e140nfv.codemp = e301tcr.codemp and'
      '                      e140nfv.codfil = e301tcr.filnfv and'
      '                      e140nfv.codsnf = e301tcr.codsnf and'
      '                      e140nfv.numnfv = e301tcr.numnfv'
      'inner join e028cpg on e028cpg.codemp = e140nfv.codemp and'
      '                      e028cpg.codcpg = e140nfv.codcpg'
      'where datbas between :DATINI and :DATFIM and'
      '      e504cap.codrep = :CODREP and'
      '      e504cap.codfil = :CODFIL and'
      
        '      not (e504cap.codtns in ('#39'90590'#39','#39'90599'#39','#39'90581'#39','#39'90591'#39')) ' +
        'and'
      '      e140nfv.sitnfv = '#39'2'#39' and'
      '      e504cap.vlrcom > 0'
      
        'group by e504cap.codemp,e504cap.codfil,e504cap.codrep,e504cap.da' +
        'tbas,e504cap.codtns,'
      '       e301tcr.codcli,'
      '       e085cli.nomcli,'
      '       e140nfv.codcpg,e140nfv.numnfv,'
      
        '       e028cpg.descpg,e028cpg.przmed,e028cpg.percom,e028cpg.usu_' +
        'perapl'
      '       order by e140nfv.numnfv')
    Left = 1096
    Top = 16
    object ConsE504CapAgruTOTAL_BASE: TFMTBCDField
      FieldName = 'TOTAL_BASE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ConsE504CapAgruCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE504CapAgruCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE504CapAgruCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE504CapAgruDATBAS: TDateTimeField
      FieldName = 'DATBAS'
    end
    object ConsE504CapAgruCODTNS: TStringField
      FieldName = 'CODTNS'
      Size = 5
    end
    object ConsE504CapAgruCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE504CapAgruNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsE504CapAgruCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsE504CapAgruNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object ConsE504CapAgruDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ConsE504CapAgruPRZMED: TIntegerField
      FieldName = 'PRZMED'
    end
    object ConsE504CapAgruPERCOM: TBCDField
      FieldName = 'PERCOM'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 5
      Size = 2
    end
    object ConsE504CapAgruUSU_PERAPL: TBCDField
      FieldName = 'USU_PERAPL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 5
      Size = 2
    end
    object ConsE504CapAgruTOTAL_COMISSAO: TFMTBCDField
      FieldName = 'TOTAL_COMISSAO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ConsE504CapAgruvnVlrReajuste: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vnVlrReajuste'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object ConsE504CapAgruvnTotalComissao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vnTotalComissao'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object ConsE504CapAgruvnDezeAvos: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vnDezeAvos'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object ConsE504CapAgruvaNumTit: TStringField
      FieldKind = fkCalculated
      FieldName = 'vaNumTit'
      Size = 10
      Calculated = True
    end
    object ConsE504CapAgruvnTotalPercentual: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vnTotalPercentual'
      Calculated = True
    end
    object ConsE504CapAgruvnPerRepresenta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vnPerRepresenta'
      Calculated = True
    end
  end
  object RvAjusteComissaoAgru: TRvProject
    Engine = RvSysCoresPorProduto
    ProjectFile = 
      'C:\DelphiSapiens\SapiensDelphi\RelatoriosRave\AjusteComissaoAgru' +
      '.rav'
    Left = 1024
    Top = 72
    RaveBlobNew = {
      D52D00002CE36A4D9357E4405241561A803801000000BFED84B00E5200650070
      006F00720074003100075265706F72743100BFED84B026540052006100760065
      00500072006F006A006500630074004D0061006E006100670065007200135452
      61766550726F6A6563744D616E61676572BFED84B01652006100760065005000
      72006F006A006500630074000B5261766550726F6A65637408BFED84B01A4300
      6F006D00700069006C0065004E00650065006400650064000D436F6D70696C65
      4E656564656400BFED84B00A460061006C00730065000546616C7365BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B016
      5200610076006500500072006F006A006500630074000B5261766550726F6A65
      6374BFED84B014430061007400650067006F0072006900650073000A43617465
      676F7269657308BFED84B00000BFED84B01450006100720061006D0065007400
      6500720073000A506172616D657465727308BFED84B00000BFED84B00C500049
      0056006100720073000650495661727308BFED84B00000BFED84B01655006E00
      69007400730046006100630074006F0072000B556E697473466163746F720500
      303333333333CB0340BFED84B000000006BFED84B0224400760043006F006E00
      730045003500300034004300610070004100670072007500114476436F6E7345
      35303443617041677275BFED84B01A5400520061007600650044006100740061
      0056006900650077000D54526176654461746156696577004118000000BFED84
      B01A54005200610076006500440061007400610056006900650077000D545261
      76654461746156696577BFED84B0224400760043006F006E0073004500350030
      0034004300610070004100670072007500114476436F6E734535303443617041
      67727508BFED84B01A43006F006D00700069006C0065004E0065006500640065
      0064000D436F6D70696C654E656564656400BFED84B00A460061006C00730065
      000546616C7365BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B0224400760043006F006E007300450035003000340043
      00610070004100670072007500114476436F6E734535303443617041677275BF
      ED84B01C43006F006E006E0065006300740069006F006E004E0061006D006500
      0E436F6E6E656374696F6E4E616D6506BFED84B0225200760043006F006E0073
      0045003500300034004300610070004100670072007500115276436F6E734535
      303443617041677275BFED84B000001400BFED84B01A54005200610076006500
      4200430044004600690065006C0064000D54526176654243444669656C64BFED
      84B0364400760043006F006E0073004500350030003400430061007000410067
      007200750054004F00540041004C005F0042004100530045001B4476436F6E73
      4535303443617041677275544F54414C5F4241534508BFED84B0124600690065
      006C0064004E0061006D006500094669656C644E616D6506BFED84B01454004F
      00540041004C005F0042004100530045000A544F54414C5F42415345BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B014
      54004F00540041004C005F0042004100530045000A544F54414C5F42415345BF
      ED84B008530069007A0065000453697A650122BFED84B000000000BFED84B022
      5400520061007600650049006E00740065006700650072004600690065006C00
      6400115452617665496E74656765724669656C64BFED84B02E4400760043006F
      006E0073004500350030003400430061007000410067007200750043004F0044
      0045004D005000174476436F6E734535303443617041677275434F44454D5008
      BFED84B0124600690065006C0064004E0061006D006500094669656C644E616D
      6506BFED84B00C43004F00440045004D00500006434F44454D50BFED84B01046
      0075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C4300
      4F00440045004D00500006434F44454D50BFED84B008530069007A0065000453
      697A650104BFED84B000000000BFED84B0225400520061007600650049006E00
      740065006700650072004600690065006C006400115452617665496E74656765
      724669656C64BFED84B02E4400760043006F006E007300450035003000340043
      0061007000410067007200750043004F004400460049004C00174476436F6E73
      4535303443617041677275434F4446494C08BFED84B0124600690065006C0064
      004E0061006D006500094669656C644E616D6506BFED84B00C43004F00440046
      0049004C0006434F4446494CBFED84B010460075006C006C004E0061006D0065
      000846756C6C4E616D6506BFED84B00C43004F004400460049004C0006434F44
      46494CBFED84B008530069007A0065000453697A650104BFED84B000000000BF
      ED84B0225400520061007600650049006E007400650067006500720046006900
      65006C006400115452617665496E74656765724669656C64BFED84B02E440076
      0043006F006E0073004500350030003400430061007000410067007200750043
      004F004400520045005000174476436F6E734535303443617041677275434F44
      52455008BFED84B0124600690065006C0064004E0061006D006500094669656C
      644E616D6506BFED84B00C43004F00440052004500500006434F44524550BFED
      84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84
      B00C43004F00440052004500500006434F44524550BFED84B008530069007A00
      65000453697A650104BFED84B000000000BFED84B02454005200610076006500
      4400610074006500540069006D0065004600690065006C006400125452617665
      4461746554696D654669656C64BFED84B02E4400760043006F006E0073004500
      3500300034004300610070004100670072007500440041005400420041005300
      174476436F6E73453530344361704167727544415442415308BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      44004100540042004100530006444154424153BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C440041005400420041
      00530006444154424153BFED84B008530069007A0065000453697A650108BFED
      84B000000000BFED84B0205400520061007600650053007400720069006E0067
      004600690065006C006400105452617665537472696E674669656C64BFED84B0
      2E4400760043006F006E00730045003500300034004300610070004100670072
      00750043004F00440054004E005300174476436F6E7345353034436170416772
      75434F44544E5308BFED84B0124600690065006C0064004E0061006D00650009
      4669656C644E616D6506BFED84B00C43004F00440054004E00530006434F4454
      4E53BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D65
      06BFED84B00C43004F00440054004E00530006434F44544E53BFED84B0085300
      69007A0065000453697A650106BFED84B000000000BFED84B022540052006100
      7600650049006E00740065006700650072004600690065006C00640011545261
      7665496E74656765724669656C64BFED84B02E4400760043006F006E00730045
      00350030003400430061007000410067007200750043004F00440043004C0049
      00174476436F6E734535303443617041677275434F44434C4908BFED84B01246
      00690065006C0064004E0061006D006500094669656C644E616D6506BFED84B0
      0C43004F00440043004C00490006434F44434C49BFED84B010460075006C006C
      004E0061006D0065000846756C6C4E616D6506BFED84B00C43004F0044004300
      4C00490006434F44434C49BFED84B008530069007A0065000453697A650104BF
      ED84B000000000BFED84B0205400520061007600650053007400720069006E00
      67004600690065006C006400105452617665537472696E674669656C64BFED84
      B02E4400760043006F006E007300450035003000340043006100700041006700
      720075004E004F004D0043004C004900174476436F6E73453530344361704167
      72754E4F4D434C4908BFED84B0124600690065006C0064004E0061006D006500
      094669656C644E616D6506BFED84B00C4E004F004D0043004C004900064E4F4D
      434C49BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D
      6506BFED84B00C4E004F004D0043004C004900064E4F4D434C49BFED84B00853
      0069007A0065000453697A650165BFED84B000000000BFED84B0205400520061
      007600650053007400720069006E0067004600690065006C0064001054526176
      65537472696E674669656C64BFED84B02E4400760043006F006E007300450035
      0030003400430061007000410067007200750043004F00440043005000470017
      4476436F6E734535303443617041677275434F4443504708BFED84B012460069
      0065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C43
      004F00440043005000470006434F44435047BFED84B010460075006C006C004E
      0061006D0065000846756C6C4E616D6506BFED84B00C43004F00440043005000
      470006434F44435047BFED84B008530069007A0065000453697A650107BFED84
      B000000000BFED84B0225400520061007600650049006E007400650067006500
      72004600690065006C006400115452617665496E74656765724669656C64BFED
      84B02E4400760043006F006E0073004500350030003400430061007000410067
      00720075004E0055004D004E0046005600174476436F6E734535303443617041
      6772754E554D4E465608BFED84B0124600690065006C0064004E0061006D0065
      00094669656C644E616D6506BFED84B00C4E0055004D004E0046005600064E55
      4D4E4656BFED84B010460075006C006C004E0061006D0065000846756C6C4E61
      6D6506BFED84B00C4E0055004D004E0046005600064E554D4E4656BFED84B008
      530069007A0065000453697A650104BFED84B000000000BFED84B02054005200
      61007600650053007400720069006E0067004600690065006C00640010545261
      7665537472696E674669656C64BFED84B02E4400760043006F006E0073004500
      3500300034004300610070004100670072007500440045005300430050004700
      174476436F6E73453530344361704167727544455343504708BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C
      44004500530043005000470006444553435047BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00C440045005300430050
      00470006444553435047BFED84B008530069007A0065000453697A650133BFED
      84B000000000BFED84B0225400520061007600650049006E0074006500670065
      0072004600690065006C006400115452617665496E74656765724669656C64BF
      ED84B02E4400760043006F006E00730045003500300034004300610070004100
      670072007500500052005A004D0045004400174476436F6E7345353034436170
      4167727550525A4D454408BFED84B0124600690065006C0064004E0061006D00
      6500094669656C644E616D6506BFED84B00C500052005A004D00450044000650
      525A4D4544BFED84B010460075006C006C004E0061006D0065000846756C6C4E
      616D6506BFED84B00C500052005A004D00450044000650525A4D4544BFED84B0
      08530069007A0065000453697A650104BFED84B000000000BFED84B01A540052
      006100760065004200430044004600690065006C0064000D5452617665424344
      4669656C64BFED84B02E4400760043006F006E00730045003500300034004300
      61007000410067007200750050004500520043004F004D00174476436F6E7345
      35303443617041677275504552434F4D08BFED84B0124600690065006C006400
      4E0061006D006500094669656C644E616D6506BFED84B00C5000450052004300
      4F004D0006504552434F4DBFED84B010460075006C006C004E0061006D006500
      0846756C6C4E616D6506BFED84B00C50004500520043004F004D000650455243
      4F4DBFED84B008530069007A0065000453697A650108BFED84B000000000BFED
      84B01A540052006100760065004200430044004600690065006C0064000D5452
      6176654243444669656C64BFED84B0364400760043006F006E00730045003500
      3000340043006100700041006700720075005500530055005F00500045005200
      410050004C001B4476436F6E7345353034436170416772755553555F50455241
      504C08BFED84B0124600690065006C0064004E0061006D006500094669656C64
      4E616D6506BFED84B0145500530055005F00500045005200410050004C000A55
      53555F50455241504CBFED84B010460075006C006C004E0061006D0065000846
      756C6C4E616D6506BFED84B0145500530055005F00500045005200410050004C
      000A5553555F50455241504CBFED84B008530069007A0065000453697A650108
      BFED84B000000000BFED84B01A54005200610076006500420043004400460069
      0065006C0064000D54526176654243444669656C64BFED84B03E440076004300
      6F006E0073004500350030003400430061007000410067007200750054004F00
      540041004C005F0043004F004D0049005300530041004F001F4476436F6E7345
      35303443617041677275544F54414C5F434F4D495353414F08BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B01C
      54004F00540041004C005F0043004F004D0049005300530041004F000E544F54
      414C5F434F4D495353414FBFED84B010460075006C006C004E0061006D006500
      0846756C6C4E616D6506BFED84B01C54004F00540041004C005F0043004F004D
      0049005300530041004F000E544F54414C5F434F4D495353414FBFED84B00853
      0069007A0065000453697A650122BFED84B000000000BFED84B01E5400520061
      007600650046006C006F00610074004600690065006C0064000F545261766546
      6C6F61744669656C64BFED84B03C4400760043006F006E007300450035003000
      3400430061007000410067007200750076006E0056006C007200520065006100
      6A0075007300740065001E4476436F6E734535303443617041677275766E566C
      725265616A7573746508BFED84B0124600690065006C0064004E0061006D0065
      00094669656C644E616D6506BFED84B01A76006E0056006C0072005200650061
      006A0075007300740065000D766E566C725265616A75737465BFED84B0104600
      75006C006C004E0061006D0065000846756C6C4E616D6506BFED84B01A76006E
      0056006C0072005200650061006A0075007300740065000D766E566C72526561
      6A75737465BFED84B008530069007A0065000453697A650108BFED84B0000000
      00BFED84B01E5400520061007600650046006C006F0061007400460069006500
      6C0064000F5452617665466C6F61744669656C64BFED84B0404400760043006F
      006E0073004500350030003400430061007000410067007200750076006E0054
      006F00740061006C0043006F006D0069007300730061006F00204476436F6E73
      4535303443617041677275766E546F74616C436F6D697373616F08BFED84B012
      4600690065006C0064004E0061006D006500094669656C644E616D6506BFED84
      B01E76006E0054006F00740061006C0043006F006D0069007300730061006F00
      0F766E546F74616C436F6D697373616FBFED84B010460075006C006C004E0061
      006D0065000846756C6C4E616D6506BFED84B01E76006E0054006F0074006100
      6C0043006F006D0069007300730061006F000F766E546F74616C436F6D697373
      616FBFED84B008530069007A0065000453697A650108BFED84B000000000BFED
      84B01E5400520061007600650046006C006F00610074004600690065006C0064
      000F5452617665466C6F61744669656C64BFED84B0364400760043006F006E00
      73004500350030003400430061007000410067007200750076006E0044006500
      7A006500410076006F0073001B4476436F6E734535303443617041677275766E
      44657A6541766F7308BFED84B0124600690065006C0064004E0061006D006500
      094669656C644E616D6506BFED84B01476006E00440065007A00650041007600
      6F0073000A766E44657A6541766F73BFED84B010460075006C006C004E006100
      6D0065000846756C6C4E616D6506BFED84B01476006E00440065007A00650041
      0076006F0073000A766E44657A6541766F73BFED84B008530069007A00650004
      53697A650108BFED84B000000000BFED84B02054005200610076006500530074
      00720069006E0067004600690065006C006400105452617665537472696E6746
      69656C64BFED84B0324400760043006F006E0073004500350030003400430061
      0070004100670072007500760061004E0075006D00540069007400194476436F
      6E73453530344361704167727576614E756D54697408BFED84B0124600690065
      006C0064004E0061006D006500094669656C644E616D6506BFED84B010760061
      004E0075006D005400690074000876614E756D546974BFED84B010460075006C
      006C004E0061006D0065000846756C6C4E616D6506BFED84B010760061004E00
      75006D005400690074000876614E756D546974BFED84B008530069007A006500
      0453697A65010BBFED84B000000000BFED84B01E540052006100760065004600
      6C006F00610074004600690065006C0064000F5452617665466C6F6174466965
      6C64BFED84B0444400760043006F006E00730045003500300034004300610070
      00410067007200750076006E0054006F00740061006C00500065007200630065
      006E007400750061006C00224476436F6E734535303443617041677275766E54
      6F74616C50657263656E7475616C08BFED84B0124600690065006C0064004E00
      61006D006500094669656C644E616D6506BFED84B02276006E0054006F007400
      61006C00500065007200630065006E007400750061006C0011766E546F74616C
      50657263656E7475616CBFED84B010460075006C006C004E0061006D00650008
      46756C6C4E616D6506BFED84B02276006E0054006F00740061006C0050006500
      7200630065006E007400750061006C0011766E546F74616C50657263656E7475
      616CBFED84B008530069007A0065000453697A650108BFED84B000000004BFED
      84B00E5200650070006F00720074003100075265706F7274310043130000BFED
      84B00A500061006700650031000550616765310100BFED84B00A500061006700
      6500310005506167653101BFED84B00A50006100670065003100055061676531
      00BFED84B016540052006100760065005200650070006F00720074000B545261
      76655265706F7274BFED84B00E5200650070006F00720074003100075265706F
      72743108BFED84B01A43006F006D00700069006C0065004E0065006500640065
      0064000D436F6D70696C654E656564656400BFED84B00A460061006C00730065
      000546616C7365BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00E5200650070006F00720074003100075265706F7274
      31BFED84B0124600690072007300740050006100670065000946697273745061
      676500BFED84B01A5200650070006F007200740031002E005000610067006500
      31000D5265706F7274312E5061676531BFED84B01450006100720061006D0065
      0074006500720073000A506172616D657465727308BFED84B00000BFED84B00C
      5000490056006100720073000650495661727308BFED84B00000BFED84B00000
      00009B11000000BFED84B0125400520061007600650050006100670065000954
      5261766550616765BFED84B00A5000610067006500310005506167653108BFED
      84B01A43006F006D00700069006C0065004E00650065006400650064000D436F
      6D70696C654E656564656400BFED84B00A460061006C00730065000546616C73
      65BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00A50006100670065003100055061676531BFED84B006420069006E00
      0342696E0201BFED84B01247007200690064004C0069006E0065007300094772
      69644C696E65730105BFED84B016470072006900640053007000610063006900
      6E0067000B4772696453706163696E67050048201008040281F73FBFED84B016
      4F007200690065006E0074006100740069006F006E000B4F7269656E74617469
      6F6E00BFED84B01270006F00440065006600610075006C00740009706F446566
      61756C74BFED84B01250006100700065007200530069007A0065000950617065
      7253697A650109BFED84B01450006100720061006D0065007400650072007300
      0A506172616D657465727308BFED84B00E53007400720069006E006700730007
      537472696E67730B010607766E546F74616C00BFED84B00000BFED84B00C5000
      490056006100720073000650495661727308BFED84B00000BFED84B000000100
      BFED84B0165400520061007600650052006500670069006F006E000B54526176
      65526567696F6EBFED84B00E52006500670069006F006E00310007526567696F
      6E3108BFED84B00C480065006900670068007400064865696768740500505555
      555555A90240BFED84B0084C00650066007400044C656674050000398EE3388E
      E3FA3FBFED84B00654006F00700003546F700500001032547698FAFE3FBFED84
      B00A57006900640074006800055769647468050018C7711CC771820240BFED84
      B01A43006F006C0075006D006E00530070006100630069006E0067000D436F6C
      756D6E53706163696E670500000000000000000000BFED84B000000200BFED84
      B01A540052006100760065004400610074006100420061006E0064000D545261
      76654461746142616E64BFED84B00E44006500740061006C0068006500074465
      74616C686508BFED84B00C41006E00630068006F00720006416E63686F720103
      BFED84B012420061006E0064005300740079006C0065000942616E645374796C
      6508BFED84B0105000720069006E0074004C006F006300085072696E744C6F63
      07BFED84B01070006C00440065007400610069006C0008706C44657461696CBF
      ED84B00000BFED84B00000BFED84B00C48006500690067006800740006486569
      676874050090999999999999FC3FBFED84B01A4D0069006E0048006500690067
      00680074004C006500660074000D4D696E4865696768744C6566740500000000
      000000000000BFED84B01A50006F0073006900740069006F006E00560061006C
      00750065000D506F736974696F6E56616C75650500000000000000000000BFED
      84B01A43006F006C0075006D006E00530070006100630069006E0067000D436F
      6C756D6E53706163696E670500000000000000000000BFED84B0104400610074
      006100560069006500770008446174615669657700BFED84B022440076004300
      6F006E0073004500350030003400430061007000410067007200750011447643
      6F6E734535303443617041677275BFED84B000000300BFED84B01A5400520061
      0076006500440061007400610054006500780074000D54526176654461746154
      657874BFED84B012440061007400610054006500780074003100094461746154
      6578743108BFED84B00846006F006E00740004466F6E7408BFED84B00E430068
      006100720073006500740007436861727365740101BFED84B00A43006F006C00
      6F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BF
      ED84B00A41007200690061006C0005417269616CBFED84B008530069007A0065
      000453697A650108BFED84B00A5300740079006C006500055374796C6507BFED
      84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300740069
      00660079000B466F6E744A75737469667900BFED84B00C70006A004C00650066
      00740006706A4C656674BFED84B0084C00650066007400044C6566740500D837
      AF269E15CDFD3FBFED84B0085400650078007400045465787406BFED84B01076
      0061004E0075006D005400690074000876614E756D546974BFED84B00654006F
      00700003546F700500A0507698BADCFEF63FBFED84B00A570069006400740068
      000557696474680500307DD2277DD2C7FE3FBFED84B012440061007400610046
      00690065006C00640009446174614669656C6406BFED84B010760061004E0075
      006D005400690074000876614E756D546974BFED84B010440061007400610056
      0069006500770008446174615669657700BFED84B0224400760043006F006E00
      730045003500300034004300610070004100670072007500114476436F6E7345
      35303443617041677275BFED84B000000000BFED84B01A540052006100760065
      00440061007400610054006500780074000D54526176654461746154657874BF
      ED84B01244006100740061005400650078007400320009446174615465787432
      08BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800610072
      0073006500740007436861727365740101BFED84B00A43006F006C006F007200
      05436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A
      41007200690061006C0005417269616CBFED84B008530069007A006500045369
      7A650108BFED84B00A5300740079006C006500055374796C6507BFED84B00000
      BFED84B00000BFED84B01646006F006E0074004A007500730074006900660079
      000B466F6E744A75737469667900BFED84B00C70006A004C0065006600740006
      706A4C656674BFED84B0084C00650066007400044C6566740500B8269E158D04
      ACFF3FBFED84B0085400650078007400045465787406BFED84B00C4E004F004D
      0043004C004900064E4F4D434C49BFED84B00654006F00700003546F70050068
      BC58F28B25BFF83FBFED84B00A57006900640074006800055769647468050040
      C80EB283ECB00040BFED84B01244006100740061004600690065006C00640009
      446174614669656C6406BFED84B00C4E004F004D0043004C004900064E4F4D43
      4C49BFED84B01044006100740061005600690065007700084461746156696577
      00BFED84B0224400760043006F006E0073004500350030003400430061007000
      4100670072007500114476436F6E734535303443617041677275BFED84B00000
      0000BFED84B01A54005200610076006500440061007400610054006500780074
      000D54526176654461746154657874BFED84B012440061007400610054006500
      7800740034000944617461546578743408BFED84B00846006F006E0074000446
      6F6E7408BFED84B00E4300680061007200730065007400074368617273657401
      01BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061
      006D006500044E616D6506BFED84B00A41007200690061006C0005417269616C
      BFED84B008530069007A0065000453697A650108BFED84B00A5300740079006C
      006500055374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E
      0074004A007500730074006900660079000B466F6E744A75737469667900BFED
      84B00E70006A005200690067006800740007706A5269676874BFED84B0084C00
      650066007400044C6566740500909999999999990140BFED84B0085400650078
      007400045465787406BFED84B01E76006E0054006F00740061006C0043006F00
      6D0069007300730061006F000F766E546F74616C436F6D697373616FBFED84B0
      0654006F00700003546F700500D8A3703D0AD7A3F83FBFED84B00A5700690064
      00740068000557696474680500D0CCCCCCCCCCCCFE3FBFED84B0124400610074
      0061004600690065006C00640009446174614669656C6406BFED84B01E76006E
      0054006F00740061006C0043006F006D0069007300730061006F000F766E546F
      74616C436F6D697373616FBFED84B01044006100740061005600690065007700
      08446174615669657700BFED84B0224400760043006F006E0073004500350030
      0034004300610070004100670072007500114476436F6E734535303443617041
      677275BFED84B000000000BFED84B01254005200610076006500420061006E00
      640009545261766542616E64BFED84B00A54006F00740061006C0005546F7461
      6C08BFED84B00C41006E00630068006F00720006416E63686F720103BFED84B0
      12420061006E0064005300740079006C0065000942616E645374796C6508BFED
      84B0105000720069006E0074004C006F006300085072696E744C6F6307BFED84
      B01870006C0042006F006400790046006F006F007400650072000C706C426F64
      79466F6F746572BFED84B00000BFED84B00000BFED84B01C43006F006E007400
      72006F006C006C0065007200420061006E0064000E436F6E74726F6C6C657242
      616E6400BFED84B00E44006500740061006C006800650007446574616C6865BF
      ED84B00C48006500690067006800740006486569676874050000A54FFAA44FDA
      FE3FBFED84B01A4D0069006E004800650069006700680074004C006500660074
      000D4D696E4865696768744C6566740500000000000000000000BFED84B01A50
      006F0073006900740069006F006E00560061006C00750065000D506F73697469
      6F6E56616C75650500000000000000000000BFED84B000000200BFED84B01254
      005200610076006500540065007800740009545261766554657874BFED84B00A
      5400650078007400310005546578743108BFED84B00846006F006E0074000446
      6F6E7408BFED84B00E4300680061007200730065007400074368617273657401
      01BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061
      006D006500044E616D6506BFED84B00A41007200690061006C0005417269616C
      BFED84B008530069007A0065000453697A65010ABFED84B00A5300740079006C
      006500055374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E
      0074004A007500730074006900660079000B466F6E744A75737469667900BFED
      84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00650066
      007400044C656674050090E3388EE338BA0140BFED84B0085400650078007400
      045465787406BFED84B00C54006F00740061006C003A0006546F74616C3ABFED
      84B00654006F00700003546F70050040398EE3388EE3FA3FBFED84B00A570069
      006400740068000557696474680500801CC7711CC7F1FD3FBFED84B000000000
      BFED84B01A54005200610076006500440061007400610054006500780074000D
      54526176654461746154657874BFED84B0124400610074006100540065007800
      740035000944617461546578743508BFED84B00846006F006E00740004466F6E
      7408BFED84B00E430068006100720073006500740007436861727365740101BF
      ED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D
      006500044E616D6506BFED84B00A41007200690061006C0005417269616CBFED
      84B008530069007A0065000453697A65010ABFED84B00A5300740079006C0065
      00055374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E0074
      004A007500730074006900660079000B466F6E744A75737469667900BFED84B0
      0C70006A004C0065006600740006706A4C656674BFED84B0084C006500660074
      00044C6566740500F8AC6824E09BC70140BFED84B00854006500780074000454
      65787406BFED84B01A50006100720061006D002E0076006E0054006F00740061
      006C000D506172616D2E766E546F74616CBFED84B00654006F00700003546F70
      050028DB40A70D74DAFA3FBFED84B00A57006900640074006800055769647468
      050000000000000080FF3FBFED84B01244006100740061004600690065006C00
      640009446174614669656C6406BFED84B01A50006100720061006D002E007600
      6E0054006F00740061006C000D506172616D2E766E546F74616CBFED84B00000
      00}
  end
  object RvConsE504CapAgru: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ConsE504CapAgru
    Left = 1032
    Top = 128
  end
  object AjustaE504Cap: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e504cap.codemp,e504cap.codfil,e504cap.codrep,e504cap.seqc' +
        'om,e504cap.datbas,e504cap.datlib,'
      
        '       e504cap.codtns,e504cap.vlrcom,e504cap.numtit,e504cap.codt' +
        'pt,e504cap.codfor,e504cap.seqmov,'
      '       e301tcr.codcli,e301tcr.vctpro,e301tcr.vlrabe,'
      '       e301mcr.vlrbco,e301mcr.datmov,'
      '       e085cli.nomcli,'
      '       e140nfv.codcpg,'
      
        '       e028cpg.descpg,e028cpg.przmed,e028cpg.percom,e028cpg.usu_' +
        'perapl,'
      '       e090rep.aperep'
      'from e504cap'
      'inner join e301tcr on e301tcr.codemp = e504cap.codemp and'
      '                      e301tcr.codfil = e504cap.codfil and'
      '                      e301tcr.numtit = e504cap.numtit and'
      '                      e301tcr.codtpt = e504cap.codtpt'
      'inner join e301mcr on e301mcr.codemp = e504cap.codemp and'
      '                      e301mcr.codfil = e504cap.codfil and'
      '                      e301mcr.numtit = e504cap.numtit and'
      '                      e301mcr.codtpt = e504cap.codtpt and'
      '                      e301mcr.seqmov = e504cap.seqmov'
      'inner join e085cli on e085cli.codcli = e301tcr.codcli'
      'inner join e140nfv on e140nfv.codemp = e301tcr.codemp and'
      '                      e140nfv.codfil = e301tcr.filnfv and'
      '                      e140nfv.codsnf = e301tcr.codsnf and'
      '                      e140nfv.numnfv = e301tcr.numnfv'
      'inner join e028cpg on e028cpg.codemp = e140nfv.codemp and'
      '                      e028cpg.codcpg = e140nfv.codcpg'
      'inner join e090rep on e090rep.codrep = e504cap.codrep'
      'where datbas between :DATINI and :DATFIM and'
      
        '       not (e504cap.codtns in ('#39'90590'#39','#39'90599'#39','#39'90581'#39','#39'90591'#39'))' +
        ' and'
      '       e140nfv.sitnfv = '#39'2'#39' and'
      '      e504cap.vlrcom > 0'
      'order by e504cap.codfil, e504cap.numtit')
    Left = 1278
    Top = 32
    object AjustaE504CapCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object AjustaE504CapCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object AjustaE504CapCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object AjustaE504CapSEQCOM: TIntegerField
      FieldName = 'SEQCOM'
    end
    object AjustaE504CapDATBAS: TDateTimeField
      FieldName = 'DATBAS'
    end
    object AjustaE504CapDATLIB: TDateTimeField
      FieldName = 'DATLIB'
    end
    object AjustaE504CapCODTNS: TStringField
      FieldName = 'CODTNS'
      Size = 5
    end
    object AjustaE504CapVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object AjustaE504CapNUMTIT: TStringField
      FieldName = 'NUMTIT'
      Size = 15
    end
    object AjustaE504CapCODTPT: TStringField
      FieldName = 'CODTPT'
      Size = 3
    end
    object AjustaE504CapCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object AjustaE504CapSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object AjustaE504CapCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object AjustaE504CapVCTPRO: TDateTimeField
      FieldName = 'VCTPRO'
    end
    object AjustaE504CapVLRABE: TBCDField
      FieldName = 'VLRABE'
      Precision = 15
      Size = 2
    end
    object AjustaE504CapVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object AjustaE504CapDATMOV: TDateTimeField
      FieldName = 'DATMOV'
    end
    object AjustaE504CapNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object AjustaE504CapCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object AjustaE504CapDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object AjustaE504CapPRZMED: TIntegerField
      FieldName = 'PRZMED'
    end
    object AjustaE504CapPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object AjustaE504CapUSU_PERAPL: TBCDField
      FieldName = 'USU_PERAPL'
      Precision = 5
      Size = 2
    end
    object AjustaE504CapAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
  end
  object ProviderAjustaE504Cap: TDataSetProvider
    DataSet = AjustaE504Cap
    Left = 1278
    Top = 88
  end
  object ClientAjustaE504Cap: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderAjustaE504Cap'
    OnCalcFields = ClientAjustaE504CapCalcFields
    OnReconcileError = ClientAjustaE504CapReconcileError
    Left = 1278
    Top = 144
    object ClientAjustaE504CapCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ClientAjustaE504CapCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ClientAjustaE504CapCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ClientAjustaE504CapSEQCOM: TIntegerField
      FieldName = 'SEQCOM'
    end
    object ClientAjustaE504CapDATBAS: TDateTimeField
      FieldName = 'DATBAS'
    end
    object ClientAjustaE504CapDATLIB: TDateTimeField
      FieldName = 'DATLIB'
    end
    object ClientAjustaE504CapCODTNS: TStringField
      FieldName = 'CODTNS'
      Size = 5
    end
    object ClientAjustaE504CapVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ClientAjustaE504CapNUMTIT: TStringField
      FieldName = 'NUMTIT'
      Size = 15
    end
    object ClientAjustaE504CapCODTPT: TStringField
      FieldName = 'CODTPT'
      Size = 3
    end
    object ClientAjustaE504CapCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ClientAjustaE504CapSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object ClientAjustaE504CapvnComissao_Real: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnComissao_Real'
    end
    object ClientAjustaE504CapCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ClientAjustaE504CapVCTPRO: TDateTimeField
      FieldName = 'VCTPRO'
    end
    object ClientAjustaE504CapVLRABE: TBCDField
      FieldName = 'VLRABE'
      Precision = 15
      Size = 2
    end
    object ClientAjustaE504CapVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ClientAjustaE504CapDATMOV: TDateTimeField
      FieldName = 'DATMOV'
    end
    object ClientAjustaE504CapNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ClientAjustaE504CapCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ClientAjustaE504CapDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ClientAjustaE504CapPRZMED: TIntegerField
      FieldName = 'PRZMED'
    end
    object ClientAjustaE504CapPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ClientAjustaE504CapUSU_PERAPL: TBCDField
      FieldName = 'USU_PERAPL'
      Precision = 5
      Size = 2
    end
    object ClientAjustaE504CapvnPerComissao_Real: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnPerComissao_Real'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientAjustaE504CapvnDiferenca: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnDiferenca'
    end
    object ClientAjustaE504CapvnPerComissaoNF: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnPerComissaoNF'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientAjustaE504CapAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ClientAjustaE504CapvnTotalDiferenca: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalDiferenca'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(VNDIFERENCA)'
    end
  end
  object ConsProdutosNF: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMNFV'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODFIL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e140ipv.codemp,e140ipv.codfil,e140ipv.numnfv,e140ipv.tnsp' +
        'ro,'
      
        '       e140ipv.numped,e140ipv.codpro,e140ipv.codder,e140ipv.cpli' +
        'pv,e140ipv.codfam,'
      
        '       e140ipv.codtpr,e140ipv.preuni,e140ipv.percom,e140ipv.vlrb' +
        'ru,'
      '       e081itp.prebas as Valor_Tabela'
      'from e140ipv'
      'inner join e081itp on e081itp.codemp = e140ipv.codemp and'
      '                      e081itp.codtpr = e140ipv.codtpr and'
      '                      e081itp.codpro = e140ipv.codpro and'
      '                      e081itp.codder = e140ipv.codder'
      'where'
      'e140ipv.numnfv = :NUMNFV and'
      'e140ipv.codfil = :CODFIL'
      'order by e140ipv.codpro,e140ipv.codder')
    Left = 1144
    Top = 200
    object ConsProdutosNFCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsProdutosNFCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsProdutosNFNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object ConsProdutosNFTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsProdutosNFNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsProdutosNFCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsProdutosNFCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsProdutosNFCPLIPV: TStringField
      FieldName = 'CPLIPV'
      Size = 250
    end
    object ConsProdutosNFCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsProdutosNFCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsProdutosNFPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsProdutosNFPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsProdutosNFVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ConsProdutosNFVALOR_TABELA: TFMTBCDField
      FieldName = 'VALOR_TABELA'
      Precision = 14
      Size = 5
    end
  end
  object ClientConsProdutosNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderConsProdutosNF'
    OnCalcFields = ClientConsProdutosNFCalcFields
    Left = 1144
    Top = 312
    object ClientConsProdutosNFCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ClientConsProdutosNFCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ClientConsProdutosNFNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object ClientConsProdutosNFTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ClientConsProdutosNFNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ClientConsProdutosNFCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ClientConsProdutosNFCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ClientConsProdutosNFCPLIPV: TStringField
      FieldName = 'CPLIPV'
      Size = 250
    end
    object ClientConsProdutosNFCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ClientConsProdutosNFCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ClientConsProdutosNFPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ClientConsProdutosNFPERCOM: TBCDField
      FieldName = 'PERCOM'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 5
      Size = 2
    end
    object ClientConsProdutosNFVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ClientConsProdutosNFVALOR_TABELA: TFMTBCDField
      FieldName = 'VALOR_TABELA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ClientConsProdutosNFvnPerDesc: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnPerDesc'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object ProviderConsProdutosNF: TDataSetProvider
    DataSet = ConsProdutosNF
    Left = 1144
    Top = 248
  end
  object RvRenderText1: TRvRenderText
    DisplayName = 'Plain Text (TXT)'
    FileExtension = '*.txt'
    CPI = 10.000000000000000000
    LPI = 6.000000000000000000
    Left = 880
    Top = 328
  end
  object RvAjusteComissaoAgru1: TRvProject
    Engine = RvSysCoresPorProduto
    ProjectFile = 
      'C:\DelphiSapiens\SapiensDelphi\RelatoriosRave\AjusteComissaoAgru' +
      '1.rav'
    Left = 1152
    Top = 72
    RaveBlobNew = {
      CF2D0000E4005D2D9357E4405241561A803801000000BFED84B00E5200650070
      006F00720074003100075265706F72743100BFED84B026540052006100760065
      00500072006F006A006500630074004D0061006E006100670065007200135452
      61766550726F6A6563744D616E61676572BFED84B01652006100760065005000
      72006F006A006500630074000B5261766550726F6A65637408BFED84B01A4300
      6F006D00700069006C0065004E00650065006400650064000D436F6D70696C65
      4E656564656400BFED84B00A460061006C00730065000546616C7365BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B016
      5200610076006500500072006F006A006500630074000B5261766550726F6A65
      6374BFED84B014430061007400650067006F0072006900650073000A43617465
      676F7269657308BFED84B00000BFED84B01450006100720061006D0065007400
      6500720073000A506172616D657465727308BFED84B00000BFED84B00C500049
      0056006100720073000650495661727308BFED84B00000BFED84B01655006E00
      69007400730046006100630074006F0072000B556E697473466163746F720500
      303333333333CB0340BFED84B000000006BFED84B0224400760043006F006E00
      730045003500300034004300610070004100670072007500114476436F6E7345
      35303443617041677275BFED84B01A5400520061007600650044006100740061
      0056006900650077000D54526176654461746156696577004718000000BFED84
      B01A54005200610076006500440061007400610056006900650077000D545261
      76654461746156696577BFED84B0224400760043006F006E0073004500350030
      0034004300610070004100670072007500114476436F6E734535303443617041
      67727508BFED84B01A43006F006D00700069006C0065004E0065006500640065
      0064000D436F6D70696C654E656564656400BFED84B00A460061006C00730065
      000546616C7365BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B0244400760043006F006E007300450035003000340043
      006100700041006700720075003100124476436F6E7345353034436170416772
      7531BFED84B01C43006F006E006E0065006300740069006F006E004E0061006D
      0065000E436F6E6E656374696F6E4E616D6506BFED84B0245200760043006F00
      6E00730045003500300034004300610070004100670072007500310012527643
      6F6E73453530344361704167727531BFED84B000001400BFED84B01A54005200
      6100760065004200430044004600690065006C0064000D545261766542434446
      69656C64BFED84B0364400760043006F006E0073004500350030003400430061
      007000410067007200750054004F00540041004C005F0042004100530045001B
      4476436F6E734535303443617041677275544F54414C5F4241534508BFED84B0
      124600690065006C0064004E0061006D006500094669656C644E616D6506BFED
      84B01454004F00540041004C005F0042004100530045000A544F54414C5F4241
      5345BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D65
      06BFED84B01454004F00540041004C005F0042004100530045000A544F54414C
      5F42415345BFED84B008530069007A0065000453697A650122BFED84B0000000
      00BFED84B0225400520061007600650049006E00740065006700650072004600
      690065006C006400115452617665496E74656765724669656C64BFED84B02E44
      00760043006F006E007300450035003000340043006100700041006700720075
      0043004F00440045004D005000174476436F6E73453530344361704167727543
      4F44454D5008BFED84B0124600690065006C0064004E0061006D006500094669
      656C644E616D6506BFED84B00C43004F00440045004D00500006434F44454D50
      BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BF
      ED84B00C43004F00440045004D00500006434F44454D50BFED84B00853006900
      7A0065000453697A650104BFED84B000000000BFED84B0225400520061007600
      650049006E00740065006700650072004600690065006C006400115452617665
      496E74656765724669656C64BFED84B02E4400760043006F006E007300450035
      0030003400430061007000410067007200750043004F004400460049004C0017
      4476436F6E734535303443617041677275434F4446494C08BFED84B012460069
      0065006C0064004E0061006D006500094669656C644E616D6506BFED84B00C43
      004F004400460049004C0006434F4446494CBFED84B010460075006C006C004E
      0061006D0065000846756C6C4E616D6506BFED84B00C43004F00440046004900
      4C0006434F4446494CBFED84B008530069007A0065000453697A650104BFED84
      B000000000BFED84B0225400520061007600650049006E007400650067006500
      72004600690065006C006400115452617665496E74656765724669656C64BFED
      84B02E4400760043006F006E0073004500350030003400430061007000410067
      007200750043004F004400520045005000174476436F6E734535303443617041
      677275434F4452455008BFED84B0124600690065006C0064004E0061006D0065
      00094669656C644E616D6506BFED84B00C43004F00440052004500500006434F
      44524550BFED84B010460075006C006C004E0061006D0065000846756C6C4E61
      6D6506BFED84B00C43004F00440052004500500006434F44524550BFED84B008
      530069007A0065000453697A650104BFED84B000000000BFED84B02454005200
      6100760065004400610074006500540069006D0065004600690065006C006400
      1254526176654461746554696D654669656C64BFED84B02E4400760043006F00
      6E00730045003500300034004300610070004100670072007500440041005400
      420041005300174476436F6E73453530344361704167727544415442415308BF
      ED84B0124600690065006C0064004E0061006D006500094669656C644E616D65
      06BFED84B00C44004100540042004100530006444154424153BFED84B0104600
      75006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C440041
      00540042004100530006444154424153BFED84B008530069007A006500045369
      7A650108BFED84B000000000BFED84B020540052006100760065005300740072
      0069006E0067004600690065006C006400105452617665537472696E67466965
      6C64BFED84B02E4400760043006F006E00730045003500300034004300610070
      00410067007200750043004F00440054004E005300174476436F6E7345353034
      43617041677275434F44544E5308BFED84B0124600690065006C0064004E0061
      006D006500094669656C644E616D6506BFED84B00C43004F00440054004E0053
      0006434F44544E53BFED84B010460075006C006C004E0061006D006500084675
      6C6C4E616D6506BFED84B00C43004F00440054004E00530006434F44544E53BF
      ED84B008530069007A0065000453697A650106BFED84B000000000BFED84B022
      5400520061007600650049006E00740065006700650072004600690065006C00
      6400115452617665496E74656765724669656C64BFED84B02E4400760043006F
      006E0073004500350030003400430061007000410067007200750043004F0044
      0043004C004900174476436F6E734535303443617041677275434F44434C4908
      BFED84B0124600690065006C0064004E0061006D006500094669656C644E616D
      6506BFED84B00C43004F00440043004C00490006434F44434C49BFED84B01046
      0075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C4300
      4F00440043004C00490006434F44434C49BFED84B008530069007A0065000453
      697A650104BFED84B000000000BFED84B0205400520061007600650053007400
      720069006E0067004600690065006C006400105452617665537472696E674669
      656C64BFED84B02E4400760043006F006E007300450035003000340043006100
      700041006700720075004E004F004D0043004C004900174476436F6E73453530
      34436170416772754E4F4D434C4908BFED84B0124600690065006C0064004E00
      61006D006500094669656C644E616D6506BFED84B00C4E004F004D0043004C00
      4900064E4F4D434C49BFED84B010460075006C006C004E0061006D0065000846
      756C6C4E616D6506BFED84B00C4E004F004D0043004C004900064E4F4D434C49
      BFED84B008530069007A0065000453697A650165BFED84B000000000BFED84B0
      205400520061007600650053007400720069006E0067004600690065006C0064
      00105452617665537472696E674669656C64BFED84B02E4400760043006F006E
      0073004500350030003400430061007000410067007200750043004F00440043
      0050004700174476436F6E734535303443617041677275434F4443504708BFED
      84B0124600690065006C0064004E0061006D006500094669656C644E616D6506
      BFED84B00C43004F00440043005000470006434F44435047BFED84B010460075
      006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C43004F00
      440043005000470006434F44435047BFED84B008530069007A0065000453697A
      650107BFED84B000000000BFED84B0225400520061007600650049006E007400
      65006700650072004600690065006C006400115452617665496E746567657246
      69656C64BFED84B02E4400760043006F006E0073004500350030003400430061
      00700041006700720075004E0055004D004E0046005600174476436F6E734535
      3034436170416772754E554D4E465608BFED84B0124600690065006C0064004E
      0061006D006500094669656C644E616D6506BFED84B00C4E0055004D004E0046
      005600064E554D4E4656BFED84B010460075006C006C004E0061006D00650008
      46756C6C4E616D6506BFED84B00C4E0055004D004E0046005600064E554D4E46
      56BFED84B008530069007A0065000453697A650104BFED84B000000000BFED84
      B0205400520061007600650053007400720069006E0067004600690065006C00
      6400105452617665537472696E674669656C64BFED84B02E4400760043006F00
      6E00730045003500300034004300610070004100670072007500440045005300
      430050004700174476436F6E73453530344361704167727544455343504708BF
      ED84B0124600690065006C0064004E0061006D006500094669656C644E616D65
      06BFED84B00C44004500530043005000470006444553435047BFED84B0104600
      75006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C440045
      00530043005000470006444553435047BFED84B008530069007A006500045369
      7A650133BFED84B000000000BFED84B0225400520061007600650049006E0074
      0065006700650072004600690065006C006400115452617665496E7465676572
      4669656C64BFED84B02E4400760043006F006E00730045003500300034004300
      610070004100670072007500500052005A004D0045004400174476436F6E7345
      3530344361704167727550525A4D454408BFED84B0124600690065006C006400
      4E0061006D006500094669656C644E616D6506BFED84B00C500052005A004D00
      450044000650525A4D4544BFED84B010460075006C006C004E0061006D006500
      0846756C6C4E616D6506BFED84B00C500052005A004D00450044000650525A4D
      4544BFED84B008530069007A0065000453697A650104BFED84B000000000BFED
      84B01A540052006100760065004200430044004600690065006C0064000D5452
      6176654243444669656C64BFED84B02E4400760043006F006E00730045003500
      30003400430061007000410067007200750050004500520043004F004D001744
      76436F6E734535303443617041677275504552434F4D08BFED84B01246006900
      65006C0064004E0061006D006500094669656C644E616D6506BFED84B00C5000
      4500520043004F004D0006504552434F4DBFED84B010460075006C006C004E00
      61006D0065000846756C6C4E616D6506BFED84B00C50004500520043004F004D
      0006504552434F4DBFED84B008530069007A0065000453697A650108BFED84B0
      00000000BFED84B01A540052006100760065004200430044004600690065006C
      0064000D54526176654243444669656C64BFED84B0364400760043006F006E00
      7300450035003000340043006100700041006700720075005500530055005F00
      500045005200410050004C001B4476436F6E7345353034436170416772755553
      555F50455241504C08BFED84B0124600690065006C0064004E0061006D006500
      094669656C644E616D6506BFED84B0145500530055005F005000450052004100
      50004C000A5553555F50455241504CBFED84B010460075006C006C004E006100
      6D0065000846756C6C4E616D6506BFED84B0145500530055005F005000450052
      00410050004C000A5553555F50455241504CBFED84B008530069007A00650004
      53697A650108BFED84B000000000BFED84B01A54005200610076006500420043
      0044004600690065006C0064000D54526176654243444669656C64BFED84B03E
      4400760043006F006E0073004500350030003400430061007000410067007200
      750054004F00540041004C005F0043004F004D0049005300530041004F001F44
      76436F6E734535303443617041677275544F54414C5F434F4D495353414F08BF
      ED84B0124600690065006C0064004E0061006D006500094669656C644E616D65
      06BFED84B01C54004F00540041004C005F0043004F004D004900530053004100
      4F000E544F54414C5F434F4D495353414FBFED84B010460075006C006C004E00
      61006D0065000846756C6C4E616D6506BFED84B01C54004F00540041004C005F
      0043004F004D0049005300530041004F000E544F54414C5F434F4D495353414F
      BFED84B008530069007A0065000453697A650122BFED84B000000000BFED84B0
      1E5400520061007600650046006C006F00610074004600690065006C0064000F
      5452617665466C6F61744669656C64BFED84B03C4400760043006F006E007300
      4500350030003400430061007000410067007200750076006E0056006C007200
      5200650061006A0075007300740065001E4476436F6E73453530344361704167
      7275766E566C725265616A7573746508BFED84B0124600690065006C0064004E
      0061006D006500094669656C644E616D6506BFED84B01A76006E0056006C0072
      005200650061006A0075007300740065000D766E566C725265616A75737465BF
      ED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED
      84B01A76006E0056006C0072005200650061006A0075007300740065000D766E
      566C725265616A75737465BFED84B008530069007A0065000453697A650108BF
      ED84B000000000BFED84B01E5400520061007600650046006C006F0061007400
      4600690065006C0064000F5452617665466C6F61744669656C64BFED84B04044
      00760043006F006E007300450035003000340043006100700041006700720075
      0076006E0054006F00740061006C0043006F006D0069007300730061006F0020
      4476436F6E734535303443617041677275766E546F74616C436F6D697373616F
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B01E76006E0054006F00740061006C0043006F006D0069007300
      730061006F000F766E546F74616C436F6D697373616FBFED84B010460075006C
      006C004E0061006D0065000846756C6C4E616D6506BFED84B01E76006E005400
      6F00740061006C0043006F006D0069007300730061006F000F766E546F74616C
      436F6D697373616FBFED84B008530069007A0065000453697A650108BFED84B0
      00000000BFED84B01E5400520061007600650046006C006F0061007400460069
      0065006C0064000F5452617665466C6F61744669656C64BFED84B03644007600
      43006F006E007300450035003000340043006100700041006700720075007600
      6E00440065007A006500410076006F0073001B4476436F6E7345353034436170
      41677275766E44657A6541766F7308BFED84B0124600690065006C0064004E00
      61006D006500094669656C644E616D6506BFED84B01476006E00440065007A00
      6500410076006F0073000A766E44657A6541766F73BFED84B010460075006C00
      6C004E0061006D0065000846756C6C4E616D6506BFED84B01476006E00440065
      007A006500410076006F0073000A766E44657A6541766F73BFED84B008530069
      007A0065000453697A650108BFED84B000000000BFED84B02054005200610076
      00650053007400720069006E0067004600690065006C00640010545261766553
      7472696E674669656C64BFED84B0324400760043006F006E0073004500350030
      0034004300610070004100670072007500760061004E0075006D005400690074
      00194476436F6E73453530344361704167727576614E756D54697408BFED84B0
      124600690065006C0064004E0061006D006500094669656C644E616D6506BFED
      84B010760061004E0075006D005400690074000876614E756D546974BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B010
      760061004E0075006D005400690074000876614E756D546974BFED84B0085300
      69007A0065000453697A65010BBFED84B000000000BFED84B01E540052006100
      7600650046006C006F00610074004600690065006C0064000F5452617665466C
      6F61744669656C64BFED84B0444400760043006F006E00730045003500300034
      00430061007000410067007200750076006E0054006F00740061006C00500065
      007200630065006E007400750061006C00224476436F6E734535303443617041
      677275766E546F74616C50657263656E7475616C08BFED84B012460069006500
      6C0064004E0061006D006500094669656C644E616D6506BFED84B02276006E00
      54006F00740061006C00500065007200630065006E007400750061006C001176
      6E546F74616C50657263656E7475616CBFED84B010460075006C006C004E0061
      006D0065000846756C6C4E616D6506BFED84B02276006E0054006F0074006100
      6C00500065007200630065006E007400750061006C0011766E546F74616C5065
      7263656E7475616CBFED84B008530069007A0065000453697A650108BFED84B0
      00000004BFED84B00E5200650070006F00720074003100075265706F72743100
      37130000BFED84B00A500061006700650031000550616765310100BFED84B00A
      5000610067006500310005506167653101BFED84B00A50006100670065003100
      05506167653100BFED84B016540052006100760065005200650070006F007200
      74000B54526176655265706F7274BFED84B00E5200650070006F007200740031
      00075265706F72743108BFED84B01A43006F006D00700069006C0065004E0065
      0065006400650064000D436F6D70696C654E656564656400BFED84B00A460061
      006C00730065000546616C7365BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00E5200650070006F0072007400310007
      5265706F727431BFED84B0124600690072007300740050006100670065000946
      697273745061676500BFED84B01A5200650070006F007200740031002E005000
      61006700650031000D5265706F7274312E5061676531BFED84B0145000610072
      0061006D00650074006500720073000A506172616D657465727308BFED84B000
      00BFED84B00C5000490056006100720073000650495661727308BFED84B00000
      BFED84B0000000008F11000000BFED84B0125400520061007600650050006100
      6700650009545261766550616765BFED84B00A50006100670065003100055061
      67653108BFED84B01A43006F006D00700069006C0065004E0065006500640065
      0064000D436F6D70696C654E656564656400BFED84B00A460061006C00730065
      000546616C7365BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00A50006100670065003100055061676531BFED84B006
      420069006E000342696E0201BFED84B01247007200690064004C0069006E0065
      00730009477269644C696E65730105BFED84B016470072006900640053007000
      6100630069006E0067000B4772696453706163696E67050048201008040281F7
      3FBFED84B0164F007200690065006E0074006100740069006F006E000B4F7269
      656E746174696F6E00BFED84B01270006F00440065006600610075006C007400
      09706F44656661756C74BFED84B01250006100700065007200530069007A0065
      0009506170657253697A650109BFED84B01450006100720061006D0065007400
      6500720073000A506172616D657465727308BFED84B00E53007400720069006E
      006700730007537472696E67730B010607766E546F74616C00BFED84B00000BF
      ED84B00C5000490056006100720073000650495661727308BFED84B00000BFED
      84B000000100BFED84B0165400520061007600650052006500670069006F006E
      000B5452617665526567696F6EBFED84B00E52006500670069006F006E003100
      07526567696F6E3108BFED84B00C480065006900670068007400064865696768
      740500505555555555A90240BFED84B0084C00650066007400044C6566740500
      00398EE3388EE3FA3FBFED84B00654006F00700003546F700500001032547698
      FAFE3FBFED84B00A57006900640074006800055769647468050018C7711CC771
      820240BFED84B01A43006F006C0075006D006E00530070006100630069006E00
      67000D436F6C756D6E53706163696E670500000000000000000000BFED84B000
      000200BFED84B01A540052006100760065004400610074006100420061006E00
      64000D54526176654461746142616E64BFED84B00E44006500740061006C0068
      00650007446574616C686508BFED84B00C41006E00630068006F00720006416E
      63686F720103BFED84B012420061006E0064005300740079006C006500094261
      6E645374796C6508BFED84B0105000720069006E0074004C006F006300085072
      696E744C6F6307BFED84B01070006C00440065007400610069006C0008706C44
      657461696CBFED84B00000BFED84B00000BFED84B00C48006500690067006800
      740006486569676874050090999999999999FC3FBFED84B01A4D0069006E0048
      00650069006700680074004C006500660074000D4D696E4865696768744C6566
      740500000000000000000000BFED84B01A50006F0073006900740069006F006E
      00560061006C00750065000D506F736974696F6E56616C756505000000000000
      00000000BFED84B01A43006F006C0075006D006E00530070006100630069006E
      0067000D436F6C756D6E53706163696E670500000000000000000000BFED84B0
      104400610074006100560069006500770008446174615669657700BFED84B022
      4400760043006F006E0073004500350030003400430061007000410067007200
      7500114476436F6E734535303443617041677275BFED84B000000300BFED84B0
      1A54005200610076006500440061007400610054006500780074000D54526176
      654461746154657874BFED84B012440061007400610054006500780074003100
      0944617461546578743108BFED84B00846006F006E00740004466F6E7408BFED
      84B00E430068006100720073006500740007436861727365740101BFED84B00A
      43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D00650004
      4E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B00853
      0069007A0065000453697A650108BFED84B00A5300740079006C006500055374
      796C6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A0075
      00730074006900660079000B466F6E744A75737469667900BFED84B00C70006A
      004C0065006600740006706A4C656674BFED84B0084C00650066007400044C65
      66740500D837AF269E15CDFD3FBFED84B0085400650078007400045465787406
      BFED84B010760061004E0075006D005400690074000876614E756D546974BFED
      84B00654006F00700003546F700500A0507698BADCFEF63FBFED84B00A570069
      006400740068000557696474680500307DD2277DD2C7FE3FBFED84B012440061
      00740061004600690065006C00640009446174614669656C6406BFED84B01076
      0061004E0075006D005400690074000876614E756D546974BFED84B010440061
      0074006100560069006500770008446174615669657700BFED84B02244007600
      43006F006E007300450035003000340043006100700041006700720075001144
      76436F6E734535303443617041677275BFED84B000000000BFED84B01A540052
      00610076006500440061007400610054006500780074000D5452617665446174
      6154657874BFED84B01244006100740061005400650078007400320009446174
      61546578743208BFED84B00846006F006E00740004466F6E7408BFED84B00E43
      0068006100720073006500740007436861727365740101BFED84B00A43006F00
      6C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D65
      06BFED84B00A41007200690061006C0005417269616CBFED84B008530069007A
      0065000453697A650108BFED84B00A5300740079006C006500055374796C6507
      BFED84B00000BFED84B00000BFED84B01646006F006E0074004A007500730074
      006900660079000B466F6E744A75737469667900BFED84B00C70006A004C0065
      006600740006706A4C656674BFED84B0084C00650066007400044C6566740500
      B8269E158D04ACFF3FBFED84B0085400650078007400045465787406BFED84B0
      0C4E004F004D0043004C004900064E4F4D434C49BFED84B00654006F00700003
      546F70050068BC58F28B25BFF83FBFED84B00A57006900640074006800055769
      647468050040C80EB283ECB00040BFED84B01244006100740061004600690065
      006C00640009446174614669656C6406BFED84B00C4E004F004D0043004C0049
      00064E4F4D434C49BFED84B01044006100740061005600690065007700084461
      74615669657700BFED84B0224400760043006F006E0073004500350030003400
      4300610070004100670072007500114476436F6E734535303443617041677275
      BFED84B000000000BFED84B01A54005200610076006500440061007400610054
      006500780074000D54526176654461746154657874BFED84B012440061007400
      6100540065007800740033000944617461546578743308BFED84B00846006F00
      6E00740004466F6E7408BFED84B00E4300680061007200730065007400074368
      61727365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED
      84B0084E0061006D006500044E616D6506BFED84B00A41007200690061006C00
      05417269616CBFED84B008530069007A0065000453697A650108BFED84B00A53
      00740079006C006500055374796C6507BFED84B00000BFED84B00000BFED84B0
      1646006F006E0074004A007500730074006900660079000B466F6E744A757374
      69667900BFED84B00E70006A005200690067006800740007706A5269676874BF
      ED84B0084C00650066007400044C6566740500A8C850D961EAA60140BFED84B0
      085400650078007400045465787406BFED84B01A76006E0056006C0072005200
      650061006A0075007300740065000D766E566C725265616A75737465BFED84B0
      0654006F00700003546F700500601FA62EB73FC8F73FBFED84B00A5700690064
      00740068000557696474680500D0CCCCCCCCCCCCFE3FBFED84B0124400610074
      0061004600690065006C00640009446174614669656C6406BFED84B01A76006E
      0056006C0072005200650061006A0075007300740065000D766E566C72526561
      6A75737465BFED84B01044006100740061005600690065007700084461746156
      69657700BFED84B0224400760043006F006E0073004500350030003400430061
      0070004100670072007500114476436F6E734535303443617041677275BFED84
      B000000000BFED84B01254005200610076006500420061006E00640009545261
      766542616E64BFED84B00A54006F00740061006C0005546F74616C08BFED84B0
      0C41006E00630068006F00720006416E63686F720103BFED84B012420061006E
      0064005300740079006C0065000942616E645374796C6508BFED84B010500072
      0069006E0074004C006F006300085072696E744C6F6307BFED84B01870006C00
      42006F006400790046006F006F007400650072000C706C426F6479466F6F7465
      72BFED84B00000BFED84B00000BFED84B01C43006F006E00740072006F006C00
      6C0065007200420061006E0064000E436F6E74726F6C6C657242616E6400BFED
      84B00E44006500740061006C006800650007446574616C6865BFED84B00C4800
      6500690067006800740006486569676874050000A54FFAA44FDAFE3FBFED84B0
      1A4D0069006E004800650069006700680074004C006500660074000D4D696E48
      65696768744C6566740500000000000000000000BFED84B01A50006F00730069
      00740069006F006E00560061006C00750065000D506F736974696F6E56616C75
      650500000000000000000000BFED84B000000200BFED84B01254005200610076
      006500540065007800740009545261766554657874BFED84B00A540065007800
      7400310005546578743108BFED84B00846006F006E00740004466F6E7408BFED
      84B00E430068006100720073006500740007436861727365740101BFED84B00A
      43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D00650004
      4E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B00853
      0069007A0065000453697A65010ABFED84B00A5300740079006C006500055374
      796C6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A0075
      00730074006900660079000B466F6E744A75737469667900BFED84B00C70006A
      004C0065006600740006706A4C656674BFED84B0084C00650066007400044C65
      6674050090E3388EE338BA0140BFED84B0085400650078007400045465787406
      BFED84B00C54006F00740061006C003A0006546F74616C3ABFED84B00654006F
      00700003546F70050040398EE3388EE3FA3FBFED84B00A570069006400740068
      000557696474680500801CC7711CC7F1FD3FBFED84B000000000BFED84B01A54
      005200610076006500440061007400610054006500780074000D545261766544
      61746154657874BFED84B0124400610074006100540065007800740035000944
      617461546578743508BFED84B00846006F006E00740004466F6E7408BFED84B0
      0E430068006100720073006500740007436861727365740101BFED84B00A4300
      6F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E61
      6D6506BFED84B00A41007200690061006C0005417269616CBFED84B008530069
      007A0065000453697A65010ABFED84B00A5300740079006C006500055374796C
      6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073
      0074006900660079000B466F6E744A75737469667900BFED84B00C70006A004C
      0065006600740006706A4C656674BFED84B0084C00650066007400044C656674
      0500F8AC6824E09BC70140BFED84B0085400650078007400045465787406BFED
      84B01A50006100720061006D002E0076006E0054006F00740061006C000D5061
      72616D2E766E546F74616CBFED84B00654006F00700003546F70050028DB40A7
      0D74DAFA3FBFED84B00A57006900640074006800055769647468050000000000
      000080FF3FBFED84B01244006100740061004600690065006C00640009446174
      614669656C6406BFED84B01A50006100720061006D002E0076006E0054006F00
      740061006C000D506172616D2E766E546F74616CBFED84B0000000}
  end
  object RvConsE504CapAgru1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ConsE504CapAgru
    Left = 1144
    Top = 128
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    DocInfo.Creator = 'Rave Reports (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 936
    Top = 536
  end
  object Cadusu_tRotManGer: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'usu_id_rota'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_trotmanger where usu_id_rota = :usu_id_rota')
    Left = 1184
    Top = 576
    object Cadusu_tRotManGerUSU_ID_ROTA: TIntegerField
      FieldName = 'USU_ID_ROTA'
    end
    object Cadusu_tRotManGerUSU_DESROT: TStringField
      FieldName = 'USU_DESROT'
      Size = 200
    end
  end
  object Consusu_tRotMan: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    OnCalcFields = Consusu_tRotManCalcFields
    Parameters = <
      item
        Name = 'usu_id_rota'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_trotman WHERE USU_ID_ROTA = :usu_id_rota '
      'order by usu_seqrot')
    Left = 1184
    Top = 632
    object Consusu_tRotManUSU_SEQROT: TIntegerField
      FieldName = 'USU_SEQROT'
    end
    object Consusu_tRotManUSU_UFSPAS: TStringField
      FieldName = 'USU_UFSPAS'
      Size = 2
    end
    object Consusu_tRotManUSU_TIPMOV: TStringField
      FieldName = 'USU_TIPMOV'
      Size = 1
    end
    object Consusu_tRotManUSU_CEPCID: TIntegerField
      FieldName = 'USU_CEPCID'
    end
    object Consusu_tRotManUSU_ID_ROTA: TIntegerField
      FieldName = 'USU_ID_ROTA'
    end
    object Consusu_tRotManvaDesMov: TStringField
      FieldKind = fkCalculated
      FieldName = 'vaDesMov'
      Calculated = True
    end
    object Consusu_tRotManimg: TStringField
      FieldKind = fkCalculated
      FieldName = 'img'
      Size = 10
      Calculated = True
    end
  end
  object Cadusu_tRotMan: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'USU_ID_ROTA'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'USU_SEQROT'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_trotman WHERE USU_ID_ROTA = :USU_ID_ROTA and'
      
        '                                                        USU_SEQR' +
        'OT = :USU_SEQROT')
    Left = 1288
    Top = 576
    object Cadusu_tRotManUSU_SEQROT: TIntegerField
      FieldName = 'USU_SEQROT'
    end
    object Cadusu_tRotManUSU_UFSPAS: TStringField
      FieldName = 'USU_UFSPAS'
      Size = 2
    end
    object Cadusu_tRotManUSU_TIPMOV: TStringField
      FieldName = 'USU_TIPMOV'
      Size = 1
    end
    object Cadusu_tRotManUSU_CEPCID: TIntegerField
      FieldName = 'USU_CEPCID'
    end
    object Cadusu_tRotManUSU_ID_ROTA: TIntegerField
      FieldName = 'USU_ID_ROTA'
    end
  end
  object ConsCEP: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NOMCID'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'SIGUFS'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CEPINI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CEPFIM'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e008cep where nomcid = :NOMCID and'
      
        '                                               sigufs = :SIGUFS ' +
        'AND'
      
        '                                               cepini = :CEPINI ' +
        'or cepfim = :CEPFIM')
    Left = 1288
    Top = 632
    object ConsCEPCEPINI: TIntegerField
      FieldName = 'CEPINI'
    end
    object ConsCEPCEPFIM: TIntegerField
      FieldName = 'CEPFIM'
    end
    object ConsCEPCODFIS: TIntegerField
      FieldName = 'CODFIS'
    end
    object ConsCEPCODRAI: TIntegerField
      FieldName = 'CODRAI'
    end
    object ConsCEPNOMCID: TStringField
      FieldName = 'NOMCID'
      Size = 60
    end
    object ConsCEPSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsCEPCODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object ConsCEPBAICID: TStringField
      FieldName = 'BAICID'
      Size = 75
    end
    object ConsCEPENDCID: TStringField
      FieldName = 'ENDCID'
      Size = 100
    end
    object ConsCEPPERISS: TBCDField
      FieldName = 'PERISS'
      Precision = 4
      Size = 2
    end
    object ConsCEPFORISS: TIntegerField
      FieldName = 'FORISS'
    end
    object ConsCEPIMPISS: TStringField
      FieldName = 'IMPISS'
      Size = 3
    end
    object ConsCEPCEPPOL: TIntegerField
      FieldName = 'CEPPOL'
    end
    object ConsCEPDIAENT: TIntegerField
      FieldName = 'DIAENT'
    end
    object ConsCEPCODIBG: TIntegerField
      FieldName = 'CODIBG'
    end
    object ConsCEPCODDIP: TIntegerField
      FieldName = 'CODDIP'
    end
    object ConsCEPCODSIA: TIntegerField
      FieldName = 'CODSIA'
    end
    object ConsCEPUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsCEPDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsCEPHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsCEPUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object ConsCEPDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ConsCEPHORALT: TIntegerField
      FieldName = 'HORALT'
    end
  end
  object ConsRotManGer: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usu_trotmanger')
    Left = 1240
    Top = 680
    object ConsRotManGerUSU_ID_ROTA: TIntegerField
      FieldName = 'USU_ID_ROTA'
    end
    object ConsRotManGerUSU_DESROT: TStringField
      FieldName = 'USU_DESROT'
      Size = 200
    end
  end
  object ConsE135Pfa: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FILNFV'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SIGUFS'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e135pfa.CODEMP,e135pfa.CODFIL,e135pfa.NUMANE,e135pfa.NUMP' +
        'FA,e135pfa.FILNFV,e135pfa.SNFNFV,e135pfa.TIPNFS,'
      
        '       e135pfa.NUMNFV,e135pfa.CODCLI,e135pfa.TNSPRO,e135pfa.CODR' +
        'OE,e135pfa.SEQROE,e135pfa.CODRAI,'
      
        '       e135pfa.CODCPG,e135pfa.PLAVEI,e135pfa.PESBRU,e135pfa.PESL' +
        'IQ,e135pfa.VOLPFA,'
      
        '       e135pfa.VLRPFA,e135pfa.VLRFIN,e135pfa.CODTRA,E135pfa.CODM' +
        'TR,'
      
        '       E085CLI.NOMCLI,E085CLI.CEPCLI,E085CLI.CEPINI,E085CLI.CIDC' +
        'LI,E085CLI.SIGUFS,'
      '       E073MOT.NOMMOT,E073MOT.CGCCPF,E073MOT.FONMOT'
      'from e135pfa'
      'INNER JOIN E085CLI ON E085CLI.CODCLI = E135PFA.CODCLI'
      'INNER JOIN E073MOT ON E073MOT.CODTRA = E135PFA.CODTRA AND'
      '                      E073MOT.CODMTR = E135PFA.CODMTR'
      'WHERE E135PFA.NUMANE = :NUMANE and'
      '      e135pfa.codemp = :CODEMP and'
      '      e135pfa.filnfv = :FILNFV and'
      '      e085cli.sigufs = :SIGUFS'
      'order by E135PFA.numane DESC,E135PFA.SEQROE')
    Left = 1328
    Top = 680
    object ConsE135PfaCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE135PfaCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE135PfaNUMANE: TBCDField
      FieldName = 'NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsE135PfaNUMPFA: TIntegerField
      FieldName = 'NUMPFA'
    end
    object ConsE135PfaFILNFV: TIntegerField
      FieldName = 'FILNFV'
    end
    object ConsE135PfaSNFNFV: TStringField
      FieldName = 'SNFNFV'
      Size = 3
    end
    object ConsE135PfaTIPNFS: TIntegerField
      FieldName = 'TIPNFS'
    end
    object ConsE135PfaNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object ConsE135PfaCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE135PfaTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE135PfaCODROE: TStringField
      FieldName = 'CODROE'
      Size = 3
    end
    object ConsE135PfaSEQROE: TIntegerField
      FieldName = 'SEQROE'
    end
    object ConsE135PfaCODRAI: TIntegerField
      FieldName = 'CODRAI'
    end
    object ConsE135PfaCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsE135PfaPLAVEI: TStringField
      FieldName = 'PLAVEI'
      Size = 10
    end
    object ConsE135PfaPESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 14
      Size = 5
    end
    object ConsE135PfaPESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 14
      Size = 5
    end
    object ConsE135PfaVOLPFA: TFMTBCDField
      FieldName = 'VOLPFA'
      Precision = 14
      Size = 5
    end
    object ConsE135PfaVLRPFA: TBCDField
      FieldName = 'VLRPFA'
      Precision = 15
      Size = 2
    end
    object ConsE135PfaVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE135PfaNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsE135PfaCEPCLI: TIntegerField
      FieldName = 'CEPCLI'
    end
    object ConsE135PfaCEPINI: TIntegerField
      FieldName = 'CEPINI'
    end
    object ConsE135PfaCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsE135PfaSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsE135PfaCODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object ConsE135PfaCODMTR: TIntegerField
      FieldName = 'CODMTR'
    end
    object ConsE135PfaNOMMOT: TStringField
      FieldName = 'NOMMOT'
      Size = 100
    end
    object ConsE135PfaCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 12
      Size = 0
    end
    object ConsE135PfaFONMOT: TStringField
      FieldName = 'FONMOT'
    end
  end
  object CadE145Ebq: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODFIL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMEBQ'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT CODEMP,CODFIL,NUMEBQ,CODTRA,PLAVEI,NOMMOT,DOCMOT,FONEBQ,D' +
        'SNEBQ,DATSAI,HORSAI,USUGER,DATGER,HORGER,CODMTR,'
      
        '             SITEBQ,DATFEC,HORFEC,TIPEBQ,DOCEXP,NUMDEC,DATDEC,NA' +
        'TEXP,NUMEXP,DATEXP,CHCEBQ,DATCHC,DATAVB,TIPCHC,CODPAI,'
      
        '             INTIMP,CODEFE,NUMMEM,KMTINI,KMTFIN,PRCEBQ,EMPTCP,FI' +
        'LTCP,NUMTIT,CODTPT,EMPOCP,FILOCP,NUMOCP,SEQISO,CODFOR,'
      
        '             EMPNFV,FILNFV,SNFNFV,NUMNFV,NUMCFI,CODSMA,NUMMAN,CO' +
        'DTNS,VLRFRE,VLRPRE,VLREST,VLRDSC,VLRADT,VLRABA,VLRSST,'
      
        '             VLRIRF,VLRLIQ,VLRINS,VLRPDG,VLRBIN,VLRBIR,OBSMAN,SI' +
        'TMAN,CODCPG,DATEMM,HOREMM,UNIMED,PESBRU,PESLIQ,CODCLI,'
      '             TIPEND,SEQEND,DATETG,PRDENT'
      'FROM  E145EBQ'
      'WHERE'
      'CODEMP = :CODEMP AND'
      'CODFIL = :CODFIL AND'
      'NUMEBQ = :NUMEBQ')
    Left = 1152
    Top = 696
    object CadE145EbqCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE145EbqCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE145EbqNUMEBQ: TIntegerField
      FieldName = 'NUMEBQ'
    end
    object CadE145EbqCODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object CadE145EbqPLAVEI: TStringField
      FieldName = 'PLAVEI'
      Size = 10
    end
    object CadE145EbqNOMMOT: TStringField
      FieldName = 'NOMMOT'
      Size = 40
    end
    object CadE145EbqDOCMOT: TStringField
      FieldName = 'DOCMOT'
      Size = 40
    end
    object CadE145EbqFONEBQ: TStringField
      FieldName = 'FONEBQ'
      Size = 40
    end
    object CadE145EbqDSNEBQ: TStringField
      FieldName = 'DSNEBQ'
      Size = 60
    end
    object CadE145EbqDATSAI: TDateTimeField
      FieldName = 'DATSAI'
    end
    object CadE145EbqHORSAI: TIntegerField
      FieldName = 'HORSAI'
    end
    object CadE145EbqUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object CadE145EbqDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object CadE145EbqHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object CadE145EbqCODMTR: TIntegerField
      FieldName = 'CODMTR'
    end
    object CadE145EbqSITEBQ: TStringField
      FieldName = 'SITEBQ'
      Size = 1
    end
    object CadE145EbqDATFEC: TDateTimeField
      FieldName = 'DATFEC'
    end
    object CadE145EbqHORFEC: TIntegerField
      FieldName = 'HORFEC'
    end
    object CadE145EbqTIPEBQ: TStringField
      FieldName = 'TIPEBQ'
      Size = 1
    end
    object CadE145EbqDOCEXP: TStringField
      FieldName = 'DOCEXP'
      Size = 1
    end
    object CadE145EbqNUMDEC: TStringField
      FieldName = 'NUMDEC'
      Size = 11
    end
    object CadE145EbqDATDEC: TDateTimeField
      FieldName = 'DATDEC'
    end
    object CadE145EbqNATEXP: TStringField
      FieldName = 'NATEXP'
      Size = 1
    end
    object CadE145EbqNUMEXP: TStringField
      FieldName = 'NUMEXP'
      Size = 12
    end
    object CadE145EbqDATEXP: TDateTimeField
      FieldName = 'DATEXP'
    end
    object CadE145EbqCHCEBQ: TStringField
      FieldName = 'CHCEBQ'
      Size = 16
    end
    object CadE145EbqDATCHC: TDateTimeField
      FieldName = 'DATCHC'
    end
    object CadE145EbqDATAVB: TDateTimeField
      FieldName = 'DATAVB'
    end
    object CadE145EbqTIPCHC: TIntegerField
      FieldName = 'TIPCHC'
    end
    object CadE145EbqCODPAI: TStringField
      FieldName = 'CODPAI'
      Size = 4
    end
    object CadE145EbqINTIMP: TStringField
      FieldName = 'INTIMP'
      Size = 1
    end
    object CadE145EbqCODEFE: TIntegerField
      FieldName = 'CODEFE'
    end
    object CadE145EbqNUMMEM: TStringField
      FieldName = 'NUMMEM'
      Size = 15
    end
    object CadE145EbqKMTINI: TBCDField
      FieldName = 'KMTINI'
      Precision = 8
      Size = 2
    end
    object CadE145EbqKMTFIN: TBCDField
      FieldName = 'KMTFIN'
      Precision = 8
      Size = 2
    end
    object CadE145EbqPRCEBQ: TIntegerField
      FieldName = 'PRCEBQ'
    end
    object CadE145EbqEMPTCP: TIntegerField
      FieldName = 'EMPTCP'
    end
    object CadE145EbqFILTCP: TIntegerField
      FieldName = 'FILTCP'
    end
    object CadE145EbqNUMTIT: TStringField
      FieldName = 'NUMTIT'
      Size = 15
    end
    object CadE145EbqCODTPT: TStringField
      FieldName = 'CODTPT'
      Size = 3
    end
    object CadE145EbqEMPOCP: TIntegerField
      FieldName = 'EMPOCP'
    end
    object CadE145EbqFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object CadE145EbqNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object CadE145EbqSEQISO: TIntegerField
      FieldName = 'SEQISO'
    end
    object CadE145EbqCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object CadE145EbqEMPNFV: TIntegerField
      FieldName = 'EMPNFV'
    end
    object CadE145EbqFILNFV: TIntegerField
      FieldName = 'FILNFV'
    end
    object CadE145EbqSNFNFV: TStringField
      FieldName = 'SNFNFV'
      Size = 3
    end
    object CadE145EbqNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object CadE145EbqNUMCFI: TIntegerField
      FieldName = 'NUMCFI'
    end
    object CadE145EbqCODSMA: TStringField
      FieldName = 'CODSMA'
      Size = 3
    end
    object CadE145EbqNUMMAN: TIntegerField
      FieldName = 'NUMMAN'
    end
    object CadE145EbqCODTNS: TStringField
      FieldName = 'CODTNS'
      Size = 5
    end
    object CadE145EbqVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object CadE145EbqVLRPRE: TBCDField
      FieldName = 'VLRPRE'
      Precision = 15
      Size = 2
    end
    object CadE145EbqVLREST: TBCDField
      FieldName = 'VLREST'
      Precision = 15
      Size = 2
    end
    object CadE145EbqVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object CadE145EbqVLRADT: TBCDField
      FieldName = 'VLRADT'
      Precision = 15
      Size = 2
    end
    object CadE145EbqVLRABA: TBCDField
      FieldName = 'VLRABA'
      Precision = 15
      Size = 2
    end
    object CadE145EbqVLRSST: TBCDField
      FieldName = 'VLRSST'
      Precision = 15
      Size = 2
    end
    object CadE145EbqVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object CadE145EbqVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object CadE145EbqVLRINS: TBCDField
      FieldName = 'VLRINS'
      Precision = 15
      Size = 2
    end
    object CadE145EbqVLRPDG: TBCDField
      FieldName = 'VLRPDG'
      Precision = 15
      Size = 2
    end
    object CadE145EbqVLRBIN: TBCDField
      FieldName = 'VLRBIN'
      Precision = 15
      Size = 2
    end
    object CadE145EbqVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object CadE145EbqOBSMAN: TStringField
      FieldName = 'OBSMAN'
      Size = 251
    end
    object CadE145EbqSITMAN: TIntegerField
      FieldName = 'SITMAN'
    end
    object CadE145EbqCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object CadE145EbqDATEMM: TDateTimeField
      FieldName = 'DATEMM'
    end
    object CadE145EbqHOREMM: TIntegerField
      FieldName = 'HOREMM'
    end
    object CadE145EbqUNIMED: TIntegerField
      FieldName = 'UNIMED'
    end
    object CadE145EbqPESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 14
      Size = 5
    end
    object CadE145EbqPESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 14
      Size = 5
    end
    object CadE145EbqCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object CadE145EbqTIPEND: TIntegerField
      FieldName = 'TIPEND'
    end
    object CadE145EbqSEQEND: TIntegerField
      FieldName = 'SEQEND'
    end
    object CadE145EbqDATETG: TDateTimeField
      FieldName = 'DATETG'
    end
    object CadE145EbqPRDENT: TStringField
      FieldName = 'PRDENT'
      Size = 1
    end
  end
  object CadE145Nfv: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODFIL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMEBQ'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SEQEBQ'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e145nfv'
      'where'
      'codemp = :CODEMP and'
      'codfil = :CODFIL and'
      'numebq = :NUMEBQ and'
      'seqebq = :SEQEBQ')
    Left = 1152
    Top = 752
    object CadE145NfvCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE145NfvCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE145NfvNUMEBQ: TIntegerField
      FieldName = 'NUMEBQ'
    end
    object CadE145NfvSEQEBQ: TIntegerField
      FieldName = 'SEQEBQ'
    end
    object CadE145NfvFILNFV: TIntegerField
      FieldName = 'FILNFV'
    end
    object CadE145NfvSNFNFV: TStringField
      FieldName = 'SNFNFV'
      Size = 3
    end
    object CadE145NfvNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object CadE145NfvNUMCFI: TIntegerField
      FieldName = 'NUMCFI'
    end
    object CadE145NfvSEQIPV: TIntegerField
      FieldName = 'SEQIPV'
    end
    object CadE145NfvCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object CadE145NfvCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object CadE145NfvCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 50
    end
    object CadE145NfvQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object CadE145NfvTIPDOC: TIntegerField
      FieldName = 'TIPDOC'
    end
    object CadE145NfvQTDETG: TFMTBCDField
      FieldName = 'QTDETG'
      Precision = 14
      Size = 5
    end
  end
  object ConsE145Nfv: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODFIL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMEBQ'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e145nfv.*, e140nfv.datemi,e140nfv.datsai,e140nfv.tipnfs,e' +
        '140nfv.qtdemb,'
      '       e085cli.nomcli'
      'from e145nfv'
      'inner join e140nfv on e140nfv.codemp = e145nfv.codemp and'
      '                      e140nfv.codfil = e145nfv.codfil and'
      '                      e140nfv.numnfv = e145nfv.numnfv'
      'inner join e085cli on e085cli.codcli = e140nfv.codcli'
      'where'
      'e145nfv.codemp = :CODEMP and'
      'e145nfv.codfil = :CODFIL and'
      'e145nfv.numebq = :NUMEBQ'
      'order by seqebq')
    Left = 1232
    Top = 744
    object ConsE145NfvCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE145NfvCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE145NfvNUMEBQ: TIntegerField
      FieldName = 'NUMEBQ'
    end
    object ConsE145NfvSEQEBQ: TIntegerField
      FieldName = 'SEQEBQ'
    end
    object ConsE145NfvFILNFV: TIntegerField
      FieldName = 'FILNFV'
    end
    object ConsE145NfvSNFNFV: TStringField
      FieldName = 'SNFNFV'
      Size = 3
    end
    object ConsE145NfvNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object ConsE145NfvNUMCFI: TIntegerField
      FieldName = 'NUMCFI'
    end
    object ConsE145NfvSEQIPV: TIntegerField
      FieldName = 'SEQIPV'
    end
    object ConsE145NfvCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE145NfvCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE145NfvCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 50
    end
    object ConsE145NfvQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ConsE145NfvTIPDOC: TIntegerField
      FieldName = 'TIPDOC'
    end
    object ConsE145NfvQTDETG: TFMTBCDField
      FieldName = 'QTDETG'
      Precision = 14
      Size = 5
    end
    object ConsE145NfvDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE145NfvDATSAI: TDateTimeField
      FieldName = 'DATSAI'
    end
    object ConsE145NfvTIPNFS: TIntegerField
      FieldName = 'TIPNFS'
    end
    object ConsE145NfvQTDEMB: TIntegerField
      FieldName = 'QTDEMB'
    end
    object ConsE145NfvNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
  end
  object CadE145Ccd: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numebq'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqmov'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e145ccd where codemp = :codemp and'
      '                            codfil = :codfil and'
      '                            numebq = :numebq and'
      '                            seqmov = :seqmov')
    Left = 1312
    Top = 736
    object CadE145CcdCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE145CcdCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE145CcdNUMEBQ: TIntegerField
      FieldName = 'NUMEBQ'
    end
    object CadE145CcdSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object CadE145CcdTIPMOV: TStringField
      FieldName = 'TIPMOV'
      Size = 1
    end
    object CadE145CcdUFSPAS: TStringField
      FieldName = 'UFSPAS'
      Size = 2
    end
    object CadE145CcdCEPCID: TIntegerField
      FieldName = 'CEPCID'
    end
  end
  object CadE145Cld: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numebq'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqmov'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e145cld'
      'where'
      'codemp = :codemp and'
      'codfil = :codfil and'
      'numebq = :numebq and'
      'seqmov = :seqmov')
    Left = 1288
    Top = 784
    object CadE145CldCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE145CldCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE145CldNUMEBQ: TIntegerField
      FieldName = 'NUMEBQ'
    end
    object CadE145CldSEQEBQ: TIntegerField
      FieldName = 'SEQEBQ'
    end
    object CadE145CldSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object CadE145CldFILNFV: TIntegerField
      FieldName = 'FILNFV'
    end
    object CadE145CldSNFNFV: TStringField
      FieldName = 'SNFNFV'
      Size = 3
    end
    object CadE145CldNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
  end
  object ConsE145Cld: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODFIL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMEBQ'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SEQMOV'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e145cld.* from e145cld'
      'where'
      'codemp = :CODEMP and'
      'codfil = :CODFIL and'
      'numebq = :NUMEBQ and'
      'seqmov = :SEQMOV'
      'order by numnfv')
    Left = 1216
    Top = 808
    object ConsE145CldCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE145CldCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE145CldNUMEBQ: TIntegerField
      FieldName = 'NUMEBQ'
    end
    object ConsE145CldSEQEBQ: TIntegerField
      FieldName = 'SEQEBQ'
    end
    object ConsE145CldSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object ConsE145CldFILNFV: TIntegerField
      FieldName = 'FILNFV'
    end
    object ConsE145CldSNFNFV: TStringField
      FieldName = 'SNFNFV'
      Size = 3
    end
    object ConsE145CldNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
  end
  object CadE020Snf: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODFIL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODSNF'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * FROM E020SNF'
      'WHERE'
      'CODEMP = :CODEMP AND'
      'CODFIL = :CODFIL AND'
      'CODSNF = :CODSNF')
    Left = 1008
    Top = 600
    object CadE020SnfCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE020SnfCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE020SnfCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object CadE020SnfDESSNF: TStringField
      FieldName = 'DESSNF'
      Size = 30
    end
    object CadE020SnfABRSNF: TStringField
      FieldName = 'ABRSNF'
      Size = 10
    end
    object CadE020SnfULTNUM: TIntegerField
      FieldName = 'ULTNUM'
    end
    object CadE020SnfULTDAT: TDateTimeField
      FieldName = 'ULTDAT'
    end
    object CadE020SnfNUMNFD: TIntegerField
      FieldName = 'NUMNFD'
    end
    object CadE020SnfNUMNFA: TIntegerField
      FieldName = 'NUMNFA'
    end
    object CadE020SnfQTDITP: TIntegerField
      FieldName = 'QTDITP'
    end
    object CadE020SnfQTDITS: TIntegerField
      FieldName = 'QTDITS'
    end
    object CadE020SnfQTDPAR: TIntegerField
      FieldName = 'QTDPAR'
    end
    object CadE020SnfAPLSNF: TStringField
      FieldName = 'APLSNF'
      Size = 1
    end
    object CadE020SnfULTPRE: TIntegerField
      FieldName = 'ULTPRE'
    end
    object CadE020SnfMODREL: TStringField
      FieldName = 'MODREL'
      Size = 12
    end
    object CadE020SnfMODDUP: TStringField
      FieldName = 'MODDUP'
      Size = 12
    end
    object CadE020SnfULTDUP: TBCDField
      FieldName = 'ULTDUP'
      Precision = 10
      Size = 0
    end
    object CadE020SnfCODEDC: TStringField
      FieldName = 'CODEDC'
      Size = 3
    end
    object CadE020SnfVENDBS: TDateTimeField
      FieldName = 'VENDBS'
    end
    object CadE020SnfVENDBV: TDateTimeField
      FieldName = 'VENDBV'
    end
    object CadE020SnfCODSEL: TStringField
      FieldName = 'CODSEL'
      Size = 3
    end
    object CadE020SnfCODSSL: TStringField
      FieldName = 'CODSSL'
      Size = 2
    end
    object CadE020SnfUTIIMP: TStringField
      FieldName = 'UTIIMP'
      Size = 1
    end
    object CadE020SnfCODEQU: TIntegerField
      FieldName = 'CODEQU'
    end
    object CadE020SnfINDNMA: TStringField
      FieldName = 'INDNMA'
      Size = 1
    end
    object CadE020SnfDISAUT: TIntegerField
      FieldName = 'DISAUT'
    end
    object CadE020SnfDIRNEL: TStringField
      FieldName = 'DIRNEL'
      Size = 250
    end
    object CadE020SnfQTDPOS: TIntegerField
      FieldName = 'QTDPOS'
    end
    object CadE020SnfDIRCTE: TStringField
      FieldName = 'DIRCTE'
      Size = 250
    end
    object CadE020SnfDIRNES: TStringField
      FieldName = 'DIRNES'
      Size = 250
    end
    object CadE020SnfEXCVAR: TStringField
      FieldName = 'EXCVAR'
      Size = 1
    end
    object CadE020SnfINDISV: TStringField
      FieldName = 'INDISV'
      Size = 1
    end
  end
  object XMLTransformProviderCidades: TXMLTransformProvider
    TransformRead.TransformationFile = 'D:\Meus Documentos\Desktop\IBGE\ToDp.xtr'
    TransformWrite.TransformationFile = 'D:\Meus Documentos\Desktop\IBGE\ToDp.xtr'
    XMLDataFile = 'D:\Meus Documentos\Desktop\IBGE\PARANA.xml'
    Left = 320
    Top = 752
  end
  object ClientCidadesIBGE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProviderCidades'
    Left = 320
    Top = 800
    object ClientCidadesIBGEA: TStringField
      FieldName = 'A'
      Size = 27
    end
    object ClientCidadesIBGEB: TStringField
      FieldName = 'B'
      Size = 7
    end
    object ClientCidadesIBGEC: TStringField
      FieldName = 'C'
      Size = 26
    end
    object ClientCidadesIBGED: TStringField
      FieldName = 'D'
      Size = 14
    end
    object ClientCidadesIBGEE: TStringField
      FieldName = 'E'
      Size = 16
    end
    object ClientCidadesIBGEF: TStringField
      FieldName = 'F'
      Size = 8
    end
    object ClientCidadesIBGEG: TStringField
      FieldName = 'G'
      Size = 2
    end
  end
  object CadE008Rai: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codrai'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e008rai where codrai = :codrai')
    Left = 448
    Top = 752
    object CadE008RaiCODRAI: TIntegerField
      FieldName = 'CODRAI'
    end
    object CadE008RaiNOMCID: TStringField
      FieldName = 'NOMCID'
      Size = 60
    end
    object CadE008RaiSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object CadE008RaiPOPCID: TIntegerField
      FieldName = 'POPCID'
    end
    object CadE008RaiPOTALF: TBCDField
      FieldName = 'POTALF'
      Precision = 5
      Size = 3
    end
    object CadE008RaiLOCGEO: TStringField
      FieldName = 'LOCGEO'
      Size = 6
    end
    object CadE008RaiINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object CadE008RaiDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object CadE008RaiHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object CadE008RaiNUMFEB: TIntegerField
      FieldName = 'NUMFEB'
    end
    object CadE008RaiUSU_GENTILICO: TStringField
      FieldName = 'USU_GENTILICO'
    end
    object CadE008RaiUSU_POPULACAO: TIntegerField
      FieldName = 'USU_POPULACAO'
    end
    object CadE008RaiUSU_PIB: TBCDField
      FieldName = 'USU_PIB'
      Precision = 11
      Size = 2
    end
    object CadE008RaiUSU_AREAT: TIntegerField
      FieldName = 'USU_AREAT'
    end
    object CadE008RaiUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object CadE008RaiIMGLGT: TStringField
      FieldName = 'IMGLGT'
      Size = 250
    end
  end
  object ConsCidadesComCompra: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'DATINI_'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM_'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'CODREP_'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DISTINCT(E008RAI.CODRAI),E008RAI.NOMCID,E008RAI.SIGUFS,E0' +
        '08RAI.USU_GENTILICO,E008RAI.USU_POPULACAO,E008RAI.USU_PIB,E008RA' +
        'I.USU_CODREP,'
      '       (SELECT SUM(E140IPV.VLRBRU)'
      '             FROM'
      '                 E140IPV'
      
        '             INNER JOIN E140NFV ON E140NFV.CODEMP = E140IPV.CODE' +
        'MP AND'
      
        '                                   E140NFV.CODFIL = E140IPV.CODF' +
        'IL AND'
      
        '                                   E140NFV.NUMNFV = E140IPV.NUMN' +
        'FV AND'
      
        '                                   E140NFV.CODSNF = E140IPV.CODS' +
        'NF'
      
        '             INNER JOIN E085CLI ON E085CLI.CODCLI = E140NFV.CODC' +
        'LI'
      
        '             INNER JOIN E001TNS ON E001TNS.CODEMP = E140NFV.CODE' +
        'MP AND'
      '                      E001TNS.CODTNS = E140NFV.TNSPRO'
      
        '             INNER JOIN E008CEP CEP ON CEP.CEPINI = E085CLI.CEPI' +
        'NI'
      '             INNER JOIN E008RAI RAI ON RAI.CODRAI = CEP.CODRAI'
      '             WHERE'
      '             E140NFV.CODEMP = 1 AND'
      '             E140NFV.SITNFV = '#39'2'#39' AND'
      '             E140NFV.DATEMI BETWEEN :DATINI_ AND :DATFIM_ AND'
      '             E001TNS.VENFAT = '#39'S'#39' AND'
      '             RAI.CODRAI = E008RAI.CODRAI) AS VLRBRU'
      'FROM E008RAI'
      'INNER JOIN E008CEP ON E008CEP.CODRAI = E008RAI.CODRAI'
      'WHERE'
      'E008RAI.USU_CODREP = :CODREP_ AND'
      '(SELECT SUM(E140IPV.VLRBRU)'
      '             FROM'
      '                 E140IPV'
      
        '             INNER JOIN E140NFV ON E140NFV.CODEMP = E140IPV.CODE' +
        'MP AND'
      
        '                                   E140NFV.CODFIL = E140IPV.CODF' +
        'IL AND'
      
        '                                   E140NFV.NUMNFV = E140IPV.NUMN' +
        'FV AND'
      
        '                                   E140NFV.CODSNF = E140IPV.CODS' +
        'NF'
      
        '             INNER JOIN E085CLI ON E085CLI.CODCLI = E140NFV.CODC' +
        'LI'
      
        '             INNER JOIN E001TNS ON E001TNS.CODEMP = E140NFV.CODE' +
        'MP AND'
      '                      E001TNS.CODTNS = E140NFV.TNSPRO'
      
        '             INNER JOIN E008CEP CEP ON CEP.CEPINI = E085CLI.CEPI' +
        'NI'
      '             INNER JOIN E008RAI RAI ON RAI.CODRAI = CEP.CODRAI'
      '             WHERE'
      '             E140NFV.CODEMP = 1 AND'
      '             E140NFV.SITNFV = '#39'2'#39' AND'
      '             E140NFV.DATEMI BETWEEN :DATINI AND :DATFIM AND'
      '             E001TNS.VENFAT = '#39'S'#39' AND'
      '             RAI.CODRAI = E008RAI.CODRAI) > 0'
      'ORDER BY E008RAI.NOMCID')
    Left = 592
    Top = 736
    object ConsCidadesComCompraCODRAI: TIntegerField
      FieldName = 'CODRAI'
      ReadOnly = True
    end
    object ConsCidadesComCompraNOMCID: TStringField
      FieldName = 'NOMCID'
      Size = 60
    end
    object ConsCidadesComCompraSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsCidadesComCompraUSU_GENTILICO: TStringField
      FieldName = 'USU_GENTILICO'
    end
    object ConsCidadesComCompraUSU_POPULACAO: TIntegerField
      FieldName = 'USU_POPULACAO'
    end
    object ConsCidadesComCompraUSU_PIB: TBCDField
      FieldName = 'USU_PIB'
      Precision = 11
      Size = 2
    end
    object ConsCidadesComCompraUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object ConsCidadesComCompraVLRBRU: TFMTBCDField
      FieldName = 'VLRBRU'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object ProviderConsCidadesComCompra: TDataSetProvider
    DataSet = ConsCidadesComCompra
    Left = 592
    Top = 784
  end
  object ClientConsCidadesComCompra: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsCidadesComCompra'
    ReadOnly = True
    AfterScroll = ClientConsCidadesComCompraAfterScroll
    OnCalcFields = ClientConsCidadesComCompraCalcFields
    Left = 592
    Top = 832
    object ClientConsCidadesComCompraCODRAI: TIntegerField
      FieldName = 'CODRAI'
      ReadOnly = True
    end
    object ClientConsCidadesComCompraNOMCID: TStringField
      FieldName = 'NOMCID'
      Size = 60
    end
    object ClientConsCidadesComCompraSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ClientConsCidadesComCompraUSU_GENTILICO: TStringField
      FieldName = 'USU_GENTILICO'
    end
    object ClientConsCidadesComCompraUSU_POPULACAO: TIntegerField
      FieldName = 'USU_POPULACAO'
      DisplayFormat = '###,###,##0'
    end
    object ClientConsCidadesComCompraUSU_PIB: TBCDField
      FieldName = 'USU_PIB'
      Precision = 11
      Size = 2
    end
    object ClientConsCidadesComCompraUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object ClientConsCidadesComCompraVLRBRU: TFMTBCDField
      FieldName = 'VLRBRU'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ClientConsCidadesComCompravnVlrPorHab: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnVlrPorHab'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsCidadesComCompravnQtdCidades: TAggregateField
      Alignment = taCenter
      FieldName = 'vnQtdCidades'
      Active = True
      Expression = 'COUNT(CODRAI)'
    end
    object ClientConsCidadesComCompravnTotalPopulacao: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalPopulacao'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(USU_POPULACAO)'
    end
    object ClientConsCidadesComCompravnTotalVenda: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalVenda'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(VLRBRU)'
    end
    object ClientConsCidadesComCompravnTotalPHab: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalPHab'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(VLRBRU)/SUM(USU_POPULACAO)'
    end
  end
  object ClientCliComCompra: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderCliComCompra'
    Left = 744
    Top = 840
    object ClientCliComCompraCODCLI: TIntegerField
      Alignment = taCenter
      FieldName = 'CODCLI'
    end
    object ClientCliComCompraNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ClientCliComCompraTOTAL_CLI: TFMTBCDField
      Alignment = taCenter
      FieldName = 'TOTAL_CLI'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ClientCliComCompraDAT_ULT_NF: TDateTimeField
      Alignment = taCenter
      FieldName = 'DAT_ULT_NF'
    end
    object ClientCliComCompraVLR_ULT_NF: TFMTBCDField
      Alignment = taCenter
      FieldName = 'VLR_ULT_NF'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ClientCliComCompravnQtdCli: TAggregateField
      Alignment = taCenter
      FieldName = 'vnQtdCli'
      Active = True
      Expression = 'COUNT(CODCLI)'
    end
  end
  object CliComCompra: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'CODRAI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'DATINI_'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM_'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT E085CLI.CODCLI,E085CLI.NOMCLI,'
      '       (SELECT SUM(E140IPV.VLRBRU)'
      '             FROM'
      '                 E140IPV'
      
        '             INNER JOIN E140NFV ON E140NFV.CODEMP = E140IPV.CODE' +
        'MP AND'
      
        '                                   E140NFV.CODFIL = E140IPV.CODF' +
        'IL AND'
      
        '                                   E140NFV.NUMNFV = E140IPV.NUMN' +
        'FV AND'
      
        '                                   E140NFV.CODSNF = E140IPV.CODS' +
        'NF'
      
        '             INNER JOIN E085CLI CLI ON CLI.CODCLI = E140NFV.CODC' +
        'LI'
      
        '             INNER JOIN E001TNS ON E001TNS.CODEMP = E140NFV.CODE' +
        'MP AND'
      
        '                                   E001TNS.CODTNS = E140NFV.TNSP' +
        'RO'
      '                      WHERE'
      '             E140NFV.CODEMP = 1 AND'
      '             E140NFV.SITNFV = '#39'2'#39' AND'
      '             E140NFV.DATEMI BETWEEN :DATINI AND :DATFIM AND'
      '             E001TNS.VENFAT = '#39'S'#39' AND'
      '             CLI.CODCLI = E085CLI.CODCLI) AS TOTAL_CLI,'
      '       (SELECT MAX(E140NFV.DATEMI)'
      '        FROM E140NFV'
      '        INNER JOIN E085CLI C ON C.CODCLI = E140NFV.CODCLI'
      
        '        INNER JOIN E001TNS ON E001TNS.CODEMP = E140NFV.CODEMP AN' +
        'D'
      '                      E001TNS.CODTNS = E140NFV.TNSPRO'
      '         WHERE'
      '            C.CODCLI = E085CLI.CODCLI AND'
      '            E001TNS.VENFAT = '#39'S'#39') AS DAT_ULT_NF,'
      '       (SELECT MAX(NFV.VLRBCO)'
      '        FROM E140NFV NFV'
      '        WHERE'
      '            NFV.NUMNFV = (SELECT MAX(E.NUMNFV)'
      '                           FROM E140NFV E'
      
        '                           INNER JOIN E001TNS ON E001TNS.CODEMP ' +
        '= E.CODEMP AND'
      
        '                                                 E001TNS.CODTNS ' +
        '= E.TNSPRO'
      '                           WHERE'
      '                              E.CODCLI = NFV.CODCLI AND'
      '                              E001TNS.VENFAT = '#39'S'#39' AND'
      '                               E.SITNFV = '#39'2'#39') AND'
      
        '                               NFV.CODCLI = E085CLI.CODCLI) AS V' +
        'LR_ULT_NF'
      'FROM E085CLI'
      'INNER JOIN E008CEP ON E008CEP.CEPINI = E085CLI.CEPINI'
      'INNER JOIN E008RAI ON E008RAI.CODRAI = E008CEP.CODRAI'
      'INNER JOIN E085HCL ON E085HCL.CODCLI = E085CLI.CODCLI AND'
      '                      E085HCL.CODFIL = 1'
      'WHERE'
      'E008RAI.CODRAI = :CODRAI AND'
      'E085CLI.CLIFOR = '#39'C'#39' AND'
      'E085CLI.SITCLI = '#39'A'#39' AND'
      '(SELECT SUM(E140IPV.VLRBRU)'
      '             FROM'
      '                 E140IPV'
      
        '             INNER JOIN E140NFV ON E140NFV.CODEMP = E140IPV.CODE' +
        'MP AND'
      
        '                                   E140NFV.CODFIL = E140IPV.CODF' +
        'IL AND'
      
        '                                   E140NFV.NUMNFV = E140IPV.NUMN' +
        'FV AND'
      
        '                                   E140NFV.CODSNF = E140IPV.CODS' +
        'NF'
      
        '             INNER JOIN E085CLI CLI ON CLI.CODCLI = E140NFV.CODC' +
        'LI'
      
        '             INNER JOIN E001TNS ON E001TNS.CODEMP = E140NFV.CODE' +
        'MP AND'
      
        '                                   E001TNS.CODTNS = E140NFV.TNSP' +
        'RO'
      '                      WHERE'
      '             E140NFV.CODEMP = 1 AND'
      '             E140NFV.SITNFV = '#39'2'#39' AND'
      '             E140NFV.DATEMI BETWEEN :DATINI_ AND :DATFIM_ AND'
      '             E001TNS.VENFAT = '#39'S'#39' AND'
      '             CLI.CODCLI = E085CLI.CODCLI) > 0')
    Left = 736
    Top = 736
    object CliComCompraCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object CliComCompraNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object CliComCompraTOTAL_CLI: TFMTBCDField
      FieldName = 'TOTAL_CLI'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object CliComCompraDAT_ULT_NF: TDateTimeField
      FieldName = 'DAT_ULT_NF'
    end
    object CliComCompraVLR_ULT_NF: TFMTBCDField
      FieldName = 'VLR_ULT_NF'
      Precision = 38
      Size = 0
    end
  end
  object ProviderCliComCompra: TDataSetProvider
    DataSet = CliComCompra
    Left = 736
    Top = 784
  end
  object CliSemCompra: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODRAI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT E085CLI.CODCLI,E085CLI.NOMCLI,'
      '       (SELECT MAX(E140NFV.DATEMI)'
      '        FROM E140NFV'
      '        INNER JOIN E085CLI C ON C.CODCLI = E140NFV.CODCLI'
      
        '        INNER JOIN E001TNS ON E001TNS.CODEMP = E140NFV.CODEMP AN' +
        'D'
      '                      E001TNS.CODTNS = E140NFV.TNSPRO'
      '         WHERE'
      '            C.CODCLI = E085CLI.CODCLI AND'
      '            E001TNS.VENFAT = '#39'S'#39') AS DAT_ULT_NF,'
      '       (SELECT MAX(NFV.VLRBCO)'
      '        FROM E140NFV NFV'
      '        WHERE'
      '            NFV.NUMNFV = (SELECT MAX(E.NUMNFV)'
      '                           FROM E140NFV E'
      
        '                           INNER JOIN E001TNS ON E001TNS.CODEMP ' +
        '= E.CODEMP AND'
      
        '                                                 E001TNS.CODTNS ' +
        '= E.TNSPRO'
      '                           WHERE'
      '                              E.CODCLI = NFV.CODCLI AND'
      '                              E001TNS.VENFAT = '#39'S'#39' AND'
      '                               E.SITNFV = '#39'2'#39') AND'
      
        '                               NFV.CODCLI = E085CLI.CODCLI) AS V' +
        'LR_ULT_NF'
      'FROM E085CLI'
      'INNER JOIN E008CEP ON E008CEP.CEPINI = E085CLI.CEPINI'
      'INNER JOIN E008RAI ON E008RAI.CODRAI = E008CEP.CODRAI'
      'INNER JOIN E085HCL ON E085HCL.CODCLI = E085CLI.CODCLI AND'
      '                      E085HCL.CODFIL = 1'
      'WHERE'
      'E008RAI.CODRAI = :CODRAI AND'
      'E085CLI.CLIFOR = '#39'C'#39' AND'
      'E085CLI.SITCLI = '#39'A'#39' AND'
      '(SELECT SUM(E140IPV.VLRBRU)'
      '             FROM'
      '                 E140IPV'
      
        '             INNER JOIN E140NFV ON E140NFV.CODEMP = E140IPV.CODE' +
        'MP AND'
      
        '                                   E140NFV.CODFIL = E140IPV.CODF' +
        'IL AND'
      
        '                                   E140NFV.NUMNFV = E140IPV.NUMN' +
        'FV AND'
      
        '                                   E140NFV.CODSNF = E140IPV.CODS' +
        'NF'
      
        '             INNER JOIN E085CLI CLI ON CLI.CODCLI = E140NFV.CODC' +
        'LI'
      
        '             INNER JOIN E001TNS ON E001TNS.CODEMP = E140NFV.CODE' +
        'MP AND'
      
        '                                   E001TNS.CODTNS = E140NFV.TNSP' +
        'RO'
      '                      WHERE'
      '             E140NFV.CODEMP = 1 AND'
      '             E140NFV.SITNFV = '#39'2'#39' AND'
      '             E140NFV.DATEMI BETWEEN :DATINI AND :DATFIM AND'
      '             E001TNS.VENFAT = '#39'S'#39' AND'
      '             CLI.CODCLI = E085CLI.CODCLI) IS NULL')
    Left = 848
    Top = 736
    object CliSemCompraCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object CliSemCompraNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object CliSemCompraDAT_ULT_NF: TDateTimeField
      FieldName = 'DAT_ULT_NF'
      ReadOnly = True
    end
    object CliSemCompraVLR_ULT_NF: TFMTBCDField
      FieldName = 'VLR_ULT_NF'
      Precision = 38
      Size = 0
    end
  end
  object ProviderCliSemCompra: TDataSetProvider
    DataSet = CliSemCompra
    Left = 848
    Top = 792
  end
  object ClientCliSemCompra: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderCliSemCompra'
    Left = 856
    Top = 848
    object ClientCliSemCompraCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ClientCliSemCompraNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ClientCliSemCompraDAT_ULT_NF: TDateTimeField
      FieldName = 'DAT_ULT_NF'
      ReadOnly = True
    end
    object ClientCliSemCompraVLR_ULT_NF: TFMTBCDField
      FieldName = 'VLR_ULT_NF'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ClientCliSemCompravnQtdCli: TAggregateField
      Alignment = taCenter
      FieldName = 'vnQtdCli'
      Active = True
      Expression = 'COUNT(CODCLI)'
    end
  end
  object ConsCidadesSemCompra: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODREP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DISTINCT(E008RAI.CODRAI),E008RAI.NOMCID,E008RAI.SIGUFS,E0' +
        '08RAI.USU_GENTILICO,E008RAI.USU_POPULACAO,E008RAI.USU_PIB,E008RA' +
        'I.USU_CODREP'
      'FROM E008RAI'
      'INNER JOIN E008CEP ON E008CEP.CODRAI = E008RAI.CODRAI'
      'WHERE'
      'E008RAI.USU_CODREP = :CODREP AND'
      '(SELECT SUM(E140IPV.VLRBRU)'
      '             FROM'
      '                 E140IPV'
      
        '             INNER JOIN E140NFV ON E140NFV.CODEMP = E140IPV.CODE' +
        'MP AND'
      
        '                                   E140NFV.CODFIL = E140IPV.CODF' +
        'IL AND'
      
        '                                   E140NFV.NUMNFV = E140IPV.NUMN' +
        'FV AND'
      
        '                                   E140NFV.CODSNF = E140IPV.CODS' +
        'NF'
      
        '             INNER JOIN E085CLI ON E085CLI.CODCLI = E140NFV.CODC' +
        'LI'
      
        '             INNER JOIN E001TNS ON E001TNS.CODEMP = E140NFV.CODE' +
        'MP AND'
      '                      E001TNS.CODTNS = E140NFV.TNSPRO'
      
        '             INNER JOIN E008CEP CEP ON CEP.CEPINI = E085CLI.CEPI' +
        'NI'
      '             INNER JOIN E008RAI RAI ON RAI.CODRAI = CEP.CODRAI'
      '             WHERE'
      '             E140NFV.CODEMP = 1 AND'
      '             E140NFV.SITNFV = '#39'2'#39' AND'
      '             E140NFV.DATEMI BETWEEN :DATINI AND :DATFIM AND'
      '             E001TNS.VENFAT = '#39'S'#39' AND'
      '             RAI.CODRAI = E008RAI.CODRAI) IS NULL'
      'ORDER BY E008RAI.NOMCID')
    Left = 600
    Top = 904
    object ConsCidadesSemCompraCODRAI: TIntegerField
      FieldName = 'CODRAI'
      ReadOnly = True
    end
    object ConsCidadesSemCompraNOMCID: TStringField
      FieldName = 'NOMCID'
      Size = 60
    end
    object ConsCidadesSemCompraSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsCidadesSemCompraUSU_GENTILICO: TStringField
      FieldName = 'USU_GENTILICO'
    end
    object ConsCidadesSemCompraUSU_POPULACAO: TIntegerField
      FieldName = 'USU_POPULACAO'
    end
    object ConsCidadesSemCompraUSU_PIB: TBCDField
      FieldName = 'USU_PIB'
      Precision = 11
      Size = 2
    end
    object ConsCidadesSemCompraUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
  end
  object ProviderConsCidadesSemCompra: TDataSetProvider
    DataSet = ConsCidadesSemCompra
    Left = 600
    Top = 952
  end
  object ClientConsCidadesSemCompra: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsCidadesSemCompra'
    AfterScroll = ClientConsCidadesSemCompraAfterScroll
    Left = 608
    Top = 1000
    object ClientConsCidadesSemCompraCODRAI: TIntegerField
      FieldName = 'CODRAI'
      ReadOnly = True
    end
    object ClientConsCidadesSemCompraNOMCID: TStringField
      FieldName = 'NOMCID'
      Size = 60
    end
    object ClientConsCidadesSemCompraSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ClientConsCidadesSemCompraUSU_GENTILICO: TStringField
      FieldName = 'USU_GENTILICO'
    end
    object ClientConsCidadesSemCompraUSU_POPULACAO: TIntegerField
      FieldName = 'USU_POPULACAO'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientConsCidadesSemCompraUSU_PIB: TBCDField
      FieldName = 'USU_PIB'
      Precision = 11
      Size = 2
    end
    object ClientConsCidadesSemCompraUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object ClientConsCidadesSemCompravnQtdCid: TAggregateField
      Alignment = taCenter
      FieldName = 'vnQtdCid'
      Active = True
      Expression = 'COUNT(CODRAI)'
    end
    object ClientConsCidadesSemCompravnTotPopulacao: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotPopulacao'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(USU_POPULACAO)'
    end
  end
  object CliSemCompra2: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODRAI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT E085CLI.CODCLI,E085CLI.NOMCLI,'
      '       (SELECT MAX(E140NFV.DATEMI)'
      '        FROM E140NFV'
      '        INNER JOIN E085CLI C ON C.CODCLI = E140NFV.CODCLI'
      
        '        INNER JOIN E001TNS ON E001TNS.CODEMP = E140NFV.CODEMP AN' +
        'D'
      '                      E001TNS.CODTNS = E140NFV.TNSPRO'
      '         WHERE'
      '            C.CODCLI = E085CLI.CODCLI AND'
      '            E001TNS.VENFAT = '#39'S'#39') AS DAT_ULT_NF,'
      '       (SELECT MAX(NFV.VLRBCO)'
      '        FROM E140NFV NFV'
      '        WHERE'
      '            NFV.NUMNFV = (SELECT MAX(E.NUMNFV)'
      '                           FROM E140NFV E'
      
        '                           INNER JOIN E001TNS ON E001TNS.CODEMP ' +
        '= E.CODEMP AND'
      
        '                                                 E001TNS.CODTNS ' +
        '= E.TNSPRO'
      '                           WHERE'
      '                              E.CODCLI = NFV.CODCLI AND'
      '                              E001TNS.VENFAT = '#39'S'#39' AND'
      '                               E.SITNFV = '#39'2'#39') AND'
      
        '                               NFV.CODCLI = E085CLI.CODCLI) AS V' +
        'LR_ULT_NF'
      'FROM E085CLI'
      'INNER JOIN E008CEP ON E008CEP.CEPINI = E085CLI.CEPINI'
      'INNER JOIN E008RAI ON E008RAI.CODRAI = E008CEP.CODRAI'
      'INNER JOIN E085HCL ON E085HCL.CODCLI = E085CLI.CODCLI AND'
      '                      E085HCL.CODFIL = 1'
      'WHERE'
      'E008RAI.CODRAI = :CODRAI AND'
      'E085CLI.CLIFOR = '#39'C'#39' AND'
      'E085CLI.SITCLI = '#39'A'#39)
    Left = 864
    Top = 912
    object CliSemCompra2CODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object CliSemCompra2NOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object CliSemCompra2DAT_ULT_NF: TDateTimeField
      FieldName = 'DAT_ULT_NF'
      ReadOnly = True
    end
    object CliSemCompra2VLR_ULT_NF: TFMTBCDField
      FieldName = 'VLR_ULT_NF'
      Precision = 38
      Size = 0
    end
  end
  object ProviderCliSemCompra2: TDataSetProvider
    DataSet = CliSemCompra2
    Left = 864
    Top = 960
  end
  object ClientCliSemCompra2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderCliSemCompra2'
    Left = 864
    Top = 1008
    object ClientCliSemCompra2CODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ClientCliSemCompra2NOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ClientCliSemCompra2DAT_ULT_NF: TDateTimeField
      FieldName = 'DAT_ULT_NF'
      ReadOnly = True
    end
    object ClientCliSemCompra2VLR_ULT_NF: TFMTBCDField
      FieldName = 'VLR_ULT_NF'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ClientCliSemCompra2vnQtdCli: TAggregateField
      Alignment = taCenter
      FieldName = 'vnQtdCli'
      Active = True
      Expression = 'COUNT(CODCLI)'
    end
  end
  object ResumoCidRep: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATINI_'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM_'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATINI__'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM__'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATINI___'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM___'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT E090REP.CODREP,E090REP.NOMREP,E090REP.APEREP,'
      '       (SELECT COUNT(E008RAI.CODRAI)'
      '          FROM E008RAI'
      '           WHERE'
      '             E008RAI.USU_CODREP = E090REP.CODREP) AS QTDCIDADE,'
      '        (SELECT COUNT(DISTINCT(E008RAI.CODRAI))'
      '           FROM E008RAI'
      '           INNER JOIN E008CEP ON E008CEP.CODRAI = E008RAI.CODRAI'
      '             WHERE'
      '                E008RAI.USU_CODREP = E090REP.CODREP AND'
      '                (SELECT SUM(E140IPV.VLRBRU)'
      '                    FROM'
      '                      E140IPV'
      
        '                      INNER JOIN E140NFV ON E140NFV.CODEMP = E14' +
        '0IPV.CODEMP AND'
      
        '                                            E140NFV.CODFIL = E14' +
        '0IPV.CODFIL AND'
      
        '                                            E140NFV.NUMNFV = E14' +
        '0IPV.NUMNFV AND'
      
        '                                            E140NFV.CODSNF = E14' +
        '0IPV.CODSNF'
      
        '                      INNER JOIN E085CLI ON E085CLI.CODCLI = E14' +
        '0NFV.CODCLI'
      
        '                      INNER JOIN E001TNS ON E001TNS.CODEMP = E14' +
        '0NFV.CODEMP AND'
      
        '                                            E001TNS.CODTNS = E14' +
        '0NFV.TNSPRO'
      
        '                      INNER JOIN E008CEP CEP ON CEP.CEPINI = E08' +
        '5CLI.CEPINI'
      
        '                      INNER JOIN E008RAI RAI ON RAI.CODRAI = CEP' +
        '.CODRAI'
      '                       WHERE'
      '                         E140NFV.CODEMP = 1 AND'
      '                         E140NFV.SITNFV = '#39'2'#39' AND'
      
        '                         E140NFV.DATEMI BETWEEN :DATINI AND :DAT' +
        'FIM AND'
      '                         E001TNS.VENFAT = '#39'S'#39' AND'
      
        '                         RAI.CODRAI = E008RAI.CODRAI) > 0) AS QT' +
        'D_CID_COM,'
      '        (SELECT COUNT(DISTINCT(E008RAI.CODRAI))'
      '           FROM E008RAI'
      '           INNER JOIN E008CEP ON E008CEP.CODRAI = E008RAI.CODRAI'
      '             WHERE'
      '                E008RAI.USU_CODREP = E090REP.CODREP AND'
      '                (SELECT SUM(E140IPV.VLRBRU)'
      '                    FROM'
      '                      E140IPV'
      
        '                      INNER JOIN E140NFV ON E140NFV.CODEMP = E14' +
        '0IPV.CODEMP AND'
      
        '                                            E140NFV.CODFIL = E14' +
        '0IPV.CODFIL AND'
      
        '                                            E140NFV.NUMNFV = E14' +
        '0IPV.NUMNFV AND'
      
        '                                            E140NFV.CODSNF = E14' +
        '0IPV.CODSNF'
      
        '                      INNER JOIN E085CLI ON E085CLI.CODCLI = E14' +
        '0NFV.CODCLI'
      
        '                      INNER JOIN E001TNS ON E001TNS.CODEMP = E14' +
        '0NFV.CODEMP AND'
      
        '                                            E001TNS.CODTNS = E14' +
        '0NFV.TNSPRO'
      
        '                      INNER JOIN E008CEP CEP ON CEP.CEPINI = E08' +
        '5CLI.CEPINI'
      
        '                      INNER JOIN E008RAI RAI ON RAI.CODRAI = CEP' +
        '.CODRAI'
      '                       WHERE'
      '                         E140NFV.CODEMP = 1 AND'
      '                         E140NFV.SITNFV = '#39'2'#39' AND'
      
        '                         E140NFV.DATEMI BETWEEN :DATINI_ AND :DA' +
        'TFIM_ AND'
      '                         E001TNS.VENFAT = '#39'S'#39' AND'
      
        '                         RAI.CODRAI = E008RAI.CODRAI) IS NULL) A' +
        'S QTD_CID_SEMCOM,'
      '         (SELECT SUM(R.USU_POPULACAO)'
      '           FROM E008RAI R'
      '             WHERE R.CODRAI IN (SELECT DISTINCT(E008RAI.CODRAI)'
      '                                  FROM E008RAI'
      
        '                                  INNER JOIN E008CEP ON E008CEP.' +
        'CODRAI = E008RAI.CODRAI'
      
        '                                  INNER JOIN E085CLI ON E085CLI.' +
        'CEPINI = E008CEP.CEPINI'
      
        '                                  INNER JOIN E140NFV ON E140NFV.' +
        'CODCLI = E085CLI.CODCLI'
      
        '                                  INNER JOIN E001TNS ON E001TNS.' +
        'CODEMP = E140NFV.CODEMP AND'
      
        '                                                        E001TNS.' +
        'CODTNS = E140NFV.TNSPRO'
      '                                  WHERE'
      '                                   E140NFV.SITNFV = '#39'2'#39' AND'
      '                                   E001TNS.VENFAT = '#39'S'#39' AND'
      
        '                                   E008RAI.USU_CODREP = E090REP.' +
        'CODREP AND'
      
        '                                   E140NFV.DATEMI BETWEEN :DATIN' +
        'I__ AND :DATFIM__)) AS POP_COM_COMPRA,'
      '         (SELECT SUM(R.USU_POPULACAO)'
      '             FROM E008RAI R'
      '             WHERE'
      '              R.USU_CODREP = E090REP.CODREP) AS TOTAL_POP,'
      '         (SELECT SUM(E140IPV.VLRBRU)'
      '                    FROM'
      '                      E140IPV'
      
        '                      INNER JOIN E140NFV ON E140NFV.CODEMP = E14' +
        '0IPV.CODEMP AND'
      
        '                                            E140NFV.CODFIL = E14' +
        '0IPV.CODFIL AND'
      
        '                                            E140NFV.NUMNFV = E14' +
        '0IPV.NUMNFV AND'
      
        '                                            E140NFV.CODSNF = E14' +
        '0IPV.CODSNF'
      
        '                      INNER JOIN E085CLI ON E085CLI.CODCLI = E14' +
        '0NFV.CODCLI'
      
        '                      INNER JOIN E001TNS ON E001TNS.CODEMP = E14' +
        '0NFV.CODEMP AND'
      
        '                                            E001TNS.CODTNS = E14' +
        '0NFV.TNSPRO'
      '                                            WHERE'
      '                         E140NFV.CODEMP = 1 AND'
      '                         E140NFV.SITNFV = '#39'2'#39' AND'
      
        '                         E140NFV.DATEMI BETWEEN :DATINI___ AND :' +
        'DATFIM___ AND'
      '                         E001TNS.VENFAT = '#39'S'#39' AND'
      
        '                         E140NFV.CODREP = E090REP.CODREP) AS VLR' +
        '_FATURADO'
      ''
      '           FROM E090REP'
      'WHERE'
      'E090REP.SITREP = '#39'A'#39
      'ORDER BY E090REP.CODREP'
      '')
    Left = 440
    Top = 904
    object ResumoCidRepCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ResumoCidRepNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ResumoCidRepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ResumoCidRepQTDCIDADE: TFMTBCDField
      FieldName = 'QTDCIDADE'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ResumoCidRepQTD_CID_COM: TFMTBCDField
      FieldName = 'QTD_CID_COM'
      Precision = 38
      Size = 0
    end
    object ResumoCidRepQTD_CID_SEMCOM: TFMTBCDField
      FieldName = 'QTD_CID_SEMCOM'
      Precision = 38
      Size = 0
    end
    object ResumoCidRepPOP_COM_COMPRA: TFMTBCDField
      FieldName = 'POP_COM_COMPRA'
      Precision = 38
      Size = 0
    end
    object ResumoCidRepTOTAL_POP: TFMTBCDField
      FieldName = 'TOTAL_POP'
      Precision = 38
      Size = 0
    end
    object ResumoCidRepVLR_FATURADO: TFMTBCDField
      FieldName = 'VLR_FATURADO'
      Precision = 38
      Size = 0
    end
  end
  object ProviderResumoCidRep: TDataSetProvider
    DataSet = ResumoCidRep
    Left = 440
    Top = 960
  end
  object ClientResumoCidRep: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderResumoCidRep'
    OnCalcFields = ClientResumoCidRepCalcFields
    Left = 440
    Top = 1008
    object ClientResumoCidRepCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ClientResumoCidRepNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ClientResumoCidRepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ClientResumoCidRepQTDCIDADE: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QTDCIDADE'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ClientResumoCidRepQTD_CID_COM: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QTD_CID_COM'
      Precision = 38
      Size = 0
    end
    object ClientResumoCidRepQTD_CID_SEMCOM: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QTD_CID_SEMCOM'
      Precision = 38
      Size = 0
    end
    object ClientResumoCidRepPOP_COM_COMPRA: TFMTBCDField
      Alignment = taCenter
      FieldName = 'POP_COM_COMPRA'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
      Precision = 38
      Size = 0
    end
    object ClientResumoCidRepTOTAL_POP: TFMTBCDField
      Alignment = taCenter
      FieldName = 'TOTAL_POP'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
      Precision = 38
      Size = 0
    end
    object ClientResumoCidRepVLR_FATURADO: TFMTBCDField
      Alignment = taCenter
      FieldName = 'VLR_FATURADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ClientResumoCidRepPOP_SEM_COMPRA: TIntegerField
      Alignment = taCenter
      FieldKind = fkInternalCalc
      FieldName = 'POP_SEM_COMPRA'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientResumoCidRepVLR_POR_HAB: TFloatField
      Alignment = taCenter
      FieldKind = fkInternalCalc
      FieldName = 'VLR_POR_HAB'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientResumoCidRepvnTotalPop: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalPop'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(TOTAL_POP)'
    end
    object ClientResumoCidRepvnTotalPopCCom: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalPopCCom'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(POP_COM_COMPRA)'
    end
    object ClientResumoCidRepvnTotalPopSCom: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalPopSCom'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(POP_SEM_COMPRA)'
    end
    object ClientResumoCidRepvnTotalCid: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalCid'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(QTDCIDADE)'
    end
    object ClientResumoCidRepvnTotalCidCCom: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalCidCCom'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(QTD_CID_COM)'
    end
    object ClientResumoCidRepvnTotalCidSCom: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalCidSCom'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(QTD_CID_SEMCOM)'
    end
    object ClientResumoCidRepvnVlrPHab: TAggregateField
      Alignment = taCenter
      FieldName = 'vnVlrPHab'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(VLR_FATURADO) / SUM(TOTAL_POP)'
    end
  end
  object CadUsu_TE085Moni: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'USU_IDMON'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_TE085MONI WHERE USU_IDMON = :USU_IDMON')
    Left = 328
    Top = 960
    object CadUsu_TE085MoniUSU_IDMON: TIntegerField
      FieldName = 'USU_IDMON'
    end
    object CadUsu_TE085MoniUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object CadUsu_TE085MoniUSU_CODRAI: TIntegerField
      FieldName = 'USU_CODRAI'
    end
    object CadUsu_TE085MoniUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object CadUsu_TE085MoniUSU_CLISERA: TStringField
      FieldName = 'USU_CLISERA'
      Size = 3
    end
    object CadUsu_TE085MoniUSU_DATINI: TDateTimeField
      FieldName = 'USU_DATINI'
    end
    object CadUsu_TE085MoniUSU_DATFIM: TDateTimeField
      FieldName = 'USU_DATFIM'
    end
    object CadUsu_TE085MoniUSU_MOTFIM: TStringField
      FieldName = 'USU_MOTFIM'
      Size = 100
    end
    object CadUsu_TE085MoniUSU_SALFIM: TBCDField
      FieldName = 'USU_SALFIM'
      Precision = 15
      Size = 2
    end
    object CadUsu_TE085MoniUSU_DATSER: TDateTimeField
      FieldName = 'USU_DATSER'
    end
    object CadUsu_TE085MoniUSU_SITSER: TStringField
      FieldName = 'USU_SITSER'
    end
    object CadUsu_TE085MoniUSU_USUSER: TBCDField
      FieldName = 'USU_USUSER'
      Precision = 10
      Size = 0
    end
  end
  object MoniCliente: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT USU_TE085MONI.*,'
      '       E085CLI.NOMCLI,E085CLI.CGCCPF,'
      '       E008RAI.NOMCID,E008RAI.SIGUFS,'
      '       E085HCL.VLRLIM, E085HCL.DATLIM,'
      '       E090REP.APEREP,'
      '       (SELECT SUM(E120IPD.QTDABE * E120IPD.PREUNI)'
      '         FROM E120IPD'
      
        '          INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP ' +
        'AND'
      
        '                                E120PED.CODFIL = E120IPD.CODFIL ' +
        'AND'
      '                                E120PED.NUMPED = E120IPD.NUMPED'
      '          WHERE'
      
        '            E120PED.DATEMI BETWEEN USU_TE085MONI.USU_DATINI AND ' +
        'SYSDATE AND'
      
        '            E120PED.TNSPRO IN ('#39'90100'#39','#39'90106'#39','#39'90150'#39','#39'90156'#39') ' +
        'AND'
      '            E120IPD.SITIPD IN (1,2,3) AND'
      '            E120PED.CODCLI = E085CLI.CODCLI) AS VLR_PED_ABE,'
      '       (SELECT SUM(E120IPD.QTDFAT * E120IPD.PREUNI)'
      '         FROM E120IPD'
      
        '          INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP ' +
        'AND'
      
        '                                E120PED.CODFIL = E120IPD.CODFIL ' +
        'AND'
      '                                E120PED.NUMPED = E120IPD.NUMPED'
      '          WHERE'
      
        '            E120PED.DATEMI BETWEEN USU_TE085MONI.USU_DATINI AND ' +
        'SYSDATE AND'
      
        '            E120PED.TNSPRO IN ('#39'90100'#39','#39'90106'#39','#39'90150'#39','#39'90156'#39') ' +
        'AND'
      '            E120IPD.SITIPD IN (2,4) AND'
      '            E120PED.CODCLI = E085CLI.CODCLI) AS VLR_PED_FAT,'
      '        (SELECT SUM(E301TCR.VLRABE)'
      '          FROM E301TCR'
      '           WHERE'
      '            E301TCR.SITTIT IN ('#39'AB'#39','#39'AC'#39') AND'
      
        '            E301TCR.CODCLI = USU_TE085MONI.USU_CODCLI ) AS VLR_T' +
        'IT_ABE'
      ''
      'FROM USU_TE085MONI'
      'INNER JOIN E085CLI ON E085CLI.CODCLI = USU_TE085MONI.USU_CODCLI'
      'INNER JOIN E085HCL ON E085HCL.CODCLI = E085CLI.CODCLI AND'
      '                      E085HCL.CODEMP = 1 AND'
      '                      E085HCL.CODFIL = 1'
      ''
      'INNER JOIN E008RAI ON E008RAI.CODRAI = USU_TE085MONI.USU_CODRAI'
      'INNER JOIN E090REP ON E090REP.CODREP = USU_TE085MONI.USU_CODREP')
    Left = 224
    Top = 920
    object MoniClienteUSU_IDMON: TIntegerField
      FieldName = 'USU_IDMON'
    end
    object MoniClienteUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object MoniClienteUSU_CODRAI: TIntegerField
      FieldName = 'USU_CODRAI'
    end
    object MoniClienteUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object MoniClienteUSU_CLISERA: TStringField
      FieldName = 'USU_CLISERA'
      Size = 3
    end
    object MoniClienteUSU_DATINI: TDateTimeField
      FieldName = 'USU_DATINI'
    end
    object MoniClienteUSU_DATFIM: TDateTimeField
      FieldName = 'USU_DATFIM'
    end
    object MoniClienteUSU_MOTFIM: TStringField
      FieldName = 'USU_MOTFIM'
      Size = 100
    end
    object MoniClienteUSU_SALFIM: TBCDField
      FieldName = 'USU_SALFIM'
      Precision = 15
      Size = 2
    end
    object MoniClienteUSU_DATSER: TDateTimeField
      FieldName = 'USU_DATSER'
    end
    object MoniClienteUSU_SITSER: TStringField
      FieldName = 'USU_SITSER'
    end
    object MoniClienteUSU_USUSER: TBCDField
      FieldName = 'USU_USUSER'
      Precision = 10
      Size = 0
    end
    object MoniClienteNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object MoniClienteCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
    object MoniClienteNOMCID: TStringField
      FieldName = 'NOMCID'
      Size = 60
    end
    object MoniClienteSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object MoniClienteVLRLIM: TBCDField
      FieldName = 'VLRLIM'
      Precision = 15
      Size = 2
    end
    object MoniClienteDATLIM: TDateTimeField
      FieldName = 'DATLIM'
    end
    object MoniClienteAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object MoniClienteVLR_PED_ABE: TFMTBCDField
      FieldName = 'VLR_PED_ABE'
      Precision = 38
      Size = 0
    end
    object MoniClienteVLR_PED_FAT: TFMTBCDField
      FieldName = 'VLR_PED_FAT'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object MoniClienteVLR_TIT_ABE: TFMTBCDField
      FieldName = 'VLR_TIT_ABE'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object ProviderMoniCliente: TDataSetProvider
    DataSet = MoniCliente
    Left = 224
    Top = 976
  end
  object ClientMoniCliente: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderMoniCliente'
    OnCalcFields = ClientMoniClienteCalcFields
    Left = 224
    Top = 1024
    object ClientMoniClienteUSU_IDMON: TIntegerField
      FieldName = 'USU_IDMON'
    end
    object ClientMoniClienteUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object ClientMoniClienteUSU_CODRAI: TIntegerField
      FieldName = 'USU_CODRAI'
    end
    object ClientMoniClienteUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object ClientMoniClienteUSU_CLISERA: TStringField
      FieldName = 'USU_CLISERA'
      Size = 3
    end
    object ClientMoniClienteUSU_DATINI: TDateTimeField
      FieldName = 'USU_DATINI'
    end
    object ClientMoniClienteUSU_DATFIM: TDateTimeField
      FieldName = 'USU_DATFIM'
    end
    object ClientMoniClienteUSU_MOTFIM: TStringField
      FieldName = 'USU_MOTFIM'
      Size = 100
    end
    object ClientMoniClienteUSU_SALFIM: TBCDField
      FieldName = 'USU_SALFIM'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ClientMoniClienteUSU_DATSER: TDateTimeField
      FieldName = 'USU_DATSER'
    end
    object ClientMoniClienteUSU_SITSER: TStringField
      FieldName = 'USU_SITSER'
    end
    object ClientMoniClienteUSU_USUSER: TBCDField
      FieldName = 'USU_USUSER'
      Precision = 10
      Size = 0
    end
    object ClientMoniClienteNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ClientMoniClienteCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
    object ClientMoniClienteNOMCID: TStringField
      FieldName = 'NOMCID'
      Size = 60
    end
    object ClientMoniClienteSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ClientMoniClienteVLRLIM: TBCDField
      FieldName = 'VLRLIM'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ClientMoniClienteDATLIM: TDateTimeField
      FieldName = 'DATLIM'
    end
    object ClientMoniClienteAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ClientMoniClienteVLR_PED_ABE: TFMTBCDField
      FieldName = 'VLR_PED_ABE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ClientMoniClienteVLR_PED_FAT: TFMTBCDField
      FieldName = 'VLR_PED_FAT'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ClientMoniClientevnQtdDiasMon: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vnQtdDiasMon'
    end
    object ClientMoniClientevnQtdDiasSerasa: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vnQtdDiasSerasa'
    end
    object ClientMoniClientevnTotalCompra: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnTotalCompra'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientMoniClienteVLR_TIT_ABE: TFMTBCDField
      Alignment = taCenter
      FieldName = 'VLR_TIT_ABE'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ClientMoniClientevnLimiteDisponivel: TFloatField
      Alignment = taCenter
      FieldKind = fkInternalCalc
      FieldName = 'vnLimiteDisponivel'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientMoniClientevnQtdCli: TAggregateField
      Alignment = taCenter
      FieldName = 'vnQtdCli'
      Active = True
      Expression = 'COUNT(USU_CODCLI)'
    end
    object ClientMoniClientevnVlrPedAbe: TAggregateField
      Alignment = taCenter
      FieldName = 'vnVlrPedAbe'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(VLR_PED_ABE)'
    end
    object ClientMoniClientevnVlrPedFat: TAggregateField
      Alignment = taCenter
      FieldName = 'vnVlrPedFat'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(VLR_PED_FAT)'
    end
    object ClientMoniClientevnVlrPedTot: TAggregateField
      Alignment = taCenter
      FieldName = 'vnVlrPedTot'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(VLR_PED_ABE) + SUM(VLR_PED_FAT)'
    end
  end
  object CliAvaliarSerasa: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT USU_TE085MONI.*,'
      
        '       E085CLI.NOMCLI,E085CLI.APECLI,E085CLI.CGCCPF,E085CLI.CIDC' +
        'LI,E085CLI.SIGUFS'
      'FROM USU_TE085MONI'
      'INNER JOIN E085CLI ON E085CLI.CODCLI = USU_TE085MONI.USU_CODCLI'
      'WHERE'
      '  USU_TE085MONI.USU_SITSER = '#39'INDEFINIDO'#39' AND'
      '  USU_TE085MONI.USU_MOTFIM = '#39' '#39
      'ORDER BY E085CLI.NOMCLI')
    Left = 136
    Top = 936
    object CliAvaliarSerasaUSU_IDMON: TIntegerField
      FieldName = 'USU_IDMON'
    end
    object CliAvaliarSerasaUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object CliAvaliarSerasaUSU_CODRAI: TIntegerField
      FieldName = 'USU_CODRAI'
    end
    object CliAvaliarSerasaUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object CliAvaliarSerasaUSU_CLISERA: TStringField
      FieldName = 'USU_CLISERA'
      Size = 3
    end
    object CliAvaliarSerasaUSU_DATINI: TDateTimeField
      FieldName = 'USU_DATINI'
    end
    object CliAvaliarSerasaUSU_DATFIM: TDateTimeField
      FieldName = 'USU_DATFIM'
    end
    object CliAvaliarSerasaUSU_MOTFIM: TStringField
      FieldName = 'USU_MOTFIM'
      Size = 100
    end
    object CliAvaliarSerasaUSU_SALFIM: TBCDField
      FieldName = 'USU_SALFIM'
      Precision = 15
      Size = 2
    end
    object CliAvaliarSerasaUSU_DATSER: TDateTimeField
      FieldName = 'USU_DATSER'
    end
    object CliAvaliarSerasaUSU_SITSER: TStringField
      FieldName = 'USU_SITSER'
    end
    object CliAvaliarSerasaUSU_USUSER: TBCDField
      FieldName = 'USU_USUSER'
      Precision = 10
      Size = 0
    end
    object CliAvaliarSerasaNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object CliAvaliarSerasaAPECLI: TStringField
      FieldName = 'APECLI'
      Size = 50
    end
    object CliAvaliarSerasaCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
    object CliAvaliarSerasaCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object CliAvaliarSerasaSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object CliAvaliarSerasaimg: TStringField
      FieldKind = fkCalculated
      FieldName = 'img'
      Size = 10
      Calculated = True
    end
    object CliAvaliarSerasaimgAlt: TStringField
      FieldKind = fkCalculated
      FieldName = 'imgAlt'
      Size = 10
      Calculated = True
    end
  end
  object ConsSaldoAdtFun: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TRHADTFUN.*,USU_TRHFUN.USU_NOMFUN  FROM USU_TRHADTFUN'
      
        'inner join USU_TRHFUN ON USU_TRHFUN.USU_NUMCAD = USU_TRHADTFUN.U' +
        'SU_NUMCAD and'
      '      USU_TRHADTFUN.USU_DATVCT BETWEEN :DATINI AND :DATFIM'
      'WHERE USU_SITADT = '#39'A'#39)
    Left = 1032
    Top = 848
    object ConsSaldoAdtFunUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object ConsSaldoAdtFunUSU_NUMADT: TIntegerField
      FieldName = 'USU_NUMADT'
    end
    object ConsSaldoAdtFunUSU_DATADT: TDateTimeField
      FieldName = 'USU_DATADT'
    end
    object ConsSaldoAdtFunUSU_VLRADT: TBCDField
      FieldName = 'USU_VLRADT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsSaldoAdtFunUSU_VLRPAR: TBCDField
      FieldName = 'USU_VLRPAR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsSaldoAdtFunUSU_VLRPGT: TBCDField
      FieldName = 'USU_VLRPGT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsSaldoAdtFunUSU_VLRABE: TBCDField
      FieldName = 'USU_VLRABE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsSaldoAdtFunUSU_DATVCT: TDateTimeField
      FieldName = 'USU_DATVCT'
    end
    object ConsSaldoAdtFunUSU_SITADT: TStringField
      FieldName = 'USU_SITADT'
      Size = 1
    end
    object ConsSaldoAdtFunUSU_DSCFLA: TStringField
      FieldName = 'USU_DSCFLA'
      Size = 1
    end
    object ConsSaldoAdtFunUSU_DATMOV: TDateTimeField
      FieldName = 'USU_DATMOV'
    end
    object ConsSaldoAdtFunUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
    object ConsSaldoAdtFunUSU_SEQADT: TIntegerField
      FieldName = 'USU_SEQADT'
    end
    object ConsSaldoAdtFunUSU_VLRDSC: TBCDField
      FieldName = 'USU_VLRDSC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsSaldoAdtFunUSU_NOMFUN: TStringField
      FieldName = 'USU_NOMFUN'
      Size = 40
    end
  end
  object ClientConsSaldoAdtFun: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsSaldoAdtFun'
    Left = 1032
    Top = 944
    object ClientConsSaldoAdtFunUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object ClientConsSaldoAdtFunUSU_NUMADT: TIntegerField
      FieldName = 'USU_NUMADT'
    end
    object ClientConsSaldoAdtFunUSU_DATADT: TDateTimeField
      FieldName = 'USU_DATADT'
    end
    object ClientConsSaldoAdtFunUSU_VLRADT: TBCDField
      FieldName = 'USU_VLRADT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ClientConsSaldoAdtFunUSU_VLRPAR: TBCDField
      FieldName = 'USU_VLRPAR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ClientConsSaldoAdtFunUSU_VLRPGT: TBCDField
      FieldName = 'USU_VLRPGT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ClientConsSaldoAdtFunUSU_VLRABE: TBCDField
      FieldName = 'USU_VLRABE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ClientConsSaldoAdtFunUSU_DATVCT: TDateTimeField
      FieldName = 'USU_DATVCT'
    end
    object ClientConsSaldoAdtFunUSU_SITADT: TStringField
      FieldName = 'USU_SITADT'
      Size = 1
    end
    object ClientConsSaldoAdtFunUSU_DSCFLA: TStringField
      FieldName = 'USU_DSCFLA'
      Size = 1
    end
    object ClientConsSaldoAdtFunUSU_DATMOV: TDateTimeField
      FieldName = 'USU_DATMOV'
    end
    object ClientConsSaldoAdtFunUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
    object ClientConsSaldoAdtFunUSU_SEQADT: TIntegerField
      FieldName = 'USU_SEQADT'
    end
    object ClientConsSaldoAdtFunUSU_VLRDSC: TBCDField
      FieldName = 'USU_VLRDSC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ClientConsSaldoAdtFunUSU_NOMFUN: TStringField
      FieldName = 'USU_NOMFUN'
      Size = 40
    end
    object ClientConsSaldoAdtFunvnTotal: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotal'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(USU_VLRABE)'
    end
    object ClientConsSaldoAdtFunvnVlrPago: TAggregateField
      Alignment = taCenter
      FieldName = 'vnVlrPago'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(USU_VLRPGT)'
    end
    object ClientConsSaldoAdtFunvnTotalGeral: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalGeral'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(USU_VLRABE + USU_VLRPGT)'
    end
  end
  object ProviderConsSaldoAdtFun: TDataSetProvider
    DataSet = ConsSaldoAdtFun
    Left = 1032
    Top = 896
  end
  object CadUSU_TE085SERA: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'USU_IDCLI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT USU_TE085SERA.* FROM USU_TE085SERA WHERE USU_TE085SERA.US' +
        'U_IDCLI = :USU_IDCLI')
    Left = 88
    Top = 680
    object CadUSU_TE085SERAUSU_IDCLI: TIntegerField
      FieldName = 'USU_IDCLI'
    end
    object CadUSU_TE085SERAUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object CadUSU_TE085SERAUSU_NOMCLI: TStringField
      FieldName = 'USU_NOMCLI'
      Size = 100
    end
    object CadUSU_TE085SERAUSU_ENDCLI: TStringField
      FieldName = 'USU_ENDCLI'
      Size = 100
    end
    object CadUSU_TE085SERAUSU_CEPCLI: TIntegerField
      FieldName = 'USU_CEPCLI'
    end
    object CadUSU_TE085SERAUSU_CEPINI: TIntegerField
      FieldName = 'USU_CEPINI'
    end
    object CadUSU_TE085SERAUSU_BAICLI: TStringField
      FieldName = 'USU_BAICLI'
      Size = 75
    end
    object CadUSU_TE085SERAUSU_CIDCLI: TStringField
      FieldName = 'USU_CIDCLI'
      Size = 60
    end
    object CadUSU_TE085SERAUSU_SIGUFS: TStringField
      FieldName = 'USU_SIGUFS'
      Size = 2
    end
    object CadUSU_TE085SERAUSU_FONCLI: TStringField
      FieldName = 'USU_FONCLI'
    end
    object CadUSU_TE085SERAUSU_FONCL2: TStringField
      FieldName = 'USU_FONCL2'
    end
    object CadUSU_TE085SERAUSU_FONCL3: TStringField
      FieldName = 'USU_FONCL3'
    end
    object CadUSU_TE085SERAUSU_DATCAD: TDateTimeField
      FieldName = 'USU_DATCAD'
    end
    object CadUSU_TE085SERAUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object CadUSU_TE085SERAUSU_CGCCPF: TBCDField
      FieldName = 'USU_CGCCPF'
      Precision = 14
      Size = 0
    end
    object CadUSU_TE085SERAUSU_EMANFE: TStringField
      FieldName = 'USU_EMANFE'
      Size = 100
    end
    object CadUSU_TE085SERAUSU_CNAI: TStringField
      FieldName = 'USU_CNAI'
    end
  end
  object ConsUSU_TE085SERA: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT USU_TE085SERA.* FROM USU_TE085SERA'
      'ORDER BY USU_TE085SERA.USU_CODCLI')
    Left = 88
    Top = 744
    object ConsUSU_TE085SERAUSU_IDCLI: TIntegerField
      FieldName = 'USU_IDCLI'
    end
    object ConsUSU_TE085SERAUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object ConsUSU_TE085SERAUSU_NOMCLI: TStringField
      FieldName = 'USU_NOMCLI'
      Size = 100
    end
    object ConsUSU_TE085SERAUSU_ENDCLI: TStringField
      FieldName = 'USU_ENDCLI'
      Size = 100
    end
    object ConsUSU_TE085SERAUSU_CEPCLI: TIntegerField
      FieldName = 'USU_CEPCLI'
    end
    object ConsUSU_TE085SERAUSU_CEPINI: TIntegerField
      FieldName = 'USU_CEPINI'
    end
    object ConsUSU_TE085SERAUSU_BAICLI: TStringField
      FieldName = 'USU_BAICLI'
      Size = 75
    end
    object ConsUSU_TE085SERAUSU_CIDCLI: TStringField
      FieldName = 'USU_CIDCLI'
      Size = 60
    end
    object ConsUSU_TE085SERAUSU_SIGUFS: TStringField
      FieldName = 'USU_SIGUFS'
      Size = 2
    end
    object ConsUSU_TE085SERAUSU_FONCLI: TStringField
      FieldName = 'USU_FONCLI'
    end
    object ConsUSU_TE085SERAUSU_FONCL2: TStringField
      FieldName = 'USU_FONCL2'
    end
    object ConsUSU_TE085SERAUSU_FONCL3: TStringField
      FieldName = 'USU_FONCL3'
    end
    object ConsUSU_TE085SERAUSU_DATCAD: TDateTimeField
      FieldName = 'USU_DATCAD'
    end
    object ConsUSU_TE085SERAUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object ConsUSU_TE085SERAUSU_CGCCPF: TBCDField
      FieldName = 'USU_CGCCPF'
      Precision = 14
      Size = 0
    end
    object ConsUSU_TE085SERAUSU_EMANFE: TStringField
      FieldName = 'USU_EMANFE'
      Size = 100
    end
    object ConsUSU_TE085SERAUSU_CNAI: TStringField
      FieldName = 'USU_CNAI'
    end
  end
  object ProviderConsUSU_TE085SERA: TDataSetProvider
    DataSet = ConsUSU_TE085SERA
    Left = 88
    Top = 792
  end
  object ClientConsUSU_TE085SERA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderConsUSU_TE085SERA'
    Left = 88
    Top = 840
    object ClientConsUSU_TE085SERAUSU_IDCLI: TIntegerField
      FieldName = 'USU_IDCLI'
    end
    object ClientConsUSU_TE085SERAUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object ClientConsUSU_TE085SERAUSU_NOMCLI: TStringField
      FieldName = 'USU_NOMCLI'
      Size = 100
    end
    object ClientConsUSU_TE085SERAUSU_ENDCLI: TStringField
      FieldName = 'USU_ENDCLI'
      Size = 100
    end
    object ClientConsUSU_TE085SERAUSU_CEPCLI: TIntegerField
      FieldName = 'USU_CEPCLI'
    end
    object ClientConsUSU_TE085SERAUSU_CEPINI: TIntegerField
      FieldName = 'USU_CEPINI'
    end
    object ClientConsUSU_TE085SERAUSU_BAICLI: TStringField
      FieldName = 'USU_BAICLI'
      Size = 75
    end
    object ClientConsUSU_TE085SERAUSU_CIDCLI: TStringField
      FieldName = 'USU_CIDCLI'
      Size = 60
    end
    object ClientConsUSU_TE085SERAUSU_SIGUFS: TStringField
      FieldName = 'USU_SIGUFS'
      Size = 2
    end
    object ClientConsUSU_TE085SERAUSU_FONCLI: TStringField
      FieldName = 'USU_FONCLI'
    end
    object ClientConsUSU_TE085SERAUSU_FONCL2: TStringField
      FieldName = 'USU_FONCL2'
    end
    object ClientConsUSU_TE085SERAUSU_FONCL3: TStringField
      FieldName = 'USU_FONCL3'
    end
    object ClientConsUSU_TE085SERAUSU_DATCAD: TDateTimeField
      FieldName = 'USU_DATCAD'
    end
    object ClientConsUSU_TE085SERAUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object ClientConsUSU_TE085SERAUSU_CGCCPF: TBCDField
      FieldName = 'USU_CGCCPF'
      Precision = 14
      Size = 0
    end
    object ClientConsUSU_TE085SERAUSU_EMANFE: TStringField
      FieldName = 'USU_EMANFE'
      Size = 100
    end
    object ClientConsUSU_TE085SERAUSU_CNAI: TStringField
      FieldName = 'USU_CNAI'
    end
  end
  object ConsUsu_T700Ana: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codana'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'perini'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'perfin'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_t700ana.*,'
      '      e075pro.despro,e075pro.unimed'
      '  from usu_t700ana'
      
        '  inner join e075pro on e075pro.codemp = usu_t700ana.usu_codemp ' +
        'and'
      '                        e075pro.codpro = usu_t700ana.usu_codpro'
      '  where'
      '    usu_t700ana.usu_codana = :codana and'
      '    usu_t700ana.usu_perini = :perini and'
      '    usu_t700ana.usu_perfin = :perfin')
    Left = 64
    Top = 1072
    object ConsUsu_T700AnaUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_T700AnaUSU_CODANA: TIntegerField
      FieldName = 'USU_CODANA'
    end
    object ConsUsu_T700AnaUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_T700AnaUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_T700AnaUSU_QTD001: TFMTBCDField
      FieldName = 'USU_QTD001'
      Precision = 14
      Size = 5
    end
    object ConsUsu_T700AnaUSU_QTD101: TFMTBCDField
      FieldName = 'USU_QTD101'
      Precision = 14
      Size = 5
    end
    object ConsUsu_T700AnaUSU_PERINI: TDateTimeField
      FieldName = 'USU_PERINI'
    end
    object ConsUsu_T700AnaUSU_PERFIN: TDateTimeField
      FieldName = 'USU_PERFIN'
    end
    object ConsUsu_T700AnaDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsUsu_T700AnaUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
  end
  object ProviderConsUsu_T700Ana: TDataSetProvider
    DataSet = ConsUsu_T700Ana
    Left = 64
    Top = 1120
  end
  object ClientConsUsu_T700Ana: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderConsUsu_T700Ana'
    OnCalcFields = ClientConsUsu_T700AnaCalcFields
    Left = 64
    Top = 1168
    object ClientConsUsu_T700AnaUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ClientConsUsu_T700AnaUSU_CODANA: TIntegerField
      FieldName = 'USU_CODANA'
    end
    object ClientConsUsu_T700AnaUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ClientConsUsu_T700AnaUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ClientConsUsu_T700AnaUSU_QTD001: TFMTBCDField
      FieldName = 'USU_QTD001'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ClientConsUsu_T700AnaUSU_QTD101: TFMTBCDField
      FieldName = 'USU_QTD101'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ClientConsUsu_T700AnaUSU_PERINI: TDateTimeField
      FieldName = 'USU_PERINI'
    end
    object ClientConsUsu_T700AnaUSU_PERFIN: TDateTimeField
      FieldName = 'USU_PERFIN'
    end
    object ClientConsUsu_T700AnaDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ClientConsUsu_T700AnaUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ClientConsUsu_T700AnavnQtdTot: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnQtdTot'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsUsu_T700AnavnPer001: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnPer001'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsUsu_T700AnavnPer101: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnPer101'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object CadUSU_T210Per: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'seqper'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t210per where usu_seqper = :seqper')
    Left = 232
    Top = 1080
    object CadUSU_T210PerUSU_SEQPER: TIntegerField
      FieldName = 'USU_SEQPER'
    end
    object CadUSU_T210PerUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUSU_T210PerUSU_VLR001: TBCDField
      FieldName = 'USU_VLR001'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
      Precision = 11
      Size = 2
    end
    object CadUSU_T210PerUSU_VLR101: TBCDField
      FieldName = 'USU_VLR101'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
      Precision = 11
      Size = 2
    end
    object CadUSU_T210PerUSU_VLRTOT: TBCDField
      FieldName = 'USU_VLRTOT'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
      Precision = 11
      Size = 2
    end
    object CadUSU_T210PerUSU_PER001: TBCDField
      FieldName = 'USU_PER001'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
      Precision = 5
      Size = 2
    end
    object CadUSU_T210PerUSU_PER101: TBCDField
      FieldName = 'USU_PER101'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
      Precision = 5
      Size = 2
    end
    object CadUSU_T210PerUSU_QTD001: TBCDField
      FieldName = 'USU_QTD001'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object CadUSU_T210PerUSU_QTD101: TBCDField
      FieldName = 'USU_QTD101'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
  end
  object ConsUSU_T210Per: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select usu_t210per.*,e075pro.despro,e075pro.unimed'
      '  from usu_t210per'
      '  inner join e075pro on e075pro.codpro = usu_t210per.usu_codpro')
    Left = 232
    Top = 1136
    object ConsUSU_T210PerUSU_SEQPER: TIntegerField
      FieldName = 'USU_SEQPER'
    end
    object ConsUSU_T210PerUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUSU_T210PerUSU_VLR001: TBCDField
      FieldName = 'USU_VLR001'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
      Precision = 11
      Size = 2
    end
    object ConsUSU_T210PerUSU_VLR101: TBCDField
      FieldName = 'USU_VLR101'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
      Precision = 11
      Size = 2
    end
    object ConsUSU_T210PerUSU_VLRTOT: TBCDField
      FieldName = 'USU_VLRTOT'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
      Precision = 11
      Size = 2
    end
    object ConsUSU_T210PerUSU_PER001: TBCDField
      FieldName = 'USU_PER001'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
      Precision = 5
      Size = 2
    end
    object ConsUSU_T210PerUSU_PER101: TBCDField
      FieldName = 'USU_PER101'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
      Precision = 5
      Size = 2
    end
    object ConsUSU_T210PerUSU_QTD001: TBCDField
      FieldName = 'USU_QTD001'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
      Precision = 11
      Size = 2
    end
    object ConsUSU_T210PerUSU_QTD101: TBCDField
      FieldName = 'USU_QTD101'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
      Precision = 11
      Size = 2
    end
    object ConsUSU_T210PerDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsUSU_T210PerUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
  end
  object CadUSU_T700INF: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_t700inf.*'
      '   from usu_t700inf'
      '   where'
      '    usu_t700inf.usu_codemp = :codemp and'
      '    usu_t700inf.usu_codpro = :codpro')
    Left = 368
    Top = 1120
    object CadUSU_T700INFUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUSU_T700INFUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUSU_T700INFUSU_PERINF: TFMTBCDField
      FieldName = 'USU_PERINF'
      Precision = 14
      Size = 5
    end
  end
  object ConsUSU_T700Inf: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select usu_t700inf.*,'
      '       e075pro.despro'
      '   from usu_t700inf'
      
        ' inner join e075pro on e075pro.codemp = usu_t700inf.usu_codemp a' +
        'nd'
      '                       e075pro.codpro = usu_t700inf.usu_codpro')
    Left = 368
    Top = 1168
    object ConsUSU_T700InfUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUSU_T700InfUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUSU_T700InfUSU_PERINF: TFMTBCDField
      FieldName = 'USU_PERINF'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ConsUSU_T700InfDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object ConsE700Ctm: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODCMP'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT E700CTM.*'
      '  FROM E700CTM'
      '  WHERE'
      '    E700CTM.CODEMP = :CODEMP AND'
      '    E700CTM.CODCMP = :CODCMP')
    Left = 464
    Top = 1128
    object ConsE700CtmCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE700CtmCODMOD: TStringField
      FieldName = 'CODMOD'
      Size = 14
    end
    object ConsE700CtmCODETG: TIntegerField
      FieldName = 'CODETG'
    end
    object ConsE700CtmSEQMOD: TIntegerField
      FieldName = 'SEQMOD'
    end
    object ConsE700CtmCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE700CtmCODCMP: TStringField
      FieldName = 'CODCMP'
      Size = 14
    end
    object ConsE700CtmDERCMP: TStringField
      FieldName = 'DERCMP'
      Size = 7
    end
    object ConsE700CtmQTDUTI: TFMTBCDField
      FieldName = 'QTDUTI'
      Precision = 14
      Size = 5
    end
    object ConsE700CtmQTDFRQ: TFMTBCDField
      FieldName = 'QTDFRQ'
      Precision = 14
      Size = 5
    end
    object ConsE700CtmPERPRD: TBCDField
      FieldName = 'PERPRD'
      Precision = 6
      Size = 3
    end
    object ConsE700CtmPRDQTD: TFMTBCDField
      FieldName = 'PRDQTD'
      Precision = 14
      Size = 5
    end
    object ConsE700CtmUNIME2: TStringField
      FieldName = 'UNIME2'
      Size = 3
    end
    object ConsE700CtmDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ConsE700CtmCODUSU: TBCDField
      FieldName = 'CODUSU'
      Precision = 10
      Size = 0
    end
    object ConsE700CtmCODVAC: TStringField
      FieldName = 'CODVAC'
      Size = 5
    end
    object ConsE700CtmBXAORP: TStringField
      FieldName = 'BXAORP'
      Size = 1
    end
    object ConsE700CtmDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE700CtmHORGER: TIntegerField
      FieldName = 'HORGER'
    end
  end
  object CadUSU_T700Ctm: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODMOD'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODETG'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SEQMOD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODDER'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_T700CTM.*'
      '  FROM USU_T700CTM'
      '   WHERE'
      '     USU_T700CTM.USU_CODEMP = :CODEMP AND'
      '     USU_T700CTM.USU_CODMOD = :CODMOD AND'
      '     USU_T700CTM.USU_CODETG = :CODETG AND'
      '     USU_T700CTM.USU_SEQMOD = :SEQMOD AND'
      '     USU_T700CTM.USU_CODDER = :CODDER')
    Left = 576
    Top = 1128
    object CadUSU_T700CtmUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUSU_T700CtmUSU_CODMOD: TStringField
      FieldName = 'USU_CODMOD'
      Size = 14
    end
    object CadUSU_T700CtmUSU_CODETG: TIntegerField
      FieldName = 'USU_CODETG'
    end
    object CadUSU_T700CtmUSU_SEQMOD: TIntegerField
      FieldName = 'USU_SEQMOD'
    end
    object CadUSU_T700CtmUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUSU_T700CtmUSU_CODCMP: TStringField
      FieldName = 'USU_CODCMP'
      Size = 14
    end
    object CadUSU_T700CtmUSU_DERCMP: TStringField
      FieldName = 'USU_DERCMP'
      Size = 7
    end
    object CadUSU_T700CtmUSU_QTDUTI: TFMTBCDField
      FieldName = 'USU_QTDUTI'
      Precision = 14
      Size = 5
    end
    object CadUSU_T700CtmUSU_QTDFRQ: TFMTBCDField
      FieldName = 'USU_QTDFRQ'
      Precision = 14
      Size = 5
    end
    object CadUSU_T700CtmUSU_PERPRD: TBCDField
      FieldName = 'USU_PERPRD'
      Precision = 6
      Size = 3
    end
    object CadUSU_T700CtmUSU_PRDQTD: TFMTBCDField
      FieldName = 'USU_PRDQTD'
      Precision = 14
      Size = 5
    end
    object CadUSU_T700CtmUSU_UNIME2: TStringField
      FieldName = 'USU_UNIME2'
      Size = 3
    end
    object CadUSU_T700CtmUSU_DATALT: TDateTimeField
      FieldName = 'USU_DATALT'
    end
    object CadUSU_T700CtmUSU_CODVAC: TStringField
      FieldName = 'USU_CODVAC'
      Size = 5
    end
    object CadUSU_T700CtmUSU_QTDINF: TFMTBCDField
      FieldName = 'USU_QTDINF'
      Precision = 14
      Size = 5
    end
    object CadUSU_T700CtmUSU_PERINF: TFMTBCDField
      FieldName = 'USU_PERINF'
      Precision = 14
      Size = 5
    end
  end
  object CadE700Ctm: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODMOD'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODETG'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SEQMOD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODDER'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT E700CTM.*'
      '   FROM E700CTM'
      '    WHERE'
      '      E700CTM.CODEMP = :CODEMP AND'
      '      E700CTM.CODMOD = :CODMOD AND'
      '      E700CTM.CODETG = :CODETG AND'
      '      E700CTM.SEQMOD = :SEQMOD AND'
      '      E700CTM.CODDER = :CODDER')
    Left = 464
    Top = 1184
    object CadE700CtmCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE700CtmCODMOD: TStringField
      FieldName = 'CODMOD'
      Size = 14
    end
    object CadE700CtmCODETG: TIntegerField
      FieldName = 'CODETG'
    end
    object CadE700CtmSEQMOD: TIntegerField
      FieldName = 'SEQMOD'
    end
    object CadE700CtmCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object CadE700CtmCODCMP: TStringField
      FieldName = 'CODCMP'
      Size = 14
    end
    object CadE700CtmDERCMP: TStringField
      FieldName = 'DERCMP'
      Size = 7
    end
    object CadE700CtmQTDUTI: TFMTBCDField
      FieldName = 'QTDUTI'
      Precision = 14
      Size = 5
    end
    object CadE700CtmQTDFRQ: TFMTBCDField
      FieldName = 'QTDFRQ'
      Precision = 14
      Size = 5
    end
    object CadE700CtmPERPRD: TBCDField
      FieldName = 'PERPRD'
      Precision = 6
      Size = 3
    end
    object CadE700CtmPRDQTD: TFMTBCDField
      FieldName = 'PRDQTD'
      Precision = 14
      Size = 5
    end
    object CadE700CtmUNIME2: TStringField
      FieldName = 'UNIME2'
      Size = 3
    end
    object CadE700CtmDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object CadE700CtmCODUSU: TBCDField
      FieldName = 'CODUSU'
      Precision = 10
      Size = 0
    end
    object CadE700CtmCODVAC: TStringField
      FieldName = 'CODVAC'
      Size = 5
    end
    object CadE700CtmBXAORP: TStringField
      FieldName = 'BXAORP'
      Size = 1
    end
    object CadE700CtmDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object CadE700CtmHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object CadE700CtmUSU_INAJU: TStringField
      FieldName = 'USU_INAJU'
      Size = 3
    end
  end
  object ConsE700CtmSemAju: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select e700ctm.*,e075pro.despro,e075p.despro as desmod'
      '    from e700ctm'
      '    inner join e075pro on e075pro.codemp = e700ctm.codemp and'
      '                          e075pro.codpro = e700ctm.codcmp'
      
        '    inner join e075pro e075p on e075p.codemp = e700ctm.codemp an' +
        'd'
      '                                e075p.codpro = e700ctm.codmod'
      '    where ((usu_inaju is null) or (usu_inaju = '#39' '#39')) and'
      '          e075pro.tippro = '#39'C'#39
      '    order by e700ctm.codcmp')
    Left = 368
    Top = 1224
    object ConsE700CtmSemAjuCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE700CtmSemAjuCODMOD: TStringField
      FieldName = 'CODMOD'
      Size = 14
    end
    object ConsE700CtmSemAjuCODETG: TIntegerField
      FieldName = 'CODETG'
    end
    object ConsE700CtmSemAjuSEQMOD: TIntegerField
      FieldName = 'SEQMOD'
    end
    object ConsE700CtmSemAjuCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE700CtmSemAjuCODCMP: TStringField
      FieldName = 'CODCMP'
      Size = 14
    end
    object ConsE700CtmSemAjuDERCMP: TStringField
      FieldName = 'DERCMP'
      Size = 7
    end
    object ConsE700CtmSemAjuQTDUTI: TFMTBCDField
      FieldName = 'QTDUTI'
      Precision = 14
      Size = 5
    end
    object ConsE700CtmSemAjuQTDFRQ: TFMTBCDField
      FieldName = 'QTDFRQ'
      Precision = 14
      Size = 5
    end
    object ConsE700CtmSemAjuPERPRD: TBCDField
      FieldName = 'PERPRD'
      Precision = 6
      Size = 3
    end
    object ConsE700CtmSemAjuPRDQTD: TFMTBCDField
      FieldName = 'PRDQTD'
      Precision = 14
      Size = 5
    end
    object ConsE700CtmSemAjuUNIME2: TStringField
      FieldName = 'UNIME2'
      Size = 3
    end
    object ConsE700CtmSemAjuDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ConsE700CtmSemAjuCODUSU: TBCDField
      FieldName = 'CODUSU'
      Precision = 10
      Size = 0
    end
    object ConsE700CtmSemAjuCODVAC: TStringField
      FieldName = 'CODVAC'
      Size = 5
    end
    object ConsE700CtmSemAjuBXAORP: TStringField
      FieldName = 'BXAORP'
      Size = 1
    end
    object ConsE700CtmSemAjuDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE700CtmSemAjuHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE700CtmSemAjuUSU_INAJU: TStringField
      FieldName = 'USU_INAJU'
      Size = 3
    end
    object ConsE700CtmSemAjuDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsE700CtmSemAjuDESMOD: TStringField
      FieldName = 'DESMOD'
      Size = 100
    end
  end
  object ConsE700CtmAju: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select e700ctm.*,e075pro.despro,e075p.despro as desmod,'
      '       usu_t700inf.usu_perinf, usu_t700ctm.usu_qtduti'
      '    from e700ctm'
      '    inner join e075pro on e075pro.codemp = e700ctm.codemp and'
      '                          e075pro.codpro = e700ctm.codcmp'
      
        '    inner join e075pro e075p on e075p.codemp = e700ctm.codemp an' +
        'd'
      '                                e075p.codpro = e700ctm.codmod'
      
        '    left join usu_t700inf on usu_t700inf.usu_codemp = e700ctm.co' +
        'demp and'
      
        '                             usu_t700inf.usu_codpro = e700ctm.co' +
        'dcmp'
      
        '    left join usu_t700ctm on usu_t700ctm.usu_codemp = e700ctm.co' +
        'demp and'
      
        '                             usu_t700ctm.usu_codmod = e700ctm.co' +
        'dmod and'
      
        '                             usu_t700ctm.usu_codetg = e700ctm.co' +
        'detg and'
      
        '                             usu_t700ctm.usu_seqmod = e700ctm.se' +
        'qmod and'
      
        '                             usu_t700ctm.usu_codder = e700ctm.co' +
        'dder'
      '    where e075pro.tippro = '#39'C'#39
      '    order by e700ctm.seqmod desc, usu_t700inf.usu_perinf desc')
    Left = 576
    Top = 1184
    object ConsE700CtmAjuCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE700CtmAjuCODMOD: TStringField
      FieldName = 'CODMOD'
      Size = 14
    end
    object ConsE700CtmAjuCODETG: TIntegerField
      FieldName = 'CODETG'
    end
    object ConsE700CtmAjuSEQMOD: TIntegerField
      FieldName = 'SEQMOD'
    end
    object ConsE700CtmAjuCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE700CtmAjuCODCMP: TStringField
      FieldName = 'CODCMP'
      Size = 14
    end
    object ConsE700CtmAjuDERCMP: TStringField
      FieldName = 'DERCMP'
      Size = 7
    end
    object ConsE700CtmAjuQTDUTI: TFMTBCDField
      FieldName = 'QTDUTI'
      Precision = 14
      Size = 5
    end
    object ConsE700CtmAjuQTDFRQ: TFMTBCDField
      FieldName = 'QTDFRQ'
      Precision = 14
      Size = 5
    end
    object ConsE700CtmAjuPERPRD: TBCDField
      FieldName = 'PERPRD'
      Precision = 6
      Size = 3
    end
    object ConsE700CtmAjuPRDQTD: TFMTBCDField
      FieldName = 'PRDQTD'
      Precision = 14
      Size = 5
    end
    object ConsE700CtmAjuUNIME2: TStringField
      FieldName = 'UNIME2'
      Size = 3
    end
    object ConsE700CtmAjuDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ConsE700CtmAjuCODUSU: TBCDField
      FieldName = 'CODUSU'
      Precision = 10
      Size = 0
    end
    object ConsE700CtmAjuCODVAC: TStringField
      FieldName = 'CODVAC'
      Size = 5
    end
    object ConsE700CtmAjuBXAORP: TStringField
      FieldName = 'BXAORP'
      Size = 1
    end
    object ConsE700CtmAjuDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE700CtmAjuHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE700CtmAjuUSU_INAJU: TStringField
      FieldName = 'USU_INAJU'
      Size = 3
    end
    object ConsE700CtmAjuDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsE700CtmAjuDESMOD: TStringField
      FieldName = 'DESMOD'
      Size = 100
    end
    object ConsE700CtmAjuUSU_PERINF: TFMTBCDField
      FieldName = 'USU_PERINF'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ConsE700CtmAjuUSU_QTDUTI: TFMTBCDField
      FieldName = 'USU_QTDUTI'
      Precision = 14
      Size = 5
    end
  end
  object ConsUSU_TAjuCom: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codrep'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'mesaju'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'anoaju'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tajucom.*'
      '  from usu_tajucom'
      '  where usu_tajucom.usu_codrep = :codrep and'
      '        usu_tajucom.usu_mesaju = :mesaju and'
      '        usu_tajucom.usu_anoaju = :anoaju')
    Left = 1280
    Top = 208
    object ConsUSU_TAjuComUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object ConsUSU_TAjuComUSU_IDAJU: TIntegerField
      FieldName = 'USU_IDAJU'
    end
    object ConsUSU_TAjuComUSU_MESAJU: TIntegerField
      FieldName = 'USU_MESAJU'
    end
    object ConsUSU_TAjuComUSU_ANOAJU: TIntegerField
      FieldName = 'USU_ANOAJU'
    end
    object ConsUSU_TAjuComUSU_TOTAJU: TBCDField
      FieldName = 'USU_TOTAJU'
      Precision = 11
      Size = 2
    end
    object ConsUSU_TAjuComUSU_VLRAJU: TBCDField
      FieldName = 'USU_VLRAJU'
      Precision = 11
      Size = 2
    end
  end
  object PreCargas: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    BeforePost = PreCargasBeforePost
    Parameters = <
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tprecar.*'
      ' from'
      ' usu_tprecar'
      '   where'
      '     usu_tprecar.usu_precar = :precar'
      '   order by usu_tprecar.usu_precar desc')
    Left = 688
    Top = 1120
    object PreCargasUSU_PRECAR: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_PRECAR'
    end
    object PreCargasUSU_DATGER: TDateTimeField
      Alignment = taCenter
      FieldName = 'USU_DATGER'
    end
    object PreCargasUSU_HORGER: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_HORGER'
    end
    object PreCargasUSU_CODUSU: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODUSU'
    end
    object PreCargasUSU_CARLIB: TStringField
      Alignment = taCenter
      FieldName = 'USU_CARLIB'
      Size = 1
    end
    object PreCargasUSU_DATLIB: TDateTimeField
      Alignment = taCenter
      FieldName = 'USU_DATLIB'
    end
    object PreCargasUSU_HORLIB: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_HORLIB'
    end
    object PreCargasUSU_USULIB: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_USULIB'
    end
    object PreCargasUSU_CARIMP: TStringField
      Alignment = taCenter
      FieldName = 'USU_CARIMP'
      Size = 1
    end
    object PreCargasUSU_ETIPBI: TStringField
      Alignment = taCenter
      FieldName = 'USU_ETIPBI'
      Size = 1
    end
    object PreCargasUSU_INPEDDIV: TStringField
      Alignment = taCenter
      FieldName = 'USU_INPEDDIV'
      Size = 3
    end
  end
  object ClientProdutos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 992
    Top = 1160
    Data = {
      6B0000009619E0BD0100000018000000030000000000030000006B0006436F64
      50726F0100490000000100055749445448020002000E000644657350726F0100
      49000000010005574944544802000200280006436F6444657201004900000001
      000557494454480200020005000000}
    object ClientProdutosCodPro: TStringField
      Alignment = taCenter
      FieldName = 'CodPro'
      Size = 14
    end
    object ClientProdutosDesPro: TStringField
      FieldName = 'DesPro'
      Size = 40
    end
    object ClientProdutosCodDer: TStringField
      Alignment = taCenter
      FieldName = 'CodDer'
      Size = 5
    end
  end
  object ClientConsumoMP: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 568
    Data = {
      7A0000009619E0BD0100000018000000040000000000030000007A0006436F64
      50726F0100490000000100055749445448020002001E000644657350726F0100
      49000000010005574944544802000200640006556E694D656401004900000001
      00055749445448020002000A000651746455746908000400000000000000}
    object ClientConsumoMPCodPro: TStringField
      Alignment = taCenter
      FieldName = 'CodPro'
      Size = 30
    end
    object ClientConsumoMPDesPro: TStringField
      FieldName = 'DesPro'
      Size = 100
    end
    object ClientConsumoMPUniMed: TStringField
      Alignment = taCenter
      FieldName = 'UniMed'
      Size = 10
    end
    object ClientConsumoMPQtdUti: TFloatField
      Alignment = taCenter
      FieldName = 'QtdUti'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
end
