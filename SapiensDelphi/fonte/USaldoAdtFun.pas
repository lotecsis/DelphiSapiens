unit USaldoAdtFun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, Mask, rxToolEdit, DB, ADODB, DBCtrls, DBClient,
  DateUtils;

type
  TFSaldoAdtFun = class(TForm)
    dbg1: TDBGrid;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnMostrar: TBitBtn;
    dsClientConsSaldoAdtFun: TDataSource;
    dbedtvnTotal: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    cbbSituacao: TComboBox;
    Label5: TLabel;
    dbedtvnVlrPago: TDBEdit;
    Label6: TLabel;
    dbedtvnTotalGeral: TDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnMostrarClick(Sender: TObject);
    procedure dbg1TitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSaldoAdtFun: TFSaldoAdtFun;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFSaldoAdtFun.btnMostrarClick(Sender: TObject);
begin
  DmOra.ClientConsSaldoAdtFun.Close;
  DmOra.ConsSaldoAdtFun.Close;
  DmOra.ConsSaldoAdtFun.SQL.Clear;
  DmOra.ConsSaldoAdtFun.SQL.Add('SELECT USU_TRHADTFUN.*,USU_TRHFUN.USU_NOMFUN');
  DmOra.ConsSaldoAdtFun.SQL.Add('    FROM USU_TRHADTFUN');
  DmOra.ConsSaldoAdtFun.SQL.Add(' inner join USU_TRHFUN ON USU_TRHFUN.USU_NUMCAD = USU_TRHADTFUN.USU_NUMCAD');
  DmOra.ConsSaldoAdtFun.SQL.Add(' WHERE USU_TRHADTFUN.USU_NUMCAD <> 9999999'); //SÓ PARA DEIXAR O WHERE

  if cbbSituacao.Text = 'ABERTO' then
     begin
       DmOra.ConsSaldoAdtFun.SQL.Add('AND USU_SITADT = ''A''');
     end
  else
  if cbbSituacao.Text = 'PAGO' then
     begin
       DmOra.ConsSaldoAdtFun.SQL.Add('AND USU_SITADT = ''P''');
     end;


   if (edtDatIni.Date <> 0) and (edtDatFim.Date <> 0) then
      begin
        DmOra.ConsSaldoAdtFun.SQL.Add(' and USU_TRHADTFUN.USU_DATVCT BETWEEN :DATINI AND :DATFIM');
        DmOra.ConsSaldoAdtFun.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
        DmOra.ConsSaldoAdtFun.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
      end;
   DmOra.ConsSaldoAdtFun.Open;
   DmOra.ClientConsSaldoAdtFun.Open;

end;

procedure TFSaldoAdtFun.dbg1TitleClick(Column: TColumn);
var
  indice: string;
  existe: boolean;
  clientdataset_idx: TClientDataSet;
begin
   clientdataset_idx := TClientDataset(Column.Grid.DataSource.DataSet);

  if clientdataset_idx.IndexFieldNames = Column.FieldName then
  begin
    indice := AnsiUpperCase(Column.FieldName);

    try
      clientdataset_idx.IndexDefs.Find(indice);
      existe := true;
    except
      existe := false;
    end;

    if not existe then
      with clientdataset_idx.IndexDefs.AddIndexDef do begin
        Name := indice;
        Fields := Column.FieldName;
        Options := [ixDescending];
      end;
    clientdataset_idx.IndexName := indice;
    clientdataset_idx.First;
  end
  else
     begin
       clientdataset_idx.IndexFieldNames := Column.FieldName;
       clientdataset_idx.First;
     end;
end;

procedure TFSaldoAdtFun.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFSaldoAdtFun.FormShow(Sender: TObject);
begin
edtDatIni.Date := StartOfTheMonth(Date);
edtDatFim.Date := EndOfTheMonth(Date);
end;

end.
