unit UDividirPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, DB, ADODB, DBCtrls, Grids,
  DBGrids, Provider, DBClient, Buttons, ExtCtrls, pngimage, xmldom, Xmlxform,
  XMLIntf, msxmldom, XMLDoc;

type
  TFDividirPedidos = class(TForm)
    Label1: TLabel;
    edtNumPed: TCurrencyEdit;
    ConsE120Ped: TADOQuery;
    ConsE120PedCODEMP: TIntegerField;
    ConsE120PedCODFIL: TIntegerField;
    ConsE120PedNUMPED: TIntegerField;
    ConsE120PedTIPPED: TIntegerField;
    ConsE120PedPRCPED: TIntegerField;
    ConsE120PedTNSPRO: TStringField;
    ConsE120PedTNSSER: TStringField;
    ConsE120PedDATEMI: TDateTimeField;
    ConsE120PedHOREMI: TIntegerField;
    ConsE120PedDATPRV: TDateTimeField;
    ConsE120PedHORPRV: TIntegerField;
    ConsE120PedOBSPED: TStringField;
    ConsE120PedCODCLI: TIntegerField;
    ConsE120PedCATCLI: TIntegerField;
    ConsE120PedQTDVPF: TIntegerField;
    ConsE120PedQTDMFP: TIntegerField;
    ConsE120PedINDAGR: TStringField;
    ConsE120PedSEQENT: TIntegerField;
    ConsE120PedSEQCOB: TIntegerField;
    ConsE120PedSEQCTO: TIntegerField;
    ConsE120PedPEDCLI: TStringField;
    ConsE120PedCODROE: TStringField;
    ConsE120PedSEQROE: TIntegerField;
    ConsE120PedCODREP: TIntegerField;
    ConsE120PedCODMOE: TStringField;
    ConsE120PedCODMCP: TStringField;
    ConsE120PedDATMFP: TDateTimeField;
    ConsE120PedCOTMFP: TFMTBCDField;
    ConsE120PedDATMOE: TDateTimeField;
    ConsE120PedCOTMOE: TFMTBCDField;
    ConsE120PedFECMOE: TStringField;
    ConsE120PedCODFCR: TStringField;
    ConsE120PedDATFCR: TDateTimeField;
    ConsE120PedCODCPG: TStringField;
    ConsE120PedPGTANT: TStringField;
    ConsE120PedCODFPG: TIntegerField;
    ConsE120PedQTDABE: TFMTBCDField;
    ConsE120PedQTDAEN: TFMTBCDField;
    ConsE120PedCODTRA: TIntegerField;
    ConsE120PedCODRED: TIntegerField;
    ConsE120PedCODVIA: TStringField;
    ConsE120PedPLAVEI: TStringField;
    ConsE120PedVLRFUM: TBCDField;
    ConsE120PedQTDFRE: TFMTBCDField;
    ConsE120PedFORFRE: TIntegerField;
    ConsE120PedVLRFRE: TBCDField;
    ConsE120PedCIFFOB: TStringField;
    ConsE120PedVLRSEG: TBCDField;
    ConsE120PedVLREMB: TBCDField;
    ConsE120PedVLRENC: TBCDField;
    ConsE120PedVLROUT: TBCDField;
    ConsE120PedVLRDAR: TBCDField;
    ConsE120PedVLRFRD: TBCDField;
    ConsE120PedVLROUD: TBCDField;
    ConsE120PedPERDS1: TBCDField;
    ConsE120PedPERDS2: TBCDField;
    ConsE120PedPERDS3: TBCDField;
    ConsE120PedPERDS4: TBCDField;
    ConsE120PedVLRBPR: TBCDField;
    ConsE120PedVLRDPR: TBCDField;
    ConsE120PedVLRBSE: TBCDField;
    ConsE120PedVLRDSE: TBCDField;
    ConsE120PedVLRDS1: TBCDField;
    ConsE120PedVLRDS2: TBCDField;
    ConsE120PedVLRDS3: TBCDField;
    ConsE120PedVLRDS4: TBCDField;
    ConsE120PedVLROFE: TBCDField;
    ConsE120PedVLRDZF: TBCDField;
    ConsE120PedVLRBIP: TBCDField;
    ConsE120PedVLRIPI: TBCDField;
    ConsE120PedVLRBIC: TBCDField;
    ConsE120PedVLRICM: TBCDField;
    ConsE120PedVLRBSI: TBCDField;
    ConsE120PedVLRSIC: TBCDField;
    ConsE120PedVLRBSP: TBCDField;
    ConsE120PedVLRSTP: TBCDField;
    ConsE120PedVLRBSC: TBCDField;
    ConsE120PedVLRSTC: TBCDField;
    ConsE120PedVLRBIS: TBCDField;
    ConsE120PedVLRISS: TBCDField;
    ConsE120PedVLRBIR: TBCDField;
    ConsE120PedVLRIRF: TBCDField;
    ConsE120PedVLRBIN: TBCDField;
    ConsE120PedVLRINS: TBCDField;
    ConsE120PedVLRBCO: TBCDField;
    ConsE120PedVLRCOM: TBCDField;
    ConsE120PedVLRLPR: TBCDField;
    ConsE120PedVLRLSE: TBCDField;
    ConsE120PedVLRLOU: TBCDField;
    ConsE120PedVLRLIQ: TBCDField;
    ConsE120PedVLRFIN: TBCDField;
    ConsE120PedVLRADT: TBCDField;
    ConsE120PedQTDORI: TFMTBCDField;
    ConsE120PedVLRORI: TBCDField;
    ConsE120PedTEMPAR: TStringField;
    ConsE120PedCODPOR: TStringField;
    ConsE120PedCODCRT: TStringField;
    ConsE120PedSITPED: TIntegerField;
    ConsE120PedCODMOT: TIntegerField;
    ConsE120PedOBSMOT: TStringField;
    ConsE120PedPEDBLO: TStringField;
    ConsE120PedUSUBLO: TBCDField;
    ConsE120PedDATBLO: TDateTimeField;
    ConsE120PedHORBLO: TIntegerField;
    ConsE120PedINDSIG: TStringField;
    ConsE120PedVERCAL: TIntegerField;
    ConsE120PedHORINI: TIntegerField;
    ConsE120PedHORFIM: TIntegerField;
    ConsE120PedUSUGER: TBCDField;
    ConsE120PedDATGER: TDateTimeField;
    ConsE120PedHORGER: TIntegerField;
    ConsE120PedPERFRE: TBCDField;
    ConsE120PedPERSEG: TBCDField;
    ConsE120PedPEREMB: TBCDField;
    ConsE120PedPERENC: TBCDField;
    ConsE120PedPEROUT: TBCDField;
    ConsE120PedCODSAC: TBCDField;
    ConsE120PedCODOPE: TIntegerField;
    ConsE120PedCODVEN: TIntegerField;
    ConsE120PedPEDPAL: TIntegerField;
    ConsE120PedACEPAR: TStringField;
    ConsE120PedPEROF1: TBCDField;
    ConsE120PedPEROF2: TBCDField;
    ConsE120PedUSUFEC: TBCDField;
    ConsE120PedDATFEC: TDateTimeField;
    ConsE120PedHORFEC: TIntegerField;
    ConsE120PedCLIREL: TIntegerField;
    ConsE120PedVLRBCL: TBCDField;
    ConsE120PedVLRCSL: TBCDField;
    ConsE120PedVLRBPT: TBCDField;
    ConsE120PedVLRPIT: TBCDField;
    ConsE120PedVLRBCT: TBCDField;
    ConsE120PedVLRCRT: TBCDField;
    ConsE120PedVLRBOR: TBCDField;
    ConsE120PedVLROUR: TBCDField;
    ConsE120PedCODMAR: TStringField;
    ConsE120PedCODSRO: TStringField;
    ConsE120PedFILFAT: TIntegerField;
    ConsE120PedCODCDI: TIntegerField;
    ConsE120PedCODLIP: TStringField;
    ConsE120PedCEPFRE: TIntegerField;
    ConsE120PedVLRRIS: TBCDField;
    ConsE120PedANAEMB: TStringField;
    ConsE120PedNUMEMP: TStringField;
    ConsE120PedQTDANE: TIntegerField;
    ConsE120PedDATAGE: TDateTimeField;
    ConsE120PedFILNCO: TIntegerField;
    ConsE120PedSNFNCO: TStringField;
    ConsE120PedNUMNCO: TIntegerField;
    ConsE120PedEXPWMS: TIntegerField;
    ConsE120PedVLRBPF: TBCDField;
    ConsE120PedVLRPIF: TBCDField;
    ConsE120PedVLRBCF: TBCDField;
    ConsE120PedVLRCFF: TBCDField;
    ConsE120PedCODAPC: TIntegerField;
    ConsE120PedSOMFRE: TStringField;
    ConsE120PedQTDITP: TIntegerField;
    ConsE120PedQTDITS: TIntegerField;
    ConsE120PedPERDS5: TBCDField;
    ConsE120PedVLRDS5: TBCDField;
    ConsE120PedROTANX: TIntegerField;
    ConsE120PedNUMANX: TBCDField;
    ConsE120PedNUMNSU: TBCDField;
    ConsE120PedDATNSU: TDateTimeField;
    ConsE120PedHORNSU: TIntegerField;
    ConsE120PedINDEXP: TIntegerField;
    ConsE120PedFATPED: TIntegerField;
    ConsE120PedQTDBPF: TBCDField;
    ConsE120PedQTDBCF: TBCDField;
    ConsE120PedQTDBIP: TBCDField;
    ConsE120PedUSU_FILDIV: TIntegerField;
    ConsE120PedUSU_PEDDIV: TIntegerField;
    ConsE120PedUSU_USUDIV: TBCDField;
    ConsE120PedUSU_DATDIV: TDateTimeField;
    ConsE120PedUSU_HORDIV: TIntegerField;
    ConsE120PedUSU_PEDTRA: TStringField;
    ConsE120PedUSU_PRECAR: TIntegerField;
    ConsE120PedUSU_USUDES: TBCDField;
    ConsE120PedUSU_DATDES: TDateTimeField;
    ConsE120PedUSU_HORDES: TIntegerField;
    ConsE120PedUSU_NUMCOM: TIntegerField;
    ConsE120PedNUMCES: TBCDField;
    ConsE120PedVENCAL: TStringField;
    ConsE120PedDESDEF: TStringField;
    ConsE120PedANOVEI: TStringField;
    ConsE120PedNUMREN: TStringField;
    ConsE120PedDESMOD: TStringField;
    ConsE120PedTIPDAV: TIntegerField;
    ConsE120PedVLRECF: TBCDField;
    ConsE120PedPERECF: TBCDField;
    ConsE120PedTEMAVA: TStringField;
    ConsE120PedUSU_PEDVALID: TStringField;
    ConsE120PedCODTAB: TStringField;
    ConsE120PedSENAPR: TStringField;
    ConsE120PedUSUAPR: TBCDField;
    ConsE120PedDATAPR: TDateTimeField;
    ConsE120PedHORAPR: TIntegerField;
    ConsE120PedSITPAC: TIntegerField;
    ConsE120PedUSUPAC: TBCDField;
    ConsE120PedQTDPAC: TIntegerField;
    ConsE120PedUSU_NUMPEDORI: TIntegerField;
    ConsE120PedUSU_PRECARORI: TIntegerField;
    ConsE120PedNOMCLI: TStringField;
    ConsE120PedAPECLI: TStringField;
    ConsE120PedCGCCPF: TBCDField;
    ConsE120PedENDCLI: TStringField;
    ConsE120PedCPLEND: TStringField;
    ConsE120PedCEPCLI: TIntegerField;
    ConsE120PedBAICLI: TStringField;
    ConsE120PedCIDCLI: TStringField;
    ConsE120PedSIGUFS: TStringField;
    ConsE120PedFONCLI: TStringField;
    ConsE120PedDATLIM: TDateTimeField;
    ConsE120PedVLRLIM: TBCDField;
    ConsE120PedLIMAPR: TStringField;
    ConsE120PedNOMREP: TStringField;
    ConsE120PedAPEREP: TStringField;
    ConsE120PedDESCPG: TStringField;
    dsConsE120Ped: TDataSource;
    Label2: TLabel;
    dbedtTNSPRO: TDBEdit;
    Label3: TLabel;
    dbedtDATEMI: TDBEdit;
    Label4: TLabel;
    dbedtCODCLI: TDBEdit;
    Label5: TLabel;
    dbedtCODREP: TDBEdit;
    Label6: TLabel;
    dbedtCODCPG: TDBEdit;
    dbedtDESCPG: TDBEdit;
    dbedtAPEREP: TDBEdit;
    ConsE120PedvaSitPed: TStringField;
    dbedtvaSitPed: TDBEdit;
    Label7: TLabel;
    dbedtNOMCLI: TDBEdit;
    dbedtCIDCLI: TDBEdit;
    dbedtSIGUFS: TDBEdit;
    dbedtFONCLI: TDBEdit;
    ConsE120PedNENCLI: TStringField;
    dbedtCGCCPF: TDBEdit;
    dbgItens: TDBGrid;
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
    ConsE120IpdPROMON: TStringField;
    ConsE120IpdPROENT: TStringField;
    ConsE120IpdPERMGC: TFMTBCDField;
    ConsE120IpdVARSER: TStringField;
    ConsE120IpdRETMAT: TStringField;
    ConsE120IpdSENAPR: TStringField;
    ConsE120IpdUSUAPR: TBCDField;
    ConsE120IpdDATAPR: TDateTimeField;
    ConsE120IpdHORAPR: TIntegerField;
    ConsE120IpdTIPCUR: TIntegerField;
    ConsE120IpdCODFIN: TIntegerField;
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
    ClientConsE120IpdPROMON: TStringField;
    ClientConsE120IpdPROENT: TStringField;
    ClientConsE120IpdPERMGC: TFMTBCDField;
    ClientConsE120IpdVARSER: TStringField;
    ClientConsE120IpdRETMAT: TStringField;
    ClientConsE120IpdSENAPR: TStringField;
    ClientConsE120IpdUSUAPR: TBCDField;
    ClientConsE120IpdDATAPR: TDateTimeField;
    ClientConsE120IpdHORAPR: TIntegerField;
    ClientConsE120IpdTIPCUR: TIntegerField;
    ClientConsE120IpdCODFIN: TIntegerField;
    dsClientConsE120Ipd: TDataSource;
    imgAdvertencia: TImage;
    btnDividir: TBitBtn;
    ConsE120PedSITCLI: TStringField;
    ClientConsE120IpdvnQtdItens: TAggregateField;
    Label8: TLabel;
    dbedtvnQtdItens: TDBEdit;
    ClientConsE120IpdvnVlrItens: TAggregateField;
    Label9: TLabel;
    dbedtvnVlrItens: TDBEdit;
    ClientConsE120IpdvnQtdDividir: TAggregateField;
    xDocumentoXML: TXMLDocument;
    memo1: TMemo;
    XMLRetorno: TXMLDocument;
    XMLRetornoIte: TXMLDocument;
    procedure ConsE120PedCalcFields(DataSet: TDataSet);
    procedure edtNumPedExit(Sender: TObject);
    procedure ClientConsE120IpdBeforePost(DataSet: TDataSet);
    procedure dbgItensColExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure imgAdvertenciaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vaListaAdvertencia : TStringList;
  end;

var
  FDividirPedidos: TFDividirPedidos;

implementation

uses  SOAPHTTPTrans, WSDLNode, WinInet, UDmOra, UAdvertenciaDividirPedido;

{$R *.dfm}

procedure TFDividirPedidos.btnDividirClick(Sender: TObject);
const
     xLocalFileName = 'D:\TesteWebService\Retorno_Web_Service.XML';
     xLocalFileNameIte = 'D:\TesteWebService\Retorno_Web_Service_Ite.XML';
var  xConnectSender : THTTPReqResp;
     xWSDLAdr : TWSDLView;
     StreamRetorno: TMemoryStream;
     StreamString : TStringStream;
     //xDocumentoXML : TXMLDocument;
     conntimeout : Integer;
     sendtimeout : Integer;
     recvtimeout : Integer;
     a : string;
     xml,xmlCan : TStringList;
     noResult,noRespostaPedido,noTemp: IXMLNode; //variaveis para leitura do retorno

begin
  {if ClientConsE120IpdvnQtdDividir.AsInteger = 0 then
     begin
       imgAdvertencia.Visible := True;
       vaListaAdvertencia.Add('Informe a quantidade a ser dividida dos produtos');
     end;}

      //monta o xml para o envio
      xml := TStringList.Create;
      xml.Add('<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ser="http://services.senior.com.br">');
      xml.Add('<soapenv:Header/>');
        xml.Add('<soapenv:Body>');
          xml.Add('<ser:GravarPedidos>');
            xml.Add('<user>douglas</user>');
            xml.Add('<password>123</password>');
            xml.Add('<encryption>0</encryption>');
            xml.Add('<parameters>');
              xml.Add('<pedido>');
                xml.Add('<opeExe>I</opeExe>');
                xml.Add('<numPed>'+IntToStr(ConsE120PedNUMPED.AsInteger)+'</numPed>');
                xml.Add('<codEmp>1</codEmp>');
                xml.Add('<codFil>101</codFil>');
                xml.Add('<tnsPro>90100</tnsPro>');
                xml.Add('<codCli>'+IntToStr(ConsE120PedCODCLI.AsInteger)+'</codCli>');
                xml.Add('<codCpg>'+ConsE120PedCODCPG.AsString+'</codCpg>');
                xml.Add('<datEmi>'+DateToStr(Date)+'</datEmi>');

                ClientConsE120Ipd.First;
                while not ClientConsE120Ipd.Eof do
                   begin
                      if ClientConsE120IpdUSU_QTDDIV.AsInteger > 0 then
                         begin
                            xml.Add('<produto>');
                              xml.Add('<opeExe>I</opeExe> ');
                              xml.Add('<codDer>'+ClientConsE120IpdCODDER.AsString+'</codDer>  ');
                              xml.Add('<codPro>'+ClientConsE120IpdCODPRO.AsString+'</codPro>');
                              xml.Add('<codTpr>0001</codTpr>');
                              xml.Add('<preUni>'+FloatToStr(ClientConsE120IpdPREUNI.AsFloat)+'</preUni>');
                              xml.Add('<qtdPed>'+IntToStr(ClientConsE120IpdUSU_QTDDIV.AsInteger)+'</qtdPed>');
                              xml.Add('<tnsPro>'+ClientConsE120IpdTNSPRO.AsString+'</tnsPro>');
                            xml.Add('</produto>');
                         end;

                     ClientConsE120Ipd.Next;
                   end;

              xml.Add('</pedido>');
            xml.Add('</parameters>');
          xml.Add('</ser:GravarPedidos>');
        xml.Add('</soapenv:Body>');
      xml.Add('</soapenv:Envelope>');

      //monta o xml para cancelar o saldo que esta sendo transferido
      xmlCan := TStringList.Create;
      xmlCan.Add('<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ser="http://services.senior.com.br">');
      xmlCan.Add('<soapenv:Header/>');
        xmlCan.Add('<soapenv:Body>');
          xmlCan.Add('<ser:GravarPedidos>');
            xmlCan.Add('<user>douglas</user>');
            xmlCan.Add('<password>123</password>');
            xmlCan.Add('<encryption>0</encryption>');
            xmlCan.Add('<parameters>');
              xmlCan.Add('<pedido>');
                xmlCan.Add('<opeExe>A</opeExe>');
                xmlCan.Add('<numPed>'+IntToStr(ConsE120PedNUMPED.AsInteger)+'</numPed>');
                xmlCan.Add('<codEmp>1</codEmp>');
                xmlCan.Add('<codFil>1</codFil>');

                ClientConsE120Ipd.First;
                while not ClientConsE120Ipd.Eof do
                   begin
                      if ClientConsE120IpdUSU_QTDDIV.AsInteger > 0 then
                         begin
                            xmlCan.Add('<produto>');
                              xmlCan.Add('<opeExe>A</opeExe> ');
                              xmlCan.Add('<seqIpd>'+IntToStr(ClientConsE120IpdSEQIPD.AsInteger) +'</seqIpd>');
                              xmlCan.Add('<codDer>'+ClientConsE120IpdCODDER.AsString+'</codDer>  ');
                              xmlCan.Add('<codPro>'+ClientConsE120IpdCODPRO.AsString+'</codPro>');
                              xmlCan.Add('<qtdCan>'+IntToStr(ClientConsE120IpdUSU_QTDDIV.AsInteger)+'</qtdCan>');
                              xmlCan.Add('<datEnt>'+DateToStr(Date)+'</datEnt>');
                            xmlCan.Add('</produto>');
                         end;

                     ClientConsE120Ipd.Next;
                   end;

              xmlCan.Add('</pedido>');
            xmlCan.Add('</parameters>');
          xmlCan.Add('</ser:GravarPedidos>');
        xmlCan.Add('</soapenv:Body>');
      xmlCan.Add('</soapenv:Envelope>');


     xConnectSender := nil;
     xWSDLAdr       := nil;
     StreamRetorno  := nil;
     StreamString   := nil;
     xDocumentoXML  := nil;

     // Configura TimeOut da conexão em 1 Minuto
     conntimeout := 60000;
     sendtimeout := 60000;
     recvtimeout := 60000;
     try
          // Cria o objeto que fará a conversação com o Web Service (Classe Nativa Delphi).
          xConnectSender := SOAPHTTPTrans.THTTPReqResp.Create(nil);

          // Cria objeto de stream para receber o retorno da solicitação.
          StreamRetorno  := TMemoryStream.Create;
          StreamString   := TStringStream.Create('');

          // Configura especificação do Web Service.
          xWSDLAdr := TWSDLView.Create(nil);
          xWSDLAdr.PortType   := 'sapiens/Synccom_senior_g5_co_mcm_ven_pedidos';
          xWSDLAdr.Operation  := 'GravarPedidos';
          xWSDLAdr.Service    := 'g5-senior-services';
          xWSDLAdr.Activate;

          // Configura a conexão.
          xConnectSender.URL            := 'http://senior/g5-senior-services/sapiens_Synccom_senior_g5_co_mcm_ven_pedidos?wsdl';
          xConnectSender.SoapAction     := '';
          xConnectSender.WSDLView       := xWSDLAdr;


          // Se informou Proxy configura Proxy
          {if   (xProxy.Text <> '') then
               begin
               xConnectSender.Proxy     := xProxy.Text;
               xConnectSender.UserName  := xUsuarioProxy.Text;
               xConnectSender.Password  := xSenhaProxy.Text;
               end;}

          // Configura o Timeout da conexão.
          InternetSetOption(nil, INTERNET_OPTION_CONNECT_TIMEOUT, Pointer(@conntimeout), SizeOf(conntimeout));
          InternetSetOption(nil, INTERNET_OPTION_SEND_TIMEOUT, Pointer(@sendtimeout), SizeOf(sendtimeout));
          InternetSetOption(nil, INTERNET_OPTION_RECEIVE_TIMEOUT, Pointer(@recvtimeout), SizeOf(recvtimeout));



          // Abre a Conexão
          xConnectSender.Connect(True);
          // Executa o Web Service.
          // xConnectSender.Execute(XMLEnvio.Text, StreamRetorno); //--original que veio
          xConnectSender.Execute(xml.Text, StreamRetorno);
          //xConnectSender.Execute(xmlCan.Text, StreamRetorno);

          // Fecha a Conexão
          xConnectSender.Connect(False);

          // Transforma o Retorno em Texto para Jogar para a Caixa de Texto.
          StreamString.CopyFrom(StreamRetorno, 0);

          //alterar a estrutura antes de gerar o xml
          //a := StreamString.DataString;
          a := StringReplace(StreamString.DataString,'S:Envelope xmlns:S="http://schemas.xmlsoap.org/soap/envelope/"','Envelope', [rfReplaceAll]);
          a := StringReplace(a,'/S:Envelope','/Envelope', [rfReplaceAll]);
          a := StringReplace(a,'S:Body','Body', [rfReplaceAll]);
          a := StringReplace(a,'/S:Body','/Body', [rfReplaceAll]);
          a := StringReplace(a,'ns2:GravarPedidosResponse xmlns:ns2="http://services.senior.com.br"','GravarPedidosResponse', [rfReplaceAll]);
          a := StringReplace(a,'/ns2:GravarPedidosResponse','/GravarPedidosResponse', [rfReplaceAll]);
          a := StringReplace(a,'erroExecucao xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"','erroExecucao', [rfReplaceAll]);
          a := StringReplace(a,'msgRet xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"','msgRet', [rfReplaceAll]);

          // Cria documento XML.
          xDocumentoXML := TXMLDocument.Create(nil);
          //xDocumentoXML.LoadFromStream(StreamRetorno); é o original
          //xDocumentoXML.LoadFromStream(StreamString);
          xDocumentoXML.XML.Text := a;
          xDocumentoXML.Active := True;
          xDocumentoXML.SaveToFile(xLocalFileName);
          xDocumentoXML.Free;

          XMLRetorno.LoadFromFile(xLocalFileName);
          XMLRetorno.Active := true;

          //processa o retorno
          noResult := XMLRetorno.ChildNodes['Envelope'].ChildNodes['Body'].ChildNodes['GravarPedidosResponse'].ChildNodes['result'];
          memo1.Lines.Add(noResult.ChildNodes['mensagemRetorno'].Text);
          memo1.Lines.Add(noResult.ChildNodes['respostaPedido'].ChildNodes['retorno'].Text);
          memo1.Lines.Add(noResult.ChildNodes['respostaPedido'].ChildNodes['gridPro'].ChildNodes['retorno'].Text);

          if noResult.ChildNodes['respostaPedido'].ChildNodes['retorno'].Text = 'OK' then  //se executou com sucesso
             begin
               //CANCELA A QUANTIDADE QUE ESTA SENDO DIVIDIDA DA FILIAL 1
               // Abre a Conexão
                xConnectSender.Connect(True);
                // Executa o Web Service.
                xConnectSender.Execute(xmlCan.Text, StreamRetorno);
                // Fecha a Conexão
                xConnectSender.Connect(False);
                // Transforma o Retorno em Texto para Jogar para a Caixa de Texto.
                StreamString.CopyFrom(StreamRetorno, 0);
                //alterar a estrutura antes de gerar o xml
                a := StringReplace(StreamString.DataString,'S:Envelope xmlns:S="http://schemas.xmlsoap.org/soap/envelope/"','Envelope', [rfReplaceAll]);
                a := StringReplace(a,'/S:Envelope','/Envelope', [rfReplaceAll]);
                a := StringReplace(a,'S:Body','Body', [rfReplaceAll]);
                a := StringReplace(a,'/S:Body','/Body', [rfReplaceAll]);
                a := StringReplace(a,'ns2:GravarPedidosResponse xmlns:ns2="http://services.senior.com.br"','GravarPedidosResponse', [rfReplaceAll]);
                a := StringReplace(a,'/ns2:GravarPedidosResponse','/GravarPedidosResponse', [rfReplaceAll]);
                a := StringReplace(a,'erroExecucao xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"','erroExecucao', [rfReplaceAll]);
                a := StringReplace(a,'msgRet xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"','msgRet', [rfReplaceAll]);
                // Cria documento XML.
                xDocumentoXML := TXMLDocument.Create(nil);
                xDocumentoXML.XML.Text := a;
                xDocumentoXML.Active := True;
                xDocumentoXML.SaveToFile(xLocalFileNameIte);
                xDocumentoXML.Free;

                XMLRetornoIte.LoadFromFile(xLocalFileNameIte);
                XMLRetornoIte.Active := true;

                noRespostaPedido := noResult.ChildNodes['respostaPedido'];

                noRespostaPedido.ChildNodes.First;
                noTemp  := noRespostaPedido.ChildNodes['gridPro'];
                repeat
                    memo1.Lines.Add(noTemp.NodeName);
                    memo1.Lines.Add(noTemp.ChildNodes['codEmp'].Text);
                    memo1.Lines.Add(noTemp.ChildNodes['codFil'].Text);
                    memo1.Lines.Add(noTemp.ChildNodes['numPed'].Text);
                    memo1.Lines.Add(noTemp.ChildNodes['retorno'].Text);
                    memo1.Lines.Add(noTemp.ChildNodes['seqIpd'].Text);
                    memo1.Lines.Add(noTemp.ChildNodes['sitIpd'].Text);
                    noTemp := noTemp.NextSibling;
                until(noTemp.NodeName <> 'gridPro') ;
             end
          else
             begin
               Application.MessageBox(PChar(noResult.ChildNodes['respostaPedido'].ChildNodes['retorno'].Text),'Atenção',MB_ICONWARNING+MB_OK);
             end;
     finally
          xWSDLAdr.Free;
          xConnectSender.Free;
          StreamRetorno.Free;
          StreamString.Free;
          //xDocumentoXML.Free;
          XMLRetorno.Free;
          xml := nil;
     end;

end;

procedure TFDividirPedidos.ClientConsE120IpdBeforePost(DataSet: TDataSet);
begin
  if ClientConsE120IpdUSU_QTDDIV.AsInteger > ClientConsE120IpdQTDABE.AsInteger then
     begin
       Application.MessageBox('A quantidade a ser dividida não pode ser maior do que a quantidade em aberto','Aviso',+MB_ICONWARNING+MB_OK);
       Abort;
     end;
end;

procedure TFDividirPedidos.ConsE120PedCalcFields(DataSet: TDataSet);
begin
  case ConsE120PedSITPED.AsInteger of
       1 : ConsE120PedvaSitPed.AsString := '1 - Aberto Total';
       2 : ConsE120PedvaSitPed.AsString := '2 - Aberto Parcial';
       3 : ConsE120PedvaSitPed.AsString := '3 - Suspenso';
       4 : ConsE120PedvaSitPed.AsString := '4 - Liquidado';
       5 : ConsE120PedvaSitPed.AsString := '5 - Cancelado';
       6 : ConsE120PedvaSitPed.AsString := '6 - Aguardando Integração';
       7 : ConsE120PedvaSitPed.AsString := '7 - Em Transmissão';
       8 : ConsE120PedvaSitPed.AsString := '8 - Preparação Análise ou NF';
       9 : ConsE120PedvaSitPed.AsString := '9 - Não Fechado';
  end;
end;

procedure TFDividirPedidos.dbgItensColExit(Sender: TObject);
begin
if dbgItens.SelectedField.FieldName = 'USU_QTDDIV' then
  begin
    if ClientConsE120IpdUSU_QTDDIV.AsInteger > ClientConsE120IpdQTDABE.AsInteger then
       begin
         Application.MessageBox('A quantidade a ser dividida não pode ser maior do que a quantidade em aberto','Aviso',+MB_ICONWARNING+MB_OK);
         Abort;
       end;
  end;

end;

procedure TFDividirPedidos.edtNumPedExit(Sender: TObject);
var vbExixteProduto : Boolean;
begin
  vaListaAdvertencia.Free;
  vaListaAdvertencia := TStringList.Create;

  imgAdvertencia.Visible := False;
  ConsE120Ped.Close;
  ConsE120Ped.Parameters.ParamByName('NUMPED').Value := edtNumPed.AsInteger;
  ConsE120Ped.Open;
  if not ConsE120Ped.IsEmpty then
     begin
       //REALIZA A VALIDAÇAO DOS DADOS GERAIS DO PEDIDO
       if ConsE120PedSITCLI.Value = 'I' then
          begin
            imgAdvertencia.Visible := True;
            vaListaAdvertencia.Add('Cliente Inativo');
          end;

       if ConsE120PedUSU_FILDIV.Value <> 0 then
          begin
            imgAdvertencia.Visible := True;
            vaListaAdvertencia.Add('Pedido marcado como dividido--> Filial da divisão informada nos dados gerais do pedido, NO BOTÃO: Person.(7), CAMPO: Filial Divisão, TELA: Entrada de Pedidos Agrupado');
          end;

       {DmOra.ConsSql.Close;
       DmOra.ConsSql.SQL.Clear;
       DmOra.ConsSql.SQL.Add('SELECT NUMPED FROM E120PED WHERE CODEMP=1 AND');
       DmOra.ConsSql.SQL.Add('                                 CODFIL=101 AND');
       DmOra.ConsSql.SQL.Add('                                 NUMPED=:NUMPED');
       DmOra.ConsSql.Parameters.ParamByName('NUMPED').Value := edtNumPed.AsInteger;
       DmOra.ConsSql.Open;
       if not DmOra.ConsSql.IsEmpty then
          begin
            imgAdvertencia.Visible := True;
            vaListaAdvertencia.Add('Pedido já cadastrado na filial 101');
          end; }

       if ConsE120PedUSU_PEDTRA.Value = 'N' then
          begin
            imgAdvertencia.Visible := True;
            vaListaAdvertencia.Add('Não foi realizado a tranferência de tecido para este pedido');
          end;

       if ((ConsE120PedCODCPG.Value = '028') and ((ConsE120PedTNSPRO.Value = '90100') or (ConsE120PedTNSPRO.Value = '90106'))) then
           begin
             imgAdvertencia.Visible := True;
             vaListaAdvertencia.Add('A transação: '+QuotedStr(ConsE120PedTNSPRO.Value)+' que esta nos DADOS GERAIS do pedido, não pode ser usada com a condição de pagamento 028 - LIVRE DEBITO, Transações disponíveis para esta condição de pagamento: 90110 - Assistencia, 90111 - Troca, 90112 - Brinde Colchao, 90122 - Brinde Estofado');
           end;

       if not (ConsE120PedSITPED.Value in [1,2]) then
          begin
            imgAdvertencia.Visible := True;
            vaListaAdvertencia.Add('A situação do pedido dever ser 1 - Aberto Total ou 2 - Aberto Parcial');
          end;

       DmOra.ConsSql.Close;
       DmOra.ConsSql.SQL.Clear;
       DmOra.ConsSql.SQL.Add('SELECT CODREP,EMPCPG,CODCPG,SITLRC FROM E090RCP');
       DmOra.ConsSql.SQL.Add(' WHERE EMPCPG = 1 AND');
       DmOra.ConsSql.SQL.Add(' CODCPG = :CODCPG AND');
       DmOra.ConsSql.SQL.Add(' CODREP = :CODREP');
       DmOra.ConsSql.Parameters.ParamByName('CODCPG').Value := ConsE120PedCODCPG.Value;
       DmOra.ConsSql.Parameters.ParamByName('CODREP').Value := ConsE120PedCODREP.Value;
       DmOra.ConsSql.Open;
       if DmOra.ConsSql.IsEmpty then
          begin
            imgAdvertencia.Visible := True;
            vaListaAdvertencia.Add('Não foi encontrado ligação entre a CONDIÇÃO DE PAGAMENTO com o REPRESENTANTE');
          end
       else
          begin
            if DmOra.ConsSql.FieldByName('SITLRC').AsString = 'I' then
               begin
                 imgAdvertencia.Visible := True;
                 vaListaAdvertencia.Add('A ligação entre a CONDIÇÃO DE PAGAMENTO com o REPRESENTANTE está INATIVA');
               end;

          end;

       ClientConsE120Ipd.Close;
       ConsE120Ipd.Close;
       ConsE120Ipd.Parameters.ParamByName('NUMPED').Value := edtNumPed.AsInteger;
       ConsE120Ipd.Open;
       ClientConsE120Ipd.Open;
       ClientConsE120Ipd.First;
       vbExixteProduto := false;
       while not ClientConsE120Ipd.Eof do
          begin
            if ClientConsE120IpdQTDABE.AsInteger > 0 then  //valida se existe produto em aberto para divisao
               begin
                 vbExixteProduto := True;
               end;

            //valida a transaçao dos itens se a condição de pagamento for livre debito
            if ConsE120PedCODCPG.Value = '028' then
               begin
                  if (ClientConsE120IpdTNSPRO.AsString = '90100') or (ClientConsE120IpdTNSPRO.AsString = '90106')  then
                      begin
                        imgAdvertencia.Visible := True;
                        vaListaAdvertencia.Add('A transação: '+QuotedStr(ClientConsE120IpdTNSPRO.AsString)+' do Produto: '+QuotedStr(ConsE120IpdCODPRO.AsString)+' Derivação:'+QuotedStr(ConsE120IpdCODDER.AsString)+' não pode ser usada com a condição de pagamento 028 - LIVRE DEBITO, Transações disponíveis para esta condição de pagamento: 90110 - Assistencia, 90111 - Troca, 90112 - Brinde Colchao, 90122 - Brinde Estofado');
                      end;
               end;


            ClientConsE120Ipd.Next;
          end;
       ClientConsE120Ipd.First;

       if vbExixteProduto = false then
          begin
            imgAdvertencia.Visible := True;
            vaListaAdvertencia.Add('Não existe produto em aberto para ser dividido');
          end;


     end
  else
     begin
       ClientConsE120Ipd.Close;
       ConsE120Ipd.Close;
     end;

     btnDividir.Enabled := imgAdvertencia.Visible = False;
end;

procedure TFDividirPedidos.FormCreate(Sender: TObject);
begin
  vaListaAdvertencia := TStringList.Create;
end;

procedure TFDividirPedidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFDividirPedidos.imgAdvertenciaClick(Sender: TObject);
var I : Integer;
begin
  FAdvertenciaDividirPedido := TFAdvertenciaDividirPedido.Create(Self);

  for i := 0 to vaListaAdvertencia.Count - 1 do
      begin
        FAdvertenciaDividirPedido.mmo1.Lines.Add(vaListaAdvertencia[i]);
        FAdvertenciaDividirPedido.mmo1.Lines.Add('----------------------------------------------------------------------------------------------------------------------------------------');
      end;
  FAdvertenciaDividirPedido.ShowModal;
  FreeAndNil(FAdvertenciaDividirPedido);
end;

end.
