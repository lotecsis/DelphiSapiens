unit UAddProdPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, dbcgrids, Mask, rxToolEdit,
  rxCurrEdit, DBCtrls, DB, ADODB, DBClient, Provider, ExtCtrls, Menus,
  CheckLst, RxLookup, RXSpin, DBTables, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,IdIOHandler, ComCtrls;

type
  TFAddProdPred = class(TForm)
    BGeraItens: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    EdCodPro: TEdit;
    EdTabPre: TEdit;
    edDesPro: TCurrencyEdit;
    Label3: TLabel;
    Label5: TLabel;
    BPesqProd: TSpeedButton;
    BPesqTabPreco: TSpeedButton;
    BDesconto: TSpeedButton;
    Derivacoes: TADOQuery;
    DerivacoesCODEMP: TIntegerField;
    DerivacoesCODPRO: TStringField;
    DerivacoesCODDER: TStringField;
    DerivacoesDESDER: TStringField;
    DerivacoesDESCPL: TStringField;
    DerivacoesCODBAR: TBCDField;
    DerivacoesCODAGR: TIntegerField;
    DerivacoesCODAGT: TStringField;
    DerivacoesSEQCMD: TIntegerField;
    DerivacoesDATVAL: TDateTimeField;
    DerivacoesDIAVLT: TIntegerField;
    DerivacoesTIPCN2: TStringField;
    DerivacoesVLRCN2: TBCDField;
    DerivacoesTIPCN3: TStringField;
    DerivacoesVLRCN3: TBCDField;
    DerivacoesPRECUS: TBCDField;
    DerivacoesDATCUS: TDateTimeField;
    DerivacoesPREMED: TBCDField;
    DerivacoesDATMED: TDateTimeField;
    DerivacoesPREUEN: TBCDField;
    DerivacoesDATUEN: TDateTimeField;
    DerivacoesPREREP: TBCDField;
    DerivacoesDATREP: TDateTimeField;
    DerivacoesDIAREP: TIntegerField;
    DerivacoesPESBRU: TBCDField;
    DerivacoesPESLIQ: TBCDField;
    DerivacoesTOLPES: TBCDField;
    DerivacoesVOLDER: TBCDField;
    DerivacoesPERPRD: TBCDField;
    DerivacoesQTDIQL: TBCDField;
    DerivacoesQTDCIC: TBCDField;
    DerivacoesQTDPRD: TBCDField;
    DerivacoesPREUIS: TBCDField;
    DerivacoesPERICS: TBCDField;
    DerivacoesCODEMB: TIntegerField;
    DerivacoesCODROT: TStringField;
    DerivacoesCODROY: TIntegerField;
    DerivacoesBXAORP: TStringField;
    DerivacoesSERCCL: TStringField;
    DerivacoesNUMCCL: TStringField;
    DerivacoesCURABC: TStringField;
    DerivacoesCURAB2: TStringField;
    DerivacoesCURAB3: TStringField;
    DerivacoesCURAB4: TStringField;
    DerivacoesCODREG: TIntegerField;
    DerivacoesSITDER: TStringField;
    DerivacoesCODMOT: TIntegerField;
    DerivacoesCTRLOT: TStringField;
    DerivacoesCTRSEP: TStringField;
    DerivacoesCTRVLD: TStringField;
    DerivacoesDEPPAD: TStringField;
    DerivacoesDEPPAA: TStringField;
    DerivacoesINDPCE: TStringField;
    DerivacoesINDPCR: TStringField;
    DerivacoesINDKAN: TStringField;
    DerivacoesCODREF: TStringField;
    DerivacoesCODPIN: TStringField;
    DerivacoesNOTFOR: TBCDField;
    DerivacoesORICUS: TStringField;
    DerivacoesINFCUS: TStringField;
    DerivacoesHORCUS: TIntegerField;
    DerivacoesUSUGER: TBCDField;
    DerivacoesHORGER: TIntegerField;
    DerivacoesDATGER: TDateTimeField;
    DerivacoesUSUALT: TBCDField;
    DerivacoesHORALT: TIntegerField;
    DerivacoesDATALT: TDateTimeField;
    DerivacoesCODAGE: TStringField;
    DerivacoesCODBA2: TStringField;
    DerivacoesINDEXP: TIntegerField;
    DerivacoesDATPAL: TDateTimeField;
    DerivacoesHORPAL: TIntegerField;
    DerivacoesEXPWMS: TIntegerField;
    DerivacoesSERMVP: TStringField;
    DerivacoesAPRDFT: TStringField;
    DerivacoesCODAEM: TStringField;
    DerivacoesCODPDV: TIntegerField;
    DerivacoesINDGEN: TStringField;
    DerivacoesQTDMLT: TBCDField;
    DerivacoesQTDMIN: TBCDField;
    DerivacoesQTDMAX: TBCDField;
    DerivacoesCODEND: TStringField;
    DerivacoesROTANX: TIntegerField;
    DerivacoesNUMANX: TBCDField;
    DerivacoesINDPCQ: TStringField;
    DerivacoesVLRCID: TBCDField;
    DerivacoesUSU_CORUNI: TBCDField;
    DerivacoesUSU_CMP1BB: TBCDField;
    DerivacoesUSU_CMP1AE: TBCDField;
    DerivacoesUSU_CMP2BB: TBCDField;
    DerivacoesUSU_CMP2EN: TBCDField;
    DerivacoesUSU_MEDESP: TStringField;
    DerivacoesUSU_FATOR: TBCDField;
    ProviderDerivacoes: TDataSetProvider;
    ClientDerivacoes: TClientDataSet;
    ClientDerivacoesCODEMP: TIntegerField;
    ClientDerivacoesCODPRO: TStringField;
    ClientDerivacoesCODDER: TStringField;
    ClientDerivacoesDESDER: TStringField;
    ClientDerivacoesDESCPL: TStringField;
    ClientDerivacoesCODBAR: TBCDField;
    ClientDerivacoesCODAGR: TIntegerField;
    ClientDerivacoesCODAGT: TStringField;
    ClientDerivacoesSEQCMD: TIntegerField;
    ClientDerivacoesDATVAL: TDateTimeField;
    ClientDerivacoesDIAVLT: TIntegerField;
    ClientDerivacoesTIPCN2: TStringField;
    ClientDerivacoesVLRCN2: TBCDField;
    ClientDerivacoesTIPCN3: TStringField;
    ClientDerivacoesVLRCN3: TBCDField;
    ClientDerivacoesPRECUS: TBCDField;
    ClientDerivacoesDATCUS: TDateTimeField;
    ClientDerivacoesPREMED: TBCDField;
    ClientDerivacoesDATMED: TDateTimeField;
    ClientDerivacoesPREUEN: TBCDField;
    ClientDerivacoesDATUEN: TDateTimeField;
    ClientDerivacoesPREREP: TBCDField;
    ClientDerivacoesDATREP: TDateTimeField;
    ClientDerivacoesDIAREP: TIntegerField;
    ClientDerivacoesPESBRU: TBCDField;
    ClientDerivacoesPESLIQ: TBCDField;
    ClientDerivacoesTOLPES: TBCDField;
    ClientDerivacoesVOLDER: TBCDField;
    ClientDerivacoesPERPRD: TBCDField;
    ClientDerivacoesQTDIQL: TBCDField;
    ClientDerivacoesQTDCIC: TBCDField;
    ClientDerivacoesQTDPRD: TBCDField;
    ClientDerivacoesPREUIS: TBCDField;
    ClientDerivacoesPERICS: TBCDField;
    ClientDerivacoesCODEMB: TIntegerField;
    ClientDerivacoesCODROT: TStringField;
    ClientDerivacoesCODROY: TIntegerField;
    ClientDerivacoesBXAORP: TStringField;
    ClientDerivacoesSERCCL: TStringField;
    ClientDerivacoesNUMCCL: TStringField;
    ClientDerivacoesCURABC: TStringField;
    ClientDerivacoesCURAB2: TStringField;
    ClientDerivacoesCURAB3: TStringField;
    ClientDerivacoesCURAB4: TStringField;
    ClientDerivacoesCODREG: TIntegerField;
    ClientDerivacoesSITDER: TStringField;
    ClientDerivacoesCODMOT: TIntegerField;
    ClientDerivacoesCTRLOT: TStringField;
    ClientDerivacoesCTRSEP: TStringField;
    ClientDerivacoesCTRVLD: TStringField;
    ClientDerivacoesDEPPAD: TStringField;
    ClientDerivacoesDEPPAA: TStringField;
    ClientDerivacoesINDPCE: TStringField;
    ClientDerivacoesINDPCR: TStringField;
    ClientDerivacoesINDKAN: TStringField;
    ClientDerivacoesCODREF: TStringField;
    ClientDerivacoesCODPIN: TStringField;
    ClientDerivacoesNOTFOR: TBCDField;
    ClientDerivacoesORICUS: TStringField;
    ClientDerivacoesINFCUS: TStringField;
    ClientDerivacoesHORCUS: TIntegerField;
    ClientDerivacoesUSUGER: TBCDField;
    ClientDerivacoesHORGER: TIntegerField;
    ClientDerivacoesDATGER: TDateTimeField;
    ClientDerivacoesUSUALT: TBCDField;
    ClientDerivacoesHORALT: TIntegerField;
    ClientDerivacoesDATALT: TDateTimeField;
    ClientDerivacoesCODAGE: TStringField;
    ClientDerivacoesCODBA2: TStringField;
    ClientDerivacoesINDEXP: TIntegerField;
    ClientDerivacoesDATPAL: TDateTimeField;
    ClientDerivacoesHORPAL: TIntegerField;
    ClientDerivacoesEXPWMS: TIntegerField;
    ClientDerivacoesSERMVP: TStringField;
    ClientDerivacoesAPRDFT: TStringField;
    ClientDerivacoesCODAEM: TStringField;
    ClientDerivacoesCODPDV: TIntegerField;
    ClientDerivacoesINDGEN: TStringField;
    ClientDerivacoesQTDMLT: TBCDField;
    ClientDerivacoesQTDMIN: TBCDField;
    ClientDerivacoesQTDMAX: TBCDField;
    ClientDerivacoesCODEND: TStringField;
    ClientDerivacoesROTANX: TIntegerField;
    ClientDerivacoesNUMANX: TBCDField;
    ClientDerivacoesINDPCQ: TStringField;
    ClientDerivacoesVLRCID: TBCDField;
    ClientDerivacoesUSU_CORUNI: TBCDField;
    ClientDerivacoesUSU_CMP1BB: TBCDField;
    ClientDerivacoesUSU_CMP1AE: TBCDField;
    ClientDerivacoesUSU_CMP2BB: TBCDField;
    ClientDerivacoesUSU_CMP2EN: TBCDField;
    ClientDerivacoesUSU_MEDESP: TStringField;
    ClientDerivacoesUSU_FATOR: TBCDField;
    DsDerivacoes: TDataSource;
    ValidaProduto: TADOQuery;
    ValidaProdutoCODPRO: TStringField;
    ValidaProdutoDESPRO: TStringField;
    LDsCodPro: TLabel;
    BProcessar: TBitBtn;
    BCancelar: TBitBtn;
    ValidaTabPreco: TADOQuery;
    ValidaTabPrecoCODEMP: TIntegerField;
    ValidaTabPrecoCODTPR: TStringField;
    ValidaTabPrecoDESTPR: TStringField;
    ValidaTabPrecoABRTPR: TStringField;
    ValidaTabPrecoCODMOE: TStringField;
    ValidaTabPrecoESPCLI: TStringField;
    ValidaTabPrecoAPLTPV: TIntegerField;
    ValidaTabPrecoSITREG: TStringField;
    ValidaTabPrecoINDEXP: TIntegerField;
    ValidaTabPrecoDATPAL: TDateTimeField;
    ValidaTabPrecoHORPAL: TIntegerField;
    ValidaTabPrecoUTIPME: TStringField;
    ValidaTabPrecoCODPDV: TBCDField;
    ValidaTabPrecoCODCLI: TIntegerField;
    ValidaTabPrecoCODTPB: TStringField;
    E120Ipd: TADOQuery;
    ProviderE120Ipd: TDataSetProvider;
    ClientE120Ipd: TClientDataSet;
    E120IpdCODEMP: TIntegerField;
    E120IpdCODFIL: TIntegerField;
    E120IpdNUMPED: TIntegerField;
    E120IpdSEQIPD: TIntegerField;
    E120IpdTNSPRO: TStringField;
    E120IpdPEDCLI: TStringField;
    E120IpdSEQPCL: TStringField;
    E120IpdPEDPRV: TStringField;
    E120IpdCODPRO: TStringField;
    E120IpdCODDER: TStringField;
    E120IpdCPLIPD: TStringField;
    E120IpdCODFAM: TStringField;
    E120IpdCODAGR: TIntegerField;
    E120IpdCODTIC: TStringField;
    E120IpdCODTRD: TStringField;
    E120IpdCODTST: TStringField;
    E120IpdCODSTP: TStringField;
    E120IpdCODSTC: TStringField;
    E120IpdCODDEP: TStringField;
    E120IpdCODLOT: TStringField;
    E120IpdRESEST: TStringField;
    E120IpdQTDPED: TBCDField;
    E120IpdQTDAEN: TBCDField;
    E120IpdQTDPOC: TBCDField;
    E120IpdQTDFAT: TBCDField;
    E120IpdQTDCAN: TBCDField;
    E120IpdQTDABE: TBCDField;
    E120IpdQTDRAE: TBCDField;
    E120IpdQTDNLP: TBCDField;
    E120IpdQTDRES: TBCDField;
    E120IpdUNIMED: TStringField;
    E120IpdCODMCP: TStringField;
    E120IpdDATMFP: TDateTimeField;
    E120IpdCOTMFP: TBCDField;
    E120IpdDATMOE: TDateTimeField;
    E120IpdCOTMOE: TBCDField;
    E120IpdFECMOE: TStringField;
    E120IpdCODTPR: TStringField;
    E120IpdPREUNI: TBCDField;
    E120IpdCODMOE: TStringField;
    E120IpdPREFIX: TStringField;
    E120IpdPERDSC: TBCDField;
    E120IpdPEROFE: TBCDField;
    E120IpdPERACR: TBCDField;
    E120IpdPERIPI: TBCDField;
    E120IpdPERICM: TBCDField;
    E120IpdPERCOM: TBCDField;
    E120IpdDATENT: TDateTimeField;
    E120IpdDATANE: TDateTimeField;
    E120IpdDATPOC: TDateTimeField;
    E120IpdCODPVP: TStringField;
    E120IpdNUMPRJ: TIntegerField;
    E120IpdCODFPJ: TIntegerField;
    E120IpdCTAFIN: TIntegerField;
    E120IpdCTARED: TIntegerField;
    E120IpdCODCCU: TStringField;
    E120IpdVLRFRE: TBCDField;
    E120IpdVLRSEG: TBCDField;
    E120IpdVLREMB: TBCDField;
    E120IpdVLRENC: TBCDField;
    E120IpdVLROUT: TBCDField;
    E120IpdVLRDAR: TBCDField;
    E120IpdVLRFRD: TBCDField;
    E120IpdVLROUD: TBCDField;
    E120IpdVLRBRU: TBCDField;
    E120IpdVLRDSC: TBCDField;
    E120IpdVLRDS1: TBCDField;
    E120IpdVLRDS2: TBCDField;
    E120IpdVLRDS3: TBCDField;
    E120IpdVLRDS4: TBCDField;
    E120IpdVLROFE: TBCDField;
    E120IpdVLRDZF: TBCDField;
    E120IpdVLRBIP: TBCDField;
    E120IpdVLRIPI: TBCDField;
    E120IpdVLRBIC: TBCDField;
    E120IpdVLRICM: TBCDField;
    E120IpdVLRBSI: TBCDField;
    E120IpdVLRICS: TBCDField;
    E120IpdVLRBSP: TBCDField;
    E120IpdVLRSTP: TBCDField;
    E120IpdVLRBSC: TBCDField;
    E120IpdVLRSTC: TBCDField;
    E120IpdVLRBCO: TBCDField;
    E120IpdVLRCOM: TBCDField;
    E120IpdVLRLPR: TBCDField;
    E120IpdVLRLOU: TBCDField;
    E120IpdVLRLIQ: TBCDField;
    E120IpdVLRFIN: TBCDField;
    E120IpdSITIPD: TIntegerField;
    E120IpdCODMOT: TIntegerField;
    E120IpdOBSMOT: TStringField;
    E120IpdGERNEC: TIntegerField;
    E120IpdGERCGA: TStringField;
    E120IpdRESMAN: TStringField;
    E120IpdINDAED: TStringField;
    E120IpdNUMCTR: TIntegerField;
    E120IpdDATCPT: TDateTimeField;
    E120IpdSEQCVP: TIntegerField;
    E120IpdUSUGER: TBCDField;
    E120IpdDATGER: TDateTimeField;
    E120IpdHORGER: TIntegerField;
    E120IpdQTDPPF: TBCDField;
    E120IpdCMPKIT: TStringField;
    E120IpdFILOCP: TIntegerField;
    E120IpdNUMOCP: TIntegerField;
    E120IpdSEQIPO: TIntegerField;
    E120IpdUNIVEN: TStringField;
    E120IpdQTDVEN: TBCDField;
    E120IpdPREVEN: TBCDField;
    E120IpdPREBRU: TBCDField;
    E120IpdFILCTR: TIntegerField;
    E120IpdCTRCVS: TIntegerField;
    E120IpdCPTCVS: TDateTimeField;
    E120IpdSEQCVS: TIntegerField;
    E120IpdCODAVC: TIntegerField;
    E120IpdCODFXA: TStringField;
    E120IpdCODPGR: TStringField;
    E120IpdIDXGRD: TIntegerField;
    E120IpdCODMAR: TStringField;
    E120IpdCODCLC: TStringField;
    E120IpdPERDS1: TBCDField;
    E120IpdPERDS2: TBCDField;
    E120IpdPERDS3: TBCDField;
    E120IpdPERDS4: TBCDField;
    E120IpdFILPRD: TIntegerField;
    E120IpdVLRRIS: TBCDField;
    E120IpdINDPCE: TStringField;
    E120IpdINDPCR: TStringField;
    E120IpdPERPIT: TBCDField;
    E120IpdVLRBPT: TBCDField;
    E120IpdVLRPIT: TBCDField;
    E120IpdPERCRT: TBCDField;
    E120IpdVLRBCT: TBCDField;
    E120IpdVLRCRT: TBCDField;
    E120IpdPERCSL: TBCDField;
    E120IpdVLRBCL: TBCDField;
    E120IpdVLRCSL: TBCDField;
    E120IpdPEROUR: TBCDField;
    E120IpdVLRBOR: TBCDField;
    E120IpdVLROUR: TBCDField;
    E120IpdPERIRF: TBCDField;
    E120IpdVLRBIR: TBCDField;
    E120IpdVLRIRF: TBCDField;
    E120IpdFILNFC: TIntegerField;
    E120IpdFORNFC: TIntegerField;
    E120IpdNUMNFC: TIntegerField;
    E120IpdSNFNFC: TStringField;
    E120IpdSEQIPC: TIntegerField;
    E120IpdNCTLCL: TStringField;
    E120IpdNRECLI: TStringField;
    E120IpdNOSICL: TBCDField;
    E120IpdNOSFCL: TBCDField;
    E120IpdNOCCL1: TStringField;
    E120IpdNOCCL2: TStringField;
    E120IpdNOCCL3: TStringField;
    E120IpdCODAGC: TStringField;
    E120IpdCTRCVP: TIntegerField;
    E120IpdCPTCVP: TDateTimeField;
    E120IpdSEQCTR: TIntegerField;
    E120IpdINDAPE: TIntegerField;
    E120IpdOBSIPD: TStringField;
    E120IpdSEQISP: TIntegerField;
    E120IpdEMPOCP: TIntegerField;
    E120IpdVLRBPF: TBCDField;
    E120IpdPERPIF: TBCDField;
    E120IpdVLRPIF: TBCDField;
    E120IpdVLRBCF: TBCDField;
    E120IpdPERCFF: TBCDField;
    E120IpdVLRCFF: TBCDField;
    E120IpdPERDS5: TBCDField;
    E120IpdVLRDS5: TBCDField;
    E120IpdUSU_TIPCMB: TIntegerField;
    E120IpdUSU_CODTEC1: TStringField;
    E120IpdUSU_CODTEC2: TStringField;
    E120IpdUSU_QTDREP: TIntegerField;
    E120IpdUSU_QTDDIV: TBCDField;
    E120IpdUSU_MEDLAR: TBCDField;
    E120IpdUSU_MEDCOM: TBCDField;
    E120IpdUSU_MEDALT: TBCDField;
    E120IpdUSU_PERDESC1: TBCDField;
    E120IpdUSU_PERDESC2: TBCDField;
    E120IpdUSU_PERDESC3: TBCDField;
    E120IpdUSU_PERDESC4: TBCDField;
    E120IpdUSU_PERDESC5: TBCDField;
    E120IpdUSU_PERDESC6: TBCDField;
    E120IpdUSU_CANAPR: TBCDField;
    E120IpdUSU_TOTDSC: TBCDField;
    E120IpdUSU_TOTDSCORI: TBCDField;
    E120IpdORIRES: TStringField;
    E120IpdUSU_VLRORI: TBCDField;
    ClientE120IpdCODEMP: TIntegerField;
    ClientE120IpdCODFIL: TIntegerField;
    ClientE120IpdNUMPED: TIntegerField;
    ClientE120IpdSEQIPD: TIntegerField;
    ClientE120IpdTNSPRO: TStringField;
    ClientE120IpdPEDCLI: TStringField;
    ClientE120IpdSEQPCL: TStringField;
    ClientE120IpdPEDPRV: TStringField;
    ClientE120IpdCODPRO: TStringField;
    ClientE120IpdCODDER: TStringField;
    ClientE120IpdCPLIPD: TStringField;
    ClientE120IpdCODFAM: TStringField;
    ClientE120IpdCODAGR: TIntegerField;
    ClientE120IpdCODTIC: TStringField;
    ClientE120IpdCODTRD: TStringField;
    ClientE120IpdCODTST: TStringField;
    ClientE120IpdCODSTP: TStringField;
    ClientE120IpdCODSTC: TStringField;
    ClientE120IpdCODDEP: TStringField;
    ClientE120IpdCODLOT: TStringField;
    ClientE120IpdRESEST: TStringField;
    ClientE120IpdQTDPED: TBCDField;
    ClientE120IpdQTDAEN: TBCDField;
    ClientE120IpdQTDPOC: TBCDField;
    ClientE120IpdQTDFAT: TBCDField;
    ClientE120IpdQTDCAN: TBCDField;
    ClientE120IpdQTDABE: TBCDField;
    ClientE120IpdQTDRAE: TBCDField;
    ClientE120IpdQTDNLP: TBCDField;
    ClientE120IpdQTDRES: TBCDField;
    ClientE120IpdUNIMED: TStringField;
    ClientE120IpdCODMCP: TStringField;
    ClientE120IpdDATMFP: TDateTimeField;
    ClientE120IpdCOTMFP: TBCDField;
    ClientE120IpdDATMOE: TDateTimeField;
    ClientE120IpdCOTMOE: TBCDField;
    ClientE120IpdFECMOE: TStringField;
    ClientE120IpdCODTPR: TStringField;
    ClientE120IpdPREUNI: TBCDField;
    ClientE120IpdCODMOE: TStringField;
    ClientE120IpdPREFIX: TStringField;
    ClientE120IpdPERDSC: TBCDField;
    ClientE120IpdPEROFE: TBCDField;
    ClientE120IpdPERACR: TBCDField;
    ClientE120IpdPERIPI: TBCDField;
    ClientE120IpdPERICM: TBCDField;
    ClientE120IpdPERCOM: TBCDField;
    ClientE120IpdDATENT: TDateTimeField;
    ClientE120IpdDATANE: TDateTimeField;
    ClientE120IpdDATPOC: TDateTimeField;
    ClientE120IpdCODPVP: TStringField;
    ClientE120IpdNUMPRJ: TIntegerField;
    ClientE120IpdCODFPJ: TIntegerField;
    ClientE120IpdCTAFIN: TIntegerField;
    ClientE120IpdCTARED: TIntegerField;
    ClientE120IpdCODCCU: TStringField;
    ClientE120IpdVLRFRE: TBCDField;
    ClientE120IpdVLRSEG: TBCDField;
    ClientE120IpdVLREMB: TBCDField;
    ClientE120IpdVLRENC: TBCDField;
    ClientE120IpdVLROUT: TBCDField;
    ClientE120IpdVLRDAR: TBCDField;
    ClientE120IpdVLRFRD: TBCDField;
    ClientE120IpdVLROUD: TBCDField;
    ClientE120IpdVLRBRU: TBCDField;
    ClientE120IpdVLRDSC: TBCDField;
    ClientE120IpdVLRDS1: TBCDField;
    ClientE120IpdVLRDS2: TBCDField;
    ClientE120IpdVLRDS3: TBCDField;
    ClientE120IpdVLRDS4: TBCDField;
    ClientE120IpdVLROFE: TBCDField;
    ClientE120IpdVLRDZF: TBCDField;
    ClientE120IpdVLRBIP: TBCDField;
    ClientE120IpdVLRIPI: TBCDField;
    ClientE120IpdVLRBIC: TBCDField;
    ClientE120IpdVLRICM: TBCDField;
    ClientE120IpdVLRBSI: TBCDField;
    ClientE120IpdVLRICS: TBCDField;
    ClientE120IpdVLRBSP: TBCDField;
    ClientE120IpdVLRSTP: TBCDField;
    ClientE120IpdVLRBSC: TBCDField;
    ClientE120IpdVLRSTC: TBCDField;
    ClientE120IpdVLRBCO: TBCDField;
    ClientE120IpdVLRCOM: TBCDField;
    ClientE120IpdVLRLPR: TBCDField;
    ClientE120IpdVLRLOU: TBCDField;
    ClientE120IpdVLRLIQ: TBCDField;
    ClientE120IpdVLRFIN: TBCDField;
    ClientE120IpdSITIPD: TIntegerField;
    ClientE120IpdCODMOT: TIntegerField;
    ClientE120IpdOBSMOT: TStringField;
    ClientE120IpdGERNEC: TIntegerField;
    ClientE120IpdGERCGA: TStringField;
    ClientE120IpdRESMAN: TStringField;
    ClientE120IpdINDAED: TStringField;
    ClientE120IpdNUMCTR: TIntegerField;
    ClientE120IpdDATCPT: TDateTimeField;
    ClientE120IpdSEQCVP: TIntegerField;
    ClientE120IpdUSUGER: TBCDField;
    ClientE120IpdDATGER: TDateTimeField;
    ClientE120IpdHORGER: TIntegerField;
    ClientE120IpdQTDPPF: TBCDField;
    ClientE120IpdCMPKIT: TStringField;
    ClientE120IpdFILOCP: TIntegerField;
    ClientE120IpdNUMOCP: TIntegerField;
    ClientE120IpdSEQIPO: TIntegerField;
    ClientE120IpdUNIVEN: TStringField;
    ClientE120IpdQTDVEN: TBCDField;
    ClientE120IpdPREVEN: TBCDField;
    ClientE120IpdPREBRU: TBCDField;
    ClientE120IpdFILCTR: TIntegerField;
    ClientE120IpdCTRCVS: TIntegerField;
    ClientE120IpdCPTCVS: TDateTimeField;
    ClientE120IpdSEQCVS: TIntegerField;
    ClientE120IpdCODAVC: TIntegerField;
    ClientE120IpdCODFXA: TStringField;
    ClientE120IpdCODPGR: TStringField;
    ClientE120IpdIDXGRD: TIntegerField;
    ClientE120IpdCODMAR: TStringField;
    ClientE120IpdCODCLC: TStringField;
    ClientE120IpdPERDS1: TBCDField;
    ClientE120IpdPERDS2: TBCDField;
    ClientE120IpdPERDS3: TBCDField;
    ClientE120IpdPERDS4: TBCDField;
    ClientE120IpdFILPRD: TIntegerField;
    ClientE120IpdVLRRIS: TBCDField;
    ClientE120IpdINDPCE: TStringField;
    ClientE120IpdINDPCR: TStringField;
    ClientE120IpdPERPIT: TBCDField;
    ClientE120IpdVLRBPT: TBCDField;
    ClientE120IpdVLRPIT: TBCDField;
    ClientE120IpdPERCRT: TBCDField;
    ClientE120IpdVLRBCT: TBCDField;
    ClientE120IpdVLRCRT: TBCDField;
    ClientE120IpdPERCSL: TBCDField;
    ClientE120IpdVLRBCL: TBCDField;
    ClientE120IpdVLRCSL: TBCDField;
    ClientE120IpdPEROUR: TBCDField;
    ClientE120IpdVLRBOR: TBCDField;
    ClientE120IpdVLROUR: TBCDField;
    ClientE120IpdPERIRF: TBCDField;
    ClientE120IpdVLRBIR: TBCDField;
    ClientE120IpdVLRIRF: TBCDField;
    ClientE120IpdFILNFC: TIntegerField;
    ClientE120IpdFORNFC: TIntegerField;
    ClientE120IpdNUMNFC: TIntegerField;
    ClientE120IpdSNFNFC: TStringField;
    ClientE120IpdSEQIPC: TIntegerField;
    ClientE120IpdNCTLCL: TStringField;
    ClientE120IpdNRECLI: TStringField;
    ClientE120IpdNOSICL: TBCDField;
    ClientE120IpdNOSFCL: TBCDField;
    ClientE120IpdNOCCL1: TStringField;
    ClientE120IpdNOCCL2: TStringField;
    ClientE120IpdNOCCL3: TStringField;
    ClientE120IpdCODAGC: TStringField;
    ClientE120IpdCTRCVP: TIntegerField;
    ClientE120IpdCPTCVP: TDateTimeField;
    ClientE120IpdSEQCTR: TIntegerField;
    ClientE120IpdINDAPE: TIntegerField;
    ClientE120IpdOBSIPD: TStringField;
    ClientE120IpdSEQISP: TIntegerField;
    ClientE120IpdEMPOCP: TIntegerField;
    ClientE120IpdVLRBPF: TBCDField;
    ClientE120IpdPERPIF: TBCDField;
    ClientE120IpdVLRPIF: TBCDField;
    ClientE120IpdVLRBCF: TBCDField;
    ClientE120IpdPERCFF: TBCDField;
    ClientE120IpdVLRCFF: TBCDField;
    ClientE120IpdPERDS5: TBCDField;
    ClientE120IpdVLRDS5: TBCDField;
    ClientE120IpdUSU_TIPCMB: TIntegerField;
    ClientE120IpdUSU_CODTEC1: TStringField;
    ClientE120IpdUSU_CODTEC2: TStringField;
    ClientE120IpdUSU_QTDREP: TIntegerField;
    ClientE120IpdUSU_QTDDIV: TBCDField;
    ClientE120IpdUSU_MEDLAR: TBCDField;
    ClientE120IpdUSU_MEDCOM: TBCDField;
    ClientE120IpdUSU_MEDALT: TBCDField;
    ClientE120IpdUSU_PERDESC1: TBCDField;
    ClientE120IpdUSU_PERDESC2: TBCDField;
    ClientE120IpdUSU_PERDESC3: TBCDField;
    ClientE120IpdUSU_PERDESC4: TBCDField;
    ClientE120IpdUSU_PERDESC5: TBCDField;
    ClientE120IpdUSU_PERDESC6: TBCDField;
    ClientE120IpdUSU_CANAPR: TBCDField;
    ClientE120IpdUSU_TOTDSC: TBCDField;
    ClientE120IpdUSU_TOTDSCORI: TBCDField;
    ClientE120IpdORIRES: TStringField;
    ClientE120IpdUSU_VLRORI: TBCDField;
    DsE120Ipd: TDataSource;
    ValidaDerivacao: TADOQuery;
    ValidaDerivacaoCODEMP: TIntegerField;
    ValidaDerivacaoCODPRO: TStringField;
    ValidaDerivacaoCODDER: TStringField;
    ValidaDerivacaoDESDER: TStringField;
    ValidaDerivacaoDESCPL: TStringField;
    ValidaDerivacaoCODBAR: TBCDField;
    ValidaDerivacaoCODAGR: TIntegerField;
    ValidaDerivacaoCODAGT: TStringField;
    ValidaDerivacaoSEQCMD: TIntegerField;
    ValidaDerivacaoDATVAL: TDateTimeField;
    ValidaDerivacaoDIAVLT: TIntegerField;
    ValidaDerivacaoTIPCN2: TStringField;
    ValidaDerivacaoVLRCN2: TBCDField;
    ValidaDerivacaoTIPCN3: TStringField;
    ValidaDerivacaoVLRCN3: TBCDField;
    ValidaDerivacaoPRECUS: TBCDField;
    ValidaDerivacaoDATCUS: TDateTimeField;
    ValidaDerivacaoPREMED: TBCDField;
    ValidaDerivacaoDATMED: TDateTimeField;
    ValidaDerivacaoPREUEN: TBCDField;
    ValidaDerivacaoDATUEN: TDateTimeField;
    ValidaDerivacaoPREREP: TBCDField;
    ValidaDerivacaoDATREP: TDateTimeField;
    ValidaDerivacaoDIAREP: TIntegerField;
    ValidaDerivacaoPESBRU: TBCDField;
    ValidaDerivacaoPESLIQ: TBCDField;
    ValidaDerivacaoTOLPES: TBCDField;
    ValidaDerivacaoVOLDER: TBCDField;
    ValidaDerivacaoPERPRD: TBCDField;
    ValidaDerivacaoQTDIQL: TBCDField;
    ValidaDerivacaoQTDCIC: TBCDField;
    ValidaDerivacaoQTDPRD: TBCDField;
    ValidaDerivacaoPREUIS: TBCDField;
    ValidaDerivacaoPERICS: TBCDField;
    ValidaDerivacaoCODEMB: TIntegerField;
    ValidaDerivacaoCODROT: TStringField;
    ValidaDerivacaoCODROY: TIntegerField;
    ValidaDerivacaoBXAORP: TStringField;
    ValidaDerivacaoSERCCL: TStringField;
    ValidaDerivacaoNUMCCL: TStringField;
    ValidaDerivacaoCURABC: TStringField;
    ValidaDerivacaoCURAB2: TStringField;
    ValidaDerivacaoCURAB3: TStringField;
    ValidaDerivacaoCURAB4: TStringField;
    ValidaDerivacaoCODREG: TIntegerField;
    ValidaDerivacaoSITDER: TStringField;
    ValidaDerivacaoCODMOT: TIntegerField;
    ValidaDerivacaoCTRLOT: TStringField;
    ValidaDerivacaoCTRSEP: TStringField;
    ValidaDerivacaoCTRVLD: TStringField;
    ValidaDerivacaoDEPPAD: TStringField;
    ValidaDerivacaoDEPPAA: TStringField;
    ValidaDerivacaoINDPCE: TStringField;
    ValidaDerivacaoINDPCR: TStringField;
    ValidaDerivacaoINDKAN: TStringField;
    ValidaDerivacaoCODREF: TStringField;
    ValidaDerivacaoCODPIN: TStringField;
    ValidaDerivacaoNOTFOR: TBCDField;
    ValidaDerivacaoORICUS: TStringField;
    ValidaDerivacaoINFCUS: TStringField;
    ValidaDerivacaoHORCUS: TIntegerField;
    ValidaDerivacaoUSUGER: TBCDField;
    ValidaDerivacaoHORGER: TIntegerField;
    ValidaDerivacaoDATGER: TDateTimeField;
    ValidaDerivacaoUSUALT: TBCDField;
    ValidaDerivacaoHORALT: TIntegerField;
    ValidaDerivacaoDATALT: TDateTimeField;
    ValidaDerivacaoCODAGE: TStringField;
    ValidaDerivacaoCODBA2: TStringField;
    ValidaDerivacaoINDEXP: TIntegerField;
    ValidaDerivacaoDATPAL: TDateTimeField;
    ValidaDerivacaoHORPAL: TIntegerField;
    ValidaDerivacaoEXPWMS: TIntegerField;
    ValidaDerivacaoSERMVP: TStringField;
    ValidaDerivacaoAPRDFT: TStringField;
    ValidaDerivacaoCODAEM: TStringField;
    ValidaDerivacaoCODPDV: TIntegerField;
    ValidaDerivacaoINDGEN: TStringField;
    ValidaDerivacaoQTDMLT: TBCDField;
    ValidaDerivacaoQTDMIN: TBCDField;
    ValidaDerivacaoQTDMAX: TBCDField;
    ValidaDerivacaoCODEND: TStringField;
    ValidaDerivacaoROTANX: TIntegerField;
    ValidaDerivacaoNUMANX: TBCDField;
    ValidaDerivacaoINDPCQ: TStringField;
    ValidaDerivacaoVLRCID: TBCDField;
    ValidaDerivacaoUSU_CORUNI: TBCDField;
    ValidaDerivacaoUSU_CMP1BB: TBCDField;
    ValidaDerivacaoUSU_CMP1AE: TBCDField;
    ValidaDerivacaoUSU_CMP2BB: TBCDField;
    ValidaDerivacaoUSU_CMP2EN: TBCDField;
    ValidaDerivacaoUSU_MEDESP: TStringField;
    ValidaDerivacaoUSU_FATOR: TBCDField;
    ValidaProdutoCODFAM: TStringField;
    E081Itp: TADOQuery;
    E081ItpCODEMP: TIntegerField;
    E081ItpCODTPR: TStringField;
    E081ItpDATINI: TDateTimeField;
    E081ItpCODPRO: TStringField;
    E081ItpCODDER: TStringField;
    E081ItpQTDMAX: TBCDField;
    E081ItpPREBAS: TBCDField;
    E081ItpPERDSC: TBCDField;
    E081ItpPERLIM: TBCDField;
    E081ItpPERCOM: TBCDField;
    E081ItpTOLMAI: TBCDField;
    E081ItpTOLMEN: TBCDField;
    E081ItpSITREG: TStringField;
    E081ItpINDEXC: TStringField;
    E081ItpINDEXP: TIntegerField;
    E081ItpDATPAL: TDateTimeField;
    E081ItpHORPAL: TIntegerField;
    E081ItpDATGER: TDateTimeField;
    E081ItpHORGER: TIntegerField;
    E081ItpUSUGER: TBCDField;
    E081ItpDATALT: TDateTimeField;
    E081ItpHORALT: TIntegerField;
    E081ItpUSUALT: TBCDField;
    E081ItpPROEXT: TStringField;
    E081ItpPREMT2: TBCDField;
    E081ItpVLRCMO: TBCDField;
    E081ItpVLRCTE: TBCDField;
    E081ItpVLRCPR: TBCDField;
    E081ItpPREORC: TBCDField;
    E081ItpDATORC: TDateTimeField;
    E081ItpCODREP: TIntegerField;
    E081ItpCODPRB: TStringField;
    E081ItpVLTMAI: TBCDField;
    E081ItpVLTMEN: TBCDField;
    E081ItpOBSITP: TStringField;
    ScrollBox1: TScrollBox;
    DBE120Ipd: TDBCtrlGrid;
    DBCODPRO: TDBEdit;
    DBCODDER: TDBEdit;
    DBCPLIPD: TDBEdit;
    DBTNSPRO: TDBEdit;
    DBQTDPED: TDBEdit;
    DBCODTPR: TDBEdit;
    DBPREUNI: TDBEdit;
    DBUSU_TOTDSC: TDBEdit;
    DBCODDEP: TDBEdit;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DsConsUsu_T120Ipd: TDataSource;
    SeqIpd: TADOQuery;
    SeqIpdSEQIPD: TIntegerField;
    SapSid: TIdHTTP;
    ConsUsu_TCarPro: TADOQuery;
    ConsUsu_TCarProUSU_NUMANE: TIntegerField;
    ConsUsu_TCarProUSU_DATIMP: TDateTimeField;
    ConsUsu_TCarProUSU_HORIMP: TIntegerField;
    ConsUsu_TCarProUSU_USUIMP: TIntegerField;
    ConsUsu_TCarProUSU_CARPRO: TStringField;
    ConsE075Der: TADOQuery;
    ConsE075DerCODEMP: TIntegerField;
    ConsE075DerCODPRO: TStringField;
    ConsE075DerCODDER: TStringField;
    ConsE075DerDESDER: TStringField;
    ConsE075DerDESCPL: TStringField;
    ConsE075DerCODBAR: TBCDField;
    ConsE075DerCODAGR: TIntegerField;
    ConsE075DerCODAGT: TStringField;
    ConsE075DerSEQCMD: TIntegerField;
    ConsE075DerDATVAL: TDateTimeField;
    ConsE075DerDIAVLT: TIntegerField;
    ConsE075DerTIPCN2: TStringField;
    ConsE075DerVLRCN2: TFMTBCDField;
    ConsE075DerTIPCN3: TStringField;
    ConsE075DerVLRCN3: TFMTBCDField;
    ConsE075DerPRECUS: TFMTBCDField;
    ConsE075DerDATCUS: TDateTimeField;
    ConsE075DerPREMED: TFMTBCDField;
    ConsE075DerDATMED: TDateTimeField;
    ConsE075DerPREUEN: TFMTBCDField;
    ConsE075DerDATUEN: TDateTimeField;
    ConsE075DerPREREP: TFMTBCDField;
    ConsE075DerDATREP: TDateTimeField;
    ConsE075DerDIAREP: TIntegerField;
    ConsE075DerPESBRU: TFMTBCDField;
    ConsE075DerPESLIQ: TFMTBCDField;
    ConsE075DerTOLPES: TBCDField;
    ConsE075DerVOLDER: TFMTBCDField;
    ConsE075DerPERPRD: TBCDField;
    ConsE075DerQTDIQL: TFMTBCDField;
    ConsE075DerQTDCIC: TFMTBCDField;
    ConsE075DerQTDPRD: TFMTBCDField;
    ConsE075DerPREUIS: TFMTBCDField;
    ConsE075DerPERICS: TBCDField;
    ConsE075DerCODEMB: TIntegerField;
    ConsE075DerCODROT: TStringField;
    ConsE075DerCODROY: TIntegerField;
    ConsE075DerBXAORP: TStringField;
    ConsE075DerSERCCL: TStringField;
    ConsE075DerNUMCCL: TStringField;
    ConsE075DerCURABC: TStringField;
    ConsE075DerCURAB2: TStringField;
    ConsE075DerCURAB3: TStringField;
    ConsE075DerCURAB4: TStringField;
    ConsE075DerCODREG: TIntegerField;
    ConsE075DerSITDER: TStringField;
    ConsE075DerCODMOT: TIntegerField;
    ConsE075DerCTRLOT: TStringField;
    ConsE075DerCTRSEP: TStringField;
    ConsE075DerCTRVLD: TStringField;
    ConsE075DerDEPPAD: TStringField;
    ConsE075DerDEPPAA: TStringField;
    ConsE075DerINDPCE: TStringField;
    ConsE075DerINDPCR: TStringField;
    ConsE075DerINDKAN: TStringField;
    ConsE075DerCODREF: TStringField;
    ConsE075DerCODPIN: TStringField;
    ConsE075DerNOTFOR: TBCDField;
    ConsE075DerORICUS: TStringField;
    ConsE075DerINFCUS: TStringField;
    ConsE075DerHORCUS: TIntegerField;
    ConsE075DerUSUGER: TBCDField;
    ConsE075DerHORGER: TIntegerField;
    ConsE075DerDATGER: TDateTimeField;
    ConsE075DerUSUALT: TBCDField;
    ConsE075DerHORALT: TIntegerField;
    ConsE075DerDATALT: TDateTimeField;
    ConsE075DerCODAGE: TStringField;
    ConsE075DerCODBA2: TStringField;
    ConsE075DerINDEXP: TIntegerField;
    ConsE075DerDATPAL: TDateTimeField;
    ConsE075DerHORPAL: TIntegerField;
    ConsE075DerEXPWMS: TIntegerField;
    ConsE075DerSERMVP: TStringField;
    ConsE075DerAPRDFT: TStringField;
    ConsE075DerCODAEM: TStringField;
    ConsE075DerCODPDV: TIntegerField;
    ConsE075DerINDGEN: TStringField;
    ConsE075DerQTDMLT: TFMTBCDField;
    ConsE075DerQTDMIN: TFMTBCDField;
    ConsE075DerQTDMAX: TFMTBCDField;
    ConsE075DerCODEND: TStringField;
    ConsE075DerROTANX: TIntegerField;
    ConsE075DerNUMANX: TBCDField;
    ConsE075DerINDPCQ: TStringField;
    ConsE075DerVLRCID: TBCDField;
    ConsE075DerQTDCUS: TFMTBCDField;
    ConsE075DerUSU_CORUNI: TBCDField;
    ConsE075DerUSU_CMP1BB: TBCDField;
    ConsE075DerUSU_CMP1AE: TBCDField;
    ConsE075DerUSU_CMP2BB: TBCDField;
    ConsE075DerUSU_CMP2EN: TBCDField;
    ConsE075DerUSU_MEDESP: TStringField;
    ConsE075DerUSU_FATOR: TBCDField;
    Progresso: TProgressBar;
    DerivacoesQTDEMB: TFMTBCDField;
    ClientDerivacoesQTDEMB: TFMTBCDField;
    ValidaDerivacaoQTDEMB: TFMTBCDField;
    ConsE075DerQTDEMB: TFMTBCDField;
    dbgDerivacoes: TDBGrid;
    ValidaProdutoCODAGP: TStringField;
    ValidaProdutoCODAGC: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodProExit(Sender: TObject);
    procedure DBECodDerKeyPress(Sender: TObject; var Key: Char);
    procedure BExcluiDerivacoesClick(Sender: TObject);
    procedure EdTabPreExit(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BGeraItensClick(Sender: TObject);
    procedure ClientE120IpdAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BProcessarClick(Sender: TObject);
    procedure BDescontoClick(Sender: TObject);
    procedure edDesProExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BPesqProdClick(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgDerivacoesExit(Sender: TObject);
    procedure ClientDerivacoesAfterInsert(DataSet: TDataSet);
    procedure DsDerivacoesStateChange(Sender: TObject);
    procedure dbgDerivacoesEditButtonClick(Sender: TObject);
  private
    { Private declarations }
    vbFechar : Boolean;
    vaStatusClientDerivacoes : TDataSetState;
  public
    { Public declarations }
  end;

var
  FAddProdPred: TFAddProdPred;

implementation

uses UDm, UDm2, UConsDerivacoes, Math, UAddCoresProdPed, UDescontoPedido,
  UPedido, UDm1, UConsGeralNfEnt;

{$R *.dfm}

procedure TFAddProdPred.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAddProdPred.EdCodProExit(Sender: TObject);
begin
if EdCodPro.Text <> '' then
   begin
     ValidaProduto.Close;
     ValidaProduto.Parameters.ParamByName('codemp').Value := Dm2.ConsE120pedCODEMP.Value;
     ValidaProduto.Parameters.ParamByName('codpro').Value := EdCodPro.Text;
     ValidaProduto.Open;
     if ValidaProduto.IsEmpty then
        begin
          Application.MessageBox('Produto não encontrado','Aviso', MB_ICONWARNING+MB_OK);
          EdCodPro.Clear;
          ActiveControl := EdCodPro;
        end
     else
        begin
          LDsCodPro.Caption := ValidaProdutoDESPRO.Value;

          Derivacoes.Close;
          ClientDerivacoes.Close;
          Derivacoes.Open;
          ClientDerivacoes.Open;
        end;
  end;
end;

procedure TFAddProdPred.EdCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f5 then
     begin
       BPesqProd.Click;
     end;

end;

procedure TFAddProdPred.DBECodDerKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAddProdPred.dbgDerivacoesEditButtonClick(Sender: TObject);
begin
if vaStatusClientDerivacoes in [dsInsert,dsEdit] then
   begin
    if dbgDerivacoes.SelectedField.FieldName = 'CODDER' then
       begin
          FConsDerivacoes := TFConsDerivacoes.Create(Self);
          FConsDerivacoes.vaCodPro := EdCodPro.Text;
          ClientDerivacoes.Edit;
         if FConsDerivacoes.ShowModal = mrOk then
            begin
               ClientDerivacoesCODDER.Value := FConsDerivacoes.ConsDerivacoesCODDER.Value;
            end;
          FreeAndNil(FConsDerivacoes);
       end;
   end;

end;

procedure TFAddProdPred.dbgDerivacoesExit(Sender: TObject);
begin
ClientDerivacoes.First;
 while not ClientDerivacoes.Eof do
    begin//1
       If ClientDerivacoesQTDEMB.AsFloat = 0 then
         begin
            ShowMessage('Existe derivação sem quantidade informada');
            ActiveControl := dbgDerivacoes;
            Abort;
         end;
       ClientDerivacoes.Next;
    end;//1

   ActiveControl := EdTabPre;
end;

procedure TFAddProdPred.DsDerivacoesStateChange(Sender: TObject);
begin
    vaStatusClientDerivacoes := ClientDerivacoes.State;
end;

procedure TFAddProdPred.BExcluiDerivacoesClick(Sender: TObject);
begin
  ClientDerivacoes.Delete;
end;

procedure TFAddProdPred.EdTabPreExit(Sender: TObject);
begin
  if EdTabPre.Text <> '' then
     begin
       ValidaTabPreco.Close;
       ValidaTabPreco.Parameters.ParamByName('codemp').Value := 1;
       ValidaTabPreco.Parameters.ParamByName('codtpr').Value := EdTabPre.Text;
       ValidaTabPreco.Open;
       if ValidaTabPreco.IsEmpty then
          begin
             Application.MessageBox('Tabela de preço não encontrada','Aviso',+MB_ICONWARNING+MB_OK);
             EdTabPre.Clear;
             ActiveControl := EdTabPre;
          end;

     end;
end;

procedure TFAddProdPred.BPesqProdClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,e075pro.codfam,e075pro.codori';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where codori IN (''1'',''2'')';
    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodPro';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FAddProdPred';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
    ActiveControl := EdCodPro;
end;

procedure TFAddProdPred.BCancelarClick(Sender: TObject);
begin

  if Application.MessageBox('Deseja Realmente Cancelar o Registro?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin//1
      ClientE120Ipd.First;
      while not ClientE120Ipd.Eof do
        begin//2
          dm2.ConsUsu_T120Ipd.Close;
          dm2.ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := ClientE120IpdCODFIL.Value;
          dm2.ConsUsu_T120Ipd.Parameters.ParamByName('numped').Value := ClientE120IpdNUMPED.Value;
          dm2.ConsUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := ClientE120IpdSEQIPD.Value;
          dm2.ConsUsu_T120Ipd.Open;
          dm2.ConsUsu_T120Ipd.First;
          while not dm2.ConsUsu_T120Ipd.Eof do
            begin//3

               dm2.ConsUsu_T120Ipd.Delete;
            end;//3
          ClientE120Ipd.Next;
        end;//2
      vbFechar := true;  
      Close;
      //atualiza a consulta das cores doe dos produtos
     dm2.ConsUsu_T120Ipd.Close;
     dm2.ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := dm2.ConsE120IpdCODFIL.Value;
     dm2.ConsUsu_T120Ipd.Parameters.ParamByName('numped').Value := dm2.ConsE120IpdNUMPED.Value;
     dm2.ConsUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := dm2.ConsE120IpdSEQIPD.Value;
     dm2.ConsUsu_T120Ipd.Open;
    end;//1

end;

procedure TFAddProdPred.BGeraItensClick(Sender: TObject);
var vnQtdDer : Integer;
    vaLinha, vaCodDer : String;
    vbContinua : Boolean;
    vnCodEmp : Integer;
    vnCodFil : Integer;
    vnNumPed : Integer;
    vnSeqIpd : Integer;
    vaCodPro : String;
    vaTnsPro : String;
    vnPreUni : Double;
    vaCodDep : String;

begin
 //valida se a derivação é valida para o produto
 vnQtdDer := 0;
 ClientDerivacoes.First;
 while not ClientDerivacoes.Eof do
    begin//1
      ValidaDerivacao.Close;
      ValidaDerivacao.Parameters.ParamByName('codemp').Value := Dm2.ConsE120pedCODEMP.Value;
      ValidaDerivacao.Parameters.ParamByName('codpro').Value := EdCodPro.Text;
      ValidaDerivacao.Parameters.ParamByName('codder').Value := ClientDerivacoesCODDER.Value;
      ValidaDerivacao.Open;
      if ValidaDerivacao.IsEmpty then
         begin//2
            Application.MessageBox(Pchar('Derivação "'+ClientDerivacoesCODDER.AsString+ '" não liberada para este produto'),'Aviso',+MB_ICONWARNING+MB_OK);
            ClientDerivacoes.Delete;
         end//2
      else
        begin
           vnQtdDer := vnQtdDer + 1;
           ClientDerivacoes.Next;
        end;
    end;//1

    //valida a combinação das cores
    vbContinua := true;
   { if ValidaProdutoCODAGC.Value = 'ESTOF' then
       begin
          ClientDerivacoes.First;
          vaCodDer := ClientDerivacoesCODDER.Value;
          if Length(vaCodDer) = 2 then
             vaLinha := vaCodDer[2]
          else if Length(vaCodDer) = 3 then
                   vaLinha := vaCodDer[3];
          while not ClientDerivacoes.Eof do
             begin
                if Length(ClientDerivacoesCODDER.Value) = 2 then
                   begin
                     if ClientDerivacoesCODDER.AsString[2] <> vaLinha then
                        begin
                          Application.MessageBox('Combinação de derivações inválida','Aviso',+MB_ICONWARNING+MB_OK);
                          vbContinua := false;
                          Abort;
                       end;
                   end
                else if Length(ClientDerivacoesCODDER.Value) = 3 then
                        begin
                          if ClientDerivacoesCODDER.AsString[3] <> vaLinha then
                             begin
                               Application.MessageBox('Combinação de derivações inválida','Aviso',+MB_ICONWARNING+MB_OK);
                               vbContinua := false;
                               Abort;
                             end;
                        end;

                ClientDerivacoes.Next;
             end;
       end;}
      if vbContinua then
         begin//4
            //busca a sequencia do item
            SeqIpd.Close;
            SeqIpd.Parameters.ParamByName('codemp').Value := Dm2.ConsE120pedCODEMP.Value;
            SeqIpd.Parameters.ParamByName('codfil').Value := Dm2.ConsE120pedCODFIL.Value;
            SeqIpd.Parameters.ParamByName('numped').Value := Dm2.ConsE120pedNUMPED.Value;
            SeqIpd.Open;
            if SeqIpdSEQIPD.Value = 0 then
               vnSeqIpd := 1
            else
              vnSeqIpd := SeqIpdSEQIPD.Value + 1;
         end;

            ClientDerivacoes.First;
            while not ClientDerivacoes.Eof do
               begin//5
                  ClientE120Ipd.Open;
                  ClientE120Ipd.Insert;
                  //pega a transação conforme o agrupamento do produto
                  if ValidaProdutoCODAGC.Value = 'ESTOF' then
                     vaTnsPro := '90100'
                  else
                     vaTnsPro := '90106';
                  //busca o preço unitario na tabela de preço
                  E081Itp.Close;
                  E081Itp.Parameters.ParamByName('codemp').Value := Dm2.ConsE120pedCODEMP.Value;
                  E081Itp.Parameters.ParamByName('codtpr').Value := EdTabPre.Text;
                  E081Itp.Parameters.ParamByName('codpro').Value := EdCodPro.Text;
                  E081Itp.Parameters.ParamByName('codder').Value := ClientDerivacoesCODDER.Value;
                  E081Itp.Open;
                  vnPreUni := E081ItpPREBAS.Value - (E081ItpPREBAS.Value * (edDesPro.Value/100));

                  //valida o codigo do deposito
                  if ValidaProdutoCODAGC.Value = 'ESTOF' then
                     vaCodDep := '01001'
                  else
                  if ValidaProdutoCODAGC.Value = 'COLCH' then
                     vaCodDep := '01002';


                  ClientE120IpdCODEMP.Value := Dm2.ConsE120pedCODEMP.Value;
                  ClientE120IpdCODFIL.Value := Dm2.ConsE120pedCODFIL.Value;
                  ClientE120IpdNUMPED.Value := Dm2.ConsE120pedNUMPED.Value;
                  ClientE120IpdSEQIPD.Value := vnSeqIpd;
                  ClientE120IpdCODPRO.Value := EdCodPro.Text;
                  ClientE120IpdCPLIPD.Value := LDsCodPro.Caption;
                  ClientE120IpdCODDER.Value := ClientDerivacoesCODDER.Value;
                  ClientE120IpdCODDEP.Value := vaCodDep;
                  ClientE120IpdTNSPRO.Value := vaTnsPro;
                  ClientE120IpdCODFAM.Value := ValidaProdutoCODFAM.Value;
                  ClientE120IpdDATENT.Value := Date;
                  ClientE120IpdQTDPED.Value := ClientDerivacoesQTDEMB.AsFloat;
                  ClientE120IpdCODTPR.Value := EdTabPre.Text;
                  ClientE120IpdPREUNI.Value := vnPreUni;
                  ClientE120IpdUSU_TOTDSC.Value := edDesPro.Value;
                  ClientE120IpdUSU_TOTDSCORI.Value := edDesPro.Value;
                  ClientE120IpdUSU_VLRORI.Value := E081ItpPREBAS.Value;
                  ClientE120Ipd.Post;

                  vnSeqIpd := vnSeqIpd + 1;

                  ClientDerivacoes.Next;
               EdCodPro.Enabled := false;
               edDesPro.Enabled := false;
               EdTabPre.Enabled := false;
               BPesqProd.Enabled := false;
               BPesqTabPreco.Enabled := false;
               dbgDerivacoes.Enabled := false;
               BGeraItens.Enabled := false;



               end;//4

end;

procedure TFAddProdPred.ClientDerivacoesAfterInsert(DataSet: TDataSet);
begin
  dbgDerivacoes.SelectedIndex := 0;
end;

procedure TFAddProdPred.ClientE120IpdAfterScroll(DataSet: TDataSet);
begin
    dm2.ConsUsu_T120Ipd.Close;
    dm2.ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := ClientE120IpdCODFIL.Value;
    dm2.ConsUsu_T120Ipd.Parameters.ParamByName('numped').Value := ClientE120IpdNUMPED.Value;
    dm2.ConsUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := ClientE120IpdSEQIPD.Value;
    dm2.ConsUsu_T120Ipd.Open;
end;

procedure TFAddProdPred.FormShow(Sender: TObject);
begin
    dm2.ConsUsu_T120Ipd.Close;
    dm2.ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := ClientE120IpdCODFIL.Value;
    dm2.ConsUsu_T120Ipd.Parameters.ParamByName('numped').Value := ClientE120IpdNUMPED.Value;
    dm2.ConsUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := ClientE120IpdSEQIPD.Value;
    dm2.ConsUsu_T120Ipd.Open;
    //para nao deixar fechar o form
    vbFechar := false;
    ClientE120Ipd.Open;

    Progresso.Visible := false;
end;

procedure TFAddProdPred.BProcessarClick(Sender: TObject);
var vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;

    vnQtdCor : Integer;
  //  vbContinua : Boolean;

    vaNumPed : String;
    vaSeqIpd : String;
    vaCodPro : String;
    vaCodDer : String;
    vaQtdPed : String;
    vaPreUni : String;
    vaTnsPro : String;
    vaCodDep : String;
    vaDatEnt : String;
    vaCodTpr : String;
    vaTotDsc : String;
    vnSeqLog : integer;

    vnSaldoDisp,vnQtdTrans,vnSaldoTrans : Double;
begin
if not ClientE120Ipd.IsEmpty then
 begin

    Progresso.Visible := true;

    xPostQuery := TStringList.Create;

    Dm2.ADOUsuT000sis.Close;
    Dm2.ADOUsuT000sis.Open;
    vA_URL := Dm2.ADOUsuT000sisUSU_URLSRV.Value;
    vA_BasQry := Dm2.ADOUsuT000sisUSU_BASQRY.Value;

    xPostQuery.Add('ACAO=EXESENHA');
    xPostQuery.Add('&NOMUSU=sapienssid');
    xPostQuery.Add('&SENUSU=sapienssid');

    // Executar ação de autenticação no Sapiens SID
    xRetorno := Trim(SapSid.Post(vA_URL, xPostQuery));

   // Verificar se a ação executou com sucesso
   if (StrToIntDef(Copy(xRetorno, 1, 5), 0)) = 0 then
      raise Exception.Create('ERRO - Conexão SID não foi estabelecida: ' + xRetorno)
   else
      vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;

    //loga na filial
    xPostQuery.Clear;
    xPostQuery.Add('ACAO=SID.Srv.AltEmpFil');
    xPostQuery.Add('&CodEmp=1');
    xPostQuery.Add('&CodFil=1');
    xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

      //o laço vai de traz para frente
      ClientE120Ipd.Last;
      while not ClientE120Ipd.Bof do
         begin
          Progresso.Position := 0;
           vaDatEnt := DateToStr(Date);
           vaDatEnt := FormatDateTime('DD/MM/YYYY',StrToDate(vaDatEnt));
           vaNumPed := IntToStr(ClientE120IpdNUMPED.Value);
           vaSeqIpd := IntToStr(ClientE120IpdSEQIPD.Value);
           vaCodPro := ClientE120IpdCODPRO.Value;
           vaCodDer := ClientE120IpdCODDER.Value;
           vaCodDep := ClientE120IpdCODDEP.Value;
           vaTnsPro := ClientE120IpdTNSPRO.Value;
           vaPreUni := FloatToStr(ClientE120IpdPREUNI.Value);
           vaQtdPed := IntToStr(ClientE120IpdQTDPED.AsInteger);
           vaCodTpr := ClientE120IpdCODTPR.Value;
           vaTotDsc := FloatToStr(ClientE120IpdUSU_TOTDSC.Value);
           // grava produtos do pedido
           xPostQuery.Clear;
           xPostQuery.Add('ACAO=SID.Ped.GravarProduto');
           xPostQuery.Add('&NumPed='+vaNumPed);
           xPostQuery.Add('&SeqIpd='+vaSeqIpd);
           xPostQuery.Add('&CodPro='+vaCodPro);
           xPostQuery.Add('&CodDer='+vaCodDer);
           xPostQuery.Add('&QtdPed='+vaQtdPed);
           xPostQuery.Add('&CodTpr='+vaCodTpr);
           xPostQuery.Add('&TnsPro='+vaTnsPro);
           xPostQuery.Add('&CodDep='+vaCodDep);
           xPostQuery.Add('&DatEnt='+vaDatEnt);
           Progresso.Position := 10;

           // Executar ação  gravar itens Pedido
           xRetorno := Trim(SapSid.Post(vA_URL, xPostQuery));
           Progresso.Position := 50;
           // Verificar retorno
           if (xRetorno <> vaSeqIpd) then
            begin
              raise Exception.Create(xRetorno);
              vbFechar := False;
            end
           else
              begin
                //atualiza o preço unitario
                 xPostQuery.Clear;
                 xPostQuery.Add('ACAO=SID.Ped.GravarProduto');
                 xPostQuery.Add('&NumPed='+vaNumPed);
                 xPostQuery.Add('&SeqIpd='+vaSeqIpd);
                 xPostQuery.Add('&CodPro='+vaCodPro);
                 xPostQuery.Add('&CodDer='+vaCodDer);
                 xPostQuery.Add('&QtdPed='+vaQtdPed);
                 xPostQuery.Add('&PreUni='+vaPreUni);

                 // Executar ação  Alterar Pedido
                 xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));
                 Progresso.Position := 90;
                 //altera o item com o total de desconto
                 Dm2.CadE120Ipd.Close;
                 Dm2.CadE120Ipd.Parameters.ParamByName('codemp').Value := ClientE120IpdCODEMP.Value;
                 Dm2.CadE120Ipd.Parameters.ParamByName('codfil').Value := ClientE120IpdCODFIL.Value;
                 Dm2.CadE120Ipd.Parameters.ParamByName('numped').Value := ClientE120IpdNUMPED.Value;
                 Dm2.CadE120Ipd.Parameters.ParamByName('seqipd').Value := ClientE120IpdSEQIPD.Value;
                 Dm2.CadE120Ipd.Open;
                 Dm2.CadE120Ipd.Edit;
                 Dm2.CadE120IpdUSU_TOTDSC.Value := ClientE120IpdUSU_TOTDSC.Value;
                 Dm2.CadE120IpdUSU_TOTDSCORI.Value := ClientE120IpdUSU_TOTDSCORI.Value;
                 Dm2.CadE120IpdUSU_VLRORI.Value := ClientE120IpdUSU_VLRORI.Value;
                 Dm2.CadE120Ipd.Post;


                 {*********************************************************************************
                 se o pedido estiver em pre-carga e a mesma ja estiver no corte de tecido atualiza
                 o saldo do produto na  carga
                 **********************************************************************************}
                 if Dm2.ConsE120pedUSU_PRECAR.Value <> 0 then
                   begin
                     ConsUsu_TCarPro.Close;
                     ConsUsu_TCarPro.Parameters.ParamByName('numane').Value := Dm2.ConsE120pedUSU_PRECAR.Value;
                     ConsUsu_TCarPro.Open;
                     if not ConsUsu_TCarPro.IsEmpty then
                       begin
                         Dm1.CadUsu_TProCar.Close;
                         Dm1.CadUsu_TProCar.Parameters.ParamByName('numane').Value := Dm2.ConsE120pedUSU_PRECAR.Value;
                         Dm1.CadUsu_TProCar.Parameters.ParamByName('codpro').Value := ClientE120IpdCODPRO.Value;
                         Dm1.CadUsu_TProCar.Parameters.ParamByName('codder').Value := ClientE120IpdCODDER.Value;
                         Dm1.CadUsu_TProCar.Open;
                         if Dm1.CadUsu_TProCar.IsEmpty then
                            begin
                              Dm1.CadUsu_TProCar.Insert;
                              Dm1.CadUsu_TProCarUSU_NUMANE.Value := Dm2.ConsE120pedUSU_PRECAR.Value;
                              Dm1.CadUsu_TProCarUSU_CODPRO.Value := ClientE120IpdCODPRO.Value;
                              Dm1.CadUsu_TProCarUSU_CODDER.Value := ClientE120IpdCODDER.Value;
                              Dm1.CadUsu_TProCarUSU_QTDPED.Value := ClientE120IpdQTDPED.AsInteger;
                              Dm1.CadUsu_TProCarUSU_QTDPRO.Value := 0;
                              Dm1.CadUsu_TProCarUSU_QTDABE.Value := ClientE120IpdQTDPED.AsInteger;
                              Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'N';
                              Dm1.CadUsu_TProCar.Post;
                            end
                         else
                            begin
                               Dm1.CadUsu_TProCar.Edit;
                               Dm1.CadUsu_TProCarUSU_QTDPED.Value := Dm1.CadUsu_TProCarUSU_QTDPED.Value + ClientE120IpdQTDPED.AsInteger;
                               Dm1.CadUsu_TProCarUSU_QTDABE.Value := Dm1.CadUsu_TProCarUSU_QTDABE.Value + ClientE120IpdQTDPED.AsInteger;
                               Dm1.CadUsu_TProCar.Post;
                            end;
                       end;
                   end;

                 vbFechar := true;
              end;
             Progresso.Position := 100;
           ClientE120Ipd.Prior;
         end;//6

         Close;
         FPedido.EdNumPedExit(Sender);

 end;//10
end;

procedure TFAddProdPred.BDescontoClick(Sender: TObject);
begin
   FDescontoPedido := TFDescontoPedido.Create(Self);
   if FDescontoPedido.ShowModal = mrOk then
     begin
        edDesPro.Value := FDescontoPedido.vnTotDesc;
     end;

   FreeAndNil(FDescontoPedido);
end;

procedure TFAddProdPred.edDesProExit(Sender: TObject);
begin
  BDesconto.Click;
end;

procedure TFAddProdPred.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if vbFechar = false then
  begin
    CanClose := False;
  end
else
  begin
     CanClose := true;
  end;
end;

end.
