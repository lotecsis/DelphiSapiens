object Dm3: TDm3
  OldCreateOrder = False
  Height = 531
  Width = 647
  object ConsE075Pro: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e075pro.codemp,e075pro.codpro,e075pro.despro,e075pro.codo' +
        'ri,'
      
        'e075pro.codfam,e075pro.unimed,e075pro.usu_vlrmax,e075pro.codclf,' +
        'e075pro.sitpro,e075pro.temicm,e075pro.recicm'
      
        ',e012fam.desfam,e083ori.desori,e022clf.desclf,e075pro.peripi,e07' +
        '5pro.usu_obspro'
      '                                        from e075pro'
      'inner join e012fam on e012fam.codemp = e075pro.codemp and'
      '                      e012fam.codfam = e075pro.codfam'
      'inner join e083ori on e083ori.codemp = e075pro.codemp and'
      '                      e083ori.codori = e075pro.codori'
      'left join e022clf on e022clf.codclf = e075pro.codclf'
      '                     where'
      '                     e075pro.codpro = :codpro')
    Left = 24
    Top = 16
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
    object ConsE075ProCODORI: TStringField
      FieldName = 'CODORI'
      Size = 3
    end
    object ConsE075ProCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE075ProUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE075ProUSU_VLRMAX: TBCDField
      FieldName = 'USU_VLRMAX'
      Precision = 14
      Size = 3
    end
    object ConsE075ProCODCLF: TStringField
      FieldName = 'CODCLF'
      Size = 3
    end
    object ConsE075ProSITPRO: TStringField
      FieldName = 'SITPRO'
      Size = 1
    end
    object ConsE075ProTEMICM: TStringField
      FieldName = 'TEMICM'
      Size = 1
    end
    object ConsE075ProRECICM: TStringField
      FieldName = 'RECICM'
      Size = 1
    end
    object ConsE075ProDESFAM: TStringField
      FieldName = 'DESFAM'
      Size = 50
    end
    object ConsE075ProDESORI: TStringField
      FieldName = 'DESORI'
      Size = 40
    end
    object ConsE075ProDESCLF: TStringField
      FieldName = 'DESCLF'
      Size = 100
    end
    object ConsE075ProPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 4
      Size = 2
    end
    object ConsE075ProUSU_OBSPRO: TStringField
      FieldName = 'USU_OBSPRO'
      Size = 300
    end
  end
  object ConsE210Est: TADOQuery
    Connection = Dm.ADOBanco
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
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'e210est.codpro,e210est.coddep,e210est.unimed,e210est.qtdest,e210' +
        'est.estmin,'
      '(e075pro.usu_vlrmax * e210est.qtdest) as vlrest,'
      '(select sum(e210mvp.qtdmov)'
      '   from e210mvp'
      '   inner join e001tns on e001tns.codemp = e210mvp.codemp and'
      '                         e001tns.codtns = e210mvp.codtns'
      '    where e210mvp.datmov between :datini  and :datfim and'
      '          e210mvp.esteos = '#39'S'#39' and'
      '          e210mvp.codpro = e210est.codpro and'
      '          e210mvp.coddep = e210est.coddep and'
      '          e001tns.estcon = '#39'S'#39') as consumo'
      '                                           from e210est'
      'inner join e075pro on e075pro.codemp = e210est.codemp and'
      '                      e075pro.codpro = e210est.codpro'
      '                       where e210est.codpro = :codpro and'
      '                                  e210est.coddep <> '#39'2000'#39)
    Left = 24
    Top = 80
    object ConsE210EstCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE210EstCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE210EstUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE210EstQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      DisplayFormat = '###,###,00.00'
      Precision = 14
      Size = 5
    end
    object ConsE210EstESTMIN: TFMTBCDField
      FieldName = 'ESTMIN'
      Precision = 14
      Size = 5
    end
    object ConsE210EstVLREST: TFMTBCDField
      FieldName = 'VLREST'
      ReadOnly = True
      DisplayFormat = '###,###,00.00'
      Precision = 38
      Size = 0
    end
    object ConsE210EstCONSUMO: TFMTBCDField
      FieldName = 'CONSUMO'
      ReadOnly = True
      DisplayFormat = '###,###,00.00'
      Precision = 38
      Size = 0
    end
  end
  object ConsE403Fpr: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsE403FprAfterScroll
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e403fpr.codemp,e403fpr.codpro,e403fpr.codfor,e095for.nomf' +
        'or,e403fpr.profor,'
      '       e403fpr.desfor,e403fpr.unimed,e403fpr.przent'
      '                                         from e403fpr'
      'inner join e095for on e095for.codfor = e403fpr.codfor'
      
        '                                        where e403fpr.codpro = :' +
        'codpro and'
      
        '                                                   e095for.sitfo' +
        'r = '#39'A'#39
      
        '                                                   order by e095' +
        'for.codfor')
    Left = 32
    Top = 144
    object ConsE403FprCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE403FprCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE403FprCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsE403FprNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
    object ConsE403FprPROFOR: TStringField
      FieldName = 'PROFOR'
      Size = 30
    end
    object ConsE403FprDESFOR: TStringField
      FieldName = 'DESFOR'
      Size = 250
    end
    object ConsE403FprUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE403FprPRZENT: TIntegerField
      FieldName = 'PRZENT'
    end
  end
  object ConsE095For: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codfor'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e095for.codfor,e095for.nomfor,e095for.apefor,e095for.inse' +
        'st,e095for.cgccpf,'
      
        '       e095for.endfor,e095for.cplend,e095for.baifor,e095for.cepf' +
        'or,'
      
        '       e095for.cidfor,e095for.sigufs,e095for.fonfor,e095for.faxf' +
        'or,e095for.intnet,'
      '       e095for.datcad,e095for.sitfor'
      '                                    from e095for'
      '                                    where'
      '                                    e095for.codfor = :codfor ')
    Left = 128
    Top = 24
    object ConsE095ForCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsE095ForNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
    object ConsE095ForAPEFOR: TStringField
      FieldName = 'APEFOR'
      Size = 50
    end
    object ConsE095ForINSEST: TStringField
      FieldName = 'INSEST'
      Size = 25
    end
    object ConsE095ForCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
    object ConsE095ForENDFOR: TStringField
      FieldName = 'ENDFOR'
      Size = 100
    end
    object ConsE095ForCPLEND: TStringField
      FieldName = 'CPLEND'
    end
    object ConsE095ForBAIFOR: TStringField
      FieldName = 'BAIFOR'
      Size = 75
    end
    object ConsE095ForCEPFOR: TIntegerField
      FieldName = 'CEPFOR'
    end
    object ConsE095ForCIDFOR: TStringField
      FieldName = 'CIDFOR'
      Size = 60
    end
    object ConsE095ForSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsE095ForFONFOR: TStringField
      FieldName = 'FONFOR'
    end
    object ConsE095ForFAXFOR: TStringField
      FieldName = 'FAXFOR'
    end
    object ConsE095ForINTNET: TStringField
      FieldName = 'INTNET'
      Size = 100
    end
    object ConsE095ForDATCAD: TDateTimeField
      FieldName = 'DATCAD'
    end
    object ConsE095ForSITFOR: TStringField
      FieldName = 'SITFOR'
      Size = 1
    end
  end
  object ConsUltimaNfEnt: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e440ipc.codemp,e440ipc.codfil,e440ipc.codfor,e440ipc.numn' +
        'fc,e440ipc.codsnf,e440ipc.seqipc,e440ipc.tnspro,'
      
        '       e440ipc.numocp,e440ipc.codpro,e440ipc.qtdrec,e440ipc.unin' +
        'fc,e440ipc.qtdest,e440ipc.unimed,e440ipc.preuni,e440ipc.preest,'
      
        '       e440ipc.peripi,e440ipc.pericm,e440ipc.vlrbru,e440ipc.vlri' +
        'pi,e440ipc.vlricm,e440ipc.vlrliq,'
      
        '       e440ipc.peripi,e440ipc.pericm,e440ipc.vlrbru,e440ipc.vlri' +
        'pi,e440ipc.vlricm,e440ipc.vlrliq,'
      
        '       e440nfc.datemi,e440nfc.datent,e440nfc.codcpg,e028cpg.desc' +
        'pg,e095for.nomfor,'
      '       (select sum(ipc.qtdrec) from e440ipc ipc'
      '                                          where'
      
        '                                          ipc.codpro = e440ipc.c' +
        'odpro and'
      
        '                                          ipc.numnfc = e440ipc.n' +
        'umnfc and'
      
        '                                          ipc.codfor = e440ipc.c' +
        'odfor and'
      
        '                                          ipc.codsnf = e440ipc.c' +
        'odsnf'
      '                                          ) as qtdtot'
      
        '                                                             fro' +
        'm e440ipc'
      'inner join e440nfc on e440nfc.codemp = e440ipc.codemp and'
      '                      e440nfc.codfil = e440ipc.codfil and'
      '                      e440nfc.codfor = e440ipc.codfor and'
      '                      e440nfc.numnfc = e440ipc.numnfc and'
      '                      e440nfc.codsnf = e440ipc.codsnf'
      'inner join e028cpg on e028cpg.codemp = e440nfc.codemp and'
      '                      e028cpg.codcpg = e440nfc.codcpg'
      'inner join e095for on e095for.codfor = e440nfc.codfor'
      '                      where'
      '                      e440ipc.codpro = :codpro'
      
        '                      order by e440nfc.datemi desc,e440ipc.numnf' +
        'c desc')
    Left = 128
    Top = 88
    object ConsUltimaNfEntCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsUltimaNfEntCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsUltimaNfEntCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsUltimaNfEntNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsUltimaNfEntCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object ConsUltimaNfEntSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ConsUltimaNfEntTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsUltimaNfEntNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsUltimaNfEntCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsUltimaNfEntQTDREC: TFMTBCDField
      FieldName = 'QTDREC'
      Precision = 14
      Size = 5
    end
    object ConsUltimaNfEntUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsUltimaNfEntPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsUltimaNfEntPREEST: TFMTBCDField
      FieldName = 'PREEST'
      Precision = 14
      Size = 5
    end
    object ConsUltimaNfEntPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ConsUltimaNfEntPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ConsUltimaNfEntVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntPERIPI_1: TBCDField
      FieldName = 'PERIPI_1'
      Precision = 5
      Size = 2
    end
    object ConsUltimaNfEntPERICM_1: TBCDField
      FieldName = 'PERICM_1'
      Precision = 5
      Size = 2
    end
    object ConsUltimaNfEntVLRBRU_1: TBCDField
      FieldName = 'VLRBRU_1'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntVLRIPI_1: TBCDField
      FieldName = 'VLRIPI_1'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntVLRICM_1: TBCDField
      FieldName = 'VLRICM_1'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntVLRLIQ_1: TBCDField
      FieldName = 'VLRLIQ_1'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsUltimaNfEntCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsUltimaNfEntDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ConsUltimaNfEntQTDTOT: TFMTBCDField
      FieldName = 'QTDTOT'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsUltimaNfEntUNINFC: TStringField
      FieldName = 'UNINFC'
      Size = 3
    end
    object ConsUltimaNfEntQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object ConsUltimaNfEntDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ConsUltimaNfEntNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
  end
  object ConsE420Ipo: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e420ipo.codemp, e420ipo.codfil, e420ipo.numocp, e420ipo.c' +
        'odpro,e420ipo.seqipo,'
      
        '       e420ipo.qtdped, e420ipo.qtdrec, e420ipo.qtdabe,e420ipo.da' +
        'tent,e420ipo.obsmot,'
      '       e420ocp.datemi, e420ocp.codfor,'
      '       e095for.nomfor'
      '       from e420ipo'
      '       inner join e420ocp on e420ocp.codemp = e420ipo.codemp and'
      '                             e420ocp.codfil = e420ipo.codfil and'
      '                             e420ocp.numocp = e420ipo.numocp'
      '       inner join e095for on e420ocp.codfor = e095for.codfor'
      '                                 where'
      
        '                                 e420ipo.sitipo in ('#39'1'#39','#39'2'#39','#39'9'#39')' +
        ' and'
      '                                 e420ipo.codpro = :codpro'
      '                                 order by e420ocp.datemi')
    Left = 128
    Top = 144
    object ConsE420IpoCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE420IpoCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE420IpoNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsE420IpoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE420IpoQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoQTDREC: TFMTBCDField
      FieldName = 'QTDREC'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE420IpoCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsE420IpoNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
    object ConsE420IpoDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ConsE420IpoOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 1000
    end
    object ConsE420IpoImg1: TStringField
      FieldKind = fkCalculated
      FieldName = 'Img1'
      Size = 10
      Calculated = True
    end
    object ConsE420IpoSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
  end
  object CadUsu_T085Mac: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codcli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'nummen'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t085mac m'
      '                       where'
      '                       m.usu_codcli = :codcli and'
      '                       m.usu_nummen = :nummen')
    Left = 32
    Top = 208
    object CadUsu_T085MacUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object CadUsu_T085MacUSU_NUMMEN: TIntegerField
      FieldName = 'USU_NUMMEN'
    end
    object CadUsu_T085MacUSU_MENSAG: TStringField
      FieldName = 'USU_MENSAG'
      Size = 600
    end
    object CadUsu_T085MacUSU_DATCAD: TDateTimeField
      FieldName = 'USU_DATCAD'
    end
    object CadUsu_T085MacUSU_HORMEN: TIntegerField
      FieldName = 'USU_HORMEN'
    end
    object CadUsu_T085MacUSU_USUCAD: TIntegerField
      FieldName = 'USU_USUCAD'
    end
    object CadUsu_T085MacUSU_DATALE: TDateTimeField
      FieldName = 'USU_DATALE'
    end
    object CadUsu_T085MacUSU_MENRES: TStringField
      FieldName = 'USU_MENRES'
      Size = 1
    end
  end
  object UltimoUsu_T085Mac: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codcli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select m.usu_nummen from usu_t085mac m'
      '                       where'
      '                       m.usu_codcli = :codcli'
      '                       order by m.usu_nummen desc')
    Left = 136
    Top = 208
    object UltimoUsu_T085MacUSU_NUMMEN: TIntegerField
      FieldName = 'USU_NUMMEN'
    end
  end
  object ConsUsu_T085Mac: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'data'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_t085mac.*,usu_tr999usu.usu_nomusu,'
      
        '       e085cli.nomcli,e085cli.apecli,e085cli.cidcli,e085cli.sigu' +
        'fs,e085cli.foncli'
      '       from usu_t085mac'
      
        'inner join usu_tr999usu on usu_tr999usu.usu_codusu = usu_t085mac' +
        '.usu_usucad'
      'inner join e085cli on e085cli.codcli = usu_t085mac.usu_codcli'
      '                                                      where'
      
        '                                                      usu_t085ma' +
        'c.usu_datale <= :data and'
      
        '                                                      usu_t085ma' +
        'c.usu_menres = '#39'N'#39
      
        '                                                      order by u' +
        'su_t085mac.usu_datale,e085cli.nomcli')
    Left = 40
    Top = 256
    object ConsUsu_T085MacUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object ConsUsu_T085MacUSU_NUMMEN: TIntegerField
      FieldName = 'USU_NUMMEN'
    end
    object ConsUsu_T085MacUSU_MENSAG: TStringField
      FieldName = 'USU_MENSAG'
      Size = 600
    end
    object ConsUsu_T085MacUSU_DATCAD: TDateTimeField
      FieldName = 'USU_DATCAD'
    end
    object ConsUsu_T085MacUSU_HORMEN: TIntegerField
      FieldName = 'USU_HORMEN'
    end
    object ConsUsu_T085MacUSU_USUCAD: TIntegerField
      FieldName = 'USU_USUCAD'
    end
    object ConsUsu_T085MacUSU_DATALE: TDateTimeField
      FieldName = 'USU_DATALE'
    end
    object ConsUsu_T085MacUSU_MENRES: TStringField
      FieldName = 'USU_MENRES'
      Size = 1
    end
    object ConsUsu_T085MacUSU_NOMUSU: TStringField
      FieldName = 'USU_NOMUSU'
      Size = 50
    end
    object ConsUsu_T085MacNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsUsu_T085MacAPECLI: TStringField
      FieldName = 'APECLI'
      Size = 50
    end
    object ConsUsu_T085MacCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsUsu_T085MacSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsUsu_T085MacFONCLI: TStringField
      FieldName = 'FONCLI'
    end
  end
  object ClientMateriaPrimaMeiaCons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderMateriaPrimaMediaCons'
    AfterScroll = ClientMateriaPrimaMeiaConsAfterScroll
    Left = 256
    Top = 376
    object ClientMateriaPrimaMeiaConsCODPRO: TStringField
      Alignment = taCenter
      FieldName = 'CODPRO'
      Size = 14
    end
    object ClientMateriaPrimaMeiaConsDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ClientMateriaPrimaMeiaConsCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ClientMateriaPrimaMeiaConsUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ClientMateriaPrimaMeiaConsQTDEST: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QTDEST'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ClientMateriaPrimaMeiaConsESTMIN: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTMIN'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ClientMateriaPrimaMeiaConsCONSUMO: TFMTBCDField
      Alignment = taCenter
      FieldName = 'CONSUMO'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ClientMateriaPrimaMeiaConsOC: TFMTBCDField
      FieldName = 'OC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ClientMateriaPrimaMeiaConsCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ClientMateriaPrimaMeiaConsImg1: TStringField
      FieldKind = fkCalculated
      FieldName = 'Img1'
      Size = 10
      Calculated = True
    end
    object ClientMateriaPrimaMeiaConsCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
  end
  object ProviderMateriaPrimaMediaCons: TDataSetProvider
    DataSet = MateriaPrimaMediaCons
    Left = 256
    Top = 312
  end
  object MateriaPrimaMediaCons: TADOQuery
    Connection = Dm.ADOBanco
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
      'select'
      
        'e210est.codpro,e210est.codder,e075pro.despro,e210est.coddep,e210' +
        'est.unimed,e210est.qtdest,e210est.estmin,e075pro.codfam,'
      '(select sum(e210mvp.qtdmov) from e210mvp'
      'where e210mvp.datmov between :DATINI and :DATFIM and'
      '      e210mvp.esteos = '#39'S'#39' and'
      '      e210mvp.codpro = e210est.codpro and'
      '      e210mvp.coddep = e210est.coddep and'
      '      e210mvp.codtns in ('#39'90250'#39','#39'90251'#39')) as consumo,'
      '(select sum(e420ipo.qtdabe) as qtdabe'
      '        from e420ipo'
      '        where'
      '             e420ipo.sitipo in (1,2,3) and'
      '             e420ipo.codpro = e210est.codpro) as oc'
      '                                      from e210est'
      'inner join e075pro on e075pro.codemp = e210est.codemp and'
      '                      e075pro.codpro = e210est.codpro'
      '                       where'
      
        '                            e210est.coddep not in ('#39'2000'#39','#39'01002' +
        #39','#39'AST'#39','#39'TRC'#39','#39'101'#39','#39'1001.1'#39') AND'
      '                            e075pro.codori <> 01 and'
      '                            e075pro.sitpro = '#39'A'#39)
    Left = 256
    Top = 256
    object MateriaPrimaMediaConsCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object MateriaPrimaMediaConsDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object MateriaPrimaMediaConsCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object MateriaPrimaMediaConsUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object MateriaPrimaMediaConsQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object MateriaPrimaMediaConsESTMIN: TFMTBCDField
      FieldName = 'ESTMIN'
      Precision = 14
      Size = 5
    end
    object MateriaPrimaMediaConsCONSUMO: TFMTBCDField
      FieldName = 'CONSUMO'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object MateriaPrimaMediaConsOC: TFMTBCDField
      FieldName = 'OC'
      Precision = 38
      Size = 0
    end
    object MateriaPrimaMediaConsCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object MateriaPrimaMediaConsCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
  end
  object ConsE403FprMC: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsE403FprMCAfterScroll
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e403fpr.codemp,e403fpr.codpro,e403fpr.codder,e403fpr.codf' +
        'or,e095for.nomfor,e403fpr.profor,e403fpr.datmot,e403fpr.obsmot,'
      '       e403fpr.desfor,e403fpr.unimed,e403fpr.przent,'
      '       (SELECT MAX(e440ipc.DATGER) FROM E440IPC'
      '        WHERE e440ipc.CODPRO = e403fpr.codpro and'
      '              e440ipc.codfor = e403fpr.codfor) as ultima_nf'
      '       from e403fpr'
      'inner join e095for on e095for.codfor = e403fpr.codfor'
      
        '                                        where e403fpr.codpro = :' +
        'codpro and'
      
        '                                                   e095for.sitfo' +
        'r = '#39'A'#39
      
        '                                                   order by ulti' +
        'ma_nf desc')
    Left = 376
    Top = 256
    object ConsE403FprMCCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE403FprMCCODPRO: TStringField
      Alignment = taCenter
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE403FprMCCODFOR: TIntegerField
      Alignment = taCenter
      FieldName = 'CODFOR'
    end
    object ConsE403FprMCNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
    object ConsE403FprMCPROFOR: TStringField
      FieldName = 'PROFOR'
      Size = 30
    end
    object ConsE403FprMCDESFOR: TStringField
      FieldName = 'DESFOR'
      Size = 250
    end
    object ConsE403FprMCUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE403FprMCPRZENT: TIntegerField
      FieldName = 'PRZENT'
    end
    object ConsE403FprMCULTIMA_NF: TDateTimeField
      FieldName = 'ULTIMA_NF'
      ReadOnly = True
    end
    object ConsE403FprMCDATMOT: TDateTimeField
      FieldName = 'DATMOT'
    end
    object ConsE403FprMCOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsE403FprMCImg1: TStringField
      FieldKind = fkCalculated
      FieldName = 'Img1'
      Size = 10
      Calculated = True
    end
    object ConsE403FprMCCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
  end
  object ConsUltimaNfEntMC: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codfor'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e440ipc.numnfc,e440ipc.codemp,e440ipc.codfil,e440ipc.codf' +
        'or,e440ipc.codsnf,e440ipc.seqipc,e440ipc.tnspro,'
      
        '       e440ipc.numocp,e440ipc.codpro,e440ipc.qtdrec,e440ipc.unin' +
        'fc,e440ipc.qtdest,e440ipc.unimed,e440ipc.preuni,e440ipc.preest,'
      
        '       e440ipc.peripi,e440ipc.pericm,e440ipc.vlrbru,e440ipc.vlri' +
        'pi,e440ipc.vlricm,e440ipc.vlrliq,'
      
        '       e440ipc.peripi,e440ipc.pericm,e440ipc.vlrbru,e440ipc.vlri' +
        'pi,e440ipc.vlricm,e440ipc.vlrliq,'
      
        '       e440nfc.datemi,e440nfc.datent,e440nfc.codcpg,e028cpg.desc' +
        'pg,e095for.nomfor'
      
        '                                                             fro' +
        'm e440ipc'
      'inner join e440nfc on e440nfc.codemp = e440ipc.codemp and'
      '                      e440nfc.codfil = e440ipc.codfil and'
      '                      e440nfc.codfor = e440ipc.codfor and'
      '                      e440nfc.numnfc = e440ipc.numnfc and'
      '                      e440nfc.codsnf = e440ipc.codsnf'
      'inner join e028cpg on e028cpg.codemp = e440nfc.codemp and'
      '                      e028cpg.codcpg = e440nfc.codcpg'
      'inner join e095for on e095for.codfor = e440nfc.codfor'
      '                      where'
      '                      e440ipc.codpro = :codpro and'
      '                      e440ipc.codfor = :codfor and'
      
        '                      e440ipc.datger = (select max(e440.datger) ' +
        'from e440ipc e440 where e440.codpro = e440ipc.codpro and'
      
        '                                                                ' +
        '                        e440.codfor = e440ipc.codfor)'
      
        '                      order by e440nfc.datemi desc,e440ipc.numnf' +
        'c desc')
    Left = 472
    Top = 256
    object ConsUltimaNfEntMCCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsUltimaNfEntMCCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsUltimaNfEntMCCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsUltimaNfEntMCNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsUltimaNfEntMCCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object ConsUltimaNfEntMCSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ConsUltimaNfEntMCTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsUltimaNfEntMCNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsUltimaNfEntMCCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsUltimaNfEntMCQTDREC: TFMTBCDField
      FieldName = 'QTDREC'
      Precision = 14
      Size = 5
    end
    object ConsUltimaNfEntMCUNINFC: TStringField
      FieldName = 'UNINFC'
      Size = 3
    end
    object ConsUltimaNfEntMCQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object ConsUltimaNfEntMCUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsUltimaNfEntMCPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ConsUltimaNfEntMCPREEST: TFMTBCDField
      FieldName = 'PREEST'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ConsUltimaNfEntMCPERIPI: TBCDField
      FieldName = 'PERIPI'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 5
      Size = 2
    end
    object ConsUltimaNfEntMCPERICM: TBCDField
      FieldName = 'PERICM'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 5
      Size = 2
    end
    object ConsUltimaNfEntMCVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntMCVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntMCVLRICM: TBCDField
      FieldName = 'VLRICM'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntMCVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntMCPERIPI_1: TBCDField
      FieldName = 'PERIPI_1'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 5
      Size = 2
    end
    object ConsUltimaNfEntMCPERICM_1: TBCDField
      FieldName = 'PERICM_1'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 5
      Size = 2
    end
    object ConsUltimaNfEntMCVLRBRU_1: TBCDField
      FieldName = 'VLRBRU_1'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntMCVLRIPI_1: TBCDField
      FieldName = 'VLRIPI_1'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntMCVLRICM_1: TBCDField
      FieldName = 'VLRICM_1'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntMCVLRLIQ_1: TBCDField
      FieldName = 'VLRLIQ_1'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsUltimaNfEntMCDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsUltimaNfEntMCDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ConsUltimaNfEntMCCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsUltimaNfEntMCDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ConsUltimaNfEntMCNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
  end
  object ConsE095Cto: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    OnNewRecord = ConsE095CtoNewRecord
    Parameters = <
      item
        Name = 'CODFOR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM E095CTO'
      'WHERE CODFOR = :CODFOR'
      'ORDER BY SEQCTO')
    Left = 472
    Top = 312
    object ConsE095CtoCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsE095CtoSEQCTO: TIntegerField
      FieldName = 'SEQCTO'
    end
    object ConsE095CtoNOMCTO: TStringField
      FieldName = 'NOMCTO'
      Size = 150
    end
    object ConsE095CtoDATNAS: TDateTimeField
      FieldName = 'DATNAS'
    end
    object ConsE095CtoNIVCTO: TStringField
      FieldName = 'NIVCTO'
      Size = 1
    end
    object ConsE095CtoSETCTO: TStringField
      FieldName = 'SETCTO'
      Size = 15
    end
    object ConsE095CtoCARCTO: TStringField
      FieldName = 'CARCTO'
    end
    object ConsE095CtoFONCTO: TStringField
      FieldName = 'FONCTO'
    end
    object ConsE095CtoRAMCTO: TIntegerField
      FieldName = 'RAMCTO'
    end
    object ConsE095CtoFAXCTO: TStringField
      FieldName = 'FAXCTO'
    end
    object ConsE095CtoINTNET: TStringField
      FieldName = 'INTNET'
      Size = 100
    end
    object ConsE095CtoHOBCON: TStringField
      FieldName = 'HOBCON'
      Size = 15
    end
    object ConsE095CtoTIMCON: TStringField
      FieldName = 'TIMCON'
      Size = 15
    end
    object ConsE095CtoTIPINT: TIntegerField
      FieldName = 'TIPINT'
    end
    object ConsE095CtoSITCTO: TStringField
      FieldName = 'SITCTO'
      Size = 1
    end
    object ConsE095CtoCPFCTO: TBCDField
      FieldName = 'CPFCTO'
      Precision = 12
      Size = 0
    end
    object ConsE095CtoCODNIV: TIntegerField
      FieldName = 'CODNIV'
    end
    object ConsE095CtoUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE095CtoDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE095CtoHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE095CtoUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object ConsE095CtoDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ConsE095CtoHORALT: TIntegerField
      FieldName = 'HORALT'
    end
  end
  object CadE420Ipo: TADOQuery
    Connection = Dm.ADOBanco
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
        Name = 'NUMOCP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SEQIPO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM E420IPO'
      'WHERE'
      'CODEMP = :CODEMP AND'
      'CODFIL = :CODFIL AND'
      'NUMOCP = :NUMOCP AND'
      'SEQIPO = :SEQIPO')
    Left = 208
    Top = 144
    object CadE420IpoCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE420IpoCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE420IpoNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object CadE420IpoSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object CadE420IpoTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object CadE420IpoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object CadE420IpoCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object CadE420IpoCPLIPO: TStringField
      FieldName = 'CPLIPO'
      Size = 250
    end
    object CadE420IpoPROFOR: TStringField
      FieldName = 'PROFOR'
      Size = 30
    end
    object CadE420IpoDESFOR: TStringField
      FieldName = 'DESFOR'
      Size = 250
    end
    object CadE420IpoUNIFOR: TStringField
      FieldName = 'UNIFOR'
      Size = 3
    end
    object CadE420IpoCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object CadE420IpoCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object CadE420IpoCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object CadE420IpoCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object CadE420IpoCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object CadE420IpoCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object CadE420IpoCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object CadE420IpoCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object CadE420IpoQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object CadE420IpoQTDREC: TFMTBCDField
      FieldName = 'QTDREC'
      Precision = 14
      Size = 5
    end
    object CadE420IpoQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object CadE420IpoQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object CadE420IpoUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object CadE420IpoCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object CadE420IpoPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object CadE420IpoPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object CadE420IpoPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object CadE420IpoPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object CadE420IpoPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object CadE420IpoPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object CadE420IpoPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object CadE420IpoPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object CadE420IpoPERFUN: TBCDField
      FieldName = 'PERFUN'
      Precision = 4
      Size = 2
    end
    object CadE420IpoDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object CadE420IpoCODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object CadE420IpoNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object CadE420IpoCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object CadE420IpoCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object CadE420IpoCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object CadE420IpoCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object CadE420IpoVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBFU: TBCDField
      FieldName = 'VLRBFU'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRFUN: TBCDField
      FieldName = 'VLRFUN'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object CadE420IpoACRFIN: TBCDField
      FieldName = 'ACRFIN'
      Precision = 15
      Size = 2
    end
    object CadE420IpoSITIPO: TIntegerField
      FieldName = 'SITIPO'
    end
    object CadE420IpoCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object CadE420IpoOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 1000
    end
    object CadE420IpoSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object CadE420IpoFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object CadE420IpoNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object CadE420IpoDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object CadE420IpoSEQCCP: TIntegerField
      FieldName = 'SEQCCP'
    end
    object CadE420IpoINDEQI: TStringField
      FieldName = 'INDEQI'
      Size = 1
    end
    object CadE420IpoUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object CadE420IpoDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object CadE420IpoHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object CadE420IpoFILPED: TIntegerField
      FieldName = 'FILPED'
    end
    object CadE420IpoNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object CadE420IpoDATVLT: TDateTimeField
      FieldName = 'DATVLT'
    end
    object CadE420IpoQTDFOR: TFMTBCDField
      FieldName = 'QTDFOR'
      Precision = 14
      Size = 5
    end
    object CadE420IpoPREFOR: TFMTBCDField
      FieldName = 'PREFOR'
      Precision = 14
      Size = 5
    end
    object CadE420IpoCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object CadE420IpoDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object CadE420IpoCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object CadE420IpoFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object CadE420IpoPERIIM: TBCDField
      FieldName = 'PERIIM'
      Precision = 5
      Size = 2
    end
    object CadE420IpoVLRBII: TBCDField
      FieldName = 'VLRBII'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRIIM: TBCDField
      FieldName = 'VLRIIM'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object CadE420IpoSEQIOR: TIntegerField
      FieldName = 'SEQIOR'
    end
    object CadE420IpoVLRBPI: TBCDField
      FieldName = 'VLRBPI'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBCR: TBCDField
      FieldName = 'VLRBCR'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRCOR: TBCDField
      FieldName = 'VLRCOR'
      Precision = 15
      Size = 2
    end
    object CadE420IpoCODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object CadE420IpoIDXGRD: TIntegerField
      FieldName = 'IDXGRD'
    end
    object CadE420IpoPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object CadE420IpoVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object CadE420IpoPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object CadE420IpoVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object CadE420IpoPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object CadE420IpoVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object CadE420IpoPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object CadE420IpoVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object CadE420IpoPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object CadE420IpoVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object CadE420IpoFILCES: TIntegerField
      FieldName = 'FILCES'
    end
    object CadE420IpoDATCES: TDateTimeField
      FieldName = 'DATCES'
    end
    object CadE420IpoSEQCES: TIntegerField
      FieldName = 'SEQCES'
    end
    object CadE420IpoPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object CadE420IpoPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object CadE420IpoVLRORI: TBCDField
      FieldName = 'VLRORI'
      Precision = 15
      Size = 2
    end
    object CadE420IpoQTDORI: TFMTBCDField
      FieldName = 'QTDORI'
      Precision = 14
      Size = 5
    end
    object CadE420IpoVLRFEI: TBCDField
      FieldName = 'VLRFEI'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRSEI: TBCDField
      FieldName = 'VLRSEI'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLROUI: TBCDField
      FieldName = 'VLROUI'
      Precision = 15
      Size = 2
    end
    object CadE420IpoBCOIMP: TBCDField
      FieldName = 'BCOIMP'
      Precision = 15
      Size = 2
    end
    object CadE420IpoCOFIMP: TBCDField
      FieldName = 'COFIMP'
      Precision = 15
      Size = 2
    end
    object CadE420IpoBPIIMP: TBCDField
      FieldName = 'BPIIMP'
      Precision = 15
      Size = 2
    end
    object CadE420IpoPISIMP: TBCDField
      FieldName = 'PISIMP'
      Precision = 15
      Size = 2
    end
    object CadE420IpoSEQCPK: TIntegerField
      FieldName = 'SEQCPK'
    end
    object CadE420IpoVLRDM1: TFMTBCDField
      FieldName = 'VLRDM1'
      Precision = 14
      Size = 5
    end
    object CadE420IpoVLRDM2: TFMTBCDField
      FieldName = 'VLRDM2'
      Precision = 14
      Size = 5
    end
    object CadE420IpoVLRDM3: TFMTBCDField
      FieldName = 'VLRDM3'
      Precision = 14
      Size = 5
    end
    object CadE420IpoVLRDM4: TFMTBCDField
      FieldName = 'VLRDM4'
      Precision = 14
      Size = 5
    end
    object CadE420IpoVLRDM5: TFMTBCDField
      FieldName = 'VLRDM5'
      Precision = 14
      Size = 5
    end
    object CadE420IpoVLRDM6: TFMTBCDField
      FieldName = 'VLRDM6'
      Precision = 14
      Size = 5
    end
    object CadE420IpoBEMPRI: TStringField
      FieldName = 'BEMPRI'
    end
    object CadE420IpoEMPPED: TIntegerField
      FieldName = 'EMPPED'
    end
    object CadE420IpoEMPNFV: TIntegerField
      FieldName = 'EMPNFV'
    end
    object CadE420IpoFILNFV: TIntegerField
      FieldName = 'FILNFV'
    end
    object CadE420IpoSNFNFV: TStringField
      FieldName = 'SNFNFV'
      Size = 3
    end
    object CadE420IpoNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object CadE420IpoSEQIPV: TIntegerField
      FieldName = 'SEQIPV'
    end
    object CadE420IpoCODTRG: TStringField
      FieldName = 'CODTRG'
      Size = 10
    end
    object CadE420IpoPERBON: TBCDField
      FieldName = 'PERBON'
      Precision = 5
      Size = 2
    end
    object CadE420IpoVLRDFA: TBCDField
      FieldName = 'VLRDFA'
      Precision = 15
      Size = 2
    end
    object CadE420IpoQTDBPI: TBCDField
      FieldName = 'QTDBPI'
      Precision = 15
      Size = 3
    end
    object CadE420IpoALIPIS: TBCDField
      FieldName = 'ALIPIS'
      Precision = 15
    end
    object CadE420IpoQTDBCO: TBCDField
      FieldName = 'QTDBCO'
      Precision = 15
      Size = 3
    end
    object CadE420IpoALICOF: TBCDField
      FieldName = 'ALICOF'
      Precision = 15
    end
    object CadE420IpoQTDBIP: TBCDField
      FieldName = 'QTDBIP'
      Precision = 15
      Size = 3
    end
    object CadE420IpoALIIPI: TBCDField
      FieldName = 'ALIIPI'
      Precision = 15
    end
    object CadE420IpoCODFAB: TStringField
      FieldName = 'CODFAB'
      Size = 10
    end
    object CadE420IpoPROFAB: TStringField
      FieldName = 'PROFAB'
      Size = 21
    end
    object CadE420IpoUSU_VLRMAX: TBCDField
      FieldName = 'USU_VLRMAX'
      Precision = 13
      Size = 2
    end
    object CadE420IpoUSU_VLRMED: TBCDField
      FieldName = 'USU_VLRMED'
      Precision = 13
      Size = 2
    end
    object CadE420IpoSUBPRO: TStringField
      FieldName = 'SUBPRO'
      Size = 1
    end
    object CadE420IpoTIPCUR: TIntegerField
      FieldName = 'TIPCUR'
    end
  end
  object ConsumoMensalMP: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'mes'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ano'
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
      'select sum(e210mvp.qtdmov) as consumo from e210mvp'
      'where extract(month from e210mvp.datmov) = :mes and'
      '      extract(year from e210mvp.datmov) = :ano and'
      '      e210mvp.esteos = '#39'S'#39' and'
      '      e210mvp.codtns in ('#39'90250'#39','#39'90251'#39') and'
      '      e210mvp.codpro = :codpro')
    Left = 472
    Top = 360
    object ConsumoMensalMPCONSUMO: TFMTBCDField
      FieldName = 'CONSUMO'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object CadE403Fpr: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfor'
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
      'select * from e403fpr'
      'where'
      'codemp = :codemp and'
      'codfor = :codfor and'
      'codpro = :codpro and'
      'codder = :codder')
    Left = 288
    Top = 144
    object CadE403FprCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE403FprCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object CadE403FprCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object CadE403FprCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object CadE403FprPROFOR: TStringField
      FieldName = 'PROFOR'
      Size = 30
    end
    object CadE403FprDESFOR: TStringField
      FieldName = 'DESFOR'
      Size = 250
    end
    object CadE403FprUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object CadE403FprPRZENT: TIntegerField
      FieldName = 'PRZENT'
    end
    object CadE403FprCODBAR: TBCDField
      FieldName = 'CODBAR'
      Precision = 14
      Size = 0
    end
    object CadE403FprPREBST: TFMTBCDField
      FieldName = 'PREBST'
      Precision = 14
      Size = 5
    end
    object CadE403FprPTOQLD: TIntegerField
      FieldName = 'PTOQLD'
    end
    object CadE403FprPTOPRZ: TIntegerField
      FieldName = 'PTOPRZ'
    end
    object CadE403FprPTOCND: TIntegerField
      FieldName = 'PTOCND'
    end
    object CadE403FprBLOFPR: TStringField
      FieldName = 'BLOFPR'
      Size = 1
    end
    object CadE403FprCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object CadE403FprOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object CadE403FprUSUMOT: TBCDField
      FieldName = 'USUMOT'
      Precision = 10
      Size = 0
    end
    object CadE403FprDATMOT: TDateTimeField
      FieldName = 'DATMOT'
    end
    object CadE403FprHORMOT: TIntegerField
      FieldName = 'HORMOT'
    end
    object CadE403FprCODCLF: TStringField
      FieldName = 'CODCLF'
      Size = 3
    end
    object CadE403FprPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 4
      Size = 2
    end
    object CadE403FprRECIPI: TStringField
      FieldName = 'RECIPI'
      Size = 1
    end
    object CadE403FprCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object CadE403FprCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object CadE403FprCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object CadE403FprCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object CadE403FprCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object CadE403FprRECICM: TStringField
      FieldName = 'RECICM'
      Size = 1
    end
    object CadE403FprNOTFOR: TBCDField
      FieldName = 'NOTFOR'
      Precision = 5
      Size = 2
    end
    object CadE403FprINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object CadE403FprDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object CadE403FprHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object CadE403FprNOTPRO: TBCDField
      FieldName = 'NOTPRO'
      Precision = 5
      Size = 2
    end
    object CadE403FprRECPIS: TStringField
      FieldName = 'RECPIS'
      Size = 1
    end
    object CadE403FprCODSTR: TStringField
      FieldName = 'CODSTR'
      Size = 3
    end
    object CadE403FprPERSCO: TBCDField
      FieldName = 'PERSCO'
      Precision = 5
      Size = 2
    end
    object CadE403FprRECCOF: TStringField
      FieldName = 'RECCOF'
      Size = 1
    end
    object CadE403FprIPIPDO: TStringField
      FieldName = 'IPIPDO'
      Size = 1
    end
    object CadE403FprQTDMLT: TFMTBCDField
      FieldName = 'QTDMLT'
      Precision = 12
      Size = 5
    end
    object CadE403FprQTDMIN: TFMTBCDField
      FieldName = 'QTDMIN'
      Precision = 12
      Size = 5
    end
    object CadE403FprQTDMAX: TFMTBCDField
      FieldName = 'QTDMAX'
      Precision = 12
      Size = 5
    end
    object CadE403FprCODPIN: TStringField
      FieldName = 'CODPIN'
    end
    object CadE403FprSOMIIM: TStringField
      FieldName = 'SOMIIM'
      Size = 1
    end
    object CadE403FprSOMIIL: TStringField
      FieldName = 'SOMIIL'
      Size = 1
    end
    object CadE403FprSOMIPS: TStringField
      FieldName = 'SOMIPS'
      Size = 1
    end
    object CadE403FprSOMIPL: TStringField
      FieldName = 'SOMIPL'
      Size = 1
    end
    object CadE403FprSOMICO: TStringField
      FieldName = 'SOMICO'
      Size = 1
    end
    object CadE403FprSOMICL: TStringField
      FieldName = 'SOMICL'
      Size = 1
    end
    object CadE403FprTEMICM: TStringField
      FieldName = 'TEMICM'
      Size = 1
    end
    object CadE403FprTRIPIS: TStringField
      FieldName = 'TRIPIS'
      Size = 1
    end
    object CadE403FprTRICOF: TStringField
      FieldName = 'TRICOF'
      Size = 1
    end
    object CadE403FprPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object CadE403FprPERPIS: TBCDField
      FieldName = 'PERPIS'
      Precision = 4
      Size = 2
    end
    object CadE403FprPERCOF: TBCDField
      FieldName = 'PERCOF'
      Precision = 4
      Size = 2
    end
    object CadE403FprPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object CadE403FprPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object CadE403FprPERFUN: TBCDField
      FieldName = 'PERFUN'
      Precision = 4
      Size = 2
    end
    object CadE403FprUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object CadE403FprDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object CadE403FprHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object CadE403FprUSUATU: TBCDField
      FieldName = 'USUATU'
      Precision = 10
      Size = 0
    end
    object CadE403FprDATATU: TDateTimeField
      FieldName = 'DATATU'
    end
    object CadE403FprHORATU: TIntegerField
      FieldName = 'HORATU'
    end
    object CadE403FprORIMER: TStringField
      FieldName = 'ORIMER'
      Size = 1
    end
    object CadE403FprCODFIF: TStringField
      FieldName = 'CODFIF'
      Size = 10
    end
    object CadE403FprCODFIE: TStringField
      FieldName = 'CODFIE'
      Size = 10
    end
    object CadE403FprCODFIM: TStringField
      FieldName = 'CODFIM'
      Size = 10
    end
    object CadE403FprPERPIM: TBCDField
      FieldName = 'PERPIM'
      Precision = 4
      Size = 2
    end
    object CadE403FprPERCIM: TBCDField
      FieldName = 'PERCIM'
      Precision = 4
      Size = 2
    end
  end
  object ConsSql: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <>
    Left = 256
    Top = 32
  end
  object ConsumoMP: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
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
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select sum(e210mvp.qtdmov) as consumo from e210mvp'
      'where  e210mvp.datmov between :datini and :datfim and'
      '      e210mvp.esteos = '#39'S'#39' and'
      '      e210mvp.codtns in ('#39'90250'#39','#39'90251'#39') and'
      '      e210mvp.codpro = :codpro')
    Left = 560
    Top = 256
    object ConsumoMPCONSUMO: TFMTBCDField
      FieldName = 'CONSUMO'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object AjustaVlrEstoque: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'data'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e210mvp where codpro = :codpro and'
      '                            datmov > :data '
      'order by datmov,seqmov')
    Left = 416
    Top = 72
    object AjustaVlrEstoqueCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object AjustaVlrEstoqueCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object AjustaVlrEstoqueCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object AjustaVlrEstoqueCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object AjustaVlrEstoqueDATMOV: TDateTimeField
      FieldName = 'DATMOV'
    end
    object AjustaVlrEstoqueSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object AjustaVlrEstoqueDATFEC: TDateTimeField
      FieldName = 'DATFEC'
    end
    object AjustaVlrEstoqueSEQFEC: TIntegerField
      FieldName = 'SEQFEC'
    end
    object AjustaVlrEstoqueFILDEP: TIntegerField
      FieldName = 'FILDEP'
    end
    object AjustaVlrEstoqueMSKDEP: TStringField
      FieldName = 'MSKDEP'
      Size = 18
    end
    object AjustaVlrEstoqueNIVDEP: TIntegerField
      FieldName = 'NIVDEP'
    end
    object AjustaVlrEstoqueCODTNS: TStringField
      FieldName = 'CODTNS'
      Size = 5
    end
    object AjustaVlrEstoqueESTMOV: TStringField
      FieldName = 'ESTMOV'
      Size = 2
    end
    object AjustaVlrEstoqueESTEOS: TStringField
      FieldName = 'ESTEOS'
      Size = 1
    end
    object AjustaVlrEstoqueESTVMV: TStringField
      FieldName = 'ESTVMV'
      Size = 1
    end
    object AjustaVlrEstoqueORIORP: TStringField
      FieldName = 'ORIORP'
      Size = 3
    end
    object AjustaVlrEstoqueNUMDOC: TIntegerField
      FieldName = 'NUMDOC'
    end
    object AjustaVlrEstoqueDATFAB: TDateTimeField
      FieldName = 'DATFAB'
    end
    object AjustaVlrEstoqueHORFAB: TIntegerField
      FieldName = 'HORFAB'
    end
    object AjustaVlrEstoqueDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object AjustaVlrEstoqueDATVLT: TDateTimeField
      FieldName = 'DATVLT'
    end
    object AjustaVlrEstoqueHORVLT: TIntegerField
      FieldName = 'HORVLT'
    end
    object AjustaVlrEstoqueCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object AjustaVlrEstoqueNUMSEP: TStringField
      FieldName = 'NUMSEP'
      Size = 17
    end
    object AjustaVlrEstoqueOBSMVP: TStringField
      FieldName = 'OBSMVP'
      Size = 250
    end
    object AjustaVlrEstoqueQTDMOV: TFMTBCDField
      FieldName = 'QTDMOV'
      Precision = 14
      Size = 5
    end
    object AjustaVlrEstoqueVLRMOV: TBCDField
      FieldName = 'VLRMOV'
      Precision = 15
      Size = 2
    end
    object AjustaVlrEstoqueQTDANT: TFMTBCDField
      FieldName = 'QTDANT'
      Precision = 14
      Size = 5
    end
    object AjustaVlrEstoqueVLRANT: TBCDField
      FieldName = 'VLRANT'
      Precision = 15
      Size = 2
    end
    object AjustaVlrEstoqueQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object AjustaVlrEstoqueVLREST: TBCDField
      FieldName = 'VLREST'
      Precision = 15
      Size = 2
    end
    object AjustaVlrEstoquePRMEST: TFMTBCDField
      FieldName = 'PRMEST'
      Precision = 15
      Size = 6
    end
    object AjustaVlrEstoquePROTRF: TStringField
      FieldName = 'PROTRF'
      Size = 14
    end
    object AjustaVlrEstoqueDERTRF: TStringField
      FieldName = 'DERTRF'
      Size = 7
    end
    object AjustaVlrEstoqueDEPTRF: TStringField
      FieldName = 'DEPTRF'
      Size = 10
    end
    object AjustaVlrEstoqueSEQTRF: TIntegerField
      FieldName = 'SEQTRF'
    end
    object AjustaVlrEstoqueUSURES: TBCDField
      FieldName = 'USURES'
      Precision = 10
      Size = 0
    end
    object AjustaVlrEstoqueCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object AjustaVlrEstoqueUSUREC: TBCDField
      FieldName = 'USUREC'
      Precision = 10
      Size = 0
    end
    object AjustaVlrEstoqueCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object AjustaVlrEstoqueNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object AjustaVlrEstoqueCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object AjustaVlrEstoqueCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object AjustaVlrEstoqueLCTFIN: TStringField
      FieldName = 'LCTFIN'
      Size = 1
    end
    object AjustaVlrEstoqueNUMLOT: TIntegerField
      FieldName = 'NUMLOT'
    end
    object AjustaVlrEstoqueNUMEME: TIntegerField
      FieldName = 'NUMEME'
    end
    object AjustaVlrEstoqueSEQEME: TIntegerField
      FieldName = 'SEQEME'
    end
    object AjustaVlrEstoqueCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object AjustaVlrEstoqueCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object AjustaVlrEstoqueNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object AjustaVlrEstoqueSEQIPV: TIntegerField
      FieldName = 'SEQIPV'
    end
    object AjustaVlrEstoqueCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object AjustaVlrEstoqueFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object AjustaVlrEstoqueNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object AjustaVlrEstoqueSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object AjustaVlrEstoqueFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object AjustaVlrEstoqueCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object AjustaVlrEstoqueNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object AjustaVlrEstoqueSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object AjustaVlrEstoqueSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object AjustaVlrEstoqueUSUDIG: TBCDField
      FieldName = 'USUDIG'
      Precision = 10
      Size = 0
    end
    object AjustaVlrEstoqueDATDIG: TDateTimeField
      FieldName = 'DATDIG'
    end
    object AjustaVlrEstoqueHORDIG: TIntegerField
      FieldName = 'HORDIG'
    end
    object AjustaVlrEstoqueCODLIG: TIntegerField
      FieldName = 'CODLIG'
    end
    object AjustaVlrEstoqueMOTMVP: TStringField
      FieldName = 'MOTMVP'
      Size = 250
    end
    object AjustaVlrEstoqueDATINV: TDateTimeField
      FieldName = 'DATINV'
    end
    object AjustaVlrEstoqueEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object AjustaVlrEstoqueVLRDM1: TFMTBCDField
      FieldName = 'VLRDM1'
      Precision = 14
      Size = 5
    end
    object AjustaVlrEstoqueVLRDM2: TFMTBCDField
      FieldName = 'VLRDM2'
      Precision = 14
      Size = 5
    end
    object AjustaVlrEstoqueVLRDM3: TFMTBCDField
      FieldName = 'VLRDM3'
      Precision = 14
      Size = 5
    end
    object AjustaVlrEstoqueVLRDM4: TFMTBCDField
      FieldName = 'VLRDM4'
      Precision = 14
      Size = 5
    end
    object AjustaVlrEstoqueVLRDM5: TFMTBCDField
      FieldName = 'VLRDM5'
      Precision = 14
      Size = 5
    end
    object AjustaVlrEstoqueVLRDM6: TFMTBCDField
      FieldName = 'VLRDM6'
      Precision = 14
      Size = 5
    end
    object AjustaVlrEstoqueESTWMS: TStringField
      FieldName = 'ESTWMS'
      Size = 1
    end
    object AjustaVlrEstoqueESTCOC: TStringField
      FieldName = 'ESTCOC'
      Size = 1
    end
    object AjustaVlrEstoqueESTCOF: TStringField
      FieldName = 'ESTCOF'
      Size = 1
    end
    object AjustaVlrEstoqueFILPED: TIntegerField
      FieldName = 'FILPED'
    end
    object AjustaVlrEstoqueNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object AjustaVlrEstoqueSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object AjustaVlrEstoqueUTIREP: TStringField
      FieldName = 'UTIREP'
      Size = 1
    end
    object AjustaVlrEstoqueFILANE: TIntegerField
      FieldName = 'FILANE'
    end
    object AjustaVlrEstoqueNUMANE: TBCDField
      FieldName = 'NUMANE'
      Precision = 12
      Size = 0
    end
    object AjustaVlrEstoqueNUMPFA: TIntegerField
      FieldName = 'NUMPFA'
    end
    object AjustaVlrEstoqueSEQPES: TIntegerField
      FieldName = 'SEQPES'
    end
    object AjustaVlrEstoqueLOTDES: TStringField
      FieldName = 'LOTDES'
      Size = 17
    end
    object AjustaVlrEstoqueCODETG: TIntegerField
      FieldName = 'CODETG'
    end
    object AjustaVlrEstoqueSEQCMP: TIntegerField
      FieldName = 'SEQCMP'
    end
    object AjustaVlrEstoqueACEFEC: TStringField
      FieldName = 'ACEFEC'
      Size = 1
    end
    object AjustaVlrEstoqueULTMDI: TStringField
      FieldName = 'ULTMDI'
      Size = 1
    end
    object AjustaVlrEstoqueCODBEM: TStringField
      FieldName = 'CODBEM'
    end
    object AjustaVlrEstoqueFILCLE: TIntegerField
      FieldName = 'FILCLE'
    end
    object AjustaVlrEstoqueNUMCLE: TIntegerField
      FieldName = 'NUMCLE'
    end
    object AjustaVlrEstoqueVLRCM1: TBCDField
      FieldName = 'VLRCM1'
      Precision = 15
      Size = 2
    end
    object AjustaVlrEstoqueDATCM1: TDateTimeField
      FieldName = 'DATCM1'
    end
    object AjustaVlrEstoqueCOTCM1: TFMTBCDField
      FieldName = 'COTCM1'
      Precision = 19
      Size = 10
    end
    object AjustaVlrEstoqueVLRCM2: TBCDField
      FieldName = 'VLRCM2'
      Precision = 15
      Size = 2
    end
    object AjustaVlrEstoqueDATCM2: TDateTimeField
      FieldName = 'DATCM2'
    end
    object AjustaVlrEstoqueCOTCM2: TFMTBCDField
      FieldName = 'COTCM2'
      Precision = 19
      Size = 10
    end
    object AjustaVlrEstoqueSEPDES: TStringField
      FieldName = 'SEPDES'
      Size = 17
    end
    object AjustaVlrEstoqueCODSLT: TStringField
      FieldName = 'CODSLT'
      Size = 10
    end
    object AjustaVlrEstoquePERGER: TBCDField
      FieldName = 'PERGER'
      Precision = 5
      Size = 2
    end
    object AjustaVlrEstoquePERPUR: TBCDField
      FieldName = 'PERPUR'
      Precision = 5
      Size = 2
    end
    object AjustaVlrEstoquePERUMI: TBCDField
      FieldName = 'PERUMI'
      Precision = 5
      Size = 2
    end
    object AjustaVlrEstoqueDATTES: TDateTimeField
      FieldName = 'DATTES'
    end
    object AjustaVlrEstoqueCODEND: TStringField
      FieldName = 'CODEND'
    end
    object AjustaVlrEstoqueCODSAF: TStringField
      FieldName = 'CODSAF'
      Size = 10
    end
    object AjustaVlrEstoqueCODTRM: TStringField
      FieldName = 'CODTRM'
      Size = 10
    end
    object AjustaVlrEstoqueCODBNF: TStringField
      FieldName = 'CODBNF'
      Size = 10
    end
    object AjustaVlrEstoqueCODCAT: TStringField
      FieldName = 'CODCAT'
      Size = 10
    end
    object AjustaVlrEstoqueVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object AjustaVlrEstoquePRMICM: TFMTBCDField
      FieldName = 'PRMICM'
      Precision = 15
      Size = 6
    end
    object AjustaVlrEstoqueICMACF: TBCDField
      FieldName = 'ICMACF'
      Precision = 15
      Size = 2
    end
    object AjustaVlrEstoqueCODPNE: TIntegerField
      FieldName = 'CODPNE'
    end
    object AjustaVlrEstoqueCODETP: TIntegerField
      FieldName = 'CODETP'
    end
    object AjustaVlrEstoqueCODCUL: TIntegerField
      FieldName = 'CODCUL'
    end
    object AjustaVlrEstoqueNUMTER: TStringField
      FieldName = 'NUMTER'
      Size = 10
    end
    object AjustaVlrEstoqueNUMAOG: TStringField
      FieldName = 'NUMAOG'
      Size = 10
    end
    object AjustaVlrEstoqueNUMCER: TStringField
      FieldName = 'NUMCER'
      Size = 10
    end
    object AjustaVlrEstoqueNUMBOL: TStringField
      FieldName = 'NUMBOL'
      Size = 10
    end
    object AjustaVlrEstoqueNUMAMO: TStringField
      FieldName = 'NUMAMO'
      Size = 10
    end
    object AjustaVlrEstoqueAMONUM: TIntegerField
      FieldName = 'AMONUM'
    end
    object AjustaVlrEstoqueFILNFO: TIntegerField
      FieldName = 'FILNFO'
    end
    object AjustaVlrEstoqueNUMNFO: TIntegerField
      FieldName = 'NUMNFO'
    end
    object AjustaVlrEstoqueSNFNFO: TStringField
      FieldName = 'SNFNFO'
      Size = 3
    end
    object AjustaVlrEstoqueFORNFO: TIntegerField
      FieldName = 'FORNFO'
    end
    object AjustaVlrEstoqueINDFAB: TStringField
      FieldName = 'INDFAB'
      Size = 1
    end
    object AjustaVlrEstoqueCODFAB: TStringField
      FieldName = 'CODFAB'
      Size = 10
    end
    object AjustaVlrEstoqueLOTFAB: TStringField
      FieldName = 'LOTFAB'
      Size = 30
    end
    object AjustaVlrEstoqueVLTFAB: TDateTimeField
      FieldName = 'VLTFAB'
    end
    object AjustaVlrEstoquePROFAB: TStringField
      FieldName = 'PROFAB'
      Size = 21
    end
    object AjustaVlrEstoqueCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object AjustaVlrEstoqueUSU_NUMLOT1: TIntegerField
      FieldName = 'USU_NUMLOT1'
    end
    object AjustaVlrEstoqueUSU_NUMLOT: TIntegerField
      FieldName = 'USU_NUMLOT'
    end
    object AjustaVlrEstoqueUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object AjustaVlrEstoqueUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object AjustaVlrEstoqueUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object AjustaVlrEstoqueUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object AjustaVlrEstoqueUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object AjustaVlrEstoqueESTNEG: TStringField
      FieldName = 'ESTNEG'
      Size = 1
    end
    object AjustaVlrEstoqueCALMMF: TStringField
      FieldName = 'CALMMF'
      Size = 1
    end
    object AjustaVlrEstoqueSEQSPR: TIntegerField
      FieldName = 'SEQSPR'
    end
    object AjustaVlrEstoqueINDMPC: TStringField
      FieldName = 'INDMPC'
      Size = 1
    end
    object AjustaVlrEstoqueFILOCR: TIntegerField
      FieldName = 'FILOCR'
    end
    object AjustaVlrEstoqueNUMOCR: TIntegerField
      FieldName = 'NUMOCR'
    end
    object AjustaVlrEstoqueCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
  end
  object CadE210Mvp: TADOQuery
    Connection = Dm.ADOBanco
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
        Name = 'coddep'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'datmov'
        DataType = ftDateTime
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
      'select *'
      'from e210mvp'
      'where'
      'codemp = :codemp and'
      'codpro = :codpro and'
      'codder = :codder and'
      'coddep = :coddep and'
      'datmov = :datmov and'
      'seqmov = :seqmov')
    Left = 416
    Top = 128
    object CadE210MvpCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE210MvpCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object CadE210MvpCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object CadE210MvpCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object CadE210MvpDATMOV: TDateTimeField
      FieldName = 'DATMOV'
    end
    object CadE210MvpSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object CadE210MvpDATFEC: TDateTimeField
      FieldName = 'DATFEC'
    end
    object CadE210MvpSEQFEC: TIntegerField
      FieldName = 'SEQFEC'
    end
    object CadE210MvpFILDEP: TIntegerField
      FieldName = 'FILDEP'
    end
    object CadE210MvpMSKDEP: TStringField
      FieldName = 'MSKDEP'
      Size = 18
    end
    object CadE210MvpNIVDEP: TIntegerField
      FieldName = 'NIVDEP'
    end
    object CadE210MvpCODTNS: TStringField
      FieldName = 'CODTNS'
      Size = 5
    end
    object CadE210MvpESTMOV: TStringField
      FieldName = 'ESTMOV'
      Size = 2
    end
    object CadE210MvpESTEOS: TStringField
      FieldName = 'ESTEOS'
      Size = 1
    end
    object CadE210MvpESTVMV: TStringField
      FieldName = 'ESTVMV'
      Size = 1
    end
    object CadE210MvpORIORP: TStringField
      FieldName = 'ORIORP'
      Size = 3
    end
    object CadE210MvpNUMDOC: TIntegerField
      FieldName = 'NUMDOC'
    end
    object CadE210MvpDATFAB: TDateTimeField
      FieldName = 'DATFAB'
    end
    object CadE210MvpHORFAB: TIntegerField
      FieldName = 'HORFAB'
    end
    object CadE210MvpDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object CadE210MvpDATVLT: TDateTimeField
      FieldName = 'DATVLT'
    end
    object CadE210MvpHORVLT: TIntegerField
      FieldName = 'HORVLT'
    end
    object CadE210MvpCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object CadE210MvpNUMSEP: TStringField
      FieldName = 'NUMSEP'
      Size = 17
    end
    object CadE210MvpOBSMVP: TStringField
      FieldName = 'OBSMVP'
      Size = 250
    end
    object CadE210MvpQTDMOV: TFMTBCDField
      FieldName = 'QTDMOV'
      Precision = 14
      Size = 5
    end
    object CadE210MvpVLRMOV: TBCDField
      FieldName = 'VLRMOV'
      Precision = 15
      Size = 2
    end
    object CadE210MvpQTDANT: TFMTBCDField
      FieldName = 'QTDANT'
      Precision = 14
      Size = 5
    end
    object CadE210MvpVLRANT: TBCDField
      FieldName = 'VLRANT'
      Precision = 15
      Size = 2
    end
    object CadE210MvpQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object CadE210MvpVLREST: TBCDField
      FieldName = 'VLREST'
      Precision = 15
      Size = 2
    end
    object CadE210MvpPRMEST: TFMTBCDField
      FieldName = 'PRMEST'
      Precision = 15
      Size = 6
    end
    object CadE210MvpPROTRF: TStringField
      FieldName = 'PROTRF'
      Size = 14
    end
    object CadE210MvpDERTRF: TStringField
      FieldName = 'DERTRF'
      Size = 7
    end
    object CadE210MvpDEPTRF: TStringField
      FieldName = 'DEPTRF'
      Size = 10
    end
    object CadE210MvpSEQTRF: TIntegerField
      FieldName = 'SEQTRF'
    end
    object CadE210MvpUSURES: TBCDField
      FieldName = 'USURES'
      Precision = 10
      Size = 0
    end
    object CadE210MvpCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object CadE210MvpUSUREC: TBCDField
      FieldName = 'USUREC'
      Precision = 10
      Size = 0
    end
    object CadE210MvpCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object CadE210MvpNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object CadE210MvpCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object CadE210MvpCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object CadE210MvpLCTFIN: TStringField
      FieldName = 'LCTFIN'
      Size = 1
    end
    object CadE210MvpNUMLOT: TIntegerField
      FieldName = 'NUMLOT'
    end
    object CadE210MvpNUMEME: TIntegerField
      FieldName = 'NUMEME'
    end
    object CadE210MvpSEQEME: TIntegerField
      FieldName = 'SEQEME'
    end
    object CadE210MvpCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE210MvpCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object CadE210MvpNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object CadE210MvpSEQIPV: TIntegerField
      FieldName = 'SEQIPV'
    end
    object CadE210MvpCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object CadE210MvpFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object CadE210MvpNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object CadE210MvpSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object CadE210MvpFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object CadE210MvpCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object CadE210MvpNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object CadE210MvpSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object CadE210MvpSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object CadE210MvpUSUDIG: TBCDField
      FieldName = 'USUDIG'
      Precision = 10
      Size = 0
    end
    object CadE210MvpDATDIG: TDateTimeField
      FieldName = 'DATDIG'
    end
    object CadE210MvpHORDIG: TIntegerField
      FieldName = 'HORDIG'
    end
    object CadE210MvpCODLIG: TIntegerField
      FieldName = 'CODLIG'
    end
    object CadE210MvpMOTMVP: TStringField
      FieldName = 'MOTMVP'
      Size = 250
    end
    object CadE210MvpDATINV: TDateTimeField
      FieldName = 'DATINV'
    end
    object CadE210MvpEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object CadE210MvpVLRDM1: TFMTBCDField
      FieldName = 'VLRDM1'
      Precision = 14
      Size = 5
    end
    object CadE210MvpVLRDM2: TFMTBCDField
      FieldName = 'VLRDM2'
      Precision = 14
      Size = 5
    end
    object CadE210MvpVLRDM3: TFMTBCDField
      FieldName = 'VLRDM3'
      Precision = 14
      Size = 5
    end
    object CadE210MvpVLRDM4: TFMTBCDField
      FieldName = 'VLRDM4'
      Precision = 14
      Size = 5
    end
    object CadE210MvpVLRDM5: TFMTBCDField
      FieldName = 'VLRDM5'
      Precision = 14
      Size = 5
    end
    object CadE210MvpVLRDM6: TFMTBCDField
      FieldName = 'VLRDM6'
      Precision = 14
      Size = 5
    end
    object CadE210MvpESTWMS: TStringField
      FieldName = 'ESTWMS'
      Size = 1
    end
    object CadE210MvpESTCOC: TStringField
      FieldName = 'ESTCOC'
      Size = 1
    end
    object CadE210MvpESTCOF: TStringField
      FieldName = 'ESTCOF'
      Size = 1
    end
    object CadE210MvpFILPED: TIntegerField
      FieldName = 'FILPED'
    end
    object CadE210MvpNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object CadE210MvpSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object CadE210MvpUTIREP: TStringField
      FieldName = 'UTIREP'
      Size = 1
    end
    object CadE210MvpFILANE: TIntegerField
      FieldName = 'FILANE'
    end
    object CadE210MvpNUMANE: TBCDField
      FieldName = 'NUMANE'
      Precision = 12
      Size = 0
    end
    object CadE210MvpNUMPFA: TIntegerField
      FieldName = 'NUMPFA'
    end
    object CadE210MvpSEQPES: TIntegerField
      FieldName = 'SEQPES'
    end
    object CadE210MvpLOTDES: TStringField
      FieldName = 'LOTDES'
      Size = 17
    end
    object CadE210MvpCODETG: TIntegerField
      FieldName = 'CODETG'
    end
    object CadE210MvpSEQCMP: TIntegerField
      FieldName = 'SEQCMP'
    end
    object CadE210MvpACEFEC: TStringField
      FieldName = 'ACEFEC'
      Size = 1
    end
    object CadE210MvpULTMDI: TStringField
      FieldName = 'ULTMDI'
      Size = 1
    end
    object CadE210MvpCODBEM: TStringField
      FieldName = 'CODBEM'
    end
    object CadE210MvpFILCLE: TIntegerField
      FieldName = 'FILCLE'
    end
    object CadE210MvpNUMCLE: TIntegerField
      FieldName = 'NUMCLE'
    end
    object CadE210MvpVLRCM1: TBCDField
      FieldName = 'VLRCM1'
      Precision = 15
      Size = 2
    end
    object CadE210MvpDATCM1: TDateTimeField
      FieldName = 'DATCM1'
    end
    object CadE210MvpCOTCM1: TFMTBCDField
      FieldName = 'COTCM1'
      Precision = 19
      Size = 10
    end
    object CadE210MvpVLRCM2: TBCDField
      FieldName = 'VLRCM2'
      Precision = 15
      Size = 2
    end
    object CadE210MvpDATCM2: TDateTimeField
      FieldName = 'DATCM2'
    end
    object CadE210MvpCOTCM2: TFMTBCDField
      FieldName = 'COTCM2'
      Precision = 19
      Size = 10
    end
    object CadE210MvpSEPDES: TStringField
      FieldName = 'SEPDES'
      Size = 17
    end
    object CadE210MvpCODSLT: TStringField
      FieldName = 'CODSLT'
      Size = 10
    end
    object CadE210MvpPERGER: TBCDField
      FieldName = 'PERGER'
      Precision = 5
      Size = 2
    end
    object CadE210MvpPERPUR: TBCDField
      FieldName = 'PERPUR'
      Precision = 5
      Size = 2
    end
    object CadE210MvpPERUMI: TBCDField
      FieldName = 'PERUMI'
      Precision = 5
      Size = 2
    end
    object CadE210MvpDATTES: TDateTimeField
      FieldName = 'DATTES'
    end
    object CadE210MvpCODEND: TStringField
      FieldName = 'CODEND'
    end
    object CadE210MvpCODSAF: TStringField
      FieldName = 'CODSAF'
      Size = 10
    end
    object CadE210MvpCODTRM: TStringField
      FieldName = 'CODTRM'
      Size = 10
    end
    object CadE210MvpCODBNF: TStringField
      FieldName = 'CODBNF'
      Size = 10
    end
    object CadE210MvpCODCAT: TStringField
      FieldName = 'CODCAT'
      Size = 10
    end
    object CadE210MvpVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object CadE210MvpPRMICM: TFMTBCDField
      FieldName = 'PRMICM'
      Precision = 15
      Size = 6
    end
    object CadE210MvpICMACF: TBCDField
      FieldName = 'ICMACF'
      Precision = 15
      Size = 2
    end
    object CadE210MvpCODPNE: TIntegerField
      FieldName = 'CODPNE'
    end
    object CadE210MvpCODETP: TIntegerField
      FieldName = 'CODETP'
    end
    object CadE210MvpCODCUL: TIntegerField
      FieldName = 'CODCUL'
    end
    object CadE210MvpNUMTER: TStringField
      FieldName = 'NUMTER'
      Size = 10
    end
    object CadE210MvpNUMAOG: TStringField
      FieldName = 'NUMAOG'
      Size = 10
    end
    object CadE210MvpNUMCER: TStringField
      FieldName = 'NUMCER'
      Size = 10
    end
    object CadE210MvpNUMBOL: TStringField
      FieldName = 'NUMBOL'
      Size = 10
    end
    object CadE210MvpNUMAMO: TStringField
      FieldName = 'NUMAMO'
      Size = 10
    end
    object CadE210MvpAMONUM: TIntegerField
      FieldName = 'AMONUM'
    end
    object CadE210MvpFILNFO: TIntegerField
      FieldName = 'FILNFO'
    end
    object CadE210MvpNUMNFO: TIntegerField
      FieldName = 'NUMNFO'
    end
    object CadE210MvpSNFNFO: TStringField
      FieldName = 'SNFNFO'
      Size = 3
    end
    object CadE210MvpFORNFO: TIntegerField
      FieldName = 'FORNFO'
    end
    object CadE210MvpINDFAB: TStringField
      FieldName = 'INDFAB'
      Size = 1
    end
    object CadE210MvpCODFAB: TStringField
      FieldName = 'CODFAB'
      Size = 10
    end
    object CadE210MvpLOTFAB: TStringField
      FieldName = 'LOTFAB'
      Size = 30
    end
    object CadE210MvpVLTFAB: TDateTimeField
      FieldName = 'VLTFAB'
    end
    object CadE210MvpPROFAB: TStringField
      FieldName = 'PROFAB'
      Size = 21
    end
    object CadE210MvpCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object CadE210MvpUSU_NUMLOT1: TIntegerField
      FieldName = 'USU_NUMLOT1'
    end
    object CadE210MvpUSU_NUMLOT: TIntegerField
      FieldName = 'USU_NUMLOT'
    end
    object CadE210MvpUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object CadE210MvpUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadE210MvpUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadE210MvpUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object CadE210MvpUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object CadE210MvpESTNEG: TStringField
      FieldName = 'ESTNEG'
      Size = 1
    end
    object CadE210MvpCALMMF: TStringField
      FieldName = 'CALMMF'
      Size = 1
    end
    object CadE210MvpSEQSPR: TIntegerField
      FieldName = 'SEQSPR'
    end
    object CadE210MvpINDMPC: TStringField
      FieldName = 'INDMPC'
      Size = 1
    end
    object CadE210MvpFILOCR: TIntegerField
      FieldName = 'FILOCR'
    end
    object CadE210MvpNUMOCR: TIntegerField
      FieldName = 'NUMOCR'
    end
    object CadE210MvpCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
  end
  object ConsumoMPGrafico: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MES1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANO1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'MES2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANO2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'MES3'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANO3'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'MES4'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANO4'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'MES5'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANO5'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'MES6'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANO6'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'MES7'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANO7'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'MES8'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANO8'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'MES9'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANO9'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'MES10'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANO10'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'MES11'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANO11'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'MES12'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANO12'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e075pro.codpro, e075pro.despro,'
      '       (select sum(e210mvp.qtdmov) from e210mvp'
      '           where extract(month from e210mvp.datmov) = :MES1 and'
      '                 extract(year from e210mvp.datmov) = :ANO1 and'
      '                 e210mvp.esteos = '#39'S'#39' and'
      '                 e210mvp.codtns in ('#39'90250'#39','#39'90251'#39') and'
      '                 e210mvp.codpro = e075pro.codpro) as Mes1,'
      '       (select sum(e210mvp.qtdmov) from e210mvp'
      '           where extract(month from e210mvp.datmov) = :MES2 and'
      '                 extract(year from e210mvp.datmov) = :ANO2 and'
      '                 e210mvp.esteos = '#39'S'#39' and'
      '                 e210mvp.codtns in ('#39'90250'#39','#39'90251'#39') and'
      '                 e210mvp.codpro = e075pro.codpro) as Mes2,'
      '       (select sum(e210mvp.qtdmov) from e210mvp'
      '           where extract(month from e210mvp.datmov) = :MES3 and'
      '                 extract(year from e210mvp.datmov) = :ANO3 and'
      '                 e210mvp.esteos = '#39'S'#39' and'
      '                 e210mvp.codtns in ('#39'90250'#39','#39'90251'#39') and'
      '                 e210mvp.codpro = e075pro.codpro) as Mes3,'
      '       (select sum(e210mvp.qtdmov) from e210mvp'
      '           where extract(month from e210mvp.datmov) = :MES4 and'
      '                 extract(year from e210mvp.datmov) = :ANO4 and'
      '                 e210mvp.esteos = '#39'S'#39' and'
      '                 e210mvp.codtns in ('#39'90250'#39','#39'90251'#39') and'
      '                 e210mvp.codpro = e075pro.codpro) as Mes4,'
      '       (select sum(e210mvp.qtdmov) from e210mvp'
      '           where extract(month from e210mvp.datmov) = :MES5 and'
      '                 extract(year from e210mvp.datmov) = :ANO5 and'
      '                 e210mvp.esteos = '#39'S'#39' and'
      '                 e210mvp.codtns in ('#39'90250'#39','#39'90251'#39') and'
      '                 e210mvp.codpro = e075pro.codpro) as Mes5,'
      '       (select sum(e210mvp.qtdmov) from e210mvp'
      '           where extract(month from e210mvp.datmov) = :MES6 and'
      '                 extract(year from e210mvp.datmov) = :ANO6 and'
      '                 e210mvp.esteos = '#39'S'#39' and'
      '                 e210mvp.codtns in ('#39'90250'#39','#39'90251'#39') and'
      '                 e210mvp.codpro = e075pro.codpro) as Mes6,'
      '        (select sum(e210mvp.qtdmov) from e210mvp'
      '           where extract(month from e210mvp.datmov) = :MES7 and'
      '                 extract(year from e210mvp.datmov) = :ANO7 and'
      '                 e210mvp.esteos = '#39'S'#39' and'
      '                 e210mvp.codtns in ('#39'90250'#39','#39'90251'#39') and'
      '                 e210mvp.codpro = e075pro.codpro) as Mes7,'
      '        (select sum(e210mvp.qtdmov) from e210mvp'
      '           where extract(month from e210mvp.datmov) = :MES8 and'
      '                 extract(year from e210mvp.datmov) = :ANO8 and'
      '                 e210mvp.esteos = '#39'S'#39' and'
      '                 e210mvp.codtns in ('#39'90250'#39','#39'90251'#39') and'
      '                 e210mvp.codpro = e075pro.codpro) as Mes8,'
      '        (select sum(e210mvp.qtdmov) from e210mvp'
      '           where extract(month from e210mvp.datmov) = :MES9 and'
      '                 extract(year from e210mvp.datmov) = :ANO9 and'
      '                 e210mvp.esteos = '#39'S'#39' and'
      '                 e210mvp.codtns in ('#39'90250'#39','#39'90251'#39') and'
      '                 e210mvp.codpro = e075pro.codpro) as Mes9,'
      '        (select sum(e210mvp.qtdmov) from e210mvp'
      '           where extract(month from e210mvp.datmov) = :MES10 and'
      '                 extract(year from e210mvp.datmov) = :ANO10 and'
      '                 e210mvp.esteos = '#39'S'#39' and'
      '                 e210mvp.codtns in ('#39'90250'#39','#39'90251'#39') and'
      '                 e210mvp.codpro = e075pro.codpro) as Mes10,'
      '         (select sum(e210mvp.qtdmov) from e210mvp'
      '           where extract(month from e210mvp.datmov) = :MES11 and'
      '                 extract(year from e210mvp.datmov) = :ANO11 and'
      '                 e210mvp.esteos = '#39'S'#39' and'
      '                 e210mvp.codtns in ('#39'90250'#39','#39'90251'#39') and'
      '                 e210mvp.codpro = e075pro.codpro) as Mes11,'
      '        (select sum(e210mvp.qtdmov) from e210mvp'
      '           where extract(month from e210mvp.datmov) = :MES12 and'
      '                 extract(year from e210mvp.datmov) = :ANO12 and'
      '                 e210mvp.esteos = '#39'S'#39' and'
      '                 e210mvp.codtns in ('#39'90250'#39','#39'90251'#39') and'
      '                 e210mvp.codpro = e075pro.codpro) as Mes12'
      '   from E075PRO'
      '   where'
      '     e075pro.codpro = :CODPRO'
      '')
    Left = 400
    Top = 424
    object ConsumoMPGraficoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsumoMPGraficoDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsumoMPGraficoMES1: TFMTBCDField
      FieldName = 'MES1'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsumoMPGraficoMES2: TFMTBCDField
      FieldName = 'MES2'
      Precision = 38
      Size = 0
    end
    object ConsumoMPGraficoMES3: TFMTBCDField
      FieldName = 'MES3'
      Precision = 38
      Size = 0
    end
    object ConsumoMPGraficoMES4: TFMTBCDField
      FieldName = 'MES4'
      Precision = 38
      Size = 0
    end
    object ConsumoMPGraficoMES5: TFMTBCDField
      FieldName = 'MES5'
      Precision = 38
      Size = 0
    end
    object ConsumoMPGraficoMES6: TFMTBCDField
      FieldName = 'MES6'
      Precision = 38
      Size = 0
    end
    object ConsumoMPGraficoMES7: TFMTBCDField
      FieldName = 'MES7'
      Precision = 38
      Size = 0
    end
    object ConsumoMPGraficoMES8: TFMTBCDField
      FieldName = 'MES8'
      Precision = 38
      Size = 0
    end
    object ConsumoMPGraficoMES9: TFMTBCDField
      FieldName = 'MES9'
      Precision = 38
      Size = 0
    end
    object ConsumoMPGraficoMES10: TFMTBCDField
      FieldName = 'MES10'
      Precision = 38
      Size = 0
    end
    object ConsumoMPGraficoMES11: TFMTBCDField
      FieldName = 'MES11'
      Precision = 38
      Size = 0
    end
    object ConsumoMPGraficoMES12: TFMTBCDField
      FieldName = 'MES12'
      Precision = 38
      Size = 0
    end
  end
end
