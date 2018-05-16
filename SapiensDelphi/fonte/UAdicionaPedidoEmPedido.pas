unit UAdicionaPedidoEmPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB,
  IdBaseComponent, IdComponent, IdCustomTCPServer, IdCustomHTTPServer,
  IdHTTPServer, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TFAdicionaPedidoEmPedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    LNumPedPrincipal: TLabel;
    Label2: TLabel;
    LNomCli: TLabel;
    Label3: TLabel;
    LSitPed: TLabel;
    LEndCli: TLabel;
    Label4: TLabel;
    LCodFil: TLabel;
    Label5: TLabel;
    LDatEmi: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    LTecTrans: TLabel;
    LPreCar: TLabel;
    Label8: TLabel;
    LNomRep: TLabel;
    Label9: TLabel;
    LDsPgto: TLabel;
    Label10: TLabel;
    EdNumPedAdd: TEdit;
    BNumPed: TBitBtn;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    LCodFilAdd: TLabel;
    LTecTransAdd: TLabel;
    LPreCarAdd: TLabel;
    LSitPedAdd: TLabel;
    LDatEmiAdd: TLabel;
    LNomCliAdd: TLabel;
    LNomRepAdd: TLabel;
    LDsPgtoAdd: TLabel;
    DBGrid1: TDBGrid;
    LEndCliAdd: TLabel;
    BConfirmar: TBitBtn;
    ConsE028Cpg: TADOQuery;
    ConsE028CpgCODEMP: TIntegerField;
    ConsE028CpgCODCPG: TStringField;
    ConsE028CpgDESCPG: TStringField;
    ConsE028CpgABRCPG: TStringField;
    ConsE028CpgAPLCPG: TStringField;
    ConsE028CpgPGTANT: TStringField;
    ConsE028CpgDIAESP: TStringField;
    ConsE028CpgDIAME1: TIntegerField;
    ConsE028CpgDIAME2: TIntegerField;
    ConsE028CpgDIAME3: TIntegerField;
    ConsE028CpgDIASEM: TStringField;
    ConsE028CpgDIAMES: TStringField;
    ConsE028CpgPRZMED: TIntegerField;
    ConsE028CpgQTDPAR: TIntegerField;
    ConsE028CpgIPIPAR: TStringField;
    ConsE028CpgICMPAR: TStringField;
    ConsE028CpgSUBPAR: TStringField;
    ConsE028CpgFREPAR: TStringField;
    ConsE028CpgSEGPAR: TStringField;
    ConsE028CpgENCPAR: TStringField;
    ConsE028CpgEMBPAR: TStringField;
    ConsE028CpgOUTPAR: TStringField;
    ConsE028CpgDARPAR: TStringField;
    ConsE028CpgACRFIN: TBCDField;
    ConsE028CpgVENDSC: TBCDField;
    ConsE028CpgCPRDSC: TBCDField;
    ConsE028CpgPERDSC: TBCDField;
    ConsE028CpgPERCOM: TBCDField;
    ConsE028CpgREDCOM: TBCDField;
    ConsE028CpgTIPPAR: TIntegerField;
    ConsE028CpgSITCPG: TStringField;
    ConsE028CpgCODTPR: TStringField;
    ConsE028CpgFVECPG: TStringField;
    ConsE028CpgFVEDEC: TStringField;
    ConsE028CpgINDEXP: TIntegerField;
    ConsE028CpgDATPAL: TDateTimeField;
    ConsE028CpgHORPAL: TIntegerField;
    ConsE028CpgTIPINT: TIntegerField;
    ConsE028CpgCODPDV: TIntegerField;
    ConsE028CpgISSPAR: TStringField;
    ConsE028CpgDATGER: TDateTimeField;
    ConsE028CpgHORGER: TIntegerField;
    ConsE028CpgUSUGER: TBCDField;
    ConsE028CpgDATATU: TDateTimeField;
    ConsE028CpgHORATU: TIntegerField;
    ConsE028CpgUSUATU: TBCDField;
    ConsE028CpgPERENC: TBCDField;
    DsConsE120IpdAdd: TDataSource;
    ConsProdE120Ipd: TADOQuery;
    ConsProdE120IpdCODEMP: TIntegerField;
    ConsProdE120IpdCODFIL: TIntegerField;
    ConsProdE120IpdNUMPED: TIntegerField;
    ConsProdE120IpdSEQIPD: TIntegerField;
    ConsProdE120IpdTNSPRO: TStringField;
    ConsProdE120IpdCODPRO: TStringField;
    ConsProdE120IpdPREUNI: TFMTBCDField;
    ConsProdE120IpdQTDPED: TFMTBCDField;
    ConsProdE120IpdQTDCAN: TFMTBCDField;
    ConsProdE120IpdQTDFAT: TFMTBCDField;
    ConsProdE120IpdQTDABE: TFMTBCDField;
    ConsProdE120IpdCODDER: TStringField;
    SapSID: TIdHTTP;
    ConsCorUsu_T120ipd: TADOQuery;
    ConsCorUsu_T120ipdUSU_CODEMP: TIntegerField;
    ConsCorUsu_T120ipdUSU_CODFIL: TIntegerField;
    ConsCorUsu_T120ipdUSU_NUMPED: TIntegerField;
    ConsCorUsu_T120ipdUSU_SEQIPD: TIntegerField;
    ConsCorUsu_T120ipdUSU_QTDCOR: TIntegerField;
    ConsCorUsu_T120ipdUSU_TIPCMB: TIntegerField;
    ConsCorUsu_T120ipdUSU_COR001: TStringField;
    ConsCorUsu_T120ipdUSU_COR002: TStringField;
    ConsCorUsu_T120ipdUSU_SEQITE: TIntegerField;
    ConsCorUsu_T120ipdUSU_CODPRO: TStringField;
    ConsCorUsu_T120ipdUSU_CODDER: TStringField;
    ConsCorUsu_T120ipdUSU_TECTRA: TStringField;
    ConsCorUsu_T120ipdUSU_QTDABE: TIntegerField;
    ConsCorUsu_T120ipdUSU_QTDCAN: TIntegerField;
    ConsCorUsu_T120ipdUSU_NUMANE: TBCDField;
    ConsCorUsu_T120ipdUSU_PRECAR: TIntegerField;
    UltimoSeqIte: TADOQuery;
    UltimoSeqIteUSU_SEQITE: TIntegerField;
    SeqIpd: TADOQuery;
    SeqIpdSEQIPD: TIntegerField;
    DsReserva: TDataSource;
    procedure EdNumPedAddExit(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAdicionaPedidoEmPedido: TFAdicionaPedidoEmPedido;

implementation

uses UDm, UDm2;

{$R *.dfm}

procedure TFAdicionaPedidoEmPedido.BConfirmarClick(Sender: TObject);
var vbPreUni : Boolean;
    vaErro : string;
    vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;
    vaCodEmp,vaCodFil,vaNumPed,vaSeqIpd,vaCodPro,vaCodDer,vaPreUni,vaQtdPed,vaDatEnt : string;
    vaCodDep,vaTnsPro,vaCodTpr,vaTotDsc : string;
    vnQtdPed,vnSeqIpd : integer;
    Cursor : TCursor;
    vaCodCli,vaSitPed : string;
    vaObsPed,vaSitObs,vaNumPedP : string;
begin
    if dm2.ConsE120PedAdd.IsEmpty then
       begin
         MessageDlg('Informe um pedido a ser adicionado',mtWarning,[mbOK],0);
         ActiveControl := EdNumPedAdd;
       end
    else
    if dm2.ConsE120PedAddNUMPED.Value = dm2.ConsE120pedNUMPED.Value then
       begin
         MessageDlg('Pedido adicionado não pode ser igual ao principal',mtWarning,[mbOK],0);
         ActiveControl := EdNumPedAdd;
       end
    else
    if dm2.ConsE120PedAddCODFIL.Value <> dm2.ConsE120pedCODFIL.Value then
       begin
         MessageDlg('Filial do Pedido adicionado diferente da filial do pedido principal',mtWarning,[mbOK],0);
         ActiveControl := EdNumPedAdd;
       end
    else
    if (dm2.ConsE120PedAddSITPED.Value <> 1) and (dm2.ConsE120PedAddSITPED.Value <> 2) then
       begin
         MessageDlg('Situação do pedido dever ser "1 - Aberto Total" ou "2 - Aberto Parcial"',mtWarning,[mbOK],0);
         ActiveControl := EdNumPedAdd;
       end
    else
    if dm2.ConsE120PedAddUSU_PEDTRA.Value <> dm2.ConsE120pedUSU_PEDTRA.Value then
       begin
          MessageDlg('Indicativo de tecido transferido incompatíveis',mtWarning,[mbOK],0);
          ActiveControl := EdNumPedAdd;
       end
    else
    {if dm2.ConsE120PedAddUSU_PRECAR.Value <> dm2.ConsE120pedUSU_PRECAR.Value then
       begin
          MessageDlg('Numero de Pré-Carga incompatíveis',mtWarning,[mbOK],0);
          ActiveControl := EdNumPedAdd;
       end
    else}
    begin//1

       Cursor := Screen.Cursor;
       Screen.Cursor := crSQLWait;
       DBGrid1.DataSource := DsReserva;
       {****************************************************************
        percorre os itens do pedido para validar se ja existe o memso no
        pedido principal e verificar se o preço é igual
       *****************************************************************}
       vbPreUni := true;
       vaErro := '';
       dm2.ConsE120IpdAdd.First;
       while not dm2.ConsE120IpdAdd.Eof do
          begin//2
              ConsProdE120Ipd.Close;
              ConsProdE120Ipd.Parameters.ParamByName('codemp').Value := dm2.ConsE120pedCODEMP.Value;
              ConsProdE120Ipd.Parameters.ParamByName('codfil').Value := dm2.ConsE120pedCODFIL.Value;
              ConsProdE120Ipd.Parameters.ParamByName('numped').Value := dm2.ConsE120pedNUMPED.Value;
              ConsProdE120Ipd.Parameters.ParamByName('codpro').Value := dm2.ConsE120IpdAddCODPRO.Value;
              ConsProdE120Ipd.Parameters.ParamByName('codder').Value := dm2.ConsE120IpdAddCODDER.Value;
              ConsProdE120Ipd.Open;
              if not ConsProdE120Ipd.IsEmpty then
                 begin//5
                 if ConsProdE120IpdPREUNI.AsCurrency <> dm2.ConsE120IpdAddPREUNI.AsCurrency then
                    begin//6

                      vbPreUni := false;

                      if vaErro = '' then
                         begin
                           vaErro := 'Produto(s) com preço unitário diferente do principal:'#13+#13+ConsProdE120IpdCODPRO.Value+' '+ConsProdE120IpdCODDER.Value+' Principal:'+CurrToStr(ConsProdE120IpdPREUNI.AsCurrency)+'  Adicionado: '+CurrToStr(dm2.ConsE120IpdAddPREUNI.AsCurrency);
                         end
                      else
                         begin
                           vaErro := vaErro + #13+ConsProdE120IpdCODPRO.Value+' '+ConsProdE120IpdCODDER.Value+' Principal:'+CurrToStr(ConsProdE120IpdPREUNI.AsCurrency)+'  Adicionado: '+CurrToStr(dm2.ConsE120IpdAddPREUNI.AsCurrency);
                         end;

                    end;//6
                 end;//5
            dm2.ConsE120IpdAdd.Next;
          end;//2

          if vbPreUni = false then
             begin//3
               MessageDlg(vaErro,mtWarning,[mbOK],0);

             end//3
          else
             begin//4
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


                //loga na filial
                xPostQuery.Clear;
                xPostQuery.Add('ACAO=SID.Srv.AltEmpFil');
                xPostQuery.Add('&CodEmp='+'1');
                xPostQuery.Add('&CodFil='+'1');
                // Executar ação  logar na filial
                xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                dm2.ConsE120IpdAdd.First;
                while not dm2.ConsE120IpdAdd.Eof do
                   begin//7
                       ConsProdE120Ipd.Close;
                       ConsProdE120Ipd.Parameters.ParamByName('codemp').Value := dm2.ConsE120pedCODEMP.Value;
                       ConsProdE120Ipd.Parameters.ParamByName('codfil').Value := dm2.ConsE120pedCODFIL.Value;
                       ConsProdE120Ipd.Parameters.ParamByName('numped').Value := dm2.ConsE120pedNUMPED.Value;
                       ConsProdE120Ipd.Parameters.ParamByName('codpro').Value := dm2.ConsE120IpdAddCODPRO.Value;
                       ConsProdE120Ipd.Parameters.ParamByName('codder').Value := dm2.ConsE120IpdAddCODDER.Value;
                       ConsProdE120Ipd.Open;
                       if not ConsProdE120Ipd.IsEmpty then  //se achou o produto no pedido principal
                          begin//8
                           vaCodEmp := IntToStr(dm2.ConsE120pedCODEMP.Value);
                           vaCodFil := IntToStr(dm2.ConsE120pedCODFIL.Value);
                           vaNumPed := IntToStr(dm2.ConsE120pedNUMPED.Value);
                           vaSeqIpd := IntToStr(ConsProdE120IpdSEQIPD.Value);
                           vnQtdPed := ConsProdE120IpdQTDPED.AsInteger + dm2.ConsE120IpdAddQTDABE.AsInteger;
                           vaQtdPed := IntToStr(vnQtdPed);
                           vaPreUni := CurrToStr(ConsProdE120IpdPREUNI.AsCurrency);
                           vaDatEnt := DateToStr(Date);
                           vaDatEnt := FormatDateTime('DD/MM/YYYY',StrToDate(vaDatEnt));

                           //altera a quantidade do item
                            xPostQuery.Clear;
                            xPostQuery.Add('ACAO=SID.Ped.GravarProduto');
                            xPostQuery.Add('&CodEmp='+vaCodEmp);
                            xPostQuery.Add('&CodFil='+vaCodFil);
                            xPostQuery.Add('&NumPed='+vaNumPed);
                            xPostQuery.Add('&SeqIpd='+vaSeqIpd);
                            xPostQuery.Add('&QtdPed='+vaQtdPed);
                            xPostQuery.Add('&PreUni='+vaPreUni);
                            xPostQuery.Add('&DatEnt='+vaDatEnt);

                            // Executar ação  alterar produto do pedido
                            xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                            // Verificar retorno / se alterou o intem entra nas cores e verifica se existe se nao insere
                            if (xRetorno <> vaSeqIpd) then
                               raise Exception.Create(xRetorno)
                            else
                               begin//9
                               //consulta as cores do item que esta sendo adicionado
                               dm2.ConsUsu_T120IpdAdd.Close;
                               dm2.ConsUsu_T120IpdAdd.Parameters.ParamByName('codemp').Value := dm2.ConsE120pedAddCODEMP.Value;
                               dm2.ConsUsu_T120IpdAdd.Parameters.ParamByName('codfil').Value := dm2.ConsE120pedAddCODFIL.Value;
                               dm2.ConsUsu_T120IpdAdd.Parameters.ParamByName('numped').Value := dm2.ConsE120pedAddNUMPED.Value;
                               dm2.ConsUsu_T120IpdAdd.Parameters.ParamByName('seqipd').Value := dm2.ConsE120IpdAddSEQIPD.Value;
                               dm2.ConsUsu_T120IpdAdd.Open;
                               dm2.ConsUsu_T120IpdAdd.First;
                               while not dm2.ConsUsu_T120IpdAdd.Eof do
                                  begin//10
                                    ConsCorUsu_T120ipd.Close;
                                    ConsCorUsu_T120ipd.Parameters.ParamByName('codemp').Value := dm2.ConsE120pedCODEMP.Value;
                                    ConsCorUsu_T120ipd.Parameters.ParamByName('codfil').Value := dm2.ConsE120pedCODFIL.Value;
                                    ConsCorUsu_T120ipd.Parameters.ParamByName('numped').Value := dm2.ConsE120pedNUMPED.Value;
                                    ConsCorUsu_T120ipd.Parameters.ParamByName('seqipd').Value := ConsProdE120IpdSEQIPD.Value;
                                    ConsCorUsu_T120ipd.Parameters.ParamByName('tipcmb').Value := dm2.ConsUsu_T120IpdAddUSU_TIPCMB.Value;
                                    ConsCorUsu_T120ipd.Parameters.ParamByName('cor001').Value := dm2.ConsUsu_T120IpdAddUSU_COR001.Value;
                                    ConsCorUsu_T120ipd.Parameters.ParamByName('cor002').Value := dm2.ConsUsu_T120IpdAddUSU_COR002.Value;
                                    ConsCorUsu_T120ipd.Open;
                                    if not ConsCorUsu_T120ipd.IsEmpty then
                                       begin//11
                                          dm2.CadUsu_T120Ipd.Close;
                                          dm2.CadUsu_T120Ipd.Parameters.ParamByName('codemp').Value := dm2.ConsE120pedCODEMP.Value;
                                          dm2.CadUsu_T120Ipd.Parameters.ParamByName('codfil').Value := dm2.ConsE120pedCODFIL.Value;
                                          dm2.CadUsu_T120Ipd.Parameters.ParamByName('numped').Value := dm2.ConsE120pedNUMPED.Value;
                                          dm2.CadUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := ConsCorUsu_T120ipdUSU_SEQIPD.Value;
                                          dm2.CadUsu_T120Ipd.Parameters.ParamByName('seqite').Value := ConsCorUsu_T120ipdUSU_SEQITE.Value;
                                          dm2.CadUsu_T120Ipd.Open;
                                          dm2.CadUsu_T120Ipd.Edit;
                                          dm2.CadUsu_T120IpdUSU_QTDCOR.Value := dm2.CadUsu_T120IpdUSU_QTDCOR.Value + dm2.ConsUsu_T120IpdAddUSU_QTDCOR.Value;
                                          dm2.CadUsu_T120IpdUSU_QTDABE.Value := dm2.CadUsu_T120IpdUSU_QTDABE.Value + dm2.ConsUsu_T120IpdAddUSU_QTDCOR.Value;
                                          dm2.CadUsu_T120Ipd.Post;
                                       end//11
                                    else
                                       begin//12
                                         dm2.CadUsu_T120Ipd.Open;
                                         dm2.CadUsu_T120Ipd.Insert;
                                         dm2.CadUsu_T120IpdUSU_CODEMP.Value := dm2.ConsE120pedCODEMP.Value;
                                         dm2.CadUsu_T120IpdUSU_CODFIL.Value := dm2.ConsE120pedCODFIL.Value;
                                         dm2.CadUsu_T120IpdUSU_NUMPED.Value := dm2.ConsE120pedNUMPED.Value;
                                         dm2.CadUsu_T120IpdUSU_SEQIPD.Value := ConsProdE120IpdSEQIPD.Value;
                                         dm2.CadUsu_T120IpdUSU_TIPCMB.Value := dm2.ConsUsu_T120IpdAddUSU_TIPCMB.Value;
                                         dm2.CadUsu_T120IpdUSU_COR001.Value := dm2.ConsUsu_T120IpdAddUSU_COR001.Value;
                                         dm2.CadUsu_T120IpdUSU_COR002.Value := dm2.ConsUsu_T120IpdAddUSU_COR002.Value;
                                         dm2.CadUsu_T120IpdUSU_CODPRO.Value := ConsProdE120IpdCODPRO.Value;
                                         dm2.CadUsu_T120IpdUSU_CODDER.Value := ConsProdE120IpdCODDER.Value;
                                         dm2.CadUsu_T120IpdUSU_QTDCOR.Value := dm2.ConsUsu_T120IpdAddUSU_QTDCOR.Value;
                                         dm2.CadUsu_T120IpdUSU_QTDABE.Value := dm2.ConsUsu_T120IpdAddUSU_QTDABE.Value;
                                         dm2.CadUsu_T120IpdUSU_QTDCAN.Value := dm2.ConsUsu_T120IpdAddUSU_QTDCAN.Value;
                                         dm2.CadUsu_T120IpdUSU_TECTRA.Value := dm2.ConsUsu_T120IpdAddUSU_TECTRA.Value;
                                         dm2.CadUsu_T120IpdUSU_NUMANE.Value := dm2.ConsUsu_T120IpdAddUSU_NUMANE.Value;
                                         dm2.CadUsu_T120IpdUSU_PRECAR.Value := dm2.ConsUsu_T120IpdAddUSU_PRECAR.Value;

                                         UltimoSeqIte.Close;
                                         UltimoSeqIte.Parameters.ParamByName('codemp').Value := dm2.ConsE120pedCODEMP.Value;
                                         UltimoSeqIte.Parameters.ParamByName('codfil').Value := dm2.ConsE120pedCODFIL.Value;
                                         UltimoSeqIte.Parameters.ParamByName('numped').Value := dm2.ConsE120pedNUMPED.Value;
                                         UltimoSeqIte.Parameters.ParamByName('seqipd').Value := ConsProdE120IpdSEQIPD.Value;
                                         UltimoSeqIte.Open;
                                         dm2.CadUsu_T120IpdUSU_SEQITE.Value := UltimoSeqIteUSU_SEQITE.Value + 1;
                                         dm2.CadUsu_T120Ipd.Post;
                                       end;//12
                                    dm2.ConsUsu_T120IpdAdd.Next;
                                  end;//10
                               end;//9

                          end//8
                       else
                          begin//13 se nao achou o produto no pedido principal insere um novo registro
                              vaDatEnt := DateToStr(Date);
                              vaDatEnt := FormatDateTime('DD/MM/YYYY',StrToDate(vaDatEnt));
                              vaNumPed := IntToStr(dm2.ConsE120pedNUMPED.Value);
                              vaCodPro := dm2.ConsE120IpdAddCODPRO.Value;
                              vaCodDer := dm2.ConsE120IpdAddCODDER.Value;
                              vaCodDep := dm2.ConsE120IpdAddCODDEP.Value;
                              vaTnsPro := dm2.ConsE120IpdAddTNSPRO.Value;
                              vaQtdPed := IntToStr(dm2.ConsE120IpdAddQTDABE.AsInteger);
                              vaCodTpr := dm2.ConsE120IpdAddCODTPR.Value;
                              vaTotDsc := CurrToStr(dm2.ConsE120IpdAddUSU_TOTDSC.Value);
                              //busca a sequencia do item
                              SeqIpd.Close;
                              SeqIpd.Parameters.ParamByName('codemp').Value := Dm2.ConsE120pedCODEMP.Value;
                              SeqIpd.Parameters.ParamByName('codfil').Value := Dm2.ConsE120pedCODFIL.Value;
                              SeqIpd.Parameters.ParamByName('numped').Value := Dm2.ConsE120pedNUMPED.Value;
                              SeqIpd.Open;
                              if SeqIpdSEQIPD.Value = 0 then
                                 vnSeqIpd := 1
                              else
                                 vnSeqIpd := SeqIpdSEQIPD.Value + 1;

                              vaSeqIpd := IntToStr(vnSeqIpd);
                              // grava produtos do pedido
                              xPostQuery.Clear;
                              xPostQuery.Add('ACAO=SID.Ped.GravarProduto');
                              xPostQuery.Add('&NumPed='+vaNumPed);
                              xPostQuery.Add('&SeqIpd='+vaSeqIpd);
                              xPostQuery.Add('&CodPro='+vaCodPro);
                              xPostQuery.Add('&CodDer='+vaCodDer);
                              xPostQuery.Add('&QtdPed='+vaQtdPed);
                              xPostQuery.Add('&CodTpr='+vaCodTpr);
                              xPostQuery.Add('&TnsPro='+vaTnsPro);
                              xPostQuery.Add('&CodDep='+vaCodDep);
                              xPostQuery.Add('&DatEnt='+vaDatEnt);

                              // Executar ação  gravar itens Pedido
                              xRetorno := Trim(SapSid.Post(vA_URL, xPostQuery));

                              // Verificar retorno
                              if (xRetorno <> vaSeqIpd) then
                                  begin//14
                                     raise Exception.Create(xRetorno);
                                  end//14
                              else
                                  begin//15
                                     //atualiza o preço unitario
                                     vaPreUni := CurrToStr(dm2.ConsE120IpdAddPREUNI.AsCurrency);

                                     xPostQuery.Clear;
                                     xPostQuery.Add('ACAO=SID.Ped.GravarProduto');
                                     xPostQuery.Add('&NumPed='+vaNumPed);
                                     xPostQuery.Add('&SeqIpd='+vaSeqIpd);
                                     xPostQuery.Add('&CodPro='+vaCodPro);
                                     xPostQuery.Add('&CodDer='+vaCodDer);
                                     xPostQuery.Add('&QtdPed='+vaQtdPed);
                                     xPostQuery.Add('&CodTpr='+vaCodTpr);
                                     xPostQuery.Add('&PreUni='+vaPreUni);

                                     // Executar ação  Alterar Pedido
                                     xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));


                                    //altera o item com o total de desconto
                                    Dm2.CadE120Ipd.Close;
                                    Dm2.CadE120Ipd.Parameters.ParamByName('codemp').Value := dm2.ConsE120pedCODEMP.Value;
                                    Dm2.CadE120Ipd.Parameters.ParamByName('codfil').Value := dm2.ConsE120pedCODFIL.Value;
                                    Dm2.CadE120Ipd.Parameters.ParamByName('numped').Value := dm2.ConsE120pedNUMPED.Value;
                                    Dm2.CadE120Ipd.Parameters.ParamByName('seqipd').Value := StrToInt(vaSeqIpd);
                                    Dm2.CadE120Ipd.Open;
                                    Dm2.CadE120Ipd.Edit;
                                    Dm2.CadE120IpdUSU_TOTDSC.Value := dm2.ConsE120IpdAddUSU_TOTDSC.Value;
                                    Dm2.CadE120IpdUSU_TOTDSCORI.Value := dm2.ConsE120IpdAddUSU_TOTDSCORI.Value;
                                    Dm2.CadE120IpdUSU_VLRORI.Value :=  dm2.ConsE120IpdAddUSU_VLRORI.Value;
                                    Dm2.CadE120Ipd.Post;

                                   //inseri as cores do produto
                                   //consulta as cores do item que esta sendo adicionado
                                   dm2.ConsUsu_T120IpdAdd.Close;
                                   dm2.ConsUsu_T120IpdAdd.Parameters.ParamByName('codemp').Value := dm2.ConsE120pedAddCODEMP.Value;
                                   dm2.ConsUsu_T120IpdAdd.Parameters.ParamByName('codfil').Value := dm2.ConsE120pedAddCODFIL.Value;
                                   dm2.ConsUsu_T120IpdAdd.Parameters.ParamByName('numped').Value := dm2.ConsE120pedAddNUMPED.Value;
                                   dm2.ConsUsu_T120IpdAdd.Parameters.ParamByName('seqipd').Value := dm2.ConsE120IpdAddSEQIPD.Value;
                                   dm2.ConsUsu_T120IpdAdd.Open;
                                   dm2.ConsUsu_T120IpdAdd.First;
                                   while not dm2.ConsUsu_T120IpdAdd.Eof do
                                      begin//16
                                         dm2.CadUsu_T120Ipd.Open;
                                         dm2.CadUsu_T120Ipd.Insert;
                                         dm2.CadUsu_T120IpdUSU_CODEMP.Value := dm2.ConsE120pedCODEMP.Value;
                                         dm2.CadUsu_T120IpdUSU_CODFIL.Value := dm2.ConsE120pedCODFIL.Value;
                                         dm2.CadUsu_T120IpdUSU_NUMPED.Value := dm2.ConsE120pedNUMPED.Value;
                                         dm2.CadUsu_T120IpdUSU_SEQIPD.Value := StrToInt(vaSeqIpd);
                                         dm2.CadUsu_T120IpdUSU_TIPCMB.Value := dm2.ConsUsu_T120IpdAddUSU_TIPCMB.Value;
                                         dm2.CadUsu_T120IpdUSU_COR001.Value := dm2.ConsUsu_T120IpdAddUSU_COR001.Value;
                                         dm2.CadUsu_T120IpdUSU_COR002.Value := dm2.ConsUsu_T120IpdAddUSU_COR002.Value;
                                         dm2.CadUsu_T120IpdUSU_CODPRO.Value := dm2.ConsUsu_T120IpdAddUSU_CODPRO.Value;
                                         dm2.CadUsu_T120IpdUSU_CODDER.Value := dm2.ConsUsu_T120IpdAddUSU_CODDER.Value;
                                         dm2.CadUsu_T120IpdUSU_QTDCOR.Value := dm2.ConsUsu_T120IpdAddUSU_QTDCOR.Value;
                                         dm2.CadUsu_T120IpdUSU_QTDABE.Value := dm2.ConsUsu_T120IpdAddUSU_QTDABE.Value;
                                         dm2.CadUsu_T120IpdUSU_QTDCAN.Value := dm2.ConsUsu_T120IpdAddUSU_QTDCAN.Value;
                                         dm2.CadUsu_T120IpdUSU_TECTRA.Value := dm2.ConsUsu_T120IpdAddUSU_TECTRA.Value;
                                         dm2.CadUsu_T120IpdUSU_NUMANE.Value := dm2.ConsUsu_T120IpdAddUSU_NUMANE.Value;
                                         dm2.CadUsu_T120IpdUSU_PRECAR.Value := dm2.ConsUsu_T120IpdAddUSU_PRECAR.Value;

                                         UltimoSeqIte.Close;
                                         UltimoSeqIte.Parameters.ParamByName('codemp').Value := dm2.ConsE120pedCODEMP.Value;
                                         UltimoSeqIte.Parameters.ParamByName('codfil').Value := dm2.ConsE120pedCODFIL.Value;
                                         UltimoSeqIte.Parameters.ParamByName('numped').Value := dm2.ConsE120pedNUMPED.Value;
                                         UltimoSeqIte.Parameters.ParamByName('seqipd').Value := StrToInt(vaSeqIpd);
                                         UltimoSeqIte.Open;
                                         dm2.CadUsu_T120IpdUSU_SEQITE.Value := UltimoSeqIteUSU_SEQITE.Value + 1;
                                         dm2.CadUsu_T120Ipd.Post;

                                        dm2.ConsUsu_T120IpdAdd.Next;
                                      end;//16


                                  end;//15
                          end;//13
                       dm2.ConsE120IpdAdd.Next;
                   end;//7
               vaNumPedP := vaNumPed;
               vaCodCli := IntToStr(dm2.ConsE120PedAddCODCLI.Value);
               vaNumPed := IntToStr(dm2.ConsE120PedAddNUMPED.Value);

               //grava observação de que o pedido foi cancelado pq foi incluido em outro
               vaObsPed := 'Incluido no pedido: '+vaNumPedP;;
               vaSitObs := 'G';
               xPostQuery.Clear;
               xPostQuery.Add('ACAO=SID.Ped.GravarObservacao');
               xPostQuery.Add('&NumPed='+vaNumPed);
               xPostQuery.Add('&ObsPed='+vaObsPed);
               xPostQuery.Add('&SitObs='+vaSitObs);
               //executa açao gravar observação
               xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

               vaSitPed := '5';
                // cancela pedido
               xPostQuery.Clear;
               xPostQuery.Add('ACAO=SID.Ped.Gravar');
               xPostQuery.Add('&CodCli='+vaCodCli);
               xPostQuery.Add('&NumPed='+vaNumPed);
               xPostQuery.Add('&SitPed='+vaSitPed);

               // Executar ação  Cancelar  pedido
               xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

             end;//4
         Screen.Cursor := Cursor;
         DBGrid1.DataSource := DsConsE120IpdAdd;
         Close;
    end;//1
end;

procedure TFAdicionaPedidoEmPedido.EdNumPedAddExit(Sender: TObject);
var vaEndCli : string;
begin
    if trim(EdNumPedAdd.Text) <> '' then
       begin//1
         dm2.ConsE120PedAdd.Close;
         dm2.ConsE120PedAdd.Parameters.ParamByName('codfil').Value := 1;
         dm2.ConsE120PedAdd.Parameters.ParamByName('numped').Value := StrToInt(trim(EdNumPedAdd.Text));
         dm2.ConsE120PedAdd.Open;
         if dm2.ConsE120PedAdd.IsEmpty then
            begin//2
              Application.MessageBox('Pedido não encontrado','ERRO', MB_ICONERROR+MB_OK);
              LCodFilAdd.Caption := '';
              LDatEmiAdd.Caption := '';
              LSitPedAdd.Caption :='';
              LNomCliAdd.Caption := '';
              LNomRepAdd.Caption := '';
              LTecTransAdd.Caption := '';
              LPreCarAdd.Caption := '';
              LDsPgtoAdd.Caption := '';
              LEndCliAdd.Caption := '';

              dm2.ConsE120IpdAdd.Close;
              dm2.ConsE120IpdAdd.Parameters.ParamByName('codfil').Value := 99;
              dm2.ConsE120IpdAdd.Parameters.ParamByName('numped').Value := 99999999;
              dm2.ConsE120IpdAdd.Open;

              ActiveControl := EdNumPedAdd;
            end//2
         else
            begin//3
              LCodFilAdd.Caption := IntToStr(dm2.ConsE120PedAddCODFIL.Value);
              LDatEmiAdd.Caption := DateToStr(dm2.ConsE120PedAddDATEMI.Value);

              if dm2.ConsE120PedAddSITPED.Value = 1 then
                 LSitPedAdd.Caption := IntToStr(dm2.ConsE120PedAddSITPED.Value) +' - Aberto Total'
              else
              if dm2.ConsE120PedAddSITPED.Value = 2 then
                 LSitPedAdd.Caption := IntToStr(dm2.ConsE120PedAddSITPED.Value) +' - Aberto Parcial'
              else
              if dm2.ConsE120PedAddSITPED.Value = 3 then
                 LSitPedAdd.Caption := IntToStr(dm2.ConsE120PedAddSITPED.Value) +' - Suspenso'
              else
              if dm2.ConsE120PedAddSITPED.Value = 4 then
                 LSitPedAdd.Caption := IntToStr(dm2.ConsE120PedAddSITPED.Value) +' - Liquidado'
              else
              if dm2.ConsE120PedAddSITPED.Value = 5 then
                 LSitPedAdd.Caption := IntToStr(dm2.ConsE120PedAddSITPED.Value) +' - Cancelado'
              else
              if dm2.ConsE120PedAddSITPED.Value = 7 then
                 LSitPedAdd.Caption := IntToStr(dm2.ConsE120PedAddSITPED.Value) +' - Em Transmição'
              else
              if dm2.ConsE120PedAddSITPED.Value = 8 then
                 LSitPedAdd.Caption := IntToStr(dm2.ConsE120PedAddSITPED.Value) +' - Prepareção Análise ou NF'
              else
              if dm2.ConsE120PedAddSITPED.Value = 9 then
                 LSitPedAdd.Caption := IntToStr(dm2.ConsE120PedAddSITPED.Value) +' - Não Fechado';

              Dm2.ConsE085Cli.Close;
              Dm2.ConsE085Cli.Parameters.ParamByName('codfil').Value := dm2.ConsE120PedAddCODFIL.Value;
              Dm2.ConsE085Cli.Parameters.ParamByName('codcli').Value := dm2.ConsE120PedAddCODCLI.Value;
              Dm2.ConsE085Cli.Open;

              LNomCliAdd.Caption := IntToStr(Dm2.ConsE085CliCODCLI.Value)+ ' - ' +Dm2.ConsE085CliNOMCLI.Value;
              vaEndCli := Dm2.ConsE085CliAPECLI.Value +'  -  '+
              Dm2.ConsE085CliENDCLI.Value+'  -  '+
              Dm2.ConsE085CliNENCLI.Value+'  -  '+
              Dm2.ConsE085CliBAICLI.Value+'  -  '+
              Dm2.ConsE085CliCIDCLI.Value+'  -  '+
              Dm2.ConsE085CliSIGUFS.Value+'  -  '+
              Dm2.ConsE085CliFONCLI.Value;
              LEndCliAdd.Caption := vaEndCli;

              Dm2.ConsE090Rep.Close;
              Dm2.ConsE090Rep.Parameters.ParamByName('codrep').Value := dm2.ConsE120PedAddCODREP.Value;
              Dm2.ConsE090Rep.Open;
              LNomRepAdd.Caption := IntToStr(Dm2.ConsE090RepCODREP.Value)+' - '+ Dm2.ConsE090RepAPEREP.Value;

              LTecTransAdd.Caption := dm2.ConsE120PedAddUSU_PEDTRA.Value;
              LPreCarAdd.Caption := IntToStr(dm2.ConsE120PedAddUSU_PRECAR.Value);

              ConsE028Cpg.Close;
              ConsE028Cpg.Parameters.ParamByName('codcpg').Value := dm2.ConsE120PedAddCODCPG.Value;
              ConsE028Cpg.Open;
              LDsPgtoAdd.Caption := ConsE028CpgCODCPG.Value +' - '+ConsE028CpgDESCPG.Value;

              dm2.ConsE120IpdAdd.Close;
              dm2.ConsE120IpdAdd.Parameters.ParamByName('codfil').Value := dm2.ConsE120PedAddCODFIL.Value;
              dm2.ConsE120IpdAdd.Parameters.ParamByName('numped').Value := dm2.ConsE120PedAddNUMPED.Value;
              dm2.ConsE120IpdAdd.Open;

            end;//3

       end//1
    else
      begin//4
        LCodFilAdd.Caption := '';
        LDatEmiAdd.Caption := '';
        LSitPedAdd.Caption :='';
        LNomCliAdd.Caption := '';
        LNomRepAdd.Caption := '';
        LTecTransAdd.Caption := '';
        LPreCarAdd.Caption := '';
        LDsPgtoAdd.Caption := '';
        LEndCliAdd.Caption := '';

        dm2.ConsE120IpdAdd.Close;
        dm2.ConsE120IpdAdd.Parameters.ParamByName('codfil').Value := 99;
        dm2.ConsE120IpdAdd.Parameters.ParamByName('numped').Value := 99999999;
        dm2.ConsE120IpdAdd.Open;
      end;//4

end;

procedure TFAdicionaPedidoEmPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAdicionaPedidoEmPedido.FormShow(Sender: TObject);
begin
    dm2.ConsE120IpdAdd.Close;
    dm2.ConsE120IpdAdd.Parameters.ParamByName('codfil').Value := 99;
    dm2.ConsE120IpdAdd.Parameters.ParamByName('numped').Value := 99999999;
    dm2.ConsE120IpdAdd.Open;
end;

end.
