unit UHistoricoConsumoMP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, DateUtils, Buttons, DB,
  DBCtrls;

type
  TFHistoricoConsumoMP = class(TForm)
    edtAno1: TCurrencyEdit;
    edtMes1: TCurrencyEdit;
    edtAno2: TCurrencyEdit;
    edtMes2: TCurrencyEdit;
    edtAno3: TCurrencyEdit;
    edtMes3: TCurrencyEdit;
    edtAno4: TCurrencyEdit;
    edtMes4: TCurrencyEdit;
    edtAno5: TCurrencyEdit;
    edtMes5: TCurrencyEdit;
    edtAno6: TCurrencyEdit;
    edtMes6: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtTotal1: TCurrencyEdit;
    edtTotal2: TCurrencyEdit;
    edtTotal3: TCurrencyEdit;
    edtTotal4: TCurrencyEdit;
    edtTotal5: TCurrencyEdit;
    edtTotal6: TCurrencyEdit;
    Label3: TLabel;
    dsClientMateriaPrimaMeiaCons: TDataSource;
    dbedtDESPRO: TDBEdit;
    dbedtCODPRO: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtMedia: TCurrencyEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHistoricoConsumoMP: TFHistoricoConsumoMP;

implementation

uses UDm3;

{$R *.dfm}

procedure TFHistoricoConsumoMP.FormShow(Sender: TObject);
var Dia,Mes,Ano : Word;
    I : Integer;
begin
  DecodeDate(Date,Ano,Mes,Dia);

  edtAno1.Value := Ano;
  edtMes1.Value := Mes;

  if edtMes1.Value > 1 then
     begin
       edtMes2.Value := edtMes1.Value - 1;
       edtAno2.Value := edtAno1.Value;
     end
  else
     begin
       edtMes2.Value := 12;
       edtAno2.Value := edtAno1.Value - 1;
     end;

  if edtMes2.Value > 1 then
     begin
       edtMes3.Value := edtMes2.Value - 1;
       edtAno3.Value := edtAno2.Value;
     end
  else
     begin
       edtMes3.Value := 12;
       edtAno3.Value := edtAno2.Value - 1;
     end;

  if edtMes3.Value > 1 then
     begin
       edtMes4.Value := edtMes3.Value - 1;
       edtAno4.Value := edtAno3.Value;
     end
  else
     begin
       edtMes4.Value := 12;
       edtAno4.Value := edtAno3.Value - 1;
     end;

  if edtMes4.Value > 1 then
     begin
       edtMes5.Value := edtMes4.Value - 1;
       edtAno5.Value := edtAno4.Value;
     end
  else
     begin
       edtMes5.Value := 12;
       edtAno5.Value := edtAno4.Value - 1;
     end;

  if edtMes5.Value > 1 then
     begin
       edtMes6.Value := edtMes5.Value - 1;
       edtAno6.Value := edtAno5.Value;
     end
  else
     begin
       edtMes6.Value := 12;
       edtAno6.Value := edtAno5.Value - 1;
     end;

     Dm3.ConsumoMensalMP.Close;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('ano').Value := edtAno1.AsInteger;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('mes').Value := edtMes1.AsInteger;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('codpro').Value := Dm3.ClientMateriaPrimaMeiaConsCODPRO.Value;
     Dm3.ConsumoMensalMP.Open;
     edtTotal1.Value := Dm3.ConsumoMensalMPCONSUMO.AsFloat;

     Dm3.ConsumoMensalMP.Close;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('ano').Value := edtAno2.AsInteger;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('mes').Value := edtMes2.AsInteger;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('codpro').Value := Dm3.ClientMateriaPrimaMeiaConsCODPRO.Value;
     Dm3.ConsumoMensalMP.Open;
     edtTotal2.Value := Dm3.ConsumoMensalMPCONSUMO.AsFloat;

     Dm3.ConsumoMensalMP.Close;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('ano').Value := edtAno3.AsInteger;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('mes').Value := edtMes3.AsInteger;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('codpro').Value := Dm3.ClientMateriaPrimaMeiaConsCODPRO.Value;
     Dm3.ConsumoMensalMP.Open;
     edtTotal3.Value := Dm3.ConsumoMensalMPCONSUMO.AsFloat;

     Dm3.ConsumoMensalMP.Close;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('ano').Value := edtAno4.AsInteger;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('mes').Value := edtMes4.AsInteger;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('codpro').Value := Dm3.ClientMateriaPrimaMeiaConsCODPRO.Value;
     Dm3.ConsumoMensalMP.Open;
     edtTotal4.Value := Dm3.ConsumoMensalMPCONSUMO.AsFloat;

     Dm3.ConsumoMensalMP.Close;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('ano').Value := edtAno5.AsInteger;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('mes').Value := edtMes5.AsInteger;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('codpro').Value := Dm3.ClientMateriaPrimaMeiaConsCODPRO.Value;
     Dm3.ConsumoMensalMP.Open;
     edtTotal5.Value := Dm3.ConsumoMensalMPCONSUMO.AsFloat;

     Dm3.ConsumoMensalMP.Close;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('ano').Value := edtAno6.AsInteger;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('mes').Value := edtMes6.AsInteger;
     Dm3.ConsumoMensalMP.Parameters.ParamByName('codpro').Value := Dm3.ClientMateriaPrimaMeiaConsCODPRO.Value;
     Dm3.ConsumoMensalMP.Open;
     edtTotal6.Value := Dm3.ConsumoMensalMPCONSUMO.AsFloat;

     edtMedia.Value := (edtTotal1.Value + edtTotal2.Value + edtTotal3.Value + edtTotal4.Value + edtTotal5.Value + edtTotal6.Value) / 6;
end;

end.
