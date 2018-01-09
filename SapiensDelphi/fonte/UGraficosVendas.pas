unit UGraficosVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, TeEngine, ExtCtrls, TeeProcs, Chart, DBChart, StdCtrls,
  Mask, rxToolEdit, Buttons, Series, DateUtils, Grids, DBGrids, TeCanvas, DB,
  ADODB, rxCurrEdit;

type
  TFGraficosVendas = class(TForm)
    PaginaControle: TPageControl;
    tsTodosRep: TTabSheet;
    dbcht1: TDBChart;
    pnl1: TPanel;
    EdtDataIni: TDateEdit;
    EdtDataFim: TDateEdit;
    btnMostrar: TBitBtn;
    pnl2: TPanel;
    dlgPntPrint: TPrintDialog;
    btnImprimir: TBitBtn;
    tsMensalRep: TTabSheet;
    dbg1: TDBGrid;
    dbcht2: TDBChart;
    ConsRep: TADOQuery;
    ConsRepCODREP: TIntegerField;
    ConsRepNOMREP: TStringField;
    ConsRepAPEREP: TStringField;
    ConsRepSITREP: TStringField;
    dsConsRep: TDataSource;
    edtAnoMensal: TCurrencyEdit;
    Series2: TLineSeries;
    btnImprimirMensal: TBitBtn;
    tsTrimestralRep: TTabSheet;
    dbg2: TDBGrid;
    dbcht3: TDBChart;
    Series3: TFastLineSeries;
    edtAnoTrimestral: TCurrencyEdit;
    btnImprimirTrimestralRep: TBitBtn;
    tsRegioesGeral: TTabSheet;
    pnl3: TPanel;
    pnl4: TPanel;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    btnMostrarRegioesGeral: TBitBtn;
    btnImprimirRegioesGeral: TBitBtn;
    pgcPaginaControleRegioes: TPageControl;
    tsRegioesValor: TTabSheet;
    dbcht4: TDBChart;
    Series4: TPieSeries;
    tsRegioesPercentual: TTabSheet;
    dbcht5: TDBChart;
    Series5: TPieSeries;
    Series1: TBarSeries;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ConsRepAfterScroll(DataSet: TDataSet);
    procedure btnImprimirMensalClick(Sender: TObject);
    procedure btnImprimirTrimestralRepClick(Sender: TObject);
    procedure btnMostrarRegioesGeralClick(Sender: TObject);
    procedure btnImprimirRegioesGeralClick(Sender: TObject);
    procedure pgcPaginaControleRegioesDrawTab(Control: TCustomTabControl;
      TabIndex: Integer; const Rect: TRect; Active: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGraficosVendas: TFGraficosVendas;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFGraficosVendas.btnImprimirClick(Sender: TObject);
begin
if dlgPntPrint.Execute then
   begin
     dbcht1.Print;
   end;
end;

procedure TFGraficosVendas.btnImprimirMensalClick(Sender: TObject);
begin
if dlgPntPrint.Execute then
   begin
     dbcht2.Print;
   end;
end;

procedure TFGraficosVendas.btnImprimirRegioesGeralClick(Sender: TObject);
begin
if dlgPntPrint.Execute then
   begin
     if pgcPaginaControleRegioes.ActivePageIndex = 0 then
        dbcht4.Print
     else
        dbcht5.Print;
   end;
end;

procedure TFGraficosVendas.btnImprimirTrimestralRepClick(Sender: TObject);
begin
if dlgPntPrint.Execute then
   begin
     dbcht3.Print;
   end;
end;

procedure TFGraficosVendas.btnMostrarClick(Sender: TObject);
begin
  if EdtDataIni.Date = 0 then
     begin
       Application.MessageBox('INFORME A DATA INICIAL','AVISO', MB_ICONWARNING+MB_OK);
       ActiveControl := EdtDataIni;
       Abort;
     end;
  if EdtDataFim.Date = 0 then
     begin
       Application.MessageBox('INFORME A DATA FINAL','AVISO', MB_ICONWARNING+MB_OK);
       ActiveControl := EdtDataFim;
       Abort;
     end;

  DmOra.ClientGraficoGeralRep.Close;
  DmOra.GraficoGeralRep.Close;
  DmOra.GraficoGeralRep.Parameters.ParamByName('DATINI').Value := EdtDataIni.Date;
  DmOra.GraficoGeralRep.Parameters.ParamByName('DATFIM').Value := EdtDataFim.Date;
  DmOra.GraficoGeralRep.Open;
  DmOra.ClientGraficoGeralRep.Open;



end;

procedure TFGraficosVendas.btnMostrarRegioesGeralClick(Sender: TObject);
begin
   if EdtDatIni.Date = 0 then
     begin
       Application.MessageBox('INFORME A DATA INICIAL','AVISO', MB_ICONWARNING+MB_OK);
       ActiveControl := EdtDatIni;
       Abort;
     end;
  if EdtDatFim.Date = 0 then
     begin
       Application.MessageBox('INFORME A DATA FINAL','AVISO', MB_ICONWARNING+MB_OK);
       ActiveControl := EdtDatFim;
       Abort;
     end;

    DmOra.ClientGraficoRegioesGeral.Close;
    DmOra.GraficoRegioesGeral.Close;
    DmOra.GraficoRegioesGeral.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
    DmOra.GraficoRegioesGeral.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
    DmOra.GraficoRegioesGeral.Open;
    DmOra.ClientGraficoRegioesGeral.Open;


    Refresh;

end;

procedure TFGraficosVendas.ConsRepAfterScroll(DataSet: TDataSet);
var vnPedidos : double;
    vaMes : string;
begin
  DmOra.ClientGraficoMesalRep.Close;
  DmOra.GraficoMesalRep.Close;
  DmOra.GraficoMesalRep.Parameters.ParamByName('CODREP').Value := ConsRepCODREP.Value;
  DmOra.GraficoMesalRep.Parameters.ParamByName('ANO').Value := edtAnoMensal.AsInteger;
  DmOra.GraficoMesalRep.Open;
  DmOra.ClientGraficoMesalRep.Open;

  //dbcht2.Series[0].Title := 'Mensal  -  '+ConsRepAPEREP.Value;

  //TRIMESTRE
  DmOra.ClientGraficoTrimestreRep.Open;
  DmOra.ClientGraficoTrimestreRep.First;
  while not DmOra.ClientGraficoTrimestreRep.Eof do
    begin
      DmOra.ClientGraficoTrimestreRep.Delete;
    end;


  //1º
  vnPedidos := 0;
  DmOra.GraficoTrimestreRep.Close;
  DmOra.GraficoTrimestreRep.SQL.Clear;
  DmOra.GraficoTrimestreRep.SQL.Add('SELECT SUM(((E120IPD.QTDPED - E120IPD.QTDCAN)* E120IPD.PREUNI)) AS PEDIDOS,');
  DmOra.GraficoTrimestreRep.SQL.Add('       E120PED.CODREP,E090REP.NOMREP,E090REP.APEREP, (EXTRACT(MONTH FROM E120PED.DATEMI))AS MESEMI');
  DmOra.GraficoTrimestreRep.SQL.Add('       FROM E120IPD');
  DmOra.GraficoTrimestreRep.SQL.Add('INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120PED.CODFIL = E120IPD.CODFIL AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120PED.NUMPED = E120IPD.NUMPED');
  DmOra.GraficoTrimestreRep.SQL.Add('INNER JOIN E090REP ON E090REP.CODREP = E120PED.CODREP');
  DmOra.GraficoTrimestreRep.SQL.Add('                      WHERE');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120PED.CODREP = :CODREP AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120IPD.TNSPRO IN (''90100'',''90106'',''90150'',''90156'') AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      EXTRACT(MONTH FROM E120PED.DATEMI) IN (1,2,3) AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      EXTRACT(YEAR FROM E120PED.DATEMI) = :ANO');
  DmOra.GraficoTrimestreRep.SQL.Add('                      GROUP BY E120PED.CODREP,E090REP.NOMREP,E090REP.APEREP,(EXTRACT(MONTH FROM E120PED.DATEMI))');
  DmOra.GraficoTrimestreRep.SQL.Add('                      ORDER BY MESEMI');
  DmOra.GraficoTrimestreRep.Parameters.ParamByName('CODREP').Value := ConsRepCODREP.Value;
  DmOra.GraficoTrimestreRep.Parameters.ParamByName('ANO').Value := edtAnoTrimestral.AsInteger;
  DmOra.GraficoTrimestreRep.Open;
  DmOra.GraficoTrimestreRep.First;
  while not DmOra.GraficoTrimestreRep.Eof do
    begin
       vnPedidos := vnPedidos + DmOra.GraficoTrimestreRepPEDIDOS.AsFloat;
       DmOra.GraficoTrimestreRep.Next;
    end;

  DmOra.ClientGraficoTrimestreRep.Open;
  DmOra.ClientGraficoTrimestreRep.Insert;
  DmOra.ClientGraficoTrimestreRepPEDIDOS.Value := vnPedidos;
  DmOra.ClientGraficoTrimestreRepCODREP.Value := ConsRepCODREP.Value;
  DmOra.ClientGraficoTrimestreRepAPEREP.Value := ConsRepAPEREP.Value;
  DmOra.ClientGraficoTrimestreRepTRIMESTRE.Value := 1;
  DmOra.ClientGraficoTrimestreRepDESTRIMESTRE.Value := '1º';
  DmOra.ClientGraficoTrimestreRep.Post;

  //2º
  vnPedidos := 0;
  DmOra.GraficoTrimestreRep.Close;
  DmOra.GraficoTrimestreRep.SQL.Clear;
  DmOra.GraficoTrimestreRep.SQL.Add('SELECT SUM(((E120IPD.QTDPED - E120IPD.QTDCAN)* E120IPD.PREUNI)) AS PEDIDOS,');
  DmOra.GraficoTrimestreRep.SQL.Add('       E120PED.CODREP,E090REP.NOMREP,E090REP.APEREP, (EXTRACT(MONTH FROM E120PED.DATEMI))AS MESEMI');
  DmOra.GraficoTrimestreRep.SQL.Add('       FROM E120IPD');
  DmOra.GraficoTrimestreRep.SQL.Add('INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120PED.CODFIL = E120IPD.CODFIL AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120PED.NUMPED = E120IPD.NUMPED');
  DmOra.GraficoTrimestreRep.SQL.Add('INNER JOIN E090REP ON E090REP.CODREP = E120PED.CODREP');
  DmOra.GraficoTrimestreRep.SQL.Add('                      WHERE');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120PED.CODREP = :CODREP AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120IPD.TNSPRO IN (''90100'',''90106'',''90150'',''90156'') AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      EXTRACT(MONTH FROM E120PED.DATEMI) IN (4,5,6) AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      EXTRACT(YEAR FROM E120PED.DATEMI) = :ANO');
  DmOra.GraficoTrimestreRep.SQL.Add('                      GROUP BY E120PED.CODREP,E090REP.NOMREP,E090REP.APEREP,(EXTRACT(MONTH FROM E120PED.DATEMI))');
  DmOra.GraficoTrimestreRep.SQL.Add('                      ORDER BY MESEMI');
  DmOra.GraficoTrimestreRep.Parameters.ParamByName('CODREP').Value := ConsRepCODREP.Value;
  DmOra.GraficoTrimestreRep.Parameters.ParamByName('ANO').Value := edtAnoTrimestral.AsInteger;
  DmOra.GraficoTrimestreRep.Open;
  DmOra.GraficoTrimestreRep.First;
  while not DmOra.GraficoTrimestreRep.Eof do
    begin
       vnPedidos := vnPedidos + DmOra.GraficoTrimestreRepPEDIDOS.AsFloat;
       DmOra.GraficoTrimestreRep.Next;
    end;

  DmOra.ClientGraficoTrimestreRep.Insert;
  DmOra.ClientGraficoTrimestreRepPEDIDOS.Value := vnPedidos;
  DmOra.ClientGraficoTrimestreRepCODREP.Value := ConsRepCODREP.Value;
  DmOra.ClientGraficoTrimestreRepAPEREP.Value := ConsRepAPEREP.Value;
  DmOra.ClientGraficoTrimestreRepTRIMESTRE.Value := 2;
  DmOra.ClientGraficoTrimestreRepDESTRIMESTRE.Value := '2º';
  DmOra.ClientGraficoTrimestreRep.Post;

  //3º
  vnPedidos := 0;
  DmOra.GraficoTrimestreRep.Close;
  DmOra.GraficoTrimestreRep.SQL.Clear;
  DmOra.GraficoTrimestreRep.SQL.Add('SELECT SUM(((E120IPD.QTDPED - E120IPD.QTDCAN)* E120IPD.PREUNI)) AS PEDIDOS,');
  DmOra.GraficoTrimestreRep.SQL.Add('       E120PED.CODREP,E090REP.NOMREP,E090REP.APEREP, (EXTRACT(MONTH FROM E120PED.DATEMI))AS MESEMI');
  DmOra.GraficoTrimestreRep.SQL.Add('       FROM E120IPD');
  DmOra.GraficoTrimestreRep.SQL.Add('INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120PED.CODFIL = E120IPD.CODFIL AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120PED.NUMPED = E120IPD.NUMPED');
  DmOra.GraficoTrimestreRep.SQL.Add('INNER JOIN E090REP ON E090REP.CODREP = E120PED.CODREP');
  DmOra.GraficoTrimestreRep.SQL.Add('                      WHERE');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120PED.CODREP = :CODREP AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120IPD.TNSPRO IN (''90100'',''90106'',''90150'',''90156'') AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      EXTRACT(MONTH FROM E120PED.DATEMI) IN (7,8,9) AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      EXTRACT(YEAR FROM E120PED.DATEMI) = :ANO');
  DmOra.GraficoTrimestreRep.SQL.Add('                      GROUP BY E120PED.CODREP,E090REP.NOMREP,E090REP.APEREP,(EXTRACT(MONTH FROM E120PED.DATEMI))');
  DmOra.GraficoTrimestreRep.SQL.Add('                      ORDER BY MESEMI');
  DmOra.GraficoTrimestreRep.Parameters.ParamByName('CODREP').Value := ConsRepCODREP.Value;
  DmOra.GraficoTrimestreRep.Parameters.ParamByName('ANO').Value := edtAnoTrimestral.AsInteger;
  DmOra.GraficoTrimestreRep.Open;
  DmOra.GraficoTrimestreRep.First;
  while not DmOra.GraficoTrimestreRep.Eof do
    begin
       vnPedidos := vnPedidos + DmOra.GraficoTrimestreRepPEDIDOS.AsFloat;
       DmOra.GraficoTrimestreRep.Next;
    end;

  DmOra.ClientGraficoTrimestreRep.Insert;
  DmOra.ClientGraficoTrimestreRepPEDIDOS.Value := vnPedidos;
  DmOra.ClientGraficoTrimestreRepCODREP.Value := ConsRepCODREP.Value;
  DmOra.ClientGraficoTrimestreRepAPEREP.Value := ConsRepAPEREP.Value;
  DmOra.ClientGraficoTrimestreRepTRIMESTRE.Value := 3;
  DmOra.ClientGraficoTrimestreRepDESTRIMESTRE.Value := '3º';
  DmOra.ClientGraficoTrimestreRep.Post;

  //4º
  vnPedidos := 0;
  DmOra.GraficoTrimestreRep.Close;
  DmOra.GraficoTrimestreRep.SQL.Clear;
  DmOra.GraficoTrimestreRep.SQL.Add('SELECT SUM(((E120IPD.QTDPED - E120IPD.QTDCAN)* E120IPD.PREUNI)) AS PEDIDOS,');
  DmOra.GraficoTrimestreRep.SQL.Add('       E120PED.CODREP,E090REP.NOMREP,E090REP.APEREP, (EXTRACT(MONTH FROM E120PED.DATEMI))AS MESEMI');
  DmOra.GraficoTrimestreRep.SQL.Add('       FROM E120IPD');
  DmOra.GraficoTrimestreRep.SQL.Add('INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120PED.CODFIL = E120IPD.CODFIL AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120PED.NUMPED = E120IPD.NUMPED');
  DmOra.GraficoTrimestreRep.SQL.Add('INNER JOIN E090REP ON E090REP.CODREP = E120PED.CODREP');
  DmOra.GraficoTrimestreRep.SQL.Add('                      WHERE');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120PED.CODREP = :CODREP AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      E120IPD.TNSPRO IN (''90100'',''90106'',''90150'',''90156'') AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      EXTRACT(MONTH FROM E120PED.DATEMI) IN (10,11,12) AND');
  DmOra.GraficoTrimestreRep.SQL.Add('                      EXTRACT(YEAR FROM E120PED.DATEMI) = :ANO');
  DmOra.GraficoTrimestreRep.SQL.Add('                      GROUP BY E120PED.CODREP,E090REP.NOMREP,E090REP.APEREP,(EXTRACT(MONTH FROM E120PED.DATEMI))');
  DmOra.GraficoTrimestreRep.SQL.Add('                      ORDER BY MESEMI');
  DmOra.GraficoTrimestreRep.Parameters.ParamByName('CODREP').Value := ConsRepCODREP.Value;
  DmOra.GraficoTrimestreRep.Parameters.ParamByName('ANO').Value := edtAnoTrimestral.AsInteger;
  DmOra.GraficoTrimestreRep.Open;
  DmOra.GraficoTrimestreRep.First;
  while not DmOra.GraficoTrimestreRep.Eof do
    begin
       vnPedidos := vnPedidos + DmOra.GraficoTrimestreRepPEDIDOS.AsFloat;
       DmOra.GraficoTrimestreRep.Next;
    end;

  DmOra.ClientGraficoTrimestreRep.Insert;
  DmOra.ClientGraficoTrimestreRepPEDIDOS.Value := vnPedidos;
  DmOra.ClientGraficoTrimestreRepCODREP.Value := ConsRepCODREP.Value;
  DmOra.ClientGraficoTrimestreRepAPEREP.Value := ConsRepAPEREP.Value;
  DmOra.ClientGraficoTrimestreRepTRIMESTRE.Value := 4;
  DmOra.ClientGraficoTrimestreRepDESTRIMESTRE.Value := '4º';
  DmOra.ClientGraficoTrimestreRep.Post;

  DmOra.ClientGraficoTrimestreRep.IndexFieldNames := 'TRIMESTRE';
end;

procedure TFGraficosVendas.FormShow(Sender: TObject);
var Ano,Mes,Dia : word;
begin
  PaginaControle.ActivePageIndex := 0;
  pgcPaginaControleRegioes.ActivePageIndex := 0;

  EdtDataIni.Date := StartOfTheMonth(Date);
  EdtDataFim.Date := EndOfTheMonth(Date);

  EdtDatIni.Date := StartOfTheMonth(Date);
  EdtDatFim.Date := EndOfTheMonth(Date);

  DecodeDate(Date,Ano,Mes,Dia);
  edtAnoMensal.Value := Ano;
  edtAnoTrimestral.Value := Ano;

  ConsRep.Close;
  ConsRep.Open;
  ConsRep.First;


  btnMostrar.Click;
  btnMostrarRegioesGeral.Click;
end;

procedure TFGraficosVendas.pgcPaginaControleRegioesDrawTab(
  Control: TCustomTabControl; TabIndex: Integer; const Rect: TRect;
  Active: Boolean);
begin

case TabIndex of

  0: Control.Canvas.Font.Color := clGreen;

  1: Control.Canvas.Font.Color := clRed;

  2: Control.Canvas.Font.Color := clBlue;

  3: Control.Canvas.Font.Color := clYellow;

  4: Control.Canvas.Font.Color := clMaroon;

end;

    Control.Canvas.Font.Style := [fsBold];

    Control.Canvas.TextOut(Rect.left+5,Rect.top+3,pgcPaginaControleRegioes.Pages[tabindex].Caption);

    pgcPaginaControleRegioes.Pages[TabIndex].Font.Color := Control.Canvas.Font.Color;


end;

end.
