unit UPedidoCons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, rxToolEdit, RXDBCtrl, DB, Mask,
  ComCtrls, RbDrawCore, RbButton, ExtCtrls, dbcgrids, Grids, DBGrids,
  rxCurrEdit;

type
  TFPedidoCons = class(TForm)
    GroupBox1: TGroupBox;
    EdPedido: TEdit;
    Label1: TLabel;
    EdDsCliente: TEdit;
    DSPedido: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    DBEDtPedido: TDBDateEdit;
    DBEDtSistema: TDBDateEdit;
    Label5: TLabel;
    DBEHrPed: TDBEdit;
    Label6: TLabel;
    DBEModelo: TDBComboBox;
    Label7: TLabel;
    Label8: TLabel;
    DBEUsuario: TDBEdit;
    PaginaControle: TPageControl;
    TbProdutos: TTabSheet;
    TbObservacoes: TTabSheet;
    Label9: TLabel;
    DBEObservacoes: TDBMemo;
    Label10: TLabel;
    DBETransportador: TDBMemo;
    Label2: TLabel;
    DBECdCliente: TDBEdit;
    BCliente: TSpeedButton;
    EdDsCdCliente: TEdit;
    Label11: TLabel;
    EdNmFantasia: TEdit;
    EdCgc: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    EdInscEstadual: TEdit;
    EdRua: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    EdBairro: TEdit;
    Label16: TLabel;
    EdCidade: TEdit;
    Label17: TLabel;
    EdCep: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    BCondPgto: TSpeedButton;
    BTpCobranca: TSpeedButton;
    DBECondPgto: TDBEdit;
    DBETpCobranca: TDBEdit;
    EdDsCondPgto: TEdit;
    EdDsTpCobranca: TEdit;
    Label22: TLabel;
    Panel1: TPanel;
    BInserir: TRbButton;
    BCancelar: TRbButton;
    BConfirmar: TRbButton;
    BAlterar: TRbButton;
    BExcluir: TRbButton;
    DBESituacao: TDBEdit;
    BAddProd: TRbButton;
    DBGrid1: TDBGrid;
    DSGrid: TDataSource;
    BRemoveProd: TRbButton;
    DBEGridCorProd: TRxDBGrid;
    DSGridCor: TDataSource;
    BLocalEntrega: TRbButton;
    Label18: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    EdTotalBruto: TCurrencyEdit;
    EdTotalDesconto: TCurrencyEdit;
    EdTotalPedido: TCurrencyEdit;
    BSair: TRbButton;
    procedure BInserirClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure DSPedidoStateChange(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure DBECdClienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BClienteClick(Sender: TObject);
    procedure BTpCobrancaClick(Sender: TObject);
    procedure DBETpCobrancaExit(Sender: TObject);
    procedure BCondPgtoClick(Sender: TObject);
    procedure DBECondPgtoExit(Sender: TObject);
    procedure BAddProdClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BRemoveProdClick(Sender: TObject);
    procedure EdPedidoExit(Sender: TObject);
    procedure BAlterarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BLocalEntregaClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FPedidoCons: TFPedidoCons;
  tot_pedido, tot_desconto, tot_bruto : Real;
implementation

uses UDataModule3, UPrincipal, UDataModule1, UConsSimpCliente,
  UConsSimpTpCobranca, UConsSimpCondPgto, UDataModule2, UProdPedido,
  ULocalEntregaPed;

{$R *.dfm}

procedure TFPedidoCons.BInserirClick(Sender: TObject);
begin
        EdPedido.Clear;
        EdDsCdCliente.Clear;
        EdDsCliente.Clear;
        EdNmFantasia.Clear;
        EdCgc.Clear;
        EdInscEstadual.Clear;
        EdRua.Clear;
        EdBairro.Clear;
        EdCidade.Clear;
        EdCep.Clear;
        EdTotalBruto.Clear;
        EdTotalDesconto.Clear;
        EdTotalPedido.Clear;

        EdDsCondPgto.Clear;
        EdDsTpCobranca.Clear;


     DataModule3.IBDPedido.Open;
     DataModule3.IBDPedido.Insert;

     DBEDtSistema.Date := Date;
     DBEHrPed.Text := TimeToStr(Time);

      DataModule3.IBQUltimoPedido.Close;
      DataModule3.IBQUltimoPedido.Open;
      if DataModule3.IBQUltimoPedidoULTIMO.AsInteger = 0 then
        DataModule3.IBDPedidoCD_PEDIDO.AsInteger := 1
      else
        DataModule3.IBDPedidoCD_PEDIDO.AsInteger :=
        DataModule3.IBQUltimoPedidoULTIMO.AsInteger;

        //atualiza a grid de cores dos produtos do pedido
        DataModule3.IBQConsCoresProd.Close;
        DataModule3.IBQConsCoresProd.ParamByName('ppedido').AsInteger :=  999999;
        DataModule3.IBQConsCoresProd.ParamByName('pproduto').AsInteger := 999999;
        DataModule3.IBQConsCoresProd.Open;
        //atualia a grid dos produtos
        DataModule3.IBQConsProdutoPedido.Close;
        DataModule3.IBQConsProdutoPedido.ParamByName('ppedido').AsInteger := 999999;
        DataModule3.IBQConsProdutoPedido.Open;

        EdPedido.Text := IntToStr(DataModule3.IBDPedidoCD_PEDIDO.AsInteger);

        DataModule3.IBDPedidoUSUARIOO.AsString := FPrincipal.usuario;
        DataModule3.IBDPedidoCD_PESSOA_USU.AsInteger := FPrincipal.cd_pessoa_usu;

        DataModule3.IBDPedidoSITUACAO.AsString := 'E';

        DBESituacao.Field.AsString := 'ESPERA';
        DBECdCliente.SetFocus;

end;

procedure TFPedidoCons.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule3.IBDPedido.Cancel;
  DataModule1.IBTTransacao.Rollback;

        EdPedido.Clear;
        EdDsCdCliente.Clear;
        EdDsCliente.Clear;
        EdNmFantasia.Clear;
        EdCgc.Clear;
        EdInscEstadual.Clear;
        EdRua.Clear;
        EdBairro.Clear;
        EdCidade.Clear;
        EdCep.Clear;
        EdTotalBruto.Clear;
        EdTotalDesconto.Clear;
        EdTotalPedido.Clear;

        EdDsCondPgto.Clear;
        EdDsTpCobranca.Clear;

  
 end;
end;

procedure TFPedidoCons.DSPedidoStateChange(Sender: TObject);
begin
if DataModule3.IBDPedido.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      BAddProd.Enabled := true;
      BRemoveProd.Enabled := true;
      BCliente.Enabled := true;
      BCondPgto.Enabled := true;
      BTpCobranca.Enabled := true;
      //BLocalEntrega.Enabled := true;
    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      BAddProd.Enabled := false;
      BRemoveProd.Enabled := false;
      BCliente.Enabled := false;
      BCondPgto.Enabled := false;
      BTpCobranca.Enabled := false;
      //BLocalEntrega.Enabled := false;
    end;
end;

procedure TFPedidoCons.BConfirmarClick(Sender: TObject);
begin
    if DBECdCliente.Text = '' then
        begin
          MessageDlg('Campo Cliente � obrigat�rio.',mtWarning,[mbok],0);
          DBECdCliente.SetFocus;
        end
      else
        if DBEDtPedido.Date = 0 then
          begin
          MessageDlg('Campo Data do Pedido � obrigat�rio.',mtWarning,[mbok],0);
          DBEDtPedido.SetFocus;
          end
        else
        if DBECondPgto.Text = '' then
          begin
          MessageDlg('Campo Condi��o de Pagamento � obrigat�rio.',mtWarning,[mbok],0);
          DBECondPgto.SetFocus;
          end
        else
        if DBETpCobranca.Text = '' then
          begin
          MessageDlg('Campo Tipo de Cobran�a � obrigat�rio.',mtWarning,[mbok],0);
          DBETpCobranca.SetFocus;
          end
        else
          begin

            DataModule3.IBDLocalEntrega.Close;
            DataModule3.IBDLocalEntrega.ParamByName('ppedido').AsInteger :=
            DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
            DataModule3.IBDLocalEntrega.Open;
            if (DataModule3.IBDLocalEntrega.IsEmpty) then
              begin
                if Application.MessageBox('Deseja Cadastrar Local de Entrega?', 'Local de Entrega', MB_ICONQUESTION+MB_YESNO) = idyes then
                  begin
                     BLocalEntrega.Click;
                  end
                else
                  begin
                    DataModule3.IBDPedido.Post;
                    DataModule1.IBTTransacao.CommitRetaining;
                  end;
              end

          else
            begin


            DataModule3.IBDPedido.Post;
            DataModule1.IBTTransacao.CommitRetaining;

          end;
          end;
end;

procedure TFPedidoCons.DBECdClienteExit(Sender: TObject);
begin

if DBECdCliente.Text <> '' then
  begin
if DataModule3.IBDPedido.State in [dsinsert,dsedit] then
  begin
        EdDsCdCliente.Clear;
        EdDsCliente.Clear;
        EdNmFantasia.Clear;
        EdCgc.Clear;
        EdInscEstadual.Clear;
        EdRua.Clear;
        EdBairro.Clear;
        EdCidade.Clear;
        EdCep.Clear;

    DataModule3.IBQGeralPessoa.Close;
    DataModule3.IBQGeralPessoa.SQL.Clear;
    DataModule3.IBQGeralPessoa.SQL.Add('select p.*, pj.*, c.nm_cidade');
    DataModule3.IBQGeralPessoa.SQL.Add('from');
    DataModule3.IBQGeralPessoa.SQL.Add('pessoa p, pessoa_juridica pj, cidade c');
    DataModule3.IBQGeralPessoa.SQL.Add('where');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cd_pessoa = p.cd_pessoa and');
    DataModule3.IBQGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cd_pessoa_ju = :ppessoa');
    DataModule3.IBQGeralPessoa.ParamByName('ppessoa').AsInteger := StrToInt(DBECdCliente.Text);
    DataModule3.IBQGeralPessoa.Open;
    if DataModule3.IBQGeralPessoa.IsEmpty then
      begin
        ShowMessage('Cliente n�o encontrado');
        DBECdCliente.SetFocus;
      end
    else
      begin
        EdDsCdCliente.Text := IntToStr(DataModule3.IBQGeralPessoaCD_PESSOA_JU.AsInteger);
        EdDsCliente.Text := DataModule3.IBQGeralPessoaRZ_SOCIAL.AsString;
        EdNmFantasia.Text := DataModule3.IBQGeralPessoaNM_FANTAZIA.AsString;
        EdCgc.Text := DataModule3.IBQGeralPessoaCGC.AsString;
        EdInscEstadual.Text := DataModule3.IBQGeralPessoaINSC_ESTADUAL.AsString;
        EdRua.Text := DataModule3.IBQGeralPessoaRUA.AsString;
        EdBairro.Text := DataModule3.IBQGeralPessoaBAIRRO.AsString;
        EdCidade.Text := DataModule3.IBQGeralPessoaNM_CIDADE.AsString;
        EdCep.Text := DataModule3.IBQGeralPessoaCEP.AsString;
      end;
    end;
  end;
end;

procedure TFPedidoCons.FormShow(Sender: TObject);
begin
        EdPedido.Clear;
        EdDsCdCliente.Clear;
        EdDsCliente.Clear;
        EdNmFantasia.Clear;
        EdCgc.Clear;
        EdInscEstadual.Clear;
        EdRua.Clear;
        EdBairro.Clear;
        EdCidade.Clear;
        EdCep.Clear;
        EdTotalBruto.Clear;
        EdTotalDesconto.Clear;
        EdTotalPedido.Clear;

        EdDsCondPgto.Clear;
        EdDsTpCobranca.Clear;

        DBEDtPedido.Clear;
        DBEDtSistema.Clear;
        DBEHrPed.Clear;
        DBEModelo.ItemIndex := -1;
        DBEUsuario.Clear;
        DBEObservacoes.Clear;
        DBECdCliente.Clear;
        DBECondPgto.Clear;
        DBETpCobranca.Clear;
        DBESituacao.Clear;
        DBETransportador.Clear;

        EdPedido.SetFocus;

        DataModule3.IBQConsProdutoPedido.Close;
        DataModule3.IBQConsProdutoPedido.ParamByName('ppedido').AsInteger := 999999;
        DataModule3.IBQConsProdutoPedido.Open;

        DataModule3.IBQConsCoresProd.Close;
       DataModule3.IBQConsCoresProd.ParamByName('ppedido').AsInteger := 999999;
       DataModule3.IBQConsCoresProd.ParamByName('pproduto').AsInteger := 999999;
       DataModule3.IBQConsCoresProd.Open;
        

end;

procedure TFPedidoCons.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFPedidoCons.BClienteClick(Sender: TObject);
begin
  Application.CreateForm(TFConsSimpCliente, FConsSimpCliente);
  if FConsSimpCliente.ShowModal = mrOk then
    begin
      DataModule3.IBDPedidoCD_PESSOA_JU.AsInteger :=
      DataModule3.IBQGeralPessoaCD_PESSOA_JU.AsInteger;
    end;
end;

procedure TFPedidoCons.BTpCobrancaClick(Sender: TObject);
begin
  Application.CreateForm(TFConsSimpTpCobranca, FConsSimpTpCobranca);
  if FConsSimpTpCobranca.ShowModal = mrOk then
    begin
      DataModule3.IBDPedidoCD_TIPO_COBRANCA.AsInteger :=
      DataModule1.IBQConsTpCobrancaCD_TIPO_COBRANCA.AsInteger;
      DBETpCobranca.SetFocus;
    end;
end;

procedure TFPedidoCons.DBETpCobrancaExit(Sender: TObject);
begin
  if DBETpCobranca.Text <> '' then
    begin
    if DataModule3.IBDPedido.State in [dsinsert,dsedit] then
       begin
        DataModule1.IBQConsTpCobranca.Close;
        DataModule1.IBQConsTpCobranca.SQL.Clear;
        DataModule1.IBQConsTpCobranca.SQL.Add('select * from TIPO_COBRANCA');
        DataModule1.IBQConsTpCobranca.SQL.Add('where cd_tipo_cobranca = :pcobranca');
        DataModule1.IBQConsTpCobranca.ParamByName('pcobranca').AsInteger := StrToInt(DBETpCobranca.Text);
        DataModule1.IBQConsTpCobranca.Open;
        if DataModule1.IBQConsTpCobranca.IsEmpty then
          begin
            ShowMessage('N�o existe Tipo de Cobran�a cadastrados com este c�digo!');
            DBETpCobranca.SetFocus;
            DBETpCobranca.Clear;
          end
        else
          begin
             EdDsTpCobranca.Text := DataModule1.IBQConsTpCobrancaDS_TIPO_COBRANCA.AsString;

          end;

   end;
  end;
end;

procedure TFPedidoCons.BCondPgtoClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpCondPgto, FConsSimpCondPgto);
if FConsSimpCondPgto.ShowModal = mrOk then
    begin
      DataModule3.IBDPedidoCD_COND_PGTO.AsInteger :=
      DataModule1.IBQConsCondPgtoCD_COND_PGTO.AsInteger;
      DBECondPgto.SetFocus;
    end;
end;

procedure TFPedidoCons.DBECondPgtoExit(Sender: TObject);
begin
if DBECondPgto.Text <> '' then
    begin
    if DataModule3.IBDPedido.State in [dsinsert,dsedit] then
         DataModule1.IBQConsCondPgto.Close;
         DataModule1.IBQConsCondPgto.SQL.Clear;
         DataModule1.IBQConsCondPgto.SQL.Add('select * from CONDICAO_PGTO');
         DataModule1.IBQConsCondPgto.SQL.Add('where cd_cond_pgto = :pcondicao');
         DataModule1.IBQConsCondPgto.ParamByName('pcondicao').AsInteger := StrToInt(DBECondPgto.Text);
         DataModule1.IBQConsCondPgto.Open;
        if  DataModule1.IBQConsCondPgto.IsEmpty then
          begin
            ShowMessage('N�o existe condi��o de pagamento cadastrado com este c�digo');
            DBECondPgto.SetFocus;
            DBECondPgto.Clear;
          end
        else
          begin
            EdDsCondPgto.Text := DataModule1.IBQConsCondPgtoDS_COND_PGTO.AsString;
          end;
        end;
       
end;

procedure TFPedidoCons.BAddProdClick(Sender: TObject);
begin
if (DataModule3.IBDPedido.State in [dsInsert, dsedit]) then
   begin

       Application.CreateForm(TFProdPedido, FProdPedido);

       DataModule3.IBDProdPedido.open;
       DataModule3.IBDProdPedido.Insert;

       DataModule3.IBDProdPedidoCD_PEDIDO.AsInteger := DataModule3.IBDPedidoCD_PEDIDO.AsInteger;

               if FProdPedido.ShowModal = mrCancel then
                begin

                   DataModule3.IBQApagaCorProdGeral.Close;
                   DataModule3.IBQApagaCorProdGeral.ParamByName('ppedido').AsInteger :=
                   DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
                   DataModule3.IBQApagaCorProdGeral.ParamByName('pproduto').AsInteger :=
                   DataModule3.IBDProdPedidoCD_PRODUTO.AsInteger;
                   DataModule3.IBQApagaCorProdGeral.Open;

                   DataModule3.IBQConsCoresProd.Close;
                   DataModule3.IBQConsCoresProd.ParamByName('ppedido').AsInteger :=
                   DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
                   DataModule3.IBQConsCoresProd.ParamByName('pproduto').AsInteger :=
                   DataModule3.IBDProdPedidoCD_PRODUTO.AsInteger;
                   DataModule3.IBQConsCoresProd.Open;

                   DataModule3.IBDProdPedido.Cancel;
                   DataModule3.IBDCorProd.Cancel;

                   Abort;
                end
               else
                  begin
                    if FProdPedido.DBECdProduto.Text = '' then
                      begin
                        showmessage('Produto � obrigat�rio!');
                        DataModule3.IBDProdPedido.Cancel;
                        FProdPedido.Close;
                        abort;
                      end
                     else
                    if FProdPedido.DBEQtde.Text = '' then
                      begin
                        showmessage('Quantidade � obrigat�rio!');
                        DataModule3.IBDProdPedido.Cancel;
                        FProdPedido.Close;
                        abort;
                      end
                    else
                      begin


                        DataModule3.IBDProdPedido.Post;

                        DataModule3.IBQConsProdutoPedido.Close;
                        DataModule3.IBQConsProdutoPedido.ParamByName('ppedido').AsInteger := DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
                        DataModule3.IBQConsProdutoPedido.Open;

                     //calcula totais do pedido
                     tot_pedido := 0;
                     tot_desconto := 0;
                     tot_bruto := 0;
                     DataModule3.IBQConsProdutoPedido.First;
                     while not DataModule3.IBQConsProdutoPedido.Eof do
                      begin
                         tot_pedido := tot_pedido + (DataModule3.IBQConsProdutoPedidoQTDE_PRODUTO.AsInteger * DataModule3.IBQConsProdutoPedidoVL_PROD_VENDA.AsFloat);
                         tot_desconto := tot_desconto + ((DataModule3.IBQConsProdutoPedidoVALOR_PROD.AsFloat - DataModule3.IBQConsProdutoPedidoVL_PROD_VENDA.AsFloat)* DataModule3.IBQConsProdutoPedidoQTDE_PRODUTO.AsInteger);
                         tot_bruto := tot_bruto + (DataModule3.IBQConsProdutoPedidoQTDE_PRODUTO.AsInteger * DataModule3.IBQConsProdutoPedidoVALOR_PROD.AsFloat);
                         DataModule3.IBQConsProdutoPedido.Next;
                      end;
                     EdTotalPedido.Text := FloatToStr(tot_pedido);
                     EdTotalDesconto.Text := FloatToStr(tot_desconto);
                     EdTotalBruto.Text := FloatToStr(tot_bruto);
                 end;
                 end;
                 end;


end;

procedure TFPedidoCons.BitBtn1Click(Sender: TObject);
begin
                        DataModule3.IBQConsProdutoPedido.Close;
                        DataModule3.IBQConsProdutoPedido.ParamByName('ppedido').AsInteger := DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
                        DataModule3.IBQConsProdutoPedido.Open;
end;

procedure TFPedidoCons.BRemoveProdClick(Sender: TObject);
begin
  //apaga todas as cores relacionadas com o produto e o pedido
    DataModule3.IBQApagaCoresProd.Close;
    DataModule3.IBQApagaCoresProd.ParamByName('ppedido').AsInteger :=
    DataModule3.IBQConsProdutoPedidoCD_PEDIDO.AsInteger;
    DataModule3.IBQApagaCoresProd.ParamByName('pproduto').AsInteger :=
    DataModule3.IBQConsProdutoPedidoCD_PRODUTO.AsInteger;
    DataModule3.IBQApagaCoresProd.Open;
   //atualiza a grid das cores
    DataModule3.IBQConsCoresProd.Close;
    DataModule3.IBQConsCoresProd.ParamByName('ppedido').AsInteger :=
    DataModule3.IBQConsProdutoPedidoCD_PEDIDO.AsInteger;
    DataModule3.IBQConsCoresProd.ParamByName('pproduto').AsInteger :=
    DataModule3.IBQConsProdutoPedidoCD_PRODUTO.AsInteger;
    DataModule3.IBQConsCoresProd.Open;
    //apaga o produto do pedido
    DataModule3.IBQApagaProdPed.Close;
    DataModule3.IBQApagaProdPed.ParamByName('ppedido').AsInteger :=
    DataModule3.IBQConsProdutoPedidoCD_PEDIDO.AsInteger;
    DataModule3.IBQApagaProdPed.ParamByName('pproduto').AsInteger :=
    DataModule3.IBQConsProdutoPedidoCD_PRODUTO.AsInteger;
    DataModule3.IBQApagaProdPed.Open;
    //atualiza a grid dos produtos
    DataModule3.IBQConsProdutoPedido.Close;
    DataModule3.IBQConsProdutoPedido.ParamByName('ppedido').AsInteger :=
    DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
    DataModule3.IBQConsProdutoPedido.Open;


    //calcula totais do pedido
    tot_pedido := 0;
    tot_desconto := 0;
    tot_bruto := 0;
    DataModule3.IBQConsProdutoPedido.First;
    while not DataModule3.IBQConsProdutoPedido.Eof do
      begin
        tot_pedido := tot_pedido + (DataModule3.IBQConsProdutoPedidoQTDE_PRODUTO.AsInteger * DataModule3.IBQConsProdutoPedidoVL_PROD_VENDA.AsFloat);
        tot_desconto := tot_desconto + ((DataModule3.IBQConsProdutoPedidoVALOR_PROD.AsFloat - DataModule3.IBQConsProdutoPedidoVL_PROD_VENDA.AsFloat)* DataModule3.IBQConsProdutoPedidoQTDE_PRODUTO.AsInteger);
        tot_bruto := tot_bruto + (DataModule3.IBQConsProdutoPedidoQTDE_PRODUTO.AsInteger * DataModule3.IBQConsProdutoPedidoVALOR_PROD.AsFloat);
        DataModule3.IBQConsProdutoPedido.Next;
      end;
    EdTotalPedido.Text := FloatToStr(tot_pedido);
    EdTotalDesconto.Text := FloatToStr(tot_desconto);
    EdTotalBruto.Text := FloatToStr(tot_bruto);

end;

procedure TFPedidoCons.EdPedidoExit(Sender: TObject);
begin
if EdPedido.Text <> '' then
  begin
  if not (DataModule3.IBDPedido.State in [dsinsert,dsedit]) then
    begin
    DataModule3.IBDPedido.Close;
    DataModule3.IBDPedido.ParamByName('ppedido').AsInteger :=
    StrToInt(EdPedido.Text);
    DataModule3.IBDPedido.Open;
    if DataModule3.IBDPedido.IsEmpty then
      begin
        ShowMessage('N�o existe pedido com este c�digo');
        EdPedido.SetFocus;
        EdPedido.Clear;
        EdPedido.Clear;
        EdDsCdCliente.Clear;
        EdDsCliente.Clear;
        EdNmFantasia.Clear;
        EdCgc.Clear;
        EdInscEstadual.Clear;
        EdRua.Clear;
        EdBairro.Clear;
        EdCidade.Clear;
        EdCep.Clear;
        EdTotalBruto.Clear;
        EdTotalDesconto.Clear;
        EdTotalPedido.Clear;

        EdDsCondPgto.Clear;
        EdDsTpCobranca.Clear;

        DataModule3.IBQConsProdutoPedido.Close;
        DataModule3.IBQConsProdutoPedido.ParamByName('ppedido').AsInteger := 999999;
        DataModule3.IBQConsProdutoPedido.Open;

        DataModule3.IBQConsCoresProd.Close;
        DataModule3.IBQConsCoresProd.ParamByName('ppedido').AsInteger := 999999;
        DataModule3.IBQConsCoresProd.ParamByName('pproduto').AsInteger := 999999;
        DataModule3.IBQConsCoresProd.Open;
      end
    else
      begin

    DataModule3.IBQConsPedido.Close;
    DataModule3.IBQConsPedido.ParamByName('ppedido').AsInteger :=
    StrToInt(EdPedido.Text);
    DataModule3.IBQConsPedido.Open;

    DataModule3.IBQGeralPessoa.Close;
    DataModule3.IBQGeralPessoa.SQL.Clear;
    DataModule3.IBQGeralPessoa.SQL.Add('select p.*, pj.*, c.nm_cidade');
    DataModule3.IBQGeralPessoa.SQL.Add('from');
    DataModule3.IBQGeralPessoa.SQL.Add('pessoa p, pessoa_juridica pj, cidade c');
    DataModule3.IBQGeralPessoa.SQL.Add('where');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cd_pessoa = p.cd_pessoa and');
    DataModule3.IBQGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cd_pessoa_ju = :ppessoa');
    DataModule3.IBQGeralPessoa.ParamByName('ppessoa').AsInteger := StrToInt(DBECdCliente.Text);
    DataModule3.IBQGeralPessoa.Open;

    EdDsCdCliente.Text := IntToStr(DataModule3.IBQGeralPessoaCD_PESSOA_JU.AsInteger);
    EdDsCliente.Text := DataModule3.IBQGeralPessoaRZ_SOCIAL.AsString;
    EdNmFantasia.Text := DataModule3.IBQGeralPessoaNM_FANTAZIA.AsString;
    EdCgc.Text := DataModule3.IBQGeralPessoaCGC.AsString;
    EdInscEstadual.Text := DataModule3.IBQGeralPessoaINSC_ESTADUAL.AsString;
    EdRua.Text := DataModule3.IBQGeralPessoaRUA.AsString;
    EdBairro.Text := DataModule3.IBQGeralPessoaBAIRRO.AsString;
    EdCidade.Text := DataModule3.IBQGeralPessoaNM_CIDADE.AsString;
    EdCep.Text := DataModule3.IBQGeralPessoaCEP.AsString;
    EdDsCondPgto.Text := DataModule3.IBQConsPedidoDS_COND_PGTO.AsString;
    EdDsTpCobranca.Text := DataModule3.IBQConsPedidoDS_TIPO_COBRANCA.AsString;

    DataModule3.IBQConsProdutoPedido.Close;
    DataModule3.IBQConsProdutoPedido.ParamByName('ppedido').AsInteger :=
    DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
    DataModule3.IBQConsProdutoPedido.Open;


    //calcula totais do pedido
    tot_pedido := 0;
    tot_desconto := 0;
    tot_bruto := 0;
    DataModule3.IBQConsProdutoPedido.First;
    while not DataModule3.IBQConsProdutoPedido.Eof do
      begin
        tot_pedido := tot_pedido + (DataModule3.IBQConsProdutoPedidoQTDE_PRODUTO.AsInteger * DataModule3.IBQConsProdutoPedidoVL_PROD_VENDA.AsFloat);
        tot_desconto := tot_desconto + ((DataModule3.IBQConsProdutoPedidoVALOR_PROD.AsFloat - DataModule3.IBQConsProdutoPedidoVL_PROD_VENDA.AsFloat)* DataModule3.IBQConsProdutoPedidoQTDE_PRODUTO.AsInteger);
        tot_bruto := tot_bruto + (DataModule3.IBQConsProdutoPedidoQTDE_PRODUTO.AsInteger * DataModule3.IBQConsProdutoPedidoVALOR_PROD.AsFloat);
        DataModule3.IBQConsProdutoPedido.Next;
      end;
      EdTotalPedido.Text := FloatToStr(tot_pedido);
      EdTotalDesconto.Text := FloatToStr(tot_desconto);
      EdTotalBruto.Text := FloatToStr(tot_bruto);

    end;
 end;
end;
end;

procedure TFPedidoCons.BAlterarClick(Sender: TObject);
begin
if DataModule3.IBDPedido.IsEmpty then
 begin
  Showmessage ('Pedido n�o pode ser editado vazio');
 end
  else
    begin
      DataModule3.IBDPedido.Edit;
    end;
end;

procedure TFPedidoCons.DBGrid1CellClick(Column: TColumn);
begin
{       DataModule3.IBQConsCoresProd.Close;
       DataModule3.IBQConsCoresProd.ParamByName('ppedido').AsInteger :=
       DataModule3.IBQConsProdutoPedidoCD_PEDIDO.AsInteger;
       DataModule3.IBQConsCoresProd.ParamByName('pproduto').AsInteger :=
       DataModule3.IBQConsProdutoPedidoCD_PRODUTO.AsInteger;
       DataModule3.IBQConsCoresProd.Open;}
end;

procedure TFPedidoCons.BLocalEntregaClick(Sender: TObject);
begin
  FLocalEntregaPed.ShowModal;
end;

procedure TFPedidoCons.BExcluirClick(Sender: TObject);
begin
if not DataModule3.IBDPedido.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
        DataModule3.IBQApagaGeral.Close;
        DataModule3.IBQApagaGeral.SQL.Clear;
        DataModule3.IBQApagaGeral.SQL.Add('delete from CORES_PROD_PED');
        DataModule3.IBQApagaGeral.SQL.Add('where cd_pedido = :ppedido');
        DataModule3.IBQApagaGeral.ParamByName('ppedido').AsInteger :=
        DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
        DataModule3.IBQApagaGeral.Open;

        DataModule3.IBQApagaGeral.Close;
        DataModule3.IBQApagaGeral.SQL.Clear;
        DataModule3.IBQApagaGeral.SQL.Add('delete from PRODUTOS_PEDIDO');
        DataModule3.IBQApagaGeral.SQL.Add('where cd_pedido = :ppedido');
        DataModule3.IBQApagaGeral.ParamByName('ppedido').AsInteger :=
        DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
        DataModule3.IBQApagaGeral.Open;

        DataModule3.IBQApagaGeral.Close;
        DataModule3.IBQApagaGeral.SQL.Clear;
        DataModule3.IBQApagaGeral.SQL.Add('delete from LOCAL_ENT_PEDI');
        DataModule3.IBQApagaGeral.SQL.Add('where cd_pedido = :ppedido');
        DataModule3.IBQApagaGeral.ParamByName('ppedido').AsInteger :=
        DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
        DataModule3.IBQApagaGeral.Open;


        DataModule3.IBDPedido.Delete;
        DataModule1.IBTTransacao.CommitRetaining;

        DataModule3.IBQConsCoresProd.Close;
        DataModule3.IBQConsCoresProd.ParamByName('ppedido').AsInteger :=
        DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
        DataModule3.IBQConsCoresProd.ParamByName('pproduto').AsInteger :=
        DataModule3.IBDProdPedidoCD_PRODUTO.AsInteger;
        DataModule3.IBQConsCoresProd.Open;


        DataModule3.IBQConsProdutoPedido.Close;
        DataModule3.IBQConsProdutoPedido.ParamByName('ppedido').AsInteger :=
        DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
        DataModule3.IBQConsProdutoPedido.Open;

        EdPedido.Clear;
        EdDsCdCliente.Clear;
        EdDsCliente.Clear;
        EdNmFantasia.Clear;
        EdCgc.Clear;
        EdInscEstadual.Clear;
        EdRua.Clear;
        EdBairro.Clear;
        EdCidade.Clear;
        EdCep.Clear;
        EdTotalBruto.Clear;
        EdTotalDesconto.Clear;
        EdTotalPedido.Clear;

        EdDsCondPgto.Clear;
        EdDsTpCobranca.Clear;


    end;
  end
 else
  Begin
   Showmessage('N�o existe Registros a serem excluidos ou n�o foi feita a sele��o do registro !');
  end;
end;

procedure TFPedidoCons.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule3.IBDPedido.State in [dsedit,dsinsert] then
  begin
   MessageDlg('Confirme ou Cancele os dados antes de fechar.',mtWarning,[mbok],0);
  end
 else
   canclose := true;
end;

procedure TFPedidoCons.BSairClick(Sender: TObject);
begin
Close;
end;

procedure TFPedidoCons.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.

