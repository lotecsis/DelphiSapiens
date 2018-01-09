unit UContatosFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, DBCtrls;

type
  TFContatosFornecedor = class(TForm)
    dbg1: TDBGrid;
    dsConsE095Cto: TDataSource;
    dsConsE403FprMC: TDataSource;
    dbtxtNOMFOR: TDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FContatosFornecedor: TFContatosFornecedor;

implementation

uses UDm3;

{$R *.dfm}

end.
