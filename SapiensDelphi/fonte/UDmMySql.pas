unit UDmMySql;

interface

uses
  SysUtils, Classes, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Provider, DBClient;

type
  TDmMySql = class(TDataModule)
    ClientCadE100Usu: TClientDataSet;
    ProviderCadE100Usu: TDataSetProvider;
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
    ProviderConsE100Usu: TDataSetProvider;
    ClientConsE100Usu: TClientDataSet;
    ClientConsE100UsuCODUSU: TIntegerField;
    ClientConsE100UsuLOGUSU: TWideStringField;
    ClientConsE100UsuSENUSU: TWideStringField;
    ClientConsE100UsuDATCAD: TDateField;
    ClientConsE100UsuSITUSU: TWideStringField;
    ClientConsE100UsuCHAVE: TWideStringField;
    ClientConsE100UsuNOMUSU: TWideStringField;
    ClientConsE100UsuCODREP: TIntegerField;
    ClientConsE100UsuNOMREP: TWideStringField;
    ClientConsE100UsuUSUADM: TWideStringField;
    ClientConsE100UsuNCIE: TIntegerField;
    ClientConsE100UsuNCFE: TIntegerField;
    ClientConsE100UsuNCAE: TIntegerField;
    ClientConsE100UsuNCII: TIntegerField;
    ClientConsE100UsuNCFI: TIntegerField;
    ClientConsE100UsuNCAI: TIntegerField;
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
