unit UTecidosConsPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ExtCtrls;

type
  TFTecidosConsPedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DsConsUsu_TempTcp: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTecidosConsPedido: TFTecidosConsPedido;

implementation

uses UDm2;

{$R *.dfm}

end.
