unit UValidarPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Grids, DBGrids, Buttons, DB,
  ADODB, Provider, DBClient, ImgList;

type
  TFValidarPedidos = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edtPrecarga: TCurrencyEdit;
    edtPedido: TCurrencyEdit;
    dbg1: TDBGrid;
    btnValidar: TBitBtn;
    ConsE120Ipd: TADOQuery;
    ConsE120IpdCODEMP: TIntegerField;
    ConsE120IpdCODFIL: TIntegerField;
    ConsE120IpdNUMPED: TIntegerField;
    ConsE120IpdSEQIPD: TIntegerField;
    ConsE120IpdTNSPRO: TStringField;
    ConsE120IpdPEDCLI: TStringField;
    ConsE120IpdSEQPCL: TStringField;
    ConsE120IpdPEDPRV: TStringField;
    ConsE120IpdCODPRO: TStringField;
    ConsE120IpdCODDER: TStringField;
    ConsE120IpdCPLIPD: TStringField;
    ConsE120IpdCODFAM: TStringField;
    ConsE120IpdCODAGR: TIntegerField;
    ConsE120IpdCODTIC: TStringField;
    ConsE120IpdCODTRD: TStringField;
    ConsE120IpdCODTST: TStringField;
    ConsE120IpdCODSTP: TStringField;
    ConsE120IpdCODSTC: TStringField;
    ConsE120IpdCODDEP: TStringField;
    ConsE120IpdCODLOT: TStringField;
    ConsE120IpdRESEST: TStringField;
    ConsE120IpdQTDPED: TFMTBCDField;
    ConsE120IpdQTDAEN: TFMTBCDField;
    ConsE120IpdQTDPOC: TFMTBCDField;
    ConsE120IpdQTDFAT: TFMTBCDField;
    ConsE120IpdQTDCAN: TFMTBCDField;
    ConsE120IpdQTDABE: TFMTBCDField;
    ConsE120IpdQTDRAE: TFMTBCDField;
    ConsE120IpdQTDNLP: TFMTBCDField;
    ConsE120IpdQTDRES: TFMTBCDField;
    ConsE120IpdUNIMED: TStringField;
    ConsE120IpdCODMCP: TStringField;
    ConsE120IpdDATMFP: TDateTimeField;
    ConsE120IpdCOTMFP: TFMTBCDField;
    ConsE120IpdDATMOE: TDateTimeField;
    ConsE120IpdCOTMOE: TFMTBCDField;
    ConsE120IpdFECMOE: TStringField;
    ConsE120IpdCODTPR: TStringField;
    ConsE120IpdPREUNI: TFMTBCDField;
    ConsE120IpdCODMOE: TStringField;
    ConsE120IpdPREFIX: TStringField;
    ConsE120IpdPERDSC: TBCDField;
    ConsE120IpdPEROFE: TBCDField;
    ConsE120IpdPERACR: TBCDField;
    ConsE120IpdPERIPI: TBCDField;
    ConsE120IpdPERICM: TBCDField;
    ConsE120IpdPERCOM: TBCDField;
    ConsE120IpdDATENT: TDateTimeField;
    ConsE120IpdDATANE: TDateTimeField;
    ConsE120IpdDATPOC: TDateTimeField;
    ConsE120IpdCODPVP: TStringField;
    ConsE120IpdNUMPRJ: TIntegerField;
    ConsE120IpdCODFPJ: TIntegerField;
    ConsE120IpdCTAFIN: TIntegerField;
    ConsE120IpdCTARED: TIntegerField;
    ConsE120IpdCODCCU: TStringField;
    ConsE120IpdVLRFRE: TBCDField;
    ConsE120IpdVLRSEG: TBCDField;
    ConsE120IpdVLREMB: TBCDField;
    ConsE120IpdVLRENC: TBCDField;
    ConsE120IpdVLROUT: TBCDField;
    ConsE120IpdVLRDAR: TBCDField;
    ConsE120IpdVLRFRD: TBCDField;
    ConsE120IpdVLROUD: TBCDField;
    ConsE120IpdVLRBRU: TBCDField;
    ConsE120IpdVLRDSC: TBCDField;
    ConsE120IpdVLRDS1: TBCDField;
    ConsE120IpdVLRDS2: TBCDField;
    ConsE120IpdVLRDS3: TBCDField;
    ConsE120IpdVLRDS4: TBCDField;
    ConsE120IpdVLROFE: TBCDField;
    ConsE120IpdVLRDZF: TBCDField;
    ConsE120IpdVLRBIP: TBCDField;
    ConsE120IpdVLRIPI: TBCDField;
    ConsE120IpdVLRBIC: TBCDField;
    ConsE120IpdVLRICM: TBCDField;
    ConsE120IpdVLRBSI: TBCDField;
    ConsE120IpdVLRICS: TBCDField;
    ConsE120IpdVLRBSP: TBCDField;
    ConsE120IpdVLRSTP: TBCDField;
    ConsE120IpdVLRBSC: TBCDField;
    ConsE120IpdVLRSTC: TBCDField;
    ConsE120IpdVLRBCO: TBCDField;
    ConsE120IpdVLRCOM: TBCDField;
    ConsE120IpdVLRLPR: TBCDField;
    ConsE120IpdVLRLOU: TBCDField;
    ConsE120IpdVLRLIQ: TBCDField;
    ConsE120IpdVLRFIN: TBCDField;
    ConsE120IpdSITIPD: TIntegerField;
    ConsE120IpdCODMOT: TIntegerField;
    ConsE120IpdOBSMOT: TStringField;
    ConsE120IpdGERNEC: TIntegerField;
    ConsE120IpdGERCGA: TStringField;
    ConsE120IpdRESMAN: TStringField;
    ConsE120IpdINDAED: TStringField;
    ConsE120IpdNUMCTR: TIntegerField;
    ConsE120IpdDATCPT: TDateTimeField;
    ConsE120IpdSEQCVP: TIntegerField;
    ConsE120IpdUSUGER: TBCDField;
    ConsE120IpdDATGER: TDateTimeField;
    ConsE120IpdHORGER: TIntegerField;
    ConsE120IpdQTDPPF: TFMTBCDField;
    ConsE120IpdCMPKIT: TStringField;
    ConsE120IpdFILOCP: TIntegerField;
    ConsE120IpdNUMOCP: TIntegerField;
    ConsE120IpdSEQIPO: TIntegerField;
    ConsE120IpdUNIVEN: TStringField;
    ConsE120IpdQTDVEN: TFMTBCDField;
    ConsE120IpdPREVEN: TFMTBCDField;
    ConsE120IpdPREBRU: TFMTBCDField;
    ConsE120IpdFILCTR: TIntegerField;
    ConsE120IpdCTRCVS: TIntegerField;
    ConsE120IpdCPTCVS: TDateTimeField;
    ConsE120IpdSEQCVS: TIntegerField;
    ConsE120IpdCODAVC: TIntegerField;
    ConsE120IpdCODFXA: TStringField;
    ConsE120IpdCODPGR: TStringField;
    ConsE120IpdIDXGRD: TIntegerField;
    ConsE120IpdCODMAR: TStringField;
    ConsE120IpdCODCLC: TStringField;
    ConsE120IpdPERDS1: TBCDField;
    ConsE120IpdPERDS2: TBCDField;
    ConsE120IpdPERDS3: TBCDField;
    ConsE120IpdPERDS4: TBCDField;
    ConsE120IpdFILPRD: TIntegerField;
    ConsE120IpdVLRRIS: TBCDField;
    ConsE120IpdINDPCE: TStringField;
    ConsE120IpdINDPCR: TStringField;
    ConsE120IpdPERPIT: TBCDField;
    ConsE120IpdVLRBPT: TBCDField;
    ConsE120IpdVLRPIT: TBCDField;
    ConsE120IpdPERCRT: TBCDField;
    ConsE120IpdVLRBCT: TBCDField;
    ConsE120IpdVLRCRT: TBCDField;
    ConsE120IpdPERCSL: TBCDField;
    ConsE120IpdVLRBCL: TBCDField;
    ConsE120IpdVLRCSL: TBCDField;
    ConsE120IpdPEROUR: TBCDField;
    ConsE120IpdVLRBOR: TBCDField;
    ConsE120IpdVLROUR: TBCDField;
    ConsE120IpdPERIRF: TBCDField;
    ConsE120IpdVLRBIR: TBCDField;
    ConsE120IpdVLRIRF: TBCDField;
    ConsE120IpdFILNFC: TIntegerField;
    ConsE120IpdFORNFC: TIntegerField;
    ConsE120IpdNUMNFC: TIntegerField;
    ConsE120IpdSNFNFC: TStringField;
    ConsE120IpdSEQIPC: TIntegerField;
    ConsE120IpdNCTLCL: TStringField;
    ConsE120IpdNRECLI: TStringField;
    ConsE120IpdNOSICL: TBCDField;
    ConsE120IpdNOSFCL: TBCDField;
    ConsE120IpdNOCCL1: TStringField;
    ConsE120IpdNOCCL2: TStringField;
    ConsE120IpdNOCCL3: TStringField;
    ConsE120IpdCODAGC: TStringField;
    ConsE120IpdCTRCVP: TIntegerField;
    ConsE120IpdCPTCVP: TDateTimeField;
    ConsE120IpdSEQCTR: TIntegerField;
    ConsE120IpdINDAPE: TIntegerField;
    ConsE120IpdOBSIPD: TStringField;
    ConsE120IpdSEQISP: TIntegerField;
    ConsE120IpdEMPOCP: TIntegerField;
    ConsE120IpdVLRBPF: TBCDField;
    ConsE120IpdPERPIF: TBCDField;
    ConsE120IpdVLRPIF: TBCDField;
    ConsE120IpdVLRBCF: TBCDField;
    ConsE120IpdPERCFF: TBCDField;
    ConsE120IpdVLRCFF: TBCDField;
    ConsE120IpdPERDS5: TBCDField;
    ConsE120IpdVLRDS5: TBCDField;
    ConsE120IpdAGRNEC: TStringField;
    ConsE120IpdAGRPAI: TStringField;
    ConsE120IpdORIRES: TStringField;
    ConsE120IpdQTDBPF: TBCDField;
    ConsE120IpdALIPIF: TBCDField;
    ConsE120IpdQTDBCF: TBCDField;
    ConsE120IpdALICFF: TBCDField;
    ConsE120IpdQTDBIP: TBCDField;
    ConsE120IpdALIIPI: TBCDField;
    ConsE120IpdINDIPM: TStringField;
    ConsE120IpdFILREM: TIntegerField;
    ConsE120IpdSNFREM: TStringField;
    ConsE120IpdNFVREM: TIntegerField;
    ConsE120IpdIPVREM: TIntegerField;
    ConsE120IpdCODCNV: TIntegerField;
    ConsE120IpdCODREP: TIntegerField;
    ConsE120IpdUSU_TIPCMB: TIntegerField;
    ConsE120IpdUSU_CODTEC1: TStringField;
    ConsE120IpdUSU_CODTEC2: TStringField;
    ConsE120IpdUSU_QTDREP: TIntegerField;
    ConsE120IpdUSU_QTDDIV: TBCDField;
    ConsE120IpdUSU_MEDLAR: TBCDField;
    ConsE120IpdUSU_MEDCOM: TBCDField;
    ConsE120IpdUSU_MEDALT: TBCDField;
    ConsE120IpdUSU_PERDESC1: TBCDField;
    ConsE120IpdUSU_PERDESC2: TBCDField;
    ConsE120IpdUSU_PERDESC3: TBCDField;
    ConsE120IpdUSU_PERDESC4: TBCDField;
    ConsE120IpdUSU_PERDESC5: TBCDField;
    ConsE120IpdUSU_PERDESC6: TBCDField;
    ConsE120IpdUSU_CANAPR: TFMTBCDField;
    ConsE120IpdUSU_TOTDSC: TBCDField;
    ConsE120IpdUSU_TOTDSCORI: TBCDField;
    ConsE120IpdUSU_VLRORI: TBCDField;
    ConsE120IpdUSU_NUMCOM: TIntegerField;
    ConsE120IpdPREBAS: TFMTBCDField;
    ConsE120IpdTOLMEN: TBCDField;
    ConsE120IpdTOLMAI: TBCDField;
    ConsE120IpdVLTMAI: TFMTBCDField;
    ConsE120IpdVLTMEN: TFMTBCDField;
    dsClientConsE120Ipd: TDataSource;
    ClientConsE120Ipd: TClientDataSet;
    ProviderConsE120Ipd: TDataSetProvider;
    ClientConsE120IpdCODEMP: TIntegerField;
    ClientConsE120IpdCODFIL: TIntegerField;
    ClientConsE120IpdNUMPED: TIntegerField;
    ClientConsE120IpdSEQIPD: TIntegerField;
    ClientConsE120IpdTNSPRO: TStringField;
    ClientConsE120IpdPEDCLI: TStringField;
    ClientConsE120IpdSEQPCL: TStringField;
    ClientConsE120IpdPEDPRV: TStringField;
    ClientConsE120IpdCODPRO: TStringField;
    ClientConsE120IpdCODDER: TStringField;
    ClientConsE120IpdCPLIPD: TStringField;
    ClientConsE120IpdCODFAM: TStringField;
    ClientConsE120IpdCODAGR: TIntegerField;
    ClientConsE120IpdCODTIC: TStringField;
    ClientConsE120IpdCODTRD: TStringField;
    ClientConsE120IpdCODTST: TStringField;
    ClientConsE120IpdCODSTP: TStringField;
    ClientConsE120IpdCODSTC: TStringField;
    ClientConsE120IpdCODDEP: TStringField;
    ClientConsE120IpdCODLOT: TStringField;
    ClientConsE120IpdRESEST: TStringField;
    ClientConsE120IpdQTDPED: TFMTBCDField;
    ClientConsE120IpdQTDAEN: TFMTBCDField;
    ClientConsE120IpdQTDPOC: TFMTBCDField;
    ClientConsE120IpdQTDFAT: TFMTBCDField;
    ClientConsE120IpdQTDCAN: TFMTBCDField;
    ClientConsE120IpdQTDABE: TFMTBCDField;
    ClientConsE120IpdQTDRAE: TFMTBCDField;
    ClientConsE120IpdQTDNLP: TFMTBCDField;
    ClientConsE120IpdQTDRES: TFMTBCDField;
    ClientConsE120IpdUNIMED: TStringField;
    ClientConsE120IpdCODMCP: TStringField;
    ClientConsE120IpdDATMFP: TDateTimeField;
    ClientConsE120IpdCOTMFP: TFMTBCDField;
    ClientConsE120IpdDATMOE: TDateTimeField;
    ClientConsE120IpdCOTMOE: TFMTBCDField;
    ClientConsE120IpdFECMOE: TStringField;
    ClientConsE120IpdCODTPR: TStringField;
    ClientConsE120IpdPREUNI: TFMTBCDField;
    ClientConsE120IpdCODMOE: TStringField;
    ClientConsE120IpdPREFIX: TStringField;
    ClientConsE120IpdPERDSC: TBCDField;
    ClientConsE120IpdPEROFE: TBCDField;
    ClientConsE120IpdPERACR: TBCDField;
    ClientConsE120IpdPERIPI: TBCDField;
    ClientConsE120IpdPERICM: TBCDField;
    ClientConsE120IpdPERCOM: TBCDField;
    ClientConsE120IpdDATENT: TDateTimeField;
    ClientConsE120IpdDATANE: TDateTimeField;
    ClientConsE120IpdDATPOC: TDateTimeField;
    ClientConsE120IpdCODPVP: TStringField;
    ClientConsE120IpdNUMPRJ: TIntegerField;
    ClientConsE120IpdCODFPJ: TIntegerField;
    ClientConsE120IpdCTAFIN: TIntegerField;
    ClientConsE120IpdCTARED: TIntegerField;
    ClientConsE120IpdCODCCU: TStringField;
    ClientConsE120IpdVLRFRE: TBCDField;
    ClientConsE120IpdVLRSEG: TBCDField;
    ClientConsE120IpdVLREMB: TBCDField;
    ClientConsE120IpdVLRENC: TBCDField;
    ClientConsE120IpdVLROUT: TBCDField;
    ClientConsE120IpdVLRDAR: TBCDField;
    ClientConsE120IpdVLRFRD: TBCDField;
    ClientConsE120IpdVLROUD: TBCDField;
    ClientConsE120IpdVLRBRU: TBCDField;
    ClientConsE120IpdVLRDSC: TBCDField;
    ClientConsE120IpdVLRDS1: TBCDField;
    ClientConsE120IpdVLRDS2: TBCDField;
    ClientConsE120IpdVLRDS3: TBCDField;
    ClientConsE120IpdVLRDS4: TBCDField;
    ClientConsE120IpdVLROFE: TBCDField;
    ClientConsE120IpdVLRDZF: TBCDField;
    ClientConsE120IpdVLRBIP: TBCDField;
    ClientConsE120IpdVLRIPI: TBCDField;
    ClientConsE120IpdVLRBIC: TBCDField;
    ClientConsE120IpdVLRICM: TBCDField;
    ClientConsE120IpdVLRBSI: TBCDField;
    ClientConsE120IpdVLRICS: TBCDField;
    ClientConsE120IpdVLRBSP: TBCDField;
    ClientConsE120IpdVLRSTP: TBCDField;
    ClientConsE120IpdVLRBSC: TBCDField;
    ClientConsE120IpdVLRSTC: TBCDField;
    ClientConsE120IpdVLRBCO: TBCDField;
    ClientConsE120IpdVLRCOM: TBCDField;
    ClientConsE120IpdVLRLPR: TBCDField;
    ClientConsE120IpdVLRLOU: TBCDField;
    ClientConsE120IpdVLRLIQ: TBCDField;
    ClientConsE120IpdVLRFIN: TBCDField;
    ClientConsE120IpdSITIPD: TIntegerField;
    ClientConsE120IpdCODMOT: TIntegerField;
    ClientConsE120IpdOBSMOT: TStringField;
    ClientConsE120IpdGERNEC: TIntegerField;
    ClientConsE120IpdGERCGA: TStringField;
    ClientConsE120IpdRESMAN: TStringField;
    ClientConsE120IpdINDAED: TStringField;
    ClientConsE120IpdNUMCTR: TIntegerField;
    ClientConsE120IpdDATCPT: TDateTimeField;
    ClientConsE120IpdSEQCVP: TIntegerField;
    ClientConsE120IpdUSUGER: TBCDField;
    ClientConsE120IpdDATGER: TDateTimeField;
    ClientConsE120IpdHORGER: TIntegerField;
    ClientConsE120IpdQTDPPF: TFMTBCDField;
    ClientConsE120IpdCMPKIT: TStringField;
    ClientConsE120IpdFILOCP: TIntegerField;
    ClientConsE120IpdNUMOCP: TIntegerField;
    ClientConsE120IpdSEQIPO: TIntegerField;
    ClientConsE120IpdUNIVEN: TStringField;
    ClientConsE120IpdQTDVEN: TFMTBCDField;
    ClientConsE120IpdPREVEN: TFMTBCDField;
    ClientConsE120IpdPREBRU: TFMTBCDField;
    ClientConsE120IpdFILCTR: TIntegerField;
    ClientConsE120IpdCTRCVS: TIntegerField;
    ClientConsE120IpdCPTCVS: TDateTimeField;
    ClientConsE120IpdSEQCVS: TIntegerField;
    ClientConsE120IpdCODAVC: TIntegerField;
    ClientConsE120IpdCODFXA: TStringField;
    ClientConsE120IpdCODPGR: TStringField;
    ClientConsE120IpdIDXGRD: TIntegerField;
    ClientConsE120IpdCODMAR: TStringField;
    ClientConsE120IpdCODCLC: TStringField;
    ClientConsE120IpdPERDS1: TBCDField;
    ClientConsE120IpdPERDS2: TBCDField;
    ClientConsE120IpdPERDS3: TBCDField;
    ClientConsE120IpdPERDS4: TBCDField;
    ClientConsE120IpdFILPRD: TIntegerField;
    ClientConsE120IpdVLRRIS: TBCDField;
    ClientConsE120IpdINDPCE: TStringField;
    ClientConsE120IpdINDPCR: TStringField;
    ClientConsE120IpdPERPIT: TBCDField;
    ClientConsE120IpdVLRBPT: TBCDField;
    ClientConsE120IpdVLRPIT: TBCDField;
    ClientConsE120IpdPERCRT: TBCDField;
    ClientConsE120IpdVLRBCT: TBCDField;
    ClientConsE120IpdVLRCRT: TBCDField;
    ClientConsE120IpdPERCSL: TBCDField;
    ClientConsE120IpdVLRBCL: TBCDField;
    ClientConsE120IpdVLRCSL: TBCDField;
    ClientConsE120IpdPEROUR: TBCDField;
    ClientConsE120IpdVLRBOR: TBCDField;
    ClientConsE120IpdVLROUR: TBCDField;
    ClientConsE120IpdPERIRF: TBCDField;
    ClientConsE120IpdVLRBIR: TBCDField;
    ClientConsE120IpdVLRIRF: TBCDField;
    ClientConsE120IpdFILNFC: TIntegerField;
    ClientConsE120IpdFORNFC: TIntegerField;
    ClientConsE120IpdNUMNFC: TIntegerField;
    ClientConsE120IpdSNFNFC: TStringField;
    ClientConsE120IpdSEQIPC: TIntegerField;
    ClientConsE120IpdNCTLCL: TStringField;
    ClientConsE120IpdNRECLI: TStringField;
    ClientConsE120IpdNOSICL: TBCDField;
    ClientConsE120IpdNOSFCL: TBCDField;
    ClientConsE120IpdNOCCL1: TStringField;
    ClientConsE120IpdNOCCL2: TStringField;
    ClientConsE120IpdNOCCL3: TStringField;
    ClientConsE120IpdCODAGC: TStringField;
    ClientConsE120IpdCTRCVP: TIntegerField;
    ClientConsE120IpdCPTCVP: TDateTimeField;
    ClientConsE120IpdSEQCTR: TIntegerField;
    ClientConsE120IpdINDAPE: TIntegerField;
    ClientConsE120IpdOBSIPD: TStringField;
    ClientConsE120IpdSEQISP: TIntegerField;
    ClientConsE120IpdEMPOCP: TIntegerField;
    ClientConsE120IpdVLRBPF: TBCDField;
    ClientConsE120IpdPERPIF: TBCDField;
    ClientConsE120IpdVLRPIF: TBCDField;
    ClientConsE120IpdVLRBCF: TBCDField;
    ClientConsE120IpdPERCFF: TBCDField;
    ClientConsE120IpdVLRCFF: TBCDField;
    ClientConsE120IpdPERDS5: TBCDField;
    ClientConsE120IpdVLRDS5: TBCDField;
    ClientConsE120IpdAGRNEC: TStringField;
    ClientConsE120IpdAGRPAI: TStringField;
    ClientConsE120IpdORIRES: TStringField;
    ClientConsE120IpdQTDBPF: TBCDField;
    ClientConsE120IpdALIPIF: TBCDField;
    ClientConsE120IpdQTDBCF: TBCDField;
    ClientConsE120IpdALICFF: TBCDField;
    ClientConsE120IpdQTDBIP: TBCDField;
    ClientConsE120IpdALIIPI: TBCDField;
    ClientConsE120IpdINDIPM: TStringField;
    ClientConsE120IpdFILREM: TIntegerField;
    ClientConsE120IpdSNFREM: TStringField;
    ClientConsE120IpdNFVREM: TIntegerField;
    ClientConsE120IpdIPVREM: TIntegerField;
    ClientConsE120IpdCODCNV: TIntegerField;
    ClientConsE120IpdCODREP: TIntegerField;
    ClientConsE120IpdUSU_TIPCMB: TIntegerField;
    ClientConsE120IpdUSU_CODTEC1: TStringField;
    ClientConsE120IpdUSU_CODTEC2: TStringField;
    ClientConsE120IpdUSU_QTDREP: TIntegerField;
    ClientConsE120IpdUSU_QTDDIV: TBCDField;
    ClientConsE120IpdUSU_MEDLAR: TBCDField;
    ClientConsE120IpdUSU_MEDCOM: TBCDField;
    ClientConsE120IpdUSU_MEDALT: TBCDField;
    ClientConsE120IpdUSU_PERDESC1: TBCDField;
    ClientConsE120IpdUSU_PERDESC2: TBCDField;
    ClientConsE120IpdUSU_PERDESC3: TBCDField;
    ClientConsE120IpdUSU_PERDESC4: TBCDField;
    ClientConsE120IpdUSU_PERDESC5: TBCDField;
    ClientConsE120IpdUSU_PERDESC6: TBCDField;
    ClientConsE120IpdUSU_CANAPR: TFMTBCDField;
    ClientConsE120IpdUSU_TOTDSC: TBCDField;
    ClientConsE120IpdUSU_TOTDSCORI: TBCDField;
    ClientConsE120IpdUSU_VLRORI: TBCDField;
    ClientConsE120IpdUSU_NUMCOM: TIntegerField;
    ClientConsE120IpdPREBAS: TFMTBCDField;
    ClientConsE120IpdTOLMEN: TBCDField;
    ClientConsE120IpdTOLMAI: TBCDField;
    ClientConsE120IpdVLTMAI: TFMTBCDField;
    ClientConsE120IpdVLTMEN: TFMTBCDField;
    btnMostrar: TBitBtn;
    dbg2: TDBGrid;
    ConsE120Ped: TADOQuery;
    ProviderConsE120Ped: TDataSetProvider;
    ClientConsE120Ped: TClientDataSet;
    dsClientConsE120Ped: TDataSource;
    ConsE120PedCODEMP: TIntegerField;
    ConsE120PedCODFIL: TIntegerField;
    ConsE120PedNUMPED: TIntegerField;
    ConsE120PedDATEMI: TDateTimeField;
    ConsE120PedSITPED: TIntegerField;
    ConsE120PedNOMCLI: TStringField;
    ConsE120PedCIDCLI: TStringField;
    ConsE120PedSIGUFS: TStringField;
    ClientConsE120PedCODEMP: TIntegerField;
    ClientConsE120PedCODFIL: TIntegerField;
    ClientConsE120PedNUMPED: TIntegerField;
    ClientConsE120PedDATEMI: TDateTimeField;
    ClientConsE120PedSITPED: TIntegerField;
    ClientConsE120PedNOMCLI: TStringField;
    ClientConsE120PedCIDCLI: TStringField;
    ClientConsE120PedSIGUFS: TStringField;
    btnLiberarSemDesc: TBitBtn;
    btnLiberarDescMaior: TBitBtn;
    ClientConsE120IpdImagem: TStringField;
    ImageList1: TImageList;
    ConsE120PedCODREP: TIntegerField;
    ClientConsE120PedCODREP: TIntegerField;
    procedure btnMostrarClick(Sender: TObject);
    procedure ClientConsE120PedAfterScroll(DataSet: TDataSet);
    procedure btnValidarClick(Sender: TObject);
    procedure edtPrecargaKeyPress(Sender: TObject; var Key: Char);
    procedure edtPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnLiberarSemDescClick(Sender: TObject);
    procedure btnLiberarDescMaiorClick(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FValidarPedidos: TFValidarPedidos;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFValidarPedidos.btnLiberarDescMaiorClick(Sender: TObject);
var vnPerDec : Double;
begin
if not ClientConsE120Ped.IsEmpty then
   begin
    vnPerDec := 100 - ((ClientConsE120IpdPREUNI.AsFloat * 100) / ClientConsE120IpdPREBAS.AsFloat);
    if vnPerDec > 30 then
       begin
          if Application.MessageBox('Deseja realmente liberar desconto fora da faixa permitida','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
             begin
                 DmOra.ConsSql.Close;
                 DmOra.ConsSql.SQL.Clear;
                 DmOra.ConsSql.SQL.Add('UPDATE E120IPD SET USU_TIPCMB = 1');
                 DmOra.ConsSql.SQL.Add('               WHERE');
                 DmOra.ConsSql.SQL.Add('               CODEMP = :CODEMP AND');
                 DmOra.ConsSql.SQL.Add('               CODFIL = :CODFIL AND');
                 DmOra.ConsSql.SQL.Add('               NUMPED = :NUMPED AND');
                 DmOra.ConsSql.SQL.Add('               SEQIPD = :SEQIPD');
                 DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := ClientConsE120PedCODEMP.Value;
                 DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := ClientConsE120PedCODFIL.Value;
                 DmOra.ConsSql.Parameters.ParamByName('NUMPED').Value := ClientConsE120PedNUMPED.Value;
                 DmOra.ConsSql.Parameters.ParamByName('SEQIPD').Value := ClientConsE120IpdSEQIPD.Value;
                 DmOra.ConsSql.ExecSQL;

                 ClientConsE120Ipd.Delete;
             end;
       end;
   end;

end;

procedure TFValidarPedidos.btnLiberarSemDescClick(Sender: TObject);
var vnPerDec : Double;
begin
if not ClientConsE120Ped.IsEmpty then
   begin
    vnPerDec := 100 - ((ClientConsE120IpdPREUNI.AsFloat * 100) / ClientConsE120IpdPREBAS.AsFloat);
    if vnPerDec > 30 then
       begin
          Application.MessageBox('Produto com desconto fora da faixa permitida','Aviso',MB_ICONWARNING+MB_OK);
          Abort;
       end;

    if Application.MessageBox('Deseja realmente permitir produto sem desconto','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
       begin
           DmOra.ConsSql.Close;
           DmOra.ConsSql.SQL.Clear;
           DmOra.ConsSql.SQL.Add('UPDATE E120IPD SET USU_TIPCMB = 1');
           DmOra.ConsSql.SQL.Add('               WHERE');
           DmOra.ConsSql.SQL.Add('               CODEMP = :CODEMP AND');
           DmOra.ConsSql.SQL.Add('               CODFIL = :CODFIL AND');
           DmOra.ConsSql.SQL.Add('               NUMPED = :NUMPED AND');
           DmOra.ConsSql.SQL.Add('               SEQIPD = :SEQIPD');
           DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := ClientConsE120PedCODEMP.Value;
           DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := ClientConsE120PedCODFIL.Value;
           DmOra.ConsSql.Parameters.ParamByName('NUMPED').Value := ClientConsE120PedNUMPED.Value;
           DmOra.ConsSql.Parameters.ParamByName('SEQIPD').Value := ClientConsE120IpdSEQIPD.Value;
           DmOra.ConsSql.ExecSQL;

           ClientConsE120Ipd.Delete;
       end;
   end;
end;

procedure TFValidarPedidos.btnMostrarClick(Sender: TObject);
begin

   if (edtPrecarga.Value = 0) and (edtPedido.Value = 0) then
       begin
          Application.MessageBox('Informe uma Pré-Carga ou um Pedido','Aviso',MB_ICONWARNING+MB_OK);
          Abort;
       end
   else
       begin
          ClientConsE120Ped.Close;
          ConsE120Ped.Close;
          ConsE120Ped.Close;
          ConsE120Ped.SQL.Clear;
          ConsE120Ped.SQL.Add('SELECT E120PED.CODEMP,E120PED.CODFIL,E120PED.NUMPED,E120PED.DATEMI,');
          ConsE120Ped.SQL.Add('       E120PED.SITPED,E120PED.CODREP,E085CLI.NOMCLI,E085CLI.CIDCLI,E085CLI.SIGUFS');
          ConsE120Ped.SQL.Add(' FROM E120PED');
          ConsE120Ped.SQL.Add(' INNER JOIN E085CLI ON E085CLI.CODCLI = E120PED.CODCLI');
          ConsE120Ped.SQL.Add(' WHERE');
          ConsE120Ped.SQL.Add(' E120PED.CODEMP = 1 AND');
          ConsE120Ped.SQL.Add(' E120PED.SITPED IN (1,2) ');

          if edtPrecarga.Value > 0 then
             begin
               ConsE120Ped.SQL.Add(' AND E120PED.USU_PRECAR = :PRECAR');
               ConsE120Ped.Parameters.ParamByName('PRECAR').Value := edtPrecarga.Value;
             end
          else
          if edtPedido.Value > 0 then
             begin
               ConsE120Ped.SQL.Add(' AND E120PED.NUMPED = :NUMPED');
               ConsE120Ped.Parameters.ParamByName('NUMPED').Value := edtPedido.Value;
             end;

          ConsE120Ped.SQL.Add('ORDER BY E120PED.NUMPED');
          ConsE120Ped.Open;
          ClientConsE120Ped.Open;

          if ClientConsE120Ped.IsEmpty then
             begin
               ClientConsE120Ipd.Close;
             end;

       end;
end;

procedure TFValidarPedidos.btnValidarClick(Sender: TObject);
var vnPerDec : Double;
begin
   if not ClientConsE120Ped.IsEmpty then
      begin
         ClientConsE120Ped.First;
         while not ClientConsE120Ped.Eof do
            begin

              ClientConsE120Ipd.First;
              while not ClientConsE120Ipd.Eof do
                 begin
                   if ClientConsE120IpdUSU_TIPCMB.Value <> 1 then //ESTOU USANDO O TIPCMB COMO CAMPO DE INDICAIVO SE O ITEM ESTA VALIDADO
                      begin
                         if ClientConsE120IpdPREUNI.AsFloat = ClientConsE120IpdPREBAS.AsFloat then
                            begin
                                Application.MessageBox('Item sem desconto','Aviso',MB_ICONWARNING+MB_OK);
                                ClientConsE120Ipd.Edit;
                                ClientConsE120IpdUSU_TIPCMB.Value := 2;
                                ClientConsE120Ipd.Post;
                                Abort;
                            end;

                            vnPerDec := 100 - ((ClientConsE120IpdPREUNI.AsFloat * 100) / ClientConsE120IpdPREBAS.AsFloat);
                            if ((ClientConsE120IpdCODFAM.Value = '01001') and (vnPerDec > 14) and (ClientConsE120PedCODREP.AsInteger in [1,15,19])) or
                               ((ClientConsE120IpdCODFAM.Value = '01001') and (vnPerDec > 9) and not (ClientConsE120PedCODREP.AsInteger in [1,15,19])) or
                               ((ClientConsE120IpdCODFAM.Value <> '01001') and (vnPerDec > 20) and (ClientConsE120PedCODREP.AsInteger in [1,15,19])) or
                               ((ClientConsE120IpdCODFAM.Value <> '01001') and (vnPerDec > 15) and not (ClientConsE120PedCODREP.AsInteger in [1,15,19])) then
                               begin
                                  Application.MessageBox('Produto com desconto fora da faixa permitida','Aviso',MB_ICONWARNING+MB_OK);
                                  ClientConsE120Ipd.Edit;
                                  ClientConsE120IpdUSU_TIPCMB.Value := 2;
                                  ClientConsE120Ipd.Post;
                                  Abort;
                               end;
                      end;

                   ClientConsE120Ipd.Delete;
                 end;

               DmOra.ConsSql.Close;
               DmOra.ConsSql.SQL.Clear;
               DmOra.ConsSql.SQL.Add('UPDATE E120PED SET USU_PEDVALID = ''S''');
               DmOra.ConsSql.SQL.Add('               WHERE');
               DmOra.ConsSql.SQL.Add('               CODEMP = :CODEMP AND');
               DmOra.ConsSql.SQL.Add('               CODFIL = :CODFIL AND');
               DmOra.ConsSql.SQL.Add('               NUMPED = :NUMPED');
               DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := ClientConsE120PedCODEMP.Value;
               DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := ClientConsE120PedCODFIL.Value;
               DmOra.ConsSql.Parameters.ParamByName('NUMPED').Value := ClientConsE120PedNUMPED.Value;
               DmOra.ConsSql.ExecSQL;

              ClientConsE120Ped.Delete;
            end;
      end;

end;

procedure TFValidarPedidos.ClientConsE120PedAfterScroll(DataSet: TDataSet);
begin
    ClientConsE120Ipd.Close;
    ConsE120Ipd.Close;
    ConsE120Ipd.Parameters.ParamByName('NUMPED').Value := ClientConsE120PedNUMPED.Value;
    ConsE120Ipd.Open;
    ClientConsE120Ipd.Open;
end;

procedure TFValidarPedidos.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.FieldName = 'Imagem' then
    begin
        dbg1.Canvas.FillRect(Rect);
        // Desenha o Quadrado
      //  ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,0);

        // Desenha o check sobre o quadrado
        if ClientConsE120IpdUSU_TIPCMB.Value = 1 then
           begin
            ImageList1.Draw(dbg1.Canvas,Rect.Left+10,Rect.Top+1,1);
           end
        else
        if ClientConsE120IpdUSU_TIPCMB.Value = 2 then
           begin
            ImageList1.Draw(dbg1.Canvas,Rect.Left+10,Rect.Top+1,3);
           end;


    end;
end;

procedure TFValidarPedidos.edtPedidoKeyPress(Sender: TObject; var Key: Char);
begin
if Key = '-' then
     Key := #0;
end;

procedure TFValidarPedidos.edtPrecargaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = '-' then
     Key := #0;
end;

procedure TFValidarPedidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
