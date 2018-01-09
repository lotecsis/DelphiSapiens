unit UTempoMedioPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, rxToolEdit, DB, Buttons, DateUtils,
  DBCtrls, rxCurrEdit, ExtCtrls;

type
  TFTempoMedioPedidos = class(TForm)
    dbg1: TDBGrid;
    dsClientCargasTempMed: TDataSource;
    dbg2: TDBGrid;
    dsClientPedidosTempMedio: TDataSource;
    edtTempoMedio: TCurrencyEdit;
    Label3: TLabel;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    btnMostrar: TBitBtn;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    vaCalculando : string;
  end;

var
  FTempoMedioPedidos: TFTempoMedioPedidos;

implementation

uses UDm;

{$R *.dfm}

procedure TFTempoMedioPedidos.btnMostrarClick(Sender: TObject);
var vnQtdDias, vnDiasEntre, vnQtdPed : Integer;
    vnTempoMedio : Double;
begin
  if edtDatIni.Date = 0 then
     begin
       Application.MessageBox('Informe a Data Inicial','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtDatIni;
       Abort;
     end;

  if edtDatFim.Date = 0 then
     begin
       Application.MessageBox('Informe a Data Final','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtDatFim;
       Abort;
     end;

  vaCalculando := 'S';

  Dm.ClientCargasTempMed.Close;
  Dm.ClientCargasTempMed.Open;
  Dm.ClientCargasTempMed.First;
  while not Dm.ClientCargasTempMed.Eof do
    begin
      Dm.ClientCargasTempMed.Delete;
    end;

  Dm.ConsSql.Close;
  Dm.ConsSql.SQL.Clear;
  Dm.ConsSql.SQL.Add('SELECT E135ANE.NUMANE,E135ANE.DATGER');
  Dm.ConsSql.SQL.Add('FROM E135ANE');
  Dm.ConsSql.SQL.Add('WHERE');
  Dm.ConsSql.SQL.Add('E135ANE.DATGER BETWEEN :DATINI AND :DATFIM AND');
  Dm.ConsSql.SQL.Add('E135ANE.CODEMP = 1 AND');
  Dm.ConsSql.SQL.Add('E135ANE.CODFIL = 1');
  Dm.ConsSql.SQL.Add('ORDER BY E135ANE.NUMANE DESC');
  Dm.ConsSql.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
  Dm.ConsSql.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
  Dm.ConsSql.Open;
  Dm.ConsSql.First;
  //Dm.ClientCargasTempMed.Open;
  while NOT Dm.ConsSql.Eof do   //preenche o client com os numero de cargas
    begin
      Dm.ClientCargasTempMed.Insert;
      Dm.ClientCargasTempMedNUMANE.Value := Dm.ConsSql.FieldByName('NUMANE').AsInteger;
      Dm.ClientCargasTempMed.Post;

      Dm.ConsSql.Next;
    end;

  
  Dm.ClientCargasTempMed.Last;
  Dm.ClientCargasTempMed.First;  //percorre o client com cada carga
  while not Dm.ClientCargasTempMed.Eof do
     begin
       Dm.PedidosQtdDias.Close;
       Dm.PedidosQtdDias.Parameters.ParamByName('NUMANE').Value := Dm.ClientCargasTempMedNUMANE.Value;
       Dm.PedidosQtdDias.Open;
       vnQtdDias := 0;

        Dm.PedidosQtdDias.First;
        while not Dm.PedidosQtdDias.Eof do
           begin
             vnDiasEntre := DaysBetween(Dm.PedidosQtdDiasDATA_EMISSAO.AsDateTime,Dm.PedidosQtdDiasDATA_FAT.AsDateTime);
             vnQtdDias := vnQtdDias + vnDiasEntre;
             Dm.PedidosQtdDias.Next;
           end;
       vnQtdPed := Dm.PedidosQtdDias.RecordCount;

       if vnQtdPed > 0 then
          begin
             vnTempoMedio := vnQtdDias / vnQtdPed;

             Dm.ClientCargasTempMed.Edit;
             Dm.ClientCargasTempMedQTDPED.Value := vnQtdPed;
             Dm.ClientCargasTempMedQTDDIAS.Value := vnQtdDias;
             Dm.ClientCargasTempMedTEMPMED.AsFloat := vnTempoMedio;
             Dm.ClientCargasTempMed.Post;

             Dm.ClientCargasTempMed.Next;
          end
       else
          begin
            Dm.ClientCargasTempMed.Delete;
          end;

     end;

    // Dm.ClientCargasTempMed.IndexFieldNames := ('TEMPMED');
     edtTempoMedio.Value := Dm.ClientCargasTempMedvnTotalDias.Value / Dm.ClientCargasTempMedvnTotalPedidos.Value;
     vaCalculando := 'N';
end;

procedure TFTempoMedioPedidos.FormShow(Sender: TObject);
begin
  vaCalculando := 'S';
  Dm.ClientCargasTempMed.Close;
  Dm.ClientCargasTempMed.Open;
  Dm.ClientCargasTempMed.First;
  while not Dm.ClientCargasTempMed.Eof do
    begin
      Dm.ClientCargasTempMed.Delete;
    end;

  vaCalculando := 'N';
end;

end.
