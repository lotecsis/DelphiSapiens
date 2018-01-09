unit UDmFireRep;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, IBQuery;

type
  TDmFireRep = class(TDataModule)
    Banco: TIBDatabase;
    ibtTransacao: TIBTransaction;
    E120IpdRec: TIBQuery;
    E120IpdRecCODEMP: TIntegerField;
    E120IpdRecCODFIL: TIntegerField;
    E120IpdRecNUMPED: TIntegerField;
    E120IpdRecNUMCON: TIntegerField;
    E120IpdRecCODREP: TIntegerField;
    E120IpdRecSEQIPD: TIntegerField;
    E120IpdRecTNSPRO: TIBStringField;
    E120IpdRecCODPRO: TIBStringField;
    E120IpdRecCODDER: TIBStringField;
    E120IpdRecCODFAM: TIBStringField;
    E120IpdRecCODDEP: TIBStringField;
    E120IpdRecQTDPED: TIntegerField;
    E120IpdRecQTDFAT: TIntegerField;
    E120IpdRecQTDCAN: TIntegerField;
    E120IpdRecQTDABE: TIntegerField;
    E120IpdRecUNIMED: TIBStringField;
    E120IpdRecCODTPR: TIBStringField;
    E120IpdRecPREUNI: TFloatField;
    E120IpdRecPERIPI: TFloatField;
    E120IpdRecPERICM: TFloatField;
    E120IpdRecPERCOM: TFloatField;
    E120IpdRecVLRBRU: TFloatField;
    E120IpdRecVLRBIP: TFloatField;
    E120IpdRecVLRIPI: TFloatField;
    E120IpdRecVLRBIC: TFloatField;
    E120IpdRecVLRICM: TFloatField;
    E120IpdRecVLRBSI: TFloatField;
    E120IpdRecVLRICS: TFloatField;
    E120IpdRecVLRBCO: TFloatField;
    E120IpdRecVLRCOM: TFloatField;
    E120IpdRecVLRLPR: TFloatField;
    E120IpdRecVLRLIQ: TFloatField;
    E120IpdRecSITIPD: TIBStringField;
    E120IpdRecUSUGER: TIntegerField;
    E120IpdRecDATGER: TDateField;
    E120IpdRecTOTDESC: TFloatField;
    E120IpdRecVLRORI: TFloatField;
    E120IpdRecDATEMI: TDateField;
    E120IpdRecDATENT: TDateField;
    E120IpdRecCORGRID: TIBStringField;
    E120IpdRecCORES: TIBStringField;
    Usu120IpdRec: TIBQuery;
    Usu120IpdRecCODEMP: TIntegerField;
    Usu120IpdRecCODFIL: TIntegerField;
    Usu120IpdRecNUMCON: TIntegerField;
    Usu120IpdRecCODREP: TIntegerField;
    Usu120IpdRecSEQIPD: TIntegerField;
    Usu120IpdRecSEQITE: TIntegerField;
    Usu120IpdRecNUMPED: TIntegerField;
    Usu120IpdRecQTDCOR: TIntegerField;
    Usu120IpdRecQTDABE: TIntegerField;
    Usu120IpdRecQTDCAN: TIntegerField;
    Usu120IpdRecTIPCMB: TIntegerField;
    Usu120IpdRecCOR001: TIBStringField;
    Usu120IpdRecCOR002: TIBStringField;
    Usu120IpdRecCODPRO: TIBStringField;
    Usu120IpdRecCODDER: TIBStringField;
    Usu120IpdRecTECTRA: TIBStringField;
    Usu120IpdRecPRECAR: TIntegerField;
    E120ObsRec: TIBQuery;
    E120ObsRecCODEMP: TIntegerField;
    E120ObsRecCODFIL: TIntegerField;
    E120ObsRecNUMCON: TIntegerField;
    E120ObsRecCODREP: TIntegerField;
    E120ObsRecSEQOBS: TIntegerField;
    E120ObsRecNUMPED: TIntegerField;
    E120ObsRecOBSPED: TIBStringField;
    E120ObsRecSITOBS: TIBStringField;
    E120ObsRecOBSUSU: TIntegerField;
    E120ObsRecOBSDAT: TDateField;
    E120PedRec: TIBQuery;
    E120PedRecCODEMP: TIntegerField;
    E120PedRecCODFIL: TIntegerField;
    E120PedRecNUMCON: TIntegerField;
    E120PedRecNUMPED: TIntegerField;
    E120PedRecCODREP: TIntegerField;
    E120PedRecCODCLI: TIntegerField;
    E120PedRecTNSPRO: TIBStringField;
    E120PedRecDATEMI: TDateField;
    E120PedRecCODCPG: TIBStringField;
    E120PedRecQTDORI: TFloatField;
    E120PedRecQTDABE: TFloatField;
    E120PedRecVLRBIP: TFloatField;
    E120PedRecVLRIPI: TFloatField;
    E120PedRecVLRBIC: TFloatField;
    E120PedRecVLRICM: TFloatField;
    E120PedRecVLRBCO: TFloatField;
    E120PedRecVLRCOM: TFloatField;
    E120PedRecVLRLIQ: TFloatField;
    E120PedRecVLRORI: TFloatField;
    E120PedRecSITPED: TIBStringField;
    E120PedRecUSUGER: TIntegerField;
    E120PedRecDATGER: TDateField;
    E120PedRecPEDENV: TIBStringField;
    E120PedRecDATENV: TDateField;
    E120PedRecPEDCON: TIBStringField;
    E120PedRecDATCON: TDateField;
    E120PedRecUSUCON: TIntegerField;
    E120PedRecPRECAR: TIntegerField;
    E120PedRecPEDPRO: TIBStringField;
    ConsSql: TIBQuery;
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
    CadE100UsuNCIE: TIntegerField;
    CadE100UsuNCFE: TIntegerField;
    CadE100UsuNCAE: TIntegerField;
    CadE100UsuNCII: TIntegerField;
    CadE100UsuNCFI: TIntegerField;
    CadE100UsuNCAI: TIntegerField;
    UltimaFaixaNumCon: TIBQuery;
    UltimaFaixaNumConULTIMA_I: TIntegerField;
    UltimaFaixaNumConULTIMA_E: TIntegerField;
    ConsE100Usu: TIBQuery;
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
    ConsE100UsuNCIE: TIntegerField;
    ConsE100UsuNCFE: TIntegerField;
    ConsE100UsuNCAE: TIntegerField;
    ConsE100UsuNCII: TIntegerField;
    ConsE100UsuNCFI: TIntegerField;
    ConsE100UsuNCAI: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmFireRep: TDmFireRep;

implementation

{$R *.dfm}

end.
