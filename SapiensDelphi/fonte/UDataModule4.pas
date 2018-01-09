unit UDataModule4;

interface

uses
  SysUtils, Classes, DB, IBQuery, IBCustomDataSet, Provider, DBClient;

type
  TDataModule4 = class(TDataModule)
    IBDCompraMt: TIBDataSet;
    IBDCompraMtCD_PEDIDO: TIntegerField;
    IBDCompraMtCD_FORNECEDOR: TIntegerField;
    IBDCompraMtLOCAL_RETIRA: TIBStringField;
    IBDCompraMtDT_COMPRA: TDateField;
    IBDCompraMtVENDEDOR: TIBStringField;
    IBDCompraMtCOND_PGTO: TIBStringField;
    IBDCompraMtPRAZO_ENTREGA: TIntegerField;
    IBDCompraMtDT_CHEGADA: TDateField;
    IBDCompraMtNUM_NOTA: TIBStringField;
    IBDCompraMtSITUACAO: TIBStringField;
    IBDCompraMtNUM_PEDIDO: TIBStringField;
    IBDCompraMtMODALIDADE: TIBStringField;
    IBDCompraMtOBSERVACOES: TIBStringField;
    IBQUltimaCompra: TIBQuery;
    IBQUltimaCompraULTIMO: TLargeintField;
    IBDCompraMtUSUARIOO: TIBStringField;
    IBDMtCompra: TIBDataSet;
    IBQConsMtCompra: TIBQuery;
    IBQConsMtCompraCD_PEDIDO: TIntegerField;
    IBQConsMtCompraCD_MAT_PRIMA: TIntegerField;
    IBQConsMtCompraQTDE: TIBBCDField;
    IBQConsMtCompraVALOR: TIBBCDField;
    IBQConsMtCompraCHEGOU: TIBStringField;
    IBQConsMtCompraDS_MAT_PRIMA: TIBStringField;
    IBQValorMt: TIBQuery;
    IBQValorMtVL_MAX: TIBBCDField;
    IBQApagaMt: TIBQuery;
    IBQExisteMt: TIBQuery;
    IBQExisteMtCD_MAT_PRIMA: TIntegerField;
    IBQConsCompra: TIBQuery;
    IBQConsCompraCD_PESSOA_JU: TIntegerField;
    IBQConsCompraRZ_SOCIAL: TIBStringField;
    IBQConsCompraCD_PEDIDO: TIntegerField;
    IBQConsCompraCD_FORNECEDOR: TIntegerField;
    IBQConsCompraLOCAL_RETIRA: TIBStringField;
    IBQConsCompraDT_COMPRA: TDateField;
    IBQConsCompraVENDEDOR: TIBStringField;
    IBQConsCompraCOND_PGTO: TIBStringField;
    IBQConsCompraPRAZO_ENTREGA: TIntegerField;
    IBQConsCompraDT_CHEGADA: TDateField;
    IBQConsCompraNUM_NOTA: TIBStringField;
    IBQConsCompraSITUACAO: TIBStringField;
    IBQConsCompraNUM_PEDIDO: TIBStringField;
    IBQConsCompraMODALIDADE: TIBStringField;
    IBQConsCompraOBSERVACOES: TIBStringField;
    IBQConsCompraUSUARIOO: TIBStringField;
    IBDCompraMtDT_PREVISTA: TDateField;
    IBQConsMtCompra2: TIBQuery;
    IBQConsMtCompra2CD_PEDIDO: TIntegerField;
    IBQConsMtCompra2CD_MAT_PRIMA: TIntegerField;
    IBQConsMtCompra2QTDE: TIBBCDField;
    IBQConsMtCompra2VALOR: TIBBCDField;
    IBQConsMtCompra2CHEGOU: TIBStringField;
    IBQConsMtCompra2DS_MAT_PRIMA: TIBStringField;
    IBQApagaMtGeral: TIBQuery;
    IBDEntradaMt: TIBDataSet;
    IBDEntradaMtCD_MAT_PRIMA: TIntegerField;
    IBDEntradaMtCD_CONTROLE: TIntegerField;
    IBDEntradaMtCD_MOVIMENTO: TIntegerField;
    IBDEntradaMtDT_MOVIMENTO: TDateField;
    IBDEntradaMtHR_MOVIMENTO: TTimeField;
    IBDEntradaMtQTDE: TIBBCDField;
    IBDEntradaMtVALOR_MT_PRIMA: TIBBCDField;
    IBDEntradaMtUSUARIOO: TIBStringField;
    IBDEntradaMtNUM_DOCUMENTO: TIBStringField;
    IBDEntradaMtPZ_PGTO: TIntegerField;
    IBDEntradaMtCD_FORNECEDOR: TIntegerField;
    IBDEntradaMtCD_PEDIDO: TIntegerField;
    IBQUltimaEntrada: TIBQuery;
    IBQUltimaEntradaULTIMO: TLargeintField;
    IBQConsMt: TIBQuery;
    IBQConsMtCD_MAT_PRIMA: TIntegerField;
    IBQConsMtCD_SETOR: TIntegerField;
    IBQConsMtCD_CLASSE: TIntegerField;
    IBQConsMtCD_UN_MEDIDA: TIntegerField;
    IBQConsMtDS_MAT_PRIMA: TIBStringField;
    IBQConsMtQTDE_EMBALAGEM: TIBBCDField;
    IBQConsMtVALOR: TIBBCDField;
    IBQConsMtESTOQUE_MINIMO: TIBBCDField;
    IBQConsMtPESO: TIBBCDField;
    IBQConsMtFORA_LINHA: TIBStringField;
    IBQConsMtIMAGEM: TIBStringField;
    IBQConsMtQTDE_ESTOQUE: TIBBCDField;
    IBQConsMtOBSERVACOES: TIBStringField;
    IBQConsMtDT_CADASTRO: TDateField;
    IBQConsMtUSUARIOO: TIBStringField;
    IBQConsMtCODIGO_BARRAS: TIBStringField;
    IBQConsMtSIGLA_UNIDADE: TIBStringField;
    IBQConsMtNf: TIBQuery;
    IBQConsMtNfDS_PRIMA_NF: TIBStringField;
    IBQConsMtNfCD_PRIMA_NF: TIntegerField;
    IBQConsMtNfVL_MAX: TIBBCDField;
    IBDMtNf: TIBDataSet;
    IBDMtNfCD_PRIMA_NF: TIntegerField;
    IBDMtNfCD_MAT_PRIMA: TIntegerField;
    IBDMtNfCD_FORNECEDOR: TIntegerField;
    IBDMtNfDS_PRIMA_NF: TIBStringField;
    IBDMtNfDT_CADASTRO: TDateField;
    IBDMtNfUSUARIOO: TIBStringField;
    IBDMtNfSITUACAO: TIBStringField;
    IBDMtNfVL_MAX: TIBBCDField;
    IBDMtNfVL_MIN: TIBBCDField;
    IBDMtNfIMPORTANCIA: TIBStringField;
    IBQConsMovimento: TIBQuery;
    IBQConsMovimentoCD_MOVIMENTO: TIntegerField;
    IBQConsMovimentoDS_MOVIMENTO: TIBStringField;
    IBQConsMovimentoTIPO_MOVIMENTO: TIBStringField;
    IBQConsMovimentoDT_CADASTRO: TDateField;
    IBQConsMovimentoUSUARIOO: TIBStringField;
    IBQSomaEnt: TIBQuery;
    IBQSomaEntTOT_ENTRADA: TIBBCDField;
    IBQSomaSaida: TIBQuery;
    IBQSomaSaidaTOT_SAIDA: TIBBCDField;
    IBQConsEntrada: TIBQuery;
    IBQConsEntradaCD_MAT_PRIMA: TIntegerField;
    IBQConsEntradaCD_CONTROLE: TIntegerField;
    IBQConsEntradaCD_MOVIMENTO: TIntegerField;
    IBQConsEntradaDT_MOVIMENTO: TDateField;
    IBQConsEntradaHR_MOVIMENTO: TTimeField;
    IBQConsEntradaQTDE: TIBBCDField;
    IBQConsEntradaVALOR_MT_PRIMA: TIBBCDField;
    IBQConsEntradaUSUARIOO: TIBStringField;
    IBQConsEntradaNUM_DOCUMENTO: TIBStringField;
    IBQConsEntradaPZ_PGTO: TIntegerField;
    IBQConsEntradaCD_FORNECEDOR: TIntegerField;
    IBQConsEntradaCD_PEDIDO: TIntegerField;
    IBQConsEntradaDS_MAT_PRIMA: TIBStringField;
    IBQConsEntradaRZ_SOCIAL: TIBStringField;
    IBQConsCompPendente: TIBQuery;
    IBQConsCompPendenteCD_PEDIDO: TIntegerField;
    IBQConsCompPendenteCD_FORNECEDOR: TIntegerField;
    IBQConsCompPendenteLOCAL_RETIRA: TIBStringField;
    IBQConsCompPendenteDT_COMPRA: TDateField;
    IBQConsCompPendenteVENDEDOR: TIBStringField;
    IBQConsCompPendenteCOND_PGTO: TIBStringField;
    IBQConsCompPendentePRAZO_ENTREGA: TIntegerField;
    IBQConsCompPendenteDT_CHEGADA: TDateField;
    IBQConsCompPendenteNUM_NOTA: TIBStringField;
    IBQConsCompPendenteSITUACAO: TIBStringField;
    IBQConsCompPendenteNUM_PEDIDO: TIBStringField;
    IBQConsCompPendenteMODALIDADE: TIBStringField;
    IBQConsCompPendenteOBSERVACOES: TIBStringField;
    IBQConsCompPendenteUSUARIOO: TIBStringField;
    IBQConsCompPendenteDT_PREVISTA: TDateField;
    IBQConsCompPendenteCD_PEDIDO1: TIntegerField;
    IBQConsCompPendenteCD_MAT_PRIMA: TIntegerField;
    IBQConsCompPendenteQTDE: TIBBCDField;
    IBQConsCompPendenteVALOR: TIBBCDField;
    IBQConsCompPendenteCHEGOU: TIBStringField;
    IBQConsCompPendenteRZ_SOCIAL: TIBStringField;
    IBQQtdeComp: TIBQuery;
    IBQQtdeCompCD_PEDIDO: TIntegerField;
    IBQQtdeCompCD_MAT_PRIMA: TIntegerField;
    IBQQtdeCompQTDE: TIBBCDField;
    IBQQtdeCompVALOR: TIBBCDField;
    IBQQtdeCompCHEGOU: TIBStringField;
    IBDSaidaMt: TIBDataSet;
    IBDSaidaMtCD_MAT_PRIMA: TIntegerField;
    IBDSaidaMtCD_CONTROLE: TIntegerField;
    IBDSaidaMtCD_MOVIMENTO: TIntegerField;
    IBDSaidaMtDT_MOVIMENTO: TDateField;
    IBDSaidaMtHR_MOVIMENTO: TTimeField;
    IBDSaidaMtQTDE: TIBBCDField;
    IBDSaidaMtVALOR_MT_PRIMA: TIBBCDField;
    IBDSaidaMtUSUARIOO: TIBStringField;
    IBDSaidaMtNUM_DOCUMENTO: TIBStringField;
    IBDSaidaMtPZ_PGTO: TIntegerField;
    IBDSaidaMtCD_FORNECEDOR: TIntegerField;
    IBDSaidaMtCD_PEDIDO: TIntegerField;
    IBQUltimaSaida: TIBQuery;
    IBQUltimaSaidaULTIMO: TLargeintField;
    IBQConsMatNf: TIBQuery;
    IBQConsMatNfCD_PRIMA_NF: TIntegerField;
    IBQConsMatNfCD_MAT_PRIMA: TIntegerField;
    IBQConsMatNfCD_FORNECEDOR: TIntegerField;
    IBQConsMatNfDS_PRIMA_NF: TIBStringField;
    IBQConsMatNfDT_CADASTRO: TDateField;
    IBQConsMatNfUSUARIOO: TIBStringField;
    IBQConsMatNfSITUACAO: TIBStringField;
    IBQConsMatNfVL_MAX: TIBBCDField;
    IBQConsMatNfVL_MIN: TIBBCDField;
    IBQConsMatNfIMPORTANCIA: TIBStringField;
    IBQConsMatNfCD_MAT_PRIMA1: TIntegerField;
    IBQConsMatNfCD_SETOR: TIntegerField;
    IBQConsMatNfCD_CLASSE: TIntegerField;
    IBQConsMatNfCD_UN_MEDIDA: TIntegerField;
    IBQConsMatNfDS_MAT_PRIMA: TIBStringField;
    IBQConsMatNfQTDE_EMBALAGEM: TIBBCDField;
    IBQConsMatNfVALOR: TIBBCDField;
    IBQConsMatNfESTOQUE_MINIMO: TIBBCDField;
    IBQConsMatNfPESO: TIBBCDField;
    IBQConsMatNfFORA_LINHA: TIBStringField;
    IBQConsMatNfIMAGEM: TIBStringField;
    IBQConsMatNfQTDE_ESTOQUE: TIBBCDField;
    IBQConsMatNfOBSERVACOES: TIBStringField;
    IBQConsMatNfDT_CADASTRO1: TDateField;
    IBQConsMatNfUSUARIOO1: TIBStringField;
    IBQConsMatNfCODIGO_BARRAS: TIBStringField;
    IBQConsMatNfDS_UNIDADE: TIBStringField;
    IBQConsMatNfSIGLA_UNIDADE: TIBStringField;
    IBQConsMatNfDS_CLASSE: TIBStringField;
    IBQConsMatNfCD_PESSOA_JU: TIntegerField;
    IBQConsMatNfRZ_SOCIAL: TIBStringField;
    IBQCarPro: TIBQuery;
    IBQCarProQTDE_ESTOQUE: TIBBCDField;
    IBQCarProQTDE_CAR: TIBBCDField;
    IBQCarProQTDE_PRO: TIBBCDField;
    IBQCarProDISPONIVEL: TIBBCDField;
    IBQQtdeEstoque: TIBQuery;
    IBQQtdeEstoqueQTDE_ESTOQUE: TIBBCDField;
    IBQConsSaida: TIBQuery;
    IBQConsSaidaDT_MOVIMENTO: TDateField;
    IBQConsSaidaHR_MOVIMENTO: TTimeField;
    IBQConsSaidaCD_MAT_PRIMA: TIntegerField;
    IBQConsSaidaDS_MAT_PRIMA: TIBStringField;
    IBQConsSaidaQTDE_EMBALAGEM: TIBBCDField;
    IBQConsSaidaQTDE_ESTOQUE: TIBBCDField;
    IBQConsSaidaSIGLA_UNIDADE: TIBStringField;
    IBQConsSaidaDS_MOVIMENTO: TIBStringField;
    IBQConsSaidaRZ_SOCIAL: TIBStringField;
    IBQConsSaidaQTDE: TIBBCDField;
    IBQConsSaidaCD_CONTROLE: TIntegerField;
    IBQConsSaidaCD_MOVIMENTO: TIntegerField;
    IBQConsSaidaVALOR_MT_PRIMA: TIBBCDField;
    IBQConsSaidaUSUARIOO: TIBStringField;
    IBQConsSaidaNUM_DOCUMENTO: TIBStringField;
    IBQConsSaidaPZ_PGTO: TIntegerField;
    IBQConsSaidaCD_FORNECEDOR: TIntegerField;
    IBQConsSaidaCD_PEDIDO: TIntegerField;
    IBQConsSaidaCD_MAT_PRIMA1: TIntegerField;
    IBQConsSaidaCD_PRIMA_NF: TIntegerField;
    IBQConsSaidaDS_PRIMA_NF: TIBStringField;
    IBQCarteiraProcesso: TIBQuery;
    IBQCarteiraProcessoQTDE_ESTOQUE: TIBBCDField;
    IBQCarteiraProcessoQTDE_CAR: TIBBCDField;
    IBQCarteiraProcessoQTDE_PRO: TIBBCDField;
    IBQCarteiraProcessoDISPONIVEL: TIBBCDField;
    IBQUltEntrada: TIBQuery;
    IBQUltSaida: TIBQuery;
    IBQUltEntradaDT_MOVIMENTO: TDateField;
    IBQUltEntradaQTDE: TIBBCDField;
    IBQUltSaidaDT_MOVIMENTO: TDateField;
    IBQUltSaidaQTDE: TIBBCDField;
    IBQTotEntSai: TIBQuery;
    IBQTotEntSaiSUM: TIBBCDField;
    IBQUltimoBarraMt: TIBQuery;
    IBQUltimoBarraMtULTIMO: TLargeintField;
    IBDBarrasMt: TIBDataSet;
    IBQConsBarrasMt: TIBQuery;
    IBDBarrasMtCD_CONTROLE: TIntegerField;
    IBDBarrasMtCD_MT_NF: TLargeintField;
    IBDBarrasMtCD_MAT_PRIMA: TLargeintField;
    IBDBarrasMtDS_MATERIA: TIBStringField;
    IBDBarrasMtIMPRESSO: TIBStringField;
    IBQConsBarrasMtCD_CONTROLE: TIntegerField;
    IBQConsBarrasMtCD_MT_NF: TLargeintField;
    IBQConsBarrasMtCD_MAT_PRIMA: TLargeintField;
    IBQConsBarrasMtDS_MATERIA: TIBStringField;
    IBQConsBarrasMtIMPRESSO: TIBStringField;
    IBQApagaBarrasMt: TIBQuery;
    IBDEtiquetasMt: TIBDataSet;
    IBDEtiquetasMtCD_CONTROLE: TIntegerField;
    IBDEtiquetasMtCD_MAT_PRIMA: TIntegerField;
    IBDEtiquetasMtCD_MAT_PRIMA_NF: TIntegerField;
    IBDEtiquetasMtDS_MAT_PRIMA: TIBStringField;
    IBDEtiquetasMtIMPRESSO: TIBStringField;
    IBQUltimaEtiquetaMt: TIBQuery;
    IBQUltimaEtiquetaMtULTIMO: TLargeintField;
    IBDEtiquetasMtQUANTIDADE: TIntegerField;
    IBDEtiquetasMtDT_IMPRESSA: TDateField;
    IBQConsEtiquetasMt: TIBQuery;
    IBQConsEtiquetasMtCD_CONTROLE: TIntegerField;
    IBQConsEtiquetasMtCD_MAT_PRIMA: TIntegerField;
    IBQConsEtiquetasMtCD_MAT_PRIMA_NF: TIntegerField;
    IBQConsEtiquetasMtDS_MAT_PRIMA: TIBStringField;
    IBQConsEtiquetasMtIMPRESSO: TIBStringField;
    IBQConsEtiquetasMtQUANTIDADE: TIntegerField;
    IBQConsEtiquetasMtDT_IMPRESSA: TDateField;
    IBDSaidaProdAcabado: TIBDataSet;
    IBDSaidaProdAcabadoCD_SAIDA: TIntegerField;
    IBDSaidaProdAcabadoCD_PRODUTO: TIntegerField;
    IBDSaidaProdAcabadoCD_COR: TIntegerField;
    IBDSaidaProdAcabadoQTDE: TIntegerField;
    IBDSaidaProdAcabadoDT_SAIDA: TDateField;
    IBDSaidaProdAcabadoHR_SAIDA: TTimeField;
    IBDSaidaProdAcabadoUSUARIOO: TIBStringField;
    IBQUltimaSaidaProd: TIBQuery;
    IBQUltimaSaidaProdULTIMO: TLargeintField;
    IBDSaidaProdEspera: TIBDataSet;
    IBDSaidaProdEsperaCD_SAIDA: TIntegerField;
    IBDSaidaProdEsperaCD_PRODUTO: TIntegerField;
    IBDSaidaProdEsperaCOR: TIntegerField;
    IBDSaidaProdEsperaDT_SAIDA: TDateField;
    IBDSaidaProdEsperaHORA: TTimeField;
    IBQUltimaSaidaEspera: TIBQuery;
    IBQUltimaSaidaEsperaULTIMO: TLargeintField;
    IBQConsSaidaEspera: TIBQuery;
    IBQConsSaidaEsperaDS_PRODUTO: TIBStringField;
    IBQConsSaidaEsperaCD_SAIDA: TIntegerField;
    IBQConsSaidaEsperaCD_PRODUTO: TIntegerField;
    IBQConsSaidaEsperaCOR: TIntegerField;
    IBQConsSaidaEsperaDT_SAIDA: TDateField;
    IBQConsSaidaEsperaHORA: TTimeField;
    IBQApagaSaidaProdEspera: TIBQuery;
    IBQSaidaProdDiaria: TIBQuery;
    IBQSaidaProdDiariaCD_SAIDA: TIntegerField;
    IBQSaidaProdDiariaCD_PRODUTO: TIntegerField;
    IBQSaidaProdDiariaCD_COR: TIntegerField;
    IBQSaidaProdDiariaQTDE: TIntegerField;
    IBQSaidaProdDiariaDT_SAIDA: TDateField;
    IBQSaidaProdDiariaHR_SAIDA: TTimeField;
    IBQSaidaProdDiariaUSUARIOO: TIBStringField;
    IBQSaidaProdDiariaDS_PRODUTO: TIBStringField;
    IBQConsUsuarioMensagem: TIBQuery;
    ClienteUsuarioMensagem: TClientDataSet;
    ProviderUsuarioMensagem: TDataSetProvider;
    IBDMensagens: TIBDataSet;
    IBQConsUsuarioMensagemCD_USUARIO: TIntegerField;
    IBQConsUsuarioMensagemNM_USUARIO: TIBStringField;
    IBQConsUsuarioMensagemTIKA: TIBStringField;
    ClienteUsuarioMensagemCD_USUARIO: TIntegerField;
    ClienteUsuarioMensagemNM_USUARIO: TStringField;
    ClienteUsuarioMensagemTIKA: TStringField;
    IBDMensagensCD_MENSAGEM: TIntegerField;
    IBDMensagensCD_USUARIO: TIntegerField;
    IBDMensagensMENSAGEM: TIBStringField;
    IBDMensagensDT_MENSAGEM: TDateField;
    IBDMensagensHR_MENSAGEM: TTimeField;
    IBDMensagensSITUACAO: TIBStringField;
    IBDMensagensCD_USUARIO_ENVIO: TIntegerField;
    IBQConsMensagens: TIBQuery;
    IBQConsMensagensCD_MENSAGEM: TIntegerField;
    IBQConsMensagensCD_USUARIO: TIntegerField;
    IBQConsMensagensMENSAGEM: TIBStringField;
    IBQConsMensagensDT_MENSAGEM: TDateField;
    IBQConsMensagensHR_MENSAGEM: TTimeField;
    IBQConsMensagensSITUACAO: TIBStringField;
    IBQConsMensagensCD_USUARIO_ENVIO: TIntegerField;
    IBQConsMensagensNM_USUARIO: TIBStringField;
    IBQApagaMensagens: TIBQuery;
    IBQConsMensagenAberta: TIBQuery;
    IBQConsMensagenAbertaCD_MENSAGEM: TIntegerField;
    IBQConsMensagenAbertaCD_USUARIO: TIntegerField;
    IBQConsMensagenAbertaMENSAGEM: TIBStringField;
    IBQConsMensagenAbertaDT_MENSAGEM: TDateField;
    IBQConsMensagenAbertaHR_MENSAGEM: TTimeField;
    IBQConsMensagenAbertaSITUACAO: TIBStringField;
    IBQConsMensagenAbertaCD_USUARIO_ENVIO: TIntegerField;
    IBDMtNfCLASS_FISCAL: TIBStringField;
    IBDMtNfIPI: TIBBCDField;
    IBDMtNfICMS: TIBBCDField;
    IBDMtNfSUB_TRIBUTARIA: TIntegerField;
    IBDEntradaMtCD_USUARIO: TIntegerField;
    IBDMtCompraCD_PEDIDO: TIntegerField;
    IBDMtCompraCD_MAT_PRIMA: TIntegerField;
    IBDMtCompraQTDE: TIBBCDField;
    IBDMtCompraVALOR: TIBBCDField;
    IBDMtCompraCHEGOU: TIBStringField;
    IBDMtCompraQTDE_CHEGADA: TIBBCDField;
    IBQConsCompPendenteQTDE_CHEGADA: TIBBCDField;
    IBQQtdeCompQTDE_CHEGADA: TIBBCDField;
    IBQConsMtCompraQTDE_CHEGADA: TIBBCDField;
    IBDCompraMtEMAIL_RESPOSTA: TBlobField;
    procedure IBQConsCompraAfterScroll(DataSet: TDataSet);
    procedure IBDEntradaMtBeforePost(DataSet: TDataSet);
    procedure IBDMtNfBeforePost(DataSet: TDataSet);
    procedure IBDSaidaMtBeforePost(DataSet: TDataSet);
    procedure IBDBarrasMtBeforePost(DataSet: TDataSet);
    procedure ClienteBarrasMtBeforePost(DataSet: TDataSet);
    procedure IBDEtiquetasMtBeforePost(DataSet: TDataSet);
    procedure IBDSaidaProdAcabadoBeforePost(DataSet: TDataSet);
    procedure IBDSaidaProdEsperaBeforePost(DataSet: TDataSet);
    procedure IBQConsSaidaEsperaAfterScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

uses UDataModule1, USaidaProdAcabado;

{$R *.dfm}

procedure TDataModule4.IBQConsCompraAfterScroll(DataSet: TDataSet);
begin
  IBQConsMtCompra2.Close;
  IBQConsMtCompra2.ParamByName('ppedido').AsInteger :=
  IBQConsCompraCD_PEDIDO.AsInteger;
  IBQConsMtCompra2.Open;
end;

procedure TDataModule4.IBDEntradaMtBeforePost(DataSet: TDataSet);
begin
if DataModule4.IBDEntradaMt.State in [dsinsert] then
  begin
    DataModule4.IBQUltimaEntrada.Close;
    DataModule4.IBQUltimaEntrada.Open;
    if DataModule4.IBQUltimaEntradaULTIMO.AsInteger = 0 then
        DataModule4.IBDEntradaMtCD_CONTROLE.AsInteger := 1
    else
        DataModule4.IBDEntradaMtCD_CONTROLE.AsInteger :=
        DataModule4.IBQUltimaEntradaULTIMO.AsInteger;
end;
end;

procedure TDataModule4.IBDMtNfBeforePost(DataSet: TDataSet);
begin

if DataModule4.IBDMtNf.State in [dsinsert] then
  begin
    DataModule1.IBQUltimaMatPrimaNf.Close;
    DataModule1.IBQUltimaMatPrimaNf.Open;
    if DataModule1.IBQUltimaMatPrimaNfULTIMO.AsInteger = 0 then
        DataModule4.IBDMtNfCD_PRIMA_NF.AsInteger := 1
    else
        DataModule4.IBDMtNfCD_PRIMA_NF.AsInteger :=
        DataModule1.IBQUltimaMatPrimaNfULTIMO.AsInteger;
end;
end;

procedure TDataModule4.IBDSaidaMtBeforePost(DataSet: TDataSet);
begin
if DataModule4.IBDSaidaMt.State in [dsinsert] then
  begin
    DataModule4.IBQUltimaSaida.Close;
    DataModule4.IBQUltimaSaida.Open;
    if DataModule4.IBQUltimaSaidaULTIMO.AsInteger = 0 then
        DataModule4.IBDSaidaMtCD_CONTROLE.AsInteger := 1
    else
        DataModule4.IBDSaidaMtCD_CONTROLE.AsInteger :=
        DataModule4.IBQUltimaSaidaULTIMO.AsInteger;
end;
end;

procedure TDataModule4.IBDBarrasMtBeforePost(DataSet: TDataSet);
begin
if DataModule4.IBDEntradaMt.State in [dsinsert] then
  begin
    DataModule4.IBQUltimoBarraMt.Close;
    DataModule4.IBQUltimoBarraMt.Open;
    if DataModule4.IBQUltimoBarraMtULTIMO.AsInteger = 0 then
        DataModule4.IBDBarrasMtCD_CONTROLE.AsInteger := 1
    else
        DataModule4.IBDBarrasMtCD_CONTROLE.AsInteger :=
        DataModule4.IBQUltimoBarraMtULTIMO.AsInteger;
end;
end;

procedure TDataModule4.ClienteBarrasMtBeforePost(DataSet: TDataSet);
begin
    {DataModule4.IBQUltimoBarraMt.Close;
    DataModule4.IBQUltimoBarraMt.Open;
    if DataModule4.IBQUltimoBarraMtULTIMO.AsInteger = 0 then
        DataModule4.ClienteBarrasMtCD_CONTROLE.AsInteger := 1
    else
        DataModule4.ClienteBarrasMtCD_CONTROLE.AsInteger :=
        DataModule4.IBQUltimoBarraMtULTIMO.AsInteger;}

end;

procedure TDataModule4.IBDEtiquetasMtBeforePost(DataSet: TDataSet);
begin
    if DataModule4.IBDEtiquetasMt.State in [dsinsert] then
    begin
    DataModule4.IBQUltimaEtiquetaMt.Close;
    DataModule4.IBQUltimaEtiquetaMt.Open;
    if DataModule4.IBQUltimaEtiquetaMtULTIMO.AsInteger = 0 then
        DataModule4.IBDEtiquetasMtCD_CONTROLE.AsInteger := 1
    else
        DataModule4.IBDEtiquetasMtCD_CONTROLE.AsInteger :=
        DataModule4.IBQUltimaEtiquetaMtULTIMO.AsInteger;

  end;
 end;
procedure TDataModule4.IBDSaidaProdAcabadoBeforePost(DataSet: TDataSet);
begin
if DataModule4.IBDSaidaProdAcabado.State in [dsinsert] then
    begin
    DataModule4.IBQUltimaSaidaProd.Close;
    DataModule4.IBQUltimaSaidaProd.Open;
    if DataModule4.IBQUltimaSaidaProdULTIMO.AsInteger = 0 then
        DataModule4.IBDSaidaProdAcabadoCD_SAIDA.AsInteger := 1
    else
        DataModule4.IBDSaidaProdAcabadoCD_SAIDA.AsInteger :=
        DataModule4.IBQUltimaSaidaProdULTIMO.AsInteger;

  end;
end;

procedure TDataModule4.IBDSaidaProdEsperaBeforePost(DataSet: TDataSet);
begin
if DataModule4.IBDSaidaProdEspera.State in [dsinsert] then
    begin
    DataModule4.IBQUltimaSaidaEspera.Close;
    DataModule4.IBQUltimaSaidaEspera.Open;
    if DataModule4.IBQUltimaSaidaEsperaULTIMO.AsInteger = 0 then
        DataModule4.IBDSaidaProdEsperaCD_SAIDA.AsInteger := 1
    else
        DataModule4.IBDSaidaProdEsperaCD_SAIDA.AsInteger :=
        DataModule4.IBQUltimaSaidaEsperaULTIMO.AsInteger;

  end;
end;

procedure TDataModule4.IBQConsSaidaEsperaAfterScroll(DataSet: TDataSet);
begin
    IBDSaidaProdEspera.Close;
    IBDSaidaProdEspera.ParamByName('psaida').AsInteger :=
    IBQConsSaidaEsperaCD_SAIDA.AsInteger;
    IBDSaidaProdEspera.Open;
    FSaidaProduto.EdDsProduto.Text :=
    IBQConsSaidaEsperaDS_PRODUTO.AsString;


end;

procedure TDataModule4.DataModuleCreate(Sender: TObject);
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
