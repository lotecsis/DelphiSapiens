unit UfrmDividirPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Mask, DBCtrls, Grids, DBGrids, Provider,
  DBClient, ExtCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP;

type
  TfrmDividirPedido = class(TForm)
    lbl1: TLabel;
    edtNumPed: TEdit;
    btnNumPed: TBitBtn;
    ConsE120Ped: TADOQuery;
    ConsE120PedCODEMP: TIntegerField;
    ConsE120PedCODFIL: TIntegerField;
    ConsE120PedNUMPED: TIntegerField;
    ConsE120PedCODCLI: TIntegerField;
    ConsE120PedDATEMI: TDateTimeField;
    ConsE120PedSITPED: TIntegerField;
    ConsE120PedCODREP: TIntegerField;
    ConsE120PedNOMCLI: TStringField;
    ConsE120PedCIDCLI: TStringField;
    ConsE120PedSIGUFS: TStringField;
    ConsE120PedNOMREP: TStringField;
    ConsE120PedAPEREP: TStringField;
    ConsE120PedVA_SITPED: TStringField;
    dsConsE120Ped: TDataSource;
    dbedtvaDesCli: TDBEdit;
    dbedtDATEMI: TDBEdit;
    dbedtVA_SITPED: TDBEdit;
    dbedtvaDesRep: TDBEdit;
    ConsE120PedvaDesCli: TStringField;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    ConsE120PedvaDesRep: TStringField;
    lbl5: TLabel;
    dbgrdItens: TDBGrid;
    ConsE120IPD: TADOQuery;
    ConsE120IPDCODEMP: TIntegerField;
    ConsE120IPDCODFIL: TIntegerField;
    ConsE120IPDNUMPED: TIntegerField;
    ConsE120IPDSEQIPD: TIntegerField;
    ConsE120IPDTNSPRO: TStringField;
    ConsE120IPDCODPRO: TStringField;
    ConsE120IPDCODDER: TStringField;
    ConsE120IPDCPLIPD: TStringField;
    ConsE120IPDCODFAM: TStringField;
    ConsE120IPDQTDPED: TFMTBCDField;
    ConsE120IPDQTDFAT: TFMTBCDField;
    ConsE120IPDQTDCAN: TFMTBCDField;
    ConsE120IPDQTDABE: TFMTBCDField;
    ConsE120IPDCODTPR: TStringField;
    ConsE120IPDPREUNI: TFMTBCDField;
    ConsE120IPDVLRBRU: TBCDField;
    ConsE120IPDVLRLIQ: TBCDField;
    ConsE120IPDSITIPD: TIntegerField;
    ConsE120IPDVA_SITIPD: TStringField;
    ProviderConsE120IPD: TDataSetProvider;
    ClientConsE120IPD: TClientDataSet;
    dsClientConsE120IPD: TDataSource;
    ClientConsE120IPDCODEMP: TIntegerField;
    ClientConsE120IPDCODFIL: TIntegerField;
    ClientConsE120IPDNUMPED: TIntegerField;
    ClientConsE120IPDSEQIPD: TIntegerField;
    ClientConsE120IPDTNSPRO: TStringField;
    ClientConsE120IPDCODPRO: TStringField;
    ClientConsE120IPDCODDER: TStringField;
    ClientConsE120IPDCPLIPD: TStringField;
    ClientConsE120IPDCODFAM: TStringField;
    ClientConsE120IPDQTDPED: TFMTBCDField;
    ClientConsE120IPDQTDFAT: TFMTBCDField;
    ClientConsE120IPDQTDCAN: TFMTBCDField;
    ClientConsE120IPDQTDABE: TFMTBCDField;
    ClientConsE120IPDCODTPR: TStringField;
    ClientConsE120IPDPREUNI: TFMTBCDField;
    ClientConsE120IPDVLRBRU: TBCDField;
    ClientConsE120IPDVLRLIQ: TBCDField;
    ClientConsE120IPDSITIPD: TIntegerField;
    ClientConsE120IPDVA_SITIPD: TStringField;
    ClientConsE120IPDQtd101: TIntegerField;
    ClientConsE120IPDvnVlr101: TFloatField;
    ClientConsE120IPDTvnVlr101: TAggregateField;
    dbedtTvnVlr101: TDBEdit;
    lbl6: TLabel;
    ClientConsE120IPDTVlrBru: TAggregateField;
    dbedtTVlrBru: TDBEdit;
    lbl7: TLabel;
    ClientConsE120IPDvnVlr1: TFloatField;
    ClientConsE120IPDTvnVlr1: TAggregateField;
    dbedtTvnVlr1: TDBEdit;
    lbl8: TLabel;
    dbedtTPer1: TDBEdit;
    ClientConsE120IPDTPer1: TAggregateField;
    ClientConsE120IPDTPer101: TAggregateField;
    lbl9: TLabel;
    dbedtTPer101: TDBEdit;
    lbl10: TLabel;
    btnProcessar: TBitBtn;
    SapSid: TIdHTTP;
    ConsE120PedCODCPG: TStringField;
    ConsE120PedTNSPRO: TStringField;
    lblStatus: TLabel;
    ConsE120PedUSU_PRECAR: TIntegerField;
    ConsE120IPDCODDEP: TStringField;
    ClientConsE120IPDCODDEP: TStringField;
    ConsE120IPDUSU_NUMCOM: TIntegerField;
    ClientConsE120IPDUSU_NUMCOM: TIntegerField;
    ConsE120PedUSU_NUMCOM: TIntegerField;
    ClientConsE120IPDTQtd101: TAggregateField;
    procedure edtNumPedKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumPedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNumPedClick(Sender: TObject);
    procedure ConsE120PedCalcFields(DataSet: TDataSet);
    procedure edtNumPedExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ClientConsE120IPDCalcFields(DataSet: TDataSet);
    procedure ClientConsE120IPDBeforePost(DataSet: TDataSet);
    procedure dbedtTvnVlr1Change(Sender: TObject);
    procedure dbedtTvnVlr101Change(Sender: TObject);
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDividirPedido: TfrmDividirPedido;

implementation

uses UDmOra, UConsPedido, UDm2;

{$R *.dfm}

procedure TfrmDividirPedido.btnNumPedClick(Sender: TObject);
begin
    FConsPedido := TFConsPedido.Create(Self);
    FConsPedido.vaTelaOrigem := 'DIVIDE_PEDIDO';
    FConsPedido.ShowModal;
end;

procedure TfrmDividirPedido.btnProcessarClick(Sender: TObject);
var vaCodCli, vaDatEmi, vaCodRep, vaCodCpg, vaTnsPro, vaSeqCob,
    vaSeqEnt, vaNumPed, vaPreCar, vaQtdCan : string;
    vnNumPed : Integer;
    xPostQuery		              : TStringList;
    vA_URL, vA_BasQry, xRetorno : String;
    vaDatEnt, vaSeqIpd, vaCodPro, vaCodDer, vaCodDep, vaPreUni, vaQtdPed, vaCodTpr, vaNumCom : string;
begin
  if (not ClientConsE120IPD.IsEmpty) and (ClientConsE120IPDTQtd101.Value > 0) then
     begin
        vaCodCli := IntToStr(ConsE120PedCODCLI.AsInteger);
        vaDatEmi := DateToStr(ConsE120PedDATEMI.AsDateTime);
        vaDatEmi := FormatDateTime('DD/MM/YYYY',StrToDate(vaDatEmi));
        vaCodrep := IntToStr(ConsE120PedCODREP.AsInteger);
        vaCodCpg := ConsE120PedCODCPG.AsString;
        vaTnsPro := ConsE120PedTNSPRO.AsString;
        vaNumPed := IntToStr(ConsE120PedNUMPED.AsInteger);
        vaPreCar := IntToStr(ConsE120PedUSU_PRECAR.AsInteger);
        vaNumCom := IntToStr(ConsE120PedUSU_NUMCOM.AsInteger);

        //consulta se o cliente tem endereço de cobrança ou entrega cadastrado
        vaSeqCob := '';
        Dm2.ConsGeral.Close;
        Dm2.ConsGeral.SQL.Clear;
        Dm2.ConsGeral.SQL.Add('SELECT * FROM E085COB WHERE CODCLI = :CODCLI');
        Dm2.ConsGeral.Parameters.ParamByName('CODCLI').Value := ConsE120PedCODCLI.AsInteger;
        Dm2.ConsGeral.Open;
        if not dm2.ConsGeral.IsEmpty then
           vaSeqCob := IntToStr(Dm2.ConsGeral.FieldByName('SEQCOB').AsInteger)
        else
           vaSeqCob := '';

        vaSeqEnt := '';
        Dm2.ConsGeral.Close;
        Dm2.ConsGeral.SQL.Clear;
        Dm2.ConsGeral.SQL.Add('SELECT * FROM E085ENT WHERE CODCLI = :CODCLI');
        Dm2.ConsGeral.Parameters.ParamByName('CODCLI').Value := ConsE120PedCODCLI.AsInteger;
        Dm2.ConsGeral.Open;
        if not dm2.ConsGeral.IsEmpty then
           vaSeqEnt := IntToStr(Dm2.ConsGeral.FieldByName('SEQENT').AsInteger)
        else
           vaSeqEnt := '';

        xPostQuery := TStringList.Create;

        Dm2.ADOUsuT000sis.Close;
        Dm2.ADOUsuT000sis.Open;
        vA_URL := Dm2.ADOUsuT000sisUSU_URLSRV.Value;
        vA_BasQry := Dm2.ADOUsuT000sisUSU_BASQRY.Value;

        xPostQuery.Add('ACAO=EXESENHA');
        xPostQuery.Add('&NOMUSU=sapienssid');
        xPostQuery.Add('&SENUSU=sapienssid');

        lblStatus.Caption := 'Conectando ao Sid..';
        Application.ProcessMessages;
        // Executar ação de autenticação no Sapiens SID
        xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

        // Verificar se a ação executou com sucesso
        if (StrToIntDef(Copy(xRetorno, 1, 5), 0)) = 0 then
            raise Exception.Create('ERRO - Conexão SID não foi estabelecida: ' + xRetorno)
        else
            vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;

        lblStatus.Caption := 'Logando na filial..101';
        Application.ProcessMessages;
        //loga na filial
        xPostQuery.Clear;
        xPostQuery.Add('ACAO=SID.Srv.AltEmpFil');
        xPostQuery.Add('&CodEmp='+'1');
        xPostQuery.Add('&CodFil='+'101');
        xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

        if xRetorno = 'OK' then
           begin
              // grava cabeçalho do pedido
              lblStatus.Caption := 'Gravando cabeçalho do pedido..';
              xPostQuery.Clear;
              xPostQuery.Add('ACAO=SID.Ped.Gravar');
              xPostQuery.Add('&NumPed='+vaNumPed);
              xPostQuery.Add('&CodCli='+vaCodCli);
              xPostQuery.Add('&DatEmi='+vaDatEmi);
              xPostQuery.Add('&TnsPro='+vaTnsPro);
              xPostQuery.Add('&CodRep='+vaCodRep);
              xPostQuery.Add('&CodCpg='+vaCodCpg);

              if vaSeqCob <> '' then
                 xPostQuery.Add('&SeqCob='+vaSeqCob);
              if vaSeqEnt <> '' then
                 xPostQuery.Add('&SeqEnt='+vaSeqEnt);

              xPostQuery.Add('&Usu_PreCar='+vaPreCar);
              xPostQuery.Add('&Usu_PedTra='+'S');
              xPostQuery.Add('&Usu_NumCom='+vaNumCom);

              Application.ProcessMessages;
              // Executar ação  Inserir o pedido
              xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));
              //ShowMessage(xRetorno);

              try
                vnNumPed := StrToInt(xRetorno);
              except
                  //raise Exception.Create(xRetorno);
                  lblStatus.Caption := '';
                  Application.MessageBox(Pchar(xRetorno),'Aviso',MB_ICONWARNING+MB_OK);
                  Abort;
              end;
                 lblStatus.Caption := 'Pedido '+IntToStr(vnNumPed)+ '  gerado';
                 Application.ProcessMessages;

             {***************************************************
                         GRAVA OS PRODUTOS DO PEDIDO
             ****************************************************}
             ClientConsE120IPD.First;
             while not ClientConsE120IPD.Eof do
               begin
                   if ClientConsE120IPDQtd101.AsInteger > 0 then
                      begin
                         lblStatus.Caption := 'Gravando produto: '+ClientConsE120IPDCODPRO.AsString+ '  '+ClientConsE120IPDCPLIPD.AsString+ '  derivação: '+ClientConsE120IPDCODDER.AsString;
                         Application.ProcessMessages;
                         vaDatEnt := DateToStr(Date);
                         vaDatEnt := FormatDateTime('DD/MM/YYYY',StrToDate(vaDatEnt));
                        // vaNumPed := IntToStr(vnNumPed);
                         vaSeqIpd := IntToStr(ClientConsE120IPDSEQIPD.AsInteger);
                         vaCodPro := ClientConsE120IPDCODPRO.AsString;
                         vaCodDer := ClientConsE120IPDCODDER.AsString;
                         //vaCodDep := ClientConsE120IPDCODDEP.AsString;
                         vaCodDep := '101';
                         vaTnsPro := ClientConsE120IPDTNSPRO.AsString;
                         vaPreUni := FloatToStr(ClientConsE120IPDPREUNI.AsFloat);
                         vaQtdPed := IntToStr(ClientConsE120IPDQtd101.AsInteger);
                         vaCodTpr := ClientConsE120IPDCODTPR.Value;
                         //vaTotDsc := FloatToStr(DmFire.ConsE120IpdTOTDESC.Value);

                         if vaTnsPro = '90100' then
                            vaTnsPro := '90150'
                         else
                        if vaTnsPro = '90106' then
                           vaTnsPro := '90156';

                        // Transação de Assistencia Técnica / Troca  / Bonificaçao/Brinde
                        if vaTnsPro = '90110' then
                           vaTnsPro := '90170'
                        else
                        if vaTnsPro = '90111' then
                           vaTnsPro := '90171'
                        else
                        if vaTnsPro = '90112' then
                           vaTnsPro := '90172'
                        else
                        if vaTnsPro = '90122' then
                           vaTnsPro := '90172';

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
                         xPostQuery.Add('&Usu_NumCom='+vaNumCom);

                         // Executar ação  gravar itens Pedido
                         xRetorno := Trim(SapSid.Post(vA_URL, xPostQuery));
                         lblStatus.Caption := '';
                         Application.ProcessMessages;

                      end;
                 ClientConsE120IPD.Next;
               end;

             lblStatus.Caption := 'Fechando pedido..';
             Application.ProcessMessages;
             xPostQuery.Clear;
             xPostQuery.Add('ACAO=SID.Ped.Fechar');
             xPostQuery.Add('&NumPed='+vaNumPed);
             xPostQuery.Add('&RecPed='+'0');
             xRetorno := Trim(SapSid.Post(vA_URL, xPostQuery));
             if xRetorno = 'OK' then
                begin
                  //Application.MessageBox('Processamento realizado com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);
                  lblStatus.Caption := xRetorno;
                  Application.ProcessMessages;
                end
             else
                begin
                  Application.MessageBox(PChar(xRetorno),'Erro',MB_ICONWARNING+MB_OK);
                  Abort;
                end;

              //percorro pra cancelar os itens na filial 1
              lblStatus.Caption := 'Logando na filial..1';
              Application.ProcessMessages;
              //loga na filial
              xPostQuery.Clear;
              xPostQuery.Add('ACAO=SID.Srv.AltEmpFil');
              xPostQuery.Add('&CodEmp='+'1');
              xPostQuery.Add('&CodFil='+'1');
              xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));
              lblStatus.Caption := xRetorno;

             if xRetorno = 'OK' then
                begin
                   ClientConsE120IPD.First;
                   while not ClientConsE120IPD.Eof do
                     begin
                       if ClientConsE120IPDQtd101.AsInteger > 0 then
                          begin
                             lblStatus.Caption := 'CANCELANDO: '+ClientConsE120IPDCODPRO.AsString+ '  '+ClientConsE120IPDCPLIPD.AsString+ '  derivação: '+ClientConsE120IPDCODDER.AsString;
                             Application.ProcessMessages;

                             vaSeqIpd := IntToStr(ClientConsE120IPDSEQIPD.AsInteger);
                             vaQtdCan := IntToStr(ClientConsE120IPDQtd101.AsInteger);

                             xPostQuery.Clear;
                             xPostQuery.Add('ACAO=SID.Ped.GravarProduto');
                             xPostQuery.Add('&NumPed='+vaNumPed);
                             xPostQuery.Add('&SeqIpd='+vaSeqIpd);
                             xPostQuery.Add('&QtdCan='+vaQtdCan);
                             // Executar ação  gravar itens Pedido
                             xRetorno := Trim(SapSid.Post(vA_URL, xPostQuery));

                             if xRetorno <> vaSeqIpd then
                                begin
                                  Application.MessageBox(PChar(xRetorno),'Erro',MB_ICONWARNING+MB_OK);
                                  Abort;
                                end;
                          end;
                       ClientConsE120IPD.Next;
                     end;
                   ClientConsE120IPD.First;

                   Application.MessageBox('Processamento realizado com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);
                   lblStatus.Caption := '';
                end;
           end;
     end
  else
     begin
       if ClientConsE120IPDTQtd101.Value <= 0 then
          begin
            Application.MessageBox('Informe a quantidade para divisão','Erro',MB_ICONWARNING+MB_OK);
          end;
     end;
end;

procedure TfrmDividirPedido.ClientConsE120IPDBeforePost(DataSet: TDataSet);
begin
  if ClientConsE120IPDQtd101.AsInteger > ClientConsE120IPDQTDABE.AsInteger then
     begin
       Application.MessageBox('Quantidade inválida','Aviso',MB_ICONWARNING+MB_OK);
       Abort;
     end;

  if ClientConsE120IPDQtd101.AsInteger < 0 then
     begin
       Application.MessageBox('Quantidade inválida','Aviso',MB_ICONWARNING+MB_OK);
       Abort;
     end;
end;

procedure TfrmDividirPedido.ClientConsE120IPDCalcFields(DataSet: TDataSet);
begin
  if ClientConsE120IPDQtd101.AsInteger > 0 then
     ClientConsE120IPDvnVlr101.AsFloat := ClientConsE120IPDQtd101.AsInteger * ClientConsE120IPDPREUNI.AsFloat
  else
     ClientConsE120IPDvnVlr101.AsFloat := 0;

  ClientConsE120IPDvnVlr1.AsFloat := (ClientConsE120IPDQTDABE.AsInteger - ClientConsE120IPDQtd101.AsInteger) * ClientConsE120IPDPREUNI.AsFloat;

  
end;

procedure TfrmDividirPedido.ConsE120PedCalcFields(DataSet: TDataSet);
begin
  ConsE120PedvaDesCli.AsString := IntToStr(ConsE120PedCODCLI.AsInteger)+'   -   '+ConsE120PedNOMCLI.AsString+'   -   '+ConsE120PedCIDCLI.AsString+'   -   '+ConsE120PedSIGUFS.AsString;
  ConsE120PedvaDesRep.AsString := IntToStr(ConsE120PedCODREP.AsInteger)+'   -   '+ConsE120PedNOMREP.AsString;

end;

procedure TfrmDividirPedido.dbedtTvnVlr101Change(Sender: TObject);
begin
if dbedtTvnVlr101.Text = '0,00' then
   begin
     dbedtTvnVlr101.Color := clWhite;
     dbedtTPer101.Color := clWhite;
   end
else
   begin
     dbedtTvnVlr101.Color := $009D9DFF;
     dbedtTPer101.Color := $009D9DFF;
   end
end;

procedure TfrmDividirPedido.dbedtTvnVlr1Change(Sender: TObject);
begin
if dbedtTvnVlr1.Text = '0,00' then
   begin
     dbedtTvnVlr1.Color := clWhite;
     dbedtTPer1.Color := clWhite;
   end
else
   begin
     dbedtTvnVlr1.Color := $0091FF91;
     dbedtTPer1.Color := $0091FF91;
   end

end;

procedure TfrmDividirPedido.edtNumPedExit(Sender: TObject);
begin
  if Trim(edtNumPed.Text) <> '' then
     begin
       ConsE120Ped.Close;
       ConsE120Ped.Parameters.ParamByName('NUMPED').Value := StrToInt(edtNumPed.Text);
       ConsE120Ped.Open;
       if ConsE120Ped.IsEmpty then
          begin
            ClientConsE120IPD.Close;
            ConsE120IPD.Close;
          end
       else
         begin
           ClientConsE120IPD.Close;
           ConsE120IPD.Close;
           ConsE120IPD.Parameters.ParamByName('NUMPED').Value := ConsE120PedNUMPED.Value;
           ConsE120IPD.Open;
           ClientConsE120IPD.Open;
         end;
     end
  else
     begin
       Application.MessageBox('Pedido não encontrado','Aviso',MB_ICONWARNING+MB_OK);

       ConsE120Ped.Close;
       ClientConsE120IPD.Close;
       ConsE120IPD.Close;
     end;
end;

procedure TfrmDividirPedido.edtNumPedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F3 then
     begin
       btnNumPed.Click;
     end;
end;

procedure TfrmDividirPedido.edtNumPedKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TfrmDividirPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
