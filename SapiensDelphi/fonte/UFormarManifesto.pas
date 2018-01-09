unit UFormarManifesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, rxToolEdit, rxCurrEdit,
  ComCtrls, Grids, DBGrids, ADODB;

type
  TFFormarManifesto = class(TForm)
    Label1: TLabel;
    dbedtUSU_DESROT: TDBEdit;
    btnConsRota: TBitBtn;
    dsCadusu_tRotManGer: TDataSource;
    Label2: TLabel;
    edtNumAne: TCurrencyEdit;
    btnMostrar: TBitBtn;
    PaginaControle: TPageControl;
    tsDadosGerais: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    dbedtNUMEBQ: TDBEdit;
    dsCadE145Ebq: TDataSource;
    dbedtCODTRA: TDBEdit;
    dbedtPLAVEI: TDBEdit;
    dbedtCODMTR: TDBEdit;
    dbedtNOMMOT: TDBEdit;
    dbedtDOCMOT: TDBEdit;
    dbedtFONEBQ: TDBEdit;
    dbedtDSNEBQ: TDBEdit;
    dbedtDATSAI: TDBEdit;
    dbedtDATETG: TDBEdit;
    dbedtTIPEBQ: TDBEdit;
    dbedtCODSMA: TDBEdit;
    dbedtNUMMAN: TDBEdit;
    dbedtCODTNS: TDBEdit;
    dbedtVLRLIQ: TDBEdit;
    dbedtPESLIQ: TDBEdit;
    dbedtPESBRU: TDBEdit;
    dbedtCODCPG: TDBEdit;
    dbedtUNIMED: TDBEdit;
    dbedtDATEMM: TDBEdit;
    dbedtSITMAN: TDBEdit;
    tsComposicao: TTabSheet;
    dbg1: TDBGrid;
    dsConsE145Nfv: TDataSource;
    ConsE145ccd: TADOQuery;
    ConsE145ccdCODEMP: TIntegerField;
    ConsE145ccdCODFIL: TIntegerField;
    ConsE145ccdNUMEBQ: TIntegerField;
    ConsE145ccdSEQMOV: TIntegerField;
    ConsE145ccdTIPMOV: TStringField;
    ConsE145ccdUFSPAS: TStringField;
    ConsE145ccdCEPCID: TIntegerField;
    tsRota: TTabSheet;
    dbg2: TDBGrid;
    dbg3: TDBGrid;
    dsConsE145ccd: TDataSource;
    ConsE145ccdvaTipMov: TStringField;
    ConsE145Nfv_Rota: TADOQuery;
    ConsE145Nfv_RotaCODEMP: TIntegerField;
    ConsE145Nfv_RotaCODFIL: TIntegerField;
    ConsE145Nfv_RotaNUMEBQ: TIntegerField;
    ConsE145Nfv_RotaSEQEBQ: TIntegerField;
    ConsE145Nfv_RotaFILNFV: TIntegerField;
    ConsE145Nfv_RotaSNFNFV: TStringField;
    ConsE145Nfv_RotaNUMNFV: TIntegerField;
    ConsE145Nfv_RotaNUMCFI: TIntegerField;
    ConsE145Nfv_RotaSEQIPV: TIntegerField;
    ConsE145Nfv_RotaCODPRO: TStringField;
    ConsE145Nfv_RotaCODDER: TStringField;
    ConsE145Nfv_RotaCODLOT: TStringField;
    ConsE145Nfv_RotaQTDFAT: TFMTBCDField;
    ConsE145Nfv_RotaTIPDOC: TIntegerField;
    ConsE145Nfv_RotaQTDETG: TFMTBCDField;
    ConsE145Nfv_RotaCODCLI: TIntegerField;
    ConsE145Nfv_RotaCEPINI: TIntegerField;
    dsConsE145Cld: TDataSource;
    edtNumEbq: TCurrencyEdit;
    Label3: TLabel;
    btnGravarAlteracoes: TBitBtn;
    procedure btnConsRotaClick(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConsE145ccdCalcFields(DataSet: TDataSet);
    procedure ConsE145ccdAfterScroll(DataSet: TDataSet);
    procedure dsCadE145EbqStateChange(Sender: TObject);
    procedure btnGravarAlteracoesClick(Sender: TObject);
  private
    { Private declarations }
    vnId_Rota : Integer;
    vaUfDescarga : string;
  public
    { Public declarations }
  end;

var
  FFormarManifesto: TFFormarManifesto;

implementation

uses UConsRota, UDmOra;

{$R *.dfm}

procedure TFFormarManifesto.btnConsRotaClick(Sender: TObject);
begin
     FConsRota := TFConsRota.Create(Self);
  if FConsRota.ShowModal = mrOk then
     begin
        vnId_Rota := DmOra.ConsRotManGerUSU_ID_ROTA.AsInteger;

        DmOra.Cadusu_tRotManGer.Close;
        DmOra.Cadusu_tRotManGer.Parameters.ParamByName('usu_id_rota').Value := vnId_Rota;
        DmOra.Cadusu_tRotManGer.Open;

        vaUfDescarga := '';
        DmOra.Consusu_tRotMan.Close;
        DmOra.Consusu_tRotMan.Parameters.ParamByName('usu_id_rota').Value := vnId_Rota;
        DmOra.Consusu_tRotMan.Open;
        DmOra.Consusu_tRotMan.First;
        while not DmOra.Consusu_tRotMan.Eof do
          begin
            if DmOra.Consusu_tRotManUSU_TIPMOV.Value = 'D' then
               begin
                 vaUfDescarga := DmOra.Consusu_tRotManUSU_UFSPAS.Value;
                 Break;
               end;
             DmOra.Consusu_tRotMan.Next;
          end;
          ActiveControl := edtNumAne;
     end;
  FreeAndNil(FConsRota);
end;

procedure TFFormarManifesto.btnGravarAlteracoesClick(Sender: TObject);
begin
  DmOra.CadE145Ebq.Post;
end;

procedure TFFormarManifesto.btnMostrarClick(Sender: TObject);
VAR vnPesBru,vnPesLiq,vnVlrLiq : Double;
    vaHora : string;
    vnHora : Integer;
begin
  if DmOra.Cadusu_tRotManGer.IsEmpty then
     begin
       Application.MessageBox('Informe a Rota','Aviso',MB_ICONWARNING+MB_OK);
       Abort;
     end;

  if vaUfDescarga = '' then
     begin
       Application.MessageBox('Não foi encontrado UF para descarga','Aviso',MB_ICONWARNING+MB_OK);
       Abort;
     end;

   if edtNumAne.Value = 0 then
      begin
        Application.MessageBox('Irforme a Carga','Aviso',MB_ICONWARNING+MB_OK);
        ActiveControl := edtNumAne;
        Abort;
      end;

   //SÓ PARA VALIDAR SE A CARGA EXISTE
   DmOra.ConsSql.Close;
   DmOra.ConsSql.SQL.Clear;
   DmOra.ConsSql.SQL.Add('select numpfa from e135pfa');
   DmOra.ConsSql.SQL.Add(' where');
   DmOra.ConsSql.SQL.Add(' codemp = :CODEMP and');
   DmOra.ConsSql.SQL.Add(' codfil = :CODFIL and');
   DmOra.ConsSql.SQL.Add(' numane = :NUMANE');
   DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := 1;
   DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := 1;
   DmOra.ConsSql.Parameters.ParamByName('NUMANE').Value := edtNumAne.AsInteger;
   DmOra.ConsSql.Open;
   if DmOra.ConsSql.IsEmpty then
      begin
        Application.MessageBox('Carga não encontrada','Aviso',MB_ICONWARNING+MB_OK);
        ActiveControl := edtNumAne;
        Abort;
      end;

  Screen.Cursor := crHourGlass;
  //calcula a hora padrao sapiens
  vaHora := TimeToStr(Time);
  vnHora := StrToInt(Copy(vaHora,4,2));
  vnHora := vnHora + (StrToInt(Copy(vaHora,0,2)) * 60);

  //CONSULTA AS PRE-FATURAS DA CARGA
  DmOra.ConsE135Pfa.Close;
  DmOra.ConsE135Pfa.SQL.Clear;
  DmOra.ConsE135Pfa.SQL.Add('select e135pfa.CODEMP,e135pfa.CODFIL,e135pfa.NUMANE,e135pfa.NUMPFA,e135pfa.FILNFV,e135pfa.SNFNFV,e135pfa.TIPNFS,');
  DmOra.ConsE135Pfa.SQL.Add(' e135pfa.NUMNFV,e135pfa.CODCLI,e135pfa.TNSPRO,e135pfa.CODROE,e135pfa.SEQROE,e135pfa.CODRAI,');
  DmOra.ConsE135Pfa.SQL.Add(' e135pfa.CODCPG,e135pfa.PLAVEI,e135pfa.PESBRU,e135pfa.PESLIQ,e135pfa.VOLPFA,');
  DmOra.ConsE135Pfa.SQL.Add(' e135pfa.VLRPFA,e135pfa.VLRFIN,e135pfa.CODTRA,E135pfa.CODMTR,');
  DmOra.ConsE135Pfa.SQL.Add(' E085CLI.NOMCLI,E085CLI.CEPCLI,E085CLI.CEPINI,E085CLI.CIDCLI,E085CLI.SIGUFS,');
  DmOra.ConsE135Pfa.SQL.Add(' E073MOT.NOMMOT,E073MOT.CGCCPF,E073MOT.FONMOT');
  DmOra.ConsE135Pfa.SQL.Add(' from e135pfa');
  DmOra.ConsE135Pfa.SQL.Add(' INNER JOIN E085CLI ON E085CLI.CODCLI = E135PFA.CODCLI');
  DmOra.ConsE135Pfa.SQL.Add(' INNER JOIN E073MOT ON E073MOT.CODTRA = E135PFA.CODTRA AND');
  DmOra.ConsE135Pfa.SQL.Add('                       E073MOT.CODMTR = E135PFA.CODMTR');
  DmOra.ConsE135Pfa.SQL.Add(' WHERE E135PFA.NUMANE = :NUMANE and');
  DmOra.ConsE135Pfa.SQL.Add('       e135pfa.codemp = :CODEMP and');
  DmOra.ConsE135Pfa.SQL.Add('       e135pfa.filnfv = :FILNFV and');
  DmOra.ConsE135Pfa.SQL.Add('       e085cli.sigufs = :SIGUFS');
  DmOra.ConsE135Pfa.SQL.Add(' order by E135PFA.numnfv'); //ordena pelo numero da nfv
  DmOra.ConsE135Pfa.Parameters.ParamByName('NUMANE').Value := edtNumAne.AsInteger;
  DmOra.ConsE135Pfa.Parameters.ParamByName('CODEMP').Value := 1;
  DmOra.ConsE135Pfa.Parameters.ParamByName('FILNFV').Value := 1;
  DmOra.ConsE135Pfa.Parameters.ParamByName('SIGUFS').Value := vaUfDescarga;
  DmOra.ConsE135Pfa.Open;
  if DmOra.ConsE135Pfa.IsEmpty then
     begin
       Application.MessageBox('Não foi encontrado descarga para esta UF','Aviso',MB_ICONWARNING+MB_OK);
       Screen.Cursor := crDefault;
       ActiveControl := edtNumAne;
       Abort;
     end;
  DmOra.ConsE135Pfa.First;

  if (DmOra.ConsE135PfaPLAVEI.Value = ' ') or (DmOra.ConsE135PfaPLAVEI.Value = '') then
     begin
        Application.MessageBox('Foi encontrado pré-fatura sem identificação de veículo','Aviso',MB_ICONWARNING+MB_OK);
        Screen.Cursor := crDefault;
        Abort;
     end;

  if DmOra.ConsE135PfaCODMTR.Value = 0 then
     begin
        Application.MessageBox('Foi encontrado pré-fatura sem identificação de motorista','Aviso',MB_ICONWARNING+MB_OK);
        Screen.Cursor := crDefault;
        Abort;
     end;



  vnPesBru := 0;
  vnPesLiq := 0;
  vnVlrLiq := 0;
  while not DmOra.ConsE135Pfa.Eof  do
    begin
      vnPesBru := vnPesBru + DmOra.ConsE135PfaPESBRU.AsFloat;
      vnPesLiq := vnPesLiq + DmOra.ConsE135PfaPESLIQ.AsFloat;
      vnVlrLiq := vnVlrLiq + DmOra.ConsE135PfaVLRPFA.AsFloat;

      DmOra.ConsE135Pfa.Next;
    end;
  DmOra.ConsE135Pfa.First;

  //GRAVA OS DADOS GERAIS DO EMBARQUE E145EBQ
  DmOra.CadE145Ebq.Open;
  DmOra.CadE145Ebq.Insert;

  DmOra.CadE145EbqCODEMP.Value := DmOra.ConsE135PfaCODEMP.Value;
  DmOra.CadE145EbqCODFIL.Value := DmOra.ConsE135PfaCODFIL.Value;
  DmOra.CadE145EbqCODTRA.Value := DmOra.ConsE135PfaCODTRA.Value;
  DmOra.CadE145EbqPLAVEI.Value := DmOra.ConsE135PfaPLAVEI.Value;
  DmOra.CadE145EbqNOMMOT.Value := DmOra.ConsE135PfaNOMMOT.Value;
  DmOra.CadE145EbqCODMTR.Value := DmOra.ConsE135PfaCODMTR.Value;
  DmOra.CadE145EbqDOCMOT.Value := FloatToStr(DmOra.ConsE135PfaCGCCPF.Value);
  //DmOra.CadE145EbqFONEBQ.Value := DmOra.ConsE135PfaFONMOT.Value;
  DmOra.CadE145EbqFONEBQ.Value := '(44)3562-1483';
  DmOra.CadE145EbqDSNEBQ.Value := ' ';
 // DmOra.CadE145EbqOBSEBQ.Value := ' ';
  DmOra.CadE145EbqDATSAI.Value := Date;
  DmOra.CadE145EbqUSUGER.Value := 12;
  DmOra.CadE145EbqDATGER.Value := date;
  DmOra.CadE145EbqHORGER.Value := vnHora;
  DmOra.CadE145EbqSITEBQ.Value := '1'; //2 - fechado
  DmOra.CadE145EbqDATFEC.Value := 31/12/1990;
  DmOra.CadE145EbqHORFEC.Value := 0;
  DmOra.CadE145EbqHORSAI.Value := vnHora + 5;
  DmOra.CadE145EbqTIPEBQ.Value := 'I';// I - Interno
  DmOra.CadE145EbqDOCEXP.Value := ' ';
  DmOra.CadE145EbqNUMDEC.Value := ' ';
  DmOra.CadE145EbqDATDEC.Value := 31/12/1990;
  DmOra.CadE145EbqNATEXP.Value := ' ';
  DmOra.CadE145EbqNUMEXP.Value := ' ';
  DmOra.CadE145EbqDATEXP.Value := 31/12/1990;
  DmOra.CadE145EbqCHCEBQ.Value := ' ';
  DmOra.CadE145EbqDATCHC.Value := 31/12/1990;
  DmOra.CadE145EbqDATAVB.Value := 31/12/1990;
  DmOra.CadE145EbqTIPCHC.Value := 0;
  DmOra.CadE145EbqCODPAI.Value := ' ';
  DmOra.CadE145EbqINTIMP.Value := 'N';
  DmOra.CadE145EbqCODEFE.Value := 0;
  DmOra.CadE145EbqNUMMEM.Value := ' ';
  DmOra.CadE145EbqKMTINI.Value := 0;
  DmOra.CadE145EbqKMTFIN.Value := 0;
  DmOra.CadE145EbqPRCEBQ.Value := 0;
  DmOra.CadE145EbqEMPTCP.Value := 0;
  DmOra.CadE145EbqFILTCP.Value := 0;
  DmOra.CadE145EbqNUMTIT.Value := ' ';
  DmOra.CadE145EbqCODTPT.Value := ' ';
  DmOra.CadE145EbqEMPOCP.Value := 0;
  DmOra.CadE145EbqFILOCP.Value := 0;
  DmOra.CadE145EbqNUMOCP.Value := 0;
  DmOra.CadE145EbqSEQISO.Value := 0;
  DmOra.CadE145EbqCODFOR.Value := 0;
  DmOra.CadE145EbqEMPNFV.Value := 0;
  DmOra.CadE145EbqFILNFV.Value := 0;
  DmOra.CadE145EbqSNFNFV.Value := ' ';
  DmOra.CadE145EbqNUMNFV.Value := 0;
  DmOra.CadE145EbqNUMCFI.Value := 0;
  DmOra.CadE145EbqCODSMA.Value := 'MDF';

  //BUSCA O ULTIMO NUMERO
  DmOra.ConsSql.Close;
  DmOra.ConsSql.SQL.Clear;
  DmOra.ConsSql.SQL.Add('select MAX(ULTNUM) AS ULTNUM from e020snf');
  DmOra.ConsSql.SQL.Add(' where');
  DmOra.ConsSql.SQL.Add(' codemp = :CODEMP and');
  DmOra.ConsSql.SQL.Add(' codfil = :CODFIL and');
  DmOra.ConsSql.SQL.Add(' codsnf = ''MDF''');
  DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := DmOra.ConsE135PfaCODEMP.Value;
  DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := DmOra.ConsE135PfaCODFIL.Value;
  DmOra.ConsSql.Open;
  if not DmOra.ConsSql.IsEmpty then
     DmOra.CadE145EbqNUMMAN.Value := DmOra.ConsSql.FieldByName('ULTNUM').AsInteger + 1
  else
     DmOra.CadE145EbqNUMMAN.Value := 1;

  DmOra.CadE145EbqCODTNS.Value := ' ';
  DmOra.CadE145EbqVLRFRE.Value := 0;
  DmOra.CadE145EbqVLRPRE.Value := 0;
  DmOra.CadE145EbqVLREST.Value := 0;
  DmOra.CadE145EbqVLRDSC.Value := 0;
  DmOra.CadE145EbqVLRADT.Value := 0;
  DmOra.CadE145EbqVLRABA.Value := 0;
  DmOra.CadE145EbqVLRSST.Value := 0;
  DmOra.CadE145EbqVLRIRF.Value := 0;
  DmOra.CadE145EbqVLRLIQ.Value := vnVlrLiq;
  DmOra.CadE145EbqVLRINS.Value := 0;
  DmOra.CadE145EbqVLRPDG.Value := 0;
  DmOra.CadE145EbqVLRBIN.Value := 0;
  DmOra.CadE145EbqVLRBIR.Value := 0;
  DmOra.CadE145EbqOBSMAN.Value := ' ';
  DmOra.CadE145EbqSITMAN.Value := 1; //FECHADO
  DmOra.CadE145EbqCODCPG.Value := ' ';
  DmOra.CadE145EbqDATEMM.Value := DATE;
  DmOra.CadE145EbqHOREMM.Value := vnHora;
  DmOra.CadE145EbqUNIMED.Value := 1; //KG
  DmOra.CadE145EbqPESBRU.AsFloat := vnPesBru;
  DmOra.CadE145EbqPESLIQ.AsFloat := vnPesLiq;
  DmOra.CadE145EbqCODCLI.Value := 0;
  DmOra.CadE145EbqTIPEND.Value := 0;
  DmOra.CadE145EbqSEQEND.Value := 0;
  DmOra.CadE145EbqDATETG.Value := 31/12/1990;
  DmOra.CadE145EbqPRDENT.Value := ' ';

  DmOra.ConsSql.Close;
  DmOra.ConsSql.SQL.Clear;
  DmOra.ConsSql.SQL.Add('select MAX(NUMEBQ) AS ULTIMO from E145EBQ ');
  DmOra.ConsSql.SQL.Add(' where');
  DmOra.ConsSql.SQL.Add(' codemp = :CODEMP and');
  DmOra.ConsSql.SQL.Add(' codfil = :CODFIL');
  DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := 1;
  DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := 1;
  DmOra.ConsSql.Open;
  if DmOra.ConsSql.IsEmpty then
     DmOra.CadE145EbqNUMEBQ.Value := 1
  else
     DmOra.CadE145EbqNUMEBQ.Value := DmOra.ConsSql.FieldByName('ULTIMO').AsInteger + 1;

  edtNumEbq.Value := DmOra.CadE145EbqNUMEBQ.Value;

  DmOra.CadE145Ebq.Post;

  DmOra.CadE020Snf.Close;
  DmOra.CadE020Snf.Parameters.ParamByName('CODEMP').Value := 1;
  DmOra.CadE020Snf.Parameters.ParamByName('CODFIL').Value := 1;
  DmOra.CadE020Snf.Parameters.ParamByName('CODSNF').Value := 'MDF';
  DmOra.CadE020Snf.Open;
  if not DmOra.CadE020Snf.IsEmpty then
     begin
       DmOra.CadE020Snf.Edit;
       DmOra.CadE020SnfULTNUM.AsInteger := DmOra.CadE145EbqNUMMAN.Value;
       DmOra.CadE020SnfULTDAT.Value := Date;
       DmOra.CadE020Snf.Post;
     end;
  //FIM DOS DADOS GERAIS

  //GRAVA AS NOTAS QUE COMPOEM O MANIFESTO E145NFV
  DmOra.ConsE135Pfa.First;
  while not DmOra.ConsE135Pfa.Eof do
    begin
      DmOra.CadE145Nfv.Open;
      DmOra.CadE145Nfv.Insert;
      DmOra.CadE145NfvCODEMP.Value := DmOra.CadE145EbqCODEMP.Value;
      DmOra.CadE145NfvCODFIL.Value := DmOra.CadE145EbqCODFIL.Value;
      DmOra.CadE145NfvNUMEBQ.Value := DmOra.CadE145EbqNUMEBQ.Value;

      DmOra.ConsSql.Close;
      DmOra.ConsSql.SQL.Clear;
      DmOra.ConsSql.SQL.Add('select max(seqebq) as seqebq from e145nfv');
      DmOra.ConsSql.SQL.Add(' where');
      DmOra.ConsSql.SQL.Add(' codemp = :codemp and');
      DmOra.ConsSql.SQL.Add(' codfil = :codfil and');
      DmOra.ConsSql.SQL.Add(' numebq = :numebq');
      DmOra.ConsSql.Parameters.ParamByName('codemp').Value := DmOra.CadE145EbqCODEMP.Value;
      DmOra.ConsSql.Parameters.ParamByName('codfil').Value := DmOra.CadE145EbqCODFIL.Value;
      DmOra.ConsSql.Parameters.ParamByName('numebq').Value := DmOra.CadE145EbqNUMEBQ.Value;
      DmOra.ConsSql.Open;
      if DmOra.ConsSql.IsEmpty then
         DmOra.CadE145NfvSEQEBQ.Value := 1
      else
         DmOra.CadE145NfvSEQEBQ.Value := DmOra.ConsSql.FieldByName('seqebq').AsInteger + 1;

      DmOra.CadE145NfvFILNFV.Value := DmOra.ConsE135PfaFILNFV.Value;
      DmOra.CadE145NfvSNFNFV.Value := DmOra.ConsE135PfaSNFNFV.Value;
      DmOra.CadE145NfvNUMNFV.Value := DmOra.ConsE135PfaNUMNFV.Value;
      DmOra.CadE145NfvNUMCFI.Value := 0;
      DmOra.CadE145NfvSEQIPV.Value := 0;
      DmOra.CadE145NfvCODPRO.Value := ' ';
      DmOra.CadE145NfvCODDER.Value := ' ';
      DmOra.CadE145NfvCODLOT.Value := ' ';
      DmOra.CadE145NfvQTDFAT.AsFloat := 0;
      DmOra.CadE145NfvTIPDOC.Value := 1;
      DmOra.CadE145NfvQTDETG.AsFloat := 0;
      DmOra.CadE145Nfv.Post;

      DmOra.ConsE135Pfa.Next;
    end;
    DmOra.ConsE135Pfa.First;

    DmOra.ConsE145Nfv.Close;//ATUALIZA A CONSULTA DAS NOTAS INSERIDAS
    DmOra.ConsE145Nfv.Parameters.ParamByName('CODEMP').Value := DmOra.CadE145EbqCODEMP.Value;
    DmOra.ConsE145Nfv.Parameters.ParamByName('CODFIL').Value := DmOra.CadE145EbqCODFIL.Value;
    DmOra.ConsE145Nfv.Parameters.ParamByName('NUMEBQ').Value := DmOra.CadE145EbqNUMEBQ.Value;
    DmOra.ConsE145Nfv.Open;

    //GRAVA A ROTA E PASSAGEM ENTRE OS ESTADOS E145CCD
    DmOra.Consusu_tRotMan.First;
    while not DmOra.Consusu_tRotMan.Eof do
       begin
          if (DmOra.Consusu_tRotManUSU_TIPMOV.Value = 'C') or
             (DmOra.Consusu_tRotManUSU_TIPMOV.Value = 'P') then
              begin
                DmOra.CadE145Ccd.Open;
                DmOra.CadE145Ccd.Insert;
                DmOra.CadE145CcdCODEMP.Value := DmOra.CadE145EbqCODEMP.Value;
                DmOra.CadE145CcdCODFIL.Value := DmOra.CadE145EbqCODFIL.Value;
                DmOra.CadE145CcdNUMEBQ.Value := DmOra.CadE145EbqNUMEBQ.Value;
                DmOra.CadE145CcdTIPMOV.Value := DmOra.Consusu_tRotManUSU_TIPMOV.Value;
                DmOra.CadE145CcdUFSPAS.Value := DmOra.Consusu_tRotManUSU_UFSPAS.Value;
                DmOra.CadE145CcdCEPCID.Value := DmOra.Consusu_tRotManUSU_CEPCID.Value;

                DmOra.ConsSql.Close;
                DmOra.ConsSql.SQL.Clear;
                DmOra.ConsSql.SQL.Add('select max(seqmov) as seqmov');
                DmOra.ConsSql.SQL.Add(' from e145ccd');
                DmOra.ConsSql.SQL.Add(' where codemp = :codemp and');
                DmOra.ConsSql.SQL.Add('       codfil = :codfil and');
                DmOra.ConsSql.SQL.Add('       numebq = :numebq');
                DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := DmOra.CadE145EbqCODEMP.Value;
                DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := DmOra.CadE145EbqCODFIL.Value;
                DmOra.ConsSql.Parameters.ParamByName('NUMEBQ').Value := DmOra.CadE145EbqNUMEBQ.Value;
                DmOra.ConsSql.Open;
                if DmOra.ConsSql.IsEmpty then
                   DmOra.CadE145CcdSEQMOV.Value := 1
                else
                   DmOra.CadE145CcdSEQMOV.Value := DmOra.ConsSql.FieldByName('seqmov').AsInteger + 1;

                DmOra.CadE145Ccd.Post;
              end
          else
            if (DmOra.Consusu_tRotManUSU_TIPMOV.Value = 'D')  then
              begin
                  DmOra.ConsE135Pfa.Close;
                  DmOra.ConsE135Pfa.SQL.Clear;
                  DmOra.ConsE135Pfa.SQL.Add('select e135pfa.CODEMP,e135pfa.CODFIL,e135pfa.NUMANE,e135pfa.NUMPFA,e135pfa.FILNFV,e135pfa.SNFNFV,e135pfa.TIPNFS,');
                  DmOra.ConsE135Pfa.SQL.Add(' e135pfa.NUMNFV,e135pfa.CODCLI,e135pfa.TNSPRO,e135pfa.CODROE,e135pfa.SEQROE,e135pfa.CODRAI,');
                  DmOra.ConsE135Pfa.SQL.Add(' e135pfa.CODCPG,e135pfa.PLAVEI,e135pfa.PESBRU,e135pfa.PESLIQ,e135pfa.VOLPFA,');
                  DmOra.ConsE135Pfa.SQL.Add(' e135pfa.VLRPFA,e135pfa.VLRFIN,e135pfa.CODTRA,E135pfa.CODMTR,');
                  DmOra.ConsE135Pfa.SQL.Add(' E085CLI.NOMCLI,E085CLI.CEPCLI,E085CLI.CEPINI,E085CLI.CIDCLI,E085CLI.SIGUFS,');
                  DmOra.ConsE135Pfa.SQL.Add(' E073MOT.NOMMOT,E073MOT.CGCCPF,E073MOT.FONMOT');
                  DmOra.ConsE135Pfa.SQL.Add(' from e135pfa');
                  DmOra.ConsE135Pfa.SQL.Add(' INNER JOIN E085CLI ON E085CLI.CODCLI = E135PFA.CODCLI');
                  DmOra.ConsE135Pfa.SQL.Add(' INNER JOIN E073MOT ON E073MOT.CODTRA = E135PFA.CODTRA AND');
                  DmOra.ConsE135Pfa.SQL.Add('                       E073MOT.CODMTR = E135PFA.CODMTR');
                  DmOra.ConsE135Pfa.SQL.Add(' WHERE E135PFA.NUMANE = :NUMANE and');
                  DmOra.ConsE135Pfa.SQL.Add('       e135pfa.codemp = :CODEMP and');
                  DmOra.ConsE135Pfa.SQL.Add('       e135pfa.filnfv = :FILNFV and');
                  DmOra.ConsE135Pfa.SQL.Add('       e085cli.sigufs = :SIGUFS');
                  DmOra.ConsE135Pfa.SQL.Add(' order by E135PFA.SEQROE'); //ordena pela sequencia de entrega
                  DmOra.ConsE135Pfa.Parameters.ParamByName('NUMANE').Value := edtNumAne.AsInteger;
                  DmOra.ConsE135Pfa.Parameters.ParamByName('CODEMP').Value := 1;
                  DmOra.ConsE135Pfa.Parameters.ParamByName('FILNFV').Value := 1;
                  DmOra.ConsE135Pfa.Parameters.ParamByName('SIGUFS').Value := DmOra.Consusu_tRotManUSU_UFSPAS.Value;
                  DmOra.ConsE135Pfa.Open;
                  DmOra.ConsE135Pfa.First;
                  while not DmOra.ConsE135Pfa.Eof do
                      begin
                         DmOra.ConsSql.Close;
                         DmOra.ConsSql.SQL.Clear;
                         DmOra.ConsSql.SQL.Add('select * from e145ccd');
                         DmOra.ConsSql.SQL.Add(' where numebq = :numebq and');
                         DmOra.ConsSql.SQL.Add('       tipmov = ''D'' and');
                         DmOra.ConsSql.SQL.Add('       cepcid = :cepcid');
                         DmOra.ConsSql.Parameters.ParamByName('numebq').Value := DmOra.CadE145EbqNUMEBQ.Value;
                         DmOra.ConsSql.Parameters.ParamByName('cepcid').Value := DmOra.ConsE135PfaCEPINI.Value;
                         DmOra.ConsSql.Open;
                         if DmOra.ConsSql.IsEmpty then
                            begin
                              DmOra.CadE145Ccd.Open;
                              DmOra.CadE145Ccd.Insert;
                              DmOra.CadE145CcdCODEMP.Value := DmOra.CadE145EbqCODEMP.Value;
                              DmOra.CadE145CcdCODFIL.Value := DmOra.CadE145EbqCODFIL.Value;
                              DmOra.CadE145CcdNUMEBQ.Value := DmOra.CadE145EbqNUMEBQ.Value;
                              DmOra.CadE145CcdTIPMOV.Value := DmOra.Consusu_tRotManUSU_TIPMOV.Value;
                              DmOra.CadE145CcdUFSPAS.Value := DmOra.ConsE135PfaSIGUFS.Value;
                              DmOra.CadE145CcdCEPCID.Value := DmOra.ConsE135PfaCEPINI.Value;

                              DmOra.ConsSql.Close;
                              DmOra.ConsSql.SQL.Clear;
                              DmOra.ConsSql.SQL.Add('select max(seqmov) as seqmov');
                              DmOra.ConsSql.SQL.Add(' from e145ccd');
                              DmOra.ConsSql.SQL.Add(' where codemp = :codemp and');
                              DmOra.ConsSql.SQL.Add('       codfil = :codfil and');
                              DmOra.ConsSql.SQL.Add('       numebq = :numebq');
                              DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := DmOra.CadE145EbqCODEMP.Value;
                              DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := DmOra.CadE145EbqCODFIL.Value;
                              DmOra.ConsSql.Parameters.ParamByName('NUMEBQ').Value := DmOra.CadE145EbqNUMEBQ.Value;
                              DmOra.ConsSql.Open;
                              if DmOra.ConsSql.IsEmpty then
                                 DmOra.CadE145CcdSEQMOV.Value := 1
                              else
                                 DmOra.CadE145CcdSEQMOV.Value := DmOra.ConsSql.FieldByName('seqmov').AsInteger + 1;

                              DmOra.CadE145Ccd.Post;
                            end;

                        DmOra.ConsE135Pfa.Next;
                      end;
              end;
         DmOra.Consusu_tRotMan.Next;
       end;

    //VAI PERCORRER OS LOCAIS DE DESCARGA E LANÇAR AS NOTAS DE CADA LOCAL
    ConsE145ccd.Close;
    ConsE145ccd.Parameters.ParamByName('CODEMP').Value := DmOra.CadE145EbqCODEMP.Value;
    ConsE145ccd.Parameters.ParamByName('CODFIL').Value := DmOra.CadE145EbqCODFIL.Value;
    ConsE145ccd.Parameters.ParamByName('NUMEBQ').Value := DmOra.CadE145EbqNUMEBQ.Value;
    ConsE145ccd.Open;
    ConsE145ccd.First;
    while not ConsE145ccd.Eof do
       begin
         if ConsE145ccdTIPMOV.Value = 'D' then
            begin
               ConsE145Nfv_Rota.Close;
               ConsE145Nfv_Rota.Parameters.ParamByName('CODEMP').Value := ConsE145ccdCODEMP.Value;
               ConsE145Nfv_Rota.Parameters.ParamByName('CODFIL').Value := ConsE145ccdCODFIL.Value;
               ConsE145Nfv_Rota.Parameters.ParamByName('NUMEBQ').Value := ConsE145ccdNUMEBQ.Value;
               ConsE145Nfv_Rota.Parameters.ParamByName('CEPINI').Value := ConsE145ccdCEPCID.Value;
               ConsE145Nfv_Rota.Open;
               ConsE145Nfv_Rota.First;
               while not ConsE145Nfv_Rota.Eof do
                 begin
                   DmOra.CadE145Cld.Open;
                   DmOra.CadE145Cld.Insert;
                   DmOra.CadE145CldCODEMP.Value := ConsE145Nfv_RotaCODEMP.Value;
                   DmOra.CadE145CldCODFIL.Value := ConsE145Nfv_RotaCODFIL.Value;
                   DmOra.CadE145CldNUMEBQ.Value := ConsE145Nfv_RotaNUMEBQ.Value;
                   DmOra.CadE145CldSEQEBQ.Value := ConsE145Nfv_RotaSEQEBQ.Value;
                   DmOra.CadE145CldSEQMOV.Value := ConsE145ccdSEQMOV.Value;
                   DmOra.CadE145CldFILNFV.Value := ConsE145Nfv_RotaFILNFV.Value;
                   DmOra.CadE145CldSNFNFV.Value := ConsE145Nfv_RotaSNFNFV.Value;
                   DmOra.CadE145CldNUMNFV.Value := ConsE145Nfv_RotaNUMNFV.Value;
                   DmOra.CadE145Cld.Post;

                   ConsE145Nfv_Rota.Next;
                 end;
            end;
         ConsE145ccd.Next;
       end;
       ConsE145ccd.First;

    Screen.Cursor := crDefault;
    vaUfDescarga := '';
    Application.MessageBox('Manifesto Gerado com Sucesso','Confirmação',MB_ICONINFORMATION+MB_OK);
    btnMostrar.Enabled := false;
end;

procedure TFFormarManifesto.ConsE145ccdAfterScroll(DataSet: TDataSet);
begin
  DmOra.ConsE145Cld.Close;
  DmOra.ConsE145Cld.Parameters.ParamByName('CODEMP').Value := ConsE145ccdCODEMP.Value;
  DmOra.ConsE145Cld.Parameters.ParamByName('CODFIL').Value := ConsE145ccdCODFIL.Value;
  DmOra.ConsE145Cld.Parameters.ParamByName('NUMEBQ').Value := ConsE145ccdNUMEBQ.Value;
  DmOra.ConsE145Cld.Parameters.ParamByName('SEQMOV').Value := ConsE145ccdSEQMOV.Value;
  DmOra.ConsE145Cld.Open;
end;

procedure TFFormarManifesto.ConsE145ccdCalcFields(DataSet: TDataSet);
begin
  if ConsE145ccdTIPMOV.Value = 'C' then
     begin
       ConsE145ccdvaTipMov.Value := 'Carga';
     end
  else
  if ConsE145ccdTIPMOV.Value = 'P' then
     begin
       ConsE145ccdvaTipMov.Value := 'Passagem';
     end
  else
  if ConsE145ccdTIPMOV.Value = 'D' then
     begin
       ConsE145ccdvaTipMov.Value := 'Descarga';
     end;
end;

procedure TFFormarManifesto.dsCadE145EbqStateChange(Sender: TObject);
begin
   if DmOra.CadE145Ebq.State in [dsEdit] then
      begin
        btnGravarAlteracoes.Enabled := True;
      end
   else
      begin
        btnGravarAlteracoes.Enabled := false;
      end;
end;

procedure TFFormarManifesto.FormShow(Sender: TObject);
begin

 vaUfDescarga := '';
 DmOra.ConsE145Nfv.Close;
 DmOra.Cadusu_tRotManGer.Open;
 DmOra.Cadusu_tRotManGer.Close;
 DmOra.CadE145Ebq.Open;
 DmOra.CadE145Ebq.Close;
 ConsE145ccd.Close;
 DmOra.ConsE145Cld.Close;

end;

end.
