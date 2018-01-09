unit UAtualizaTecidosEstofados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ComCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  AppEvnts, rxToolEdit, rxCurrEdit;

type
  TFAtualizaTecidosEstofados = class(TForm)
    ConsProdutos: TADOQuery;
    PaginaControle: TPageControl;
    tbCadastro: TTabSheet;
    tbConsulta: TTabSheet;
    edtPesquisa: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    ConsProdutosCODPRO: TStringField;
    ConsProdutosDESPRO: TStringField;
    ConsProdutosCODDER: TStringField;
    ConsProdutosUSU_CORUNI: TBCDField;
    ConsProdutosUSU_CMP1BB: TBCDField;
    ConsProdutosUSU_CMP1AE: TBCDField;
    ConsProdutosUSU_DATATU: TDateTimeField;
    dsConsProdutos: TDataSource;
    btnSelecionar: TBitBtn;
    ConsDerivacoes: TADOQuery;
    ConsDerivacoesCODPRO: TStringField;
    ConsDerivacoesDESPRO: TStringField;
    ConsDerivacoesCODDER: TStringField;
    ConsDerivacoesUSU_CORUNI: TBCDField;
    ConsDerivacoesUSU_CMP1BB: TBCDField;
    ConsDerivacoesUSU_CMP1AE: TBCDField;
    ConsDerivacoesUSU_DATATU: TDateTimeField;
    dsConsDerivacoes: TDataSource;
    dbeCODPRO: TDBEdit;
    DBEDESPRO: TDBEdit;
    lbl1: TLabel;
    dbg1: TDBGrid;
    ApplicationEvents1: TApplicationEvents;
    edtLiso: TCurrencyEdit;
    edtFlorido: TCurrencyEdit;
    edtUnica: TCurrencyEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    btnAtualizar: TBitBtn;
    procedure edtPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ConsProdutosAfterScroll(DataSet: TDataSet);
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAtualizaTecidosEstofados: TFAtualizaTecidosEstofados;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFAtualizaTecidosEstofados.btnAtualizarClick(Sender: TObject);
var
  vnUnica1,vnUnica2,vnUnica3 : Double;
  vnLiso1,vnLiso2,vnLiso3 : Double;
  vnFlorido1,vnFlorido2,vnFlorido3 : Double;
begin

if (edtUnica.Value > 0) and (edtLiso.Value > 0) and (edtFlorido.Value > 0) then
   begin
     vnUnica2 := edtUnica.Value * 0.45;
     vnUnica3:= edtUnica.Value * 0.55;
     vnUnica1 := vnUnica2 - (vnUnica2 * 0.20);

     vnLiso2 := edtLiso.Value * 0.45;
     vnLiso3 := edtLiso.Value * 0.55;
     vnLiso1 := vnLiso2 - (vnLiso2 * 0.20);

     vnFlorido2 := edtFlorido.Value * 0.45;
     vnFlorido3 := edtFlorido.Value * 0.55;
     vnFlorido1 := vnFlorido2 - (vnFlorido2 * 0.20);

     DmOra.ConsSql.Close;
     DmOra.ConsSql.SQL.Clear;
     DmOra.ConsSql.SQL.Add('UPDATE E075DER SET USU_CORUNI = :CORUNI,');
     DmOra.ConsSql.SQL.Add('                   USU_CMP1BB = :CMP1BB,');
     DmOra.ConsSql.SQL.Add('                   USU_CMP1AE = :CMP1AE');
     DmOra.ConsSql.SQL.Add('           WHERE');
     DmOra.ConsSql.SQL.Add('           CODEMP = 1 AND');
     DmOra.ConsSql.SQL.Add('           CODPRO = :CODPRO AND');
     DmOra.ConsSql.SQL.Add('           CODDER IN (''11'',''12'',''13'',''14'')');

     DmOra.ConsSql.Parameters.ParamByName('CODPRO').Value := ConsProdutosCODPRO.Value;
     DmOra.ConsSql.Parameters.ParamByName('CORUNI').Value := vnUnica1;
     DmOra.ConsSql.Parameters.ParamByName('CMP1BB').Value := vnLiso1;
     DmOra.ConsSql.Parameters.ParamByName('CMP1AE').Value := vnFlorido1;
     DmOra.ConsSql.ExecSQL;

     DmOra.ConsSql.Close;
     DmOra.ConsSql.SQL.Clear;
     DmOra.ConsSql.SQL.Add('UPDATE E075DER SET USU_CORUNI = :CORUNI,');
     DmOra.ConsSql.SQL.Add('                   USU_CMP1BB = :CMP1BB,');
     DmOra.ConsSql.SQL.Add('                   USU_CMP1AE = :CMP1AE');
     DmOra.ConsSql.SQL.Add('           WHERE');
     DmOra.ConsSql.SQL.Add('           CODEMP = 1 AND');
     DmOra.ConsSql.SQL.Add('           CODPRO = :CODPRO AND');
     DmOra.ConsSql.SQL.Add('           CODDER IN (''21'',''22'',''23'',''24'')');

     DmOra.ConsSql.Parameters.ParamByName('CODPRO').Value := ConsProdutosCODPRO.Value;
     DmOra.ConsSql.Parameters.ParamByName('CORUNI').Value := vnUnica2;
     DmOra.ConsSql.Parameters.ParamByName('CMP1BB').Value := vnLiso2;
     DmOra.ConsSql.Parameters.ParamByName('CMP1AE').Value := vnFlorido2;
     DmOra.ConsSql.ExecSQL;

     DmOra.ConsSql.Close;
     DmOra.ConsSql.SQL.Clear;
     DmOra.ConsSql.SQL.Add('UPDATE E075DER SET USU_CORUNI = :CORUNI,');
     DmOra.ConsSql.SQL.Add('                   USU_CMP1BB = :CMP1BB,');
     DmOra.ConsSql.SQL.Add('                   USU_CMP1AE = :CMP1AE');
     DmOra.ConsSql.SQL.Add('           WHERE');
     DmOra.ConsSql.SQL.Add('           CODEMP = 1 AND');
     DmOra.ConsSql.SQL.Add('           CODPRO = :CODPRO AND');
     DmOra.ConsSql.SQL.Add('           CODDER IN (''31'',''32'',''33'',''34'')');

     DmOra.ConsSql.Parameters.ParamByName('CODPRO').Value := ConsProdutosCODPRO.Value;
     DmOra.ConsSql.Parameters.ParamByName('CORUNI').Value := vnUnica3;
     DmOra.ConsSql.Parameters.ParamByName('CMP1BB').Value := vnLiso3;
     DmOra.ConsSql.Parameters.ParamByName('CMP1AE').Value := vnFlorido3;
     DmOra.ConsSql.ExecSQL;

     DmOra.ConsSql.Close;
     DmOra.ConsSql.SQL.Clear;
     DmOra.ConsSql.SQL.Add('UPDATE E075PRO');
     DmOra.ConsSql.SQL.Add('SET USU_DATATU = :DATATU');
     DmOra.ConsSql.SQL.Add('WHERE');
     DmOra.ConsSql.SQL.Add('CODEMP = 1 AND');
     DmOra.ConsSql.SQL.Add('CODPRO = :CODPRO');
     DmOra.ConsSql.Parameters.ParamByName('CODPRO').Value := ConsProdutosCODPRO.Value;
     DmOra.ConsSql.Parameters.ParamByName('DATATU').Value := Date;
     DmOra.ConsSql.ExecSQL;


     ConsDerivacoes.Close;
     ConsDerivacoes.Parameters.ParamByName('CODPRO').Value := ConsProdutosCODPRO.Value;
     ConsDerivacoes.Open;
   end;

end;

procedure TFAtualizaTecidosEstofados.btnSelecionarClick(Sender: TObject);
begin
  if not ConsProdutos.IsEmpty then
     begin
       PaginaControle.ActivePageIndex := 0;
     end;
end;

procedure TFAtualizaTecidosEstofados.ConsProdutosAfterScroll(DataSet: TDataSet);
begin
       ConsDerivacoes.Close;
       ConsDerivacoes.Parameters.ParamByName('CODPRO').Value := ConsProdutosCODPRO.Value;
       ConsDerivacoes.Open;

end;

procedure TFAtualizaTecidosEstofados.DBGrid1DblClick(Sender: TObject);
begin
  if not ConsProdutos.IsEmpty then
     begin
       btnSelecionar.Click;
     end;
end;

procedure TFAtualizaTecidosEstofados.edtPesquisaChange(Sender: TObject);
begin
    ConsProdutos.Close;
    ConsProdutos.SQL.Clear;
    ConsProdutos.SQL.Add('SELECT e075der.codpro,e075pro.despro,e075der.codder,');
    ConsProdutos.SQL.Add(' e075der.usu_coruni,e075der.usu_cmp1bb,e075der.usu_cmp1ae,e075pro.usu_datatu');
    ConsProdutos.SQL.Add(' FROM E075DER');
    ConsProdutos.SQL.Add(' INNER JOIN E075PRO ON E075PRO.CODEMP = E075DER.CODEMP AND');
    ConsProdutos.SQL.Add('                      E075PRO.CODPRO = E075DER.CODPRO');
    ConsProdutos.SQL.Add(' WHERE');
    ConsProdutos.SQL.Add(' E075PRO.SITPRO = ''A'' AND');
    ConsProdutos.SQL.Add(' E075PRO.CODORI = 01 AND');
    ConsProdutos.SQL.Add(' E075PRO.CODAGP = ''ESTOF''');
    ConsProdutos.SQL.Add(' AND E075PRO.DESPRO LIKE'+QuotedStr('%'+edtPesquisa.Text+'%'));
    ConsProdutos.SQL.Add(' order by e075pro.codpro,e075der.codder');
    ConsProdutos.Open;

    if ConsProdutos.IsEmpty then
     begin
       ConsDerivacoes.Close;
     end;
end;

procedure TFAtualizaTecidosEstofados.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAtualizaTecidosEstofados.FormShow(Sender: TObject);
begin
    edtPesquisaChange(Sender);
end;

end.
