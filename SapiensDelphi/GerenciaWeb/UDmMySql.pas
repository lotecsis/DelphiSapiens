unit UDmMySql;

interface

uses
  SysUtils, Classes, ZConnection, Provider, DBClient, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TDmMySql = class(TDataModule)
    Banco: TZConnection;
    AtuE100Usu: TZQuery;
    E120PedRec: TZQuery;
    E120PedRecCODEMP: TIntegerField;
    E120PedRecCODFIL: TIntegerField;
    E120PedRecNUMCON: TIntegerField;
    E120PedRecNUMPED: TIntegerField;
    E120PedRecCODREP: TIntegerField;
    E120PedRecCODCLI: TIntegerField;
    E120PedRecTNSPRO: TWideStringField;
    E120PedRecDATEMI: TDateField;
    E120PedRecCODCPG: TWideStringField;
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
    E120PedRecSITPED: TWideStringField;
    E120PedRecUSUGER: TIntegerField;
    E120PedRecDATGER: TDateField;
    E120PedRecPEDENV: TWideStringField;
    E120PedRecDATENV: TDateField;
    E120PedRecPEDCON: TWideStringField;
    E120PedRecDATCON: TDateField;
    E120PedRecUSUCON: TIntegerField;
    E120PedRecPRECAR: TIntegerField;
    E120IpdRec: TZQuery;
    E120IpdRecCODEMP: TIntegerField;
    E120IpdRecCODFIL: TIntegerField;
    E120IpdRecNUMPED: TIntegerField;
    E120IpdRecNUMCON: TIntegerField;
    E120IpdRecCODREP: TIntegerField;
    E120IpdRecSEQIPD: TIntegerField;
    E120IpdRecTNSPRO: TWideStringField;
    E120IpdRecCODPRO: TWideStringField;
    E120IpdRecCODDER: TWideStringField;
    E120IpdRecCODFAM: TWideStringField;
    E120IpdRecCODDEP: TWideStringField;
    E120IpdRecQTDPED: TIntegerField;
    E120IpdRecQTDFAT: TIntegerField;
    E120IpdRecQTDCAN: TIntegerField;
    E120IpdRecQTDABE: TIntegerField;
    E120IpdRecUNIMED: TWideStringField;
    E120IpdRecCODTPR: TWideStringField;
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
    E120IpdRecSITIPD: TWideStringField;
    E120IpdRecUSUGER: TIntegerField;
    E120IpdRecDATGER: TDateField;
    E120IpdRecTOTDESC: TFloatField;
    E120IpdRecVLRORI: TFloatField;
    E120IpdRecDATEMI: TDateField;
    E120IpdRecDATENT: TDateField;
    E120IpdRecCORGRID: TWideStringField;
    E120IpdRecCORES: TWideStringField;
    Usu120IpdRec: TZQuery;
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
    Usu120IpdRecCOR001: TWideStringField;
    Usu120IpdRecCOR002: TWideStringField;
    Usu120IpdRecCODPRO: TWideStringField;
    Usu120IpdRecCODDER: TWideStringField;
    Usu120IpdRecTECTRA: TWideStringField;
    Usu120IpdRecPRECAR: TIntegerField;
    E120ObsRec: TZQuery;
    E120ObsRecCODEMP: TIntegerField;
    E120ObsRecCODFIL: TIntegerField;
    E120ObsRecNUMCON: TIntegerField;
    E120ObsRecCODREP: TIntegerField;
    E120ObsRecSEQOBS: TIntegerField;
    E120ObsRecNUMPED: TIntegerField;
    E120ObsRecOBSPED: TWideStringField;
    E120ObsRecSITOBS: TWideStringField;
    E120ObsRecOBSUSU: TIntegerField;
    E120ObsRecOBSDAT: TDateField;
    ConsSql: TZQuery;
    ClientCadE100Usu: TClientDataSet;
    ClientCadE100UsuCODUSU: TIntegerField;
    ClientCadE100UsuLOGUSU: TWideStringField;
    ClientCadE100UsuSENUSU: TWideStringField;
    ClientCadE100UsuDATCAD: TDateField;
    ClientCadE100UsuSITUSU: TWideStringField;
    ClientCadE100UsuCHAVE: TWideStringField;
    ClientCadE100UsuNOMUSU: TWideStringField;
    ClientCadE100UsuCODREP: TIntegerField;
    ClientCadE100UsuNOMREP: TWideStringField;
    ClientCadE100UsuUSUADM: TWideStringField;
    ClientCadE100UsuNCIE: TIntegerField;
    ClientCadE100UsuNCFE: TIntegerField;
    ClientCadE100UsuNCAE: TIntegerField;
    ClientCadE100UsuNCII: TIntegerField;
    ClientCadE100UsuNCFI: TIntegerField;
    ClientCadE100UsuNCAI: TIntegerField;
    ProviderCadE100Usu: TDataSetProvider;
    ProviderConsE100Usu: TDataSetProvider;
    ClientConsE100Usu: TClientDataSet;
    ClientConsE100UsuCODUSU: TIntegerField;
    ClientConsE100UsuLOGUSU: TWideStringField;
    wdstrngfldClientConsE100UsuSENUSU: TWideStringField;
    dtfldClientConsE100UsuDATCAD: TDateField;
    wdstrngfldClientConsE100UsuSITUSU: TWideStringField;
    wdstrngfldClientConsE100UsuCHAVE: TWideStringField;
    wdstrngfldClientConsE100UsuNOMUSU: TWideStringField;
    ClientConsE100UsuCODREP: TIntegerField;
    wdstrngfldClientConsE100UsuNOMREP: TWideStringField;
    wdstrngfldClientConsE100UsuUSUADM: TWideStringField;
    ClientConsE100UsuNCIE: TIntegerField;
    ClientConsE100UsuNCFE: TIntegerField;
    ClientConsE100UsuNCAE: TIntegerField;
    ClientConsE100UsuNCII: TIntegerField;
    ClientConsE100UsuNCFI: TIntegerField;
    ClientConsE100UsuNCAI: TIntegerField;
    UltimaFaixaNumCon: TZQuery;
    UltimaFaixaNumConULTIMA_I: TIntegerField;
    UltimaFaixaNumConULTIMA_E: TIntegerField;
    CadE100Usu: TZQuery;
    CadE100UsuCODUSU: TIntegerField;
    CadE100UsuLOGUSU: TWideStringField;
    CadE100UsuSENUSU: TWideStringField;
    CadE100UsuDATCAD: TDateField;
    CadE100UsuSITUSU: TWideStringField;
    CadE100UsuCHAVE: TWideStringField;
    CadE100UsuNOMUSU: TWideStringField;
    CadE100UsuCODREP: TIntegerField;
    CadE100UsuNOMREP: TWideStringField;
    CadE100UsuUSUADM: TWideStringField;
    CadE100UsuNCIE: TIntegerField;
    CadE100UsuNCFE: TIntegerField;
    CadE100UsuNCAE: TIntegerField;
    CadE100UsuNCII: TIntegerField;
    CadE100UsuNCFI: TIntegerField;
    CadE100UsuNCAI: TIntegerField;
    ConsE100Usu: TZQuery;
    ConsE100UsuCODUSU: TIntegerField;
    ConsE100UsuLOGUSU: TWideStringField;
    ConsE100UsuSENUSU: TWideStringField;
    ConsE100UsuDATCAD: TDateField;
    ConsE100UsuSITUSU: TWideStringField;
    ConsE100UsuCHAVE: TWideStringField;
    ConsE100UsuNOMUSU: TWideStringField;
    ConsE100UsuCODREP: TIntegerField;
    ConsE100UsuNOMREP: TWideStringField;
    ConsE100UsuUSUADM: TWideStringField;
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
  DmMySql: TDmMySql;

implementation

{$R *.dfm}

end.
