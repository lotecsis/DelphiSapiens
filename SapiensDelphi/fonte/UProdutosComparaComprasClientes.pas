unit UProdutosComparaComprasClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB;

type
  TFProdutosComparaComprasClientes = class(TForm)
    DsProdComparativoComprasCli: TDataSource;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdutosComparaComprasClientes: TFProdutosComparaComprasClientes;

implementation

uses UDmOra;

{$R *.dfm}

end.
