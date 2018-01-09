unit UNfEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Mask, StdCtrls, Buttons, Grids, DBGrids,
  rxToolEdit, rxCurrEdit, UDm, DB, ADODB, ButtonGroup, CategoryButtons, Tabs,
  UDm2, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  UConsGeralNfEnt, DBClient, Provider, UCancSaldoOc;

type
  TFNfEntrada = class(TForm)
    PaginaControle: TPageControl;
    TbGerais: TTabSheet;
    TbProdutos: TTabSheet;
    TbServicos: TTabSheet;
    Panel3: TPanel;
    EdCnpj: TMaskEdit;
    EdCodFor: TEdit;
    EdNumNfc: TEdit;
    EdCodSnf: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EdTipNfc: TComboBox;
    BCodFor: TBitBtn;
    BCodSnf: TBitBtn;
    EdVlrInf: TCurrencyEdit;
    Label7: TLabel;
    EdDatEnt: TDateEdit;
    EdDatEmi: TDateEdit;
    Label8: TLabel;
    Label9: TLabel;
    EdTnsPro: TEdit;
    EdTnsSer: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    EdCodCpg: TEdit;
    BCodCpg: TBitBtn;
    BTnsPro: TBitBtn;
    BTnsSer: TBitBtn;
    Label12: TLabel;
    ConsE095For: TADOQuery;
    ConsE095ForCODFOR: TIntegerField;
    ConsE095ForNOMFOR: TStringField;
    ConsE095ForAPEFOR: TStringField;
    ConsE095ForCGCCPF: TBCDField;
    LDsCodFor: TLabel;
    ConsE020Snf: TADOQuery;
    ConsE020SnfCODEMP: TIntegerField;
    ConsE020SnfCODFIL: TIntegerField;
    ConsE020SnfCODSNF: TStringField;
    ConsE020SnfDESSNF: TStringField;
    ConsE020SnfABRSNF: TStringField;
    ConsE020SnfULTNUM: TIntegerField;
    ConsE020SnfULTDAT: TDateTimeField;
    ConsE020SnfNUMNFD: TIntegerField;
    ConsE020SnfNUMNFA: TIntegerField;
    ConsE020SnfQTDITP: TIntegerField;
    ConsE020SnfQTDITS: TIntegerField;
    ConsE020SnfQTDPAR: TIntegerField;
    ConsE020SnfAPLSNF: TStringField;
    ConsE020SnfULTPRE: TIntegerField;
    ConsE020SnfMODREL: TStringField;
    ConsE020SnfMODDUP: TStringField;
    ConsE020SnfULTDUP: TBCDField;
    ConsE020SnfCODEDC: TStringField;
    ConsE020SnfVENDBS: TDateTimeField;
    ConsE020SnfVENDBV: TDateTimeField;
    ConsE020SnfCODSEL: TStringField;
    ConsE020SnfCODSSL: TStringField;
    ConsE020SnfUTIIMP: TStringField;
    ConsE020SnfCODEQU: TIntegerField;
    ConsE020SnfINDNMA: TStringField;
    ConsE020SnfDISAUT: TIntegerField;
    ConsE020SnfDIRNEL: TStringField;
    ConsE020SnfQTDPOS: TIntegerField;
    ConsE020SnfDIRCTE: TStringField;
    ConsE020SnfDIRNES: TStringField;
    LDsCodSnf: TLabel;
    ConsE001Tns: TADOQuery;
    ConsE001TnsCODEMP: TIntegerField;
    ConsE001TnsCODTNS: TStringField;
    ConsE001TnsDESTNS: TStringField;
    ConsE001TnsDETTNS: TStringField;
    ConsE001TnsLISMOD: TStringField;
    ConsE001TnsACEMAN: TStringField;
    ConsE001TnsTNSTEL: TStringField;
    ConsE001TnsCODFCT: TStringField;
    ConsE001TnsFORRAT: TIntegerField;
    ConsE001TnsTNSAPJ: TStringField;
    ConsE001TnsCRICTB: TStringField;
    ConsE001TnsCODNTG: TIntegerField;
    ConsE001TnsCODREG: TIntegerField;
    ConsE001TnsCRIRAT: TIntegerField;
    ConsE001TnsCTARED: TIntegerField;
    ConsE001TnsCTARCR: TIntegerField;
    ConsE001TnsCTAFDV: TIntegerField;
    ConsE001TnsCTAFCR: TIntegerField;
    ConsE001TnsCOMNOP: TStringField;
    ConsE001TnsCOMDIR: TStringField;
    ConsE001TnsCOMOIR: TStringField;
    ConsE001TnsCOMEIR: TStringField;
    ConsE001TnsCOMODR: TStringField;
    ConsE001TnsCOMDIN: TStringField;
    ConsE001TnsCOMOIN: TStringField;
    ConsE001TnsCOMEIN: TStringField;
    ConsE001TnsCOMODN: TStringField;
    ConsE001TnsCOMDIS: TStringField;
    ConsE001TnsCOMOIS: TStringField;
    ConsE001TnsCOMEIS: TStringField;
    ConsE001TnsCOMODS: TStringField;
    ConsE001TnsVENUPD: TStringField;
    ConsE001TnsVENTCF: TStringField;
    ConsE001TnsVENDEV: TStringField;
    ConsE001TnsVENFAT: TStringField;
    ConsE001TnsVENACP: TStringField;
    ConsE001TnsVENICM: TStringField;
    ConsE001TnsVENIBI: TStringField;
    ConsE001TnsVENFRE: TStringField;
    ConsE001TnsVENSEG: TStringField;
    ConsE001TnsVENEMB: TStringField;
    ConsE001TnsVENENC: TStringField;
    ConsE001TnsVENOUT: TStringField;
    ConsE001TnsVENDAR: TStringField;
    ConsE001TnsVENFRD: TStringField;
    ConsE001TnsVENOUD: TStringField;
    ConsE001TnsVENENT: TStringField;
    ConsE001TnsVENIPI: TStringField;
    ConsE001TnsVENFRI: TStringField;
    ConsE001TnsVENSEI: TStringField;
    ConsE001TnsVENEMI: TStringField;
    ConsE001TnsVENENI: TStringField;
    ConsE001TnsVENOUI: TStringField;
    ConsE001TnsVENDAI: TStringField;
    ConsE001TnsVENFDI: TStringField;
    ConsE001TnsVENODI: TStringField;
    ConsE001TnsVENLIR: TBCDField;
    ConsE001TnsVENIRF: TStringField;
    ConsE001TnsVENIFU: TStringField;
    ConsE001TnsVENISS: TStringField;
    ConsE001TnsVENDEP: TStringField;
    ConsE001TnsVENEBP: TIntegerField;
    ConsE001TnsVENMS1: TIntegerField;
    ConsE001TnsVENMS2: TIntegerField;
    ConsE001TnsVENMS3: TIntegerField;
    ConsE001TnsVENMS4: TIntegerField;
    ConsE001TnsVENTPT: TStringField;
    ConsE001TnsVENMOE: TStringField;
    ConsE001TnsVENTNF: TStringField;
    ConsE001TnsVENCTA: TStringField;
    ConsE001TnsVENFIN: TIntegerField;
    ConsE001TnsVENRED: TIntegerField;
    ConsE001TnsVENCCU: TStringField;
    ConsE001TnsESTEOS: TStringField;
    ConsE001TnsESTMOV: TStringField;
    ConsE001TnsESTVMV: TStringField;
    ConsE001TnsESTCON: TStringField;
    ConsE001TnsESTCOC: TStringField;
    ConsE001TnsESTCOF: TStringField;
    ConsE001TnsESTPRU: TStringField;
    ConsE001TnsESTPRR: TStringField;
    ConsE001TnsESTDEP: TStringField;
    ConsE001TnsESTTRF: TStringField;
    ConsE001TnsESTCTA: TStringField;
    ConsE001TnsESTFIN: TIntegerField;
    ConsE001TnsESTRED: TIntegerField;
    ConsE001TnsESTCCU: TStringField;
    ConsE001TnsESTAPF: TStringField;
    ConsE001TnsRECDEC: TStringField;
    ConsE001TnsRECADC: TStringField;
    ConsE001TnsRECTPB: TStringField;
    ConsE001TnsRECASH: TStringField;
    ConsE001TnsRECHIS: TStringField;
    ConsE001TnsRECCTA: TStringField;
    ConsE001TnsRECFIN: TIntegerField;
    ConsE001TnsRECRED: TIntegerField;
    ConsE001TnsRECCCU: TStringField;
    ConsE001TnsCPRUOC: TStringField;
    ConsE001TnsCPRHEN: TStringField;
    ConsE001TnsCPRTCF: TStringField;
    ConsE001TnsCPRDEV: TStringField;
    ConsE001TnsCPRAOC: TStringField;
    ConsE001TnsCPRLIR: TBCDField;
    ConsE001TnsCPRIRF: TStringField;
    ConsE001TnsCPRIFU: TStringField;
    ConsE001TnsCPRISS: TStringField;
    ConsE001TnsCPRDEP: TStringField;
    ConsE001TnsCPRMS1: TIntegerField;
    ConsE001TnsCPRMS2: TIntegerField;
    ConsE001TnsCPRMS3: TIntegerField;
    ConsE001TnsCPRMS4: TIntegerField;
    ConsE001TnsCPRTPT: TStringField;
    ConsE001TnsCPRMOE: TStringField;
    ConsE001TnsCPRIBI: TStringField;
    ConsE001TnsCPRFRE: TStringField;
    ConsE001TnsCPRSEG: TStringField;
    ConsE001TnsCPREMB: TStringField;
    ConsE001TnsCPRENC: TStringField;
    ConsE001TnsCPROUT: TStringField;
    ConsE001TnsCPRDAR: TStringField;
    ConsE001TnsCPRFRD: TStringField;
    ConsE001TnsCPROUD: TStringField;
    ConsE001TnsCPRRIC: TStringField;
    ConsE001TnsCPRCDA: TStringField;
    ConsE001TnsCPRENT: TStringField;
    ConsE001TnsCPRFRI: TStringField;
    ConsE001TnsCPRSEI: TStringField;
    ConsE001TnsCPREMI: TStringField;
    ConsE001TnsCPRENI: TStringField;
    ConsE001TnsCPROUI: TStringField;
    ConsE001TnsCPRDAI: TStringField;
    ConsE001TnsCPRFDI: TStringField;
    ConsE001TnsCPRODI: TStringField;
    ConsE001TnsCPRRIP: TStringField;
    ConsE001TnsCPRTNF: TStringField;
    ConsE001TnsCPRCTA: TStringField;
    ConsE001TnsCPRFIN: TIntegerField;
    ConsE001TnsCPRRED: TIntegerField;
    ConsE001TnsCPRCCU: TStringField;
    ConsE001TnsPAGDEC: TStringField;
    ConsE001TnsPAGADF: TStringField;
    ConsE001TnsPAGTPB: TStringField;
    ConsE001TnsPAGASH: TStringField;
    ConsE001TnsPAGHIS: TStringField;
    ConsE001TnsPAGVBC: TStringField;
    ConsE001TnsPAGTIR: TStringField;
    ConsE001TnsPAGCTA: TStringField;
    ConsE001TnsPAGFIN: TIntegerField;
    ConsE001TnsPAGRED: TIntegerField;
    ConsE001TnsPAGCCU: TStringField;
    ConsE001TnsPAGTCO: TStringField;
    ConsE001TnsPAGGIR: TStringField;
    ConsE001TnsPAGITR: TStringField;
    ConsE001TnsPAGVBS: TStringField;
    ConsE001TnsPAGDCC: TStringField;
    ConsE001TnsPAGTIS: TStringField;
    ConsE001TnsCXBDEC: TStringField;
    ConsE001TnsCXBTRF: TStringField;
    ConsE001TnsCXBCHE: TStringField;
    ConsE001TnsCXBCTA: TStringField;
    ConsE001TnsCXBFIN: TIntegerField;
    ConsE001TnsCXBFDC: TIntegerField;
    ConsE001TnsCXBRED: TIntegerField;
    ConsE001TnsCXBRDC: TIntegerField;
    ConsE001TnsCXBCCU: TStringField;
    ConsE001TnsCXBCDC: TStringField;
    ConsE001TnsCXBTMF: TStringField;
    ConsE001TnsPRJCTA: TStringField;
    ConsE001TnsPRJFIN: TIntegerField;
    ConsE001TnsPRJFDC: TIntegerField;
    ConsE001TnsPRJCCU: TStringField;
    ConsE001TnsPRJCDC: TStringField;
    ConsE001TnsPRJDEC: TStringField;
    ConsE001TnsPATMOV: TIntegerField;
    ConsE001TnsPATTRF: TStringField;
    ConsE001TnsPATDED: TStringField;
    ConsE001TnsPATBAI: TStringField;
    ConsE001TnsPATCAL: TStringField;
    ConsE001TnsPATRCA: TIntegerField;
    ConsE001TnsPATDAT: TStringField;
    ConsE001TnsPATACR: TStringField;
    ConsE001TnsPATTPD: TStringField;
    ConsE001TnsPATMOT: TIntegerField;
    ConsE001TnsSITTNS: TStringField;
    ConsE001TnsUSUGER: TBCDField;
    ConsE001TnsDATGER: TDateTimeField;
    ConsE001TnsHORGER: TIntegerField;
    ConsE001TnsCOMIIR: TStringField;
    ConsE001TnsCPRTIN: TStringField;
    ConsE001TnsCOMLIN: TBCDField;
    ConsE001TnsFVETNS: TStringField;
    ConsE001TnsFVEDEC: TStringField;
    ConsE001TnsVENLGT: TStringField;
    ConsE001TnsCPRTIS: TStringField;
    ConsE001TnsVENTIP: TStringField;
    ConsE001TnsCOMING: TStringField;
    ConsE001TnsCPRRPI: TStringField;
    ConsE001TnsCPRIBP: TStringField;
    ConsE001TnsCPRFRP: TStringField;
    ConsE001TnsCPRSEP: TStringField;
    ConsE001TnsCPREMP: TStringField;
    ConsE001TnsCPRENP: TStringField;
    ConsE001TnsCPROUP: TStringField;
    ConsE001TnsCPRDAP: TStringField;
    ConsE001TnsCPRFDP: TStringField;
    ConsE001TnsCPRODP: TStringField;
    ConsE001TnsCOMNAT: TStringField;
    ConsE001TnsINDEXP: TIntegerField;
    ConsE001TnsDATPAL: TDateTimeField;
    ConsE001TnsHORPAL: TIntegerField;
    ConsE001TnsCOMSTR: TStringField;
    ConsE001TnsCOMTIC: TStringField;
    ConsE001TnsCOMTRD: TStringField;
    ConsE001TnsCOMTST: TStringField;
    ConsE001TnsCPRTIE: TStringField;
    ConsE001TnsCOMSIP: TIntegerField;
    ConsE001TnsESTCQM: TStringField;
    ConsE001TnsCOMCIM: TStringField;
    ConsE001TnsCOMSSG: TStringField;
    ConsE001TnsCPRCVE: TStringField;
    ConsE001TnsVENECO: TStringField;
    ConsE001TnsVENOUC: TStringField;
    ConsE001TnsVENDAC: TStringField;
    ConsE001TnsVENODC: TStringField;
    ConsE001TnsVENLCO: TBCDField;
    ConsE001TnsVENCOF: TStringField;
    ConsE001TnsVENENP: TStringField;
    ConsE001TnsVENOUP: TStringField;
    ConsE001TnsVENDAP: TStringField;
    ConsE001TnsVENODP: TStringField;
    ConsE001TnsVENLPI: TBCDField;
    ConsE001TnsVENPIS: TStringField;
    ConsE001TnsVENENL: TStringField;
    ConsE001TnsVENOUL: TStringField;
    ConsE001TnsVENDAL: TStringField;
    ConsE001TnsVENODL: TStringField;
    ConsE001TnsVENLCL: TBCDField;
    ConsE001TnsVENCSL: TStringField;
    ConsE001TnsVENENO: TStringField;
    ConsE001TnsVENOUO: TStringField;
    ConsE001TnsVENDAO: TStringField;
    ConsE001TnsVENODO: TStringField;
    ConsE001TnsVENLOR: TBCDField;
    ConsE001TnsVENOUR: TStringField;
    ConsE001TnsTNSCIP: TStringField;
    ConsE001TnsESTCAM: TStringField;
    ConsE001TnsESTWMS: TStringField;
    ConsE001TnsESTESV: TStringField;
    ConsE001TnsSOMSUB: TIntegerField;
    LDsTnsPro: TLabel;
    LDsTnsSer: TLabel;
    ConsE028Cpg: TADOQuery;
    ConsE028CpgCODEMP: TIntegerField;
    ConsE028CpgCODCPG: TStringField;
    ConsE028CpgDESCPG: TStringField;
    ConsE028CpgABRCPG: TStringField;
    ConsE028CpgAPLCPG: TStringField;
    ConsE028CpgPGTANT: TStringField;
    ConsE028CpgDIAESP: TStringField;
    ConsE028CpgDIAME1: TIntegerField;
    ConsE028CpgDIAME2: TIntegerField;
    ConsE028CpgDIAME3: TIntegerField;
    ConsE028CpgDIASEM: TStringField;
    ConsE028CpgDIAMES: TStringField;
    ConsE028CpgPRZMED: TIntegerField;
    ConsE028CpgQTDPAR: TIntegerField;
    ConsE028CpgIPIPAR: TStringField;
    ConsE028CpgICMPAR: TStringField;
    ConsE028CpgSUBPAR: TStringField;
    ConsE028CpgFREPAR: TStringField;
    ConsE028CpgSEGPAR: TStringField;
    ConsE028CpgENCPAR: TStringField;
    ConsE028CpgEMBPAR: TStringField;
    ConsE028CpgOUTPAR: TStringField;
    ConsE028CpgDARPAR: TStringField;
    ConsE028CpgACRFIN: TBCDField;
    ConsE028CpgVENDSC: TBCDField;
    ConsE028CpgCPRDSC: TBCDField;
    ConsE028CpgPERDSC: TBCDField;
    ConsE028CpgPERCOM: TBCDField;
    ConsE028CpgREDCOM: TBCDField;
    ConsE028CpgTIPPAR: TIntegerField;
    ConsE028CpgSITCPG: TStringField;
    ConsE028CpgCODTPR: TStringField;
    ConsE028CpgFVECPG: TStringField;
    ConsE028CpgFVEDEC: TStringField;
    ConsE028CpgINDEXP: TIntegerField;
    ConsE028CpgDATPAL: TDateTimeField;
    ConsE028CpgHORPAL: TIntegerField;
    ConsE028CpgTIPINT: TIntegerField;
    ConsE028CpgCODPDV: TIntegerField;
    ConsE028CpgISSPAR: TStringField;
    ConsE028CpgDATGER: TDateTimeField;
    ConsE028CpgHORGER: TIntegerField;
    ConsE028CpgUSUGER: TBCDField;
    ConsE028CpgDATATU: TDateTimeField;
    ConsE028CpgHORATU: TIntegerField;
    ConsE028CpgUSUATU: TBCDField;
    ConsE028CpgPERENC: TBCDField;
    LDsCodCpg: TLabel;
    Panel1: TPanel;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    BProcessar: TBitBtn;
    SapSid: TIdHTTP;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    LDsFornecedor: TLabel;
    ConsE440Ipc: TADOQuery;
    ProviderE440Ipc: TDataSetProvider;
    ClientE440Ipc: TClientDataSet;
    ConsE440IpcCODEMP: TIntegerField;
    ConsE440IpcCODFIL: TIntegerField;
    ConsE440IpcCODFOR: TIntegerField;
    ConsE440IpcNUMNFC: TIntegerField;
    ConsE440IpcCODSNF: TStringField;
    ConsE440IpcSEQIPC: TIntegerField;
    ConsE440IpcTNSPRO: TStringField;
    ConsE440IpcNOPPRO: TStringField;
    ConsE440IpcFILOCP: TIntegerField;
    ConsE440IpcNUMOCP: TIntegerField;
    ConsE440IpcSEQIPO: TIntegerField;
    ConsE440IpcCODPRO: TStringField;
    ConsE440IpcCODDER: TStringField;
    ConsE440IpcCPLIPC: TStringField;
    ConsE440IpcCODFAM: TStringField;
    ConsE440IpcCODCLF: TStringField;
    ConsE440IpcCODSTR: TStringField;
    ConsE440IpcCODTIC: TStringField;
    ConsE440IpcCODTRD: TStringField;
    ConsE440IpcCODTST: TStringField;
    ConsE440IpcCODSTP: TStringField;
    ConsE440IpcCODSTC: TStringField;
    ConsE440IpcLAUTEC: TStringField;
    ConsE440IpcUSULAU: TBCDField;
    ConsE440IpcDATLAU: TDateTimeField;
    ConsE440IpcHORLAU: TIntegerField;
    ConsE440IpcCODDEP: TStringField;
    ConsE440IpcCODLOT: TStringField;
    ConsE440IpcQTDREC: TFMTBCDField;
    ConsE440IpcUNINFC: TStringField;
    ConsE440IpcQTDAJB: TFMTBCDField;
    ConsE440IpcQTDDEV: TFMTBCDField;
    ConsE440IpcUNIMED: TStringField;
    ConsE440IpcQTDEST: TFMTBCDField;
    ConsE440IpcVLRFUM: TBCDField;
    ConsE440IpcQTDFRE: TFMTBCDField;
    ConsE440IpcFORFRE: TIntegerField;
    ConsE440IpcPESBRU: TFMTBCDField;
    ConsE440IpcPESLIQ: TFMTBCDField;
    ConsE440IpcCODTPR: TStringField;
    ConsE440IpcPREUNI: TFMTBCDField;
    ConsE440IpcPREEST: TFMTBCDField;
    ConsE440IpcPREBAS: TFMTBCDField;
    ConsE440IpcPERDSC: TBCDField;
    ConsE440IpcPERDS3: TBCDField;
    ConsE440IpcPERDS4: TBCDField;
    ConsE440IpcPERDS5: TBCDField;
    ConsE440IpcPERIPI: TBCDField;
    ConsE440IpcPERICM: TBCDField;
    ConsE440IpcPERFUN: TBCDField;
    ConsE440IpcSALCAN: TStringField;
    ConsE440IpcNUMPRJ: TIntegerField;
    ConsE440IpcCODFPJ: TIntegerField;
    ConsE440IpcCTAFIN: TIntegerField;
    ConsE440IpcCTARED: TIntegerField;
    ConsE440IpcCODCCU: TStringField;
    ConsE440IpcVLRFRE: TBCDField;
    ConsE440IpcVLRSEG: TBCDField;
    ConsE440IpcVLREMB: TBCDField;
    ConsE440IpcVLRENC: TBCDField;
    ConsE440IpcVLROUT: TBCDField;
    ConsE440IpcVLRDAR: TBCDField;
    ConsE440IpcVLRFRD: TBCDField;
    ConsE440IpcVLROUD: TBCDField;
    ConsE440IpcVLRBRU: TBCDField;
    ConsE440IpcVLRDSC: TBCDField;
    ConsE440IpcVLRDS1: TBCDField;
    ConsE440IpcVLRDS2: TBCDField;
    ConsE440IpcVLRDS3: TBCDField;
    ConsE440IpcVLRDS4: TBCDField;
    ConsE440IpcVLRDS5: TBCDField;
    ConsE440IpcVLRDZF: TBCDField;
    ConsE440IpcVLRBFU: TBCDField;
    ConsE440IpcVLRFUN: TBCDField;
    ConsE440IpcVLRBIP: TBCDField;
    ConsE440IpcVLRIPI: TBCDField;
    ConsE440IpcVLRBID: TBCDField;
    ConsE440IpcVLRIPD: TBCDField;
    ConsE440IpcVLRBIC: TBCDField;
    ConsE440IpcVLRICM: TBCDField;
    ConsE440IpcVLRDFA: TBCDField;
    ConsE440IpcVLRBSI: TBCDField;
    ConsE440IpcVLRICS: TBCDField;
    ConsE440IpcVLRBSD: TBCDField;
    ConsE440IpcVLRISD: TBCDField;
    ConsE440IpcVLRBSP: TBCDField;
    ConsE440IpcVLRSTP: TBCDField;
    ConsE440IpcVLRBSC: TBCDField;
    ConsE440IpcVLRSTC: TBCDField;
    ConsE440IpcVLRIIP: TBCDField;
    ConsE440IpcVLRIIC: TBCDField;
    ConsE440IpcVLROIP: TBCDField;
    ConsE440IpcVLROIC: TBCDField;
    ConsE440IpcVLRLPR: TBCDField;
    ConsE440IpcVLRLOU: TBCDField;
    ConsE440IpcVLRLIQ: TBCDField;
    ConsE440IpcVLRFIN: TBCDField;
    ConsE440IpcACRFIN: TBCDField;
    ConsE440IpcEMPNFV: TIntegerField;
    ConsE440IpcFILNFV: TIntegerField;
    ConsE440IpcSNFNFV: TStringField;
    ConsE440IpcNUMNFV: TIntegerField;
    ConsE440IpcSEQIPV: TIntegerField;
    ConsE440IpcCODFAB: TStringField;
    ConsE440IpcUSUGER: TBCDField;
    ConsE440IpcDATGER: TDateTimeField;
    ConsE440IpcHORGER: TIntegerField;
    ConsE440IpcNUMEPI: TIntegerField;
    ConsE440IpcDATVLT: TDateTimeField;
    ConsE440IpcVLRBPI: TBCDField;
    ConsE440IpcVLRPIS: TBCDField;
    ConsE440IpcFILCTR: TIntegerField;
    ConsE440IpcNUMCTR: TIntegerField;
    ConsE440IpcDATCPT: TDateTimeField;
    ConsE440IpcSEQCCP: TIntegerField;
    ConsE440IpcINTPAT: TStringField;
    ConsE440IpcNOTFOR: TBCDField;
    ConsE440IpcNOTPRO: TBCDField;
    ConsE440IpcPROFAB: TStringField;
    ConsE440IpcSEQISC: TIntegerField;
    ConsE440IpcVLRBCR: TBCDField;
    ConsE440IpcVLRCOR: TBCDField;
    ConsE440IpcPERIIM: TBCDField;
    ConsE440IpcVLRBII: TBCDField;
    ConsE440IpcVLRIIM: TBCDField;
    ConsE440IpcVLRRIS: TBCDField;
    ConsE440IpcCODBEM: TStringField;
    ConsE440IpcPERPIT: TBCDField;
    ConsE440IpcVLRBPT: TBCDField;
    ConsE440IpcVLRPIT: TBCDField;
    ConsE440IpcPERCRT: TBCDField;
    ConsE440IpcVLRBCT: TBCDField;
    ConsE440IpcVLRCRT: TBCDField;
    ConsE440IpcPERCSL: TBCDField;
    ConsE440IpcVLRBCL: TBCDField;
    ConsE440IpcVLRCSL: TBCDField;
    ConsE440IpcPEROUR: TBCDField;
    ConsE440IpcVLRBOR: TBCDField;
    ConsE440IpcVLROUR: TBCDField;
    ConsE440IpcPERIRF: TBCDField;
    ConsE440IpcVLRBIR: TBCDField;
    ConsE440IpcVLRIRF: TBCDField;
    ConsE440IpcPERDS1: TBCDField;
    ConsE440IpcPERDS2: TBCDField;
    ConsE440IpcBECIPI: TBCDField;
    ConsE440IpcVECIPI: TBCDField;
    ConsE440IpcBECICM: TBCDField;
    ConsE440IpcVECICM: TBCDField;
    ConsE440IpcPROFOR: TStringField;
    ConsE440IpcVLRFEI: TBCDField;
    ConsE440IpcVLRSEI: TBCDField;
    ConsE440IpcVLROUI: TBCDField;
    ConsE440IpcBCOIMP: TBCDField;
    ConsE440IpcCOFIMP: TBCDField;
    ConsE440IpcBPIIMP: TBCDField;
    ConsE440IpcPISIMP: TBCDField;
    ConsE440IpcFILPED: TIntegerField;
    ConsE440IpcNUMPED: TIntegerField;
    ConsE440IpcSEQIPD: TIntegerField;
    ConsE440IpcVLRDM1: TFMTBCDField;
    ConsE440IpcVLRDM2: TFMTBCDField;
    ConsE440IpcVLRDM3: TFMTBCDField;
    ConsE440IpcVLRDM4: TFMTBCDField;
    ConsE440IpcVLRDM5: TFMTBCDField;
    ConsE440IpcVLRDM6: TFMTBCDField;
    ConsE440IpcBEMPRI: TStringField;
    ConsE440IpcVLRBPF: TBCDField;
    ConsE440IpcPERPIF: TBCDField;
    ConsE440IpcVLRPIF: TBCDField;
    ConsE440IpcVLRBCF: TBCDField;
    ConsE440IpcPERCFF: TBCDField;
    ConsE440IpcVLRCFF: TBCDField;
    ConsE440IpcCSTIPI: TStringField;
    ConsE440IpcCSTPIS: TStringField;
    ConsE440IpcCSTCOF: TStringField;
    ConsE440IpcCODDFS: TIntegerField;
    ConsE440IpcVLRAJS: TBCDField;
    ConsE440IpcSEQEVE: TIntegerField;
    ClientE440IpcCODEMP: TIntegerField;
    ClientE440IpcCODFIL: TIntegerField;
    ClientE440IpcCODFOR: TIntegerField;
    ClientE440IpcNUMNFC: TIntegerField;
    ClientE440IpcCODSNF: TStringField;
    ClientE440IpcSEQIPC: TIntegerField;
    ClientE440IpcTNSPRO: TStringField;
    ClientE440IpcNOPPRO: TStringField;
    ClientE440IpcFILOCP: TIntegerField;
    ClientE440IpcNUMOCP: TIntegerField;
    ClientE440IpcSEQIPO: TIntegerField;
    ClientE440IpcCODPRO: TStringField;
    ClientE440IpcCODDER: TStringField;
    ClientE440IpcCPLIPC: TStringField;
    ClientE440IpcCODFAM: TStringField;
    ClientE440IpcCODCLF: TStringField;
    ClientE440IpcCODSTR: TStringField;
    ClientE440IpcCODTIC: TStringField;
    ClientE440IpcCODTRD: TStringField;
    ClientE440IpcCODTST: TStringField;
    ClientE440IpcCODSTP: TStringField;
    ClientE440IpcCODSTC: TStringField;
    ClientE440IpcLAUTEC: TStringField;
    ClientE440IpcUSULAU: TBCDField;
    ClientE440IpcDATLAU: TDateTimeField;
    ClientE440IpcHORLAU: TIntegerField;
    ClientE440IpcCODDEP: TStringField;
    ClientE440IpcCODLOT: TStringField;
    ClientE440IpcQTDREC: TFMTBCDField;
    ClientE440IpcUNINFC: TStringField;
    ClientE440IpcQTDAJB: TFMTBCDField;
    ClientE440IpcQTDDEV: TFMTBCDField;
    ClientE440IpcUNIMED: TStringField;
    ClientE440IpcQTDEST: TFMTBCDField;
    ClientE440IpcVLRFUM: TBCDField;
    ClientE440IpcQTDFRE: TFMTBCDField;
    ClientE440IpcFORFRE: TIntegerField;
    ClientE440IpcPESBRU: TFMTBCDField;
    ClientE440IpcPESLIQ: TFMTBCDField;
    ClientE440IpcCODTPR: TStringField;
    ClientE440IpcPREUNI: TFMTBCDField;
    ClientE440IpcPREEST: TFMTBCDField;
    ClientE440IpcPREBAS: TFMTBCDField;
    ClientE440IpcPERDSC: TBCDField;
    ClientE440IpcPERDS3: TBCDField;
    ClientE440IpcPERDS4: TBCDField;
    ClientE440IpcPERDS5: TBCDField;
    ClientE440IpcPERIPI: TBCDField;
    ClientE440IpcPERICM: TBCDField;
    ClientE440IpcPERFUN: TBCDField;
    ClientE440IpcSALCAN: TStringField;
    ClientE440IpcNUMPRJ: TIntegerField;
    ClientE440IpcCODFPJ: TIntegerField;
    ClientE440IpcCTAFIN: TIntegerField;
    ClientE440IpcCTARED: TIntegerField;
    ClientE440IpcCODCCU: TStringField;
    ClientE440IpcVLRFRE: TBCDField;
    ClientE440IpcVLRSEG: TBCDField;
    ClientE440IpcVLREMB: TBCDField;
    ClientE440IpcVLRENC: TBCDField;
    ClientE440IpcVLROUT: TBCDField;
    ClientE440IpcVLRDAR: TBCDField;
    ClientE440IpcVLRFRD: TBCDField;
    ClientE440IpcVLROUD: TBCDField;
    ClientE440IpcVLRBRU: TBCDField;
    ClientE440IpcVLRDSC: TBCDField;
    ClientE440IpcVLRDS1: TBCDField;
    ClientE440IpcVLRDS2: TBCDField;
    ClientE440IpcVLRDS3: TBCDField;
    ClientE440IpcVLRDS4: TBCDField;
    ClientE440IpcVLRDS5: TBCDField;
    ClientE440IpcVLRDZF: TBCDField;
    ClientE440IpcVLRBFU: TBCDField;
    ClientE440IpcVLRFUN: TBCDField;
    ClientE440IpcVLRBIP: TBCDField;
    ClientE440IpcVLRIPI: TBCDField;
    ClientE440IpcVLRBID: TBCDField;
    ClientE440IpcVLRIPD: TBCDField;
    ClientE440IpcVLRBIC: TBCDField;
    ClientE440IpcVLRICM: TBCDField;
    ClientE440IpcVLRDFA: TBCDField;
    ClientE440IpcVLRBSI: TBCDField;
    ClientE440IpcVLRICS: TBCDField;
    ClientE440IpcVLRBSD: TBCDField;
    ClientE440IpcVLRISD: TBCDField;
    ClientE440IpcVLRBSP: TBCDField;
    ClientE440IpcVLRSTP: TBCDField;
    ClientE440IpcVLRBSC: TBCDField;
    ClientE440IpcVLRSTC: TBCDField;
    ClientE440IpcVLRIIP: TBCDField;
    ClientE440IpcVLRIIC: TBCDField;
    ClientE440IpcVLROIP: TBCDField;
    ClientE440IpcVLROIC: TBCDField;
    ClientE440IpcVLRLPR: TBCDField;
    ClientE440IpcVLRLOU: TBCDField;
    ClientE440IpcVLRLIQ: TBCDField;
    ClientE440IpcVLRFIN: TBCDField;
    ClientE440IpcACRFIN: TBCDField;
    ClientE440IpcEMPNFV: TIntegerField;
    ClientE440IpcFILNFV: TIntegerField;
    ClientE440IpcSNFNFV: TStringField;
    ClientE440IpcNUMNFV: TIntegerField;
    ClientE440IpcSEQIPV: TIntegerField;
    ClientE440IpcCODFAB: TStringField;
    ClientE440IpcUSUGER: TBCDField;
    ClientE440IpcDATGER: TDateTimeField;
    ClientE440IpcHORGER: TIntegerField;
    ClientE440IpcNUMEPI: TIntegerField;
    ClientE440IpcDATVLT: TDateTimeField;
    ClientE440IpcVLRBPI: TBCDField;
    ClientE440IpcVLRPIS: TBCDField;
    ClientE440IpcFILCTR: TIntegerField;
    ClientE440IpcNUMCTR: TIntegerField;
    ClientE440IpcDATCPT: TDateTimeField;
    ClientE440IpcSEQCCP: TIntegerField;
    ClientE440IpcINTPAT: TStringField;
    ClientE440IpcNOTFOR: TBCDField;
    ClientE440IpcNOTPRO: TBCDField;
    ClientE440IpcPROFAB: TStringField;
    ClientE440IpcSEQISC: TIntegerField;
    ClientE440IpcVLRBCR: TBCDField;
    ClientE440IpcVLRCOR: TBCDField;
    ClientE440IpcPERIIM: TBCDField;
    ClientE440IpcVLRBII: TBCDField;
    ClientE440IpcVLRIIM: TBCDField;
    ClientE440IpcVLRRIS: TBCDField;
    ClientE440IpcCODBEM: TStringField;
    ClientE440IpcPERPIT: TBCDField;
    ClientE440IpcVLRBPT: TBCDField;
    ClientE440IpcVLRPIT: TBCDField;
    ClientE440IpcPERCRT: TBCDField;
    ClientE440IpcVLRBCT: TBCDField;
    ClientE440IpcVLRCRT: TBCDField;
    ClientE440IpcPERCSL: TBCDField;
    ClientE440IpcVLRBCL: TBCDField;
    ClientE440IpcVLRCSL: TBCDField;
    ClientE440IpcPEROUR: TBCDField;
    ClientE440IpcVLRBOR: TBCDField;
    ClientE440IpcVLROUR: TBCDField;
    ClientE440IpcPERIRF: TBCDField;
    ClientE440IpcVLRBIR: TBCDField;
    ClientE440IpcVLRIRF: TBCDField;
    ClientE440IpcPERDS1: TBCDField;
    ClientE440IpcPERDS2: TBCDField;
    ClientE440IpcBECIPI: TBCDField;
    ClientE440IpcVECIPI: TBCDField;
    ClientE440IpcBECICM: TBCDField;
    ClientE440IpcVECICM: TBCDField;
    ClientE440IpcPROFOR: TStringField;
    ClientE440IpcVLRFEI: TBCDField;
    ClientE440IpcVLRSEI: TBCDField;
    ClientE440IpcVLROUI: TBCDField;
    ClientE440IpcBCOIMP: TBCDField;
    ClientE440IpcCOFIMP: TBCDField;
    ClientE440IpcBPIIMP: TBCDField;
    ClientE440IpcPISIMP: TBCDField;
    ClientE440IpcFILPED: TIntegerField;
    ClientE440IpcNUMPED: TIntegerField;
    ClientE440IpcSEQIPD: TIntegerField;
    ClientE440IpcVLRDM1: TFMTBCDField;
    ClientE440IpcVLRDM2: TFMTBCDField;
    ClientE440IpcVLRDM3: TFMTBCDField;
    ClientE440IpcVLRDM4: TFMTBCDField;
    ClientE440IpcVLRDM5: TFMTBCDField;
    ClientE440IpcVLRDM6: TFMTBCDField;
    ClientE440IpcBEMPRI: TStringField;
    ClientE440IpcVLRBPF: TBCDField;
    ClientE440IpcPERPIF: TBCDField;
    ClientE440IpcVLRPIF: TBCDField;
    ClientE440IpcVLRBCF: TBCDField;
    ClientE440IpcPERCFF: TBCDField;
    ClientE440IpcVLRCFF: TBCDField;
    ClientE440IpcCSTIPI: TStringField;
    ClientE440IpcCSTPIS: TStringField;
    ClientE440IpcCSTCOF: TStringField;
    ClientE440IpcCODDFS: TIntegerField;
    ClientE440IpcVLRAJS: TBCDField;
    ClientE440IpcSEQEVE: TIntegerField;
    DsClientE440Ipc: TDataSource;
    BExcluir: TBitBtn;
    BAdicionar: TBitBtn;
    BConfirma: TBitBtn;
    BCancela: TBitBtn;
    ClientE440IpcDsCodPro: TStringField;
    ConsE075Pro: TADOQuery;
    ConsE075ProCODPRO: TStringField;
    ConsE075ProDESPRO: TStringField;
    EdTotBru: TCurrencyEdit;
    EdTotIcm: TCurrencyEdit;
    Label13: TLabel;
    Label14: TLabel;
    ConsE095ForSIGUFS: TStringField;
    Bprodutos: TBitBtn;
    ConsE440Nfc: TADOQuery;
    ConsE440NfcCODEMP: TIntegerField;
    ConsE440NfcCODFIL: TIntegerField;
    ConsE440NfcCODFOR: TIntegerField;
    ConsE440NfcNUMNFC: TIntegerField;
    ConsE440NfcCODSNF: TStringField;
    ConsE440NfcTIPNFE: TIntegerField;
    BCanSaldo: TBitBtn;
    CadUsu_TCanSal: TADOQuery;
    CadUsu_TCanSalUSU_CODEMP: TIntegerField;
    CadUsu_TCanSalUSU_CODFIL: TIntegerField;
    CadUsu_TCanSalUSU_NUMOCP: TIntegerField;
    CadUsu_TCanSalUSU_SEQIPO: TIntegerField;
    CadUsu_TCanSalUSU_DATCAN: TDateTimeField;
    CadUsu_TCanSalUSU_SALCAN: TStringField;
    CadUsu_TCanSalUSU_USUCAN: TBCDField;
    procedure EdCnpjExit(Sender: TObject);
    procedure EdCodForExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdCodSnfExit(Sender: TObject);
    procedure EdTnsProExit(Sender: TObject);
    procedure EdTnsSerExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodCpgExit(Sender: TObject);
    procedure BProcessarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TbProdutosShow(Sender: TObject);
    procedure EdDatEmiExit(Sender: TObject);
    procedure BCodForClick(Sender: TObject);
    procedure BCodSnfClick(Sender: TObject);
    procedure BTnsProClick(Sender: TObject);
    procedure BTnsSerClick(Sender: TObject);
    procedure BCodCpgClick(Sender: TObject);
    procedure BAdicionarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BConfirmaClick(Sender: TObject);
    procedure ClientE440IpcCalcFields(DataSet: TDataSet);
    procedure EdCodForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodSnfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdTnsProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdTnsSerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCpgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PaginaControleChange(Sender: TObject);
    procedure BprodutosClick(Sender: TObject);
    procedure BCancelaClick(Sender: TObject);
    procedure BCanSaldoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    vbNfConfirmado : Boolean;
  public
    { Public declarations }
  end;

var
  FNfEntrada: TFNfEntrada;

implementation
uses  UAddMtNfEnt;

{$R *.dfm}

procedure TFNfEntrada.BAdicionarClick(Sender: TObject);
var vnTotIcm,vnTotBru : Currency;
begin
    FAddMtNfEnt := TFAddMtNfEnt.Create(Self);
    FAddMtNfEnt.ShowModal;
    FreeAndNil(FAddMtNfEnt);

    //atualiza o calculo dos valores
    vnTotIcm := 0;
    vnTotBru := 0;
    ClientE440Ipc.First;
    while not ClientE440Ipc.Eof do
      begin
        vnTotIcm := vnTotIcm + ClientE440IpcVLRICM.AsCurrency;
        vnTotBru := vnTotBru + ClientE440IpcVLRBRU.AsCurrency;
        ClientE440Ipc.Next;
      end;
      ClientE440Ipc.First;
      EdTotIcm.Value := vnTotIcm;
      EdTotBru.Value := vnTotBru;

end;

procedure TFNfEntrada.BCancelaClick(Sender: TObject);
var  vnTotIcm,vnTotBru : Currency;
begin
    if Application.MessageBox('Deseja Cancelar?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
       Begin//1
         ClientE440Ipc.First;
         while not ClientE440Ipc.Eof do
           begin//2
              if ClientE440IpcNUMPED.Value = 111111 then
                 begin//3
                   //apaga o regisntro na tabela usu_tcansal
                   CadUsu_TCanSal.Close;
                   CadUsu_TCanSal.Parameters.ParamByName('codemp').Value := ClientE440IpcCODEMP.Value;
                   CadUsu_TCanSal.Parameters.ParamByName('codfil').Value := ClientE440IpcCODFIL.Value;
                   CadUsu_TCanSal.Parameters.ParamByName('numocp').Value := ClientE440IpcNUMOCP.Value;
                   CadUsu_TCanSal.Parameters.ParamByName('seqipo').Value := ClientE440IpcSEQIPO.Value;
                   CadUsu_TCanSal.Open;
                   if not CadUsu_TCanSal.IsEmpty then
                      CadUsu_TCanSal.Delete;

                   ClientE440Ipc.Delete;
                 end//3
              else
                 begin
                   ClientE440Ipc.Next;
                 end;
           end;//2

         //atualiza o calculo dos valores
         vnTotIcm := 0;
         vnTotBru := 0;
         ClientE440Ipc.First;
         while not ClientE440Ipc.Eof do
           begin
             vnTotIcm := vnTotIcm + ClientE440IpcVLRICM.AsCurrency;
             vnTotBru := vnTotBru + ClientE440IpcVLRBRU.AsCurrency;
             ClientE440Ipc.Next;
           end;
         ClientE440Ipc.First;
         EdTotIcm.Value := vnTotIcm;
         EdTotBru.Value := vnTotBru;

       End;//1
end;

procedure TFNfEntrada.BCanSaldoClick(Sender: TObject);
begin
    FCancSaldoOc := TFCancSaldoOc.Create(Self);
    FCancSaldoOc.ShowModal;
    FreeAndNil(FCancSaldoOc);
end;

procedure TFNfEntrada.BCodCpgClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select * from e028cpg';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'CodCpg';
    FConsGeralNfEnt.vnColuna := 999999;
    FConsGeralNfEnt.vaTela := 'FNfEntrada';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
end;

procedure TFNfEntrada.BCodForClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select * from e095for';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'CodFor';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FNfEntrada';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
end;

procedure TFNfEntrada.BCodSnfClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select * from e020snf';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'CodSnf';
    FConsGeralNfEnt.vnColuna := 999999;
    FConsGeralNfEnt.vaTela := 'FNfEntrada';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
end;

procedure TFNfEntrada.BConfirmaClick(Sender: TObject);
var
    vaCodFor : string;
    vaNumNfc : string;
    vaCodSnf : string;
    vaTnsPro : string;
    vaTnsSer : string;
    vaCodPro : string;
    vaCodDer : string;
    vaQtdRec : string;
    vaPreUni : string;
    vaFilOpc : string;
    vaNumOpc : string;
    vaSeqIpo : string;
    vaCodDep : string;
    vaPerIcm : string;
    vaVlrBic : string;
    vaVlrIcm : string;
    vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;
begin
if not ClientE440Ipc.IsEmpty then
  begin//4
   if vbNfConfirmado = false then
      begin//5
        // BProcessarClick(Sender);
        BProcessar.Click;
      end;//5

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
     begin//1
       vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;
     end;//1

      //percorre os itens do clientE440Ipc
      ClientE440Ipc.First;
       while not ClientE440Ipc.Eof do
          begin//2
          if ClientE440IpcNUMPED.AsInteger = 111111 then
           begin//3
           //atribui os valores para as variaveis
            vaCodFor := IntToStr(ClientE440IpcCODFOR.AsInteger);
            vaCodSnf := ClientE440IpcCODSNF.AsString;
            vaCodPro := ClientE440IpcCODPRO.AsString;
            vaCodDer := '';
            vaNumNfc := IntToStr(ClientE440IpcNUMNFC.AsInteger);
            vaTnsPro := ClientE440IpcTNSPRO.AsString;

            if ClientE440IpcNUMOCP.Value = 0 then
              begin
               vaNumOpc := '';
               vaSeqIpo := '';
               vaFilOpc := '';
              end
            else
              begin
                vaNumOpc := IntToStr(ClientE440IpcNUMOCP.AsInteger);
                vaSeqIpo := IntToStr(ClientE440IpcSEQIPO.AsInteger);
                vaFilOpc := '1';
              end;

            vaQtdRec := CurrToStr(ClientE440IpcQTDREC.AsCurrency);
            vaPreUni := CurrToStr(ClientE440IpcPREUNI.AsCurrency);
            vaPerIcm := CurrToStr(ClientE440IpcPERICM.AsCurrency);
            vaVlrBic := CurrToStr(ClientE440IpcVLRBIC.AsCurrency);
            vaVlrIcm := CurrToStr(ClientE440IpcVLRICM.AsCurrency);
            vaCodDep := '1001';


            xPostQuery.Clear;
            xPostQuery.Add('ACAO=SID.Nfc.GravarProduto');
            xPostQuery.Add('&CodFor='+vaCodFor);
            xPostQuery.Add('&NumNfc='+vaNumNfc);
            xPostQuery.Add('&CodSnf='+vaCodSnf);
            xPostQuery.Add('&TnsPro='+vaTnsPro);
            xPostQuery.Add('&CodPro='+vaCodPro);
            xPostQuery.Add('&CodDer='+vaCodDer);
            xPostQuery.Add('&QtdRec='+vaQtdRec);
            xPostQuery.Add('&PreUni='+vaPreUni);
            xPostQuery.Add('&FilOcp='+vaFilOpc);
            xPostQuery.Add('&NumOcp='+vaNumOpc);
            xPostQuery.Add('&SeqIpo='+vaSeqIpo);
            xPostQuery.Add('&CodDep='+vaCodDep);
            xPostQuery.Add('&PerIcm='+vaPerIcm);
            xPostQuery.Add('&VlrBic='+vaVlrBic);
            xPostQuery.Add('&VlrIcm='+vaVlrIcm);

            // Executar ação  Gravar produto da nota
            xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

            //para o iten nao ser confirmado novamente
            ClientE440Ipc.Edit;
            ClientE440IpcNUMPED.AsInteger := 999999;
            ClientE440Ipc.Post;

            // Verificar retorno
            if (xRetorno = '0' ) then
              raise Exception.Create(xRetorno)
            else
              begin

              end;

            end;//3
            ClientE440Ipc.Next;

          end;//2
          MessageDlg('Produtos Processados com Sucesso!',mtInformation,[mbOK],0);

  end;//4

end;

procedure TFNfEntrada.BExcluirClick(Sender: TObject);
var vnTotIcm,vnTotBru : Currency;
begin
if not ClientE440Ipc.IsEmpty then
   begin
     if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
       Begin
         ClientE440Ipc.Delete;

         //atualiza o calculo dos valores
         vnTotIcm := 0;
         vnTotBru := 0;
         ClientE440Ipc.First;
         while not ClientE440Ipc.Eof do
           begin
             vnTotIcm := vnTotIcm + ClientE440IpcVLRICM.AsCurrency;
             vnTotBru := vnTotBru + ClientE440IpcVLRBRU.AsCurrency;
             ClientE440Ipc.Next;
           end;
         ClientE440Ipc.First;
         EdTotIcm.Value := vnTotIcm;
         EdTotBru.Value := vnTotBru;
       End;
   end;
end;

procedure TFNfEntrada.BitBtn1Click(Sender: TObject);
var vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;
    vaNumOcp : string;
    vaCodPro : string;
    vaCodDer : string;
    vaQtdPed : string;
    vaSeqIpo : string;
    vaQtdCan : string;
begin
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
     begin//1
       vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;
     end;//1

    xPostQuery.Clear;
    xPostQuery.Add('ACAO=SID.Srv.AltEmpFil');
    xPostQuery.Add('&CodEmp='+'1');
    xPostQuery.Add('&CodFil='+'1');

    // Executar ação  Gravar produto da nota
    xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));


     vaNumOcp := '344';
     vaCodPro := '10030001';
     vaCodDer := '';
     vaQtdPed := '11';
     vaSeqIpo := '1';
     vaQtdCan := '5';

    xPostQuery.Clear;
    xPostQuery.Add('ACAO=SID.Ocp.GravarProduto');
    xPostQuery.Add('&NumOcp='+vaNumOcp);
    xPostQuery.Add('&CodPro='+vaCodPro);
    xPostQuery.Add('&CodDer='+vaCodDer);
    xPostQuery.Add('&QtdPed='+vaQtdPed);
    xPostQuery.Add('&SeqIpo='+vaSeqIpo);
    xPostQuery.Add('&QtdCan='+vaQtdCan);


    // Executar ação  Gravar produto da nota
    xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

    // Verificar retorno
    if (xRetorno <> vaSeqIpo ) then
       raise Exception.Create(xRetorno)
    else
       begin

       end;

end;

procedure TFNfEntrada.BProcessarClick(Sender: TObject);
var vaTipNfc,vaCodFor,vaNumNfc,vaCodSnf,vaVlrInf,vaDatEnt,VaDatEmi,vaTnsPro,vaTnsSer,vaCodCpg : string;
    vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;
begin
if ClientE440Ipc.IsEmpty then
 begin
    MessageDlg('Não existe produtos cadastrados',mtWarning,[mbOK],0);
 end
 else
 begin
  if trim(EdCodFor.Text) = '' then
     begin
       MessageDlg('Informe o Fornecedor',mtWarning,[mbOK],0);
       ActiveControl := EdCodFor;
     end
  else if trim(EdNumNfc.Text) = '' then
          begin
             MessageDlg('Informe o Numero da Nota',mtWarning,[mbOK],0);
             ActiveControl := EdNumNfc;
          end
       else if trim(EdCodSnf.Text) = '' then
               begin
                 MessageDlg('Informe a Série da Nota',mtWarning,[mbOK],0);
                 ActiveControl := EdCodSnf;
               end
            else if EdVlrInf.Value = 0 then
                    begin
                      MessageDlg('Informe o Valor da Nota',mtWarning,[mbOK],0);
                      ActiveControl := EdVlrInf;
                    end
                 else if EdDatEnt.Date = 0 then
                         begin
                           MessageDlg('Informe a Data de Entrada',mtWarning,[mbOK],0);
                           ActiveControl := EdDatEnt;
                         end
                      else if EdDatEmi.Date = 0 then
                              begin
                                 MessageDlg('Informe a Data de Emissão',mtWarning,[mbOK],0);
                                 ActiveControl := EdDatEmi;
                              end
                           else if trim(EdTnsPro.Text) = '' then
                                   begin
                                     MessageDlg('Informe a Transação P/Produtos',mtWarning,[mbOK],0);
                                     ActiveControl := EdTnsPro;
                                   end
                                else if trim(EdCodCpg.Text) = '' then
                                        begin
                                          MessageDlg('Informe a Condição de Pagamento',mtWarning,[mbOK],0);
                                          ActiveControl := EdCodCpg;
                                        end
                                     else
                                       begin//1
                                         //atribuindo valores para as variaveis
                                         vaTipNfc := trim(EdTipNfc.Text);
                                         vaCodFor := trim(EdCodFor.Text);
                                         vaNumNfc := trim(EdNumNfc.Text);
                                         vaCodSnf := trim(EdCodSnf.Text);
                                         vaVlrInf := CurrToStr(EdVlrInf.Value);
                                         vaDatEnt := DateToStr(EdDatEnt.Date);
                                         vaDatEnt := FormatDateTime('DD/MM/YYYY',StrToDate(vaDatEnt));
                                         vaDatEmi := DateToStr(EdDatEmi.Date);
                                         vaDatEmi := FormatDateTime('DD/MM/YYYY',StrToDate(VaDatEmi));
                                         vaTnsPro := trim(EdTnsPro.Text);
                                         if trim(EdTnsSer.Text) = '' then
                                           vaTnsSer := ''
                                         else
                                           vaTnsSer := trim(EdTnsSer.Text);
                                         vaCodCpg := trim(EdCodCpg.Text);

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
                                        xPostQuery.Add('&CodEmp='+'1');
                                        xPostQuery.Add('&CodFil='+'1');
                                        xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));


                                        xPostQuery.Clear;
                                        xPostQuery.Add('ACAO=SID.Nfc.Gravar');
                                        xPostQuery.Add('&CodFor='+vaCodFor);
                                        xPostQuery.Add('&CodSnf='+vaCodSnf);
                                        xPostQuery.Add('&NumNfc='+vaNumNfc);
                                        xPostQuery.Add('&TnsPro='+vaTnsPro);
                                        xPostQuery.Add('&TnsSer='+vaTnsSer);
                                        xPostQuery.Add('&TipNfc='+vaTipNfc);
                                        xPostQuery.Add('&DatEnt='+vaDatEnt);
                                        xPostQuery.Add('&DatEmi='+VaDatEmi);
                                        xPostQuery.Add('&CodCpg='+vaCodCpg);
                                        xPostQuery.Add('&VlrInf='+vaVlrInf);

                                        // Executar ação  Gravar cabeçalho da nota
                                        xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                                        // Verificar retorno
                                        if (xRetorno <> vaNumNfc) then
                                            raise Exception.Create(xRetorno)
                                        else
                                          begin
                                             vbNfConfirmado := true;
                                             BProcessar.Enabled := false;
                                             TbProdutos.TabVisible := true;
                                             PaginaControle.ActivePageIndex := 1;
                                          end;

                                       end;//1



 end;


end;

procedure TFNfEntrada.BprodutosClick(Sender: TObject);
begin
if trim(EdCodFor.Text) = '' then
     begin
       MessageDlg('Informe o Fornecedor',mtWarning,[mbOK],0);
       ActiveControl := EdCodFor;
     end
  else if trim(EdNumNfc.Text) = '' then
          begin
             MessageDlg('Informe o Numero da Nota',mtWarning,[mbOK],0);
             ActiveControl := EdNumNfc;
          end
       else if trim(EdCodSnf.Text) = '' then
               begin
                 MessageDlg('Informe a Série da Nota',mtWarning,[mbOK],0);
                 ActiveControl := EdCodSnf;
               end
            else if EdVlrInf.Value = 0 then
                    begin
                      MessageDlg('Informe o Valor da Nota',mtWarning,[mbOK],0);
                      ActiveControl := EdVlrInf;
                    end
                 else if EdDatEnt.Date = 0 then
                         begin
                           MessageDlg('Informe a Data de Entrada',mtWarning,[mbOK],0);
                           ActiveControl := EdDatEnt;
                         end
                      else if EdDatEmi.Date = 0 then
                              begin
                                 MessageDlg('Informe a Data de Emissão',mtWarning,[mbOK],0);
                                 ActiveControl := EdDatEmi;
                              end
                           else if trim(EdTnsPro.Text) = '' then
                                   begin
                                     MessageDlg('Informe a Transação P/Produtos',mtWarning,[mbOK],0);
                                     ActiveControl := EdTnsPro;
                                   end
                                else if trim(EdCodCpg.Text) = '' then
                                        begin
                                          MessageDlg('Informe a Condição de Pagamento',mtWarning,[mbOK],0);
                                          ActiveControl := EdCodCpg;
                                        end
                                     else
                                       begin
                                         PaginaControle.ActivePage := TbProdutos;
                                       end;


end;

procedure TFNfEntrada.BTnsProClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select * from e001tns where lismod = ''COF''';
    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'TnsPro';
    FConsGeralNfEnt.vnColuna := 999999;
    FConsGeralNfEnt.vaTela := 'FNfEntrada';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
end;

procedure TFNfEntrada.BTnsSerClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select * from e001tns where lismod = ''COF''';
    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'TnsSer';
    FConsGeralNfEnt.vnColuna := 999999;
    FConsGeralNfEnt.vaTela := 'FNfEntrada';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
end;

procedure TFNfEntrada.ClientE440IpcCalcFields(DataSet: TDataSet);
begin
    ConsE075Pro.Close;
    ConsE075Pro.Parameters.ParamByName('codpro').Value := ClientE440IpcCODPRO.AsString;
    ConsE075Pro.Open;
    ClientE440IpcDsCodPro.Value := ConsE075ProDESPRO.AsString;



end;

procedure TFNfEntrada.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if ClientE440Ipc.FieldByName('NUMPED').AsInteger = 999999 then
      begin
        DBGrid1.Canvas.Font.Color := clRed;
        DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[Datacol].Field,state);
      end;



end;

procedure TFNfEntrada.EdCnpjExit(Sender: TObject);
begin
  if EdCnpj.Text <> '' then
    begin
      ConsE095For.Close;
      ConsE095For.SQL.Clear;
      ConsE095For.SQL.Add('select * from e095for');
      ConsE095For.SQL.Add('where cgccpf = :cgccpf');
      ConsE095For.Parameters.ParamByName('cgccpf').Value := StrToCurr(EdCnpj.Text);
      ConsE095For.Open;
      if ConsE095For.IsEmpty then
        begin
          MessageDlg('Fornecedor não encontrado',mtWarning,[mbOK],0);
          ActiveControl := EdCnpj;
          EdCnpj.Clear;
          LDsCodFor.Caption := '';
          EdCodFor.Clear;
        end
      else
        begin
          EdCodFor.Text := IntToStr(ConsE095ForCODFOR.AsInteger);
          LDsCodFor.Caption := ConsE095ForNOMFOR.AsString;
        end;
    end;
end;

procedure TFNfEntrada.EdCodCpgExit(Sender: TObject);
begin
if trim(EdCodCpg.Text)<> '' then
       begin
         ConsE028Cpg.Close;
         ConsE028Cpg.Parameters.ParamByName('codcpg').Value := trim(EdCodCpg.Text);
         ConsE028Cpg.Open;
         if ConsE028Cpg.IsEmpty then
            begin
              MessageDlg('Condição de Pagamento não encontrada',mtWarning,[mbOK],0);
              ActiveControl := EdCodCpg;
              EdCodCpg.Clear;
              LDsCodCpg.Caption := '';
            end
         else
            begin
               LDsCodCpg.Caption := ConsE028CpgDESCPG.AsString;
            end;
       end
    else
       begin
         LDsCodCpg.Caption := '';
       end;
end;

procedure TFNfEntrada.EdCodCpgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f3 then
      begin
        BCodCpg.Click;
      end;
end;

procedure TFNfEntrada.EdCodForExit(Sender: TObject);
begin
if EdCodFor.Text <> '' then
    begin
      ConsE095For.Close;
      ConsE095For.SQL.Clear;
      ConsE095For.SQL.Add('select * from e095for');
      ConsE095For.SQL.Add('where codfor = :codfor');
      ConsE095For.Parameters.ParamByName('codfor').Value := StrToInt(EdCodFor.Text);
      ConsE095For.Open;
      if ConsE095For.IsEmpty then
        begin
          MessageDlg('Fornecedor não encontrado',mtWarning,[mbOK],0);
          ActiveControl := EdCodFor;
          EdCodFor.Clear;
          EdCnpj.Clear;
          LDsCodFor.Caption := '';
        end
      else
        begin
          LDsCodFor.Caption := ConsE095ForNOMFOR.AsString;
          EdCnpj.Text := FloatToStr(ConsE095ForCGCCPF.AsFloat);
        end;
    end
else
    begin
      LDsCodFor.Caption := '';
    end;
end;

procedure TFNfEntrada.EdCodForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_f3 then
      begin
        BCodFor.Click;
      end;
end;

procedure TFNfEntrada.EdCodSnfExit(Sender: TObject);
begin
  if trim(EdCodSnf.Text) <> '' then
    begin
      ConsE020Snf.Close;
      ConsE020Snf.Parameters.ParamByName('codsnf').Value := trim(EdCodSnf.Text);
      ConsE020Snf.Open;
      if ConsE020Snf.IsEmpty then
        begin
          MessageDlg('Série não encontrada',mtWarning,[mbOK],0);
          ActiveControl := EdCodSnf;
          EdCodSnf.Clear;
          LDsCodSnf.Caption := '';
          Abort;
        end
      else
        begin
          LDsCodSnf.Caption := ConsE020SnfDESSNF.AsString;
        end;
    end
  else
    begin
      LDsCodSnf.Caption := '';
    end;

    //valida se a nota ja existe
    if (trim(EdCodFor.Text) <> '') and (trim(EdNumNfc.Text) <> '') and
       (trim(EdCodSnf.Text) <> '') then
         begin
           ConsE440Nfc.Close;
           ConsE440Nfc.Parameters.ParamByName('codemp').Value := 1;
           ConsE440Nfc.Parameters.ParamByName('codfil').Value := 1;
           ConsE440Nfc.Parameters.ParamByName('codfor').Value := StrToInt(trim(EdCodFor.Text));
           ConsE440Nfc.Parameters.ParamByName('numnfc').Value := StrToInt(trim(EdNumNfc.Text));
           ConsE440Nfc.Parameters.ParamByName('codsnf').Value := trim(EdCodSnf.Text);
           ConsE440Nfc.Open;
           if not ConsE440Nfc.IsEmpty then
             begin
               MessageDlg('Nota Físcal já Existente',mtWarning,[mbOK],0);
               ActiveControl := EdNumNfc;
             end;

         end;


end;

procedure TFNfEntrada.EdCodSnfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f3 then
      begin
        BCodSnf.Click;
      end;
end;

procedure TFNfEntrada.EdDatEmiExit(Sender: TObject);
begin
  if EdDatEmi.Date > EdDatEnt.Date then
    begin
       MessageDlg('Data de emissão não pode ser maior do que a data de entrada',mtWarning,[mbOK],0);
       ActiveControl := EdDatEmi;
    end;
end;

procedure TFNfEntrada.EdTnsProExit(Sender: TObject);
begin
    if trim(EdTnsPro.Text)<> '' then
       begin
         ConsE001Tns.Close;
         ConsE001Tns.Parameters.ParamByName('codtns').Value := trim(EdTnsPro.Text);
         ConsE001Tns.Open;
         if ConsE001Tns.IsEmpty then
            begin
              MessageDlg('Transação não encontrada',mtWarning,[mbOK],0);
              ActiveControl := EdTnsPro;
              EdTnsPro.Clear;
              LDsTnsPro.Caption := '';
            end
         else
            begin
               LDsTnsPro.Caption := ConsE001TnsDESTNS.AsString;
            end;
       end
    else
       begin
         LDsTnsPro.Caption := '';
       end;
end;

procedure TFNfEntrada.EdTnsProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f3 then
      begin
        BTnsPro.Click;
      end;
end;

procedure TFNfEntrada.EdTnsSerExit(Sender: TObject);
begin
{if trim(EdTnsSer.Text)<> '' then
       begin
         ConsE001Tns.Close;
         ConsE001Tns.Parameters.ParamByName('codtns').Value := trim(EdTnsSer.Text);
         ConsE001Tns.Open;
         if ConsE001Tns.IsEmpty then
            begin
              MessageDlg('Transação não encontrada',mtWarning,[mbOK],0);
              ActiveControl := EdTnsSer;
              EdTnsSer.Clear;
              LDsTnsSer.Caption := '';
            end
         else
            begin
               LDsTnsSer.Caption := ConsE001TnsDESTNS.AsString;
            end;
       end
    else
       begin
         LDsTnsSer.Caption := '';
       end;}
end;

procedure TFNfEntrada.EdTnsSerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f3 then
      begin
        BTnsSer.Click;
      end;
end;

procedure TFNfEntrada.FormActivate(Sender: TObject);
begin
  PaginaControle.ActivePageIndex := 0;
  //TbProdutos.TabVisible := false;

  ConsE440Ipc.Open;
  ClientE440Ipc.Open;

  EdTnsPro.Text := '2101';
  EdTnsProExit(Sender);

  EdCodSnf.Text := 'NFE';
  EdCodSnfExit(Sender);

  ActiveControl := EdCnpj;

  vbNfConfirmado := False;//para controlar se a nf ja foi processada
end;

procedure TFNfEntrada.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var vbLibera : Boolean;
begin
  //verifica se existe algum item que nao foi confirmado
    vbLibera := true;
    ClientE440Ipc.First;
    while not ClientE440Ipc.Eof do
      begin
        if ClientE440IpcNUMPED.Value = 111111 then
          vbLibera := false;

        ClientE440Ipc.Next;
      end;

    canClose := False;
with application do
 if vbLibera = false then
  begin
   MessageDlg('Confirme ou Cancele os produtos antes de fechar.',mtWarning,[mbok],0);
  end
 else
   canclose := true;
end;

procedure TFNfEntrada.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFNfEntrada.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFNfEntrada.FormShow(Sender: TObject);
begin
EdDatEnt.Date := Date;
EdDatEmi.Date := Date;
end;

procedure TFNfEntrada.PaginaControleChange(Sender: TObject);
begin
if trim(EdCodFor.Text) = '' then
     begin
       MessageDlg('Informe o Fornecedor',mtWarning,[mbOK],0);
       PaginaControle.ActivePage := TbGerais;
       ActiveControl := EdCodFor;
     end
  else if trim(EdNumNfc.Text) = '' then
          begin
             MessageDlg('Informe o Numero da Nota',mtWarning,[mbOK],0);
             PaginaControle.ActivePage := TbGerais;
             ActiveControl := EdNumNfc;
          end
       else if trim(EdCodSnf.Text) = '' then
               begin
                 MessageDlg('Informe a Série da Nota',mtWarning,[mbOK],0);
                 PaginaControle.ActivePage := TbGerais;
                 ActiveControl := EdCodSnf;
               end
            else if EdVlrInf.Value = 0 then
                    begin
                      MessageDlg('Informe o Valor da Nota',mtWarning,[mbOK],0);
                      PaginaControle.ActivePage := TbGerais;
                      ActiveControl := EdVlrInf;
                    end
                 else if EdDatEnt.Date = 0 then
                         begin
                           MessageDlg('Informe a Data de Entrada',mtWarning,[mbOK],0);
                           PaginaControle.ActivePage := TbGerais;
                           ActiveControl := EdDatEnt;
                         end
                      else if EdDatEmi.Date = 0 then
                              begin
                                 MessageDlg('Informe a Data de Emissão',mtWarning,[mbOK],0);
                                 PaginaControle.ActivePage := TbGerais;
                                 ActiveControl := EdDatEmi;
                              end
                           else if trim(EdTnsPro.Text) = '' then
                                   begin
                                     MessageDlg('Informe a Transação P/Produtos',mtWarning,[mbOK],0);
                                     PaginaControle.ActivePage := TbGerais;
                                     ActiveControl := EdTnsPro;
                                   end
                                else if trim(EdCodCpg.Text) = '' then
                                        begin
                                          MessageDlg('Informe a Condição de Pagamento',mtWarning,[mbOK],0);
                                          PaginaControle.ActivePage := TbGerais;
                                          ActiveControl := EdCodCpg;
                                        end;
end;

procedure TFNfEntrada.TbProdutosShow(Sender: TObject);
begin
  LDsFornecedor.Caption := 'Fornecedor..: '+EdCodFor.Text+' - '+LDsCodFor.Caption;
  ActiveControl := BAdicionar;
end;

end.
