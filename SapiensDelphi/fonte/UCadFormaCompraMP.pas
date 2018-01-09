unit UCadFormaCompraMP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFCadFormaCompraMP = class(TForm)
    dbg1: TDBGrid;
    pnl1: TPanel;
    Label1: TLabel;
    dbedtUSU_CODPRO: TDBEdit;
    dsCadUSU_T210Per: TDataSource;
    Label2: TLabel;
    dbedtUSU_VLR001: TDBEdit;
    Label3: TLabel;
    dbedtUSU_VLR101: TDBEdit;
    Label4: TLabel;
    dbedtUSU_VLRTOT: TDBEdit;
    Label5: TLabel;
    dbedtUSU_PER001: TDBEdit;
    Label6: TLabel;
    dbedtUSU_PER101: TDBEdit;
    Label7: TLabel;
    dbedtUSU_QTD001: TDBEdit;
    Label8: TLabel;
    dbedtUSU_QTD101: TDBEdit;
    edtDesPro: TEdit;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    btnExcluir: TBitBtn;
    btnConsProduto: TBitBtn;
    dsConsUSU_T210Per: TDataSource;
    Label9: TLabel;
    edtDesProPesq: TEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnConsProdutoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsCadUSU_T210PerStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtUSU_CODPROExit(Sender: TObject);
    procedure dbedtUSU_VLR001Exit(Sender: TObject);
    procedure dbedtUSU_VLR101Exit(Sender: TObject);
    procedure edtDesProPesqChange(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadFormaCompraMP: TFCadFormaCompraMP;

implementation

uses UDmOra, UConsGeralNfEnt;

{$R *.dfm}

procedure TFCadFormaCompraMP.btnAlterarClick(Sender: TObject);
begin
  if not DmOra.ConsUSU_T210Per.IsEmpty then
     begin
       DmOra.CadUSU_T210Per.Close;
       DmOra.CadUSU_T210Per.Parameters.ParamByName('SEQPER').Value := DmOra.ConsUSU_T210PerUSU_SEQPER.AsInteger;
       DmOra.CadUSU_T210Per.Open;
       if not DmOra.CadUSU_T210Per.IsEmpty then
         begin
           DmOra.CadUSU_T210Per.Edit;
         end;
     end;
end;

procedure TFCadFormaCompraMP.btnCancelarClick(Sender: TObject);
begin
   DmOra.CadUSU_T210Per.Cancel;
   edtDesPro.Clear;
end;

procedure TFCadFormaCompraMP.btnConfirmarClick(Sender: TObject);
begin
  if DmOra.CadUSU_T210PerUSU_CODPRO.Value = '' then
     begin
       Application.MessageBox('Informe a matéria prima','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtUSU_CODPRO;
       Abort;
     end;

  if DmOra.CadUSU_T210PerUSU_VLRTOT.AsFloat = 0 then
     begin
       Application.MessageBox('Informe o valor para 001 ou 101','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtUSU_VLRTOT;
       Abort;
     end;

    if DmOra.CadUSU_T210Per.State in [dsInsert] then
       begin
           DmOra.ConsSql.Close;
           DmOra.ConsSql.SQL.Clear;
           DmOra.ConsSql.SQL.Add('select max(usu_seqper) as seqper from usu_t210per');
           DmOra.ConsSql.Open;
           if not DmOra.ConsSql.IsEmpty then
              DmOra.CadUSU_T210PerUSU_SEQPER.AsInteger := DmOra.ConsSql.FieldByName('seqper').AsInteger + 1
           else
              DmOra.CadUSU_T210PerUSU_SEQPER.AsInteger := 1;
       end;


  DmOra.CadUSU_T210Per.Post;
  edtDesProPesqChange(Sender);
  DmOra.CadUSU_T210Per.Close;
  edtDesPro.Clear;

end;

procedure TFCadFormaCompraMP.btnNovoClick(Sender: TObject);
begin
DmOra.CadUSU_T210Per.Open;
DmOra.CadUSU_T210Per.Insert;
edtDesPro.Clear;
ActiveControl := dbedtUSU_CODPRO;
end;

procedure TFCadFormaCompraMP.dbedtUSU_CODPROExit(Sender: TObject);
begin

  if DmOra.CadUSU_T210Per.State in [dsInsert,dsEdit] then
     begin
        if dbedtUSU_CODPRO.Text <> '' then
           begin
             DmOra.ConsSql.Close;
             DmOra.ConsSql.SQL.Clear;
             DmOra.ConsSql.SQL.Add('SELECT CODPRO,DESPRO');
             DmOra.ConsSql.SQL.Add('          FROM E075PRO');
             DmOra.ConsSql.SQL.Add('          WHERE');
             DmOra.ConsSql.SQL.Add('            CODEMP = 1 AND');
             DmOra.ConsSql.SQL.Add('            CODPRO = :CODPRO');
             DmOra.ConsSql.Parameters.ParamByName('CODPRO').Value := dbedtUSU_CODPRO.Text;
             DmOra.ConsSql.Open;
             if DmOra.ConsSql.IsEmpty then
                begin
                  edtDesPro.Clear;
                  Application.MessageBox('Matéria Prima não encontrada','Aviso',MB_ICONWARNING+MB_OK);
                end
             else
                begin
                  edtDesPro.Text := DmOra.ConsSql.FieldByName('DESPRO').AsString;
                end;
           end
        else
           begin
             edtDesPro.Clear;
           end;
     end;

end;

procedure TFCadFormaCompraMP.dbedtUSU_VLR001Exit(Sender: TObject);
begin
if DmOra.CadUSU_T210Per.State in [dsInsert,dsEdit] then
     begin
        DmOra.CadUSU_T210PerUSU_VLRTOT.Value := DmOra.CadUSU_T210PerUSU_VLR001.AsFloat + DmOra.CadUSU_T210PerUSU_VLR101.AsFloat;
        if DmOra.CadUSU_T210PerUSU_VLRTOT.Value > 0 then
           begin
              DmOra.CadUSU_T210PerUSU_PER001.AsFloat := (DmOra.CadUSU_T210PerUSU_VLR001.AsFloat * 100) / DmOra.CadUSU_T210PerUSU_VLRTOT.Value;
              DmOra.CadUSU_T210PerUSU_PER101.AsFloat := (DmOra.CadUSU_T210PerUSU_VLR101.AsFloat * 100) / DmOra.CadUSU_T210PerUSU_VLRTOT.Value;
           end;
     end;
end;

procedure TFCadFormaCompraMP.dbedtUSU_VLR101Exit(Sender: TObject);
begin
  if DmOra.CadUSU_T210Per.State in [dsInsert,dsEdit] then
     begin
        DmOra.CadUSU_T210PerUSU_VLRTOT.Value := DmOra.CadUSU_T210PerUSU_VLR001.AsFloat + DmOra.CadUSU_T210PerUSU_VLR101.AsFloat;
        if DmOra.CadUSU_T210PerUSU_VLRTOT.Value > 0 then
           begin
              DmOra.CadUSU_T210PerUSU_PER001.AsFloat := (DmOra.CadUSU_T210PerUSU_VLR001.AsFloat * 100) / DmOra.CadUSU_T210PerUSU_VLRTOT.Value;
              DmOra.CadUSU_T210PerUSU_PER101.AsFloat := (DmOra.CadUSU_T210PerUSU_VLR101.AsFloat * 100) / DmOra.CadUSU_T210PerUSU_VLRTOT.Value;
           end;
     end;
end;

procedure TFCadFormaCompraMP.dsCadUSU_T210PerStateChange(Sender: TObject);
begin
  if DmOra.CadUSU_T210Per.State in [dsInsert,dsEdit] then
     begin
       btnNovo.Enabled := false;
       btnExcluir.Enabled := False;
       btnAlterar.Enabled := false;
       btnCancelar.Enabled := True;
       btnConfirmar.Enabled := True;
       btnConsProduto.Enabled := True;
       dbedtUSU_CODPRO.ReadOnly := false;
     end
  else
     begin
       btnNovo.Enabled := True;
       btnExcluir.Enabled := True;
       btnAlterar.Enabled := True;
       btnCancelar.Enabled := False;
       btnConfirmar.Enabled := False;
       btnConsProduto.Enabled := False;
       dbedtUSU_CODPRO.ReadOnly := True;
     end;
end;

procedure TFCadFormaCompraMP.edtDesProPesqChange(Sender: TObject);
begin
  DmOra.ConsUSU_T210Per.Close;
  DmOra.ConsUSU_T210Per.SQL.Clear;
  DmOra.ConsUSU_T210Per.SQL.Add('select usu_t210per.*,e075pro.despro,e075pro.unimed');
  DmOra.ConsUSU_T210Per.SQL.Add('  from usu_t210per');
  DmOra.ConsUSU_T210Per.SQL.Add('  inner join e075pro on e075pro.codpro = usu_t210per.usu_codpro');
  DmOra.ConsUSU_T210Per.SQL.Add(' where');
  DmOra.ConsUSU_T210Per.SQL.Add(' usu_t210per.usu_codpro <> 999999'); //para deixar o where fixo
  DmOra.ConsUSU_T210Per.SQL.Add(' and e075pro.despro like' + QuotedStr('%'+edtDesProPesq.Text+'%'));
  DmOra.ConsUSU_T210Per.SQL.Add('order by e075pro.despro');
  DmOra.ConsUSU_T210Per.Open;
end;

procedure TFCadFormaCompraMP.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFCadFormaCompraMP.FormShow(Sender: TObject);
begin
  DmOra.CadUSU_T210Per.Open;

  edtDesProPesqChange(Sender);
  {DmOra.ConsUSU_T210Per.Close;
  DmOra.ConsUSU_T210Per.SQL.Clear;
  DmOra.ConsUSU_T210Per.SQL.Add('select usu_t210per.*,e075pro.despro,e075pro.unimed');
  DmOra.ConsUSU_T210Per.SQL.Add('  from usu_t210per');
  DmOra.ConsUSU_T210Per.SQL.Add('  inner join e075pro on e075pro.codpro = usu_t210per.usu_codpro');
  DmOra.ConsUSU_T210Per.SQL.Add(' where');
  DmOra.ConsUSU_T210Per.SQL.Add(' usu_t210per.usu_codpro <> 999999'); //para deixar o where fixo
  DmOra.ConsUSU_T210Per.SQL.Add('');
  DmOra.ConsUSU_T210Per.Open; }
end;

procedure TFCadFormaCompraMP.btnConsProdutoClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,e075pro.codfam,e075pro.codori';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where codori not in (00,01)';
    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodPro';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FCadFormaCompraMP';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
    ActiveControl := dbedtUSU_CODPRO;
end;

procedure TFCadFormaCompraMP.btnExcluirClick(Sender: TObject);
begin
if not DmOra.ConsUSU_T210Per.IsEmpty then
     begin
       DmOra.CadUSU_T210Per.Close;
       DmOra.CadUSU_T210Per.Parameters.ParamByName('SEQPER').Value := DmOra.ConsUSU_T210PerUSU_SEQPER.AsInteger;
       DmOra.CadUSU_T210Per.Open;
       if not DmOra.CadUSU_T210Per.IsEmpty then
         begin
           if Application.MessageBox('Deseja realmente excluir o registro?','Atenção',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = mrYes then
              begin
                 DmOra.CadUSU_T210Per.Delete;
                 edtDesProPesqChange(Sender);
              end;
         end;
     end;
end;

end.
