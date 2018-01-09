unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ComCtrls, StdCtrls, Mask, rxToolEdit, rxCurrEdit,
  ActnList, AppEvnts, DB, ADODB, RXShell, ImgList, Buttons, ToolWin,
  RxMenus, jpeg, ActnMan, ActnColorMaps, ActnCtrls,
  ActnMenus, RxHints, MidasLib, IdBaseComponent, IdComponent,
  IdIPWatch,IniFiles, XPMan, ShellAnimations, UAtualizaPrecoCusto,
  UNfEntrada, UCancSaldoOc, UComparaSaidaTecido, UControleConexao, Printers, DateUtils,
  FileCtrl;

  const InputBoxMessage = WM_USER + 200;

type
  TFPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    ActionList1: TActionList;
    ToolBar1: TToolBar;
    NivelAcesso: TAction;
    Usuarios: TAction;
    Formularios: TAction;
    MainMenu1: TMainMenu;
    mnuSeguranca: TMenuItem;
    mnuCadUsu: TMenuItem;
    mnuNivAce: TMenuItem;
    mnuFormul: TMenuItem;
    mnuForNiv: TMenuItem;
    SpeedButton2: TSpeedButton;
    ToolBar2: TToolBar;
    ImageList2: TImageList;
    AcFormNivel: TAction;
    bCadUsuSysRepWeb: TToolButton;
    AcCorteTecCarga: TAction;
    AcLogBaxaCorte: TAction;
    AcSaldoCor1001_1: TAction;
    mnuProducao: TMenuItem;
    mnuCorteTecido: TMenuItem;
    mnuControleCorte: TMenuItem;
    mnuComercial: TMenuItem;
    mnuMercado: TMenuItem;
    mnuSuprimentos: TMenuItem;
    mnuGestaoCompras: TMenuItem;
    mnuGestaoRecebimento: TMenuItem;
    mnuGestaoEstoque: TMenuItem;
    RxTrayIcon1: TRxTrayIcon;
    PopupMenu1: TPopupMenu;
    Abrir1: TMenuItem;
    Fechar1: TMenuItem;
    AcGeraIni: TAction;
    ToolButton2: TToolButton;
    N1: TMenuItem;
    mnuGeraIni: TMenuItem;
    AcPreCarga: TAction;
    BPreCarga: TToolButton;
    Bsair: TToolButton;
    mnuGestaoVendas: TMenuItem;
    mnuGestaoDistribuicao: TMenuItem;
    mnuGestaoFaturamento: TMenuItem;
    mnuPreCarga: TMenuItem;
    AcAtualizaPreCus: TAction;
    BAtualizaPreCus: TToolButton;
    mnuAtualizaPreCus: TMenuItem;
    ConsVersao: TADOQuery;
    ConsVersaoUSU_CODVER: TBCDField;
    ConsVersaoUSU_DATATU: TDateTimeField;
    CadUsu_T100CCU: TADOQuery;
    CadUsu_T100CCUUSU_CODCON: TIntegerField;
    CadUsu_T100CCUUSU_CODUSU: TBCDField;
    CadUsu_T100CCUUSU_DATCON: TDateTimeField;
    CadUsu_T100CCUUSU_HORCON: TIntegerField;
    CadUsu_T100CCUUSU_NOMMAQ: TStringField;
    CadUsu_T100CCUUSU_IPMAQ: TStringField;
    TProcuraConexcao: TTimer;
    ConsUsu_T100CCU: TADOQuery;
    ConsUsu_T100CCUUSU_CODCON: TIntegerField;
    ConsUsu_T100CCUUSU_CODUSU: TBCDField;
    ConsUsu_T100CCUUSU_DATCON: TDateTimeField;
    ConsUsu_T100CCUUSU_HORCON: TIntegerField;
    ConsUsu_T100CCUUSU_NOMMAQ: TStringField;
    ConsUsu_T100CCUUSU_IPMAQ: TStringField;
    CadUsu_T100CTA: TADOQuery;
    CadUsu_T100CTAUSU_CODCON: TIntegerField;
    CadUsu_T100CTAUSU_NOMTLA: TStringField;
    CadUsu_T100CTAUSU_HORABE: TIntegerField;
    AcControleConexcao: TAction;
    mnuControleConexcao: TMenuItem;
    AcPedido: TAction;
    BPedido: TToolButton;
    AcAtualizaPrecoCusto: TAction;
    AcNfEntrada: TAction;
    BNfEntrada: TToolButton;
    mnuNfEntrada: TMenuItem;
    AcCancSaldoOc: TAction;
    BControleAcesso: TToolButton;
    AcComparaSaidaTecido: TAction;
    AcDiferencaCorteTecido: TAction;
    mnuComparaSaidaTecido: TMenuItem;
    mnuVendasPedidos: TMenuItem;
    AcConsPedido: TAction;
    BConsPedido: TToolButton;
    mnuVendasConsulta: TMenuItem;
    mnuPedidos: TMenuItem;
    mnuConsPed: TMenuItem;
    BConsMateriaPrima: TToolButton;
    AcConsMateriaPrima: TAction;
    BalloonHint1: TBalloonHint;
    mnuConsMateriaPrima: TMenuItem;
    AcControleConexao: TAction;
    mnuControleAcesso: TMenuItem;
    AcCadUsuSysRep: TAction;
    AcValidaXmlNfc: TAction;
    BValidaXmlNfc: TToolButton;
    BProcessaPedidos: TToolButton;
    AcMensagensAlertaClientes: TAction;
    AcVisuMensgAlertaClientes: TAction;
    PopAlertaClientes: TPopupMenu;
    AcMensagensAlertaClientes1: TMenuItem;
    AcVisuMensgAlertaClientes1: TMenuItem;
    BAlertaClientes: TToolButton;
    mnuVendaClientes: TMenuItem;
    mnuMenAleClientes: TMenuItem;
    mnuVisuMenAleClientes: TMenuItem;
    TimerMsgClientes: TTimer;
    AcProcessaPedidosSysRep: TAction;
    AcAtualiza_E075Pro_ServerRep: TAction;
    ToolButton6: TToolButton;
    AcLigProdutos_Cores: TAction;
    mnuCadastro: TMenuItem;
    mnuCadProdutos: TMenuItem;
    mnuLigProdCores: TMenuItem;
    AcComparaComprasClientes: TAction;
    BComparaComprasClientes: TToolButton;
    mnuComparaComprasClientes: TMenuItem;
    AcRelatorioViagem: TAction;
    mnuUsuarios: TMenuItem;
    mnuCadUsuSysRep: TMenuItem;
    mnuTransporte: TMenuItem;
    mnuRelatorioViagem: TMenuItem;
    AcAssistencia: TAction;
    BAssistencia: TToolButton;
    mnuAssistencias: TMenuItem;
    mnuCadAssistencia: TMenuItem;
    btnPendenciaCarga: TToolButton;
    AcPendenciaCarga: TAction;
    AcConsFaturamento: TAction;
    BConsFaturamento: TToolButton;
    mnuConsFaturamento: TMenuItem;
    AcMovimentaEstoqueCarga: TAction;
    ToolButton4: TToolButton;
    BMovimentaEstCarga: TToolButton;
    AcCidades: TAction;
    btnCidades: TToolButton;
    mnuConsObsPed: TMenuItem;
    AcConsObsPed: TAction;
    AcAcertoViagem: TAction;
    BAcertoViagem: TToolButton;
    mnuAcertoViagem: TMenuItem;
    AcGerenciaFuncionario: TAction;
    AcLancaServConvenio: TAction;
    AcFechamentoConvenio: TAction;
    AcRelatoriosConvenio: TAction;
    mnuFuncionarios: TMenuItem;
    mnuGerenciaFuncionario: TMenuItem;
    mnuConvenio: TMenuItem;
    mnuLancaServConvenio: TMenuItem;
    mnuFechamentoConvenio: TMenuItem;
    mnuRelatoriosConvenio: TMenuItem;
    AcConsMensgAlertaClientes: TAction;
    AcConsMensgAlertaClientes1: TMenuItem;
    AcClientesPedidos10D: TAction;
    ToolButton7: TToolButton;
    AcConsPedidos10D: TAction;
    TimerPedidos10Dias: TTimer;
    AcConsCoresPorProdutos: TAction;
    mnuConsCoresPorProdutos: TMenuItem;
    AcEtiquetasPesBox: TAction;
    mnuEtiquetasPesBox: TMenuItem;
    AcImprimirEtiqPesBox: TAction;
    mnuImprimirEtiqPesBox: TMenuItem;
    actTranfereTecPedido: TAction;
    actCorteTecEstof: TAction;
    actAtualizaSaldoTecidos: TAction;
    actConsTecido: TAction;
    actAtualizaSaldoReservaTecidos: TAction;
    tlb1: TToolBar;
    btnCorteTecEstof: TToolButton;
    btnTransfereTecPedido: TToolButton;
    btnAtualizaSaldoTecidos: TToolButton;
    btnConsTecidos: TToolButton;
    btnAtualizaSaldoReservaTecidos: TToolButton;
    mnuConsTecido: TMenuItem;
    mnuAtualizaSaldoTecidos: TMenuItem;
    mnuAtualizaSaldoReservaTecidos: TMenuItem;
    mnuTransfereTecPedido: TMenuItem;
    mnuContabilidade: TMenuItem;
    mnuValidaXmlNfc: TMenuItem;
    mnuMovimentaEstoqueCarga: TMenuItem;
    mnuPendenciaCarga: TMenuItem;
    mnuProcessaPedidosSysRep: TMenuItem;
    mnuCidades: TMenuItem;
    mnuCadCidades: TMenuItem;
    actGraficosVendas: TAction;
    btnGraficosVendas: TToolButton;
    mnuGraficosVendas: TMenuItem;
    actAtualizaTecidosEstofados: TAction;
    mnuAtualizaTecidosEstofados: TMenuItem;
    actVoltarPedidoParaOriginal: TAction;
    mnuVoltarPedidoParaOriginal: TMenuItem;
    actValidarPedidos: TAction;
    btnValidarPedidos: TToolButton;
    mnuValidarPedidos: TMenuItem;
    mnuEtiquetas: TMenuItem;
    actEtiquetasMercadoMoveis: TAction;
    mnuEtiquetasMercadoMoveis: TMenuItem;
    mnuImprimirEtiqPesBoxCarga: TMenuItem;
    actImprimirEtiquetasColchoesNome_Med: TAction;
    mnuImprimirEtiquetasColchoesNome_Med: TMenuItem;
    btnAcCadUsuSysRep: TToolButton;
    actCadUsuSysRepWeb: TAction;
    actTempoMedioPedidos: TAction;
    mnuTempoMedioPedidos: TMenuItem;
    btnConsMateriaPrimaMediaCons: TToolButton;
    actConsMateriaPrimaMediaCons: TAction;
    mnuConsMateriaPrimaMediaCons: TMenuItem;
    btn1: TToolButton;
    btn3: TToolButton;
    ApplicationEvents1: TApplicationEvents;
    mnuComposicao: TMenuItem;
    mnuCadComposicaoProdutos: TMenuItem;
    actCadComposicaoMpProdutos: TAction;
    actConsComposicaoMpProdutos: TAction;
    mnuConsComposicaoMpProdutos: TMenuItem;
    btnControleAcessoTelas: TToolButton;
    actControleConexaoTelas: TAction;
    mnuControleConexaoTelas: TMenuItem;
    actCalculoAjusteComissoes: TAction;
    mnuCalculoAjustaComissoes: TMenuItem;
    mnuCalculoAjustaComissoesAgru: TMenuItem;
    actCalculoAjusteComissoesAgru: TAction;
    btn5: TBitBtn;
    actAjustaComissoes: TAction;
    mnuAjustaComissões: TMenuItem;
    btn4: TBitBtn;
    actFormarManifesto: TAction;
    actCadRoteiroManifestoUF: TAction;
    CadastrodeRoteiroPManifesto1: TMenuItem;
    FormarManifesto1: TMenuItem;
    btnFormarManifesto: TToolButton;
    actEtiquetaPeApoio: TAction;
    EtiquetaPdeApoio1: TMenuItem;
    btn2: TBitBtn;
    btn6: TBitBtn;
    btn9: TBitBtn;
    actApelidosProdSapiens: TAction;
    mnuApelidosparaProdutosSapiens: TMenuItem;
    btnApelidosProdSapiens: TToolButton;
    mnuAjustaICMS: TMenuItem;
    actSaldoAdtFun: TAction;
    mnuSaldoAdtFun: TMenuItem;
    mnuValidacaoDescontosPed: TMenuItem;
    actDescontosPorRep: TAction;
    actValidaDescPed: TAction;
    actHistoricoValidaDescPed: TAction;
    mnuDescontosPorRep: TMenuItem;
    mnuValidaDescPed: TMenuItem;
    mnuHistoricoValidaDescPed: TMenuItem;
    btn10: TBitBtn;
    mnuGestaoMoniClientes: TMenuItem;
    mnuGerenciamentoCidades: TMenuItem;
    actGerenciamentoCidades: TAction;
    actMoniCliente: TAction;
    mnuMoniCliente: TMenuItem;
    actAvaliaSerasa: TAction;
    mnuAvaliaSerasa: TMenuItem;
    actListaOnlineSERASA: TAction;
    mnuListaOnlineSERASA: TMenuItem;
    btn7: TBitBtn;
    btn8: TBitBtn;
    btnImpressoras: TBitBtn;
    mnuManufatura: TMenuItem;
    mnuEngenharia: TMenuItem;
    mnuAjustaConsumoMateriaPrima: TMenuItem;
    actAjustaConsumoMateriaPrima: TAction;
    actPreCargas: TAction;
    mnuPreCargas: TMenuItem;
    actAnaliseComsumoMPProduzir: TAction;
    mnuAnaliseConsumoMPProduzir: TMenuItem;
    btn11: TBitBtn;
    mnuEtiquetaCabeceira: TMenuItem;
    btnSelecionaPasta: TBitBtn;
    btn12: TToolButton;
    btnfrmValidaXmlEntrega: TToolButton;
    actfrmValidaXmlEntrega: TAction;
    procedure Timer1Timer(Sender: TObject);
    procedure Formularios1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConsultaSimplesClasse1Click(Sender: TObject);
    procedure NivelAcesso1Click(Sender: TObject);
    procedure Usuario1Click(Sender: TObject);
    procedure GrupoUsurio1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NivelAcessoExecute(Sender: TObject);
    procedure UsuariosExecute(Sender: TObject);
    procedure FormulariosExecute(Sender: TObject);
    procedure GrupoUsuariosExecute(Sender: TObject);
    procedure LoginExecute(Sender: TObject);
    procedure LogsExecute(Sender: TObject);
    procedure LoginErradoExecute(Sender: TObject);
    procedure AcessosUsuariosExecute(Sender: TObject);
    procedure AcFormNivelExecute(Sender: TObject);
    procedure AcCorteTecCargaExecute(Sender: TObject);
    procedure AcLogBaxaCorteExecute(Sender: TObject);
    procedure AcSaldoCor1001_1Execute(Sender: TObject);
    procedure mnuSairClick(Sender: TObject);
    procedure RxTrayIcon1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Abrir1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure AcGeraIniExecute(Sender: TObject);
    procedure AcPreCargaExecute(Sender: TObject);
    procedure BsairClick(Sender: TObject);
    procedure AcAtualizaPreCusExecute(Sender: TObject);
    procedure TProcuraConexcaoTimer(Sender: TObject);
    procedure AcControleConexcaoExecute(Sender: TObject);
    procedure AcAtualizaPrecoCustoExecute(Sender: TObject);
    procedure AcNfEntradaExecute(Sender: TObject);
    procedure AcCancSaldoOcExecute(Sender: TObject);
    procedure AcComparaSaidaTecidoExecute(Sender: TObject);
    procedure AcDiferencaCorteTecidoExecute(Sender: TObject);
    procedure AcConsPedidoExecute(Sender: TObject);
    procedure AcConsMateriaPrimaExecute(Sender: TObject);
    procedure AcControleConexaoExecute(Sender: TObject);
    procedure AcCadUsuSysRepExecute(Sender: TObject);
    procedure AcValidaXmlNfcExecute(Sender: TObject);
    procedure AcMensagensAlertaClientesExecute(Sender: TObject);
    procedure AcVisuMensgAlertaClientesExecute(Sender: TObject);
    procedure BAlertaClientesClick(Sender: TObject);
    procedure TimerMsgClientesTimer(Sender: TObject);
    procedure AcProcessaPedidosSysRepExecute(Sender: TObject);
    procedure AcAtualiza_E075Pro_ServerRepExecute(Sender: TObject);
    procedure AcLigProdutos_CoresExecute(Sender: TObject);
    procedure AcComparaComprasClientesExecute(Sender: TObject);
    procedure AcRelatorioViagemExecute(Sender: TObject);
    procedure AcAssistenciaExecute(Sender: TObject);
    procedure AcPendenciaCargaExecute(Sender: TObject);
    procedure AcConsFaturamentoExecute(Sender: TObject);
    procedure AcMovimentaEstoqueCargaExecute(Sender: TObject);
    procedure AcCidadesExecute(Sender: TObject);
    procedure AcConsObsPedExecute(Sender: TObject);
    procedure AcPedidoExecute(Sender: TObject);
    procedure AcAcertoViagemExecute(Sender: TObject);
    procedure AcGerenciaFuncionarioExecute(Sender: TObject);
    procedure AcLancaServConvenioExecute(Sender: TObject);
    procedure AcFechamentoConvenioExecute(Sender: TObject);
    procedure AcRelatoriosConvenioExecute(Sender: TObject);
    procedure AcConsMensgAlertaClientesExecute(Sender: TObject);
    procedure AcClientesPedidos10DExecute(Sender: TObject);
    procedure AcConsPedidos10DExecute(Sender: TObject);
    procedure TimerPedidos10DiasTimer(Sender: TObject);
    procedure AcConsCoresPorProdutosExecute(Sender: TObject);
    procedure AcEtiquetasPesBoxExecute(Sender: TObject);
    procedure AcImprimirEtiqPesBoxExecute(Sender: TObject);
    procedure actTranfereTecPedidoExecute(Sender: TObject);
    procedure actCorteTecEstofExecute(Sender: TObject);
    procedure actAtualizaSaldoTecidosExecute(Sender: TObject);
    procedure actConsTecidoExecute(Sender: TObject);
    procedure actAtualizaSaldoReservaTecidosExecute(Sender: TObject);
    procedure actGraficosVendasExecute(Sender: TObject);
    procedure actAtualizaTecidosEstofadosExecute(Sender: TObject);
    procedure actVoltarPedidoParaOriginalExecute(Sender: TObject);
    procedure actValidarPedidosExecute(Sender: TObject);
    procedure actEtiquetasMercadoMoveisExecute(Sender: TObject);
    procedure actImprimirEtiquetasColchoesNome_MedExecute(Sender: TObject);
    procedure actCadUsuSysRepWebExecute(Sender: TObject);
    procedure actConsMateriaPrimaMediaConsExecute(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure actCadComposicaoMpProdutosExecute(Sender: TObject);
    procedure actConsComposicaoMpProdutosExecute(Sender: TObject);
    procedure actControleConexaoTelasExecute(Sender: TObject);
    procedure actCalculoAjusteComissoesExecute(Sender: TObject);
    procedure actCalculoAjusteComissoesAgruExecute(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure actAjustaComissoesExecute(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure actFormarManifestoExecute(Sender: TObject);
    procedure actCadRoteiroManifestoUFExecute(Sender: TObject);
    procedure actEtiquetaPeApoioExecute(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure actApelidosProdSapiensExecute(Sender: TObject);
    procedure mnuAjustaICMSClick(Sender: TObject);
    procedure actSaldoAdtFunExecute(Sender: TObject);
    procedure actDescontosPorRepExecute(Sender: TObject);
    procedure actValidaDescPedExecute(Sender: TObject);
    procedure actHistoricoValidaDescPedExecute(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure actGerenciamentoCidadesExecute(Sender: TObject);
    procedure actMoniClienteExecute(Sender: TObject);
    procedure actAvaliaSerasaExecute(Sender: TObject);
    procedure actListaOnlineSERASAExecute(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btnImpressorasClick(Sender: TObject);
    procedure actAjustaConsumoMateriaPrimaExecute(Sender: TObject);
    procedure actPreCargasExecute(Sender: TObject);
    procedure actAnaliseComsumoMPProduzirExecute(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure mnuEtiquetaCabeceiraClick(Sender: TObject);
    procedure btnSelecionaPastaClick(Sender: TObject);
    procedure actfrmValidaXmlEntregaExecute(Sender: TObject);
  private
    { Private declarations }
    vaSistemaEmUso : string;
    procedure InputBoxSetPasswordChar(var Msg: TMessage); message InputBoxMessage;
    procedure ImpressaoParalela(Texto: AnsiString);
  public
    { Public declarations }
    usuario : String;
    cd_usuario, cd_pessoa_usu, vnCodCon : integer;
    vdChamaLogin : Boolean;
    procedure LimparLabels (form : TForm);
    procedure GravaTela (NomeTela : String; CodCon : Integer);
    procedure ApagaTela (NomeTela : String; CodCon : Integer);
    
  end;

var
  FPrincipal: TFPrincipal;
  H : THandle;
  

implementation

uses UFormulario, {UCidade, UConsSimpCidade, UGrupoUsuario,
  UConsSimpClasse, UConsSimpUnMedida,
  UConsSimpSetor, UPessoaFisica,
  UConsSimpTpCobranca, UMateriaPrima, UConsSimpMtPrima,
  UConsSimpFornecedor,  UEntradaMP,
  USitTribu,  UConsSimpGrupoProduto, UConsSimpSitTribu,
  UConsSimpRegiao, UConsSimpTabPreco,} UPedido,
  {UConsSimpCliente, UConsSimpCondPgto,} UNivelAcesso, UUsuario,
  {UConsSimpGrupoUsuario,} ULogin, {UPedCompAberto, UConferenciaPedido,
  UEtiquetaMt, UDataModule4,
  UDireitoAcasso, UDataModule1, URelCompra, UEtiquetaProd,
  URelMateriaPrima, URelEntradaSaida, URelSaidaProdAcabado, UDataModule2,
  UConsLogs,
  ULoginErrado, UAcessosUsuarios,} UDm, UFormNivel, UCorteTecCarga,
  ULogBaxaCorte, USaldoCor1001_1, UGeraIni, UPreCarga, UAtualizaPreCus,
  UControleConexcoes, UDiferencaCorteTecido, UConsPedido, UConsMateriaPrima,
  UCadUsuSysRep, UValidaXmlNfc, UValidaXmlNfe, UMensagensAlertaClientes,
  UVisuMensgAlertaClientes, UDm3, UProcessaPedidosSysRep,
  UAtuzlia_E075Pro_ServerRep, ULigProdutos_Cores, UComparaComprasClientes,
  URelatorioViagem, UAssistencia, UPendenciaCarga, UConsFaturamento,
  UMovimentaEstoqueCarga, UCidades, UConsObsPedidos, UAcertoViagem,
  UGerenciaFuncionario, ULancaServConvenio, UFechamentoConvenio,
  URelatoriosConvenio, UConsMensgAlertaClientes, UClientesPedidos10D,
  UConsPedidos10D, UConsCoresPorProdutos, UEtiquetasPesBox, UImprimirEtiqPesBox,
  UTransfereTecPedido, UCorteTecEstof, UAtualizaSaldoTecidos, UConsTecido,
  UAtualizaSaldoReservaTecidos, UGraficosVendas, UAtualizaTecidosEstofados,
  FVoltarPedidoParaOriginal, UValidarPedidos, FImprimirEtiquetaColchao,
  UImprimirEtiqMM, UTempoMedioPedidos,
  UConsMateriaPrimaMediaCons, UAjustaVlrEstoque, UComposicaoMpProdutos,
  UConsComposicaoMpProdutos, UDividirPedidos, UControleConexaoTelas,
  UCalculoAjusteComissoes, UCalculoAjusteComissoesAgru, UAjustaComissoes,
  UCadRoteiroManifestoUF, UFormarManifesto, UEtiquetaPeApoio,
  UImportaExcelCidades, UPainelControleRep, UGerenciamentoCidades,
  UAddCliMonitoramento, UMoniCliente, UAvaliaSerasa, UIntegracaoSerasa,
  UApelidosProdSapiens, UAjustaICMS, USaldoAdtFun, UDescontosPorRep,
  UValidaDescPed, UHistoricoValidaDescPed, UTotalizadorDescontos,
  UListaOnlineSERASA, UAnalizaConsumoMpPorFilial, UCadFormaCompraMP,
  UImpressoraPadrao, UAjustaConsumoMateriaPrima, UPreCargas,
  UAnalizeConsumoMPProduzir, UZeraEst3000, ULimpaCancelados, UEtiquetaCabeceira,
  UfrmValidaXmlEntrada;

{$R *.dfm}

{*******************************
   para abrir imput com senha
********************************}
procedure TFPrincipal.InputBoxSetPasswordChar(var Msg: TMessage);
var
  hInputForm, hEdit: HWND;
begin
  hInputForm := Screen.Forms[0].Handle;
  if (hInputForm <> 0) then
  begin
    hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
    SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('*'), 0);
  end;
end;

//procedimento para mandar a impressao das etiquetas
procedure TFPrincipal.ImpressaoParalela(Texto: AnsiString);
var
   PTBlock: TPassThroughData;
begin
   PTBlock.nLen := Length(Texto);
   StrPCopy(@PTBlock.Data, Texto);
   Escape(printer.handle, PASSTHROUGH, 0, @PTBlock, nil);
end;

//grava a tela que esta aberta
procedure TFPrincipal.GravaTela(NomeTela : String; CodCon : Integer);
var Hora : String;
begin
   {CadUsu_T100CTA.Open;
   CadUsu_T100CTA.Insert;
   CadUsu_T100CTAUSU_CODCON.Value := CodCon;
   CadUsu_T100CTAUSU_NOMTLA.Value := NomeTela;
   Hora := TimeToStr(Time);
   CadUsu_T100CTAUSU_HORABE.Value := (StrToInt(Copy(Hora,1,2))*60) + StrToInt(Copy(Hora,4,2));
   CadUsu_T100CTA.Post; }
end;
//apaga tela aberta
procedure TFPrincipal.ApagaTela(NomeTela : String; CodCon : Integer);
begin
  CadUsu_T100CTA.Close;
  CadUsu_T100CTA.Parameters.ParamByName('codcon').Value := CodCon;
  CadUsu_T100CTA.Parameters.ParamByName('nomtla').Value := NomeTela;
  CadUsu_T100CTA.Open;
  if not CadUsu_T100CTA.IsEmpty then
    CadUsu_T100CTA.Delete;
end;

procedure TFPrincipal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
  var Msg : string;
begin
if Pos(UpperCase('is not a valid date'), UpperCase(E.Message)) <> 0 then
   begin
     Msg:='A Data informada é inválida';
     Application.MessageBox(PChar(Msg), 'Atenção', MB_ICONWARNING+MB_OK);
   end;

  if Pos(UpperCase('MySQL server has gone away'), UpperCase(E.Message)) <> 0 then
     begin
       Msg:='Falha na conexão com WebService';
       Application.MessageBox(PChar(Msg), 'Atenção', MB_ICONWARNING+MB_OK);
     end;

  if Pos(UpperCase('invalid input value'), UpperCase(E.Message)) <> 0 then
     begin
       Msg:='Valor informado inválido';
       Application.MessageBox(PChar(Msg), 'Atenção', MB_ICONWARNING+MB_OK);
     end;

  if Pos(UpperCase('is not a valid time'), UpperCase(E.Message)) <> 0 then
     begin
       Msg:='Hora informada inválida';
       Application.MessageBox(PChar(Msg), 'Atenção', MB_ICONWARNING+MB_OK);
     end;

  if Pos(UpperCase('violation of foreign key'), UpperCase(E.Message)) <> 0 then
     begin
       Msg:='Este registro está sendo referênciado por outro lançamento e não poderá ser excluído';
       Application.MessageBox(PChar(Msg), 'Atenção', MB_ICONWARNING+MB_OK);
     end;

  if Pos(UpperCase('is not a valid integer value'), UpperCase(E.Message)) <> 0 then
     begin
       Msg:='Este não é um valor válido';
       Application.MessageBox(PChar(Msg), 'Atenção', MB_ICONWARNING+MB_OK);
     end;


end;

//procedimento para limpar todos os labels de form
procedure TFPrincipal.LimparLabels(form : TForm);
var
  i : Integer;
begin
  for i:= 0 to form.ComponentCount - 1 do
    begin
       if form.Components[i] is TLabel then
        begin
          TLabel(Components[i]).Caption := '';
        end;
    end;
    
end;

procedure TFPrincipal.Timer1Timer(Sender: TObject);
var variavel_string : string;
begin

case DayOfWeek( Date ) of
  1: variavel_string := 'Domingo';
  2: variavel_string := 'Segunda-Feira';
  3: variavel_string := 'Terça-Feira';
  4: variavel_string := 'Quarta-Feira';
  5: variavel_string := 'Quinta-Feira';
  6: variavel_string := 'Sexta-Feira';
  7: variavel_string := 'Sábado';
end;

StatusBar1.Panels[1].Text := variavel_string;
StatusBar1.Panels[2].Text := DateToStr(Date);
StatusBar1.Panels[3].Text := TimeToStr(time);
//if getkeystate(VK_NUMLOCK) = 1 then
//StatusBar1.Panels[4].Text := 'NumLock';
//if getkeystate(VK_NUMLOCK) = 0 then
//StatusBar1.Panels[4].Text := '';
//if getkeystate(VK_CAPITAL	) = 0 then
//StatusBar1.Panels[5].Text := '';
//if getkeystate(VK_CAPITAL) = 1 then
//StatusBar1.Panels[5].Text := 'CapsLock';
//StatusBar1.Panels[6].Text := usuario;

 { faz a barra de tarefas ficar piscando,  Inclua na seção uses: Windows
  FlashWindow(Handle, true);
  FlashWindow(Application.Handle, true);}

end;

procedure TFPrincipal.TimerMsgClientesTimer(Sender: TObject);
begin
 if (BAlertaClientes.Visible = true) and (cd_usuario <> 3) then
    begin
       Dm3.ConsUsu_T085Mac.Close;
       Dm3.ConsUsu_T085Mac.Parameters.ParamByName('data').Value := date;
       Dm3.ConsUsu_T085Mac.Open;
       if not Dm3.ConsUsu_T085Mac.IsEmpty then
          begin
             TimerMsgClientes.Enabled := false;
             FVisuMensgAlertaClientes := TFVisuMensgAlertaClientes.Create(Self);
             FVisuMensgAlertaClientes.ShowModal;
             FreeAndNil(FVisuMensgAlertaClientes);
          end;
    end
 else
   begin
      TimerMsgClientes.Enabled := false;
   end;

end;

procedure TFPrincipal.TimerPedidos10DiasTimer(Sender: TObject);
begin
  TimerPedidos10Dias.Enabled := false;

  if cd_usuario = 42 then //se o usuario for o Amarildo
     begin
        FConsPedidos10D := TFConsPedidos10D.Create(Self);
        FConsPedidos10D.ShowModal;
        FreeAndNil(FConsPedidos10D);
     end;
end;

procedure TFPrincipal.BAlertaClientesClick(Sender: TObject);
begin
  mouse_event( MOUSEEVENTF_RIGHTDOWN, 0, 0, 0, 0 ); //para usar o botao esquerdo enved do direito para chamar o popmenu
  sleep(1);
  mouse_event( MOUSEEVENTF_RIGHTUP, 0, 0, 0, 0 );
end;

procedure TFPrincipal.Formularios1Click(Sender: TObject);
begin
 FFormulario.ShowModal;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
var i,ii,iii,iiii,iiiii : Integer;
    ArqVer, ArqAtu : TIniFile;
    vaVersao : String;
    vaSenha : string;
begin
  if vaSistemaEmUso = 'S' then
     begin
        if Application.MessageBox('Programa já está em uso, abrir uma nova instância?', 'Aviso', MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = idyes then
          Begin

              PostMessage(Handle, InputBoxMessage, 0, 0); //para abrir um input com senha
               vaSenha := InputBox('Senha para abrir uma nova instância', 'Digite a senha', '');

                if vaSenha = '1483' then
                   begin

                   end
                else
                   begin
                       MessageDlg('Senha incorreta!!', mtError, [mbOk], 0);
                       Application.Terminate;

                   end;
          End
        else
          begin

             Application.Terminate;
          end;
     end;


if vdChamaLogin = true then
  begin

 dm.ADOBanco.Connected := true;

 Application.CreateForm(TFLogin, FLogin);
 FLogin.ShowModal;

 Timer1.Enabled := True;

    for i := 0 to MainMenu1.Items.Count-1 do
    begin//1
      dm.ConsValidaMenu.Close;
      dm.ConsValidaMenu.Parameters.ParamByName('codusu').Value := cd_usuario;
      dm.ConsValidaMenu.Parameters.ParamByName('nomfor').Value := MainMenu1.Items[i].Name;
      dm.ConsValidaMenu.Open;
      if dm.ConsValidaMenuUSU_FORLIB.Value = 'N' then
        begin
          MainMenu1.Items[i].Enabled := false;
        end;

        //percorre o sub menu
        for ii := 0 to Fprincipal.MainMenu1.Items[i].count - 1 do
          begin//2
            dm.ConsValidaMenu.Close;
            dm.ConsValidaMenu.Parameters.ParamByName('codusu').Value := cd_usuario;
            dm.ConsValidaMenu.Parameters.ParamByName('nomfor').Value := MainMenu1.Items[i].Items[ii].Name;
            dm.ConsValidaMenu.Open;

             if dm.ConsValidaMenuUSU_FORLIB.Value = 'N' then
              begin
                MainMenu1.Items[i].Items[ii].Enabled := false;
              end;

              //percorre o sub do sub menu
              for iii := 0 to Fprincipal.MainMenu1.Items[i].Items[ii].Count - 1 do
              begin//3
                dm.ConsValidaMenu.Close;
                dm.ConsValidaMenu.Parameters.ParamByName('codusu').Value := cd_usuario;
                dm.ConsValidaMenu.Parameters.ParamByName('nomfor').Value := MainMenu1.Items[i].Items[ii].Items[iii].Name;
                dm.ConsValidaMenu.Open;

                if dm.ConsValidaMenuUSU_FORLIB.Value = 'N' then
                  begin
                    MainMenu1.Items[i].Items[ii].Items[iii].Enabled := false;
                  end;


                  //percorre o sub do sub do sub menu
                  for iiii := 0 to Fprincipal.MainMenu1.Items[i].Items[ii].Items[iii].Count - 1 do
                     begin//4
                       dm.ConsValidaMenu.Close;
                       dm.ConsValidaMenu.Parameters.ParamByName('codusu').Value := cd_usuario;
                       dm.ConsValidaMenu.Parameters.ParamByName('nomfor').Value := MainMenu1.Items[i].Items[ii].Items[iii].Items[iiii].Name;
                       dm.ConsValidaMenu.Open;

                       if dm.ConsValidaMenuUSU_FORLIB.Value = 'N' then
                          begin
                             MainMenu1.Items[i].Items[ii].Items[iii].Items[iiii].Enabled := false;
                          end;


                          //percorre o sub do sub do sub do sub menu
                          for iiiii := 0 to Fprincipal.MainMenu1.Items[i].Items[ii].Items[iii].Items[iiii].Count - 1 do
                             begin//5
                               dm.ConsValidaMenu.Close;
                               dm.ConsValidaMenu.Parameters.ParamByName('codusu').Value := cd_usuario;
                               dm.ConsValidaMenu.Parameters.ParamByName('nomfor').Value := MainMenu1.Items[i].Items[ii].Items[iii].Items[iiii].Items[iiiii].Name;
                               dm.ConsValidaMenu.Open;

                               if dm.ConsValidaMenuUSU_FORLIB.Value = 'N' then
                                  begin
                                     MainMenu1.Items[i].Items[ii].Items[iii].Items[iiii].Items[iiiii].Enabled := false;
                                  end;
                             end;//5
                     end;//4
              end;//3
          end;//2
    end;//1



    BPreCarga.Enabled := mnuPreCarga.Enabled;
    BAtualizaPreCus.Enabled := mnuAtualizaPreCus.Enabled;
    BNfEntrada.Enabled := mnuNfEntrada.Enabled;
    BPedido.Enabled := mnuPedidos.Enabled;
    BConsPedido.Enabled := mnuConsPed.Enabled;
    BConsMateriaPrima.Enabled := mnuConsMateriaPrima.Enabled;
    BControleAcesso.Enabled := mnuControleAcesso.Enabled;
    BAlertaClientes.Enabled := mnuVendaClientes.Enabled;
    BComparaComprasClientes.Enabled := mnuComparaComprasClientes.Enabled;
    bCadUsuSysRepWeb.Enabled := mnuCadUsuSysRep.Enabled;
    BAssistencia.Enabled := mnuCadAssistencia.Enabled;
    BConsFaturamento.Enabled := mnuConsFaturamento.Enabled;
    BAcertoViagem.Enabled := mnuAcertoViagem.Enabled;
    BValidaXmlNfc.Enabled := mnuValidaXmlNfc.Enabled;
    BMovimentaEstCarga.Enabled := mnuMovimentaEstoqueCarga.Enabled;
    btnAtualizaSaldoReservaTecidos.Enabled := mnuAtualizaSaldoReservaTecidos.Enabled;
    btnAtualizaSaldoTecidos.Enabled := mnuAtualizaSaldoTecidos.Enabled;
    btnConsTecidos.Enabled := mnuConsTecido.Enabled;
    btnTransfereTecPedido.Enabled := mnuTransfereTecPedido.Enabled;
    btnPendenciaCarga.Enabled := mnuPendenciaCarga.Enabled;
    BProcessaPedidos.Enabled := mnuProcessaPedidosSysRep.Enabled;
    btnCidades.Enabled := mnuCadCidades.Enabled;
    btnGraficosVendas.Enabled := mnuGraficosVendas.Enabled;
    btnValidarPedidos.Enabled := mnuValidaDescPed.Enabled;
    btnConsMateriaPrimaMediaCons.Enabled := mnuConsMateriaPrimaMediaCons.Enabled;
    btnControleAcessoTelas.Enabled := mnuControleConexaoTelas.Enabled;
    btnApelidosProdSapiens.Enabled := mnuApelidosparaProdutosSapiens.Enabled;
 end;
 //end;

   TimerMsgClientes.Enabled := true;
   TimerPedidos10Dias.Enabled := true;
end;

procedure TFPrincipal.ConsultaSimplesClasse1Click(Sender: TObject);
begin

;

end;

procedure TFPrincipal.NivelAcesso1Click(Sender: TObject);
begin
FNivelAcesso.ShowModal;
end;

procedure TFPrincipal.Usuario1Click(Sender: TObject);
begin
  FUsuario.ShowModal;
end;

procedure TFPrincipal.GrupoUsurio1Click(Sender: TObject);
begin
{FConsSimpGrupoUsuario.ShowModal; }
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
var
   Handle: THandle;
begin

{// --> formação do hint
RxHints.SetHintStyle(hsRoundRect, 0, true, taLeftJustify); //Forma do Balão
//Application.HintColor := clBtnFace; //muda a cor de fundo
Application.HintHidePause := 100000; // sustenta o hint por + tempo }

  Handle := CreateMutex(nil, False, PChar(Application.Title));//valida se a aplicaçao ja esta sendo executada
  if WaitForSingleObject(Handle, 0) = wait_TimeOut then
    begin  //o restante é validado no onshow
       vaSistemaEmUso := 'S';
    end
  ELSE
     begin
       vaSistemaEmUso := 'N';
     end;

vdChamaLogin := true;

end;

procedure TFPrincipal.NivelAcessoExecute(Sender: TObject);
begin
FNivelAcesso := TFNivelAcesso.Create(Self);
FNivelAcesso.ShowModal;
FreeAndNil(FNivelAcesso);
end;

procedure TFPrincipal.UsuariosExecute(Sender: TObject);
begin
FUsuario := TFUsuario.Create(Self);
FUsuario.ShowModal;
FreeAndNil(FUsuario);
end;

procedure TFPrincipal.FormulariosExecute(Sender: TObject);
begin
FFormulario := TFFormulario.Create(Self);
FFormulario.ShowModal;
FreeAndNil(FFormulario);
end;

procedure TFPrincipal.GrupoUsuariosExecute(Sender: TObject);
begin
{FGrupoUsuario := TFGrupoUsuario.Create(Self);
FGrupoUsuario.ShowModal;
FreeAndNil(FGrupoUsuario);}
end;

procedure TFPrincipal.LoginExecute(Sender: TObject);
begin
   FLogin := TFLogin.Create(Self);
    FLogin.ShowModal;
    FreeAndNil(FLogin);
end;

procedure TFPrincipal.LogsExecute(Sender: TObject);
begin
   {FConsLogs := TFConsLogs.Create(Self);
   FConsLogs.ShowModal;
   FreeAndNil(FConsLogs); }
end;

procedure TFPrincipal.LoginErradoExecute(Sender: TObject);
begin
  {FLoginErrado := TFLoginErrado.Create(Self);
  FLoginErrado.ShowModal;
  FreeAndNil(FLoginErrado); }
end;

procedure TFPrincipal.AcessosUsuariosExecute(Sender: TObject);
begin
  {FAcessosUsuarios := TFAcessosUsuarios.Create(Self);
  FAcessosUsuarios.ShowModal;
  FreeAndNil(FAcessosUsuarios);}
end;

procedure TFPrincipal.AcEtiquetasPesBoxExecute(Sender: TObject);
begin
FEtiquetasPesBox := TFEtiquetasPesBox.Create(Self);
FEtiquetasPesBox.ShowModal;
FreeAndNil(FEtiquetasPesBox);
end;

procedure TFPrincipal.AcFechamentoConvenioExecute(Sender: TObject);
begin
    FFechamentoConvenio := TFFechamentoConvenio.Create(Self);
    FFechamentoConvenio.ShowModal;
    FreeAndNil(FFechamentoConvenio);
end;

procedure TFPrincipal.AcFormNivelExecute(Sender: TObject);
begin
  FFormNivel := TFFormNivel.Create(Self);
  FFormNivel.ShowModal;
  FreeAndNil(FFormNivel);
end;

procedure TFPrincipal.AcCorteTecCargaExecute(Sender: TObject);
begin
  FCorteTecCarga := TFCorteTecCarga.Create(Self);
  FCorteTecCarga.ShowModal;
  FreeAndNil(FCorteTecCarga);
end;

procedure TFPrincipal.AcDiferencaCorteTecidoExecute(Sender: TObject);
begin
   FDiferencaCorteTecido := TFDiferencaCorteTecido.Create(Self);
   FDiferencaCorteTecido.ShowModal;
   FreeAndNil(FDiferencaCorteTecido);
end;

procedure TFPrincipal.AcLancaServConvenioExecute(Sender: TObject);
begin
  FLancaServConvenio := TFLancaServConvenio.Create(Self);
  FLancaServConvenio.ShowModal;
  FreeAndNil(FLancaServConvenio);
end;

procedure TFPrincipal.AcLigProdutos_CoresExecute(Sender: TObject);
begin
  FLigProdutos_Cores := TFLigProdutos_Cores.Create(Self);
  FLigProdutos_Cores.ShowModal;
  FreeAndNil(FLigProdutos_Cores);
end;

procedure TFPrincipal.AcLogBaxaCorteExecute(Sender: TObject);
begin
    FLogBaxaCorte := TFLogBaxaCorte.Create(Self);
    FLogBaxaCorte.ShowModal;
    FreeAndNil(FLogBaxaCorte);
end;

procedure TFPrincipal.AcMensagensAlertaClientesExecute(Sender: TObject);
begin
  FMensagensAlertaClientes := TFMensagensAlertaClientes.Create(Self);
  FMensagensAlertaClientes.ShowModal;
  FreeAndNil(FMensagensAlertaClientes);
end;

procedure TFPrincipal.AcMovimentaEstoqueCargaExecute(Sender: TObject);
begin
  FMovimentaEstoqueCarga := TFMovimentaEstoqueCarga.Create(Self);
  FMovimentaEstoqueCarga.ShowModal;
  FreeAndNil(FMovimentaEstoqueCarga);
end;

procedure TFPrincipal.AcNfEntradaExecute(Sender: TObject);
begin
    FNfEntrada := TFNfEntrada.Create(Self);
    FNfEntrada.ShowModal;
    FreeAndNil(FNfEntrada);
end;

procedure TFPrincipal.AcSaldoCor1001_1Execute(Sender: TObject);
begin
   { FSaldoCor1001_1 := TFSaldoCor1001_1.Create(Self);
    FSaldoCor1001_1.ShowModal;
    FreeAndNil(FSaldoCor1001_1);}
end;

procedure TFPrincipal.actAjustaComissoesExecute(Sender: TObject);
begin
FAjustaComissoes := TFAjustaComissoes.Create(Self);
FAjustaComissoes.ShowModal;
FreeAndNil(FAjustaComissoes);
end;

procedure TFPrincipal.actAjustaConsumoMateriaPrimaExecute(Sender: TObject);
begin
  FAjustaConsumoMateriaPrima := TFAjustaConsumoMateriaPrima.Create(Self);
  FAjustaConsumoMateriaPrima.ShowModal;
  FreeAndNil(FAjustaConsumoMateriaPrima);
end;

procedure TFPrincipal.actAnaliseComsumoMPProduzirExecute(Sender: TObject);
begin
   FAnaliseConsumoMPProduzir := TFAnaliseConsumoMPProduzir.Create(Self);
   FAnaliseConsumoMPProduzir.ShowModal;
   FreeAndNil(FAnaliseConsumoMPProduzir);
end;

procedure TFPrincipal.actApelidosProdSapiensExecute(Sender: TObject);
begin
  FApelidosProdSapiens := TFApelidosProdSapiens.Create(Self);
  FApelidosProdSapiens.ShowModal;
  FreeAndNil(FApelidosProdSapiens);
end;

procedure TFPrincipal.actAtualizaSaldoReservaTecidosExecute(Sender: TObject);
begin
  FAtualizaSaldoReservaTecidos := TFAtualizaSaldoReservaTecidos.Create(Self);
  FAtualizaSaldoReservaTecidos.ShowModal;
  FreeAndNil(FAtualizaSaldoReservaTecidos);
end;

procedure TFPrincipal.actAtualizaSaldoTecidosExecute(Sender: TObject);
begin
  FAtualizaSaldoTecidos := TFAtualizaSaldoTecidos.Create(Self);
  FAtualizaSaldoTecidos.ShowModal;
  FreeAndNil(FAtualizaSaldoTecidos);
end;

procedure TFPrincipal.actAtualizaTecidosEstofadosExecute(Sender: TObject);
begin
  FAtualizaTecidosEstofados := TFAtualizaTecidosEstofados.Create(Self);
  FAtualizaTecidosEstofados.ShowModal;
  FreeAndNil(FAtualizaTecidosEstofados);
end;

procedure TFPrincipal.actAvaliaSerasaExecute(Sender: TObject);
begin
  FAvaliaSerasa := TFAvaliaSerasa.Create(Self);
  FAvaliaSerasa.ShowModal;
  FreeAndNil(FAvaliaSerasa);
end;

procedure TFPrincipal.actCadComposicaoMpProdutosExecute(Sender: TObject);
begin
  FComposicaoMpProdutos := TFComposicaoMpProdutos.Create(Self);
  FComposicaoMpProdutos.ShowModal;
  FreeAndNil(FComposicaoMpProdutos);
end;

procedure TFPrincipal.actCadRoteiroManifestoUFExecute(Sender: TObject);
begin
  FCadRoteiroManifestoUF := TFCadRoteiroManifestoUF.Create(Self);
  FCadRoteiroManifestoUF.ShowModal;
  FreeAndNil(FCadRoteiroManifestoUF);
end;

procedure TFPrincipal.actCadUsuSysRepWebExecute(Sender: TObject);
begin
  {FCadUsuSysRepWeb := TFCadUsuSysRepWeb.Create(Self);
  FCadUsuSysRepWeb.ShowModal;
  FreeAndNil(FCadUsuSysRepWeb);}
end;

procedure TFPrincipal.actCalculoAjusteComissoesAgruExecute(Sender: TObject);
begin
  FCalculoAjusteComissoesAgru := TFCalculoAjusteComissoesAgru.Create(Self);
  FCalculoAjusteComissoesAgru.ShowModal;
  FreeAndNil(FCalculoAjusteComissoesAgru);
end;

procedure TFPrincipal.actCalculoAjusteComissoesExecute(Sender: TObject);
begin
  FCalculoAjusteComissoes := TFCalculoAjusteComissoes.Create(Self);
  FCalculoAjusteComissoes.ShowModal;
  FreeAndNil(FCalculoAjusteComissoes);
end;

procedure TFPrincipal.actConsComposicaoMpProdutosExecute(Sender: TObject);
begin
  FConsComposicaoMpProdutos := TFConsComposicaoMpProdutos.Create(Self);
  FConsComposicaoMpProdutos.ShowModal;
  FreeAndNil(FConsComposicaoMpProdutos);
end;

procedure TFPrincipal.actConsMateriaPrimaMediaConsExecute(Sender: TObject);
begin
  FConsMateriaPrimaMediaCons := TFConsMateriaPrimaMediaCons.Create(Self);
  FConsMateriaPrimaMediaCons.ShowModal;
  FreeAndNil(FConsMateriaPrimaMediaCons);
end;

procedure TFPrincipal.actConsTecidoExecute(Sender: TObject);
begin
   FConsTecido := TFConsTecido.Create(Self);
   FConsTecido.ShowModal;
   FreeAndNil(FConsTecido);
end;

procedure TFPrincipal.actControleConexaoTelasExecute(Sender: TObject);
begin
  FControleConexaoTelas := TFControleConexaoTelas.Create(Self);
  FControleConexaoTelas.ShowModal;
  FreeAndNil(FControleConexaoTelas);
end;

procedure TFPrincipal.actCorteTecEstofExecute(Sender: TObject);
begin
  FCorteTecEstof := TFCorteTecEstof.Create(Self);
  FCorteTecEstof.ShowModal;
  FreeAndNil(FCorteTecEstof);
end;

procedure TFPrincipal.actDescontosPorRepExecute(Sender: TObject);
begin
  FDescontosPorRep := TFDescontosPorRep.Create(Self);
  FDescontosPorRep.ShowModal;
  FreeAndNil(FDescontosPorRep);
end;

procedure TFPrincipal.actEtiquetaPeApoioExecute(Sender: TObject);
begin
   FEtiquetaPeApoio := TFEtiquetaPeApoio.Create(Self);
   FEtiquetaPeApoio.ShowModal;
   FreeAndNil(FEtiquetaPeApoio);
end;

procedure TFPrincipal.actEtiquetasMercadoMoveisExecute(Sender: TObject);
begin
    FImprimirEtiqMM := TFImprimirEtiqMM.Create(Self);
    FImprimirEtiqMM.ShowModal;
    FreeAndNil(FImprimirEtiqMM);
end;

procedure TFPrincipal.actFormarManifestoExecute(Sender: TObject);
begin
  FFormarManifesto := TFFormarManifesto.Create(Self);
  FFormarManifesto.ShowModal;
  FreeAndNil(FFormarManifesto);
end;

procedure TFPrincipal.actfrmValidaXmlEntregaExecute(Sender: TObject);
begin
frmValidaXmlEntrada := TfrmValidaXmlEntrada.Create(Self);
frmValidaXmlEntrada.ShowModal;
FreeAndNil(frmValidaXmlEntrada);
end;

procedure TFPrincipal.actGerenciamentoCidadesExecute(Sender: TObject);
begin
  FGerenciamentoCidades := TFGerenciamentoCidades.Create(Self);
  FGerenciamentoCidades.ShowModal;
  FreeAndNil(FGerenciamentoCidades);
end;

procedure TFPrincipal.actGraficosVendasExecute(Sender: TObject);
begin
   FGraficosVendas := TFGraficosVendas.Create(Self);
   FGraficosVendas.ShowModal;
   FreeAndNil(FGraficosVendas);
end;

procedure TFPrincipal.actHistoricoValidaDescPedExecute(Sender: TObject);
begin
  FHistoricoValidaDescPed := TFHistoricoValidaDescPed.Create(Self);
  FHistoricoValidaDescPed.ShowModal;
  FreeAndNil(FHistoricoValidaDescPed);
end;

procedure TFPrincipal.actImprimirEtiquetasColchoesNome_MedExecute(
  Sender: TObject);
begin
  ImprimirEtiquetaColchao := TImprimirEtiquetaColchao.Create(Self);
  ImprimirEtiquetaColchao.ShowModal;
  FreeAndNil(ImprimirEtiquetaColchao);
end;

procedure TFPrincipal.actListaOnlineSERASAExecute(Sender: TObject);
begin
  FListaOnlineSERASA := TFListaOnlineSERASA.Create(Self);
  FListaOnlineSERASA.ShowModal;
  FreeAndNil(FListaOnlineSERASA);
end;

procedure TFPrincipal.actMoniClienteExecute(Sender: TObject);
begin
  FMoniCliente := TFMoniCliente.Create(Self);
  FMoniCliente.ShowModal;
  FreeAndNil(FMoniCliente);
end;

procedure TFPrincipal.actPreCargasExecute(Sender: TObject);
begin
  FPreCargas := TFPreCargas.Create(Self);
  FPreCargas.ShowModal;
  FreeAndNil(FPreCargas);
end;

procedure TFPrincipal.actSaldoAdtFunExecute(Sender: TObject);
begin
  FSaldoAdtFun := TFSaldoAdtFun.Create(Self);
  FSaldoAdtFun.ShowModal;
  FreeAndNil(FSaldoAdtFun);
end;

procedure TFPrincipal.actTranfereTecPedidoExecute(Sender: TObject);
begin
  FTransfereTecPedido := TFTransfereTecPedido.Create(Self);
  FTransfereTecPedido.ShowModal;
  FreeAndNil(FTransfereTecPedido);
end;

procedure TFPrincipal.actValidaDescPedExecute(Sender: TObject);
begin
  FValidaDescPed := TFValidaDescPed.Create(Self);
  FValidaDescPed.ShowModal;
  FreeAndNil(FValidaDescPed);
end;

procedure TFPrincipal.actValidarPedidosExecute(Sender: TObject);
begin
  FValidarPedidos := TFValidarPedidos.Create(Self);
  FValidarPedidos.ShowModal;
  FreeAndNil(FValidarPedidos);
end;

procedure TFPrincipal.actVoltarPedidoParaOriginalExecute(Sender: TObject);
begin
  VoltarPedidoParaOriginal := TVoltarPedidoParaOriginal.Create(Self);
  VoltarPedidoParaOriginal.ShowModal;
  FreeAndNil(VoltarPedidoParaOriginal);
end;

procedure TFPrincipal.AcValidaXmlNfcExecute(Sender: TObject);
begin
   FValidaXmlNfc := TFValidaXmlNfc.Create(Self);
   FValidaXmlNfc.ShowModal;
   FreeAndNil(FValidaXmlNfc);
end;

procedure TFPrincipal.AcVisuMensgAlertaClientesExecute(Sender: TObject);
begin

   FVisuMensgAlertaClientes := TFVisuMensgAlertaClientes.Create(Self);
  FVisuMensgAlertaClientes.ShowModal;
  FreeAndNil(FVisuMensgAlertaClientes);
  
end;

procedure TFPrincipal.mnuAjustaICMSClick(Sender: TObject);
begin
  FAjustaICMS := TFAjustaICMS.Create(Self);
  FAjustaICMS.ShowModal;
  FreeAndNil(FAjustaICMS);
end;

procedure TFPrincipal.mnuEtiquetaCabeceiraClick(Sender: TObject);
begin
  FEtiquetaCabeceira := TFEtiquetaCabeceira.Create(Self);
  FEtiquetaCabeceira.ShowModal;
  FreeAndNil(FEtiquetaCabeceira);
end;

procedure TFPrincipal.mnuSairClick(Sender: TObject);
begin
//  Application.Terminate;
end;

procedure TFPrincipal.RxTrayIcon1DblClick(Sender: TObject);
begin
    show; {Mostra o form}
    H := FindWindow(nil,'TrayIcon'); { acha o ponteiro da aplicação no sistema}
    ShowWindow(h,SW_RESTORE); { mostra aplicação na barra de tarefas}
    RxTrayIcon1.Active := false; {oculta ícone do tray icon}
end;

procedure TFPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if CanClose then { se o comando para fechar for acionado }
    CanClose := false; { cancela o comando }
    h := FindWindow(nil,'TrayIcon'); { acha o ponteiro da aplicação no sistema}
    ShowWindow(h,SW_HIDE); { esconde a aplicação da barra de tarefas}
    RxTrayIcon1.Active := true; { coloca ícone no tray icon}
    hide; { esconde o form }
    vdChamaLogin := False;
end;

procedure TFPrincipal.Abrir1Click(Sender: TObject);
begin
  RxTrayIcon1DblClick(Sender);
end;

procedure TFPrincipal.Fechar1Click(Sender: TObject);
begin
CadUsu_T100CCU.Close;
CadUsu_T100CCU.Parameters.ParamByName('codcon').Value := vnCodCon;
CadUsu_T100CCU.Open;
if not CadUsu_T100CCU.IsEmpty then
  CadUsu_T100CCU.Delete;

Application.Terminate;
end;

procedure TFPrincipal.AcGeraIniExecute(Sender: TObject);
begin
  FGeraIni := TFGeraIni.Create(Self);
  FGeraIni.ShowModal;
  FreeAndNil(FGeraIni);
end;

procedure TFPrincipal.AcGerenciaFuncionarioExecute(Sender: TObject);
begin
  FGerenciaFuncionario := TFGerenciaFuncionario.Create(Self);
  FGerenciaFuncionario.ShowModal;
  FreeAndNil(FGerenciaFuncionario);
end;

procedure TFPrincipal.AcImprimirEtiqPesBoxExecute(Sender: TObject);
begin
 FImprimirEtiqPesBox := TFImprimirEtiqPesBox.Create(Self);
  FImprimirEtiqPesBox.ShowModal;
  FreeAndNil(FImprimirEtiqPesBox);
end;

procedure TFPrincipal.AcPreCargaExecute(Sender: TObject);
begin
  FPreCarga := TFPreCarga.Create(Self);
  FPreCarga.ShowModal;
  FreeAndNil(FPreCarga);
end;

procedure TFPrincipal.AcProcessaPedidosSysRepExecute(Sender: TObject);
begin
    FProcessaPedidosSysRep := TFProcessaPedidosSysRep.Create(Self);
    FProcessaPedidosSysRep.ShowModal;
    FreeAndNil(FProcessaPedidosSysRep);
end;

procedure TFPrincipal.AcRelatoriosConvenioExecute(Sender: TObject);
begin
  FRelatoriosConvenio := TFRelatoriosConvenio.Create(Self);
  FRelatoriosConvenio.ShowModal;
  FreeAndNil(FRelatoriosConvenio);
end;

procedure TFPrincipal.AcRelatorioViagemExecute(Sender: TObject);
begin
  FRelatorioViagem := TFRelatorioViagem.Create(Self);
  FRelatorioViagem.ShowModal;
  FreeAndNil(FRelatorioViagem);
end;

procedure TFPrincipal.BsairClick(Sender: TObject);
begin
  Close;
end;

procedure TFPrincipal.btn10Click(Sender: TObject);
begin
  FTotalizadorDescontos := TFTotalizadorDescontos.Create(Self);
  FTotalizadorDescontos.ShowModal;
  FreeAndNil(FTotalizadorDescontos);
end;

procedure TFPrincipal.btn11Click(Sender: TObject);
begin
  FZeraEst3000 := TFZeraEst3000.Create(Self);
  FZeraEst3000.ShowModal;
  FreeAndNil(FZeraEst3000);
end;

procedure TFPrincipal.btn2Click(Sender: TObject);
begin
  FImportaExcelCidades := TFImportaExcelCidades.Create(Self);
  FImportaExcelCidades.ShowModal;
  FreeAndNil(FImportaExcelCidades);
end;

procedure TFPrincipal.btn3Click(Sender: TObject);
begin
FAjustaVlrEstoque := TFAjustaVlrEstoque.Create(Self);
FAjustaVlrEstoque.ShowModal;
FreeAndNil(FAjustaVlrEstoque);
end;

procedure TFPrincipal.btn4Click(Sender: TObject);
var txt : TStringList;
    etiq : string;
    I : Integer;
begin
     {I := 1;
     while I <= 5 do
       begin
            txt := TStringList.Create;
            txt.Add('m');
            txt.Add('L');
            txt.Add('H12');
            txt.Add('PG');
            txt.Add('A2');
            txt.Add('D11');
            txt.Add('121100002200030'+'COL LIDER LAR D18 - 6 MESES');
            txt.Add('121100001900030'+'COL LIDER LAR D20 - 6 MESES');
            txt.Add('121100001600030'+'COL LIDER LAR D23 - 12 MESES');
            txt.Add('121100001300030'+'COL LIDER LAR D28 - 18 MESES');
            txt.Add('121100001000030'+'COL LIDER LAR D33 - 18 MESES');
            txt.Add('121100000700030'+'COL LIDER LAR D45 - 18 MESES');
            txt.Add('Q0001');
            txt.Add('E');

            Printer.BeginDoc;

            ImpressaoParalela(txt.Text);
            Printer.EndDoc;

            Inc(I);
       end; }

       I := 1;  //para armstrong dia 22/07/2014
     while I <= 5 do
       begin
            txt := TStringList.Create;
            txt.Add('m');
            txt.Add('L');
            txt.Add('H12');
            txt.Add('PG');
            txt.Add('A2');
            txt.Add('D11');
            txt.Add('121100002200030'+'DISCOVERY         - 12 MESES');
            txt.Add('121100001900030'+'LEON              - 12 MESES');
            txt.Add('121100001600030'+'SANREMO           - 12 MESES');
            txt.Add('121100001300030'+'VIENA             - 24 MESES');
            txt.Add('121100001000030'+'SEVILHA           - 24 MESES');
            txt.Add('121100000700030'+'KINGDOM DREAMS    - 36 MESES');
            txt.Add('Q0001');
            txt.Add('E');

            Printer.BeginDoc;

            ImpressaoParalela(txt.Text);
            Printer.EndDoc;

            Inc(I);
       end;


end;

procedure TFPrincipal.btn5Click(Sender: TObject);
begin
  FDividirPedidos := TFDividirPedidos.Create(Self);
  FDividirPedidos.ShowModal;
  FreeAndNil(FDividirPedidos);
end;

procedure TFPrincipal.btn6Click(Sender: TObject);
begin
  FPainelControleRep := TFPainelControleRep.Create(Self);
  FPainelControleRep.ShowModal;
  FreeAndNil(FPainelControleRep);
end;

procedure TFPrincipal.btn7Click(Sender: TObject);
begin
  FAnalizaConsumoMpPorFilial := TFAnalizaConsumoMpPorFilial.Create(Self);
  FAnalizaConsumoMpPorFilial.ShowModal;
  FreeAndNil(FAnalizaConsumoMpPorFilial);
end;

procedure TFPrincipal.btn8Click(Sender: TObject);
begin
  FCadFormaCompraMP := TFCadFormaCompraMP.Create(Self);
  FCadFormaCompraMP.ShowModal;
  FreeAndNil(FCadFormaCompraMP);
end;

procedure TFPrincipal.btn9Click(Sender: TObject);
begin
  FIntegracaoSerasa := TFIntegracaoSerasa.Create(Self);
  FIntegracaoSerasa.ShowModal;
  FreeAndNil(FIntegracaoSerasa);   //
end;

procedure TFPrincipal.btnImpressorasClick(Sender: TObject);
begin
FImpressoraPadrao := TFImpressoraPadrao.Create(Self);
FImpressoraPadrao.ShowModal;
FreeAndNil(FImpressoraPadrao);
end;

procedure TFPrincipal.btnSelecionaPastaClick(Sender: TObject);
var selDir : string;
begin
  frmValidaXmlEntrada := TfrmValidaXmlEntrada.Create(Self);
  frmValidaXmlEntrada.ShowModal;
  FreeAndNil(frmValidaXmlEntrada);
end;

procedure TFPrincipal.AcAcertoViagemExecute(Sender: TObject);
begin
  FAcertoViagem := TFAcertoViagem.Create(Self);
  FAcertoViagem.ShowModal;
  FreeAndNil(FAcertoViagem);
end;

procedure TFPrincipal.AcAssistenciaExecute(Sender: TObject);
begin
 FAssistencia := TFAssistencia.Create(Self);
 FAssistencia.ShowModal;
 FreeAndNil(FAssistencia);
end;

procedure TFPrincipal.AcAtualizaPrecoCustoExecute(Sender: TObject);
begin
    FAtualizaPrecoCusto := TFAtualizaPrecoCusto.Create(Self);
    FAtualizaPrecoCusto.ShowModal;
    FreeAndNil(FAtualizaPrecoCusto);
end;

procedure TFPrincipal.AcAtualizaPreCusExecute(Sender: TObject);
begin
  FAtualizaPreCus := TFAtualizaPreCus.Create(Self);
  FAtualizaPreCus.ShowModal;
  FreeAndNil(FAtualizaPreCus);
end;

procedure TFPrincipal.AcAtualiza_E075Pro_ServerRepExecute(Sender: TObject);
begin
     FAtuzlia_E075Pro_ServerRep := TFAtuzlia_E075Pro_ServerRep.Create(Self);
     FAtuzlia_E075Pro_ServerRep.ShowModal;
     FreeAndNil(FAtuzlia_E075Pro_ServerRep);
end;

procedure TFPrincipal.TProcuraConexcaoTimer(Sender: TObject);
begin
    ConsUsu_T100CCU.Close;
    ConsUsu_T100CCU.Parameters.ParamByName('codcon').Value := vnCodCon;
    ConsUsu_T100CCU.Open;

    if ConsUsu_T100CCU.IsEmpty then
      Application.Terminate;
end;

procedure TFPrincipal.AcCadUsuSysRepExecute(Sender: TObject);
begin
  FCadUsuSysRep := TFCadUsuSysRep.Create(Self);
  FCadUsuSysRep.ShowModal;
  FreeAndNil(FCadUsuSysRep);
end;

procedure TFPrincipal.AcCancSaldoOcExecute(Sender: TObject);
begin
   FCancSaldoOc := TFCancSaldoOc.Create(Self);
   FCancSaldoOc.ShowModal;
   FreeAndNil(FCancSaldoOc);
end;

procedure TFPrincipal.AcCidadesExecute(Sender: TObject);
begin
  FCidades := TFCidades.Create(Self);
  FCidades.ShowModal;
  FreeAndNil(FCidades);
end;

procedure TFPrincipal.AcClientesPedidos10DExecute(Sender: TObject);
begin
if cd_usuario = 3 then
   begin
      FClientesPedidos10D := TFClientesPedidos10D.Create(Self);
      FClientesPedidos10D.ShowModal;
      FreeAndNil(FClientesPedidos10D);
   end;
end;

procedure TFPrincipal.AcComparaComprasClientesExecute(Sender: TObject);
begin
  FComparaComprasClientes := TFComparaComprasClientes.Create(Self);
  FComparaComprasClientes.ShowModal;
  FreeAndNil(FComparaComprasClientes);
end;

procedure TFPrincipal.AcComparaSaidaTecidoExecute(Sender: TObject);
begin
    FComparaSaidaTecido := TFComparaSaidaTecido.Create(Self);
    FComparaSaidaTecido.ShowModal;
    FreeAndNil(FComparaSaidaTecido);
end;

procedure TFPrincipal.AcConsCoresPorProdutosExecute(Sender: TObject);
begin

  FConsCoresPorProdutos := TFConsCoresPorProdutos.Create(Self);
  FConsCoresPorProdutos.ShowModal;
  FreeAndNil(FConsCoresPorProdutos);
end;

procedure TFPrincipal.AcConsFaturamentoExecute(Sender: TObject);
var vaSenha : string;
begin

  vaSenha := InputBox('Acesso','Digite a senha!','');
  if vaSenha = '1483' then
     begin
       FConsFaturamento := TFConsFaturamento.Create(Self);
       FConsFaturamento.ShowModal;
       FreeAndNil(FConsFaturamento);
     end
  else
     begin
       Application.MessageBox('Senha Incorreta','AVISO', MB_ICONWARNING+MB_OK);
       Abort;
     end;
end;

procedure TFPrincipal.AcConsMateriaPrimaExecute(Sender: TObject);
begin
    FConsMateriaPrima := TFConsMateriaPrima.Create(Self);
    FConsMateriaPrima.ShowModal;
    FreeAndNil(FConsMateriaPrima);
end;

procedure TFPrincipal.AcConsMensgAlertaClientesExecute(Sender: TObject);
begin
    FConsMensgAlertaClientes := TFConsMensgAlertaClientes.Create(Self);
    FConsMensgAlertaClientes.ShowModal;
    FreeAndNil(FConsMensgAlertaClientes);
end;

procedure TFPrincipal.AcConsObsPedExecute(Sender: TObject);
begin
  FConsObsPedidos := TFConsObsPedidos.Create(Self);
  FConsObsPedidos.ShowModal;
  FreeAndNil(FConsObsPedidos);
end;

procedure TFPrincipal.AcConsPedidoExecute(Sender: TObject);
begin
  FConsPedido := TFConsPedido.Create(Self);
  FConsPedido.vaTelaOrigem := 'PRINCIPAL';
  FConsPedido.ShowModal;
  FreeAndNil(FConsPedido);


end;

procedure TFPrincipal.AcConsPedidos10DExecute(Sender: TObject);
begin
  FConsPedidos10D := TFConsPedidos10D.Create(Self);
  FConsPedidos10D.ShowModal;
  FreeAndNil(FConsPedidos10D);
end;

procedure TFPrincipal.AcControleConexaoExecute(Sender: TObject);
begin
FControleConexao := TFControleConexao.Create(Self);
FControleConexao.ShowModal;
FreeAndNil(FControleConexao);
end;

procedure TFPrincipal.AcControleConexcaoExecute(Sender: TObject);
begin
  FControleConexca := TFControleConexca.Create(Self);
  FControleConexca.ShowModal;
  FreeAndNil(FControleConexca);
end;

procedure TFPrincipal.AcPedidoExecute(Sender: TObject);
begin
  FPedido := TFPedido.Create(Self);
  FPedido.ShowModal;
  FreeAndNil(FPedido);
end;

procedure TFPrincipal.AcPendenciaCargaExecute(Sender: TObject);
begin
  FPendenciaCarga := TFPendenciaCarga.Create(Self);
  FPendenciaCarga.ShowModal;
  FreeAndNil(FPendenciaCarga);
end;

end.
