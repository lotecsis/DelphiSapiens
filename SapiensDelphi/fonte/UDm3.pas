unit UDm3;

interface

uses
  SysUtils, Classes, DB, ADODB, DBClient, Provider;

type
  TDm3 = class(TDataModule)
    ConsE075Pro: TADOQuery;
    ConsE075ProCODEMP: TIntegerField;
    ConsE075ProCODPRO: TStringField;
    ConsE075ProDESPRO: TStringField;
    ConsE075ProCODORI: TStringField;
    ConsE075ProCODFAM: TStringField;
    ConsE075ProUNIMED: TStringField;
    ConsE075ProUSU_VLRMAX: TBCDField;
    ConsE075ProCODCLF: TStringField;
    ConsE075ProSITPRO: TStringField;
    ConsE075ProTEMICM: TStringField;
    ConsE075ProRECICM: TStringField;
    ConsE075ProDESFAM: TStringField;
    ConsE075ProDESORI: TStringField;
    ConsE075ProDESCLF: TStringField;
    ConsE075ProPERIPI: TBCDField;
    ConsE210Est: TADOQuery;
    ConsE210EstCODPRO: TStringField;
    ConsE210EstCODDEP: TStringField;
    ConsE210EstUNIMED: TStringField;
    ConsE210EstQTDEST: TFMTBCDField;
    ConsE210EstESTMIN: TFMTBCDField;
    ConsE210EstVLREST: TFMTBCDField;
    ConsE210EstCONSUMO: TFMTBCDField;
    ConsE403Fpr: TADOQuery;
    ConsE403FprCODEMP: TIntegerField;
    ConsE403FprCODPRO: TStringField;
    ConsE403FprCODFOR: TIntegerField;
    ConsE403FprNOMFOR: TStringField;
    ConsE403FprPROFOR: TStringField;
    ConsE403FprDESFOR: TStringField;
    ConsE403FprUNIMED: TStringField;
    ConsE403FprPRZENT: TIntegerField;
    ConsE095For: TADOQuery;
    ConsE095ForCODFOR: TIntegerField;
    ConsE095ForNOMFOR: TStringField;
    ConsE095ForAPEFOR: TStringField;
    ConsE095ForINSEST: TStringField;
    ConsE095ForCGCCPF: TBCDField;
    ConsE095ForENDFOR: TStringField;
    ConsE095ForCPLEND: TStringField;
    ConsE095ForBAIFOR: TStringField;
    ConsE095ForCEPFOR: TIntegerField;
    ConsE095ForCIDFOR: TStringField;
    ConsE095ForSIGUFS: TStringField;
    ConsE095ForFONFOR: TStringField;
    ConsE095ForFAXFOR: TStringField;
    ConsE095ForINTNET: TStringField;
    ConsE095ForDATCAD: TDateTimeField;
    ConsE095ForSITFOR: TStringField;
    ConsUltimaNfEnt: TADOQuery;
    ConsUltimaNfEntCODEMP: TIntegerField;
    ConsUltimaNfEntCODFIL: TIntegerField;
    ConsUltimaNfEntCODFOR: TIntegerField;
    ConsUltimaNfEntNUMNFC: TIntegerField;
    ConsUltimaNfEntCODSNF: TStringField;
    ConsUltimaNfEntSEQIPC: TIntegerField;
    ConsUltimaNfEntTNSPRO: TStringField;
    ConsUltimaNfEntNUMOCP: TIntegerField;
    ConsUltimaNfEntCODPRO: TStringField;
    ConsUltimaNfEntQTDREC: TFMTBCDField;
    ConsUltimaNfEntUNIMED: TStringField;
    ConsUltimaNfEntPREUNI: TFMTBCDField;
    ConsUltimaNfEntPREEST: TFMTBCDField;
    ConsUltimaNfEntPERIPI: TBCDField;
    ConsUltimaNfEntPERICM: TBCDField;
    ConsUltimaNfEntVLRBRU: TBCDField;
    ConsUltimaNfEntVLRIPI: TBCDField;
    ConsUltimaNfEntVLRICM: TBCDField;
    ConsUltimaNfEntVLRLIQ: TBCDField;
    ConsUltimaNfEntPERIPI_1: TBCDField;
    ConsUltimaNfEntPERICM_1: TBCDField;
    ConsUltimaNfEntVLRBRU_1: TBCDField;
    ConsUltimaNfEntVLRIPI_1: TBCDField;
    ConsUltimaNfEntVLRICM_1: TBCDField;
    ConsUltimaNfEntVLRLIQ_1: TBCDField;
    ConsUltimaNfEntDATEMI: TDateTimeField;
    ConsUltimaNfEntCODCPG: TStringField;
    ConsUltimaNfEntDESCPG: TStringField;
    ConsUltimaNfEntQTDTOT: TFMTBCDField;
    ConsE420Ipo: TADOQuery;
    ConsE420IpoCODEMP: TIntegerField;
    ConsE420IpoCODFIL: TIntegerField;
    ConsE420IpoNUMOCP: TIntegerField;
    ConsE420IpoCODPRO: TStringField;
    ConsE420IpoQTDPED: TFMTBCDField;
    ConsE420IpoQTDREC: TFMTBCDField;
    ConsE420IpoQTDABE: TFMTBCDField;
    ConsE420IpoDATEMI: TDateTimeField;
    ConsE420IpoCODFOR: TIntegerField;
    ConsE420IpoNOMFOR: TStringField;
    ConsUltimaNfEntUNINFC: TStringField;
    ConsUltimaNfEntQTDEST: TFMTBCDField;
    ConsUltimaNfEntDATENT: TDateTimeField;
    ConsUltimaNfEntNOMFOR: TStringField;
    ConsE420IpoDATENT: TDateTimeField;
    CadUsu_T085Mac: TADOQuery;
    CadUsu_T085MacUSU_CODCLI: TIntegerField;
    CadUsu_T085MacUSU_NUMMEN: TIntegerField;
    CadUsu_T085MacUSU_MENSAG: TStringField;
    CadUsu_T085MacUSU_DATCAD: TDateTimeField;
    CadUsu_T085MacUSU_HORMEN: TIntegerField;
    CadUsu_T085MacUSU_USUCAD: TIntegerField;
    CadUsu_T085MacUSU_DATALE: TDateTimeField;
    CadUsu_T085MacUSU_MENRES: TStringField;
    UltimoUsu_T085Mac: TADOQuery;
    UltimoUsu_T085MacUSU_NUMMEN: TIntegerField;
    ConsUsu_T085Mac: TADOQuery;
    ConsUsu_T085MacUSU_CODCLI: TIntegerField;
    ConsUsu_T085MacUSU_NUMMEN: TIntegerField;
    ConsUsu_T085MacUSU_MENSAG: TStringField;
    ConsUsu_T085MacUSU_DATCAD: TDateTimeField;
    ConsUsu_T085MacUSU_HORMEN: TIntegerField;
    ConsUsu_T085MacUSU_USUCAD: TIntegerField;
    ConsUsu_T085MacUSU_DATALE: TDateTimeField;
    ConsUsu_T085MacUSU_MENRES: TStringField;
    ConsUsu_T085MacUSU_NOMUSU: TStringField;
    ConsUsu_T085MacNOMCLI: TStringField;
    ConsUsu_T085MacAPECLI: TStringField;
    ConsUsu_T085MacCIDCLI: TStringField;
    ConsUsu_T085MacSIGUFS: TStringField;
    ConsUsu_T085MacFONCLI: TStringField;
    ClientMateriaPrimaMeiaCons: TClientDataSet;
    ProviderMateriaPrimaMediaCons: TDataSetProvider;
    MateriaPrimaMediaCons: TADOQuery;
    MateriaPrimaMediaConsCODPRO: TStringField;
    MateriaPrimaMediaConsDESPRO: TStringField;
    MateriaPrimaMediaConsCODDEP: TStringField;
    MateriaPrimaMediaConsUNIMED: TStringField;
    MateriaPrimaMediaConsQTDEST: TFMTBCDField;
    MateriaPrimaMediaConsESTMIN: TFMTBCDField;
    MateriaPrimaMediaConsCONSUMO: TFMTBCDField;
    ClientMateriaPrimaMeiaConsCODPRO: TStringField;
    ClientMateriaPrimaMeiaConsDESPRO: TStringField;
    ClientMateriaPrimaMeiaConsCODDEP: TStringField;
    ClientMateriaPrimaMeiaConsUNIMED: TStringField;
    ClientMateriaPrimaMeiaConsQTDEST: TFMTBCDField;
    ClientMateriaPrimaMeiaConsESTMIN: TFMTBCDField;
    ClientMateriaPrimaMeiaConsCONSUMO: TFMTBCDField;
    MateriaPrimaMediaConsOC: TFMTBCDField;
    ClientMateriaPrimaMeiaConsOC: TFMTBCDField;
    ConsE403FprMC: TADOQuery;
    ConsE403FprMCCODEMP: TIntegerField;
    ConsE403FprMCCODPRO: TStringField;
    ConsE403FprMCCODFOR: TIntegerField;
    ConsE403FprMCNOMFOR: TStringField;
    ConsE403FprMCPROFOR: TStringField;
    ConsE403FprMCDESFOR: TStringField;
    ConsE403FprMCUNIMED: TStringField;
    ConsE403FprMCPRZENT: TIntegerField;
    ConsE403FprMCULTIMA_NF: TDateTimeField;
    ConsUltimaNfEntMC: TADOQuery;
    ConsUltimaNfEntMCCODEMP: TIntegerField;
    ConsUltimaNfEntMCCODFIL: TIntegerField;
    ConsUltimaNfEntMCCODFOR: TIntegerField;
    ConsUltimaNfEntMCNUMNFC: TIntegerField;
    ConsUltimaNfEntMCCODSNF: TStringField;
    ConsUltimaNfEntMCSEQIPC: TIntegerField;
    ConsUltimaNfEntMCTNSPRO: TStringField;
    ConsUltimaNfEntMCNUMOCP: TIntegerField;
    ConsUltimaNfEntMCCODPRO: TStringField;
    ConsUltimaNfEntMCQTDREC: TFMTBCDField;
    ConsUltimaNfEntMCUNINFC: TStringField;
    ConsUltimaNfEntMCQTDEST: TFMTBCDField;
    ConsUltimaNfEntMCUNIMED: TStringField;
    ConsUltimaNfEntMCPREUNI: TFMTBCDField;
    ConsUltimaNfEntMCPREEST: TFMTBCDField;
    ConsUltimaNfEntMCPERIPI: TBCDField;
    ConsUltimaNfEntMCPERICM: TBCDField;
    ConsUltimaNfEntMCVLRBRU: TBCDField;
    ConsUltimaNfEntMCVLRIPI: TBCDField;
    ConsUltimaNfEntMCVLRICM: TBCDField;
    ConsUltimaNfEntMCVLRLIQ: TBCDField;
    ConsUltimaNfEntMCPERIPI_1: TBCDField;
    ConsUltimaNfEntMCPERICM_1: TBCDField;
    ConsUltimaNfEntMCVLRBRU_1: TBCDField;
    ConsUltimaNfEntMCVLRIPI_1: TBCDField;
    ConsUltimaNfEntMCVLRICM_1: TBCDField;
    ConsUltimaNfEntMCVLRLIQ_1: TBCDField;
    ConsUltimaNfEntMCDATEMI: TDateTimeField;
    ConsUltimaNfEntMCDATENT: TDateTimeField;
    ConsUltimaNfEntMCCODCPG: TStringField;
    ConsUltimaNfEntMCDESCPG: TStringField;
    ConsUltimaNfEntMCNOMFOR: TStringField;
    MateriaPrimaMediaConsCODFAM: TStringField;
    ClientMateriaPrimaMeiaConsCODFAM: TStringField;
    ConsE095Cto: TADOQuery;
    ConsE095CtoCODFOR: TIntegerField;
    ConsE095CtoSEQCTO: TIntegerField;
    ConsE095CtoNOMCTO: TStringField;
    ConsE095CtoDATNAS: TDateTimeField;
    ConsE095CtoNIVCTO: TStringField;
    ConsE095CtoSETCTO: TStringField;
    ConsE095CtoCARCTO: TStringField;
    ConsE095CtoFONCTO: TStringField;
    ConsE095CtoRAMCTO: TIntegerField;
    ConsE095CtoFAXCTO: TStringField;
    ConsE095CtoINTNET: TStringField;
    ConsE095CtoHOBCON: TStringField;
    ConsE095CtoTIMCON: TStringField;
    ConsE095CtoTIPINT: TIntegerField;
    ConsE095CtoSITCTO: TStringField;
    ConsE095CtoCPFCTO: TBCDField;
    ConsE095CtoCODNIV: TIntegerField;
    ConsE095CtoUSUGER: TBCDField;
    ConsE095CtoDATGER: TDateTimeField;
    ConsE095CtoHORGER: TIntegerField;
    ConsE095CtoUSUALT: TBCDField;
    ConsE095CtoDATALT: TDateTimeField;
    ConsE095CtoHORALT: TIntegerField;
    ConsE420IpoOBSMOT: TStringField;
    CadE420Ipo: TADOQuery;
    CadE420IpoCODEMP: TIntegerField;
    CadE420IpoCODFIL: TIntegerField;
    CadE420IpoNUMOCP: TIntegerField;
    CadE420IpoSEQIPO: TIntegerField;
    CadE420IpoTNSPRO: TStringField;
    CadE420IpoCODPRO: TStringField;
    CadE420IpoCODDER: TStringField;
    CadE420IpoCPLIPO: TStringField;
    CadE420IpoPROFOR: TStringField;
    CadE420IpoDESFOR: TStringField;
    CadE420IpoUNIFOR: TStringField;
    CadE420IpoCODFAM: TStringField;
    CadE420IpoCODTIC: TStringField;
    CadE420IpoCODTRD: TStringField;
    CadE420IpoCODTST: TStringField;
    CadE420IpoCODSTP: TStringField;
    CadE420IpoCODSTC: TStringField;
    CadE420IpoCODDEP: TStringField;
    CadE420IpoCODLOT: TStringField;
    CadE420IpoQTDPED: TFMTBCDField;
    CadE420IpoQTDREC: TFMTBCDField;
    CadE420IpoQTDCAN: TFMTBCDField;
    CadE420IpoQTDABE: TFMTBCDField;
    CadE420IpoUNIMED: TStringField;
    CadE420IpoCODTPR: TStringField;
    CadE420IpoPREUNI: TFMTBCDField;
    CadE420IpoPREFIX: TStringField;
    CadE420IpoPERDSC: TBCDField;
    CadE420IpoPERDS3: TBCDField;
    CadE420IpoPERDS4: TBCDField;
    CadE420IpoPERDS5: TBCDField;
    CadE420IpoPERIPI: TBCDField;
    CadE420IpoPERICM: TBCDField;
    CadE420IpoPERFUN: TBCDField;
    CadE420IpoDATENT: TDateTimeField;
    CadE420IpoCODPVP: TStringField;
    CadE420IpoNUMPRJ: TIntegerField;
    CadE420IpoCODFPJ: TIntegerField;
    CadE420IpoCTAFIN: TIntegerField;
    CadE420IpoCTARED: TIntegerField;
    CadE420IpoCODCCU: TStringField;
    CadE420IpoVLRFRE: TBCDField;
    CadE420IpoVLRSEG: TBCDField;
    CadE420IpoVLREMB: TBCDField;
    CadE420IpoVLRENC: TBCDField;
    CadE420IpoVLROUT: TBCDField;
    CadE420IpoVLRDAR: TBCDField;
    CadE420IpoVLRFRD: TBCDField;
    CadE420IpoVLROUD: TBCDField;
    CadE420IpoVLRBRU: TBCDField;
    CadE420IpoVLRDSC: TBCDField;
    CadE420IpoVLRDS1: TBCDField;
    CadE420IpoVLRDS2: TBCDField;
    CadE420IpoVLRDS3: TBCDField;
    CadE420IpoVLRDS4: TBCDField;
    CadE420IpoVLRDS5: TBCDField;
    CadE420IpoVLRDZF: TBCDField;
    CadE420IpoVLRBFU: TBCDField;
    CadE420IpoVLRFUN: TBCDField;
    CadE420IpoVLRBIP: TBCDField;
    CadE420IpoVLRIPI: TBCDField;
    CadE420IpoVLRBIC: TBCDField;
    CadE420IpoVLRICM: TBCDField;
    CadE420IpoVLRBSI: TBCDField;
    CadE420IpoVLRICS: TBCDField;
    CadE420IpoVLRBSP: TBCDField;
    CadE420IpoVLRSTP: TBCDField;
    CadE420IpoVLRBSC: TBCDField;
    CadE420IpoVLRSTC: TBCDField;
    CadE420IpoVLRLPR: TBCDField;
    CadE420IpoVLRLOU: TBCDField;
    CadE420IpoVLRLIQ: TBCDField;
    CadE420IpoVLRFIN: TBCDField;
    CadE420IpoACRFIN: TBCDField;
    CadE420IpoSITIPO: TIntegerField;
    CadE420IpoCODMOT: TIntegerField;
    CadE420IpoOBSMOT: TStringField;
    CadE420IpoSEQIPD: TIntegerField;
    CadE420IpoFILCTR: TIntegerField;
    CadE420IpoNUMCTR: TIntegerField;
    CadE420IpoDATCPT: TDateTimeField;
    CadE420IpoSEQCCP: TIntegerField;
    CadE420IpoINDEQI: TStringField;
    CadE420IpoUSUGER: TBCDField;
    CadE420IpoDATGER: TDateTimeField;
    CadE420IpoHORGER: TIntegerField;
    CadE420IpoFILPED: TIntegerField;
    CadE420IpoNUMPED: TIntegerField;
    CadE420IpoDATVLT: TDateTimeField;
    CadE420IpoQTDFOR: TFMTBCDField;
    CadE420IpoPREFOR: TFMTBCDField;
    CadE420IpoCODMOE: TStringField;
    CadE420IpoDATMOE: TDateTimeField;
    CadE420IpoCOTMOE: TFMTBCDField;
    CadE420IpoFECMOE: TStringField;
    CadE420IpoPERIIM: TBCDField;
    CadE420IpoVLRBII: TBCDField;
    CadE420IpoVLRIIM: TBCDField;
    CadE420IpoVLRRIS: TBCDField;
    CadE420IpoSEQIOR: TIntegerField;
    CadE420IpoVLRBPI: TBCDField;
    CadE420IpoVLRPIS: TBCDField;
    CadE420IpoVLRBCR: TBCDField;
    CadE420IpoVLRCOR: TBCDField;
    CadE420IpoCODFXA: TStringField;
    CadE420IpoIDXGRD: TIntegerField;
    CadE420IpoPERPIT: TBCDField;
    CadE420IpoVLRBPT: TBCDField;
    CadE420IpoVLRPIT: TBCDField;
    CadE420IpoPERCRT: TBCDField;
    CadE420IpoVLRBCT: TBCDField;
    CadE420IpoVLRCRT: TBCDField;
    CadE420IpoPERCSL: TBCDField;
    CadE420IpoVLRBCL: TBCDField;
    CadE420IpoVLRCSL: TBCDField;
    CadE420IpoPEROUR: TBCDField;
    CadE420IpoVLRBOR: TBCDField;
    CadE420IpoVLROUR: TBCDField;
    CadE420IpoPERIRF: TBCDField;
    CadE420IpoVLRBIR: TBCDField;
    CadE420IpoVLRIRF: TBCDField;
    CadE420IpoFILCES: TIntegerField;
    CadE420IpoDATCES: TDateTimeField;
    CadE420IpoSEQCES: TIntegerField;
    CadE420IpoPERDS1: TBCDField;
    CadE420IpoPERDS2: TBCDField;
    CadE420IpoVLRORI: TBCDField;
    CadE420IpoQTDORI: TFMTBCDField;
    CadE420IpoVLRFEI: TBCDField;
    CadE420IpoVLRSEI: TBCDField;
    CadE420IpoVLROUI: TBCDField;
    CadE420IpoBCOIMP: TBCDField;
    CadE420IpoCOFIMP: TBCDField;
    CadE420IpoBPIIMP: TBCDField;
    CadE420IpoPISIMP: TBCDField;
    CadE420IpoSEQCPK: TIntegerField;
    CadE420IpoVLRDM1: TFMTBCDField;
    CadE420IpoVLRDM2: TFMTBCDField;
    CadE420IpoVLRDM3: TFMTBCDField;
    CadE420IpoVLRDM4: TFMTBCDField;
    CadE420IpoVLRDM5: TFMTBCDField;
    CadE420IpoVLRDM6: TFMTBCDField;
    CadE420IpoBEMPRI: TStringField;
    CadE420IpoEMPPED: TIntegerField;
    CadE420IpoEMPNFV: TIntegerField;
    CadE420IpoFILNFV: TIntegerField;
    CadE420IpoSNFNFV: TStringField;
    CadE420IpoNUMNFV: TIntegerField;
    CadE420IpoSEQIPV: TIntegerField;
    CadE420IpoCODTRG: TStringField;
    CadE420IpoPERBON: TBCDField;
    CadE420IpoVLRDFA: TBCDField;
    CadE420IpoQTDBPI: TBCDField;
    CadE420IpoALIPIS: TBCDField;
    CadE420IpoQTDBCO: TBCDField;
    CadE420IpoALICOF: TBCDField;
    CadE420IpoQTDBIP: TBCDField;
    CadE420IpoALIIPI: TBCDField;
    CadE420IpoCODFAB: TStringField;
    CadE420IpoPROFAB: TStringField;
    CadE420IpoUSU_VLRMAX: TBCDField;
    CadE420IpoUSU_VLRMED: TBCDField;
    CadE420IpoSUBPRO: TStringField;
    CadE420IpoTIPCUR: TIntegerField;
    ConsE420IpoImg1: TStringField;
    ConsE420IpoSEQIPO: TIntegerField;
    ClientMateriaPrimaMeiaConsImg1: TStringField;
    ConsumoMensalMP: TADOQuery;
    ConsumoMensalMPCONSUMO: TFMTBCDField;
    CadE403Fpr: TADOQuery;
    CadE403FprCODEMP: TIntegerField;
    CadE403FprCODFOR: TIntegerField;
    CadE403FprCODPRO: TStringField;
    CadE403FprCODDER: TStringField;
    CadE403FprPROFOR: TStringField;
    CadE403FprDESFOR: TStringField;
    CadE403FprUNIMED: TStringField;
    CadE403FprPRZENT: TIntegerField;
    CadE403FprCODBAR: TBCDField;
    CadE403FprPREBST: TFMTBCDField;
    CadE403FprPTOQLD: TIntegerField;
    CadE403FprPTOPRZ: TIntegerField;
    CadE403FprPTOCND: TIntegerField;
    CadE403FprBLOFPR: TStringField;
    CadE403FprCODMOT: TIntegerField;
    CadE403FprOBSMOT: TStringField;
    CadE403FprUSUMOT: TBCDField;
    CadE403FprDATMOT: TDateTimeField;
    CadE403FprHORMOT: TIntegerField;
    CadE403FprCODCLF: TStringField;
    CadE403FprPERIPI: TBCDField;
    CadE403FprRECIPI: TStringField;
    CadE403FprCODTIC: TStringField;
    CadE403FprCODTRD: TStringField;
    CadE403FprCODTST: TStringField;
    CadE403FprCODSTP: TStringField;
    CadE403FprCODSTC: TStringField;
    CadE403FprRECICM: TStringField;
    CadE403FprNOTFOR: TBCDField;
    CadE403FprINDEXP: TIntegerField;
    CadE403FprDATPAL: TDateTimeField;
    CadE403FprHORPAL: TIntegerField;
    CadE403FprNOTPRO: TBCDField;
    CadE403FprRECPIS: TStringField;
    CadE403FprCODSTR: TStringField;
    CadE403FprPERSCO: TBCDField;
    CadE403FprRECCOF: TStringField;
    CadE403FprIPIPDO: TStringField;
    CadE403FprQTDMLT: TFMTBCDField;
    CadE403FprQTDMIN: TFMTBCDField;
    CadE403FprQTDMAX: TFMTBCDField;
    CadE403FprCODPIN: TStringField;
    CadE403FprSOMIIM: TStringField;
    CadE403FprSOMIIL: TStringField;
    CadE403FprSOMIPS: TStringField;
    CadE403FprSOMIPL: TStringField;
    CadE403FprSOMICO: TStringField;
    CadE403FprSOMICL: TStringField;
    CadE403FprTEMICM: TStringField;
    CadE403FprTRIPIS: TStringField;
    CadE403FprTRICOF: TStringField;
    CadE403FprPERIRF: TBCDField;
    CadE403FprPERPIS: TBCDField;
    CadE403FprPERCOF: TBCDField;
    CadE403FprPERCSL: TBCDField;
    CadE403FprPEROUR: TBCDField;
    CadE403FprPERFUN: TBCDField;
    CadE403FprUSUGER: TBCDField;
    CadE403FprDATGER: TDateTimeField;
    CadE403FprHORGER: TIntegerField;
    CadE403FprUSUATU: TBCDField;
    CadE403FprDATATU: TDateTimeField;
    CadE403FprHORATU: TIntegerField;
    CadE403FprORIMER: TStringField;
    CadE403FprCODFIF: TStringField;
    CadE403FprCODFIE: TStringField;
    CadE403FprCODFIM: TStringField;
    CadE403FprPERPIM: TBCDField;
    CadE403FprPERCIM: TBCDField;
    ConsE403FprMCDATMOT: TDateTimeField;
    ConsE403FprMCOBSMOT: TStringField;
    ConsE403FprMCImg1: TStringField;
    ConsE403FprMCCODDER: TStringField;
    ConsSql: TADOQuery;
    ConsumoMP: TADOQuery;
    ConsumoMPCONSUMO: TFMTBCDField;
    MateriaPrimaMediaConsCODDER: TStringField;
    ClientMateriaPrimaMeiaConsCODDER: TStringField;
    AjustaVlrEstoque: TADOQuery;
    AjustaVlrEstoqueCODEMP: TIntegerField;
    AjustaVlrEstoqueCODPRO: TStringField;
    AjustaVlrEstoqueCODDER: TStringField;
    AjustaVlrEstoqueCODDEP: TStringField;
    AjustaVlrEstoqueDATMOV: TDateTimeField;
    AjustaVlrEstoqueSEQMOV: TIntegerField;
    AjustaVlrEstoqueDATFEC: TDateTimeField;
    AjustaVlrEstoqueSEQFEC: TIntegerField;
    AjustaVlrEstoqueFILDEP: TIntegerField;
    AjustaVlrEstoqueMSKDEP: TStringField;
    AjustaVlrEstoqueNIVDEP: TIntegerField;
    AjustaVlrEstoqueCODTNS: TStringField;
    AjustaVlrEstoqueESTMOV: TStringField;
    AjustaVlrEstoqueESTEOS: TStringField;
    AjustaVlrEstoqueESTVMV: TStringField;
    AjustaVlrEstoqueORIORP: TStringField;
    AjustaVlrEstoqueNUMDOC: TIntegerField;
    AjustaVlrEstoqueDATFAB: TDateTimeField;
    AjustaVlrEstoqueHORFAB: TIntegerField;
    AjustaVlrEstoqueDATENT: TDateTimeField;
    AjustaVlrEstoqueDATVLT: TDateTimeField;
    AjustaVlrEstoqueHORVLT: TIntegerField;
    AjustaVlrEstoqueCODLOT: TStringField;
    AjustaVlrEstoqueNUMSEP: TStringField;
    AjustaVlrEstoqueOBSMVP: TStringField;
    AjustaVlrEstoqueQTDMOV: TFMTBCDField;
    AjustaVlrEstoqueVLRMOV: TBCDField;
    AjustaVlrEstoqueQTDANT: TFMTBCDField;
    AjustaVlrEstoqueVLRANT: TBCDField;
    AjustaVlrEstoqueQTDEST: TFMTBCDField;
    AjustaVlrEstoqueVLREST: TBCDField;
    AjustaVlrEstoquePRMEST: TFMTBCDField;
    AjustaVlrEstoquePROTRF: TStringField;
    AjustaVlrEstoqueDERTRF: TStringField;
    AjustaVlrEstoqueDEPTRF: TStringField;
    AjustaVlrEstoqueSEQTRF: TIntegerField;
    AjustaVlrEstoqueUSURES: TBCDField;
    AjustaVlrEstoqueCODCCU: TStringField;
    AjustaVlrEstoqueUSUREC: TBCDField;
    AjustaVlrEstoqueCTARED: TIntegerField;
    AjustaVlrEstoqueNUMPRJ: TIntegerField;
    AjustaVlrEstoqueCODFPJ: TIntegerField;
    AjustaVlrEstoqueCTAFIN: TIntegerField;
    AjustaVlrEstoqueLCTFIN: TStringField;
    AjustaVlrEstoqueNUMLOT: TIntegerField;
    AjustaVlrEstoqueNUMEME: TIntegerField;
    AjustaVlrEstoqueSEQEME: TIntegerField;
    AjustaVlrEstoqueCODFIL: TIntegerField;
    AjustaVlrEstoqueCODSNF: TStringField;
    AjustaVlrEstoqueNUMNFV: TIntegerField;
    AjustaVlrEstoqueSEQIPV: TIntegerField;
    AjustaVlrEstoqueCODCLI: TIntegerField;
    AjustaVlrEstoqueFILOCP: TIntegerField;
    AjustaVlrEstoqueNUMOCP: TIntegerField;
    AjustaVlrEstoqueSEQIPO: TIntegerField;
    AjustaVlrEstoqueFILNFC: TIntegerField;
    AjustaVlrEstoqueCODFOR: TIntegerField;
    AjustaVlrEstoqueNUMNFC: TIntegerField;
    AjustaVlrEstoqueSNFNFC: TStringField;
    AjustaVlrEstoqueSEQIPC: TIntegerField;
    AjustaVlrEstoqueUSUDIG: TBCDField;
    AjustaVlrEstoqueDATDIG: TDateTimeField;
    AjustaVlrEstoqueHORDIG: TIntegerField;
    AjustaVlrEstoqueCODLIG: TIntegerField;
    AjustaVlrEstoqueMOTMVP: TStringField;
    AjustaVlrEstoqueDATINV: TDateTimeField;
    AjustaVlrEstoqueEXPWMS: TIntegerField;
    AjustaVlrEstoqueVLRDM1: TFMTBCDField;
    AjustaVlrEstoqueVLRDM2: TFMTBCDField;
    AjustaVlrEstoqueVLRDM3: TFMTBCDField;
    AjustaVlrEstoqueVLRDM4: TFMTBCDField;
    AjustaVlrEstoqueVLRDM5: TFMTBCDField;
    AjustaVlrEstoqueVLRDM6: TFMTBCDField;
    AjustaVlrEstoqueESTWMS: TStringField;
    AjustaVlrEstoqueESTCOC: TStringField;
    AjustaVlrEstoqueESTCOF: TStringField;
    AjustaVlrEstoqueFILPED: TIntegerField;
    AjustaVlrEstoqueNUMPED: TIntegerField;
    AjustaVlrEstoqueSEQIPD: TIntegerField;
    AjustaVlrEstoqueUTIREP: TStringField;
    AjustaVlrEstoqueFILANE: TIntegerField;
    AjustaVlrEstoqueNUMANE: TBCDField;
    AjustaVlrEstoqueNUMPFA: TIntegerField;
    AjustaVlrEstoqueSEQPES: TIntegerField;
    AjustaVlrEstoqueLOTDES: TStringField;
    AjustaVlrEstoqueCODETG: TIntegerField;
    AjustaVlrEstoqueSEQCMP: TIntegerField;
    AjustaVlrEstoqueACEFEC: TStringField;
    AjustaVlrEstoqueULTMDI: TStringField;
    AjustaVlrEstoqueCODBEM: TStringField;
    AjustaVlrEstoqueFILCLE: TIntegerField;
    AjustaVlrEstoqueNUMCLE: TIntegerField;
    AjustaVlrEstoqueVLRCM1: TBCDField;
    AjustaVlrEstoqueDATCM1: TDateTimeField;
    AjustaVlrEstoqueCOTCM1: TFMTBCDField;
    AjustaVlrEstoqueVLRCM2: TBCDField;
    AjustaVlrEstoqueDATCM2: TDateTimeField;
    AjustaVlrEstoqueCOTCM2: TFMTBCDField;
    AjustaVlrEstoqueSEPDES: TStringField;
    AjustaVlrEstoqueCODSLT: TStringField;
    AjustaVlrEstoquePERGER: TBCDField;
    AjustaVlrEstoquePERPUR: TBCDField;
    AjustaVlrEstoquePERUMI: TBCDField;
    AjustaVlrEstoqueDATTES: TDateTimeField;
    AjustaVlrEstoqueCODEND: TStringField;
    AjustaVlrEstoqueCODSAF: TStringField;
    AjustaVlrEstoqueCODTRM: TStringField;
    AjustaVlrEstoqueCODBNF: TStringField;
    AjustaVlrEstoqueCODCAT: TStringField;
    AjustaVlrEstoqueVLRICM: TBCDField;
    AjustaVlrEstoquePRMICM: TFMTBCDField;
    AjustaVlrEstoqueICMACF: TBCDField;
    AjustaVlrEstoqueCODPNE: TIntegerField;
    AjustaVlrEstoqueCODETP: TIntegerField;
    AjustaVlrEstoqueCODCUL: TIntegerField;
    AjustaVlrEstoqueNUMTER: TStringField;
    AjustaVlrEstoqueNUMAOG: TStringField;
    AjustaVlrEstoqueNUMCER: TStringField;
    AjustaVlrEstoqueNUMBOL: TStringField;
    AjustaVlrEstoqueNUMAMO: TStringField;
    AjustaVlrEstoqueAMONUM: TIntegerField;
    AjustaVlrEstoqueFILNFO: TIntegerField;
    AjustaVlrEstoqueNUMNFO: TIntegerField;
    AjustaVlrEstoqueSNFNFO: TStringField;
    AjustaVlrEstoqueFORNFO: TIntegerField;
    AjustaVlrEstoqueINDFAB: TStringField;
    AjustaVlrEstoqueCODFAB: TStringField;
    AjustaVlrEstoqueLOTFAB: TStringField;
    AjustaVlrEstoqueVLTFAB: TDateTimeField;
    AjustaVlrEstoquePROFAB: TStringField;
    AjustaVlrEstoqueCODMAR: TStringField;
    AjustaVlrEstoqueUSU_NUMLOT1: TIntegerField;
    AjustaVlrEstoqueUSU_NUMLOT: TIntegerField;
    AjustaVlrEstoqueUSU_NUMANE: TIntegerField;
    AjustaVlrEstoqueUSU_CODPRO: TStringField;
    AjustaVlrEstoqueUSU_CODDER: TStringField;
    AjustaVlrEstoqueUSU_CODCOR1: TStringField;
    AjustaVlrEstoqueUSU_CODCOR2: TStringField;
    AjustaVlrEstoqueESTNEG: TStringField;
    AjustaVlrEstoqueCALMMF: TStringField;
    AjustaVlrEstoqueSEQSPR: TIntegerField;
    AjustaVlrEstoqueINDMPC: TStringField;
    AjustaVlrEstoqueFILOCR: TIntegerField;
    AjustaVlrEstoqueNUMOCR: TIntegerField;
    AjustaVlrEstoqueCODMOT: TIntegerField;
    CadE210Mvp: TADOQuery;
    CadE210MvpCODEMP: TIntegerField;
    CadE210MvpCODPRO: TStringField;
    CadE210MvpCODDER: TStringField;
    CadE210MvpCODDEP: TStringField;
    CadE210MvpDATMOV: TDateTimeField;
    CadE210MvpSEQMOV: TIntegerField;
    CadE210MvpDATFEC: TDateTimeField;
    CadE210MvpSEQFEC: TIntegerField;
    CadE210MvpFILDEP: TIntegerField;
    CadE210MvpMSKDEP: TStringField;
    CadE210MvpNIVDEP: TIntegerField;
    CadE210MvpCODTNS: TStringField;
    CadE210MvpESTMOV: TStringField;
    CadE210MvpESTEOS: TStringField;
    CadE210MvpESTVMV: TStringField;
    CadE210MvpORIORP: TStringField;
    CadE210MvpNUMDOC: TIntegerField;
    CadE210MvpDATFAB: TDateTimeField;
    CadE210MvpHORFAB: TIntegerField;
    CadE210MvpDATENT: TDateTimeField;
    CadE210MvpDATVLT: TDateTimeField;
    CadE210MvpHORVLT: TIntegerField;
    CadE210MvpCODLOT: TStringField;
    CadE210MvpNUMSEP: TStringField;
    CadE210MvpOBSMVP: TStringField;
    CadE210MvpQTDMOV: TFMTBCDField;
    CadE210MvpVLRMOV: TBCDField;
    CadE210MvpQTDANT: TFMTBCDField;
    CadE210MvpVLRANT: TBCDField;
    CadE210MvpQTDEST: TFMTBCDField;
    CadE210MvpVLREST: TBCDField;
    CadE210MvpPRMEST: TFMTBCDField;
    CadE210MvpPROTRF: TStringField;
    CadE210MvpDERTRF: TStringField;
    CadE210MvpDEPTRF: TStringField;
    CadE210MvpSEQTRF: TIntegerField;
    CadE210MvpUSURES: TBCDField;
    CadE210MvpCODCCU: TStringField;
    CadE210MvpUSUREC: TBCDField;
    CadE210MvpCTARED: TIntegerField;
    CadE210MvpNUMPRJ: TIntegerField;
    CadE210MvpCODFPJ: TIntegerField;
    CadE210MvpCTAFIN: TIntegerField;
    CadE210MvpLCTFIN: TStringField;
    CadE210MvpNUMLOT: TIntegerField;
    CadE210MvpNUMEME: TIntegerField;
    CadE210MvpSEQEME: TIntegerField;
    CadE210MvpCODFIL: TIntegerField;
    CadE210MvpCODSNF: TStringField;
    CadE210MvpNUMNFV: TIntegerField;
    CadE210MvpSEQIPV: TIntegerField;
    CadE210MvpCODCLI: TIntegerField;
    CadE210MvpFILOCP: TIntegerField;
    CadE210MvpNUMOCP: TIntegerField;
    CadE210MvpSEQIPO: TIntegerField;
    CadE210MvpFILNFC: TIntegerField;
    CadE210MvpCODFOR: TIntegerField;
    CadE210MvpNUMNFC: TIntegerField;
    CadE210MvpSNFNFC: TStringField;
    CadE210MvpSEQIPC: TIntegerField;
    CadE210MvpUSUDIG: TBCDField;
    CadE210MvpDATDIG: TDateTimeField;
    CadE210MvpHORDIG: TIntegerField;
    CadE210MvpCODLIG: TIntegerField;
    CadE210MvpMOTMVP: TStringField;
    CadE210MvpDATINV: TDateTimeField;
    CadE210MvpEXPWMS: TIntegerField;
    CadE210MvpVLRDM1: TFMTBCDField;
    CadE210MvpVLRDM2: TFMTBCDField;
    CadE210MvpVLRDM3: TFMTBCDField;
    CadE210MvpVLRDM4: TFMTBCDField;
    CadE210MvpVLRDM5: TFMTBCDField;
    CadE210MvpVLRDM6: TFMTBCDField;
    CadE210MvpESTWMS: TStringField;
    CadE210MvpESTCOC: TStringField;
    CadE210MvpESTCOF: TStringField;
    CadE210MvpFILPED: TIntegerField;
    CadE210MvpNUMPED: TIntegerField;
    CadE210MvpSEQIPD: TIntegerField;
    CadE210MvpUTIREP: TStringField;
    CadE210MvpFILANE: TIntegerField;
    CadE210MvpNUMANE: TBCDField;
    CadE210MvpNUMPFA: TIntegerField;
    CadE210MvpSEQPES: TIntegerField;
    CadE210MvpLOTDES: TStringField;
    CadE210MvpCODETG: TIntegerField;
    CadE210MvpSEQCMP: TIntegerField;
    CadE210MvpACEFEC: TStringField;
    CadE210MvpULTMDI: TStringField;
    CadE210MvpCODBEM: TStringField;
    CadE210MvpFILCLE: TIntegerField;
    CadE210MvpNUMCLE: TIntegerField;
    CadE210MvpVLRCM1: TBCDField;
    CadE210MvpDATCM1: TDateTimeField;
    CadE210MvpCOTCM1: TFMTBCDField;
    CadE210MvpVLRCM2: TBCDField;
    CadE210MvpDATCM2: TDateTimeField;
    CadE210MvpCOTCM2: TFMTBCDField;
    CadE210MvpSEPDES: TStringField;
    CadE210MvpCODSLT: TStringField;
    CadE210MvpPERGER: TBCDField;
    CadE210MvpPERPUR: TBCDField;
    CadE210MvpPERUMI: TBCDField;
    CadE210MvpDATTES: TDateTimeField;
    CadE210MvpCODEND: TStringField;
    CadE210MvpCODSAF: TStringField;
    CadE210MvpCODTRM: TStringField;
    CadE210MvpCODBNF: TStringField;
    CadE210MvpCODCAT: TStringField;
    CadE210MvpVLRICM: TBCDField;
    CadE210MvpPRMICM: TFMTBCDField;
    CadE210MvpICMACF: TBCDField;
    CadE210MvpCODPNE: TIntegerField;
    CadE210MvpCODETP: TIntegerField;
    CadE210MvpCODCUL: TIntegerField;
    CadE210MvpNUMTER: TStringField;
    CadE210MvpNUMAOG: TStringField;
    CadE210MvpNUMCER: TStringField;
    CadE210MvpNUMBOL: TStringField;
    CadE210MvpNUMAMO: TStringField;
    CadE210MvpAMONUM: TIntegerField;
    CadE210MvpFILNFO: TIntegerField;
    CadE210MvpNUMNFO: TIntegerField;
    CadE210MvpSNFNFO: TStringField;
    CadE210MvpFORNFO: TIntegerField;
    CadE210MvpINDFAB: TStringField;
    CadE210MvpCODFAB: TStringField;
    CadE210MvpLOTFAB: TStringField;
    CadE210MvpVLTFAB: TDateTimeField;
    CadE210MvpPROFAB: TStringField;
    CadE210MvpCODMAR: TStringField;
    CadE210MvpUSU_NUMLOT1: TIntegerField;
    CadE210MvpUSU_NUMLOT: TIntegerField;
    CadE210MvpUSU_NUMANE: TIntegerField;
    CadE210MvpUSU_CODPRO: TStringField;
    CadE210MvpUSU_CODDER: TStringField;
    CadE210MvpUSU_CODCOR1: TStringField;
    CadE210MvpUSU_CODCOR2: TStringField;
    CadE210MvpESTNEG: TStringField;
    CadE210MvpCALMMF: TStringField;
    CadE210MvpSEQSPR: TIntegerField;
    CadE210MvpINDMPC: TStringField;
    CadE210MvpFILOCR: TIntegerField;
    CadE210MvpNUMOCR: TIntegerField;
    CadE210MvpCODMOT: TIntegerField;
    ConsE075ProUSU_OBSPRO: TStringField;
    ConsumoMPGrafico: TADOQuery;
    ConsumoMPGraficoCODPRO: TStringField;
    ConsumoMPGraficoDESPRO: TStringField;
    ConsumoMPGraficoMES1: TFMTBCDField;
    ConsumoMPGraficoMES2: TFMTBCDField;
    ConsumoMPGraficoMES3: TFMTBCDField;
    ConsumoMPGraficoMES4: TFMTBCDField;
    ConsumoMPGraficoMES5: TFMTBCDField;
    ConsumoMPGraficoMES6: TFMTBCDField;
    ConsumoMPGraficoMES7: TFMTBCDField;
    ConsumoMPGraficoMES8: TFMTBCDField;
    ConsumoMPGraficoMES9: TFMTBCDField;
    ConsumoMPGraficoMES10: TFMTBCDField;
    ConsumoMPGraficoMES11: TFMTBCDField;
    ConsumoMPGraficoMES12: TFMTBCDField;
    procedure ConsE403FprAfterScroll(DataSet: TDataSet);
    procedure ClientMateriaPrimaMeiaConsAfterScroll(DataSet: TDataSet);
    procedure ConsE403FprMCAfterScroll(DataSet: TDataSet);
    procedure ConsE095CtoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    vaStatusClientMateriaPrimaMeiaCons : string;
  end;

var
  Dm3: TDm3;

implementation

uses UDm;

{$R *.dfm}

procedure TDm3.ClientMateriaPrimaMeiaConsAfterScroll(DataSet: TDataSet);
begin
  if vaStatusClientMateriaPrimaMeiaCons = 'OK' then
     begin
        ConsE420Ipo.Close;
        ConsE420Ipo.Parameters.ParamByName('CODPRO').Value := ClientMateriaPrimaMeiaConsCODPRO.Value;
        ConsE420Ipo.Open;

        ConsE403FprMC.Close;
        ConsE403FprMC.Parameters.ParamByName('CODPRO').Value := ClientMateriaPrimaMeiaConsCODPRO.Value;
        ConsE403FprMC.Open;

     end;
end;

procedure TDm3.ConsE095CtoNewRecord(DataSet: TDataSet);
begin
ConsE095Cto.Cancel;
end;

procedure TDm3.ConsE403FprAfterScroll(DataSet: TDataSet);
begin
    ConsE095For.Close;
    ConsE095For.Parameters.ParamByName('codfor').Value := ConsE403FprCODFOR.Value;
    ConsE095For.Open;
    ConsE095For.First;
end;

procedure TDm3.ConsE403FprMCAfterScroll(DataSet: TDataSet);
begin
    ConsE095For.Close;
    ConsE095For.Parameters.ParamByName('codfor').Value := ConsE403FprMCCODFOR.Value;
    ConsE095For.Open;
    ConsE095For.First;

    ConsUltimaNfEntMC.Close;
    ConsUltimaNfEntMC.Parameters.ParamByName('CODPRO').Value := ClientMateriaPrimaMeiaConsCODPRO.Value;
    ConsUltimaNfEntMC.Parameters.ParamByName('CODFOR').Value := ConsE403FprMCCODFOR.Value;
    ConsUltimaNfEntMC.Open;

    ConsE095Cto.Close;
    ConsE095Cto.Parameters.ParamByName('CODFOR').Value := ConsE403FprMCCODFOR.Value;
    ConsE095Cto.Open;
end;

end.
