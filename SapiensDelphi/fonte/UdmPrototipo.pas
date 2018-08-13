unit UdmPrototipo;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmPrototipo = class(TDataModule)
    Banco: TADOConnection;
    CadE120Ped: TADOQuery;
    CadE120Ipd: TADOQuery;
    CadE120Rat: TADOQuery;
    CadE120Obs: TADOQuery;
    ConsE085Cli: TADOQuery;
    ConsE085CliCODCLI: TIntegerField;
    ConsE085CliNOMCLI: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPrototipo: TdmPrototipo;

implementation

{$R *.dfm}

end.
