unit UProdutosConsPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ExtCtrls, StdCtrls, Mask, rxToolEdit, rxCurrEdit;

type
  TFProdutosConsPedidos = class(TForm)
    DsConsDistintaProdutos: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    EdTotAbe: TCurrencyEdit;
    EdTotPed: TCurrencyEdit;
    EdTotCan: TCurrencyEdit;
    EdTotFat: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdutosConsPedidos: TFProdutosConsPedidos;

implementation

uses UConsPedido, UDm2;

{$R *.dfm}

procedure TFProdutosConsPedidos.FormShow(Sender: TObject);
var
   vnTotPed : Integer;
   vnTotCan : Integer;
   vnTotFat : Integer;
   vnTotAbe : Integer;
begin
    vnTotPed := 0;
    vnTotCan := 0;
    vnTotFat := 0;
    vnTotAbe := 0;

    dm2.ConsDistintaProdutos.First;
        while not dm2.ConsDistintaProdutos.Eof do
           begin
              vnTotPed := vnTotPed + dm2.ConsDistintaProdutosQTDPED.AsInteger;
              vnTotCan := vnTotCan + dm2.ConsDistintaProdutosQTDCAN.AsInteger;
              vnTotFat := vnTotFat + dm2.ConsDistintaProdutosQTDFAT.AsInteger;
              vnTotAbe := vnTotAbe + dm2.ConsDistintaProdutosQTDABE.AsInteger;

              dm2.ConsDistintaProdutos.Next;
           end;
        dm2.ConsDistintaProdutos.First;

    EdTotPed.Value := vnTotPed;
    EdTotCan.Value := vnTotCan;
    EdTotFat.Value := vnTotFat;
    EdTotAbe.Value := vnTotAbe;

end;

end.
