unit USaidaMP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, RbDrawCore, RbButton, ExtCtrls,
  ComCtrls, rxToolEdit, RXDBCtrl, Buttons, Grids, DBGrids, TeEngine, Series,
  TeeProcs, Chart, DbChart;

type
  TFSaidaMt = class(TForm)
    PaginaControle: TPageControl;
    TbCadastro: TTabSheet;
    TbConsulta: TTabSheet;
    Panel1: TPanel;
    BInserir: TRbButton;
    BCancelar: TRbButton;
    BConfirmar: TRbButton;
    BAlterar: TRbButton;
    BExcluir: TRbButton;
    BSair: TRbButton;
    Label1: TLabel;
    DBEMateriaPrima: TDBEdit;
    DSSaida: TDataSource;
    Label2: TLabel;
    EdCdMtNf: TEdit;
    EdDsMtNf: TEdit;
    Label3: TLabel;
    EdDsFornecedor: TEdit;
    EdDsMateriaPrima: TEdit;
    BMtNf: TSpeedButton;
    Label4: TLabel;
    DBETpMovimento: TDBEdit;
    EdDsMovimento: TEdit;
    BMovimento: TSpeedButton;
    Label5: TLabel;
    EdQtdeEmb: TEdit;
    Label6: TLabel;
    DBEQuantidade: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEHora: TDBEdit;
    Label11: TLabel;
    DBEUsuario: TDBEdit;
    DBEData: TDBDateEdit;
    Panel2: TPanel;
    Label8: TLabel;
    EdValorTotal: TEdit;
    Label7: TLabel;
    DBEVlUnitario: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    EdUnMedida: TEdit;
    EdQtdeEmbalagem: TEdit;
    Label14: TLabel;
    Panel3: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    EdCarteira: TEdit;
    EdProcesso: TEdit;
    EdDisponivel: TEdit;
    EdSaldoAtual: TEdit;
    DBECdFornecedor: TDBEdit;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    EdData: TDateEdit;
    BPesquisa: TSpeedButton;
    DBEGridConsulta: TRxDBGrid;
    LDescricaoPesquisa: TLabel;
    DSConsulta: TDataSource;
    procedure BInserirClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure BAlterarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BMtNfClick(Sender: TObject);
    procedure DSSaidaStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBETpMovimentoExit(Sender: TObject);
    procedure EdQtdeEmbExit(Sender: TObject);
    procedure EdCdMtNfExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEQuantidadeExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure EdPesquisaExit(Sender: TObject);
    procedure EdDataExit(Sender: TObject);
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure DBEGridConsultaDblClick(Sender: TObject);
    procedure EdCdMtNfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEGridConsultaEnter(Sender: TObject);
    procedure DBEGridConsultaExit(Sender: TObject);
    procedure DBEGridConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSaidaMt: TFSaidaMt;
  movimento : string;
implementation

uses UDataModule4, UPrincipal, UDataModule1, UConsSimpMtNf, UDataModule3;

{$R *.dfm}

procedure TFSaidaMt.BInserirClick(Sender: TObject);
begin
 DataModule4.IBDSaidaMt.Open;
 DataModule4.IBDSaidaMt.Insert;
 EdCdMtNf.SetFocus;


 EdCdMtNf.Clear;
 EdDsMtNf.Clear;
 EdDsFornecedor.Clear;
 EdDsMateriaPrima.Clear;
 EdDsMovimento.Clear;
 EdQtdeEmb.Clear;
 EdUnMedida.Clear;
 EdQtdeEmbalagem.Clear;
 EdCarteira.Clear;
 EdProcesso.Clear;
 EdDisponivel.Clear;
 EdDisponivel.Clear;
 EdSaldoAtual.Clear;
 EdValorTotal.Clear;

 DataModule4.IBDSaidaMtDT_MOVIMENTO.AsDateTime := Date;
 DataModule4.IBDSaidaMtHR_MOVIMENTO.AsDateTime := Time;
 DataModule4.IBDSaidaMtUSUARIOO.AsString := FPrincipal.usuario;
 DataModule4.IBDSaidaMtCD_MOVIMENTO.AsInteger := 2;

 DBETpMovimentoExit(sender);


 

end;

procedure TFSaidaMt.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule4.IBDSaidaMt.Cancel;
  DataModule1.IBTTransacao.RollbackRetaining;

 EdCdMtNf.Clear;
 EdDsMtNf.Clear;
 EdDsFornecedor.Clear;
 EdDsMateriaPrima.Clear;
 EdDsMovimento.Clear;
 EdQtdeEmb.Clear;

 EdUnMedida.Clear;
 EdQtdeEmbalagem.Clear;
 EdCarteira.Clear;
 EdProcesso.Clear;
 EdDisponivel.Clear;
 EdDisponivel.Clear;
 EdSaldoAtual.Clear;
 EdValorTotal.Clear;


 end;
end;

procedure TFSaidaMt.BSairClick(Sender: TObject);
begin
Close;
end;

procedure TFSaidaMt.BConfirmarClick(Sender: TObject);
var e,s : string;
begin
if    EdCdMtNf.Text = '' then
        begin
          MessageDlg('Campo Matéria Prima Nf obrigatório.',mtWarning,[mbok],0);
          EdCdMtNf.SetFocus;
        end
      else
        if DBETpMovimento.Text = '' then
          begin
          MessageDlg('Campo Tipo de Movimento é obrigatório.',mtWarning,[mbok],0);
          DBETpMovimento.SetFocus;
          end
        else
        if DBEQuantidade.Text = '' then
          begin
          MessageDlg('Campo Quantidade é obrigatório.',mtWarning,[mbok],0);
          DBEQuantidade.SetFocus;
          end
        else
          begin
          e := 'E';
          s := 'S';
            DataModule4.IBDSaidaMt.Post;

          //atualiza o saldo atual
         DataModule4.IBQSomaEnt.Close;
         DataModule4.IBQSomaEnt.ParamByName('pmateria').AsInteger :=
         DataModule4.IBDSaidaMtCD_MAT_PRIMA.AsInteger;
         DataModule4.IBQSomaEnt.ParamByName('ptipo').AsString := e;
         DataModule4.IBQSomaEnt.Open;

         DataModule4.IBQSomaSaida.Close;
         DataModule4.IBQSomaSaida.ParamByName('pmateria').AsInteger :=
         DataModule4.IBDSaidaMtCD_MAT_PRIMA.AsInteger;
         DataModule4.IBQSomaSaida.ParamByName('ptipo').AsString := s;
         DataModule4.IBQSomaSaida.Open;

         DataModule1.IBDMateriaPrima.Close;
         DataModule1.IBDMateriaPrima.ParamByName('pmateria').AsInteger :=
         StrToInt(DBEMateriaPrima.Text);
         DataModule1.IBDMateriaPrima.Open;

         DataModule1.IBDMateriaPrima.Edit;
         DataModule1.IBDMateriaPrimaQTDE_ESTOQUE.AsFloat :=
         DataModule4.IBQSomaEntTOT_ENTRADA.AsFloat - DataModule4.IBQSomaSaidaTOT_SAIDA.AsFloat;
         DataModule1.IBDMateriaPrima.Post;


         //atualiza o campo de saldo atual 
         DataModule4.IBQQtdeEstoque.Close;
         DataModule4.IBQQtdeEstoque.ParamByName('pmateria').AsInteger :=
         StrToInt(EdCdMtNf.Text);
         DataModule4.IBQQtdeEstoque.Open;
         EdSaldoAtual.Text := FloatToStr(DataModule4.IBQQtdeEstoqueQTDE_ESTOQUE.AsFloat);

         //atualiza o saldo em carteira
         DataModule3.IBDCarteira.Close;
         DataModule3.IBDCarteira.ParamByName('pmateria').AsInteger :=
         DataModule4.IBDSaidaMtCD_MAT_PRIMA.AsInteger;
         DataModule3.IBDCarteira.Open;
         DataModule3.IBDCarteira.Edit;
         DataModule3.IBDCarteiraQTDE.AsFloat :=
         DataModule3.IBDCarteiraQTDE.AsFloat - DataModule4.IBDSaidaMtQTDE.AsFloat;
         DataModule3.IBDCarteira.Post;

         //atualiza o saldo em processo
         DataModule3.IBDProcesso.Close;
         DataModule3.IBDProcesso.ParamByName('pmateria').AsInteger :=
         DataModule4.IBDSaidaMtCD_MAT_PRIMA.AsInteger;
         DataModule3.IBDProcesso.Open;
         DataModule3.IBDProcesso.Edit;
         DataModule3.IBDProcessoQTDE.AsFloat :=
         DataModule3.IBDProcessoQTDE.AsFloat + DataModule4.IBDSaidaMtQTDE.AsFloat;
         DataModule3.IBDProcesso.Post;


         //consulta o saldo em carteira, processo
         DataModule4.IBQCarPro.Close;
         DataModule4.IBQCarPro.ParamByName('pmateria').AsInteger :=
         StrToInt(EdCdMtNf.Text);
         DataModule4.IBQCarPro.Open;

         EdCarteira.Text := FloatToStr(DataModule4.IBQCarProQTDE_CAR.AsFloat);
         EdProcesso.Text := FloatToStr(DataModule4.IBQCarProQTDE_PRO.AsFloat);
         EdDisponivel.Text := FloatToStr(DataModule4.IBQCarProDISPONIVEL.AsFloat);

          
         DataModule1.IBTTransacao.CommitRetaining;
         ActiveControl := BInserir;

          end;
end;

procedure TFSaidaMt.BAlterarClick(Sender: TObject);
begin
if DataModule4.IBDSaidaMt.IsEmpty then
 begin
  Showmessage ('Saída não pode ser editado vazio');
 end
  else
    begin
      DataModule4.IBDSaidaMt.Edit;
      DBEQuantidade.SetFocus;

      //atualiza o saldo em carteira
         DataModule3.IBDCarteira.Close;
         DataModule3.IBDCarteira.ParamByName('pmateria').AsInteger :=
         DataModule4.IBDSaidaMtCD_MAT_PRIMA.AsInteger;
         DataModule3.IBDCarteira.Open;
         DataModule3.IBDCarteira.Edit;
         DataModule3.IBDCarteiraQTDE.AsFloat :=
         DataModule3.IBDCarteiraQTDE.AsFloat + DataModule4.IBDSaidaMtQTDE.AsFloat;
         DataModule3.IBDCarteira.Post;

         //atualiza o saldo em processo
         DataModule3.IBDProcesso.Close;
         DataModule3.IBDProcesso.ParamByName('pmateria').AsInteger :=
         DataModule4.IBDSaidaMtCD_MAT_PRIMA.AsInteger;
         DataModule3.IBDProcesso.Open;
         DataModule3.IBDProcesso.Edit;
         DataModule3.IBDProcessoQTDE.AsFloat :=
         DataModule3.IBDProcessoQTDE.AsFloat - DataModule4.IBDSaidaMtQTDE.AsFloat;
         DataModule3.IBDProcesso.Post;
    end;
end;

procedure TFSaidaMt.BExcluirClick(Sender: TObject);
var mt_prima : Integer;
e,s : string;
begin
if not DataModule4.IBDSaidaMt.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
    mt_prima := DataModule4.IBDSaidaMtCD_MAT_PRIMA.AsInteger;
    e := 'E';
    s := 'S';
     //atualiza o saldo em carteira
         DataModule3.IBDCarteira.Close;
         DataModule3.IBDCarteira.ParamByName('pmateria').AsInteger :=
         DataModule4.IBDSaidaMtCD_MAT_PRIMA.AsInteger;
         DataModule3.IBDCarteira.Open;
         DataModule3.IBDCarteira.Edit;
         DataModule3.IBDCarteiraQTDE.AsFloat :=
         DataModule3.IBDCarteiraQTDE.AsFloat + DataModule4.IBDSaidaMtQTDE.AsFloat;
         DataModule3.IBDCarteira.Post;

         //atualiza o saldo em processo
         DataModule3.IBDProcesso.Close;
         DataModule3.IBDProcesso.ParamByName('pmateria').AsInteger :=
         DataModule4.IBDSaidaMtCD_MAT_PRIMA.AsInteger;
         DataModule3.IBDProcesso.Open;
         DataModule3.IBDProcesso.Edit;
         DataModule3.IBDProcessoQTDE.AsFloat :=
         DataModule3.IBDProcessoQTDE.AsFloat - DataModule4.IBDSaidaMtQTDE.AsFloat;
         DataModule3.IBDProcesso.Post;

        DataModule4.IBDSaidaMt.Delete;
        DataModule1.IBTTransacao.CommitRetaining;


     //atualiza o saldo atual
         DataModule4.IBQSomaEnt.Close;
         DataModule4.IBQSomaEnt.ParamByName('pmateria').AsInteger := mt_prima;
         DataModule4.IBQSomaEnt.ParamByName('ptipo').AsString := e;
         DataModule4.IBQSomaEnt.Open;

         DataModule4.IBQSomaSaida.Close;
         DataModule4.IBQSomaSaida.ParamByName('pmateria').AsInteger := mt_prima;
         DataModule4.IBQSomaSaida.ParamByName('ptipo').AsString := s;
         DataModule4.IBQSomaSaida.Open;

         DataModule1.IBDMateriaPrima.Close;
         DataModule1.IBDMateriaPrima.ParamByName('pmateria').AsInteger := mt_prima;
         DataModule1.IBDMateriaPrima.Open;

         DataModule1.IBDMateriaPrima.Edit;
         DataModule1.IBDMateriaPrimaQTDE_ESTOQUE.AsInteger :=
         DataModule4.IBQSomaEntTOT_ENTRADA.AsInteger - DataModule4.IBQSomaSaidaTOT_SAIDA.AsInteger;

         DataModule1.IBDMateriaPrima.Post;
         DataModule1.IBTTransacao.CommitRetaining;

          EdCdMtNf.Clear;
          EdDsMtNf.Clear;
          EdDsFornecedor.Clear;
          EdDsMateriaPrima.Clear;
          EdDsMovimento.Clear;
          EdQtdeEmb.Clear;
          EdUnMedida.Clear;
          EdQtdeEmbalagem.Clear;
          EdCarteira.Clear;
          EdProcesso.Clear;
          EdDisponivel.Clear;
          EdDisponivel.Clear;
          EdSaldoAtual.Clear;
          EdValorTotal.Clear;

    end;
  end
 else
  Begin
   Showmessage('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !');
   DBEQuantidade.SetFocus;
  end;
end;

procedure TFSaidaMt.BMtNfClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpMtNf, FConsSimpMtNf);
  if FConsSimpMtNf.ShowModal = mrOk then
    begin
      EdCdMtNf.Text := IntToStr(DataModule4.IBQConsMatNfCD_PRIMA_NF.AsInteger);
      EdDsMtNf.Text := DataModule4.IBQConsMatNfDS_PRIMA_NF.AsString;
      DataModule4.IBDSaidaMtCD_FORNECEDOR.AsInteger := DataModule4.IBQConsMatNfCD_PESSOA_JU.AsInteger;
      EdDsFornecedor.Text := DataModule4.IBQConsMatNfRZ_SOCIAL.AsString;
      DataModule4.IBDSaidaMtCD_MAT_PRIMA.AsInteger := DataModule4.IBQConsMatNfCD_MAT_PRIMA1.AsInteger;
      EdDsMateriaPrima.Text := DataModule4.IBQConsMatNfDS_MAT_PRIMA.AsString;
      EdQtdeEmb.Text := '1';
      EdQtdeEmbalagem.Text := FloatToStr(DataModule4.IBQConsMatNfQTDE_EMBALAGEM.AsFloat);
      EdUnMedida.Text := DataModule4.IBQConsMatNfSIGLA_UNIDADE.AsString;
      DataModule4.IBDSaidaMtVALOR_MT_PRIMA.AsFloat := DataModule4.IBQConsMatNfVL_MAX.AsFloat;
      EdSaldoAtual.Text := FloatToStr(DataModule4.IBQConsMatNfQTDE_ESTOQUE.AsFloat);


      EdQtdeEmbExit(sender);
      DBEQuantidadeExit(sender);
      //consulta o saldo em carteira, processo
      DataModule4.IBQCarPro.Close;
      DataModule4.IBQCarPro.ParamByName('pmateria').AsInteger :=
      DataModule4.IBQConsMatNfCD_PRIMA_NF.AsInteger;
      DataModule4.IBQCarPro.Open;

      EdCarteira.Text := FloatToStr(DataModule4.IBQCarProQTDE_CAR.AsFloat);
      EdProcesso.Text := FloatToStr(DataModule4.IBQCarProQTDE_PRO.AsFloat);
      EdDisponivel.Text := FloatToStr(DataModule4.IBQCarProDISPONIVEL.AsFloat);


    end;
end;

procedure TFSaidaMt.DSSaidaStateChange(Sender: TObject);
begin
if DataModule4.IBDSaidaMt.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      TbConsulta.TabVisible := false;
    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      TbConsulta.TabVisible := true;
    end;
end;

procedure TFSaidaMt.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule4.IBDSaidaMt.State in [dsedit,dsinsert] then
  begin
   ShowMessage('Confirme o cadastro antes de fehar!!!  ');
  end
 else
   canclose := true;
end;

procedure TFSaidaMt.DBETpMovimentoExit(Sender: TObject);
begin
   if DBETpMovimento.Text <> '' then
      begin
        movimento := 'S';
        DataModule4.IBQConsMovimento.Close;
        DataModule4.IBQConsMovimento.ParamByName('pmovimento').AsInteger :=
        StrToInt(DBETpMovimento.Text);
        DataModule4.IBQConsMovimento.ParamByName('ptipo').AsString := movimento;
        DataModule4.IBQConsMovimento.Open;
        if DataModule4.IBQConsMovimento.IsEmpty then
          begin
            MessageDlg('Não existe movimento de entrada com este código.',mtWarning,[mbok],0);
            DBETpMovimento.SetFocus;
            DBETpMovimento.Clear;
            EdDsMovimento.Clear;
          end
        else
          begin
            EdDsMovimento.Text := DataModule4.IBQConsMovimentoDS_MOVIMENTO.AsString;

          end;


      end;
end;

procedure TFSaidaMt.EdQtdeEmbExit(Sender: TObject);
begin
if (DataModule4.IBDSaidaMt.State in [dsinsert,dsedit]) then
begin
  if EdQtdeEmb.Text <> '' then
    begin
      DataModule4.IBDSaidaMtQTDE.AsFloat :=  DataModule4.IBQConsMatNfQTDE_EMBALAGEM.AsFloat * StrToFloat(EdQtdeEmb.Text);
    end;
end;
end;

procedure TFSaidaMt.EdCdMtNfExit(Sender: TObject);
begin
if DataModule4.IBDSaidaMt.State in [dsinsert,dsedit] then
  begin
    if EdCdMtNf.Text <> '' then
      begin
        DataModule4.IBQConsMatNf.Close;
        DataModule4.IBQConsMatNf.SQL.Clear;
        DataModule4.IBQConsMatNf.SQL.Add('select mt_nf.*, mt.*,un.ds_unidade,');
        DataModule4.IBQConsMatNf.SQL.Add('un.sigla_unidade, cla.ds_classe,');
        DataModule4.IBQConsMatNf.SQL.Add('pj.cd_pessoa_ju, pj.rz_social');
        DataModule4.IBQConsMatNf.SQL.Add('from MT_PRIMA_NF mt_nf');
        DataModule4.IBQConsMatNf.SQL.Add('inner join MATERIA_PRIMA  mt on mt.cd_mat_prima = mt_nf.cd_mat_prima');
        DataModule4.IBQConsMatNf.SQL.Add('inner join UNIDADE_MEDIDA un on mt.cd_un_medida = un.cd_unidade');
        DataModule4.IBQConsMatNf.SQL.Add('inner join CLASSE_MAT_PRIMA cla on mt.cd_classe = cla.cd_classe');
        DataModule4.IBQConsMatNf.SQL.Add('inner join PESSOA_JURIDICA pj on mt_nf.cd_fornecedor = pj.cd_pessoa_ju');
        DataModule4.IBQConsMatNf.SQL.Add('where mt_nf.cd_prima_nf = :pmateria');
        DataModule4.IBQConsMatNf.ParamByName('pmateria').AsInteger := StrToInt(EdCdMtNf.Text);
        DataModule4.IBQConsMatNf.Open;
        if DataModule4.IBQConsMatNf.IsEmpty then
          begin
            MessageDlg('Não existe matéria prima com este código.',mtWarning,[mbok],0);
            EdCdMtNf.SetFocus;
            EdCdMtNf.Clear;
          end
        else
          begin
            EdDsMtNf.Text := DataModule4.IBQConsMatNfDS_PRIMA_NF.AsString;
            DataModule4.IBDSaidaMtCD_FORNECEDOR.AsInteger := DataModule4.IBQConsMatNfCD_PESSOA_JU.AsInteger;
            EdDsFornecedor.Text := DataModule4.IBQConsMatNfRZ_SOCIAL.AsString;
            DataModule4.IBDSaidaMtCD_MAT_PRIMA.AsInteger := DataModule4.IBQConsMatNfCD_MAT_PRIMA1.AsInteger;
            EdDsMateriaPrima.Text := DataModule4.IBQConsMatNfDS_MAT_PRIMA.AsString;
            EdQtdeEmb.Text := '1';
            EdQtdeEmbalagem.Text := FloatToStr(DataModule4.IBQConsMatNfQTDE_EMBALAGEM.AsFloat);
            EdUnMedida.Text := DataModule4.IBQConsMatNfSIGLA_UNIDADE.AsString;
            DataModule4.IBDSaidaMtVALOR_MT_PRIMA.AsFloat := DataModule4.IBQConsMatNfVL_MAX.AsFloat;
            EdSaldoAtual.Text := FloatToStr(DataModule4.IBQConsMatNfQTDE_ESTOQUE.AsFloat);


            EdQtdeEmbExit(sender);
            DBEQuantidadeExit(sender);

            //consulta o saldo em carteira, processo
            DataModule4.IBQCarPro.Close;
            DataModule4.IBQCarPro.ParamByName('pmateria').AsInteger :=
            DataModule4.IBQConsMatNfCD_PRIMA_NF.AsInteger;
            DataModule4.IBQCarPro.Open;

            EdCarteira.Text := FloatToStr(DataModule4.IBQCarProQTDE_CAR.AsFloat);
            EdProcesso.Text := FloatToStr(DataModule4.IBQCarProQTDE_PRO.AsFloat);
            EdDisponivel.Text := FloatToStr(DataModule4.IBQCarProDISPONIVEL.AsFloat);

            DBEQuantidade.SetFocus;
          end;
          
    end;

 end;

end;



procedure TFSaidaMt.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
if key = #27 then
  begin
     Close;
  end;
end;

procedure TFSaidaMt.DBEQuantidadeExit(Sender: TObject);
begin

  if DBEQuantidade.Text <> '' then
    begin
      EdValorTotal.Text := FloatToStr(DataModule4.IBDSaidaMtQTDE.AsFloat * DataModule4.IBDSaidaMtVALOR_MT_PRIMA.AsFloat);
      //ActiveControl := BConfirmar; 
    end;
end;


procedure TFSaidaMt.FormShow(Sender: TObject);
begin
  DBEMateriaPrima.Clear;
  DBETpMovimento.Clear;
  DBEQuantidade.Clear;
  DBEHora.Clear;
  DBEUsuario.Clear;
  DBEData.Clear;
  DBEVlUnitario.Clear;
  DBECdFornecedor.Clear;

 EdCdMtNf.Clear;
 EdDsMtNf.Clear;
 EdDsFornecedor.Clear;
 EdDsMateriaPrima.Clear;
 EdDsMovimento.Clear;
 EdQtdeEmb.Clear;
 EdUnMedida.Clear;
 EdQtdeEmbalagem.Clear;
 EdCarteira.Clear;
 EdProcesso.Clear;
 EdDisponivel.Clear;
 EdDisponivel.Clear;
 EdSaldoAtual.Clear;
 EdValorTotal.Clear;

 PaginaControle.ActivePageIndex := 0;
  
end;

procedure TFSaidaMt.TbConsultaShow(Sender: TObject);
begin

FiltroPesquisa.ItemIndex := 2;
FiltroPesquisaClick(sender);
EdPesquisa.Clear;
EdPesquisa.SetFocus;
end;

procedure TFSaidaMt.BPesquisaClick(Sender: TObject);
var tp_movimento : string;
begin
  tp_movimento := 'S';
  if FiltroPesquisa.ItemIndex = 0 then
    begin
       DataModule4.IBQConsSaida.Close;
       DataModule4.IBQConsSaida.SQL.Clear;
       DataModule4.IBQConsSaida.SQL.Add('select saida.*,');
       DataModule4.IBQConsSaida.SQL.Add('mt.cd_mat_prima,mt.ds_mat_prima,mt.qtde_embalagem,mt.qtde_estoque,');
       DataModule4.IBQConsSaida.SQL.Add('un.sigla_unidade,');
       DataModule4.IBQConsSaida.SQL.Add('mov.ds_movimento,');
       DataModule4.IBQConsSaida.SQL.Add('pj.rz_social,mt_nf.cd_prima_nf, mt_nf.ds_prima_nf');
       DataModule4.IBQConsSaida.SQL.Add('from CONTROLE_ENTRADA_SAIDA saida');
       DataModule4.IBQConsSaida.SQL.Add('inner join MATERIA_PRIMA mt on saida.cd_mat_prima = mt.cd_mat_prima');
       DataModule4.IBQConsSaida.SQL.Add('inner join MT_PRIMA_NF mt_nf on mt_nf.cd_mat_prima = mt.cd_mat_prima and mt_nf.cd_fornecedor = saida.cd_fornecedor');
       DataModule4.IBQConsSaida.SQL.Add('inner join PESSOA_JURIDICA pj on saida.cd_fornecedor = pj.cd_pessoa_ju');
       DataModule4.IBQConsSaida.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = saida.cd_movimento');
       DataModule4.IBQConsSaida.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
       DataModule4.IBQConsSaida.SQL.Add('where');
       DataModule4.IBQConsSaida.SQL.Add('mov.tipo_movimento = :pmovimento');
       DataModule4.IBQConsSaida.SQL.Add('order by saida.dt_movimento desc,saida.hr_movimento desc ');
       DataModule4.IBQConsSaida.ParamByName('pmovimento').AsString := tp_movimento;
       DataModule4.IBQConsSaida.Open
    end
  else
    if (FiltroPesquisa.ItemIndex = 1) and (EdPesquisa.Text <> '') then
      begin
       DataModule4.IBQConsSaida.Close;
       DataModule4.IBQConsSaida.SQL.Clear;
       DataModule4.IBQConsSaida.SQL.Add('select saida.*,');
       DataModule4.IBQConsSaida.SQL.Add('mt.cd_mat_prima,mt.ds_mat_prima,mt.qtde_embalagem,mt.qtde_estoque,');
       DataModule4.IBQConsSaida.SQL.Add('un.sigla_unidade,');
       DataModule4.IBQConsSaida.SQL.Add('mov.ds_movimento,');
       DataModule4.IBQConsSaida.SQL.Add('pj.rz_social,mt_nf.cd_prima_nf, mt_nf.ds_prima_nf');
       DataModule4.IBQConsSaida.SQL.Add('from CONTROLE_ENTRADA_SAIDA saida');
       DataModule4.IBQConsSaida.SQL.Add('inner join MATERIA_PRIMA mt on saida.cd_mat_prima = mt.cd_mat_prima');
       DataModule4.IBQConsSaida.SQL.Add('inner join MT_PRIMA_NF mt_nf on mt_nf.cd_mat_prima = mt.cd_mat_prima and mt_nf.cd_fornecedor = saida.cd_fornecedor');
       DataModule4.IBQConsSaida.SQL.Add('inner join PESSOA_JURIDICA pj on saida.cd_fornecedor = pj.cd_pessoa_ju');
       DataModule4.IBQConsSaida.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = saida.cd_movimento');
       DataModule4.IBQConsSaida.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
       DataModule4.IBQConsSaida.SQL.Add('where');
       DataModule4.IBQConsSaida.SQL.Add('mov.tipo_movimento = :pmovimento and');
       DataModule4.IBQConsSaida.SQL.Add('saida.cd_mat_prima = :pmateria');
       DataModule4.IBQConsSaida.ParamByName('pmateria').AsInteger := StrToInt(EdPesquisa.Text);
       DataModule4.IBQConsSaida.ParamByName('pmovimento').AsString := tp_movimento;
       DataModule4.IBQConsSaida.Open;
       if DataModule4.IBQConsSaida.IsEmpty then
        begin
         MessageDlg('Não existe entrada cadastrada com este código.',mtWarning,[mbok],0);
         EdPesquisa.SetFocus;
         EdPesquisa.Clear;
        end;
    end
  else
  if (FiltroPesquisa.ItemIndex = 2) and (EdPesquisa.Text <> '') then
    begin
       DataModule4.IBQConsSaida.Close;
       DataModule4.IBQConsSaida.SQL.Clear;
       DataModule4.IBQConsSaida.SQL.Add('select saida.*,');
       DataModule4.IBQConsSaida.SQL.Add('mt.cd_mat_prima,mt.ds_mat_prima,mt.qtde_embalagem,mt.qtde_estoque,');
       DataModule4.IBQConsSaida.SQL.Add('un.sigla_unidade,');
       DataModule4.IBQConsSaida.SQL.Add('mov.ds_movimento,');
       DataModule4.IBQConsSaida.SQL.Add('pj.rz_social,mt_nf.cd_prima_nf, mt_nf.ds_prima_nf');
       DataModule4.IBQConsSaida.SQL.Add('from CONTROLE_ENTRADA_SAIDA saida');
       DataModule4.IBQConsSaida.SQL.Add('inner join MATERIA_PRIMA mt on saida.cd_mat_prima = mt.cd_mat_prima');
       DataModule4.IBQConsSaida.SQL.Add('inner join MT_PRIMA_NF mt_nf on mt_nf.cd_mat_prima = mt.cd_mat_prima and mt_nf.cd_fornecedor = saida.cd_fornecedor');
       DataModule4.IBQConsSaida.SQL.Add('inner join PESSOA_JURIDICA pj on saida.cd_fornecedor = pj.cd_pessoa_ju');
       DataModule4.IBQConsSaida.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = saida.cd_movimento');
       DataModule4.IBQConsSaida.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
       DataModule4.IBQConsSaida.SQL.Add('where');
       DataModule4.IBQConsSaida.SQL.Add('mov.tipo_movimento = :pmovimento and');
       DataModule4.IBQConsSaida.SQL.Add('mt.ds_mat_prima like'
                                         +QuotedStr('%'+EdPesquisa.Text+'%'));
       DataModule4.IBQConsSaida.SQL.Add('order by saida.dt_movimento desc,saida.hr_movimento desc ');
       DataModule4.IBQConsSaida.ParamByName('pmovimento').AsString := tp_movimento;
       DataModule4.IBQConsSaida.Open;
       if DataModule4.IBQConsSaida.IsEmpty then
        begin
         MessageDlg('Não existe saída cadastrada.',mtWarning,[mbok],0);
          EdPesquisa.SetFocus;
         EdPesquisa.Clear;
        end;
    end
else
  if (FiltroPesquisa.ItemIndex = 3) and (EdPesquisa.Text <> '') then
    begin
       DataModule4.IBQConsSaida.Close;
       DataModule4.IBQConsSaida.SQL.Clear;
       DataModule4.IBQConsSaida.SQL.Add('select saida.*,');
       DataModule4.IBQConsSaida.SQL.Add('mt.cd_mat_prima,mt.ds_mat_prima,mt.qtde_embalagem,mt.qtde_estoque,');
       DataModule4.IBQConsSaida.SQL.Add('un.sigla_unidade,');
       DataModule4.IBQConsSaida.SQL.Add('mov.ds_movimento,');
       DataModule4.IBQConsSaida.SQL.Add('pj.rz_social,mt_nf.cd_prima_nf, mt_nf.ds_prima_nf');
       DataModule4.IBQConsSaida.SQL.Add('from CONTROLE_ENTRADA_SAIDA saida');
       DataModule4.IBQConsSaida.SQL.Add('inner join MATERIA_PRIMA mt on saida.cd_mat_prima = mt.cd_mat_prima');
       DataModule4.IBQConsSaida.SQL.Add('inner join MT_PRIMA_NF mt_nf on mt_nf.cd_mat_prima = mt.cd_mat_prima and mt_nf.cd_fornecedor = saida.cd_fornecedor');
       DataModule4.IBQConsSaida.SQL.Add('inner join PESSOA_JURIDICA pj on saida.cd_fornecedor = pj.cd_pessoa_ju');
       DataModule4.IBQConsSaida.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = saida.cd_movimento');
       DataModule4.IBQConsSaida.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
       DataModule4.IBQConsSaida.SQL.Add('where');
       DataModule4.IBQConsSaida.SQL.Add('mov.tipo_movimento = :pmovimento and');
       DataModule4.IBQConsSaida.SQL.Add('pj.rz_social like'
                                         +QuotedStr('%'+EdPesquisa.Text+'%'));
       DataModule4.IBQConsSaida.SQL.Add('order by saida.dt_movimento desc,saida.hr_movimento desc ');
       DataModule4.IBQConsSaida.ParamByName('pmovimento').AsString := tp_movimento;
       DataModule4.IBQConsSaida.Open;
       if DataModule4.IBQConsSaida.IsEmpty then
        begin
         MessageDlg('Não existe entrada cadastrada.',mtWarning,[mbok],0);
         EdPesquisa.SetFocus;
         EdPesquisa.Clear;
        end;
    end
else
    if (FiltroPesquisa.ItemIndex = 4) and (EdData.Date <> 0) then
      begin
        DataModule4.IBQConsSaida.Close;
       DataModule4.IBQConsSaida.SQL.Clear;
       DataModule4.IBQConsSaida.SQL.Add('select saida.*,');
       DataModule4.IBQConsSaida.SQL.Add('mt.cd_mat_prima,mt.ds_mat_prima,mt.qtde_embalagem,mt.qtde_estoque,');
       DataModule4.IBQConsSaida.SQL.Add('un.sigla_unidade,');
       DataModule4.IBQConsSaida.SQL.Add('mov.ds_movimento,');
       DataModule4.IBQConsSaida.SQL.Add('pj.rz_social,mt_nf.cd_prima_nf, mt_nf.ds_prima_nf');
       DataModule4.IBQConsSaida.SQL.Add('from CONTROLE_ENTRADA_SAIDA saida');
       DataModule4.IBQConsSaida.SQL.Add('inner join MATERIA_PRIMA mt on saida.cd_mat_prima = mt.cd_mat_prima');
       DataModule4.IBQConsSaida.SQL.Add('inner join MT_PRIMA_NF mt_nf on mt_nf.cd_mat_prima = mt.cd_mat_prima and mt_nf.cd_fornecedor = saida.cd_fornecedor');
       DataModule4.IBQConsSaida.SQL.Add('inner join PESSOA_JURIDICA pj on saida.cd_fornecedor = pj.cd_pessoa_ju');
       DataModule4.IBQConsSaida.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = saida.cd_movimento');
       DataModule4.IBQConsSaida.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
       DataModule4.IBQConsSaida.SQL.Add('where');
       DataModule4.IBQConsSaida.SQL.Add('mov.tipo_movimento = :pmovimento and');
       DataModule4.IBQConsSaida.SQL.Add('saida.dt_movimento = :pdata');
       DataModule4.IBQConsSaida.ParamByName('pdata').AsDate := StrToDate(EdData.Text);
       DataModule4.IBQConsSaida.ParamByName('pmovimento').AsString := tp_movimento;
       DataModule4.IBQConsSaida.Open;
       if DataModule4.IBQConsSaida.IsEmpty then
        begin
         MessageDlg('Não existe saida cadastrada com esta data.',mtWarning,[mbok],0);
         EdData.SetFocus;
         EdData.Clear;
        end;
    end;

end;

procedure TFSaidaMt.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFSaidaMt.EdDataExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFSaidaMt.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule4.IBQConsSaida.Close;
if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'Consulta Geral';
       BPesquisa.Click;
      EdData.Visible := false;
      EdData.Top := 50;
      EdData.Left := 145;

      EdPesquisa.Visible := false;
      EdPesquisa.Top := 24;
      EdPesquisa.Left := 144;

  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      LDescricaoPesquisa.Caption := 'Código da Matéria Prima';
      EdPesquisa.Visible := true;
      EdPesquisa.SetFocus;
      EdPesquisa.MaxLength := 6;

      EdData.Visible := false;
      EdData.Top := 50;
      EdData.Left := 145;

      EdPesquisa.Visible := true;
      EdPesquisa.Top := 24;
      EdPesquisa.Left := 144;


    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'Descrição da Matéria Prima';
         EdPesquisa.Visible := true;
         EdPesquisa.SetFocus;
         EdPesquisa.MaxLength := 100;
         EdData.Visible := false;

        EdData.Visible := false;
        EdData.Top := 50;
        EdData.Left := 145;

        EdPesquisa.Visible := true;
        EdPesquisa.Top := 24;
        EdPesquisa.Left := 144;
      end
  else
    if FiltroPesquisa.ItemIndex = 3 then
      begin
         LDescricaoPesquisa.Caption := 'Descrição do Fornecedor';
         EdPesquisa.Visible := true;
         EdPesquisa.SetFocus;
         EdPesquisa.MaxLength := 100;
         EdData.Visible := false;

        EdData.Visible := false;
        EdData.Top := 50;
        EdData.Left := 145;

        EdPesquisa.Visible := true;
        EdPesquisa.Top := 24;
        EdPesquisa.Left := 144;
      end
  else
    if FiltroPesquisa.ItemIndex = 4 then
      begin
         LDescricaoPesquisa.Caption := 'Data da Entrada';

         EdPesquisa.Visible := false;
         EdData.Visible := true;
         EdData.SetFocus;

        EdData.Top := 24;
        EdData.Left := 145;

        EdPesquisa.Top := 50;
        EdPesquisa.Left := 145;
      end;
end;

procedure TFSaidaMt.DBEGridConsultaDblClick(Sender: TObject);
begin
    DataModule4.IBDSaidaMt.Close;
    DataModule4.IBDSaidaMt.ParamByName('pcontrole').AsInteger :=
    DataModule4.IBQConsSaidaCD_CONTROLE.AsInteger;
    DataModule4.IBDSaidaMt.ParamByName('pmateria').AsInteger :=
    DataModule4.IBQConsSaidaCD_MAT_PRIMA1.AsInteger;
    DataModule4.IBDSaidaMt.Open;
    if DataModule4.IBDSaidaMt.IsEmpty then
      begin
       MessageDlg('Não existe saída cadastrada.',mtWarning,[mbok],0);
      end
    else
      begin

        PaginaControle.ActivePage := TbCadastro;

        EdCdMtNf.Text := IntToStr(DataModule4.IBQConsSaidaCD_PRIMA_NF.AsInteger);
        EdDsMtNf.Text := DataModule4.IBQConsSaidaDS_PRIMA_NF.AsString;
        EdDsFornecedor.Text := DataModule4.IBQConsSaidaRZ_SOCIAL.AsString;
        EdDsMateriaPrima.Text := DataModule4.IBQConsSaidaDS_MAT_PRIMA.AsString;
        EdUnMedida.Text := DataModule4.IBQConsSaidaSIGLA_UNIDADE.AsString;
        EdQtdeEmbalagem.Text := FloatToStr(DataModule4.IBQConsSaidaQTDE_EMBALAGEM.AsFloat);
        EdSaldoAtual.Text := FloatToStr(DataModule4.IBQConsSaidaQTDE_ESTOQUE.AsFloat);

        DBETpMovimentoExit(sender);
        DBEQuantidadeExit(sender);

            //consulta o saldo em carteira, processo
            DataModule4.IBQCarPro.Close;
            DataModule4.IBQCarPro.ParamByName('pmateria').AsInteger :=
            DataModule4.IBQConsSaidaCD_PRIMA_NF.AsInteger;
            DataModule4.IBQCarPro.Open;

            EdCarteira.Text := FloatToStr(DataModule4.IBQCarProQTDE_CAR.AsFloat);
            EdProcesso.Text := FloatToStr(DataModule4.IBQCarProQTDE_PRO.AsFloat);
            EdDisponivel.Text := FloatToStr(DataModule4.IBQCarProDISPONIVEL.AsFloat);

      end;

end;

procedure TFSaidaMt.EdCdMtNfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  BMtNf.Click;
end;

procedure TFSaidaMt.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if FiltroPesquisa.ItemIndex = 1 then
    begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end; 
end;

procedure TFSaidaMt.DBEGridConsultaEnter(Sender: TObject);
begin
  KeyPreview := false;
end;

procedure TFSaidaMt.DBEGridConsultaExit(Sender: TObject);
begin
  KeyPreview := true;
end;

procedure TFSaidaMt.DBEGridConsultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    begin
      DBEGridConsultaDblClick(sender);
    end;
end;

procedure TFSaidaMt.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
