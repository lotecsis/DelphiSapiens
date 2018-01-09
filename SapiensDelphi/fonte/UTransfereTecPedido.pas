unit UTransfereTecPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, Buttons, Mask, rxToolEdit,
  rxCurrEdit, Provider, DBClient, ImgList,math, DBCtrls{para usar o roundTo};

type
  TFTransfereTecPedido = class(TForm)
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    ConsCoresProdutos: TADOQuery;
    dsConsCoresProdutos: TDataSource;
    ConsCoresProdutosUSU_CODEMP: TIntegerField;
    ConsCoresProdutosUSU_CODFIL: TIntegerField;
    ConsCoresProdutosUSU_NUMPED: TIntegerField;
    ConsCoresProdutosUSU_SEQIPD: TIntegerField;
    ConsCoresProdutosUSU_QTDCOR: TIntegerField;
    ConsCoresProdutosUSU_TIPCMB: TIntegerField;
    ConsCoresProdutosUSU_COR001: TStringField;
    ConsCoresProdutosUSU_COR002: TStringField;
    ConsCoresProdutosUSU_SEQITE: TIntegerField;
    ConsCoresProdutosUSU_CODPRO: TStringField;
    ConsCoresProdutosUSU_CODDER: TStringField;
    ConsCoresProdutosUSU_TECTRA: TStringField;
    ConsCoresProdutosUSU_QTDABE: TIntegerField;
    ConsCoresProdutosUSU_QTDCAN: TIntegerField;
    ConsCoresProdutosUSU_NUMANE: TBCDField;
    ConsCoresProdutosUSU_PRECAR: TIntegerField;
    ConsCoresProdutosUSU_NUMCOM: TIntegerField;
    ConsCoresProdutosDESPRO: TStringField;
    edtNumPed: TCurrencyEdit;
    ClientCoresProdutos: TClientDataSet;
    ProvideConsCoresProdutos: TDataSetProvider;
    ClientCoresProdutosUSU_CODEMP: TIntegerField;
    ClientCoresProdutosUSU_CODFIL: TIntegerField;
    ClientCoresProdutosUSU_NUMPED: TIntegerField;
    ClientCoresProdutosUSU_SEQIPD: TIntegerField;
    ClientCoresProdutosUSU_QTDCOR: TIntegerField;
    ClientCoresProdutosUSU_TIPCMB: TIntegerField;
    ClientCoresProdutosUSU_COR001: TStringField;
    ClientCoresProdutosUSU_COR002: TStringField;
    ClientCoresProdutosUSU_SEQITE: TIntegerField;
    ClientCoresProdutosUSU_CODPRO: TStringField;
    ClientCoresProdutosUSU_CODDER: TStringField;
    ClientCoresProdutosUSU_TECTRA: TStringField;
    ClientCoresProdutosUSU_QTDABE: TIntegerField;
    ClientCoresProdutosUSU_QTDCAN: TIntegerField;
    ClientCoresProdutosUSU_NUMANE: TBCDField;
    ClientCoresProdutosUSU_PRECAR: TIntegerField;
    ClientCoresProdutosUSU_NUMCOM: TIntegerField;
    ClientCoresProdutosDESPRO: TStringField;
    btnTransferir: TBitBtn;
    ConsCoresProdutosImagem: TStringField;
    ClientCoresProdutosImagem: TStringField;
    ConsSaldos: TADOQuery;
    ConsSaldosCODPRO: TStringField;
    ConsSaldosCODDEP: TStringField;
    ConsSaldosQTDEST: TFMTBCDField;
    ConsSaldosUSU_SALRES: TBCDField;
    ConsSaldosUSU_SALFIL: TBCDField;
    ConsCoresProdutosUSU_CORUNI: TBCDField;
    ConsCoresProdutosUSU_CMP1BB: TBCDField;
    ConsCoresProdutosUSU_CMP1AE: TBCDField;
    ClientCoresProdutosUSU_CORUNI: TBCDField;
    ClientCoresProdutosUSU_CMP1BB: TBCDField;
    ClientCoresProdutosUSU_CMP1AE: TBCDField;
    CadUsu_TSalTec: TADOQuery;
    CadUsu_TSalTecUSU_CODPRO: TStringField;
    CadUsu_TSalTecUSU_SALRES: TBCDField;
    CadUsu_TSalTecUSU_SALFIL: TBCDField;
    CadUsu_T120Ipd: TADOQuery;
    CadUsu_T120IpdUSU_CODEMP: TIntegerField;
    CadUsu_T120IpdUSU_CODFIL: TIntegerField;
    CadUsu_T120IpdUSU_NUMPED: TIntegerField;
    CadUsu_T120IpdUSU_SEQIPD: TIntegerField;
    CadUsu_T120IpdUSU_QTDCOR: TIntegerField;
    CadUsu_T120IpdUSU_TIPCMB: TIntegerField;
    CadUsu_T120IpdUSU_COR001: TStringField;
    CadUsu_T120IpdUSU_COR002: TStringField;
    CadUsu_T120IpdUSU_SEQITE: TIntegerField;
    CadUsu_T120IpdUSU_CODPRO: TStringField;
    CadUsu_T120IpdUSU_CODDER: TStringField;
    CadUsu_T120IpdUSU_TECTRA: TStringField;
    CadUsu_T120IpdUSU_QTDABE: TIntegerField;
    CadUsu_T120IpdUSU_QTDCAN: TIntegerField;
    CadUsu_T120IpdUSU_NUMANE: TBCDField;
    CadUsu_T120IpdUSU_PRECAR: TIntegerField;
    CadUsu_T120IpdUSU_NUMCOM: TIntegerField;
    ImageList1: TImageList;
    dbgrd2: TDBGrid;
    ConsE120PedST: TADOQuery;
    ConsE120PedSTNUMPED: TIntegerField;
    ConsE120PedSTDATEMI: TDateTimeField;
    ConsE120PedSTCODCLI: TIntegerField;
    ConsE120PedSTNOMCLI: TStringField;
    ConsE120PedSTCIDCLI: TStringField;
    ConsE120PedSTSIGUFS: TStringField;
    dsConsE120PedST: TDataSource;
    CadE120Ped: TADOQuery;
    CadE120PedCODEMP: TIntegerField;
    CadE120PedCODFIL: TIntegerField;
    CadE120PedNUMPED: TIntegerField;
    CadE120PedTIPPED: TIntegerField;
    CadE120PedPRCPED: TIntegerField;
    CadE120PedTNSPRO: TStringField;
    CadE120PedTNSSER: TStringField;
    CadE120PedDATEMI: TDateTimeField;
    CadE120PedHOREMI: TIntegerField;
    CadE120PedDATPRV: TDateTimeField;
    CadE120PedHORPRV: TIntegerField;
    CadE120PedOBSPED: TStringField;
    CadE120PedCODCLI: TIntegerField;
    CadE120PedCATCLI: TIntegerField;
    CadE120PedQTDVPF: TIntegerField;
    CadE120PedQTDMFP: TIntegerField;
    CadE120PedINDAGR: TStringField;
    CadE120PedSEQENT: TIntegerField;
    CadE120PedSEQCOB: TIntegerField;
    CadE120PedSEQCTO: TIntegerField;
    CadE120PedPEDCLI: TStringField;
    CadE120PedCODROE: TStringField;
    CadE120PedSEQROE: TIntegerField;
    CadE120PedCODREP: TIntegerField;
    CadE120PedCODMOE: TStringField;
    CadE120PedCODMCP: TStringField;
    CadE120PedDATMFP: TDateTimeField;
    CadE120PedCOTMFP: TFMTBCDField;
    CadE120PedDATMOE: TDateTimeField;
    CadE120PedCOTMOE: TFMTBCDField;
    CadE120PedFECMOE: TStringField;
    CadE120PedCODFCR: TStringField;
    CadE120PedDATFCR: TDateTimeField;
    CadE120PedCODCPG: TStringField;
    CadE120PedPGTANT: TStringField;
    CadE120PedCODFPG: TIntegerField;
    CadE120PedQTDABE: TFMTBCDField;
    CadE120PedQTDAEN: TFMTBCDField;
    CadE120PedCODTRA: TIntegerField;
    CadE120PedCODRED: TIntegerField;
    CadE120PedCODVIA: TStringField;
    CadE120PedPLAVEI: TStringField;
    CadE120PedVLRFUM: TBCDField;
    CadE120PedQTDFRE: TFMTBCDField;
    CadE120PedFORFRE: TIntegerField;
    CadE120PedVLRFRE: TBCDField;
    CadE120PedCIFFOB: TStringField;
    CadE120PedVLRSEG: TBCDField;
    CadE120PedVLREMB: TBCDField;
    CadE120PedVLRENC: TBCDField;
    CadE120PedVLROUT: TBCDField;
    CadE120PedVLRDAR: TBCDField;
    CadE120PedVLRFRD: TBCDField;
    CadE120PedVLROUD: TBCDField;
    CadE120PedPERDS1: TBCDField;
    CadE120PedPERDS2: TBCDField;
    CadE120PedPERDS3: TBCDField;
    CadE120PedPERDS4: TBCDField;
    CadE120PedVLRBPR: TBCDField;
    CadE120PedVLRDPR: TBCDField;
    CadE120PedVLRBSE: TBCDField;
    CadE120PedVLRDSE: TBCDField;
    CadE120PedVLRDS1: TBCDField;
    CadE120PedVLRDS2: TBCDField;
    CadE120PedVLRDS3: TBCDField;
    CadE120PedVLRDS4: TBCDField;
    CadE120PedVLROFE: TBCDField;
    CadE120PedVLRDZF: TBCDField;
    CadE120PedVLRBIP: TBCDField;
    CadE120PedVLRIPI: TBCDField;
    CadE120PedVLRBIC: TBCDField;
    CadE120PedVLRICM: TBCDField;
    CadE120PedVLRBSI: TBCDField;
    CadE120PedVLRSIC: TBCDField;
    CadE120PedVLRBSP: TBCDField;
    CadE120PedVLRSTP: TBCDField;
    CadE120PedVLRBSC: TBCDField;
    CadE120PedVLRSTC: TBCDField;
    CadE120PedVLRBIS: TBCDField;
    CadE120PedVLRISS: TBCDField;
    CadE120PedVLRBIR: TBCDField;
    CadE120PedVLRIRF: TBCDField;
    CadE120PedVLRBIN: TBCDField;
    CadE120PedVLRINS: TBCDField;
    CadE120PedVLRBCO: TBCDField;
    CadE120PedVLRCOM: TBCDField;
    CadE120PedVLRLPR: TBCDField;
    CadE120PedVLRLSE: TBCDField;
    CadE120PedVLRLOU: TBCDField;
    CadE120PedVLRLIQ: TBCDField;
    CadE120PedVLRFIN: TBCDField;
    CadE120PedVLRADT: TBCDField;
    CadE120PedQTDORI: TFMTBCDField;
    CadE120PedVLRORI: TBCDField;
    CadE120PedTEMPAR: TStringField;
    CadE120PedCODPOR: TStringField;
    CadE120PedCODCRT: TStringField;
    CadE120PedSITPED: TIntegerField;
    CadE120PedCODMOT: TIntegerField;
    CadE120PedOBSMOT: TStringField;
    CadE120PedPEDBLO: TStringField;
    CadE120PedUSUBLO: TBCDField;
    CadE120PedDATBLO: TDateTimeField;
    CadE120PedHORBLO: TIntegerField;
    CadE120PedINDSIG: TStringField;
    CadE120PedVERCAL: TIntegerField;
    CadE120PedHORINI: TIntegerField;
    CadE120PedHORFIM: TIntegerField;
    CadE120PedUSUGER: TBCDField;
    CadE120PedDATGER: TDateTimeField;
    CadE120PedHORGER: TIntegerField;
    CadE120PedPERFRE: TBCDField;
    CadE120PedPERSEG: TBCDField;
    CadE120PedPEREMB: TBCDField;
    CadE120PedPERENC: TBCDField;
    CadE120PedPEROUT: TBCDField;
    CadE120PedCODSAC: TBCDField;
    CadE120PedCODOPE: TIntegerField;
    CadE120PedCODVEN: TIntegerField;
    CadE120PedPEDPAL: TIntegerField;
    CadE120PedACEPAR: TStringField;
    CadE120PedPEROF1: TBCDField;
    CadE120PedPEROF2: TBCDField;
    CadE120PedUSUFEC: TBCDField;
    CadE120PedDATFEC: TDateTimeField;
    CadE120PedHORFEC: TIntegerField;
    CadE120PedCLIREL: TIntegerField;
    CadE120PedVLRBCL: TBCDField;
    CadE120PedVLRCSL: TBCDField;
    CadE120PedVLRBPT: TBCDField;
    CadE120PedVLRPIT: TBCDField;
    CadE120PedVLRBCT: TBCDField;
    CadE120PedVLRCRT: TBCDField;
    CadE120PedVLRBOR: TBCDField;
    CadE120PedVLROUR: TBCDField;
    CadE120PedCODMAR: TStringField;
    CadE120PedCODSRO: TStringField;
    CadE120PedFILFAT: TIntegerField;
    CadE120PedCODCDI: TIntegerField;
    CadE120PedCODLIP: TStringField;
    CadE120PedCEPFRE: TIntegerField;
    CadE120PedVLRRIS: TBCDField;
    CadE120PedANAEMB: TStringField;
    CadE120PedNUMEMP: TStringField;
    CadE120PedQTDANE: TIntegerField;
    CadE120PedDATAGE: TDateTimeField;
    CadE120PedFILNCO: TIntegerField;
    CadE120PedSNFNCO: TStringField;
    CadE120PedNUMNCO: TIntegerField;
    CadE120PedEXPWMS: TIntegerField;
    CadE120PedVLRBPF: TBCDField;
    CadE120PedVLRPIF: TBCDField;
    CadE120PedVLRBCF: TBCDField;
    CadE120PedVLRCFF: TBCDField;
    CadE120PedCODAPC: TIntegerField;
    CadE120PedSOMFRE: TStringField;
    CadE120PedQTDITP: TIntegerField;
    CadE120PedQTDITS: TIntegerField;
    CadE120PedPERDS5: TBCDField;
    CadE120PedVLRDS5: TBCDField;
    CadE120PedROTANX: TIntegerField;
    CadE120PedNUMANX: TBCDField;
    CadE120PedNUMNSU: TBCDField;
    CadE120PedDATNSU: TDateTimeField;
    CadE120PedHORNSU: TIntegerField;
    CadE120PedINDEXP: TIntegerField;
    CadE120PedFATPED: TIntegerField;
    CadE120PedQTDBPF: TBCDField;
    CadE120PedQTDBCF: TBCDField;
    CadE120PedQTDBIP: TBCDField;
    CadE120PedNUMCES: TBCDField;
    CadE120PedVENCAL: TStringField;
    CadE120PedDESDEF: TStringField;
    CadE120PedANOVEI: TStringField;
    CadE120PedNUMREN: TStringField;
    CadE120PedDESMOD: TStringField;
    CadE120PedTIPDAV: TIntegerField;
    CadE120PedVLRECF: TBCDField;
    CadE120PedPERECF: TBCDField;
    CadE120PedUSU_FILDIV: TIntegerField;
    CadE120PedUSU_PEDDIV: TIntegerField;
    CadE120PedUSU_USUDIV: TBCDField;
    CadE120PedUSU_DATDIV: TDateTimeField;
    CadE120PedUSU_HORDIV: TIntegerField;
    CadE120PedUSU_PEDTRA: TStringField;
    CadE120PedUSU_PRECAR: TIntegerField;
    CadE120PedUSU_USUDES: TBCDField;
    CadE120PedUSU_DATDES: TDateTimeField;
    CadE120PedUSU_HORDES: TIntegerField;
    CadE120PedUSU_NUMCOM: TIntegerField;
    procedure edtNumPedExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnTransferirClick(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure ConsE120PedSTAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransfereTecPedido: TFTransfereTecPedido;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFTransfereTecPedido.btnTransferirClick(Sender: TObject);
var vnSaldoDisp, vnQtdTrans, vnSaldoTrans : Double;
begin
if not ClientCoresProdutos.IsEmpty then
   begin
      ClientCoresProdutos.First;
      while not ClientCoresProdutos.Eof do
         begin
            if ClientCoresProdutosUSU_TECTRA.Value = 'N' then
               begin
                  //SE FOR COR UNICA
                  if Trim(ClientCoresProdutosUSU_COR002.Value) = '' then
                     begin
                        ConsSaldos.Close;
                        ConsSaldos.Parameters.ParamByName('CODPRO').Value := ClientCoresProdutosUSU_COR001.Value;
                        ConsSaldos.Open;

                        vnSaldoDisp := RoundTo(ConsSaldosQTDEST.AsFloat - (ConsSaldosUSU_SALRES.AsFloat + ConsSaldosUSU_SALFIL.AsFloat),-2);
                        if vnSaldoDisp < 0 then
                           vnSaldoDisp := 0;
                        vnQtdTrans := RoundTo(ClientCoresProdutosUSU_QTDABE.AsFloat * ClientCoresProdutosUSU_CORUNI.AsFloat,-2);
                        vnSaldoTrans := RoundTo(vnSaldoDisp - vnQtdTrans,-2);

                        CadUsu_TSalTec.Close;
                        CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := ClientCoresProdutosUSU_COR001.Value;
                        CadUsu_TSalTec.Open;
                        if CadUsu_TSalTec.IsEmpty then
                           begin
                             CadUsu_TSalTec.Insert;
                             CadUsu_TSalTecUSU_CODPRO.Value := ClientCoresProdutosUSU_COR001.Value;
                             CadUsu_TSalTecUSU_SALRES.Value := 0;
                             CadUsu_TSalTecUSU_SALFIL.Value := 0;
                           end
                        else
                           begin
                             CadUsu_TSalTec.Edit;
                           end;

                        if vnSaldoTrans >= 0 then
                           begin
                              CadUsu_TSalTecUSU_SALRES.Value := CadUsu_TSalTecUSU_SALRES.Value + vnQtdTrans;
                           end
                        else
                           begin
                              CadUsu_TSalTecUSU_SALRES.Value := CadUsu_TSalTecUSU_SALRES.Value + vnSaldoDisp;
                              CadUsu_TSalTecUSU_SALFIL.Value := CadUsu_TSalTecUSU_SALFIL.Value + (vnSaldoTrans * (-1));
                           end;
                        CadUsu_TSalTec.Post;
                     end
                  else
                     begin
                        //faz com a cor 01
                        ConsSaldos.Close;
                        ConsSaldos.Parameters.ParamByName('CODPRO').Value := ClientCoresProdutosUSU_COR001.Value;
                        ConsSaldos.Open;

                        vnSaldoDisp := RoundTo(ConsSaldosQTDEST.AsFloat - (ConsSaldosUSU_SALRES.AsFloat + ConsSaldosUSU_SALFIL.AsFloat),-2);
                        if vnSaldoDisp < 0 then
                           vnSaldoDisp := 0;
                        vnQtdTrans := RoundTo(ClientCoresProdutosUSU_QTDABE.AsFloat * ClientCoresProdutosUSU_CMP1BB.AsFloat,-2);
                        vnSaldoTrans := RoundTo(vnSaldoDisp - vnQtdTrans,-2);

                        CadUsu_TSalTec.Close;
                        CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := ClientCoresProdutosUSU_COR001.Value;
                        CadUsu_TSalTec.Open;
                        if CadUsu_TSalTec.IsEmpty then
                           begin
                             CadUsu_TSalTec.Insert;
                             CadUsu_TSalTecUSU_CODPRO.Value := ClientCoresProdutosUSU_COR001.Value;
                             CadUsu_TSalTecUSU_SALRES.Value := 0;
                             CadUsu_TSalTecUSU_SALFIL.Value := 0;
                           end
                        else
                           begin
                             CadUsu_TSalTec.Edit;
                           end;

                        if vnSaldoTrans >= 0 then
                           begin
                              CadUsu_TSalTecUSU_SALRES.Value := CadUsu_TSalTecUSU_SALRES.Value + vnQtdTrans;
                           end
                        else
                           begin
                              CadUsu_TSalTecUSU_SALRES.Value := CadUsu_TSalTecUSU_SALRES.Value + vnSaldoDisp;
                              CadUsu_TSalTecUSU_SALFIL.Value := CadUsu_TSalTecUSU_SALFIL.Value + (vnSaldoTrans * (-1));
                           end;
                        CadUsu_TSalTec.Post;

                        //faz com a cor 02
                        ConsSaldos.Close;
                        ConsSaldos.Parameters.ParamByName('CODPRO').Value := ClientCoresProdutosUSU_COR002.Value;
                        ConsSaldos.Open;

                        vnSaldoDisp := RoundTo(ConsSaldosQTDEST.AsFloat - (ConsSaldosUSU_SALRES.AsFloat + ConsSaldosUSU_SALFIL.AsFloat),-2);
                        if vnSaldoDisp < 0 then
                           vnSaldoDisp := 0;
                        vnQtdTrans := RoundTo(ClientCoresProdutosUSU_QTDABE.AsFloat * ClientCoresProdutosUSU_CMP1AE.AsFloat,-2);
                        vnSaldoTrans := RoundTo(vnSaldoDisp - vnQtdTrans,-2);

                        CadUsu_TSalTec.Close;
                        CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := ClientCoresProdutosUSU_COR002.Value;
                        CadUsu_TSalTec.Open;
                        if CadUsu_TSalTec.IsEmpty then
                           begin
                             CadUsu_TSalTec.Insert;
                             CadUsu_TSalTecUSU_CODPRO.Value := ClientCoresProdutosUSU_COR002.Value;
                             CadUsu_TSalTecUSU_SALRES.Value := 0;
                             CadUsu_TSalTecUSU_SALFIL.Value := 0;
                           end
                        else
                           begin
                             CadUsu_TSalTec.Edit;
                           end;

                        if vnSaldoTrans >= 0 then
                           begin
                              CadUsu_TSalTecUSU_SALRES.Value := CadUsu_TSalTecUSU_SALRES.Value + vnQtdTrans;
                           end
                        else
                           begin
                              CadUsu_TSalTecUSU_SALRES.Value := CadUsu_TSalTecUSU_SALRES.Value + vnSaldoDisp;
                              CadUsu_TSalTecUSU_SALFIL.Value := CadUsu_TSalTecUSU_SALFIL.Value + (vnSaldoTrans * (-1));
                           end;
                        CadUsu_TSalTec.Post;


                     end;

                   ClientCoresProdutos.Edit;
                   ClientCoresProdutosUSU_TECTRA.Value := 'S';
                   ClientCoresProdutos.Post;

                   //ATUALIZA COMO TRANFERIDO
                   CadUsu_T120Ipd.Close;
                   CadUsu_T120Ipd.Parameters.ParamByName('CODEMP').Value := ClientCoresProdutosUSU_CODEMP.Value;
                   CadUsu_T120Ipd.Parameters.ParamByName('CODFIL').Value := ClientCoresProdutosUSU_CODFIL.Value;
                   CadUsu_T120Ipd.Parameters.ParamByName('NUMPED').Value := ClientCoresProdutosUSU_NUMPED.Value;
                   CadUsu_T120Ipd.Parameters.ParamByName('SEQIPD').Value := ClientCoresProdutosUSU_SEQIPD.Value;
                   CadUsu_T120Ipd.Parameters.ParamByName('SEQITE').Value := ClientCoresProdutosUSU_SEQITE.Value;
                   CadUsu_T120Ipd.Open;
                   if not CadUsu_T120Ipd.IsEmpty then
                      begin
                        CadUsu_T120Ipd.Edit;
                        CadUsu_T120IpdUSU_TECTRA.Value := 'S';
                        CadUsu_T120Ipd.Post;
                      end;
               end;
           ClientCoresProdutos.Next;
         end;
      ClientCoresProdutos.First;
   end;
   //SETA O PEDIDO COMO TRANSFERIDO
      CadE120Ped.Close;
      CadE120Ped.Parameters.ParamByName('CODEMP').Value := 1;
      CadE120Ped.Parameters.ParamByName('CODFIL').Value := 1;
      CadE120Ped.Parameters.ParamByName('NUMPED').Value := edtNumPed.AsInteger;
      CadE120Ped.Open;
      if not CadE120Ped.IsEmpty then
         begin
           CadE120Ped.Edit;
           CadE120PedUSU_PEDTRA.Value := 'S';
           CadE120Ped.Post;
         end;
      ConsE120PedST.Close;
      ConsE120PedST.Open;
end;

procedure TFTransfereTecPedido.ConsE120PedSTAfterScroll(DataSet: TDataSet);
begin
    edtNumPed.Value := ConsE120PedSTNUMPED.Value;
    edtNumPedExit(Self);
end;

procedure TFTransfereTecPedido.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.FieldName = 'Imagem' then
    begin
        dbgrd1.Canvas.FillRect(Rect);

        // Desenha o check sobre o quadrado
        if ClientCoresProdutosUSU_TECTRA.Value = 'S' then
           begin
            ImageList1.Draw(dbgrd1.Canvas,Rect.Left+10,Rect.Top+1,1);
           end;

    end;
end;

procedure TFTransfereTecPedido.edtNumPedExit(Sender: TObject);
begin
    ClientCoresProdutos.Close;
    ConsCoresProdutos.Close;
    ConsCoresProdutos.Parameters.ParamByName('NUMPED').Value := edtNumPed.AsInteger;
    ConsCoresProdutos.Open;
    ClientCoresProdutos.Open;
end;

procedure TFTransfereTecPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFTransfereTecPedido.FormShow(Sender: TObject);
begin
  ConsE120PedST.Close;
  ConsE120PedST.Open;
end;

end.
