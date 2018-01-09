unit UPedCompAberto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, RXDBCtrl, RbDrawCore, RbButton;

type
  TFPodCompraAberto = class(TForm)
    DBEGridConsulta: TRxDBGrid;
    DSConsulta: TDataSource;
    RbButton1: TRbButton;
    BOk: TRbButton;
    BDadosPedido: TRbButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BDadosPedidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPodCompraAberto: TFPodCompraAberto;

implementation

uses UDataModule4, UCompraMt;

{$R *.dfm}

procedure TFPodCompraAberto.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFPodCompraAberto.BDadosPedidoClick(Sender: TObject);
begin
  FCompraMt := TFCompraMt.Create(Self);
  FCompraMt.Show;
  FCompraMt.EdPedido.Text := IntToStr(DataModule4.IBQConsCompPendenteCD_PEDIDO.AsInteger);
  FCompraMt.EdPedidoExit(Sender);
  //FreeAndNil(FCompraMt);

end;

end.
