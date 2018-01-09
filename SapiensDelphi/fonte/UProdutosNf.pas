unit UProdutosNf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB;

type
  TFProdutosNf = class(TForm)
    dsClientConsProdutosNF: TDataSource;
    dbg1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdutosNf: TFProdutosNf;

implementation

uses UDmOra;

{$R *.dfm}

end.
