unit UdmPrototipo;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmPrototipo = class(TDataModule)
    Banco: TADOConnection;
    CadE120Ped: TADOQuery;
    CadE120Ipd: TADOQuery;
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