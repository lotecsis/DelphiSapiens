unit UPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, Mask, rxToolEdit, StdCtrls,
  Buttons, DB, DBCtrls, ADODB, rxCurrEdit, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP,IdIOHandler, RbDrawCore, RbButton, XPMan,
  ExtCtrls, Math{para usar a funcao RoundTo};

type
  TFPedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    PaginaControle: TPageControl;
    TbProdutos: TTabSheet;
    Panel9: TPanel;
    Panel10: TPanel;
    DBGProdutos: TDBGrid;
    EdNumPed: TEdit;
    EdDatEmi: TDateEdit;
    EdTnsPro: TEdit;
    EdCodCli: TEdit;
    EdCodRep: TEdit;
    EdCodCpg: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel12: TPanel;
    Panel13: TPanel;
    BRemoveProd: TBitBtn;
    BAddProd: TBitBtn;
    EdSitPed: TEdit;
    Label9: TLabel;
    LDsCodCli: TLabel;
    LDsCodRep: TLabel;
    LDsCodCpg: TLabel;
    LDsSitPed: TLabel;
    LDsProduto: TLabel;
    LDsDerivacao: TLabel;
    BSair: TBitBtn;
    EdCodFil: TEdit;
    Label10: TLabel;
    LEndCli: TLabel;
    DsConsE120Ipd: TDataSource;
    DsConsUsu_T120Ipd: TDataSource;
    ConsVolPro: TADOQuery;
    ConsVolProCODPRO: TStringField;
    ConsVolProCODDER: TStringField;
    ConsVolProVOLDER: TBCDField;
    ConsVolProPESBRU: TBCDField;
    ConsVolProPESLIQ: TBCDField;
    Panel14: TPanel;
    Panel15: TPanel;
    BAlterar: TBitBtn;
    BInserir: TBitBtn;
    SapSid: TIdHTTP;
    BNumPed: TBitBtn;
    BTnsPro: TBitBtn;
    BCodCli: TBitBtn;
    BCodRep: TBitBtn;
    BCodCpg: TBitBtn;
    EdVlrLiq: TCurrencyEdit;
    EdVlrBru: TCurrencyEdit;
    EdVolAberto: TCurrencyEdit;
    EdVolPedido: TCurrencyEdit;
    EdPesoLiquido: TCurrencyEdit;
    EdPesoBruto: TCurrencyEdit;
    EdQtdAberto: TCurrencyEdit;
    EdQtdItens: TCurrencyEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    ConsUsu_T120Ipd: TADOQuery;
    ConsUsu_T120IpdUSU_CODEMP: TIntegerField;
    ConsUsu_T120IpdUSU_CODFIL: TIntegerField;
    ConsUsu_T120IpdUSU_NUMPED: TIntegerField;
    ConsUsu_T120IpdUSU_SEQIPD: TIntegerField;
    ConsUsu_T120IpdUSU_QTDCOR: TIntegerField;
    ConsUsu_T120IpdUSU_TIPCMB: TIntegerField;
    ConsUsu_T120IpdUSU_COR001: TStringField;
    ConsUsu_T120IpdUSU_COR002: TStringField;
    ConsUsu_T120IpdUSU_SEQITE: TIntegerField;
    ConsUsu_T120IpdUSU_CODPRO: TStringField;
    ConsUsu_T120IpdUSU_CODDER: TStringField;
    ConsUsu_T120IpdUSU_TECTRA: TStringField;
    ConsUsu_T120IpdUSU_QTDABE: TIntegerField;
    ConsUsu_T120IpdUSU_QTDCAN: TIntegerField;
    ConsUsu_T120IpdUSU_NUMANE: TBCDField;
    ConsUsu_T120IpdUSU_PRECAR: TIntegerField;
    BFechar: TBitBtn;
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
    ConsE001TnsCPRTIR: TStringField;
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
    BExcluir: TBitBtn;
    CadUsu_T121Ipd: TADOQuery;
    CadUsu_T121IpdUSU_CODFIL: TIntegerField;
    CadUsu_T121IpdUSU_NUMPED: TIntegerField;
    CadUsu_T121IpdUSU_SEQIPD: TIntegerField;
    CadUsu_T121IpdUSU_CODPRO: TStringField;
    CadUsu_T121IpdUSU_CODDER: TStringField;
    CadUsu_T121IpdUSU_QTDPED: TBCDField;
    CadUsu_T121IpdUSU_QTDABE: TBCDField;
    CadUsu_T121IpdUSU_ITEMOD: TStringField;
    CadUsu_T121IpdUSU_ITECON: TStringField;
    CadUsu_T121IpdUSU_SEQALT: TIntegerField;
    SeqAltT121Ipd: TADOQuery;
    SeqAltT121IpdUSU_SEQALT: TIntegerField;
    CadUsu_T121Cpp: TADOQuery;
    CadUsu_T121CppUSU_CODFIL: TIntegerField;
    CadUsu_T121CppUSU_NUMPED: TIntegerField;
    CadUsu_T121CppUSU_SEQIPD: TIntegerField;
    CadUsu_T121CppUSU_SEQITE: TIntegerField;
    CadUsu_T121CppUSU_CODPRO: TStringField;
    CadUsu_T121CppUSU_CODDER: TStringField;
    CadUsu_T121CppUSU_QTDPED: TIntegerField;
    CadUsu_T121CppUSU_QTDABE: TIntegerField;
    CadUsu_T121CppUSU_COR001: TStringField;
    CadUsu_T121CppUSU_COR002: TStringField;
    CadUsu_T121CppUSU_TIPCMB: TIntegerField;
    CadUsu_T121CppUSU_ITEMOD: TStringField;
    CadUsu_T121CppUSU_ITECON: TStringField;
    CadUsu_T121CppUSU_SEQALT: TIntegerField;
    ConsUsu_T121Ipd: TADOQuery;
    ConsUsu_T121IpdUSU_CODFIL: TIntegerField;
    ConsUsu_T121IpdUSU_NUMPED: TIntegerField;
    ConsUsu_T121IpdUSU_SEQIPD: TIntegerField;
    ConsUsu_T121IpdUSU_CODPRO: TStringField;
    ConsUsu_T121IpdUSU_CODDER: TStringField;
    ConsUsu_T121IpdUSU_QTDPED: TBCDField;
    ConsUsu_T121IpdUSU_QTDABE: TBCDField;
    ConsUsu_T121IpdUSU_ITEMOD: TStringField;
    ConsUsu_T121IpdUSU_ITECON: TStringField;
    ConsUsu_T121IpdUSU_SEQALT: TIntegerField;
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
    CadUsuT121Ipd: TADOQuery;
    CadUsuT121IpdUSU_CODFIL: TIntegerField;
    CadUsuT121IpdUSU_NUMPED: TIntegerField;
    CadUsuT121IpdUSU_SEQIPD: TIntegerField;
    CadUsuT121IpdUSU_CODPRO: TStringField;
    CadUsuT121IpdUSU_CODDER: TStringField;
    CadUsuT121IpdUSU_QTDPED: TBCDField;
    CadUsuT121IpdUSU_QTDABE: TBCDField;
    CadUsuT121IpdUSU_ITEMOD: TStringField;
    CadUsuT121IpdUSU_ITECON: TStringField;
    CadUsuT121IpdUSU_SEQALT: TIntegerField;
    ConsUsu_T121Cpp: TADOQuery;
    ConsUsu_T121CppUSU_CODFIL: TIntegerField;
    ConsUsu_T121CppUSU_NUMPED: TIntegerField;
    ConsUsu_T121CppUSU_SEQIPD: TIntegerField;
    ConsUsu_T121CppUSU_SEQITE: TIntegerField;
    ConsUsu_T121CppUSU_CODPRO: TStringField;
    ConsUsu_T121CppUSU_CODDER: TStringField;
    ConsUsu_T121CppUSU_QTDPED: TIntegerField;
    ConsUsu_T121CppUSU_QTDABE: TIntegerField;
    ConsUsu_T121CppUSU_COR001: TStringField;
    ConsUsu_T121CppUSU_COR002: TStringField;
    ConsUsu_T121CppUSU_TIPCMB: TIntegerField;
    ConsUsu_T121CppUSU_ITEMOD: TStringField;
    ConsUsu_T121CppUSU_ITECON: TStringField;
    ConsUsu_T121CppUSU_SEQALT: TIntegerField;
    ConsUsu_T120IpdIten: TADOQuery;
    ConsUsu_T120IpdItenUSU_CODEMP: TIntegerField;
    ConsUsu_T120IpdItenUSU_CODFIL: TIntegerField;
    ConsUsu_T120IpdItenUSU_NUMPED: TIntegerField;
    ConsUsu_T120IpdItenUSU_SEQIPD: TIntegerField;
    ConsUsu_T120IpdItenUSU_QTDCOR: TIntegerField;
    ConsUsu_T120IpdItenUSU_TIPCMB: TIntegerField;
    ConsUsu_T120IpdItenUSU_COR001: TStringField;
    ConsUsu_T120IpdItenUSU_COR002: TStringField;
    ConsUsu_T120IpdItenUSU_SEQITE: TIntegerField;
    ConsUsu_T120IpdItenUSU_CODPRO: TStringField;
    ConsUsu_T120IpdItenUSU_CODDER: TStringField;
    ConsUsu_T120IpdItenUSU_TECTRA: TStringField;
    ConsUsu_T120IpdItenUSU_QTDABE: TIntegerField;
    ConsUsu_T120IpdItenUSU_QTDCAN: TIntegerField;
    ConsUsu_T120IpdItenUSU_NUMANE: TBCDField;
    ConsUsu_T120IpdItenUSU_PRECAR: TIntegerField;
    Conse075Der: TADOQuery;
    Conse075DerCODEMP: TIntegerField;
    Conse075DerCODPRO: TStringField;
    Conse075DerCODDER: TStringField;
    Conse075DerDESDER: TStringField;
    Conse075DerDESCPL: TStringField;
    Conse075DerCODBAR: TBCDField;
    Conse075DerCODAGR: TIntegerField;
    Conse075DerCODAGT: TStringField;
    Conse075DerSEQCMD: TIntegerField;
    Conse075DerDATVAL: TDateTimeField;
    Conse075DerDIAVLT: TIntegerField;
    Conse075DerTIPCN2: TStringField;
    Conse075DerVLRCN2: TFMTBCDField;
    Conse075DerTIPCN3: TStringField;
    Conse075DerVLRCN3: TFMTBCDField;
    Conse075DerPRECUS: TFMTBCDField;
    Conse075DerDATCUS: TDateTimeField;
    Conse075DerPREMED: TFMTBCDField;
    Conse075DerDATMED: TDateTimeField;
    Conse075DerPREUEN: TFMTBCDField;
    Conse075DerDATUEN: TDateTimeField;
    Conse075DerPREREP: TFMTBCDField;
    Conse075DerDATREP: TDateTimeField;
    Conse075DerDIAREP: TIntegerField;
    Conse075DerPESBRU: TFMTBCDField;
    Conse075DerPESLIQ: TFMTBCDField;
    Conse075DerTOLPES: TBCDField;
    Conse075DerVOLDER: TFMTBCDField;
    Conse075DerPERPRD: TBCDField;
    Conse075DerQTDIQL: TFMTBCDField;
    Conse075DerQTDCIC: TFMTBCDField;
    Conse075DerQTDPRD: TFMTBCDField;
    Conse075DerPREUIS: TFMTBCDField;
    Conse075DerPERICS: TBCDField;
    Conse075DerCODEMB: TIntegerField;
    Conse075DerCODROT: TStringField;
    Conse075DerCODROY: TIntegerField;
    Conse075DerBXAORP: TStringField;
    Conse075DerSERCCL: TStringField;
    Conse075DerNUMCCL: TStringField;
    Conse075DerCURABC: TStringField;
    Conse075DerCURAB2: TStringField;
    Conse075DerCURAB3: TStringField;
    Conse075DerCURAB4: TStringField;
    Conse075DerCODREG: TIntegerField;
    Conse075DerSITDER: TStringField;
    Conse075DerCODMOT: TIntegerField;
    Conse075DerCTRLOT: TStringField;
    Conse075DerCTRSEP: TStringField;
    Conse075DerCTRVLD: TStringField;
    Conse075DerDEPPAD: TStringField;
    Conse075DerDEPPAA: TStringField;
    Conse075DerINDPCE: TStringField;
    Conse075DerINDPCR: TStringField;
    Conse075DerINDKAN: TStringField;
    Conse075DerCODREF: TStringField;
    Conse075DerCODPIN: TStringField;
    Conse075DerNOTFOR: TBCDField;
    Conse075DerORICUS: TStringField;
    Conse075DerINFCUS: TStringField;
    Conse075DerHORCUS: TIntegerField;
    Conse075DerUSUGER: TBCDField;
    Conse075DerHORGER: TIntegerField;
    Conse075DerDATGER: TDateTimeField;
    Conse075DerUSUALT: TBCDField;
    Conse075DerHORALT: TIntegerField;
    Conse075DerDATALT: TDateTimeField;
    Conse075DerCODAGE: TStringField;
    Conse075DerCODBA2: TStringField;
    Conse075DerINDEXP: TIntegerField;
    Conse075DerDATPAL: TDateTimeField;
    Conse075DerHORPAL: TIntegerField;
    Conse075DerEXPWMS: TIntegerField;
    Conse075DerSERMVP: TStringField;
    Conse075DerAPRDFT: TStringField;
    Conse075DerCODAEM: TStringField;
    Conse075DerCODPDV: TIntegerField;
    Conse075DerINDGEN: TStringField;
    Conse075DerQTDMLT: TFMTBCDField;
    Conse075DerQTDMIN: TFMTBCDField;
    Conse075DerQTDMAX: TFMTBCDField;
    Conse075DerCODEND: TStringField;
    Conse075DerROTANX: TIntegerField;
    Conse075DerNUMANX: TBCDField;
    Conse075DerINDPCQ: TStringField;
    Conse075DerVLRCID: TBCDField;
    Conse075DerQTDCUS: TFMTBCDField;
    Conse075DerUSU_CORUNI: TBCDField;
    Conse075DerUSU_CMP1BB: TBCDField;
    Conse075DerUSU_CMP1AE: TBCDField;
    Conse075DerUSU_CMP2BB: TBCDField;
    Conse075DerUSU_CMP2EN: TBCDField;
    Conse075DerUSU_MEDESP: TStringField;
    Conse075DerUSU_FATOR: TBCDField;
    Panel16: TPanel;
    ConsUsu_T121CppIten: TADOQuery;
    ConsUsu_T121CppItenUSU_CODFIL: TIntegerField;
    ConsUsu_T121CppItenUSU_NUMPED: TIntegerField;
    ConsUsu_T121CppItenUSU_SEQIPD: TIntegerField;
    ConsUsu_T121CppItenUSU_SEQITE: TIntegerField;
    ConsUsu_T121CppItenUSU_CODPRO: TStringField;
    ConsUsu_T121CppItenUSU_CODDER: TStringField;
    ConsUsu_T121CppItenUSU_QTDPED: TIntegerField;
    ConsUsu_T121CppItenUSU_QTDABE: TIntegerField;
    ConsUsu_T121CppItenUSU_COR001: TStringField;
    ConsUsu_T121CppItenUSU_COR002: TStringField;
    ConsUsu_T121CppItenUSU_TIPCMB: TIntegerField;
    ConsUsu_T121CppItenUSU_ITEMOD: TStringField;
    ConsUsu_T121CppItenUSU_ITECON: TStringField;
    ConsUsu_T121CppItenUSU_SEQALT: TIntegerField;
    ConsUsu_TCarPro: TADOQuery;
    ConsUsu_TCarProUSU_NUMANE: TIntegerField;
    ConsUsu_TCarProUSU_DATIMP: TDateTimeField;
    ConsUsu_TCarProUSU_HORIMP: TIntegerField;
    ConsUsu_TCarProUSU_USUIMP: TIntegerField;
    ConsUsu_TCarProUSU_CARPRO: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    DBDesPro: TDBText;
    DBDesDer: TDBText;
    Panel17: TPanel;
    PPreCarga: TPanel;
    PTecTransferido: TPanel;
    ConsUsu_TPreCar: TADOQuery;
    ConsUsu_TPreCarUSU_PRECAR: TIntegerField;
    ConsUsu_TPreCarUSU_DATGER: TDateTimeField;
    ConsUsu_TPreCarUSU_HORGER: TIntegerField;
    ConsUsu_TPreCarUSU_CODUSU: TIntegerField;
    ConsUsu_TPreCarUSU_CARLIB: TStringField;
    ConsUsu_TPreCarUSU_DATLIB: TDateTimeField;
    ConsUsu_TPreCarUSU_HORLIB: TIntegerField;
    ConsUsu_TPreCarUSU_USULIB: TIntegerField;
    ConsUsu_TPreCarUSU_CARIMP: TStringField;
    PCorte: TPanel;
    PCarga: TPanel;
    ConsE135Pes: TADOQuery;
    ConsE135PesCODEMP: TIntegerField;
    ConsE135PesCODFIL: TIntegerField;
    ConsE135PesNUMANE: TBCDField;
    ConsE135PesNUMPFA: TIntegerField;
    ConsE135PesSEQPES: TIntegerField;
    ConsE135PesFILPED: TIntegerField;
    ConsE135PesNUMPED: TIntegerField;
    ConsE135PesSEQIPD: TIntegerField;
    ConsE135PesSEQISP: TIntegerField;
    ConsE135PesTNSIPD: TStringField;
    ConsE135PesTNSISP: TStringField;
    ConsE135PesFILNFV: TIntegerField;
    ConsE135PesSNFNFV: TStringField;
    ConsE135PesNUMNFV: TIntegerField;
    ConsE135PesSEQIPV: TIntegerField;
    ConsE135PesSEQISV: TIntegerField;
    ConsE135PesTNSPRO: TStringField;
    ConsE135PesTNSSER: TStringField;
    ConsE135PesCODPRO: TStringField;
    ConsE135PesCODDER: TStringField;
    ConsE135PesCODSER: TStringField;
    ConsE135PesPROSER: TStringField;
    ConsE135PesCPLPES: TStringField;
    ConsE135PesCODFAM: TStringField;
    ConsE135PesCODTRI: TStringField;
    ConsE135PesCODCLF: TStringField;
    ConsE135PesCODSTR: TStringField;
    ConsE135PesCODTIC: TStringField;
    ConsE135PesCODTRD: TStringField;
    ConsE135PesCODTST: TStringField;
    ConsE135PesCODSTP: TStringField;
    ConsE135PesCODSTC: TStringField;
    ConsE135PesCODDEP: TStringField;
    ConsE135PesCODLOT: TStringField;
    ConsE135PesQTDEST: TFMTBCDField;
    ConsE135PesQTDPED: TFMTBCDField;
    ConsE135PesQTDPPF: TFMTBCDField;
    ConsE135PesUNIMED: TStringField;
    ConsE135PesSALCAN: TStringField;
    ConsE135PesPESBRU: TFMTBCDField;
    ConsE135PesPESLIQ: TFMTBCDField;
    ConsE135PesVOLPES: TBCDField;
    ConsE135PesCODTPR: TStringField;
    ConsE135PesPREUNI: TFMTBCDField;
    ConsE135PesPREBAS: TFMTBCDField;
    ConsE135PesPEROFE: TBCDField;
    ConsE135PesPERACR: TBCDField;
    ConsE135PesPERDSC: TBCDField;
    ConsE135PesPERIPI: TBCDField;
    ConsE135PesPERICM: TBCDField;
    ConsE135PesPERFUN: TBCDField;
    ConsE135PesPERISS: TBCDField;
    ConsE135PesPERIRF: TBCDField;
    ConsE135PesPERINS: TBCDField;
    ConsE135PesPERCOM: TBCDField;
    ConsE135PesNUMPRJ: TIntegerField;
    ConsE135PesCODFPJ: TIntegerField;
    ConsE135PesCTAFIN: TIntegerField;
    ConsE135PesCTARED: TIntegerField;
    ConsE135PesCODCCU: TStringField;
    ConsE135PesVLRFRE: TBCDField;
    ConsE135PesVLRSEG: TBCDField;
    ConsE135PesVLREMB: TBCDField;
    ConsE135PesVLRENC: TBCDField;
    ConsE135PesVLROUT: TBCDField;
    ConsE135PesVLRDAR: TBCDField;
    ConsE135PesVLRFRD: TBCDField;
    ConsE135PesVLROUD: TBCDField;
    ConsE135PesVLRPES: TBCDField;
    ConsE135PesVLRFAT: TFMTBCDField;
    ConsE135PesDATMOV: TDateTimeField;
    ConsE135PesSEQMOV: TIntegerField;
    ConsE135PesFILNFC: TIntegerField;
    ConsE135PesFORNFC: TIntegerField;
    ConsE135PesNUMNFC: TIntegerField;
    ConsE135PesSNFNFC: TStringField;
    ConsE135PesSEQIPC: TIntegerField;
    ConsE135PesSEQISC: TIntegerField;
    ConsE135PesUSUPRP: TBCDField;
    ConsE135PesDATPRP: TDateTimeField;
    ConsE135PesHORPRP: TIntegerField;
    ConsE135PesSITPES: TIntegerField;
    ConsE135PesOBSPES: TStringField;
    ConsE135PesUSUAPR: TBCDField;
    ConsE135PesDATAPR: TDateTimeField;
    ConsE135PesHORAPR: TIntegerField;
    ConsE135PesPREFIX: TStringField;
    ConsE135PesUNIVEN: TStringField;
    ConsE135PesQTDVEN: TFMTBCDField;
    ConsE135PesPREVEN: TFMTBCDField;
    ConsE135PesCODMCP: TStringField;
    ConsE135PesDATMFP: TDateTimeField;
    ConsE135PesCOTMFP: TFMTBCDField;
    ConsE135PesCODMOE: TStringField;
    ConsE135PesDATMOE: TDateTimeField;
    ConsE135PesCOTMOE: TFMTBCDField;
    ConsE135PesFECMOE: TStringField;
    ConsE135PesPREBRU: TFMTBCDField;
    ConsE135PesVLRDSC: TBCDField;
    ConsE135PesCMPKIT: TStringField;
    ConsE135PesSEQITC: TIntegerField;
    ConsE135PesVLRBCT: TBCDField;
    ConsE135PesVLRCRT: TBCDField;
    ConsE135PesPERCRT: TBCDField;
    ConsE135PesVLRBPT: TBCDField;
    ConsE135PesVLRPIT: TBCDField;
    ConsE135PesPERPIT: TBCDField;
    ConsE135PesVLRBCL: TBCDField;
    ConsE135PesVLRCSL: TBCDField;
    ConsE135PesPERCSL: TBCDField;
    ConsE135PesVLRBOR: TBCDField;
    ConsE135PesVLROUR: TBCDField;
    ConsE135PesPEROUR: TBCDField;
    ConsE135PesCODMAR: TStringField;
    ConsE135PesPERDS1: TBCDField;
    ConsE135PesPERDS2: TBCDField;
    ConsE135PesPERDS3: TBCDField;
    ConsE135PesPERDS4: TBCDField;
    ConsE135PesVLRFIN: TBCDField;
    ConsE135PesPERPIF: TBCDField;
    ConsE135PesPERCFF: TBCDField;
    ConsE135PesPESCNF: TIntegerField;
    ConsE135PesPERDS5: TBCDField;
    ConsUsu_T120IpdTecidos: TADOQuery;
    ConsUsu_T120IpdTecidosUSU_CODEMP: TIntegerField;
    ConsUsu_T120IpdTecidosUSU_CODFIL: TIntegerField;
    ConsUsu_T120IpdTecidosUSU_NUMPED: TIntegerField;
    ConsUsu_T120IpdTecidosUSU_SEQIPD: TIntegerField;
    ConsUsu_T120IpdTecidosUSU_QTDCOR: TIntegerField;
    ConsUsu_T120IpdTecidosUSU_TIPCMB: TIntegerField;
    ConsUsu_T120IpdTecidosUSU_COR001: TStringField;
    ConsUsu_T120IpdTecidosUSU_COR002: TStringField;
    ConsUsu_T120IpdTecidosUSU_SEQITE: TIntegerField;
    ConsUsu_T120IpdTecidosUSU_CODPRO: TStringField;
    ConsUsu_T120IpdTecidosUSU_CODDER: TStringField;
    ConsUsu_T120IpdTecidosUSU_TECTRA: TStringField;
    ConsUsu_T120IpdTecidosUSU_QTDABE: TIntegerField;
    ConsUsu_T120IpdTecidosUSU_QTDCAN: TIntegerField;
    ConsUsu_T120IpdTecidosUSU_NUMANE: TBCDField;
    ConsUsu_T120IpdTecidosUSU_PRECAR: TIntegerField;
    ConsE210Est: TADOQuery;
    ConsE210EstCODPRO: TStringField;
    ConsE210EstCODDEP: TStringField;
    ConsE210EstQTDEST: TFMTBCDField;
    BSaldoTecidos: TBitBtn;
    BCancelaPedido: TBitBtn;
    DsReserva: TDataSource;
    BAddPedido: TBitBtn;
    btnAddCor: TBitBtn;
    pnl1: TPanel;
    edtNumPedOri: TCurrencyEdit;
    edtPreCarOri: TCurrencyEdit;
    lblNumPedOri: TLabel;
    lblPreCarOri: TLabel;
    procedure EdNumPedExit(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdNumPedKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodRepExit(Sender: TObject);
    procedure EdCodCliKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodRepKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodCpgExit(Sender: TObject);
    procedure EdSitPedExit(Sender: TObject);
    procedure EdDatEmiExit(Sender: TObject);
    procedure EdTnsProExit(Sender: TObject);
    procedure BAlterarClick(Sender: TObject);
    procedure BInserirClick(Sender: TObject);
    procedure BAddProdClick(Sender: TObject);
    procedure BRemoveProdClick(Sender: TObject);
    procedure BFecharClick(Sender: TObject);
    procedure BNumPedClick(Sender: TObject);
    procedure EdNumPedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTnsProClick(Sender: TObject);
    procedure EdTnsProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BCodCliClick(Sender: TObject);
    procedure BCodRepClick(Sender: TObject);
    procedure BCodCpgClick(Sender: TObject);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodRepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCpgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BSaldoTecidosClick(Sender: TObject);
    procedure EdSitPedKeyPress(Sender: TObject; var Key: Char);
    procedure BCancelaPedidoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BAddPedidoClick(Sender: TObject);
    procedure EdCodFilExit(Sender: TObject);
    procedure btnAddCorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vaCodFil, vaNumPed, vaDatEmi, vaTnsPro, vaCodCli, vaCodRep, vaCodCpg, vaSitPed : String;
    vaCarPro : string;
    function AnalizaAlteracao : string;
  end;

var
  FPedido: TFPedido;

implementation

uses UDm2, UDm, UAlteraProdPedido, UAddProdPed, UConsGeralNfEnt, UDm1,
  UConsPedido, UTecidosConsPedido, UAdicionaPedidoEmPedido, UCoresPedido,
  UPrincipal;

{$R *.dfm}

function TFPedido.AnalizaAlteracao : string;
var vaDatEmii : string;
begin
if EdCodFil.Text = '101' then
  BEGIN
    Result := 'N';
  END
else
 begin
   vaDatEmii := DateToStr(EdDatEmi.Date);
   if (vaDatEmii = vaDatEmi) and (vaTnsPro = EdTnsPro.Text) and (vaCodCli = EdCodCli.Text) and
      (vaCodRep = EdCodRep.Text) and (vaCodCpg = EdCodCpg.Text) and (vaSitPed = EdSitPed.Text) then
         result := 'N'
   else
         Result := 'S';
 end;
end;

procedure TFPedido.EdNumPedExit(Sender: TObject);
var vnVlrBru, vnVlrLiq, vnVolPed, vnVolAbe, vnPesBru, vnPesLiq, vnQtdIte, vnQtdAbe : Currency;
    vaVlrBru, vaVlrLiq : String;
begin
  if trim(edcodfil.Text) = '' then
     EdCodFil.Text := '1';

  if EdNumPed.Text <> '' then
     begin//1
        if StrToInt(EdNumPed.Text) = 0 then
           begin//2
              BInserir.Enabled := true;

              EdDatEmi.Date := Date;
              EdTnsPro.Text := '90100';
              EdCodFil.Text := '1';
              EdCodCli.Clear;
              LDsCodCli.Caption := '';
              EdCodRep.Clear;
              LDsCodRep.Caption := '';
              EdCodCpg.Clear;
              LDsCodCpg.Caption := '';
              EdSitPed.Text := '9';
              EdSitPedExit(Sender);

              PTecTransferido.Color := clWindow;
              PTecTransferido.Caption := '';
              PPreCarga.Color := clWindow;
              PPreCarga.Caption := '';
              PCorte.Caption := '';
              PCorte.Color := clWindow;
              PCarga.Caption := '';
              PCarga.Color := clWindow;

              LEndCli.Caption := '';

              BAddProd.Enabled := false;
              BRemoveProd.Enabled := false;

              Dm2.ConsE120Ipd.Close;
              Dm2.ConsE120Ipd.Parameters.ParamByName('codfil').Value := StrToInt(EdCodFil.Text);
              Dm2.ConsE120Ipd.Parameters.ParamByName('numped').Value := 999999;
              Dm2.ConsE120Ipd.Open;
              Dm2.ConsE120Ipd.First;

              EdVlrBru.Value := 0;
              EdVlrLiq.Value := 0;
              EdVolPedido.Value := 0;
              EdVolAberto.Value := 0;
              EdPesoBruto.Value := 0;
              EdPesoLiquido.Value := 0;
              EdQtdItens.Value := 0;
              EdQtdAberto.Value := 0;

              lblNumPedOri.Visible := false;
              lblPreCarOri.Visible := False;
              edtNumPedOri.Value := 0;
              edtNumPedOri.Visible := False;
              edtPreCarOri.Value := 0;
              edtPreCarOri.Visible := False;


           end//2
        else
           begin//3
              BInserir.Enabled := false;

              BAddProd.Enabled := true;
              BRemoveProd.Enabled := true;

              Dm2.ConsE120ped.Close;
              Dm2.ConsE120ped.Parameters.ParamByName('codfil').Value := StrToInt(EdCodFil.Text);
              Dm2.ConsE120ped.Parameters.ParamByName('numped').Value := StrToInt(EdNumPed.Text);
              Dm2.ConsE120ped.Open;
              if Dm2.ConsE120ped.IsEmpty then
                 begin//4
                   Application.MessageBox('Pedido não encontrado','ERRO', MB_ICONERROR+MB_OK);
                   EdNumPed.Clear;
                   EdDatEmi.Date := 0;
                   EdTnsPro.Text := '';
                   //EdCodFil.Text := '1';
                   EdCodCli.Clear;
                   LDsCodCli.Caption := '';
                   EdCodRep.Clear;
                   LDsCodRep.Caption := '';
                   EdCodCpg.Clear;
                   LDsCodCpg.Caption := '';
                   EdSitPed.Text := '9';
                   EdSitPedExit(Sender);

                   PTecTransferido.Color := clWindow;
                   PTecTransferido.Caption := '';
                   PPreCarga.Color := clWindow;
                   PPreCarga.Caption := '';
                   PCorte.Caption := '';
                   PCorte.Color := clWindow;
                   PCarga.Caption := '';
                   PCarga.Color := clWindow;

                   LEndCli.Caption := '';

                   BAddProd.Enabled := false;
                   BRemoveProd.Enabled := false;

                   Dm2.ConsE120Ipd.Close;
                   Dm2.ConsE120Ipd.Parameters.ParamByName('codfil').Value := StrToInt(EdCodFil.Text);
                   Dm2.ConsE120Ipd.Parameters.ParamByName('numped').Value := 999999;
                   Dm2.ConsE120Ipd.Open;
                   Dm2.ConsE120Ipd.First;

                   EdVlrBru.Value := 0;
                   EdVlrLiq.Value := 0;
                   EdVolPedido.Value := 0;
                   EdVolAberto.Value := 0;
                   EdPesoBruto.Value := 0;
                   EdPesoLiquido.Value := 0;
                   EdQtdItens.Value := 0;
                   EdQtdAberto.Value := 0;

                    lblNumPedOri.Visible := false;
                    lblPreCarOri.Visible := False;
                    edtNumPedOri.Value := 0;
                    edtNumPedOri.Visible := False;
                    edtPreCarOri.Value := 0;
                    edtPreCarOri.Visible := False;

                   EdNumPed.SetFocus;
                 end//4
              else
                 begin//5
                   EdCodFil.Text := IntToStr(Dm2.ConsE120pedCODFIL.Value);
                   EdDatEmi.Date := Dm2.ConsE120pedDATEMI.Value;
                   EdTnsPro.Text := Dm2.ConsE120pedTNSPRO.Value;
                   EdCodCli.Text := IntToStr(Dm2.ConsE120pedCODCLI.Value);
                   EdCodRep.Text := IntToStr(Dm2.ConsE120pedCODREP.Value);
                   EdCodCpg.Text := Dm2.ConsE120pedCODCPG.Value;
                   EdSitPed.Text := IntToStr(Dm2.ConsE120pedSITPED.Value);

                   if Dm2.ConsE120pedUSU_NUMPEDORI.AsInteger <> 0 then
                      begin
                         lblNumPedOri.Visible := True;
                         lblPreCarOri.Visible := True;
                         edtNumPedOri.Value := Dm2.ConsE120pedUSU_NUMPEDORI.AsInteger;
                         edtNumPedOri.Visible := True;
                         edtPreCarOri.Value := Dm2.ConsE120pedUSU_PRECARORI.AsInteger;
                         edtPreCarOri.Visible := True;
                      end
                   else
                      begin
                        lblNumPedOri.Visible := false;
                        lblPreCarOri.Visible := False;
                        edtNumPedOri.Value := 0;
                        edtNumPedOri.Visible := False;
                        edtPreCarOri.Value := 0;
                        edtPreCarOri.Visible := False;
                      end;

                  vaCodFil := EdCodFil.Text;
                  vaNumPed := EdNumPed.Text;
                  vaDatEmi := DateToStr(EdDatEmi.Date);
                  vaTnsPro := EdTnsPro.Text;
                  vaCodCli := EdCodCli.Text;
                  vaCodRep := EdCodRep.Text;
                  vaCodCpg := EdCodCpg.Text;
                  vaSitPed := EdSitPed.Text;

                   EdCodCliExit(Sender);
                   EdCodRepExit(Sender);
                   EdCodCpgExit(Sender);
                   EdSitPedExit(Sender);

                   Dm2.ConsE120Ipd.Close;
                   Dm2.ConsE120Ipd.Parameters.ParamByName('codfil').Value := StrToInt(EdCodFil.Text);
                   Dm2.ConsE120Ipd.Parameters.ParamByName('numped').Value := StrToInt(EdNumPed.Text);
                   Dm2.ConsE120Ipd.Open;
                   Dm2.ConsE120Ipd.First;
                   vnVlrBru := 0;
                   vnVlrLiq := 0;
                   vnVolPed := 0;
                   vnVolAbe := 0;
                   vnPesBru := 0;
                   vnPesLiq := 0;
                   vnQtdIte := 0;
                   vnQtdAbe := 0;
                   while not Dm2.ConsE120Ipd.Eof do
                      begin//6
                         vnVlrBru := vnVlrBru + Dm2.ConsE120IpdVLRBRU.Value;
                         vnVlrLiq := vnVlrLiq + Dm2.ConsE120IpdVLRLIQ.Value;

                         //consulta o volume e peso do produto
                         ConsVolPro.Close;
                         ConsVolPro.Parameters.ParamByName('codpro').Value := Dm2.ConsE120IpdCODPRO.Value;
                         ConsVolPro.Parameters.ParamByName('codder').Value := Dm2.ConsE120IpdCODDER.Value;
                         ConsVolPro.Open;
                         vnVolPed := vnVolPed + (ConsVolProVOLDER.Value * Dm2.ConsE120IpdQTDPED.Value);
                         vnVolAbe := vnVolAbe + (ConsVolProVOLDER.Value * Dm2.ConsE120IpdQTDABE.Value);

                         vnPesBru := vnPesBru + (ConsVolProPESBRU.Value * Dm2.ConsE120IpdQTDABE.Value);
                         vnPesLiq := vnPesLiq + (ConsVolProPESLIQ.Value * Dm2.ConsE120IpdQTDABE.Value);
                         vnQtdIte := vnQtdIte + 1;
                         vnQtdAbe := vnQtdAbe + Dm2.ConsE120IpdQTDABE.Value;
                         Dm2.ConsE120Ipd.Next;
                      end;//6


                  {LVlrBru.Caption := FormatFloat('#,##0.00',StrToFloat(vaVlrBru));
                  LVlrLiq.Caption := FormatFloat('#,##0.00',StrToFloat(vaVlrLiq));}
                  EdVlrBru.Value := vnVlrBru;
                  EdVlrLiq.Value := vnVlrLiq;
                  EdVolPedido.Value := vnVolPed;
                  EdVolAberto.Value := vnVolAbe;
                  EdPesoBruto.Value := vnPesBru;
                  EdPesoLiquido.Value := vnPesLiq;
                  EdQtdItens.Value := vnQtdIte;
                  EdQtdAberto.Value := vnQtdAbe;


                  if Dm2.ConsE120pedUSU_PEDTRA.Value = 'S' then
                     begin
                        PTecTransferido.Color := $0071FF71;
                        PTecTransferido.Caption := 'Tec.Trans.';
                     end
                  else
                     begin
                        PTecTransferido.Color := clWindow;
                        PTecTransferido.Caption := '';
                     end;

                  if Dm2.ConsE120pedUSU_PRECAR.Value <> 0 then
                     begin
                        ConsUsu_TPreCar.Close;
                        ConsUsu_TPreCar.Parameters.ParamByName('precar').Value := Dm2.ConsE120pedUSU_PRECAR.Value;
                        ConsUsu_TPreCar.Open;
                        if ConsUsu_TPreCarUSU_CARLIB.Value = 'S' then
                           begin
                             PPreCarga.Caption := 'Pré-Carga: '+ IntToStr(Dm2.ConsE120pedUSU_PRECAR.Value);
                             PPreCarga.Color := $0071FF71;
                           end
                        else if ConsUsu_TPreCarUSU_CARLIB.Value = 'N' then
                                begin
                                   PPreCarga.Caption := 'Pré-Carga: '+ IntToStr(Dm2.ConsE120pedUSU_PRECAR.Value);
                                   PPreCarga.Color := $007777FF;
                                end
                        else if ConsUsu_TPreCarUSU_CARLIB.Value = 'F' then
                                begin
                                   PPreCarga.Caption := 'Pré-Carga: '+ IntToStr(Dm2.ConsE120pedUSU_PRECAR.Value);
                                   PPreCarga.Color := clRed;
                                end;
                     end;


                  if Dm2.ConsE120pedUSU_PRECAR.Value <> 0 then
                     begin
                       //consulta se a carga ja foi toda cortada
                       ConsUsu_TCarPro.Close;
                       ConsUsu_TCarPro.Parameters.ParamByName('numane').Value := Dm2.ConsE120pedUSU_PRECAR.Value;
                       ConsUsu_TCarPro.Open;
                       if ConsUsu_TCarPro.IsEmpty then
                          begin
                             PCorte.Caption := '';
                             PCorte.Color := clWindow;
                          end
                       else
                          begin
                             if ConsUsu_TCarProUSU_CARPRO.Value = 'S' then
                                begin
                                   PCorte.Color := $0071FF71;
                                   PCorte.Caption := 'Cortado';
                                end
                             else
                               if ConsUsu_TCarProUSU_CARPRO.Value = 'N' then
                                  begin
                                     PCorte.Color := $007777FF;
                                     PCorte.Caption := 'Corte';
                                  end;
                          end;
                     end;



                  if Dm2.ConsE120pedUSU_PRECAR.Value <> 0 then
                     begin
                       //consulta se a pre-carga que o pedido estiver ja foi
                       //importada para o corte de tecido
                       ConsUsu_TCarPro.Close;
                       ConsUsu_TCarPro.Parameters.ParamByName('numane').Value := Dm2.ConsE120pedUSU_PRECAR.Value;
                       ConsUsu_TCarPro.Open;
                       if ConsUsu_TCarPro.IsEmpty then
                          vaCarPro := 'N'
                       else
                          vaCarPro := 'S';
                     end
                  else
                     begin
                       vaCarPro := 'N';
                     end;

                    //verifica se o pedido ja esta em caga
                    ConsE135Pes.Close;
                    ConsE135Pes.Parameters.ParamByName('numped').Value := Dm2.ConsE120pedNUMPED.Value;
                    ConsE135Pes.Open;
                    if ConsE135Pes.IsEmpty then
                       begin
                          PCarga.Caption := '';
                          PCarga.Color := clWindow;
                       end
                    else
                       begin
                         PCarga.Caption := 'Carga: '+ CurrToStr(ConsE135PesNUMANE.Value);
                         PCarga.Color := $0071FF71;
                       end;


                 end;//5
           end;//3

     end;//1

end;

procedure TFPedido.BSairClick(Sender: TObject);
begin
Close;
end;

procedure TFPedido.BSaldoTecidosClick(Sender: TObject);
//var Cursur : TCursor;
begin
  {
 if not Dm2.ConsE120Ipd.IsEmpty then
  begin


  Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;

  //apaga os registros antigos da tabela usu_temptcp
  Dm2.ConsUsu_TempTcp.Close;
  Dm2.ConsUsu_TempTcp.Open;
  Dm2.ConsUsu_TempTcp.First;
  while not Dm2.ConsUsu_TempTcp.Eof do
     begin
        Dm2.ConsUsu_TempTcp.Delete;
     end;


   //percorre as cores do pedido
   ConsUsu_T120IpdTecidos.Close;
   ConsUsu_T120IpdTecidos.Parameters.ParamByName('codemp').Value :=  Dm2.ConsE120pedCODEMP.Value;
   ConsUsu_T120IpdTecidos.Parameters.ParamByName('codfil').Value :=  Dm2.ConsE120pedCODFIL.Value;
   ConsUsu_T120IpdTecidos.Parameters.ParamByName('numped').Value :=  Dm2.ConsE120pedNUMPED.Value;
   ConsUsu_T120IpdTecidos.Open;
   ConsUsu_T120IpdTecidos.First;
   while not ConsUsu_T120IpdTecidos.Eof do
      begin//1
          //consulta quanto consome de tecido cada produto
          Conse075der.Close;
          Conse075der.Parameters.ParamByName('codpro').Value := ConsUsu_T120IpdTecidosUSU_CODPRO.Value;
          Conse075der.Parameters.ParamByName('codder').Value := ConsUsu_T120IpdTecidosUSU_CODDER.Value;
          Conse075der.Open;

          if ConsUsu_T120IpdTecidosUSU_TIPCMB.Value = 1 then
             begin
                Dm2.CadUsu_TempTcp.Close;
                Dm2.CadUsu_TempTcp.Parameters.ParamByName('codpro').Value := ConsUsu_T120IpdTecidosUSU_COR001.Value;
                Dm2.CadUsu_TempTcp.Open;
                if Dm2.CadUsu_TempTcp.IsEmpty then
                   begin
                      Dm2.CadUsu_TempTcp.Insert;
                      Dm2.CadUsu_TempTcpUSU_CODPRO.Value := ConsUsu_T120IpdTecidosUSU_COR001.Value;
                      Dm2.CadUsu_TempTcpUSU_QTDCON.Value := ConsUsu_T120IpdTecidosUSU_QTDABE.Value * Conse075derUSU_CORUNI.Value;
                      Dm2.CadUsu_TempTcp.Post;
                   end
                else
                  begin
                     Dm2.CadUsu_TempTcp.Edit;
                     Dm2.CadUsu_TempTcpUSU_QTDCON.Value := Dm2.CadUsu_TempTcpUSU_QTDCON.Value + ConsUsu_T120IpdTecidosUSU_QTDABE.Value * Conse075derUSU_CORUNI.Value;
                     Dm2.CadUsu_TempTcp.Post;
                  end;
             end
         else
           if ConsUsu_T120IpdTecidosUSU_TIPCMB.Value = 2 then
             begin
                //com a cor 001
                Dm2.CadUsu_TempTcp.Close;
                Dm2.CadUsu_TempTcp.Parameters.ParamByName('codpro').Value := ConsUsu_T120IpdTecidosUSU_COR001.Value;
                Dm2.CadUsu_TempTcp.Open;
                if Dm2.CadUsu_TempTcp.IsEmpty then
                   begin
                      Dm2.CadUsu_TempTcp.Insert;
                      Dm2.CadUsu_TempTcpUSU_CODPRO.Value := ConsUsu_T120IpdTecidosUSU_COR001.Value;
                      Dm2.CadUsu_TempTcpUSU_QTDCON.Value := ConsUsu_T120IpdTecidosUSU_QTDABE.Value * Conse075DerUSU_CMP1BB.Value;
                      Dm2.CadUsu_TempTcp.Post;
                   end
                else
                  begin
                     Dm2.CadUsu_TempTcp.Edit;
                     Dm2.CadUsu_TempTcpUSU_QTDCON.Value := Dm2.CadUsu_TempTcpUSU_QTDCON.Value + ConsUsu_T120IpdTecidosUSU_QTDABE.Value * Conse075DerUSU_CMP1BB.Value;
                     Dm2.CadUsu_TempTcp.Post;
                  end;

                //com a cor 002
                Dm2.CadUsu_TempTcp.Close;
                Dm2.CadUsu_TempTcp.Parameters.ParamByName('codpro').Value := ConsUsu_T120IpdTecidosUSU_COR002.Value;
                Dm2.CadUsu_TempTcp.Open;
                if Dm2.CadUsu_TempTcp.IsEmpty then
                   begin//8
                      Dm2.CadUsu_TempTcp.Insert;
                      Dm2.CadUsu_TempTcpUSU_CODPRO.Value := ConsUsu_T120IpdTecidosUSU_COR002.Value;
                      Dm2.CadUsu_TempTcpUSU_QTDCON.Value := ConsUsu_T120IpdTecidosUSU_QTDABE.Value * Conse075DerUSU_CMP1AE.Value;
                      Dm2.CadUsu_TempTcp.Post;
                   end//8
                else
                  begin//9
                     Dm2.CadUsu_TempTcp.Edit;
                     Dm2.CadUsu_TempTcpUSU_QTDCON.Value := Dm2.CadUsu_TempTcpUSU_QTDCON.Value + ConsUsu_T120IpdTecidosUSU_QTDABE.Value * Conse075DerUSU_CMP1AE.Value;
                     Dm2.CadUsu_TempTcp.Post;
                  end;//9
             end//5
           else
             if ConsUsu_T120IpdTecidosUSU_TIPCMB.Value = 3 then
             begin//10
                //com a cor 001
                Dm2.CadUsu_TempTcp.Close;
                Dm2.CadUsu_TempTcp.Parameters.ParamByName('codpro').Value := ConsUsu_T120IpdTecidosUSU_COR001.Value;
                Dm2.CadUsu_TempTcp.Open;
                if Dm2.CadUsu_TempTcp.IsEmpty then
                   begin//11
                      Dm2.CadUsu_TempTcp.Insert;
                      Dm2.CadUsu_TempTcpUSU_CODPRO.Value := ConsUsu_T120IpdTecidosUSU_COR001.Value;
                      Dm2.CadUsu_TempTcpUSU_QTDCON.Value := ConsUsu_T120IpdTecidosUSU_QTDABE.Value * Conse075DerUSU_CMP2BB.Value;
                      Dm2.CadUsu_TempTcp.Post;
                   end//11
                else
                  begin//12
                     Dm2.CadUsu_TempTcp.Edit;
                     Dm2.CadUsu_TempTcpUSU_QTDCON.Value := Dm2.CadUsu_TempTcpUSU_QTDCON.Value + ConsUsu_T120IpdTecidosUSU_QTDABE.Value * Conse075DerUSU_CMP2BB.Value;
                     Dm2.CadUsu_TempTcp.Post;
                  end;//12

                //com a cor 002
                Dm2.CadUsu_TempTcp.Close;
                Dm2.CadUsu_TempTcp.Parameters.ParamByName('codpro').Value := ConsUsu_T120IpdTecidosUSU_COR002.Value;
                Dm2.CadUsu_TempTcp.Open;
                if Dm2.CadUsu_TempTcp.IsEmpty then
                   begin//13
                      Dm2.CadUsu_TempTcp.Insert;
                      Dm2.CadUsu_TempTcpUSU_CODPRO.Value := ConsUsu_T120IpdTecidosUSU_COR002.Value;
                      Dm2.CadUsu_TempTcpUSU_QTDCON.Value := ConsUsu_T120IpdTecidosUSU_QTDABE.Value * Conse075DerUSU_CMP2EN.Value;
                      Dm2.CadUsu_TempTcp.Post;
                   end//13
                else
                  begin//14
                     Dm2.CadUsu_TempTcp.Edit;
                     Dm2.CadUsu_TempTcpUSU_QTDCON.Value := Dm2.CadUsu_TempTcpUSU_QTDCON.Value + ConsUsu_T120IpdTecidosUSU_QTDABE.Value * Conse075DerUSU_CMP2EN.Value;
                     Dm2.CadUsu_TempTcp.Post;
                  end;//14
             end;//10
         ConsUsu_T120IpdTecidos.Next;
      end;//1

                     {*******************************************************************
                         atualiza a tabela usu_temptcp com o saldo do tecido no estoque
                      ********************************************************************
                      Dm2.ConsUsu_TempTcp.Close;
                      Dm2.ConsUsu_TempTcp.Open;
                      Dm2.ConsUsu_TempTcp.First;
                      while not Dm2.ConsUsu_TempTcp.Eof do
                         begin

                            Dm2.CadUsu_TempTcp.Close;
                            Dm2.CadUsu_TempTcp.Parameters.ParamByName('codpro').Value := Dm2.ConsUsu_TempTcpUSU_CODPRO.Value;
                            Dm2.CadUsu_TempTcp.Open;
                            Dm2.CadUsu_TempTcp.Edit;

                            ConsE210Est.Close;
                            ConsE210Est.Parameters.ParamByName('codpro').Value := Dm2.ConsUsu_TempTcpUSU_CODPRO.Value;
                            ConsE210Est.Parameters.ParamByName('coddep').Value := '1001';
                            ConsE210Est.Open;

                            Dm2.CadUsu_TempTcpUSU_SAL1001.Value := ConsE210EstQTDEST.AsCurrency;

                            ConsE210Est.Close;
                            ConsE210Est.Parameters.ParamByName('codpro').Value := Dm2.ConsUsu_TempTcpUSU_CODPRO.Value;
                            ConsE210Est.Parameters.ParamByName('coddep').Value := '1001.1';
                            ConsE210Est.Open;

                            Dm2.CadUsu_TempTcpUSU_SAL1001_1.Value := ConsE210EstQTDEST.AsCurrency;
                            Dm2.CadUsu_TempTcpUSU_SALFIM.AsCurrency := Dm2.CadUsu_TempTcpUSU_SAL1001.Value - Dm2.CadUsu_TempTcpUSU_QTDCON.Value;
                            Dm2.CadUsu_TempTcp.Post;

                            Dm2.ConsUsu_TempTcp.Next;
                         end;

                         Dm2.ConsUsu_TempTcp.Close;
                         Dm2.ConsUsu_TempTcp.Open;


                         Screen.Cursor := Cursor;

                         FTecidosConsPedido := TFTecidosConsPedido.Create(Self);
                         FTecidosConsPedido.ShowModal;
                         FreeAndNil(FTecidosConsPedido);


  end; }
end;

procedure TFPedido.btnAddCorClick(Sender: TObject);
begin
  FCoresPedido := TFCoresPedido.Create(Self);
  FCoresPedido.ShowModal;
  FreeAndNil(FCoresPedido);
  EdNumPedExit(Sender);
end;

procedure TFPedido.BTnsProClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e001tns.codtns,e001tns.destns,e001tns.dettns from e001tns where lismod = ''VEP''';

    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'TnsPro';
    FConsGeralNfEnt.vnColuna := 999999;
    FConsGeralNfEnt.vaTela := 'FPedido';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdTnsPro;
end;

procedure TFPedido.FormShow(Sender: TObject);
begin
 // EdCodFil.Text := '1';
end;

procedure TFPedido.EdNumPedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_F3 then
       begin
         BNumPed.Click;
       end;
end;

procedure TFPedido.EdNumPedKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TFPedido.FormActivate(Sender: TObject);
begin
  EdCodFil.Text := '1';

  Dm2.ConsE120Ipd.Close;
  Dm2.ConsE120Ipd.Parameters.ParamByName('codfil').Value := StrToInt(EdCodFil.Text);
  Dm2.ConsE120Ipd.Parameters.ParamByName('numped').Value := 999999;
  Dm2.ConsE120Ipd.Open;
  Dm2.ConsE120Ipd.First;

end;

procedure TFPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFPedido.EdCodCliExit(Sender: TObject);
var vaEndCli : String;
    vaAlteracao : string;
begin
    if EdCodCli.Text <> '' then
      begin
         Dm2.ConsE085Cli.Close;
         Dm2.ConsE085Cli.Parameters.ParamByName('codfil').Value := StrToInt(EdCodFil.Text);
         Dm2.ConsE085Cli.Parameters.ParamByName('codcli').Value := StrToInt(EdCodCli.Text);
         Dm2.ConsE085Cli.Open;
         if Dm2.ConsE085Cli.IsEmpty then
            begin
               Application.MessageBox('Cliente não encontrado','ERRO', MB_ICONERROR+MB_OK);
               EdCodCli.Clear;
               EdCodCli.SetFocus;
            end
         else
            begin
              LDsCodCli.Caption := Dm2.ConsE085CliNOMCLI.Value;
              vaEndCli := Dm2.ConsE085CliAPECLI.Value +'  -  '+
              Dm2.ConsE085CliENDCLI.Value+'  -  '+
              Dm2.ConsE085CliNENCLI.Value+'  -  '+
              Dm2.ConsE085CliBAICLI.Value+'  -  '+
              Dm2.ConsE085CliCIDCLI.Value+'  -  '+
              Dm2.ConsE085CliSIGUFS.Value+'  -  '+
              Dm2.ConsE085CliFONCLI.Value;
              LEndCli.Caption := vaEndCli;

              if EdCodRep.Text = '' then
                EdCodRep.Text := IntToStr(Dm2.ConsE085CliCODREP.Value);
            end;
      end;
      
      vaAlteracao := FPedido.AnalizaAlteracao;
      if vaAlteracao = 'S' then
        BAlterar.Enabled := true
      else
        BAlterar.Enabled := false;

end;

procedure TFPedido.EdCodRepExit(Sender: TObject);
var vaAlteracao : string;
begin
    if EdCodRep.Text <> '' then
      begin
        Dm2.ConsE090Rep.Close;
        Dm2.ConsE090Rep.Parameters.ParamByName('codrep').Value := StrToInt(EdCodRep.Text);
        Dm2.ConsE090Rep.Open;
        LDsCodRep.Caption := Dm2.ConsE090RepAPEREP.Value;

      end;

      vaAlteracao := FPedido.AnalizaAlteracao;
      if vaAlteracao = 'S' then
        BAlterar.Enabled := true
      else
        BAlterar.Enabled := false;
end;

procedure TFPedido.EdCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_F3 then
       begin
         BCodCli.Click;
       end;
end;

procedure TFPedido.EdCodCliKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TFPedido.EdCodRepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_F3 then
       begin
         BCodRep.Click;
       end;
end;

procedure TFPedido.EdCodRepKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TFPedido.EdCodCpgExit(Sender: TObject);
var vaAlteracao : String;
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

     vaAlteracao := FPedido.AnalizaAlteracao;
      if vaAlteracao = 'S' then
        BAlterar.Enabled := true
      else
        BAlterar.Enabled := false;
end;

procedure TFPedido.EdCodCpgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_F3 then
       begin
         BCodCpg.Click;
       end;
end;

procedure TFPedido.EdCodFilExit(Sender: TObject);
begin
    ActiveControl := EdNumPed;
end;

procedure TFPedido.EdSitPedExit(Sender: TObject);
var vaAlteracao : String;
begin
    if EdSitPed.Text <> '' then
      begin
         if EdSitPed.Text = '1' then
            LDsSitPed.Caption := 'Aberto Total'
         else if edSitPed.Text = '2' then
                 LDsSitPed.Caption := 'Aberto Parcial'
              else if edSitPed.Text = '3' then
                      LDsSitPed.Caption := 'Suspenso'
                   else if edSitPed.Text = '4' then
                           LDsSitPed.Caption := 'Liquidado'
                         else if edSitPed.Text = '5' then
                                 LDsSitPed.Caption := 'Cancelado'
                               else if edSitPed.Text = '7' then
                                       LDsSitPed.Caption := 'Em Transmição'
                                    else if edSitPed.Text = '8' then
                                            LDsSitPed.Caption := 'Preparação Análise ou NF'
                                          else if edSitPed.Text = '9' then
                                                  LDsSitPed.Caption := 'Não Fechado';



      end;
      vaAlteracao := FPedido.AnalizaAlteracao;
      if vaAlteracao = 'S' then
        BAlterar.Enabled := true
      else
        BAlterar.Enabled := false;

        if trim(EdSitPed.Text) = '9' then
           begin
             BFechar.Enabled := true;
           end
        else
           begin
             BFechar.Enabled := false;
           end;

          if trim(EdNumPed.Text) <> '0' then
          begin
           //valida para nao deixar digitar o valor 5 neste campo
           if (dm2.ConsE120pedSITPED.Value <> 5) and (trim(EdSitPed.Text) = '5') then
               begin
                  MessageDlg('Para cancelar o pedido cliquie no botão Cancelar',mtWarning,[mbOK],0);
                  ActiveControl := EdSitPed;
                  EdSitPed.Text := IntToStr(dm2.ConsE120pedSITPED.Value);
               end;
          end;
end;

procedure TFPedido.EdSitPedKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0','1','2','9',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFPedido.EdDatEmiExit(Sender: TObject);
var vaAlteracao : string;
begin
if EdDatEmi.Date <> 0 then
 begin
      vaAlteracao := FPedido.AnalizaAlteracao;
      if vaAlteracao = 'S' then
        BAlterar.Enabled := true
      else
        BAlterar.Enabled := false;
 end;

end;

procedure TFPedido.EdTnsProExit(Sender: TObject);
var vaAlteracao : string;
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

            end
         else
            begin

            end;
       end
    else
       begin

       end;


      vaAlteracao := FPedido.AnalizaAlteracao;
      if vaAlteracao = 'S' then
        BAlterar.Enabled := true
      else
        BAlterar.Enabled := false;

end;

procedure TFPedido.EdTnsProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_F3 then
       begin
         BTnsPro.Click;
       end;
end;

procedure TFPedido.BAlterarClick(Sender: TObject);
var
vA_URL, vA_BasQry, xRetorno : String;
xPostQuery		              : TStringList;

vaIDatEmi : String;
vaICodFil : String;
vaINumPed : String;
vaITnsPro : String;
vaICodCli : String;
vaICodRep : String;
vaICodCpg : String;
vaISitPed : String;

begin
if BInserir.Enabled = false then
   begin

  //atribui os valores dos campos para as variaveis
  vaIDatEmi := DateToStr(EdDatEmi.Date);
  vaIDatEmi := FormatDateTime('DD/MM/YYYY',StrToDate(vaIDatEmi));
  vaICodFil := EdCodFil.Text;
  vaINumPed := EdNumPed.Text;
  vaITnsPro := EdTnsPro.Text;
  vaICodCli := EdCodCli.Text;
  vaICodRep := EdCodRep.Text;
  vaICodCpg := EdCodCpg.Text;
  vaISitPed := EdSitPed.Text;


  xPostQuery := TStringList.Create;

  Dm2.ADOUsuT000sis.Close;
  Dm2.ADOUsuT000sis.Open;
  vA_URL := Dm2.ADOUsuT000sisUSU_URLSRV.Value;
  vA_BasQry := Dm2.ADOUsuT000sisUSU_BASQRY.Value;

  xPostQuery.Add('ACAO=EXESENHA');
  xPostQuery.Add('&NOMUSU=sapienssid');
  xPostQuery.Add('&SENUSU=sapienssid');

  // Executar ação de autenticação no Sapiens SID
  xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

  // Verificar se a ação executou com sucesso
  if (StrToIntDef(Copy(xRetorno, 1, 5), 0)) = 0 then
    raise Exception.Create('ERRO - Conexão SID não foi estabelecida: ' + xRetorno)
  else
    vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;

  // Altera cabeçalho do pedido
  xPostQuery.Clear;
  xPostQuery.Add('ACAO=SID.Ped.Gravar');
  xPostQuery.Add('&CodCli='+VaICodCli);
  xPostQuery.Add('&NumPed='+VaINumPed);
  xPostQuery.Add('&DatEmi='+VaIDatEmi);
  xPostQuery.Add('&TnsPro='+VaITnsPro);
  xPostQuery.Add('&CodRep='+VaICodRep);
  xPostQuery.Add('&CodCpg='+VaICodCpg);
  xPostQuery.Add('&SitPed='+VaISitPed);

 // Executar ação  Alterar Pedido
  xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

  // Verificar retorno
  if (xRetorno <> vaNumPed) then
    raise Exception.Create(xRetorno)
  else
     MessageDlg('Pedido: ' + vaNumPed + '  alterado com sucesso.',mtInformation,[mbOk],0);

   BAlterar.Enabled := False;
   Dm2.ADOUsuT000sis.Close;

   EdNumPedExit(Sender);
   end;

end;

procedure TFPedido.BInserirClick(Sender: TObject);
var
vA_URL, vA_BasQry, xRetorno : String;
xPostQuery		              : TStringList;

vaIDatEmi : String;
vaICodFil : String;
vaINumPed : String;
vaITnsPro : String;
vaICodCli : String;
vaICodRep : String;
vaICodCpg : String;
vaISitPed : String;

begin
if EdDatEmi.Date = 0 then
   begin
     MessageDlg('Informe a Data de Emissão',mtWarning,[mbOK],0);
     ActiveControl := EdDatEmi;
   end
 else
   if trim(EdTnsPro.Text) = '' then
      begin
         MessageDlg('Informe a Transação de Produtos',mtWarning,[mbOK],0);
         ActiveControl := EdTnsPro;
      end
   else
     if trim(EdCodCli.Text) = '' then
        begin
           MessageDlg('Informe o Código do Cliente',mtWarning,[mbOK],0);
           ActiveControl := EdCodCli;
         end
     else
        if trim(EdCodRep.Text) = '' then
           begin
              MessageDlg('Informe o Código do Representante',mtWarning,[mbOK],0);
              ActiveControl := EdCodRep;
           end
        else
          if trim(EdCodCpg.Text) = '' then
             begin
               MessageDlg('Informe a Condição de Pagamento',mtWarning,[mbOK],0);
               ActiveControl := EdCodCpg;
             end
          else
            begin

              //atribui os valores dos campos para as variaveis
              vaIDatEmi := DateToStr(EdDatEmi.Date);
              vaIDatEmi := FormatDateTime('DD/MM/YYYY',StrToDate(vaIDatEmi));
              vaICodFil := EdCodFil.Text;
              //vaINumPed := EdNumPed.Text;
              vaITnsPro := EdTnsPro.Text;
              vaICodCli := EdCodCli.Text;
              vaICodRep := EdCodRep.Text;
              vaICodCpg := EdCodCpg.Text;
              //vaISitPed := EdSitPed.Text;

              xPostQuery := TStringList.Create;

              Dm2.ADOUsuT000sis.Close;
              Dm2.ADOUsuT000sis.Open;
              vA_URL := Dm2.ADOUsuT000sisUSU_URLSRV.Value;
              vA_BasQry := Dm2.ADOUsuT000sisUSU_BASQRY.Value;

              xPostQuery.Add('ACAO=EXESENHA');
              xPostQuery.Add('&NOMUSU=sapienssid');
              xPostQuery.Add('&SENUSU=sapienssid');

              // Executar ação de autenticação no Sapiens SID
              xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

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

              // grava cabeçalho do pedido
              xPostQuery.Clear;
              xPostQuery.Add('ACAO=SID.Ped.Gravar');
              xPostQuery.Add('&CodCli='+VaICodCli);
              //xPostQuery.Add('&NumPed='+VaINumPed);
              xPostQuery.Add('&DatEmi='+VaIDatEmi);
              xPostQuery.Add('&TnsPro='+VaITnsPro);
              xPostQuery.Add('&CodRep='+VaICodRep);
              xPostQuery.Add('&CodCpg='+VaICodCpg);
              xPostQuery.Add('&Usu_PreCar='+'0');
              xPostQuery.Add('&Usu_PreTra='+'N');

              // Executar ação  Inserir o pedido
              xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

              {// Verificar retorno
              if (xRetorno not in ()) then
                  raise Exception.Create(xRetorno)
              else}

              EdNumPed.Text := xRetorno;

              Dm2.ADOUsuT000sis.Close;

              EdNumPedExit(Sender);




            end;
end;

procedure TFPedido.BitBtn1Click(Sender: TObject);
begin
    dm2.ConsE120Ipd.Next;
end;

procedure TFPedido.BNumPedClick(Sender: TObject);
begin
   { FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e120ped.codfil,e120ped.numped,e120ped.sitped,e120ped.datemi,e120ped.codcli,e085cli.nomcli,e085cli.cgccpf,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085cli.cidcli,e085cli.sigufs,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e090rep.nomrep,e120ped.tnspro,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085cli.apecli,e120ped.usuger,e120ped.pedblo,e120ped.usu_precar';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e120ped';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e085cli on e085cli.codcli = e120ped.codcli';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e090rep on e090rep.codrep = e120ped.codrep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where e120ped.codfil = 1';

    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'NumPed';
    FConsGeralNfEnt.vnColuna := 5;
    FConsGeralNfEnt.vaTela := 'FPedido';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdNumPed;  }

    FConsPedido := TFConsPedido.Create(Self);
    FConsPedido.vaTelaOrigem := 'PEDIDO';
    FConsPedido.ShowModal;

end;

procedure TFPedido.BRemoveProdClick(Sender: TObject);
var vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;
    vaNumPed : string;
    vaSeqIpd : string;
    vnSeqLog : integer;
    vnQtdTrans,vnSaldoFila : Double;
    vaObsCarga : string;
    vaObsCar : string;
begin
if not (Dm2.ConsE120Ipd.IsEmpty) and (trim(EdCodFil.Text) = '1') then
   begin
     if Application.MessageBox('Deseja realmente excluir o registro?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
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
            xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

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

            // Executar ação  logar na filial
            xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));


            vaNumPed := IntToStr(Dm2.ConsE120IpdNUMPED.Value);
            vaSeqIpd := IntToStr(Dm2.ConsE120IpdSEQIPD.Value);

            // Exclui produto do pedido
            xPostQuery.Clear;
            xPostQuery.Add('ACAO=SID.Ped.ExcluirProduto');
            xPostQuery.Add('&NumPed='+vaNumPed);
            xPostQuery.Add('&SeqIpd='+vaSeqIpd);

            // Executar ação  Exclui produto do pedido
            xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

            // Verificar retorno
            if (xRetorno <> 'OK') then
              // raise Exception.Create(xRetorno)
              ShowMessage(xRetorno)
            else
               begin
                 EdNumPedExit(Sender);
               end;
         end;
   end;
end;

procedure TFPedido.BCancelaPedidoClick(Sender: TObject);
var vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;
    vaCodFil,vaNumPed,vaSeqIpd : string;
    vnSeqLog : integer;
    Cursor : TCursor;
    vnQtdTrans,vnSaldoFila : Double;
begin
  if (not dm2.ConsE120ped.IsEmpty ) and (DM2.ConsE120pedSITPED.Value <> 5) then
     begin//1
       if Application.MessageBox('Deseja realmente cancelar o pedido?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then

         begin//2
         xPostQuery := TStringList.Create;
         Dm2.ADOUsuT000sis.Close;
         Dm2.ADOUsuT000sis.Open;
         vA_URL := Dm2.ADOUsuT000sisUSU_URLSRV.Value;
         vA_BasQry := Dm2.ADOUsuT000sisUSU_BASQRY.Value;
         xPostQuery.Add('ACAO=EXESENHA');
         xPostQuery.Add('&NOMUSU=sapienssid');
         xPostQuery.Add('&SENUSU=sapienssid');
         // Executar ação de autenticação no Sapiens SID
         xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));
         // Verificar se a ação executou com sucesso
         if (StrToIntDef(Copy(xRetorno, 1, 5), 0)) = 0 then
             raise Exception.Create('ERRO - Conexão SID não foi estabelecida: ' + xRetorno)
         else
             vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;

          Cursor := Screen.Cursor;
          Screen.Cursor := crSQLWait;
          DBGProdutos.DataSource := DsReserva;

         //loga na filial
         xPostQuery.Clear;
         xPostQuery.Add('ACAO=SID.Srv.AltEmpFil');
         xPostQuery.Add('&CodEmp='+'1');
         xPostQuery.Add('&CodFil='+'1');
         // Executar ação  logar na filial
         xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

            //percorre os itens para cancelar um por um
            dm2.ConsE120Ipd.First;
            while not dm2.ConsE120Ipd.Eof do
               begin//3
                   vaCodFil := IntToStr(dm2.ConsE120IpdCODFIL.Value);
                   vaNumPed := IntToStr(dm2.ConsE120IpdNUMPED.Value);
                   vaSeqIpd := IntToStr(dm2.ConsE120IpdSEQIPD.Value);

                  // Cancela o item do pedido
                  xPostQuery.Clear;
                  xPostQuery.Add('ACAO=SID.Ped.GravarProduto');
                  xPostQuery.Add('&NumPed='+vaNumPed);
                  xPostQuery.Add('&SeqIpd='+vaSeqIpd);
                  xPostQuery.Add('&SitIpd='+'5');

                 // Executar ação  Cancelar produto do pedido
                  xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                 // Verificar retorno / se cancelou o iten entra nas cores para cancelar e gerar o log para o estoque
                if (xRetorno <> vaSeqIpd) then
                   raise Exception.Create(xRetorno)
                else
                   begin//4
                    {if Dm2.ConsE120pedUSU_PEDTRA.Value = 'S' then
                        begin//11
                           //CONSULTA O CONSUMO DE TECIDO DO PRODUTO
                           Conse075Der.Close;
                           Conse075Der.Parameters.ParamByName('CODPRO').Value := Dm2.ConsE120IpdCODPRO.Value;
                           Conse075Der.Parameters.ParamByName('CODDER').Value := Dm2.ConsE120IpdCODDER.Value;
                           Conse075Der.Open;

                           //percorre as cores do produto
                           Dm2.ConsUsu_T120Ipd.Close;
                           Dm2.ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := Dm2.ConsE120IpdCODFIL.Value;
                           Dm2.ConsUsu_T120Ipd.Parameters.ParamByName('numped').Value := Dm2.ConsE120IpdNUMPED.Value;
                           Dm2.ConsUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := Dm2.ConsE120IpdSEQIPD.Value;
                           Dm2.ConsUsu_T120Ipd.Open;
                           Dm2.ConsUsu_T120Ipd.First;
                           while not Dm2.ConsUsu_T120Ipd.Eof do
                              begin

                                if Trim(Dm2.ConsUsu_T120IpdUSU_COR002.Value) = '' then
                                     begin
                                        Dm1.CadUsu_TSalTec.Close;
                                        Dm1.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := Dm2.ConsUsu_T120IpdUSU_COR001.Value;//cor do tecido
                                        Dm1.CadUsu_TSalTec.Open;
                                        if not Dm1.CadUsu_TSalTec.IsEmpty then
                                           begin
                                              Dm1.CadUsu_TSalTec.Edit;
                                              vnQtdTrans := RoundTo(Dm2.ConsUsu_T120IpdUSU_QTDABE.Value * Conse075DerUSU_CORUNI.Value,-2);

                                              if RoundTo(Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2) >= RoundTo(vnQtdTrans,-2) then
                                                 begin
                                                    Dm1.CadUsu_TSalTecUSU_SALFIL.Value := Dm1.CadUsu_TSalTecUSU_SALFIL.Value - RoundTo(vnQtdTrans,-2);
                                                 end
                                              else
                                              if (Dm1.CadUsu_TSalTecUSU_SALFIL.Value > 0) and (RoundTo(Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2) < RoundTo(vnQtdTrans,-2)) then
                                                 begin
                                                   vnSaldoFila := RoundTo(vnQtdTrans - Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2);
                                                   Dm1.CadUsu_TSalTecUSU_SALFIL.Value := 0;
                                                   Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value - vnSaldoFila;
                                                 end
                                              else
                                                 begin
                                                    Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value - RoundTo(vnQtdTrans,-2);
                                                 end;

                                              Dm1.CadUsu_TSalTec.Post;
                                           end;
                                     end
                                else
                                     begin
                                        //faz com a cor 01
                                        Dm1.CadUsu_TSalTec.Close;
                                        Dm1.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := Dm2.ConsUsu_T120IpdUSU_COR001.Value;//cor do tecido
                                        Dm1.CadUsu_TSalTec.Open;
                                        if not Dm1.CadUsu_TSalTec.IsEmpty then
                                           begin
                                              Dm1.CadUsu_TSalTec.Edit;
                                              vnQtdTrans := RoundTo(Dm2.ConsUsu_T120IpdUSU_QTDABE.Value * Conse075DerUSU_CMP1BB.Value,-2);

                                              if RoundTo(Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2) >= RoundTo(vnQtdTrans,-2) then
                                                 begin
                                                    Dm1.CadUsu_TSalTecUSU_SALFIL.Value := Dm1.CadUsu_TSalTecUSU_SALFIL.Value - RoundTo(vnQtdTrans,-2);
                                                 end
                                              else
                                              if (Dm1.CadUsu_TSalTecUSU_SALFIL.Value > 0) and (RoundTo(Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2) < RoundTo(vnQtdTrans,-2)) then
                                                 begin
                                                   vnSaldoFila := RoundTo(vnQtdTrans - Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2);
                                                   Dm1.CadUsu_TSalTecUSU_SALFIL.Value := 0;
                                                   Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value - vnSaldoFila;
                                                 end
                                              else
                                                 begin
                                                    Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value - RoundTo(vnQtdTrans,-2);
                                                 end;

                                              Dm1.CadUsu_TSalTec.Post;
                                           end;

                                            //com a cor 02
                                            Dm1.CadUsu_TSalTec.Close;
                                            Dm1.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := Dm2.ConsUsu_T120IpdUSU_COR002.Value;//cor do tecido
                                            Dm1.CadUsu_TSalTec.Open;
                                            if not Dm1.CadUsu_TSalTec.IsEmpty then
                                               begin
                                                  Dm1.CadUsu_TSalTec.Edit;
                                                  vnQtdTrans := RoundTo(Dm2.ConsUsu_T120IpdUSU_QTDABE.Value * Conse075DerUSU_CMP1AE.Value,-2);

                                                  if RoundTo(Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2) >= RoundTo(vnQtdTrans,-2) then
                                                     begin
                                                        Dm1.CadUsu_TSalTecUSU_SALFIL.Value := Dm1.CadUsu_TSalTecUSU_SALFIL.Value - RoundTo(vnQtdTrans,-2);
                                                     end
                                                  else
                                                  if (Dm1.CadUsu_TSalTecUSU_SALFIL.Value > 0) and (RoundTo(Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2) < RoundTo(vnQtdTrans,-2)) then
                                                     begin
                                                       vnSaldoFila := RoundTo(vnQtdTrans - Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2);
                                                       Dm1.CadUsu_TSalTecUSU_SALFIL.Value := 0;
                                                       Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value - vnSaldoFila;
                                                     end
                                                  else
                                                     begin
                                                        Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value - RoundTo(vnQtdTrans,-2);
                                                     end;

                                                  Dm1.CadUsu_TSalTec.Post;
                                               end;
                                     end;

                                dm2.CadUsu_T120Ipd.Close;
                                dm2.CadUsu_T120Ipd.Parameters.ParamByName('codemp').Value := Dm2.ConsUsu_T120IpdUSU_CODEMP.Value;
                                dm2.CadUsu_T120Ipd.Parameters.ParamByName('codfil').Value := Dm2.ConsUsu_T120IpdUSU_CODFIL.Value;
                                dm2.CadUsu_T120Ipd.Parameters.ParamByName('numped').Value := Dm2.ConsUsu_T120IpdUSU_NUMPED.Value;
                                dm2.CadUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := Dm2.ConsUsu_T120IpdUSU_SEQIPD.Value;
                                dm2.CadUsu_T120Ipd.Parameters.ParamByName('seqite').Value := Dm2.ConsUsu_T120IpdUSU_SEQITE.Value;
                                Dm2.ConsUsu_T120Ipd.Open;
                                if not Dm2.ConsUsu_T120Ipd.IsEmpty then
                                   begin
                                     Dm2.ConsUsu_T120Ipd.Edit;
                                     Dm2.ConsUsu_T120IpdUSU_QTDCAN.Value := Dm2.ConsUsu_T120IpdUSU_QTDCAN.Value + Dm2.ConsUsu_T120IpdUSU_QTDABE.Value;
                                     Dm2.ConsUsu_T120IpdUSU_QTDABE.Value := 0;
                                     Dm2.ConsUsu_T120Ipd.Post;
                                   end;
                                Dm2.ConsUsu_T120Ipd.Next;
                              end;
                        end;//11
                        }
                   end;//4

                 dm2.ConsE120Ipd.Next;
               end;//3

               EdNumPedExit(Sender);
               Screen.Cursor := Cursor;
               DBGProdutos.DataSource := DsConsE120Ipd;
         end;//2
     end;//1

end;

procedure TFPedido.BCodCliClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.cgccpf,e085cli.insest,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085cli.cidcli,e085cli.sigufs,e085cli.endcli,e085cli.baicli,e085cli.sitcli,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085hcl.codrep,e090rep.nomrep,e090rep.aperep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e085cli';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e085hcl on e085hcl.codcli = e085cli.codcli';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e090rep on e090rep.codrep = e085hcl.codrep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e085hcl.codfil = 1';

    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodCli';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FPedido';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodCli;
end;

procedure TFPedido.BCodCpgClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e028cpg.codcpg,e028cpg.descpg,e028cpg.abrcpg,e028cpg.przmed,e028cpg.qtdpar from e028cpg';

    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'CodCpg';
    FConsGeralNfEnt.vnColuna := 999999;
    FConsGeralNfEnt.vaTela := 'FPedido';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodCpg;
end;

procedure TFPedido.BCodRepClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e090rep.codrep,e090rep.nomrep,e090rep.aperep,e090rep.cgccpf,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e090rep.cidrep,e090rep.sigufs,e090rep.endrep,e090rep.bairep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e090rep';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'CodRep';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FPedido';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodRep;
end;

procedure TFPedido.BExcluirClick(Sender: TObject);
var
vA_URL, vA_BasQry, xRetorno : String;
xPostQuery		              : TStringList;
vaNumPed : string;
begin
if not Dm2.ConsE120ped.IsEmpty then
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
  xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

  // Verificar se a ação executou com sucesso
  if (StrToIntDef(Copy(xRetorno, 1, 5), 0)) = 0 then
    raise Exception.Create('ERRO - Conexão SID não foi estabelecida: ' + xRetorno)
  else
    vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;

   vaNumPed := trim(EdNumPed.Text);

   //loga na filial
   xPostQuery.Clear;
   xPostQuery.Add('ACAO=SID.Srv.AltEmpFil');
   xPostQuery.Add('&CodEmp='+'1');
   xPostQuery.Add('&CodFil='+'1');
   xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

   // Exclui o pedido
  xPostQuery.Clear;
  xPostQuery.Add('ACAO=SID.Ped.Excluir');
  xPostQuery.Add('&NumPed='+vaNumPed);

  // Executar ação excluir pedido
  xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

  // Verificar retorno
  if (xRetorno <> 'OK') then
    raise Exception.Create(xRetorno)
  else
     begin
       //apaga as cores dos produtos do pedido
       {ConsUsu_T120Ipd.Close;
       ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := Dm2.ConsE120IpdCODFIL.Value;
       ConsUsu_T120Ipd.Parameters.ParamByName('numped').Value := Dm2.ConsE120IpdNUMPED.Value;
       ConsUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := Dm2.ConsE120IpdSEQIPD.Value;
       ConsUsu_T120Ipd.Open;
       while not ConsUsu_T120Ipd.IsEmpty do
         begin
           ConsUsu_T120Ipd.Delete;
         end;}

       EdNumPed.Text := '0';
       EdNumPedExit(Sender);

     end;

 end;
end;

procedure TFPedido.BFecharClick(Sender: TObject);
var
vA_URL, vA_BasQry, xRetorno : String;
xPostQuery		              : TStringList;
vaNumPed : string;
begin
if not Dm2.ConsE120ped.IsEmpty then
begin

if (Dm2.ConsE120pedSITPED.Value = 9) then
  begin//1

  xPostQuery := TStringList.Create;

  Dm2.ADOUsuT000sis.Close;
  Dm2.ADOUsuT000sis.Open;
  vA_URL := Dm2.ADOUsuT000sisUSU_URLSRV.Value;
  vA_BasQry := Dm2.ADOUsuT000sisUSU_BASQRY.Value;

  xPostQuery.Add('ACAO=EXESENHA');
  xPostQuery.Add('&NOMUSU=sapienssid');
  xPostQuery.Add('&SENUSU=sapienssid');

  // Executar ação de autenticação no Sapiens SID
  xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

  // Verificar se a ação executou com sucesso
  if (StrToIntDef(Copy(xRetorno, 1, 5), 0)) = 0 then
    raise Exception.Create('ERRO - Conexão SID não foi estabelecida: ' + xRetorno)
  else
    vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;

   vaNumPed := trim(EdNumPed.Text);

   // Fecha o pedido
  xPostQuery.Clear;
  xPostQuery.Add('ACAO=SID.Ped.Fechar');
  xPostQuery.Add('&NumPed='+vaNumPed);

  // Executar ação Fechar pedido
  xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

  // Verificar retorno
  if (xRetorno <> 'OK') then
    raise Exception.Create(xRetorno)
  else
     begin
        EdNumPedExit(Sender);

     end;

  end;//1

end;
end;

procedure TFPedido.BAddPedidoClick(Sender: TObject);
begin
  FAdicionaPedidoEmPedido := TFAdicionaPedidoEmPedido.Create(Self);

  FAdicionaPedidoEmPedido.LNumPedPrincipal.Caption := EdNumPed.Text;
  FAdicionaPedidoEmPedido.LCodFil.Caption := EdCodFil.Text;
  FAdicionaPedidoEmPedido.LDatEmi.Caption := DateToStr(EdDatEmi.Date);
  FAdicionaPedidoEmPedido.LSitPed.Caption := EdSitPed.Text + ' - '+LDsSitPed.Caption;
  FAdicionaPedidoEmPedido.LNomCli.Caption := EdCodCli.Text + ' - '+LDsCodCli.Caption;
  FAdicionaPedidoEmPedido.LEndCli.Caption := LEndCli.Caption;
  FAdicionaPedidoEmPedido.LTecTrans.Caption := dm2.ConsE120pedUSU_PEDTRA.Value;
  FAdicionaPedidoEmPedido.LPreCar.Caption := IntToStr(dm2.ConsE120pedUSU_PRECAR.Value);
  FAdicionaPedidoEmPedido.LNomRep.Caption := EdCodRep.Text + ' - '+LDsCodRep.Caption;
  FAdicionaPedidoEmPedido.LDsPgto.Caption := EdCodCpg.Text + ' - '+LDsCodCpg.Caption;

  FAdicionaPedidoEmPedido.ShowModal;
  FreeAndNil(FAdicionaPedidoEmPedido);
  EdNumPedExit(Sender);


end;

procedure TFPedido.BAddProdClick(Sender: TObject);
begin
if not (Dm2.ConsE120ped.IsEmpty) and (trim(EdCodFil.Text) = '1') then
  begin

   FAddProdPred := TFAddProdPred.Create(Self);
   FAddProdPred.ShowModal;
   FreeAndNil(FAddProdPred);
  end;

end;

end.
