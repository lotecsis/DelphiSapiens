unit UEntradaMP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, RbDrawCore, RbButton, ExtCtrls, rxToolEdit,
  RXDBCtrl, DB, Mask, DBCtrls, Buttons, Grids, DBGrids, 
  rxCurrEdit;

type
  TFEntradaMP = class(TForm)
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
    DBECdMtMateria: TDBEdit;
    DSEntrada: TDataSource;
    Label2: TLabel;
    DBECdFornecedor: TDBEdit;
    BMateriaPrima: TSpeedButton;
    BFornecedor: TSpeedButton;
    EdDsMtPrima: TEdit;
    EdDsFornecedor: TEdit;
    Label3: TLabel;
    DBEQuantidade: TDBEdit;
    Label4: TLabel;
    DBEValor: TDBEdit;
    Label5: TLabel;
    BMovimento: TSpeedButton;
    EdDsMovimento: TEdit;
    Label6: TLabel;
    DBEPedido: TDBEdit;
    BPedido: TSpeedButton;
    Label7: TLabel;
    DBEPzPgto: TDBEdit;
    Label8: TLabel;
    DBENumNota: TDBEdit;
    Label9: TLabel;
    DBEUsuario: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEHora: TDBEdit;
    DBEData: TDBDateEdit;
    Panel2: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    EdVlUnit: TEdit;
    EdUnMed: TEdit;
    EdQtdeEmb: TEdit;
    EdSaldoAtual: TEdit;
    Label14: TLabel;
    Label16: TLabel;
    DBECdMovimento: TDBEdit;
    EdDsMtNf: TEdit;
    EdDsCdMtNf: TEdit;
    Label17: TLabel;
    EdQtdeEmbalagem: TEdit;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    EdData: TDateEdit;
    BPesquisa: TSpeedButton;
    DBEGridConsulta: TRxDBGrid;
    DSConsultaEntrada: TDataSource;
    LDescricaoPesquisa: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EdQtdePedido: TEdit;
    DBEGridBarras: TRxDBGrid;
    DSGridBarras: TDataSource;
    EdTotalEnt: TCurrencyEdit;
    BBarras: TRbButton;
    procedure BInserirClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure DSEntradaStateChange(Sender: TObject);
    procedure BAlterarClick(Sender: TObject);
    procedure DBECdFornecedorExit(Sender: TObject);
    procedure BFornecedorClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBECdMtMateriaExit(Sender: TObject);
    procedure BMateriaPrimaClick(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBECdMovimentoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure EdQtdeEmbalagemExit(Sender: TObject);
    procedure DBEValorExit(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure EdPesquisaExit(Sender: TObject);
    procedure EdDataExit(Sender: TObject);
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure DBEGridConsultaDblClick(Sender: TObject);
    procedure DBEGridConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEGridConsultaEnter(Sender: TObject);
    procedure DBEGridConsultaExit(Sender: TObject);
    procedure DBEQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure BPedidoClick(Sender: TObject);
    procedure DBEPedidoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEQuantidadeExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBECdMtMateriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBECdFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBECdMovimentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBarrasClick(Sender: TObject);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure EdQtdeEmbalagemKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntradaMP: TFEntradaMP;
  f,e,s, movimento, pesquisa_mt : string;
  inserindo : Boolean;
implementation

uses UDataModule3, UPrincipal, UDataModule1, UDataModule4,
  UConsSimpFornecedor, UDataModule2, UConsSimpMtPrima, UMtPrimaNf, UMtNf,
  UMtCompra, UPedCompAberto, UQrBarrasMt;

{$R *.dfm}

procedure TFEntradaMP.BInserirClick(Sender: TObject);
begin
DataModule4.IBDEntradaMt.Open;
DataModule4.IBDEntradaMt.Insert;

inserindo := true;

pesquisa_mt := 'S';

EdDsMtPrima.Clear;
EdDsFornecedor.Clear;
EdDsMovimento.Clear;
EdVlUnit.Clear;
EdUnMed.Clear;
EdQtdeEmb.Clear;
EdSaldoAtual.Clear;
EdTotalEnt.Clear;
EdDsMtNf.Clear;
EdDsCdMtNf.Clear;
EdQtdeEmbalagem.Clear;
EdQtdePedido.Clear;

DBEData.Date := Date;
DataModule4.IBDEntradaMtHR_MOVIMENTO.AsDateTime := Time;

DataModule4.IBDEntradaMtUSUARIOO.AsString := FPrincipal.usuario;
DataModule4.IBDEntradaMtCD_USUARIO.AsInteger := FPrincipal.cd_usuario;

DataModule4.IBDEntradaMtCD_MOVIMENTO.AsInteger := 1;
DBECdMovimentoExit(sender);


DBECdMtMateria.SetFocus;


end;

procedure TFEntradaMP.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule4.IBDEntradaMt.Cancel;
  DataModule1.IBTTransacao.RollbackRetaining;

  EdDsMtPrima.Clear;
  EdDsFornecedor.Clear;
  EdDsMovimento.Clear;
  EdVlUnit.Clear;
  EdUnMed.Clear;
  EdQtdeEmb.Clear;
  EdSaldoAtual.Clear;
  EdTotalEnt.Clear;
  EdDsMtNf.Clear;
  EdDsCdMtNf.Clear;
  EdQtdeEmbalagem.Clear;
  EdQtdePedido.Clear;
 end; 
end;

procedure TFEntradaMP.BConfirmarClick(Sender: TObject);
var conta, chegou,tot_etiqueta,cont,qtde,i : Integer;
     impresso, qtde_str, qtde_final : string;
     achou : Boolean;
begin
     if DBECdMtMateria.Text = '' then
        begin
          MessageDlg('Campo Matéria Prima é obrigatório.',mtWarning,[mbok],0);
          DBECdMtMateria.SetFocus;
        end
      else
        if DBECdFornecedor.Text = '' then
          begin
          MessageDlg('Campo Fornecedor é obrigatório.',mtWarning,[mbok],0);
          DBECdFornecedor.SetFocus;
          end
        else
        if DBECdMovimento.Text = '' then
          begin
          MessageDlg('Campo Tipo de Movimento é obrigatório.',mtWarning,[mbok],0);
          DBECdMovimento.SetFocus;
          end
        else
        if DBEQuantidade.Text = '' then
          begin
          MessageDlg('Campo Quantidade é obrigatório.',mtWarning,[mbok],0);
          DBEQuantidade.SetFocus;
          end
        else
        if DBEValor.Text = '' then
          begin
          MessageDlg('Campo Valor é obrigatório.',mtWarning,[mbok],0);
          DBEValor.SetFocus;
          end
        else
        if DBENumNota.Text = '' then
          begin
          MessageDlg('Campo Numero da Nota Fiscal é obrigatório.',mtWarning,[mbok],0);
          DBENumNota.SetFocus;
          end
        else
          begin


          //atualiza o campo valor total.
          EdTotalEnt.Text :=
          FloatToStr(StrToFloat(DBEQuantidade.Text)* StrToFloat(DBEValor.Text));
          impresso := 'N';
          if DataModule4.IBDEntradaMt.State in [dsinsert] then
       begin
       if EdQtdeEmb.Text > '1' then
        begin
          //grava as codigos de barra que nao foram impressos
          qtde_str := DBEQuantidade.Text;
          qtde_final := '';
          achou := false;
          i := 1;
          while achou = false do
            begin
              if qtde_str[i] <> ',' then
                begin
                  qtde_final := qtde_final + qtde_str[i];
                end
              else
              if qtde_str[i] = ',' then
                begin
                  achou := true;
                end;

               if i = length(qtde_str) then
                begin
                  achou := true;
                end;

              i := i + 1;

            end;

          tot_etiqueta := StrToInt(qtde_final) div StrToInt(EdQtdeEmb.Text);

         for cont := 1 to tot_etiqueta do
          begin
            DataModule4.IBDBarrasMt.Open;
            DataModule4.IBDBarrasMt.Insert;
            DataModule4.IBDBarrasMtCD_MT_NF.AsFloat :=  StrToFloat(EdDsCdMtNf.Text);
            DataModule4.IBDBarrasMtCD_MAT_PRIMA.AsFloat   :=  StrToFloat(DBECdMtMateria.Text);
            DataModule4.IBDBarrasMtDS_MATERIA.AsString := EdDsMtPrima.Text;
            DataModule4.IBDBarrasMtIMPRESSO.AsString := 'N';
            DataModule4.IBDBarrasMt.Post; 
          end;
            //consulta as barras a seremm impressas
            DataModule4.IBQConsBarrasMt.Close;
            DataModule4.IBQConsBarrasMt.ParamByName('pimpresso').AsString := impresso;
            DataModule4.IBQConsBarrasMt.Open;

          end;
        end;


            DataModule4.IBDEntradaMt.Post;


        //atualiza na tabela de mt_compra que a materia prima chegou
         if (DBEPedido.Text <> '') and (DBEPedido.Text <> '0') then
          begin
            DataModule4.IBDMtCompra.Close;
            DataModule4.IBDMtCompra.ParamByName('pmateria').AsInteger :=
            DataModule4.IBDEntradaMtCD_MAT_PRIMA.AsInteger;
            DataModule4.IBDMtCompra.ParamByName('ppedido').AsInteger :=
            DataModule4.IBDEntradaMtCD_PEDIDO.AsInteger;
            DataModule4.IBDMtCompra.Open;
            DataModule4.IBDMtCompra.Edit;
            DataModule4.IBDMtCompraQTDE_CHEGADA.AsFloat :=
            DataModule4.IBDMtCompraQTDE_CHEGADA.AsFloat + StrToFloat(DBEQuantidade.Text);

            //consulta a quantidade que esta na compra
            DataModule4.IBQQtdeComp.Close;
            DataModule4.IBQQtdeComp.ParamByName('ppedido').AsInteger :=
            StrToInt(DBEPedido.Text);
            DataModule4.IBQQtdeComp.ParamByName('pmateria').AsInteger :=
            StrToInt(DBECdMtMateria.Text);
            DataModule4.IBQQtdeComp.Open;

            if DataModule4.IBDMtCompraQTDE_CHEGADA.AsFloat <
            (DataModule4.IBQQtdeCompQTDE.AsFloat * 0.95) then
              begin
                 DataModule4.IBDMtCompraCHEGOU.AsString := 'P';
              end
            else
              begin
                DataModule4.IBDMtCompraCHEGOU.AsString := 'S';

              end;

            DataModule4.IBDMtCompra.Post;

            //consulta e coloca a compra em ediçao
            DataModule4.IBDCompraMt.Close;
            DataModule4.IBDCompraMt.ParamByName('ppedido').AsInteger :=
            DataModule4.IBDEntradaMtCD_PEDIDO.AsInteger;
            DataModule4.IBDCompraMt.Open;
            DataModule4.IBDCompraMt.Edit;

            //conta as matérias primas que chegaram para mudar a situaçao dopedido
            DataModule4.IBQConsMtCompra2.Close;
            DataModule4.IBQConsMtCompra2.ParamByName('ppedido').AsInteger :=
            DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;
            DataModule4.IBQConsMtCompra2.Open;

            conta := 0;
            chegou := 0;
            DataModule4.IBQConsMtCompra2.First;
            while not DataModule4.IBQConsMtCompra2.Eof do
              begin
                 if DataModule4.IBQConsMtCompra2CHEGOU.AsString = 'S' then
                  begin
                    chegou := chegou + 1;
                  end;
                  conta := conta + 1;
                  DataModule4.IBQConsMtCompra2.Next;
              end;

               if chegou = conta then
                begin
                   DataModule4.IBDCompraMtSITUACAO.AsString := 'C';
                end
               else
                begin
                   DataModule4.IBDCompraMtSITUACAO.AsString := 'P';
                end;

              //atualiza a data da chegada e o numero da nota fiscal
              DataModule4.IBDCompraMtDT_CHEGADA.AsDateTime := Date;
              DataModule4.IBDCompraMtNUM_NOTA.AsString :=
              DataModule4.IBDEntradaMtNUM_DOCUMENTO.AsString;

              DataModule4.IBDCompraMt.Post;

            end;

            DataModule1.IBTTransacao.CommitRetaining;

         //atualiza o saldo atual
         DataModule4.IBQSomaEnt.Close;
         DataModule4.IBQSomaEnt.ParamByName('pmateria').AsInteger :=
         DataModule4.IBDEntradaMtCD_MAT_PRIMA.AsInteger;
         DataModule4.IBQSomaEnt.ParamByName('ptipo').AsString := e;
         DataModule4.IBQSomaEnt.Open;

         DataModule4.IBQSomaSaida.Close;
         DataModule4.IBQSomaSaida.ParamByName('pmateria').AsInteger :=
         DataModule4.IBDEntradaMtCD_MAT_PRIMA.AsInteger;
         DataModule4.IBQSomaSaida.ParamByName('ptipo').AsString := s;
         DataModule4.IBQSomaSaida.Open;

         DataModule1.IBDMateriaPrima.Close;
         DataModule1.IBDMateriaPrima.ParamByName('pmateria').AsInteger :=
         StrToInt(DBECdMtMateria.Text);
         DataModule1.IBDMateriaPrima.Open;

         DataModule1.IBDMateriaPrima.Edit;
         DataModule1.IBDMateriaPrimaQTDE_ESTOQUE.AsFloat :=
         DataModule4.IBQSomaEntTOT_ENTRADA.AsFloat - DataModule4.IBQSomaSaidaTOT_SAIDA.AsFloat;
         DataModule1.IBDMateriaPrima.Post;
         DataModule1.IBTTransacao.CommitRetaining;

         DBECdMtMateriaExit(sender);

        //consulta a materia prima da NF
        DataModule4.IBQConsMtNf.Close;
        DataModule4.IBQConsMtNf.ParamByName('pmateria').AsInteger :=
        StrToInt(DBECdMtMateria.Text);
        DataModule4.IBQConsMtNf.ParamByName('pfornecedor').AsInteger :=
        StrToInt(DBECdFornecedor.Text);
        DataModule4.IBQConsMtNf.Open;
        EdVlUnit.Text := FloatToStr(DataModule4.IBQConsMtNfVL_MAX.AsFloat);

         pesquisa_mt := 'N';

         ActiveControl := BInserir;


         end;

end;

procedure TFEntradaMP.DSEntradaStateChange(Sender: TObject);
begin
if DataModule4.IBDEntradaMt.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      TbConsulta.TabVisible := false;
      BMateriaPrima.Enabled := true;
      BFornecedor.Enabled := true;
      BMovimento.Enabled := true;
      BPedido.Enabled := true;
    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      TbConsulta.TabVisible := true;
      BMateriaPrima.Enabled := false;
      BFornecedor.Enabled := false;
      BMovimento.Enabled := false;
      BPedido.Enabled := false;
    end;
end;

procedure TFEntradaMP.BAlterarClick(Sender: TObject);
begin
if DataModule4.IBDEntradaMt.IsEmpty then
 begin
  Showmessage ('Entrada não pode ser editado vazio');
 end
  else
    begin
      DataModule4.IBDEntradaMt.Edit;
      inserindo := false;
      pesquisa_mt := 'S';

      if DBEPedido.Text <> '' then
      begin
      DataModule4.IBDMtCompra.Close;
      DataModule4.IBDMtCompra.ParamByName('pmateria').AsInteger :=
      DataModule4.IBDEntradaMtCD_MAT_PRIMA.AsInteger;
      DataModule4.IBDMtCompra.ParamByName('ppedido').AsInteger :=
      DataModule4.IBDEntradaMtCD_PEDIDO.AsInteger;
      DataModule4.IBDMtCompra.Open;
      DataModule4.IBDMtCompra.Edit;
      DataModule4.IBDMtCompraQTDE_CHEGADA.AsInteger :=
      DataModule4.IBDMtCompraQTDE_CHEGADA.AsInteger - StrToInt(DBEQuantidade.Text);
       DataModule4.IBDMtCompra.Post;
    end;
  end;
end;

procedure TFEntradaMP.DBECdFornecedorExit(Sender: TObject);
begin
if DataModule4.IBDEntradaMt.State in [dsinsert,dsedit] then
begin
 f := 'F';
  if pesquisa_mt = 'S' then
    begin
      if DBECdFornecedor.Text <> '' then
        begin
          if DBECdMtMateria.Text <> '' then
          begin
          DataModule1.IBQConsFornecedor.Close;
          DataModule1.IBQConsFornecedor.SQL.Clear;
          DataModule1.IBQConsFornecedor.SQL.Add('select pj.cd_pessoa_ju, pj.rz_social');
          DataModule1.IBQConsFornecedor.SQL.Add('from PESSOA_JURIDICA pj');
          DataModule1.IBQConsFornecedor.SQL.Add('where');
          DataModule1.IBQConsFornecedor.SQL.Add('pj.cli_for = :pfornecedor and');
          DataModule1.IBQConsFornecedor.SQL.Add('pj.cd_pessoa_ju = :ppessoa');
          DataModule1.IBQConsFornecedor.ParamByName('pfornecedor').AsString := f;
          DataModule1.IBQConsFornecedor.ParamByName('ppessoa').AsInteger := StrToInt(DBECdFornecedor.Text);
          DataModule1.IBQConsFornecedor.Open;
          if DataModule1.IBQConsFornecedor.IsEmpty then
            begin
              ShowMessage('Não existe fornecedor com este código');
              DBECdFornecedor.SetFocus;
              DBECdFornecedor.Clear;
            end
          else
            begin
              EdDsFornecedor.Text := DataModule1.IBQConsFornecedorRZ_SOCIAL.AsString;


              //consulta a materia prima da NF
              DataModule4.IBQConsMtNf.Close;
              DataModule4.IBQConsMtNf.ParamByName('pmateria').AsInteger :=
              StrToInt(DBECdMtMateria.Text);
              DataModule4.IBQConsMtNf.ParamByName('pfornecedor').AsInteger :=
              StrToInt(DBECdFornecedor.Text);
              DataModule4.IBQConsMtNf.Open;
              if DataModule4.IBQConsMtNf.IsEmpty then
                begin
                  if Application.MessageBox('Não existe Matéria Prima Nf Cadastrada!! Deseja Cadastrar?', 'Cadastra Mátéria Prima Nf', MB_ICONWARNING+MB_YESNO) = idyes then
                    begin
                    //cadastra a mtNf
                    Application.CreateForm(TFMtNf, FMtNf);

                    DataModule4.IBDMtNf.Open;
                    DataModule4.IBDMtNf.Insert;
                    DataModule4.IBDMtNfCD_MAT_PRIMA.AsInteger :=
                    StrToInt(DBECdMtMateria.Text);
                    DataModule4.IBDMtNfCD_FORNECEDOR.AsInteger :=
                    StrToInt(DBECdFornecedor.Text);
                    DataModule4.IBDMtNfSITUACAO.AsString := 'A';
                    DataModule4.IBDMtNfIMPORTANCIA.AsString := 'S';
                    DataModule4.IBDMtNfUSUARIOO.AsString := FPrincipal.usuario;
                    DataModule4.IBDMtNfDT_CADASTRO.AsDateTime := Date;


                  if FMtNf.ShowModal = mrCancel then
                    begin
                      DataModule4.IBDMtNf.Cancel;

                        EdDsMtPrima.Clear;
                        EdDsFornecedor.Clear;
                        EdDsMovimento.Clear;
                        EdVlUnit.Clear;
                        EdUnMed.Clear;
                        EdQtdeEmb.Clear;
                        EdSaldoAtual.Clear;
                        EdTotalEnt.Clear;
                        EdDsMtNf.Clear;
                        EdDsCdMtNf.Clear;
                        
                    end
                  else
                    begin

                        DataModule4.IBDMtNf.Post;

                        EdDsCdMtNf.Text := IntToStr(DataModule4.IBDMtNfCD_PRIMA_NF.AsInteger);
                        EdDsMtNf.Text := DataModule4.IBDMtNfDS_PRIMA_NF.AsString;
                        EdVlUnit.Text := FloatToStr(DataModule4.IBDMtNfVL_MAX.AsFloat);
                        DBEValor.Field.AsFloat := DataModule4.IBDMtNfVL_MAX.AsFloat;

                    end;
                    end
                  else//se nao desejar cadastrar MtNf
                    begin
                       DataModule4.IBDEntradaMt.Cancel;

                        EdDsMtPrima.Clear;
                        EdDsFornecedor.Clear;
                        EdDsMovimento.Clear;
                        EdVlUnit.Clear;
                        EdUnMed.Clear;
                        EdQtdeEmb.Clear;
                        EdSaldoAtual.Clear;
                        EdTotalEnt.Clear;
                        EdDsMtNf.Clear;
                        EdDsCdMtNf.Clear;
                        
                    end;
                end
              else
                begin
                  EdDsCdMtNf.Text := IntToStr(DataModule4.IBQConsMtNfCD_PRIMA_NF.AsInteger);
                  EdDsMtNf.Text := DataModule4.IBQConsMtNfDS_PRIMA_NF.AsString;
                   EdVlUnit.Text := FloatToStr(DataModule4.IBQConsMtNfVL_MAX.AsFloat);
                   DBEValor.Field.AsFloat := DataModule4.IBQConsMtNfVL_MAX.AsFloat;
                end;

            end;
          end
        else
          begin
            MessageDlg('Campo Matéria Prima é obrigatório.',mtWarning,[mbok],0);
            DBECdMtMateria.SetFocus;
          end;
        end;
     end;
    end;
end;

procedure TFEntradaMP.BFornecedorClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpFornecedor, FConsSimpFornecedor);
  if FConsSimpFornecedor.ShowModal = mrOk then
    begin
      DataModule4.IBDEntradaMtCD_FORNECEDOR.AsInteger :=
      DataModule2.IBQConsGeralPessoaCD_PESSOA_JU.AsInteger;

      EdDsFornecedor.Text := DataModule2.IBQConsGeralPessoaRZ_SOCIAL.AsString;
    end;
end;

procedure TFEntradaMP.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFEntradaMP.DBECdMtMateriaExit(Sender: TObject);
begin
if pesquisa_mt = 'S' then
    begin
      if DBECdMtMateria.Text <> '' then
        begin
          DataModule4.IBQConsMt.Close;
          DataModule4.IBQConsMt.ParamByName('pmateria').AsInteger :=
          StrToInt(DBECdMtMateria.Text);
          DataModule4.IBQConsMt.Open;
        if DataModule4.IBQConsMt.IsEmpty then
          begin
            ShowMessage('Não existe matéria prima com este código');
            DBECdMtMateria.SetFocus;
            DBECdMtMateria.Clear;
          end
        else
          begin
            EdDsMtPrima.Text := DataModule4.IBQConsMtDS_MAT_PRIMA.AsString;
            EdUnMed.Text := DataModule4.IBQConsMtSIGLA_UNIDADE.AsString;
            EdQtdeEmb.Text := IntToStr(DataModule4.IBQConsMtQTDE_EMBALAGEM.AsInteger);
            EdSaldoAtual.Text := FloatToStr(DataModule4.IBQConsMtQTDE_ESTOQUE.AsFloat);
          end;
      end;
    end;
end;

procedure TFEntradaMP.BMateriaPrimaClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpMtPrima, FConsSimpMtPrima);
  if FConsSimpMtPrima.ShowModal = mrOk then
    begin
      DataModule4.IBDEntradaMtCD_MAT_PRIMA.AsInteger :=
      DataModule1.IBQConsMatPrimaCD_MAT_PRIMA.AsInteger;

    end;
end;

procedure TFEntradaMP.BSairClick(Sender: TObject);
begin
Close;
end;

procedure TFEntradaMP.FormShow(Sender: TObject);
var impresso : string;
begin

EdDsMtPrima.Clear;
EdDsFornecedor.Clear;
EdDsMovimento.Clear;
EdVlUnit.Clear;
EdUnMed.Clear;
EdQtdeEmb.Clear;
EdSaldoAtual.Clear;
EdTotalEnt.Clear;
EdDsMtNf.Clear;
EdDsCdMtNf.Clear;
EdQtdePedido.Clear;

DBECdMtMateria.Clear;
DBECdFornecedor.Clear;
DBEQuantidade.Clear;
DBEValor.Clear;
DBEPedido.Clear;
DBEPzPgto.Clear;
DBENumNota.Clear;
DBEUsuario.Clear;
DBEHora.Clear;                  
DBEData.Clear;
DBECdMovimento.Clear;
PaginaControle.ActivePageIndex := 0;

e := 'E';
s := 'S';
pesquisa_mt := 'N';
impresso := 'N';

        //consulta as barras a seremm impressas
        DataModule4.IBQConsBarrasMt.Close;
        DataModule4.IBQConsBarrasMt.ParamByName('pimpresso').AsString := impresso;
        DataModule4.IBQConsBarrasMt.Open;

       

end;

procedure TFEntradaMP.DBECdMovimentoExit(Sender: TObject);
begin
    if DBECdMovimento.Text <> '' then
      begin
        movimento := 'E';
        DataModule4.IBQConsMovimento.Close;
        DataModule4.IBQConsMovimento.ParamByName('pmovimento').AsInteger :=
        StrToInt(DBECdMovimento.Text);
        DataModule4.IBQConsMovimento.ParamByName('ptipo').AsString := movimento;
        DataModule4.IBQConsMovimento.Open;
        if DataModule4.IBQConsMovimento.IsEmpty then
          begin
            MessageDlg('Não existe movimento de entrada com este código.',mtWarning,[mbok],0);
            DBECdMovimento.SetFocus;
            DBECdMovimento.Clear;
            EdDsMovimento.Clear;
          end
        else
          begin
            EdDsMovimento.Text := DataModule4.IBQConsMovimentoDS_MOVIMENTO.AsString;

          end;


      end

end;

procedure TFEntradaMP.FormCreate(Sender: TObject);
begin
movimento := 'E';
end;

procedure TFEntradaMP.BExcluirClick(Sender: TObject);
var mt_prima, conta, chegou : Integer;
begin
if not DataModule4.IBDEntradaMt.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     mt_prima := DataModule4.IBDEntradaMtCD_MAT_PRIMA.AsInteger;
   //-------------------------------------------------------------
            if DBEPedido.Text <> '' then
            begin
            //atualiza a quantidade la na compra
            DataModule4.IBDMtCompra.Close;
            DataModule4.IBDMtCompra.ParamByName('pmateria').AsInteger :=
            DataModule4.IBDEntradaMtCD_MAT_PRIMA.AsInteger;
            DataModule4.IBDMtCompra.ParamByName('ppedido').AsInteger :=
            DataModule4.IBDEntradaMtCD_PEDIDO.AsInteger;
            DataModule4.IBDMtCompra.Open;
            DataModule4.IBDMtCompra.Edit;
            DataModule4.IBDMtCompraQTDE_CHEGADA.AsFloat :=
            DataModule4.IBDMtCompraQTDE_CHEGADA.AsFloat - StrToFloat(DBEQuantidade.Text);

            //consulta a quantidade que esta na compra
            DataModule4.IBQQtdeComp.Close;
            DataModule4.IBQQtdeComp.ParamByName('ppedido').AsInteger :=
            StrToInt(DBEPedido.Text);
            DataModule4.IBQQtdeComp.ParamByName('pmateria').AsInteger :=
            StrToInt(DBECdMtMateria.Text);
            DataModule4.IBQQtdeComp.Open;

            if DataModule4.IBDMtCompraQTDE_CHEGADA.AsFloat <
            (DataModule4.IBQQtdeCompQTDE.AsFloat * 0.95) then
              begin
                 DataModule4.IBDMtCompraCHEGOU.AsString := 'P';
              end
            else
              begin
                DataModule4.IBDMtCompraCHEGOU.AsString := 'S';
              end;

             if DataModule4.IBDMtCompraQTDE_CHEGADA.AsFloat = 0 then
              begin
                DataModule4.IBDMtCompraCHEGOU.AsString := 'N';
              end;
            DataModule4.IBDMtCompra.Post;

            //consulta e coloca a compra em ediçao
            DataModule4.IBDCompraMt.Close;
            DataModule4.IBDCompraMt.ParamByName('ppedido').AsInteger :=
            DataModule4.IBDEntradaMtCD_PEDIDO.AsInteger;
            DataModule4.IBDCompraMt.Open;
            DataModule4.IBDCompraMt.Edit;

            //conta as matérias primas que chegaram para mudar a situaçao dopedido
            DataModule4.IBQConsMtCompra2.Close;
            DataModule4.IBQConsMtCompra2.ParamByName('ppedido').AsInteger :=
            DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;
            DataModule4.IBQConsMtCompra2.Open;

            conta := 0;
            chegou := 0;
            DataModule4.IBQConsMtCompra2.First;
            while not DataModule4.IBQConsMtCompra2.Eof do
              begin
                 if DataModule4.IBQConsMtCompra2CHEGOU.AsString = 'S' then
                  begin
                    chegou := chegou + 1;
                  end;
                  conta := conta + 1;
                  DataModule4.IBQConsMtCompra2.Next;
              end;

               if chegou = conta then
                begin
                   DataModule4.IBDCompraMtSITUACAO.AsString := 'C';
                end
               else
                if chegou <> conta then
                begin
                   DataModule4.IBDCompraMtSITUACAO.AsString := 'P';
                end;

                if chegou = 0 then
                begin
                   DataModule4.IBDCompraMtSITUACAO.AsString := 'E';

                   //atualiza a data da chegada e o numero da nota fiscal
                   DataModule4.IBDCompraMtDT_CHEGADA.AsDateTime := 0;
                   DataModule4.IBDCompraMtNUM_NOTA.AsString := '';


                end;

              {//atualiza a data da chegada e o numero da nota fiscal
              DataModule4.IBDCompraMtDT_CHEGADA.AsDateTime := Date;
              DataModule4.IBDCompraMtNUM_NOTA.AsString :=
              DataModule4.IBDEntradaMtNUM_DOCUMENTO.AsString; }

              DataModule4.IBDCompraMt.Post;

            end;
            end;
   //--------------------------------------------------------------
     DataModule4.IBDEntradaMt.Delete;
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
         DataModule1.IBDMateriaPrimaQTDE_ESTOQUE.AsFloat :=
         DataModule4.IBQSomaEntTOT_ENTRADA.AsFloat - DataModule4.IBQSomaSaidaTOT_SAIDA.AsFloat;

         DataModule1.IBDMateriaPrima.Post;
         DataModule1.IBTTransacao.CommitRetaining;

         pesquisa_mt := 'N';

     EdDsMtPrima.Clear;
     EdDsFornecedor.Clear;
     EdDsMovimento.Clear;
     EdVlUnit.Clear;
     EdUnMed.Clear;
     EdQtdeEmb.Clear;
     EdSaldoAtual.Clear;
     EdTotalEnt.Clear;
     EdDsMtNf.Clear;
     EdDsCdMtNf.Clear;
     EdQtdeEmbalagem.Clear;
     EdQtdePedido.Clear;
    end
 else
  Begin
   Showmessage('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !');
  end;
end;

procedure TFEntradaMP.EdQtdeEmbalagemExit(Sender: TObject);
var qtde_ped : integer;
begin
  if EdQtdeEmbalagem.Text <> '' then
     begin
      if EdQtdePedido.Text = '' then
        begin
          DBEQuantidade.Field.AsFloat := StrToFloat(EdQtdeEmbalagem.Text)* DataModule4.IBQConsMtQTDE_EMBALAGEM.AsFloat;
        end
      else
        begin

    if StrToFloat(EdQtdeEmbalagem.Text) * DataModule4.IBQConsMtQTDE_EMBALAGEM.AsInteger > StrToFloat(EdQtdePedido.Text) * 1.05 then
        begin
          MessageDlg('Quantidade maior do que pedido.',mtWarning,[mbok],0);
           EdQtdeEmbalagem.SetFocus;
           EdQtdeEmbalagem.Clear;
        end
      else
         begin
            DBEQuantidade.Field.AsFloat := StrToInt(EdQtdeEmbalagem.Text)* DataModule4.IBQConsMtQTDE_EMBALAGEM.AsInteger;
          end;
        end;
    end;
end;

procedure TFEntradaMP.DBEValorExit(Sender: TObject);
begin
if DBEValor.Text <> '' then
  begin
    DataModule4.IBDMtNf.Close;
    DataModule4.IBDMtNf.ParamByName('pmateria').AsInteger :=
    StrToInt(DBECdMtMateria.Text);
    DataModule4.IBDMtNf.ParamByName('pfornecedor').AsInteger :=
    StrToInt(DBECdFornecedor.Text);
    DataModule4.IBDMtNf.Open;

    DataModule4.IBDMtNf.Edit;
    DataModule4.IBDMtNfVL_MAX.AsFloat := StrToFloat(DBEValor.Text);
    DataModule4.IBDMtNf.Post;

end;

end;

procedure TFEntradaMP.BPesquisaClick(Sender: TObject);
var tp_movimento : string;
begin
  tp_movimento := 'E';
  if FiltroPesquisa.ItemIndex = 0 then
    begin
       DataModule4.IBQConsEntrada.Close;
       DataModule4.IBQConsEntrada.SQL.Clear;
       DataModule4.IBQConsEntrada.SQL.Add('select ct_ent.*, mt.ds_mat_prima, pj.rz_social');
       DataModule4.IBQConsEntrada.SQL.Add('from CONTROLE_ENTRADA_SAIDA ct_ent,');
       DataModule4.IBQConsEntrada.SQL.Add('PESSOA_JURIDICA pj,');
       DataModule4.IBQConsEntrada.SQL.Add('MOVIMENTO_ESTOQUE mov,');
       DataModule4.IBQConsEntrada.SQL.Add('MATERIA_PRIMA mt');
       DataModule4.IBQConsEntrada.SQL.Add('where');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_mat_prima = mt.cd_mat_prima and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_movimento = mov.cd_movimento and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_fornecedor = pj.cd_pessoa_ju and');
       DataModule4.IBQConsEntrada.SQL.Add('mov.tipo_movimento = :pmovimento');
       DataModule4.IBQConsEntrada.SQL.Add('order by ct_ent.dt_movimento desc,ct_ent.hr_movimento desc ');
       DataModule4.IBQConsEntrada.ParamByName('pmovimento').AsString := tp_movimento;
       DataModule4.IBQConsEntrada.Open;
       if DataModule4.IBQConsEntrada.IsEmpty then
        begin
         MessageDlg('Não existe entrada cadastrada.',mtWarning,[mbok],0);
        end;
    end
  else
    if (FiltroPesquisa.ItemIndex = 1) and (EdPesquisa.Text <> '') then
      begin
         DataModule4.IBQConsEntrada.Close;
       DataModule4.IBQConsEntrada.SQL.Clear;
       DataModule4.IBQConsEntrada.SQL.Add('select ct_ent.*, mt.ds_mat_prima, pj.rz_social');
       DataModule4.IBQConsEntrada.SQL.Add('from CONTROLE_ENTRADA_SAIDA ct_ent,');
       DataModule4.IBQConsEntrada.SQL.Add('PESSOA_JURIDICA pj,');
       DataModule4.IBQConsEntrada.SQL.Add('MOVIMENTO_ESTOQUE mov,');
       DataModule4.IBQConsEntrada.SQL.Add('MATERIA_PRIMA mt');
       DataModule4.IBQConsEntrada.SQL.Add('where');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_mat_prima = mt.cd_mat_prima and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_movimento = mov.cd_movimento and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_fornecedor = pj.cd_pessoa_ju and');
       DataModule4.IBQConsEntrada.SQL.Add('mov.tipo_movimento = :pmovimento and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_mat_prima = :pmateria');
       DataModule4.IBQConsEntrada.ParamByName('pmateria').AsInteger := StrToInt(EdPesquisa.Text);
       DataModule4.IBQConsEntrada.ParamByName('pmovimento').AsString := tp_movimento;
       DataModule4.IBQConsEntrada.Open;
       if DataModule4.IBQConsEntrada.IsEmpty then
        begin
         MessageDlg('Não existe entrada cadastrada com este código.',mtWarning,[mbok],0);
        end;
    end
  else
  if (FiltroPesquisa.ItemIndex = 2) and (EdPesquisa.Text <> '') then
    begin
       DataModule4.IBQConsEntrada.Close;
       DataModule4.IBQConsEntrada.SQL.Clear;
       DataModule4.IBQConsEntrada.SQL.Add('select ct_ent.*, mt.ds_mat_prima, pj.rz_social');
       DataModule4.IBQConsEntrada.SQL.Add('from CONTROLE_ENTRADA_SAIDA ct_ent,');
       DataModule4.IBQConsEntrada.SQL.Add('PESSOA_JURIDICA pj,');
       DataModule4.IBQConsEntrada.SQL.Add('MOVIMENTO_ESTOQUE mov,');
       DataModule4.IBQConsEntrada.SQL.Add('MATERIA_PRIMA mt');
       DataModule4.IBQConsEntrada.SQL.Add('where');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_mat_prima = mt.cd_mat_prima and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_movimento = mov.cd_movimento and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_fornecedor = pj.cd_pessoa_ju and');
       DataModule4.IBQConsEntrada.SQL.Add('mov.tipo_movimento = :pmovimento and');
       DataModule4.IBQConsEntrada.SQL.Add('mt.ds_mat_prima like'
                                         +QuotedStr('%'+EdPesquisa.Text+'%'));
       DataModule4.IBQConsEntrada.SQL.Add('order by ct_ent.dt_movimento desc,ct_ent.hr_movimento desc ');
       DataModule4.IBQConsEntrada.ParamByName('pmovimento').AsString := tp_movimento;
       DataModule4.IBQConsEntrada.Open;
       if DataModule4.IBQConsEntrada.IsEmpty then
        begin
         MessageDlg('Não existe entrada cadastrada.',mtWarning,[mbok],0);
        end;
    end
else
  if (FiltroPesquisa.ItemIndex = 3) and (EdPesquisa.Text <> '') then
    begin
       DataModule4.IBQConsEntrada.Close;
       DataModule4.IBQConsEntrada.SQL.Clear;
       DataModule4.IBQConsEntrada.SQL.Add('select ct_ent.*, mt.ds_mat_prima, pj.rz_social');
       DataModule4.IBQConsEntrada.SQL.Add('from CONTROLE_ENTRADA_SAIDA ct_ent,');
       DataModule4.IBQConsEntrada.SQL.Add('PESSOA_JURIDICA pj,');
       DataModule4.IBQConsEntrada.SQL.Add('MOVIMENTO_ESTOQUE mov,');
       DataModule4.IBQConsEntrada.SQL.Add('MATERIA_PRIMA mt');
       DataModule4.IBQConsEntrada.SQL.Add('where');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_mat_prima = mt.cd_mat_prima and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_movimento = mov.cd_movimento and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_fornecedor = pj.cd_pessoa_ju and');
       DataModule4.IBQConsEntrada.SQL.Add('mov.tipo_movimento = :pmovimento and');
       DataModule4.IBQConsEntrada.SQL.Add('pj.rz_social like'
                                         +QuotedStr('%'+EdPesquisa.Text+'%'));
       DataModule4.IBQConsEntrada.SQL.Add('order by ct_ent.dt_movimento desc,ct_ent.hr_movimento desc ');
       DataModule4.IBQConsEntrada.ParamByName('pmovimento').AsString := tp_movimento;
       DataModule4.IBQConsEntrada.Open;
       if DataModule4.IBQConsEntrada.IsEmpty then
        begin
         MessageDlg('Não existe entrada cadastrada.',mtWarning,[mbok],0);
        end;
    end
else
    if (FiltroPesquisa.ItemIndex = 4) and (EdData.Date <> 0) then
      begin
         DataModule4.IBQConsEntrada.Close;
       DataModule4.IBQConsEntrada.SQL.Clear;
       DataModule4.IBQConsEntrada.SQL.Add('select ct_ent.*, mt.ds_mat_prima, pj.rz_social');
       DataModule4.IBQConsEntrada.SQL.Add('from CONTROLE_ENTRADA_SAIDA ct_ent,');
       DataModule4.IBQConsEntrada.SQL.Add('PESSOA_JURIDICA pj,');
       DataModule4.IBQConsEntrada.SQL.Add('MOVIMENTO_ESTOQUE mov,');
       DataModule4.IBQConsEntrada.SQL.Add('MATERIA_PRIMA mt');
       DataModule4.IBQConsEntrada.SQL.Add('where');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_mat_prima = mt.cd_mat_prima and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_movimento = mov.cd_movimento and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_fornecedor = pj.cd_pessoa_ju and');
       DataModule4.IBQConsEntrada.SQL.Add('mov.tipo_movimento = :pmovimento and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.dt_movimento = :pdata');
       DataModule4.IBQConsEntrada.ParamByName('pdata').AsDate := StrToDate(EdData.Text);
       DataModule4.IBQConsEntrada.ParamByName('pmovimento').AsString := tp_movimento;
       DataModule4.IBQConsEntrada.Open;
       if DataModule4.IBQConsEntrada.IsEmpty then
        begin
         MessageDlg('Não existe entrada cadastrada com esta data.',mtWarning,[mbok],0);
        end;
    end
else
    if (FiltroPesquisa.ItemIndex = 5) and (EdPesquisa.Text <> '') then
      begin
         DataModule4.IBQConsEntrada.Close;
       DataModule4.IBQConsEntrada.SQL.Clear;
       DataModule4.IBQConsEntrada.SQL.Add('select ct_ent.*, mt.ds_mat_prima, pj.rz_social');
       DataModule4.IBQConsEntrada.SQL.Add('from CONTROLE_ENTRADA_SAIDA ct_ent,');
       DataModule4.IBQConsEntrada.SQL.Add('PESSOA_JURIDICA pj,');
       DataModule4.IBQConsEntrada.SQL.Add('MOVIMENTO_ESTOQUE mov,');
       DataModule4.IBQConsEntrada.SQL.Add('MATERIA_PRIMA mt');
       DataModule4.IBQConsEntrada.SQL.Add('where');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_mat_prima = mt.cd_mat_prima and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_movimento = mov.cd_movimento and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.cd_fornecedor = pj.cd_pessoa_ju and');
       DataModule4.IBQConsEntrada.SQL.Add('mov.tipo_movimento = :pmovimento and');
       DataModule4.IBQConsEntrada.SQL.Add('ct_ent.num_documento = :pdocumento');
       DataModule4.IBQConsEntrada.ParamByName('pdocumento').AsString := EdPesquisa.Text;
       DataModule4.IBQConsEntrada.ParamByName('pmovimento').AsString := tp_movimento;
       DataModule4.IBQConsEntrada.Open;
       if DataModule4.IBQConsEntrada.IsEmpty then
        begin
         MessageDlg('Não existe entrada cadastrada.',mtWarning,[mbok],0);
        end;
    end;

end;

procedure TFEntradaMP.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFEntradaMP.EdDataExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFEntradaMP.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule4.IBQConsEntrada.Close;
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
      end
else
    if FiltroPesquisa.ItemIndex = 5 then
      begin
         LDescricaoPesquisa.Caption := 'Numero da Nota Físcal';
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
      end;
end;

procedure TFEntradaMP.TbConsultaShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 0;
FiltroPesquisaClick(sender);

FiltroPesquisa.ItemIndex := 2;
FiltroPesquisaClick(sender);
EdPesquisa.Clear;
EdPesquisa.SetFocus;
end;

procedure TFEntradaMP.DBEGridConsultaDblClick(Sender: TObject);
begin
  f:= 'F';

  DataModule4.IBDEntradaMt.Close;
  DataModule4.IBDEntradaMt.ParamByName('pmateria').AsInteger :=
  DataModule4.IBQConsEntradaCD_MAT_PRIMA.AsInteger;
  DataModule4.IBDEntradaMt.ParamByName('pcontrole').AsInteger :=
  DataModule4.IBQConsEntradaCD_CONTROLE.AsInteger;
  DataModule4.IBDEntradaMt.Open;

  //consulta a matéria prima
  DataModule4.IBQConsMt.Close;
  DataModule4.IBQConsMt.ParamByName('pmateria').AsInteger :=
  DataModule4.IBDEntradaMtCD_MAT_PRIMA.AsInteger;
  DataModule4.IBQConsMt.Open;

  EdDsMtPrima.Text := DataModule4.IBQConsMtDS_MAT_PRIMA.AsString;
  EdUnMed.Text := DataModule4.IBQConsMtSIGLA_UNIDADE.AsString;
  EdQtdeEmb.Text := IntToStr(DataModule4.IBQConsMtQTDE_EMBALAGEM.AsInteger);
  EdSaldoAtual.Text := FloatToStr(DataModule4.IBQConsMtQTDE_ESTOQUE.AsFloat);

  //consulta fornecedor
  DataModule1.IBQConsFornecedor.Close;
  DataModule1.IBQConsFornecedor.SQL.Clear;
  DataModule1.IBQConsFornecedor.SQL.Add('select pj.cd_pessoa_ju, pj.rz_social');
  DataModule1.IBQConsFornecedor.SQL.Add('from PESSOA_JURIDICA pj');
  DataModule1.IBQConsFornecedor.SQL.Add('where');
  DataModule1.IBQConsFornecedor.SQL.Add('pj.cli_for = :pfornecedor and');
  DataModule1.IBQConsFornecedor.SQL.Add('pj.cd_pessoa_ju = :ppessoa');
  DataModule1.IBQConsFornecedor.ParamByName('pfornecedor').AsString := f;
  DataModule1.IBQConsFornecedor.ParamByName('ppessoa').AsInteger :=
  DataModule4.IBDEntradaMtCD_FORNECEDOR.AsInteger;
  DataModule1.IBQConsFornecedor.Open;

  //consulta a materia prima da NF
  DataModule4.IBQConsMtNf.Close;
  DataModule4.IBQConsMtNf.ParamByName('pmateria').AsInteger :=
  DataModule4.IBDEntradaMtCD_MAT_PRIMA.AsInteger;
  DataModule4.IBQConsMtNf.ParamByName('pfornecedor').AsInteger :=
  DataModule4.IBDEntradaMtCD_FORNECEDOR.AsInteger;
  DataModule4.IBQConsMtNf.Open;

  EdDsCdMtNf.Text := IntToStr(DataModule4.IBQConsMtNfCD_PRIMA_NF.AsInteger);
  EdDsMtNf.Text := DataModule4.IBQConsMtNfDS_PRIMA_NF.AsString;
  EdVlUnit.Text := FloatToStr(DataModule4.IBQConsMtNfVL_MAX.AsFloat);



  EdDsFornecedor.Text := DataModule1.IBQConsFornecedorRZ_SOCIAL.AsString;

  
  PaginaControle.ActivePage := TbCadastro;

    //atualiza o campo valor total.
    EdTotalEnt.Text :=
    FloatToStr(StrToFloat(DBEQuantidade.Text)* StrToFloat(DBEValor.Text));

    //atualiza o campo da descrição do movimento
    DBECdMovimentoExit(sender);
end;

procedure TFEntradaMP.DBEGridConsultaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
DBEGridConsultaDblClick(sender);

end;
end;

procedure TFEntradaMP.DBEGridConsultaEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFEntradaMP.DBEGridConsultaExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFEntradaMP.DBEQuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key <> #8) and (key <> #0) then
  begin
    EdQtdeEmbalagem.Clear;
  end;
end;

procedure TFEntradaMP.BPedidoClick(Sender: TObject);
var chegou, c : string;
begin
c := 'C';
chegou := 'S';

if (DBECdMtMateria.Text <> '') and (DBECdFornecedor.Text <> '') then
begin
Application.CreateForm(TFPodCompraAberto, FPodCompraAberto);

  DataModule4.IBQConsCompPendente.Close;
  DataModule4.IBQConsCompPendente.ParamByName('pmateria').AsInteger :=
  StrToInt(DBECdMtMateria.Text);
  DataModule4.IBQConsCompPendente.ParamByName('psituacao').AsString := c;
  DataModule4.IBQConsCompPendente.ParamByName('pchegou').AsString := chegou;
  DataModule4.IBQConsCompPendente.ParamByName('pfornecedor').AsInteger :=
  StrToInt(DBECdFornecedor.Text);
  DataModule4.IBQConsCompPendente.Open;

  if FPodCompraAberto.ShowModal = mrOk then
    begin
      if DataModule4.IBQConsCompPendenteCD_PEDIDO.AsInteger <> 0 then
      begin

       DataModule4.IBDEntradaMtCD_PEDIDO.AsInteger :=
        DataModule4.IBQConsCompPendenteCD_PEDIDO.AsInteger;

        EdQtdePedido.Text := FloatToStr(DataModule4.IBQConsCompPendenteQTDE.AsFloat - DataModule4.IBQConsCompPendenteQTDE_CHEGADA.AsFloat);
      end;
    end;

end;  


end;

procedure TFEntradaMP.DBEPedidoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataModule4.IBDEntradaMt.State in [dsinsert,dsedit] then
    begin
      if Key = VK_F5 then
      BPedido.Click;
    end;
end;

procedure TFEntradaMP.DBEQuantidadeExit(Sender: TObject);
begin
  if (DBEQuantidade.Text <> '') and (EdQtdePedido.Text <> '') then
    begin
      if StrToFloat(DBEQuantidade.Text) > StrToFloat(EdQtdePedido.Text)* 1.05 then
        begin
           MessageDlg('Quantidade maior do que pedido.',mtWarning,[mbok],0);
           DBEQuantidade.SetFocus;
           DBEQuantidade.Clear;

        end;
      end;
end;

procedure TFEntradaMP.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule4.IBDEntradaMt.State in [dsedit,dsinsert] then
  begin
   Application.MessageBox('Confirme ou Cancele o registro antes de fechar', 'Aviso ', MB_ICONWARNING+MB_OK);
  end
 else
   canclose := true;
end;

procedure TFEntradaMP.DBECdMtMateriaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F5 then
BMateriaPrima.Click;
end;

procedure TFEntradaMP.DBECdFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_F5 then
BFornecedor.Click;
end;

procedure TFEntradaMP.DBECdMovimentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F5 then
BMovimento.Click;
end;

procedure TFEntradaMP.BBarrasClick(Sender: TObject);
begin
  QrBarrasMt.Preview;
end;

procedure TFEntradaMP.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFEntradaMP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFEntradaMP.BitBtn1Click(Sender: TObject);
var qtde : integer;
begin
qtde := TRUNC(3.7);
showmessage(inttostr(qtde));
end;

procedure TFEntradaMP.EdQtdeEmbalagemKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

end.
