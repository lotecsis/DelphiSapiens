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
    ConsE081ItpPREBAS: TFloatField;
    ConsE081ItpTOLMAI: TFloatField;
    ConsE081ItpTOLMEN: TFloatField;
    ConsE081ItpVLRMAI: TFloatField;
    ConsE081ItpVLRMEN: TFloatField;
    ConsE081ItpSITREG: TIBStringField;
    ConsE081ItpDATINI: TDateField;
    ConsE081ItpDATFIM: TDateField;
    CadE081Itp: TIBDataSet;
    CadE081ItpCODEMP: TIntegerField;
    CadE081ItpCODTPR: TIBStringField;
    CadE081ItpCODPRO: TIBStringField;
    CadE081ItpCODDER: TIBStringField;
    CadE081ItpCODUSU: TIntegerField;
    CadE081ItpPREBAS: TFloatField;
    CadE081ItpTOLMAI: TFloatField;
    CadE081ItpTOLMEN: TFloatField;
    CadE081ItpVLRMAI: TFloatField;
    CadE081ItpVLRMEN: TFloatField;
    CadE081ItpSITREG: TIBStringField;
    CadE081ItpDATINI: TDateField;
    CadE081ItpDATFIM: TDateField;
    CadE081ItpDESPRO: TIBStringField;
    ConsE081ItpDESPRO: TIBStringField;
    CadE081Tab: TIBDataSet;
    CadE081TabCODEMP: TIntegerField;
    CadE081TabCODTPR: TIBStringField;
    CadE081TabCODUSU: TIntegerField;
    CadE081TabDESTPR: TIBStringField;
    CadE081TabSITTPR: TIBStringField;
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
    ConsE120PedChegou: TIBQuery;
    ConsE120PedChegouCODEMP: TIntegerField;
    ConsE120PedChegouCODFIL: TIntegerField;
    ConsE120PedChegouNUMPED: TIntegerField;
    ConsE120PedChegouNUMCON: TIntegerField;
    ConsE120PedChegouCODCLI: TIntegerField;
    ConsE120PedChegouTNSPRO: TIBStringField;
    ConsE120PedChegouDATEMI: TDateField;
    ConsE120PedChegouCODREP: TIntegerField;
    ConsE120PedChegouCODCPG: TIBStringField;
    ConsE120PedChegouSITPED: TIBStringField;
    ConsE120PedChegouUSUGER: TIntegerField;
    ConsE120PedChegouDATGER: TDateField;
    ConsE120PedChegouPEDENV: TIBStringField;
    ConsE120PedChegouDATENV: TDateField;
    ConsE120PedChegouPEDCON: TIBStringField;
    ConsE120PedChegouDATCON: TDateField;
    ConsE120PedChegouUSUCON: TIntegerField;
    CadE120IpdVLRBRU: TFloatField;
    ConsE120PedChegouDESCPG: TIBStringField;
    ConsE120PedChegouTOTBRU: TFloatField;
    CadE120IpdCODREP: TIntegerField;
    CadUsu120IpdCODREP: TIntegerField;
    CadE120ObsCODREP: TIntegerField;
    ConsE120ObsChegou: TIBQuery;
    ConsE120ObsChegouCODEMP: TIntegerField;
    ConsE120ObsChegouCODFIL: TIntegerField;
    ConsE120ObsChegouNUMCON: TIntegerField;
    ConsE120ObsChegouCODREP: TIntegerField;
    ConsE120ObsChegouSEQOBS: TIntegerField;
    ConsE120ObsChegouNUMPED: TIntegerField;
    ConsE120ObsChegouOBSPED: TIBStringField;
    ConsE120ObsChegouSITOBS: TIBStringField;
    ConsE120ObsChegouOBSUSU: TIntegerField;
    ConsE120ObsChegouOBSDAT: TDateField;
    ConsE120Ipd: TIBQuery;
    ConsUsu120Ipd: TIBQuery;
    ConsUsu120IpdCODEMP: TIntegerField;
    ConsUsu120IpdCODFIL: TIntegerField;
    ConsUsu120IpdNUMCON: TIntegerField;
    ConsUsu120IpdCODREP: TIntegerField;
    ConsUsu120IpdSEQIPD: TIntegerField;
    ConsUsu120IpdSEQITE: TIntegerField;
    ConsUsu120IpdNUMPED: TIntegerField;
    ConsUsu120IpdQTDCOR: TIntegerField;
    ConsUsu120IpdQTDABE: TIntegerField;
    ConsUsu120IpdQTDCAN: TIntegerField;
    ConsUsu120IpdTIPCMB: TIntegerField;
    ConsUsu120IpdCOR001: TIBStringField;
    ConsUsu120IpdCOR002: TIBStringField;
    ConsUsu120IpdCODPRO: TIBStringField;
    ConsUsu120IpdCODDER: TIBStringField;
    ConsUsu120IpdTECTRA: TIBStringField;
    ConsUsu120IpdPRECAR: TIntegerField;
    ConsE120PedChegouSITCON: TIBStringField;
    CadE120PedSITCON: TIBStringField;
    ConsE120PedChegouImagem: TStringField;
    ConsE120IpdCODEMP: TIntegerField;
    ConsE120IpdCODFIL: TIntegerField;
    ConsE120IpdNUMCON: TIntegerField;
    ConsE120IpdCODREP: TIntegerField;
    ConsE120IpdSEQIPD: TIntegerField;
    ConsE120IpdNUMPED: TIntegerField;
    ConsE120IpdTNSPRO: TIBStringField;
    ConsE120IpdCODPRO: TIBStringField;
    ConsE120IpdCODDER: TIBStringField;
    ConsE120IpdCODFAM: TIBStringField;
    ConsE120IpdCODDEP: TIBStringField;
    ConsE120IpdQTDPED: TIntegerField;
    ConsE120IpdCODTPR: TIBStringField;
    ConsE120IpdPREUNI: TFloatField;
    ConsE120IpdSITIPD: TIBStringField;
    ConsE120IpdTOTDESC: TFloatField;
    ConsE120IpdVLRORI: TFloatField;
    ConsE120IpdVLRBRU: TFloatField;
    ConsE120IpdDESPRO: TIBStringField;
    CadE100UsuQTDDIA: TIntegerField;
    ConsE100UsuQTDDIA: TIntegerField;
    CadE075LLDC: TIBDataSet;
    ConsSql: TIBQuery;
    CadE075LLDCNUMMOV: TIntegerField;
    CadE075LLDCCODEMP: TIntegerField;
    CadE075LLDCCODPRO: TIBStringField;
    CadE075LLDCCODDER: TIBStringField;
    CadE075LLDCCODTEC: TIBStringField;
    CadE075LLDCDATMOV: TDateField;
    CadE075LLDCTIPMOV: TIBStringField;
    CadE100UsuDATATU: TDateField;
    CadE100UsuHORATU: TIBStringField;
    ConsE100UsuDATATU: TDateField;
    ConsE100UsuHORATU: TIBStringField;
    CadE100Sql: TIBDataSet;
    CadE100SqlCODUSU: TIntegerField;
    CadE100SqlNUMCON: TIntegerField;
    CadE100SqlDATGER: TDateField;
    CadE100SqlCOMSQL: TIBStringField;
    ConsE100Sql: TIBQuery;
    ConsE100SqlCODUSU: TIntegerField;
    ConsE100SqlNUMCON: TIntegerField;
    ConsE100SqlDATGER: TDateField;
    ConsE100SqlCOMSQL: TIBStringField;
    IBDBancoSysRep: TIBDatabase;
    IBTransacaoSysRep: TIBTransaction;
    SqlSysRep: TIBQuery;
    ConsE100UsuVEREXE: TIBStringField;
    CadE100UsuVEREXE: TIBStringField;
    CadE120Ped_Ocu: TIBDataSet;
    CadE120Ped_OcuCODEMP: TIntegerField;
    CadE120Ped_OcuCODFIL: TIntegerField;
    CadE120Ped_OcuNUMCON: TIntegerField;
    CadE120Ped_OcuCODREP: TIntegerField;
    CadE120Ped_OcuNUMPED: TIntegerField;
    CadE120Ped_OcuCODCLI: TIntegerField;
    CadE120Ped_OcuTNSPRO: TIBStringField;
    CadE120Ped_OcuDATEMI: TDateField;
    CadE120Ped_OcuCODCPG: TIBStringField;
    CadE120Ped_OcuSITPED: TIBStringField;
    CadE120Ped_OcuUSUGER: TIntegerField;
    CadE120Ped_OcuDATGER: TDateField;
    CadE120Ped_OcuPEDENV: TIBStringField;
    CadE120Ped_OcuDATENV: TDateField;
    CadE120Ped_OcuPEDCON: TIBStringField;
    CadE120Ped_OcuDATCON: TDateField;
    CadE120Ped_OcuUSUCON: TIntegerField;
    CadE120Ped_OcuSITCON: TIBStringField;
    CadE120Ipd_Ocu: TIBDataSet;
    CadE120Ipd_OcuCODEMP: TIntegerField;
    CadE120Ipd_OcuCODFIL: TIntegerField;
    CadE120Ipd_OcuNUMCON: TIntegerField;
    CadE120Ipd_OcuCODREP: TIntegerField;
    CadE120Ipd_OcuSEQIPD: TIntegerField;
    CadE120Ipd_OcuNUMPED: TIntegerField;
    CadE120Ipd_OcuTNSPRO: TIBStringField;
    CadE120Ipd_OcuCODPRO: TIBStringField;
    CadE120Ipd_OcuCODDER: TIBStringField;
    CadE120Ipd_OcuCODFAM: TIBStringField;
    CadE120Ipd_OcuCODDEP: TIBStringField;
    CadE120Ipd_OcuQTDPED: TIntegerField;
    CadE120Ipd_OcuCODTPR: TIBStringField;
    CadE120Ipd_OcuPREUNI: TFloatField;
    CadE120Ipd_OcuSITIPD: TIBStringField;
    CadE120Ipd_OcuTOTDESC: TFloatField;
    CadE120Ipd_OcuVLRORI: TFloatField;
    CadE120Ipd_OcuVLRBRU: TFloatField;
    CadUsu120Ipd_Ocu: TIBDataSet;
    CadUsu120Ipd_OcuCODEMP: TIntegerField;
    CadUsu120Ipd_OcuCODFIL: TIntegerField;
    CadUsu120Ipd_OcuNUMCON: TIntegerField;
    CadUsu120Ipd_OcuCODREP: TIntegerField;
    CadUsu120Ipd_OcuSEQIPD: TIntegerField;
    CadUsu120Ipd_OcuSEQITE: TIntegerField;
    CadUsu120Ipd_OcuNUMPED: TIntegerField;
    CadUsu120Ipd_OcuQTDCOR: TIntegerField;
    CadUsu120Ipd_OcuQTDABE: TIntegerField;
    CadUsu120Ipd_OcuQTDCAN: TIntegerField;
    CadUsu120Ipd_OcuTIPCMB: TIntegerField;
    CadUsu120Ipd_OcuCOR001: TIBStringField;
    CadUsu120Ipd_OcuCOR002: TIBStringField;
    CadUsu120Ipd_OcuCODPRO: TIBStringField;
    CadUsu120Ipd_OcuCODDER: TIBStringField;
    CadUsu120Ipd_OcuTECTRA: TIBStringField;
    CadUsu120Ipd_OcuPRECAR: TIntegerField;
    CadE120Obs_Ocu: TIBDataSet;
    CadE120Obs_OcuCODEMP: TIntegerField;
    CadE120Obs_OcuCODFIL: TIntegerField;
    CadE120Obs_OcuNUMCON: TIntegerField;
    CadE120Obs_OcuCODREP: TIntegerField;
    CadE120Obs_OcuSEQOBS: TIntegerField;
    CadE120Obs_OcuNUMPED: TIntegerField;
    CadE120Obs_OcuOBSPED: TIBStringField;
    CadE120Obs_OcuSITOBS: TIBStringField;
    CadE120Obs_OcuOBSUSU: TIntegerField;
    CadE120Obs_OcuOBSDAT: TDateField;
    BancoTransLider: TIBDatabase;
    TransacaoTransLider: TIBTransaction;
    ConsEntradas_Saidas: TIBQuery;
    CadE120IpdDESCAPR: TIBStringField;
    ConsE120IpdDESCAPR: TIBStringField;
    BancoSapLider: TIBDatabase;
    IBTBancoSapLider: TIBTransaction;
    CadApelidos_Prod: TIBDataSet;
    CadApelidos_ProdIDAPE: TIntegerField;
    CadApelidos_ProdCODPROSAP: TIBStringField;
    CadApelidos_ProdDESPROSAP: TIBStringField;
    CadApelidos_ProdDESAPE: TIBStringField;
    ConsSqlSapLider: TIBQuery;
    ConsApelidos_Prod: TIBQuery;
    ConsApelidos_ProdIDAPE: TIntegerField;
    ConsApelidos_ProdCODPROSAP: TIBStringField;
    ConsApelidos_ProdDESPROSAP: TIBStringField;
    ConsApelidos_ProdDESAPE: TIBStringField;
    ConsApelidos_Prodimg: TStringField;
    CadApelidos_ProdOBSAPE: TIBStringField;
    ConsApelidos_ProdOBSAPE: TIBStringField;
    procedure ConsE120PedChegouAfterScroll(DataSet: TDataSet);
    procedure ConsE120IpdAfterScroll(DataSet: TDataSet);
    procedure ConsE100SqlAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    vaAfterScroll : string;
  end;

var
  DmFire: TDmFire;

implementation

uses UDmOra, UProcessaPedidosSysRep, UCadUsuSysRep;

{$R *.dfm}

procedure TDmFire.ConsE100SqlAfterScroll(DataSet: TDataSet);
begin
  CadE100Sql.Close;
  CadE100Sql.ParamByName('codusu').Value := ConsE100SqlCODUSU.Value;
  CadE100Sql.ParamByName('numcon').Value := ConsE100SqlNUMCON.Value;
  CadE100Sql.Open;
end;

procedure TDmFire.ConsE120IpdAfterScroll(DataSet: TDataSet);
begin
  {ConsUsu120Ipd.Close;
  ConsUsu120Ipd.ParamByName('codemp').Value := ConsE120IpdCODEMP.Value;
  ConsUsu120Ipd.ParamByName('codfil').Value := ConsE120IpdCODFIL.Value;
  ConsUsu120Ipd.ParamByName('numcon').Value := ConsE120IpdNUMCON.Value;
  ConsUsu120Ipd.ParamByName('codrep').Value := ConsE120IpdCODREP.Value;
  ConsUsu120Ipd.ParamByName('seqipd').Value := ConsE120IpdSEQIPD.Value;
  ConsUsu120Ipd.Open;}
end;

procedure TDmFire.ConsE120PedChegouAfterScroll(DataSet: TDataSet);
begin
if vaAfterScroll = 'S' then
   begin//1
   DmOra.ConsE085Cli_E085Rep.Close;
   DmOra.ConsE085Cli_E085Rep.Parameters.ParamByName('data').Value := date;
   DmOra.ConsE085Cli_E085Rep.Parameters.ParamByName('data').Value := date;
   DmOra.ConsE085Cli_E085Rep.Parameters.ParamByName('codcli').Value := ConsE120PedChegouCODCLI.Value;
   DmOra.ConsE085Cli_E085Rep.Open;

   DmOra.ConsE301TcrAVen.Close;
   DmOra.ConsE301TcrAVen.Parameters.ParamByName('data').Value := date;
   DmOra.ConsE301TcrAVen.Parameters.ParamByName('data').Value := date;
   DmOra.ConsE301TcrAVen.Parameters.ParamByName('codcli').Value := ConsE120PedChegouCODCLI.Value;
   DmOra.ConsE301TcrAVen.Open;

   FProcessaPedidosSysRep.LDsCli1.Caption := IntToStr(DmOra.ConsE085Cli_E085RepCODCLI.Value);
   FProcessaPedidosSysRep.LDsCli1.Caption := FProcessaPedidosSysRep.LDsCli1.Caption + '   -   ' + DmOra.ConsE085Cli_E085RepNOMCLI.Value;
   FProcessaPedidosSysRep.LDsCli1.Caption := FProcessaPedidosSysRep.LDsCli1.Caption + '   -   ' + DmOra.ConsE085Cli_E085RepAPECLI.Value;

    FProcessaPedidosSysRep.LDsCli2.Caption := DmOra.ConsE085Cli_E085RepENDCLI.Value;
    FProcessaPedidosSysRep.LDsCli2.Caption := FProcessaPedidosSysRep.LDsCli2.Caption +'  -  ' + DmOra.ConsE085Cli_E085RepNENCLI.Value;
    FProcessaPedidosSysRep.LDsCli2.Caption := FProcessaPedidosSysRep.LDsCli2.Caption +'  -  ' + DmOra.ConsE085Cli_E085RepBAICLI.Value;
    FProcessaPedidosSysRep.LDsCli2.Caption := FProcessaPedidosSysRep.LDsCli2.Caption +'  -  ' + DmOra.ConsE085Cli_E085RepCIDCLI.Value;
    FProcessaPedidosSysRep.LDsCli2.Caption := FProcessaPedidosSysRep.LDsCli2.Caption +'  -  ' + DmOra.ConsE085Cli_E085RepSIGUFS.Value;
    FProcessaPedidosSysRep.LDsCli2.Caption := FProcessaPedidosSysRep.LDsCli2.Caption +'  -  ' + DmOra.ConsE085Cli_E085RepFONCLI.Value;

    //consulta os alertas do cliente
    DmOra.ConsUsu_E085Mac.Close;
    DmOra.ConsUsu_E085Mac.Parameters.ParamByName('codcli').Value := DmFire.ConsE120PedChegouCODCLI.Value;
    DmOra.ConsUsu_E085Mac.Open;
    if not DmOra.ConsUsu_E085Mac.IsEmpty then
       begin
         FProcessaPedidosSysRep.PAlerta.Caption := 'ALERTA';
         //FProcessaPedidosSysRep.PAlerta.Color := $0075FFFF;
         FProcessaPedidosSysRep.PAlerta.Color := $00FFFF91;

       end
    ELSE
       begin
         FProcessaPedidosSysRep.PAlerta.Caption := '';
         FProcessaPedidosSysRep.PAlerta.Color := $00EFEFEF;
       end;

    //consulta as observações do pedido
    ConsE120ObsChegou.Close;
    ConsE120ObsChegou.ParamByName('codemp').Value := ConsE120PedChegouCODEMP.Value;
    ConsE120ObsChegou.ParamByName('codfil').Value := ConsE120PedChegouCODFIL.Value;
    ConsE120ObsChegou.ParamByName('numcon').Value := ConsE120PedChegouNUMCON.Value;
    ConsE120ObsChegou.ParamByName('codrep').Value := ConsE120PedChegouCODREP.Value;
    ConsE120ObsChegou.Open;
    if not ConsE120ObsChegou.IsEmpty then
       begin
        FProcessaPedidosSysRep.PObs.Caption := 'OBSERVAÇÕES';
        FProcessaPedidosSysRep.PObs.Color := $00FFFF91;

       end
    else
       begin
         FProcessaPedidosSysRep.PObs.Caption := '';
         FProcessaPedidosSysRep.PObs.Color := $00EFEFEF;
       end;
   end;//1

end;

end.
