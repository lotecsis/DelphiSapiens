program PSapiensDelphi;



uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UNivelAcesso in 'UNivelAcesso.pas' {FNivelAcesso},
  UFormApres in 'UFormApres.pas' {ApresForm},
  UUsuario in 'UUsuario.pas' {FUsuario},
  UConsSimpNivelAcesso in 'UConsSimpNivelAcesso.pas' {FConsSimpNivel},
  ULogin in 'ULogin.pas' {FLogin},
  UConsSimpUsuario in 'UConsSimpUsuario.pas' {FConsSimpUsuarios},
  UDm in 'UDm.pas' {Dm: TDataModule},
  UFormulario in 'UFormulario.pas' {FFormulario},
  UFormNivel in 'UFormNivel.pas' {FFormNivel},
  UConsFormularios in 'UConsFormularios.pas' {FConsFormularios},
  UConsUsuAddNivAce in 'UConsUsuAddNivAce.pas' {FConsUsuAddNivAce},
  UCorteTecCarga in 'UCorteTecCarga.pas' {FCorteTecCarga},
  UDm1 in 'UDm1.pas' {Dm1: TDataModule},
  UBaixaCorteInd in 'UBaixaCorteInd.pas' {FBaixaCorteInd},
  UMovBaixaCorte in 'UMovBaixaCorte.pas' {FMovBaixaCorte},
  ULogBaxaCorte in 'ULogBaxaCorte.pas' {FLogBaxaCorte},
  UAlteraProdCarCorte in 'UAlteraProdCarCorte.pas' {FAlteraProdCarCorte},
  USaldoCor1001_1 in 'USaldoCor1001_1.pas' {FSaldoCor1001_1},
  UGeraIni in 'UGeraIni.pas' {FGeraIni},
  UPreCarga in 'UPreCarga.pas' {FPreCarga},
  UAddItePreCarga in 'UAddItePreCarga.pas' {FAddItePreCarga},
  UAtualizaPreCus in 'UAtualizaPreCus.pas' {FAtualizaPreCus},
  UAuxPreCus in 'UAuxPreCus.pas' {FAuxPreCus},
  UControleConexcoes in 'UControleConexcoes.pas' {FControleConexca},
  UPedido in 'UPedido.pas' {FPedido},
  UDm2 in 'UDm2.pas' {Dm2: TDataModule},
  UAlteraProdPedido in 'UAlteraProdPedido.pas' {FAlteraProdPedido},
  UAltCoresProdPed in 'UAltCoresProdPed.pas' {FAltCoresProdPed},
  UConsCores in 'UConsCores.pas' {FConsCores},
  UAddProdPed in 'UAddProdPed.pas' {FAddProdPred},
  UConsDerivacoes in 'UConsDerivacoes.pas' {FConsDerivacoes},
  UAddCoresProdPed in 'UAddCoresProdPed.pas' {FAddCoresProdPed},
  UDescontoPedido in 'UDescontoPedido.pas' {FDescontoPedido},
  UAtualizaPrecoCusto in 'UAtualizaPrecoCusto.pas' {FAtualizaPrecoCusto},
  UNfEntrada in 'UNfEntrada.pas' {FNfEntrada},
  UConsGeralNfEnt in 'UConsGeralNfEnt.pas' {FConsGeralNfEnt},
  UAddMtNfEnt in 'UAddMtNfEnt.pas' {FAddMtNfEnt},
  UCancSaldoOc in 'UCancSaldoOc.pas' {FCancSaldoOc},
  UComparaSaidaTecido in 'UComparaSaidaTecido.pas' {FComparaSaidaTecido},
  UDiferencaCorteTecido in 'UDiferencaCorteTecido.pas' {FDiferencaCorteTecido},
  UConsPedido in 'UConsPedido.pas' {FConsPedido},
  UProdutosConsPedidos in 'UProdutosConsPedidos.pas' {FProdutosConsPedidos},
  UTecidosConsPedido in 'UTecidosConsPedido.pas' {FTecidosConsPedido},
  UAdicionaPedidoEmPedido in 'UAdicionaPedidoEmPedido.pas' {FAdicionaPedidoEmPedido},
  UConsMateriaPrima in 'UConsMateriaPrima.pas' {FConsMateriaPrima},
  UDm3 in 'UDm3.pas' {Dm3: TDataModule},
  UConsultaTecido in 'UConsultaTecido.pas' {FConsultaTecido},
  UControleConexao in 'UControleConexao.pas' {FControleConexao},
  UDmOra in 'UDmOra.pas' {DmOra: TDataModule},
  UDmFire in 'UDmFire.pas' {DmFire: TDataModule},
  UCadUsuSysRep in 'UCadUsuSysRep.pas' {FCadUsuSysRep},
  UAlteraPerTolTabPreco in 'UAlteraPerTolTabPreco.pas' {FAlteraPerTolTabPreco},
  UValidaXmlNfc in 'UValidaXmlNfc.pas' {FValidaXmlNfc},
  UMensagensAlertaClientes in 'UMensagensAlertaClientes.pas' {FMensagensAlertaClientes},
  UVisuMensgAlertaClientes in 'UVisuMensgAlertaClientes.pas' {FVisuMensgAlertaClientes},
  UProcessaPedidosSysRep in 'UProcessaPedidosSysRep.pas' {FProcessaPedidosSysRep},
  UVisuAlertaClientes in 'UVisuAlertaClientes.pas' {FVisuAlertaClientes},
  UVisuObsPedido in 'UVisuObsPedido.pas' {FVisuObsPedido},
  UFiltroPedRecSysRep in 'UFiltroPedRecSysRep.pas' {FFiltroPedRecSysRep},
  UAtuzlia_E075Pro_ServerRep in 'UAtuzlia_E075Pro_ServerRep.pas' {FAtuzlia_E075Pro_ServerRep},
  UPedidoSysRep in 'UPedidoSysRep.pas' {FPedidoSysRep},
  UAltDadosGeraisPedSysRep in 'UAltDadosGeraisPedSysRep.pas' {FAltDadosGeraisPedSysRep},
  UAddProPedSysRep in 'UAddProPedSysRep.pas' {FAddProPedSysRep},
  UAddCorProdPedSysRep in 'UAddCorProdPedSysRep.pas' {FAddCorProdPedSysRep},
  ULigProdutos_Cores in 'ULigProdutos_Cores.pas' {FLigProdutos_Cores},
  UDmRave in 'UDmRave.pas' {DmRave: TDataModule},
  UAcompanhamentoCotasRep in 'UAcompanhamentoCotasRep.pas' {FAcompanhamentoCotasRep},
  UComparaComprasClientes in 'UComparaComprasClientes.pas' {FComparaComprasClientes},
  UProdutosComparaComprasClientes in 'UProdutosComparaComprasClientes.pas' {FProdutosComparaComprasClientes},
  URelatorioViagem in 'URelatorioViagem.pas' {FRelatorioViagem},
  UAssistencia in 'UAssistencia.pas' {FAssistencia},
  UObsPedAst in 'UObsPedAst.pas' {FObsPedAst},
  UPendenciaCarga in 'UPendenciaCarga.pas' {FPendenciaCarga},
  UPendenciasPreCarga in 'UPendenciasPreCarga.pas' {FPendenciasPreCarga},
  UConsFaturamento in 'UConsFaturamento.pas' {FConsFaturamento},
  UMovimentaEstoqueCarga in 'UMovimentaEstoqueCarga.pas' {FMovimentaEstoqueCarga},
  UVisuObsPedAst in 'UVisuObsPedAst.pas' {FVisuObsPedAst},
  UConsClientes in 'UConsClientes.pas' {FConsClientes},
  UCidades in 'UCidades.pas' {FCidades},
  UDmRubi in 'UDmRubi.pas' {DmRubi: TDataModule},
  UConsObsPedidos in 'UConsObsPedidos.pas' {FConsObsPedidos},
  UAcertoViagem in 'UAcertoViagem.pas' {FAcertoViagem},
  UGerenciaFuncionario in 'UGerenciaFuncionario.pas' {FGerenciaFuncionario},
  ULancaServConvenio in 'ULancaServConvenio.pas' {FLancaServConvenio},
  UConsFuncionarios in 'UConsFuncionarios.pas' {FConsFuncionarios},
  UFechamentoConvenio in 'UFechamentoConvenio.pas' {FFechamentoConvenio},
  URelatoriosConvenio in 'URelatoriosConvenio.pas' {FRelatoriosConvenio},
  ULancaAdiantamentosFuncionarios in 'ULancaAdiantamentosFuncionarios.pas' {FLancaAdiantamentosFuncionarios},
  UReceberAdiantamentosFuncionario in 'UReceberAdiantamentosFuncionario.pas' {FReceberAdiantamentosFuncionario},
  UImprimiReciboAdtFunc in 'UImprimiReciboAdtFunc.pas' {FImprimiReciboAdtFunc},
  UConsMensgAlertaClientes in 'UConsMensgAlertaClientes.pas' {FConsMensgAlertaClientes},
  UClientesPedidos10D in 'UClientesPedidos10D.pas' {FClientesPedidos10D},
  UConsPedidos10D in 'UConsPedidos10D.pas' {FConsPedidos10D},
  UConsCoresPorProdutos in 'UConsCoresPorProdutos.pas' {FConsCoresPorProdutos},
  UEtiquetasPesBox in 'UEtiquetasPesBox.pas' {FEtiquetasPesBox},
  UTransfereTecPedido in 'UTransfereTecPedido.pas' {FTransfereTecPedido},
  UCorteTecEstof in 'UCorteTecEstof.pas' {FCorteTecEstof},
  UBaixaCorteTecEstof in 'UBaixaCorteTecEstof.pas' {FBaixaCorteTecEstof},
  UCoresPedido in 'UCoresPedido.pas' {FCoresPedido},
  UAltProdCargaCorteEstof in 'UAltProdCargaCorteEstof.pas' {FAltProdCargaCorteEstof},
  UAtualizaSaldoTecidos in 'UAtualizaSaldoTecidos.pas' {FAtualizaSaldoTecidos},
  UConsTecido in 'UConsTecido.pas' {FConsTecido},
  UAtualizaSaldoReservaTecidos in 'UAtualizaSaldoReservaTecidos.pas' {FAtualizaSaldoReservaTecidos},
  UGraficosVendas in 'UGraficosVendas.pas' {FGraficosVendas},
  UAtualizaTecidosEstofados in 'UAtualizaTecidosEstofados.pas' {FAtualizaTecidosEstofados},
  FVoltarPedidoParaOriginal in 'FVoltarPedidoParaOriginal.pas' {VoltarPedidoParaOriginal},
  UValidarPedidos in 'UValidarPedidos.pas' {FValidarPedidos},
  FImprimirEtiquetaColchao in 'FImprimirEtiquetaColchao.pas' {ImprimirEtiquetaColchao},
  UImprimirEtiqMM in 'UImprimirEtiqMM.pas' {FImprimirEtiqMM},
  UTempoMedioPedidos in 'UTempoMedioPedidos.pas' {FTempoMedioPedidos},
  UConsMateriaPrimaMediaCons in 'UConsMateriaPrimaMediaCons.pas' {FConsMateriaPrimaMediaCons},
  UContatosFornecedor in 'UContatosFornecedor.pas' {FContatosFornecedor},
  UObsOC in 'UObsOC.pas' {FObsOC},
  UHistoricoConsumoMP in 'UHistoricoConsumoMP.pas' {FHistoricoConsumoMP},
  UValorMaxCotacao in 'UValorMaxCotacao.pas' {FValorMaxCotacao},
  UAtualizaEstMin in 'UAtualizaEstMin.pas' {FAtualizaEstMin},
  UAjustaVlrEstoque in 'UAjustaVlrEstoque.pas' {FAjustaVlrEstoque},
  UComposicaoMpProdutos in 'UComposicaoMpProdutos.pas' {FComposicaoMpProdutos},
  UDuplicaComposicaoMpProdutos in 'UDuplicaComposicaoMpProdutos.pas' {FDuplicaComposicaoMpProdutos},
  UConsComposicaoMpProdutos in 'UConsComposicaoMpProdutos.pas' {FConsComposicaoMpProdutos},
  UDividirPedidos in 'UDividirPedidos.pas' {FDividirPedidos},
  UAdvertenciaDividirPedido in 'UAdvertenciaDividirPedido.pas' {FAdvertenciaDividirPedido},
  UControleConexaoTelas in 'UControleConexaoTelas.pas' {FControleConexaoTelas},
  UCalculoAjusteComissoesAgru in 'UCalculoAjusteComissoesAgru.pas' {FCalculoAjusteComissoesAgru},
  UAjustaComissoes in 'UAjustaComissoes.pas' {FAjustaComissoes},
  UProdutosNf in 'UProdutosNf.pas' {FProdutosNf},
  UAplicarAjusteComissao in 'UAplicarAjusteComissao.pas' {FAplicarAjusteComissao},
  UCadRoteiroManifestoUF in 'UCadRoteiroManifestoUF.pas' {FCadRoteiroManifestoUF},
  UConsCEP in 'UConsCEP.pas' {FConsCEP},
  UConsRota in 'UConsRota.pas' {FConsRota},
  UFormarManifesto in 'UFormarManifesto.pas' {FFormarManifesto},
  UEtiquetaPeApoio in 'UEtiquetaPeApoio.pas' {FEtiquetaPeApoio},
  UImportaExcelCidades in 'UImportaExcelCidades.pas' {FImportaExcelCidades},
  UPainelControleRep in 'UPainelControleRep.pas' {FPainelControleRep},
  UGerenciamentoCidades in 'UGerenciamentoCidades.pas' {FGerenciamentoCidades},
  UAddCliMonitoramento in 'UAddCliMonitoramento.pas' {FAddCliMonitoramento},
  UMoniCliente in 'UMoniCliente.pas' {FMoniCliente},
  UMotivoFimMon in 'UMotivoFimMon.pas' {FMotivoFimMon},
  UAvaliaSerasa in 'UAvaliaSerasa.pas' {FAvaliaSerasa},
  UAlteraSitSerasa in 'UAlteraSitSerasa.pas' {FAlteraSitSerasa},
  UIntegracaoSerasa in 'UIntegracaoSerasa.pas' {FIntegracaoSerasa},
  UApelidosProdSapiens in 'UApelidosProdSapiens.pas' {FApelidosProdSapiens},
  UAjustaICMS in 'UAjustaICMS.pas' {FAjustaICMS},
  USaldoAdtFun in 'USaldoAdtFun.pas' {FSaldoAdtFun},
  UDescontosPorRep in 'UDescontosPorRep.pas' {FDescontosPorRep},
  UValidaDescPed in 'UValidaDescPed.pas' {FValidaDescPed},
  UHistoricoValidaDescPed in 'UHistoricoValidaDescPed.pas' {FHistoricoValidaDescPed},
  UTotalizadorDescontos in 'UTotalizadorDescontos.pas' {FTotalizadorDescontos},
  UInfoDescontosPorRep in 'UInfoDescontosPorRep.pas' {FInfoDescontosPorRep},
  UListaOnlineSERASA in 'UListaOnlineSERASA.pas' {FListaOnlineSERASA},
  UObsPro in 'UObsPro.pas' {FObsPro},
  UAnalizaConsumoMpPorFilial in 'UAnalizaConsumoMpPorFilial.pas' {FAnalizaConsumoMpPorFilial},
  UCadFormaCompraMP in 'UCadFormaCompraMP.pas' {FCadFormaCompraMP},
  UImpressoraPadrao in 'UImpressoraPadrao.pas' {FImpressoraPadrao},
  UAjustaConsumoMateriaPrima in 'UAjustaConsumoMateriaPrima.pas' {FAjustaConsumoMateriaPrima},
  UPreCargas in 'UPreCargas.pas' {FPreCargas},
  UAnalizeConsumoMPProduzir in 'UAnalizeConsumoMPProduzir.pas' {FAnaliseConsumoMPProduzir},
  UZeraEst3000 in 'UZeraEst3000.pas' {FZeraEst3000},
  UGraficoConsumoMP in 'UGraficoConsumoMP.pas' {FGraficoConsumoMP},
  UEtiquetaCabeceira in 'UEtiquetaCabeceira.pas' {FEtiquetaCabeceira},
  UfrmValidaXmlEntrada in 'UfrmValidaXmlEntrada.pas' {frmValidaXmlEntrada};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sapiens Lider';
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TDm1, Dm1);
  Application.CreateForm(TDm2, Dm2);
  Application.CreateForm(TDm3, Dm3);
  Application.CreateForm(TDmOra, DmOra);
  Application.CreateForm(TDmFire, DmFire);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFAltDadosGeraisPedSysRep, FAltDadosGeraisPedSysRep);
  Application.CreateForm(TFAddProPedSysRep, FAddProPedSysRep);
  Application.CreateForm(TFAddCorProdPedSysRep, FAddCorProdPedSysRep);
  Application.CreateForm(TFLigProdutos_Cores, FLigProdutos_Cores);
  Application.CreateForm(TDmRave, DmRave);
  Application.CreateForm(TFAcompanhamentoCotasRep, FAcompanhamentoCotasRep);
  Application.CreateForm(TFComparaComprasClientes, FComparaComprasClientes);
  Application.CreateForm(TFProdutosComparaComprasClientes, FProdutosComparaComprasClientes);
  Application.CreateForm(TFRelatorioViagem, FRelatorioViagem);
  Application.CreateForm(TFAssistencia, FAssistencia);
  Application.CreateForm(TFObsPedAst, FObsPedAst);
  Application.CreateForm(TFPendenciaCarga, FPendenciaCarga);
  Application.CreateForm(TFPendenciasPreCarga, FPendenciasPreCarga);
  Application.CreateForm(TFConsFaturamento, FConsFaturamento);
  Application.CreateForm(TFMovimentaEstoqueCarga, FMovimentaEstoqueCarga);
  Application.CreateForm(TFVisuObsPedAst, FVisuObsPedAst);
  Application.CreateForm(TFConsClientes, FConsClientes);
  Application.CreateForm(TFCidades, FCidades);
  Application.CreateForm(TDmRubi, DmRubi);
  Application.CreateForm(TFConsObsPedidos, FConsObsPedidos);
  Application.CreateForm(TFAcertoViagem, FAcertoViagem);
  Application.CreateForm(TFGerenciaFuncionario, FGerenciaFuncionario);
  Application.CreateForm(TFLancaServConvenio, FLancaServConvenio);
  Application.CreateForm(TFConsFuncionarios, FConsFuncionarios);
  Application.CreateForm(TFFechamentoConvenio, FFechamentoConvenio);
  Application.CreateForm(TFRelatoriosConvenio, FRelatoriosConvenio);
  Application.CreateForm(TFLancaAdiantamentosFuncionarios, FLancaAdiantamentosFuncionarios);
  Application.CreateForm(TFReceberAdiantamentosFuncionario, FReceberAdiantamentosFuncionario);
  Application.CreateForm(TFImprimiReciboAdtFunc, FImprimiReciboAdtFunc);
  Application.CreateForm(TFConsMensgAlertaClientes, FConsMensgAlertaClientes);
  Application.CreateForm(TFClientesPedidos10D, FClientesPedidos10D);
  Application.CreateForm(TFConsPedidos10D, FConsPedidos10D);
  Application.CreateForm(TFConsCoresPorProdutos, FConsCoresPorProdutos);
  Application.CreateForm(TFEtiquetasPesBox, FEtiquetasPesBox);
  Application.CreateForm(TFImprimirEtiqMM, FImprimirEtiqMM);
  Application.CreateForm(TFTransfereTecPedido, FTransfereTecPedido);
  Application.CreateForm(TFCorteTecEstof, FCorteTecEstof);
  Application.CreateForm(TFBaixaCorteTecEstof, FBaixaCorteTecEstof);
  Application.CreateForm(TFCoresPedido, FCoresPedido);
  Application.CreateForm(TFAltProdCargaCorteEstof, FAltProdCargaCorteEstof);
  Application.CreateForm(TFAtualizaSaldoTecidos, FAtualizaSaldoTecidos);
  Application.CreateForm(TFConsTecido, FConsTecido);
  Application.CreateForm(TFAtualizaSaldoReservaTecidos, FAtualizaSaldoReservaTecidos);
  Application.CreateForm(TFGraficosVendas, FGraficosVendas);
  Application.CreateForm(TFAtualizaTecidosEstofados, FAtualizaTecidosEstofados);
  Application.CreateForm(TVoltarPedidoParaOriginal, VoltarPedidoParaOriginal);
  Application.CreateForm(TFValidarPedidos, FValidarPedidos);
  Application.CreateForm(TImprimirEtiquetaColchao, ImprimirEtiquetaColchao);
  Application.CreateForm(TFTempoMedioPedidos, FTempoMedioPedidos);
  Application.CreateForm(TFConsMateriaPrimaMediaCons, FConsMateriaPrimaMediaCons);
  Application.CreateForm(TFContatosFornecedor, FContatosFornecedor);
  Application.CreateForm(TFObsOC, FObsOC);
  Application.CreateForm(TFHistoricoConsumoMP, FHistoricoConsumoMP);
  Application.CreateForm(TFValorMaxCotacao, FValorMaxCotacao);
  Application.CreateForm(TFAtualizaEstMin, FAtualizaEstMin);
  Application.CreateForm(TFAjustaVlrEstoque, FAjustaVlrEstoque);
  Application.CreateForm(TFComposicaoMpProdutos, FComposicaoMpProdutos);
  Application.CreateForm(TFDuplicaComposicaoMpProdutos, FDuplicaComposicaoMpProdutos);
  Application.CreateForm(TFConsComposicaoMpProdutos, FConsComposicaoMpProdutos);
  Application.CreateForm(TFDividirPedidos, FDividirPedidos);
  Application.CreateForm(TFAdvertenciaDividirPedido, FAdvertenciaDividirPedido);
  Application.CreateForm(TFControleConexaoTelas, FControleConexaoTelas);
  Application.CreateForm(TFCalculoAjusteComissoesAgru, FCalculoAjusteComissoesAgru);
  Application.CreateForm(TFAjustaComissoes, FAjustaComissoes);
  Application.CreateForm(TFProdutosNf, FProdutosNf);
  Application.CreateForm(TFAplicarAjusteComissao, FAplicarAjusteComissao);
  Application.CreateForm(TFCadRoteiroManifestoUF, FCadRoteiroManifestoUF);
  Application.CreateForm(TFConsCEP, FConsCEP);
  Application.CreateForm(TFConsRota, FConsRota);
  Application.CreateForm(TFFormarManifesto, FFormarManifesto);
  Application.CreateForm(TFEtiquetaPeApoio, FEtiquetaPeApoio);
  Application.CreateForm(TFImportaExcelCidades, FImportaExcelCidades);
  Application.CreateForm(TFPainelControleRep, FPainelControleRep);
  Application.CreateForm(TFGerenciamentoCidades, FGerenciamentoCidades);
  Application.CreateForm(TFAddCliMonitoramento, FAddCliMonitoramento);
  Application.CreateForm(TFMoniCliente, FMoniCliente);
  Application.CreateForm(TFMotivoFimMon, FMotivoFimMon);
  Application.CreateForm(TFAvaliaSerasa, FAvaliaSerasa);
  Application.CreateForm(TFAlteraSitSerasa, FAlteraSitSerasa);
  Application.CreateForm(TFIntegracaoSerasa, FIntegracaoSerasa);
  Application.CreateForm(TFApelidosProdSapiens, FApelidosProdSapiens);
  Application.CreateForm(TFAjustaICMS, FAjustaICMS);
  Application.CreateForm(TFSaldoAdtFun, FSaldoAdtFun);
  Application.CreateForm(TFDescontosPorRep, FDescontosPorRep);
  Application.CreateForm(TFValidaDescPed, FValidaDescPed);
  Application.CreateForm(TFHistoricoValidaDescPed, FHistoricoValidaDescPed);
  Application.CreateForm(TFTotalizadorDescontos, FTotalizadorDescontos);
  Application.CreateForm(TFInfoDescontosPorRep, FInfoDescontosPorRep);
  Application.CreateForm(TFListaOnlineSERASA, FListaOnlineSERASA);
  Application.CreateForm(TFObsPro, FObsPro);
  Application.CreateForm(TFAnalizaConsumoMpPorFilial, FAnalizaConsumoMpPorFilial);
  Application.CreateForm(TFCadFormaCompraMP, FCadFormaCompraMP);
  Application.CreateForm(TFImpressoraPadrao, FImpressoraPadrao);
  Application.CreateForm(TFAjustaConsumoMateriaPrima, FAjustaConsumoMateriaPrima);
  Application.CreateForm(TFPreCargas, FPreCargas);
  Application.CreateForm(TFAnaliseConsumoMPProduzir, FAnaliseConsumoMPProduzir);
  Application.CreateForm(TFZeraEst3000, FZeraEst3000);
  Application.CreateForm(TFGraficoConsumoMP, FGraficoConsumoMP);
  Application.CreateForm(TFEtiquetaCabeceira, FEtiquetaCabeceira);
  Application.CreateForm(TfrmValidaXmlEntrada, frmValidaXmlEntrada);
  //  Application.CreateForm(TFConsultaTecido, FConsultaTecido);
 // Application.CreateForm(TFControleConexao, FControleConexao);
  Application.Run;
end.
