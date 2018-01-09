unit UVisuObsPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, StdCtrls, DBCtrls;

type
  TFVisuObsPedido = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DsConsE120ObsChegou: TDataSource;
    DBMemo1: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVisuObsPedido: TFVisuObsPedido;

implementation

uses UDmFire;

{$R *.dfm}

end.
