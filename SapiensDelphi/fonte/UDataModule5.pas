unit UDataModule5;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery, DBClient, Provider;

type
  TDataModule5 = class(TDataModule)
    IBQRelCompra: TIBQuery;
    IBQConsEtiqProd: TIBQuery;
    IBQConsEtiqProdCD_CONTROLE: TIntegerField;
    IBQConsEtiqProdCD_PRODUTO: TIntegerField;
    IBQConsEtiqProdDS_PRODUTO: TIBStringField;
    ProviderEtiquetasProd: TDataSetProvider;
    ClienteEtiquetasProd: TClientDataSet;
    ClienteEtiquetasProdCD_CONTROLE: TIntegerField;
    ClienteEtiquetasProdCD_PRODUTO: TIntegerField;
    ClienteEtiquetasProdDS_PRODUTO: TStringField;
    IBQConsClasse: TIBQuery;
    DsClasse: TDataSource;
    IBQConsMatPrima: TIBQuery;
    IBQConsMatPrimaCD_MAT_PRIMA: TIntegerField;
    IBQConsMatPrimaDS_MAT_PRIMA: TIBStringField;
    IBQConsMatPrimaQTDE_ESTOQUE: TIBBCDField;
    IBQConsMatPrimaSIGLA_UNIDADE: TIBStringField;
    IBQConsMatPrimaNM_FANTAZIA: TIBStringField;
    IBQConsMatPrimaVL_MAX: TIBBCDField;
    IBQConsMatPrimaVL_TOT: TIBBCDField;
    IBQConsClasseCD_CLASSE: TIntegerField;
    IBQConsClasseDS_CLASSE: TIBStringField;
    IBQConsClasseVL_CLASSE: TIBBCDField;
    IBQConsClasseQTDE_MT: TIntegerField;
    IBQConsMtEs: TIBQuery;
    DsEntSai: TDataSource;
    IBQConsEntSai: TIBQuery;
    IBQConsEntSaiDT_MOVIMENTO: TDateField;
    IBQConsEntSaiHR_MOVIMENTO: TTimeField;
    IBQConsEntSaiQTDE: TIBBCDField;
    IBQConsEntSaiDS_MOVIMENTO: TIBStringField;
    IBQConsEntSaiSIGLA_UNIDADE: TIBStringField;
    IBQConsMtEsCD_MAT_PRIMA: TIntegerField;
    IBQConsMtEsDS_MAT_PRIMA: TIBStringField;
    IBQConsMtEsTOTAL: TIBBCDField;
    IBQConsGrupoProd: TIBQuery;
    DsTabPreco: TDataSource;
    IBQConsProdTabela: TIBQuery;
    IBQConsGrupoProdCD_GRUPO: TIntegerField;
    IBQConsGrupoProdDS_GRUPO: TIBStringField;
    IBQConsGrupoProdDT_CADASTRO: TDateField;
    IBQConsGrupoProdUSUARIOO: TIBStringField;
    IBQGrupoProdCombo: TIBQuery;
    IBQGrupoProdComboCD_GRUPO: TIntegerField;
    IBQGrupoProdComboDS_GRUPO: TIBStringField;
    IBQConsProdTabelaDS_PRODUTO: TIBStringField;
    IBQConsProdTabelaCUBICO: TIBBCDField;
    IBQConsProdTabelaCD_PRODUTO: TIntegerField;
    IBQConsProdTabelaCD_TABELA: TIntegerField;
    IBQConsProdTabelaPRECO_VENDA: TIBBCDField;
    IBQConsProdTabelaDT_CAD: TDateField;
    IBQConsProdTabelaUSUARIOO: TIBStringField;
    IBQConsPedido: TIBQuery;
    IBQConsPedidoCD_PEDIDO: TIntegerField;
    IBQConsPedidoCD_CLIENTE: TIntegerField;
    IBQConsPedidoDT_PEDIDO: TDateField;
    IBQConsPedidoSITUACAO: TIBStringField;
    IBQConsPedidoMODELO: TIBStringField;
    IBQConsPedidoCD_USUARIO_JU: TIntegerField;
    IBQConsPedidoDT_SISTEMA: TDateField;
    IBQConsPedidoHR_PEDIDO: TTimeField;
    IBQConsPedidoRUA: TIBStringField;
    IBQConsPedidoBAIRRO: TIBStringField;
    IBQConsPedidoCEP: TIBStringField;
    IBQConsPedidoCOMPLEMENTO: TIBStringField;
    IBQConsPedidoRZ_SOCIAL: TIBStringField;
    IBQConsPedidoCGC: TIBStringField;
    IBQConsPedidoNM_CIDADE: TIBStringField;
    IBQConsPedidoSIGLA_UF: TIBStringField;
    IBQConsPedidoDS_COND_PGTO: TIBStringField;
    IBQConsPedidoDS_TIPO_COBRANCA: TIBStringField;
    DsPedido: TDataSource;
    IBQConsProdPedido: TIBQuery;
    DsCoresProd: TDataSource;
    IBQConsCoresProd: TIBQuery;
    IBQConsCoresProdCD_PEDIDO: TIntegerField;
    IBQConsCoresProdCD_PRODUTO: TIntegerField;
    IBQConsCoresProdCD_DESEMPATE: TIntegerField;
    IBQConsCoresProdQTDE: TIntegerField;
    IBQConsCoresProdCOR: TIntegerField;
    IBQConsPedidoNM_FANTAZIA: TIBStringField;
    IBQConsPedidoTOT_BRUTO: TIBBCDField;
    IBQConsPedidoTOT_LIQUIDO: TIBBCDField;
    IBQConsPedidoTOT_DESCONTO: TIBBCDField;
    IBQConsProdPedidoCD_PRODUTO: TIntegerField;
    IBQConsProdPedidoCD_PEDIDO: TIntegerField;
    IBQConsProdPedidoQTDE_PRODUTO: TIBBCDField;
    IBQConsProdPedidoPERC_DESCONTO: TIBBCDField;
    IBQConsProdPedidoVALOR_PROD: TIBBCDField;
    IBQConsProdPedidoVL_PROD_VENDA: TIBBCDField;
    IBQConsProdPedidoDS_PRODUTO: TIBStringField;
    IBQConsProdPedidoTOTAL: TIBBCDField;
    IBQSaidaProdData: TIBQuery;
    IBQSaidaProdDataDT_SAIDA: TDateField;
    IBQSaidaProdDataQTDE_SAIDA: TIntegerField;
    DsSaidaProdData: TDataSource;
    IBQSaidaProduto: TIBQuery;
    IBQSaidaProdutoCD_SAIDA: TIntegerField;
    IBQSaidaProdutoCD_PRODUTO: TIntegerField;
    IBQSaidaProdutoCD_COR: TIntegerField;
    IBQSaidaProdutoQTDE: TIntegerField;
    IBQSaidaProdutoDT_SAIDA: TDateField;
    IBQSaidaProdutoHR_SAIDA: TTimeField;
    IBQSaidaProdutoUSUARIOO: TIBStringField;
    IBQSaidaProdutoDS_PRODUTO: TIBStringField;
    IBQConsPedidoOBSERVACOES: TIBStringField;
    IBQSeExiste: TIBQuery;
    IBQLogInsert: TIBQuery;
    IBQLogUpdate: TIBQuery;
    IBQLogDelete: TIBQuery;
    IBQLogInsertCD_LOG: TIntegerField;
    IBQLogInsertTABELA: TIBStringField;
    IBQLogInsertOPERACAO: TIBStringField;
    IBQLogInsertSQL_SCRIPT: TBlobField;
    IBQLogInsertCD_USUARIO: TIntegerField;
    IBQLogInsertDATA: TDateField;
    IBQLogInsertHORA: TTimeField;
    IBQLogInsertNM_USUARIO: TIBStringField;
    IBQLogUpdateCD_LOG: TIntegerField;
    IBQLogUpdateTABELA: TIBStringField;
    IBQLogUpdateOPERACAO: TIBStringField;
    IBQLogUpdateSQL_SCRIPT: TBlobField;
    IBQLogUpdateCD_USUARIO: TIntegerField;
    IBQLogUpdateDATA: TDateField;
    IBQLogUpdateHORA: TTimeField;
    IBQLogUpdateNM_USUARIO: TIBStringField;
    IBQLogDeleteCD_LOG: TIntegerField;
    IBQLogDeleteTABELA: TIBStringField;
    IBQLogDeleteOPERACAO: TIBStringField;
    IBQLogDeleteSQL_SCRIPT: TBlobField;
    IBQLogDeleteCD_USUARIO: TIntegerField;
    IBQLogDeleteDATA: TDateField;
    IBQLogDeleteHORA: TTimeField;
    IBQLogDeleteNM_USUARIO: TIBStringField;
    IBQRelCompraCD_MAT_PRIMA: TIntegerField;
    IBQRelCompraDS_MAT_PRIMA: TIBStringField;
    IBQRelCompraQTDE_ESTOQUE: TIBBCDField;
    IBQRelCompraSIGLA_UNIDADE: TIBStringField;
    DsRelacaoCompra: TDataSource;
    IBQRelCompraConsumo: TIBQuery;
    IBQRelCompraConsumoCONSUMO: TIBBCDField;
    IBQRelCompraQtdePedido: TIBQuery;
    IBQRelCompraQtdePedidoQTDE_PEDIDO: TIBBCDField;
    IBQRelCompraQtdePedidoPREV_ENTREGA: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule5: TDataModule5;

implementation

uses UDataModule1, UDataModule3;

{$R *.dfm}

end.
