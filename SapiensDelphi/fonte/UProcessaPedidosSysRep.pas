unit UProcessaPedidosSysRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, DB, DBClient, Mask,
  DBCtrls, rxToolEdit, rxCurrEdit, ImgList, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, AppEvnts;

type
  TFProcessaPedidosSysRep = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    ClientArquivos: TClientDataSet;
    ClientArquivosvaNomArq: TStringField;
    DsDmConsE120PedChegou: TDataSource;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DsConsE085Cli_E085Rep: TDataSource;
    DBAVenc: TDBEdit;
    DBVenc: TDBEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label7: TLabel;
    DBText4: TDBText;
    LDsCli1: TLabel;
    LDsCli2: TLabel;
    Label8: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    Panel10: TPanel;
    BProcessaArquivos: TBitBtn;
    PAlerta: TPanel;
    Panel11: TPanel;
    Label9: TLabel;
    EdTotal: TCurrencyEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    PObs: TPanel;
    Label10: TLabel;
    EdQtdPed: TCurrencyEdit;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    DsLivre: TDataSource;
    ImageList1: TImageList;
    SapSid: TIdHTTP;
    Panel12: TPanel;
    LStatus: TLabel;
    DsConsE301TcrAVen: TDataSource;
    ApplicationEvents1: TApplicationEvents;
    btnZerar: TBitBtn;
    btn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BProcessaArquivosClick(Sender: TObject);
    procedure PAlertaClick(Sender: TObject);
    procedure PObsClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnZerarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProcessaPedidosSysRep: TFProcessaPedidosSysRep;

implementation

uses UDmFire, UDmOra, UVisuAlertaClientes, UVisuObsPedido, UFiltroPedRecSysRep,
  UPedidoSysRep, UDm2, UDmRave;

{$R *.dfm}

procedure TFProcessaPedidosSysRep.BitBtn1Click(Sender: TObject);
var vnTotal : double;
    vnQtdPed : integer;
begin
if DmFire.ConsE120PedChegouSITCON.Value = 'L' then
   begin//11
     DmRave.ConsE120Ped.Close;
     DmRave.ConsE120Ped.Parameters.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
     DmRave.ConsE120Ped.Parameters.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
     DmRave.ConsE120Ped.Parameters.ParamByName('numped').Value := DmFire.ConsE120PedChegouNUMPED.Value;
     DmRave.ConsE120Ped.Open;

     DmRave.ConsE120Obs.Close;
     DmRave.ConsE120Obs.Parameters.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
     DmRave.ConsE120Obs.Parameters.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
     DmRave.ConsE120Obs.Parameters.ParamByName('numped').Value := DmFire.ConsE120PedChegouNUMPED.Value;
     DmRave.ConsE120Obs.Open;

     DmRave.ConsE120Ipd.Close;//faz a consulta das cores e adiciona no campo cplipd do produto
     DmRave.ClientConsE120Ipd.Close;
     DmRave.ConsE120Ipd.Parameters.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
     DmRave.ConsE120Ipd.Parameters.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
     DmRave.ConsE120Ipd.Parameters.ParamByName('numped').Value := DmFire.ConsE120PedChegouNUMPED.Value;
     DmRave.ConsE120Ipd.Open;
     DmRave.ClientConsE120Ipd.Open;
     DmRave.ClientConsE120Ipd.First;
     while not DmRave.ClientConsE120Ipd.Eof do
     begin//1
       DmRave.ConsUsu120Ipd.Close;
       DmRave.ConsUsu120Ipd.Parameters.ParamByName('codemp').Value := DmRave.ClientConsE120IpdCODEMP.Value;
       DmRave.ConsUsu120Ipd.Parameters.ParamByName('codfil').Value := DmRave.ClientConsE120IpdCODFIL.Value;
       DmRave.ConsUsu120Ipd.Parameters.ParamByName('numped').Value := DmRave.ClientConsE120IpdNUMPED.Value;
       DmRave.ConsUsu120Ipd.Parameters.ParamByName('seqipd').Value := DmRave.ClientConsE120IpdSEQIPD.Value;
       DmRave.ConsUsu120Ipd.Open;
       DmRave.ConsUsu120Ipd.First;
       DmRave.ClientConsE120Ipd.Edit;
       DmRave.ClientConsE120IpdCPLIPD.Value := '';
        while not DmRave.ConsUsu120Ipd.Eof do
           begin//2
             if DmRave.ConsUsu120IpdUSU_TIPCMB.Value = 1 then
                begin//3
                  if DmRave.ClientConsE120IpdCPLIPD.Value = '' then
                     DmRave.ClientConsE120IpdCPLIPD.AsString := IntToStr(DmRave.ConsUsu120IpdUSU_QTDCOR.AsInteger)+' - '+DmRave.ConsUsu120IpdUSU_COR001.AsString
                  else
                     DmRave.ClientConsE120IpdCPLIPD.AsString := DmRave.ClientConsE120IpdCPLIPD.AsString +' || '+ IntToStr(DmRave.ConsUsu120IpdUSU_QTDCOR.AsInteger)+' - '+DmRave.ConsUsu120IpdUSU_COR001.AsString;
                end//3
             else
                begin//4
                  if DmRave.ClientConsE120IpdCPLIPD.Value = '' then
                     DmRave.ClientConsE120IpdCPLIPD.AsString := IntToStr(DmRave.ConsUsu120IpdUSU_QTDCOR.AsInteger)+' - '+DmRave.ConsUsu120IpdUSU_COR001.AsString+'/'+DmRave.ConsUsu120IpdUSU_COR002.AsString
                  else
                     DmRave.ClientConsE120IpdCPLIPD.AsString := DmRave.ClientConsE120IpdCPLIPD.AsString +' || '+ IntToStr(DmRave.ConsUsu120IpdUSU_QTDCOR.AsInteger)+' - '+DmRave.ConsUsu120IpdUSU_COR001.AsString+'/'+DmRave.ConsUsu120IpdUSU_COR002.AsString;
                end;//4
             DmRave.ConsUsu120Ipd.Next;
           end;//2
           DmRave.ClientConsE120Ipd.Post;

       DmRave.ClientConsE120Ipd.Next;
     end;//1
     DmRave.ClientConsE120Ipd.First;

  //   DmRave.RvProjPedido.Execute;

      DmFire.CadE120Ped.Close;
      DmFire.CadE120Ped.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
      DmFire.CadE120Ped.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
      DmFire.CadE120Ped.ParamByName('numcon').Value := DmFire.ConsE120PedChegouNUMCON.Value;
      DmFire.CadE120Ped.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
      DmFire.CadE120Ped.Open;
      if not DmFire.CadE120Ped.IsEmpty then
         begin//22
            DmFire.CadE120Ped.Edit;
            DmFire.CadE120PedSITPED.Value := '0';
            DmFire.CadE120Ped.Post;
            DmFire.IBTransacao.CommitRetaining;

            DmFire.vaAfterScroll := 'N';
            DmFire.ConsE120PedChegou.Close;//atualiza a consulta
            DmFire.ConsE120PedChegou.Open;


          DBGrid2.DataSource := DsLivre;
          vnTotal := 0;  //calcula o total de todos os pedidos
          vnQtdPed := 0;
          DmFire.ConsE120PedChegou.First;
          while not DmFire.ConsE120PedChegou.eof do
             begin//33
               vnQtdPed := vnQtdPed + 1;
               vnTotal := vnTotal + DmFire.ConsE120PedChegouTOTBRU.Value;
               DmFire.ConsE120PedChegou.Next;
             end;//33
          DmFire.ConsE120PedChegou.First;
          EdTotal.Value := vnTotal;
          EdQtdPed.Value := vnQtdPed;
          DBGrid2.DataSource := DsDmConsE120PedChegou;
         end;//22
         DmFire.vaAfterScroll := 'S';
   end;//11
end;

procedure TFProcessaPedidosSysRep.BitBtn2Click(Sender: TObject);
var vaTitulosVencidos, vaSemCompra, vaValorMaior, vaClienteNovo : string;
    vaMensagem, vaMsgSuspenso,Hora : string;
    vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;

    vaCodCli,vaDatEmi,vaCodrep,vaCodCpg,vaTnsPro,vaNumCom : string;
    vnNumPed,vnSeqIpd : integer;

    vaDatEnt,vaCodPro,vaCodDer,vaCodDep,vaNumPed,vaSeqIpd,vaPreUni,vaCodTpr
    ,vaTotDsc,vaQtdPed,vaSeqCob, vaSeqEnt  : string;
    vnTotal : double;
    vnQtdPed : integer;
    vnPosLig : integer;
begin
if not DmFire.ConsE120PedChegou.IsEmpty then
  begin//01
    if DmFire.ConsE120PedChegouSITCON.Value <> 'L' then  //se o pedido ja nao estiver liberado
       begin//1
       LStatus.Caption := '';
       Application.ProcessMessages;

       //pega a posicao do registro na grid
       vnPosLig := DmFire.ConsE120PedChegou.RecNo;
       if vnPosLig <= 0 then
          vnPosLig := 1;

        // VALIDA SE OS DADOS DIGITADOS NO PEDIDOS ESTAO CORRETOS
        vaMensagem := '';
        vaMsgSuspenso := '';
        //valida o cliente
        LStatus.Caption := 'Validando dados cliente..';
        Refresh;
        DmOra.ConE085Cli.Close;
        DmOra.ConE085Cli.Parameters.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
        DmOra.ConE085Cli.Parameters.ParamByName('codcli').Value := DmFire.ConsE120PedChegouCODCLI.Value;
        DmOra.ConE085Cli.Open;
        if DmOra.ConE085Cli.IsEmpty then
           begin
             vaMensagem := 'Cliente não encontrado';
           end;
        if DmOra.ConE085CliSITCLI.Value = 'I' then
           begin
              if vaMensagem = '' then
                 vaMensagem := 'Cliente Inativo'
              else
                 vaMensagem := vaMensagem + '  -  Cliente Intativo';

           end;
        //valida o limite de credito do cliente
        if DmFire.ConsE120PedChegouTOTBRU.Value > DmOra.ConE085CliVLRLIM.Value then
           begin
             if vaMensagem = '' then
                vaMensagem := 'Valor do pedido maior do que o limite de crédito do cliente'
             else
                vaMensagem := vaMensagem + '  -  Valor do pedido maior do que o limite de crédito do cliente';
             
           end;

        //valida a data de emissao
        if DmFire.ConsE120PedChegouDATEMI.Value > date then
           begin
             if vaMensagem = '' then
                vaMensagem := 'Data de emissão não pode ser maior do que a data atual'
             else
                vaMensagem := vaMensagem + '  -  Data de emissão não pode der maior do que a data atual';
             
           end;

        //valida a condição de pagamento
        DmOra.ConE028Cpg.Close;
        DmOra.ConE028Cpg.Parameters.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
        DmOra.ConE028Cpg.Parameters.ParamByName('codcpg').Value := DmFire.ConsE120PedChegouCODCPG.Value;
        DmOra.ConE028Cpg.Parameters.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
        DmOra.ConE028Cpg.Open;
        if DmOra.ConE028Cpg.IsEmpty then
           begin
             if vaMensagem = '' then
                vaMensagem := 'Ligação do Representante com a Condição de Pagamento esta inativa ou ainda não existe'
             else
                vaMensagem := vaMensagem + '  -  Ligação do Representante com a Condição de Pagamento esta inativa ou ainda não existe';
           end
        else if DmOra.ConE028CpgSITCPG.Value = 'I' then
                begin
                   if vaMensagem = '' then
                      vaMensagem := 'Condição de pagamento inativa'
                   else
                      vaMensagem := vaMensagem + '  -  Condição de pagamento inativa';
                end;

        //validar os produtos do pedido
        LStatus.Caption := 'Validando produtos do pedido..';
        Application.ProcessMessages;
        DmFire.ConsE120Ipd.Close;
        DmFire.ConsE120Ipd.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
        DmFire.ConsE120Ipd.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
        DmFire.ConsE120Ipd.ParamByName('numcon').Value := DmFire.ConsE120PedChegouNUMCON.Value;
        DmFire.ConsE120Ipd.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
        DmFire.ConsE120Ipd.Open;   
        if DmFire.ConsE120Ipd.IsEmpty then
           begin
             if vaMensagem = '' then
                      vaMensagem := 'Não existe produtos neste pedido'
                   else
                      vaMensagem := vaMensagem + '  -  Não existe produtos neste pedido';
           end
        else
           begin
             DmFire.ConsE120Ipd.First;
             while not DmFire.ConsE120Ipd.Eof do
                begin
                  DmOra.ConE075Der.Close;
                  DmOra.ConE075Der.Parameters.ParamByName('codemp').Value := DmFire.ConsE120IpdCODEMP.Value;
                  DmOra.ConE075Der.Parameters.ParamByName('codpro').Value := DmFire.ConsE120IpdCODPRO.Value;
                  DmOra.ConE075Der.Parameters.ParamByName('codder').Value := DmFire.ConsE120IpdCODDER.Value;
                  DmOra.ConE075Der.Open;
                  if DmOra.ConE075Der.IsEmpty then
                     begin
                       if vaMensagem = '' then
                          vaMensagem := 'Produto:  '+DmOra.ConE075DerCODPRO.AsString+'  Derivação:  '+DmOra.ConE075DerCODDER.AsString+'  não encontrado'
                       else
                          vaMensagem := vaMensagem + '  -  Produto:  '+DmOra.ConE075DerCODPRO.AsString+'  Derivação:  '+DmOra.ConE075DerCODDER.AsString+'  não encontrado';
                     end
                  else
                    if DmOra.ConE075DerSITDER.Value = 'I' then
                       begin
                         if vaMensagem = '' then
                            vaMensagem := 'Produto:  '+DmOra.ConE075DerCODPRO.AsString+'  Derivação:  '+DmOra.ConE075DerCODDER.AsString+'  inativo'
                         else
                            vaMensagem := vaMensagem + '  -  Produto:  '+DmOra.ConE075DerCODPRO.AsString+'  Derivação:  '+DmOra.ConE075DerCODDER.AsString+'  inativo';
                       end;


                  //VALIDA OS DESCONTOS DOS ITENS
                  if DmFire.ConsE120IpdDESCAPR.Value <> 'S' then
                     begin
                       if DmFire.ConsE120IpdCODFAM.Value = '01001' then
                          begin
                             if (DmFire.ConsE120PedChegouCODREP.AsInteger in [1,15,19]) then
                                 begin
                                   if DmFire.ConsE120IpdTOTDESC.Value > 14 then
                                      begin
                                        if vaMensagem = '' then
                                           vaMensagem := 'Produto:  '+DmOra.ConE075DerCODPRO.AsString+'  Derivação:  '+DmOra.ConE075DerCODDER.AsString+'  está com percentual(%) de desconto maior do que o permitido, SOLICITE LIBERAÇÃO!'
                                        else
                                           vaMensagem := vaMensagem + '  -  Produto:  '+DmOra.ConE075DerCODPRO.AsString+'  Derivação:  '+DmOra.ConE075DerCODDER.AsString+'  está com percentual(%) de desconto maior do que o permitido, SOLICITE LIBERAÇÃO!';
                                      end;
                                 end
                             else
                                 begin
                                    if DmFire.ConsE120IpdTOTDESC.Value > 9 then
                                      begin
                                        if vaMensagem = '' then
                                           vaMensagem := 'Produto:  '+DmOra.ConE075DerCODPRO.AsString+'  Derivação:  '+DmOra.ConE075DerCODDER.AsString+'  está com percentual(%) de desconto maior do que o permitido, SOLICITE LIBERAÇÃO!'
                                        else
                                           vaMensagem := vaMensagem + '  -  Produto:  '+DmOra.ConE075DerCODPRO.AsString+'  Derivação:  '+DmOra.ConE075DerCODDER.AsString+'  está com percentual(%) de desconto maior do que o permitido, SOLICITE LIBERAÇÃO!';
                                      end;
                                 end;
                          end
                       else
                          begin
                             if (DmFire.ConsE120PedChegouCODREP.AsInteger in [1,15,19]) then
                                 begin
                                   if DmFire.ConsE120IpdTOTDESC.Value > 20 then
                                      begin
                                        if vaMensagem = '' then
                                           vaMensagem := 'Produto:  '+DmOra.ConE075DerCODPRO.AsString+'  Derivação:  '+DmOra.ConE075DerCODDER.AsString+'  está com percentual(%) de desconto maior do que o permitido, SOLICITE LIBERAÇÃO!'
                                        else
                                           vaMensagem := vaMensagem + '  -  Produto:  '+DmOra.ConE075DerCODPRO.AsString+'  Derivação:  '+DmOra.ConE075DerCODDER.AsString+'  está com percentual(%) de desconto maior do que o permitido, SOLICITE LIBERAÇÃO!';
                                      end;
                                 end
                             else
                                 begin
                                   if DmFire.ConsE120IpdTOTDESC.Value > 15 then
                                      begin
                                        if vaMensagem = '' then
                                           vaMensagem := 'Produto:  '+DmOra.ConE075DerCODPRO.AsString+'  Derivação:  '+DmOra.ConE075DerCODDER.AsString+'  está com percentual(%) de desconto maior do que o permitido, SOLICITE LIBERAÇÃO!'
                                        else
                                           vaMensagem := vaMensagem + '  -  Produto:  '+DmOra.ConE075DerCODPRO.AsString+'  Derivação:  '+DmOra.ConE075DerCODDER.AsString+'  está com percentual(%) de desconto maior do que o permitido, SOLICITE LIBERAÇÃO!';
                                      end;
                                 end;
                          end;
                     end;

                  DmFire.ConsE120Ipd.Next;
                end;
           end;

           if vaMensagem <> '' then
              begin//14
                Application.MessageBox(PChar(vaMensagem),'Aviso',MB_ICONWARNING+MB_OK);
                {MessageDlg(vaMensagem,mtError,[mbOK],0);
                DmFire.CadE120Ped.Close;
                DmFire.CadE120Ped.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
                DmFire.CadE120Ped.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
                DmFire.CadE120Ped.ParamByName('numcon').Value := DmFire.ConsE120PedChegouNUMCON.Value;
                DmFire.CadE120Ped.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
                DmFire.CadE120Ped.Open;
                if not DmFire.CadE120Ped.IsEmpty then
                   begin//15
                     DmFire.CadE120Ped.Edit;
                     DmFire.CadE120PedSITCON.Value := 'R';
                     DmFire.CadE120Ped.Post;
                     DmFire.IBTransacao.CommitRetaining;

                     DmFire.ConsE120PedChegou.Close;
                     DmFire.ConsE120PedChegou.Open; 
                     
                   end;//15  }
                
                Abort;
              end;//14


//------------------------------------------------------------------------------------------------------------
          vaTitulosVencidos := 'N';
          vaSemCompra := 'N';
          vaValorMaior := 'N';
          vaClienteNovo := 'N';

           LStatus.Caption := 'Realizando analize de credito..';
           Application.ProcessMessages;
          //**se o cliente tiver titulos vencidos
          if DmOra.ConsE085Cli_E085RepVLRVEN.AsCurrency > 0 then
             begin//2
                vaTitulosVencidos := 'S';
             end;//2

          //**se o valor do pedido for maior do que o normal
          if DmFire.ConsE120PedChegouTOTBRU.AsCurrency >= 5000 then
             begin//3
                vaValorMaior := 'S';
             end;//3

          //**mais de 6 meses sem compra
          DmOra.ConsSql.Close;
          DmOra.ConsSql.SQL.Clear;
          DmOra.ConsSql.SQL.Add('select codemp,codfil,numped,codcli,datemi from e120ped');
          DmOra.ConsSql.SQL.Add('where');
          DmOra.ConsSql.SQL.Add('sitped = ''4'' and');
          DmOra.ConsSql.SQL.Add('datemi >= :datemi and');
          DmOra.ConsSql.SQL.Add('codcli = :codcli');
          DmOra.ConsSql.Parameters.ParamByName('datemi').Value := FormatDateTime('DD/MM/YYYY' ,date - 180);
          DmOra.ConsSql.Parameters.ParamByName('codcli').Value := DmFire.ConsE120PedChegouCODCLI.Value;
          DmOra.ConsSql.Open;
          if DmOra.ConsSql.IsEmpty then
             begin//4
                vaSemCompra := 'S';
             end;//4

          //**se for cliente novo, que nao tenha feito nenhum pedido
          DmOra.ConsSql.Close;
          DmOra.ConsSql.SQL.Clear;
          DmOra.ConsSql.SQL.Add('select codemp,codfil,numped,codcli,datemi from e120ped');
          DmOra.ConsSql.SQL.Add('where');
          DmOra.ConsSql.SQL.Add('sitped <> ''5'' and');
          DmOra.ConsSql.SQL.Add('codcli = :codcli');
          DmOra.ConsSql.Parameters.ParamByName('codcli').Value := DmFire.ConsE120PedChegouCODCLI.Value;
          DmOra.ConsSql.Open;
          if DmOra.ConsSql.IsEmpty then
             begin//5
               vaClienteNovo := 'S';
             end;//5

//------------------------------------------------------------------------------------------------------------

       {**********************************************
              GRAVA OS DADOS GERAIS DO PEDIDO
       ***********************************************}
          begin//16
              LStatus.Caption := 'Gravando dados gerais do pedido..';
              Application.ProcessMessages;
              //atribui os valores para as variaveis
              vaCodCli := IntToStr(DmFire.ConsE120PedChegouCODCLI.AsInteger);
              vaDatEmi := DateToStr(DmFire.ConsE120PedChegouDATEMI.Value);
              vaDatEmi := FormatDateTime('DD/MM/YYYY',StrToDate(vaDatEmi));
              vaCodrep := IntToStr(DmOra.ConE085CliCODREP.Value);
              vaCodCpg := DmFire.ConsE120PedChegouCODCPG.Value;
              vaNumCom := IntToStr(DmFire.ConsE120PedChegouNUMCON.Value);
              vaTnsPro := '90100';

              //consulta se o cliente tem endereço de cobrança ou entrega cadastrado
              vaSeqCob := '';
              Dm2.ConsGeral.Close;
              Dm2.ConsGeral.SQL.Clear;
              Dm2.ConsGeral.SQL.Add('SELECT * FROM E085COB WHERE CODCLI = :CODCLI');
              Dm2.ConsGeral.Parameters.ParamByName('CODCLI').Value := DmFire.ConsE120PedChegouCODCLI.AsInteger;
              Dm2.ConsGeral.Open;
              if not dm2.ConsGeral.IsEmpty then
                 vaSeqCob := IntToStr(Dm2.ConsGeral.FieldByName('SEQCOB').AsInteger)
              else
                 vaSeqCob := '';

              vaSeqEnt := '';
              Dm2.ConsGeral.Close;
              Dm2.ConsGeral.SQL.Clear;
              Dm2.ConsGeral.SQL.Add('SELECT * FROM E085ENT WHERE CODCLI = :CODCLI');
              Dm2.ConsGeral.Parameters.ParamByName('CODCLI').Value := DmFire.ConsE120PedChegouCODCLI.AsInteger;
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

              LStatus.Caption := 'Conectando ao Sid..';
              Application.ProcessMessages;
              // Executar ação de autenticação no Sapiens SID
              xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

              // Verificar se a ação executou com sucesso
              if (StrToIntDef(Copy(xRetorno, 1, 5), 0)) = 0 then
                  raise Exception.Create('ERRO - Conexão SID não foi estabelecida: ' + xRetorno)
              else
                  vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;

              LStatus.Caption := 'Logando na filial..';
              Application.ProcessMessages;
              //loga na filial
              xPostQuery.Clear;
              xPostQuery.Add('ACAO=SID.Srv.AltEmpFil');
              xPostQuery.Add('&CodEmp='+'1');
              xPostQuery.Add('&CodFil='+'1');
              xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

             //VALIDA SE OS DADOS GERAIS JA NAO FORAM CADASTRADOS
             if DmFire.ConsE120PedChegouNUMPED.Value = 0 then
             begin//100

              // grava cabeçalho do pedido
              xPostQuery.Clear;
              xPostQuery.Add('ACAO=SID.Ped.Gravar');
              xPostQuery.Add('&CodCli='+vaCodCli);
              xPostQuery.Add('&DatEmi='+vaDatEmi);
              xPostQuery.Add('&TnsPro='+vaTnsPro);
              xPostQuery.Add('&CodRep='+vaCodRep);
              xPostQuery.Add('&CodCpg='+vaCodCpg);

              if vaSeqCob <> '' then
                 xPostQuery.Add('&SeqCob='+vaSeqCob);
              if vaSeqEnt <> '' then
                 xPostQuery.Add('&SeqEnt='+vaSeqEnt);

              xPostQuery.Add('&Usu_PreCar='+'0');
              xPostQuery.Add('&Usu_PedTra='+'N');
              xPostQuery.Add('&Usu_NumCom='+vaNumCom);


              LStatus.Caption := 'Gravando cabeçalho do pedido..';
              Application.ProcessMessages;
              // Executar ação  Inserir o pedido
              xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));
              //ShowMessage(xRetorno);

              try
                vnNumPed := StrToInt(xRetorno);
              except
                  //raise Exception.Create(xRetorno);
                  LStatus.Caption := '';
                  Application.MessageBox(Pchar(xRetorno),'Aviso',MB_ICONWARNING+MB_OK);
                  Abort;
                 //Close;
              end;
                 LStatus.Caption := 'Pedido '+IntToStr(vnNumPed)+ '  gerado';
                 Application.ProcessMessages;
                 //grava o numero de pedido gerado no banco intermediario
                 DmFire.CadE120Ped.Close;
                 DmFire.CadE120Ped.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
                 DmFire.CadE120Ped.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
                 DmFire.CadE120Ped.ParamByName('numcon').Value := DmFire.ConsE120PedChegouNUMCON.Value;
                 DmFire.CadE120Ped.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
                 DmFire.CadE120Ped.Open;
                 if not DmFire.CadE120Ped.IsEmpty then
                    begin
                       DmFire.CadE120Ped.Edit;
                       DmFire.CadE120PedNUMPED.Value := vnNumPed;
                       DmFire.CadE120Ped.Post;
                       DmFire.IBTransacao.CommitRetaining;
                    end;

             end//100
          else
             begin
               vnNumPed := DmFire.ConsE120PedChegouNUMPED.Value;
             end;
                     LStatus.Caption := 'Gravando produtos do pedido..';
                     Application.ProcessMessages;

                     {***************************************************
                                  GRAVA OS PRODUTOS DO PEDIDO
                     ****************************************************}
                     DmFire.ConsE120Ipd.First;
                     while not DmFire.ConsE120Ipd.Eof do
                        begin//17
                          if DmFire.ConsE120IpdNUMPED.Value = 0 then
                           begin//101
                             LStatus.Caption := 'Gravando produto: '+DmFire.ConsE120IpdCODPRO.Value+ '  '+DmFire.ConsE120IpdDESPRO.Value+ '  derivação: '+DmFire.ConsE120IpdCODDER.Value;
                             Application.ProcessMessages;
                             vaDatEnt := DateToStr(Date);
                             vaDatEnt := FormatDateTime('DD/MM/YYYY',StrToDate(vaDatEnt));
                             vaNumPed := IntToStr(vnNumPed);
                             vaSeqIpd := IntToStr(DmFire.ConsE120IpdSEQIPD.Value);
                             vaCodPro := DmFire.ConsE120IpdCODPRO.Value;
                             vaCodDer := DmFire.ConsE120IpdCODDER.Value;
                             vaCodDep := DmFire.ConsE120IpdCODDEP.Value;
                             vaTnsPro := DmFire.ConsE120IpdTNSPRO.Value;
                             vaPreUni := FloatToStr(DmFire.ConsE120IpdPREUNI.Value);
                             vaQtdPed := IntToStr(DmFire.ConsE120IpdQTDPED.Value);
                             vaCodTpr := DmFire.ConsE120IpdCODTPR.Value;
                             vaTotDsc := FloatToStr(DmFire.ConsE120IpdTOTDESC.Value);
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
                             //ShowMessage(xRetorno);

                             // Verificar retorno
                             if (xRetorno <> vaSeqIpd) then
                              begin
                                DmFire.vaAfterScroll := 'S';
                                DmFire.ConsE120PedChegou.Close;
                                DmFire.ConsE120PedChegou.Open;

                                //raise Exception.Create(xRetorno);
                                Application.MessageBox(Pchar(xRetorno),'Aviso',MB_ICONWARNING+MB_OK);
                                Abort;
                              end
                             else
                             begin//18
                                   vnSeqIpd := StrToInt(xRetorno);


                                  //atualiza o preço unitario
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
                                   //ShowMessage(xRetorno);


                                   //altera o item com o total de desconto
                                   DmOra.CadE120Ipd.Close;
                                   DmOra.CadE120Ipd.Parameters.ParamByName('codemp').Value := DmFire.ConsE120IpdCODEMP.Value;
                                   DmOra.CadE120Ipd.Parameters.ParamByName('codfil').Value := DmFire.ConsE120IpdCODFIL.Value;
                                   DmOra.CadE120Ipd.Parameters.ParamByName('numped').Value := vnNumPed;
                                   DmOra.CadE120Ipd.Parameters.ParamByName('seqipd').Value := vnSeqIpd;
                                   DmOra.CadE120Ipd.Open;
                                   DmOra.CadE120Ipd.Edit;
                                   DmOra.CadE120IpdUSU_TOTDSC.Value := DmFire.ConsE120IpdTOTDESC.Value;
                                 //DmOra.CadE120IpdUSU_TOTDSCORI.Value := ClientE120IpdUSU_TOTDSCORI.Value;
                                   DmOra.CadE120IpdUSU_VLRORI.Value := DmFire.ConsE120IpdVLRORI.Value;
                                   DmOra.CadE120Ipd.Post;

                                   //grava o numero do pedido na banco intermediario
                                   DmFire.CadE120Ipd.Close;
                                   DmFire.CadE120Ipd.ParamByName('codemp').Value := DmFire.ConsE120IpdCODEMP.Value;
                                   DmFire.CadE120Ipd.ParamByName('codfil').Value := DmFire.ConsE120IpdCODFIL.Value;
                                   DmFire.CadE120Ipd.ParamByName('numcon').Value := DmFire.ConsE120IpdNUMCON.Value;
                                   DmFire.CadE120Ipd.ParamByName('codrep').Value := DmFire.ConsE120IpdCODREP.Value;
                                   DmFire.CadE120Ipd.ParamByName('seqipd').Value := DmFire.ConsE120IpdSEQIPD.Value;
                                   DmFire.CadE120Ipd.Open;
                                   if not DmFire.CadE120Ipd.IsEmpty then
                                      begin
                                         DmFire.CadE120Ipd.Edit;
                                         DmFire.CadE120IpdNUMPED.Value := vnNumPed;
                                         DmFire.CadE120Ipd.Post;
                                         DmFire.IBTransacao.CommitRetaining;

                                      end;

                              end;//18

                           end//101
                          else
                            begin
                              vnSeqIpd := DmFire.ConsE120IpdNUMPED.Value;
                            end;

                                 {**************************************************
                                              GRAVA AS CORES DO PRODUTO
                                 ***************************************************}

                                 {DmFire.ConsUsu120Ipd.First;
                                 while not DmFire.ConsUsu120Ipd.Eof do
                                    begin//19
                                      if DmFire.ConsUsu120IpdNUMPED.Value = 0 then
                                      begin//102
                                        DmOra.CadUsu120Ipd.Open;
                                        DmOra.CadUsu120Ipd.Insert;
                                        DmOra.CadUsu120IpdUSU_CODEMP.Value := DmFire.ConsUsu120IpdCODEMP.Value;
                                        DmOra.CadUsu120IpdUSU_CODFIL.Value := DmFire.ConsUsu120IpdCODFIL.Value;
                                        DmOra.CadUsu120IpdUSU_NUMPED.Value := vnNumPed;
                                        DmOra.CadUsu120IpdUSU_SEQIPD.Value := vnSeqIpd;
                                        DmOra.CadUsu120IpdUSU_QTDCOR.Value := DmFire.ConsUsu120IpdQTDCOR.Value;
                                        DmOra.CadUsu120IpdUSU_TIPCMB.Value := DmFire.ConsUsu120IpdTIPCMB.Value;
                                        DmOra.CadUsu120IpdUSU_COR001.Value := DmFire.ConsUsu120IpdCOR001.Value;
                                        DmOra.CadUsu120IpdUSU_COR002.Value := DmFire.ConsUsu120IpdCOR002.Value;
                                        DmOra.CadUsu120IpdUSU_SEQITE.Value := DmFire.ConsUsu120IpdSEQITE.Value;
                                        DmOra.CadUsu120IpdUSU_NUMCOM.Value := DmFire.ConsUsu120IpdNUMCON.Value;
                                        DmOra.CadUsu120IpdUSU_CODPRO.Value := DmFire.ConsUsu120IpdCODPRO.Value;
                                        DmOra.CadUsu120IpdUSU_CODDER.Value := DmFire.ConsUsu120IpdCODDER.Value;
                                        DmOra.CadUsu120IpdUSU_TECTRA.Value := DmFire.ConsUsu120IpdTECTRA.Value;
                                        DmOra.CadUsu120IpdUSU_QTDABE.Value := DmFire.ConsUsu120IpdQTDCOR.Value;
                                        DmOra.CadUsu120IpdUSU_QTDCAN.Value := 0;
                                        DmOra.CadUsu120IpdUSU_PRECAR.Value := 0;
                                        DmOra.CadUsu120IpdUSU_TECTRA.Value := 'N';
                                        DmOra.CadUsu120Ipd.Post;

                                        //grava o numero do pedido no banco intermediario
                                        DmFire.CadUsu120Ipd.Close;
                                        DmFire.CadUsu120Ipd.ParamByName('codemp').Value := DmFire.ConsUsu120IpdCODEMP.Value;
                                        DmFire.CadUsu120Ipd.ParamByName('codfil').Value := DmFire.ConsUsu120IpdCODFIL.Value;
                                        DmFire.CadUsu120Ipd.ParamByName('numcon').Value := DmFire.ConsUsu120IpdNUMCON.Value;
                                        DmFire.CadUsu120Ipd.ParamByName('codrep').Value := DmFire.ConsUsu120IpdCODREP.Value;
                                        DmFire.CadUsu120Ipd.ParamByName('seqipd').Value := DmFire.ConsUsu120IpdSEQIPD.Value;
                                        DmFire.CadUsu120Ipd.ParamByName('seqite').Value := DmFire.ConsUsu120IpdSEQITE.Value;
                                        DmFire.CadUsu120Ipd.Open;
                                        if not DmFire.CadUsu120Ipd.IsEmpty then
                                           begin
                                             DmFire.CadUsu120Ipd.Edit;
                                             DmFire.CadUsu120IpdNUMPED.Value := vnNumPed;
                                             DmFire.CadUsu120Ipd.Post;
                                             DmFire.IBTransacao.CommitRetaining;
                                           end;

                                      end;//102

                                      DmFire.ConsUsu120Ipd.Next;
                                    end;//19}

                          DmFire.ConsE120Ipd.Next;
                        end;//17
                      LStatus.Caption := 'Gravando as observações do pedido..';
                      Application.ProcessMessages;
                    {**********************************************
                            GRAVA AS OBSERVAÇÕES DO PEDIDO
                    ***********************************************}
                     DmFire.ConsE120ObsChegou.First;
                     while not DmFire.ConsE120ObsChegou.Eof do
                       begin//21
                         DmOra.CadE120Obs.Open;
                         DmOra.CadE120Obs.Insert;
                         DmOra.CadE120ObsCODEMP.Value := DmFire.ConsE120ObsChegouCODEMP.Value;
                         DmOra.CadE120ObsCODFIL.Value := DmFire.ConsE120ObsChegouCODFIL.Value;
                         DmOra.CadE120ObsNUMPED.Value := vnNumPed;
                         DmOra.CadE120ObsSEQOBS.Value := DmFire.ConsE120ObsChegouSEQOBS.Value;
                         DmOra.CadE120ObsTIPOBS.Value := 'M';
                         DmOra.CadE120ObsCODMOT.Value := 0;
                         DmOra.CadE120ObsOBSPED.Value := DmFire.ConsE120ObsChegouOBSPED.Value;
                         DmOra.CadE120ObsOBSUSU.Value := DmFire.ConsE120ObsChegouOBSUSU.Value;
                         DmOra.CadE120ObsOBSDAT.Value := DmFire.ConsE120ObsChegouOBSDAT.Value;
                         DmOra.CadE120ObsSOLOBS.Value := ' ';
                         DmOra.CadE120ObsSITOBS.Value := 'G';
                         DmOra.CadE120ObsUSU_NUMCOM.Value := DmFire.ConsE120ObsChegouNUMCON.Value;
                         DmOra.CadE120Obs.Post;

                         DmFire.ConsE120ObsChegou.Next;
                       end;//21
                         LStatus.Caption := 'Atualizando situação do pedido para 1 - Aberto Total ou para 3 - Suspenso';
                         Application.ProcessMessages;
                    if (vaTitulosVencidos = 'N') and (vaSemCompra = 'N') and (vaValorMaior = 'N') and (vaClienteNovo = 'N') then
                       begin//22  deixa o pedido na situação aberto total
                         DmOra.CadE120Ped.Close;
                         DmOra.CadE120Ped.Parameters.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
                         DmOra.CadE120Ped.Parameters.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
                         DmOra.CadE120Ped.Parameters.ParamByName('numped').Value := vnNumPed;
                         DmOra.CadE120Ped.Open;
                         if not DmOra.CadE120Ped.IsEmpty then
                            begin//24
                               DmOra.CadE120Ped.Edit;
                               DmOra.CadE120PedSITPED.Value := 1;
                               DmOra.CadE120Ped.Post;
                            end;//24

                         DmFire.ConsE120Ipd.First;
                         while not DmFire.ConsE120Ipd.Eof do
                            begin//25
                              DmOra.CadE120Ipd.Close;
                              DmOra.CadE120Ipd.Parameters.ParamByName('codemp').Value := DmFire.ConsE120IpdCODEMP.Value;
                              DmOra.CadE120Ipd.Parameters.ParamByName('codfil').Value := DmFire.ConsE120IpdCODFIL.Value;
                              DmOra.CadE120Ipd.Parameters.ParamByName('numped').Value := vnNumPed;
                              DmOra.CadE120Ipd.Parameters.ParamByName('seqipd').Value := DmFire.ConsE120IpdSEQIPD.Value;
                              DmOra.CadE120Ipd.Open;
                              if not DmOra.CadE120Ipd.IsEmpty then
                                 begin//26
                                   DmOra.CadE120Ipd.Edit;
                                   DmOra.CadE120IpdSITIPD.Value := 1;
                                   DmOra.CadE120Ipd.Post;
                                 end;//26

                              DmFire.ConsE120Ipd.Next;
                            end;//25

                          //muda a situaçao do pedido no banco intermediario
                          DmFire.CadE120Ped.Close;
                          DmFire.CadE120Ped.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
                          DmFire.CadE120Ped.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
                          DmFire.CadE120Ped.ParamByName('numcon').Value := DmFire.ConsE120PedChegouNUMCON.Value;
                          DmFire.CadE120Ped.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
                          DmFire.CadE120Ped.Open;
                          if not DmFire.CadE120Ped.IsEmpty then
                             begin
                                DmFire.CadE120Ped.Edit;
                                DmFire.CadE120PedSITPED.AsInteger := 1;
                                DmFire.CadE120Ped.Post;
                                DmFire.IBTransacao.CommitRetaining;
                             end;

                       end//22
                    else
                       begin//23 //deixa o pedido suspenso e grava na observaçao os motivos
                         DmOra.CadE120Ped.Close;
                         DmOra.CadE120Ped.Parameters.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
                         DmOra.CadE120Ped.Parameters.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
                         DmOra.CadE120Ped.Parameters.ParamByName('numped').Value := vnNumPed;
                         DmOra.CadE120Ped.Open;
                         if not DmOra.CadE120Ped.IsEmpty then
                            begin//27
                               DmOra.CadE120Ped.Edit;
                               DmOra.CadE120PedSITPED.Value := 3;
                               DmOra.CadE120Ped.Post;
                            end;//27

                         DmFire.ConsE120Ipd.First;
                         while not DmFire.ConsE120Ipd.Eof do
                            begin//28
                              DmOra.CadE120Ipd.Close;
                              DmOra.CadE120Ipd.Parameters.ParamByName('codemp').Value := DmFire.ConsE120IpdCODEMP.Value;
                              DmOra.CadE120Ipd.Parameters.ParamByName('codfil').Value := DmFire.ConsE120IpdCODFIL.Value;
                              DmOra.CadE120Ipd.Parameters.ParamByName('numped').Value := vnNumPed;
                              DmOra.CadE120Ipd.Parameters.ParamByName('seqipd').Value := DmFire.ConsE120IpdSEQIPD.Value;
                              DmOra.CadE120Ipd.Open;
                              if not DmOra.CadE120Ipd.IsEmpty then
                                 begin//29
                                   DmOra.CadE120Ipd.Edit;
                                   DmOra.CadE120IpdSITIPD.Value := 3;
                                   DmOra.CadE120Ipd.Post;
                                 end;//29

                              DmFire.ConsE120Ipd.Next;
                            end;//28

                            if vaTitulosVencidos = 'S' then
                               begin
                                 vaMsgSuspenso := 'SUSPENSO DEVIDO: TITULOS EM ATRAZO';
                               end;
                            if vaSemCompra = 'S' then
                               begin
                                 if vaMsgSuspenso = '' then
                                    vaMsgSuspenso := 'SUSPENSO DEVIDO: MAIS DE SEIS MESES SEM COMPRA'
                                 else
                                    vaMsgSuspenso := vaMsgSuspenso + '  -   MAIS DE SEIS MESES SEM COMPRA';
                               end;
                            if vaValorMaior = 'S' then
                               begin
                                 if vaMsgSuspenso = '' then
                                    vaMsgSuspenso := 'SUSPENSO DEVIDO: VALOR DO PEDIDO MAIOR QUE R$5.000,00'
                                 else
                                    vaMsgSuspenso := vaMsgSuspenso + '  -   VALOR DO PEDIDO MAIOR QUE R$5.000,00';
                               end;
                            if vaClienteNovo = 'S' then
                               begin
                                 if vaMsgSuspenso = '' then
                                    vaMsgSuspenso := 'SUSPENSO DEVIDO: CLIENTE NOVO'
                                 else
                                    vaMsgSuspenso := vaMsgSuspenso + '  -   CLIENTE NOVO';
                               end;

                           DmOra.CadE120Obs.Open;
                           DmOra.CadE120Obs.Insert;
                           DmOra.CadE120ObsCODEMP.Value := DmFire.ConsE120PedChegouCODEMP.Value;
                           DmOra.CadE120ObsCODFIL.Value := DmFire.ConsE120PedChegouCODFIL.Value;
                           DmOra.CadE120ObsNUMPED.Value := vnNumPed;
                           DmOra.CadE120ObsTIPOBS.Value := 'M';
                           DmOra.CadE120ObsCODMOT.Value := 0;
                           DmOra.CadE120ObsOBSPED.Value := vaMsgSuspenso;
                           DmOra.CadE120ObsOBSUSU.Value := DmFire.ConsE120PedChegouUSUGER.Value;
                           DmOra.CadE120ObsOBSDAT.Value := DmFire.ConsE120PedChegouDATCON.Value;
                           DmOra.CadE120ObsSOLOBS.Value := ' ';
                           DmOra.CadE120ObsSITOBS.Value := 'G';
                           //DmOra.CadE120ObsUSU_NUMCOM.Value := DmFire.ConsE120PedChegouNUMCON.Value;
                           DmOra.CadE120ObsUSU_NUMCOM.Value := 0;

                           if DmFire.ConsE120ObsChegou.IsEmpty then
                               DmOra.CadE120ObsSEQOBS.Value := 1
                           else
                                DmOra.CadE120ObsSEQOBS.Value := DmFire.ConsE120ObsChegouSEQOBS.Value + 1;//fiz assim pq um pouco + acima estou percorrendo as obs e a query ja esta em ultima posicao

                           DmOra.CadE120Obs.Post;

                         //muda a situaçao do pedido no banco intermediario
                         DmFire.CadE120Ped.Close;
                         DmFire.CadE120Ped.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
                         DmFire.CadE120Ped.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
                         DmFire.CadE120Ped.ParamByName('numcon').Value := DmFire.ConsE120PedChegouNUMCON.Value;
                         DmFire.CadE120Ped.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
                         DmFire.CadE120Ped.Open;
                         if not DmFire.CadE120Ped.IsEmpty then
                            begin
                               DmFire.CadE120Ped.Edit;
                               DmFire.CadE120PedSITPED.AsInteger := 3;
                               DmFire.CadE120Ped.Post;
                               DmFire.IBTransacao.CommitRetaining;
                            end;

                          vaMensagem := 'Pedido  '+IntToStr(vnNumPed)+' gerado como SUSPENSO';
                          MessageDlg(vaMensagem,mtWarning,[mbOK],0);
                       end;//23



                  //muda a situacao da conferencia do pedido para liberado aguardando impressao
                  DmFire.CadE120Ped.Close;
                  DmFire.CadE120Ped.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
                  DmFire.CadE120Ped.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
                  DmFire.CadE120Ped.ParamByName('numcon').Value := DmFire.ConsE120PedChegouNUMCON.Value;
                  DmFire.CadE120Ped.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
                  DmFire.CadE120Ped.Open;
                  if not DmFire.CadE120Ped.IsEmpty then
                     begin//20
                       DmFire.CadE120Ped.Edit;
                       DmFire.CadE120PedSITCON.Value := 'L';
                       DmFire.CadE120Ped.Post;
                       DmFire.IBTransacao.CommitRetaining;


                    end;//20
          end;//16

          LStatus.Caption := 'Atualizando consulta..';
          Application.ProcessMessages;

          DmFire.vaAfterScroll := 'N';
          DmFire.ConsE120PedChegou.Close;//atualiza a consulta
          DmFire.ConsE120PedChegou.Open;

          DBGrid2.DataSource := DsLivre;
          vnTotal := 0;  //calcula o total de todos os pedidos
          vnQtdPed := 0;
          DmFire.ConsE120PedChegou.First;
          while not DmFire.ConsE120PedChegou.eof do
             begin
               vnQtdPed := vnQtdPed + 1;
               vnTotal := vnTotal + DmFire.ConsE120PedChegouTOTBRU.Value;
               DmFire.ConsE120PedChegou.Next;
             end;
          DmFire.ConsE120PedChegou.First;
          EdTotal.Value := vnTotal;
          EdQtdPed.Value := vnQtdPed;
          DBGrid2.DataSource := DsDmConsE120PedChegou;

          LStatus.Caption := '';
          Application.ProcessMessages;
          DmFire.vaAfterScroll := 'S';
          if DmFire.ConsE120PedChegou.RecNo > 0 then
             DmFire.ConsE120PedChegou.RecNo := vnPosLig;
       end;//1

  end;//01

end;

procedure TFProcessaPedidosSysRep.BitBtn3Click(Sender: TObject);
var vnTotal : double;
    vnQtdPed : integer;
    vnPosLig : integer;
begin
if not DmFire.ConsE120PedChegou.IsEmpty then
  begin//1

    FPedidoSysRep := TFPedidoSysRep.Create(Self);
    FPedidoSysRep.LNumCon.Caption := IntToStr(DmFire.ConsE120PedChegouNUMCON.Value);
    FPedidoSysRep.LDesCpg.Caption := DmFire.ConsE120PedChegouDESCPG.Value;
    FPedidoSysRep.LDatEmi.Caption := DateToStr(DmFire.ConsE120PedChegouDATEMI.Value);
    FPedidoSysRep.LVlrTot.Caption := DBText4.Caption;
    FPedidoSysRep.LDsCli1.Caption := LDsCli1.Caption;
    FPedidoSysRep.LDsCli2.Caption := LDsCli2.Caption;
    FPedidoSysRep.LCodRep.Caption := DBText5.Caption;
    FPedidoSysRep.LNomRep.Caption := DBText6.Caption;
    FPedidoSysRep.LApeRep.Caption := DBText7.Caption;

    DmFire.ConsE120Ipd.Close;
    DmFire.ConsE120Ipd.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
    DmFire.ConsE120Ipd.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
    DmFire.ConsE120Ipd.ParamByName('numcon').Value := DmFire.ConsE120PedChegouNUMCON.Value;
    DmFire.ConsE120Ipd.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
    DmFire.ConsE120Ipd.Open;

    FPedidoSysRep.ShowModal;
    FreeAndNil(FPedidoSysRep);

    cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;
    //atualiza a consulta dos pedidos que estao esperando confirmação
    //pega a posicao do registro na grid
    vnPosLig := DmFire.ConsE120PedChegou.RecNo;
    if vnPosLig <= 0 then
       vnPosLig := 1;
    DmFire.vaAfterScroll := 'N';
    DmFire.ConsE120PedChegou.Close;
    DmFire.ConsE120PedChegou.Open;

    DBGrid2.DataSource := DsLivre;
    vnTotal := 0;  //calcula o total de todos os pedidos
    vnQtdPed := 0;
    DmFire.ConsE120PedChegou.First;
    while not DmFire.ConsE120PedChegou.eof do
       begin
         vnQtdPed := vnQtdPed + 1;
         vnTotal := vnTotal + DmFire.ConsE120PedChegouTOTBRU.Value;
         DmFire.ConsE120PedChegou.Next;
       end;
    DmFire.ConsE120PedChegou.First;
    EdTotal.Value := vnTotal;
    EdQtdPed.Value := vnQtdPed;
    DBGrid2.DataSource := DsDmConsE120PedChegou;
    Screen.Cursor := Cursor;
    DmFire.vaAfterScroll := 'S';
    if DmFire.ConsE120PedChegou.RecNo > 0 then
       DmFire.ConsE120PedChegou.RecNo := vnPosLig;
  end;//1
end;

procedure TFProcessaPedidosSysRep.BitBtn5Click(Sender: TObject);
begin
    FFiltroPedRecSysRep := TFFiltroPedRecSysRep.Create(Self);
    FFiltroPedRecSysRep.ShowModal;
    FreeAndNil(FFiltroPedRecSysRep);

end;

procedure TFProcessaPedidosSysRep.BProcessaArquivosClick(Sender: TObject);
var Cont : integer;
    SR : TSearchRec;
    ArqE120Ped,ArqE120Ipd,ArqUsu120Ipd, ArqE120Obs : TextFile;
    DestE120Ped,DestE120Ipd,DestUsu120Ipd,DestE120Obs : string;
    linha : string;
    I : integer;
    vaCodEmp,vaCodFil,vaNumCon,vaCodCli,vaTnsPro,vaDatEmi,vaCodRep,
    vaCodCpg,vaSitPed,vaUsuGer,vaDatGer : string;
    vaSeqIpd,vaCodPro,vaCodDer,vaCodFam,vaCodDep,vaQtdPed,vaCodTpr,vaPreUni,vaSitIpd,
    vaTotDesc,vaVlrOri,vaVlrBru : string;
    vaSeqIte,vaQtdCor,vaTipCmb,vaCor001,vaCor002 : string;
    vaSeqObs,vaObsPed,vaSitObs,vaObsUsu,vaObsDat,vaDatEnv : string;
    vnTotal : double;
    vnQtdPed : integer;
begin
if not ClientArquivos.IsEmpty then
   begin//01

    cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass;
         {*******************************************************
          REALIZA O PROCESSAMENTO DOS ARQUIVOS GRAVANDO NO BANCO
         ********************************************************}
         ClientArquivos.First;
         while not ClientArquivos.Eof do
           begin//100
                   DestE120Ped := '\\senior\ftproot\ArqPed\E120Ped\'+ClientArquivosvaNomArq.Value;
                   if not FileExists(DestE120Ped) then
                      abort
                   else
                   begin//1
                   AssignFile(ArqE120Ped, DestE120Ped);
                   Reset(ArqE120Ped);

                   While not Eof(ArqE120Ped) do
                     begin//3
                        //limpa as variaveis
                        vaCodEmp := '';vaCodFil := '';vaNumCon := '';vaCodCli := '';vaTnsPro := '';
                        vaDatEmi := '';vaCodRep := '';vaCodCpg := '';vaSitPed := '';vaUsuGer := '';
                        vaDatGer := '';vaDatEnv := '';

                        Readln(ArqE120Ped, linha);
                        I := 1;
                        while I < Length(linha) do
                          begin//6
                            while linha[I] <> ';' do
                              begin
                                 vaCodEmp := vaCodEmp + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodFil := vaCodFil + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaNumCon := vaNumCon + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodCli := vaCodCli + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaTnsPro := vaTnsPro + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaDatEmi := vaDatEmi + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodRep := vaCodRep + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodCpg := vaCodCpg + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaSitPed := vaSitPed + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaUsuGer := vaUsuGer + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaDatGer := vaDatGer + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaDatEnv := vaDatEnv + linha[i];
                                 I := I + 1;
                              end;

                          end;//6

                          //grava no banco os dados gerais do pedido
                          DmFire.CadE120Ped.Close;
                          DmFire.CadE120Ped.ParamByName('codemp').Value := StrToInt(vaCodEmp);
                          DmFire.CadE120Ped.ParamByName('codfil').Value := StrToInt(vaCodFil);
                          DmFire.CadE120Ped.ParamByName('numcon').Value := StrToInt(vaNumCon);
                          DmFire.CadE120Ped.ParamByName('codrep').Value := StrToInt(vaCodRep);
                          DmFire.CadE120Ped.Open;
                          if DmFire.CadE120Ped.IsEmpty then
                            begin//7
                               DmFire.CadE120Ped.Insert;
                               DmFire.CadE120PedCODEMP.Value := StrToInt(vaCodEmp);
                               DmFire.CadE120PedCODFIL.Value := StrToInt(vaCodFil);
                               DmFire.CadE120PedNUMCON.Value := StrToInt(vaNumCon);
                               DmFire.CadE120PedCODREP.Value := StrToInt(vaCodRep);
                               DmFire.CadE120PedNUMPED.Value := 0;
                               DmFire.CadE120PedCODCLI.Value := StrToInt(vaCodCli);
                               DmFire.CadE120PedTNSPRO.Value := vaTnsPro;
                               vaDatEmi :=  FormatDateTime('DD/MM/YYYY',StrToDate(vaDatEmi));
                               DmFire.CadE120PedDATEMI.AsDateTime := StrToDate(vaDatEmi);
                               DmFire.CadE120PedCODCPG.Value := vaCodCpg;
                               DmFire.CadE120PedSITPED.Value := vaSitPed;
                               DmFire.CadE120PedUSUGER.Value := StrToInt(vaUsuGer);
                               DmFire.CadE120PedDATGER.Value := StrToDate(vaDatGer);
                               DmFire.CadE120PedPEDCON.Value := 'N';
                               DmFire.CadE120PedDATENV.Value := StrToDate(vaDatEnv);
                               DmFire.CadE120PedSITCON.Value := 'E'; //E-espera, L-liberado, R-rejeitado
                               DmFire.CadE120Ped.Post;
                               DmFire.IBTransacao.CommitRetaining;
                            end;//7

                            //GRAVA A COPIA OCULTA DOS DADOS GERAIS
                            DmFire.CadE120Ped_Ocu.Close;
                            DmFire.CadE120Ped_Ocu.ParamByName('codemp').Value := StrToInt(vaCodEmp);
                            DmFire.CadE120Ped_Ocu.ParamByName('codfil').Value := StrToInt(vaCodFil);
                            DmFire.CadE120Ped_Ocu.ParamByName('numcon').Value := StrToInt(vaNumCon);
                            DmFire.CadE120Ped_Ocu.ParamByName('codrep').Value := StrToInt(vaCodRep);
                            DmFire.CadE120Ped_Ocu.Open;
                            if DmFire.CadE120Ped_Ocu.IsEmpty then
                              begin//7A
                                 DmFire.CadE120Ped_Ocu.Insert;
                                 DmFire.CadE120Ped_OcuCODEMP.Value := StrToInt(vaCodEmp);
                                 DmFire.CadE120Ped_OcuCODFIL.Value := StrToInt(vaCodFil);
                                 DmFire.CadE120Ped_OcuNUMCON.Value := StrToInt(vaNumCon);
                                 DmFire.CadE120Ped_OcuCODREP.Value := StrToInt(vaCodRep);
                                 DmFire.CadE120Ped_OcuNUMPED.Value := 0;
                                 DmFire.CadE120Ped_OcuCODCLI.Value := StrToInt(vaCodCli);
                                 DmFire.CadE120Ped_OcuTNSPRO.Value := vaTnsPro;
                                 vaDatEmi :=  FormatDateTime('DD/MM/YYYY',StrToDate(vaDatEmi));
                                 DmFire.CadE120Ped_OcuDATEMI.AsDateTime := StrToDate(vaDatEmi);
                                 DmFire.CadE120Ped_OcuCODCPG.Value := vaCodCpg;
                                 DmFire.CadE120Ped_OcuSITPED.Value := vaSitPed;
                                 DmFire.CadE120Ped_OcuUSUGER.Value := StrToInt(vaUsuGer);
                                 DmFire.CadE120Ped_OcuDATGER.Value := StrToDate(vaDatGer);
                                 DmFire.CadE120Ped_OcuPEDCON.Value := 'N';
                                 DmFire.CadE120Ped_OcuDATENV.Value := StrToDate(vaDatEnv);
                                 DmFire.CadE120Ped_OcuSITCON.Value := 'E'; //E-espera, L-liberado, R-rejeitado
                                 DmFire.CadE120Ped_Ocu.Post;
                                 DmFire.IBTransacao.CommitRetaining;
                              end;//7A

                       end;//3

                   end;//1   fim dos dados gerais do pedido e120ped

               {***************************************************
                         grava os produtos dos peidos
               ****************************************************}
                 if FileExists('\\senior\ftproot\ArqPed\E120Ipd\'+ ClientArquivosvaNomArq.Value) then
               begin//8
                   DestE120Ipd := '\\senior\ftproot\ArqPed\E120Ipd\'+ClientArquivosvaNomArq.Value;
                   AssignFile(ArqE120Ipd, DestE120Ipd);
                   Reset(ArqE120Ipd);

                   While not Eof(ArqE120Ipd) do
                     begin//9
                        //limpa as variaveis
                        vaCodEmp := '';vaCodFil := '';vaNumCon := '';vaSeqIpd := '';vaTnsPro := '';vaCodPro := '';
                        vaCodDer := '';vaCodFam := '';vaCodDep := '';vaQtdPed := '';vaCodTpr := '';vaPreUni := '';
                        vaSitIpd := '';vaTotDesc := '';vaVlrOri := '';vaVlrBru := '';vaCodRep := '';

                        Readln(ArqE120Ipd, linha);
                        I := 1;
                        while I < Length(linha) do
                          begin//10
                            while linha[I] <> ';' do
                              begin
                                 vaCodEmp := vaCodEmp + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodFil := vaCodFil + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaNumCon := vaNumCon + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodRep := vaCodRep + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaSeqIpd := vaSeqIpd + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaTnsPro := vaTnsPro + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodPro := vaCodPro + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodDer := vaCodDer + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodFam := vaCodFam + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodDep := vaCodDep + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaQtdPed := vaQtdPed + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodTpr := vaCodTpr + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaPreUni := vaPreUni + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaVlrBru := vaVlrBru + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaSitIpd := vaSitIpd + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaTotDesc := vaTotDesc + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaVlrOri := vaVlrOri + linha[i];
                                 I := I + 1;
                              end;

                          end;//10

                          //grava no banco
                          DmFire.CadE120Ipd.Close;
                          DmFire.CadE120Ipd.ParamByName('codemp').Value := StrToInt(vaCodEmp);
                          DmFire.CadE120Ipd.ParamByName('codfil').Value := StrToInt(vaCodFil);
                          DmFire.CadE120Ipd.ParamByName('numcon').Value := StrToInt(vaNumCon);
                          DmFire.CadE120Ipd.ParamByName('codrep').Value := StrToInt(vaCodRep);
                          DmFire.CadE120Ipd.ParamByName('seqipd').Value := StrToInt(vaSeqIpd);
                          DmFire.CadE120Ipd.Open;
                          if DmFire.CadE120Ipd.IsEmpty then
                            begin//11
                               DmFire.CadE120Ipd.Insert;
                               DmFire.CadE120IpdCODEMP.Value := StrToInt(vaCodEmp);
                               DmFire.CadE120IpdCODFIL.Value := StrToInt(vaCodFil);
                               DmFire.CadE120IpdNUMCON.Value := StrToInt(vaNumCon);
                               DmFire.CadE120IpdCODREP.Value := StrToInt(vaCodRep);
                               DmFire.CadE120IpdSEQIPD.Value := StrToInt(vaSeqIpd);
                               DmFire.CadE120IpdNUMPED.Value := 0;
                               DmFire.CadE120IpdTNSPRO.Value := vaTnsPro;
                               DmFire.CadE120IpdCODPRO.Value := vaCodPro;
                               DmFire.CadE120IpdCODDER.Value := vaCodDer;
                               DmFire.CadE120IpdCODFAM.Value := vaCodFam;
                               DmFire.CadE120IpdCODDEP.Value := vaCodDep;
                               DmFire.CadE120IpdQTDPED.Value := StrToInt(vaQtdPed);
                               DmFire.CadE120IpdCODTPR.Value := vaCodTpr;
                               DmFire.CadE120IpdPREUNI.Value := StrToCurr(vaPreUni);
                               DmFire.CadE120IpdVLRBRU.Value := StrToCurr(vaVlrBru);
                               DmFire.CadE120IpdSITIPD.Value := vaSitIpd;
                               DmFire.CadE120IpdTOTDESC.Value := StrToCurr(vaTotDesc);
                               DmFire.CadE120IpdVLRORI.Value := StrToCurr(vaVlrOri);
                               DmFire.CadE120Ipd.Post;
                               DmFire.IBTransacao.CommitRetaining;
                            end;//11

                          //GRAVA A COPIA OCULTA
                          DmFire.CadE120Ipd_Ocu.Close;
                          DmFire.CadE120Ipd_Ocu.ParamByName('codemp').Value := StrToInt(vaCodEmp);
                          DmFire.CadE120Ipd_Ocu.ParamByName('codfil').Value := StrToInt(vaCodFil);
                          DmFire.CadE120Ipd_Ocu.ParamByName('numcon').Value := StrToInt(vaNumCon);
                          DmFire.CadE120Ipd_Ocu.ParamByName('codrep').Value := StrToInt(vaCodRep);
                          DmFire.CadE120Ipd_Ocu.ParamByName('seqipd').Value := StrToInt(vaSeqIpd);
                          DmFire.CadE120Ipd_Ocu.Open;
                          if DmFire.CadE120Ipd_Ocu.IsEmpty then
                            begin//11A
                               DmFire.CadE120Ipd_Ocu.Insert;
                               DmFire.CadE120Ipd_OcuCODEMP.Value := StrToInt(vaCodEmp);
                               DmFire.CadE120Ipd_OcuCODFIL.Value := StrToInt(vaCodFil);
                               DmFire.CadE120Ipd_OcuNUMCON.Value := StrToInt(vaNumCon);
                               DmFire.CadE120Ipd_OcuCODREP.Value := StrToInt(vaCodRep);
                               DmFire.CadE120Ipd_OcuSEQIPD.Value := StrToInt(vaSeqIpd);
                               DmFire.CadE120Ipd_OcuNUMPED.Value := 0;
                               DmFire.CadE120Ipd_OcuTNSPRO.Value := vaTnsPro;
                               DmFire.CadE120Ipd_OcuCODPRO.Value := vaCodPro;
                               DmFire.CadE120Ipd_OcuCODDER.Value := vaCodDer;
                               DmFire.CadE120Ipd_OcuCODFAM.Value := vaCodFam;
                               DmFire.CadE120Ipd_OcuCODDEP.Value := vaCodDep;
                               DmFire.CadE120Ipd_OcuQTDPED.Value := StrToInt(vaQtdPed);
                               DmFire.CadE120Ipd_OcuCODTPR.Value := vaCodTpr;
                               DmFire.CadE120Ipd_OcuPREUNI.Value := StrToCurr(vaPreUni);
                               DmFire.CadE120Ipd_OcuVLRBRU.Value := StrToCurr(vaVlrBru);
                               DmFire.CadE120Ipd_OcuSITIPD.Value := vaSitIpd;
                               DmFire.CadE120Ipd_OcuTOTDESC.Value := StrToCurr(vaTotDesc);
                               DmFire.CadE120Ipd_OcuVLRORI.Value := StrToCurr(vaVlrOri);
                               DmFire.CadE120Ipd_Ocu.Post;
                               DmFire.IBTransacao.CommitRetaining;
                            end;//11A

                       end;//9
               end;//8   fim dos produtos do pedido e120ipd


               {*******************************************
                       grava as cores dos produtos
               ********************************************}
               if FileExists('\\senior\ftproot\ArqPed\Usu120Ipd\'+ ClientArquivosvaNomArq.Value) then
               begin//12
                   DestUsu120Ipd := '\\senior\ftproot\ArqPed\Usu120Ipd\'+ClientArquivosvaNomArq.Value;
                   AssignFile(ArqUsu120Ipd, DestUsu120Ipd);
                   Reset(ArqUsu120Ipd);

                   While not Eof(ArqUsu120Ipd) do
                     begin//13
                        //limpa as variaveis
                        vaCodEmp := '';vaCodFil := '';vaNumCon := '';vaSeqIpd := '';vaSeqIte := '';vaCodRep := '';
                        vaQtdCor := '';vaTipCmb := '';vaCor001 := '';vaCor002 := '';vaCodPro := '';vaCodDer := '';

                        Readln(ArqUsu120Ipd, linha);
                        I := 1;
                        while I < Length(linha) do
                          begin//14
                            while linha[I] <> ';' do
                              begin
                                 vaCodEmp := vaCodEmp + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodFil := vaCodFil + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaNumCon := vaNumCon + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodRep := vaCodRep + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaSeqIpd := vaSeqIpd + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaSeqIte := vaSeqIte + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaQtdCor := vaQtdCor + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaTipCmb := vaTipCmb + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCor001 := vaCor001 + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCor002 := vaCor002 + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodPro := vaCodPro + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodDer := vaCodDer + linha[i];
                                 I := I + 1;
                              end;


                          end;//14

                          //grava no banco
                          DmFire.CadUsu120Ipd.Close;
                          DmFire.CadUsu120Ipd.ParamByName('codemp').Value := StrToInt(vaCodEmp);
                          DmFire.CadUsu120Ipd.ParamByName('codfil').Value := StrToInt(vaCodFil);
                          DmFire.CadUsu120Ipd.ParamByName('numcon').Value := StrToInt(vaNumCon);
                          DmFire.CadUsu120Ipd.ParamByName('codrep').Value := StrToInt(vaCodRep);
                          DmFire.CadUsu120Ipd.ParamByName('seqipd').Value := StrToInt(vaSeqIpd);
                          DmFire.CadUsu120Ipd.ParamByName('seqite').Value := StrToInt(vaSeqIte);
                          DmFire.CadUsu120Ipd.Open;
                          if DmFire.CadUsu120Ipd.IsEmpty then
                            begin//15
                               DmFire.CadUsu120Ipd.Insert;
                               DmFire.CadUsu120IpdCODEMP.Value := StrToInt(vaCodEmp);
                               DmFire.CadUsu120IpdCODFIL.Value := StrToInt(vaCodFil);
                               DmFire.CadUsu120IpdNUMCON.Value := StrToInt(vaNumCon);
                               DmFire.CadUsu120IpdCODREP.Value := StrToInt(vaCodRep);
                               DmFire.CadUsu120IpdNUMPED.Value := 0;
                               DmFire.CadUsu120IpdSEQIPD.Value := StrToInt(vaSeqIpd);
                               DmFire.CadUsu120IpdSEQITE.Value := StrToInt(vaSeqIte);
                               DmFire.CadUsu120IpdQTDCOR.Value := StrToInt(vaQtdCor);
                               DmFire.CadUsu120IpdTIPCMB.Value := StrToInt(vaTipCmb);
                               DmFire.CadUsu120IpdCOR001.Value := vaCor001;
                               DmFire.CadUsu120IpdCOR002.Value := vaCor002;
                               DmFire.CadUsu120IpdCODPRO.Value := vaCodPro;
                               DmFire.CadUsu120IpdCODDER.Value := vaCodDer;
                               DmFire.CadUsu120Ipd.Post;

                               DmFire.IBTransacao.CommitRetaining;
                            end;//15

                          //grava no banco a copia oculta
                          DmFire.CadUsu120Ipd_Ocu.Close;
                          DmFire.CadUsu120Ipd_Ocu.ParamByName('codemp').Value := StrToInt(vaCodEmp);
                          DmFire.CadUsu120Ipd_Ocu.ParamByName('codfil').Value := StrToInt(vaCodFil);
                          DmFire.CadUsu120Ipd_Ocu.ParamByName('numcon').Value := StrToInt(vaNumCon);
                          DmFire.CadUsu120Ipd_Ocu.ParamByName('codrep').Value := StrToInt(vaCodRep);
                          DmFire.CadUsu120Ipd_Ocu.ParamByName('seqipd').Value := StrToInt(vaSeqIpd);
                          DmFire.CadUsu120Ipd_Ocu.ParamByName('seqite').Value := StrToInt(vaSeqIte);
                          DmFire.CadUsu120Ipd_Ocu.Open;
                          if DmFire.CadUsu120Ipd_Ocu.IsEmpty then
                            begin//15A
                               DmFire.CadUsu120Ipd_Ocu.Insert;
                               DmFire.CadUsu120Ipd_OcuCODEMP.Value := StrToInt(vaCodEmp);
                               DmFire.CadUsu120Ipd_OcuCODFIL.Value := StrToInt(vaCodFil);
                               DmFire.CadUsu120Ipd_OcuNUMCON.Value := StrToInt(vaNumCon);
                               DmFire.CadUsu120Ipd_OcuCODREP.Value := StrToInt(vaCodRep);
                               DmFire.CadUsu120Ipd_OcuNUMPED.Value := 0;
                               DmFire.CadUsu120Ipd_OcuSEQIPD.Value := StrToInt(vaSeqIpd);
                               DmFire.CadUsu120Ipd_OcuSEQITE.Value := StrToInt(vaSeqIte);
                               DmFire.CadUsu120Ipd_OcuQTDCOR.Value := StrToInt(vaQtdCor);
                               DmFire.CadUsu120Ipd_OcuTIPCMB.Value := StrToInt(vaTipCmb);
                               DmFire.CadUsu120Ipd_OcuCOR001.Value := vaCor001;
                               DmFire.CadUsu120Ipd_OcuCOR002.Value := vaCor002;
                               DmFire.CadUsu120Ipd_OcuCODPRO.Value := vaCodPro;
                               DmFire.CadUsu120Ipd_OcuCODDER.Value := vaCodDer;
                               DmFire.CadUsu120Ipd_Ocu.Post;

                               DmFire.IBTransacao.CommitRetaining;
                            end;//15A

                       end;//13
               end;//12   fim das cores dos produtos do pedido e120ipd

               {******************************************************
                           GRAVA AS OBSERVAÇÕES DO PEDIDO
               *******************************************************}
                if FileExists('\\senior\ftproot\ArqPed\E120Obs\'+ ClientArquivosvaNomArq.Value) then
               begin//16
                   DestE120Obs := '\\senior\ftproot\ArqPed\E120Obs\'+ ClientArquivosvaNomArq.Value;
                   AssignFile(ArqE120Obs, DestE120Obs);
                   Reset(ArqE120Obs);

                   While not Eof(ArqE120Obs) do
                     begin//17
                        //limpa as variaveis
                        vaCodEmp := '';vaCodFil := '';vaNumCon := ''; vaSeqObs := '';vaCodRep := '';
                        vaObsPed := '';vaSitObs := '';vaObsUsu := '';vaObsDat := '';


                        Readln(ArqE120Obs, linha);
                        I := 1;
                        while I < Length(linha) do
                          begin//18
                            while linha[I] <> ';' do
                              begin
                                 vaCodEmp := vaCodEmp + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodFil := vaCodFil + linha[i];
                                 I := I + 1;
                              end;
                              I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaNumCon := vaNumCon + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaCodRep := vaCodRep + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaSeqObs := vaSeqObs + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaObsPed := vaObsPed + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaSitObs := vaSitObs + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaObsUsu := vaObsUsu + linha[i];
                                 I := I + 1;
                              end;
                            I := I + 1;
                            while linha[I] <> ';' do
                              begin
                                 vaObsDat := vaObsDat + linha[i];
                                 I := I + 1;
                              end;

                          end;//18

                          //grava no banco
                          DmFire.CadE120Obs.Close;
                          DmFire.CadE120Obs.ParamByName('codemp').Value := StrToInt(vaCodEmp);
                          DmFire.CadE120Obs.ParamByName('codfil').Value := StrToInt(vaCodFil);
                          DmFire.CadE120Obs.ParamByName('numcon').Value := StrToInt(vaNumCon);
                          DmFire.CadE120Obs.ParamByName('codrep').Value := StrToInt(vaCodRep);
                          DmFire.CadE120Obs.ParamByName('seqobs').Value := StrToInt(vaSeqObs);
                          DmFire.CadE120Obs.Open;
                          if DmFire.CadE120Obs.IsEmpty then
                            begin//19
                               DmFire.CadE120Obs.Insert;
                               DmFire.CadE120ObsCODEMP.Value := StrToInt(vaCodEmp);
                               DmFire.CadE120ObsCODFIL.Value := StrToInt(vaCodFil);
                               DmFire.CadE120ObsNUMCON.Value := StrToInt(vaNumCon);
                               DmFire.CadE120ObsCODREP.Value := StrToInt(vaCodRep);
                               DmFire.CadE120ObsNUMPED.Value := 0;
                               DmFire.CadE120ObsSEQOBS.Value := StrToInt(vaSeqObs);
                               DmFire.CadE120ObsOBSPED.Value := vaObsPed;
                               DmFire.CadE120ObsSITOBS.Value := vaSitObs;
                               DmFire.CadE120ObsOBSUSU.AsInteger := StrToInt(vaObsUsu);
                               DmFire.CadE120ObsOBSDAT.Value := StrToDate(vaObsDat);

                               DmFire.CadE120Obs.Post;

                               DmFire.IBTransacao.CommitRetaining;
                            end;//19

                          //grava no banco a copia oculta
                          DmFire.CadE120Obs_Ocu.Close;
                          DmFire.CadE120Obs_Ocu.ParamByName('codemp').Value := StrToInt(vaCodEmp);
                          DmFire.CadE120Obs_Ocu.ParamByName('codfil').Value := StrToInt(vaCodFil);
                          DmFire.CadE120Obs_Ocu.ParamByName('numcon').Value := StrToInt(vaNumCon);
                          DmFire.CadE120Obs_Ocu.ParamByName('codrep').Value := StrToInt(vaCodRep);
                          DmFire.CadE120Obs_Ocu.ParamByName('seqobs').Value := StrToInt(vaSeqObs);
                          DmFire.CadE120Obs_Ocu.Open;
                          if DmFire.CadE120Obs_Ocu.IsEmpty then
                            begin//19A
                               DmFire.CadE120Obs_Ocu.Insert;
                               DmFire.CadE120Obs_OcuCODEMP.Value := StrToInt(vaCodEmp);
                               DmFire.CadE120Obs_OcuCODFIL.Value := StrToInt(vaCodFil);
                               DmFire.CadE120Obs_OcuNUMCON.Value := StrToInt(vaNumCon);
                               DmFire.CadE120Obs_OcuCODREP.Value := StrToInt(vaCodRep);
                               DmFire.CadE120Obs_OcuNUMPED.Value := 0;
                               DmFire.CadE120Obs_OcuSEQOBS.Value := StrToInt(vaSeqObs);
                               DmFire.CadE120Obs_OcuOBSPED.Value := vaObsPed;
                               DmFire.CadE120Obs_OcuSITOBS.Value := vaSitObs;
                               DmFire.CadE120Obs_OcuOBSUSU.AsInteger := StrToInt(vaObsUsu);
                               DmFire.CadE120Obs_OcuOBSDAT.Value := StrToDate(vaObsDat);

                               DmFire.CadE120Obs_Ocu.Post;

                               DmFire.IBTransacao.CommitRetaining;
                            end;//19A
                       end;//17
               end;//16   fim das observações do pedido e120obs

                //apaga os arquivos
                if FileExists(DestE120Ped) then
                   begin
                     CloseFile(ArqE120Ped);
                     DeleteFile(DestE120Ped);
                   end;
                if FileExists(DestE120Ipd) then
                   begin
                     CloseFile(ArqE120Ipd);
                     DeleteFile(DestE120Ipd);
                   end;
                if FileExists(DestUsu120Ipd) then
                   begin
                     CloseFile(ArqUsu120Ipd);
                     DeleteFile(DestUsu120Ipd);
                   end;
                if FileExists(DestE120Obs) then
                   begin
                     CloseFile(ArqE120Obs);
                     DeleteFile(DestE120Obs);
                   end;
               ClientArquivos.Next;
           end;//100

         //conta os arquivos e grava o nome na tabela temporaria para serem processados
         Cont := 0;
         if FindFirst('\\senior\ftproot\ArqPed\E120Ped\*.txt*',faAnyFile,SR) = 0 then
            begin
              repeat
                 ClientArquivos.Open;
                 ClientArquivos.Insert;
                 ClientArquivosvaNomArq.Value := SR.Name;
                 ClientArquivos.Post;
                 inc(cont);
              until FindNext(SR) <> 0;
              FindClose(SR);
            end;


         //atualiza a consulta dos pedidos que estao esperando confirmação
         DmFire.ConsE120PedChegou.Close;
         DmFire.ConsE120PedChegou.Open;

         DBGrid2.DataSource := DsLivre;
         vnTotal := 0;  //calcula o total de todos os pedidos
         vnQtdPed := 0;
         DmFire.ConsE120PedChegou.First;
         while not DmFire.ConsE120PedChegou.eof do
            begin
              vnQtdPed := vnQtdPed + 1;
              vnTotal := vnTotal + DmFire.ConsE120PedChegouTOTBRU.Value;
              DmFire.ConsE120PedChegou.Next;
            end;
         DmFire.ConsE120PedChegou.First;
         EdTotal.Value := vnTotal;
         EdQtdPed.Value := vnQtdPed;
         DBGrid2.DataSource := DsDmConsE120PedChegou;
         Screen.Cursor := Cursor;
   end;//01
end;

procedure TFProcessaPedidosSysRep.btn1Click(Sender: TObject);
var
vaMensagem, vaMsgSuspenso,Hora : string;
    vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;
begin

    xPostQuery := TStringList.Create;

    Dm2.ADOUsuT000sis.Close;
    Dm2.ADOUsuT000sis.Open;
    vA_URL := Dm2.ADOUsuT000sisUSU_URLSRV.Value;
    vA_BasQry := Dm2.ADOUsuT000sisUSU_BASQRY.Value;

    xPostQuery.Add('ACAO=EXESENHA');
    xPostQuery.Add('&NOMUSU=sapienssid');
    xPostQuery.Add('&SENUSU=sapienssid');

    LStatus.Caption := 'Conectando ao Sid..';
    Application.ProcessMessages;
    // Executar ação de autenticação no Sapiens SID
    xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

    // Verificar se a ação executou com sucesso
    if (StrToIntDef(Copy(xRetorno, 1, 5), 0)) = 0 then
        raise Exception.Create('ERRO - Conexão SID não foi estabelecida: ' + xRetorno)
    else
        vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;

    LStatus.Caption := 'kkkkkkkkk..';
    Application.ProcessMessages;
    //loga na filial
    xPostQuery.Clear;
    xPostQuery.Add('ACAO=SID.Srv.Regra');
    xPostQuery.Add('&NumReg='+'991');
    xPostQuery.Add('&veaAcao='+'I');
    xPostQuery.Add('&veaCodCli='+'1');
    xPostQuery.Add('&veaCodRep='+'1');
    xPostQuery.Add('&veaCodCpg='+'012');
    xPostQuery.Add('&veaTnsPro='+'90100');
    xPostQuery.Add('&veaCodPro='+'010010029');
    xPostQuery.Add('&veaCodDer='+'23');

    xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

    // Verificar se a ação executou com sucesso
    if (StrToIntDef(Copy(xRetorno, 1, 5), 0)) = 0 then
        raise Exception.Create('ERRO: ' + xRetorno)
end;

procedure TFProcessaPedidosSysRep.btnZerarClick(Sender: TObject);
begin
if DmFire.ConsE120PedChegouNUMPED.Value <> 9999 then
    begin
      if Application.MessageBox('Deseja realmente zerar o pedido','Aviso',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2)= mrYes  then
         begin
           DmOra.ConsSql.Close;
           DmOra.ConsSql.SQL.Clear;
           DmOra.ConsSql.SQL.Add('DELETE FROM E120RAT WHERE CODEMP = :CODEMP AND');
           DmOra.ConsSql.SQL.Add('                          NUMPED = :NUMPED');
           DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := 1;
           DmOra.ConsSql.Parameters.ParamByName('NUMPED').Value := DmFire.ConsE120PedChegouNUMPED.Value;
           DmOra.ConsSql.ExecSQL;

           DmOra.ConsSql.Close;
           DmOra.ConsSql.SQL.Clear;
           DmOra.ConsSql.SQL.Add('DELETE FROM E120OBS WHERE CODEMP = :CODEMP AND');
           DmOra.ConsSql.SQL.Add('                          NUMPED = :NUMPED');
           DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := 1;
           DmOra.ConsSql.Parameters.ParamByName('NUMPED').Value := DmFire.ConsE120PedChegouNUMPED.Value;
           DmOra.ConsSql.ExecSQL;

           DmOra.ConsSql.Close;
           DmOra.ConsSql.SQL.Clear;
           DmOra.ConsSql.SQL.Add('DELETE FROM USU_T120IPD WHERE USU_CODEMP = :CODEMP AND');
           DmOra.ConsSql.SQL.Add('                              USU_NUMPED = :NUMPED');
           DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := 1;
           DmOra.ConsSql.Parameters.ParamByName('NUMPED').Value := DmFire.ConsE120PedChegouNUMPED.Value;
           DmOra.ConsSql.ExecSQL;

           DmOra.ConsSql.Close;
           DmOra.ConsSql.SQL.Clear;
           DmOra.ConsSql.SQL.Add('DELETE FROM E120IPD WHERE CODEMP = :CODEMP AND');
           DmOra.ConsSql.SQL.Add('                          NUMPED = :NUMPED');
           DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := 1;
           DmOra.ConsSql.Parameters.ParamByName('NUMPED').Value := DmFire.ConsE120PedChegouNUMPED.Value;
           DmOra.ConsSql.ExecSQL;

           DmOra.ConsSql.Close;
           DmOra.ConsSql.SQL.Clear;
           DmOra.ConsSql.SQL.Add('DELETE FROM E120PED WHERE CODEMP = :CODEMP AND');
           DmOra.ConsSql.SQL.Add('                          NUMPED = :NUMPED');
           DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := 1;
           DmOra.ConsSql.Parameters.ParamByName('NUMPED').Value := DmFire.ConsE120PedChegouNUMPED.Value;
           DmOra.ConsSql.ExecSQL;

           DmFire.ConsSql.Close;
           DmFire.ConsSql.SQL.Clear;
           DmFire.ConsSql.SQL.Add('UPDATE E120OBS SET NUMPED = 0 WHERE');
           DmFire.ConsSql.SQL.Add(' CODEMP = 1 AND');
           DmFire.ConsSql.SQL.Add(' NUMCON = :NUMCON AND');
           DmFire.ConsSql.SQL.Add(' CODREP = :CODREP');
           DmFire.ConsSql.ParamByName('NUMCON').Value := DmFire.ConsE120PedChegouNUMCON.Value;
           DmFire.ConsSql.ParamByName('CODREP').Value := DmFire.ConsE120PedChegouCODREP.Value;
           DmFire.ConsSql.ExecSQL;
           DmFire.IBTransacao.CommitRetaining;

           DmFire.ConsSql.Close;
           DmFire.ConsSql.SQL.Clear;
           DmFire.ConsSql.SQL.Add('UPDATE USU120IPD SET NUMPED = 0 WHERE');
           DmFire.ConsSql.SQL.Add(' CODEMP = 1 AND');
           DmFire.ConsSql.SQL.Add(' NUMCON = :NUMCON AND');
           DmFire.ConsSql.SQL.Add(' CODREP = :CODREP');
           DmFire.ConsSql.ParamByName('NUMCON').Value := DmFire.ConsE120PedChegouNUMCON.Value;
           DmFire.ConsSql.ParamByName('CODREP').Value := DmFire.ConsE120PedChegouCODREP.Value;
           DmFire.ConsSql.ExecSQL;
           DmFire.IBTransacao.CommitRetaining;

           DmFire.ConsSql.Close;
           DmFire.ConsSql.SQL.Clear;
           DmFire.ConsSql.SQL.Add('UPDATE E120IPD SET NUMPED = 0 WHERE');
           DmFire.ConsSql.SQL.Add(' CODEMP = 1 AND');
           DmFire.ConsSql.SQL.Add(' NUMCON = :NUMCON AND');
           DmFire.ConsSql.SQL.Add(' CODREP = :CODREP');
           DmFire.ConsSql.ParamByName('NUMCON').Value := DmFire.ConsE120PedChegouNUMCON.Value;
           DmFire.ConsSql.ParamByName('CODREP').Value := DmFire.ConsE120PedChegouCODREP.Value;
           DmFire.ConsSql.ExecSQL;
           DmFire.IBTransacao.CommitRetaining;

           DmFire.ConsSql.Close;
           DmFire.ConsSql.SQL.Clear;
           DmFire.ConsSql.SQL.Add('UPDATE E120PED SET NUMPED = 0, SITCON = ''E'' ');
           DmFire.ConsSql.SQL.Add(' WHERE');
           DmFire.ConsSql.SQL.Add(' CODEMP = 1 AND');
           DmFire.ConsSql.SQL.Add(' NUMCON = :NUMCON AND');
           DmFire.ConsSql.SQL.Add(' CODREP = :CODREP');
           DmFire.ConsSql.ParamByName('NUMCON').Value := DmFire.ConsE120PedChegouNUMCON.Value;
           DmFire.ConsSql.ParamByName('CODREP').Value := DmFire.ConsE120PedChegouCODREP.Value;
           DmFire.ConsSql.ExecSQL;
           DmFire.IBTransacao.CommitRetaining;
           Close;
         end;
    end;

end;

procedure TFProcessaPedidosSysRep.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.FieldName = 'Imagem' then
    begin
        DBGrid2.Canvas.FillRect(Rect);
        // Desenha o Quadrado
      //  ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,0);

        // Desenha o check sobre o quadrado
        if (DmFire.ConsE120PedChegouSITCON.Value = 'L') and (DmFire.ConsE120PedChegouSITPED.Value = '1') then
           begin
            ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,5);
           end
        else
        if (DmFire.ConsE120PedChegouSITCON.Value = 'L') and (DmFire.ConsE120PedChegouSITPED.Value = '3') then
           begin
            ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,6);
           end
        else
        if DmFire.ConsE120PedChegouSITCON.Value = 'R' then
           begin
            ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,4);
           end;
    end;
end;

procedure TFProcessaPedidosSysRep.FormShow(Sender: TObject);
var Cont : integer;
    SR : TSearchRec;
    vnTotal : double;
    vnQtdPed : integer;
begin
          

         //atualiza a consulta dos pedidos que estao esperando confirmação
         DmFire.vaAfterScroll := 'N';
         DmFire.ConsE120PedChegou.Close;
         DmFire.ConsE120PedChegou.Open;

         DBGrid2.DataSource := DsLivre;
         vnTotal := 0;  //calcula o total de todos os pedidos
         vnQtdPed := 0;
         DmFire.ConsE120PedChegou.First;
         while not DmFire.ConsE120PedChegou.eof do
            begin
              vnQtdPed := vnQtdPed + 1;
              vnTotal := vnTotal + DmFire.ConsE120PedChegouTOTBRU.Value;
              DmFire.ConsE120PedChegou.Next;
            end;
         DmFire.vaAfterScroll := 'S';
         DmFire.ConsE120PedChegou.First;

         EdTotal.Value := vnTotal;
         EdQtdPed.Value := vnQtdPed;
         DBGrid2.DataSource := DsDmConsE120PedChegou;


end;

procedure TFProcessaPedidosSysRep.PAlertaClick(Sender: TObject);
begin
if not DmOra.ConsUsu_E085Mac.IsEmpty then
   begin
      FVisuAlertaClientes := TFVisuAlertaClientes.Create(Self);
      FVisuAlertaClientes.ShowModal;
      FreeAndNil(FVisuAlertaClientes);
   end;
end;

procedure TFProcessaPedidosSysRep.PObsClick(Sender: TObject);
begin
  if not DmFire.ConsE120ObsChegou.IsEmpty then
     begin
        FVisuObsPedido := TFVisuObsPedido.Create(Self);
        FVisuObsPedido.ShowModal;
        FreeAndNil(FVisuObsPedido);

     end;
end;

end.
