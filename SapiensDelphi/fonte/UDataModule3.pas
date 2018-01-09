unit UDataModule3;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery;

type
  TDataModule3 = class(TDataModule)
    IBDMovimentoEstoque: TIBDataSet;
    IBQUltimoMovimento: TIBQuery;
    IBQUltimoMovimentoULTIMO: TLargeintField;
    IBQConsMovimento: TIBQuery;
    IBQConsMovimentoCD_MOVIMENTO: TIntegerField;
    IBQConsMovimentoDS_MOVIMENTO: TIBStringField;
    IBQConsMovimentoTIPO_MOVIMENTO: TIBStringField;
    IBQConsMovimentoDT_CADASTRO: TDateField;
    IBQConsMovimentoUSUARIOO: TIBStringField;
    IBDMovimentoEstoqueCD_MOVIMENTO: TIntegerField;
    IBDMovimentoEstoqueDS_MOVIMENTO: TIBStringField;
    IBDMovimentoEstoqueTIPO_MOVIMENTO: TIBStringField;
    IBDMovimentoEstoqueDT_CADASTRO: TDateField;
    IBDMovimentoEstoqueUSUARIOO: TIBStringField;
    IBDGrupoProdutos: TIBDataSet;
    IBQUltimoGrupo: TIBQuery;
    IBQConsGrupoProdutos: TIBQuery;
    IBDGrupoProdutosCD_GRUPO: TIntegerField;
    IBDGrupoProdutosDS_GRUPO: TIBStringField;
    IBDGrupoProdutosDT_CADASTRO: TDateField;
    IBDGrupoProdutosUSUARIOO: TIBStringField;
    IBQUltimoGrupoULTIMO: TLargeintField;
    IBQConsGrupoProdutosCD_GRUPO: TIntegerField;
    IBQConsGrupoProdutosDS_GRUPO: TIBStringField;
    IBQConsGrupoProdutosDT_CADASTRO: TDateField;
    IBQConsGrupoProdutosUSUARIOO: TIBStringField;
    IBDSitTributaria: TIBDataSet;
    IBDSitTributariaCD_SITUACAO: TIntegerField;
    IBDSitTributariaDS_SITUACAO: TIBStringField;
    IBDSitTributariaSIGLA: TIBStringField;
    IBDSitTributariaISENTO_ICMS: TIBStringField;
    IBDSitTributariaICMS_SUBSTITUIDO: TIBStringField;
    IBDSitTributariaREDU_BC_ICMS: TIBStringField;
    IBQUltimoSitTribu: TIBQuery;
    IBQUltimoSitTribuULTIMO: TLargeintField;
    IBQConsSitTribu: TIBQuery;
    IBQConsSitTribuCD_SITUACAO: TIntegerField;
    IBQConsSitTribuDS_SITUACAO: TIBStringField;
    IBQConsSitTribuSIGLA: TIBStringField;
    IBQConsSitTribuISENTO_ICMS: TIBStringField;
    IBQConsSitTribuICMS_SUBSTITUIDO: TIBStringField;
    IBQConsSitTribuREDU_BC_ICMS: TIBStringField;
    IBDProduto: TIBDataSet;
    IBQUltimoProduto: TIBQuery;
    IBQUltimoProdutoULTIMO: TLargeintField;
    IBQConsTabsProd: TIBQuery;
    IBDProdutoCD_PRODUTO: TIntegerField;
    IBDProdutoCD_SITU_TRIBU: TIntegerField;
    IBDProdutoCD_UN_MEDIDA: TIntegerField;
    IBDProdutoCD_GRUPO_PROD: TIntegerField;
    IBDProdutoDS_PRODUTO: TIBStringField;
    IBDProdutoSITUACAO: TIBStringField;
    IBDProdutoPRECO_VENDA: TIBBCDField;
    IBDProdutoCUBICO: TIBBCDField;
    IBDProdutoCODIGO_BARRAS: TIBStringField;
    IBDProdutoVEND_SUSPENSA: TIBStringField;
    IBDProdutoPERC_MIN: TIBBCDField;
    IBDProdutoPERC_MAX: TIBBCDField;
    IBDProdutoPESO: TIBBCDField;
    IBDProdutoIMAGEM: TIBStringField;
    IBDProdutoDT_CADASTRO: TDateField;
    IBDProdutoUSUARIOO: TIBStringField;
    IBQConsTabsProdDS_GRUPO: TIBStringField;
    IBQConsTabsProdCD_GRUPO: TIntegerField;
    IBQConsTabsProdDS_UNIDADE: TIBStringField;
    IBQConsTabsProdCD_UNIDADE: TIntegerField;
    IBQConsTabsProdSIGLA_UNIDADE: TIBStringField;
    IBQConsTabsProdDS_SITUACAO: TIBStringField;
    IBQConsTabsProdCD_SITUACAO: TIntegerField;
    IBDCompProduto: TIBDataSet;
    IBDCompProdutoCD_MAT_PRIMA: TIntegerField;
    IBDCompProdutoCD_PRODUTO: TIntegerField;
    IBDCompProdutoQTDE_MAT_PRIMA: TIBBCDField;
    IBQConsComp: TIBQuery;
    IBQConsCompCD_MAT_PRIMA: TIntegerField;
    IBQConsCompDS_MAT_PRIMA: TIBStringField;
    IBQConsCompDS_UNIDADE: TIBStringField;
    IBQConsCompQTDE_MAT_PRIMA: TIBBCDField;
    IBQExisteMat: TIBQuery;
    IBQExisteMatCD_MAT_PRIMA: TIntegerField;
    IBQExisteMatCD_PRODUTO: TIntegerField;
    IBQExisteMatQTDE_MAT_PRIMA: TIBBCDField;
    IBQApagaComposicao: TIBQuery;
    IBDTabPreco: TIBDataSet;
    IBDTabPrecoCD_TABELA: TIntegerField;
    IBDTabPrecoDS_TABELA: TIBStringField;
    IBDTabPrecoSIGLA_TABELA: TIBStringField;
    IBDTabPrecoDT_CADASTRO: TDateField;
    IBDTabPrecoUSUARIO: TIBStringField;
    IBQUltimaTabela: TIBQuery;
    IBQUltimaTabelaULTIMO: TLargeintField;
    IBQConsTabPreco: TIBQuery;
    IBQConsTabPrecoCD_TABELA: TIntegerField;
    IBQConsTabPrecoDS_TABELA: TIBStringField;
    IBQConsTabPrecoSIGLA_TABELA: TIBStringField;
    IBQConsTabPrecoDT_CADASTRO: TDateField;
    IBQConsTabPrecoUSUARIO: TIBStringField;
    IBDProdTabela: TIBDataSet;
    IBDProdTabelaCD_PRODUTO: TIntegerField;
    IBDProdTabelaCD_TABELA: TIntegerField;
    IBDProdTabelaPRECO_VENDA: TIBBCDField;
    IBDProdTabelaDT_CAD: TDateField;
    IBDProdTabelaUSUARIOO: TIBStringField;
    IBQConsProdTabela: TIBQuery;
    IBQConsProdTabelaDS_PRODUTO: TIBStringField;
    IBQConsProdTabelaCD_PRODUTO: TIntegerField;
    IBQConsProdTabelaCD_TABELA: TIntegerField;
    IBQConsProdTabelaPRECO_VENDA: TIBBCDField;
    IBQConsProdTabelaDT_CAD: TDateField;
    IBQConsProdTabelaUSUARIOO: TIBStringField;
    IBQConsProduto: TIBQuery;
    IBQConsProdutoCD_PRODUTO: TIntegerField;
    IBQConsProdutoCD_SITU_TRIBU: TIntegerField;
    IBQConsProdutoCD_UN_MEDIDA: TIntegerField;
    IBQConsProdutoCD_GRUPO_PROD: TIntegerField;
    IBQConsProdutoDS_PRODUTO: TIBStringField;
    IBQConsProdutoSITUACAO: TIBStringField;
    IBQConsProdutoPRECO_VENDA: TIBBCDField;
    IBQConsProdutoCUBICO: TIBBCDField;
    IBQConsProdutoCODIGO_BARRAS: TIBStringField;
    IBQConsProdutoVEND_SUSPENSA: TIBStringField;
    IBQConsProdutoPERC_MIN: TIBBCDField;
    IBQConsProdutoPERC_MAX: TIBBCDField;
    IBQConsProdutoPESO: TIBBCDField;
    IBQConsProdutoIMAGEM: TIBStringField;
    IBQConsProdutoDT_CADASTRO: TDateField;
    IBQConsProdutoUSUARIOO: TIBStringField;
    IBQConsProdutoDS_SITUACAO: TIBStringField;
    IBQConsProdutoDS_UNIDADE: TIBStringField;
    IBQConsProdutoDS_GRUPO: TIBStringField;
    IBQPrecoProduto: TIBQuery;
    IBQPrecoProdutoPRECO_VENDA: TIBBCDField;
    IBQExisteProduto: TIBQuery;
    IBQExisteProdutoCD_PRODUTO: TIntegerField;
    IBQApagaProdTab: TIBQuery;
    IBQConsSimpTabPreco: TIBQuery;
    IBQConsSimpTabPrecoCD_TABELA: TIntegerField;
    IBQConsSimpTabPrecoDS_TABELA: TIBStringField;
    IBQConsSimpTabPrecoSIGLA_TABELA: TIBStringField;
    IBQConsSimpTabPrecoDT_CADASTRO: TDateField;
    IBQConsSimpTabPrecoUSUARIO: TIBStringField;
    IBDCarteira: TIBDataSet;
    IBDCarteiraCD_MAT_PRIMA: TIntegerField;
    IBDCarteiraQTDE: TIBBCDField;
    IBDProcesso: TIBDataSet;
    IBDProcessoCD_MAT_PRIMA: TIntegerField;
    IBDProcessoQTDE: TIBBCDField;
    IBDPedido: TIBDataSet;
    IBQUltimoPedido: TIBQuery;
    IBQUltimoPedidoULTIMO: TLargeintField;
    IBDPedidoCD_PEDIDO: TIntegerField;
    IBDPedidoCD_COND_PGTO: TIntegerField;
    IBDPedidoCD_PESSOA_JU: TIntegerField;
    IBDPedidoCD_TIPO_COBRANCA: TIntegerField;
    IBDPedidoDT_PEDIDO: TDateField;
    IBDPedidoDT_SISTEMA: TDateField;
    IBDPedidoHR_PEDIDO: TTimeField;
    IBDPedidoSITUACAO: TIBStringField;
    IBDPedidoOBSERVACOES: TIBStringField;
    IBDPedidoUSUARIOO: TIBStringField;
    IBDPedidoMODELO: TIBStringField;
    IBDPedidoTRANSPORTADOR: TIBStringField;
    IBQGeralPessoa: TIBQuery;
    IBQGeralPessoaCD_PESSOA: TIntegerField;
    IBQGeralPessoaCD_CIDADE: TIntegerField;
    IBQGeralPessoaRUA: TIBStringField;
    IBQGeralPessoaBAIRRO: TIBStringField;
    IBQGeralPessoaCEP: TIBStringField;
    IBQGeralPessoaCOMPLEMENTO: TIBStringField;
    IBQGeralPessoaHOME_PAGE: TIBStringField;
    IBQGeralPessoaDT_CADASTRO: TDateField;
    IBQGeralPessoaSITUACAO: TIBStringField;
    IBQGeralPessoaOBSERVACOES: TIBStringField;
    IBQGeralPessoaUSUARIO: TIBStringField;
    IBQGeralPessoaCD_PESSOA_JU: TIntegerField;
    IBQGeralPessoaCD_PESSOA1: TIntegerField;
    IBQGeralPessoaCGC: TIBStringField;
    IBQGeralPessoaINSC_ESTADUAL: TIBStringField;
    IBQGeralPessoaRZ_SOCIAL: TIBStringField;
    IBQGeralPessoaNM_FANTAZIA: TIBStringField;
    IBQGeralPessoaCLI_FOR: TIBStringField;
    IBQGeralPessoaBLOQUEADO: TIBStringField;
    IBQGeralPessoaRM_ATIVIDADE: TIBStringField;
    IBQGeralPessoaCD_REGIAO: TIntegerField;
    IBQGeralPessoaNM_CIDADE: TIBStringField;
    IBDProdPedido: TIBDataSet;
    IBDProdPedidoCD_PRODUTO: TIntegerField;
    IBDProdPedidoCD_PEDIDO: TIntegerField;
    IBDProdPedidoQTDE_PRODUTO: TIBBCDField;
    IBDProdPedidoPERC_DESCONTO: TIBBCDField;
    IBDProdPedidoVALOR_PROD: TIBBCDField;
    IBDProdPedidoVL_PROD_VENDA: TIBBCDField;
    IBQConsProdutoPedido: TIBQuery;
    IBQConsProdutoPedidoCD_PRODUTO: TIntegerField;
    IBQConsProdutoPedidoCD_PEDIDO: TIntegerField;
    IBQConsProdutoPedidoQTDE_PRODUTO: TIBBCDField;
    IBQConsProdutoPedidoPERC_DESCONTO: TIBBCDField;
    IBQConsProdutoPedidoVALOR_PROD: TIBBCDField;
    IBQConsProdutoPedidoVL_PROD_VENDA: TIBBCDField;
    IBQConsProdutoPedidoDS_PRODUTO: TIBStringField;
    IBQApagaProdPed: TIBQuery;
    IBQConsPedido: TIBQuery;
    IBQConsPedidoCD_PEDIDO: TIntegerField;
    IBQConsPedidoCD_COND_PGTO: TIntegerField;
    IBQConsPedidoCD_PESSOA_JU: TIntegerField;
    IBQConsPedidoCD_TIPO_COBRANCA: TIntegerField;
    IBQConsPedidoDT_PEDIDO: TDateField;
    IBQConsPedidoDT_SISTEMA: TDateField;
    IBQConsPedidoHR_PEDIDO: TTimeField;
    IBQConsPedidoSITUACAO: TIBStringField;
    IBQConsPedidoOBSERVACOES: TIBStringField;
    IBQConsPedidoUSUARIOO: TIBStringField;
    IBQConsPedidoMODELO: TIBStringField;
    IBQConsPedidoTRANSPORTADOR: TIBStringField;
    IBQConsPedidoDS_COND_PGTO: TIBStringField;
    IBQConsPedidoDS_TIPO_COBRANCA: TIBStringField;
    IBDCorProd: TIBDataSet;
    IBDCorProdCD_PEDIDO: TIntegerField;
    IBDCorProdCD_PRODUTO: TIntegerField;
    IBDCorProdQTDE: TIntegerField;
    IBDCorProdCOR: TIntegerField;
    IBQSomaQtdeCor: TIBQuery;
    IBQSomaQtdeCorSOMA_QTDE: TLargeintField;
    IBDCorProdCD_DESEMPATE: TIntegerField;
    IBQUltimaCorProd: TIBQuery;
    IBQUltimaCorProdULTIMO: TLargeintField;
    IBQConsCoresProd: TIBQuery;
    IBQConsCoresProdCD_PEDIDO: TIntegerField;
    IBQConsCoresProdCD_PRODUTO: TIntegerField;
    IBQConsCoresProdCD_DESEMPATE: TIntegerField;
    IBQConsCoresProdQTDE: TIntegerField;
    IBQConsCoresProdCOR: TIntegerField;
    IBQApagaCoresProd: TIBQuery;
    IBQApagaCorProd: TIBQuery;
    IBQApagaCorProdGeral: TIBQuery;
    IBQExisteCor: TIBQuery;
    IBQExisteCorCOR: TIntegerField;
    IBQExisteCorP: TIBQuery;
    IBQExisteCorPCD_MAT_PRIMA: TIntegerField;
    IBQExisteProd: TIBQuery;
    IBQExisteProdCD_PRODUTO: TIntegerField;
    IBDLocalEntrega: TIBDataSet;
    IBDLocalEntregaCD_PEDIDO: TIntegerField;
    IBDLocalEntregaCD_CIDADE: TIntegerField;
    IBDLocalEntregaENDERECO: TIBStringField;
    IBDLocalEntregaCEP: TIBStringField;
    IBDLocalEntregaBAIRRO: TIBStringField;
    IBQApagaGeral: TIBQuery;
    IBDPedidoCD_PESSOA_USU: TIntegerField;
    IBQConsProdTabelaCUBICO: TIBBCDField;
    IBQConsSimpPedido: TIBQuery;
    IBQConsSimpPedidoCD_PEDIDO: TIntegerField;
    IBQConsSimpPedidoCD_CLIENTE: TIntegerField;
    IBQConsSimpPedidoDT_PEDIDO: TDateField;
    IBQConsSimpPedidoDT_SISTEMA: TDateField;
    IBQConsSimpPedidoHR_PEDIDO: TTimeField;
    IBQConsSimpPedidoSITUACAO: TIBStringField;
    IBQConsSimpPedidoMODELO: TIBStringField;
    IBQConsSimpPedidoCD_USUARIO_JU: TIntegerField;
    IBQConsSimpPedidoRUA: TIBStringField;
    IBQConsSimpPedidoBAIRRO: TIBStringField;
    IBQConsSimpPedidoCEP: TIBStringField;
    IBQConsSimpPedidoCOMPLEMENTO: TIBStringField;
    IBQConsSimpPedidoRZ_SOCIAL: TIBStringField;
    IBQConsSimpPedidoCGC: TIBStringField;
    IBQConsSimpPedidoNM_CIDADE: TIBStringField;
    IBQConsSimpPedidoSIGLA_UF: TIBStringField;
    IBQConsSimpPedidoDS_COND_PGTO: TIBStringField;
    IBQConsSimpPedidoDS_TIPO_COBRANCA: TIBStringField;
    IBQExisteCorPFORA_LINHA: TIBStringField;
    IBQConsProdutoPedidoCUBICO: TIBBCDField;
    procedure IBDMovimentoEstoqueBeforePost(DataSet: TDataSet);
    procedure IBDGrupoProdutosBeforePost(DataSet: TDataSet);
    procedure IBDSitTributariaBeforePost(DataSet: TDataSet);
    procedure IBDProdutoBeforePost(DataSet: TDataSet);
    procedure IBDPedidoBeforePost(DataSet: TDataSet);
    procedure IBDCorProdBeforePost(DataSet: TDataSet);
    procedure IBQConsProdutoPedidoAfterScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

uses UDataModule1, UDataModule4;

{$R *.dfm}

procedure TDataModule3.IBDMovimentoEstoqueBeforePost(DataSet: TDataSet);
begin
if DataModule3.IBDMovimentoEstoque.State in [dsinsert] then
  begin
    DataModule3.IBQUltimoMovimento.Close;
    DataModule3.IBQUltimoMovimento.Open;
    if DataModule3.IBQUltimoMovimentoULTIMO.AsInteger = 0 then
        DataModule3.IBDMovimentoEstoqueCD_MOVIMENTO.AsInteger := 1
    else
        DataModule3.IBDMovimentoEstoqueCD_MOVIMENTO.AsInteger :=
        DataModule3.IBQUltimoMovimentoULTIMO.AsInteger;
end;
end;

procedure TDataModule3.IBDGrupoProdutosBeforePost(DataSet: TDataSet);
begin
if DataModule3.IBDGrupoProdutos.State in [dsinsert] then
  begin
    DataModule3.IBQUltimoGrupo.Close;
    DataModule3.IBQUltimoGrupo.Open;
    if DataModule3.IBQUltimoGrupoULTIMO.AsInteger = 0 then
        DataModule3.IBDGrupoProdutosCD_GRUPO.AsInteger := 1
    else
        DataModule3.IBDGrupoProdutosCD_GRUPO.AsInteger :=
        DataModule3.IBQUltimoGrupoULTIMO.AsInteger;
end;
end;

procedure TDataModule3.IBDSitTributariaBeforePost(DataSet: TDataSet);
begin
if DataModule3.IBDSitTributaria.State in [dsinsert] then
  begin
    DataModule3.IBQUltimoSitTribu.Close;
    DataModule3.IBQUltimoSitTribu.Open;
    if DataModule3.IBQUltimoSitTribuULTIMO.AsInteger = 0 then
        DataModule3.IBDSitTributariaCD_SITUACAO.AsInteger := 1
    else
        DataModule3.IBDSitTributariaCD_SITUACAO.AsInteger :=
        DataModule3.IBQUltimoSitTribuULTIMO.AsInteger;
end;
end;

procedure TDataModule3.IBDProdutoBeforePost(DataSet: TDataSet);
begin
{if DataModule3.IBDProduto.State in [dsinsert] then
  begin
    DataModule3.IBQUltimoProduto.Close;
    DataModule3.IBQUltimoProduto.Open;
    if DataModule3.IBQUltimoProdutoULTIMO.AsInteger = 0 then
        DataModule3.IBDProdutoCD_PRODUTO.AsInteger := 1
    else
        DataModule3.IBDProdutoCD_PRODUTO.AsInteger :=
        DataModule3.IBQUltimoProdutoULTIMO.AsInteger;
end;}
end;

procedure TDataModule3.IBDPedidoBeforePost(DataSet: TDataSet);
begin
{if DataModule3.IBDProduto.State in [dsinsert] then
  begin
    DataModule3.IBQUltimoPedido.Close;
    DataModule3.IBQUltimoPedido.Open;
    if DataModule3.IBQUltimoPedidoULTIMO.AsInteger = 0 then
        DataModule3.IBDPedidoCD_PEDIDO.AsInteger := 1
    else
        DataModule3.IBDPedidoCD_PEDIDO.AsInteger :=
        DataModule3.IBQUltimoPedidoULTIMO.AsInteger;
end;}
end;

procedure TDataModule3.IBDCorProdBeforePost(DataSet: TDataSet);
begin
  if DataModule3.IBDCorProd.State in [dsinsert] then
  begin
    DataModule3.IBQUltimaCorProd.Close;
    DataModule3.IBQUltimaCorProd.Open;
    if DataModule3.IBQUltimaCorProdULTIMO.AsInteger = 0 then
        DataModule3.IBDCorProdCD_DESEMPATE.AsInteger := 1
    else
        DataModule3.IBDCorProdCD_DESEMPATE.AsInteger :=
        DataModule3.IBQUltimaCorProdULTIMO.AsInteger;
end;
end;

procedure TDataModule3.IBQConsProdutoPedidoAfterScroll(DataSet: TDataSet);
begin
   IBQConsCoresProd.Close;
   IBQConsCoresProd.ParamByName('ppedido').AsInteger :=
   IBQConsProdutoPedidoCD_PEDIDO.AsInteger;
   IBQConsCoresProd.ParamByName('pproduto').AsInteger :=
   IBQConsProdutoPedidoCD_PRODUTO.AsInteger;
   IBQConsCoresProd.Open;

end;

procedure TDataModule3.DataModuleCreate(Sender: TObject);
var i : Integer;
begin
    for i := 0 to ComponentCount - 1 do
          begin
            if Components[i] is TIBDataSet then
              begin
                 TIBDataSet(Components[i]).Active := true;;
              end;
          end;
end;

end.
