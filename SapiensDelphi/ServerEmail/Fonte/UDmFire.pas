unit UDmFire;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, IBQuery;

type
  TDmFire = class(TDataModule)
    Banco: TIBDatabase;
    ibtTransacao: TIBTransaction;
    CadEnviados: TIBDataSet;
    CadEnviadosSEQENV: TIntegerField;
    CadEnviadosDATENV: TDateField;
    CadEnviadosHORENV: TIBStringField;
    CadEnviadosCODCLI: TIntegerField;
    CadEnviadosNOMCLI: TIBStringField;
    CadEnviadosEMAENV: TIBStringField;
    ConsSql: TIBQuery;
    CadEnviadosVLRABE: TFloatField;
    ConsEnvio: TIBQuery;
    ConsEnvioSEQENV: TIntegerField;
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
