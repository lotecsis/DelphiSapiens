unit UAssistencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, Mask, rxToolEdit, DB,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, DBCtrls,
  rxCurrEdit;

type
  TFAssistencia = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label10: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    EdNumPed: TEdit;
    EdDatEmi: TDateEdit;
    EdTnsPro: TEdit;
    EdCodFil: TEdit;
    BNumPed: TBitBtn;
    BTnsPro: TBitBtn;
    EdCodCli: TEdit;
    EdCodRep: TEdit;
    BCodCli: TBitBtn;
    BCodRep: TBitBtn;
    EdSitPed: TEdit;
    LDsCodCli: TLabel;
    LDsCodRep: TLabel;
    LDsCodCpg: TLabel;
    LEndCli: TLabel;
    BSair: TBitBtn;
    BAlterar: TBitBtn;
    BInserir: TBitBtn;
    BExcluir: TBitBtn;
    LDsTnsPro: TLabel;
    DsConsE120IpdA: TDataSource;
    LDsSitPed: TLabel;
    SapSid: TIdHTTP;
    DsCadE120IpdA: TDataSource;
    EdCodPro: TEdit;
    EdCodDer: TEdit;
    EdTnsProI: TEdit;
    EdDatFab: TDateEdit;
    EdDatSol: TDateEdit;
    EdDatPer: TDateEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    MDesPer: TMemo;
    MMatUti: TMemo;
    Label17: TLabel;
    Label18: TLabel;
    EdInDev: TComboBox;
    Label19: TLabel;
    MArgSol: TMemo;
    Label20: TLabel;
    Label21: TLabel;
    EdVlrPro: TCurrencyEdit;
    BExcProd: TBitBtn;
    BCancProd: TBitBtn;
    BAltProd: TBitBtn;
    BConfProd: TBitBtn;
    BInserirProd: TBitBtn;
    LDsCodPro: TLabel;
    EdVlrAst: TCurrencyEdit;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdCor01: TEdit;
    EdCor02: TEdit;
    BConsCodPro: TBitBtn;
    BFechar: TBitBtn;
    BObsNf: TBitBtn;
    BConsDerivacao: TBitBtn;
    BObsPed: TBitBtn;
    edTotBru: TCurrencyEdit;
    edTotLiq: TCurrencyEdit;
    Label22: TLabel;
    Label23: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdDatEmiExit(Sender: TObject);
    procedure EdTnsProExit(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodRepExit(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure EdNumPedKeyPress(Sender: TObject; var Key: Char);
    procedure EdNumPedExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdSitPedExit(Sender: TObject);
    procedure BNumPedClick(Sender: TObject);
    procedure BInserirClick(Sender: TObject);
    procedure BAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadE120IpdAStateChange(Sender: TObject);
    procedure BAltProdClick(Sender: TObject);
    procedure BCancProdClick(Sender: TObject);
    procedure BInserirProdClick(Sender: TObject);
    procedure BConfProdClick(Sender: TObject);
    procedure EdTnsProIExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCor01Exit(Sender: TObject);
    procedure EdCor02Exit(Sender: TObject);
    procedure BConsCodProClick(Sender: TObject);
    procedure BFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BExcProdClick(Sender: TObject);
    procedure EdNumPedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodRepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BObsNfClick(Sender: TObject);
    procedure BConsDerivacaoClick(Sender: TObject);
    procedure EdCodDerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BCodCliClick(Sender: TObject);
    procedure BObsPedClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    vaStatusCadE120IpdA : TDataSetState;
  public
    { Public declarations }
    vaCodFil, vaNumPed, vaDatEmi, vaTnsPro, vaCodCli, vaCodRep, vaCodCpg, vaSitPed : String;
    vaCarPro : string;
    vnTotBru,vnTotLiq : double;
    function AnalizaAlteracao : string;
  end;

var
  FAssistencia: TFAssistencia;

implementation

uses UDm2, UConsGeralNfEnt, UPrincipal, UObsPedAst, UConsDerivacoes,
  UVisuObsPedAst, UConsClientes;

{$R *.dfm}

function TFAssistencia.AnalizaAlteracao : string;
var vaDatEmii : string;
begin
   vaDatEmii := DateToStr(EdDatEmi.Date);
   if (vaDatEmii = vaDatEmi) and (vaTnsPro = EdTnsPro.Text) and (vaCodCli = EdCodCli.Text) and
      (vaCodRep = EdCodRep.Text) and (vaSitPed = EdSitPed.Text) then
         result := 'N'
   else
         Result := 'S';

end;
procedure TFAssistencia.BAlterarClick(Sender: TObject);
var
vA_URL, vA_BasQry, xRetorno : String;
xPostQuery		              : TStringList;

vaIDatEmi : String;
vaICodFil : String;
vaINumPed : String;
vaITnsPro : String;
vaICodCli : String;
vaICodRep : String;
vaICodCpg : String;
vaISitPed : String;

begin
if BInserir.Enabled = false then
   begin

  //atribui os valores dos campos para as variaveis
  vaIDatEmi := DateToStr(EdDatEmi.Date);
  vaIDatEmi := FormatDateTime('DD/MM/YYYY',StrToDate(vaIDatEmi));
  vaICodFil := EdCodFil.Text;
  vaINumPed := EdNumPed.Text;
  vaITnsPro := EdTnsPro.Text;
  vaICodCli := EdCodCli.Text;
  vaICodRep := EdCodRep.Text;
  vaICodCpg := '028';
  vaISitPed := EdSitPed.Text;


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

  // Altera cabeçalho do pedido
  xPostQuery.Clear;
  xPostQuery.Add('ACAO=SID.Ped.Gravar');
  xPostQuery.Add('&CodCli='+VaICodCli);
  xPostQuery.Add('&NumPed='+VaINumPed);
  xPostQuery.Add('&DatEmi='+VaIDatEmi);
  xPostQuery.Add('&TnsPro='+VaITnsPro);
  xPostQuery.Add('&CodRep='+VaICodRep);
  xPostQuery.Add('&CodCpg='+VaICodCpg);
  xPostQuery.Add('&SitPed='+VaISitPed);

 // Executar ação  Alterar Pedido
  xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

  // Verificar retorno
  if (xRetorno <> vaNumPed) then
    raise Exception.Create(xRetorno)
  else
     MessageDlg('Assistência: ' + vaNumPed + '  alterada com sucesso.',mtInformation,[mbOk],0);

   BAlterar.Enabled := False;
   Dm2.ADOUsuT000sis.Close;

   EdNumPedExit(Sender);
   end;

end;

procedure TFAssistencia.BAltProdClick(Sender: TObject);
begin
    if not Dm2.ConsE120IpdA.IsEmpty then
       begin
          Dm2.CadE120IpdA.Close;
          Dm2.CadE120IpdA.Parameters.ParamByName('codemp').Value := Dm2.ConsE120IpdACODEMP.Value;
          Dm2.CadE120IpdA.Parameters.ParamByName('codfil').Value := Dm2.ConsE120IpdACODFIL.Value;
          Dm2.CadE120IpdA.Parameters.ParamByName('numped').Value := Dm2.ConsE120IpdANUMPED.Value;
          Dm2.CadE120IpdA.Parameters.ParamByName('seqipd').Value := Dm2.ConsE120IpdASEQIPD.Value;
          Dm2.CadE120IpdA.Open;
          if not Dm2.CadE120IpdA.IsEmpty then
             begin
               Dm2.CadE120IpdA.Edit;



             end;
       end;
end;

procedure TFAssistencia.BCancProdClick(Sender: TObject);
begin
if Application.MessageBox('Deseja realmente cancelar?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
   begin
      Dm2.CadE120IpdA.Cancel;
   end;

end;

procedure TFAssistencia.BCodCliClick(Sender: TObject);
begin
    {FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
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
    FConsGeralNfEnt.vaTela := 'FAssistencia';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodCli; }

    FConsClientes := TFConsClientes.Create(Self);
    FConsClientes.vaTelaOrigem := 'FAssistencia';
    FConsClientes.ShowModal;
    FreeAndNil(FConsClientes);
    ActiveControl := EdCodCli;
end;

procedure TFAssistencia.BConfProdClick(Sender: TObject);
var vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;

    vaNumPed : String;
    vaSeqIpd : String;
    vaCodPro : String;
    vaCodDer : String;
    vaQtdPed : String;
    vaPreUni : String;
    vaTnsPro : String;
    vaCodDep : String;
    vaDatEnt : String;
    vaCodTpr : String;
    vaTotDsc : String;
    vnSeqLog : integer;
    vnSeqIpd : integer;
    vaObsPed : String;
    vaSitObs : String;
begin
  if trim(EdCodPro.Text) = '' then
     begin
       MessageDlg('Informe o produto',mtWarning,[mbOK],0);
       ActiveControl := EdCodPro;
       Abort;
     end
  else
  if trim(EdCodDer.Text) = '' then
     begin
       MessageDlg('Informe a derivação',mtWarning,[mbOK],0);
       ActiveControl := EdCodDer;
       Abort;
     end
  else
  if trim(EdTnsProI.Text) = '' then
   begin
     MessageDlg('Informe a transação',mtWarning,[mbOK],0);
     ActiveControl := EdTnsProI;
     Abort;
   end
  else
  if EdDatSol.Date = 0 then
   begin
     MessageDlg('Informe a data de solicitação',mtWarning,[mbOK],0);
     ActiveControl := EdDatSol;
     Abort;
   end;

   if trim(EdCor01.Text) = '' then // a vania pediu pra obrigar informar a cor, dia 28/04/2016
      begin
        MessageDlg('Informe a cor!',mtWarning,[mbOK],0);
        ActiveControl := EdCor01;
        Abort
      end;

   if ((trim(EdTnsProI.Text) = '90111') or (trim(EdTnsProI.Text) = '90121')) and (trim(EdCor01.Text) = '') then
      begin
        MessageDlg('Para a transação 90111 ou 90121 - TROCA, é necessario informar a cor do produto!',mtWarning,[mbOK],0);
        ActiveControl := EdCor01;
        Abort
      end;

    if (EdInDev.ItemIndex = 2) and (EdVlrAst.Value = 0) then
       begin
         MessageDlg('Para assistência INDEVIDA é necessário informar o valor a ser cobrado!',mtWarning,[mbOK],0);
         ActiveControl := EdVlrAst;
         Abort
       end;

       //conexao com o sid
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
       xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

   if vaStatusCadE120IpdA in [dsinsert] then
      begin

         vaDatEnt := DateToStr(Date);
         vaDatEnt := FormatDateTime('DD/MM/YYYY',StrToDate(vaDatEnt));
         vaNumPed := IntToStr(Dm2.ConsE120PedANUMPED.Value);
        // vaSeqIpd := ;
         vaCodPro := trim(EdCodPro.Text);
         vaCodDer := trim(EdCodDer.Text);
         if trim(EdTnsProI.Text) = '90110' then
            vaCodDep := 'AST'
         else if (trim(EdTnsProI.Text) = '90111') or (trim(EdTnsProI.Text) = '90121') then
                 vaCodDep := 'TRC';

         vaTnsPro := trim(EdTnsProI.Text);
         vaPreUni := CurrToStr(EdVlrPro.Value);
         vaQtdPed := '1';
         vaCodTpr := '';
         vaTotDsc := '';
         // grava produtos do pedido
         xPostQuery.Clear;
         xPostQuery.Add('ACAO=SID.Ped.GravarProduto');
         xPostQuery.Add('&NumPed='+vaNumPed);
        // xPostQuery.Add('&SeqIpd='+vaSeqIpd);
         xPostQuery.Add('&CodPro='+vaCodPro);
         xPostQuery.Add('&CodDer='+vaCodDer);
         xPostQuery.Add('&QtdPed='+vaQtdPed);
         xPostQuery.Add('&TnsPro='+vaTnsPro);
         xPostQuery.Add('&CodDep='+vaCodDep);
         xPostQuery.Add('&DatEnt='+vaDatEnt);
         if EdVlrPro.Value <> 0 then
            xPostQuery.Add('&PreUni='+vaPreUni)
         else
            begin
               vaCodTpr := InputBox('Tabela de Preço','Informe a tabela de preço','');

               xPostQuery.Add('&CodTpr='+vaCodTpr);
            end;

        // Executar ação  gravar itens Pedido
        xRetorno := Trim(SapSid.Post(vA_URL, xPostQuery));
        // Verificar retorno
        try
         vnSeqIpd := StrToInt(xRetorno);
        except
          raise Exception.Create(xRetorno);
        end;

        //grava na tabela usu_t120ipdA
        Dm2.CadE120IpdAUSU_CODEMP.Value := 1;
        Dm2.CadE120IpdAUSU_CODFIL.Value := 1;
        Dm2.CadE120IpdAUSU_NUMPED.Value := Dm2.ConsE120PedANUMPED.Value;
        Dm2.CadE120IpdAUSU_SEQIPD.Value := vnSeqIpd;
        Dm2.CadE120IpdAUSU_VLRPRO.Value := EdVlrAst.Value;
        if EdInDev.ItemIndex = 1 then
           Dm2.CadE120IpdAUSU_INDEV.Value := 'DEVIDA'
        else if EdInDev.ItemIndex = 2 then
                Dm2.CadE120IpdAUSU_INDEV.Value := 'INDEVIDA'
              else
                Dm2.CadE120IpdAUSU_INDEV.Value := ' ';
       Dm2.CadE120IpdAUSU_DATFAB.Value := EdDatFab.Date;
       Dm2.CadE120IpdAUSU_DATSOL.Value := EdDatSol.Date;
       Dm2.CadE120IpdAUSU_DATPER.Value := EdDatPer.Date;
       Dm2.CadE120IpdAUSU_USUGER.Value := FPrincipal.cd_usuario;
       Dm2.CadE120IpdAUSU_DESPER.Value := MDesPer.Text;
       Dm2.CadE120IpdAUSU_MATUTI.Value := MMatUti.Text;
       Dm2.CadE120IpdAUSU_ARGSOL.Value := MArgSol.Text;
       try
         Dm2.CadE120IpdA.Post;
       except
          raise Exception.Create('Não foi possível gravar na tabela Usu_T120IpdA');
       end;

       //se for uma troca 90111 grava a cor do produto na tabela usu_t120Ipd
       if trim(EdCor01.Text) <> '' then
          begin
            dm2.ConsGeral.Close;
            dm2.ConsGeral.SQL.Clear;
            dm2.ConsGeral.SQL.Add('select * from usu_t120ipd where usu_codemp = :codemp and');
            dm2.ConsGeral.SQL.Add('usu_codfil = :codfil and');
            dm2.ConsGeral.SQL.Add('usu_numped = :numped and');
            dm2.ConsGeral.SQL.Add('usu_seqipd = :seqipd');
            dm2.ConsGeral.SQL.Add('order by usu_seqite desc');
            dm2.ConsGeral.Parameters.ParamByName('codemp').Value := Dm2.ConsE120PedACODEMP.Value;
            dm2.ConsGeral.Parameters.ParamByName('codfil').Value := Dm2.ConsE120PedACODFIL.Value;
            dm2.ConsGeral.Parameters.ParamByName('numped').Value := Dm2.ConsE120PedANUMPED.Value;
            dm2.ConsGeral.Parameters.ParamByName('seqipd').Value := vnSeqIpd;
            dm2.ConsGeral.Open;
            if not dm2.ConsGeral.IsEmpty then
               begin
                  //se tiver alguma cor apaga pq para assistencia só pode ter uma cor no produto
                  Dm2.CadUsu_T120Ipd.Close;
                  Dm2.CadUsu_T120Ipd.Parameters.ParamByName('codemp').Value := Dm2.ConsGeral.FieldByName('usu_codemp').Value;
                  Dm2.CadUsu_T120Ipd.Parameters.ParamByName('codfil').Value := Dm2.ConsGeral.FieldByName('usu_codfil').Value;
                  Dm2.CadUsu_T120Ipd.Parameters.ParamByName('numped').Value := Dm2.ConsGeral.FieldByName('usu_numped').Value;
                  Dm2.CadUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := Dm2.ConsGeral.FieldByName('usu_seqipd').Value;
                  Dm2.CadUsu_T120Ipd.Parameters.ParamByName('seqite').Value := Dm2.ConsGeral.FieldByName('usu_seqite').Value;
                  Dm2.CadUsu_T120Ipd.Open;
                  if not Dm2.CadUsu_T120Ipd.IsEmpty then
                     Dm2.CadUsu_T120Ipd.Delete;
               end;
            Dm2.CadUsu_T120Ipd.Open;
            Dm2.CadUsu_T120Ipd.Insert;
            Dm2.CadUsu_T120IpdUSU_CODEMP.Value := Dm2.ConsE120PedACODEMP.Value;
            Dm2.CadUsu_T120IpdUSU_CODFIL.Value := Dm2.ConsE120PedACODFIL.Value;
            Dm2.CadUsu_T120IpdUSU_NUMPED.Value := Dm2.ConsE120PedANUMPED.Value;
            Dm2.CadUsu_T120IpdUSU_SEQIPD.Value := vnSeqIpd;
            Dm2.CadUsu_T120IpdUSU_SEQITE.Value := 1;
            Dm2.CadUsu_T120IpdUSU_QTDCOR.Value := 1;
            if trim(EdCor02.Text) <> '' then
               begin
                 Dm2.CadUsu_T120IpdUSU_TIPCMB.Value := 2;
                 Dm2.CadUsu_T120IpdUSU_COR002.Value := trim(EdCor02.Text);
               end
            else
               begin
                 Dm2.CadUsu_T120IpdUSU_TIPCMB.Value := 1;
                 Dm2.CadUsu_T120IpdUSU_COR002.Value := ' ';
               end;
           Dm2.CadUsu_T120IpdUSU_COR001.Value := trim(EdCor01.Text);
           Dm2.CadUsu_T120IpdUSU_CODPRO.Value := trim(EdCodPro.Text);
           Dm2.CadUsu_T120IpdUSU_CODDER.Value := trim(EdCodDer.Text);
           Dm2.CadUsu_T120IpdUSU_TECTRA.Value := 'N';
           Dm2.CadUsu_T120IpdUSU_QTDABE.Value := 1;
           Dm2.CadUsu_T120IpdUSU_QTDCAN.Value := 0;
           Dm2.CadUsu_T120IpdUSU_NUMANE.Value := 0;
           Dm2.CadUsu_T120IpdUSU_PRECAR.Value := 0;
           Dm2.CadUsu_T120IpdUSU_NUMCOM.Value := 0;
           Dm2.CadUsu_T120Ipd.Post;
          end;


          //se ja tiver argumento da solicitaçao grava uma observaçao no pedido
          vaSitObs := 'G';
          vaObsPed := trim(MArgSol.Text);
          if trim(MArgSol.Text) <> '' then
             begin
                 xPostQuery.Clear;
                 xPostQuery.Add('ACAO=SID.Ped.GravarObservacao ');
                 xPostQuery.Add('&NumPed='+vaNumPed);
                 xPostQuery.Add('&ObsPed='+vaObsPed);
                 xPostQuery.Add('&SitObs='+vaSitObs);

                // Executar ação  gravar observação
                xRetorno := Trim(SapSid.Post(vA_URL, xPostQuery));
             end;
      end//1
   else
     if vaStatusCadE120IpdA in [dsedit] then  //se estiver alterando
        begin//6
           if Dm2.ConsE120PedASITPED.Value in [1,9] then //se o pedido ainda estiver em aberto
              begin//7
                 vaDatEnt := DateToStr(Date);
                 vaDatEnt := FormatDateTime('DD/MM/YYYY',StrToDate(vaDatEnt));
                 vaNumPed := IntToStr(Dm2.ConsE120PedANUMPED.Value);
                 vaSeqIpd := IntToStr(Dm2.CadE120IpdAUSU_SEQIPD.AsInteger);
                 vaCodPro := trim(EdCodPro.Text);
                 vaCodDer := trim(EdCodDer.Text);
                 if trim(EdTnsProI.Text) = '90110' then
                    vaCodDep := 'AST'
                 else if (trim(EdTnsProI.Text) = '90111') or (trim(EdTnsProI.Text) = '90121') then
                         vaCodDep := 'TRC';

                 vaTnsPro := trim(EdTnsProI.Text);
                 vaPreUni := CurrToStr(EdVlrPro.Value);
                 vaQtdPed := '1';
                 vaCodTpr := '';
                 vaTotDsc := '';
                 // grava produtos do pedido
                 xPostQuery.Clear;
                 xPostQuery.Add('ACAO=SID.Ped.GravarProduto');
                 xPostQuery.Add('&NumPed='+vaNumPed);
                 xPostQuery.Add('&SeqIpd='+vaSeqIpd);
               //xPostQuery.Add('&CodPro='+vaCodPro);
               //xPostQuery.Add('&CodDer='+vaCodDer);
               //xPostQuery.Add('&QtdPed='+vaQtdPed);
                 xPostQuery.Add('&TnsPro='+vaTnsPro);
                 xPostQuery.Add('&CodDep='+vaCodDep);
                 xPostQuery.Add('&DatEnt='+vaDatEnt);
                 if EdVlrPro.Value <> 0 then
                    xPostQuery.Add('&PreUni='+vaPreUni)
                 else
                    begin
                       vaCodTpr := InputBox('Tabela de Preço','Informe a tabela de preço','');

                       xPostQuery.Add('&CodTpr='+vaCodTpr);
                    end;

                // Executar ação  gravar itens Pedido
                xRetorno := Trim(SapSid.Post(vA_URL, xPostQuery));
                // Verificar retorno
                try
                 vnSeqIpd := StrToInt(xRetorno);
                except
                  raise Exception.Create(xRetorno);
                end;

                //se ja tiver argumento da solicitaçao grava uma observaçao no pedido
                vaSitObs := 'G';
                vaObsPed := trim(MArgSol.Text);
                if trim(MArgSol.Text) <> '' then
                   begin
                       xPostQuery.Clear;
                       xPostQuery.Add('ACAO=SID.Ped.GravarObservacao ');
                       xPostQuery.Add('&NumPed='+vaNumPed);
                       xPostQuery.Add('&ObsPed='+vaObsPed);
                       xPostQuery.Add('&SitObs='+vaSitObs);

                      // Executar ação  gravar observação
                      xRetorno := Trim(SapSid.Post(vA_URL, xPostQuery));
                   end;

              end;//7

                 //altera na tabela usu_t120ipdA
                Dm2.CadE120IpdAUSU_VLRPRO.Value := EdVlrAst.Value;
                if EdInDev.ItemIndex = 1 then
                   Dm2.CadE120IpdAUSU_INDEV.Value := 'DEVIDA'
                else if EdInDev.ItemIndex = 2 then
                        Dm2.CadE120IpdAUSU_INDEV.Value := 'INDEVIDA'
                      else
                        Dm2.CadE120IpdAUSU_INDEV.Value := ' ';
               Dm2.CadE120IpdAUSU_DATFAB.Value := EdDatFab.Date;
               Dm2.CadE120IpdAUSU_DATSOL.Value := EdDatSol.Date;
               Dm2.CadE120IpdAUSU_DATPER.Value := EdDatPer.Date;
               Dm2.CadE120IpdAUSU_DESPER.Value := MDesPer.Text;
               Dm2.CadE120IpdAUSU_MATUTI.Value := MMatUti.Text;
               Dm2.CadE120IpdAUSU_ARGSOL.Value := MArgSol.Text;
               try
                 Dm2.CadE120IpdA.Post;
               except
                  raise Exception.Create('Não foi possível gravar na tabela Usu_T120IpdA');
               end;

               //se tiver cor altera coloca em edição
                dm2.ConsGeral.Close;
                dm2.ConsGeral.SQL.Clear;
                dm2.ConsGeral.SQL.Add('select * from usu_t120ipd where usu_codemp = :codemp and');
                dm2.ConsGeral.SQL.Add('usu_codfil = :codfil and');
                dm2.ConsGeral.SQL.Add('usu_numped = :numped and');
                dm2.ConsGeral.SQL.Add('usu_seqipd = :seqipd');
                dm2.ConsGeral.SQL.Add('order by usu_seqite desc');
                dm2.ConsGeral.Parameters.ParamByName('codemp').Value := Dm2.ConsE120IpdACODEMP.Value;
                dm2.ConsGeral.Parameters.ParamByName('codfil').Value := Dm2.ConsE120IpdACODFIL.Value;
                dm2.ConsGeral.Parameters.ParamByName('numped').Value := Dm2.ConsE120IpdANUMPED.Value;
                dm2.ConsGeral.Parameters.ParamByName('seqipd').Value := Dm2.ConsE120IpdASEQIPD.Value;
                dm2.ConsGeral.Open;
                if not dm2.ConsGeral.IsEmpty then
                   begin
                     Dm2.CadUsu_T120Ipd.Close;
                     Dm2.CadUsu_T120Ipd.Parameters.ParamByName('codemp').Value := Dm2.ConsGeral.FieldByName('usu_codemp').Value;
                     Dm2.CadUsu_T120Ipd.Parameters.ParamByName('codfil').Value := Dm2.ConsGeral.FieldByName('usu_codfil').Value;
                     Dm2.CadUsu_T120Ipd.Parameters.ParamByName('numped').Value := Dm2.ConsGeral.FieldByName('usu_numped').Value;
                     Dm2.CadUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := Dm2.ConsGeral.FieldByName('usu_seqipd').Value;
                     Dm2.CadUsu_T120Ipd.Parameters.ParamByName('seqite').Value := Dm2.ConsGeral.FieldByName('usu_seqite').Value;
                     Dm2.CadUsu_T120Ipd.Open;
                     if not Dm2.CadUsu_T120Ipd.IsEmpty then
                        begin
                          Dm2.CadUsu_T120Ipd.Edit;

                          if trim(EdCor02.Text) <> '' then
                             begin
                               Dm2.CadUsu_T120IpdUSU_TIPCMB.Value := 2;
                               Dm2.CadUsu_T120IpdUSU_COR002.Value := trim(EdCor02.Text);
                             end
                          else
                             begin
                               Dm2.CadUsu_T120IpdUSU_TIPCMB.Value := 1;
                               Dm2.CadUsu_T120IpdUSU_COR002.Value := ' ';
                             end;
                          Dm2.CadUsu_T120IpdUSU_COR001.Value := trim(EdCor01.Text);
                          Dm2.CadUsu_T120IpdUSU_CODPRO.Value := trim(EdCodPro.Text);
                          Dm2.CadUsu_T120IpdUSU_CODDER.Value := trim(EdCodDer.Text);

                          Dm2.CadUsu_T120Ipd.Post;
                        end;
                   end;
        end;//6

        EdNumPedExit(Sender);

end;

procedure TFAssistencia.BConsCodProClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,e075pro.codfam,e075pro.codori';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where codori = 01';
    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodPro';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FAssistencia';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
    ActiveControl := EdCodPro;
end;

procedure TFAssistencia.BConsDerivacaoClick(Sender: TObject);
begin
   FConsDerivacoes := TFConsDerivacoes.Create(Self);
   FConsDerivacoes.vaCodPro := EdCodPro.Text;
  if FConsDerivacoes.ShowModal = mrOk then
     begin
       EdCodDer.Text := FConsDerivacoes.ConsDerivacoesCODDER.Value;

     end;
   FreeAndNil(FConsDerivacoes);
   ActiveControl := EdCodDer;
end;

procedure TFAssistencia.BExcProdClick(Sender: TObject);
var vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;
    vaNumPed : string;
    vaSeqIpd : string;
begin
  if not Dm2.ConsE120IpdA.IsEmpty then
       begin//100
          Dm2.CadE120IpdA.Close;
          Dm2.CadE120IpdA.Parameters.ParamByName('codemp').Value := Dm2.ConsE120IpdACODEMP.Value;
          Dm2.CadE120IpdA.Parameters.ParamByName('codfil').Value := Dm2.ConsE120IpdACODFIL.Value;
          Dm2.CadE120IpdA.Parameters.ParamByName('numped').Value := Dm2.ConsE120IpdANUMPED.Value;
          Dm2.CadE120IpdA.Parameters.ParamByName('seqipd').Value := Dm2.ConsE120IpdASEQIPD.Value;
          Dm2.CadE120IpdA.Open;
          if not Dm2.CadE120IpdA.IsEmpty then
             begin//200
               if Application.MessageBox('Deseja realmente excluir o registro?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
                 begin//1
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


                    vaNumPed := IntToStr(Dm2.CadE120IpdAUSU_NUMPED.AsInteger);
                    vaSeqIpd := IntToStr(Dm2.CadE120IpdAUSU_SEQIPD.AsInteger);

                    // Exclui produto do pedido
                    xPostQuery.Clear;
                    xPostQuery.Add('ACAO=SID.Ped.ExcluirProduto');
                    xPostQuery.Add('&NumPed='+vaNumPed);
                    xPostQuery.Add('&SeqIpd='+vaSeqIpd);

                    // Executar ação  Exclui produto do pedido
                    xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                    // Verificar retorno
                    if (xRetorno <> 'OK') then
                       raise Exception.Create(xRetorno)
                    else
                       begin//2

                          //apaga a cor se tiver
                          dm2.ConsGeral.Close;
                          dm2.ConsGeral.SQL.Clear;
                          dm2.ConsGeral.SQL.Add('select * from usu_t120ipd where usu_codemp = :codemp and');
                          dm2.ConsGeral.SQL.Add('usu_codfil = :codfil and');
                          dm2.ConsGeral.SQL.Add('usu_numped = :numped and');
                          dm2.ConsGeral.SQL.Add('usu_seqipd = :seqipd');
                          dm2.ConsGeral.SQL.Add('order by usu_seqite desc');
                          dm2.ConsGeral.Parameters.ParamByName('codemp').Value := Dm2.CadE120IpdAUSU_CODEMP.Value;
                          dm2.ConsGeral.Parameters.ParamByName('codfil').Value := Dm2.CadE120IpdAUSU_CODFIL.Value;
                          dm2.ConsGeral.Parameters.ParamByName('numped').Value := Dm2.CadE120IpdAUSU_NUMPED.Value;
                          dm2.ConsGeral.Parameters.ParamByName('seqipd').Value := Dm2.CadE120IpdAUSU_SEQIPD.Value;
                          dm2.ConsGeral.Open;
                          if not dm2.ConsGeral.IsEmpty then
                             begin//3
                                //se tiver alguma cor apaga pq para assistencia só pode ter uma cor no produto
                                Dm2.CadUsu_T120Ipd.Close;
                                Dm2.CadUsu_T120Ipd.Parameters.ParamByName('codemp').Value := Dm2.ConsGeral.FieldByName('usu_codemp').Value;
                                Dm2.CadUsu_T120Ipd.Parameters.ParamByName('codfil').Value := Dm2.ConsGeral.FieldByName('usu_codfil').Value;
                                Dm2.CadUsu_T120Ipd.Parameters.ParamByName('numped').Value := Dm2.ConsGeral.FieldByName('usu_numped').Value;
                                Dm2.CadUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := Dm2.ConsGeral.FieldByName('usu_seqipd').Value;
                                Dm2.CadUsu_T120Ipd.Parameters.ParamByName('seqite').Value := Dm2.ConsGeral.FieldByName('usu_seqite').Value;
                                Dm2.CadUsu_T120Ipd.Open;
                                if not Dm2.CadUsu_T120Ipd.IsEmpty then
                                   Dm2.CadUsu_T120Ipd.Delete;
                             end;//3

                           Dm2.CadE120IpdA.Delete;//apaga databela usu_t120ipdA

                           EdNumPedExit(Sender);
                       end;//2
                 end;//1


             end;//200
       end;//100
end;

procedure TFAssistencia.BFecharClick(Sender: TObject);
var
vA_URL, vA_BasQry, xRetorno : String;
xPostQuery		              : TStringList;
vaNumPed : string;
begin
if not Dm2.ConsE120pedA.IsEmpty then
begin

if (Dm2.ConsE120PedASITPED.Value = 9) then
  begin//1

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

   vaNumPed := trim(EdNumPed.Text);

   // Fecha o pedido
  xPostQuery.Clear;
  xPostQuery.Add('ACAO=SID.Ped.Fechar');
  xPostQuery.Add('&NumPed='+vaNumPed);

  // Executar ação Fechar pedido
  xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

  // Verificar retorno
  if (xRetorno <> 'OK') then
      begin
         //raise Exception.Create(xRetorno);
         Application.MessageBox(PChar(xRetorno),'Aviso',MB_ICONWARNING+MB_OK);
         Abort;
      end
  else
     begin
        EdNumPedExit(Sender);
     end;

  end;//1

end;

end;

procedure TFAssistencia.BInserirClick(Sender: TObject);
var
vA_URL, vA_BasQry, xRetorno : String;
xPostQuery		              : TStringList;

vaIDatEmi : String;
vaICodFil : String;
vaINumPed : String;
vaITnsPro : String;
vaICodCli : String;
vaICodRep : String;
vaICodCpg : String;
vaISitPed : String;

vnNumPed : integer;
vaSeqCob,vaSeqEnt : string;
begin
if EdDatEmi.Date = 0 then
   begin
     MessageDlg('Informe a Data de Emissão',mtWarning,[mbOK],0);
     ActiveControl := EdDatEmi;
   end
 else
   if trim(EdTnsPro.Text) = '' then
      begin
         MessageDlg('Informe a Transação de Produtos',mtWarning,[mbOK],0);
         ActiveControl := EdTnsPro;
      end
   else
     if trim(EdCodCli.Text) = '' then
        begin
           MessageDlg('Informe o Código do Cliente',mtWarning,[mbOK],0);
           ActiveControl := EdCodCli;
         end
     else
        if trim(EdCodRep.Text) = '' then
           begin
              MessageDlg('Informe o Código do Representante',mtWarning,[mbOK],0);
              ActiveControl := EdCodRep;
           end
          else
            begin//1
              //atribui os valores dos campos para as variaveis
              vaIDatEmi := DateToStr(EdDatEmi.Date);
              vaIDatEmi := FormatDateTime('DD/MM/YYYY',StrToDate(vaIDatEmi));
              vaICodFil := EdCodFil.Text;
              vaITnsPro := EdTnsPro.Text;
              vaICodCli := EdCodCli.Text;
              vaICodRep := EdCodRep.Text;
              vaICodCpg := '028'; //livre debito
              //vaISitPed := EdSitPed.Text;

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
              xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

              // grava cabeçalho do pedido
              xPostQuery.Clear;
              xPostQuery.Add('ACAO=SID.Ped.Gravar');
              xPostQuery.Add('&CodCli='+VaICodCli);
              xPostQuery.Add('&DatEmi='+VaIDatEmi);
              xPostQuery.Add('&TnsPro='+VaITnsPro);
              xPostQuery.Add('&CodRep='+VaICodRep);
              xPostQuery.Add('&CodCpg='+VaICodCpg);
              xPostQuery.Add('&Usu_PreCar='+'0');
              xPostQuery.Add('&Usu_PreTra='+'N');
              xPostQuery.Add('&Usu_NumCom='+'0');

              //consulta se o cliente tem endereço de cobrança ou entrega cadastrado
              vaSeqCob := '';
              Dm2.ConsGeral.Close;
              Dm2.ConsGeral.SQL.Clear;
              Dm2.ConsGeral.SQL.Add('SELECT * FROM E085COB WHERE CODCLI = :CODCLI');
              Dm2.ConsGeral.Parameters.ParamByName('CODCLI').Value := StrToInt(EdCodCli.Text);
              Dm2.ConsGeral.Open;
              if not dm2.ConsGeral.IsEmpty then
                 vaSeqCob := IntToStr(Dm2.ConsGeral.FieldByName('SEQCOB').AsInteger)
              else
                 vaSeqCob := '';

              vaSeqEnt := '';
              Dm2.ConsGeral.Close;
              Dm2.ConsGeral.SQL.Clear;
              Dm2.ConsGeral.SQL.Add('SELECT * FROM E085ENT WHERE CODCLI = :CODCLI');
              Dm2.ConsGeral.Parameters.ParamByName('CODCLI').Value := StrToInt(EdCodCli.Text);
              Dm2.ConsGeral.Open;
              if not dm2.ConsGeral.IsEmpty then
                 vaSeqEnt := IntToStr(Dm2.ConsGeral.FieldByName('SEQENT').AsInteger)
              else
                 vaSeqEnt := '';

              if vaSeqCob <> '' then
                 xPostQuery.Add('&SeqCob='+vaSeqCob);
              if vaSeqEnt <> '' then
                 xPostQuery.Add('&SeqEnt='+vaSeqEnt);

              // Executar ação  Inserir o pedido
              xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

              try
                vnNumPed := StrToInt(xRetorno);
              except
                Application.MessageBox(PChar(xRetorno),'Aviso',MB_ICONWARNING+MB_OK);
                Abort;
              end;

              EdNumPed.Text := xRetorno;

              Dm2.ADOUsuT000sis.Close;

              EdNumPedExit(Sender);
            end;//1

end;

procedure TFAssistencia.BInserirProdClick(Sender: TObject);
begin
  if not Dm2.ConsE120PedA.IsEmpty then
     begin//1
       EdCodPro.Clear;
       EdCodDer.Clear;
       EdTnsProI.Clear;
       EdDatFab.Clear;
       EdDatSol.Clear;
       EdDatPer.Clear;
       EdVlrPro.Clear;
       MArgSol.Clear;
       MDesPer.Clear;
       MMatUti.Clear;
       LDsCodPro.Caption := '';
       EdInDev.ItemIndex := 0;
       EdCor01.Clear;
       EdCor02.Clear;
       EdVlrAst.Clear;

       Dm2.CadE120IpdA.Open;
       Dm2.CadE120IpdA.Insert;

       ActiveControl := EdCodPro;
     end;//1

end;

procedure TFAssistencia.BNumPedClick(Sender: TObject);
begin
   FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e120ped.codfil,e120ped.numped,e120ped.sitped,e120ped.datemi,e120ped.codcli,e085cli.nomcli,e085cli.cgccpf,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085cli.cidcli,e085cli.sigufs,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e090rep.nomrep,e120ped.tnspro,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085cli.apecli,e120ped.usuger,e120ped.pedblo,e120ped.usu_precar';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e120ped';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e085cli on e085cli.codcli = e120ped.codcli';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e090rep on e090rep.codrep = e120ped.codrep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where (e120ped.tnspro = ''90110'' or e120ped.tnspro = ''90111'' or e120ped.tnspro = ''90121'')';

    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'NumPed';
    FConsGeralNfEnt.vnColuna := 5;
    FConsGeralNfEnt.vaTela := 'FAssistencia';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdNumPed;
end;

procedure TFAssistencia.BObsNfClick(Sender: TObject);
begin
  if not (Dm2.ConsE120PedA.IsEmpty) and (Dm2.ConsE120PedASITPED.Value in [1,2,9]) then
     begin
      FObsPedAst := TFObsPedAst.Create(Self);
      FObsPedAst.ShowModal;
      FreeAndNil(FObsPedAst);
     end;
end;

procedure TFAssistencia.BObsPedClick(Sender: TObject);
begin
if not (Dm2.ConsE120PedA.IsEmpty) and (Dm2.ConsE120PedASITPED.Value in [1,2,9]) then
   begin
        FVisuObsPedAst := TFVisuObsPedAst.Create(Self);
        FVisuObsPedAst.ConsE120Obs.Close;
        FVisuObsPedAst.ConsE120Obs.Parameters.ParamByName('CODEMP').Value := Dm2.ConsE120IpdACODEMP.Value;
        FVisuObsPedAst.ConsE120Obs.Parameters.ParamByName('CODFIL').Value := Dm2.ConsE120IpdACODFIL.Value;
        FVisuObsPedAst.ConsE120Obs.Parameters.ParamByName('NUMPED').Value := Dm2.ConsE120IpdANUMPED.Value;
        FVisuObsPedAst.ConsE120Obs.Open;
        FVisuObsPedAst.ShowModal;
        FreeAndNil(FVisuObsPedAst);
   end;
end;

procedure TFAssistencia.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFAssistencia.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//GRID ZEBRADA
    if odd(Dm2.ConsE120IpdA.RecNo) then
    DBGrid1.Canvas.Brush.Color:= clmenubar
    else
    DBGrid1.Canvas.Brush.Color:= clCream;

    TDbGrid(Sender).Canvas.font.Color:= clBlack;
    //MUDA A COR QUANDO A LINHA ESTIVER SELECIONADA
    if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
    begin
    Brush.Color := clSkyBlue;
    FillRect(Rect);
    Font.Style := [fsbold]
    end;

    TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TFAssistencia.DsCadE120IpdAStateChange(Sender: TObject);
begin
    vaStatusCadE120IpdA := Dm2.CadE120IpdA.State;

  if Dm2.CadE120IpdA.State in [dsinsert,dsedit] then
     begin
       BInserirProd.Enabled := false;
       BAltProd.Enabled := false;
       BExcProd.Enabled := false;
       BCancProd.Enabled := true;
       BConfProd.Enabled := true;
       BConsCodPro.Enabled := true;
       BConsDerivacao.Enabled := true;

       EdCodPro.ReadOnly := false;
       EdCodDer.ReadOnly := false;
       EdTnsProI.ReadOnly := false;
       EdDatFab.ReadOnly := false;
       EdDatSol.ReadOnly := false;
       EdDatPer.ReadOnly := false;
       EdVlrPro.ReadOnly := false;
       MArgSol.ReadOnly := false;
       MDesPer.ReadOnly := false;
       MMatUti.ReadOnly := false;
       EdVlrAst.ReadOnly := false;
       EdCor01.ReadOnly := false;
       EdCor02.ReadOnly := false;
     end
  else
     begin
       BInserirProd.Enabled := true;
       BAltProd.Enabled := true;
       BExcProd.Enabled := true;
       BCancProd.Enabled := false;
       BConfProd.Enabled := false;
       BConsCodPro.Enabled := false;
       BConsDerivacao.Enabled := false;

       EdCodPro.ReadOnly := true;
       EdCodDer.ReadOnly := true;
       EdTnsProI.ReadOnly := true;
       EdDatFab.ReadOnly := true;
       EdDatSol.ReadOnly := true;
       EdDatPer.ReadOnly := true;
       EdVlrPro.ReadOnly := true;
       MArgSol.ReadOnly := true;
       MDesPer.ReadOnly := true;
       MMatUti.ReadOnly := true;
       EdVlrAst.ReadOnly := true;
       EdCor01.ReadOnly := true;
       EdCor02.ReadOnly := true;
     end;

end;

procedure TFAssistencia.EdCodCliExit(Sender: TObject);
var vaEndCli : String;
    vaAlteracao : string;
begin
    if EdCodCli.Text <> '' then
      begin
         Dm2.ConsE085Cli.Close;
         Dm2.ConsE085Cli.Parameters.ParamByName('codfil').Value := 1;
         Dm2.ConsE085Cli.Parameters.ParamByName('codcli').Value := StrToInt(EdCodCli.Text);
         Dm2.ConsE085Cli.Open;
         if Dm2.ConsE085Cli.IsEmpty then
            begin
               Application.MessageBox('Cliente não encontrado','ERRO', MB_ICONERROR+MB_OK);
               EdCodCli.Clear;
               LDsCodCli.Caption := '';
               EdCodRep.Clear;
               LDsCodRep.Caption := '';
               EdCodCli.SetFocus;

            end
         else
            begin
              LDsCodCli.Caption := Dm2.ConsE085CliNOMCLI.Value;
              vaEndCli := Dm2.ConsE085CliAPECLI.Value +'  -  '+
              Dm2.ConsE085CliENDCLI.Value+'  -  '+
              Dm2.ConsE085CliNENCLI.Value+'  -  '+
              Dm2.ConsE085CliBAICLI.Value+'  -  '+
              Dm2.ConsE085CliCIDCLI.Value+'  -  '+
              Dm2.ConsE085CliSIGUFS.Value+'  -  '+
              Dm2.ConsE085CliFONCLI.Value;
              LEndCli.Caption := vaEndCli;


              EdCodRep.Text := IntToStr(Dm2.ConsE085CliCODREP.Value);
              EdCodRepExit(Sender);

            end;
      end;

      vaAlteracao := FAssistencia.AnalizaAlteracao;
      if vaAlteracao = 'S' then
        BAlterar.Enabled := true
      else
        BAlterar.Enabled := false;
end;

procedure TFAssistencia.EdCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_F3 then
     BCodCli.Click;
end;

procedure TFAssistencia.EdCodDerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
     BConsDerivacao.Click;
end;

procedure TFAssistencia.EdCodProExit(Sender: TObject);
begin
  if trim(EdCodPro.Text) <> '' then
     begin
       dm2.ConsGeral.Close;
            dm2.ConsGeral.SQL.Clear;
            dm2.ConsGeral.SQL.Add('select codpro,despro,codfam from e075pro where codemp = :codemp and');
            dm2.ConsGeral.SQL.Add('codpro = :codpro');
            dm2.ConsGeral.Parameters.ParamByName('codemp').Value := 1;
            dm2.ConsGeral.Parameters.ParamByName('codpro').Value := trim(EdCodPro.Text);
            dm2.ConsGeral.Open;
            if Dm2.ConsGeral.IsEmpty then
               begin
                  Application.MessageBox('Produto não encontrado','Aviso', MB_ICONWARNING+MB_OK);
                  EdCodPro.Clear;
                  LDsCodPro.Caption := '';
                  ActiveControl := EdCodPro;
               end
            else
               begin
                 LDsCodPro.Caption := Dm2.ConsGeral.FieldByName('DESPRO').AsString;
               end;
     end
  else
     begin
       LDsCodPro.Caption := '';
     end;
end;

procedure TFAssistencia.EdCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_F3 then
     BConsCodPro.Click;
end;

procedure TFAssistencia.EdCodRepExit(Sender: TObject);
var vaAlteracao : string;
begin
    if EdCodRep.Text <> '' then
      begin
        Dm2.ConsE090Rep.Close;
        Dm2.ConsE090Rep.Parameters.ParamByName('codrep').Value := StrToInt(EdCodRep.Text);
        Dm2.ConsE090Rep.Open;
        LDsCodRep.Caption := Dm2.ConsE090RepAPEREP.Value;

      end;

      vaAlteracao := FAssistencia.AnalizaAlteracao;
      if vaAlteracao = 'S' then
        BAlterar.Enabled := true
      else
        BAlterar.Enabled := false;
end;

procedure TFAssistencia.EdCodRepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_F3 then
     BCodRep.Click;
end;

procedure TFAssistencia.EdCor01Exit(Sender: TObject);
begin
if trim(EdCor01.Text) <> '' then
     begin
       dm2.ConsGeral.Close;
            dm2.ConsGeral.SQL.Clear;
            dm2.ConsGeral.SQL.Add('select codpro,despro,codfam from e075pro where codemp = :codemp and');
            dm2.ConsGeral.SQL.Add('codpro = :codpro');
            dm2.ConsGeral.Parameters.ParamByName('codemp').Value := 1;
            dm2.ConsGeral.Parameters.ParamByName('codpro').Value := trim(EdCor01.Text);
            dm2.ConsGeral.Open;
            if Dm2.ConsGeral.IsEmpty then
               begin
                  Application.MessageBox('Cor não encontrada','Aviso', MB_ICONWARNING+MB_OK);
                  EdCor01.Clear;
                  ActiveControl := EdCor01;
               end;
     end;
end;

procedure TFAssistencia.EdCor02Exit(Sender: TObject);
begin
if trim(EdCor02.Text) <> '' then
     begin
       dm2.ConsGeral.Close;
            dm2.ConsGeral.SQL.Clear;
            dm2.ConsGeral.SQL.Add('select codpro,despro,codfam from e075pro where codemp = :codemp and');
            dm2.ConsGeral.SQL.Add('codpro = :codpro');
            dm2.ConsGeral.Parameters.ParamByName('codemp').Value := 1;
            dm2.ConsGeral.Parameters.ParamByName('codpro').Value := trim(EdCor02.Text);
            dm2.ConsGeral.Open;
            if Dm2.ConsGeral.IsEmpty then
               begin
                  Application.MessageBox('Cor não encontrada','Aviso', MB_ICONWARNING+MB_OK);
                  EdCor02.Clear;
                  ActiveControl := EdCor02;
               end;
     end;
end;

procedure TFAssistencia.EdDatEmiExit(Sender: TObject);
var vaAlteracao : string;
begin
if EdDatEmi.Date <> 0 then
 begin
      vaAlteracao := FAssistencia.AnalizaAlteracao;
      if vaAlteracao = 'S' then
        BAlterar.Enabled := true
      else
        BAlterar.Enabled := false;
 end;

end;

procedure TFAssistencia.EdNumPedExit(Sender: TObject);
var vnVlrBru, vnVlrLiq, vnVolPed, vnVolAbe, vnPesBru, vnPesLiq, vnQtdIte, vnQtdAbe : Currency;
    vaVlrBru, vaVlrLiq : String;
begin
  if trim(edcodfil.Text) = '' then
     EdCodFil.Text := '1';

  if EdNumPed.Text <> '' then
     begin//1
        if StrToInt(trim(EdNumPed.Text)) = 0 then
           begin//2
              BInserir.Enabled := true;

              EdDatEmi.Date := Date;
              EdCodFil.Text := '1';
              EdCodCli.Clear;
              LDsCodCli.Caption := '';
              EdCodRep.Clear;
              LDsCodRep.Caption := '';
              EdSitPed.Text := '9';
              EdSitPedExit(Sender);
              EdTnsPro.Clear;
              EdTnsProExit(Sender);



              LEndCli.Caption := '';

             { BAddProd.Enabled := false;
              BAltProd.Enabled := false;
              BRemoveProd.Enabled := false;}

              Dm2.ConsE120IpdA.Close;
              Dm2.ConsE120IpdA.Parameters.ParamByName('codfil').Value := StrToInt(EdCodFil.Text);
              Dm2.ConsE120IpdA.Parameters.ParamByName('numped').Value := 999999;
              Dm2.ConsE120IpdA.Open;
              Dm2.ConsE120IpdA.First;

            //  EdVlrBru.Value := 0;

            vnTotBru := 0;
            vnTotLiq := 0;


           end//2
        else
           begin//3
              BInserir.Enabled := false;

            {  BAddProd.Enabled := true;
              BAltProd.Enabled := true;
              BRemoveProd.Enabled := true;}

              Dm2.ConsE120pedA.Close;//trocar pela consE120Asis
              Dm2.ConsE120pedA.Parameters.ParamByName('codfil').Value := StrToInt(EdCodFil.Text);
              Dm2.ConsE120pedA.Parameters.ParamByName('numped').Value := StrToInt(EdNumPed.Text);
              Dm2.ConsE120pedA.Open;
              if Dm2.ConsE120pedA.IsEmpty then
                 begin//4
                   Application.MessageBox('Pedido de assistência não encontrado','ERRO', MB_ICONERROR+MB_OK);
                   EdNumPed.Clear;
                   EdDatEmi.Date := 0;
                   EdTnsPro.Text := '';
                   EdCodFil.Text := '1';
                   EdCodCli.Clear;
                   LDsCodCli.Caption := '';
                   EdCodRep.Clear;
                   LDsCodRep.Caption := '';

                   EdSitPed.Clear;
                   EdSitPedExit(Sender);

                   EdTnsPro.Clear;
                   EdTnsProExit(Sender);



                   LEndCli.Caption := '';

                   {BAddProd.Enabled := false;
                   BAltProd.Enabled := false;
                   BRemoveProd.Enabled := false;}

                   Dm2.ConsE120IpdA.Close;
                   Dm2.ConsE120IpdA.Parameters.ParamByName('codfil').Value := StrToInt(EdCodFil.Text);
                   Dm2.ConsE120IpdA.Parameters.ParamByName('numped').Value := 999999;
                   Dm2.ConsE120IpdA.Open;
                   Dm2.ConsE120IpdA.First;

                  // EdVlrBru.Value := 0;

                  vnTotBru := 0;
                  vnTotLiq := 0;

                   EdNumPed.SetFocus;
                 end//4
              else
                 begin//5
                   EdCodFil.Text := IntToStr(Dm2.ConsE120pedACODFIL.Value);
                   EdDatEmi.Date := Dm2.ConsE120pedADATEMI.Value;
                   EdTnsPro.Text := Dm2.ConsE120pedATNSPRO.Value;
                   EdCodCli.Text := IntToStr(Dm2.ConsE120pedACODCLI.Value);
                   EdCodRep.Text := IntToStr(Dm2.ConsE120pedACODREP.Value);

                   EdSitPed.Text := IntToStr(Dm2.ConsE120pedASITPED.Value);

                  vaCodFil := EdCodFil.Text;
                  vaNumPed := EdNumPed.Text;
                  vaDatEmi := DateToStr(EdDatEmi.Date);
                  vaTnsPro := EdTnsPro.Text;
                  vaCodCli := EdCodCli.Text;
                  vaCodRep := EdCodRep.Text;
                  vaSitPed := EdSitPed.Text;

                   EdCodCliExit(Sender);
                   EdCodRepExit(Sender);

                   EdSitPedExit(Sender);


                   EdTnsProExit(Sender);

                   Dm2.ConsE120IpdA.Close;
                   Dm2.ConsE120IpdA.Parameters.ParamByName('codfil').Value := StrToInt(EdCodFil.Text);
                   Dm2.ConsE120IpdA.Parameters.ParamByName('numped').Value := StrToInt(EdNumPed.Text);
                   Dm2.ConsE120IpdA.Open;
                   Dm2.ConsE120IpdA.First;
                   vnTotBru := 0;
                   vnTotLiq := 0;

                   while not Dm2.ConsE120IpdA.Eof do
                      begin//6
                         vnTotBru := vnTotBru + Dm2.ConsE120IpdAVLRBRU.Value;
                         vnTotLiq := vnTotLiq + Dm2.ConsE120IpdAVLRLIQ.Value;
                         Dm2.ConsE120IpdA.Next;
                      end;//6


                  {LVlrBru.Caption := FormatFloat('#,##0.00',StrToFloat(vaVlrBru));
                  LVlrLiq.Caption := FormatFloat('#,##0.00',StrToFloat(vaVlrLiq));}
                 // EdVlrBru.Value := vnVlrBru;


                 { if Dm2.ConsE120pedAUSU_PRECAR.Value <> 0 then
                     begin//10
                        ConsUsu_TPreCar.Close;
                        ConsUsu_TPreCar.Parameters.ParamByName('precar').Value := Dm2.ConsE120pedUSU_PRECAR.Value;
                        ConsUsu_TPreCar.Open;
                        if ConsUsu_TPreCarUSU_CARLIB.Value = 'S' then
                           begin//20
                             PPreCarga.Caption := 'Pré-Carga: '+ IntToStr(Dm2.ConsE120pedUSU_PRECAR.Value);
                             PPreCarga.Color := $0071FF71;
                           end//20
                        else if ConsUsu_TPreCarUSU_CARLIB.Value = 'N' then
                                begin//30
                                   PPreCarga.Caption := 'Pré-Carga: '+ IntToStr(Dm2.ConsE120pedUSU_PRECAR.Value);
                                   PPreCarga.Color := $007777FF;
                                end;//30
                     end;//10}


                  {if Dm2.ConsE120pedAUSU_PRECAR.Value <> 0 then
                     begin//40
                       //consulta se a carga ja foi toda cortada
                       ConsUsu_TCarPro.Close;
                       ConsUsu_TCarPro.Parameters.ParamByName('numane').Value := Dm2.ConsE120pedUSU_PRECAR.Value;
                       ConsUsu_TCarPro.Open;
                       if ConsUsu_TCarPro.IsEmpty then
                          begin//50
                             PCorte.Caption := '';
                             PCorte.Color := clWindow;
                          end//50
                       else
                          begin//60
                             if ConsUsu_TCarProUSU_CARPRO.Value = 'S' then
                                begin//70
                                   PCorte.Color := $0071FF71;
                                   PCorte.Caption := 'Cortado';
                                end//70
                             else
                               if ConsUsu_TCarProUSU_CARPRO.Value = 'N' then
                                  begin//80
                                     PCorte.Color := $007777FF;
                                     PCorte.Caption := 'Corte';
                                  end;//80
                          end;//60
                     end;//40 }



                  {if Dm2.ConsE120pedUSU_PRECAR.Value <> 0 then
                     begin
                       //consulta se a pre-carga que o pedido estiver ja foi
                       //importada para o corte de tecido
                       ConsUsu_TCarPro.Close;
                       ConsUsu_TCarPro.Parameters.ParamByName('numane').Value := Dm2.ConsE120pedUSU_PRECAR.Value;
                       ConsUsu_TCarPro.Open;
                       if ConsUsu_TCarPro.IsEmpty then
                          vaCarPro := 'N'
                       else
                          vaCarPro := 'S';
                     end
                  else
                     begin
                       vaCarPro := 'N';
                     end;}

                    //verifica se o pedido ja esta em caga
                   { ConsE135Pes.Close;
                    ConsE135Pes.Parameters.ParamByName('numped').Value := Dm2.ConsE120pedNUMPED.Value;
                    ConsE135Pes.Open;
                    if ConsE135Pes.IsEmpty then
                       begin
                          PCarga.Caption := '';
                          PCarga.Color := clWindow;
                       end
                    else
                       begin
                         PCarga.Caption := 'Carga: '+ CurrToStr(ConsE135PesNUMANE.Value);
                         PCarga.Color := $0071FF71;
                       end;}


                 end;//5
           end;//3

     end//1
  else
     begin//6
        EdNumPed.Clear;
        EdDatEmi.Date := 0;
        EdTnsPro.Text := '';
        EdCodFil.Text := '1';
        EdCodCli.Clear;
        LDsCodCli.Caption := '';
        EdCodRep.Clear;
        LDsCodRep.Caption := '';

        EdSitPed.Clear;
        EdSitPedExit(Sender);

        EdTnsPro.Clear;
        EdTnsProExit(Sender);

        LEndCli.Caption := '';

        Dm2.ConsE120IpdA.Close;
        Dm2.ConsE120IpdA.Parameters.ParamByName('codfil').Value := StrToInt(EdCodFil.Text);
        Dm2.ConsE120IpdA.Parameters.ParamByName('numped').Value := 999999;
        Dm2.ConsE120IpdA.Open;
        Dm2.ConsE120IpdA.First;

        vnTotBru := 0;
        vnTotLiq := 0;

     end;//6
     edTotBru.Value := vnTotBru;
     edTotLiq.Value := vnTotLiq;
end;

procedure TFAssistencia.EdNumPedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
     BNumPed.Click;
end;

procedure TFAssistencia.EdNumPedKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TFAssistencia.EdSitPedExit(Sender: TObject);
var vaAlteracao : String;
begin
    if EdSitPed.Text <> '' then
      begin
         if EdSitPed.Text = '1' then
            LDsSitPed.Caption := 'Aberto Total'
         else if edSitPed.Text = '2' then
                 LDsSitPed.Caption := 'Aberto Parcial'
              else if edSitPed.Text = '3' then
                      LDsSitPed.Caption := 'Suspenso'
                   else if edSitPed.Text = '4' then
                           LDsSitPed.Caption := 'Liquidado'
                         else if edSitPed.Text = '5' then
                                 LDsSitPed.Caption := 'Cancelado'
                               else if edSitPed.Text = '7' then
                                       LDsSitPed.Caption := 'Em Transmição'
                                    else if edSitPed.Text = '8' then
                                            LDsSitPed.Caption := 'Preparação Análise ou NF'
                                          else if edSitPed.Text = '9' then
                                                  LDsSitPed.Caption := 'Não Fechado';

      end
    else
       LDsSitPed.Caption := '';

      vaAlteracao := FAssistencia.AnalizaAlteracao;
      if vaAlteracao = 'S' then
        BAlterar.Enabled := true
      else
        BAlterar.Enabled := false;



end;

procedure TFAssistencia.EdTnsProExit(Sender: TObject);
var vaAlteracao : string;
begin
   if trim(EdTnsPro.Text)<> '' then
       begin

          if (trim(EdTnsPro.Text) <> '90110') and (trim(EdTnsPro.Text) <> '90111') and (trim(EdTnsPro.Text) <> '90121') then
             begin
               Application.MessageBox('Transação deve ser 90110, 90111 ou 90121','ERRO', MB_ICONERROR+MB_OK);
               ActiveControl := EdTnsPro;
             end
          else
             begin
                if (trim(EdTnsPro.Text) = '90110') then
                    LDsTnsPro.Caption := 'Assistencia'
                else
                if (trim(EdTnsPro.Text) = '90111') then
                    LDsTnsPro.Caption := 'Troca - Estofados'
                else
                if (trim(EdTnsPro.Text) = '90121') then
                    LDsTnsPro.Caption := 'Troca - Colchões';
             end;

          vaAlteracao := FAssistencia.AnalizaAlteracao;
          if vaAlteracao = 'S' then
            BAlterar.Enabled := true
          else
            BAlterar.Enabled := false;
       end
   else
       begin
         LDsTnsPro.Caption := '';
       end;

end;

procedure TFAssistencia.EdTnsProIExit(Sender: TObject);
begin
if trim(EdTnsProI.Text)<> '' then
       begin

          if (trim(EdTnsProI.Text) <> '90110') and (trim(EdTnsProI.Text) <> '90111') and (trim(EdTnsProI.Text) <> '90121') then
             begin
               Application.MessageBox('Transação deve ser 90110, 90111 ou 90121','ERRO', MB_ICONERROR+MB_OK);
               ActiveControl := EdTnsProI;
             end
       end;
end;

procedure TFAssistencia.FormActivate(Sender: TObject);
begin
EdCodFil.Text := '1';

  Dm2.ConsE120IpdA.Close;
  Dm2.ConsE120IpdA.Parameters.ParamByName('codfil').Value := StrToInt(EdCodFil.Text);
  Dm2.ConsE120IpdA.Parameters.ParamByName('numped').Value := 999999;
  Dm2.ConsE120IpdA.Open;
  Dm2.ConsE120IpdA.First;

  ActiveControl := EdNumPed;
end;

procedure TFAssistencia.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

with application do
 if not (Dm2.ConsE120PedA.IsEmpty) then
  begin
     canClose := False;
     if Dm2.ConsE120PedASITPED.Value = 9 then
         begin
            Application.MessageBox('É necessário fechar a assistência antes de sair','Confirmação',MB_ICONWARNING+MB_OK);
            ActiveControl := BFechar;
         end
     else
       begin
         canclose := true;
       end;
  end;


end;

procedure TFAssistencia.FormCreate(Sender: TObject);
begin
  MArgSol.Clear;
  MDesPer.Clear;
  MMatUti.Clear;
end;

procedure TFAssistencia.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;

 if key = '+' then
    BInserirProd.Click;
end;

end.
