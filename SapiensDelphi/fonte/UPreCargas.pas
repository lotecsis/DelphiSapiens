unit UPreCargas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit;

type
  TFPreCargas = class(TForm)
    dbg1: TDBGrid;
    dsPreCargas: TDataSource;
    btnMostrar: TBitBtn;
    lblPreCarga: TLabel;
    edtPreCarga: TCurrencyEdit;
    procedure btnMostrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPreCargas: TFPreCargas;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFPreCargas.btnMostrarClick(Sender: TObject);
begin
   DmOra.PreCargas.Close;
   DmOra.PreCargas.SQL.Clear;
   DmOra.PreCargas.SQL.Add('select usu_tprecar.*');
   DmOra.PreCargas.SQL.Add(' from');
   DmOra.PreCargas.SQL.Add(' usu_tprecar');
   DmOra.PreCargas.SQL.Add('   where');
   DmOra.PreCargas.SQL.Add('     usu_tprecar.usu_precar <> 0');//para deixar o where fixo

   if edtPreCarga.Value > 0 then
      begin
        DmOra.PreCargas.SQL.Add(' and  usu_tprecar.usu_precar = :precar');
        DmOra.PreCargas.Parameters.ParamByName('precar').Value := edtPreCarga.AsInteger;
      end;

   DmOra.PreCargas.SQL.Add('   order by usu_tprecar.usu_precar desc');
   DmOra.PreCargas.Open;

end;

end.
