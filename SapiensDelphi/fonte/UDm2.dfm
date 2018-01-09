object Dm2: TDm2
  OldCreateOrder = False
  Height = 642
  Width = 1013
  object ConsE120ped: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
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
      'select e120ped.* from e120ped where codemp = 1 and'
      '                            codfil = :codfil and'
      '                            numped = :numped')
    Left = 48
    Top = 24
    object ConsE120pedCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120pedCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120pedNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120pedTIPPED: TIntegerField
      FieldName = 'TIPPED'
    end
    object ConsE120pedPRCPED: TIntegerField
      FieldName = 'PRCPED'
    end
    object ConsE120pedTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE120pedTNSSER: TStringField
      FieldName = 'TNSSER'
      Size = 5
    end
    object ConsE120pedDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE120pedHOREMI: TIntegerField
      FieldName = 'HOREMI'
    end
    object ConsE120pedDATPRV: TDateTimeField
      FieldName = 'DATPRV'
    end
    object ConsE120pedHORPRV: TIntegerField
      FieldName = 'HORPRV'
    end
    object ConsE120pedOBSPED: TStringField
      FieldName = 'OBSPED'
      Size = 999
    end
    object ConsE120pedCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE120pedCATCLI: TIntegerField
      FieldName = 'CATCLI'
    end
    object ConsE120pedQTDVPF: TIntegerField
      FieldName = 'QTDVPF'
    end
    object ConsE120pedQTDMFP: TIntegerField
      FieldName = 'QTDMFP'
    end
    object ConsE120pedINDAGR: TStringField
      FieldName = 'INDAGR'
      Size = 1
    end
    object ConsE120pedSEQENT: TIntegerField
      FieldName = 'SEQENT'
    end
    object ConsE120pedSEQCOB: TIntegerField
      FieldName = 'SEQCOB'
    end
    object ConsE120pedSEQCTO: TIntegerField
      FieldName = 'SEQCTO'
    end
    object ConsE120pedPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object ConsE120pedCODROE: TStringField
      FieldName = 'CODROE'
      Size = 3
    end
    object ConsE120pedSEQROE: TIntegerField
      FieldName = 'SEQROE'
    end
    object ConsE120pedCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE120pedCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ConsE120pedCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object ConsE120pedDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object ConsE120pedCOTMFP: TBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object ConsE120pedDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ConsE120pedCOTMOE: TBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ConsE120pedFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ConsE120pedCODFCR: TStringField
      FieldName = 'CODFCR'
      Size = 3
    end
    object ConsE120pedDATFCR: TDateTimeField
      FieldName = 'DATFCR'
    end
    object ConsE120pedCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsE120pedPGTANT: TStringField
      FieldName = 'PGTANT'
      Size = 1
    end
    object ConsE120pedCODFPG: TIntegerField
      FieldName = 'CODFPG'
    end
    object ConsE120pedQTDABE: TBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120pedQTDAEN: TBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object ConsE120pedCODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object ConsE120pedCODRED: TIntegerField
      FieldName = 'CODRED'
    end
    object ConsE120pedCODVIA: TStringField
      FieldName = 'CODVIA'
      Size = 3
    end
    object ConsE120pedPLAVEI: TStringField
      FieldName = 'PLAVEI'
      Size = 10
    end
    object ConsE120pedVLRFUM: TBCDField
      FieldName = 'VLRFUM'
      Precision = 15
      Size = 2
    end
    object ConsE120pedQTDFRE: TBCDField
      FieldName = 'QTDFRE'
      Precision = 14
      Size = 5
    end
    object ConsE120pedFORFRE: TIntegerField
      FieldName = 'FORFRE'
    end
    object ConsE120pedVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE120pedCIFFOB: TStringField
      FieldName = 'CIFFOB'
      Size = 1
    end
    object ConsE120pedVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE120pedPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE120pedPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE120pedPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE120pedPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE120pedVLRBPR: TBCDField
      FieldName = 'VLRBPR'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRDPR: TBCDField
      FieldName = 'VLRDPR'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRBSE: TBCDField
      FieldName = 'VLRBSE'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRDSE: TBCDField
      FieldName = 'VLRDSE'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRSIC: TBCDField
      FieldName = 'VLRSIC'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRBIS: TBCDField
      FieldName = 'VLRBIS'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRBIN: TBCDField
      FieldName = 'VLRBIN'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRINS: TBCDField
      FieldName = 'VLRINS'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRLSE: TBCDField
      FieldName = 'VLRLSE'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRADT: TBCDField
      FieldName = 'VLRADT'
      Precision = 15
      Size = 2
    end
    object ConsE120pedQTDORI: TBCDField
      FieldName = 'QTDORI'
      Precision = 14
      Size = 5
    end
    object ConsE120pedVLRORI: TBCDField
      FieldName = 'VLRORI'
      Precision = 15
      Size = 2
    end
    object ConsE120pedTEMPAR: TStringField
      FieldName = 'TEMPAR'
      Size = 1
    end
    object ConsE120pedCODPOR: TStringField
      FieldName = 'CODPOR'
      Size = 4
    end
    object ConsE120pedCODCRT: TStringField
      FieldName = 'CODCRT'
      Size = 2
    end
    object ConsE120pedSITPED: TIntegerField
      FieldName = 'SITPED'
    end
    object ConsE120pedCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE120pedOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsE120pedPEDBLO: TStringField
      FieldName = 'PEDBLO'
      Size = 1
    end
    object ConsE120pedUSUBLO: TBCDField
      FieldName = 'USUBLO'
      Precision = 10
      Size = 0
    end
    object ConsE120pedDATBLO: TDateTimeField
      FieldName = 'DATBLO'
    end
    object ConsE120pedHORBLO: TIntegerField
      FieldName = 'HORBLO'
    end
    object ConsE120pedINDSIG: TStringField
      FieldName = 'INDSIG'
      Size = 1
    end
    object ConsE120pedVERCAL: TIntegerField
      FieldName = 'VERCAL'
    end
    object ConsE120pedHORINI: TIntegerField
      FieldName = 'HORINI'
    end
    object ConsE120pedHORFIM: TIntegerField
      FieldName = 'HORFIM'
    end
    object ConsE120pedUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE120pedDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE120pedHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE120pedPERFRE: TBCDField
      FieldName = 'PERFRE'
      Precision = 5
      Size = 2
    end
    object ConsE120pedPERSEG: TBCDField
      FieldName = 'PERSEG'
      Precision = 5
      Size = 2
    end
    object ConsE120pedPEREMB: TBCDField
      FieldName = 'PEREMB'
      Precision = 5
      Size = 2
    end
    object ConsE120pedPERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
    object ConsE120pedPEROUT: TBCDField
      FieldName = 'PEROUT'
      Precision = 5
      Size = 2
    end
    object ConsE120pedCODSAC: TBCDField
      FieldName = 'CODSAC'
      Precision = 14
      Size = 0
    end
    object ConsE120pedCODOPE: TIntegerField
      FieldName = 'CODOPE'
    end
    object ConsE120pedCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object ConsE120pedPEDPAL: TIntegerField
      FieldName = 'PEDPAL'
    end
    object ConsE120pedACEPAR: TStringField
      FieldName = 'ACEPAR'
      Size = 1
    end
    object ConsE120pedPEROF1: TBCDField
      FieldName = 'PEROF1'
      Precision = 5
      Size = 2
    end
    object ConsE120pedPEROF2: TBCDField
      FieldName = 'PEROF2'
      Precision = 5
      Size = 2
    end
    object ConsE120pedUSUFEC: TBCDField
      FieldName = 'USUFEC'
      Precision = 10
      Size = 0
    end
    object ConsE120pedDATFEC: TDateTimeField
      FieldName = 'DATFEC'
    end
    object ConsE120pedHORFEC: TIntegerField
      FieldName = 'HORFEC'
    end
    object ConsE120pedCLIREL: TIntegerField
      FieldName = 'CLIREL'
    end
    object ConsE120pedVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE120pedCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ConsE120pedCODSRO: TStringField
      FieldName = 'CODSRO'
      Size = 3
    end
    object ConsE120pedFILFAT: TIntegerField
      FieldName = 'FILFAT'
    end
    object ConsE120pedCODCDI: TIntegerField
      FieldName = 'CODCDI'
    end
    object ConsE120pedCODLIP: TStringField
      FieldName = 'CODLIP'
      Size = 5
    end
    object ConsE120pedCEPFRE: TIntegerField
      FieldName = 'CEPFRE'
    end
    object ConsE120pedVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ConsE120pedANAEMB: TStringField
      FieldName = 'ANAEMB'
      Size = 1
    end
    object ConsE120pedNUMEMP: TStringField
      FieldName = 'NUMEMP'
    end
    object ConsE120pedQTDANE: TIntegerField
      FieldName = 'QTDANE'
    end
    object ConsE120pedDATAGE: TDateTimeField
      FieldName = 'DATAGE'
    end
    object ConsE120pedFILNCO: TIntegerField
      FieldName = 'FILNCO'
    end
    object ConsE120pedSNFNCO: TStringField
      FieldName = 'SNFNCO'
      Size = 3
    end
    object ConsE120pedNUMNCO: TIntegerField
      FieldName = 'NUMNCO'
    end
    object ConsE120pedEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object ConsE120pedVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ConsE120pedVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ConsE120pedCODAPC: TIntegerField
      FieldName = 'CODAPC'
    end
    object ConsE120pedSOMFRE: TStringField
      FieldName = 'SOMFRE'
      Size = 1
    end
    object ConsE120pedQTDITP: TIntegerField
      FieldName = 'QTDITP'
    end
    object ConsE120pedQTDITS: TIntegerField
      FieldName = 'QTDITS'
    end
    object ConsE120pedPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConsE120pedVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ConsE120pedROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object ConsE120pedNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object ConsE120pedUSU_FILDIV: TIntegerField
      FieldName = 'USU_FILDIV'
    end
    object ConsE120pedUSU_PEDDIV: TIntegerField
      FieldName = 'USU_PEDDIV'
    end
    object ConsE120pedUSU_USUDIV: TBCDField
      FieldName = 'USU_USUDIV'
      Precision = 10
      Size = 0
    end
    object ConsE120pedUSU_DATDIV: TDateTimeField
      FieldName = 'USU_DATDIV'
    end
    object ConsE120pedUSU_HORDIV: TIntegerField
      FieldName = 'USU_HORDIV'
    end
    object ConsE120pedUSU_PEDTRA: TStringField
      FieldName = 'USU_PEDTRA'
      Size = 1
    end
    object ConsE120pedUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsE120pedUSU_USUDES: TBCDField
      FieldName = 'USU_USUDES'
      Precision = 10
      Size = 0
    end
    object ConsE120pedUSU_DATDES: TDateTimeField
      FieldName = 'USU_DATDES'
    end
    object ConsE120pedUSU_HORDES: TIntegerField
      FieldName = 'USU_HORDES'
    end
    object ConsE120pedUSU_NUMPEDORI: TIntegerField
      FieldName = 'USU_NUMPEDORI'
    end
    object ConsE120pedUSU_PRECARORI: TIntegerField
      FieldName = 'USU_PRECARORI'
    end
  end
  object ConsE085Cli: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codfil'
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
      'select e085cli.*,e085hcl.codrep from e085cli'
      'inner join e085hcl on e085hcl.codcli = e085cli.codcli'
      '                            where e085hcl.codfil = :codfil and'
      '                                  e085cli.codcli = :codcli')
    Left = 128
    Top = 24
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
    object ConsE085CliMARCLI: TStringField
      FieldName = 'MARCLI'
    end
    object ConsE085CliSENCLI: TStringField
      FieldName = 'SENCLI'
      Size = 10
    end
    object ConsE085CliTIPCLI: TStringField
      FieldName = 'TIPCLI'
      Size = 1
    end
    object ConsE085CliTIPMER: TStringField
      FieldName = 'TIPMER'
      Size = 1
    end
    object ConsE085CliTIPEMC: TIntegerField
      FieldName = 'TIPEMC'
    end
    object ConsE085CliCLICON: TStringField
      FieldName = 'CLICON'
      Size = 1
    end
    object ConsE085CliCODRAM: TStringField
      FieldName = 'CODRAM'
      Size = 5
    end
    object ConsE085CliINSEST: TStringField
      FieldName = 'INSEST'
      Size = 25
    end
    object ConsE085CliINSMUN: TStringField
      FieldName = 'INSMUN'
      Size = 16
    end
    object ConsE085CliCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
    object ConsE085CliCODGRE: TIntegerField
      FieldName = 'CODGRE'
    end
    object ConsE085CliZONFRA: TIntegerField
      FieldName = 'ZONFRA'
    end
    object ConsE085CliCODSUF: TStringField
      FieldName = 'CODSUF'
      Size = 10
    end
    object ConsE085CliENDCLI: TStringField
      FieldName = 'ENDCLI'
      Size = 100
    end
    object ConsE085CliCPLEND: TStringField
      FieldName = 'CPLEND'
    end
    object ConsE085CliCLIPRX: TStringField
      FieldName = 'CLIPRX'
      Size = 120
    end
    object ConsE085CliZIPCOD: TStringField
      FieldName = 'ZIPCOD'
      Size = 14
    end
    object ConsE085CliCEPCLI: TIntegerField
      FieldName = 'CEPCLI'
    end
    object ConsE085CliCEPINI: TIntegerField
      FieldName = 'CEPINI'
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
    object ConsE085CliCODPAI: TStringField
      FieldName = 'CODPAI'
      Size = 4
    end
    object ConsE085CliTEMENT: TStringField
      FieldName = 'TEMENT'
      Size = 1
    end
    object ConsE085CliENDENT: TStringField
      FieldName = 'ENDENT'
      Size = 100
    end
    object ConsE085CliCPLENT: TStringField
      FieldName = 'CPLENT'
    end
    object ConsE085CliCEPENT: TIntegerField
      FieldName = 'CEPENT'
    end
    object ConsE085CliINIENT: TIntegerField
      FieldName = 'INIENT'
    end
    object ConsE085CliCIDENT: TStringField
      FieldName = 'CIDENT'
      Size = 60
    end
    object ConsE085CliESTENT: TStringField
      FieldName = 'ESTENT'
      Size = 2
    end
    object ConsE085CliINSENT: TStringField
      FieldName = 'INSENT'
      Size = 25
    end
    object ConsE085CliCGCENT: TBCDField
      FieldName = 'CGCENT'
      Precision = 14
      Size = 0
    end
    object ConsE085CliTEMCOB: TStringField
      FieldName = 'TEMCOB'
      Size = 1
    end
    object ConsE085CliENDCOB: TStringField
      FieldName = 'ENDCOB'
      Size = 100
    end
    object ConsE085CliCPLCOB: TStringField
      FieldName = 'CPLCOB'
    end
    object ConsE085CliCEPCOB: TIntegerField
      FieldName = 'CEPCOB'
    end
    object ConsE085CliINICOB: TIntegerField
      FieldName = 'INICOB'
    end
    object ConsE085CliCIDCOB: TStringField
      FieldName = 'CIDCOB'
      Size = 60
    end
    object ConsE085CliESTCOB: TStringField
      FieldName = 'ESTCOB'
      Size = 2
    end
    object ConsE085CliCGCCOB: TBCDField
      FieldName = 'CGCCOB'
      Precision = 14
      Size = 0
    end
    object ConsE085CliENTCOR: TStringField
      FieldName = 'ENTCOR'
      Size = 1
    end
    object ConsE085CliFONCLI: TStringField
      FieldName = 'FONCLI'
    end
    object ConsE085CliFONCL2: TStringField
      FieldName = 'FONCL2'
    end
    object ConsE085CliFONCL3: TStringField
      FieldName = 'FONCL3'
    end
    object ConsE085CliFONCL4: TStringField
      FieldName = 'FONCL4'
    end
    object ConsE085CliFONCL5: TStringField
      FieldName = 'FONCL5'
    end
    object ConsE085CliFAXCLI: TStringField
      FieldName = 'FAXCLI'
    end
    object ConsE085CliCXAPST: TIntegerField
      FieldName = 'CXAPST'
    end
    object ConsE085CliINTNET: TStringField
      FieldName = 'INTNET'
      Size = 100
    end
    object ConsE085CliCODROE: TStringField
      FieldName = 'CODROE'
      Size = 3
    end
    object ConsE085CliSEQROE: TIntegerField
      FieldName = 'SEQROE'
    end
    object ConsE085CliCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsE085CliCLIREP: TIntegerField
      FieldName = 'CLIREP'
    end
    object ConsE085CliCLITRA: TIntegerField
      FieldName = 'CLITRA'
    end
    object ConsE085CliUSUCAD: TBCDField
      FieldName = 'USUCAD'
      Precision = 10
      Size = 0
    end
    object ConsE085CliDATCAD: TDateTimeField
      FieldName = 'DATCAD'
    end
    object ConsE085CliDATFIM: TDateTimeField
      FieldName = 'DATFIM'
    end
    object ConsE085CliHORCAD: TIntegerField
      FieldName = 'HORCAD'
    end
    object ConsE085CliHORFIM: TIntegerField
      FieldName = 'HORFIM'
    end
    object ConsE085CliDATVCT: TDateTimeField
      FieldName = 'DATVCT'
    end
    object ConsE085CliDATATU: TDateTimeField
      FieldName = 'DATATU'
    end
    object ConsE085CliHORATU: TIntegerField
      FieldName = 'HORATU'
    end
    object ConsE085CliUSUATU: TBCDField
      FieldName = 'USUATU'
      Precision = 10
      Size = 0
    end
    object ConsE085CliQTDATU: TIntegerField
      FieldName = 'QTDATU'
    end
    object ConsE085CliDATICV: TDateTimeField
      FieldName = 'DATICV'
    end
    object ConsE085CliSITCLI: TStringField
      FieldName = 'SITCLI'
      Size = 1
    end
    object ConsE085CliCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE085CliBLOCRE: TStringField
      FieldName = 'BLOCRE'
      Size = 1
    end
    object ConsE085CliOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsE085CliUSUMOT: TBCDField
      FieldName = 'USUMOT'
      Precision = 10
      Size = 0
    end
    object ConsE085CliDATMOT: TDateTimeField
      FieldName = 'DATMOT'
    end
    object ConsE085CliHORMOT: TIntegerField
      FieldName = 'HORMOT'
    end
    object ConsE085CliUSUOPE: TBCDField
      FieldName = 'USUOPE'
      Precision = 10
      Size = 0
    end
    object ConsE085CliCODAMA: TStringField
      FieldName = 'CODAMA'
      Size = 30
    end
    object ConsE085CliCODSAB: TStringField
      FieldName = 'CODSAB'
      Size = 30
    end
    object ConsE085CliCODGAL: TStringField
      FieldName = 'CODGAL'
      Size = 30
    end
    object ConsE085CliTRIICM: TStringField
      FieldName = 'TRIICM'
      Size = 1
    end
    object ConsE085CliTRIIPI: TStringField
      FieldName = 'TRIIPI'
      Size = 1
    end
    object ConsE085CliBAIENT: TStringField
      FieldName = 'BAIENT'
      Size = 75
    end
    object ConsE085CliBAICOB: TStringField
      FieldName = 'BAICOB'
      Size = 75
    end
    object ConsE085CliCLIFOR: TStringField
      FieldName = 'CLIFOR'
      Size = 1
    end
    object ConsE085CliIDECLI: TStringField
      FieldName = 'IDECLI'
    end
    object ConsE085CliTRIPIS: TStringField
      FieldName = 'TRIPIS'
      Size = 1
    end
    object ConsE085CliTRICOF: TStringField
      FieldName = 'TRICOF'
      Size = 1
    end
    object ConsE085CliINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsE085CliDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsE085CliHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsE085CliRETCOF: TStringField
      FieldName = 'RETCOF'
      Size = 1
    end
    object ConsE085CliRETCSL: TStringField
      FieldName = 'RETCSL'
      Size = 1
    end
    object ConsE085CliRETPIS: TStringField
      FieldName = 'RETPIS'
      Size = 1
    end
    object ConsE085CliRETOUR: TStringField
      FieldName = 'RETOUR'
      Size = 1
    end
    object ConsE085CliCODSRO: TStringField
      FieldName = 'CODSRO'
      Size = 3
    end
    object ConsE085CliDATSUF: TDateTimeField
      FieldName = 'DATSUF'
    end
    object ConsE085CliCEPFRE: TIntegerField
      FieldName = 'CEPFRE'
    end
    object ConsE085CliCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object ConsE085CliDATPDV: TDateTimeField
      FieldName = 'DATPDV'
    end
    object ConsE085CliHORPDV: TIntegerField
      FieldName = 'HORPDV'
    end
    object ConsE085CliRETPRO: TStringField
      FieldName = 'RETPRO'
      Size = 1
    end
    object ConsE085CliRETIRF: TStringField
      FieldName = 'RETIRF'
      Size = 1
    end
    object ConsE085CliLIMRET: TStringField
      FieldName = 'LIMRET'
      Size = 1
    end
    object ConsE085CliCODCNV: TIntegerField
      FieldName = 'CODCNV'
    end
    object ConsE085CliCALFUN: TStringField
      FieldName = 'CALFUN'
      Size = 1
    end
    object ConsE085CliEENCLI: TStringField
      FieldName = 'EENCLI'
      Size = 18
    end
    object ConsE085CliEENENT: TStringField
      FieldName = 'EENENT'
      Size = 18
    end
    object ConsE085CliEENCOB: TStringField
      FieldName = 'EENCOB'
      Size = 18
    end
    object ConsE085CliPERAIN: TBCDField
      FieldName = 'PERAIN'
      Precision = 4
      Size = 2
    end
    object ConsE085CliNENCLI: TStringField
      FieldName = 'NENCLI'
      Size = 60
    end
    object ConsE085CliNENCOB: TStringField
      FieldName = 'NENCOB'
      Size = 60
    end
    object ConsE085CliTIPACE: TIntegerField
      FieldName = 'TIPACE'
    end
    object ConsE085CliCODREP: TIntegerField
      FieldName = 'CODREP'
    end
  end
  object ConsE090Rep: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codrep'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e090rep .* from e090rep where codrep = :codrep')
    Left = 208
    Top = 24
    object ConsE090RepCODREP: TIntegerField
      FieldName = 'CODREP'
      ReadOnly = True
    end
    object ConsE090RepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ConsE090RepSENREP: TStringField
      FieldName = 'SENREP'
      Size = 10
    end
    object ConsE090RepTIPREP: TStringField
      FieldName = 'TIPREP'
      Size = 1
    end
    object ConsE090RepINSEST: TStringField
      FieldName = 'INSEST'
      Size = 25
    end
    object ConsE090RepINSMUN: TStringField
      FieldName = 'INSMUN'
      Size = 16
    end
    object ConsE090RepCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
    object ConsE090RepENDREP: TStringField
      FieldName = 'ENDREP'
      Size = 100
    end
    object ConsE090RepCPLEND: TStringField
      FieldName = 'CPLEND'
    end
    object ConsE090RepZIPCOD: TStringField
      FieldName = 'ZIPCOD'
      Size = 14
    end
    object ConsE090RepCEPREP: TIntegerField
      FieldName = 'CEPREP'
    end
    object ConsE090RepBAIREP: TStringField
      FieldName = 'BAIREP'
      Size = 75
    end
    object ConsE090RepCIDREP: TStringField
      FieldName = 'CIDREP'
      Size = 60
    end
    object ConsE090RepSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsE090RepFONREP: TStringField
      FieldName = 'FONREP'
    end
    object ConsE090RepFONRE2: TStringField
      FieldName = 'FONRE2'
    end
    object ConsE090RepFONRE3: TStringField
      FieldName = 'FONRE3'
    end
    object ConsE090RepFAXREP: TStringField
      FieldName = 'FAXREP'
    end
    object ConsE090RepCXAPST: TIntegerField
      FieldName = 'CXAPST'
    end
    object ConsE090RepINTNET: TStringField
      FieldName = 'INTNET'
      Size = 100
    end
    object ConsE090RepDATCAD: TDateTimeField
      FieldName = 'DATCAD'
    end
    object ConsE090RepDATATU: TDateTimeField
      FieldName = 'DATATU'
    end
    object ConsE090RepSITREP: TStringField
      FieldName = 'SITREP'
      Size = 1
    end
    object ConsE090RepQTDDEP: TIntegerField
      FieldName = 'QTDDEP'
    end
    object ConsE090RepCALIRF: TStringField
      FieldName = 'CALIRF'
      Size = 1
    end
    object ConsE090RepCALISS: TStringField
      FieldName = 'CALISS'
      Size = 1
    end
    object ConsE090RepCALINS: TStringField
      FieldName = 'CALINS'
      Size = 1
    end
    object ConsE090RepGERTIT: TStringField
      FieldName = 'GERTIT'
      Size = 1
    end
    object ConsE090RepCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE090RepOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsE090RepUSUMOT: TBCDField
      FieldName = 'USUMOT'
      Precision = 10
      Size = 0
    end
    object ConsE090RepDATMOT: TDateTimeField
      FieldName = 'DATMOT'
    end
    object ConsE090RepHORMOT: TIntegerField
      FieldName = 'HORMOT'
    end
    object ConsE090RepDATNAS: TDateTimeField
      FieldName = 'DATNAS'
    end
    object ConsE090RepNUMRGE: TStringField
      FieldName = 'NUMRGE'
      Size = 12
    end
    object ConsE090RepORGRGE: TStringField
      FieldName = 'ORGRGE'
      Size = 6
    end
    object ConsE090RepDATRGE: TDateTimeField
      FieldName = 'DATRGE'
    end
    object ConsE090RepREPCLI: TIntegerField
      FieldName = 'REPCLI'
    end
    object ConsE090RepREPFOR: TIntegerField
      FieldName = 'REPFOR'
    end
    object ConsE090RepINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsE090RepDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsE090RepHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsE090RepCODCDI: TIntegerField
      FieldName = 'CODCDI'
    end
    object ConsE090RepEENREP: TStringField
      FieldName = 'EENREP'
      Size = 18
    end
    object ConsE090RepHORATU: TIntegerField
      FieldName = 'HORATU'
    end
    object ConsE090RepNENREP: TStringField
      FieldName = 'NENREP'
      Size = 60
    end
    object ConsE090RepUSUCAD: TBCDField
      FieldName = 'USUCAD'
      Precision = 10
      Size = 0
    end
    object ConsE090RepHORCAD: TIntegerField
      FieldName = 'HORCAD'
    end
    object ConsE090RepUSUATU: TBCDField
      FieldName = 'USUATU'
      Precision = 10
      Size = 0
    end
  end
  object ConsE028Cpg: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codcpg'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e028cpg.* from e028cpg where codemp = 1 and codcpg = :cod' +
        'cpg')
    Left = 296
    Top = 24
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
    object ConsE028CpgAPLCPG: TStringField
      FieldName = 'APLCPG'
      Size = 1
    end
    object ConsE028CpgPGTANT: TStringField
      FieldName = 'PGTANT'
      Size = 1
    end
    object ConsE028CpgDIAESP: TStringField
      FieldName = 'DIAESP'
      Size = 1
    end
    object ConsE028CpgDIAME1: TIntegerField
      FieldName = 'DIAME1'
    end
    object ConsE028CpgDIAME2: TIntegerField
      FieldName = 'DIAME2'
    end
    object ConsE028CpgDIAME3: TIntegerField
      FieldName = 'DIAME3'
    end
    object ConsE028CpgDIASEM: TStringField
      FieldName = 'DIASEM'
      Size = 7
    end
    object ConsE028CpgDIAMES: TStringField
      FieldName = 'DIAMES'
      Size = 31
    end
    object ConsE028CpgPRZMED: TIntegerField
      FieldName = 'PRZMED'
    end
    object ConsE028CpgQTDPAR: TIntegerField
      FieldName = 'QTDPAR'
    end
    object ConsE028CpgIPIPAR: TStringField
      FieldName = 'IPIPAR'
      Size = 1
    end
    object ConsE028CpgICMPAR: TStringField
      FieldName = 'ICMPAR'
      Size = 1
    end
    object ConsE028CpgSUBPAR: TStringField
      FieldName = 'SUBPAR'
      Size = 1
    end
    object ConsE028CpgFREPAR: TStringField
      FieldName = 'FREPAR'
      Size = 1
    end
    object ConsE028CpgSEGPAR: TStringField
      FieldName = 'SEGPAR'
      Size = 1
    end
    object ConsE028CpgENCPAR: TStringField
      FieldName = 'ENCPAR'
      Size = 1
    end
    object ConsE028CpgEMBPAR: TStringField
      FieldName = 'EMBPAR'
      Size = 1
    end
    object ConsE028CpgOUTPAR: TStringField
      FieldName = 'OUTPAR'
      Size = 1
    end
    object ConsE028CpgDARPAR: TStringField
      FieldName = 'DARPAR'
      Size = 1
    end
    object ConsE028CpgACRFIN: TBCDField
      FieldName = 'ACRFIN'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgVENDSC: TBCDField
      FieldName = 'VENDSC'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgCPRDSC: TBCDField
      FieldName = 'CPRDSC'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgREDCOM: TBCDField
      FieldName = 'REDCOM'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgTIPPAR: TIntegerField
      FieldName = 'TIPPAR'
    end
    object ConsE028CpgSITCPG: TStringField
      FieldName = 'SITCPG'
      Size = 1
    end
    object ConsE028CpgCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE028CpgFVECPG: TStringField
      FieldName = 'FVECPG'
      Size = 10
    end
    object ConsE028CpgFVEDEC: TStringField
      FieldName = 'FVEDEC'
      Size = 1
    end
    object ConsE028CpgINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsE028CpgDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsE028CpgHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsE028CpgTIPINT: TIntegerField
      FieldName = 'TIPINT'
    end
    object ConsE028CpgCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object ConsE028CpgISSPAR: TStringField
      FieldName = 'ISSPAR'
      Size = 1
    end
    object ConsE028CpgDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE028CpgHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE028CpgUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE028CpgDATATU: TDateTimeField
      FieldName = 'DATATU'
    end
    object ConsE028CpgHORATU: TIntegerField
      FieldName = 'HORATU'
    end
    object ConsE028CpgUSUATU: TBCDField
      FieldName = 'USUATU'
      Precision = 10
      Size = 0
    end
    object ConsE028CpgPERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
  end
  object ConsE120Ipd: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsE120IpdAfterScroll
    Parameters = <
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
      'select e120ipd.*,e075pro.despro,e075der.desder from e120ipd'
      'inner join e075pro on e075pro.codemp = e120ipd.codemp and'
      '                      e075pro.codpro = e120ipd.codpro'
      'inner join e075der on e075der.codemp = e120ipd.codemp and'
      '                      e075der.codpro = e120ipd.codpro and'
      '                      e075der.codder = e120ipd.codder'
      '                      where'
      '                      e120ipd.codemp = 1 and'
      '                      e120ipd.codfil = :codfil and'
      '                      e120ipd.numped = :numped'
      'order by e120ipd.seqipd')
    Left = 384
    Top = 24
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
    object ConsE120IpdPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object ConsE120IpdSEQPCL: TStringField
      FieldName = 'SEQPCL'
      Size = 10
    end
    object ConsE120IpdPEDPRV: TStringField
      FieldName = 'PEDPRV'
      Size = 1
    end
    object ConsE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE120IpdCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object ConsE120IpdCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE120IpdCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ConsE120IpdCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ConsE120IpdCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ConsE120IpdCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ConsE120IpdCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ConsE120IpdCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ConsE120IpdCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE120IpdCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object ConsE120IpdRESEST: TStringField
      FieldName = 'RESEST'
      Size = 1
    end
    object ConsE120IpdQTDPED: TBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDAEN: TBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDPOC: TBCDField
      FieldName = 'QTDPOC'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDFAT: TBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDCAN: TBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDABE: TBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDRAE: TBCDField
      FieldName = 'QTDRAE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDNLP: TBCDField
      FieldName = 'QTDNLP'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDRES: TBCDField
      FieldName = 'QTDRES'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE120IpdCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object ConsE120IpdDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object ConsE120IpdCOTMFP: TBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object ConsE120IpdDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ConsE120IpdCOTMOE: TBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ConsE120IpdFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ConsE120IpdCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE120IpdPREUNI: TBCDField
      FieldName = 'PREUNI'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ConsE120IpdPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object ConsE120IpdPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPEROFE: TBCDField
      FieldName = 'PEROFE'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERACR: TBCDField
      FieldName = 'PERACR'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ConsE120IpdDATANE: TDateTimeField
      FieldName = 'DATANE'
    end
    object ConsE120IpdDATPOC: TDateTimeField
      FieldName = 'DATPOC'
    end
    object ConsE120IpdCODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object ConsE120IpdNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object ConsE120IpdCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object ConsE120IpdCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ConsE120IpdCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConsE120IpdCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ConsE120IpdVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSTC: TBCDField
      FieldName = 'VLRSTC'
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
    object ConsE120IpdVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdSITIPD: TIntegerField
      FieldName = 'SITIPD'
    end
    object ConsE120IpdCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE120IpdOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsE120IpdGERNEC: TIntegerField
      FieldName = 'GERNEC'
    end
    object ConsE120IpdGERCGA: TStringField
      FieldName = 'GERCGA'
      Size = 1
    end
    object ConsE120IpdRESMAN: TStringField
      FieldName = 'RESMAN'
      Size = 1
    end
    object ConsE120IpdINDAED: TStringField
      FieldName = 'INDAED'
      Size = 1
    end
    object ConsE120IpdNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object ConsE120IpdDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object ConsE120IpdSEQCVP: TIntegerField
      FieldName = 'SEQCVP'
    end
    object ConsE120IpdUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE120IpdHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE120IpdQTDPPF: TBCDField
      FieldName = 'QTDPPF'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdCMPKIT: TStringField
      FieldName = 'CMPKIT'
      Size = 1
    end
    object ConsE120IpdFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object ConsE120IpdNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsE120IpdSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object ConsE120IpdUNIVEN: TStringField
      FieldName = 'UNIVEN'
      Size = 3
    end
    object ConsE120IpdQTDVEN: TBCDField
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdPREVEN: TBCDField
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdPREBRU: TBCDField
      FieldName = 'PREBRU'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object ConsE120IpdCTRCVS: TIntegerField
      FieldName = 'CTRCVS'
    end
    object ConsE120IpdCPTCVS: TDateTimeField
      FieldName = 'CPTCVS'
    end
    object ConsE120IpdSEQCVS: TIntegerField
      FieldName = 'SEQCVS'
    end
    object ConsE120IpdCODAVC: TIntegerField
      FieldName = 'CODAVC'
    end
    object ConsE120IpdCODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object ConsE120IpdCODPGR: TStringField
      FieldName = 'CODPGR'
      Size = 5
    end
    object ConsE120IpdIDXGRD: TIntegerField
      FieldName = 'IDXGRD'
    end
    object ConsE120IpdCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ConsE120IpdCODCLC: TStringField
      FieldName = 'CODCLC'
      Size = 10
    end
    object ConsE120IpdPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdFILPRD: TIntegerField
      FieldName = 'FILPRD'
    end
    object ConsE120IpdVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ConsE120IpdINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ConsE120IpdPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object ConsE120IpdFORNFC: TIntegerField
      FieldName = 'FORNFC'
    end
    object ConsE120IpdNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsE120IpdSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object ConsE120IpdSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ConsE120IpdNCTLCL: TStringField
      FieldName = 'NCTLCL'
    end
    object ConsE120IpdNRECLI: TStringField
      FieldName = 'NRECLI'
    end
    object ConsE120IpdNOSICL: TBCDField
      FieldName = 'NOSICL'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdNOSFCL: TBCDField
      FieldName = 'NOSFCL'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdNOCCL1: TStringField
      FieldName = 'NOCCL1'
    end
    object ConsE120IpdNOCCL2: TStringField
      FieldName = 'NOCCL2'
    end
    object ConsE120IpdNOCCL3: TStringField
      FieldName = 'NOCCL3'
    end
    object ConsE120IpdCODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
    object ConsE120IpdCTRCVP: TIntegerField
      FieldName = 'CTRCVP'
    end
    object ConsE120IpdCPTCVP: TDateTimeField
      FieldName = 'CPTCVP'
    end
    object ConsE120IpdSEQCTR: TIntegerField
      FieldName = 'SEQCTR'
    end
    object ConsE120IpdINDAPE: TIntegerField
      FieldName = 'INDAPE'
    end
    object ConsE120IpdOBSIPD: TStringField
      FieldName = 'OBSIPD'
      Size = 999
    end
    object ConsE120IpdSEQISP: TIntegerField
      FieldName = 'SEQISP'
    end
    object ConsE120IpdEMPOCP: TIntegerField
      FieldName = 'EMPOCP'
    end
    object ConsE120IpdVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsE120IpdUSU_CODTEC1: TStringField
      FieldName = 'USU_CODTEC1'
      Size = 14
    end
    object ConsE120IpdUSU_CODTEC2: TStringField
      FieldName = 'USU_CODTEC2'
      Size = 14
    end
    object ConsE120IpdUSU_QTDREP: TIntegerField
      FieldName = 'USU_QTDREP'
    end
    object ConsE120IpdUSU_QTDDIV: TBCDField
      FieldName = 'USU_QTDDIV'
      Precision = 11
      Size = 2
    end
    object ConsE120IpdUSU_MEDLAR: TBCDField
      FieldName = 'USU_MEDLAR'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_MEDCOM: TBCDField
      FieldName = 'USU_MEDCOM'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_MEDALT: TBCDField
      FieldName = 'USU_MEDALT'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC1: TBCDField
      FieldName = 'USU_PERDESC1'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC2: TBCDField
      FieldName = 'USU_PERDESC2'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC3: TBCDField
      FieldName = 'USU_PERDESC3'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC4: TBCDField
      FieldName = 'USU_PERDESC4'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC5: TBCDField
      FieldName = 'USU_PERDESC5'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC6: TBCDField
      FieldName = 'USU_PERDESC6'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_CANAPR: TBCDField
      FieldName = 'USU_CANAPR'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdUSU_TOTDSC: TBCDField
      FieldName = 'USU_TOTDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_TOTDSCORI: TBCDField
      FieldName = 'USU_TOTDSCORI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdORIRES: TStringField
      FieldName = 'ORIRES'
      Size = 1
    end
    object ConsE120IpdUSU_VLRORI: TBCDField
      FieldName = 'USU_VLRORI'
      Precision = 14
      Size = 2
    end
    object ConsE120IpdDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsE120IpdDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
  end
  object ConsUsu_T120Ipd: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
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
      'select * from usu_t120ipd where'
      '                         usu_codemp = 1 and'
      '                         usu_codfil = :codfil and'
      '                         usu_numped = :numped and'
      '                         usu_seqipd = :seqipd')
    Left = 592
    Top = 24
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
  end
  object ADOUsuT000sis: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usu_t000sid')
    Left = 48
    Top = 120
    object ADOUsuT000sisUSU_URLSRV: TStringField
      FieldName = 'USU_URLSRV'
      Size = 255
    end
    object ADOUsuT000sisUSU_BASQRY: TStringField
      FieldName = 'USU_BASQRY'
      Size = 255
    end
    object ADOUsuT000sisUSU_USUCAD: TBCDField
      FieldName = 'USU_USUCAD'
      Precision = 10
      Size = 0
    end
    object ADOUsuT000sisUSU_DATCAD: TDateTimeField
      FieldName = 'USU_DATCAD'
    end
    object ADOUsuT000sisUSU_HORCAD: TIntegerField
      FieldName = 'USU_HORCAD'
    end
    object ADOUsuT000sisUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ADOUsuT000sisUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ADOUsuT000sisUSU_USUATU: TBCDField
      FieldName = 'USU_USUATU'
      Precision = 10
      Size = 0
    end
    object ADOUsuT000sisUSU_DATATU: TDateTimeField
      FieldName = 'USU_DATATU'
    end
    object ADOUsuT000sisUSU_HORATU: TIntegerField
      FieldName = 'USU_HORATU'
    end
  end
  object CadUsu_T120Ipd: TADOQuery
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
      'select * from usu_t120ipd where usu_codemp = :codemp and'
      '                                usu_codfil = :codfil and'
      '                                usu_numped = :numped and'
      '                                usu_seqipd = :seqipd and'
      '                                usu_seqite = :seqite')
    Left = 480
    Top = 80
    object CadUsu_T120IpdUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUsu_T120IpdUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadUsu_T120IpdUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object CadUsu_T120IpdUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object CadUsu_T120IpdUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object CadUsu_T120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object CadUsu_T120IpdUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object CadUsu_T120IpdUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object CadUsu_T120IpdUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object CadUsu_T120IpdUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_T120IpdUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu_T120IpdUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object CadUsu_T120IpdUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object CadUsu_T120IpdUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object CadUsu_T120IpdUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object CadUsu_T120IpdUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object CadUsu_T120IpdUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
  end
  object ConsUsu_TDerCor: TADOQuery
    Connection = Dm.ADOBanco
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
      'select * from usu_tdercor where'
      '                          usu_codemp = :codemp and'
      '                          usu_codpro = :codpro and'
      '                          usu_codder = :codder and'
      '                          usu_sittec = '#39'A'#39
      '                          order by usu_codtec')
    Left = 48
    Top = 72
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
  object CadE120Ipd: TADOQuery
    Connection = Dm.ADOBanco
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
      'select * from e120ipd where codemp = :codemp and'
      '                            codfil = :codfil and'
      '                            numped = :numped and'
      '                            seqipd = :seqipd')
    Left = 391
    Top = 79
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
    object CadE120IpdQTDPED: TBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDAEN: TBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDPOC: TBCDField
      FieldName = 'QTDPOC'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDFAT: TBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDCAN: TBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDABE: TBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDRAE: TBCDField
      FieldName = 'QTDRAE'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDNLP: TBCDField
      FieldName = 'QTDNLP'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDRES: TBCDField
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
    object CadE120IpdCOTMFP: TBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object CadE120IpdDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object CadE120IpdCOTMOE: TBCDField
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
    object CadE120IpdPREUNI: TBCDField
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
    object CadE120IpdQTDPPF: TBCDField
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
    object CadE120IpdQTDVEN: TBCDField
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object CadE120IpdPREVEN: TBCDField
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object CadE120IpdPREBRU: TBCDField
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
      Precision = 5
      Size = 2
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
      Precision = 5
      Size = 2
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
    object CadE120IpdUSU_CANAPR: TBCDField
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
    object CadE120IpdORIRES: TStringField
      FieldName = 'ORIRES'
      Size = 1
    end
    object CadE120IpdUSU_VLRORI: TBCDField
      FieldName = 'USU_VLRORI'
      Precision = 14
      Size = 2
    end
  end
  object ConsE210Mvp: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DatIni'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatFim'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e210mvp.*'
      'from e210mvp'
      'inner join e075pro on e075pro.codemp = e210mvp.codemp and'
      '                      e075pro.codpro = e210mvp.codpro'
      '                    where'
      '                    e210mvp.codtns in ('#39'90201'#39') and  '
      
        '                    e210mvp.datmov between :DatIni and :DatFim a' +
        'nd'
      '                    e075pro.codori = 01 and'
      '                    e210mvp.coddep <> '#39'9999999'#39'  and'
      '                    e210mvp.fildep <> 101 '
      '                    order by e210mvp.codpro,e210mvp.codder')
    Left = 56
    Top = 232
    object ConsE210MvpCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE210MvpCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE210MvpCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE210MvpCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE210MvpDATMOV: TDateTimeField
      FieldName = 'DATMOV'
    end
    object ConsE210MvpSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object ConsE210MvpDATFEC: TDateTimeField
      FieldName = 'DATFEC'
    end
    object ConsE210MvpSEQFEC: TIntegerField
      FieldName = 'SEQFEC'
    end
    object ConsE210MvpFILDEP: TIntegerField
      FieldName = 'FILDEP'
    end
    object ConsE210MvpMSKDEP: TStringField
      FieldName = 'MSKDEP'
      Size = 18
    end
    object ConsE210MvpNIVDEP: TIntegerField
      FieldName = 'NIVDEP'
    end
    object ConsE210MvpCODTNS: TStringField
      FieldName = 'CODTNS'
      Size = 5
    end
    object ConsE210MvpESTMOV: TStringField
      FieldName = 'ESTMOV'
      Size = 2
    end
    object ConsE210MvpESTEOS: TStringField
      FieldName = 'ESTEOS'
      Size = 1
    end
    object ConsE210MvpESTVMV: TStringField
      FieldName = 'ESTVMV'
      Size = 1
    end
    object ConsE210MvpORIORP: TStringField
      FieldName = 'ORIORP'
      Size = 3
    end
    object ConsE210MvpNUMDOC: TIntegerField
      FieldName = 'NUMDOC'
    end
    object ConsE210MvpDATFAB: TDateTimeField
      FieldName = 'DATFAB'
    end
    object ConsE210MvpDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ConsE210MvpDATVLT: TDateTimeField
      FieldName = 'DATVLT'
    end
    object ConsE210MvpCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object ConsE210MvpNUMSEP: TStringField
      FieldName = 'NUMSEP'
      Size = 17
    end
    object ConsE210MvpOBSMVP: TStringField
      FieldName = 'OBSMVP'
      Size = 250
    end
    object ConsE210MvpQTDMOV: TFMTBCDField
      FieldName = 'QTDMOV'
      Precision = 14
      Size = 5
    end
    object ConsE210MvpVLRMOV: TBCDField
      FieldName = 'VLRMOV'
      Precision = 15
      Size = 2
    end
    object ConsE210MvpQTDANT: TFMTBCDField
      FieldName = 'QTDANT'
      Precision = 14
      Size = 5
    end
    object ConsE210MvpVLRANT: TBCDField
      FieldName = 'VLRANT'
      Precision = 15
      Size = 2
    end
    object ConsE210MvpQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object ConsE210MvpVLREST: TBCDField
      FieldName = 'VLREST'
      Precision = 15
      Size = 2
    end
    object ConsE210MvpPRMEST: TFMTBCDField
      FieldName = 'PRMEST'
      Precision = 15
      Size = 6
    end
    object ConsE210MvpPROTRF: TStringField
      FieldName = 'PROTRF'
      Size = 14
    end
    object ConsE210MvpDERTRF: TStringField
      FieldName = 'DERTRF'
      Size = 7
    end
    object ConsE210MvpDEPTRF: TStringField
      FieldName = 'DEPTRF'
      Size = 10
    end
    object ConsE210MvpSEQTRF: TIntegerField
      FieldName = 'SEQTRF'
    end
    object ConsE210MvpUSURES: TBCDField
      FieldName = 'USURES'
      Precision = 10
      Size = 0
    end
    object ConsE210MvpCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ConsE210MvpUSUREC: TBCDField
      FieldName = 'USUREC'
      Precision = 10
      Size = 0
    end
    object ConsE210MvpCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConsE210MvpNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object ConsE210MvpCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object ConsE210MvpCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ConsE210MvpLCTFIN: TStringField
      FieldName = 'LCTFIN'
      Size = 1
    end
    object ConsE210MvpNUMLOT: TIntegerField
      FieldName = 'NUMLOT'
    end
    object ConsE210MvpNUMEME: TIntegerField
      FieldName = 'NUMEME'
    end
    object ConsE210MvpSEQEME: TIntegerField
      FieldName = 'SEQEME'
    end
    object ConsE210MvpCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE210MvpCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object ConsE210MvpNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object ConsE210MvpSEQIPV: TIntegerField
      FieldName = 'SEQIPV'
    end
    object ConsE210MvpCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE210MvpFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object ConsE210MvpNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsE210MvpSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object ConsE210MvpFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object ConsE210MvpCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsE210MvpNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsE210MvpSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object ConsE210MvpSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ConsE210MvpUSUDIG: TBCDField
      FieldName = 'USUDIG'
      Precision = 10
      Size = 0
    end
    object ConsE210MvpDATDIG: TDateTimeField
      FieldName = 'DATDIG'
    end
    object ConsE210MvpHORDIG: TIntegerField
      FieldName = 'HORDIG'
    end
    object ConsE210MvpCODLIG: TIntegerField
      FieldName = 'CODLIG'
    end
    object ConsE210MvpMOTMVP: TStringField
      FieldName = 'MOTMVP'
      Size = 250
    end
    object ConsE210MvpDATINV: TDateTimeField
      FieldName = 'DATINV'
    end
    object ConsE210MvpEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object ConsE210MvpVLRDM1: TFMTBCDField
      FieldName = 'VLRDM1'
      Precision = 14
      Size = 5
    end
    object ConsE210MvpVLRDM2: TFMTBCDField
      FieldName = 'VLRDM2'
      Precision = 14
      Size = 5
    end
    object ConsE210MvpVLRDM3: TFMTBCDField
      FieldName = 'VLRDM3'
      Precision = 14
      Size = 5
    end
    object ConsE210MvpVLRDM4: TFMTBCDField
      FieldName = 'VLRDM4'
      Precision = 14
      Size = 5
    end
    object ConsE210MvpVLRDM5: TFMTBCDField
      FieldName = 'VLRDM5'
      Precision = 14
      Size = 5
    end
    object ConsE210MvpVLRDM6: TFMTBCDField
      FieldName = 'VLRDM6'
      Precision = 14
      Size = 5
    end
    object ConsE210MvpESTWMS: TStringField
      FieldName = 'ESTWMS'
      Size = 1
    end
    object ConsE210MvpESTCOC: TStringField
      FieldName = 'ESTCOC'
      Size = 1
    end
    object ConsE210MvpESTCOF: TStringField
      FieldName = 'ESTCOF'
      Size = 1
    end
    object ConsE210MvpFILPED: TIntegerField
      FieldName = 'FILPED'
    end
    object ConsE210MvpNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE210MvpSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsE210MvpUTIREP: TStringField
      FieldName = 'UTIREP'
      Size = 1
    end
    object ConsE210MvpFILANE: TIntegerField
      FieldName = 'FILANE'
    end
    object ConsE210MvpNUMANE: TBCDField
      FieldName = 'NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsE210MvpNUMPFA: TIntegerField
      FieldName = 'NUMPFA'
    end
    object ConsE210MvpSEQPES: TIntegerField
      FieldName = 'SEQPES'
    end
    object ConsE210MvpLOTDES: TStringField
      FieldName = 'LOTDES'
      Size = 17
    end
    object ConsE210MvpCODETG: TIntegerField
      FieldName = 'CODETG'
    end
    object ConsE210MvpSEQCMP: TIntegerField
      FieldName = 'SEQCMP'
    end
    object ConsE210MvpACEFEC: TStringField
      FieldName = 'ACEFEC'
      Size = 1
    end
    object ConsE210MvpULTMDI: TStringField
      FieldName = 'ULTMDI'
      Size = 1
    end
    object ConsE210MvpCODBEM: TStringField
      FieldName = 'CODBEM'
    end
    object ConsE210MvpFILCLE: TIntegerField
      FieldName = 'FILCLE'
    end
    object ConsE210MvpNUMCLE: TIntegerField
      FieldName = 'NUMCLE'
    end
    object ConsE210MvpVLRCM1: TBCDField
      FieldName = 'VLRCM1'
      Precision = 15
      Size = 2
    end
    object ConsE210MvpDATCM1: TDateTimeField
      FieldName = 'DATCM1'
    end
    object ConsE210MvpCOTCM1: TFMTBCDField
      FieldName = 'COTCM1'
      Precision = 19
      Size = 10
    end
    object ConsE210MvpVLRCM2: TBCDField
      FieldName = 'VLRCM2'
      Precision = 15
      Size = 2
    end
    object ConsE210MvpDATCM2: TDateTimeField
      FieldName = 'DATCM2'
    end
    object ConsE210MvpCOTCM2: TFMTBCDField
      FieldName = 'COTCM2'
      Precision = 19
      Size = 10
    end
    object ConsE210MvpSEPDES: TStringField
      FieldName = 'SEPDES'
      Size = 17
    end
    object ConsE210MvpCODSLT: TStringField
      FieldName = 'CODSLT'
      Size = 10
    end
    object ConsE210MvpPERGER: TBCDField
      FieldName = 'PERGER'
      Precision = 5
      Size = 2
    end
    object ConsE210MvpPERPUR: TBCDField
      FieldName = 'PERPUR'
      Precision = 5
      Size = 2
    end
    object ConsE210MvpPERUMI: TBCDField
      FieldName = 'PERUMI'
      Precision = 5
      Size = 2
    end
    object ConsE210MvpDATTES: TDateTimeField
      FieldName = 'DATTES'
    end
    object ConsE210MvpCODEND: TStringField
      FieldName = 'CODEND'
      Size = 10
    end
    object ConsE210MvpCODSAF: TStringField
      FieldName = 'CODSAF'
      Size = 10
    end
    object ConsE210MvpCODTRM: TStringField
      FieldName = 'CODTRM'
      Size = 10
    end
    object ConsE210MvpCODBNF: TStringField
      FieldName = 'CODBNF'
      Size = 10
    end
    object ConsE210MvpCODCAT: TStringField
      FieldName = 'CODCAT'
      Size = 10
    end
    object ConsE210MvpAMONUM: TIntegerField
      FieldName = 'AMONUM'
    end
    object ConsE210MvpVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsE210MvpPRMICM: TFMTBCDField
      FieldName = 'PRMICM'
      Precision = 15
      Size = 6
    end
    object ConsE210MvpICMACF: TBCDField
      FieldName = 'ICMACF'
      Precision = 15
      Size = 2
    end
  end
  object CadUsu_TSalCus: TADOQuery
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
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tsalcus where'
      '                        usu_codpro = :codpro and'
      '                        usu_codder = :codder')
    Left = 144
    Top = 232
    object CadUsu_TSalCusUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TSalCusUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu_TSalCusUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object CadUsu_TSalCusUSU_PREUNI: TBCDField
      FieldName = 'USU_PREUNI'
      Precision = 11
      Size = 2
    end
    object CadUsu_TSalCusUSU_PRETOT: TBCDField
      FieldName = 'USU_PRETOT'
      Precision = 11
      Size = 2
    end
    object CadUsu_TSalCusUSU_PERREP: TBCDField
      FieldName = 'USU_PERREP'
      Precision = 11
      Size = 2
    end
    object CadUsu_TSalCusUSU_CUSATU: TBCDField
      FieldName = 'USU_CUSATU'
      Precision = 11
      Size = 2
    end
  end
  object ConsE081Itp: TADOQuery
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
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codtpr'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'datini'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e081itp where'
      '                        codpro = :codpro and'
      '                        codder = :codder and'
      '                        codtpr = :codtpr and'
      '                        datini = :datini')
    Left = 224
    Top = 232
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
  end
  object ConsUsu_TSalCus: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usu_tsalcus')
    Left = 144
    Top = 288
    object ConsUsu_TSalCusUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TSalCusUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TSalCusUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ConsUsu_TSalCusUSU_PREUNI: TBCDField
      FieldName = 'USU_PREUNI'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TSalCusUSU_PRETOT: TBCDField
      FieldName = 'USU_PRETOT'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TSalCusUSU_PERREP: TBCDField
      FieldName = 'USU_PERREP'
      Precision = 11
      Size = 2
    end
  end
  object ConsE210MvpMP: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DatIni'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatFim'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e210mvp.vlrmov from e210mvp,e075pro'
      '                      where'
      '                      e075pro.codemp = e210mvp.codemp and'
      '                      e075pro.codpro = e210mvp.codpro and'
      
        '                      e210mvp.datmov between :DatIni and :DatFim' +
        ' and'
      '                      e210mvp.esteos = '#39'S'#39' and'
      
        '                      e210mvp.coddep in ('#39'1000'#39','#39'1001.1'#39','#39'1006'#39',' +
        #39'1014'#39','#39'1017'#39','#39'1100'#39','#39'1200'#39','#39'9000'#39','#39'9006'#39') and'
      '                      e075pro.codori in ('#39'10'#39','#39'11'#39','#39'12'#39','#39'90'#39')')
    Left = 311
    Top = 232
    object ConsE210MvpMPVLRMOV: TBCDField
      FieldName = 'VLRMOV'
      Precision = 15
      Size = 2
    end
  end
  object CadE075Der: TADOQuery
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
      end>
    SQL.Strings = (
      'select * from e075der where'
      '                      codemp = :codemp and'
      '                      codpro = :codpro and'
      '                      codder = :codder')
    Left = 248
    Top = 288
    object CadE075DerCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE075DerCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object CadE075DerCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object CadE075DerDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
    object CadE075DerDESCPL: TStringField
      FieldName = 'DESCPL'
      Size = 90
    end
    object CadE075DerCODBAR: TBCDField
      FieldName = 'CODBAR'
      Precision = 13
      Size = 0
    end
    object CadE075DerCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object CadE075DerCODAGT: TStringField
      FieldName = 'CODAGT'
      Size = 5
    end
    object CadE075DerSEQCMD: TIntegerField
      FieldName = 'SEQCMD'
    end
    object CadE075DerDATVAL: TDateTimeField
      FieldName = 'DATVAL'
    end
    object CadE075DerDIAVLT: TIntegerField
      FieldName = 'DIAVLT'
    end
    object CadE075DerTIPCN2: TStringField
      FieldName = 'TIPCN2'
      Size = 1
    end
    object CadE075DerVLRCN2: TFMTBCDField
      FieldName = 'VLRCN2'
      Precision = 13
      Size = 6
    end
    object CadE075DerTIPCN3: TStringField
      FieldName = 'TIPCN3'
      Size = 1
    end
    object CadE075DerVLRCN3: TFMTBCDField
      FieldName = 'VLRCN3'
      Precision = 13
      Size = 6
    end
    object CadE075DerPRECUS: TFMTBCDField
      FieldName = 'PRECUS'
      Precision = 15
      Size = 6
    end
    object CadE075DerDATCUS: TDateTimeField
      FieldName = 'DATCUS'
    end
    object CadE075DerPREMED: TFMTBCDField
      FieldName = 'PREMED'
      Precision = 15
      Size = 6
    end
    object CadE075DerDATMED: TDateTimeField
      FieldName = 'DATMED'
    end
    object CadE075DerPREUEN: TFMTBCDField
      FieldName = 'PREUEN'
      Precision = 15
      Size = 6
    end
    object CadE075DerDATUEN: TDateTimeField
      FieldName = 'DATUEN'
    end
    object CadE075DerPREREP: TFMTBCDField
      FieldName = 'PREREP'
      Precision = 15
      Size = 6
    end
    object CadE075DerDATREP: TDateTimeField
      FieldName = 'DATREP'
    end
    object CadE075DerDIAREP: TIntegerField
      FieldName = 'DIAREP'
    end
    object CadE075DerPESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 11
      Size = 5
    end
    object CadE075DerPESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 11
      Size = 5
    end
    object CadE075DerTOLPES: TBCDField
      FieldName = 'TOLPES'
      Precision = 5
      Size = 3
    end
    object CadE075DerVOLDER: TFMTBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object CadE075DerPERPRD: TBCDField
      FieldName = 'PERPRD'
      Precision = 4
      Size = 2
    end
    object CadE075DerQTDIQL: TFMTBCDField
      FieldName = 'QTDIQL'
      Precision = 14
      Size = 5
    end
    object CadE075DerQTDCIC: TFMTBCDField
      FieldName = 'QTDCIC'
      Precision = 14
      Size = 5
    end
    object CadE075DerQTDPRD: TFMTBCDField
      FieldName = 'QTDPRD'
      Precision = 14
      Size = 5
    end
    object CadE075DerPREUIS: TFMTBCDField
      FieldName = 'PREUIS'
      Precision = 17
    end
    object CadE075DerPERICS: TBCDField
      FieldName = 'PERICS'
      Precision = 5
      Size = 2
    end
    object CadE075DerCODEMB: TIntegerField
      FieldName = 'CODEMB'
    end
    object CadE075DerCODROT: TStringField
      FieldName = 'CODROT'
      Size = 14
    end
    object CadE075DerCODROY: TIntegerField
      FieldName = 'CODROY'
    end
    object CadE075DerBXAORP: TStringField
      FieldName = 'BXAORP'
      Size = 1
    end
    object CadE075DerSERCCL: TStringField
      FieldName = 'SERCCL'
      Size = 3
    end
    object CadE075DerNUMCCL: TStringField
      FieldName = 'NUMCCL'
      Size = 12
    end
    object CadE075DerCURABC: TStringField
      FieldName = 'CURABC'
      Size = 1
    end
    object CadE075DerCURAB2: TStringField
      FieldName = 'CURAB2'
      Size = 1
    end
    object CadE075DerCURAB3: TStringField
      FieldName = 'CURAB3'
      Size = 1
    end
    object CadE075DerCURAB4: TStringField
      FieldName = 'CURAB4'
      Size = 1
    end
    object CadE075DerCODREG: TIntegerField
      FieldName = 'CODREG'
    end
    object CadE075DerSITDER: TStringField
      FieldName = 'SITDER'
      Size = 1
    end
    object CadE075DerCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object CadE075DerCTRLOT: TStringField
      FieldName = 'CTRLOT'
      Size = 1
    end
    object CadE075DerCTRSEP: TStringField
      FieldName = 'CTRSEP'
      Size = 1
    end
    object CadE075DerCTRVLD: TStringField
      FieldName = 'CTRVLD'
      Size = 1
    end
    object CadE075DerDEPPAD: TStringField
      FieldName = 'DEPPAD'
      Size = 10
    end
    object CadE075DerDEPPAA: TStringField
      FieldName = 'DEPPAA'
      Size = 10
    end
    object CadE075DerINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object CadE075DerINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object CadE075DerINDKAN: TStringField
      FieldName = 'INDKAN'
      Size = 1
    end
    object CadE075DerCODREF: TStringField
      FieldName = 'CODREF'
    end
    object CadE075DerCODPIN: TStringField
      FieldName = 'CODPIN'
    end
    object CadE075DerNOTFOR: TBCDField
      FieldName = 'NOTFOR'
      Precision = 5
      Size = 2
    end
    object CadE075DerORICUS: TStringField
      FieldName = 'ORICUS'
      Size = 1
    end
    object CadE075DerINFCUS: TStringField
      FieldName = 'INFCUS'
      Size = 1
    end
    object CadE075DerHORCUS: TIntegerField
      FieldName = 'HORCUS'
    end
    object CadE075DerUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object CadE075DerHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object CadE075DerDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object CadE075DerUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object CadE075DerHORALT: TIntegerField
      FieldName = 'HORALT'
    end
    object CadE075DerDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object CadE075DerCODAGE: TStringField
      FieldName = 'CODAGE'
      Size = 10
    end
    object CadE075DerCODBA2: TStringField
      FieldName = 'CODBA2'
      Size = 30
    end
    object CadE075DerINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object CadE075DerDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object CadE075DerHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object CadE075DerEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object CadE075DerSERMVP: TStringField
      FieldName = 'SERMVP'
      Size = 14
    end
    object CadE075DerAPRDFT: TStringField
      FieldName = 'APRDFT'
      Size = 1
    end
    object CadE075DerCODAEM: TStringField
      FieldName = 'CODAEM'
      Size = 10
    end
    object CadE075DerCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object CadE075DerINDGEN: TStringField
      FieldName = 'INDGEN'
      Size = 1
    end
    object CadE075DerQTDMLT: TFMTBCDField
      FieldName = 'QTDMLT'
      Precision = 12
      Size = 5
    end
    object CadE075DerQTDMIN: TFMTBCDField
      FieldName = 'QTDMIN'
      Precision = 12
      Size = 5
    end
    object CadE075DerQTDMAX: TFMTBCDField
      FieldName = 'QTDMAX'
      Precision = 12
      Size = 5
    end
    object CadE075DerCODEND: TStringField
      FieldName = 'CODEND'
      Size = 10
    end
    object CadE075DerROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object CadE075DerNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object CadE075DerINDPCQ: TStringField
      FieldName = 'INDPCQ'
      Size = 1
    end
    object CadE075DerVLRCID: TBCDField
      FieldName = 'VLRCID'
      Precision = 15
      Size = 2
    end
    object CadE075DerQTDCUS: TFMTBCDField
      FieldName = 'QTDCUS'
      Precision = 12
      Size = 5
    end
    object CadE075DerUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object CadE075DerUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object CadE075DerUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object CadE075DerUSU_CMP2BB: TBCDField
      FieldName = 'USU_CMP2BB'
      Precision = 8
      Size = 2
    end
    object CadE075DerUSU_CMP2EN: TBCDField
      FieldName = 'USU_CMP2EN'
      Precision = 8
      Size = 2
    end
    object CadE075DerUSU_MEDESP: TStringField
      FieldName = 'USU_MEDESP'
      Size = 1
    end
    object CadE075DerUSU_FATOR: TBCDField
      FieldName = 'USU_FATOR'
      Precision = 9
      Size = 3
    end
    object CadE075DerQTDEMB: TFMTBCDField
      FieldName = 'QTDEMB'
      Precision = 12
      Size = 5
    end
  end
  object ConsGeral: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <>
    Left = 64
    Top = 360
  end
  object CadUsu_TCanSal: TADOQuery
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
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numocp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tcansal where'
      '                          usu_codemp = :codemp and'
      '                          usu_codfil = :codfil and'
      '                          usu_numocp = :numocp and'
      '                          usu_seqipo = :seqipo')
    Left = 168
    Top = 360
    object CadUsu_TCanSalUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUsu_TCanSalUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadUsu_TCanSalUSU_NUMOCP: TIntegerField
      FieldName = 'USU_NUMOCP'
    end
    object CadUsu_TCanSalUSU_SEQIPO: TIntegerField
      FieldName = 'USU_SEQIPO'
    end
    object CadUsu_TCanSalUSU_DATCAN: TDateTimeField
      FieldName = 'USU_DATCAN'
    end
    object CadUsu_TCanSalUSU_SALCAN: TStringField
      FieldName = 'USU_SALCAN'
      Size = 1
    end
    object CadUsu_TCanSalUSU_USUCAN: TBCDField
      FieldName = 'USU_USUCAN'
      Precision = 10
      Size = 0
    end
    object CadUsu_TCanSalUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TCanSalUSU_QTDPED: TBCDField
      FieldName = 'USU_QTDPED'
      Precision = 11
      Size = 2
    end
    object CadUsu_TCanSalUSU_QTDREC: TBCDField
      FieldName = 'USU_QTDREC'
      Precision = 11
      Size = 2
    end
    object CadUsu_TCanSalUSU_QTDCAN: TBCDField
      FieldName = 'USU_QTDCAN'
      Precision = 11
      Size = 2
    end
  end
  object ConsDistintaProdutos: TADOQuery
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
      end>
    SQL.Strings = (
      
        'select distinct(e120ipd.codpro),e120ipd.codder,e075pro.despro,e0' +
        '75der.desder,e075der.volder,'
      'sum(e120ipd.qtdabe) as QtdAbe,'
      'sum(e120ipd.qtdped) as QtdPed,'
      'sum(e120ipd.qtdcan) as Qtdcan,'
      'sum(e120ipd.qtdfat) as Qtdfat'
      
        '                                           from e120ipd,e120ped,' +
        'e075pro,e075der'
      '                                           where'
      
        '                                           e120ped.codemp = e120' +
        'ipd.codemp and'
      
        '                                           e120ped.codfil = e120' +
        'ipd.codfil and'
      
        '                                           e120ped.numped = e120' +
        'ipd.numped and'
      
        '                                           e075pro.codemp = e120' +
        'ipd.codemp and'
      
        '                                           e075pro.codpro = e120' +
        'ipd.codpro and'
      
        '                                           e075der.codemp = e120' +
        'ipd.codemp and'
      
        '                                           e075der.codpro = e120' +
        'ipd.codpro and'
      
        '                                           e075der.codder = e120' +
        'ipd.codder and'
      
        '                                           e120ped.datemi betwee' +
        'n :datini and :datfim'
      
        '                                           group by e120ipd.codp' +
        'ro,e120ipd.codder,e075pro.despro,e075der.desder,e075der.volder')
    Left = 648
    Top = 288
    object ConsDistintaProdutosCODPRO: TStringField
      FieldName = 'CODPRO'
      ReadOnly = True
      Size = 14
    end
    object ConsDistintaProdutosCODDER: TStringField
      FieldName = 'CODDER'
      ReadOnly = True
      Size = 7
    end
    object ConsDistintaProdutosQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsDistintaProdutosQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsDistintaProdutosQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsDistintaProdutosQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsDistintaProdutosDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsDistintaProdutosDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
    object ConsDistintaProdutosVOLDER: TFMTBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object ConsDistintaProdutosvnVolDer: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vnVolDer'
      Calculated = True
    end
  end
  object CadUsu_TempTcp: TADOQuery
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
      'select * from usu_temptcp where usu_codpro = :codpro')
    Left = 640
    Top = 240
    object CadUsu_TempTcpUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TempTcpUSU_QTDCON: TBCDField
      FieldName = 'USU_QTDCON'
      Precision = 11
      Size = 2
    end
    object CadUsu_TempTcpUSU_SAL1001: TBCDField
      FieldName = 'USU_SAL1001'
      Precision = 11
      Size = 2
    end
    object CadUsu_TempTcpUSU_SAL1001_1: TBCDField
      FieldName = 'USU_SAL1001_1'
      Precision = 11
      Size = 2
    end
    object CadUsu_TempTcpUSU_SALFIM: TBCDField
      FieldName = 'USU_SALFIM'
      Precision = 11
      Size = 2
    end
  end
  object ConsUsu_TempTcp: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usu_temptcp'
      '               order by usu_codpro')
    Left = 640
    Top = 200
    object ConsUsu_TempTcpUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TempTcpUSU_QTDCON: TBCDField
      FieldName = 'USU_QTDCON'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TempTcpUSU_SAL1001: TBCDField
      FieldName = 'USU_SAL1001'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TempTcpUSU_SAL1001_1: TBCDField
      FieldName = 'USU_SAL1001_1'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TempTcpUSU_SALFIM: TBCDField
      FieldName = 'USU_SALFIM'
      Precision = 11
      Size = 2
    end
  end
  object ConsE120PedAdd: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
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
      'select e120ped.* from e120ped where codemp = 1 and'
      '                            codfil = :codfil and'
      '                            numped = :numped')
    Left = 668
    Top = 432
    object ConsE120PedAddCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120PedAddCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120PedAddNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120PedAddTIPPED: TIntegerField
      FieldName = 'TIPPED'
    end
    object ConsE120PedAddPRCPED: TIntegerField
      FieldName = 'PRCPED'
    end
    object ConsE120PedAddTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE120PedAddTNSSER: TStringField
      FieldName = 'TNSSER'
      Size = 5
    end
    object ConsE120PedAddDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE120PedAddHOREMI: TIntegerField
      FieldName = 'HOREMI'
    end
    object ConsE120PedAddDATPRV: TDateTimeField
      FieldName = 'DATPRV'
    end
    object ConsE120PedAddHORPRV: TIntegerField
      FieldName = 'HORPRV'
    end
    object ConsE120PedAddOBSPED: TStringField
      FieldName = 'OBSPED'
      Size = 999
    end
    object ConsE120PedAddCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE120PedAddCATCLI: TIntegerField
      FieldName = 'CATCLI'
    end
    object ConsE120PedAddQTDVPF: TIntegerField
      FieldName = 'QTDVPF'
    end
    object ConsE120PedAddQTDMFP: TIntegerField
      FieldName = 'QTDMFP'
    end
    object ConsE120PedAddINDAGR: TStringField
      FieldName = 'INDAGR'
      Size = 1
    end
    object ConsE120PedAddSEQENT: TIntegerField
      FieldName = 'SEQENT'
    end
    object ConsE120PedAddSEQCOB: TIntegerField
      FieldName = 'SEQCOB'
    end
    object ConsE120PedAddSEQCTO: TIntegerField
      FieldName = 'SEQCTO'
    end
    object ConsE120PedAddPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object ConsE120PedAddCODROE: TStringField
      FieldName = 'CODROE'
      Size = 3
    end
    object ConsE120PedAddSEQROE: TIntegerField
      FieldName = 'SEQROE'
    end
    object ConsE120PedAddCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE120PedAddCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ConsE120PedAddCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object ConsE120PedAddDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object ConsE120PedAddCOTMFP: TFMTBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object ConsE120PedAddDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ConsE120PedAddCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ConsE120PedAddFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ConsE120PedAddCODFCR: TStringField
      FieldName = 'CODFCR'
      Size = 3
    end
    object ConsE120PedAddDATFCR: TDateTimeField
      FieldName = 'DATFCR'
    end
    object ConsE120PedAddCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsE120PedAddPGTANT: TStringField
      FieldName = 'PGTANT'
      Size = 1
    end
    object ConsE120PedAddCODFPG: TIntegerField
      FieldName = 'CODFPG'
    end
    object ConsE120PedAddQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120PedAddQTDAEN: TFMTBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object ConsE120PedAddCODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object ConsE120PedAddCODRED: TIntegerField
      FieldName = 'CODRED'
    end
    object ConsE120PedAddCODVIA: TStringField
      FieldName = 'CODVIA'
      Size = 3
    end
    object ConsE120PedAddPLAVEI: TStringField
      FieldName = 'PLAVEI'
      Size = 10
    end
    object ConsE120PedAddVLRFUM: TBCDField
      FieldName = 'VLRFUM'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddQTDFRE: TFMTBCDField
      FieldName = 'QTDFRE'
      Precision = 14
      Size = 5
    end
    object ConsE120PedAddFORFRE: TIntegerField
      FieldName = 'FORFRE'
    end
    object ConsE120PedAddVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddCIFFOB: TStringField
      FieldName = 'CIFFOB'
      Size = 1
    end
    object ConsE120PedAddVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAddPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAddPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAddPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAddVLRBPR: TBCDField
      FieldName = 'VLRBPR'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRDPR: TBCDField
      FieldName = 'VLRDPR'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRBSE: TBCDField
      FieldName = 'VLRBSE'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRDSE: TBCDField
      FieldName = 'VLRDSE'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRSIC: TBCDField
      FieldName = 'VLRSIC'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRBIS: TBCDField
      FieldName = 'VLRBIS'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRBIN: TBCDField
      FieldName = 'VLRBIN'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRINS: TBCDField
      FieldName = 'VLRINS'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRLSE: TBCDField
      FieldName = 'VLRLSE'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRADT: TBCDField
      FieldName = 'VLRADT'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddQTDORI: TFMTBCDField
      FieldName = 'QTDORI'
      Precision = 14
      Size = 5
    end
    object ConsE120PedAddVLRORI: TBCDField
      FieldName = 'VLRORI'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddTEMPAR: TStringField
      FieldName = 'TEMPAR'
      Size = 1
    end
    object ConsE120PedAddCODPOR: TStringField
      FieldName = 'CODPOR'
      Size = 4
    end
    object ConsE120PedAddCODCRT: TStringField
      FieldName = 'CODCRT'
      Size = 2
    end
    object ConsE120PedAddSITPED: TIntegerField
      FieldName = 'SITPED'
    end
    object ConsE120PedAddCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE120PedAddOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsE120PedAddPEDBLO: TStringField
      FieldName = 'PEDBLO'
      Size = 1
    end
    object ConsE120PedAddUSUBLO: TBCDField
      FieldName = 'USUBLO'
      Precision = 10
      Size = 0
    end
    object ConsE120PedAddDATBLO: TDateTimeField
      FieldName = 'DATBLO'
    end
    object ConsE120PedAddHORBLO: TIntegerField
      FieldName = 'HORBLO'
    end
    object ConsE120PedAddINDSIG: TStringField
      FieldName = 'INDSIG'
      Size = 1
    end
    object ConsE120PedAddVERCAL: TIntegerField
      FieldName = 'VERCAL'
    end
    object ConsE120PedAddHORINI: TIntegerField
      FieldName = 'HORINI'
    end
    object ConsE120PedAddHORFIM: TIntegerField
      FieldName = 'HORFIM'
    end
    object ConsE120PedAddUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE120PedAddDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE120PedAddHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE120PedAddPERFRE: TBCDField
      FieldName = 'PERFRE'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAddPERSEG: TBCDField
      FieldName = 'PERSEG'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAddPEREMB: TBCDField
      FieldName = 'PEREMB'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAddPERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAddPEROUT: TBCDField
      FieldName = 'PEROUT'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAddCODSAC: TBCDField
      FieldName = 'CODSAC'
      Precision = 14
      Size = 0
    end
    object ConsE120PedAddCODOPE: TIntegerField
      FieldName = 'CODOPE'
    end
    object ConsE120PedAddCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object ConsE120PedAddPEDPAL: TIntegerField
      FieldName = 'PEDPAL'
    end
    object ConsE120PedAddACEPAR: TStringField
      FieldName = 'ACEPAR'
      Size = 1
    end
    object ConsE120PedAddPEROF1: TBCDField
      FieldName = 'PEROF1'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAddPEROF2: TBCDField
      FieldName = 'PEROF2'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAddUSUFEC: TBCDField
      FieldName = 'USUFEC'
      Precision = 10
      Size = 0
    end
    object ConsE120PedAddDATFEC: TDateTimeField
      FieldName = 'DATFEC'
    end
    object ConsE120PedAddHORFEC: TIntegerField
      FieldName = 'HORFEC'
    end
    object ConsE120PedAddCLIREL: TIntegerField
      FieldName = 'CLIREL'
    end
    object ConsE120PedAddVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ConsE120PedAddCODSRO: TStringField
      FieldName = 'CODSRO'
      Size = 3
    end
    object ConsE120PedAddFILFAT: TIntegerField
      FieldName = 'FILFAT'
    end
    object ConsE120PedAddCODCDI: TIntegerField
      FieldName = 'CODCDI'
    end
    object ConsE120PedAddCODLIP: TStringField
      FieldName = 'CODLIP'
      Size = 5
    end
    object ConsE120PedAddCEPFRE: TIntegerField
      FieldName = 'CEPFRE'
    end
    object ConsE120PedAddVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddANAEMB: TStringField
      FieldName = 'ANAEMB'
      Size = 1
    end
    object ConsE120PedAddNUMEMP: TStringField
      FieldName = 'NUMEMP'
    end
    object ConsE120PedAddQTDANE: TIntegerField
      FieldName = 'QTDANE'
    end
    object ConsE120PedAddDATAGE: TDateTimeField
      FieldName = 'DATAGE'
    end
    object ConsE120PedAddFILNCO: TIntegerField
      FieldName = 'FILNCO'
    end
    object ConsE120PedAddSNFNCO: TStringField
      FieldName = 'SNFNCO'
      Size = 3
    end
    object ConsE120PedAddNUMNCO: TIntegerField
      FieldName = 'NUMNCO'
    end
    object ConsE120PedAddEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object ConsE120PedAddVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddCODAPC: TIntegerField
      FieldName = 'CODAPC'
    end
    object ConsE120PedAddSOMFRE: TStringField
      FieldName = 'SOMFRE'
      Size = 1
    end
    object ConsE120PedAddQTDITP: TIntegerField
      FieldName = 'QTDITP'
    end
    object ConsE120PedAddQTDITS: TIntegerField
      FieldName = 'QTDITS'
    end
    object ConsE120PedAddPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAddVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAddROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object ConsE120PedAddNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object ConsE120PedAddNUMNSU: TBCDField
      FieldName = 'NUMNSU'
      Precision = 10
      Size = 0
    end
    object ConsE120PedAddDATNSU: TDateTimeField
      FieldName = 'DATNSU'
    end
    object ConsE120PedAddHORNSU: TIntegerField
      FieldName = 'HORNSU'
    end
    object ConsE120PedAddINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsE120PedAddFATPED: TIntegerField
      FieldName = 'FATPED'
    end
    object ConsE120PedAddUSU_FILDIV: TIntegerField
      FieldName = 'USU_FILDIV'
    end
    object ConsE120PedAddUSU_PEDDIV: TIntegerField
      FieldName = 'USU_PEDDIV'
    end
    object ConsE120PedAddUSU_USUDIV: TBCDField
      FieldName = 'USU_USUDIV'
      Precision = 10
      Size = 0
    end
    object ConsE120PedAddUSU_DATDIV: TDateTimeField
      FieldName = 'USU_DATDIV'
    end
    object ConsE120PedAddUSU_HORDIV: TIntegerField
      FieldName = 'USU_HORDIV'
    end
    object ConsE120PedAddUSU_PEDTRA: TStringField
      FieldName = 'USU_PEDTRA'
      Size = 1
    end
    object ConsE120PedAddUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsE120PedAddUSU_USUDES: TBCDField
      FieldName = 'USU_USUDES'
      Precision = 10
      Size = 0
    end
    object ConsE120PedAddUSU_DATDES: TDateTimeField
      FieldName = 'USU_DATDES'
    end
    object ConsE120PedAddUSU_HORDES: TIntegerField
      FieldName = 'USU_HORDES'
    end
  end
  object ConsE120IpdAdd: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
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
      'select e120ipd.*,e075pro.despro,e075der.desder from e120ipd'
      'inner join e075pro on e075pro.codemp = e120ipd.codemp and'
      '                      e075pro.codpro = e120ipd.codpro'
      'inner join e075der on e075der.codemp = e120ipd.codemp and'
      '                      e075der.codpro = e120ipd.codpro and'
      '                      e075der.codder = e120ipd.codder'
      '                      where'
      '                      e120ipd.codemp = 1 and'
      '                      e120ipd.codfil = :codfil and'
      '                      e120ipd.numped = :numped'
      'order by e120ipd.seqipd')
    Left = 576
    Top = 432
    object ConsE120IpdAddCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120IpdAddCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120IpdAddNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120IpdAddSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsE120IpdAddTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE120IpdAddPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object ConsE120IpdAddSEQPCL: TStringField
      FieldName = 'SEQPCL'
      Size = 10
    end
    object ConsE120IpdAddPEDPRV: TStringField
      FieldName = 'PEDPRV'
      Size = 1
    end
    object ConsE120IpdAddCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE120IpdAddCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE120IpdAddCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object ConsE120IpdAddCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE120IpdAddCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ConsE120IpdAddCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ConsE120IpdAddCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ConsE120IpdAddCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ConsE120IpdAddCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ConsE120IpdAddCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ConsE120IpdAddCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE120IpdAddCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object ConsE120IpdAddRESEST: TStringField
      FieldName = 'RESEST'
      Size = 1
    end
    object ConsE120IpdAddQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddQTDAEN: TFMTBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddQTDPOC: TFMTBCDField
      FieldName = 'QTDPOC'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddQTDRAE: TFMTBCDField
      FieldName = 'QTDRAE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddQTDNLP: TFMTBCDField
      FieldName = 'QTDNLP'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddQTDRES: TFMTBCDField
      FieldName = 'QTDRES'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE120IpdAddCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object ConsE120IpdAddDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object ConsE120IpdAddCOTMFP: TFMTBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object ConsE120IpdAddDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ConsE120IpdAddCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ConsE120IpdAddFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ConsE120IpdAddCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE120IpdAddPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ConsE120IpdAddPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object ConsE120IpdAddPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddPEROFE: TBCDField
      FieldName = 'PEROFE'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddPERACR: TBCDField
      FieldName = 'PERACR'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ConsE120IpdAddDATANE: TDateTimeField
      FieldName = 'DATANE'
    end
    object ConsE120IpdAddDATPOC: TDateTimeField
      FieldName = 'DATPOC'
    end
    object ConsE120IpdAddCODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object ConsE120IpdAddNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object ConsE120IpdAddCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object ConsE120IpdAddCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ConsE120IpdAddCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConsE120IpdAddCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ConsE120IpdAddVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddSITIPD: TIntegerField
      FieldName = 'SITIPD'
    end
    object ConsE120IpdAddCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE120IpdAddOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsE120IpdAddGERNEC: TIntegerField
      FieldName = 'GERNEC'
    end
    object ConsE120IpdAddGERCGA: TStringField
      FieldName = 'GERCGA'
      Size = 1
    end
    object ConsE120IpdAddRESMAN: TStringField
      FieldName = 'RESMAN'
      Size = 1
    end
    object ConsE120IpdAddINDAED: TStringField
      FieldName = 'INDAED'
      Size = 1
    end
    object ConsE120IpdAddNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object ConsE120IpdAddDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object ConsE120IpdAddSEQCVP: TIntegerField
      FieldName = 'SEQCVP'
    end
    object ConsE120IpdAddUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdAddDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE120IpdAddHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE120IpdAddQTDPPF: TFMTBCDField
      FieldName = 'QTDPPF'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddCMPKIT: TStringField
      FieldName = 'CMPKIT'
      Size = 1
    end
    object ConsE120IpdAddFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object ConsE120IpdAddNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsE120IpdAddSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object ConsE120IpdAddUNIVEN: TStringField
      FieldName = 'UNIVEN'
      Size = 3
    end
    object ConsE120IpdAddQTDVEN: TFMTBCDField
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddPREVEN: TFMTBCDField
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddPREBRU: TFMTBCDField
      FieldName = 'PREBRU'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object ConsE120IpdAddCTRCVS: TIntegerField
      FieldName = 'CTRCVS'
    end
    object ConsE120IpdAddCPTCVS: TDateTimeField
      FieldName = 'CPTCVS'
    end
    object ConsE120IpdAddSEQCVS: TIntegerField
      FieldName = 'SEQCVS'
    end
    object ConsE120IpdAddCODAVC: TIntegerField
      FieldName = 'CODAVC'
    end
    object ConsE120IpdAddCODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object ConsE120IpdAddCODPGR: TStringField
      FieldName = 'CODPGR'
      Size = 5
    end
    object ConsE120IpdAddIDXGRD: TIntegerField
      FieldName = 'IDXGRD'
    end
    object ConsE120IpdAddCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ConsE120IpdAddCODCLC: TStringField
      FieldName = 'CODCLC'
      Size = 10
    end
    object ConsE120IpdAddPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddFILPRD: TIntegerField
      FieldName = 'FILPRD'
    end
    object ConsE120IpdAddVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ConsE120IpdAddINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ConsE120IpdAddPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdAddVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdAddVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdAddVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdAddVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdAddVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object ConsE120IpdAddFORNFC: TIntegerField
      FieldName = 'FORNFC'
    end
    object ConsE120IpdAddNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsE120IpdAddSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object ConsE120IpdAddSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ConsE120IpdAddNCTLCL: TStringField
      FieldName = 'NCTLCL'
    end
    object ConsE120IpdAddNRECLI: TStringField
      FieldName = 'NRECLI'
    end
    object ConsE120IpdAddNOSICL: TBCDField
      FieldName = 'NOSICL'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdAddNOSFCL: TBCDField
      FieldName = 'NOSFCL'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdAddNOCCL1: TStringField
      FieldName = 'NOCCL1'
    end
    object ConsE120IpdAddNOCCL2: TStringField
      FieldName = 'NOCCL2'
    end
    object ConsE120IpdAddNOCCL3: TStringField
      FieldName = 'NOCCL3'
    end
    object ConsE120IpdAddCODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
    object ConsE120IpdAddCTRCVP: TIntegerField
      FieldName = 'CTRCVP'
    end
    object ConsE120IpdAddCPTCVP: TDateTimeField
      FieldName = 'CPTCVP'
    end
    object ConsE120IpdAddSEQCTR: TIntegerField
      FieldName = 'SEQCTR'
    end
    object ConsE120IpdAddINDAPE: TIntegerField
      FieldName = 'INDAPE'
    end
    object ConsE120IpdAddOBSIPD: TStringField
      FieldName = 'OBSIPD'
      Size = 999
    end
    object ConsE120IpdAddSEQISP: TIntegerField
      FieldName = 'SEQISP'
    end
    object ConsE120IpdAddEMPOCP: TIntegerField
      FieldName = 'EMPOCP'
    end
    object ConsE120IpdAddVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAddAGRNEC: TStringField
      FieldName = 'AGRNEC'
      Size = 25
    end
    object ConsE120IpdAddAGRPAI: TStringField
      FieldName = 'AGRPAI'
      Size = 25
    end
    object ConsE120IpdAddORIRES: TStringField
      FieldName = 'ORIRES'
      Size = 1
    end
    object ConsE120IpdAddUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsE120IpdAddUSU_CODTEC1: TStringField
      FieldName = 'USU_CODTEC1'
      Size = 14
    end
    object ConsE120IpdAddUSU_CODTEC2: TStringField
      FieldName = 'USU_CODTEC2'
      Size = 14
    end
    object ConsE120IpdAddUSU_QTDREP: TIntegerField
      FieldName = 'USU_QTDREP'
    end
    object ConsE120IpdAddUSU_QTDDIV: TBCDField
      FieldName = 'USU_QTDDIV'
      Precision = 11
      Size = 2
    end
    object ConsE120IpdAddUSU_MEDLAR: TBCDField
      FieldName = 'USU_MEDLAR'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdAddUSU_MEDCOM: TBCDField
      FieldName = 'USU_MEDCOM'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdAddUSU_MEDALT: TBCDField
      FieldName = 'USU_MEDALT'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdAddUSU_PERDESC1: TBCDField
      FieldName = 'USU_PERDESC1'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddUSU_PERDESC2: TBCDField
      FieldName = 'USU_PERDESC2'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddUSU_PERDESC3: TBCDField
      FieldName = 'USU_PERDESC3'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddUSU_PERDESC4: TBCDField
      FieldName = 'USU_PERDESC4'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddUSU_PERDESC5: TBCDField
      FieldName = 'USU_PERDESC5'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddUSU_PERDESC6: TBCDField
      FieldName = 'USU_PERDESC6'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddUSU_CANAPR: TFMTBCDField
      FieldName = 'USU_CANAPR'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAddUSU_TOTDSC: TBCDField
      FieldName = 'USU_TOTDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddUSU_TOTDSCORI: TBCDField
      FieldName = 'USU_TOTDSCORI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAddUSU_VLRORI: TBCDField
      FieldName = 'USU_VLRORI'
      Precision = 14
      Size = 2
    end
    object ConsE120IpdAddDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsE120IpdAddDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
  end
  object ConsUsu_T120IpdAdd: TADOQuery
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
      'select * from usu_t120ipd where'
      '                         usu_codemp = :codemp and'
      '                         usu_codfil = :codfil and'
      '                         usu_numped = :numped and'
      '                         usu_seqipd = :seqipd')
    Left = 576
    Top = 384
    object ConsUsu_T120IpdAddUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_T120IpdAddUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUsu_T120IpdAddUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsUsu_T120IpdAddUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsUsu_T120IpdAddUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object ConsUsu_T120IpdAddUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsUsu_T120IpdAddUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ConsUsu_T120IpdAddUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ConsUsu_T120IpdAddUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ConsUsu_T120IpdAddUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_T120IpdAddUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_T120IpdAddUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object ConsUsu_T120IpdAddUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_T120IpdAddUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object ConsUsu_T120IpdAddUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsUsu_T120IpdAddUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
  end
  object ConsE120PedA: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
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
      'select e120ped.* from e120ped where codemp = 1 and'
      '                            codfil = :codfil and'
      '                            numped = :numped and'
      
        '                            (tnspro = '#39'90110'#39' or tnspro = '#39'90111' +
        #39' or tnspro = '#39'90121'#39') ')
    Left = 344
    Top = 416
    object ConsE120PedACODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120PedACODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120PedANUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120PedATIPPED: TIntegerField
      FieldName = 'TIPPED'
    end
    object ConsE120PedAPRCPED: TIntegerField
      FieldName = 'PRCPED'
    end
    object ConsE120PedATNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE120PedATNSSER: TStringField
      FieldName = 'TNSSER'
      Size = 5
    end
    object ConsE120PedADATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE120PedAHOREMI: TIntegerField
      FieldName = 'HOREMI'
    end
    object ConsE120PedADATPRV: TDateTimeField
      FieldName = 'DATPRV'
    end
    object ConsE120PedAHORPRV: TIntegerField
      FieldName = 'HORPRV'
    end
    object ConsE120PedAOBSPED: TStringField
      FieldName = 'OBSPED'
      Size = 999
    end
    object ConsE120PedACODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE120PedACATCLI: TIntegerField
      FieldName = 'CATCLI'
    end
    object ConsE120PedAQTDVPF: TIntegerField
      FieldName = 'QTDVPF'
    end
    object ConsE120PedAQTDMFP: TIntegerField
      FieldName = 'QTDMFP'
    end
    object ConsE120PedAINDAGR: TStringField
      FieldName = 'INDAGR'
      Size = 1
    end
    object ConsE120PedASEQENT: TIntegerField
      FieldName = 'SEQENT'
    end
    object ConsE120PedASEQCOB: TIntegerField
      FieldName = 'SEQCOB'
    end
    object ConsE120PedASEQCTO: TIntegerField
      FieldName = 'SEQCTO'
    end
    object ConsE120PedAPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object ConsE120PedACODROE: TStringField
      FieldName = 'CODROE'
      Size = 3
    end
    object ConsE120PedASEQROE: TIntegerField
      FieldName = 'SEQROE'
    end
    object ConsE120PedACODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE120PedACODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ConsE120PedACODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object ConsE120PedADATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object ConsE120PedACOTMFP: TFMTBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object ConsE120PedADATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ConsE120PedACOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ConsE120PedAFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ConsE120PedACODFCR: TStringField
      FieldName = 'CODFCR'
      Size = 3
    end
    object ConsE120PedADATFCR: TDateTimeField
      FieldName = 'DATFCR'
    end
    object ConsE120PedACODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsE120PedAPGTANT: TStringField
      FieldName = 'PGTANT'
      Size = 1
    end
    object ConsE120PedACODFPG: TIntegerField
      FieldName = 'CODFPG'
    end
    object ConsE120PedAQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120PedAQTDAEN: TFMTBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object ConsE120PedACODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object ConsE120PedACODRED: TIntegerField
      FieldName = 'CODRED'
    end
    object ConsE120PedACODVIA: TStringField
      FieldName = 'CODVIA'
      Size = 3
    end
    object ConsE120PedAPLAVEI: TStringField
      FieldName = 'PLAVEI'
      Size = 10
    end
    object ConsE120PedAVLRFUM: TBCDField
      FieldName = 'VLRFUM'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAQTDFRE: TFMTBCDField
      FieldName = 'QTDFRE'
      Precision = 14
      Size = 5
    end
    object ConsE120PedAFORFRE: TIntegerField
      FieldName = 'FORFRE'
    end
    object ConsE120PedAVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE120PedACIFFOB: TStringField
      FieldName = 'CIFFOB'
      Size = 1
    end
    object ConsE120PedAVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAVLRBPR: TBCDField
      FieldName = 'VLRBPR'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRDPR: TBCDField
      FieldName = 'VLRDPR'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRBSE: TBCDField
      FieldName = 'VLRBSE'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRDSE: TBCDField
      FieldName = 'VLRDSE'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRSIC: TBCDField
      FieldName = 'VLRSIC'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRBIS: TBCDField
      FieldName = 'VLRBIS'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRBIN: TBCDField
      FieldName = 'VLRBIN'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRINS: TBCDField
      FieldName = 'VLRINS'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRLSE: TBCDField
      FieldName = 'VLRLSE'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRADT: TBCDField
      FieldName = 'VLRADT'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAQTDORI: TFMTBCDField
      FieldName = 'QTDORI'
      Precision = 14
      Size = 5
    end
    object ConsE120PedAVLRORI: TBCDField
      FieldName = 'VLRORI'
      Precision = 15
      Size = 2
    end
    object ConsE120PedATEMPAR: TStringField
      FieldName = 'TEMPAR'
      Size = 1
    end
    object ConsE120PedACODPOR: TStringField
      FieldName = 'CODPOR'
      Size = 4
    end
    object ConsE120PedACODCRT: TStringField
      FieldName = 'CODCRT'
      Size = 2
    end
    object ConsE120PedASITPED: TIntegerField
      FieldName = 'SITPED'
    end
    object ConsE120PedACODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE120PedAOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsE120PedAPEDBLO: TStringField
      FieldName = 'PEDBLO'
      Size = 1
    end
    object ConsE120PedAUSUBLO: TBCDField
      FieldName = 'USUBLO'
      Precision = 10
      Size = 0
    end
    object ConsE120PedADATBLO: TDateTimeField
      FieldName = 'DATBLO'
    end
    object ConsE120PedAHORBLO: TIntegerField
      FieldName = 'HORBLO'
    end
    object ConsE120PedAINDSIG: TStringField
      FieldName = 'INDSIG'
      Size = 1
    end
    object ConsE120PedAVERCAL: TIntegerField
      FieldName = 'VERCAL'
    end
    object ConsE120PedAHORINI: TIntegerField
      FieldName = 'HORINI'
    end
    object ConsE120PedAHORFIM: TIntegerField
      FieldName = 'HORFIM'
    end
    object ConsE120PedAUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE120PedADATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE120PedAHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE120PedAPERFRE: TBCDField
      FieldName = 'PERFRE'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAPERSEG: TBCDField
      FieldName = 'PERSEG'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAPEREMB: TBCDField
      FieldName = 'PEREMB'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAPERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAPEROUT: TBCDField
      FieldName = 'PEROUT'
      Precision = 5
      Size = 2
    end
    object ConsE120PedACODSAC: TBCDField
      FieldName = 'CODSAC'
      Precision = 14
      Size = 0
    end
    object ConsE120PedACODOPE: TIntegerField
      FieldName = 'CODOPE'
    end
    object ConsE120PedACODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object ConsE120PedAPEDPAL: TIntegerField
      FieldName = 'PEDPAL'
    end
    object ConsE120PedAACEPAR: TStringField
      FieldName = 'ACEPAR'
      Size = 1
    end
    object ConsE120PedAPEROF1: TBCDField
      FieldName = 'PEROF1'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAPEROF2: TBCDField
      FieldName = 'PEROF2'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAUSUFEC: TBCDField
      FieldName = 'USUFEC'
      Precision = 10
      Size = 0
    end
    object ConsE120PedADATFEC: TDateTimeField
      FieldName = 'DATFEC'
    end
    object ConsE120PedAHORFEC: TIntegerField
      FieldName = 'HORFEC'
    end
    object ConsE120PedACLIREL: TIntegerField
      FieldName = 'CLIREL'
    end
    object ConsE120PedAVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE120PedACODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ConsE120PedACODSRO: TStringField
      FieldName = 'CODSRO'
      Size = 3
    end
    object ConsE120PedAFILFAT: TIntegerField
      FieldName = 'FILFAT'
    end
    object ConsE120PedACODCDI: TIntegerField
      FieldName = 'CODCDI'
    end
    object ConsE120PedACODLIP: TStringField
      FieldName = 'CODLIP'
      Size = 5
    end
    object ConsE120PedACEPFRE: TIntegerField
      FieldName = 'CEPFRE'
    end
    object ConsE120PedAVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAANAEMB: TStringField
      FieldName = 'ANAEMB'
      Size = 1
    end
    object ConsE120PedANUMEMP: TStringField
      FieldName = 'NUMEMP'
    end
    object ConsE120PedAQTDANE: TIntegerField
      FieldName = 'QTDANE'
    end
    object ConsE120PedADATAGE: TDateTimeField
      FieldName = 'DATAGE'
    end
    object ConsE120PedAFILNCO: TIntegerField
      FieldName = 'FILNCO'
    end
    object ConsE120PedASNFNCO: TStringField
      FieldName = 'SNFNCO'
      Size = 3
    end
    object ConsE120PedANUMNCO: TIntegerField
      FieldName = 'NUMNCO'
    end
    object ConsE120PedAEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object ConsE120PedAVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ConsE120PedACODAPC: TIntegerField
      FieldName = 'CODAPC'
    end
    object ConsE120PedASOMFRE: TStringField
      FieldName = 'SOMFRE'
      Size = 1
    end
    object ConsE120PedAQTDITP: TIntegerField
      FieldName = 'QTDITP'
    end
    object ConsE120PedAQTDITS: TIntegerField
      FieldName = 'QTDITS'
    end
    object ConsE120PedAPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConsE120PedAVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ConsE120PedAROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object ConsE120PedANUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object ConsE120PedANUMNSU: TBCDField
      FieldName = 'NUMNSU'
      Precision = 10
      Size = 0
    end
    object ConsE120PedADATNSU: TDateTimeField
      FieldName = 'DATNSU'
    end
    object ConsE120PedAHORNSU: TIntegerField
      FieldName = 'HORNSU'
    end
    object ConsE120PedAINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsE120PedAFATPED: TIntegerField
      FieldName = 'FATPED'
    end
    object ConsE120PedAQTDBPF: TBCDField
      FieldName = 'QTDBPF'
      Precision = 15
      Size = 3
    end
    object ConsE120PedAQTDBCF: TBCDField
      FieldName = 'QTDBCF'
      Precision = 15
      Size = 3
    end
    object ConsE120PedAQTDBIP: TBCDField
      FieldName = 'QTDBIP'
      Precision = 15
      Size = 3
    end
    object ConsE120PedAUSU_FILDIV: TIntegerField
      FieldName = 'USU_FILDIV'
    end
    object ConsE120PedAUSU_PEDDIV: TIntegerField
      FieldName = 'USU_PEDDIV'
    end
    object ConsE120PedAUSU_USUDIV: TBCDField
      FieldName = 'USU_USUDIV'
      Precision = 10
      Size = 0
    end
    object ConsE120PedAUSU_DATDIV: TDateTimeField
      FieldName = 'USU_DATDIV'
    end
    object ConsE120PedAUSU_HORDIV: TIntegerField
      FieldName = 'USU_HORDIV'
    end
    object ConsE120PedAUSU_PEDTRA: TStringField
      FieldName = 'USU_PEDTRA'
      Size = 1
    end
    object ConsE120PedAUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsE120PedAUSU_USUDES: TBCDField
      FieldName = 'USU_USUDES'
      Precision = 10
      Size = 0
    end
    object ConsE120PedAUSU_DATDES: TDateTimeField
      FieldName = 'USU_DATDES'
    end
    object ConsE120PedAUSU_HORDES: TIntegerField
      FieldName = 'USU_HORDES'
    end
    object ConsE120PedAUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
  end
  object ConsE120IpdA: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsE120IpdAAfterScroll
    Parameters = <
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
      'select e120ipd.*,e075pro.despro,e075der.desder from e120ipd'
      'inner join e075pro on e075pro.codemp = e120ipd.codemp and'
      '                      e075pro.codpro = e120ipd.codpro'
      'inner join e075der on e075der.codemp = e120ipd.codemp and'
      '                      e075der.codpro = e120ipd.codpro and'
      '                      e075der.codder = e120ipd.codder'
      '                      where'
      '                      e120ipd.codemp = 1 and'
      '                      e120ipd.codfil = :codfil and'
      '                      e120ipd.numped = :numped and'
      
        '                      (e120ipd.tnspro = '#39'90110'#39' or e120ipd.tnspr' +
        'o = '#39'90111'#39' or e120ipd.tnspro = '#39'90121'#39')'
      'order by e120ipd.seqipd')
    Left = 432
    Top = 416
    object ConsE120IpdACODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120IpdACODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120IpdANUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120IpdASEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsE120IpdATNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE120IpdAPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object ConsE120IpdASEQPCL: TStringField
      FieldName = 'SEQPCL'
      Size = 10
    end
    object ConsE120IpdAPEDPRV: TStringField
      FieldName = 'PEDPRV'
      Size = 1
    end
    object ConsE120IpdACODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE120IpdACODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE120IpdACPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object ConsE120IpdACODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE120IpdACODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ConsE120IpdACODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ConsE120IpdACODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ConsE120IpdACODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ConsE120IpdACODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ConsE120IpdACODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ConsE120IpdACODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE120IpdACODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object ConsE120IpdARESEST: TStringField
      FieldName = 'RESEST'
      Size = 1
    end
    object ConsE120IpdAQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAQTDAEN: TFMTBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAQTDPOC: TFMTBCDField
      FieldName = 'QTDPOC'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAQTDRAE: TFMTBCDField
      FieldName = 'QTDRAE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAQTDNLP: TFMTBCDField
      FieldName = 'QTDNLP'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAQTDRES: TFMTBCDField
      FieldName = 'QTDRES'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE120IpdACODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object ConsE120IpdADATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object ConsE120IpdACOTMFP: TFMTBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object ConsE120IpdADATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ConsE120IpdACOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ConsE120IpdAFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ConsE120IpdACODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE120IpdAPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdACODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ConsE120IpdAPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object ConsE120IpdAPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAPEROFE: TBCDField
      FieldName = 'PEROFE'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAPERACR: TBCDField
      FieldName = 'PERACR'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdADATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ConsE120IpdADATANE: TDateTimeField
      FieldName = 'DATANE'
    end
    object ConsE120IpdADATPOC: TDateTimeField
      FieldName = 'DATPOC'
    end
    object ConsE120IpdACODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object ConsE120IpdANUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object ConsE120IpdACODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object ConsE120IpdACTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ConsE120IpdACTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConsE120IpdACODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ConsE120IpdAVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdASITIPD: TIntegerField
      FieldName = 'SITIPD'
    end
    object ConsE120IpdACODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE120IpdAOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsE120IpdAGERNEC: TIntegerField
      FieldName = 'GERNEC'
    end
    object ConsE120IpdAGERCGA: TStringField
      FieldName = 'GERCGA'
      Size = 1
    end
    object ConsE120IpdARESMAN: TStringField
      FieldName = 'RESMAN'
      Size = 1
    end
    object ConsE120IpdAINDAED: TStringField
      FieldName = 'INDAED'
      Size = 1
    end
    object ConsE120IpdANUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object ConsE120IpdADATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object ConsE120IpdASEQCVP: TIntegerField
      FieldName = 'SEQCVP'
    end
    object ConsE120IpdAUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdADATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE120IpdAHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE120IpdAQTDPPF: TFMTBCDField
      FieldName = 'QTDPPF'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdACMPKIT: TStringField
      FieldName = 'CMPKIT'
      Size = 1
    end
    object ConsE120IpdAFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object ConsE120IpdANUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsE120IpdASEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object ConsE120IpdAUNIVEN: TStringField
      FieldName = 'UNIVEN'
      Size = 3
    end
    object ConsE120IpdAQTDVEN: TFMTBCDField
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAPREVEN: TFMTBCDField
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAPREBRU: TFMTBCDField
      FieldName = 'PREBRU'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object ConsE120IpdACTRCVS: TIntegerField
      FieldName = 'CTRCVS'
    end
    object ConsE120IpdACPTCVS: TDateTimeField
      FieldName = 'CPTCVS'
    end
    object ConsE120IpdASEQCVS: TIntegerField
      FieldName = 'SEQCVS'
    end
    object ConsE120IpdACODAVC: TIntegerField
      FieldName = 'CODAVC'
    end
    object ConsE120IpdACODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object ConsE120IpdACODPGR: TStringField
      FieldName = 'CODPGR'
      Size = 5
    end
    object ConsE120IpdAIDXGRD: TIntegerField
      FieldName = 'IDXGRD'
    end
    object ConsE120IpdACODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ConsE120IpdACODCLC: TStringField
      FieldName = 'CODCLC'
      Size = 10
    end
    object ConsE120IpdAPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAFILPRD: TIntegerField
      FieldName = 'FILPRD'
    end
    object ConsE120IpdAVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ConsE120IpdAINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ConsE120IpdAPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdAVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdAVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdAVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdAVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdAVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object ConsE120IpdAFORNFC: TIntegerField
      FieldName = 'FORNFC'
    end
    object ConsE120IpdANUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsE120IpdASNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object ConsE120IpdASEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ConsE120IpdANCTLCL: TStringField
      FieldName = 'NCTLCL'
    end
    object ConsE120IpdANRECLI: TStringField
      FieldName = 'NRECLI'
    end
    object ConsE120IpdANOSICL: TBCDField
      FieldName = 'NOSICL'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdANOSFCL: TBCDField
      FieldName = 'NOSFCL'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdANOCCL1: TStringField
      FieldName = 'NOCCL1'
    end
    object ConsE120IpdANOCCL2: TStringField
      FieldName = 'NOCCL2'
    end
    object ConsE120IpdANOCCL3: TStringField
      FieldName = 'NOCCL3'
    end
    object ConsE120IpdACODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
    object ConsE120IpdACTRCVP: TIntegerField
      FieldName = 'CTRCVP'
    end
    object ConsE120IpdACPTCVP: TDateTimeField
      FieldName = 'CPTCVP'
    end
    object ConsE120IpdASEQCTR: TIntegerField
      FieldName = 'SEQCTR'
    end
    object ConsE120IpdAINDAPE: TIntegerField
      FieldName = 'INDAPE'
    end
    object ConsE120IpdAOBSIPD: TStringField
      FieldName = 'OBSIPD'
      Size = 999
    end
    object ConsE120IpdASEQISP: TIntegerField
      FieldName = 'SEQISP'
    end
    object ConsE120IpdAEMPOCP: TIntegerField
      FieldName = 'EMPOCP'
    end
    object ConsE120IpdAVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 7
    end
    object ConsE120IpdAVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 7
    end
    object ConsE120IpdAVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAAGRNEC: TStringField
      FieldName = 'AGRNEC'
      Size = 25
    end
    object ConsE120IpdAAGRPAI: TStringField
      FieldName = 'AGRPAI'
      Size = 25
    end
    object ConsE120IpdAORIRES: TStringField
      FieldName = 'ORIRES'
      Size = 1
    end
    object ConsE120IpdAQTDBPF: TBCDField
      FieldName = 'QTDBPF'
      Precision = 15
      Size = 3
    end
    object ConsE120IpdAALIPIF: TBCDField
      FieldName = 'ALIPIF'
      Precision = 15
    end
    object ConsE120IpdAQTDBCF: TBCDField
      FieldName = 'QTDBCF'
      Precision = 15
      Size = 3
    end
    object ConsE120IpdAALICFF: TBCDField
      FieldName = 'ALICFF'
      Precision = 15
    end
    object ConsE120IpdAQTDBIP: TBCDField
      FieldName = 'QTDBIP'
      Precision = 15
      Size = 3
    end
    object ConsE120IpdAALIIPI: TBCDField
      FieldName = 'ALIIPI'
      Precision = 15
    end
    object ConsE120IpdAUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsE120IpdAUSU_CODTEC1: TStringField
      FieldName = 'USU_CODTEC1'
      Size = 14
    end
    object ConsE120IpdAUSU_CODTEC2: TStringField
      FieldName = 'USU_CODTEC2'
      Size = 14
    end
    object ConsE120IpdAUSU_QTDREP: TIntegerField
      FieldName = 'USU_QTDREP'
    end
    object ConsE120IpdAUSU_QTDDIV: TBCDField
      FieldName = 'USU_QTDDIV'
      Precision = 11
      Size = 2
    end
    object ConsE120IpdAUSU_MEDLAR: TBCDField
      FieldName = 'USU_MEDLAR'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdAUSU_MEDCOM: TBCDField
      FieldName = 'USU_MEDCOM'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdAUSU_MEDALT: TBCDField
      FieldName = 'USU_MEDALT'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdAUSU_PERDESC1: TBCDField
      FieldName = 'USU_PERDESC1'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAUSU_PERDESC2: TBCDField
      FieldName = 'USU_PERDESC2'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAUSU_PERDESC3: TBCDField
      FieldName = 'USU_PERDESC3'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAUSU_PERDESC4: TBCDField
      FieldName = 'USU_PERDESC4'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAUSU_PERDESC5: TBCDField
      FieldName = 'USU_PERDESC5'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAUSU_PERDESC6: TBCDField
      FieldName = 'USU_PERDESC6'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAUSU_CANAPR: TFMTBCDField
      FieldName = 'USU_CANAPR'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdAUSU_TOTDSC: TBCDField
      FieldName = 'USU_TOTDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAUSU_TOTDSCORI: TBCDField
      FieldName = 'USU_TOTDSCORI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdAUSU_VLRORI: TBCDField
      FieldName = 'USU_VLRORI'
      Precision = 14
      Size = 2
    end
    object ConsE120IpdAUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
    object ConsE120IpdADESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsE120IpdADESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
  end
  object CadE120IpdA: TADOQuery
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
      'select * from usu_t120ipdA where '
      '                                 usu_codemp = :codemp and'
      '                                 usu_codfil = :codfil and'
      '                                 usu_numped = :numped and'
      '                                 usu_seqipd = :seqipd')
    Left = 424
    Top = 464
    object CadE120IpdAUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadE120IpdAUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadE120IpdAUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object CadE120IpdAUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object CadE120IpdAUSU_VLRPRO: TBCDField
      FieldName = 'USU_VLRPRO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 12
      Size = 2
    end
    object CadE120IpdAUSU_INDEV: TStringField
      FieldName = 'USU_INDEV'
      Size = 10
    end
    object CadE120IpdAUSU_DATFAB: TDateTimeField
      FieldName = 'USU_DATFAB'
    end
    object CadE120IpdAUSU_DATSOL: TDateTimeField
      FieldName = 'USU_DATSOL'
    end
    object CadE120IpdAUSU_DATPER: TDateTimeField
      FieldName = 'USU_DATPER'
    end
    object CadE120IpdAUSU_USUGER: TIntegerField
      FieldName = 'USU_USUGER'
    end
    object CadE120IpdAUSU_DESPER: TStringField
      FieldName = 'USU_DESPER'
      Size = 500
    end
    object CadE120IpdAUSU_MATUTI: TStringField
      FieldName = 'USU_MATUTI'
      Size = 300
    end
    object CadE120IpdAUSU_DESIMG: TStringField
      FieldName = 'USU_DESIMG'
      Size = 500
    end
    object CadE120IpdAUSU_ARGSOL: TStringField
      FieldName = 'USU_ARGSOL'
      Size = 300
    end
  end
  object ConsSaldos: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E210EST.CODPRO,E210EST.CODDEP,E210EST.QTDEST,USU_TSALTEC.' +
        'USU_SALRES,USU_TSALTEC.USU_SALFIL'
      '                                          FROM E210EST'
      'LEFT JOIN USU_TSALTEC ON USU_TSALTEC.USU_CODPRO = E210EST.CODPRO'
      '                                          WHERE'
      
        '                                                E210EST.CODEMP =' +
        ' 1 AND'
      
        '                                                E210EST.CODDEP =' +
        ' '#39'1001'#39' AND'
      
        '                                                E210EST.CODPRO =' +
        ' :CODPRO')
    Left = 448
    Top = 288
    object ConsSaldosCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsSaldosCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsSaldosQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object ConsSaldosUSU_SALRES: TBCDField
      FieldName = 'USU_SALRES'
      Precision = 11
      Size = 2
    end
    object ConsSaldosUSU_SALFIL: TBCDField
      FieldName = 'USU_SALFIL'
      Precision = 11
      Size = 2
    end
  end
  object CadUsu_TSalTec: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_TSALTEC WHERE USU_CODPRO = :CODPRO')
    Left = 448
    Top = 336
    object CadUsu_TSalTecUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TSalTecUSU_SALRES: TBCDField
      FieldName = 'USU_SALRES'
      Precision = 11
      Size = 2
    end
    object CadUsu_TSalTecUSU_SALFIL: TBCDField
      FieldName = 'USU_SALFIL'
      Precision = 11
      Size = 2
    end
  end
  object ConsUsu_TCarPro: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tcarpro where usu_numane = :numane')
    Left = 184
    Top = 432
    object ConsUsu_TCarProUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TCarProUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object ConsUsu_TCarProUSU_HORIMP: TIntegerField
      FieldName = 'USU_HORIMP'
    end
    object ConsUsu_TCarProUSU_USUIMP: TIntegerField
      FieldName = 'USU_USUIMP'
    end
    object ConsUsu_TCarProUSU_CARPRO: TStringField
      FieldName = 'USU_CARPRO'
      Size = 1
    end
    object ConsUsu_TCarProUSU_ITESEL: TStringField
      FieldName = 'USU_ITESEL'
      Size = 1
    end
    object ConsUsu_TCarProUSU_OBSCAR: TStringField
      FieldName = 'USU_OBSCAR'
      Size = 500
    end
  end
  object ConsE075Der: TADOQuery
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
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e075der where codpro = :codpro and'
      '                            codder = :codder')
    Left = 184
    Top = 480
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
    object ConsE075DerDESCPL: TStringField
      FieldName = 'DESCPL'
      Size = 90
    end
    object ConsE075DerCODBAR: TBCDField
      FieldName = 'CODBAR'
      Precision = 13
      Size = 0
    end
    object ConsE075DerCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ConsE075DerCODAGT: TStringField
      FieldName = 'CODAGT'
      Size = 5
    end
    object ConsE075DerSEQCMD: TIntegerField
      FieldName = 'SEQCMD'
    end
    object ConsE075DerDATVAL: TDateTimeField
      FieldName = 'DATVAL'
    end
    object ConsE075DerDIAVLT: TIntegerField
      FieldName = 'DIAVLT'
    end
    object ConsE075DerTIPCN2: TStringField
      FieldName = 'TIPCN2'
      Size = 1
    end
    object ConsE075DerVLRCN2: TFMTBCDField
      FieldName = 'VLRCN2'
      Precision = 13
      Size = 6
    end
    object ConsE075DerTIPCN3: TStringField
      FieldName = 'TIPCN3'
      Size = 1
    end
    object ConsE075DerVLRCN3: TFMTBCDField
      FieldName = 'VLRCN3'
      Precision = 13
      Size = 6
    end
    object ConsE075DerPRECUS: TFMTBCDField
      FieldName = 'PRECUS'
      Precision = 15
      Size = 6
    end
    object ConsE075DerDATCUS: TDateTimeField
      FieldName = 'DATCUS'
    end
    object ConsE075DerPREMED: TFMTBCDField
      FieldName = 'PREMED'
      Precision = 15
      Size = 6
    end
    object ConsE075DerDATMED: TDateTimeField
      FieldName = 'DATMED'
    end
    object ConsE075DerPREUEN: TFMTBCDField
      FieldName = 'PREUEN'
      Precision = 15
      Size = 6
    end
    object ConsE075DerDATUEN: TDateTimeField
      FieldName = 'DATUEN'
    end
    object ConsE075DerPREREP: TFMTBCDField
      FieldName = 'PREREP'
      Precision = 15
      Size = 6
    end
    object ConsE075DerDATREP: TDateTimeField
      FieldName = 'DATREP'
    end
    object ConsE075DerDIAREP: TIntegerField
      FieldName = 'DIAREP'
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
    object ConsE075DerTOLPES: TBCDField
      FieldName = 'TOLPES'
      Precision = 5
      Size = 3
    end
    object ConsE075DerVOLDER: TFMTBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object ConsE075DerPERPRD: TBCDField
      FieldName = 'PERPRD'
      Precision = 4
      Size = 2
    end
    object ConsE075DerQTDIQL: TFMTBCDField
      FieldName = 'QTDIQL'
      Precision = 14
      Size = 5
    end
    object ConsE075DerQTDCIC: TFMTBCDField
      FieldName = 'QTDCIC'
      Precision = 14
      Size = 5
    end
    object ConsE075DerQTDPRD: TFMTBCDField
      FieldName = 'QTDPRD'
      Precision = 14
      Size = 5
    end
    object ConsE075DerPREUIS: TFMTBCDField
      FieldName = 'PREUIS'
      Precision = 17
    end
    object ConsE075DerPERICS: TBCDField
      FieldName = 'PERICS'
      Precision = 5
      Size = 2
    end
    object ConsE075DerCODEMB: TIntegerField
      FieldName = 'CODEMB'
    end
    object ConsE075DerCODROT: TStringField
      FieldName = 'CODROT'
      Size = 14
    end
    object ConsE075DerCODROY: TIntegerField
      FieldName = 'CODROY'
    end
    object ConsE075DerBXAORP: TStringField
      FieldName = 'BXAORP'
      Size = 1
    end
    object ConsE075DerSERCCL: TStringField
      FieldName = 'SERCCL'
      Size = 3
    end
    object ConsE075DerNUMCCL: TStringField
      FieldName = 'NUMCCL'
      Size = 12
    end
    object ConsE075DerCURABC: TStringField
      FieldName = 'CURABC'
      Size = 1
    end
    object ConsE075DerCURAB2: TStringField
      FieldName = 'CURAB2'
      Size = 1
    end
    object ConsE075DerCURAB3: TStringField
      FieldName = 'CURAB3'
      Size = 1
    end
    object ConsE075DerCURAB4: TStringField
      FieldName = 'CURAB4'
      Size = 1
    end
    object ConsE075DerCODREG: TIntegerField
      FieldName = 'CODREG'
    end
    object ConsE075DerSITDER: TStringField
      FieldName = 'SITDER'
      Size = 1
    end
    object ConsE075DerCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE075DerCTRLOT: TStringField
      FieldName = 'CTRLOT'
      Size = 1
    end
    object ConsE075DerCTRSEP: TStringField
      FieldName = 'CTRSEP'
      Size = 1
    end
    object ConsE075DerCTRVLD: TStringField
      FieldName = 'CTRVLD'
      Size = 1
    end
    object ConsE075DerDEPPAD: TStringField
      FieldName = 'DEPPAD'
      Size = 10
    end
    object ConsE075DerDEPPAA: TStringField
      FieldName = 'DEPPAA'
      Size = 10
    end
    object ConsE075DerINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ConsE075DerINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ConsE075DerINDKAN: TStringField
      FieldName = 'INDKAN'
      Size = 1
    end
    object ConsE075DerCODREF: TStringField
      FieldName = 'CODREF'
    end
    object ConsE075DerCODPIN: TStringField
      FieldName = 'CODPIN'
    end
    object ConsE075DerNOTFOR: TBCDField
      FieldName = 'NOTFOR'
      Precision = 5
      Size = 2
    end
    object ConsE075DerORICUS: TStringField
      FieldName = 'ORICUS'
      Size = 1
    end
    object ConsE075DerINFCUS: TStringField
      FieldName = 'INFCUS'
      Size = 1
    end
    object ConsE075DerHORCUS: TIntegerField
      FieldName = 'HORCUS'
    end
    object ConsE075DerUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE075DerHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE075DerDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE075DerUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object ConsE075DerHORALT: TIntegerField
      FieldName = 'HORALT'
    end
    object ConsE075DerDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ConsE075DerCODAGE: TStringField
      FieldName = 'CODAGE'
      Size = 10
    end
    object ConsE075DerCODBA2: TStringField
      FieldName = 'CODBA2'
      Size = 30
    end
    object ConsE075DerINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsE075DerDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsE075DerHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsE075DerEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object ConsE075DerSERMVP: TStringField
      FieldName = 'SERMVP'
      Size = 14
    end
    object ConsE075DerAPRDFT: TStringField
      FieldName = 'APRDFT'
      Size = 1
    end
    object ConsE075DerCODAEM: TStringField
      FieldName = 'CODAEM'
      Size = 10
    end
    object ConsE075DerCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object ConsE075DerINDGEN: TStringField
      FieldName = 'INDGEN'
      Size = 1
    end
    object ConsE075DerQTDMLT: TFMTBCDField
      FieldName = 'QTDMLT'
      Precision = 12
      Size = 5
    end
    object ConsE075DerQTDMIN: TFMTBCDField
      FieldName = 'QTDMIN'
      Precision = 12
      Size = 5
    end
    object ConsE075DerQTDMAX: TFMTBCDField
      FieldName = 'QTDMAX'
      Precision = 12
      Size = 5
    end
    object ConsE075DerCODEND: TStringField
      FieldName = 'CODEND'
      Size = 10
    end
    object ConsE075DerROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object ConsE075DerNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object ConsE075DerINDPCQ: TStringField
      FieldName = 'INDPCQ'
      Size = 1
    end
    object ConsE075DerVLRCID: TBCDField
      FieldName = 'VLRCID'
      Precision = 15
      Size = 2
    end
    object ConsE075DerQTDCUS: TFMTBCDField
      FieldName = 'QTDCUS'
      Precision = 12
      Size = 5
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
    object ConsE075DerUSU_MEDESP: TStringField
      FieldName = 'USU_MEDESP'
      Size = 1
    end
    object ConsE075DerUSU_FATOR: TBCDField
      FieldName = 'USU_FATOR'
      Precision = 9
      Size = 3
    end
    object ConsE075DerQTDEMB: TFMTBCDField
      FieldName = 'QTDEMB'
      Precision = 12
      Size = 5
    end
  end
  object ClientAltCargaCorteEstof: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    BeforeInsert = ClientAltCargaCorteEstof1BeforeInsert
    AfterInsert = ClientAltCargaCorteEstof1AfterInsert
    BeforePost = ClientAltCargaCorteEstof1BeforePost
    Left = 288
    Top = 528
    Data = {
      EB0000009619E0BD010000001800000009000000000003000000EB00064E554D
      414E45040001000000000006434F4450524F0100490000000100055749445448
      020002000E0006434F4444455201004900000001000557494454480200020007
      0007434F44434F52310100490000000100055749445448020002000E0007434F
      44434F52320100490000000100055749445448020002000E00065154444D4F56
      0400010000000000065449504D4F560100490000000100055749445448020002
      0001000644455350524F01004900000001000557494454480200020064000653
      45514F425304000100000000000000}
    object ClientAltCargaCorteEstofNUMANE: TIntegerField
      FieldName = 'NUMANE'
    end
    object ClientAltCargaCorteEstofCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ClientAltCargaCorteEstofCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ClientAltCargaCorteEstofCODCOR1: TStringField
      FieldName = 'CODCOR1'
      Size = 14
    end
    object ClientAltCargaCorteEstofCODCOR2: TStringField
      FieldName = 'CODCOR2'
      Size = 14
    end
    object ClientAltCargaCorteEstofQTDMOV: TIntegerField
      FieldName = 'QTDMOV'
    end
    object ClientAltCargaCorteEstofTIPMOV: TStringField
      FieldName = 'TIPMOV'
      Size = 1
    end
    object ClientAltCargaCorteEstofDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ClientAltCargaCorteEstofSEQOBS: TIntegerField
      FieldName = 'SEQOBS'
    end
    object ClientAltCargaCorteEstofImgTipMov: TStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'ImgTipMov'
      Size = 10
      Calculated = True
    end
  end
  object ConsEstoqueTecidos: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsEstoqueTecidosAfterScroll
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
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E075PRO.CODEMP,E075PRO.CODPRO,E075PRO.DESPRO,E075PRO.USU_' +
        'VLRMAX,E075PRO.SITPRO,E075PRO.CODFAM,'
      '       E075DER.PREMED,'
      '       (SELECT SUM(E210MVP.QTDMOV) FROM E210MVP'
      '                      WHERE E210MVP.CODPRO = E075PRO.CODPRO AND'
      '                            E210MVP.CODDER = '#39' '#39' AND'
      '                            E210MVP.CODDEP = '#39'1001'#39' AND'
      
        '                            E210MVP.DATMOV BETWEEN :DATINI AND :' +
        'DATFIM AND'
      '                            E210MVP.ESTEOS = '#39'S'#39') AS QTDMOV,'
      '       USU_TSALTEC.USU_SALRES,USU_TSALTEC.USU_SALFIL,'
      '       E210EST.QTDEST,'
      
        '       E210EST.QTDEST - (USU_TSALTEC.USU_SALRES + USU_TSALTEC.US' +
        'U_SALFIL) AS SALDO_DISP'
      ''
      '              FROM E075PRO'
      'INNER JOIN E075DER ON E075DER.CODEMP = E075PRO.CODEMP AND'
      '                      E075DER.CODPRO = E075PRO.CODPRO AND'
      '                      E075DER.CODDER = '#39' '#39
      'INNER JOIN E210EST ON E210EST.CODEMP = E075PRO.CODEMP AND'
      '                      E210EST.CODPRO = E075PRO.CODPRO AND'
      '                      E210EST.CODDER = '#39' '#39' AND'
      '                      E210EST.CODDEP = '#39'1001'#39
      'LEFT JOIN USU_TSALTEC ON USU_TSALTEC.USU_CODPRO = E075PRO.CODPRO'
      '              WHERE E075PRO.CODPRO = :CODPRO')
    Left = 456
    Top = 528
    object ConsEstoqueTecidosCODEMP: TIntegerField
      Alignment = taCenter
      FieldName = 'CODEMP'
    end
    object ConsEstoqueTecidosCODPRO: TStringField
      Alignment = taCenter
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsEstoqueTecidosDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsEstoqueTecidosUSU_VLRMAX: TBCDField
      Alignment = taCenter
      FieldName = 'USU_VLRMAX'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 3
    end
    object ConsEstoqueTecidosPREMED: TFMTBCDField
      Alignment = taCenter
      FieldName = 'PREMED'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 6
    end
    object ConsEstoqueTecidosQTDMOV: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QTDMOV'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
    object ConsEstoqueTecidosUSU_SALRES: TBCDField
      Alignment = taCenter
      FieldName = 'USU_SALRES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsEstoqueTecidosUSU_SALFIL: TBCDField
      Alignment = taCenter
      FieldName = 'USU_SALFIL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsEstoqueTecidosQTDEST: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QTDEST'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ConsEstoqueTecidosSALDO_DISP: TFMTBCDField
      Alignment = taCenter
      FieldName = 'SALDO_DISP'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 38
      Size = 0
    end
  end
  object ConsOCTecido: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e420ipo.codemp, e420ipo.codfil, e420ipo.numocp, e420ipo.c' +
        'odpro,'
      '       e420ipo.qtdped, e420ipo.qtdrec, e420ipo.qtdabe,'
      '       e420ocp.datemi, codfor,'
      '       e095for.nomfor'
      '       from e420ipo'
      '       inner join e420ocp on e420ocp.codemp = e420ipo.codemp and'
      '                             e420ocp.codfil = e420ipo.codfil and'
      '                             e420ocp.numocp = e420ipo.numocp'
      '       inner join e095for on e420ocp.codfor = e095for.codfor'
      '                                 where'
      
        '                                 e420ipo.sitipo in ('#39'1'#39','#39'2'#39','#39'9'#39')' +
        ' and'
      '                                 e420ipo.codpro = :CODPRO'
      '                                 order by e420ocp.datemi')
    Left = 600
    Top = 488
    object ConsOCTecidoCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsOCTecidoCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsOCTecidoNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsOCTecidoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsOCTecidoQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsOCTecidoQTDREC: TFMTBCDField
      FieldName = 'QTDREC'
      Precision = 14
      Size = 5
    end
    object ConsOCTecidoQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsOCTecidoDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsOCTecidoCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsOCTecidoNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
  end
  object ClientConsOCTecido: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsOCTecido'
    Left = 600
    Top = 584
    object ClientConsOCTecidoCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ClientConsOCTecidoCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ClientConsOCTecidoNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ClientConsOCTecidoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ClientConsOCTecidoQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ClientConsOCTecidoQTDREC: TFMTBCDField
      FieldName = 'QTDREC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ClientConsOCTecidoQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ClientConsOCTecidoDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ClientConsOCTecidoCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ClientConsOCTecidoNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
    object ClientConsOCTecidoTOT_ABERTO: TAggregateField
      Alignment = taCenter
      FieldName = 'TOT_ABERTO'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(QTDABE)'
    end
  end
  object ProviderConsOCTecido: TDataSetProvider
    DataSet = ConsOCTecido
    Left = 600
    Top = 536
  end
  object ConsFornecedoresTecido: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODPRO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e403fpr.codfor, e095for.nomfor from e403fpr'
      'inner join e095for on e095for.codfor = e403fpr.codfor'
      'where'
      'e403fpr.codpro = :CODPRO')
    Left = 704
    Top = 496
    object ConsFornecedoresTecidoCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsFornecedoresTecidoNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
  end
  object ConsPrimeiraNfTecido: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODPRO'
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
        'pg,'
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
      '                      where'
      '                      e440ipc.codpro = :CODPRO'
      
        '                      order by e440nfc.datemi asc,e440ipc.numnfc' +
        ' asc')
    Left = 728
    Top = 552
    object ConsPrimeiraNfTecidoCODEMP: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODEMP'
    end
    object ConsPrimeiraNfTecidoCODFIL: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODFIL'
    end
    object ConsPrimeiraNfTecidoCODFOR: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODFOR'
    end
    object ConsPrimeiraNfTecidoNUMNFC: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'NUMNFC'
    end
    object ConsPrimeiraNfTecidoCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object ConsPrimeiraNfTecidoSEQIPC: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'SEQIPC'
    end
    object ConsPrimeiraNfTecidoTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsPrimeiraNfTecidoNUMOCP: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'NUMOCP'
    end
    object ConsPrimeiraNfTecidoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsPrimeiraNfTecidoQTDREC: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDREC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ConsPrimeiraNfTecidoUNINFC: TStringField
      FieldName = 'UNINFC'
      Size = 3
    end
    object ConsPrimeiraNfTecidoQTDEST: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object ConsPrimeiraNfTecidoUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsPrimeiraNfTecidoPREUNI: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'PREUNI'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ConsPrimeiraNfTecidoPREEST: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'PREEST'
      Precision = 14
      Size = 5
    end
    object ConsPrimeiraNfTecidoPERIPI: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ConsPrimeiraNfTecidoPERICM: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ConsPrimeiraNfTecidoVLRBRU: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ConsPrimeiraNfTecidoVLRIPI: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsPrimeiraNfTecidoVLRICM: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsPrimeiraNfTecidoVLRLIQ: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsPrimeiraNfTecidoPERIPI_1: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERIPI_1'
      Precision = 5
      Size = 2
    end
    object ConsPrimeiraNfTecidoPERICM_1: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERICM_1'
      Precision = 5
      Size = 2
    end
    object ConsPrimeiraNfTecidoVLRBRU_1: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBRU_1'
      Precision = 15
      Size = 2
    end
    object ConsPrimeiraNfTecidoVLRIPI_1: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRIPI_1'
      Precision = 15
      Size = 2
    end
    object ConsPrimeiraNfTecidoVLRICM_1: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRICM_1'
      Precision = 15
      Size = 2
    end
    object ConsPrimeiraNfTecidoVLRLIQ_1: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRLIQ_1'
      Precision = 15
      Size = 2
    end
    object ConsPrimeiraNfTecidoDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsPrimeiraNfTecidoDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ConsPrimeiraNfTecidoCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsPrimeiraNfTecidoDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ConsPrimeiraNfTecidoQTDTOT: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDTOT'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
end
