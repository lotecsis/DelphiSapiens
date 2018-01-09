object DmOra: TDmOra
  OldCreateOrder = False
  Height = 496
  Width = 804
  object ADOBanco: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDAORA.1;Password=saplider;User ID=saplider;Data Sourc' +
      'e=liderlar;Persist Security Info=True'
    LoginPrompt = False
    Provider = 'MSDAORA.1'
    Left = 24
    Top = 8
  end
  object ConsE085Cli: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'datcad'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'datatu'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.inse' +
        'st,e085cli.cgccpf,e085cli.endcli,e085cli.nencli,'
      
        'e085cli.cplend,e085cli.cepcli,e085cli.baicli,e085cli.cidcli,e085' +
        'cli.sigufs,e085cli.sitcli,e085cli.foncli,e085cli.datcad,e085cli.' +
        'datatu,'
      
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
      
        '                                                ((e085cli.datcad' +
        ' >= :datcad) or (e085cli.datatu >= :datatu))'
      '                                                order by codcli')
    Left = 64
    Top = 64
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
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsE085CliDATMAC: TDateTimeField
      FieldName = 'DATMAC'
    end
    object ConsE085CliVLRMAC: TBCDField
      FieldName = 'VLRMAC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsE085CliDATUPE: TDateTimeField
      FieldName = 'DATUPE'
    end
    object ConsE085CliVLRUPE: TBCDField
      FieldName = 'VLRUPE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsE085CliDATUFA: TDateTimeField
      FieldName = 'DATUFA'
    end
    object ConsE085CliVLRUFA: TBCDField
      FieldName = 'VLRUFA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsE085CliDATUPG: TDateTimeField
      FieldName = 'DATUPG'
    end
    object ConsE085CliVLRUPG: TBCDField
      FieldName = 'VLRUPG'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
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
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsE085CliDATATR: TDateTimeField
      FieldName = 'DATATR'
    end
    object ConsE085CliVLRATR: TBCDField
      FieldName = 'VLRATR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsE085CliMAIATR: TIntegerField
      FieldName = 'MAIATR'
    end
    object ConsE085CliULTNFV: TIntegerField
      FieldName = 'ULTNFV'
    end
    object ConsE085CliFONCLI: TStringField
      FieldName = 'FONCLI'
    end
    object ConsE085CliDATCAD: TDateTimeField
      FieldName = 'DATCAD'
    end
    object ConsE085CliDATATU: TDateTimeField
      FieldName = 'DATATU'
    end
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
    Parameters = <
      item
        Name = 'DATALT'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATGER'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e075pro.codemp,e075pro.codpro,e075pro.despro,e075pro.codf' +
        'am,e075pro.codagp,e075pro.sitpro,e075pro.codagc'
      '                            from e075pro'
      '                            where codori IN ('#39'1'#39','#39'2'#39') AND'
      
        '                           ((DATALT >= :DATALT) OR (datger >= :D' +
        'ATGER)) AND'
      '                                  CODAGC IN ('#39'ESTOF'#39','#39'COLCH'#39')'
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
    object ConsE075ProCODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
  end
  object ConsE075Der: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'datger'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'datalt'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e075der.codemp,e075der.codpro,e075der.codder,e075der.desd' +
        'er,e075der.pesbru,e075der.pesliq,'
      
        '       e075der.volder,e075der.sitder,e075der.usu_coruni,e075der.' +
        'usu_cmp1bb,e075der.usu_cmp1ae,'
      '       e075der.usu_cmp2bb,e075der.usu_cmp2en'
      '       from e075der'
      'inner join e075pro on e075pro.codemp = e075der.codemp and'
      '                      e075pro.codpro = e075der.codpro and'
      '                      e075pro.codori in ('#39'1'#39','#39'2'#39') and'
      
        '                      ((e075der.datger >= :datger) or (e075der.d' +
        'atalt >= :datalt))'
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
    Parameters = <
      item
        Name = 'datger'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'datalt'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select codemp,codpro,despro,sitpro from e075pro'
      
        '              where codfam in ('#39'1001'#39','#39'1002'#39','#39'1003'#39','#39'1004'#39','#39'1006' +
        #39','#39'1007'#39') and'
      
        '                         ((e075pro.datger >= :datger) or (e075pr' +
        'o.datalt >= :datalt))'
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
  object ConsE120Ped: TADOQuery
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
      end>
    SQL.Strings = (
      
        'select e120ped.codemp,e120ped.codfil,e120ped.numped,e120ped.codr' +
        'ep,e120ped.tnspro,e120ped.datemi,e120ped.horemi,'
      
        '       e120ped.codcli,e120ped.codcpg,e120ped.qtdabe,e120ped.vlrb' +
        'co,e120ped.vlrcom,e120ped.vlrliq,'
      
        '       e120ped.qtdori,e120ped.vlrori,e120ped.sitped,e120ped.usug' +
        'er,e120ped.datger,e120ped.usufec,'
      '       e120ped.datfec,e120ped.usu_numcom,e120ped.usu_precar'
      '       from e120ped'
      '       where'
      '       e120ped.codrep = :codrep and'
      '       e120ped.tnspro in ('#39'90100'#39','#39'90106'#39') and'
      '       e120ped.sitped in (1,2,3,4,5,8,9) and'
      '       e120ped.datemi between :datini and :datfim and'
      '       e120ped.codemp = :codemp and'
      '       e120ped.codfil = :codfil'
      '       order by e120ped.numped')
    Left = 64
    Top = 176
    object ConsE120PedCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120PedCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120PedNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120PedTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE120PedDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE120PedHOREMI: TIntegerField
      FieldName = 'HOREMI'
    end
    object ConsE120PedCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE120PedCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsE120PedQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120PedVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ConsE120PedVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ConsE120PedVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE120PedQTDORI: TFMTBCDField
      FieldName = 'QTDORI'
      Precision = 14
      Size = 5
    end
    object ConsE120PedVLRORI: TBCDField
      FieldName = 'VLRORI'
      Precision = 15
      Size = 2
    end
    object ConsE120PedSITPED: TIntegerField
      FieldName = 'SITPED'
    end
    object ConsE120PedUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE120PedDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE120PedUSUFEC: TBCDField
      FieldName = 'USUFEC'
      Precision = 10
      Size = 0
    end
    object ConsE120PedDATFEC: TDateTimeField
      FieldName = 'DATFEC'
    end
    object ConsE120PedUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
    object ConsE120PedCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE120PedUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
  end
  object ConsE120Ipd: TADOQuery
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
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e120ipd.codemp,e120ipd.codfil,e120ipd.numped,e120ipd.seqi' +
        'pd,e120ipd.tnspro,e120ipd.codpro,e120ipd.codder,e120ipd.coddep,'
      
        '       e120ipd.codfam,e120ipd.qtdped,e120ipd.qtdfat,e120ipd.qtdc' +
        'an,e120ipd.qtdabe,e120ipd.unimed,e120ipd.codtpr,'
      
        '       e120ipd.preuni,e120ipd.percom,e120ipd.vlrbru,e120ipd.vlrb' +
        'co,e120ipd.vlrcom,e120ipd.vlrlpr,e120ipd.vlrliq,'
      
        '       e120ipd.sitipd,e120ipd.usuger,e120ipd.datger,e120ipd.usu_' +
        'totdsc,e120ipd.usu_vlrori,e120ipd.usu_numcom,e120ped.codrep'
      'from e120ipd'
      'inner join e120ped on e120ped.codemp = e120ipd.codemp and'
      '                      e120ped.codfil = e120ipd.codfil and'
      '                      e120ped.numped = e120ipd.numped'
      '       where'
      '       e120ped.codrep = :codrep and'
      '       e120ped.tnspro in ('#39'90100'#39','#39'90106'#39') and'
      '       e120ped.sitped in (1,2,3,4,5,8,9) and'
      '       e120ped.datemi between :datini and :datfim and'
      '       e120ped.codfil = :codfil and'
      '       e120ped.codemp = :codemp'
      '       order by e120ped.numped')
    Left = 144
    Top = 176
    object ConsE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsE120IpdTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE120IpdCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE120IpdQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE120IpdCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE120IpdPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdSITIPD: TIntegerField
      FieldName = 'SITIPD'
    end
    object ConsE120IpdUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE120IpdUSU_TOTDSC: TBCDField
      FieldName = 'USU_TOTDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_VLRORI: TBCDField
      FieldName = 'USU_VLRORI'
      Precision = 14
      Size = 2
    end
    object ConsE120IpdUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
    object ConsE120IpdCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE120IpdCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
  end
  object ConsUsu_T120Ipd: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select usu_t120ipd.* from usu_t120ipd'
      '       ')
    Left = 232
    Top = 176
    object ConsUsu_T120IpdUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_T120IpdUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUsu_T120IpdUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsUsu_T120IpdUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsUsu_T120IpdUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object ConsUsu_T120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsUsu_T120IpdUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ConsUsu_T120IpdUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ConsUsu_T120IpdUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ConsUsu_T120IpdUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_T120IpdUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_T120IpdUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object ConsUsu_T120IpdUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_T120IpdUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object ConsUsu_T120IpdUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsUsu_T120IpdUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsUsu_T120IpdUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
  end
  object ConsE120Obs: TADOQuery
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
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e120obs.codemp,e120obs.codfil,e120obs.numped,e120obs.seqo' +
        'bs,e120obs.tipobs,e120obs.obsped,'
      
        '       e120obs.obsusu,e120obs.obsdat,e120obs.sitobs,e120obs.usu_' +
        'numcom,e120ped.codrep'
      '       from e120obs'
      'inner join e120ped on e120ped.codemp = e120obs.codemp and'
      '                      e120ped.codfil = e120obs.codfil and'
      '                      e120ped.numped = e120obs.numped'
      '                       where'
      '                       e120ped.codrep = :codrep and'
      '                       e120ped.tnspro in ('#39'90100'#39','#39'90106'#39') and'
      '                       e120ped.sitped in (1,2,3,4,5,8,9) and'
      
        '                       e120ped.datemi between :datini and :datfi' +
        'm and'
      '                       e120ped.codfil = :codfil and'
      '                       e120ped.codemp = :codemp')
    Left = 328
    Top = 176
    object ConsE120ObsCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120ObsCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120ObsNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120ObsSEQOBS: TIntegerField
      FieldName = 'SEQOBS'
    end
    object ConsE120ObsTIPOBS: TStringField
      FieldName = 'TIPOBS'
      Size = 1
    end
    object ConsE120ObsOBSPED: TStringField
      FieldName = 'OBSPED'
      Size = 250
    end
    object ConsE120ObsOBSUSU: TBCDField
      FieldName = 'OBSUSU'
      Precision = 10
      Size = 0
    end
    object ConsE120ObsOBSDAT: TDateTimeField
      FieldName = 'OBSDAT'
    end
    object ConsE120ObsSITOBS: TStringField
      FieldName = 'SITOBS'
      Size = 1
    end
    object ConsE120ObsUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
    object ConsE120ObsCODREP: TIntegerField
      FieldName = 'CODREP'
    end
  end
  object ConsE301Tcr: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODREP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E301TCR.CODEMP,E301TCR.CODFIL,E301TCR.NUMTIT,E301TCR.CODT' +
        'PT,E301TCR.CODTNS,'
      
        '       E301TCR.SITTIT,E301TCR.DATEMI,E301TCR.CODCLI,E301TCR.OBST' +
        'CR,E301TCR.VCTORI,'
      
        '       E301TCR.VLRORI,E301TCR.VCTPRO,E301TCR.DATPPT,E301TCR.VLRA' +
        'BE'
      'FROM E301TCR'
      'INNER JOIN E085HCL ON E085HCL.CODEMP = E301TCR.CODEMP AND'
      '                      E085HCL.CODFIL = E301TCR.CODFIL AND'
      '                      E085HCL.CODCLI = E301TCR.CODCLI'
      '              WHERE'
      '              E301TCR.CODTPT IN ('#39'DPL'#39','#39'CHP'#39','#39'CHD'#39') AND'
      '              E301TCR.SITTIT IN ('#39'AB'#39','#39'AP'#39','#39'AC'#39') AND'
      '              E085HCL.CODREP = :CODREP AND'
      '              E301TCR.CODFIL = 1')
    Left = 64
    Top = 232
    object ConsE301TcrCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE301TcrCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE301TcrNUMTIT: TStringField
      FieldName = 'NUMTIT'
      Size = 15
    end
    object ConsE301TcrCODTPT: TStringField
      FieldName = 'CODTPT'
      Size = 3
    end
    object ConsE301TcrCODTNS: TStringField
      FieldName = 'CODTNS'
      Size = 5
    end
    object ConsE301TcrSITTIT: TStringField
      FieldName = 'SITTIT'
      Size = 2
    end
    object ConsE301TcrDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE301TcrCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE301TcrOBSTCR: TStringField
      FieldName = 'OBSTCR'
      Size = 250
    end
    object ConsE301TcrVCTORI: TDateTimeField
      FieldName = 'VCTORI'
    end
    object ConsE301TcrVLRORI: TBCDField
      FieldName = 'VLRORI'
      Precision = 15
      Size = 2
    end
    object ConsE301TcrVCTPRO: TDateTimeField
      FieldName = 'VCTPRO'
    end
    object ConsE301TcrDATPPT: TDateTimeField
      FieldName = 'DATPPT'
    end
    object ConsE301TcrVLRABE: TBCDField
      FieldName = 'VLRABE'
      Precision = 15
      Size = 2
    end
  end
  object ConsE028cpg_: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'datatu'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'datger'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from e028cpg where ((datatu >= :datatu) or (datger >= :' +
        'datger))')
    Left = 56
    Top = 320
    object ConsE028cpg_CODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE028cpg_CODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsE028cpg_DESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ConsE028cpg_ABRCPG: TStringField
      FieldName = 'ABRCPG'
      Size = 10
    end
    object ConsE028cpg_APLCPG: TStringField
      FieldName = 'APLCPG'
      Size = 1
    end
    object ConsE028cpg_PGTANT: TStringField
      FieldName = 'PGTANT'
      Size = 1
    end
    object ConsE028cpg_DIAESP: TStringField
      FieldName = 'DIAESP'
      Size = 1
    end
    object ConsE028cpg_DIAME1: TIntegerField
      FieldName = 'DIAME1'
    end
    object ConsE028cpg_DIAME2: TIntegerField
      FieldName = 'DIAME2'
    end
    object ConsE028cpg_DIAME3: TIntegerField
      FieldName = 'DIAME3'
    end
    object ConsE028cpg_DIASEM: TStringField
      FieldName = 'DIASEM'
      Size = 7
    end
    object ConsE028cpg_DIAMES: TStringField
      FieldName = 'DIAMES'
      Size = 31
    end
    object ConsE028cpg_PRZMED: TIntegerField
      FieldName = 'PRZMED'
    end
    object ConsE028cpg_QTDPAR: TIntegerField
      FieldName = 'QTDPAR'
    end
    object ConsE028cpg_IPIPAR: TStringField
      FieldName = 'IPIPAR'
      Size = 1
    end
    object ConsE028cpg_ICMPAR: TStringField
      FieldName = 'ICMPAR'
      Size = 1
    end
    object ConsE028cpg_SUBPAR: TStringField
      FieldName = 'SUBPAR'
      Size = 1
    end
    object ConsE028cpg_FREPAR: TStringField
      FieldName = 'FREPAR'
      Size = 1
    end
    object ConsE028cpg_SEGPAR: TStringField
      FieldName = 'SEGPAR'
      Size = 1
    end
    object ConsE028cpg_ENCPAR: TStringField
      FieldName = 'ENCPAR'
      Size = 1
    end
    object ConsE028cpg_EMBPAR: TStringField
      FieldName = 'EMBPAR'
      Size = 1
    end
    object ConsE028cpg_OUTPAR: TStringField
      FieldName = 'OUTPAR'
      Size = 1
    end
    object ConsE028cpg_DARPAR: TStringField
      FieldName = 'DARPAR'
      Size = 1
    end
    object ConsE028cpg_ACRFIN: TBCDField
      FieldName = 'ACRFIN'
      Precision = 5
      Size = 2
    end
    object ConsE028cpg_VENDSC: TBCDField
      FieldName = 'VENDSC'
      Precision = 5
      Size = 2
    end
    object ConsE028cpg_CPRDSC: TBCDField
      FieldName = 'CPRDSC'
      Precision = 5
      Size = 2
    end
    object ConsE028cpg_PERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE028cpg_PERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE028cpg_REDCOM: TBCDField
      FieldName = 'REDCOM'
      Precision = 5
      Size = 2
    end
    object ConsE028cpg_TIPPAR: TIntegerField
      FieldName = 'TIPPAR'
    end
    object ConsE028cpg_SITCPG: TStringField
      FieldName = 'SITCPG'
      Size = 1
    end
    object ConsE028cpg_CODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE028cpg_FVECPG: TStringField
      FieldName = 'FVECPG'
      Size = 10
    end
    object ConsE028cpg_FVEDEC: TStringField
      FieldName = 'FVEDEC'
      Size = 1
    end
    object ConsE028cpg_INDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsE028cpg_DATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsE028cpg_HORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsE028cpg_TIPINT: TIntegerField
      FieldName = 'TIPINT'
    end
    object ConsE028cpg_CODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object ConsE028cpg_ISSPAR: TStringField
      FieldName = 'ISSPAR'
      Size = 1
    end
    object ConsE028cpg_DATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE028cpg_HORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE028cpg_USUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE028cpg_DATATU: TDateTimeField
      FieldName = 'DATATU'
    end
    object ConsE028cpg_HORATU: TIntegerField
      FieldName = 'HORATU'
    end
    object ConsE028cpg_USUATU: TBCDField
      FieldName = 'USUATU'
      Precision = 10
      Size = 0
    end
    object ConsE028cpg_PERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
    object ConsE028cpg_COMTIT: TStringField
      FieldName = 'COMTIT'
      Size = 1
    end
    object ConsE028cpg_MESES1: TIntegerField
      FieldName = 'MESES1'
    end
    object ConsE028cpg_MESES2: TIntegerField
      FieldName = 'MESES2'
    end
    object ConsE028cpg_MESES3: TIntegerField
      FieldName = 'MESES3'
    end
    object ConsE028cpg_RETISS: TStringField
      FieldName = 'RETISS'
      Size = 1
    end
  end
  object ConsE081Itp: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODTPR'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DATGER'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATALT'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT E081ITP.*,E075PRO.DESPRO,E075PRO.CODFAM,E075PRO.CODAGC'
      'FROM E081ITP'
      'INNER JOIN E075PRO ON E075PRO.CODEMP = E081ITP.CODEMP AND'
      '                      E075PRO.CODPRO = E081ITP.CODPRO'
      'WHERE E081ITP.CODTPR = :CODTPR AND'
      
        '                            ((E081ITP.DATGER >= :DATGER) OR (E08' +
        '1ITP.DATALT >= :DATALT))'
      'ORDER BY E081ITP.CODPRO')
    Left = 144
    Top = 320
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
    object ConsE081ItpUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE081ItpDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsE081ItpCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE081ItpCODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
  end
  object ConsE301Tcr_: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DATA'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E301TCR.CODEMP,E301TCR.CODFIL,E301TCR.NUMTIT,E301TCR.CODT' +
        'PT,E301TCR.CODTNS,'
      
        '         E301TCR.SITTIT,E301TCR.DATEMI,E301TCR.CODCLI,E301TCR.OB' +
        'STCR,E301TCR.VCTORI,'
      
        '         E301TCR.VLRORI,E301TCR.VCTPRO,E301TCR.DATPPT,E301TCR.VL' +
        'RABE,E301TCR.CODREP'
      '         FROM E301TCR'
      
        '             INNER JOIN E085HCL ON E085HCL.CODEMP = E301TCR.CODE' +
        'MP AND'
      '                        E085HCL.CODFIL = E301TCR.CODFIL AND'
      '                        E085HCL.CODCLI = E301TCR.CODCLI'
      '             WHERE'
      '             E301TCR.CODTPT IN ('#39'DPL'#39','#39'CHP'#39','#39'CHD'#39') AND'
      '             E301TCR.SITTIT IN ('#39'AB'#39','#39'AP'#39','#39'AC'#39') AND'
      '             E301TCR.CODFIL = 1 and'
      '             e301tcr.vctpro <= :DATA')
    Left = 704
    Top = 80
    object ConsE301Tcr_CODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE301Tcr_CODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE301Tcr_NUMTIT: TStringField
      FieldName = 'NUMTIT'
      Size = 15
    end
    object ConsE301Tcr_CODTPT: TStringField
      FieldName = 'CODTPT'
      Size = 3
    end
    object ConsE301Tcr_CODTNS: TStringField
      FieldName = 'CODTNS'
      Size = 5
    end
    object ConsE301Tcr_SITTIT: TStringField
      FieldName = 'SITTIT'
      Size = 2
    end
    object ConsE301Tcr_DATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE301Tcr_CODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE301Tcr_OBSTCR: TStringField
      FieldName = 'OBSTCR'
      Size = 250
    end
    object ConsE301Tcr_VCTORI: TDateTimeField
      FieldName = 'VCTORI'
    end
    object ConsE301Tcr_VLRORI: TBCDField
      FieldName = 'VLRORI'
      Precision = 15
      Size = 2
    end
    object ConsE301Tcr_VCTPRO: TDateTimeField
      FieldName = 'VCTPRO'
    end
    object ConsE301Tcr_DATPPT: TDateTimeField
      FieldName = 'DATPPT'
    end
    object ConsE301Tcr_VLRABE: TBCDField
      FieldName = 'VLRABE'
      Precision = 15
      Size = 2
    end
    object ConsE301Tcr_CODREP: TIntegerField
      FieldName = 'CODREP'
    end
  end
  object ConsSql: TADOQuery
    Connection = ADOBanco
    Parameters = <>
    Left = 280
    Top = 48
  end
  object ConsE090Rcp: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DATALT'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATGER'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from e090rcp where ((datalt >= :DATALT) or (datger >= :' +
        'DATGER))')
    Left = 56
    Top = 368
    object ConsE090RcpCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE090RcpCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ConsE090RcpEMPCPG: TIntegerField
      FieldName = 'EMPCPG'
    end
    object ConsE090RcpCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsE090RcpSITLRC: TStringField
      FieldName = 'SITLRC'
      Size = 1
    end
    object ConsE090RcpUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE090RcpDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE090RcpHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE090RcpUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object ConsE090RcpDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ConsE090RcpHORALT: TIntegerField
      FieldName = 'HORALT'
    end
  end
end
