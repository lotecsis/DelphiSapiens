unit UVisuAlertaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ExtCtrls, StdCtrls, DBCtrls;

type
  TFVisuAlertaClientes = class(TForm)
    DBGrid1: TDBGrid;
    DsConsUsu_E085Mac: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVisuAlertaClientes: TFVisuAlertaClientes;

implementation

uses UProcessaPedidosSysRep, UDmOra;

{$R *.dfm}

end.
