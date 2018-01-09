unit UConsPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, rxToolEdit, Buttons, ExtCtrls,
  rxCurrEdit, DB, ADODB;

type
  TFConsPedido = class(TForm)
    DBGrid: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EdCodCli: TEdit;
    EdCodRep: TEdit;
    EdCodFil: TEdit;
    EdDatIni: TDateEdit;
    EdDatFim: TDateEdit;
    BCodCli: TBitBtn;
    BCodRep: TBitBtn;
    BCodFil: TBitBtn;
    Label8: TLabel;
    EdPreCar: TEdit;
    Label9: TLabel;
    EdNumAne: TEdit;
    BPreCar: TBitBtn;
    BNumAne: TBitBtn;
    Panel2: TPanel;
    Label6: TLabel;
    Panel3: TPanel;
    Label7: TLabel;
    ChAbertoParcial: TCheckBox;
    ChSuspenso: TCheckBox;
    ChAbertoTotal: TCheckBox;
    ChLiquidado: TCheckBox;
    ChCancelado: TCheckBox;
    ChNaoFechado: TCheckBox;
    ChComTecTrans: TCheckBox;
    ChSemTecTrans: TCheckBox;
    ChComPreCar: TCheckBox;
    Panel4: TPanel;
    Panel5: TPanel;
    BMostrar: TBitBtn;
    ChSemPreCar: TCheckBox;
    Label10: TLabel;
    EdDiasAberto: TEdit;
    Panel6: TPanel;
    Label11: TLabel;
    EdOrdemOps: TListBox;
    EdOrdem: TListBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel7: TPanel;
    Label12: TLabel;
    EdCidCli: TEdit;
    BCidCli: TBitBtn;
    ValidaCliente: TADOQuery;
    ValidaClienteCODCLI: TIntegerField;
    ValidaClienteNOMCLI: TStringField;
    ValidaRepresentante: TADOQuery;
    ValidaRepresentanteCODREP: TIntegerField;
    ValidaRepresentanteNOMREP: TStringField;
    ValidaRepresentanteAPEREP: TStringField;
    ValidaFilial: TADOQuery;
    ValidaFilialCODEMP: TIntegerField;
    ValidaFilialCODFIL: TIntegerField;
    ValidaFilialNOMFIL: TStringField;
    ValidaUsu_TPreCar: TADOQuery;
    ValidaUsu_TPreCarUSU_PRECAR: TIntegerField;
    ValidaUsu_TPreCarUSU_DATGER: TDateTimeField;
    ValidaUsu_TPreCarUSU_HORGER: TIntegerField;
    ValidaUsu_TPreCarUSU_CODUSU: TIntegerField;
    ValidaUsu_TPreCarUSU_CARLIB: TStringField;
    ValidaUsu_TPreCarUSU_DATLIB: TDateTimeField;
    ValidaUsu_TPreCarUSU_HORLIB: TIntegerField;
    ValidaUsu_TPreCarUSU_USULIB: TIntegerField;
    ValidaUsu_TPreCarUSU_CARIMP: TStringField;
    ValidaCarga: TADOQuery;
    ValidaCargaCODEMP: TIntegerField;
    ValidaCargaCODFIL: TIntegerField;
    ValidaCargaNUMANE: TBCDField;
    Panel8: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    EdCorTec: TEdit;
    ValidaCor: TADOQuery;
    ValidaCorCODPRO: TStringField;
    ValidaCorDESPRO: TStringField;
    ValidaCorCODFAM: TStringField;
    RbAsc: TRadioButton;
    RbDesc: TRadioButton;
    Image1: TImage;
    Image2: TImage;
    ConsE120ped: TADOQuery;
    ConsE120pedCODEMP: TIntegerField;
    ConsE120pedCODFIL: TIntegerField;
    ConsE120pedNUMPED: TIntegerField;
    ConsE120pedSITPED: TIntegerField;
    ConsE120pedDATEMI: TDateTimeField;
    ConsE120pedCODCLI: TIntegerField;
    ConsE120pedCODREP: TIntegerField;
    ConsE120pedVLRLIQ: TBCDField;
    ConsE120pedUSUGER: TBCDField;
    ConsE120pedNOMUSU: TStringField;
    ConsE120pedNOMCLI: TStringField;
    ConsE120pedAPECLI: TStringField;
    ConsE120pedCIDCLI: TStringField;
    ConsE120pedSIGUFS: TStringField;
    ConsE120pedNOMREP: TStringField;
    ConsE120pedAPEREP: TStringField;
    DsConsE120ped: TDataSource;
    Conse135pes: TADOQuery;
    Conse135pesNUMPED: TIntegerField;
    ConsPedTec: TADOQuery;
    ConsPedTecUSU_NUMPED: TIntegerField;
    ConsE120pedDsCitPed: TStringField;
    Panel9: TPanel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    EdQtdPedidos: TCurrencyEdit;
    EdVlrBru: TCurrencyEdit;
    EdVlrLiq: TCurrencyEdit;
    EdVolDer: TCurrencyEdit;
    DsReserva: TDataSource;
    ConsE120pedVLRORI: TBCDField;
    ConsE120Ipd: TADOQuery;
    ConsE120IpdCODEMP: TIntegerField;
    ConsE120IpdCODFIL: TIntegerField;
    ConsE120IpdNUMPED: TIntegerField;
    ConsE120IpdSEQIPD: TIntegerField;
    ConsE120IpdTNSPRO: TStringField;
    ConsE120IpdPEDCLI: TStringField;
    ConsE120IpdSEQPCL: TStringField;
    ConsE120IpdPEDPRV: TStringField;
    ConsE120IpdCODPRO: TStringField;
    ConsE120IpdCODDER: TStringField;
    ConsE120IpdCPLIPD: TStringField;
    ConsE120IpdCODFAM: TStringField;
    ConsE120IpdCODAGR: TIntegerField;
    ConsE120IpdCODTIC: TStringField;
    ConsE120IpdCODTRD: TStringField;
    ConsE120IpdCODTST: TStringField;
    ConsE120IpdCODSTP: TStringField;
    ConsE120IpdCODSTC: TStringField;
    ConsE120IpdCODDEP: TStringField;
    ConsE120IpdCODLOT: TStringField;
    ConsE120IpdRESEST: TStringField;
    ConsE120IpdQTDPED: TFMTBCDField;
    ConsE120IpdQTDAEN: TFMTBCDField;
    ConsE120IpdQTDPOC: TFMTBCDField;
    ConsE120IpdQTDFAT: TFMTBCDField;
    ConsE120IpdQTDCAN: TFMTBCDField;
    ConsE120IpdQTDABE: TFMTBCDField;
    ConsE120IpdQTDRAE: TFMTBCDField;
    ConsE120IpdQTDNLP: TFMTBCDField;
    ConsE120IpdQTDRES: TFMTBCDField;
    ConsE120IpdUNIMED: TStringField;
    ConsE120IpdCODMCP: TStringField;
    ConsE120IpdDATMFP: TDateTimeField;
    ConsE120IpdCOTMFP: TFMTBCDField;
    ConsE120IpdDATMOE: TDateTimeField;
    ConsE120IpdCOTMOE: TFMTBCDField;
    ConsE120IpdFECMOE: TStringField;
    ConsE120IpdCODTPR: TStringField;
    ConsE120IpdPREUNI: TFMTBCDField;
    ConsE120IpdCODMOE: TStringField;
    ConsE120IpdPREFIX: TStringField;
    ConsE120IpdPERDSC: TBCDField;
    ConsE120IpdPEROFE: TBCDField;
    ConsE120IpdPERACR: TBCDField;
    ConsE120IpdPERIPI: TBCDField;
    ConsE120IpdPERICM: TBCDField;
    ConsE120IpdPERCOM: TBCDField;
    ConsE120IpdDATENT: TDateTimeField;
    ConsE120IpdDATANE: TDateTimeField;
    ConsE120IpdDATPOC: TDateTimeField;
    ConsE120IpdCODPVP: TStringField;
    ConsE120IpdNUMPRJ: TIntegerField;
    ConsE120IpdCODFPJ: TIntegerField;
    ConsE120IpdCTAFIN: TIntegerField;
    ConsE120IpdCTARED: TIntegerField;
    ConsE120IpdCODCCU: TStringField;
    ConsE120IpdVLRFRE: TBCDField;
    ConsE120IpdVLRSEG: TBCDField;
    ConsE120IpdVLREMB: TBCDField;
    ConsE120IpdVLRENC: TBCDField;
    ConsE120IpdVLROUT: TBCDField;
    ConsE120IpdVLRDAR: TBCDField;
    ConsE120IpdVLRFRD: TBCDField;
    ConsE120IpdVLROUD: TBCDField;
    ConsE120IpdVLRBRU: TBCDField;
    ConsE120IpdVLRDSC: TBCDField;
    ConsE120IpdVLRDS1: TBCDField;
    ConsE120IpdVLRDS2: TBCDField;
    ConsE120IpdVLRDS3: TBCDField;
    ConsE120IpdVLRDS4: TBCDField;
    ConsE120IpdVLROFE: TBCDField;
    ConsE120IpdVLRDZF: TBCDField;
    ConsE120IpdVLRBIP: TBCDField;
    ConsE120IpdVLRIPI: TBCDField;
    ConsE120IpdVLRBIC: TBCDField;
    ConsE120IpdVLRICM: TBCDField;
    ConsE120IpdVLRBSI: TBCDField;
    ConsE120IpdVLRICS: TBCDField;
    ConsE120IpdVLRBSP: TBCDField;
    ConsE120IpdVLRSTP: TBCDField;
    ConsE120IpdVLRBSC: TBCDField;
    ConsE120IpdVLRSTC: TBCDField;
    ConsE120IpdVLRBCO: TBCDField;
    ConsE120IpdVLRCOM: TBCDField;
    ConsE120IpdVLRLPR: TBCDField;
    ConsE120IpdVLRLOU: TBCDField;
    ConsE120IpdVLRLIQ: TBCDField;
    ConsE120IpdVLRFIN: TBCDField;
    ConsE120IpdSITIPD: TIntegerField;
    ConsE120IpdCODMOT: TIntegerField;
    ConsE120IpdOBSMOT: TStringField;
    ConsE120IpdGERNEC: TIntegerField;
    ConsE120IpdGERCGA: TStringField;
    ConsE120IpdRESMAN: TStringField;
    ConsE120IpdINDAED: TStringField;
    ConsE120IpdNUMCTR: TIntegerField;
    ConsE120IpdDATCPT: TDateTimeField;
    ConsE120IpdSEQCVP: TIntegerField;
    ConsE120IpdUSUGER: TBCDField;
    ConsE120IpdDATGER: TDateTimeField;
    ConsE120IpdHORGER: TIntegerField;
    ConsE120IpdQTDPPF: TFMTBCDField;
    ConsE120IpdCMPKIT: TStringField;
    ConsE120IpdFILOCP: TIntegerField;
    ConsE120IpdNUMOCP: TIntegerField;
    ConsE120IpdSEQIPO: TIntegerField;
    ConsE120IpdUNIVEN: TStringField;
    ConsE120IpdQTDVEN: TFMTBCDField;
    ConsE120IpdPREVEN: TFMTBCDField;
    ConsE120IpdPREBRU: TFMTBCDField;
    ConsE120IpdFILCTR: TIntegerField;
    ConsE120IpdCTRCVS: TIntegerField;
    ConsE120IpdCPTCVS: TDateTimeField;
    ConsE120IpdSEQCVS: TIntegerField;
    ConsE120IpdCODAVC: TIntegerField;
    ConsE120IpdCODFXA: TStringField;
    ConsE120IpdCODPGR: TStringField;
    ConsE120IpdIDXGRD: TIntegerField;
    ConsE120IpdCODMAR: TStringField;
    ConsE120IpdCODCLC: TStringField;
    ConsE120IpdPERDS1: TBCDField;
    ConsE120IpdPERDS2: TBCDField;
    ConsE120IpdPERDS3: TBCDField;
    ConsE120IpdPERDS4: TBCDField;
    ConsE120IpdFILPRD: TIntegerField;
    ConsE120IpdVLRRIS: TBCDField;
    ConsE120IpdINDPCE: TStringField;
    ConsE120IpdINDPCR: TStringField;
    ConsE120IpdPERPIT: TBCDField;
    ConsE120IpdVLRBPT: TBCDField;
    ConsE120IpdVLRPIT: TBCDField;
    ConsE120IpdPERCRT: TBCDField;
    ConsE120IpdVLRBCT: TBCDField;
    ConsE120IpdVLRCRT: TBCDField;
    ConsE120IpdPERCSL: TBCDField;
    ConsE120IpdVLRBCL: TBCDField;
    ConsE120IpdVLRCSL: TBCDField;
    ConsE120IpdPEROUR: TBCDField;
    ConsE120IpdVLRBOR: TBCDField;
    ConsE120IpdVLROUR: TBCDField;
    ConsE120IpdPERIRF: TBCDField;
    ConsE120IpdVLRBIR: TBCDField;
    ConsE120IpdVLRIRF: TBCDField;
    ConsE120IpdFILNFC: TIntegerField;
    ConsE120IpdFORNFC: TIntegerField;
    ConsE120IpdNUMNFC: TIntegerField;
    ConsE120IpdSNFNFC: TStringField;
    ConsE120IpdSEQIPC: TIntegerField;
    ConsE120IpdNCTLCL: TStringField;
    ConsE120IpdNRECLI: TStringField;
    ConsE120IpdNOSICL: TBCDField;
    ConsE120IpdNOSFCL: TBCDField;
    ConsE120IpdNOCCL1: TStringField;
    ConsE120IpdNOCCL2: TStringField;
    ConsE120IpdNOCCL3: TStringField;
    ConsE120IpdCODAGC: TStringField;
    ConsE120IpdCTRCVP: TIntegerField;
    ConsE120IpdCPTCVP: TDateTimeField;
    ConsE120IpdSEQCTR: TIntegerField;
    ConsE120IpdINDAPE: TIntegerField;
    ConsE120IpdOBSIPD: TStringField;
    ConsE120IpdSEQISP: TIntegerField;
    ConsE120IpdEMPOCP: TIntegerField;
    ConsE120IpdVLRBPF: TBCDField;
    ConsE120IpdPERPIF: TBCDField;
    ConsE120IpdVLRPIF: TBCDField;
    ConsE120IpdVLRBCF: TBCDField;
    ConsE120IpdPERCFF: TBCDField;
    ConsE120IpdVLRCFF: TBCDField;
    ConsE120IpdPERDS5: TBCDField;
    ConsE120IpdVLRDS5: TBCDField;
    ConsE120IpdAGRNEC: TStringField;
    ConsE120IpdAGRPAI: TStringField;
    ConsE120IpdORIRES: TStringField;
    ConsE120IpdUSU_TIPCMB: TIntegerField;
    ConsE120IpdUSU_CODTEC1: TStringField;
    ConsE120IpdUSU_CODTEC2: TStringField;
    ConsE120IpdUSU_QTDREP: TIntegerField;
    ConsE120IpdUSU_QTDDIV: TBCDField;
    ConsE120IpdUSU_MEDLAR: TBCDField;
    ConsE120IpdUSU_MEDCOM: TBCDField;
    ConsE120IpdUSU_MEDALT: TBCDField;
    ConsE120IpdUSU_PERDESC1: TBCDField;
    ConsE120IpdUSU_PERDESC2: TBCDField;
    ConsE120IpdUSU_PERDESC3: TBCDField;
    ConsE120IpdUSU_PERDESC4: TBCDField;
    ConsE120IpdUSU_PERDESC5: TBCDField;
    ConsE120IpdUSU_PERDESC6: TBCDField;
    ConsE120IpdUSU_CANAPR: TFMTBCDField;
    ConsE120IpdUSU_TOTDSC: TBCDField;
    ConsE120IpdUSU_TOTDSCORI: TBCDField;
    ConsE120IpdUSU_VLRORI: TBCDField;
    ConsE120IpdUSU_DESESP: TStringField;
    ConsE120pedvnVlrBru: TCurrencyField;
    ConsE120pedvnVlrLiq: TCurrencyField;
    ConsE120pedvnVolPed: TCurrencyField;
    ConsCalculos: TADOQuery;
    ConsCalculosQTDPED: TFMTBCDField;
    ConsCalculosVLRBRU: TFMTBCDField;
    ConsCalculosVLRLIQ: TFMTBCDField;
    Conse075der: TADOQuery;
    Conse075derCODPRO: TStringField;
    Conse075derCODDER: TStringField;
    Conse075derVOLDER: TFMTBCDField;
    Label16: TLabel;
    Label19: TLabel;
    EdCodPro: TEdit;
    EdCodDer: TEdit;
    ValidaProduto: TADOQuery;
    ValidaProdutoCODPRO: TStringField;
    ValidaProdutoCODDER: TStringField;
    BCodPro: TBitBtn;
    ValidaProdutoDESPRO: TStringField;
    Conse075derUSU_CORUNI: TBCDField;
    Conse075derUSU_CMP1BB: TBCDField;
    Conse075derUSU_CMP1AE: TBCDField;
    Conse075derUSU_CMP2BB: TBCDField;
    Conse075derUSU_CMP2EN: TBCDField;
    ConsUsu_t120ipd: TADOQuery;
    ConsUsu_t120ipdUSU_CODEMP: TIntegerField;
    ConsUsu_t120ipdUSU_CODFIL: TIntegerField;
    ConsUsu_t120ipdUSU_NUMPED: TIntegerField;
    ConsUsu_t120ipdUSU_SEQIPD: TIntegerField;
    ConsUsu_t120ipdUSU_QTDCOR: TIntegerField;
    ConsUsu_t120ipdUSU_TIPCMB: TIntegerField;
    ConsUsu_t120ipdUSU_COR001: TStringField;
    ConsUsu_t120ipdUSU_COR002: TStringField;
    ConsUsu_t120ipdUSU_SEQITE: TIntegerField;
    ConsUsu_t120ipdUSU_CODPRO: TStringField;
    ConsUsu_t120ipdUSU_CODDER: TStringField;
    ConsUsu_t120ipdUSU_TECTRA: TStringField;
    ConsUsu_t120ipdUSU_QTDABE: TIntegerField;
    ConsUsu_t120ipdUSU_QTDCAN: TIntegerField;
    ConsUsu_t120ipdUSU_NUMANE: TBCDField;
    ConsUsu_t120ipdUSU_PRECAR: TIntegerField;
    ConsE210Est: TADOQuery;
    ConsE210EstCODPRO: TStringField;
    ConsE210EstCODDEP: TStringField;
    ConsE210EstQTDEST: TFMTBCDField;
    Panel10: TPanel;
    BProdutosConsulta: TBitBtn;
    BConsumoTecido: TBitBtn;
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodCliKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodRepExit(Sender: TObject);
    procedure EdCodFilExit(Sender: TObject);
    procedure EdPreCarExit(Sender: TObject);
    procedure EdNumAneExit(Sender: TObject);
    procedure EdCodRepKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodFilKeyPress(Sender: TObject; var Key: Char);
    procedure EdPreCarKeyPress(Sender: TObject; var Key: Char);
    procedure EdNumAneKeyPress(Sender: TObject; var Key: Char);
    procedure BCodCliClick(Sender: TObject);
    procedure BCodRepClick(Sender: TObject);
    procedure BCodFilClick(Sender: TObject);
    procedure BCidCliClick(Sender: TObject);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodRepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodFilKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCidCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPreCarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNumAneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BPreCarClick(Sender: TObject);
    procedure BNumAneClick(Sender: TObject);
    procedure EdDiasAbertoKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BMostrarClick(Sender: TObject);
    procedure EdCorTecKeyPress(Sender: TObject; var Key: Char);
    procedure EdCor001KeyPress(Sender: TObject; var Key: Char);
    procedure EdCor002KeyPress(Sender: TObject; var Key: Char);
    procedure EdCidCliExit(Sender: TObject);
    procedure EdCorTecExit(Sender: TObject);
    procedure ConsE120pedCalcFields(DataSet: TDataSet);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEnter(Sender: TObject);
    procedure DBGridExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodDerExit(Sender: TObject);
    procedure EdCodProKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodDerKeyPress(Sender: TObject; var Key: Char);
    procedure BCodProClick(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BProdutosConsultaClick(Sender: TObject);
    procedure BConsumoTecidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vaCodCliSql : string;
    vaCodRepSql : string;
    vaCodFilSql : string;
    vaPreCarSql : string;
    vaNumAneSql : string;
    vaOrdemSql  : string;
    vaCidCliSql : string;
    vdDatIniSql : TDateTime;
    vdDatFimSql : TDateTime;
    vdDatAbeSql : TDateTime;
    vaCorTecSql : string;
    vaSitPedSql : string;
    vaCondPreDefSql : string;
    vaPedCarSql : string;
    vnQtdPedidos : Integer;
    vnVlrBru : Currency;
    vnVlrLiq : Currency;
    vnVolPed : Currency;
    vaTelaOrigem : string;
  end;

var
  FConsPedido: TFConsPedido;

implementation

uses UDm, UConsGeralNfEnt, UPedido, UProdutosConsPedidos, UDm2,
  UTecidosConsPedido;

{$R *.dfm}

procedure TFConsPedido.EdCodRepExit(Sender: TObject);
var
    vaTexto  : string;
    T        : TReplaceFlags;
    vnCont   : Integer;
    vaCodRep : string;
    vaCodErr : string;
    vnCodRep : Integer;

begin
  vaCodRepSql := '';//limpa a variavel que vai ser usada no sql
  vaTexto := StringReplace(trim(EdCodRep.Text), ' ', '', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,,,', ',', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,,', ',', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,', ',', [rfReplaceAll,rfIgnoreCase]);
  EdCodRep.Text := vaTexto;
  vaCodRep := '';
  vaCodErr := '';
  vnCont := 1;

  while vnCont <= Length(vaTexto) do
     begin//1
     //valia se nao tem ',' antes dos numeros
      if (vnCont = 1) and (vaTexto[vnCont] = ',') then
         begin//9
           vaTexto[vnCont] := ' ';
           vaTexto := StringReplace(trim(vaTexto), ' ', '', [rfReplaceAll,rfIgnoreCase]);

           EdCodRep.Text := vaTexto;
         end;//9

       if vaTexto[vnCont] = ',' then
          begin//2
            ValidaRepresentante.Close;
            ValidaRepresentante.Parameters.ParamByName('codrep').Value := StrToInt(vaCodRep);
            ValidaRepresentante.Open;
            if ValidaRepresentante.IsEmpty then
               begin//3
                  if vaCodErr = '' then
                       vaCodErr := vaCodRep
                  else
                       vaCodErr := vaCodErr + ',' + vaCodRep;

                     vaCodRep := '';
               end//3
            else
               begin//4
                  if vaCodRepSql = '' then
                     vaCodRepSql := vaCodRep
                  else
                     vaCodRepSql := vaCodRepSql + ','+ vaCodRep;

                  vaCodRep := '';
               end;//4
          end//2
       else
          begin//5
            vaCodRep := vaCodRep + vaTexto[vnCont];

            //valida se nao tem a virgula no final de todos os numeros
            if ((vnCont = Length(vaTexto)) and (vaTexto[vnCont] <> ','))then
              begin
                vaTexto := vaTexto + ',';
                EdCodRep.Text := vaTexto;
              end;
          end;//5
        vnCont := vnCont + 1;
     end;//1

     if vaCodErr <> '' then
        begin//8
           MessageDlg('Representante(s): '+vaCodErr+' não encontrado(s)',mtWarning,[mbok],0);
           ActiveControl := EdCodRep;
        end;//8

end;

procedure TFConsPedido.EdCodRepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f3 then
     begin
       BCodRep.Click;
     end;
end;

procedure TFConsPedido.EdCodRepKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFConsPedido.EdCor001KeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFConsPedido.EdCor002KeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFConsPedido.EdDiasAbertoKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFConsPedido.EdNumAneExit(Sender: TObject);
var
    vaTexto  : string;
    T        : TReplaceFlags;
    vnCont   : Integer;
    vaNumAne : string;
    vaCodErr : string;

begin
  vaNumAneSql := '';//limpa a variavel que vai ser usada no sql
  vaTexto := StringReplace(trim(EdNumAne.Text), ' ', '', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,,,', ',', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,,', ',', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,', ',', [rfReplaceAll,rfIgnoreCase]);
  EdNumAne.Text := vaTexto;
  vaNumAne := '';
  vaCodErr := '';
  vnCont := 1;
  vaPedCarSql := '';
  while vnCont <= Length(vaTexto) do
     begin//1
     //valia se nao tem ',' antes dos numeros
      if (vnCont = 1) and (vaTexto[vnCont] = ',') then
         begin//9
           vaTexto[vnCont] := ' ';
           vaTexto := StringReplace(trim(vaTexto), ' ', '', [rfReplaceAll,rfIgnoreCase]);

           EdNumAne.Text := vaTexto;
         end;//9

       if vaTexto[vnCont] = ',' then
          begin//2
            ValidaCarga.Close;
            ValidaCarga.Parameters.ParamByName('codemp').Value := 1;
            ValidaCarga.Parameters.ParamByName('codfil').Value := 1;
            ValidaCarga.Parameters.ParamByName('numane').Value := StrToInt(vaNumAne);
            ValidaCarga.Open;
            if ValidaCarga.IsEmpty then
               begin//3
                  if vaCodErr = '' then
                       vaCodErr := vaNumAne
                  else
                       vaCodErr := vaCodErr + ',' + vaNumAne;

                     vaNumAne := '';
               end//3
            else
               begin//4
                  if vaNumAneSql = '' then
                     vaNumAneSql := vaNumAne
                  else
                     vaNumAneSql := vaNumAneSql + ','+ vaNumAne;


                     //pega o numero dos pedidos que estao na carga
                     Conse135pes.Close;
                     Conse135pes.Parameters.ParamByName('numane').Value := StrToInt(vaNumAne);
                     Conse135pes.Open;
                     Conse135pes.First;
                     while not Conse135pes.Eof do
                        begin
                           if vaPedCarSql = '' then
                              vaPedCarSql := IntToStr(Conse135pesNUMPED.Value)
                           else
                              vaPedCarSql := vaPedCarSql +','+ IntToStr(Conse135pesNUMPED.Value);

                           Conse135pes.Next;
                        end;

                  vaNumAne := '';
               end;//4
          end//2
       else
          begin//5
            vaNumAne := vaNumAne + vaTexto[vnCont];

            //valida se nao tem a virgula no final de todos os numeros
            if ((vnCont = Length(vaTexto)) and (vaTexto[vnCont] <> ','))then
              begin
                vaTexto := vaTexto + ',';
                EdNumAne.Text := vaTexto;
              end;
          end;//5
        vnCont := vnCont + 1;
     end;//1

     if vaCodErr <> '' then
        begin//8
           MessageDlg('Carga(s): '+vaCodErr+' não encontrado(s)',mtWarning,[mbok],0);
           ActiveControl := EdNumAne;
        end;//8

end;

procedure TFConsPedido.EdNumAneKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f3 then
     begin
       BNumAne.Click;
     end;
end;

procedure TFConsPedido.EdNumAneKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFConsPedido.EdPreCarExit(Sender: TObject);
var
    vaTexto  : string;
    T        : TReplaceFlags;
    vnCont   : Integer;
    vaPreCar : string;
    vaCodErr : string;

begin
  vaPreCarSql := '';//limpa a variavel que vai ser usada no sql
  vaTexto := StringReplace(trim(EdPreCar.Text), ' ', '', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,,,', ',', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,,', ',', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,', ',', [rfReplaceAll,rfIgnoreCase]);
  EdPreCar.Text := vaTexto;
  vaPreCar := '';
  vaCodErr := '';
  vnCont := 1;

  while vnCont <= Length(vaTexto) do
     begin//1
     //valia se nao tem ',' antes dos numeros
      if (vnCont = 1) and (vaTexto[vnCont] = ',') then
         begin//9
           vaTexto[vnCont] := ' ';
           vaTexto := StringReplace(trim(vaTexto), ' ', '', [rfReplaceAll,rfIgnoreCase]);

           EdPreCar.Text := vaTexto;
         end;//9

       if vaTexto[vnCont] = ',' then
          begin//2
            ValidaUsu_TPreCar.Close;
            ValidaUsu_TPreCar.Parameters.ParamByName('precar').Value := StrToInt(vaPreCar);
            ValidaUsu_TPreCar.Open;
            if ValidaUsu_TPreCar.IsEmpty then
               begin//3
                  if vaCodErr = '' then
                       vaCodErr := vaPreCar
                  else
                       vaCodErr := vaCodErr + ',' + vaPreCar;

                     vaPreCar := '';
               end//3
            else
               begin//4
                  if vaPreCarSql = '' then
                     vaPreCarSql := vaPreCar
                  else
                     vaPreCarSql := vaPreCarSql + ','+ vaPreCar;

                  vaPreCar := '';
               end;//4
          end//2
       else
          begin//5
            vaPreCar := vaPreCar + vaTexto[vnCont];

            //valida se nao tem a virgula no final de todos os numeros
            if ((vnCont = Length(vaTexto)) and (vaTexto[vnCont] <> ','))then
              begin
                vaTexto := vaTexto + ',';
                EdPreCar.Text := vaTexto;
              end;
          end;//5
        vnCont := vnCont + 1;
     end;//1

     if vaCodErr <> '' then
        begin//8
           MessageDlg('Pré-Carga(s): '+vaCodErr+' não encontrado(s)',mtWarning,[mbok],0);
           ActiveControl := EdPreCar;
        end;//8

end;

procedure TFConsPedido.EdPreCarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f3 then
     begin
       BPreCar.Click;
     end;
end;

procedure TFConsPedido.EdPreCarKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFConsPedido.EdCorTecExit(Sender: TObject);
begin
    if trim(EdCorTec.Text) <> '' then
       begin
          ValidaCor.Close;
          ValidaCor.Parameters.ParamByName('codpro').Value := Trim(EdCorTec.Text);
          ValidaCor.Open;
          if ValidaCor.IsEmpty then
             begin
                MessageDlg('Tecido não encontrado!',mtWarning,[mbok],0);
                ActiveControl := EdCorTec;
             end
          else
             begin
               vaCorTecSql := Trim(EdCorTec.Text);
             end;

       end;

end;

procedure TFConsPedido.EdCorTecKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFConsPedido.BCodCliClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.cgccpf,e085cli.insest,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085cli.cidcli,e085cli.sigufs,e085cli.endcli,e085cli.baicli,e085cli.sitcli,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085hcl.codrep,e090rep.nomrep,e090rep.aperep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e085cli';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e085hcl on e085hcl.codcli = e085cli.codcli';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e090rep on e090rep.codrep = e085hcl.codrep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e085hcl.codfil = 1';

    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodCli';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FConsPedido';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodCli;
end;

procedure TFConsPedido.BCodRepClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select codrep,nomrep,aperep,cgccpf from e090rep';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'CodRep';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FConsPedido';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodRep;
end;

procedure TFConsPedido.BConsumoTecidoClick(Sender: TObject);
var Cursor : TCursor;
begin
       if not ConsE120ped.IsEmpty then
          begin//1
             if Application.MessageBox('Dependendo da quantidade de pedidos na consulta'+#13+ 'este processo pode levar alguns minutos..'+#13+#13+'Deseja continuar?', 'Atenção!', MB_ICONWARNING+MB_YESNO) = idyes then
                begin//2
                DBGrid.DataSource := DsReserva;
                Cursor := Screen.Cursor;
                Screen.Cursor := crSQLWait;
                //apaga os registros antigos da tabela usu_temptcp
                Dm2.ConsUsu_TempTcp.Close;
                Dm2.ConsUsu_TempTcp.Open;
                Dm2.ConsUsu_TempTcp.First;
                while not Dm2.ConsUsu_TempTcp.Eof do
                  begin
                    Dm2.ConsUsu_TempTcp.Delete;
                  end;

                   ConsE120ped.First;
                   while not ConsE120ped.Eof do
                      begin//3
                          //percorre as cores do pedido
                          ConsUsu_t120ipd.Close;
                          ConsUsu_t120ipd.Parameters.ParamByName('codemp').Value := ConsE120pedCODEMP.Value;
                          ConsUsu_t120ipd.Parameters.ParamByName('codfil').Value := ConsE120pedCODFIL.Value;
                          ConsUsu_t120ipd.Parameters.ParamByName('numped').Value := ConsE120pedNUMPED.Value;
                          ConsUsu_t120ipd.Open;
                          ConsUsu_t120ipd.First;
                          while not ConsUsu_t120ipd.Eof do
                             begin//4
                              //consulta quanto consome de tecido cada produto
                               Conse075der.Close;
                               Conse075der.Parameters.ParamByName('codpro').Value := ConsUsu_t120ipdUSU_CODPRO.Value;
                               Conse075der.Parameters.ParamByName('codder').Value := ConsUsu_t120ipdUSU_CODDER.Value;
                               Conse075der.Open;

                                  if ConsUsu_t120ipdUSU_TIPCMB.Value = 1 then
                                     begin//6
                                        Dm2.CadUsu_TempTcp.Close;
                                        Dm2.CadUsu_TempTcp.Parameters.ParamByName('codpro').Value := ConsUsu_t120ipdUSU_COR001.Value;
                                        Dm2.CadUsu_TempTcp.Open;
                                        if Dm2.CadUsu_TempTcp.IsEmpty then
                                           begin//7
                                              Dm2.CadUsu_TempTcp.Insert;
                                              Dm2.CadUsu_TempTcpUSU_CODPRO.Value := ConsUsu_t120ipdUSU_COR001.Value;
                                              Dm2.CadUsu_TempTcpUSU_QTDCON.Value := ConsUsu_t120ipdUSU_QTDABE.Value * Conse075derUSU_CORUNI.Value;
                                              Dm2.CadUsu_TempTcp.Post;
                                           end//7
                                        else
                                           begin//8
                                              Dm2.CadUsu_TempTcp.Edit;
                                              Dm2.CadUsu_TempTcpUSU_QTDCON.Value := Dm2.CadUsu_TempTcpUSU_QTDCON.Value + ConsUsu_t120ipdUSU_QTDABE.Value * Conse075derUSU_CORUNI.Value;
                                              Dm2.CadUsu_TempTcp.Post;
                                           end;//8
                                     end//6
                                  else
                                  if ConsUsu_t120ipdUSU_TIPCMB.Value = 2 then
                                     begin//9
                                       //com a cor 001
                                        Dm2.CadUsu_TempTcp.Close;
                                        Dm2.CadUsu_TempTcp.Parameters.ParamByName('codpro').Value := ConsUsu_t120ipdUSU_COR001.Value;
                                        Dm2.CadUsu_TempTcp.Open;
                                        if Dm2.CadUsu_TempTcp.IsEmpty then
                                           begin//10
                                              Dm2.CadUsu_TempTcp.Insert;
                                              Dm2.CadUsu_TempTcpUSU_CODPRO.Value := ConsUsu_t120ipdUSU_COR001.Value;
                                              Dm2.CadUsu_TempTcpUSU_QTDCON.Value := ConsUsu_t120ipdUSU_QTDABE.Value * Conse075derUSU_CMP1BB.Value;
                                              Dm2.CadUsu_TempTcp.Post;
                                           end//10
                                        else
                                           begin//11
                                              Dm2.CadUsu_TempTcp.Edit;
                                              Dm2.CadUsu_TempTcpUSU_QTDCON.Value := Dm2.CadUsu_TempTcpUSU_QTDCON.Value + ConsUsu_t120ipdUSU_QTDABE.Value * Conse075derUSU_CMP1BB.Value;
                                              Dm2.CadUsu_TempTcp.Post;
                                           end;//11

                                      //com a cor 002
                                      Dm2.CadUsu_TempTcp.Close;
                                        Dm2.CadUsu_TempTcp.Parameters.ParamByName('codpro').Value := ConsUsu_t120ipdUSU_COR002.Value;
                                        Dm2.CadUsu_TempTcp.Open;
                                        if Dm2.CadUsu_TempTcp.IsEmpty then
                                           begin//10
                                              Dm2.CadUsu_TempTcp.Insert;
                                              Dm2.CadUsu_TempTcpUSU_CODPRO.Value := ConsUsu_t120ipdUSU_COR002.Value;
                                              Dm2.CadUsu_TempTcpUSU_QTDCON.Value := ConsUsu_t120ipdUSU_QTDABE.Value * Conse075derUSU_CMP1AE.Value;
                                              Dm2.CadUsu_TempTcp.Post;
                                           end//10
                                        else
                                           begin//11
                                              Dm2.CadUsu_TempTcp.Edit;
                                              Dm2.CadUsu_TempTcpUSU_QTDCON.Value := Dm2.CadUsu_TempTcpUSU_QTDCON.Value + ConsUsu_t120ipdUSU_QTDABE.Value * Conse075derUSU_CMP1AE.Value;
                                              Dm2.CadUsu_TempTcp.Post;
                                           end;//11
                                     end//9
                                  else
                                  if ConsUsu_t120ipdUSU_TIPCMB.Value = 3 then
                                     begin//12
                                       //com a cor 001
                                        Dm2.CadUsu_TempTcp.Close;
                                        Dm2.CadUsu_TempTcp.Parameters.ParamByName('codpro').Value := ConsUsu_t120ipdUSU_COR001.Value;
                                        Dm2.CadUsu_TempTcp.Open;
                                        if Dm2.CadUsu_TempTcp.IsEmpty then
                                           begin//13
                                              Dm2.CadUsu_TempTcp.Insert;
                                              Dm2.CadUsu_TempTcpUSU_CODPRO.Value := ConsUsu_t120ipdUSU_COR001.Value;
                                              Dm2.CadUsu_TempTcpUSU_QTDCON.Value := ConsUsu_t120ipdUSU_QTDABE.Value * Conse075derUSU_CMP2BB.Value;
                                              Dm2.CadUsu_TempTcp.Post;
                                           end//13
                                        else
                                           begin//14
                                              Dm2.CadUsu_TempTcp.Edit;
                                              Dm2.CadUsu_TempTcpUSU_QTDCON.Value := Dm2.CadUsu_TempTcpUSU_QTDCON.Value + ConsUsu_t120ipdUSU_QTDABE.Value * Conse075derUSU_CMP2BB.Value;
                                              Dm2.CadUsu_TempTcp.Post;
                                           end;//14

                                        //com a cor 002
                                        Dm2.CadUsu_TempTcp.Close;
                                        Dm2.CadUsu_TempTcp.Parameters.ParamByName('codpro').Value := ConsUsu_t120ipdUSU_COR002.Value;
                                        Dm2.CadUsu_TempTcp.Open;
                                        if Dm2.CadUsu_TempTcp.IsEmpty then
                                           begin//15
                                              Dm2.CadUsu_TempTcp.Insert;
                                              Dm2.CadUsu_TempTcpUSU_CODPRO.Value := ConsUsu_t120ipdUSU_COR002.Value;
                                              Dm2.CadUsu_TempTcpUSU_QTDCON.Value := ConsUsu_t120ipdUSU_QTDABE.Value * Conse075derUSU_CMP2EN.Value;
                                              Dm2.CadUsu_TempTcp.Post;
                                           end//15
                                        else
                                           begin//16
                                              Dm2.CadUsu_TempTcp.Edit;
                                              Dm2.CadUsu_TempTcpUSU_QTDCON.Value := Dm2.CadUsu_TempTcpUSU_QTDCON.Value + ConsUsu_t120ipdUSU_QTDABE.Value * Conse075derUSU_CMP2EN.Value;
                                              Dm2.CadUsu_TempTcp.Post;
                                           end;//16
                                     end;//12

                               ConsUsu_t120ipd.Next;
                             end;//4

                         ConsE120ped.Next;
                      end;//3

                      {*******************************************************************
                         atualiza a tabela usu_temptcp com o saldo do tecido no estoque
                      ********************************************************************}
                      Dm2.ConsUsu_TempTcp.Close;
                      Dm2.ConsUsu_TempTcp.Open;
                      Dm2.ConsUsu_TempTcp.First;
                      while not Dm2.ConsUsu_TempTcp.Eof do
                         begin

                            Dm2.CadUsu_TempTcp.Close;
                            Dm2.CadUsu_TempTcp.Parameters.ParamByName('codpro').Value := Dm2.ConsUsu_TempTcpUSU_CODPRO.Value;
                            Dm2.CadUsu_TempTcp.Open;
                            Dm2.CadUsu_TempTcp.Edit;

                            ConsE210Est.Close;
                            ConsE210Est.Parameters.ParamByName('codpro').Value := Dm2.ConsUsu_TempTcpUSU_CODPRO.Value;
                            ConsE210Est.Parameters.ParamByName('coddep').Value := '1001';
                            ConsE210Est.Open;

                            Dm2.CadUsu_TempTcpUSU_SAL1001.Value := ConsE210EstQTDEST.AsCurrency;

                            ConsE210Est.Close;
                            ConsE210Est.Parameters.ParamByName('codpro').Value := Dm2.ConsUsu_TempTcpUSU_CODPRO.Value;
                            ConsE210Est.Parameters.ParamByName('coddep').Value := '1001.1';
                            ConsE210Est.Open;

                            Dm2.CadUsu_TempTcpUSU_SAL1001_1.Value := ConsE210EstQTDEST.AsCurrency;
                            Dm2.CadUsu_TempTcpUSU_SALFIM.AsCurrency := Dm2.CadUsu_TempTcpUSU_SAL1001.Value - Dm2.CadUsu_TempTcpUSU_QTDCON.Value;
                            Dm2.CadUsu_TempTcp.Post;

                            Dm2.ConsUsu_TempTcp.Next;
                         end;

                         Dm2.ConsUsu_TempTcp.Close;
                         Dm2.ConsUsu_TempTcp.Open;

                         DBGrid.DataSource := DsConsE120ped;
                         Screen.Cursor := Cursor;

                         FTecidosConsPedido := TFTecidosConsPedido.Create(Self);
                         FTecidosConsPedido.ShowModal;
                         FreeAndNil(FTecidosConsPedido);


                end;//2

          end;//1

end;

procedure TFConsPedido.BMostrarClick(Sender: TObject);
var I : integer;
  vaDatIni,vaDatFim,vaDatAbe : string;
  vaOrdem,vaCodCli,vaCodRep,vaCodFil,vaCondPreDef,vaSitPed,vaPreCar,vaPedCar : string;
  vaSitPedCorTec : string;//situacao do pedido quando for informado uma cor para pesquisa
  vaNumPedCorTec : string;//faixa de pedidos usado na consulta das cores
  vaCondNumPedCorTec : string;
  Cursor : TCursor;
  vnVolDer : Currency;


begin
   Cursor := Screen.Cursor;
   Screen.Cursor := crSQLWait;

    vnQtdPedidos := 0;
    vnVlrBru := 0;
    vnVlrLiq := 0;
    vnVolPed := 0;

  {***************************************************
             valida condiçao pré definida
  ****************************************************}
  vaCondPreDefSql := '';
  if (ChComPreCar.Checked) or (ChSemPreCar.Checked) or (ChComTecTrans.Checked) or (ChSemTecTrans.Checked) or (trim(EdDiasAberto.Text) <> '') then
     begin
       vaCondPreDefSql := ' and e120ped.sitped in (1,2,3)';
     end;

   if ChComPreCar.Checked = true then
      begin//1
            vaCondPreDefSql := vaCondPreDefSql + ' and e120ped.usu_precar <> 0';
      end;//1
   if ChSemPreCar.Checked = true then
      begin//2
            vaCondPreDefSql := vaCondPreDefSql + ' and e120ped.usu_precar = 0';
      end;//2
  if ChComTecTrans.Checked = true then
      begin//3
            vaCondPreDefSql := vaCondPreDefSql + ' and e120ped.usu_pedtra = ''S''';
      end;//3
  if ChSemTecTrans.Checked = true then
      begin//4
            vaCondPreDefSql := vaCondPreDefSql + ' and e120ped.usu_pedtra = ''N''';
      end;//4
  if trim(EdDiasAberto.Text) <> '' then
     begin//5
          vaCondPreDefSql := vaCondPreDefSql + ' and e120ped.datemi <= :datini';
     end;//5


   {*************************************************
             valida a situaçao do pedido
   **************************************************}
   vaSitPedSql := '';
    if ChAbertoTotal.Checked = true then
       begin
          if vaSitPedSql = '' then
             vaSitPedSql := '1'
          else
             vaSitPedSql := vaSitPedSql + ',1';
       end;
    if ChAbertoParcial.Checked = true then
       begin
          if vaSitPedSql = '' then
             vaSitPedSql := '2'
          else
             vaSitPedSql := vaSitPedSql + ',2';
       end;
    if ChSuspenso.Checked = true then
       begin
          if vaSitPedSql = '' then
             vaSitPedSql := '3'
          else
             vaSitPedSql := vaSitPedSql + ',3';
       end;
    if ChLiquidado.Checked = true then
       begin
          if vaSitPedSql = '' then
             vaSitPedSql := '4'
          else
             vaSitPedSql := vaSitPedSql + ',4';
       end;
    if ChCancelado.Checked = true then
       begin
          if vaSitPedSql = '' then
             vaSitPedSql := '5'
          else
             vaSitPedSql := vaSitPedSql + ',5';
       end;
    if ChNaoFechado.Checked = true then
       begin
          if vaSitPedSql = '' then
             vaSitPedSql := '9'
          else
             vaSitPedSql := vaSitPedSql + ',9';
       end;


   {************************************************
              calcula data de dias em aberto
   *************************************************}
    if trim(EdDiasAberto.Text) <> '' then
       begin
         vdDatAbeSql := Date - StrToInt(trim(EdDiasAberto.Text));
       end
    else
       begin
         vaDatAbe := '01/01/1990';
         vdDatAbeSql := StrToDate(vaDatAbe);
       end;


  {*****************************************************
               valida campos em branco
   *****************************************************}

   if trim(EdCodCli.Text) = '' then
      vaCodCliSql := '';
   if trim(EdCodRep.Text) = '' then
      vaCodRepSql := '';
   if trim(EdCodFil.Text) = '' then
      vaCodFilSql := '';
   if trim(EdCidCli.Text) = '' then
      vaCidCliSql := '';
   if trim(EdPreCar.Text) = '' then
      vaPreCarSql := '';
   if trim(EdNumAne.Text) = '' then
      vaNumAneSql := '';
   if trim(EdCorTec.Text) = '' then
      vaCorTecSql := '';



  {*********************************************************
                        valida data
  ***********************************************************}
        if EdDatIni.Date = 0 then
           begin
           vaDatIni := '01/01/1990';
           vdDatIniSql := StrToDate(vaDatIni);
           end
        else
           begin
           vdDatIniSql := EdDatIni.Date;
           end;

       if EdDatFim.Date = 0 then
          begin
          vaDatFim := '31/12/2020';
           vdDatFimSql := StrToDate(vaDatFim);
          end
       else
          begin
           vdDatFimSql := EdDatFim.Date;
          end;

    {**************************************************
       preenxe a variavel com a ordem para a consulta
    ***************************************************}
  vaOrdemSql := '';
  for I := 0 to EdOrdem.Count - 1 do
     begin//1
     if RbAsc.Checked = true then
        begin//8
          if EdOrdem.Items.Strings[I] = 'Pedido' then
             begin//2
                if vaOrdemSql = '' then
                   vaOrdemSql := 'e120ped.numped asc'
                else
                   vaOrdemSql := vaOrdemSql + ',e120ped.numped asc';
             end//2
          else
          if EdOrdem.Items.Strings[I] = 'Cliente' then
             begin//3
                if vaOrdemSql = '' then
                   vaOrdemSql := 'e120ped.codcli asc'
                else
                   vaOrdemSql := vaOrdemSql + ',e120ped.codcli asc';
             end//3
          else
          if EdOrdem.Items.Strings[I] = 'Data Emissão' then
             begin//4
                if vaOrdemSql = '' then
                   vaOrdemSql := 'e120ped.datemi asc'
                else
                 vaOrdemSql := vaOrdemSql + ',e120ped.datemi asc';
             end//4
          else
          if EdOrdem.Items.Strings[I] = 'Representante' then
             begin//5
                if vaOrdemSql = '' then
                   vaOrdemSql := 'e120ped.codrep asc'
                else
                   vaOrdemSql := vaOrdemSql + ',e120ped.codrep asc';
             end//5
          else
          if EdOrdem.Items.Strings[I] = 'Situação' then
             begin//6
                if vaOrdemSql = '' then
                   vaOrdemSql := 'e120ped.sitped asc'
                else
                   vaOrdemSql := vaOrdemSql + ',e120ped.sitped asc';
             end//6
          else
          if EdOrdem.Items.Strings[I] = 'Filial' then
             begin//7
                if vaOrdemSql = '' then
                   vaOrdemSql := 'e120ped.codfil asc'
                else
                   vaOrdemSql := vaOrdemSql + ',e120ped.codfil asc';
             end;//7
        end//8
     else
        begin//9
           if EdOrdem.Items.Strings[I] = 'Pedido' then
             begin//10
                if vaOrdemSql = '' then
                   vaOrdemSql := 'e120ped.numped desc'
                else
                   vaOrdemSql := vaOrdemSql + ',e120ped.numped desc';
             end//10
          else
          if EdOrdem.Items.Strings[I] = 'Cliente' then
             begin//11
                if vaOrdemSql = '' then
                   vaOrdemSql := 'e120ped.codcli desc'
                else
                   vaOrdemSql := vaOrdemSql + ',e120ped.codcli desc';
             end//11
          else
          if EdOrdem.Items.Strings[I] = 'Data Emissão' then
             begin//12
                if vaOrdemSql = '' then
                   vaOrdemSql := 'e120ped.datemi desc'
                else
                 vaOrdemSql := vaOrdemSql + ',e120ped.datemi desc';
             end//12
          else
          if EdOrdem.Items.Strings[I] = 'Representante' then
             begin//13
                if vaOrdemSql = '' then
                   vaOrdemSql := 'e120ped.codrep desc'
                else
                   vaOrdemSql := vaOrdemSql + ',e120ped.codrep desc';
             end//13
          else
          if EdOrdem.Items.Strings[I] = 'Situação' then
             begin//14
                if vaOrdemSql = '' then
                   vaOrdemSql := 'e120ped.sitped desc'
                else
                   vaOrdemSql := vaOrdemSql + ',e120ped.sitped desc';
             end//14
          else
          if EdOrdem.Items.Strings[I] = 'Filial' then
             begin//15
                if vaOrdemSql = '' then
                   vaOrdemSql := 'e120ped.codfil desc'
                else
                   vaOrdemSql := vaOrdemSql + ',e120ped.codfil desc';
             end;//15
        end;//9
     end;//1



     {*********************************************************
                    executa o sql da consulta
     **********************************************************}
     Conse120ped.Close;
     Conse120ped.SQL.Clear;
     Conse120ped.SQL.Add('select e120ped.codemp,e120ped.codfil,e120ped.numped,e120ped.sitped,');
     Conse120ped.SQL.Add('e120ped.datemi,e120ped.codcli,e120ped.codrep,e120ped.vlrliq,e120ped.vlrori,');
     Conse120ped.SQL.Add('e120ped.usuger,r999usu.nomusu,');
     Conse120ped.SQL.Add('e085cli.nomcli,e085cli.apecli,e085cli.cidcli,e085cli.sigufs,');
     Conse120ped.SQL.Add('e090rep.nomrep,e090rep.aperep');
     Conse120ped.SQL.Add(' from e120ped,e085cli,r999usu,e090rep');
     Conse120ped.SQL.Add(' where');
     Conse120ped.SQL.Add(' e085cli.codcli = e120ped.codcli and');//compara chave
     Conse120ped.SQL.Add(' e090rep.codrep = e120ped.codrep and');//compara chave
     Conse120ped.SQL.Add(' r999usu.codusu = e120ped.usuger');//compara chave

     ConsCalculos.Close;
     ConsCalculos.SQL.Clear;
     ConsCalculos.SQL.Add('select count(distinct(e120ipd.numped)) as qtdped,sum(e120ipd.vlrbru) vlrbru,');
     ConsCalculos.SQL.Add('sum(e120ipd.vlrliq) as vlrliq');
     ConsCalculos.SQL.Add(' from e120ipd,e120ped,e085cli');
     ConsCalculos.SQL.Add(' where');
     ConsCalculos.SQL.Add(' e120ped.codemp = e120ipd.codemp and');
     ConsCalculos.SQL.Add(' e120ped.codfil = e120ipd.codfil and');
     ConsCalculos.SQL.Add(' e120ped.numped = e120ipd.numped and');
     ConsCalculos.SQL.Add(' e085cli.codcli = e120ped.codcli');

     dm2.ConsDistintaProdutos.Close;
     dm2.ConsDistintaProdutos.SQL.Clear;
     dm2.ConsDistintaProdutos.SQL.Add('select distinct(e120ipd.codpro),e120ipd.codder,');
     dm2.ConsDistintaProdutos.SQL.Add(' e075pro.despro,e075der.desder,e075der.volder,');
     dm2.ConsDistintaProdutos.SQL.Add(' sum(e120ipd.qtdabe) as QtdAbe,');
     dm2.ConsDistintaProdutos.SQL.Add(' sum(e120ipd.qtdped) as QtdPed,sum(e120ipd.qtdcan) as Qtdcan,sum(e120ipd.qtdfat) as Qtdfat');
     dm2.ConsDistintaProdutos.SQL.Add(' from e120ipd,e120ped,e085cli,e075pro,e075der');
     dm2.ConsDistintaProdutos.SQL.Add(' where');
     dm2.ConsDistintaProdutos.SQL.Add(' e120ped.codemp = e120ipd.codemp and');
     dm2.ConsDistintaProdutos.SQL.Add(' e120ped.codfil = e120ipd.codfil and');
     dm2.ConsDistintaProdutos.SQL.Add(' e120ped.numped = e120ipd.numped and');
     dm2.ConsDistintaProdutos.SQL.Add(' e085cli.codcli = e120ped.codcli and');
     dm2.ConsDistintaProdutos.SQL.Add(' e075pro.codemp = e120ipd.codemp and');
     dm2.ConsDistintaProdutos.SQL.Add(' e075pro.codpro = e120ipd.codpro and');
     dm2.ConsDistintaProdutos.SQL.Add(' e075der.codemp = e120ipd.codemp and');
     dm2.ConsDistintaProdutos.SQL.Add(' e075der.codpro = e120ipd.codpro and');
     dm2.ConsDistintaProdutos.SQL.Add(' e075der.codder = e120ipd.codder');


     if vaCodCliSql <> '' then //adiciona condiçao por cliente
        begin
         vaCodCli := ' and e120ped.codcli in ('+vaCodCliSql+')';
         Conse120ped.SQL.Add(vaCodCli);
         ConsCalculos.SQL.Add(vaCodCli);
         dm2.ConsDistintaProdutos.SQL.Add(vaCodCli);
        end;

     if vaCodRepSql <> '' then //adiciona condiçao por representante
        begin
         vaCodRep := ' and e120ped.codrep in ('+vaCodRepSql+')';
         Conse120ped.SQL.Add(vaCodRep);
         ConsCalculos.SQL.Add(vaCodRep);
         dm2.ConsDistintaProdutos.SQL.Add(vaCodRep);
        end;

     if vaCodFilSql <> '' then //adiciona condiçao por filial
        begin
         vaCodFil := ' and e120ped.codfil in ('+vaCodFilSql+')';
         Conse120ped.SQL.Add(vaCodFil);
         ConsCalculos.SQL.Add(vaCodFil);
         dm2.ConsDistintaProdutos.SQL.Add(vaCodFil);
        end;

     {********************************************************************
       se tiver alguma condição pré definida marcada ignora o
       restante dos filtros e olha só para cliente,representante e filial
     **********************************************************************}
    if (ChComPreCar.Checked) or (ChSemPreCar.Checked) or (ChComTecTrans.Checked) or
       (ChSemTecTrans.Checked)  or (trim(EdDiasAberto.Text) <> '') then
       begin//1

           Conse120ped.SQL.Add(vaCondPreDefSql);
           ConsCalculos.SQL.Add(vaCondPreDefSql);
           dm2.ConsDistintaProdutos.SQL.Add(vaCondPreDefSql);

           if trim(EdDiasAberto.Text) <> '' then
              begin
                 ConsE120ped.Parameters.ParamByName('datini').Value := vdDatAbeSql;
                 ConsCalculos.Parameters.ParamByName('datini').Value := vdDatAbeSql;
                 dm2.ConsDistintaProdutos.Parameters.ParamByName('datini').Value := vdDatAbeSql;
              end;
       end//1
    else
       begin//2
          if vaSitPedSql <> '' then//adiciona condiçao por situaçao do pedido
             begin
               vaSitPed := ' and e120ped.sitped in ('+vaSitPedSql+')';
               Conse120ped.SQL.Add(vaSitPed);
               ConsCalculos.SQL.Add(vaSitPed);
               dm2.ConsDistintaProdutos.SQL.Add(vaSitPed);
             end;

          if (EdDatIni.Date <> 0) or (EdDatFim.Date <> 0) then //adiciona a condiçao por data de emissao
              begin
               Conse120ped.SQL.Add(' and e120ped.datemi between :datini and :datfim');
               Conse120ped.Parameters.ParamByName('datini').Value := vdDatIniSql;
               Conse120ped.Parameters.ParamByName('datfim').Value := vdDatFimSql;

               dm2.ConsDistintaProdutos.SQL.Add(' and e120ped.datemi between :datini and :datfim');
               dm2.ConsDistintaProdutos.Parameters.ParamByName('datini').Value := vdDatIniSql;
               dm2.ConsDistintaProdutos.Parameters.ParamByName('datfim').Value := vdDatFimSql;

               ConsCalculos.SQL.Add(' and e120ped.datemi between :datini and :datfim');
               ConsCalculos.Parameters.ParamByName('datini').Value := vdDatIniSql;
               ConsCalculos.Parameters.ParamByName('datfim').Value := vdDatFimSql;
              end;

          if vaCidCliSql <> '' then //adiciona a condiçao pela cidade do cliente
             begin
                //vaCidCli := ' and e085cli.cidcli like %'+vaCidCliSql+'%';
                Conse120ped.SQL.Add('and e085cli.cidcli LIKE'+QuotedStr('%'+vaCidCliSql+'%'));
                ConsCalculos.SQL.Add('and e085cli.cidcli LIKE'+QuotedStr('%'+vaCidCliSql+'%'));
                dm2.ConsDistintaProdutos.SQL.Add('and e085cli.cidcli LIKE'+QuotedStr('%'+vaCidCliSql+'%'));
             end;

          if vaPreCarSql <> '' then //adiciona a condicao pela pre-carga
             begin
                vaPreCar := ' and e120ped.usu_precar in ('+vaPreCarSql+')';
                Conse120ped.SQL.Add(vaPreCar);
                ConsCalculos.SQL.Add(vaPreCar);
                dm2.ConsDistintaProdutos.SQL.Add(vaPreCar);
             end;

          if vaPedCarSql <> '' then //adiciona a condição de carga
             begin
               vaPedCar := ' and e120ped.numped in ('+vaPedCarSql+')';
              Conse120ped.SQL.Add(vaPedCar);
              ConsCalculos.SQL.Add(vaPedCar);
              dm2.ConsDistintaProdutos.SQL.Add(vaPedCar);
             end;
       end;//2

       {******************************************************
            se o campo da cor de tecido nao estiver vazio
       *******************************************************}
        if (Trim(EdCorTec.Text) <> '') or (Trim(EdCodPro.Text) <> '') or (Trim(EdCodDer.Text) <> '') then
           begin//100
             ConsPedTec.Close;
             ConsPedTec.SQL.Clear;
             ConsPedTec.SQL.Add('select distinct(usu_t120ipd.usu_numped)');
             ConsPedTec.SQL.Add('from usu_t120ipd,e120ped');
             ConsPedTec.SQL.Add(' where');
             ConsPedTec.SQL.Add(' e120ped.codemp = usu_t120ipd.usu_codemp and');
             ConsPedTec.SQL.Add(' e120ped.codfil = usu_t120ipd.usu_codfil and');
             ConsPedTec.SQL.Add(' e120ped.numped = usu_t120ipd.usu_numped');
             if trim(EdCodPro.Text) <> '' then
                begin
                  ConsPedTec.SQL.Add(' and usu_t120ipd.usu_codpro = :codpro');
                  ConsPedTec.Parameters.ParamByName('codpro').Value := trim(EdCodPro.Text);
                end;
             if trim(EdCodDer.Text) <> '' then
                begin
                   ConsPedTec.SQL.Add(' and usu_t120ipd.usu_codder = :codder');
                   ConsPedTec.Parameters.ParamByName('codder').Value := trim(EdCodDer.Text);
                end;
             if trim(EdCorTec.Text) <> '' then
                begin
                   ConsPedTec.SQL.Add('and((usu_t120ipd.usu_cor001 = :cor001) or (usu_t120ipd.usu_cor002 = :cor002))');
                   ConsPedTec.Parameters.ParamByName('cor001').Value := vaCorTecSql;
                   ConsPedTec.Parameters.ParamByName('cor002').Value := vaCorTecSql;
                end;



             if vaCodCliSql <> '' then //adiciona condiçao por cliente
                begin
                  ConsPedTec.SQL.Add(vaCodCli);
             end;

             if vaCodRepSql <> '' then //adiciona condiçao por representante
                begin
                  ConsPedTec.SQL.Add(vaCodRep);
                end;

             if vaCodFilSql <> '' then //adiciona condiçao por filial
                begin
                   ConsPedTec.SQL.Add(vaCodFil);
                end;

             {**************************************************************
                adiciona a situacao para a consulta dos pedidos pela cor
             ***************************************************************}
             vaSitPedCorTec := '';
             if vaSitPedSql <> '' then
                begin//101
                  vaSitPedCorTec := ' and e120ped.sitped in ('+vaSitPedSql;
                  if vaCondPreDefSql <> '' then
                     begin//102
                      if (not ChAbertoTotal.Checked) and (not ChAbertoParcial.Checked)  then
                         begin
                            vaSitPedCorTec := vaSitPedCorTec + ',1,2,3)';
                         end
                      else
                         begin
                            vaSitPedCorTec := vaSitPedCorTec +')';
                         end;

                        if ChComPreCar.Checked = true then
                           begin//103
                               vaSitPedCorTec := vaSitPedCorTec + ' and e120ped.usu_precar <> 0';
                           end;//103
                        if ChSemPreCar.Checked = true then
                           begin//104
                              vaSitPedCorTec := vaSitPedCorTec + ' and e120ped.usu_precar = 0';
                           end;//104
                        if ChComTecTrans.Checked = true then
                           begin//105
                               vaSitPedCorTec := vaSitPedCorTec + ' and e120ped.usu_pedtra = ''S''';
                           end;//105
                        if ChSemTecTrans.Checked = true then
                           begin//106
                               vaSitPedCorTec := vaSitPedCorTec + ' and e120ped.usu_pedtra = ''N''';
                           end;//106
                        if trim(EdDiasAberto.Text) <> '' then
                           begin//
                              vaSitPedCorTec := vaSitPedCorTec + ' and e120ped.datemi <= :datini';
                           end;//
                     end//102
                  else
                     begin//122
                        vaSitPedCorTec := vaSitPedCorTec + ')';
                     end;//122
                end//101
             else
                begin//107
                  vaSitPedCorTec := vaCondPreDefSql;
                end;//107

             if vaSitPedCorTec <> '' then
                begin//108
                     ConsPedTec.SQL.Add(vaSitPedCorTec);
                end;//108  termina aqui o tratamento para a situação do pedido  --------------------------

             if vaPreCarSql <> '' then //adiciona a condicao pela pre-carga
             begin
                vaPreCar := ' and e120ped.usu_precar in ('+vaPreCarSql+')';
                ConsPedTec.SQL.Add(vaPreCar);
             end;

             if ((EdDatIni.Date <> 0) or (EdDatFim.Date <> 0)) and (trim(EdDiasAberto.Text) = '') then //adiciona a condiçao por data de emissao
              begin
                 ConsPedTec.SQL.Add(' and e120ped.datemi between :datini and :datfim');
                ConsPedTec.Parameters.ParamByName('datini').Value := vdDatIniSql;
                ConsPedTec.Parameters.ParamByName('datfim').Value := vdDatFimSql;
              end
             else
               if trim(EdDiasAberto.Text) <> '' then
                  begin
                     ConsPedTec.Parameters.ParamByName('datini').Value := vdDatAbeSql;
                  end;


             ConsPedTec.Open;
             vaNumPedCorTec := '';
             ConsPedTec.First;
             while not ConsPedTec.Eof do
                begin
                  if vaNumPedCorTec = '' then
                     vaNumPedCorTec := IntToStr(ConsPedTecUSU_NUMPED.Value)
                  else
                     vaNumPedCorTec := vaNumPedCorTec +','+ IntToStr(ConsPedTecUSU_NUMPED.Value);

                  ConsPedTec.Next;
                end;
            vaCondNumPedCorTec := '';
           if vaNumPedCorTec <> '' then
              vaCondNumPedCorTec := ' and e120ped.numped in ('+vaNumPedCorTec+')'
           else
              vaCondNumPedCorTec := ' and e120ped.numped  = 99999999';


             Conse120ped.Close;
             Conse120ped.SQL.Clear;
             Conse120ped.SQL.Add('select e120ped.codemp,e120ped.codfil,e120ped.numped,e120ped.sitped,');
             Conse120ped.SQL.Add('e120ped.datemi,e120ped.codcli,e120ped.codrep,e120ped.vlrliq,e120ped.vlrori,');
             Conse120ped.SQL.Add('e120ped.usuger,r999usu.nomusu,');
             Conse120ped.SQL.Add('e085cli.nomcli,e085cli.apecli,e085cli.cidcli,e085cli.sigufs,');
             Conse120ped.SQL.Add('e090rep.nomrep,e090rep.aperep');
             Conse120ped.SQL.Add(' from e120ped,e085cli,r999usu,e090rep');
             Conse120ped.SQL.Add(' where');
             Conse120ped.SQL.Add(' e085cli.codcli = e120ped.codcli and');//compara chave
             Conse120ped.SQL.Add(' e090rep.codrep = e120ped.codrep and');//compara chave
             Conse120ped.SQL.Add(' r999usu.codusu = e120ped.usuger');//compara chave

             ConsCalculos.Close;
             ConsCalculos.SQL.Clear;
             ConsCalculos.SQL.Add('select count(distinct(e120ipd.numped)) as qtdped,sum(e120ipd.vlrbru) vlrbru,');
             ConsCalculos.SQL.Add('sum(e120ipd.vlrliq) as vlrliq');
             ConsCalculos.SQL.Add(' from e120ipd,e120ped,e085cli');
             ConsCalculos.SQL.Add(' where');
             ConsCalculos.SQL.Add(' e120ped.codemp = e120ipd.codemp and');
             ConsCalculos.SQL.Add(' e120ped.codfil = e120ipd.codfil and');
             ConsCalculos.SQL.Add(' e120ped.numped = e120ipd.numped and');
             ConsCalculos.SQL.Add(' e085cli.codcli = e120ped.codcli');


             dm2.ConsDistintaProdutos.Close;
             dm2.ConsDistintaProdutos.SQL.Clear;
             dm2.ConsDistintaProdutos.SQL.Add('select distinct(e120ipd.codpro),e120ipd.codder,');
             dm2.ConsDistintaProdutos.SQL.Add(' e075pro.despro,e075der.desder,e075der.volder,');
             dm2.ConsDistintaProdutos.SQL.Add(' sum(e120ipd.qtdabe) as QtdAbe,');
             dm2.ConsDistintaProdutos.SQL.Add(' sum(e120ipd.qtdped) as QtdPed,sum(e120ipd.qtdcan) as Qtdcan,sum(e120ipd.qtdfat) as Qtdfat');
             dm2.ConsDistintaProdutos.SQL.Add(' from e120ipd,e120ped,e085cli,e075pro,e075der');
             dm2.ConsDistintaProdutos.SQL.Add(' where');
             dm2.ConsDistintaProdutos.SQL.Add(' e120ped.codemp = e120ipd.codemp and');
             dm2.ConsDistintaProdutos.SQL.Add(' e120ped.codfil = e120ipd.codfil and');
             dm2.ConsDistintaProdutos.SQL.Add(' e120ped.numped = e120ipd.numped and');
             dm2.ConsDistintaProdutos.SQL.Add(' e085cli.codcli = e120ped.codcli and');
             dm2.ConsDistintaProdutos.SQL.Add(' e075pro.codemp = e120ipd.codemp and');
             dm2.ConsDistintaProdutos.SQL.Add(' e075pro.codpro = e120ipd.codpro and');
             dm2.ConsDistintaProdutos.SQL.Add(' e075der.codemp = e120ipd.codemp and');
             dm2.ConsDistintaProdutos.SQL.Add(' e075der.codpro = e120ipd.codpro and');
             dm2.ConsDistintaProdutos.SQL.Add(' e075der.codder = e120ipd.codder');


             Conse120ped.SQL.Add(vaCondNumPedCorTec);
             ConsCalculos.SQL.Add(vaCondNumPedCorTec);
             dm2.ConsDistintaProdutos.SQL.Add(vaCondNumPedCorTec);

             if vaOrdemSql <> '' then //adiciona a ordenação
                begin
                  vaOrdem := ' order by '+vaOrdemSql;
                  Conse120ped.SQL.Add(vaOrdem);
                end;

             dm2.ConsDistintaProdutos.SQL.Add(' group by e120ipd.codpro,e120ipd.codder,e075pro.despro,e075der.desder,e075der.volder');
             dm2.ConsDistintaProdutos.SQL.Add(' order by e120ipd.codpro,e120ipd.codder');
             Conse120ped.Open;
             ConsCalculos.Open;
             dm2.ConsDistintaProdutos.Open
           end//100  fim da condiçao se o campo da cor do tecido estiver em braco
        else
          begin///111

            if vaOrdemSql <> '' then //adiciona a ordenação
               begin

                 vaOrdem := ' order by '+vaOrdemSql;
                 Conse120ped.SQL.Add(vaOrdem);
               end;

            dm2.ConsDistintaProdutos.SQL.Add(' group by e120ipd.codpro,e120ipd.codder,e075pro.despro,e075der.desder,e075der.volder');
            dm2.ConsDistintaProdutos.SQL.Add(' order by e120ipd.codpro,e120ipd.codder');
            Conse120ped.Open;
            ConsCalculos.Open;
            dm2.ConsDistintaProdutos.Open;

          end;//111

        {*******************************************************
                          faz o calculo do m³
        ********************************************************}
        vnVolDer := 0;
        dm2.ConsDistintaProdutos.First;
        while not dm2.ConsDistintaProdutos.Eof do
           begin
              Conse075der.Close;
              Conse075der.Parameters.ParamByName('codpro').Value := dm2.ConsDistintaProdutosCODPRO.Value;
              Conse075der.Parameters.ParamByName('codder').Value := dm2.ConsDistintaProdutosCODDER.Value;
              Conse075der.Open;
              vnVolDer := vnVolDer + Conse075derVOLDER.AsCurrency *  dm2.ConsDistintaProdutosQTDABE.AsCurrency;

              dm2.ConsDistintaProdutos.Next;
           end;
        dm2.ConsDistintaProdutos.First;
        DBGrid.DataSource := DsReserva;
        Screen.Cursor := Cursor;


        EdQtdPedidos.Value := ConsCalculosQTDPED.AsInteger;
        EdVlrBru.Value := ConsCalculosVLRBRU.AsCurrency;
        EdVlrLiq.Value := ConsCalculosVLRLIQ.AsCurrency;
        EdVolDer.Value := vnVolDer;

    DBGrid.DataSource := DsConsE120ped;
end;

procedure TFConsPedido.BNumAneClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select codemp,codfil,numane,abgped from e135ane';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'numane';
    FConsGeralNfEnt.vnColuna := 2;
    FConsGeralNfEnt.vaTela := 'FConsPedido';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdNumAne;
end;

procedure TFConsPedido.BPreCarClick(Sender: TObject);
begin
   FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select usu_precar,usu_datger,usu_datlib from usu_tprecar';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'precar';
    FConsGeralNfEnt.vnColuna := 0;
    FConsGeralNfEnt.vaTela := 'FConsPedido';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdPreCar;
end;

procedure TFConsPedido.BProdutosConsultaClick(Sender: TObject);
begin
if not ConsE120ped.IsEmpty then
   begin
      FProdutosConsPedidos := TFProdutosConsPedidos.Create(Self);
      FProdutosConsPedidos.ShowModal;
      FreeAndNil(FProdutosConsPedidos);
   end;
end;

procedure TFConsPedido.ConsE120pedCalcFields(DataSet: TDataSet);
begin
    if ConsE120pedSITPED.Value = 1 then
       ConsE120pedDsCitPed.Value := 'Aberto Total'
    else
    if ConsE120pedSITPED.Value = 2 then
       ConsE120pedDsCitPed.Value := 'Aberto Parcial'
    else
    if ConsE120pedSITPED.Value = 3 then
       ConsE120pedDsCitPed.Value := 'Suspenso'
    else
    if ConsE120pedSITPED.Value = 4 then
       ConsE120pedDsCitPed.Value := 'Líquidado'
    else
    if ConsE120pedSITPED.Value = 5 then
       ConsE120pedDsCitPed.Value := 'Cancelado'
    else
    if ConsE120pedSITPED.Value = 9 then
       ConsE120pedDsCitPed.Value := 'Não Fechado';



    
    

end;

procedure TFConsPedido.DBGridDblClick(Sender: TObject);
begin
if not ConsE120ped.IsEmpty then
begin
 if vaTelaOrigem = 'PRINCIPAL' then
    begin
       FPedido := TFPedido.Create(Self);
       FPedido.EdNumPed.Text := IntToStr(ConsE120pedNUMPED.Value);
       FPedido.ActiveControl := FPedido.EdNumPed;
       FPedido.ShowModal;
    Close;
    end
 else
   if vaTelaOrigem = 'PEDIDO' then
      begin
        FPedido.EdNumPed.Text := IntToStr(ConsE120pedNUMPED.Value);
        FPedido.ActiveControl := FPedido.EdNumPed;
        Close;
      end;
end;
end;

procedure TFConsPedido.DBGridEnter(Sender: TObject);
begin
   KeyPreview := false;
end;

procedure TFConsPedido.DBGridExit(Sender: TObject);
begin
    KeyPreview := true;
end;

procedure TFConsPedido.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
      begin
        DBGridDblClick(Sender);
      end;
end;

procedure TFConsPedido.BCodFilClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select codemp,codfil,nomfil,sigfil from e070fil';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'CodFil';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FConsPedido';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodFil;
end;

procedure TFConsPedido.BCodProClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select codpro,despro,codfam from e075pro where codori = 01';
    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodPro';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FConsPedido';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodPro;
end;

procedure TFConsPedido.BCidCliClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select distinct(cidcli),sigufs from e085cli';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'CidCli';
    FConsGeralNfEnt.vnColuna := 0;
    FConsGeralNfEnt.vaTela := 'FConsPedido';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCidCli;
end;

procedure TFConsPedido.EdCidCliExit(Sender: TObject);
begin
    if EdCidCli.Text <> '' then
       begin
         vaCidCliSql := EdCidCli.Text;
       end;
end;

procedure TFConsPedido.EdCidCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f3 then
     begin
       BCidCli.Click;
     end;
end;

procedure TFConsPedido.EdCodCliExit(Sender: TObject);
var
    vaTexto  : string;
    T        : TReplaceFlags;
    vnCont   : Integer;
    vaCodCli : string;
    vaNumErr : string;

begin
  vaCodCliSql := '';//limpa a variavel que vai ser usada no sql
  vaTexto := StringReplace(trim(EdCodCli.Text), ' ', '', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,,,', ',', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,,', ',', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,', ',', [rfReplaceAll,rfIgnoreCase]);
  EdCodCli.Text := vaTexto;
  vaCodCli := '';
  vaNumErr := '';
  vnCont := 1;

  while vnCont <= Length(vaTexto) do
     begin//1
     //valia se nao tem ',' antes dos numeros
      if (vnCont = 1) and (vaTexto[vnCont] = ',') then
         begin//9
           vaTexto[vnCont] := ' ';
           vaTexto := StringReplace(trim(vaTexto), ' ', '', [rfReplaceAll,rfIgnoreCase]);

           EdCodCli.Text := vaTexto;
         end;//9

       if vaTexto[vnCont] = ',' then
          begin//2
            ValidaCliente.Close;
            ValidaCliente.Parameters.ParamByName('codcli').Value := StrToInt(vaCodCli);
            ValidaCliente.Open;
            if ValidaCliente.IsEmpty then
               begin//3
                  if vaNumErr = '' then
                       vaNumErr := vaCodCli
                  else
                       vaNumErr := vaNumErr + ',' + vaCodCli;

                     vaCodCli := '';
               end//3
            else
               begin//4
                  if vaCodCliSql = '' then
                     vaCodCliSql := vaCodCli
                  else
                     vaCodCliSql := vaCodCliSql + ','+ vaCodCli;

                  vaCodCli := '';
               end;//4
          end//2
       else
          begin//5
            vaCodCli := vaCodCli + vaTexto[vnCont];

            //valida se nao tem a virgula no final de todos os numeros
            if ((vnCont = Length(vaTexto)) and (vaTexto[vnCont] <> ','))then
              begin
                vaTexto := vaTexto + ',';
                EdCodCli.Text := vaTexto;
              end;
          end;//5
        vnCont := vnCont + 1;
     end;//1

     if vaNumErr <> '' then
        begin//8
           MessageDlg('Cliente(s): '+vaNumErr+' não encontrado(s)',mtWarning,[mbok],0);
           ActiveControl := EdCodCli;
        end;//8


end;

procedure TFConsPedido.EdCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f3 then
     begin
       BCodCli.Click;
     end;
end;

procedure TFConsPedido.EdCodCliKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFConsPedido.EdCodDerExit(Sender: TObject);
begin
if trim(EdCodDer.Text) <> '' then
       begin
         ValidaProduto.Close;
         ValidaProduto.SQL.Clear;
         ValidaProduto.SQL.Add('select codpro,codder from e075der where codder = :codder');
         if trim(EdCodPro.Text) <> '' then
            begin
               ValidaProduto.SQL.Add(' and codpro = :codpro');
               ValidaProduto.Parameters.ParamByName('codpro').Value := Trim(EdCodPro.Text);
            end;
         ValidaProduto.Parameters.ParamByName('codder').Value := Trim(EdCodDer.Text);
         ValidaProduto.Open;

         if (ValidaProduto.IsEmpty) and (trim(EdCodPro.Text) <> '') then
             begin
                MessageDlg('Combinação de produto e derivação não encontrada!',mtWarning,[mbok],0);
                ActiveControl := EdCodDer;
             end
       else
         if (ValidaProduto.IsEmpty) and (trim(EdCodPro.Text) = '') then
             begin
                MessageDlg('Derivação não encontrada!',mtWarning,[mbok],0);
                ActiveControl := EdCodDer;
             end;
       end;
end;

procedure TFConsPedido.EdCodDerKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFConsPedido.EdCodFilExit(Sender: TObject);
var
    vaTexto  : string;
    T        : TReplaceFlags;
    vnCont   : Integer;
    vaCodFil : string;
    vaCodErr : string;

begin
  vaCodFilSql := '';//limpa a variavel que vai ser usada no sql
  vaTexto := StringReplace(trim(EdCodFil.Text), ' ', '', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,,,', ',', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,,', ',', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,', ',', [rfReplaceAll,rfIgnoreCase]);
  EdCodFil.Text := vaTexto;
  vaCodFil := '';
  vaCodErr := '';
  vnCont := 1;

  while vnCont <= Length(vaTexto) do
     begin//1
     //valia se nao tem ',' antes dos numeros
      if (vnCont = 1) and (vaTexto[vnCont] = ',') then
         begin//9
           vaTexto[vnCont] := ' ';
           vaTexto := StringReplace(trim(vaTexto), ' ', '', [rfReplaceAll,rfIgnoreCase]);

           EdCodFil.Text := vaTexto;
         end;//9

       if vaTexto[vnCont] = ',' then
          begin//2
            ValidaFilial.Close;
            ValidaFilial.Parameters.ParamByName('codfil').Value := StrToInt(vaCodFil);
            ValidaFilial.Open;
            if ValidaFilial.IsEmpty then
               begin//3
                  if vaCodErr = '' then
                       vaCodErr := vaCodFil
                  else
                       vaCodErr := vaCodErr + ',' + vaCodFil;

                     vaCodFil := '';
               end//3
            else
               begin//4
                  if vaCodFilSql = '' then
                     vaCodFilSql := vaCodFil
                  else
                     vaCodFilSql := vaCodFilSql + ','+ vaCodFil;

                  vaCodFil := '';
               end;//4
          end//2
       else
          begin//5
            vaCodFil := vaCodFil + vaTexto[vnCont];

            //valida se nao tem a virgula no final de todos os numeros
            if ((vnCont = Length(vaTexto)) and (vaTexto[vnCont] <> ','))then
              begin
                vaTexto := vaTexto + ',';
                EdCodFil.Text := vaTexto;
              end;
          end;//5
        vnCont := vnCont + 1;
     end;//1

     if vaCodErr <> '' then
        begin//8
           MessageDlg('Filial(s): '+vaCodErr+' não encontrado(s)',mtWarning,[mbok],0);
           ActiveControl := EdCodFil;
        end;//8

end;

procedure TFConsPedido.EdCodFilKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f3 then
     begin
       BCodFil.Click;
     end;
end;

procedure TFConsPedido.EdCodFilKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
    key:=#0;
  end;
end;


procedure TFConsPedido.EdCodProExit(Sender: TObject);
begin
    if trim(EdCodPro.Text) <> '' then
       begin
         ValidaProduto.Close;
         ValidaProduto.SQL.Clear;
         ValidaProduto.SQL.Add('select e075der.codpro,e075der.codder,e075pro.despro from e075der');
         ValidaProduto.SQL.Add(' inner join e075pro on e075pro.codpro = e075der.codpro');
         ValidaProduto.SQL.Add(' where e075pro.codpro = :codpro');
         ValidaProduto.SQL.Add(' and e075pro.codori = 01');
         ValidaProduto.Parameters.ParamByName('codpro').Value := Trim(EdCodPro.Text);
         ValidaProduto.Open;
         if ValidaProduto.IsEmpty then
             begin
                MessageDlg('Produto não encontrado!',mtWarning,[mbok],0);
                EdCodPro.Hint := '';
                ActiveControl := EdCodPro;
             end
         else
           begin
             EdCodPro.Hint := ValidaProdutoDESPRO.Value;
           end;
       end
    else
       begin
          EdCodPro.Hint := '';
       end;

end;

procedure TFConsPedido.EdCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f3 then
     begin
       BCodPro.Click;
     end;
end;

procedure TFConsPedido.EdCodProKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFConsPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFConsPedido.SpeedButton1Click(Sender: TObject);
begin
  EdOrdemOps.MoveSelection(EdOrdem);
end;

procedure TFConsPedido.SpeedButton2Click(Sender: TObject);
begin
   EdOrdem.MoveSelection(EdOrdemOps);
end;


end.
