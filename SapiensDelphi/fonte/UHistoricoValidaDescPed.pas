unit UHistoricoValidaDescPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Mask, DBClient, ADODB, Buttons, DateUtils,
  DBCtrls;

type
  TFHistoricoValidaDescPed = class(TForm)
    dbg1: TDBGrid;
    dsClientConsUSU_TDescRepH: TDataSource;
    Label1: TLabel;
    edtDatVal: TMaskEdit;
    Cargas: TADOQuery;
    dbg2: TDBGrid;
    dsCargas: TDataSource;
    CargasUSU_PRECAR: TIntegerField;
    btnMostrar: TBitBtn;
    dbg3: TDBGrid;
    ConsSeqVal: TADOQuery;
    ConsSeqValUSU_SEQVAL: TIntegerField;
    dsConsSeqVal: TDataSource;
    edtQtdDif: TEdit;
    dbmmoUSU_JUSOBS: TDBMemo;
    dsCadUsu_TDescRepH: TDataSource;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDatValExit(Sender: TObject);
    procedure CargasAfterScroll(DataSet: TDataSet);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ConsSeqValAfterScroll(DataSet: TDataSet);
    procedure dbg2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHistoricoValidaDescPed: TFHistoricoValidaDescPed;

implementation

uses UDm;

{$R *.dfm}

procedure TFHistoricoValidaDescPed.btnMostrarClick(Sender: TObject);
begin
  if edtDatVal.Text <> '  /  /    ' then
     begin
       Cargas.Close;
       Cargas.Parameters.ParamByName('DATVAL').Value := StrToDate(edtDatVal.Text);
       Cargas.Open;
       if Cargas.IsEmpty then
          begin
            Dm.ClientConsUSU_TDescRepH.Close;
          end;
       Cargas.Last;
       Cargas.First;


     end
  else
     begin
       Cargas.Close;
       ConsSeqVal.Close;
       Dm.ClientConsUSU_TDescRepH.Close;
     end;
end;

procedure TFHistoricoValidaDescPed.CargasAfterScroll(DataSet: TDataSet);
begin
  ConsSeqVal.Close;
  ConsSeqVal.Parameters.ParamByName('PRECAR').Value := CargasUSU_PRECAR.Value;
  ConsSeqVal.Open
end;

procedure TFHistoricoValidaDescPed.ConsSeqValAfterScroll(DataSet: TDataSet);
begin
     Dm.ClientConsUSU_TDescRepH.Close;
     Dm.ConsUSU_TDescRepH.Close;
     Dm.ConsUSU_TDescRepH.SQL.Clear;
     Dm.ConsUSU_TDescRepH.SQL.Add('select USU_TDESCREPH.*,');
     Dm.ConsUSU_TDescRepH.SQL.Add('       E085CLI.NOMCLI,E085CLI.CIDCLI,E085CLI.SIGUFS,');
     Dm.ConsUSU_TDescRepH.SQL.Add('       E090REP.NOMREP,E090REP.APEREP,');
     Dm.ConsUSU_TDescRepH.SQL.Add('       E075PRO.DESPRO,');
     Dm.ConsUSU_TDescRepH.SQL.Add('       E028CPG.DESCPG');
     Dm.ConsUSU_TDescRepH.SQL.Add('  from USU_TDESCREPH');
     Dm.ConsUSU_TDescRepH.SQL.Add('  INNER JOIN E085CLI ON E085CLI.CODCLI = USU_TDESCREPH.USU_CODCLI');
     Dm.ConsUSU_TDescRepH.SQL.Add('  INNER JOIN E090REP ON E090REP.CODREP = USU_TDESCREPH.USU_CODREP');
     Dm.ConsUSU_TDescRepH.SQL.Add('  INNER JOIN E075PRO ON E075PRO.CODEMP = USU_TDESCREPH.USU_CODEMP AND');
     Dm.ConsUSU_TDescRepH.SQL.Add('                        E075PRO.CODPRO = USU_TDESCREPH.USU_CODPRO');
     Dm.ConsUSU_TDescRepH.SQL.Add('  INNER JOIN E028CPG ON E028CPG.CODEMP = USU_TDESCREPH.USU_CODEMP AND');
     Dm.ConsUSU_TDescRepH.SQL.Add('                        E028CPG.CODCPG = USU_TDESCREPH.USU_CODCPG');
     Dm.ConsUSU_TDescRepH.SQL.Add('       WHERE');
     Dm.ConsUSU_TDescRepH.SQL.Add('         USU_TDESCREPH.USU_PRECAR = :PRECAR AND');
     Dm.ConsUSU_TDescRepH.SQL.Add('         USU_TDESCREPH.USU_SEQVAL = :SEQVAL');
     Dm.ConsUSU_TDescRepH.SQL.Add('         ORDER BY USU_TDESCREPH.USU_NUMPED,USU_TDESCREPH.USU_CODFIL');
     Dm.ConsUSU_TDescRepH.Parameters.ParamByName('PRECAR').Value := CargasUSU_PRECAR.AsInteger;
     Dm.ConsUSU_TDescRepH.Parameters.ParamByName('SEQVAL').Value := ConsSeqValUSU_SEQVAL.AsInteger;
     Dm.ConsUSU_TDescRepH.Open;
     Dm.ClientConsUSU_TDescRepH.Open;
     Dm.ClientConsUSU_TDescRepH.Last;
     Dm.ClientConsUSU_TDescRepH.First;

     edtQtdDif.Text := 'TOTAL: '+ IntToStr(Dm.ClientConsUSU_TDescRepH.RecordCount);
end;

procedure TFHistoricoValidaDescPed.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   //GRID ZEBRADA
    if odd(Dm.ClientConsUSU_TDescRepH.RecNo) then
    dbg1.Canvas.Brush.Color:= clmenubar
    else
    dbg1.Canvas.Brush.Color:= clCream;

    TDbGrid(Sender).Canvas.font.Color:= clBlack;
    //MUDA A COR QUANDO A LINHA ESTIVER SELECIONADA
    if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
    begin
    Brush.Color := clSkyBlue;
    FillRect(Rect);
    Font.Style := [fsbold]
    end;

    TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TFHistoricoValidaDescPed.dbg2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//GRID ZEBRADA
    if odd(Cargas.RecNo) then
    dbg2.Canvas.Brush.Color:= clmenubar
    else
    dbg2.Canvas.Brush.Color:= clCream;

    TDbGrid(Sender).Canvas.font.Color:= clBlack;
    //MUDA A COR QUANDO A LINHA ESTIVER SELECIONADA
    if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
    begin
    Brush.Color := clSkyBlue;
    FillRect(Rect);
    Font.Style := [fsbold]
    end;

    TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TFHistoricoValidaDescPed.dbg3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//GRID ZEBRADA
    if odd(ConsSeqVal.RecNo) then
    dbg3.Canvas.Brush.Color:= clmenubar
    else
    dbg3.Canvas.Brush.Color:= clCream;

    TDbGrid(Sender).Canvas.font.Color:= clBlack;
    //MUDA A COR QUANDO A LINHA ESTIVER SELECIONADA
    if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
    begin
    Brush.Color := clSkyBlue;
    FillRect(Rect);
    Font.Style := [fsbold]
    end;

    TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TFHistoricoValidaDescPed.edtDatValExit(Sender: TObject);
var vdData : TDate;
begin
  if edtDatVal.Text <> '  /  /    ' then
     begin
       try
         vdData := StrToDate(edtDatVal.Text);
       except
         Application.MessageBox('Data inválida','Aviso',MB_ICONWARNING+MB_OK);
         ActiveControl := edtDatVal;
       end;

     end;

end;

procedure TFHistoricoValidaDescPed.FormShow(Sender: TObject);
begin
  edtDatVal.Text := DateToStr(Date);
  btnMostrar.Click;
  Dm.ClientConsUSU_TDescRepH.Close;
end;

end.
