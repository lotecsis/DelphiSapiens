unit UGraficoConsumoMP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit, DB, Grids, DBGrids,
  TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart, DBClient, DateUtils;

type
  TFGraficoConsumoMP = class(TForm)
    btnMostrar: TBitBtn;
    Client: TClientDataSet;
    ClientMes: TStringField;
    ClientQtd: TFloatField;
    dbcht1: TDBChart;
    Series1: TFastLineSeries;
    dsClient: TDataSource;
    ClientOrdem: TIntegerField;
    edtData: TDateEdit;
    Label1: TLabel;
    dlgPntPrint: TPrintDialog;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGraficoConsumoMP: TFGraficoConsumoMP;

implementation

uses UDmOra, UDm3;

{$R *.dfm}

procedure TFGraficoConsumoMP.btnMostrarClick(Sender: TObject);
var ano,mes,dia : Word;
    mes1,mes2,mes3,mes4,mes5,mes6,mes7,mes8,mes9,mes10,mes11,mes12 : Integer;
    ano1,ano2,ano3,ano4,ano5,ano6,ano7,ano8,ano9,ano10,ano11,ano12 : Integer;
begin
  if edtData.Date = 0 then
     begin
       Application.MessageBox('Informe a data','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtData;
       Abort;
     end;

  DecodeDate(edtData.Date,ano,mes,dia);
  mes1 := mes;
  ano1 := ano;

  if mes1 > 1 then
     begin
       mes2 := mes1 - 1;
       ano2 := ano1;
     end
  else
     begin
       mes2 := 12;
       ano2 := ano1 - 1;
     end;

  if mes2 > 1 then
     begin
       mes3 := mes2 - 1;
       ano3 := ano2;
     end
  else
     begin
       mes3 := 12;
       ano3 := ano2 - 1;
     end;

  if mes3 > 1 then
     begin
       mes4 := mes3 - 1;
       ano4 := ano3;
     end
  else
     begin
       mes4 := 12;
       ano4 := ano3 - 1;
     end;

  if mes4 > 1 then
     begin
       mes5 := mes4 - 1;
       ano5 := ano4;
     end
  else
     begin
       mes5 := 12;
       ano5 := ano4 - 1;
     end;

  if mes5 > 1 then
     begin
       mes6 := mes5 - 1;
       ano6 := ano5;
     end
  else
     begin
       mes6 := 12;
       ano6 := ano5 - 1;
     end;

  if mes6 > 1 then
     begin
       mes7 := mes6 - 1;
       ano7 := ano6;
     end
  else
     begin
       mes7 := 12;
       ano7 := ano6 - 1;
     end;

  if mes7 > 1 then
     begin
       mes8 := mes7 - 1;
       ano8 := ano7;
     end
  else
     begin
       mes8 := 12;
       ano8 := ano7 - 1;
     end;

  if mes8 > 1 then
     begin
       mes9 := mes8 - 1;
       ano9 := ano8;
     end
  else
     begin
       mes9 := 12;
       ano9 := ano8 - 1;
     end;

  if mes9 > 1 then
     begin
       mes10 := mes9 - 1;
       ano10 := ano9;
     end
  else
     begin
       mes10 := 12;
       ano10 := ano9 - 1;
     end;

  if mes10 > 1 then
     begin
       mes11 := mes10 - 1;
       ano11 := ano10;
     end
  else
     begin
       mes11 := 12;
       ano11 := ano10 - 1;
     end;

  if mes11 > 1 then
     begin
       mes12 := mes11 - 1;
       ano12 := ano11;
     end
  else
     begin
       mes12 := 12;
       ano12 := ano11 - 1;
     end;


  Dm3.ConsumoMPGrafico.Close;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('MES1').Value := mes1;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('ANO1').Value := ano1;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('MES2').Value := mes2;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('ANO2').Value := ano2;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('MES3').Value := mes3;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('ANO3').Value := ano3;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('MES4').Value := mes4;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('ANO4').Value := ano4;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('MES5').Value := mes5;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('ANO5').Value := ano5;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('MES6').Value := mes6;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('ANO6').Value := ano6;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('MES7').Value := mes7;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('ANO7').Value := ano7;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('MES8').Value := mes8;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('ANO8').Value := ano8;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('MES9').Value := mes9;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('ANO9').Value := ano9;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('MES10').Value := mes10;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('ANO10').Value := ano10;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('MES11').Value := mes11;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('ANO11').Value := ano11;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('MES12').Value := mes12;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('ANO12').Value := ano12;
  Dm3.ConsumoMPGrafico.Parameters.ParamByName('CODPRO').Value := Dm3.ClientMateriaPrimaMeiaConsCODPRO.Value;
  Dm3.ConsumoMPGrafico.Open;

  Client.EmptyDataSet;

  //Client.Open;
  Client.Insert;
  ClientMes.AsString := IntToStr(mes1)+'-'+IntToStr(ano1);
  ClientQtd.AsFloat := Dm3.ConsumoMPGraficoMES1.AsFloat;
  ClientOrdem.AsInteger := 12;
  Client.Post;
  Client.Insert;
  ClientMes.AsString := IntToStr(mes2)+'-'+IntToStr(ano2);;
  ClientQtd.AsFloat := Dm3.ConsumoMPGraficoMES2.AsFloat;
  ClientOrdem.AsInteger := 11;
  Client.Post;
  Client.Insert;
  ClientMes.AsString := IntToStr(mes3)+'-'+IntToStr(ano3);;
  ClientQtd.AsFloat := Dm3.ConsumoMPGraficoMES3.AsFloat;
  ClientOrdem.AsInteger := 10;
  Client.Post;
  Client.Insert;
  ClientMes.AsString := IntToStr(mes4)+'-'+IntToStr(ano4);;
  ClientQtd.AsFloat := Dm3.ConsumoMPGraficoMES4.AsFloat;
  ClientOrdem.AsInteger := 9;
  Client.Post;
  Client.Insert;
  ClientMes.AsString := IntToStr(mes5)+'-'+IntToStr(ano5);;
  ClientQtd.AsFloat := Dm3.ConsumoMPGraficoMES5.AsFloat;
  ClientOrdem.AsInteger := 8;
  Client.Post;
  Client.Insert;
  ClientMes.AsString := IntToStr(mes6)+'-'+IntToStr(ano6);;
  ClientQtd.AsFloat := Dm3.ConsumoMPGraficoMES6.AsFloat;
  ClientOrdem.AsInteger := 7;
  Client.Post;
  Client.Insert;
  ClientMes.AsString := IntToStr(mes7)+'-'+IntToStr(ano7);;
  ClientQtd.AsFloat := Dm3.ConsumoMPGraficoMES7.AsFloat;
  ClientOrdem.AsInteger := 6;
  Client.Post;
  Client.Insert;
  ClientMes.AsString := IntToStr(mes8)+'-'+IntToStr(ano8);;
  ClientQtd.AsFloat := Dm3.ConsumoMPGraficoMES8.AsFloat;
  ClientOrdem.AsInteger := 5;
  Client.Post;
  Client.Insert;
  ClientMes.AsString := IntToStr(mes9)+'-'+IntToStr(ano9);;
  ClientQtd.AsFloat := Dm3.ConsumoMPGraficoMES9.AsFloat;
  ClientOrdem.AsInteger := 4;
  Client.Post;
  Client.Insert;
  ClientMes.AsString := IntToStr(mes10)+'-'+IntToStr(ano10);;
  ClientQtd.AsFloat := Dm3.ConsumoMPGraficoMES10.AsFloat;
  ClientOrdem.AsInteger := 3;
  Client.Post;
  Client.Insert;
  ClientMes.AsString := IntToStr(mes11)+'-'+IntToStr(ano11);;
  ClientQtd.AsFloat := Dm3.ConsumoMPGraficoMES11.AsFloat;
  ClientOrdem.AsInteger := 2;
  Client.Post;
  Client.Insert;
  ClientMes.AsString := IntToStr(mes12)+'-'+IntToStr(ano12);;
  ClientQtd.AsFloat := Dm3.ConsumoMPGraficoMES12.AsFloat;
  ClientOrdem.AsInteger := 1;
  Client.Post;

  Client.IndexFieldNames := 'Ordem';

end;

procedure TFGraficoConsumoMP.FormShow(Sender: TObject);
begin
  edtData.Date := Date;
  btnMostrar.Click;
end;

end.
