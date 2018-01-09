unit UAcertoViagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, Grids, DBGrids, Mask, rxToolEdit,
  rxCurrEdit, Buttons, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP;

type
  TFAcertoViagem = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    EdNumAne: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    EdCodEmp: TEdit;
    EdCodFil: TEdit;
    ConsE135Ane: TADOQuery;
    ConsE135AneCODEMP: TIntegerField;
    ConsE135AneCODFIL: TIntegerField;
    ConsE135AneNUMANE: TBCDField;
    ConsE135AneCODMTR: TIntegerField;
    ConsE135AnePLAVEI: TStringField;
    ConsE135AneNOMMOT: TStringField;
    ConsE135AneUSU_CODFOR: TIntegerField;
    ConsE135AneDATGER: TDateTimeField;
    Label4: TLabel;
    LCodMtr: TLabel;
    Label5: TLabel;
    LPlaVei: TLabel;
    Label6: TLabel;
    LDatGer: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label7: TLabel;
    Panel8: TPanel;
    Label8: TLabel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label9: TLabel;
    Panel14: TPanel;
    Label10: TLabel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Label11: TLabel;
    Panel18: TPanel;
    Panel19: TPanel;
    DBGrid4: TDBGrid;
    Panel20: TPanel;
    Label12: TLabel;
    Panel21: TPanel;
    DBGAdiantamentos: TDBGrid;
    Panel22: TPanel;
    DBGDespesas: TDBGrid;
    Panel23: TPanel;
    DBGTotalAcerto: TDBGrid;
    Label13: TLabel;
    DsCadUsu_TAdvAdt: TDataSource;
    CadUsu_TAdvAdt: TADOQuery;
    CadUsu_TAdvAdtUSU_CODEMP: TIntegerField;
    CadUsu_TAdvAdtUSU_CODFIL: TIntegerField;
    CadUsu_TAdvAdtUSU_NUMANE: TBCDField;
    CadUsu_TAdvAdtUSU_NUMADT: TIntegerField;
    CadUsu_TAdvAdtUSU_TIPADT: TStringField;
    CadUsu_TAdvAdtUSU_DESADT: TStringField;
    CadUsu_TAdvAdtUSU_NUMCCO: TStringField;
    CadUsu_TAdvAdtUSU_NUMCCD: TStringField;
    CadUsu_TAdvAdtUSU_VLRADT: TBCDField;
    CadUsu_TAdvAdtUSU_DATADT: TDateTimeField;
    CadUsu_TAdvAdtUSU_USUADT: TIntegerField;
    CadUsu_TAdvAdtUSU_SEQMDT: TIntegerField;
    CadUsu_TAdvAdtUSU_VLRGST: TBCDField;
    CadUsu_TAdvAdtUSU_VLRRST: TBCDField;
    CadUsu_TAdvAdtUSU_DATACT: TDateTimeField;
    CadUsu_TAdvAdtUSU_USUACT: TIntegerField;
    CadUsu_TAdvAdtUSU_SEQMCT: TIntegerField;
    CadUsu_TAdvAdtUSU_SITADT: TStringField;
    CadUsu_TAdvAdtUSU_ITESEL: TStringField;
    EdTotAdt: TCurrencyEdit;
    EdTotDsp: TCurrencyEdit;
    EdTotRst: TCurrencyEdit;
    CadUsu_TAdvAdtIteSel: TStringField;
    ExecutaSql: TADOCommand;
    CadUsu_TAdvDsp: TADOQuery;
    CadUsu_TAdvDspUSU_CODEMP: TIntegerField;
    CadUsu_TAdvDspUSU_CODFIL: TIntegerField;
    CadUsu_TAdvDspUSU_NUMANE: TBCDField;
    CadUsu_TAdvDspUSU_NUMADT: TIntegerField;
    CadUsu_TAdvDspUSU_SEQDES: TIntegerField;
    CadUsu_TAdvDspUSU_CODDES: TIntegerField;
    CadUsu_TAdvDspUSU_DESDES: TStringField;
    CadUsu_TAdvDspUSU_VLRDES: TBCDField;
    CadUsu_TAdvDspUSU_DATDES: TDateTimeField;
    CadUsu_TAdvDspUSU_USUDES: TIntegerField;
    CadUsu_TAdvDspUSU_CTAFIN: TIntegerField;
    CadUsu_TAdvDspUSU_CTARED: TIntegerField;
    CadUsu_TAdvDspUSU_CODCCU: TStringField;
    DsCadUsu_TAdvDsp: TDataSource;
    ConsTotalAcerto: TADOQuery;
    ConsTotalAcertoUSU_CODEMP: TIntegerField;
    ConsTotalAcertoUSU_CODFIL: TIntegerField;
    ConsTotalAcertoUSU_NUMANE: TBCDField;
    ConsTotalAcertoUSU_NUMADT: TIntegerField;
    ConsTotalAcertoUSU_VLRADT: TBCDField;
    ConsTotalAcertoUSU_DATADT: TDateTimeField;
    ConsTotalAcertoTOTDES: TFMTBCDField;
    ConsTotalAcertoTOTRES: TFMTBCDField;
    DsConsTotalAcerto: TDataSource;
    SapSid: TIdHTTP;
    BMovTesouraria: TBitBtn;
    Panel24: TPanel;
    BFecharAcerto: TBitBtn;
    ConsTotalGasto: TADOQuery;
    ConsTotalGastoUSU_CODEMP: TIntegerField;
    ConsTotalGastoUSU_CODFIL: TIntegerField;
    ConsTotalGastoUSU_NUMANE: TBCDField;
    ConsTotalGastoUSU_NUMADT: TIntegerField;
    ConsTotalGastoUSU_TIPADT: TStringField;
    ConsTotalGastoUSU_DESADT: TStringField;
    ConsTotalGastoUSU_NUMCCO: TStringField;
    ConsTotalGastoUSU_NUMCCD: TStringField;
    ConsTotalGastoUSU_VLRADT: TBCDField;
    ConsTotalGastoUSU_DATADT: TDateTimeField;
    ConsTotalGastoUSU_USUADT: TIntegerField;
    ConsTotalGastoUSU_SEQMDT: TIntegerField;
    ConsTotalGastoUSU_VLRGST: TBCDField;
    ConsTotalGastoUSU_VLRRST: TBCDField;
    ConsTotalGastoUSU_DATACT: TDateTimeField;
    ConsTotalGastoUSU_USUACT: TIntegerField;
    ConsTotalGastoUSU_SEQMCT: TIntegerField;
    ConsTotalGastoUSU_SITADT: TStringField;
    ConsTotalGastoUSU_ITESEL: TStringField;
    ConsTotalGastoTOTDES: TFMTBCDField;
    ConsTotalGastoTOTRES: TFMTBCDField;
    ConsDspAdt: TADOQuery;
    ConsDspAdtUSU_CODEMP: TIntegerField;
    ConsDspAdtUSU_CODFIL: TIntegerField;
    ConsDspAdtUSU_NUMANE: TBCDField;
    ConsDspAdtUSU_NUMADT: TIntegerField;
    ConsDspAdtUSU_SEQDES: TIntegerField;
    ConsDspAdtUSU_CODDES: TIntegerField;
    ConsDspAdtUSU_DESDES: TStringField;
    ConsDspAdtUSU_VLRDES: TBCDField;
    ConsDspAdtUSU_DATDES: TDateTimeField;
    ConsDspAdtUSU_USUDES: TIntegerField;
    ConsDspAdtUSU_CTAFIN: TIntegerField;
    ConsDspAdtUSU_CTARED: TIntegerField;
    ConsDspAdtUSU_CODCCU: TStringField;
    LStatus: TLabel;
    ConsE501Tcp: TADOQuery;
    ConsE501TcpCODEMP: TIntegerField;
    ConsE501TcpCODFIL: TIntegerField;
    ConsE501TcpNUMTIT: TStringField;
    ConsE501TcpCODFOR: TIntegerField;
    ConsE501TcpCODTNS: TStringField;
    ConsE501TcpSITTIT: TStringField;
    ConsE501TcpDATEMI: TDateTimeField;
    ConsE501TcpVCTORI: TDateTimeField;
    ConsE501TcpVCTPRO: TDateTimeField;
    ConsE501TcpVLRORI: TBCDField;
    ConsE501TcpVLRABE: TBCDField;
    ConsE501TcpCTAFIN: TIntegerField;
    ConsE501TcpCTARED: TIntegerField;
    ConsE501TcpCODCCU: TStringField;
    ConsE501TcpUSU_NUMANE: TIntegerField;
    DsConsE501Tcp: TDataSource;
    BImprimirAcerto: TBitBtn;
    CadUsu_TAdvAdtUSU_VLRSAL: TBCDField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdNumAneExit(Sender: TObject);
    procedure CadUsu_TAdvAdtAfterInsert(DataSet: TDataSet);
    procedure DBGAdiantamentosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGAdiantamentosEnter(Sender: TObject);
    procedure DBGAdiantamentosExit(Sender: TObject);
    procedure DBGAdiantamentosColExit(Sender: TObject);
    procedure DsCadUsu_TAdvAdtStateChange(Sender: TObject);
    procedure CadUsu_TAdvAdtBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure CadUsu_TAdvAdtAfterPost(DataSet: TDataSet);
    procedure CadUsu_TAdvAdtAfterDelete(DataSet: TDataSet);
    procedure DBGAdiantamentosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGAdiantamentosCellClick(Column: TColumn);
    procedure CadUsu_TAdvDspBeforeInsert(DataSet: TDataSet);
    procedure CadUsu_TAdvDspAfterInsert(DataSet: TDataSet);
    procedure DsCadUsu_TAdvDspStateChange(Sender: TObject);
    procedure CadUsu_TAdvDspBeforePost(DataSet: TDataSet);
    procedure DBGDespesasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGDespesasEnter(Sender: TObject);
    procedure DBGDespesasExit(Sender: TObject);
    procedure DBGDespesasColExit(Sender: TObject);
    procedure CadUsu_TAdvDspAfterEdit(DataSet: TDataSet);
    procedure DBGDespesasEditButtonClick(Sender: TObject);
    procedure CadUsu_TAdvDspAfterPost(DataSet: TDataSet);
    procedure CadUsu_TAdvDspAfterDelete(DataSet: TDataSet);
    procedure DBGTotalAcertoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGDespesasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BMovTesourariaClick(Sender: TObject);
    procedure BFecharAcertoClick(Sender: TObject);
    procedure CadUsu_TAdvAdtBeforeDelete(DataSet: TDataSet);
    procedure CadUsu_TAdvDspBeforeDelete(DataSet: TDataSet);
    procedure BImprimirAcertoClick(Sender: TObject);
  private
    { Private declarations }
    vaStatusAdt,vaStatusDsp : TDataSetState;
    vnTotAdt : double;
    vnTotDes : double;
    vnTotRes : double;
    vaAdtSel : string;
  public
    { Public declarations }
  end;

var
  FAcertoViagem: TFAcertoViagem;

implementation

uses UDmOra, UPrincipal, UConsGeralNfEnt, UDm2, UDmRave, UDm;

{$R *.dfm}

procedure TFAcertoViagem.BFecharAcertoClick(Sender: TObject);
var
vA_URL, vA_BasQry, xRetorno : String;
xPostQuery		              : TStringList;

vaCodEmp,vaCodFil : string;
vaNumTit,vaCodTpt,vaCodFor,vaCodTns,vaDatEnt,vaDatEmi,vaVctOri,
vaVlrOri,vaVctPro,vaCodMoe,vaCodPor,vaCodCrt,vaNumCco,vaCtaFin,vaCtaRed,vaCodCcu,vaVlrCta,vaVlrRat : string;
vaVlrMov,vaHisMov,vaNumAne : string;
vnSeqMov : integer;
begin
    if not CadUsu_TAdvAdt.IsEmpty then
       begin//1
          LStatus.Caption := 'Conectando ao Sid..';
          Refresh;
          xPostQuery := TStringList.Create;

          Dm2.ADOUsuT000sis.Close;
          Dm2.ADOUsuT000sis.Open;
          vA_URL := Dm2.ADOUsuT000sisUSU_URLSRV.Value;
          vA_BasQry := Dm2.ADOUsuT000sisUSU_BASQRY.Value;

          xPostQuery.Add('ACAO=EXESENHA');
          xPostQuery.Add('&NOMUSU=sapienssid');
          xPostQuery.Add('&SENUSU=sapienssid');

          // Executar ação de autenticação no Sapiens SID
          xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

          // Verificar se a ação executou com sucesso
          if (StrToIntDef(Copy(xRetorno, 1, 5), 0)) = 0 then
              raise Exception.Create('ERRO - Conexão SID não foi estabelecida: ' + xRetorno)
          else
              vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;

          //PERCORRE OS ADIANTAENTOS PARA GERAR O ACERTO
          CadUsu_TAdvAdt.First;
          while not CadUsu_TAdvAdt.Eof do
             begin//2                                        //SE FOI REALIZADO O MOVIMENTO NA TESOURARIA
               if (CadUsu_TAdvAdtUSU_SITADT.Value = 'A') and (CadUsu_TAdvAdtUSU_SEQMDT.Value <> 0) then
                  begin//a
                     //CONSULTA O TOTAL GASTO DO ADIANTAMENTO
                     ConsTotalGasto.Close;
                     ConsTotalGasto.Parameters.ParamByName('CODEMP').Value := CadUsu_TAdvAdtUSU_CODEMP.Value;
                     ConsTotalGasto.Parameters.ParamByName('CODFIL').Value := CadUsu_TAdvAdtUSU_CODFIL.Value;
                     ConsTotalGasto.Parameters.ParamByName('NUMANE').Value := CadUsu_TAdvAdtUSU_NUMANE.Value;
                     ConsTotalGasto.Parameters.ParamByName('NUMADT').Value := CadUsu_TAdvAdtUSU_NUMADT.Value;
                     ConsTotalGasto.Open;
                     if ConsTotalGastoTOTDES.AsFloat > 0 then
                        begin//a1

                           vaCodEmp := IntToStr(CadUsu_TAdvAdtUSU_CODEMP.AsInteger);
                           vaCodFil := IntToStr(CadUsu_TAdvAdtUSU_CODFIL.AsInteger);
                           LStatus.Caption := 'Logando na filial '+vaCodFil;
                           Refresh;
                           //loga na filial
                           xPostQuery.Clear;
                           xPostQuery.Add('ACAO=SID.Srv.AltEmpFil');
                           xPostQuery.Add('&CodEmp='+vaCodEmp);
                           xPostQuery.Add('&CodFil='+vaCodFil);
                           xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                           LStatus.Caption := 'Gerando título..';
                           Refresh;

                           //preenxe as variaveis para gerar o titulo
                           vaNumTit := 'RDV-'+ IntToStr(CadUsu_TAdvAdtUSU_NUMANE.AsInteger)+'-'+IntToStr(CadUsu_TAdvAdtUSU_NUMADT.AsInteger) ;
                           vaCodTpt := 'RDV';
                           vaCodFor := IntToStr(ConsE135AneUSU_CODFOR.AsInteger);
                           vaCodTns := '90515';
                           vaDatEnt := FormatDateTime('DD/MM/YYYY',date);
                           vaDatEmi := FormatDateTime('DD/MM/YYYY',date);
                           vaVctOri := FormatDateTime('DD/MM/YYYY',date);
                           vaVctPro := FormatDateTime('DD/MM/YYYY',date);
                           vaVlrOri := FloatToStr(ConsTotalGastoTOTDES.AsFloat);
                           vaCodMoe := '01';
                           vaCodPor := '999';
                           vaCodCrt := '99';
                           vaNumAne := IntToStr(CadUsu_TAdvAdtUSU_NUMANE.AsInteger);

                           //gera o titulo
                           xPostQuery.Clear;
                           xPostQuery.Add('ACAO=SID.Tcp.Gravar');
                           xPostQuery.Add('&NumTit='+vaNumTit);
                           xPostQuery.Add('&CodTpt='+vaCodTpt);
                           xPostQuery.Add('&CodFor='+vaCodFor);
                           xPostQuery.Add('&CodTns='+vaCodTns);
                           xPostQuery.Add('&DatEnt='+vaDatEnt);
                           xPostQuery.Add('&DatEmi='+vaDatEmi);
                           xPostQuery.Add('&VctOri='+vaVctOri);
                           xPostQuery.Add('&VctPro='+vaVctPro);
                           xPostQuery.Add('&VlrOri='+vaVlrOri);
                           xPostQuery.Add('&CodMoe='+vaCodMoe);
                           xPostQuery.Add('&CodPor='+vaCodPor);
                           xPostQuery.Add('&CodCrt='+vaCodCrt);
                           xPostQuery.Add('&CtaFin='+'1555');
                           xPostQuery.Add('&CtaRed='+'3500');
                           xPostQuery.Add('&CodCcu='+'1130');
                           xPostQuery.Add('&USU_NumAne='+vaNumAne);
                           xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                           if xRetorno <> 'OK' then
                              begin
                                LStatus.Caption := '';
                                Refresh;
                                Application.MessageBox(PChar(xRetorno),'Aviso',+MB_ICONWARNING+MB_OK);
                                Abort;
                              end
                           else
                              begin//3
                                   LStatus.Caption := 'Realizando baixa do título..';
                                   Refresh;

                                   //realiza a baixa do titulo
                                   vaCodTns := '90550';
                                   vaNumCco := CadUsu_TAdvAdtUSU_NUMCCD.Value;

                                   xPostQuery.Clear;
                                   xPostQuery.Add('ACAO=SID.Tcp.Baixar');
                                   xPostQuery.Add('&NumTit='+vaNumTit);
                                   xPostQuery.Add('&CodTpt='+vaCodTpt);
                                   xPostQuery.Add('&CodFor='+vaCodFor);
                                   xPostQuery.Add('&CodTns='+vaCodTns);
                                   xPostQuery.Add('&NumCco='+vaNumCco);
                                   xPostQuery.Add('&VlrMov='+vaVlrOri);
                                   xPostQuery.Add('&TnsCxb='+'90655');//TRANSACAO DA TESOURARIA
                                   xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));
                                   if xRetorno <> 'OK' then
                                      begin
                                        LStatus.Caption := '';
                                        Refresh;
                                        raise Exception.Create(xRetorno);
                                      end
                                   else
                                      begin
                                          LStatus.Caption := 'Realizando movimento por baixa de título na tesouraria..';
                                          Refresh;

                                          //FAZ A SAIDA DA TESOURARIA PELO PAGAMENTO DO TITULO COM VALOR GASTO
                                          vaNumCco := CadUsu_TAdvAdtUSU_NUMCCD.Value;
                                          vaCodTns := '90655';
                                          vaVlrMov := FloatToStr(ConsTotalGastoTOTDES.AsFloat);
                                          vaHisMov := 'BAIXA DE TITULO RDV REF CARGA: '+ IntToStr(CadUsu_TAdvAdtUSU_NUMANE.AsInteger);

                                          // GRAVA MOVIMENTO
                                          xPostQuery.Clear;
                                          xPostQuery.Add('ACAO=SID.Tes.Gravar');
                                          xPostQuery.Add('&NumCco='+vaNumCco);
                                          xPostQuery.Add('&CodTns='+vaCodTns);
                                          xPostQuery.Add('&VlrMov='+vaVlrMov);
                                          xPostQuery.Add('&HisMov='+vaHisMov);

                                          // Executar ação
                                          xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                                          try
                                             vnSeqMov := StrToInt(xRetorno);
                                          except
                                             LStatus.Caption := '';
                                             Refresh;
                                             raise Exception.Create(xRetorno);
                                          end;

                                          //GRAVA NO ADIANTAMENTO A SEQUENCIA DO MOVIMENTO NA TESOURARIA, DATA E VALORES
                                          CadUsu_TAdvAdt.Edit;
                                          CadUsu_TAdvAdtUSU_SEQMCT.Value := vnSeqMov;
                                          CadUsu_TAdvAdtUSU_DATACT.Value := date;
                                          CadUsu_TAdvAdtUSU_USUACT.Value := FPrincipal.cd_usuario;
                                          CadUsu_TAdvAdtUSU_VLRGST.Value := ConsTotalGastoTOTDES.AsFloat;
                                          CadUsu_TAdvAdtUSU_VLRRST.Value := ConsTotalGastoTOTRES.AsFloat;
                                          CadUsu_TAdvAdtUSU_SITADT.Value := 'F';
                                          CadUsu_TAdvAdt.Post;

                                         //SE O TIPO DO ADIANTAMENTO RETORNA SALDO
                                         DmOra.ConsSql.Close;
                                         DmOra.ConsSql.SQL.Clear;
                                         DmOra.ConsSql.SQL.Add('SELECT USU_TADVTAD.USU_RETSAL FROM USU_TADVTAD WHERE USU_CODFIL = :CODFIL AND');
                                         DmOra.ConsSql.SQL.Add('USU_TIPADT = :TIPADT');
                                         DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := CadUsu_TAdvAdtUSU_CODFIL.Value;
                                         DmOra.ConsSql.Parameters.ParamByName('TIPADT').Value := CadUsu_TAdvAdtUSU_TIPADT.Value;
                                         DmOra.ConsSql.Open;
                                         if (DmOra.ConsSql.FieldByName('USU_RETSAL').Value = 'S') and (ConsTotalGastoTOTRES.AsFloat > 0) then
                                            begin
                                               LStatus.Caption := 'Retornando saldo para o caixa origem..';
                                               Refresh;

                                               //primeiro faz o movimento de saida da conta
                                                vaNumCco := CadUsu_TAdvAdtUSU_NUMCCD.Value;
                                                vaCodTns := '90657';
                                                vaVlrMov := FloatToStr(ConsTotalGastoTOTRES.AsFloat);
                                                vaHisMov := 'RETORNO DE SALDO CARGA: '+ IntToStr(CadUsu_TAdvAdtUSU_NUMANE.AsInteger)+' CONTA DESTINO  '+CadUsu_TAdvAdtUSU_NUMCCO.AsString;

                                                // GRAVA MOVIMENTO
                                                xPostQuery.Clear;
                                                xPostQuery.Add('ACAO=SID.Tes.Gravar');
                                                xPostQuery.Add('&NumCco='+vaNumCco);
                                                xPostQuery.Add('&CodTns='+vaCodTns);
                                                xPostQuery.Add('&VlrMov='+vaVlrMov);
                                                xPostQuery.Add('&HisMov='+vaHisMov);

                                                // Executar ação
                                                xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                                                try
                                                   vnSeqMov := StrToInt(xRetorno);
                                                except
                                                   LStatus.Caption := '';
                                                   Refresh;
                                                   raise Exception.Create('Não foi possivel gerar o movimento na tesouraria');
                                                end;

                                                //-----------

                                                //agora faz o movimento de entrada na conta que foi origem do adiantamento
                                                vaNumCco := CadUsu_TAdvAdtUSU_NUMCCO.Value;
                                                vaCodTns := '90617';
                                                vaVlrMov := FloatToStr(ConsTotalGastoTOTRES.AsFloat);
                                                vaHisMov := 'RETORNO DE SALDO CARGA: '+ IntToStr(CadUsu_TAdvAdtUSU_NUMANE.AsInteger)+' CONTA ORIGEM '+CadUsu_TAdvAdtUSU_NUMCCD.AsString;

                                                // GRAVA MOVIMENTO
                                                xPostQuery.Clear;
                                                xPostQuery.Add('ACAO=SID.Tes.Gravar');
                                                xPostQuery.Add('&NumCco='+vaNumCco);
                                                xPostQuery.Add('&CodTns='+vaCodTns);
                                                xPostQuery.Add('&VlrMov='+vaVlrMov);
                                                xPostQuery.Add('&HisMov='+vaHisMov);

                                                // Executar ação
                                                xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                                                try
                                                   vnSeqMov := StrToInt(xRetorno);
                                                except
                                                   LStatus.Caption := '';
                                                   Refresh;
                                                   raise Exception.Create('Não foi possivel gerar o movimento na tesouraria');
                                                end;
                                            end;

                                      end;
                              end;//3
                        end;//a1
                  end;//a

               CadUsu_TAdvAdt.Next;
             end;//2
               LStatus.Caption := '';
               Refresh;
               MessageDlg('Fechamento realizado com sucesso!!',mtInformation,[mbOK],0);
               EdNumAneExit(Sender);
       end;//1
end;

procedure TFAcertoViagem.BImprimirAcertoClick(Sender: TObject);
var vnSaldo_Pedagio,vnTotal_Restituir,vnTotal_RestituirFilial : Double;
    vaCodFil : string;
begin
    if not CadUsu_TAdvAdt.IsEmpty then
      begin//1

          //SOLICITA A FILIAL PARA IMPRESSAO
          vaCodFil := InputBox('Filial Impressão','Informe a Filial','');
          if (vaCodFil <> '1') and (vaCodFil <> '101') then
             begin
               MessageDlg('Filial não encontrada!',mtWarning,[mbOK],0);
               Abort;
             end;


           //CONSULTA OS ADIANTAMENTOS
           DmRave.ConsUsu_TAdvAdt.Close;
           DmRave.ConsUsu_TAdvAdt.Parameters.ParamByName('CODFIL').Value := StrToInt(vaCodFil);
           DmRave.ConsUsu_TAdvAdt.Parameters.ParamByName('NUMANE').Value := StrToInt(TRIM(EdNumAne.Text));
           DmRave.ConsUsu_TAdvAdt.Open;
           //consulta o saldo restante de pedagio pq esse valor nao é devolvido para empresa fica no cartao
           DmRave.ConsUsu_TAdvAdt.First;
           vnSaldo_Pedagio := 0;
           vnTotal_RestituirFilial := 0;
           while not DmRave.ConsUsu_TAdvAdt.Eof do
              begin
                if DmRave.ConsUsu_TAdvAdtUSU_TIPADT.Value = 'AVP' then//SOMA SÓ OS VALE PEDAGIO
                   begin
                      vnSaldo_Pedagio := vnSaldo_Pedagio + DmRave.ConsUsu_TAdvAdtUSU_VLRRST.Value;
                   end;

                   vnTotal_RestituirFilial := vnTotal_RestituirFilial + DmRave.ConsUsu_TAdvAdtUSU_VLRRST.Value;

                DmRave.ConsUsu_TAdvAdt.Next;
              end;
           DmRave.ConsUsu_TAdvAdt.First;


           //calcula o total a ser restituido em dinheiro para empresa
           vnTotal_Restituir := vnTotal_RestituirFilial - vnSaldo_Pedagio;

           //CONSULTA AS DESPESAS
           DmRave.ConsUsu_TAdvDsp.Close;
           DmRave.ConsUsu_TAdvDsp.Parameters.ParamByName('CODFIL').Value := StrToInt(vaCodFil);
           DmRave.ConsUsu_TAdvDsp.Parameters.ParamByName('NUMANE').Value := StrToInt(TRIM(EdNumAne.Text));
           DmRave.ConsUsu_TAdvDsp.Open;


            DmRave.RvAcertoViagem.SetParam('CARGA',TRIM(EdNumAne.Text));
            DmRave.RvAcertoViagem.SetParam('DATGER',DateToStr(ConsE135AneDATGER.AsDateTime));
            DmRave.RvAcertoViagem.SetParam('MOTORISTA',ConsE135AneNOMMOT.AsString);
            DmRave.RvAcertoViagem.SetParam('USUARIO',Dm.ConsUsuarioLoginUSU_NOMUSU.AsString);
            DmRave.RvAcertoViagem.SetParam('PEDAGIO',FloatToStr(vnSaldo_Pedagio));
            DmRave.RvAcertoViagem.SetParam('TOTALRESTITUIR',FloatToStr(vnTotal_Restituir));
            DmRave.RvAcertoViagem.Execute;


      end;//1
end;

procedure TFAcertoViagem.BMovTesourariaClick(Sender: TObject);
var
vA_URL, vA_BasQry, xRetorno : String;
xPostQuery		              : TStringList;
vaCodEmp,vaCodFil,vaNumCco,vaCodTns,vaVlrMov,vaDatMov,vaHisMov : string;
vnSeqMov : integer;
begin
   if not CadUsu_TAdvAdt.IsEmpty then
      begin//1
          LStatus.Caption := 'Conectando ao Sid..';
          Refresh;
          xPostQuery := TStringList.Create;

          Dm2.ADOUsuT000sis.Close;
          Dm2.ADOUsuT000sis.Open;
          vA_URL := Dm2.ADOUsuT000sisUSU_URLSRV.Value;
          vA_BasQry := Dm2.ADOUsuT000sisUSU_BASQRY.Value;

          xPostQuery.Add('ACAO=EXESENHA');
          xPostQuery.Add('&NOMUSU=sapienssid');
          xPostQuery.Add('&SENUSU=sapienssid');

          // Executar ação de autenticação no Sapiens SID
          xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

          // Verificar se a ação executou com sucesso
          if (StrToIntDef(Copy(xRetorno, 1, 5), 0)) = 0 then
              raise Exception.Create('ERRO - Conexão SID não foi estabelecida: ' + xRetorno)
          else
              vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;

          //percorre os adiantamentos para realizar o movimento na tesouraria
          CadUsu_TAdvAdt.First;
          while not CadUsu_TAdvAdt.Eof do
             begin//2
                if CadUsu_TAdvAdtUSU_SEQMDT.Value = 0 then
                   begin//3
                      vaCodEmp := IntToStr(CadUsu_TAdvAdtUSU_CODEMP.AsInteger);
                      vaCodFil := IntToStr(CadUsu_TAdvAdtUSU_CODFIL.AsInteger);
                      LStatus.Caption := 'Logando na filial '+vaCodFil;
                      Refresh;
                      //loga na filial
                      xPostQuery.Clear;
                      xPostQuery.Add('ACAO=SID.Srv.AltEmpFil');
                      xPostQuery.Add('&CodEmp='+vaCodEmp);
                      xPostQuery.Add('&CodFil='+vaCodFil);
                      xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                      LStatus.Caption := 'Gerando tranferência / saída conta origem';
                      Refresh;
                      //primeiro faz o movimento de saida da conta
                      vaNumCco := CadUsu_TAdvAdtUSU_NUMCCO.Value;
                      vaCodTns := '90657';
                      vaVlrMov := FloatToStr(CadUsu_TAdvAdtUSU_VLRADT.AsFloat - CadUsu_TAdvAdtUSU_VLRSAL.AsFloat);//desconta o saldo da conta
                      vaHisMov := 'TRANSF DE ADV CARGA: '+ IntToStr(CadUsu_TAdvAdtUSU_NUMANE.AsInteger)+' CONTA DESTINO  '+CadUsu_TAdvAdtUSU_NUMCCD.AsString;
                      vaDatMov := DateToStr(CadUsu_TAdvAdtUSU_DATADT.AsDateTime);
                      // GRAVA MOVIMENTO
                      xPostQuery.Clear;
                      xPostQuery.Add('ACAO=SID.Tes.Gravar');
                      xPostQuery.Add('&NumCco='+vaNumCco);
                      xPostQuery.Add('&CodTns='+vaCodTns);
                      xPostQuery.Add('&VlrMov='+vaVlrMov);
                      xPostQuery.Add('&HisMov='+vaHisMov);
                      xPostQuery.Add('&DatMov='+vaDatMov);

                      // Executar ação
                      xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                      try
                         vnSeqMov := StrToInt(xRetorno);
                      except
                         LStatus.Caption := '';
                         raise Exception.Create('Não foi possivel gerar o movimento na tesouraria');
                      end;

                      //GRAVA A SEQUENCIA DO MOVIMENTO DE SAIDA DA CONTA ORIGEM
                      CadUsu_TAdvAdt.Edit;
                      CadUsu_TAdvAdtUSU_SEQMDT.Value := vnSeqMov;
                      CadUsu_TAdvAdt.Post;

                      LStatus.Caption := 'Gerando tranferência / entrada conta destino';
                      Refresh;
                      //agora faz o movimento de entrada naconta de despesas de viagem
                      vaNumCco := CadUsu_TAdvAdtUSU_NUMCCD.Value;
                      vaCodTns := '90617';
                      vaVlrMov := FloatToStr(CadUsu_TAdvAdtUSU_VLRADT.AsFloat - CadUsu_TAdvAdtUSU_VLRSAL.AsFloat);
                      vaHisMov := 'TRANSF DE ADV CARGA: '+ IntToStr(CadUsu_TAdvAdtUSU_NUMANE.AsInteger)+' CONTA ORIGEM '+CadUsu_TAdvAdtUSU_NUMCCO.AsString;
                      vaDatMov := DateToStr(CadUsu_TAdvAdtUSU_DATADT.AsDateTime);

                      // GRAVA MOVIMENTO
                      xPostQuery.Clear;
                      xPostQuery.Add('ACAO=SID.Tes.Gravar');
                      xPostQuery.Add('&NumCco='+vaNumCco);
                      xPostQuery.Add('&CodTns='+vaCodTns);
                      xPostQuery.Add('&VlrMov='+vaVlrMov);
                      xPostQuery.Add('&HisMov='+vaHisMov);
                      xPostQuery.Add('&DatMov='+vaDatMov);

                      // Executar ação
                      xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                      try
                         vnSeqMov := StrToInt(xRetorno);
                      except
                         LStatus.Caption := '';
                         raise Exception.Create('Não foi possivel gerar o movimento na tesouraria');
                      end;
                   end;//3
               CadUsu_TAdvAdt.Next;
             end;//2
          CadUsu_TAdvAdt.First;
          LStatus.Caption := '';
          Refresh;
      end;//1
      LStatus.Caption := '';

end;

procedure TFAcertoViagem.CadUsu_TAdvAdtAfterDelete(DataSet: TDataSet);
begin
    //CONSULTA O TOTAL DE ADIANTAMENTOS
    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('SELECT SUM(USU_TADVADT.USU_VLRADT) AS TOTADT FROM USU_TADVADT');
    DmOra.ConsSql.SQL.Add('WHERE');
    DmOra.ConsSql.SQL.Add('USU_TADVADT.USU_CODEMP = :CODEMP AND');
    DmOra.ConsSql.SQL.Add('USU_TADVADT.USU_NUMANE = :NUMANE');
    DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
    DmOra.ConsSql.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
    DmOra.ConsSql.Open;
    if not DmOra.ConsSql.IsEmpty then
       begin
         vnTotAdt := DmOra.ConsSql.FieldByName('TOTADT').AsFloat;
       end
    else
       begin
         vnTotAdt := 0;
       end;
    EdTotAdt.Value := vnTotAdt;

    //CONSULTA OS TOTAIS DE ACERTO
    ConsTotalAcerto.Close;
    ConsTotalAcerto.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
    ConsTotalAcerto.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
    ConsTotalAcerto.Open;
    EdTotRst.Value := EdTotAdt.Value - EdTotDsp.Value;
end;

procedure TFAcertoViagem.CadUsu_TAdvAdtAfterInsert(DataSet: TDataSet);
begin

    CadUsu_TAdvAdtUSU_CODEMP.Value := StrToInt(trim(EdCodEmp.Text));
    CadUsu_TAdvAdtUSU_NUMANE.Value := StrToInt(trim(EdNumAne.Text));
    CadUsu_TAdvAdtUSU_DATADT.Value := date;
    CadUsu_TAdvAdtUSU_USUADT.Value := FPrincipal.cd_usuario;
    CadUsu_TAdvAdtUSU_VLRADT.Value := 0;
    CadUsu_TAdvAdtUSU_VLRGST.Value := 0;
    CadUsu_TAdvAdtUSU_VLRRST.Value := 0;
    CadUsu_TAdvAdtUSU_SITADT.Value := 'A';
    CadUsu_TAdvAdtUSU_ITESEL.Value := 'N';

    //busca a sequencia para o adiantamento
    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('SELECT USU_NUMADT FROM USU_TADVADT');
    DmOra.ConsSql.SQL.Add('WHERE');
    DmOra.ConsSql.SQL.Add('USU_CODEMP = :CODEMP AND');
    DmOra.ConsSql.SQL.Add('USU_NUMANE = :NUMANE');
    DmOra.ConsSql.SQL.Add('ORDER BY USU_NUMADT DESC');
    DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
    DmOra.ConsSql.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
    DmOra.ConsSql.Open;
    if DmOra.ConsSql.IsEmpty then
       begin
         CadUsu_TAdvAdtUSU_NUMADT.Value := 1;
       end
    else
       begin
         CadUsu_TAdvAdtUSU_NUMADT.Value := DmOra.ConsSql.FieldByName('USU_NUMADT').AsInteger + 1;
       end;

    DBGAdiantamentos.SelectedIndex := 2;
end;

procedure TFAcertoViagem.CadUsu_TAdvAdtAfterPost(DataSet: TDataSet);
begin
    //CONSULTA O TOTAL DE ADIANTAMENTOS
    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('SELECT SUM(USU_TADVADT.USU_VLRADT) AS TOTADT FROM USU_TADVADT');
    DmOra.ConsSql.SQL.Add('WHERE');
    DmOra.ConsSql.SQL.Add('USU_TADVADT.USU_CODEMP = :CODEMP AND');
    DmOra.ConsSql.SQL.Add('USU_TADVADT.USU_NUMANE = :NUMANE');
    DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
    DmOra.ConsSql.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
    DmOra.ConsSql.Open;
    if not DmOra.ConsSql.IsEmpty then
       begin
         vnTotAdt := DmOra.ConsSql.FieldByName('TOTADT').AsFloat;
       end
    else
       begin
         vnTotAdt := 0;
       end;
    EdTotAdt.Value := vnTotAdt;

    //CONSULTA OS TOTAIS DE ACERTO
    ConsTotalAcerto.Close;
    ConsTotalAcerto.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
    ConsTotalAcerto.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
    ConsTotalAcerto.Open;
    EdTotRst.Value := EdTotAdt.Value - EdTotDsp.Value;
end;

procedure TFAcertoViagem.CadUsu_TAdvAdtBeforeDelete(DataSet: TDataSet);
begin
    //CONTA SE EXISTE DESPESAS LANÇADAS PARA O ADIANTAMENTO, SE EXISTIR NAO DEIXA APAGAR O REGISTRO
    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('SELECT USU_TADVDSP.* FROM USU_TADVDSP');
    DmOra.ConsSql.SQL.Add('WHERE');
    DmOra.ConsSql.SQL.Add('USU_TADVDSP.USU_CODEMP = :CODEMP AND');
    DmOra.ConsSql.SQL.Add('USU_TADVDSP.USU_CODFIL = :CODFIL AND');
    DmOra.ConsSql.SQL.Add('USU_TADVDSP.USU_NUMANE = :NUMANE AND');
    DmOra.ConsSql.SQL.Add('USU_TADVDSP.USU_NUMADT = :NUMADT');
    DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := CadUsu_TAdvAdtUSU_CODEMP.Value;
    DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := CadUsu_TAdvAdtUSU_CODFIL.Value;
    DmOra.ConsSql.Parameters.ParamByName('NUMANE').Value := CadUsu_TAdvAdtUSU_NUMANE.Value;
    DmOra.ConsSql.Parameters.ParamByName('NUMADT').Value := CadUsu_TAdvAdtUSU_NUMADT.Value;
    DmOra.ConsSql.Open;
    if not DmOra.ConsSql.IsEmpty then
       begin
         MessageDlg('Não é possível excluir adiantamento, existem despesas vinculadas ao mesmo',mtWarning,[mbOK],0);
         Abort;
       end;


end;

procedure TFAcertoViagem.CadUsu_TAdvAdtBeforePost(DataSet: TDataSet);
begin
  //VALIDA OS DADOS DIGITADOS

  //valida filial
  if CadUsu_TAdvAdtUSU_CODFIL.Value = 0 then
     begin
       MessageDlg('Informe a Filial',mtWarning,[mbOK],0);
       DBGAdiantamentos.SelectedIndex := 2;
       Abort;
     end;

  DmOra.ConsSql.Close;
  DmOra.ConsSql.SQL.Clear;
  DmOra.ConsSql.SQL.Add('SELECT E070FIL.CODEMP,E070FIL.CODFIL');
  DmOra.ConsSql.SQL.Add('FROM E070FIL');
  DmOra.ConsSql.SQL.Add('WHERE');
  DmOra.ConsSql.SQL.Add('E070FIL.CODEMP = :CODEMP AND');
  DmOra.ConsSql.SQL.Add('E070FIL.CODFIL = :CODFIL');
  DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
  DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := CadUsu_TAdvAdtUSU_CODFIL.Value;
  DmOra.ConsSql.Open;
  if DmOra.ConsSql.IsEmpty then
     begin
       MessageDlg('Filial não existe!',mtError,[mbOK],0);
       DBGAdiantamentos.SelectedIndex := 2;
       Abort;
    end;
  //fim valida filial

  //VALIDA TIPO DE ADIANTAMENTO
  if trim(CadUsu_TAdvAdtUSU_TIPADT.AsString) = '' then
     begin
       MessageDlg('Informe o Tipo de Adiantamento',mtWarning,[mbOK],0);
       DBGAdiantamentos.SelectedIndex := 3;
       Abort;
     end;

  DmOra.ConsSql.Close;
  DmOra.ConsSql.SQL.Clear;
  DmOra.ConsSql.SQL.Add('SELECT * FROM USU_TADVTAD');
  DmOra.ConsSql.SQL.Add('WHERE');
  DmOra.ConsSql.SQL.Add('USU_CODEMP = :CODEMP AND');
  DmOra.ConsSql.SQL.Add('USU_CODFIL = :CODFIL AND');
  DmOra.ConsSql.SQL.Add('USU_TIPADT = :TIPADT');
  DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
  DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := CadUsu_TAdvAdtUSU_CODFIL.Value;
  DmOra.ConsSql.Parameters.ParamByName('TIPADT').Value := CadUsu_TAdvAdtUSU_TIPADT.Value;
  DmOra.ConsSql.Open;
  if DmOra.ConsSql.IsEmpty then
     begin
       MessageDlg('Tipo de adiantamento não encontrado!',mtError,[mbOK],0);
       DBGAdiantamentos.SelectedIndex := 3;
       Abort;
     end;
  //fim valida tipo adiantamento

  //VALIDA CONTA INTERNA
  if trim(CadUsu_TAdvAdtUSU_NUMCCO.AsString) = '' then
     begin
       MessageDlg('Informe a Conta Interna',mtWarning,[mbOK],0);
       DBGAdiantamentos.SelectedIndex := 7;
       Abort;
     end;

     DmOra.ConsSql.SQL.Clear;
     DmOra.ConsSql.SQL.Add('SELECT CODEMP,NUMCCO,CODFIL,DESCCO FROM E600CCO');
     DmOra.ConsSql.SQL.Add('WHERE');
     DmOra.ConsSql.SQL.Add('CODEMP = :CODEMP AND');
     DmOra.ConsSql.SQL.Add('CODFIL = :CODFIL AND');
     DmOra.ConsSql.SQL.Add('NUMCCO = :NUMCCO');
     DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
     DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := CadUsu_TAdvAdtUSU_CODFIL.Value;
     DmOra.ConsSql.Parameters.ParamByName('NUMCCO').Value := CadUsu_TAdvAdtUSU_NUMCCO.Value;
     DmOra.ConsSql.Open;
     if DmOra.ConsSql.IsEmpty then
        begin
           MessageDlg('Conta Interna não encontrada!',mtError,[mbOK],0);
           DBGAdiantamentos.SelectedIndex := 7;
           Abort;
        end;
     //fim valida conta interna

  //VALIDA CONTA DESPESA DE VIAGEM
  if trim(CadUsu_TAdvAdtUSU_NUMCCD.AsString) = '' then
     begin
       MessageDlg('Informe a Conta para Despesa de Viagem',mtWarning,[mbOK],0);
       DBGAdiantamentos.SelectedIndex := 8;
       Abort;
     end;

     DmOra.ConsSql.SQL.Clear;
     DmOra.ConsSql.SQL.Add('SELECT CODEMP,NUMCCO,CODFIL,DESCCO FROM E600CCO');
     DmOra.ConsSql.SQL.Add('WHERE');
     DmOra.ConsSql.SQL.Add('CODEMP = :CODEMP AND');
     DmOra.ConsSql.SQL.Add('CODFIL = :CODFIL AND');
     DmOra.ConsSql.SQL.Add('NUMCCO = :NUMCCO');
     DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
     DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := CadUsu_TAdvAdtUSU_CODFIL.Value;
     DmOra.ConsSql.Parameters.ParamByName('NUMCCO').Value := CadUsu_TAdvAdtUSU_NUMCCD.Value;
     DmOra.ConsSql.Open;
     if DmOra.ConsSql.IsEmpty then
        begin
           MessageDlg('Conta não encontrada!',mtError,[mbOK],0);
           DBGAdiantamentos.SelectedIndex := 8;
           Abort;
        end;
     //fim valida conta despesa de viagem


  if CadUsu_TAdvAdtUSU_VLRADT.Value = 0 then
     begin
       MessageDlg('Informe o Valor do Adiantamento',mtWarning,[mbOK],0);
       DBGAdiantamentos.SelectedIndex := 5;
       Abort;
     end;

end;

procedure TFAcertoViagem.CadUsu_TAdvDspAfterDelete(DataSet: TDataSet);
begin
   //CONSULTA O TOTAL DE DESPESAS
    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('SELECT SUM(USU_TADVDSP.USU_VLRDES) AS TOTDES FROM USU_TADVDSP');
    DmOra.ConsSql.SQL.Add('WHERE');
    DmOra.ConsSql.SQL.Add('USU_TADVDSP.USU_CODEMP = :CODEMP AND');
    DmOra.ConsSql.SQL.Add('USU_TADVDSP.USU_NUMANE = :NUMANE');
    DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
    DmOra.ConsSql.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
    DmOra.ConsSql.Open;
    if not DmOra.ConsSql.IsEmpty then
       begin
         vnTotDes := DmOra.ConsSql.FieldByName('TOTDES').AsFloat;
       end
    else
       begin
         vnTotDes := 0;
       end;
    EdTotDsp.Value := vnTotDes;

    //CONSULTA OS TOTAIS DE ACERTO
    ConsTotalAcerto.Close;
    ConsTotalAcerto.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
    ConsTotalAcerto.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
    ConsTotalAcerto.Open;
    EdTotRst.Value := EdTotAdt.Value - EdTotDsp.Value;
end;

procedure TFAcertoViagem.CadUsu_TAdvDspAfterEdit(DataSet: TDataSet);
begin
 //NAO DEIXA ALTERAR
 CadUsu_TAdvDsp.Cancel;
end;

procedure TFAcertoViagem.CadUsu_TAdvDspAfterInsert(DataSet: TDataSet);
begin
    //CONSULTA OS DADOS DO ADIANTAMENTO SELECIONADO
    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('SELECT * FROM USU_TADVADT');
    DmOra.ConsSql.SQL.Add('WHERE');
    DmOra.ConsSql.SQL.Add('USU_ITESEL = ''S'' AND');
    DmOra.ConsSql.SQL.Add('USU_CODEMP = :CODEMP AND');
    DmOra.ConsSql.SQL.Add('USU_NUMANE = :NUMANE');
    DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
    DmOra.ConsSql.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
    DmOra.ConsSql.Open;
    if DmOra.ConsSql.IsEmpty then
       begin
          MessageDlg('Selecione um adiantamento',mtWarning,[mbOK],0);
          Abort;
       end
    else
       begin//1
         if DmOra.ConsSql.FieldByName('USU_SITADT').AsString = 'F' then
            begin//2
              MessageDlg('O adiantamento já esta fechado e não pode ser adicionado despesas para o mesmo',mtWarning,[mbOK],0);
              CadUsu_TAdvDsp.Cancel;
              Abort;
            end//2
         else
            begin//3
               CadUsu_TAdvDspUSU_CODEMP.Value := DmOra.ConsSql.FieldByName('USU_CODEMP').Value;
               CadUsu_TAdvDspUSU_CODFIL.Value := DmOra.ConsSql.FieldByName('USU_CODFIL').Value;
               CadUsu_TAdvDspUSU_NUMANE.Value := DmOra.ConsSql.FieldByName('USU_NUMANE').Value;
               CadUsu_TAdvDspUSU_NUMADT.Value := DmOra.ConsSql.FieldByName('USU_NUMADT').Value;
               CadUsu_TAdvDspUSU_DATDES.Value := Date;
               CadUsu_TAdvDspUSU_USUDES.Value := FPrincipal.cd_usuario;
            end;//3

       end;//1

       DBGDespesas.SelectedIndex := 2;
end;

procedure TFAcertoViagem.CadUsu_TAdvDspAfterPost(DataSet: TDataSet);
begin
   //CONSULTA O TOTAL DE DESPESAS
    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('SELECT SUM(USU_TADVDSP.USU_VLRDES) AS TOTDES FROM USU_TADVDSP');
    DmOra.ConsSql.SQL.Add('WHERE');
    DmOra.ConsSql.SQL.Add('USU_TADVDSP.USU_CODEMP = :CODEMP AND');
    DmOra.ConsSql.SQL.Add('USU_TADVDSP.USU_NUMANE = :NUMANE');
    DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
    DmOra.ConsSql.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
    DmOra.ConsSql.Open;
    if not DmOra.ConsSql.IsEmpty then
       begin
         vnTotDes := DmOra.ConsSql.FieldByName('TOTDES').AsFloat;
       end
    else
       begin
         vnTotDes := 0;
       end;
    EdTotDsp.Value := vnTotDes;

   //CONSULTA OS TOTAIS DE ACERTO
    ConsTotalAcerto.Close;
    ConsTotalAcerto.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
    ConsTotalAcerto.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
    ConsTotalAcerto.Open;
    EdTotRst.Value := EdTotAdt.Value - EdTotDsp.Value;
end;

procedure TFAcertoViagem.CadUsu_TAdvDspBeforeDelete(DataSet: TDataSet);
var
  vaNumTit : string;
begin
    //CONSULTA SE EXISTE TITULO VINVULADO AO ADIANTAMENTO DESTA DESPESA
    vaNumTit := 'RDV-'+IntToStr(CadUsu_TAdvDspUSU_NUMANE.AsInteger)+'-'+IntToStr(CadUsu_TAdvDspUSU_NUMADT.AsInteger);
    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('SELECT E501TCP.CODEMP,E501TCP.CODFIL,E501TCP.NUMTIT,E501TCP.CODTPT,E501TCP.CODFOR');
    DmOra.ConsSql.SQL.Add('FROM E501TCP');
    DmOra.ConsSql.SQL.Add('WHERE');
    DmOra.ConsSql.SQL.Add('E501TCP.CODEMP = :CODEMP AND');
    DmOra.ConsSql.SQL.Add('E501TCP.CODFIL = :CODFIL AND');
    DmOra.ConsSql.SQL.Add('E501TCP.USU_NUMANE = :NUMANE AND');
    DmOra.ConsSql.SQL.Add('E501TCP.NUMTIT = :NUMTIT');
    DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := CadUsu_TAdvDspUSU_CODEMP.Value;
    DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := CadUsu_TAdvDspUSU_CODFIL.Value;
    DmOra.ConsSql.Parameters.ParamByName('NUMANE').Value := CadUsu_TAdvDspUSU_NUMANE.Value;
    DmOra.ConsSql.Parameters.ParamByName('NUMTIT').Value := vaNumTit;
    DmOra.ConsSql.Open;
    if not DmOra.ConsSql.IsEmpty then
       begin
         MessageDlg('Existe título ligado ao adiantamento e por isso não pode ser excluído',mtWarning,[mbOK],0);
         Abort;
       end;
end;

procedure TFAcertoViagem.CadUsu_TAdvDspBeforeInsert(DataSet: TDataSet);
begin
    //CONSULTA SE EXISTE ADIANTAMENTO SELECIONADO
    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('SELECT * FROM USU_TADVADT');
    DmOra.ConsSql.SQL.Add('WHERE');
    DmOra.ConsSql.SQL.Add('USU_ITESEL = ''S'' AND');
    DmOra.ConsSql.SQL.Add('USU_CODEMP = :CODEMP AND');
    DmOra.ConsSql.SQL.Add('USU_NUMANE = :NUMANE');
    DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
    DmOra.ConsSql.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
    DmOra.ConsSql.Open;
    if DmOra.ConsSql.IsEmpty then
       begin
          MessageDlg('Selecione um adiantamento',mtWarning,[mbOK],0);
          Abort;
       end;


end;

procedure TFAcertoViagem.CadUsu_TAdvDspBeforePost(DataSet: TDataSet);
begin
    //BUSCA A SEQUENCIA DA DESPESA SE ESTIVER INSERINDO
    if vaStatusDsp in [dsInsert] then
       begin//1
          DmOra.ConsSql.Close;
          DmOra.ConsSql.SQL.Clear;
          DmOra.ConsSql.SQL.Add('SELECT USU_SEQDES FROM USU_TADVDSP');
          DmOra.ConsSql.SQL.Add('WHERE');
          DmOra.ConsSql.SQL.Add('USU_CODEMP = :CODEMP AND');
          DmOra.ConsSql.SQL.Add('USU_NUMANE = :NUMANE');
          DmOra.ConsSql.SQL.Add('ORDER BY USU_SEQDES DESC');
          DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
          DmOra.ConsSql.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
          DmOra.ConsSql.Open;
          if DmOra.ConsSql.IsEmpty then
             begin
               CadUsu_TAdvDspUSU_SEQDES.Value := 1;
             end
          else
             begin
               CadUsu_TAdvDspUSU_SEQDES.Value := DmOra.ConsSql.FieldByName('usu_seqdes').AsInteger + 1;
             end;
       end;//1

  if CadUsu_TAdvDspUSU_CODDES.Value = 0 then
     begin
       MessageDlg('Informe a Despesa',mtWarning,[mbOK],0);
       DBGDespesas.SelectedIndex := 2;
       Abort;
     end;

  if TRIM(CadUsu_TAdvDspUSU_DESDES.Value) = '' then
     begin
       MessageDlg('Informe a Despesa',mtWarning,[mbOK],0);
       DBGDespesas.SelectedIndex := 2;
       Abort;
     end;

  if CadUsu_TAdvDspUSU_VLRDES.Value = 0 then
     begin
       MessageDlg('Informe o valor da despesa',mtWarning,[mbOK],0);
       DBGDespesas.SelectedIndex := 4;
       Abort;
     end;

     //VALIDA OS VALORES ADIANTADOS
     if vaStatusDsp in [dsInsert] then
        begin//5

           DmOra.ConsSql.Close;
           DmOra.ConsSql.SQL.Clear;
           DmOra.ConsSql.SQL.Add('SELECT SUM(USU_TADVDSP.USU_VLRDES) AS TOTAL_ADT,');
           DmOra.ConsSql.SQL.Add('USU_TADVADT.USU_VLRADT FROM USU_TADVDSP');
           DmOra.ConsSql.SQL.Add('RIGHT JOIN USU_TADVADT ON USU_TADVADT.USU_CODEMP = USU_TADVDSP.USU_CODEMP AND');
           DmOra.ConsSql.SQL.Add('USU_TADVADT.USU_CODFIL = USU_TADVDSP.USU_CODFIL AND');
           DmOra.ConsSql.SQL.Add('USU_TADVADT.USU_NUMANE = USU_TADVDSP.USU_NUMANE AND');
           DmOra.ConsSql.SQL.Add('USU_TADVADT.USU_NUMADT = USU_TADVDSP.USU_NUMADT');
           DmOra.ConsSql.SQL.Add('WHERE');
           DmOra.ConsSql.SQL.Add('USU_TADVADT.USU_CODEMP = :CODEMP AND');
           DmOra.ConsSql.SQL.Add('USU_TADVADT.USU_CODFIL = :CODFIL AND');
           DmOra.ConsSql.SQL.Add('USU_TADVADT.USU_NUMANE = :NUMANE AND');
           DmOra.ConsSql.SQL.Add('USU_TADVADT.USU_NUMADT = :NUMADT');
           DmOra.ConsSql.SQL.Add('GROUP BY USU_TADVADT.USU_VLRADT');
           DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := CadUsu_TAdvDspUSU_CODEMP.Value;
           DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := CadUsu_TAdvDspUSU_CODFIL.Value;
           DmOra.ConsSql.Parameters.ParamByName('NUMANE').Value := CadUsu_TAdvDspUSU_NUMANE.Value;
           DmOra.ConsSql.Parameters.ParamByName('NUMADT').Value := CadUsu_TAdvDspUSU_NUMADT.Value;
           DmOra.ConsSql.Open;
           if DmOra.ConsSql.IsEmpty then
              begin
                 Abort;
              end
           else
              begin
                 if (DmOra.ConsSql.FieldByName('TOTAL_ADT').AsFloat + CadUsu_TAdvDspUSU_VLRDES.AsFloat ) > DmOra.ConsSql.FieldByName('USU_VLRADT').AsFloat  then
                    begin
                      if CadUsu_TAdvDspUSU_CODFIL.AsInteger = 1 then
                         begin
                            MessageDlg('O total de despesas não pode ser maior do que o total adiantado',mtWarning,[mbOK],0);
                            Abort;
                         end;
                    end;
              end;

        end;//5


end;

procedure TFAcertoViagem.DBGAdiantamentosCellClick(Column: TColumn);
begin

if Column.FieldName = 'IteSel' then
     begin//1
        if not (vaStatusAdt in [dsInsert,dsEdit]) then
           begin//2
             if CadUsu_TAdvAdtUSU_SEQMDT.Value = 0 then
                 begin
                   MessageDlg('É necessário realizar movimento da tesouraria para selecionar o adiantamento',mtWarning,[mbOK],0);
                 end
             else
                 begin//4
                     if ((vaAdtSel = 'S') and (CadUsu_TAdvAdtUSU_ITESEL.AsString = 'S')) or
                        ((vaAdtSel = 'N') and (CadUsu_TAdvAdtUSU_ITESEL.AsString = 'N') ) then
                        begin//3
                           CadUsu_TAdvAdt.Edit;
                           if CadUsu_TAdvAdtUSU_ITESEL.Value = 'N' then
                              begin
                                CadUsu_TAdvAdtUSU_ITESEL.Value := 'S';
                                vaAdtSel := 'S';
                                DsCadUsu_TAdvAdt.AutoEdit := false;
                              end
                           else
                              begin
                              CadUsu_TAdvAdtUSU_ITESEL.Value := 'N';
                              vaAdtSel := 'N';
                              DsCadUsu_TAdvAdt.AutoEdit := true;
                              end;
                              CadUsu_TAdvAdt.Post;
                        end;//3

                 end;//4
        end;//2

     end;//1
end;

procedure TFAcertoViagem.DBGAdiantamentosColExit(Sender: TObject);
begin
if vaStatusAdt in [dsinsert,dsedit] then
   begin//a
     if DBGAdiantamentos.SelectedField.FieldName = 'USU_CODFIL' then
        begin//1
          if DBGAdiantamentos.SelectedField.AsInteger = 0 then
             begin
               MessageDlg('Informe a Filial',mtWarning,[mbOK],0);
               DBGAdiantamentos.SelectedIndex := 2;
               Abort;
             end;

          //VALIDA SE A FILIAL EXISTE
          DmOra.ConsSql.Close;
          DmOra.ConsSql.SQL.Clear;
          DmOra.ConsSql.SQL.Add('SELECT E070FIL.CODEMP,E070FIL.CODFIL');
          DmOra.ConsSql.SQL.Add('FROM E070FIL');
          DmOra.ConsSql.SQL.Add('WHERE');
          DmOra.ConsSql.SQL.Add('E070FIL.CODEMP = :CODEMP AND');
          DmOra.ConsSql.SQL.Add('E070FIL.CODFIL = :CODFIL');
          DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
          DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := DBGAdiantamentos.SelectedField.AsInteger;
          DmOra.ConsSql.Open;
          if DmOra.ConsSql.IsEmpty then
             begin
                MessageDlg('Filial não existe!',mtError,[mbOK],0);
                DBGAdiantamentos.SelectedIndex := 2;
                Abort;
             end;
        end;//1

     if DBGAdiantamentos.SelectedField.FieldName = 'USU_TIPADT' then
        begin//2
           if trim(DBGAdiantamentos.SelectedField.AsString) = '' then
              begin
                 MessageDlg('Informe o Tipo de Adiantamento',mtWarning,[mbOK],0);
                 DBGAdiantamentos.SelectedIndex := 3;
                 Abort;
             end;

           DmOra.ConsSql.Close;
           DmOra.ConsSql.SQL.Clear;
           DmOra.ConsSql.SQL.Add('SELECT * FROM USU_TADVTAD');
           DmOra.ConsSql.SQL.Add('WHERE');
           DmOra.ConsSql.SQL.Add('USU_CODEMP = :CODEMP AND');
           DmOra.ConsSql.SQL.Add('USU_CODFIL = :CODFIL AND');
           DmOra.ConsSql.SQL.Add('USU_TIPADT = :TIPADT');
           DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
           DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := CadUsu_TAdvAdtUSU_CODFIL.Value;
           DmOra.ConsSql.Parameters.ParamByName('TIPADT').Value := CadUsu_TAdvAdtUSU_TIPADT.Value;
           DmOra.ConsSql.Open;
           if DmOra.ConsSql.IsEmpty then
             begin
                MessageDlg('Tipo de adiantamento não encontrado!',mtError,[mbOK],0);
                DBGAdiantamentos.SelectedIndex := 3;
                Abort;
             end
           else
             begin
               CadUsu_TAdvAdtUSU_DESADT.AsString := DmOra.ConsSql.FieldByName('USU_DESADT').AsString;
               CadUsu_TAdvAdtUSU_NUMCCO.AsString := DmOra.ConsSql.FieldByName('USU_NUMCCO').AsString;
               CadUsu_TAdvAdtUSU_NUMCCD.AsString := DmOra.ConsSql.FieldByName('USU_NUMCCD').AsString;
             end;
        end;//2

     if DBGAdiantamentos.SelectedField.FieldName = 'USU_NUMCCO' then
        begin//3
           if trim(DBGAdiantamentos.SelectedField.AsString) = '' then
              begin
                 MessageDlg('Informe a Conta Interna',mtWarning,[mbOK],0);
                 DBGAdiantamentos.SelectedIndex := 7;
                 Abort;
             end;

           DmOra.ConsSql.Close;
           DmOra.ConsSql.SQL.Clear;
           DmOra.ConsSql.SQL.Add('SELECT CODEMP,NUMCCO,CODFIL,DESCCO FROM E600CCO');
           DmOra.ConsSql.SQL.Add('WHERE');
           DmOra.ConsSql.SQL.Add('CODEMP = :CODEMP AND');
           DmOra.ConsSql.SQL.Add('CODFIL = :CODFIL AND');
           DmOra.ConsSql.SQL.Add('NUMCCO = :NUMCCO');
           DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
           DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := CadUsu_TAdvAdtUSU_CODFIL.Value;
           DmOra.ConsSql.Parameters.ParamByName('NUMCCO').Value := CadUsu_TAdvAdtUSU_NUMCCO.Value;
           DmOra.ConsSql.Open;
           if DmOra.ConsSql.IsEmpty then
             begin
                MessageDlg('Conta Interna não encontrada!',mtError,[mbOK],0);
                DBGAdiantamentos.SelectedIndex := 7;
                Abort;
             end;
        end;//3

     if DBGAdiantamentos.SelectedField.FieldName = 'USU_NUMCCD' then
        begin//4
           if trim(DBGAdiantamentos.SelectedField.AsString) = '' then
              begin
                 MessageDlg('Informe a Conta para despesa de viagem',mtWarning,[mbOK],0);
                 DBGAdiantamentos.SelectedIndex := 8;
                 Abort;
             end;

           DmOra.ConsSql.Close;
           DmOra.ConsSql.SQL.Clear;
           DmOra.ConsSql.SQL.Add('SELECT CODEMP,NUMCCO,CODFIL,DESCCO FROM E600CCO');
           DmOra.ConsSql.SQL.Add('WHERE');
           DmOra.ConsSql.SQL.Add('CODEMP = :CODEMP AND');
           DmOra.ConsSql.SQL.Add('CODFIL = :CODFIL AND');
           DmOra.ConsSql.SQL.Add('NUMCCO = :NUMCCO');
           DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
           DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := CadUsu_TAdvAdtUSU_CODFIL.Value;
           DmOra.ConsSql.Parameters.ParamByName('NUMCCO').Value := CadUsu_TAdvAdtUSU_NUMCCD.Value;
           DmOra.ConsSql.Open;
           if DmOra.ConsSql.IsEmpty then
             begin
                MessageDlg('Conta não encontrada!',mtError,[mbOK],0);
                DBGAdiantamentos.SelectedIndex := 8;
                Abort;
             end;
        end;//4

   end;//a
end;

procedure TFAcertoViagem.DBGAdiantamentosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin

       //MUDA A COR DA LINHA CONFORME O NUMERO DO ADT
   if Column.Field.FieldName = 'USU_NUMADT' then
      BEGIN
       if not (vaStatusAdt in [dsinsert]) then
          begin
             with (Sender as TDBGrid).Canvas do
                begin//1
                   case CadUsu_TAdvAdtUSU_NUMADT.Value of
                   1 : begin
                         Brush.Color := $00FFFFCA;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
                   2 : begin
                         Brush.Color := $00FFEEDD;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
                   3 : begin
                         Brush.Color := $00D9FFD9;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
                   4 : begin
                         Brush.Color := $00D5FFFF;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
                   5 : begin
                         Brush.Color := $00DDEEFF;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
                   end;//CASE
                end;//1
                TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end;
      END;


      //MUDA A COR DA LINHA
       if CadUsu_TAdvAdtUSU_ITESEL.Value = 'S'  then
          with (Sender as TDBGrid).Canvas do
          begin
         // Brush.Color := clSilver; //clSkyBlue;
          FillRect(Rect);
          Font.Style := [fsbold];
          Font.Color := clRed;
          end;
          TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);


  //DESENHA O CHECK NA GRID
  if Column.FieldName = 'IteSel' then
     begin//1
       DBGAdiantamentos.Canvas.FillRect(Rect);
       Check := 0;

       if CadUsu_TAdvAdtUSU_ITESEL.Value = 'S' then
          Check := DFCS_CHECKED
          else Check := 0;
          R:=Rect;
          InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
          DrawFrameControl(DBGAdiantamentos.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
     end;//1


end;

procedure TFAcertoViagem.DBGAdiantamentosEnter(Sender: TObject);
begin
  KeyPreview := false;
end;

procedure TFAcertoViagem.DBGAdiantamentosExit(Sender: TObject);
begin
  KeyPreview := true;
end;

procedure TFAcertoViagem.DBGAdiantamentosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = vk_Return Then
    DBGAdiantamentos.SelectedIndex := DBGAdiantamentos.SelectedIndex + 1;

 if  KEY = VK_F1 then
     begin//1
        if not (vaStatusAdt in [dsInsert,dsEdit]) then
           begin//2
              if CadUsu_TAdvAdtUSU_SEQMDT.Value = 0 then
                 begin
                   MessageDlg('É necessário realizar movimento da tesouraria para selecionar o adiantamento',mtWarning,[mbOK],0);
                 end
              else
                 begin//a
                     if ((vaAdtSel = 'S') and (CadUsu_TAdvAdtUSU_ITESEL.AsString = 'S')) or
                        ((vaAdtSel = 'N') and (CadUsu_TAdvAdtUSU_ITESEL.AsString = 'N') ) then
                        begin//3
                           CadUsu_TAdvAdt.Edit;
                           if CadUsu_TAdvAdtUSU_ITESEL.Value = 'N' then
                              begin
                                CadUsu_TAdvAdtUSU_ITESEL.Value := 'S';
                                vaAdtSel := 'S';
                                DsCadUsu_TAdvAdt.AutoEdit := false;
                              end
                           else
                              begin
                              CadUsu_TAdvAdtUSU_ITESEL.Value := 'N';
                              vaAdtSel := 'N';
                              DsCadUsu_TAdvAdt.AutoEdit := true;
                              end;
                              CadUsu_TAdvAdt.Post;
                        end;//3
                 end;//a
        end;//2
     end;//1
end;

procedure TFAcertoViagem.DBGDespesasColExit(Sender: TObject);
begin
if vaStatusDsp in [dsinsert,dsedit] then
   begin//a

     if DBGDespesas.SelectedField.FieldName = 'USU_CODDES' then
        begin//1
          if DBGDespesas.SelectedField.AsInteger = 0 then
             begin
               MessageDlg('Informe a Despesa',mtWarning,[mbOK],0);
               DBGDespesas.SelectedIndex := 2;
               Abort;
             end;

           //valida se a despesa é valida
           DmOra.ConsSql.Close;
           DmOra.ConsSql.SQL.Clear;
           DmOra.ConsSql.SQL.Add('SELECT * FROM USU_TADVTDV');
           DmOra.ConsSql.SQL.Add('WHERE');
           DmOra.ConsSql.SQL.Add('USU_CODEMP = :CODEMP AND');
           DmOra.ConsSql.SQL.Add('USU_CODDES = :CODDES');
           DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
           DmOra.ConsSql.Parameters.ParamByName('CODDES').Value := CadUsu_TAdvDspUSU_CODDES.Value;
           DmOra.ConsSql.Open;
           if DmOra.ConsSql.IsEmpty then
             begin
                MessageDlg('Despesa não encontrada',mtError,[mbOK],0);
                CadUsu_TAdvDspUSU_DESDES.Value := '';
                CadUsu_TAdvDspUSU_CTAFIN.Value := 0;
                CadUsu_TAdvDspUSU_CTARED.Value := 0;
                CadUsu_TAdvDspUSU_CODCCU.Value := ' ';
                DBGAdiantamentos.SelectedIndex := 2;
                Abort;
             end
           else
             begin
               CadUsu_TAdvDspUSU_DESDES.Value := DmOra.ConsSql.FieldByName('usu_desdes').AsString;
               CadUsu_TAdvDspUSU_CTAFIN.Value := DmOra.ConsSql.FieldByName('usu_ctafin').Value;
               CadUsu_TAdvDspUSU_CTARED.Value := DmOra.ConsSql.FieldByName('usu_ctared').Value;
               CadUsu_TAdvDspUSU_CODCCU.Value := DmOra.ConsSql.FieldByName('usu_codccu').Value;
             end;

        end;//1

     if DBGDespesas.SelectedField.FieldName = 'USU_VLRDES' then
        begin//2
          if DBGDespesas.SelectedField.AsInteger = 0 then
             begin
               MessageDlg('Informe o valor da despesa',mtWarning,[mbOK],0);
               DBGDespesas.SelectedIndex := 4;
               Abort;
             end;
        end;//2

   end;//a

end;

procedure TFAcertoViagem.DBGDespesasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
      //MUDA A COR DA LINHA CONFORME O NUMERO DO ADT
  if Column.Field.FieldName = 'USU_NUMADT' then
     BEGIN
       if not (vaStatusDsp in [dsinsert]) then
       begin
       with (Sender as TDBGrid).Canvas do
          begin//1
             case CadUsu_TAdvDspUSU_NUMADT.Value of
                  1 : begin
                         Brush.Color := $00FFFFCA;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
                   2 : begin
                         Brush.Color := $00FFEEDD;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
                   3 : begin
                         Brush.Color := $00D9FFD9;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
                   4 : begin
                         Brush.Color := $00D5FFFF;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
                   5 : begin
                         Brush.Color := $00DDEEFF;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
             end;//CASE
          end;//1
          TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
       end;
     END;
end;

procedure TFAcertoViagem.DBGDespesasEditButtonClick(Sender: TObject);
begin
if vaStatusDsp in [dsinsert,dsedit] then
   begin//A
     if DBGDespesas.SelectedField.FieldName = 'USU_CODDES' then
        begin//A1
            FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
            FConsGeralNfEnt.vaSql := 'SELECT USU_TADVTDV.* FROM USU_TADVTDV';

            FConsGeralNfEnt.vbWhere := false;
            FConsGeralNfEnt.vaCampo := 'CodDes';
            FConsGeralNfEnt.vnColuna := 2;
            FConsGeralNfEnt.vaTela := 'FAcertoViagem';
            FConsGeralNfEnt.ShowModal;
            FreeAndNil(FConsGeralNfEnt);


        end;//A1

   end;//A

end;

procedure TFAcertoViagem.DBGDespesasEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFAcertoViagem.DBGDespesasExit(Sender: TObject);
begin
 KeyPreview := true;
end;

procedure TFAcertoViagem.DBGDespesasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if KEY = vk_Return Then
    DBGDespesas.SelectedIndex := DBGDespesas.SelectedIndex + 1;

if key = vk_f3 then
   begin//A
       if vaStatusDsp in [dsinsert,dsedit] then
         begin//A2
           if DBGDespesas.SelectedField.FieldName = 'USU_CODDES' then
              begin//A1
                  FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
                  FConsGeralNfEnt.vaSql := 'SELECT USU_TADVTDV.* FROM USU_TADVTDV';

                  FConsGeralNfEnt.vbWhere := false;
                  FConsGeralNfEnt.vaCampo := 'CodDes';
                  FConsGeralNfEnt.vnColuna := 2;
                  FConsGeralNfEnt.vaTela := 'FAcertoViagem';
                  FConsGeralNfEnt.ShowModal;
                  FreeAndNil(FConsGeralNfEnt);


              end;//A1

         end;//A2
   end;//A
end;

procedure TFAcertoViagem.DBGTotalAcertoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
            //MUDA A COR DA LINHA CONFORME O NUMERO DO ADT
             with (Sender as TDBGrid).Canvas do
                begin//1
                   case ConsTotalAcertoUSU_NUMADT.Value of
                   1 : begin
                         Brush.Color := $00FFFFCA;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
                   2 : begin
                         Brush.Color := $00FFEEDD;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
                   3 : begin
                         Brush.Color := $00D9FFD9;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
                   4 : begin
                         Brush.Color := $00D5FFFF;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
                   5 : begin
                         Brush.Color := $00DDEEFF;
                         FillRect(Rect);
                         Font.Style := [fsbold]
                       end;
                   end;//CASE
                end;//1
                TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);


end;

procedure TFAcertoViagem.DsCadUsu_TAdvAdtStateChange(Sender: TObject);
begin
  vaStatusAdt := CadUsu_TAdvAdt.State;
end;

procedure TFAcertoViagem.DsCadUsu_TAdvDspStateChange(Sender: TObject);
begin
  vaStatusDsp := CadUsu_TAdvDsp.State;
end;

procedure TFAcertoViagem.EdNumAneExit(Sender: TObject);
begin

 if trim(EdNumAne.Text) <> '' then
    begin//1
      if trim(EdCodEmp.Text) = '' then
         begin
           MessageDlg('Informe a Empresa',mtWarning,[mbOK],0);
           ActiveControl := EdCodEmp;
           abort;
         end
      else
      if trim(EdCodFil.Text) = '' then
         begin
           MessageDlg('Informe a Filial',mtWarning,[mbOK],0);
           ActiveControl := EdCodFil;
           abort;
         end;
         vaAdtSel := 'N';

         //consulta a carga
         ConsE135Ane.Close;
         ConsE135Ane.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
         ConsE135Ane.Parameters.ParamByName('CODFIL').Value := StrToInt(trim(EdCodFil.Text));
         ConsE135Ane.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
         ConsE135Ane.Open;
         if ConsE135Ane.IsEmpty then
            begin//2
              MessageDlg('Carga não encontrada!',mtWarning,[mbOK],0);
              LCodMtr.Caption := '';
              LPlaVei.Caption := '';
              LDatGer.Caption := '';

              EdTotAdt.Value := 0;
              EdTotDsp.Value := 0;
              EdTotRst.Value := 0;

              CadUsu_TAdvAdt.Active := false;
              CadUsu_TAdvDsp.Active := false;
              ConsTotalAcerto.Active := false;
              ConsE501Tcp.Active := false;

              ActiveControl := EdNumAne;
            end//2
         else
           begin//3
             LCodMtr.Caption := IntToStr(ConsE135AneCODMTR.AsInteger)+'  -  '+ ConsE135AneNOMMOT.AsString;
             LPlaVei.Caption := ConsE135AnePLAVEI.AsString;
             LDatGer.Caption := DateToStr(ConsE135AneDATGER.AsDateTime);

             //atualiza todos os adiantamentos para não selecionados
              ExecutaSql.CommandText := 'update usu_tadvadt set usu_itesel = ''N'' where usu_codemp = :codemp and usu_numane = :numane';
              ExecutaSql.Parameters.ParamByName('codemp').Value := StrToInt(trim(EdCodEmp.Text));
              ExecutaSql.Parameters.ParamByName('numane').Value := StrToInt(trim(EdNumAne.Text));
              ExecutaSql.Execute;

             CadUsu_TAdvAdt.Close;
             CadUsu_TAdvAdt.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
             CadUsu_TAdvAdt.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
             CadUsu_TAdvAdt.Open;

             CadUsu_TAdvDsp.Close;
             CadUsu_TAdvDsp.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
             CadUsu_TAdvDsp.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
             CadUsu_TAdvDsp.Open;

              //CONSULTA O TOTAL DE ADIANTAMENTOS
              DmOra.ConsSql.Close;
              DmOra.ConsSql.SQL.Clear;
              DmOra.ConsSql.SQL.Add('SELECT SUM(USU_TADVADT.USU_VLRADT) AS TOTADT FROM USU_TADVADT');
              DmOra.ConsSql.SQL.Add('WHERE');
              DmOra.ConsSql.SQL.Add('USU_TADVADT.USU_CODEMP = :CODEMP AND');
              DmOra.ConsSql.SQL.Add('USU_TADVADT.USU_NUMANE = :NUMANE');
              DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
              DmOra.ConsSql.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
              DmOra.ConsSql.Open;
              if not DmOra.ConsSql.IsEmpty then
                 begin
                   vnTotAdt := DmOra.ConsSql.FieldByName('TOTADT').AsFloat;
                 end
              else
                 begin
                   vnTotAdt := 0;
                 end;
              EdTotAdt.Value := vnTotAdt;

              //CONSULTA O TOTAL DE DESPESAS
              DmOra.ConsSql.Close;
              DmOra.ConsSql.SQL.Clear;
              DmOra.ConsSql.SQL.Add('SELECT SUM(USU_TADVDSP.USU_VLRDES) AS TOTDES FROM USU_TADVDSP');
              DmOra.ConsSql.SQL.Add('WHERE');
              DmOra.ConsSql.SQL.Add('USU_TADVDSP.USU_CODEMP = :CODEMP AND');
              DmOra.ConsSql.SQL.Add('USU_TADVDSP.USU_NUMANE = :NUMANE');
              DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
              DmOra.ConsSql.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
              DmOra.ConsSql.Open;
              if not DmOra.ConsSql.IsEmpty then
                 begin
                   vnTotDes := DmOra.ConsSql.FieldByName('TOTDES').AsFloat;
                 end
              else
                 begin
                   vnTotDes := 0;
                 end;
              EdTotDsp.Value := vnTotDes;

              //CONSULTA OS TOTAIS DE ACERTO
              ConsTotalAcerto.Close;
              ConsTotalAcerto.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
              ConsTotalAcerto.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
              ConsTotalAcerto.Open;

              EdTotRst.Value := EdTotAdt.Value - EdTotDsp.Value;

              //CONSULTA OS TITULOS GERADOS
              ConsE501Tcp.Close;
              ConsE501Tcp.Parameters.ParamByName('CODEMP').Value := StrToInt(trim(EdCodEmp.Text));
              ConsE501Tcp.Parameters.ParamByName('NUMANE').Value := StrToInt(trim(EdNumAne.Text));
              ConsE501Tcp.Open;

           end;//3

    end;//1


end;

procedure TFAcertoViagem.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAcertoViagem.FormShow(Sender: TObject);
var KeyState: TKeyboardState;
begin

   //LIGA O CAP LUCK
   GetKeyboardState(KeyState);
  if(KeyState[VK_CAPITAL] = 0) then
    begin
      Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or 0, 0);
      Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
    end;


end;

end.
