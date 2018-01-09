unit UValidaXmlNfc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB, xmldom, Provider,
  Xmlxform, DBClient,ShellApi;

type
  TFValidaXmlNfc = class(TForm)
    DBGrid1: TDBGrid;
    BValida: TBitBtn;
    DsConsE440Nfc: TDataSource;
    BPesquisar: TBitBtn;
    ClientDadosGerais: TClientDataSet;
    XmlProvider: TXMLTransformProvider;
    CadE440Nfc: TADOQuery;
    CadE440NfcCODEMP: TIntegerField;
    CadE440NfcCODFIL: TIntegerField;
    CadE440NfcCODFOR: TIntegerField;
    CadE440NfcNUMNFC: TIntegerField;
    CadE440NfcCODSNF: TStringField;
    CadE440NfcTIPNFE: TIntegerField;
    CadE440NfcCODEDC: TStringField;
    CadE440NfcCODTRI: TStringField;
    CadE440NfcDATENT: TDateTimeField;
    CadE440NfcTNSPRO: TStringField;
    CadE440NfcTNSSER: TStringField;
    CadE440NfcNOPPRO: TStringField;
    CadE440NfcNOPSER: TStringField;
    CadE440NfcDATEMI: TDateTimeField;
    CadE440NfcUFSCIC: TStringField;
    CadE440NfcCODCPG: TStringField;
    CadE440NfcCODFPG: TIntegerField;
    CadE440NfcCODMOE: TStringField;
    CadE440NfcDATMOE: TDateTimeField;
    CadE440NfcCOTMOE: TFMTBCDField;
    CadE440NfcFECMOE: TStringField;
    CadE440NfcCODFCR: TStringField;
    CadE440NfcDATFCR: TDateTimeField;
    CadE440NfcCODTRA: TIntegerField;
    CadE440NfcCODRED: TIntegerField;
    CadE440NfcQTDEMB: TIntegerField;
    CadE440NfcCODEMB: TIntegerField;
    CadE440NfcNUMEMB: TStringField;
    CadE440NfcCODMS1: TIntegerField;
    CadE440NfcCODMS2: TIntegerField;
    CadE440NfcCODMS3: TIntegerField;
    CadE440NfcCODMS4: TIntegerField;
    CadE440NfcOBSNFC: TStringField;
    CadE440NfcPESBRU: TFMTBCDField;
    CadE440NfcPESLIQ: TFMTBCDField;
    CadE440NfcPERDS1: TBCDField;
    CadE440NfcPERDS2: TBCDField;
    CadE440NfcPERFIN: TBCDField;
    CadE440NfcVLRDZF: TBCDField;
    CadE440NfcVLRFRE: TBCDField;
    CadE440NfcCIFFOB: TStringField;
    CadE440NfcVLRSEG: TBCDField;
    CadE440NfcVLREMB: TBCDField;
    CadE440NfcVLRENC: TBCDField;
    CadE440NfcVLROUT: TBCDField;
    CadE440NfcVLRDAR: TBCDField;
    CadE440NfcVLRFRD: TBCDField;
    CadE440NfcVLROUD: TBCDField;
    CadE440NfcVLRBPR: TBCDField;
    CadE440NfcVLRDPR: TBCDField;
    CadE440NfcVLRBSE: TBCDField;
    CadE440NfcVLRDSE: TBCDField;
    CadE440NfcVLRDS1: TBCDField;
    CadE440NfcVLRDS2: TBCDField;
    CadE440NfcVLRBFU: TBCDField;
    CadE440NfcVLRFUN: TBCDField;
    CadE440NfcVLRBIP: TBCDField;
    CadE440NfcVLRIPI: TBCDField;
    CadE440NfcVLRBID: TBCDField;
    CadE440NfcVLRIPD: TBCDField;
    CadE440NfcVLRBIC: TBCDField;
    CadE440NfcVLRICM: TBCDField;
    CadE440NfcVLRBSI: TBCDField;
    CadE440NfcVLRSIC: TBCDField;
    CadE440NfcVLRBSD: TBCDField;
    CadE440NfcVLRISD: TBCDField;
    CadE440NfcVLRBSP: TBCDField;
    CadE440NfcVLRSTP: TBCDField;
    CadE440NfcVLRBSC: TBCDField;
    CadE440NfcVLRSTC: TBCDField;
    CadE440NfcVLRBIS: TBCDField;
    CadE440NfcVLRISS: TBCDField;
    CadE440NfcVLRBIR: TBCDField;
    CadE440NfcVLRIRF: TBCDField;
    CadE440NfcVLRBIN: TBCDField;
    CadE440NfcVLRINS: TBCDField;
    CadE440NfcVLRLPR: TBCDField;
    CadE440NfcVLRLSE: TBCDField;
    CadE440NfcVLRLOU: TBCDField;
    CadE440NfcVLRLIQ: TBCDField;
    CadE440NfcVLRINF: TBCDField;
    CadE440NfcVLRFIN: TBCDField;
    CadE440NfcSITNFC: TStringField;
    CadE440NfcCODMOT: TIntegerField;
    CadE440NfcVERCAL: TIntegerField;
    CadE440NfcINTIMP: TStringField;
    CadE440NfcNUMLOT: TIntegerField;
    CadE440NfcFORISS: TIntegerField;
    CadE440NfcINDSIG: TStringField;
    CadE440NfcUSUGER: TBCDField;
    CadE440NfcDATGER: TDateTimeField;
    CadE440NfcHORGER: TIntegerField;
    CadE440NfcPERFRE: TBCDField;
    CadE440NfcPERSEG: TBCDField;
    CadE440NfcPEREMB: TBCDField;
    CadE440NfcPERENC: TBCDField;
    CadE440NfcPEROUT: TBCDField;
    CadE440NfcSEQORM: TIntegerField;
    CadE440NfcVLRBPI: TBCDField;
    CadE440NfcVLRPIS: TBCDField;
    CadE440NfcEXPWMS: TIntegerField;
    CadE440NfcINDSIN: TStringField;
    CadE440NfcPRCNFC: TIntegerField;
    CadE440NfcVLRBCR: TBCDField;
    CadE440NfcVLRCOR: TBCDField;
    CadE440NfcVLRBCL: TBCDField;
    CadE440NfcVLRCSL: TBCDField;
    CadE440NfcVLRBPT: TBCDField;
    CadE440NfcVLRPIT: TBCDField;
    CadE440NfcVLRBCT: TBCDField;
    CadE440NfcVLRCRT: TBCDField;
    CadE440NfcVLRBOR: TBCDField;
    CadE440NfcVLROUR: TBCDField;
    CadE440NfcVLRBII: TBCDField;
    CadE440NfcVLRIIM: TBCDField;
    CadE440NfcNUMDOI: TStringField;
    CadE440NfcDATDOI: TDateTimeField;
    CadE440NfcINTPAT: TStringField;
    CadE440NfcVLRRIS: TBCDField;
    CadE440NfcVLROCL: TBCDField;
    CadE440NfcVLROPT: TBCDField;
    CadE440NfcVLROCT: TBCDField;
    CadE440NfcVLROOR: TBCDField;
    CadE440NfcCODSEL: TStringField;
    CadE440NfcCODSSL: TStringField;
    CadE440NfcPERDS3: TBCDField;
    CadE440NfcPERDS4: TBCDField;
    CadE440NfcPERDS5: TBCDField;
    CadE440NfcVLRDS3: TBCDField;
    CadE440NfcVLRDS4: TBCDField;
    CadE440NfcVLRDS5: TBCDField;
    CadE440NfcBECIPI: TBCDField;
    CadE440NfcVECIPI: TBCDField;
    CadE440NfcBECICM: TBCDField;
    CadE440NfcVECICM: TBCDField;
    CadE440NfcVLRBIE: TBCDField;
    CadE440NfcVLRIEM: TBCDField;
    CadE440NfcVLRFEI: TBCDField;
    CadE440NfcVLRSEI: TBCDField;
    CadE440NfcVLROUI: TBCDField;
    CadE440NfcBCOIMP: TBCDField;
    CadE440NfcCOFIMP: TBCDField;
    CadE440NfcBPIIMP: TBCDField;
    CadE440NfcPISIMP: TBCDField;
    CadE440NfcNUMCNT: TIntegerField;
    CadE440NfcIDENFC: TStringField;
    CadE440NfcNUMCTR: TIntegerField;
    CadE440NfcROTNAP: TIntegerField;
    CadE440NfcFILAPR: TIntegerField;
    CadE440NfcNUMAPR: TBCDField;
    CadE440NfcSITAPR: TStringField;
    CadE440NfcPERICF: TBCDField;
    CadE440NfcICMFRE: TBCDField;
    CadE440NfcCLIRCB: TIntegerField;
    CadE440NfcVLRBPF: TBCDField;
    CadE440NfcVLRPIF: TBCDField;
    CadE440NfcVLRBCF: TBCDField;
    CadE440NfcVLRCFF: TBCDField;
    CadE440NfcROTANX: TIntegerField;
    CadE440NfcNUMANX: TBCDField;
    CadE440NfcPLAVEI: TStringField;
    CadE440NfcCODVIA: TStringField;
    CadE440NfcCHVNEL: TStringField;
    CadE440NfcSOMFRE: TStringField;
    CadE440NfcUFSVEI: TStringField;
    CadE440NfcNUMINT: TStringField;
    CadE440NfcFILFIX: TIntegerField;
    CadE440NfcNUMFIX: TIntegerField;
    CadE440NfcFILOCP: TIntegerField;
    CadE440NfcNUMOCP: TIntegerField;
    CadE440NfcUSU_PLAVEI: TStringField;
    CadE440NfcCODEQU: TIntegerField;
    CadE440NfcNUMCFI: TIntegerField;
    CadE440NfcTIPNDI: TStringField;
    CadE440NfcLOCDES: TStringField;
    CadE440NfcDATDES: TDateTimeField;
    CadE440NfcUFSDES: TStringField;
    CadE440NfcCODEXP: TIntegerField;
    Label1: TLabel;
    ContaReg: TADOQuery;
    ContaRegTOTAL: TFMTBCDField;
    Label2: TLabel;
    LTotal: TLabel;
    BValidar: TBitBtn;
    BuscaE440Nfc: TADOQuery;
    BuscaE440NfcCODEMP: TIntegerField;
    BuscaE440NfcCODFIL: TIntegerField;
    BuscaE440NfcCODFOR: TIntegerField;
    BuscaE440NfcNUMNFC: TIntegerField;
    BuscaE440NfcCODSNF: TStringField;
    BuscaE440NfcTIPNFE: TIntegerField;
    BuscaE440NfcCODEDC: TStringField;
    BuscaE440NfcCODTRI: TStringField;
    BuscaE440NfcDATENT: TDateTimeField;
    BuscaE440NfcTNSPRO: TStringField;
    BuscaE440NfcTNSSER: TStringField;
    BuscaE440NfcNOPPRO: TStringField;
    BuscaE440NfcNOPSER: TStringField;
    BuscaE440NfcDATEMI: TDateTimeField;
    BuscaE440NfcUFSCIC: TStringField;
    BuscaE440NfcCODCPG: TStringField;
    BuscaE440NfcCODFPG: TIntegerField;
    BuscaE440NfcCODMOE: TStringField;
    BuscaE440NfcDATMOE: TDateTimeField;
    BuscaE440NfcCOTMOE: TFMTBCDField;
    BuscaE440NfcFECMOE: TStringField;
    BuscaE440NfcCODFCR: TStringField;
    BuscaE440NfcDATFCR: TDateTimeField;
    BuscaE440NfcCODTRA: TIntegerField;
    BuscaE440NfcCODRED: TIntegerField;
    BuscaE440NfcQTDEMB: TIntegerField;
    BuscaE440NfcCODEMB: TIntegerField;
    BuscaE440NfcNUMEMB: TStringField;
    BuscaE440NfcCODMS1: TIntegerField;
    BuscaE440NfcCODMS2: TIntegerField;
    BuscaE440NfcCODMS3: TIntegerField;
    BuscaE440NfcCODMS4: TIntegerField;
    BuscaE440NfcOBSNFC: TStringField;
    BuscaE440NfcPESBRU: TFMTBCDField;
    BuscaE440NfcPESLIQ: TFMTBCDField;
    BuscaE440NfcPERDS1: TBCDField;
    BuscaE440NfcPERDS2: TBCDField;
    BuscaE440NfcPERFIN: TBCDField;
    BuscaE440NfcVLRDZF: TBCDField;
    BuscaE440NfcVLRFRE: TBCDField;
    BuscaE440NfcCIFFOB: TStringField;
    BuscaE440NfcVLRSEG: TBCDField;
    BuscaE440NfcVLREMB: TBCDField;
    BuscaE440NfcVLRENC: TBCDField;
    BuscaE440NfcVLROUT: TBCDField;
    BuscaE440NfcVLRDAR: TBCDField;
    BuscaE440NfcVLRFRD: TBCDField;
    BuscaE440NfcVLROUD: TBCDField;
    BuscaE440NfcVLRBPR: TBCDField;
    BuscaE440NfcVLRDPR: TBCDField;
    BuscaE440NfcVLRBSE: TBCDField;
    BuscaE440NfcVLRDSE: TBCDField;
    BuscaE440NfcVLRDS1: TBCDField;
    BuscaE440NfcVLRDS2: TBCDField;
    BuscaE440NfcVLRBFU: TBCDField;
    BuscaE440NfcVLRFUN: TBCDField;
    BuscaE440NfcVLRBIP: TBCDField;
    BuscaE440NfcVLRIPI: TBCDField;
    BuscaE440NfcVLRBID: TBCDField;
    BuscaE440NfcVLRIPD: TBCDField;
    BuscaE440NfcVLRBIC: TBCDField;
    BuscaE440NfcVLRICM: TBCDField;
    BuscaE440NfcVLRBSI: TBCDField;
    BuscaE440NfcVLRSIC: TBCDField;
    BuscaE440NfcVLRBSD: TBCDField;
    BuscaE440NfcVLRISD: TBCDField;
    BuscaE440NfcVLRBSP: TBCDField;
    BuscaE440NfcVLRSTP: TBCDField;
    BuscaE440NfcVLRBSC: TBCDField;
    BuscaE440NfcVLRSTC: TBCDField;
    BuscaE440NfcVLRBIS: TBCDField;
    BuscaE440NfcVLRISS: TBCDField;
    BuscaE440NfcVLRBIR: TBCDField;
    BuscaE440NfcVLRIRF: TBCDField;
    BuscaE440NfcVLRBIN: TBCDField;
    BuscaE440NfcVLRINS: TBCDField;
    BuscaE440NfcVLRLPR: TBCDField;
    BuscaE440NfcVLRLSE: TBCDField;
    BuscaE440NfcVLRLOU: TBCDField;
    BuscaE440NfcVLRLIQ: TBCDField;
    BuscaE440NfcVLRINF: TBCDField;
    BuscaE440NfcVLRFIN: TBCDField;
    BuscaE440NfcSITNFC: TStringField;
    BuscaE440NfcCODMOT: TIntegerField;
    BuscaE440NfcVERCAL: TIntegerField;
    BuscaE440NfcINTIMP: TStringField;
    BuscaE440NfcNUMLOT: TIntegerField;
    BuscaE440NfcFORISS: TIntegerField;
    BuscaE440NfcINDSIG: TStringField;
    BuscaE440NfcUSUGER: TBCDField;
    BuscaE440NfcDATGER: TDateTimeField;
    BuscaE440NfcHORGER: TIntegerField;
    BuscaE440NfcPERFRE: TBCDField;
    BuscaE440NfcPERSEG: TBCDField;
    BuscaE440NfcPEREMB: TBCDField;
    BuscaE440NfcPERENC: TBCDField;
    BuscaE440NfcPEROUT: TBCDField;
    BuscaE440NfcSEQORM: TIntegerField;
    BuscaE440NfcVLRBPI: TBCDField;
    BuscaE440NfcVLRPIS: TBCDField;
    BuscaE440NfcEXPWMS: TIntegerField;
    BuscaE440NfcINDSIN: TStringField;
    BuscaE440NfcPRCNFC: TIntegerField;
    BuscaE440NfcVLRBCR: TBCDField;
    BuscaE440NfcVLRCOR: TBCDField;
    BuscaE440NfcVLRBCL: TBCDField;
    BuscaE440NfcVLRCSL: TBCDField;
    BuscaE440NfcVLRBPT: TBCDField;
    BuscaE440NfcVLRPIT: TBCDField;
    BuscaE440NfcVLRBCT: TBCDField;
    BuscaE440NfcVLRCRT: TBCDField;
    BuscaE440NfcVLRBOR: TBCDField;
    BuscaE440NfcVLROUR: TBCDField;
    BuscaE440NfcVLRBII: TBCDField;
    BuscaE440NfcVLRIIM: TBCDField;
    BuscaE440NfcNUMDOI: TStringField;
    BuscaE440NfcDATDOI: TDateTimeField;
    BuscaE440NfcINTPAT: TStringField;
    BuscaE440NfcVLRRIS: TBCDField;
    BuscaE440NfcVLROCL: TBCDField;
    BuscaE440NfcVLROPT: TBCDField;
    BuscaE440NfcVLROCT: TBCDField;
    BuscaE440NfcVLROOR: TBCDField;
    BuscaE440NfcCODSEL: TStringField;
    BuscaE440NfcCODSSL: TStringField;
    BuscaE440NfcPERDS3: TBCDField;
    BuscaE440NfcPERDS4: TBCDField;
    BuscaE440NfcPERDS5: TBCDField;
    BuscaE440NfcVLRDS3: TBCDField;
    BuscaE440NfcVLRDS4: TBCDField;
    BuscaE440NfcVLRDS5: TBCDField;
    BuscaE440NfcBECIPI: TBCDField;
    BuscaE440NfcVECIPI: TBCDField;
    BuscaE440NfcBECICM: TBCDField;
    BuscaE440NfcVECICM: TBCDField;
    BuscaE440NfcVLRBIE: TBCDField;
    BuscaE440NfcVLRIEM: TBCDField;
    BuscaE440NfcVLRFEI: TBCDField;
    BuscaE440NfcVLRSEI: TBCDField;
    BuscaE440NfcVLROUI: TBCDField;
    BuscaE440NfcBCOIMP: TBCDField;
    BuscaE440NfcCOFIMP: TBCDField;
    BuscaE440NfcBPIIMP: TBCDField;
    BuscaE440NfcPISIMP: TBCDField;
    BuscaE440NfcNUMCNT: TIntegerField;
    BuscaE440NfcIDENFC: TStringField;
    BuscaE440NfcNUMCTR: TIntegerField;
    BuscaE440NfcROTNAP: TIntegerField;
    BuscaE440NfcFILAPR: TIntegerField;
    BuscaE440NfcNUMAPR: TBCDField;
    BuscaE440NfcSITAPR: TStringField;
    BuscaE440NfcPERICF: TBCDField;
    BuscaE440NfcICMFRE: TBCDField;
    BuscaE440NfcCLIRCB: TIntegerField;
    BuscaE440NfcVLRBPF: TBCDField;
    BuscaE440NfcVLRPIF: TBCDField;
    BuscaE440NfcVLRBCF: TBCDField;
    BuscaE440NfcVLRCFF: TBCDField;
    BuscaE440NfcROTANX: TIntegerField;
    BuscaE440NfcNUMANX: TBCDField;
    BuscaE440NfcPLAVEI: TStringField;
    BuscaE440NfcCODVIA: TStringField;
    BuscaE440NfcCHVNEL: TStringField;
    BuscaE440NfcSOMFRE: TStringField;
    BuscaE440NfcUFSVEI: TStringField;
    BuscaE440NfcNUMINT: TStringField;
    BuscaE440NfcFILFIX: TIntegerField;
    BuscaE440NfcNUMFIX: TIntegerField;
    BuscaE440NfcFILOCP: TIntegerField;
    BuscaE440NfcNUMOCP: TIntegerField;
    BuscaE440NfcUSU_PLAVEI: TStringField;
    BuscaE440NfcCODEQU: TIntegerField;
    BuscaE440NfcNUMCFI: TIntegerField;
    BuscaE440NfcTIPNDI: TStringField;
    BuscaE440NfcLOCDES: TStringField;
    BuscaE440NfcDATDES: TDateTimeField;
    BuscaE440NfcUFSDES: TStringField;
    BuscaE440NfcCODEXP: TIntegerField;
    BuscaE440NfcNOMFOR: TStringField;
    BuscaE440NfcCGCCPF: TBCDField;
    BuscaE440Nfc2: TADOQuery;
    BuscaE440Nfc2CODEMP: TIntegerField;
    BuscaE440Nfc2CODFIL: TIntegerField;
    BuscaE440Nfc2CODFOR: TIntegerField;
    BuscaE440Nfc2NUMNFC: TIntegerField;
    BuscaE440Nfc2CODSNF: TStringField;
    BuscaE440Nfc2TIPNFE: TIntegerField;
    BuscaE440Nfc2CODEDC: TStringField;
    BuscaE440Nfc2CODTRI: TStringField;
    BuscaE440Nfc2DATENT: TDateTimeField;
    BuscaE440Nfc2TNSPRO: TStringField;
    BuscaE440Nfc2TNSSER: TStringField;
    BuscaE440Nfc2NOPPRO: TStringField;
    BuscaE440Nfc2NOPSER: TStringField;
    BuscaE440Nfc2DATEMI: TDateTimeField;
    BuscaE440Nfc2UFSCIC: TStringField;
    BuscaE440Nfc2CODCPG: TStringField;
    BuscaE440Nfc2CODFPG: TIntegerField;
    BuscaE440Nfc2CODMOE: TStringField;
    BuscaE440Nfc2DATMOE: TDateTimeField;
    BuscaE440Nfc2COTMOE: TFMTBCDField;
    BuscaE440Nfc2FECMOE: TStringField;
    BuscaE440Nfc2CODFCR: TStringField;
    BuscaE440Nfc2DATFCR: TDateTimeField;
    BuscaE440Nfc2CODTRA: TIntegerField;
    BuscaE440Nfc2CODRED: TIntegerField;
    BuscaE440Nfc2QTDEMB: TIntegerField;
    BuscaE440Nfc2CODEMB: TIntegerField;
    BuscaE440Nfc2NUMEMB: TStringField;
    BuscaE440Nfc2CODMS1: TIntegerField;
    BuscaE440Nfc2CODMS2: TIntegerField;
    BuscaE440Nfc2CODMS3: TIntegerField;
    BuscaE440Nfc2CODMS4: TIntegerField;
    BuscaE440Nfc2OBSNFC: TStringField;
    BuscaE440Nfc2PESBRU: TFMTBCDField;
    BuscaE440Nfc2PESLIQ: TFMTBCDField;
    BuscaE440Nfc2PERDS1: TBCDField;
    BuscaE440Nfc2PERDS2: TBCDField;
    BuscaE440Nfc2PERFIN: TBCDField;
    BuscaE440Nfc2VLRDZF: TBCDField;
    BuscaE440Nfc2VLRFRE: TBCDField;
    BuscaE440Nfc2CIFFOB: TStringField;
    BuscaE440Nfc2VLRSEG: TBCDField;
    BuscaE440Nfc2VLREMB: TBCDField;
    BuscaE440Nfc2VLRENC: TBCDField;
    BuscaE440Nfc2VLROUT: TBCDField;
    BuscaE440Nfc2VLRDAR: TBCDField;
    BuscaE440Nfc2VLRFRD: TBCDField;
    BuscaE440Nfc2VLROUD: TBCDField;
    BuscaE440Nfc2VLRBPR: TBCDField;
    BuscaE440Nfc2VLRDPR: TBCDField;
    BuscaE440Nfc2VLRBSE: TBCDField;
    BuscaE440Nfc2VLRDSE: TBCDField;
    BuscaE440Nfc2VLRDS1: TBCDField;
    BuscaE440Nfc2VLRDS2: TBCDField;
    BuscaE440Nfc2VLRBFU: TBCDField;
    BuscaE440Nfc2VLRFUN: TBCDField;
    BuscaE440Nfc2VLRBIP: TBCDField;
    BuscaE440Nfc2VLRIPI: TBCDField;
    BuscaE440Nfc2VLRBID: TBCDField;
    BuscaE440Nfc2VLRIPD: TBCDField;
    BuscaE440Nfc2VLRBIC: TBCDField;
    BuscaE440Nfc2VLRICM: TBCDField;
    BuscaE440Nfc2VLRBSI: TBCDField;
    BuscaE440Nfc2VLRSIC: TBCDField;
    BuscaE440Nfc2VLRBSD: TBCDField;
    BuscaE440Nfc2VLRISD: TBCDField;
    BuscaE440Nfc2VLRBSP: TBCDField;
    BuscaE440Nfc2VLRSTP: TBCDField;
    BuscaE440Nfc2VLRBSC: TBCDField;
    BuscaE440Nfc2VLRSTC: TBCDField;
    BuscaE440Nfc2VLRBIS: TBCDField;
    BuscaE440Nfc2VLRISS: TBCDField;
    BuscaE440Nfc2VLRBIR: TBCDField;
    BuscaE440Nfc2VLRIRF: TBCDField;
    BuscaE440Nfc2VLRBIN: TBCDField;
    BuscaE440Nfc2VLRINS: TBCDField;
    BuscaE440Nfc2VLRLPR: TBCDField;
    BuscaE440Nfc2VLRLSE: TBCDField;
    BuscaE440Nfc2VLRLOU: TBCDField;
    BuscaE440Nfc2VLRLIQ: TBCDField;
    BuscaE440Nfc2VLRINF: TBCDField;
    BuscaE440Nfc2VLRFIN: TBCDField;
    BuscaE440Nfc2SITNFC: TStringField;
    BuscaE440Nfc2CODMOT: TIntegerField;
    BuscaE440Nfc2VERCAL: TIntegerField;
    BuscaE440Nfc2INTIMP: TStringField;
    BuscaE440Nfc2NUMLOT: TIntegerField;
    BuscaE440Nfc2FORISS: TIntegerField;
    BuscaE440Nfc2INDSIG: TStringField;
    BuscaE440Nfc2USUGER: TBCDField;
    BuscaE440Nfc2DATGER: TDateTimeField;
    BuscaE440Nfc2HORGER: TIntegerField;
    BuscaE440Nfc2PERFRE: TBCDField;
    BuscaE440Nfc2PERSEG: TBCDField;
    BuscaE440Nfc2PEREMB: TBCDField;
    BuscaE440Nfc2PERENC: TBCDField;
    BuscaE440Nfc2PEROUT: TBCDField;
    BuscaE440Nfc2SEQORM: TIntegerField;
    BuscaE440Nfc2VLRBPI: TBCDField;
    BuscaE440Nfc2VLRPIS: TBCDField;
    BuscaE440Nfc2EXPWMS: TIntegerField;
    BuscaE440Nfc2INDSIN: TStringField;
    BuscaE440Nfc2PRCNFC: TIntegerField;
    BuscaE440Nfc2VLRBCR: TBCDField;
    BuscaE440Nfc2VLRCOR: TBCDField;
    BuscaE440Nfc2VLRBCL: TBCDField;
    BuscaE440Nfc2VLRCSL: TBCDField;
    BuscaE440Nfc2VLRBPT: TBCDField;
    BuscaE440Nfc2VLRPIT: TBCDField;
    BuscaE440Nfc2VLRBCT: TBCDField;
    BuscaE440Nfc2VLRCRT: TBCDField;
    BuscaE440Nfc2VLRBOR: TBCDField;
    BuscaE440Nfc2VLROUR: TBCDField;
    BuscaE440Nfc2VLRBII: TBCDField;
    BuscaE440Nfc2VLRIIM: TBCDField;
    BuscaE440Nfc2NUMDOI: TStringField;
    BuscaE440Nfc2DATDOI: TDateTimeField;
    BuscaE440Nfc2INTPAT: TStringField;
    BuscaE440Nfc2VLRRIS: TBCDField;
    BuscaE440Nfc2VLROCL: TBCDField;
    BuscaE440Nfc2VLROPT: TBCDField;
    BuscaE440Nfc2VLROCT: TBCDField;
    BuscaE440Nfc2VLROOR: TBCDField;
    BuscaE440Nfc2CODSEL: TStringField;
    BuscaE440Nfc2CODSSL: TStringField;
    BuscaE440Nfc2PERDS3: TBCDField;
    BuscaE440Nfc2PERDS4: TBCDField;
    BuscaE440Nfc2PERDS5: TBCDField;
    BuscaE440Nfc2VLRDS3: TBCDField;
    BuscaE440Nfc2VLRDS4: TBCDField;
    BuscaE440Nfc2VLRDS5: TBCDField;
    BuscaE440Nfc2BECIPI: TBCDField;
    BuscaE440Nfc2VECIPI: TBCDField;
    BuscaE440Nfc2BECICM: TBCDField;
    BuscaE440Nfc2VECICM: TBCDField;
    BuscaE440Nfc2VLRBIE: TBCDField;
    BuscaE440Nfc2VLRIEM: TBCDField;
    BuscaE440Nfc2VLRFEI: TBCDField;
    BuscaE440Nfc2VLRSEI: TBCDField;
    BuscaE440Nfc2VLROUI: TBCDField;
    BuscaE440Nfc2BCOIMP: TBCDField;
    BuscaE440Nfc2COFIMP: TBCDField;
    BuscaE440Nfc2BPIIMP: TBCDField;
    BuscaE440Nfc2PISIMP: TBCDField;
    BuscaE440Nfc2NUMCNT: TIntegerField;
    BuscaE440Nfc2IDENFC: TStringField;
    BuscaE440Nfc2NUMCTR: TIntegerField;
    BuscaE440Nfc2ROTNAP: TIntegerField;
    BuscaE440Nfc2FILAPR: TIntegerField;
    BuscaE440Nfc2NUMAPR: TBCDField;
    BuscaE440Nfc2SITAPR: TStringField;
    BuscaE440Nfc2PERICF: TBCDField;
    BuscaE440Nfc2ICMFRE: TBCDField;
    BuscaE440Nfc2CLIRCB: TIntegerField;
    BuscaE440Nfc2VLRBPF: TBCDField;
    BuscaE440Nfc2VLRPIF: TBCDField;
    BuscaE440Nfc2VLRBCF: TBCDField;
    BuscaE440Nfc2VLRCFF: TBCDField;
    BuscaE440Nfc2ROTANX: TIntegerField;
    BuscaE440Nfc2NUMANX: TBCDField;
    BuscaE440Nfc2PLAVEI: TStringField;
    BuscaE440Nfc2CODVIA: TStringField;
    BuscaE440Nfc2CHVNEL: TStringField;
    BuscaE440Nfc2SOMFRE: TStringField;
    BuscaE440Nfc2UFSVEI: TStringField;
    BuscaE440Nfc2NUMINT: TStringField;
    BuscaE440Nfc2FILFIX: TIntegerField;
    BuscaE440Nfc2NUMFIX: TIntegerField;
    BuscaE440Nfc2FILOCP: TIntegerField;
    BuscaE440Nfc2NUMOCP: TIntegerField;
    BuscaE440Nfc2USU_PLAVEI: TStringField;
    BuscaE440Nfc2CODEQU: TIntegerField;
    BuscaE440Nfc2NUMCFI: TIntegerField;
    BuscaE440Nfc2TIPNDI: TStringField;
    BuscaE440Nfc2LOCDES: TStringField;
    BuscaE440Nfc2DATDES: TDateTimeField;
    BuscaE440Nfc2UFSDES: TStringField;
    BuscaE440Nfc2CODEXP: TIntegerField;
    BuscaE440Nfc2NOMFOR: TStringField;
    BuscaE440Nfc2CGCCPF: TBCDField;
    LQtdArq: TLabel;
    BLog: TBitBtn;
    BImprimir: TSpeedButton;
    procedure BValidaClick(Sender: TObject);
    procedure BPesquisarClick(Sender: TObject);
    procedure BValidarClick(Sender: TObject);
    procedure BLogClick(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FValidaXmlNfc: TFValidaXmlNfc;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFValidaXmlNfc.BImprimirClick(Sender: TObject);
begin
  DmOra.RvValidaXml.Execute;
end;

procedure TFValidaXmlNfc.BLogClick(Sender: TObject);
begin

 shellExecute(handle,'open', 'notepad.exe', '\\senior\senior\sapiens\XML_NFE\Log\Log.txt',nil, sw_shownormal);
end;

procedure TFValidaXmlNfc.BPesquisarClick(Sender: TObject);
begin
    DmOra.ConsE440Nfc.Close;
    DmOra.ConsE440Nfc.Open;

    ContaReg.Close;
    ContaReg.Open;
    LTotal.Caption := IntToStr(ContaRegTOTAL.AsInteger);
    LTotal.Caption := LTotal.Caption + ' ';

end;

procedure TFValidaXmlNfc.BValidaClick(Sender: TObject);
var
SR : TSearchRec;
 vaArquivo,vaPastaFor,vaPastaMes : string;
 vaMes,vaAno : string;
 vaOrigem,vaDestino : string;
 vaId : string;
begin
if not DmOra.ConsE440Nfc.IsEmpty then
  begin//50

    //percorre as notas que estao sem o id
     DmOra.ConsE440Nfc.First;
     while not DmOra.ConsE440Nfc.Eof do
        begin//1
          //percorre os arquivos
          if FindFirst('\\senior\senior\sapiens\XML_NFE\Temp\*.xml*',faAnyFile,SR) = 0 then
             begin//2
                 repeat
                 TRY
                     ClientDadosGerais.Close;
                     vaArquivo := '\\senior\senior\sapiens\XML_NFE\Temp\'+SR.Name;
                     XmlProvider.XMLDataFile := vaArquivo;
                     ClientDadosGerais.Open;
                 EXCEPT
                 ShowMessage(vaArquivo);
                 END;

                     if (ClientDadosGerais.FieldByName('nNF').Value = DmOra.ConsE440NfcNUMNFC.Value) and
                        (ClientDadosGerais.FieldByName('CNPJ').Value = DmOra.ConsE440NfcCGCCPF.Value) then
                        begin//3

                            //copia o arquivo para a pasta historico
                            vaMes := formatdatetime('mm',DmOra.ConsE440NfcDATENT.Value);
                            vaAno := formatdatetime('yyyy',DmOra.ConsE440NfcDATENT.Value);
                            vaPastaMes := '\\senior\senior\sapiens\XML_NFE\Historico\'+vaAno + '-'+vaMes;
                            if not DirectoryExists(vaPastaMes) then
                              begin//4
                                 ForceDirectories(vaPastaMes);
                              end;//4

                             vaPastaFor := vaPastaMes +'\'+ CurrToStr(DmOra.ConsE440NfcCGCCPF.Value)+' - '+
                                           trim(Copy(DmOra.ConsE440NfcNOMFOR.Value,0,10));
                             if not DirectoryExists(vaPastaFor) then
                              begin//5
                                 ForceDirectories(vaPastaFor);
                              end;//5

                              vaOrigem := vaArquivo;
                              vaDestino := vaPastaFor + '\'+ SR.Name;

                              if FileExists(vaDestino) then
                                 DeleteFile(vaDestino);

                              if CopyFile(PChar(vaOrigem), PChar(vaDestino), true) then
                              begin
                                  //atualiza a nota de entrada com a chave
                                  CadE440Nfc.Close;
                                  CadE440Nfc.Parameters.ParamByName('codemp').Value := DmOra.ConsE440NfcCODEMP.Value;
                                  CadE440Nfc.Parameters.ParamByName('codfil').Value := DmOra.ConsE440NfcCODFIL.Value;
                                  CadE440Nfc.Parameters.ParamByName('codfor').Value := DmOra.ConsE440NfcCODFOR.Value;
                                  CadE440Nfc.Parameters.ParamByName('numnfc').Value := DmOra.ConsE440NfcNUMNFC.Value;
                                  CadE440Nfc.Parameters.ParamByName('codsnf').Value := DmOra.ConsE440NfcCODSNF.Value;
                                  CadE440Nfc.Open;
                                  if not CadE440Nfc.IsEmpty then
                                     begin
                                        CadE440Nfc.Edit;
                                        vaId := ClientDadosGerais.FieldByName('Id').Value;
                                        vaId := StringReplace(trim(vaId), 'NFe', '', [rfReplaceAll,rfIgnoreCase]);
                                        CadE440NfcCHVNEL.Value := vaId;
                                        CadE440Nfc.Post;
                                     end;

                               ClientDadosGerais.Close;
                               XmlProvider.XMLDataFile := '';
                               DeleteFile(vaArquivo);
                               Break;

                              end;

                        end;


                 until FindNext(SR) <> 0;
                 FindClose(SR);
             end;
          DmOra.ConsE440Nfc.Next;
        end;
          BPesquisar.Click;

  end;
end;

procedure TFValidaXmlNfc.BValidarClick(Sender: TObject);
var
SR : TSearchRec;
 vaArquivo,vaPastaFor,vaPastaMes : string;
 vaMes,vaAno : string;
 vaOrigem,vaDestino : string;
 vaId : string;
 ArqLog : TextFile;
 Cont,vnNumArq: integer;
begin
          //conta quantos arquivos tem na pasta
           Cont := 0;
           if FindFirst('\\senior\senior\sapiens\XML_NFE\Temp\*.xml*',faAnyFile,SR) = 0 then
              begin
                repeat
                inc(cont);
                until FindNext(SR) <> 0;
                 FindClose(SR);
              end;

          AssignFile ( ArqLog,'\\senior\senior\sapiens\XML_NFE\Log\Log.txt');
          Rewrite ( ArqLog );
          vnNumArq := 0;
          //percorre os arquivos
          if FindFirst('\\senior\senior\sapiens\XML_NFE\Temp\*.xml*',faAnyFile,SR) = 0 then
             begin//2
                repeat
                   TRY
                     ClientDadosGerais.Close;
                     vaArquivo := '\\senior\senior\sapiens\XML_NFE\Temp\'+SR.Name;
                     XmlProvider.XMLDataFile := vaArquivo;
                     ClientDadosGerais.Open;
                   EXCEPT
                     ShowMessage(vaArquivo);
                   END;
               inc(vnNumArq);
               LQtdArq.Caption := IntToStr(vnNumArq) + ' / '+ IntToStr(Cont) +' ';

               Refresh;

               //procura pela nf
               BuscaE440Nfc.Close;
               BuscaE440Nfc.Parameters.ParamByName('numnfc').Value := ClientDadosGerais.FieldByName('nNF').Value;
               BuscaE440Nfc.Parameters.ParamByName('cgccpf').Value := ClientDadosGerais.FieldByName('CNPJ').Value;
               BuscaE440Nfc.Open;
               if not BuscaE440Nfc.IsEmpty then
                  begin//3

                     //copia o arquivo para a pasta historico
                     vaMes := formatdatetime('mm',BuscaE440NfcDATENT.Value);
                     vaAno := formatdatetime('yyyy',BuscaE440NfcDATENT.Value);
                     vaPastaMes := '\\senior\senior\sapiens\XML_NFE\Historico\'+vaAno + '-'+vaMes;
                     if not DirectoryExists(vaPastaMes) then
                        begin//4
                          ForceDirectories(vaPastaMes);
                        end;//4

                     vaPastaFor := vaPastaMes +'\'+ CurrToStr(BuscaE440NfcCGCCPF.Value)+' - '+
                                           trim(Copy(BuscaE440NfcNOMFOR.Value,0,10));
                     if not DirectoryExists(vaPastaFor) then
                        begin//5
                          ForceDirectories(vaPastaFor);
                        end;//5

                     vaOrigem := vaArquivo;
                     vaDestino := vaPastaFor + '\'+ SR.Name;

                     if FileExists(vaDestino) then
                        DeleteFile(vaDestino);

                     if CopyFile(PChar(vaOrigem), PChar(vaDestino), true) then
                        begin//6
                          //atualiza a nota de entrada com a chave
                          CadE440Nfc.Close;
                          CadE440Nfc.Parameters.ParamByName('codemp').Value := BuscaE440NfcCODEMP.Value;
                          CadE440Nfc.Parameters.ParamByName('codfil').Value := BuscaE440NfcCODFIL.Value;
                          CadE440Nfc.Parameters.ParamByName('codfor').Value := BuscaE440NfcCODFOR.Value;
                          CadE440Nfc.Parameters.ParamByName('numnfc').Value := BuscaE440NfcNUMNFC.Value;
                          CadE440Nfc.Parameters.ParamByName('codsnf').Value := BuscaE440NfcCODSNF.Value;
                          CadE440Nfc.Open;
                          if not CadE440Nfc.IsEmpty then
                             begin//7
                               CadE440Nfc.Edit;
                               vaId := ClientDadosGerais.FieldByName('Id').Value;
                               vaId := StringReplace(trim(vaId), 'NFe', '', [rfReplaceAll,rfIgnoreCase]);
                               CadE440NfcCHVNEL.Value := vaId;
                               CadE440Nfc.Post;
                             end;//7

                          ClientDadosGerais.Close;
                          XmlProvider.XMLDataFile := '';
                          DeleteFile(vaArquivo);
                        end;//6
                  end//3
               else  //se nao achou procurar o motivo e gerar um log
                  begin//4

                     BuscaE440Nfc2.Close;
                     BuscaE440Nfc2.Parameters.ParamByName('numnfc').Value := ClientDadosGerais.FieldByName('nNF').Value;
                     BuscaE440Nfc2.Parameters.ParamByName('cgccpf').Value := ClientDadosGerais.FieldByName('CNPJ').Value;
                     BuscaE440Nfc2.Open;
                     if BuscaE440Nfc2.IsEmpty then
                        begin//8
                           //nao existe nota lançada
                           Writeln(ArqLog,sr.Name +' Não localizada.');

                        end//8
                     else
                        begin//9
                          //ja existe nota lançada
                          Writeln(ArqLog,SR.Name + ' NF já existente.');

                        end;//9



                  end;//4

                until FindNext(SR) <> 0;
                 FindClose(SR);
             end;//2

             //conta novamente quantos arquivos tem na pasta
             Cont := 0;
             if FindFirst('\\senior\senior\sapiens\XML_NFE\Temp\*.xml*',faAnyFile,SR) = 0 then
                begin
                  repeat
                  inc(cont);
                  until FindNext(SR) <> 0;
                   FindClose(SR);
                end;
              LQtdArq.Caption :=  ' / '+ IntToStr(Cont) +' ';
              Refresh;

             CloseFile(ArqLog);
             BPesquisar.Click;
end;

end.
