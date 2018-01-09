unit UDmFire;

interface

uses
  SysUtils, Classes, DB, IBDatabase, IBCustomDataSet, IBQuery;

type
  TDmFire = class(TDataModule)
    IBDBanco: TIBDatabase;
    ConsE100Usu: TIBQuery;
    IBTransacao: TIBTransaction;
    ConsE100UsuCODUSU: TIntegerField;
    ConsE100UsuLOGUSU: TIBStringField;
    ConsE100UsuSENUSU: TIBStringField;
    ConsE100UsuDATCAD: TDateField;
    ConsE100UsuSITUSU: TIBStringField;
    ConsE100UsuCHAVE: TIBStringField;
    ConsE100UsuNOMUSU: TIBStringField;
    ConsE100UsuCODREP: TIntegerField;
    ConsE100UsuNOMREP: TIBStringField;
    ConsE100UsuUSUADM: TIBStringField;
    ConsE100UsuATUUSU: TIBStringField;
    CadE100Usu: TIBDataSet;
    CadE100UsuCODUSU: TIntegerField;
    CadE100UsuLOGUSU: TIBStringField;
    CadE100UsuSENUSU: TIBStringField;
    CadE100UsuDATCAD: TDateField;
    CadE100UsuSITUSU: TIBStringField;
    CadE100UsuCHAVE: TIBStringField;
    CadE100UsuNOMUSU: TIBStringField;
    CadE100UsuCODREP: TIntegerField;
    CadE100UsuNOMREP: TIBStringField;
    CadE100UsuUSUADM: TIBStringField;
    CadE100UsuATUUSU: TIBStringField;
    ConsE028Cpg: TIBQuery;
    ConsE028CpgCODEMP: TIntegerField;
    ConsE028CpgCODCPG: TIBStringField;
    ConsE028CpgCODUSU: TIntegerField;
    ConsE028CpgDESCPG: TIBStringField;
    ConsE028CpgABRCPG: TIBStringField;
    ConsE028CpgPRZMED: TIntegerField;
    ConsE028CpgQTDPAR: TIntegerField;
    ConsE028CpgSITCPG: TIBStringField;
    CadE028Cpg: TIBDataSet;
    CadE028CpgCODEMP: TIntegerField;
    CadE028CpgCODCPG: TIBStringField;
    CadE028CpgCODUSU: TIntegerField;
    CadE028CpgDESCPG: TIBStringField;
    CadE028CpgABRCPG: TIBStringField;
    CadE028CpgPRZMED: TIntegerField;
    CadE028CpgQTDPAR: TIntegerField;
    CadE028CpgSITCPG: TIBStringField;
    CadE028CpgCPGLIB: TIBStringField;
    ConsE028CpgCPGLIB: TIBStringField;
    ConsE081Itp: TIBQuery;
    ConsE081ItpCODEMP: TIntegerField;
    ConsE081ItpCODTPR: TIBStringField;
    ConsE081ItpCODPRO: TIBStringField;
    ConsE081ItpCODDER: TIBStringField;
    ConsE081ItpCODUSU: TIntegerField;
    ConsE081ItpDESPRO: TIBStringField;
    ConsE081ItpPREBAS: TFloatField;
    ConsE081ItpTOLMAI: TFloatField;
    ConsE081ItpTOLMEN: TFloatField;
    ConsE081ItpVLRMAI: TFloatField;
    ConsE081ItpVLRMEN: TFloatField;
    ConsE081ItpSITREG: TIBStringField;
    ConsE081ItpDATINI: TDateField;
    ConsE081ItpDATFIM: TDateField;
    ConsE081Tab: TIBQuery;
    ConsE081TabCODEMP: TIntegerField;
    ConsE081TabCODTPR: TIBStringField;
    ConsE081TabCODUSU: TIntegerField;
    ConsE081TabDESTPR: TIBStringField;
    ConsE081TabSITTPR: TIBStringField;
    ConsE028CpgPERCOM: TFloatField;
    CadE028CpgPERCOM: TFloatField;
    CadE120Ped: TIBDataSet;
    CadE120PedCODEMP: TIntegerField;
    CadE120PedCODFIL: TIntegerField;
    CadE120PedNUMPED: TIntegerField;
    CadE120PedNUMCON: TIntegerField;
    CadE120PedCODCLI: TIntegerField;
    CadE120PedTNSPRO: TIBStringField;
    CadE120PedDATEMI: TDateField;
    CadE120PedCODREP: TIntegerField;
    CadE120PedCODCPG: TIBStringField;
    CadE120PedSITPED: TIBStringField;
    CadE120PedUSUGER: TIntegerField;
    CadE120PedDATGER: TDateField;
    CadE120PedPEDENV: TIBStringField;
    CadE120PedDATENV: TDateField;
    CadE120PedPEDCON: TIBStringField;
    CadE120PedDATCON: TDateField;
    CadE120PedUSUCON: TIntegerField;
    CadE120Ipd: TIBDataSet;
    CadE120IpdCODEMP: TIntegerField;
    CadE120IpdCODFIL: TIntegerField;
    CadE120IpdNUMPED: TIntegerField;
    CadE120IpdNUMCON: TIntegerField;
    CadE120IpdSEQIPD: TIntegerField;
    CadE120IpdTNSPRO: TIBStringField;
    CadE120IpdCODPRO: TIBStringField;
    CadE120IpdCODDER: TIBStringField;
    CadE120IpdCODFAM: TIBStringField;
    CadE120IpdCODDEP: TIBStringField;
    CadE120IpdQTDPED: TIntegerField;
    CadE120IpdCODTPR: TIBStringField;
    CadE120IpdPREUNI: TFloatField;
    CadE120IpdSITIPD: TIBStringField;
    CadE120IpdTOTDESC: TFloatField;
    CadE120IpdVLRORI: TFloatField;
    CadUsu120Ipd: TIBDataSet;
    CadUsu120IpdCODEMP: TIntegerField;
    CadUsu120IpdCODFIL: TIntegerField;
    CadUsu120IpdNUMCON: TIntegerField;
    CadUsu120IpdSEQIPD: TIntegerField;
    CadUsu120IpdSEQITE: TIntegerField;
    CadUsu120IpdNUMPED: TIntegerField;
    CadUsu120IpdQTDCOR: TIntegerField;
    CadUsu120IpdQTDABE: TIntegerField;
    CadUsu120IpdQTDCAN: TIntegerField;
    CadUsu120IpdTIPCMB: TIntegerField;
    CadUsu120IpdCOR001: TIBStringField;
    CadUsu120IpdCOR002: TIBStringField;
    CadUsu120IpdCODPRO: TIBStringField;
    CadUsu120IpdCODDER: TIBStringField;
    CadUsu120IpdTECTRA: TIBStringField;
    CadUsu120IpdPRECAR: TIntegerField;
    CadE120Obs: TIBDataSet;
    CadE120ObsCODEMP: TIntegerField;
    CadE120ObsCODFIL: TIntegerField;
    CadE120ObsNUMCON: TIntegerField;
    CadE120ObsSEQOBS: TIntegerField;
    CadE120ObsNUMPED: TIntegerField;
    CadE120ObsOBSPED: TIBStringField;
    CadE120ObsSITOBS: TIBStringField;
    CadE120ObsOBSUSU: TIntegerField;
    CadE120ObsOBSDAT: TDateField;
    CadE100UsuQTDDIA: TIntegerField;
    ConsE100UsuQTDDIA: TIntegerField;
    CadE100UsuDATATU: TDateField;
    CadE100UsuHORATU: TIBStringField;
    ConsE100UsuDATATU: TDateField;
    ConsE100UsuHORATU: TIBStringField;
    ConsE075LLDC: TIBQuery;
    ConsE075LLDCNUMMOV: TIntegerField;
    ConsE075LLDCCODEMP: TIntegerField;
    ConsE075LLDCCODPRO: TIBStringField;
    ConsE075LLDCCODDER: TIBStringField;
    ConsE075LLDCCODTEC: TIBStringField;
    ConsE075LLDCDATMOV: TDateField;
    ConsE075LLDCTIPMOV: TIBStringField;
    ConsE100Sql: TIBQuery;
    ConsE100SqlCODUSU: TIntegerField;
    ConsE100SqlNUMCON: TIntegerField;
    ConsE100SqlDATGER: TDateField;
    ConsE100SqlCOMSQL: TIBStringField;
    ConsE100UsuVEREXE: TIBStringField;
    CadE100UsuVEREXE: TIBStringField;
    ConsSql: TIBQuery;
    ConsE028Cpg_: TIBQuery;
    ConsE028Cpg_CODEMP: TIntegerField;
    ConsE028Cpg_CODCPG: TIBStringField;
    ConsE028Cpg_CODUSU: TIntegerField;
    ConsE028Cpg_DESCPG: TIBStringField;
    ConsE028Cpg_ABRCPG: TIBStringField;
    ConsE028Cpg_PRZMED: TIntegerField;
    ConsE028Cpg_QTDPAR: TIntegerField;
    ConsE028Cpg_SITCPG: TIBStringField;
    ConsE028Cpg_PERCOM: TFloatField;
    ConsE028Cpg_CPGLIB: TIBStringField;
    ConsE081Itp_: TIBQuery;
    ConsE081Itp_CODEMP: TIntegerField;
    ConsE081Itp_CODTPR: TIBStringField;
    ConsE081Itp_CODPRO: TIBStringField;
    ConsE081Itp_CODDER: TIBStringField;
    ConsE081Itp_CODUSU: TIntegerField;
    ConsE081Itp_DESPRO: TIBStringField;
    ConsE081Itp_PREBAS: TFloatField;
    ConsE081Itp_TOLMAI: TFloatField;
    ConsE081Itp_TOLMEN: TFloatField;
    ConsE081Itp_VLRMAI: TFloatField;
    ConsE081Itp_VLRMEN: TFloatField;
    ConsE081Itp_SITREG: TIBStringField;
    ConsE081Itp_DATINI: TDateField;
    ConsE081Itp_DATFIM: TDateField;
    ConsE075Lldc_: TIBQuery;
    ConsE075Lldc_NUMMOV: TIntegerField;
    ConsE075Lldc_CODEMP: TIntegerField;
    ConsE075Lldc_CODPRO: TIBStringField;
    ConsE075Lldc_CODDER: TIBStringField;
    ConsE075Lldc_CODTEC: TIBStringField;
    ConsE075Lldc_DATMOV: TDateField;
    ConsE075Lldc_TIPMOV: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmFire: TDmFire;

implementation

{$R *.dfm}

end.
