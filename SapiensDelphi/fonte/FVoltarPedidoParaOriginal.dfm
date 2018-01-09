object VoltarPedidoParaOriginal: TVoltarPedidoParaOriginal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Voltar pedido para situa'#231#227'o original'
  ClientHeight = 176
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 18
    Width = 276
    Height = 19
    Caption = 'VOLTAR PEDIDO PARA ORIGINAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNumPed: TCurrencyEdit
    Left = 96
    Top = 72
    Width = 121
    Height = 24
    Margins.Left = 1
    Margins.Top = 1
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object btnConfirmar: TBitBtn
    Left = 109
    Top = 136
    Width = 100
    Height = 25
    Caption = 'Confirmar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnConfirmarClick
  end
  object CadE120Ped: TADOQuery
    Connection = DmOra.ADOBanco
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
        Name = 'NUMPED'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM E120PED'
      'WHERE'
      'CODEMP = :CODEMP AND'
      'CODFIL = :CODFIL AND'
      'NUMPED = :NUMPED')
    Left = 40
    Top = 112
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
    object CadE120PedUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
    object CadE120PedNUMCES: TBCDField
      FieldName = 'NUMCES'
      Precision = 10
      Size = 0
    end
    object CadE120PedVENCAL: TStringField
      FieldName = 'VENCAL'
      Size = 1
    end
    object CadE120PedDESDEF: TStringField
      FieldName = 'DESDEF'
      Size = 40
    end
    object CadE120PedANOVEI: TStringField
      FieldName = 'ANOVEI'
      Size = 10
    end
    object CadE120PedNUMREN: TStringField
      FieldName = 'NUMREN'
    end
    object CadE120PedDESMOD: TStringField
      FieldName = 'DESMOD'
    end
    object CadE120PedTIPDAV: TIntegerField
      FieldName = 'TIPDAV'
    end
    object CadE120PedVLRECF: TBCDField
      FieldName = 'VLRECF'
      Precision = 15
      Size = 2
    end
    object CadE120PedPERECF: TBCDField
      FieldName = 'PERECF'
      Precision = 5
      Size = 2
    end
    object CadE120PedTEMAVA: TStringField
      FieldName = 'TEMAVA'
      Size = 1
    end
  end
  object CadUsu120Ipd: TADOQuery
    Connection = DmOra.ADOBanco
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
        Name = 'NUMPED'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_T120IPD WHERE USU_CODEMP = :CODEMP AND'
      '                                USU_CODFIL = :CODFIL AND'
      '                                USU_NUMPED = :NUMPED')
    Left = 240
    Top = 104
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
  object CadE120Ipd: TADOQuery
    Connection = DmOra.ADOBanco
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
        Name = 'NUMPED'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM E120IPD WHERE CODEMP = :CODEMP AND'
      
        '                                                       CODFIL = ' +
        ':CODFIL AND'
      
        '                                                       NUMPED = ' +
        ':NUMPED')
    Left = 248
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
    object CadE120IpdINDIPM: TStringField
      FieldName = 'INDIPM'
      Size = 1
    end
    object CadE120IpdFILREM: TIntegerField
      FieldName = 'FILREM'
    end
    object CadE120IpdSNFREM: TStringField
      FieldName = 'SNFREM'
      Size = 3
    end
    object CadE120IpdNFVREM: TIntegerField
      FieldName = 'NFVREM'
    end
    object CadE120IpdIPVREM: TIntegerField
      FieldName = 'IPVREM'
    end
    object CadE120IpdCODCNV: TIntegerField
      FieldName = 'CODCNV'
    end
    object CadE120IpdCODREP: TIntegerField
      FieldName = 'CODREP'
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
  object Sql: TADOQuery
    Connection = DmOra.ADOBanco
    LockType = ltReadOnly
    Parameters = <>
    Left = 32
    Top = 56
  end
end
