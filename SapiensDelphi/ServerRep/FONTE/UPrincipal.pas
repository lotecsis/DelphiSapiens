unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, RibbonLunaStyleActnCtrls, Ribbon,
  PlatformDefaultStyleActnCtrls, ActnList, ActnMan, ToolWin, ActnCtrls, Mask,
  rxToolEdit, DateUtils, AppEvnts;

type
  TFPrincipal = class(TForm)
    TGeraAtuClientes: TTimer;
    LStatus: TLabel;
    BIniciaServ: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    ActionManager1: TActionManager;
    AcCadUsuarios: TAction;
    TProcessaPededidos: TTimer;
    MemoStatus: TMemo;
    BAtualizaPedidos: TBitBtn;
    MemoStatusPed: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    btnGerarBase3: TBitBtn;
    edtData: TDateEdit;
    lbl1: TLabel;
    chkClientes: TCheckBox;
    chkCondCpg: TCheckBox;
    chkTabelaPreco: TCheckBox;
    chkTitulos: TCheckBox;
    chkProdutos: TCheckBox;
    lblTotalTitulos: TLabel;
    lblTotalClientes: TLabel;
    lblTotalCondCpg: TLabel;
    lblTotalTabPreco: TLabel;
    lblTotalLogLigacaoProdutosCores: TLabel;
    lblTotalProdutos: TLabel;
    lblTotalDerivacoes: TLabel;
    lblTotalCores: TLabel;
    lblTotalLigProdutosCores: TLabel;
    btnGerarPedidos3: TBitBtn;
    ApplicationEvents1: TApplicationEvents;
    tmrBase: TTimer;
    tmrPedidos: TTimer;
    Label5: TLabel;
    btnGerarBase: TBitBtn;
    lblTotalCondCpgLig: TLabel;
    btnGerarPedidos: TBitBtn;
    procedure TGeraAtuClientesTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BIniciaServClick(Sender: TObject);
    procedure BParaServClick(Sender: TObject);
    procedure AcCadUsuariosExecute(Sender: TObject);
    procedure TProcessaPededidosTimer(Sender: TObject);
    procedure BAtualizaPedidosClick(Sender: TObject);
    procedure btnGerarBase3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGerarPedidos3Click(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure tmrBaseTimer(Sender: TObject);
    procedure tmrPedidosTimer(Sender: TObject);
    procedure btnGerarBaseClick(Sender: TObject);
    procedure btnGerarPedidosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UDmFire, UDmOra, UCadUsuarios, UDmFireRep;

{$R *.dfm}

procedure TFPrincipal.AcCadUsuariosExecute(Sender: TObject);
begin
  FCadUsuarios := TFCadUsuarios.Create(Self);
  FCadUsuarios.ShowModal;
  FreeAndNil(FCadUsuarios);
end;

procedure TFPrincipal.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
var vnHorM,vnHorT : TTime;
    vnHDados1,vnHDados2,vnHDados3,vnHDados4,vnHDados5 : TTime;
    vnHPedidos1,vnHPedidos2,vnHPedidos3,vnHPedidos4 : TTime;
begin

   vnHDados1 := StrToTime('06:00');
   vnHDados2 := StrToTime('09:00');
   vnHDados3 := StrToTime('11:30');
   vnHDados4 := StrToTime('15:30');
   vnHDados5 := StrToTime('16:44');

   vnHPedidos1 := StrToTime('16:23');
   vnHPedidos2 := StrToTime('16:23');
   vnHPedidos3 := StrToTime('16:23');
   vnHPedidos4 := StrToTime('16:23');


    if (TimeToStr(vnHDados1) = TimeToStr(Time)) or
       (TimeToStr(vnHDados2) = TimeToStr(Time)) or
       (TimeToStr(vnHDados3) = TimeToStr(Time)) or
       (TimeToStr(vnHDados4) = TimeToStr(Time)) or
       (TimeToStr(vnHDados5) = TimeToStr(Time)) then
       begin
          btnGerarBase.Click;

       end;

    if (TimeToStr(vnHPedidos1) = TimeToStr(Time)) or
       (TimeToStr(vnHPedidos2) = TimeToStr(Time)) or
       (TimeToStr(vnHPedidos3) = TimeToStr(Time)) or
       (TimeToStr(vnHPedidos4) = TimeToStr(Time)) then
       begin
          Application.MessageBox('O sistema será finalizado para a troca de usuário', 'Atenção', MB_ICONWARNING+MB_OK);
       end;



end;

procedure TFPrincipal.BAtualizaPedidosClick(Sender: TObject);
begin
if tmrPedidos.Enabled = false then
     begin

       tmrPedidos.Enabled := true;
       BAtualizaPedidos.Caption := 'Parar Serviço';
       tmrPedidosTimer(Sender);
     end
   else
     begin
       tmrPedidos.Enabled := false;
       BAtualizaPedidos.Caption := 'Iniciar Serviço';
     end;
end;

procedure TFPrincipal.BIniciaServClick(Sender: TObject);
begin
  if tmrBase.Enabled = false then
     begin
       tmrBase.Enabled := true;
       BIniciaServ.Caption := 'Parar Serviço';
       tmrBaseTimer(Sender);
     end
   else
     begin
       tmrBase.Enabled := false;
       BIniciaServ.Caption := 'Iniciar Serviço';
     end;



end;

procedure TFPrincipal.BParaServClick(Sender: TObject);
begin
  TGeraAtuClientes.Enabled := false;
end;

procedure TFPrincipal.btnGerarBaseClick(Sender: TObject);
var vnQtdTitulos, vnQtdClientes, vnQtdCondCpg, vnQtdTabPreco, vnQtdLogLigProdCor,
    vnQtdProdutos, vnQtdDerivacoes, vnQtdCores, vnQtdLigProdCor : Integer;
begin
    MemoStatus.Lines.Clear;
    MemoStatus.Lines.Add('...');

    btnGerarPedidos.Enabled := False;
    btnGerarBase.Enabled := False;
    lblTotalTitulos.Caption := '';
    lblTotalClientes.Caption := '';
    lblTotalCondCpg.Caption := '';
    lblTotalTabPreco.Caption := '';
    lblTotalLogLigacaoProdutosCores.Caption := '';
    lblTotalProdutos.Caption := '';
    lblTotalDerivacoes.Caption := '';
    lblTotalCores.Caption := '';
    lblTotalLigProdutosCores.Caption := '';

    //****************************
    //gera atualização dos clientes
    //******************************
    if chkClientes.Checked then
       begin
          MemoStatus.Lines.Add('Gerando atualização de clientes');
          DmOra.ConsE085Cli.Close;
          DmOra.ConsE085Cli.SQL.Clear;
          DmOra.ConsE085Cli.SQL.Add('select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.insest,e085cli.cgccpf,e085cli.endcli,e085cli.nencli,');
          DmOra.ConsE085Cli.SQL.Add('e085cli.cplend,e085cli.cepcli,e085cli.baicli,e085cli.cidcli,e085cli.sigufs,e085cli.sitcli,e085cli.foncli,e085cli.datcad,e085cli.datatu,');
          DmOra.ConsE085Cli.SQL.Add('e085hcl.codemp,e085hcl.codfil,e085hcl.codrep,e085hcl.saldup,e085hcl.datmac,e085hcl.vlrmac,e085hcl.datupe,e085hcl.vlrupe,');
          DmOra.ConsE085Cli.SQL.Add('e085hcl.datufa,e085hcl.vlrufa,e085hcl.datupg,e085hcl.vlrupg,e085hcl.qtdpgt,e085hcl.datmfa,e085hcl.vlrmfa,e085hcl.datatr,');
          DmOra.ConsE085Cli.SQL.Add('e085hcl.vlratr,e085hcl.maiatr,e085hcl.ultnfv');
          DmOra.ConsE085Cli.SQL.Add(' from e085cli');
          DmOra.ConsE085Cli.SQL.Add(' inner join e085hcl on e085hcl.codcli = e085cli.codcli');
          DmOra.ConsE085Cli.SQL.Add(' where e085hcl.codemp = 1 and');
          DmOra.ConsE085Cli.SQL.Add(' e085hcl.codfil = 1 and');
          DmOra.ConsE085Cli.SQL.Add(' ((e085cli.datcad >= :datcad) or (e085cli.datatu >= :datatu))');
          DmOra.ConsE085Cli.SQL.Add(' order by codcli');
          DmOra.ConsE085Cli.Parameters.ParamByName('datcad').Value := edtData.Date;
          DmOra.ConsE085Cli.Parameters.ParamByName('datatu').Value := edtData.Date;
          DmOra.ConsE085Cli.Open;
          DmOra.ConsE085Cli.Prior;
          DmOra.ConsE085Cli.First;
          vnQtdClientes := DmOra.ConsE085Cli.RecordCount;

          while not DmOra.ConsE085Cli.Eof do
            begin
              lblTotalClientes.Caption := IntToStr(vnQtdClientes);
              DmFireRep.CadE085Cli.Close;
              DmFireRep.CadE085Cli.ParamByName('codcli').Value := DmOra.ConsE085CliCODCLI.Value;
              DmFireRep.CadE085Cli.Open;
              if DmFireRep.CadE085Cli.IsEmpty then
                 begin
                    DmFireRep.CadE085Cli.Insert;
                    DmFireRep.CadE085CliCODCLI.Value := DmOra.ConsE085CliCODCLI.Value;
                    DmFireRep.CadE085CliNOMCLI.Value := DmOra.ConsE085CliNOMCLI.Value;
                    DmFireRep.CadE085CliAPECLI.Value := DmOra.ConsE085CliAPECLI.Value;
                    DmFireRep.CadE085CliINSEST.Value := DmOra.ConsE085CliINSEST.Value;
                    DmFireRep.CadE085CliENDCLI.Value := DmOra.ConsE085CliENDCLI.Value;
                    DmFireRep.CadE085CliNENCLI.Value := DmOra.ConsE085CliNENCLI.Value;
                    DmFireRep.CadE085CliCPLEND.Value := DmOra.ConsE085CliCPLEND.Value;
                    DmFireRep.CadE085CliCEPCLI.Value := DmOra.ConsE085CliCEPCLI.AsString;
                    DmFireRep.CadE085CliBAICLI.Value := DmOra.ConsE085CliBAICLI.Value;
                    DmFireRep.CadE085CliCIDCLI.Value := DmOra.ConsE085CliCIDCLI.Value;
                    DmFireRep.CadE085CliSIGUFS.Value := DmOra.ConsE085CliSIGUFS.Value;
                    DmFireRep.CadE085CliSITCLI.Value := DmOra.ConsE085CliSITCLI.Value;
                    DmFireRep.CadE085CliCGCCPF.Value := DmOra.ConsE085CliCGCCPF.AsString;
                    DmFireRep.CadE085CliFONCLI.Value := DmOra.ConsE085CliFONCLI.Value;
                    DmFireRep.CadE085CliCODREP.Value := DmOra.ConsE085CliCODREP.Value;
                    DmFireRep.CadE085Cli.Post;
                    DmFireRep.ibtTransacao.CommitRetaining;

                 end
              else
                 begin
                    DmFireRep.CadE085Cli.Edit;
                    DmFireRep.CadE085CliNOMCLI.Value := DmOra.ConsE085CliNOMCLI.Value;
                    DmFireRep.CadE085CliAPECLI.Value := DmOra.ConsE085CliAPECLI.Value;
                    DmFireRep.CadE085CliINSEST.Value := DmOra.ConsE085CliINSEST.Value;
                    DmFireRep.CadE085CliENDCLI.Value := DmOra.ConsE085CliENDCLI.Value;
                    DmFireRep.CadE085CliNENCLI.Value := DmOra.ConsE085CliNENCLI.Value;
                    DmFireRep.CadE085CliCPLEND.Value := DmOra.ConsE085CliCPLEND.Value;
                    DmFireRep.CadE085CliCEPCLI.Value := DmOra.ConsE085CliCEPCLI.AsString;
                    DmFireRep.CadE085CliBAICLI.Value := DmOra.ConsE085CliBAICLI.Value;
                    DmFireRep.CadE085CliCIDCLI.Value := DmOra.ConsE085CliCIDCLI.Value;
                    DmFireRep.CadE085CliSIGUFS.Value := DmOra.ConsE085CliSIGUFS.Value;
                    DmFireRep.CadE085CliSITCLI.Value := DmOra.ConsE085CliSITCLI.Value;
                    DmFireRep.CadE085CliCGCCPF.Value := DmOra.ConsE085CliCGCCPF.AsString;
                    DmFireRep.CadE085CliFONCLI.Value := DmOra.ConsE085CliFONCLI.Value;
                    DmFireRep.CadE085CliCODREP.Value := DmOra.ConsE085CliCODREP.Value;
                    DmFireRep.CadE085Cli.Post;
                    DmFireRep.ibtTransacao.CommitRetaining;

                 end;

              DmFireRep.CadE085Hcl.Close;
              DmFireRep.CadE085Hcl.ParamByName('codcli').Value := DmOra.ConsE085CliCODCLI.Value;
              DmFireRep.CadE085Hcl.ParamByName('codemp').Value := DmOra.ConsE085CliCODEMP.Value;
              DmFireRep.CadE085Hcl.ParamByName('codfil').Value := DmOra.ConsE085CliCODFIL.Value;
              DmFireRep.CadE085Hcl.Open;
              if DmFireRep.CadE085Hcl.IsEmpty then
                 begin
                   DmFireRep.CadE085Hcl.Insert;
                   DmFireRep.CadE085HclCODCLI.Value := DmOra.ConsE085CliCODCLI.Value;
                   DmFireRep.CadE085HclCODEMP.Value := DmOra.ConsE085CliCODEMP.Value;
                   DmFireRep.CadE085HclCODFIL.Value := DmOra.ConsE085CliCODFIL.Value;
                   DmFireRep.CadE085HclCODREP.Value := DmOra.ConsE085CliCODREP.Value;
                   DmFireRep.CadE085HclSALDUP.Value := DmOra.ConsE085CliSALDUP.Value;
                   DmFireRep.CadE085HclDATMAC.Value := DmOra.ConsE085CliDATMAC.Value;
                   DmFireRep.CadE085HclVLRMAC.Value := DmOra.ConsE085CliVLRMAC.Value;
                   DmFireRep.CadE085HclDATUPE.Value := DmOra.ConsE085CliDATUPE.Value;
                   DmFireRep.CadE085HclVLRUPE.Value := DmOra.ConsE085CliVLRUPE.Value;
                   DmFireRep.CadE085HclDATUFA.Value := DmOra.ConsE085CliDATUFA.Value;
                   DmFireRep.CadE085HclVLRUFA.Value := DmOra.ConsE085CliVLRUFA.Value;
                   DmFireRep.CadE085HclDATUPG.Value := DmOra.ConsE085CliDATUPG.Value;
                   DmFireRep.CadE085HclVLRUPG.Value := DmOra.ConsE085CliVLRUPG.Value;
                   DmFireRep.CadE085HclQTDPGT.Value := DmOra.ConsE085CliQTDPGT.Value;
                   DmFireRep.CadE085HclDATMFA.Value := DmOra.ConsE085CliDATMFA.Value;
                   DmFireRep.CadE085HclVLRMFA.Value := DmOra.ConsE085CliVLRMFA.Value;
                   DmFireRep.CadE085HclDATATR.Value := DmOra.ConsE085CliDATATR.Value;
                   DmFireRep.CadE085HclVLRATR.Value := DmOra.ConsE085CliVLRATR.Value;
                   DmFireRep.CadE085HclMAIATR.Value := DmOra.ConsE085CliMAIATR.Value;
                   DmFireRep.CadE085HclULTNFV.Value := DmOra.ConsE085CliULTNFV.Value;
                   DmFireRep.CadE085Hcl.Post;
                 end
              else
                 begin
                   DmFireRep.CadE085Hcl.Edit;
                   DmFireRep.CadE085HclCODREP.Value := DmOra.ConsE085CliCODREP.Value;
                   DmFireRep.CadE085HclSALDUP.Value := DmOra.ConsE085CliSALDUP.Value;
                   DmFireRep.CadE085HclDATMAC.Value := DmOra.ConsE085CliDATMAC.Value;
                   DmFireRep.CadE085HclVLRMAC.Value := DmOra.ConsE085CliVLRMAC.Value;
                   DmFireRep.CadE085HclDATUPE.Value := DmOra.ConsE085CliDATUPE.Value;
                   DmFireRep.CadE085HclVLRUPE.Value := DmOra.ConsE085CliVLRUPE.Value;
                   DmFireRep.CadE085HclDATUFA.Value := DmOra.ConsE085CliDATUFA.Value;
                   DmFireRep.CadE085HclVLRUFA.Value := DmOra.ConsE085CliVLRUFA.Value;
                   DmFireRep.CadE085HclDATUPG.Value := DmOra.ConsE085CliDATUPG.Value;
                   DmFireRep.CadE085HclVLRUPG.Value := DmOra.ConsE085CliVLRUPG.Value;
                   DmFireRep.CadE085HclQTDPGT.Value := DmOra.ConsE085CliQTDPGT.Value;
                   DmFireRep.CadE085HclDATMFA.Value := DmOra.ConsE085CliDATMFA.Value;
                   DmFireRep.CadE085HclVLRMFA.Value := DmOra.ConsE085CliVLRMFA.Value;
                   DmFireRep.CadE085HclDATATR.Value := DmOra.ConsE085CliDATATR.Value;
                   DmFireRep.CadE085HclVLRATR.Value := DmOra.ConsE085CliVLRATR.Value;
                   DmFireRep.CadE085HclMAIATR.Value := DmOra.ConsE085CliMAIATR.Value;
                   DmFireRep.CadE085HclULTNFV.Value := DmOra.ConsE085CliULTNFV.Value;
                   DmFireRep.CadE085Hcl.Post;

                 end;
              vnQtdClientes := vnQtdClientes - 1;
              lblTotalClientes.Caption := IntToStr(vnQtdClientes);
              Application.ProcessMessages;
              DmOra.ConsE085Cli.Next;

            end;
             DmFireRep.ibtTransacao.CommitRetaining;
       end;
       //fim da geraçao para cliantes
      Application.ProcessMessages;

      //*******************************
     //atualiza condições de pagamento
     //*******************************
     if chkCondCpg.Checked then
        begin
           MemoStatus.Lines.Add('Gerando atualização condições de pagamento...');
           DmOra.ConsE028cpg_.Close;
           DmOra.ConsE028cpg_.Parameters.ParamByName('datger').Value := edtData.Date;
           DmOra.ConsE028cpg_.Parameters.ParamByName('datatu').Value := edtData.Date;
           DmOra.ConsE028cpg_.Open;
           DmOra.ConsE028cpg_.Prior;
           DmOra.ConsE028cpg_.First;
           vnQtdCondCpg := DmOra.ConsE028cpg_.RecordCount;
           lblTotalCondCpg.Caption := IntToStr(vnQtdCondCpg);
           Application.ProcessMessages;
           while not DmOra.ConsE028cpg_.Eof do
             begin
               DmFireRep.CadE028Cpg.Close;
               DmFireRep.CadE028Cpg.ParamByName('CODEMP').Value := DmOra.ConsE028cpg_CODEMP.Value;
               DmFireRep.CadE028Cpg.ParamByName('CODCPG').Value := DmOra.ConsE028cpg_CODCPG.Value;
               DmFireRep.CadE028Cpg.Open;
               if DmFireRep.CadE028Cpg.IsEmpty then
                  begin
                    DmFireRep.CadE028Cpg.Insert;
                    DmFireRep.CadE028CpgCODEMP.Value := DmOra.ConsE028cpg_CODEMP.Value;
                    DmFireRep.CadE028CpgCODCPG.Value := DmOra.ConsE028cpg_CODCPG.Value;
                    DmFireRep.CadE028CpgDESCPG.Value := DmOra.ConsE028cpg_DESCPG.Value;
                    DmFireRep.CadE028CpgABRCPG.Value := DmOra.ConsE028cpg_ABRCPG.Value;
                    DmFireRep.CadE028CpgPRZMED.Value := DmOra.ConsE028cpg_PRZMED.Value;
                    DmFireRep.CadE028CpgQTDPAR.Value := DmOra.ConsE028cpg_QTDPAR.Value;
                    DmFireRep.CadE028CpgSITCPG.Value := DmOra.ConsE028cpg_SITCPG.Value;
                    DmFireRep.CadE028CpgPERCOM.Value := DmOra.ConsE028cpg_PERCOM.Value;
                    DmFireRep.CadE028Cpg.Post;

                  end
               else
                  begin
                    DmFireRep.CadE028Cpg.Edit;
                    DmFireRep.CadE028CpgDESCPG.Value := DmOra.ConsE028cpg_DESCPG.Value;
                    DmFireRep.CadE028CpgABRCPG.Value := DmOra.ConsE028cpg_ABRCPG.Value;
                    DmFireRep.CadE028CpgPRZMED.Value := DmOra.ConsE028cpg_PRZMED.Value;
                    DmFireRep.CadE028CpgQTDPAR.Value := DmOra.ConsE028cpg_QTDPAR.Value;
                    DmFireRep.CadE028CpgSITCPG.Value := DmOra.ConsE028cpg_SITCPG.Value;
                    DmFireRep.CadE028CpgPERCOM.Value := DmOra.ConsE028cpg_PERCOM.Value;
                    DmFireRep.CadE028Cpg.Post;
                  end;
               vnQtdCondCpg := vnQtdCondCpg - 1;
               lblTotalCondCpg.Caption := IntToStr(vnQtdCondCpg);
               Application.ProcessMessages;

               DmOra.ConsE028cpg_.Next;
             end;

             //atualiza as ligações cond. pgto. x representantes
             DmOra.ConsE090Rcp.Close;
             DmOra.ConsE090Rcp.Parameters.ParamByName('datger').Value := edtData.Date;
             DmOra.ConsE090Rcp.Parameters.ParamByName('datalt').Value := edtData.Date;
             DmOra.ConsE090Rcp.Open;
             DmOra.ConsE090Rcp.Prior;
             DmOra.ConsE090Rcp.First;
             vnQtdCondCpg := DmOra.ConsE090Rcp.RecordCount;
             lblTotalCondCpgLig.Caption := IntToStr(vnQtdCondCpg);
             Application.ProcessMessages;
             while not DmOra.ConsE090Rcp.Eof do
               begin
                 DmFireRep.CadE090Rcp.Close;
                 DmFireRep.CadE090Rcp.ParamByName('EMPCPG').Value := DmOra.ConsE090RcpEMPCPG.Value;
                 DmFireRep.CadE090Rcp.ParamByName('CODCPG').Value := DmOra.ConsE090RcpCODCPG.Value;
                 DmFireRep.CadE090Rcp.ParamByName('CODREP').Value := DmOra.ConsE090RcpCODREP.Value;
                 DmFireRep.CadE090Rcp.Open;
                 if DmFireRep.CadE090Rcp.IsEmpty then
                    begin
                       DmFireRep.CadE090Rcp.Insert;
                       DmFireRep.CadE090RcpCODREP.Value := DmOra.ConsE090RcpCODREP.Value;
                       DmFireRep.CadE090RcpEMPCPG.Value := DmOra.ConsE090RcpEMPCPG.Value;
                       DmFireRep.CadE090RcpCODCPG.Value := DmOra.ConsE090RcpCODCPG.Value;
                       DmFireRep.CadE090RcpSITLRC.Value := DmOra.ConsE090RcpSITLRC.Value;
                       DmFireRep.CadE090Rcp.Post;

                    end
                 else
                    begin
                       DmFireRep.CadE090Rcp.Edit;
                       DmFireRep.CadE090RcpSITLRC.Value := DmOra.ConsE090RcpSITLRC.Value;
                       DmFireRep.CadE090Rcp.Post;
                    end;

                 vnQtdCondCpg := vnQtdCondCpg - 1;
                 lblTotalCondCpgLig.Caption := IntToStr(vnQtdCondCpg);
                 Application.ProcessMessages;

                 DmOra.ConsE090Rcp.Next;
               end;

             DmFireRep.ibtTransacao.CommitRetaining;
        end;
        Application.ProcessMessages;

     {************************************************
           gera atualização da tabela de preço
     *************************************************}
     if chkTabelaPreco.Checked then
        begin
           MemoStatus.Lines.Add('Gerando atualização da tabela de preços');
           DmOra.ConsE081Itp.Close;
           DmOra.ConsE081Itp.Parameters.ParamByName('CODTPR').Value := '1000';
           DmOra.ConsE081Itp.Parameters.ParamByName('DATGER').Value := edtData.Date;
           DmOra.ConsE081Itp.Parameters.ParamByName('DATALT').Value := edtData.Date;
           DmOra.ConsE081Itp.Open;
           DmOra.ConsE081Itp.Prior;
           DmOra.ConsE081Itp.First;
           vnQtdTabPreco := DmOra.ConsE081Itp.RecordCount;
           lblTotalTabPreco.Caption := IntToStr(vnQtdTabPreco);
           Application.ProcessMessages;
           while not DmOra.ConsE081Itp.Eof do
             begin
               DmFireRep.CadE081Itp.Close;
               DmFireRep.CadE081Itp.ParamByName('CODEMP').Value := DmOra.ConsE081ItpCODEMP.Value;
               DmFireRep.CadE081Itp.ParamByName('CODTPR').Value := DmOra.ConsE081ItpCODTPR.Value;
               DmFireRep.CadE081Itp.ParamByName('CODPRO').Value := DmOra.ConsE081ItpCODPRO.Value;
               DmFireRep.CadE081Itp.ParamByName('CODDER').Value := DmOra.ConsE081ItpCODDER.Value;
               DmFireRep.CadE081Itp.Open;
               if DmFireRep.CadE081Itp.IsEmpty then
                  begin
                     DmFireRep.CadE081Itp.Insert;
                     DmFireRep.CadE081ItpCODEMP.Value := DmOra.ConsE081ItpCODEMP.Value;
                     DmFireRep.CadE081ItpCODTPR.Value := DmOra.ConsE081ItpCODTPR.Value;
                     DmFireRep.CadE081ItpCODPRO.Value := DmOra.ConsE081ItpCODPRO.Value;
                     DmFireRep.CadE081ItpCODDER.Value := DmOra.ConsE081ItpCODDER.Value;
                     DmFireRep.CadE081ItpDESPRO.Value := DmOra.ConsE081ItpDESPRO.Value;
                     DmFireRep.CadE081ItpPREBAS.Value := DmOra.ConsE081ItpPREBAS.AsFloat;
                     DmFireRep.CadE081ItpTOLMAI.Value := DmOra.ConsE081ItpTOLMAI.AsFloat;
                     DmFireRep.CadE081ItpTOLMEN.Value := DmOra.ConsE081ItpTOLMEN.AsFloat;
                     DmFireRep.CadE081ItpVLRMAI.Value := DmOra.ConsE081ItpVLTMAI.AsFloat;
                     DmFireRep.CadE081ItpVLRMEN.Value := DmOra.ConsE081ItpVLTMEN.AsFloat;
                     DmFireRep.CadE081ItpSITREG.Value := DmOra.ConsE081ItpSITREG.Value;
                     DmFireRep.CadE081ItpDATINI.Value := DmOra.ConsE081ItpDATINI.Value;
                     DmFireRep.CadE081ItpCODFAM.Value := DmOra.ConsE081ItpCODFAM.Value;
                     DmFireRep.CadE081ItpCODAGC.Value := DmOra.ConsE081ItpCODAGC.Value;
                     DmFireRep.CadE081Itp.Post;
                  end
               else
                  begin
                     DmFireRep.CadE081Itp.Edit;
                     DmFireRep.CadE081ItpDESPRO.Value := DmOra.ConsE081ItpDESPRO.Value;
                     DmFireRep.CadE081ItpPREBAS.Value := DmOra.ConsE081ItpPREBAS.AsFloat;
                     DmFireRep.CadE081ItpTOLMAI.Value := DmOra.ConsE081ItpTOLMAI.AsFloat;
                     DmFireRep.CadE081ItpTOLMEN.Value := DmOra.ConsE081ItpTOLMEN.AsFloat;
                     DmFireRep.CadE081ItpVLRMAI.Value := DmOra.ConsE081ItpVLTMAI.AsFloat;
                     DmFireRep.CadE081ItpVLRMEN.Value := DmOra.ConsE081ItpVLTMEN.AsFloat;
                     DmFireRep.CadE081ItpSITREG.Value := DmOra.ConsE081ItpSITREG.Value;
                     DmFireRep.CadE081ItpDATINI.Value := DmOra.ConsE081ItpDATINI.Value;
                     DmFireRep.CadE081ItpCODFAM.Value := DmOra.ConsE081ItpCODFAM.Value;
                     DmFireRep.CadE081ItpCODAGC.Value := DmOra.ConsE081ItpCODAGC.Value;
                     DmFireRep.CadE081Itp.Post;
                  end;

               vnQtdTabPreco := vnQtdTabPreco - 1;
               lblTotalTabPreco.Caption := IntToStr(vnQtdTabPreco);
               Application.ProcessMessages;
               DmOra.ConsE081Itp.Next;
             end;
             DmFireRep.ibtTransacao.CommitRetaining;
        end;
       Application.ProcessMessages;

     {************************************************
               GERA ATUALIZAÇAO DOS TITULOS
     *************************************************}
     if chkTitulos.Checked then
        begin
           MemoStatus.Lines.Add('Gerando atualização de títulos');

           DmFireRep.Sql.Close;
           DmFireRep.Sql.SQL.Clear;
           DmFireRep.Sql.SQL.Add('DELETE FROM E301TCR');
           DmFireRep.Sql.ExecQuery;

           DmOra.ConsE301Tcr_.Close;
           DmOra.ConsE301Tcr_.Parameters.ParamByName('DATA').Value := Date;
           DmOra.ConsE301Tcr_.Open;
           DmOra.ConsE301Tcr_.Prior;
           DmOra.ConsE301Tcr_.First;
           vnQtdTitulos := DmOra.ConsE301Tcr_.RecordCount;
           lblTotalTitulos.Caption := IntToStr(vnQtdTitulos);
           while not DmOra.ConsE301Tcr_.Eof do
              begin
                DmFireRep.CadE301Tcr.Open;
                DmFireRep.CadE301Tcr.Insert;
                DmFireRep.CadE301TcrCODEMP.Value := DmOra.ConsE301Tcr_CODEMP.Value;
                DmFireRep.CadE301TcrCODFIL.Value := DmOra.ConsE301Tcr_CODFIL.Value;
                DmFireRep.CadE301TcrNUMTIT.Value := DmOra.ConsE301Tcr_NUMTIT.Value;
                DmFireRep.CadE301TcrCODTPT.Value := DmOra.ConsE301Tcr_CODTPT.Value;
                DmFireRep.CadE301TcrCODTNS.Value := DmOra.ConsE301Tcr_CODTNS.Value;
                DmFireRep.CadE301TcrSITTIT.Value := DmOra.ConsE301Tcr_SITTIT.Value;
                DmFireRep.CadE301TcrDATEMI.Value := DmOra.ConsE301Tcr_DATEMI.Value;
                DmFireRep.CadE301TcrCODCLI.Value := DmOra.ConsE301Tcr_CODCLI.Value;
                DmFireRep.CadE301TcrVCTORI.Value := DmOra.ConsE301Tcr_VCTORI.Value;
                DmFireRep.CadE301TcrVLRORI.Value := DmOra.ConsE301Tcr_VLRORI.Value;
                DmFireRep.CadE301TcrVCTPRO.Value := DmOra.ConsE301Tcr_VCTPRO.Value;
                DmFireRep.CadE301TcrDATPPT.Value := DmOra.ConsE301Tcr_DATPPT.Value;
                DmFireRep.CadE301TcrVLRABE.Value := DmOra.ConsE301Tcr_VLRABE.Value;
                DmFireRep.CadE301TcrCODREP.Value := DmOra.ConsE301Tcr_CODREP.Value;
                DmFireRep.CadE301Tcr.Post;

                vnQtdTitulos := vnQtdTitulos - 1;
                lblTotalTitulos.Caption := IntToStr(vnQtdTitulos);
                Application.ProcessMessages;
                DmOra.ConsE301Tcr_.Next;
              end;
              DmFireRep.ibtTransacao.CommitRetaining;
        end;
        Application.ProcessMessages;

     {**********************************************
         GERA ATUALIZAÇAO DOS PRODUTOS E DEVIRAÇÕES
      ***********************************************}
       if chkProdutos.Checked then
          begin
              MemoStatus.Lines.Add('Gerando atualização de produtos e derivações');
              DmOra.ConsE075Pro.Close;
              DmOra.ConsE075Pro.Parameters.ParamByName('DATALT').Value := edtData.Date;
              DmOra.ConsE075Pro.Parameters.ParamByName('DATGER').Value := edtData.Date;
              DmOra.ConsE075Pro.Open;
              DmOra.ConsE075Pro.Prior;
              DmOra.ConsE075Pro.First;
              vnQtdProdutos := DmOra.ConsE075Pro.RecordCount;
              lblTotalProdutos.Caption := IntToStr(vnQtdProdutos);
              Application.ProcessMessages;
              while not DmOra.ConsE075Pro.Eof do
                 begin
                    DmFireRep.CadE075Pro.Close;
                    DmFireRep.CadE075Pro.ParamByName('CODEMP').Value := DmOra.ConsE075ProCODEMP.Value;
                    DmFireRep.CadE075Pro.ParamByName('CODPRO').Value := DmOra.ConsE075ProCODPRO.Value;
                    DmFireRep.CadE075Pro.Open;
                    if DmFireRep.CadE075Pro.IsEmpty then
                       begin
                          DmFireRep.CadE075Pro.Insert;
                          DmFireRep.CadE075ProCODEMP.Value := DmOra.ConsE075ProCODEMP.Value;
                          DmFireRep.CadE075ProCODPRO.Value := DmOra.ConsE075ProCODPRO.Value;
                          DmFireRep.CadE075ProDESPRO.Value := DmOra.ConsE075ProDESPRO.Value;
                          DmFireRep.CadE075ProCODFAM.Value := DmOra.ConsE075ProCODFAM.Value;
                          DmFireRep.CadE075ProCODAGP.Value := DmOra.ConsE075ProCODAGP.Value;
                          DmFireRep.CadE075ProSITPRO.Value := DmOra.ConsE075ProSITPRO.Value;
                          DmFireRep.CadE075Pro.Post;
                       end
                    else
                       begin
                          DmFireRep.CadE075Pro.Edit;
                          DmFireRep.CadE075ProDESPRO.Value := DmOra.ConsE075ProDESPRO.Value;
                          DmFireRep.CadE075ProCODFAM.Value := DmOra.ConsE075ProCODFAM.Value;
                          DmFireRep.CadE075ProCODAGP.Value := DmOra.ConsE075ProCODAGP.Value;
                          DmFireRep.CadE075ProSITPRO.Value := DmOra.ConsE075ProSITPRO.Value;
                          DmFireRep.CadE075Pro.Post;
                       end;

                     vnQtdProdutos := vnQtdProdutos - 1;
                     lblTotalProdutos.Caption := IntToStr(vnQtdProdutos);
                     Application.ProcessMessages;
                    DmOra.ConsE075Pro.Next;
                 end;
              DmFireRep.ibtTransacao.CommitRetaining;

              DmOra.ConsE075Der.Close;
              DmOra.ConsE075Der.Parameters.ParamByName('DATALT').Value := edtData.Date;
              DmOra.ConsE075Der.Parameters.ParamByName('DATGER').Value := edtData.Date;
              DmOra.ConsE075Der.Open;
              DmOra.ConsE075Der.Prior;
              DmOra.ConsE075Der.First;
              vnQtdDerivacoes := DmOra.ConsE075Der.RecordCount;
              lblTotalDerivacoes.Caption := IntToStr(vnQtdDerivacoes);
              Application.ProcessMessages;
              while not DmOra.ConsE075Der.Eof do
                 begin
                    DmFireRep.CadE075Der.Close;
                    DmFireRep.CadE075Der.ParamByName('CODEMP').Value := DmOra.ConsE075DerCODEMP.Value;
                    DmFireRep.CadE075Der.ParamByName('CODPRO').Value := DmOra.ConsE075DerCODPRO.Value;
                    DmFireRep.CadE075Der.ParamByName('CODDER').Value := DmOra.ConsE075DerCODDER.Value;
                    DmFireRep.CadE075Der.Open;
                    if DmFireRep.CadE075Der.IsEmpty then
                       begin
                         DmFireRep.CadE075Der.Insert;
                         DmFireRep.CadE075DerCODEMP.Value := DmOra.ConsE075DerCODEMP.Value;
                         DmFireRep.CadE075DerCODPRO.Value := DmOra.ConsE075DerCODPRO.Value;
                         DmFireRep.CadE075DerCODDER.Value := DmOra.ConsE075DerCODDER.Value;
                         DmFireRep.CadE075DerDESDER.Value := DmOra.ConsE075DerDESDER.Value;
                         DmFireRep.CadE075DerPESBRU.Value := DmOra.ConsE075DerPESBRU.AsFloat;
                         DmFireRep.CadE075DerPESLIQ.Value := DmOra.ConsE075DerPESLIQ.AsFloat;
                         DmFireRep.CadE075DerVOLDER.Value := DmOra.ConsE075DerVOLDER.AsFloat;
                         DmFireRep.CadE075DerSITDER.Value := DmOra.ConsE075DerSITDER.Value;
                         DmFireRep.CadE075DerCORUNI.Value := DmOra.ConsE075DerUSU_CORUNI.AsFloat;
                         DmFireRep.CadE075DerCMP1BB.Value := DmOra.ConsE075DerUSU_CMP1BB.AsFloat;
                         DmFireRep.CadE075DerCMP1AC.Value := DmOra.ConsE075DerUSU_CMP1AE.AsFloat;
                         DmFireRep.CadE075DerCMP2BB.Value := DmOra.ConsE075DerUSU_CMP2BB.AsFloat;
                         DmFireRep.CadE075DerCMP2EN.Value := DmOra.ConsE075DerUSU_CMP2EN.AsFloat;
                         DmFireRep.CadE075Der.Post;
                       end
                    else
                       begin
                         DmFireRep.CadE075Der.Edit;
                         DmFireRep.CadE075DerDESDER.Value := DmOra.ConsE075DerDESDER.Value;
                         DmFireRep.CadE075DerPESBRU.Value := DmOra.ConsE075DerPESBRU.AsFloat;
                         DmFireRep.CadE075DerPESLIQ.Value := DmOra.ConsE075DerPESLIQ.AsFloat;
                         DmFireRep.CadE075DerVOLDER.Value := DmOra.ConsE075DerVOLDER.AsFloat;
                         DmFireRep.CadE075DerSITDER.Value := DmOra.ConsE075DerSITDER.Value;
                         DmFireRep.CadE075DerCORUNI.Value := DmOra.ConsE075DerUSU_CORUNI.AsFloat;
                         DmFireRep.CadE075DerCMP1BB.Value := DmOra.ConsE075DerUSU_CMP1BB.AsFloat;
                         DmFireRep.CadE075DerCMP1AC.Value := DmOra.ConsE075DerUSU_CMP1AE.AsFloat;
                         DmFireRep.CadE075DerCMP2BB.Value := DmOra.ConsE075DerUSU_CMP2BB.AsFloat;
                         DmFireRep.CadE075DerCMP2EN.Value := DmOra.ConsE075DerUSU_CMP2EN.AsFloat;
                         DmFireRep.CadE075Der.Post;
                       end;
                    vnQtdDerivacoes := vnQtdDerivacoes - 1;
                    lblTotalDerivacoes.Caption := IntToStr(vnQtdDerivacoes);
                    Application.ProcessMessages;
                   DmOra.ConsE075Der.Next;
                 end;
                 DmFireRep.ibtTransacao.CommitRetaining;
          end;
       Application.ProcessMessages;


      MemoStatus.Lines.Add('Atualização gerada com sucesso!!');
      MemoStatus.Lines.Add(DateToStr(Date)+'   '+TimeToStr(Time));
      Application.ProcessMessages;
      btnGerarPedidos.Enabled := True;
      btnGerarBase.Enabled := True;
end;

procedure TFPrincipal.btnGerarBase3Click(Sender: TObject);
var vnQtdTitulos, vnQtdClientes, vnQtdCondCpg, vnQtdTabPreco, vnQtdLogLigProdCor,
    vnQtdProdutos, vnQtdDerivacoes, vnQtdCores, vnQtdLigProdCor : Integer;
begin
    MemoStatus.Lines.Clear;
    MemoStatus.Lines.Add('Conectando com o banco mysql...');
    

    btnGerarPedidos.Enabled := False;
    btnGerarBase.Enabled := False;
    lblTotalTitulos.Caption := '';
    lblTotalClientes.Caption := '';
    lblTotalCondCpg.Caption := '';
    lblTotalTabPreco.Caption := '';
    lblTotalLogLigacaoProdutosCores.Caption := '';
    lblTotalProdutos.Caption := '';
    lblTotalDerivacoes.Caption := '';
    lblTotalCores.Caption := '';
    lblTotalLigProdutosCores.Caption := '';
     //****************************
    //gera atualização dos clientes
    //******************************








     //fim da geraçao para cliantes
      //Application.ProcessMessages;

     //*******************************
     //atualiza condições de pagamento
     //*******************************
     if chkCondCpg.Checked then
        begin
           MemoStatus.Lines.Add('Gerando atualização condições de pagamento...');
           DmOra.ConsE028cpg_.Close;
           DmOra.ConsE028cpg_.Parameters.ParamByName('datger').Value := edtData.Date;
           DmOra.ConsE028cpg_.Parameters.ParamByName('datatu').Value := edtData.Date;
           DmOra.ConsE028cpg_.Open;
           DmOra.ConsE028cpg_.Prior;
           DmOra.ConsE028cpg_.First;
           vnQtdCondCpg := DmOra.ConsE028cpg_.RecordCount;
           lblTotalCondCpg.Caption := IntToStr(vnQtdCondCpg);
           Application.ProcessMessages;

        end;

        Application.ProcessMessages;
       {*****************************************************
                  gera atualização da tabela de preço
         ******************************************************}


         //---------------

           Application.ProcessMessages;
         {**************************************************************
          gera atualização dos logs de ligações de produtos com tecidos
         ***************************************************************}



         Application.ProcessMessages;
       {************************************************
                 GERA ATUALIZAÇAO DOS TITULOS
       *************************************************}


          Application.ProcessMessages;
          {**********************************************
             GERA ATUALIZAÇAO DOS PRODUTOS E DEVIRAÇÕES


           Application.ProcessMessages;
          {*********************************************************************
                                 gera atualizaçoes das cores
          **********************************************************************}




end;

procedure TFPrincipal.btnGerarPedidosClick(Sender: TObject);
var vnQtdReg,vnContReg, vnNovaFaixaNumCon : Integer;
begin
    {**********************************
     PERCORRE OS PEDIDOS QUE ESTAO COM NUMERO DE PEDIDO = 0(ZERO)
    ***********************************}
    DmFireRep.ConsE120PedZ.Close;
    DmFireRep.ConsE120PedZ.Open;
    DmFireRep.ConsE120PedZ.First;
    while not DmFireRep.ConsE120PedZ.Eof do
      begin
          DmOra.ConsE120Ped.Close;
          DmOra.ConsE120Ped.SQL.Clear;
          DmOra.ConsE120Ped.SQL.Add('select e120ped.codemp,e120ped.codfil,e120ped.numped,e120ped.codrep,e120ped.tnspro,e120ped.datemi,e120ped.horemi,');
          DmOra.ConsE120Ped.SQL.Add('e120ped.codcli,e120ped.codcpg,e120ped.qtdabe,e120ped.vlrbco,e120ped.vlrcom,e120ped.vlrliq,');
          DmOra.ConsE120Ped.SQL.Add('e120ped.qtdori,e120ped.vlrori,e120ped.sitped,e120ped.usuger,e120ped.datger,e120ped.usufec,');
          DmOra.ConsE120Ped.SQL.Add('e120ped.datfec,e120ped.usu_numcom,e120ped.usu_precar');
          DmOra.ConsE120Ped.SQL.Add('from e120ped');
          DmOra.ConsE120Ped.SQL.Add('where');
          DmOra.ConsE120Ped.SQL.Add('e120ped.codemp = :codemp and');
          DmOra.ConsE120Ped.SQL.Add('e120ped.codfil = :codfil and');
          DmOra.ConsE120Ped.SQL.Add('e120ped.usu_numcom = :numcon');
          DmOra.ConsE120Ped.SQL.Add('order by e120ped.usu_numcom desc');
          DmOra.ConsE120Ped.Parameters.ParamByName('codemp').Value := 1;
          DmOra.ConsE120Ped.Parameters.ParamByName('codfil').Value := 1;
          DmOra.ConsE120Ped.Parameters.ParamByName('numcon').Value := DmFireRep.ConsE120PedZNUMCON.Value;
          DmOra.ConsE120Ped.Open;
          if not DmOra.ConsE120Ped.IsEmpty then
             begin
               DmFireRep.Sql.Close;
               DmFireRep.Sql.SQL.Clear;
               DmFireRep.Sql.SQL.Add('UPDATE E120PED');
               DmFireRep.Sql.SQL.Add(' SET NUMPED = :NUMPED,');
               DmFireRep.Sql.SQL.Add('     PEDCON = ''S''');
               DmFireRep.Sql.SQL.Add(' WHERE');
               DmFireRep.Sql.SQL.Add(' CODEMP = 1 AND');
               DmFireRep.Sql.SQL.Add(' CODFIL = 1 AND');
               DmFireRep.Sql.SQL.Add(' NUMCON = :NUMCON');
               DmFireRep.Sql.ParamByName('NUMPED').Value := DmOra.ConsE120PedNUMPED.Value;
               DmFireRep.Sql.ParamByName('NUMCON').Value := DmOra.ConsE120PedUSU_NUMCOM.Value;
               DmFireRep.Sql.ExecQuery;

               DmFireRep.Sql.Close;
               DmFireRep.Sql.SQL.Clear;
               DmFireRep.Sql.SQL.Add('UPDATE E120IPD');
               DmFireRep.Sql.SQL.Add(' SET NUMPED = :NUMPED');
               DmFireRep.Sql.SQL.Add(' WHERE');
               DmFireRep.Sql.SQL.Add(' CODEMP = 1 AND');
               DmFireRep.Sql.SQL.Add(' CODFIL = 1 AND');
               DmFireRep.Sql.SQL.Add(' NUMCON = :NUMCON');
               DmFireRep.Sql.ParamByName('NUMPED').Value := DmOra.ConsE120PedNUMPED.Value;
               DmFireRep.Sql.ParamByName('NUMCON').Value := DmOra.ConsE120PedUSU_NUMCOM.Value;
               DmFireRep.Sql.ExecQuery;

               DmFireRep.Sql.Close;
               DmFireRep.Sql.SQL.Clear;
               DmFireRep.Sql.SQL.Add('UPDATE USU120IPD');
               DmFireRep.Sql.SQL.Add(' SET NUMPED = :NUMPED');
               DmFireRep.Sql.SQL.Add(' WHERE');
               DmFireRep.Sql.SQL.Add(' CODEMP = 1 AND');
               DmFireRep.Sql.SQL.Add(' CODFIL = 1 AND');
               DmFireRep.Sql.SQL.Add(' NUMCON = :NUMCON');
               DmFireRep.Sql.ParamByName('NUMPED').Value := DmOra.ConsE120PedNUMPED.Value;
               DmFireRep.Sql.ParamByName('NUMCON').Value := DmOra.ConsE120PedUSU_NUMCOM.Value;
               DmFireRep.Sql.ExecQuery;

               DmFireRep.Sql.Close;
               DmFireRep.Sql.SQL.Clear;
               DmFireRep.Sql.SQL.Add('UPDATE E120OBS');
               DmFireRep.Sql.SQL.Add(' SET NUMPED = :NUMPED');
               DmFireRep.Sql.SQL.Add(' WHERE');
               DmFireRep.Sql.SQL.Add(' CODEMP = 1 AND');
               DmFireRep.Sql.SQL.Add(' CODFIL = 1 AND');
               DmFireRep.Sql.SQL.Add(' NUMCON = :NUMCON');
               DmFireRep.Sql.ParamByName('NUMPED').Value := DmOra.ConsE120PedNUMPED.Value;
               DmFireRep.Sql.ParamByName('NUMCON').Value := DmOra.ConsE120PedUSU_NUMCOM.Value;
               DmFireRep.Sql.ExecQuery;
             end;
        DmFireRep.ConsE120PedZ.Next;
      end;
    DmFireRep.ibtTransacao.CommitRetaining;
    Application.ProcessMessages;

   {**********************************
     PERCORRE OS PEDIDOS NA BASE WEB
   ***********************************}

   btnGerarBase.Enabled := false;
   btnGerarPedidos.Enabled := false;
   //consulta as observaões de pedidos
   DmFireRep.ConsObsPed.Close;
   DmFireRep.ConsObsPed.Open;
   DmFireRep.ConsObsPed.Last;
   DmFireRep.ConsObsPed.First;
   vnQtdReg := DmFireRep.ConsObsPed.RecordCount;
   vnContReg := vnQtdReg;
   while not DmFireRep.ConsObsPed.Eof do
      begin
          MemoStatusPed.Lines.Add('Atualizando observações dos pedidos .. '+IntToStr(vnContReg)+'/'+IntToStr(vnQtdReg));
          DmOra.ConsE120Obs.Close;
          DmOra.ConsE120Obs.SQL.Clear;
          DmOra.ConsE120Obs.SQL.Add('select e120obs.codemp,e120obs.codfil,e120obs.numped,e120obs.seqobs,e120obs.tipobs,e120obs.obsped,');
          DmOra.ConsE120Obs.SQL.Add('e120obs.obsusu,e120obs.obsdat,e120obs.sitobs,e120obs.usu_numcom,e120ped.codrep');
          DmOra.ConsE120Obs.SQL.Add(' from e120obs');
          DmOra.ConsE120Obs.SQL.Add('inner join e120ped on e120ped.codemp = e120obs.codemp and');
          DmOra.ConsE120Obs.SQL.Add('e120ped.codfil = e120obs.codfil and');
          DmOra.ConsE120Obs.SQL.Add('e120ped.numped = e120obs.numped');
          DmOra.ConsE120Obs.SQL.Add(' where');
          DmOra.ConsE120Obs.SQL.Add('e120obs.codemp = :codemp and');
          DmOra.ConsE120Obs.SQL.Add('e120obs.codfil = :codfil and');
          DmOra.ConsE120Obs.SQL.Add('e120obs.numped = :numped and');
          DmOra.ConsE120Obs.SQL.Add('e120obs.seqobs = :seqobs');
          DmOra.ConsE120Obs.Parameters.ParamByName('codemp').Value := DmFireRep.ConsObsPedCODEMP.Value;
          DmOra.ConsE120Obs.Parameters.ParamByName('codfil').Value := DmFireRep.ConsObsPedCODFIL.Value;
          DmOra.ConsE120Obs.Parameters.ParamByName('numped').Value := DmFireRep.ConsObsPedNUMPED.Value;
          DmOra.ConsE120Obs.Parameters.ParamByName('seqobs').Value := DmFireRep.ConsObsPedSEQOBS.Value;
          DmOra.ConsE120Obs.Open;
          if not DmOra.ConsE120Obs.IsEmpty then
             begin
               DmFireRep.AtuE120Obs.Close;
               DmFireRep.AtuE120Obs.ParamByName('CODREP').Value := DmOra.ConsE120ObsCODREP.Value;
               DmFireRep.AtuE120Obs.ParamByName('OBSPED').Value := DmOra.ConsE120ObsOBSPED.Value;
               DmFireRep.AtuE120Obs.ParamByName('SITOBS').Value := DmOra.ConsE120ObsSITOBS.Value;
               DmFireRep.AtuE120Obs.ParamByName('OBSUSU').Value := DmOra.ConsE120ObsOBSUSU.Value;
               DmFireRep.AtuE120Obs.ParamByName('OBSDAT').Value := DmOra.ConsE120ObsOBSDAT.Value;
               DmFireRep.AtuE120Obs.ParamByName('CODEMP').Value := DmOra.ConsE120ObsCODEMP.Value;
               DmFireRep.AtuE120Obs.ParamByName('CODFIL').Value := DmOra.ConsE120ObsCODFIL.Value;
               DmFireRep.AtuE120Obs.ParamByName('NUMPED').Value := DmOra.ConsE120ObsNUMPED.Value;
               DmFireRep.AtuE120Obs.ParamByName('SEQOBS').Value := DmOra.ConsE120ObsSEQOBS.Value;
               DmFireRep.AtuE120Obs.ExecQuery;

             end
          else
             begin
               DmFireRep.Sql.Close;
               DmFireRep.Sql.SQL.Clear;
               DmFireRep.Sql.SQL.Add('DELETE FROM E120OBS WHERE NUMPED = :NUMPED');
               DmFireRep.Sql.SQL.Add('                      AND SEQOBS = :SEQOBS');
               DmFireRep.Sql.ParamByName('NUMPED').Value := DmFireRep.ConsObsPedNUMPED.Value;
               DmFireRep.Sql.ParamByName('SEQOBS').Value := DmFireRep.ConsObsPedSEQOBS.Value;
               DmFireRep.Sql.ExecQuery;

             end;
        vnContReg := vnContReg - 1;
        DmFireRep.ConsObsPed.Next;
      end;
   DmFireRep.ibtTransacao.CommitRetaining;
    Application.ProcessMessages;


    DmFireRep.ConsNumPed.Close;  //consulta todos os pedido que estao em aberto onde o numero de pedido seja diferente de 0(zero)
    DmFireRep.ConsNumPed.Open;
    DmFireRep.ConsNumPed.Last;
    DmFireRep.ConsNumPed.First;
    vnQtdReg := DmFireRep.ConsNumPed.RecordCount;
    vnContReg := vnQtdReg;
    while not DmFireRep.ConsNumPed.Eof do
       begin
          MemoStatusPed.Lines.Add('Atualizando pedidos na base web.. '+IntToStr(vnContReg)+'/'+IntToStr(vnQtdReg));
          DmOra.ConsE120Ped.Close;
          DmOra.ConsE120Ped.SQL.Clear;
          DmOra.ConsE120Ped.SQL.Add('select e120ped.codemp,e120ped.codfil,e120ped.numped,e120ped.codrep,e120ped.tnspro,e120ped.datemi,e120ped.horemi,');
          DmOra.ConsE120Ped.SQL.Add('e120ped.codcli,e120ped.codcpg,e120ped.qtdabe,e120ped.vlrbco,e120ped.vlrcom,e120ped.vlrliq,');
          DmOra.ConsE120Ped.SQL.Add('e120ped.qtdori,e120ped.vlrori,e120ped.sitped,e120ped.usuger,e120ped.datger,e120ped.usufec,');
          DmOra.ConsE120Ped.SQL.Add('e120ped.datfec,e120ped.usu_numcom,e120ped.usu_precar');
          DmOra.ConsE120Ped.SQL.Add('from e120ped');
          DmOra.ConsE120Ped.SQL.Add('where');
          DmOra.ConsE120Ped.SQL.Add('e120ped.codemp = :codemp and');
          DmOra.ConsE120Ped.SQL.Add('e120ped.codfil = :codfil and');
          DmOra.ConsE120Ped.SQL.Add('e120ped.numped = :numped');
          DmOra.ConsE120Ped.SQL.Add('order by e120ped.usu_numcom desc');
          DmOra.ConsE120Ped.Parameters.ParamByName('codemp').Value := 1;
          DmOra.ConsE120Ped.Parameters.ParamByName('codfil').Value := 1;
          DmOra.ConsE120Ped.Parameters.ParamByName('numped').Value := DmFireRep.ConsNumPedNUMPED.Value;
          DmOra.ConsE120Ped.Open;
          if not DmOra.ConsE120Ped.IsEmpty then //é porque achou o pedido
             begin
                 DmFireRep.AtuE120Ped.Close;
                 DmFireRep.AtuE120Ped.ParamByName('CODREP').Value := DmOra.ConsE120PedCODREP.Value;
                 DmFireRep.AtuE120Ped.ParamByName('CODCLI').Value := DmOra.ConsE120PedCODCLI.Value;
                 DmFireRep.AtuE120Ped.ParamByName('TNSPRO').Value := DmOra.ConsE120PedTNSPRO.AsString;
                 DmFireRep.AtuE120Ped.ParamByName('DATEMI').Value := DmOra.ConsE120PedDATEMI.AsDateTime;
                 DmFireRep.AtuE120Ped.ParamByName('CODCPG').Value := DmOra.ConsE120PedCODCPG.AsString;
                 DmFireRep.AtuE120Ped.ParamByName('QTDORI').Value := DmOra.ConsE120PedQTDORI.AsFloat;
                 DmFireRep.AtuE120Ped.ParamByName('QTDABE').Value := DmOra.ConsE120PedQTDABE.AsFloat;
                 DmFireRep.AtuE120Ped.ParamByName('VLRBCO').Value := DmOra.ConsE120PedVLRBCO.AsFloat;
                 DmFireRep.AtuE120Ped.ParamByName('VLRCOM').Value := DmOra.ConsE120PedVLRCOM.AsFloat;
                 DmFireRep.AtuE120Ped.ParamByName('VLRLIQ').Value := DmOra.ConsE120PedVLRLIQ.AsFloat;
                 DmFireRep.AtuE120Ped.ParamByName('VLRORI').Value := DmOra.ConsE120PedVLRORI.AsFloat;
                 DmFireRep.AtuE120Ped.ParamByName('SITPED').Value := DmOra.ConsE120PedSITPED.Value;
                 DmFireRep.AtuE120Ped.ParamByName('USUGER').Value := DmOra.ConsE120PedUSUGER.AsInteger;
                 DmFireRep.AtuE120Ped.ParamByName('DATGER').Value := DmOra.ConsE120PedDATGER.AsDateTime;
                 DmFireRep.AtuE120Ped.ParamByName('PRECAR').Value := DmOra.ConsE120PedUSU_PRECAR.Value;
                 DmFireRep.AtuE120Ped.ParamByName('CODEMP').Value := DmOra.ConsE120PedCODEMP.Value;
                 DmFireRep.AtuE120Ped.ParamByName('CODFIL').Value := DmOra.ConsE120PedCODFIL.Value;
                 DmFireRep.AtuE120Ped.ParamByName('NUMPED').Value := DmOra.ConsE120PedNUMPED.Value;
                 DmFireRep.AtuE120Ped.ExecQuery;
             end
          else
             begin //se nao axou é porque o pedido foi excluido
               DmFireRep.Sql.Close;
               DmFireRep.Sql.SQL.Clear;
               DmFireRep.Sql.SQL.Add('DELETE FROM E120OBS WHERE NUMPED = :NUMPED');
               DmFireRep.Sql.ParamByName('NUMPED').Value := DmFireRep.ConsNumPedNUMPED.Value;
               DmFireRep.Sql.ExecQuery;

               DmFireRep.Sql.Close;
               DmFireRep.Sql.SQL.Clear;
               DmFireRep.Sql.SQL.Add('DELETE FROM USU120IPD WHERE NUMPED = :NUMPED');
               DmFireRep.Sql.ParamByName('NUMPED').Value := DmFireRep.ConsNumPedNUMPED.Value;
               DmFireRep.Sql.ExecQuery;

               DmFireRep.Sql.Close;
               DmFireRep.Sql.SQL.Clear;
               DmFireRep.Sql.SQL.Add('DELETE FROM E120IPD WHERE NUMPED = :NUMPED');
               DmFireRep.Sql.ParamByName('NUMPED').Value := DmFireRep.ConsNumPedNUMPED.Value;
               DmFireRep.Sql.ExecQuery;

               DmFireRep.Sql.Close;
               DmFireRep.Sql.SQL.Clear;
               DmFireRep.Sql.SQL.Add('DELETE FROM E120PED WHERE NUMPED = :NUMPED');
               DmFireRep.Sql.ParamByName('NUMPED').Value := DmFireRep.ConsNumPedNUMPED.Value;
               DmFireRep.Sql.ExecQuery;

             end;
          vnContReg := vnContReg - 1;
         DmFireRep.ConsNumPed.Next;
       end;
    DmFireRep.ibtTransacao.CommitRetaining;
    Application.ProcessMessages;


    //consulta os produtos do pedido na base web que nao estao faturados e cancelados e com numero de pedido <> 0
    DmFireRep.ConsProPed.Close;
    DmFireRep.ConsProPed.ParamByName('CODEMP').AsInteger := 1;
    DmFireRep.ConsProPed.ParamByName('CODFIL').AsInteger := 1;
    DmFireRep.ConsProPed.Open;
    DmFireRep.ConsProPed.Last;
    DmFireRep.ConsProPed.First;
    vnQtdReg := DmFireRep.ConsProPed.RecordCount;
    vnContReg := vnQtdReg;
    while not DmFireRep.ConsProPed.Eof do
       begin
          MemoStatusPed.Lines.Add('Atualizando produtos dos pedidos na base web '+IntToStr(vnContReg)+'/'+IntToStr(vnQtdReg));
          DmOra.ConsE120Ipd.Close;
          DmOra.ConsE120Ipd.SQL.Clear;
          DmOra.ConsE120Ipd.SQL.Add('select e120ipd.codemp,e120ipd.codfil,e120ipd.numped,e120ipd.seqipd,e120ipd.tnspro,e120ipd.codpro,e120ipd.codder,e120ipd.coddep,');
          DmOra.ConsE120Ipd.SQL.Add('e120ipd.codfam,e120ipd.qtdped,e120ipd.qtdfat,e120ipd.qtdcan,e120ipd.qtdabe,e120ipd.unimed,e120ipd.codtpr,');
          DmOra.ConsE120Ipd.SQL.Add('e120ipd.preuni,e120ipd.percom,e120ipd.vlrbru,e120ipd.vlrbco,e120ipd.vlrcom,e120ipd.vlrlpr,e120ipd.vlrliq,');
          DmOra.ConsE120Ipd.SQL.Add('e120ipd.sitipd,e120ipd.usuger,e120ipd.datger,e120ipd.usu_totdsc,e120ipd.usu_vlrori,e120ipd.usu_numcom,e120ped.codrep');
          DmOra.ConsE120Ipd.SQL.Add('from e120ipd');
          DmOra.ConsE120Ipd.SQL.Add('inner join e120ped on e120ped.codemp = e120ipd.codemp and');
          DmOra.ConsE120Ipd.SQL.Add('e120ped.codfil = e120ipd.codfil and');
          DmOra.ConsE120Ipd.SQL.Add('e120ped.numped = e120ipd.numped');
          DmOra.ConsE120Ipd.SQL.Add('where');
          DmOra.ConsE120Ipd.SQL.Add('e120ped.codemp = :codemp and');
          DmOra.ConsE120Ipd.SQL.Add('e120ped.codfil = :codfil and');
          DmOra.ConsE120Ipd.SQL.Add('e120ped.numped = :numped and');
          DmOra.ConsE120Ipd.SQL.Add('e120ipd.seqipd = :seqipd');
          DmOra.ConsE120Ipd.SQL.Add('order by e120ped.usu_numcom desc');
          DmOra.ConsE120Ipd.Parameters.ParamByName('codemp').Value := DmFireRep.ConsProPedCODEMP.Value;
          DmOra.ConsE120Ipd.Parameters.ParamByName('codfil').Value := DmFireRep.ConsProPedCODFIL.Value;
          DmOra.ConsE120Ipd.Parameters.ParamByName('numped').Value := DmFireRep.ConsProPedNUMPED.Value;
          DmOra.ConsE120Ipd.Parameters.ParamByName('seqipd').Value := DmFireRep.ConsProPedSEQIPD.Value;
          DmOra.ConsE120Ipd.Open;
          if not DmOra.ConsE120Ipd.IsEmpty then //é porque achou o produto
             begin
               DmFireRep.AtuE120Ipd.Close;
               DmFireRep.AtuE120Ipd.ParamByName('CODREP').Value := DmOra.ConsE120IpdCODREP.Value;
               DmFireRep.AtuE120Ipd.ParamByName('TNSPRO').Value := DmOra.ConsE120IpdTNSPRO.Value;
               DmFireRep.AtuE120Ipd.ParamByName('CODPRO').Value := DmOra.ConsE120IpdCODPRO.Value;
               DmFireRep.AtuE120Ipd.ParamByName('CODDER').Value := DmOra.ConsE120IpdCODDER.Value;
               DmFireRep.AtuE120Ipd.ParamByName('CODFAM').Value := DmOra.ConsE120IpdCODFAM.Value;
               DmFireRep.AtuE120Ipd.ParamByName('CODDEP').Value := DmOra.ConsE120IpdCODDEP.Value;
               DmFireRep.AtuE120Ipd.ParamByName('QTDPED').Value := DmOra.ConsE120IpdQTDPED.AsFloat;
               DmFireRep.AtuE120Ipd.ParamByName('QTDFAT').Value := DmOra.ConsE120IpdQTDFAT.AsFloat;
               DmFireRep.AtuE120Ipd.ParamByName('QTDCAN').Value := DmOra.ConsE120IpdQTDCAN.AsFloat;
               DmFireRep.AtuE120Ipd.ParamByName('QTDABE').Value := DmOra.ConsE120IpdQTDABE.AsFloat;
               DmFireRep.AtuE120Ipd.ParamByName('UNIMED').Value := DmOra.ConsE120IpdUNIMED.Value;
               DmFireRep.AtuE120Ipd.ParamByName('CODTPR').Value := DmOra.ConsE120IpdCODTPR.Value;
               DmFireRep.AtuE120Ipd.ParamByName('PREUNI').Value := DmOra.ConsE120IpdPREUNI.AsFloat;
               DmFireRep.AtuE120Ipd.ParamByName('PERCOM').Value := DmOra.ConsE120IpdPERCOM.AsFloat;
               DmFireRep.AtuE120Ipd.ParamByName('VLRBRU').Value := DmOra.ConsE120IpdVLRBRU.AsFloat;
               DmFireRep.AtuE120Ipd.ParamByName('VLRBCO').Value := DmOra.ConsE120IpdVLRBCO.AsFloat;
               DmFireRep.AtuE120Ipd.ParamByName('VLRCOM').Value := DmOra.ConsE120IpdVLRCOM.AsFloat;
               DmFireRep.AtuE120Ipd.ParamByName('VLRLPR').Value := DmOra.ConsE120IpdVLRLPR.AsFloat;
               DmFireRep.AtuE120Ipd.ParamByName('VLRLIQ').Value := DmOra.ConsE120IpdVLRLIQ.AsFloat;
               DmFireRep.AtuE120Ipd.ParamByName('SITIPD').Value := DmOra.ConsE120IpdSITIPD.Value;
               DmFireRep.AtuE120Ipd.ParamByName('USUGER').Value := DmOra.ConsE120IpdUSUGER.AsInteger;
               DmFireRep.AtuE120Ipd.ParamByName('DATGER').Value := DmOra.ConsE120IpdDATGER.Value;
               DmFireRep.AtuE120Ipd.ParamByName('TOTDESC').Value := DmOra.ConsE120IpdUSU_TOTDSC.Value;
               DmFireRep.AtuE120Ipd.ParamByName('VLRORI').Value := DmOra.ConsE120IpdUSU_VLRORI.Value;
               DmFireRep.AtuE120Ipd.ParamByName('CODEMP').Value := DmOra.ConsE120IpdCODEMP.Value;
               DmFireRep.AtuE120Ipd.ParamByName('CODFIL').Value := DmOra.ConsE120IpdCODFIL.Value;
               DmFireRep.AtuE120Ipd.ParamByName('NUMPED').Value := DmOra.ConsE120IpdNUMPED.Value;
               DmFireRep.AtuE120Ipd.ParamByName('SEQIPD').Value := DmOra.ConsE120IpdSEQIPD.Value;
               DmFireRep.AtuE120Ipd.ExecQuery;
             end
          else
             begin
               DmFireRep.Sql.Close;
               DmFireRep.Sql.SQL.Clear;
               DmFireRep.Sql.SQL.Add('DELETE FROM USU120IPD WHERE NUMPED = :NUMPED');
               DmFireRep.Sql.SQL.Add('                        AND SEQIPD = :SEQIPD');
               DmFireRep.Sql.ParamByName('NUMPED').Value := DmFireRep.ConsProPedNUMPED.Value;
               DmFireRep.Sql.ParamByName('SEQIPD').Value := DmFireRep.ConsProPedSEQIPD.Value;
               DmFireRep.Sql.ExecQuery;

               DmFireRep.Sql.Close;
               DmFireRep.Sql.SQL.Clear;
               DmFireRep.Sql.SQL.Add('DELETE FROM E120IPD WHERE NUMPED = :NUMPED');
               DmFireRep.Sql.SQL.Add('                      AND SEQIPD = :SEQIPD');
               DmFireRep.Sql.ParamByName('NUMPED').Value := DmFireRep.ConsProPedNUMPED.Value;
               DmFireRep.Sql.ParamByName('SEQIPD').Value := DmFireRep.ConsProPedSEQIPD.Value;
               DmFireRep.Sql.ExecQuery;
             end;
          vnContReg := vnContReg - 1;
          DmFireRep.ConsProPed.Next;
       end;
    DmFireRep.ibtTransacao.CommitRetaining;
    Application.ProcessMessages;

    //cunsta as cores dos produtos na base web

    DmFireRep.ConsCoresPed.Close;
    DmFireRep.ConsCoresPed.Open;
    DmFireRep.ConsCoresPed.Last;
    DmFireRep.ConsCoresPed.First;
    vnQtdReg := DmFireRep.ConsCoresPed.RecordCount;
    vnContReg := vnQtdReg;
    while not DmFireRep.ConsCoresPed.Eof do
       begin
          MemoStatusPed.Lines.Add('Atualizando cores dos pedidos na base web.. '+IntToStr(vnContReg)+'/'+IntToStr(vnQtdReg));
          DmOra.ConsUsu_T120Ipd.Close;
          DmOra.ConsUsu_T120Ipd.SQL.Clear;
          DmOra.ConsUsu_T120Ipd.SQL.Add('select usu_t120ipd.* from usu_t120ipd');
          DmOra.ConsUsu_T120Ipd.SQL.Add('where');
          DmOra.ConsUsu_T120Ipd.SQL.Add('usu_t120ipd.usu_codemp = :codemp and');
          DmOra.ConsUsu_T120Ipd.SQL.Add('usu_t120ipd.usu_codfil = :codfil and');
          DmOra.ConsUsu_T120Ipd.SQL.Add('usu_t120ipd.usu_numped = :numped and');
          DmOra.ConsUsu_T120Ipd.SQL.Add('usu_t120ipd.usu_seqipd = :seqipd and');
          DmOra.ConsUsu_T120Ipd.SQL.Add('usu_t120ipd.usu_seqite = :seqite');
          DmOra.ConsUsu_T120Ipd.Parameters.ParamByName('codemp').Value := DmFireRep.ConsCoresPedCODEMP.Value;
          DmOra.ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := DmFireRep.ConsCoresPedCODFIL.Value;
          DmOra.ConsUsu_T120Ipd.Parameters.ParamByName('numped').Value := DmFireRep.ConsCoresPedNUMPED.Value;
          DmOra.ConsUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := DmFireRep.ConsCoresPedSEQIPD.Value;
          DmOra.ConsUsu_T120Ipd.Parameters.ParamByName('seqite').Value := DmFireRep.ConsCoresPedSEQITE.Value;
          DmOra.ConsUsu_T120Ipd.Open;
          if not DmOra.ConsUsu_T120Ipd.IsEmpty then
             begin
               DmFireRep.AtuUsu120Ipd.Close;
               //DmMySql.AtuUsu120Ipd.ParamByName('CODREP').Value := DmOra.ConsUsu_T120IpdUSU_CODEMP.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('QTDCOR').Value := DmOra.ConsUsu_T120IpdUSU_QTDCOR.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('QTDABE').Value := DmOra.ConsUsu_T120IpdUSU_QTDABE.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('QTDCAN').Value := DmOra.ConsUsu_T120IpdUSU_QTDCAN.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('TIPCMB').Value := DmOra.ConsUsu_T120IpdUSU_TIPCMB.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('COR001').Value := DmOra.ConsUsu_T120IpdUSU_COR001.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('COR002').Value := DmOra.ConsUsu_T120IpdUSU_COR002.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('CODPRO').Value := DmOra.ConsUsu_T120IpdUSU_CODPRO.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('CODDER').Value := DmOra.ConsUsu_T120IpdUSU_CODDER.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('TECTRA').Value := DmOra.ConsUsu_T120IpdUSU_TECTRA.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('PRECAR').Value := DmOra.ConsUsu_T120IpdUSU_PRECAR.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('CODEMP').Value := DmOra.ConsUsu_T120IpdUSU_CODEMP.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('CODFIL').Value := DmOra.ConsUsu_T120IpdUSU_CODFIL.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('NUMPED').Value := DmOra.ConsUsu_T120IpdUSU_NUMPED.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('SEQIPD').Value := DmOra.ConsUsu_T120IpdUSU_SEQIPD.Value;
               DmFireRep.AtuUsu120Ipd.ParamByName('SEQITE').Value := DmOra.ConsUsu_T120IpdUSU_SEQITE.Value;
               DmFireRep.AtuUsu120Ipd.ExecQuery;
             end
          else
             begin
                DmFireRep.Sql.Close;
                DmFireRep.Sql.SQL.Clear;
                DmFireRep.Sql.SQL.Add('DELETE FROM USU120IPD WHERE NUMPED = :NUMPED');
                DmFireRep.Sql.SQL.Add('                        AND SEQIPD = :SEQIPD');
                DmFireRep.Sql.SQL.Add('                        AND SEQITE = :SEQITE');
                DmFireRep.Sql.ParamByName('NUMPED').Value := DmFireRep.ConsCoresPedNUMPED.Value;
                DmFireRep.Sql.ParamByName('SEQIPD').Value := DmFireRep.ConsCoresPedSEQIPD.Value;
                DmFireRep.Sql.ParamByName('SEQITE').Value := DmFireRep.ConsCoresPedSEQITE.Value;
                DmFireRep.Sql.ExecQuery;

             end;
         vnContReg := vnContReg - 1;
         DmFireRep.ConsCoresPed.Next;
       end;
       DmFireRep.ibtTransacao.CommitRetaining;
       MemoStatusPed.Lines.Add('Fim da atualização da base web..');
       Application.ProcessMessages;
       {****************************************
              FIM DO TRABALHO NA BASE WEB
       *****************************************}

       {******************************************************************************
        PERCORRE OS PEDIDOS QUE ESTAO COM NUMERO DE CONTROE 0(ZERO) NA BASE DO SAPIENS
       *******************************************************************************}

        DmOra.ConsE120Ped.Close;
        DmOra.ConsE120Ped.SQL.Clear;
        DmOra.ConsE120Ped.SQL.Add('select e120ped.codemp,e120ped.codfil,e120ped.numped,e120ped.codrep,e120ped.tnspro,e120ped.datemi,e120ped.horemi,');
        DmOra.ConsE120Ped.SQL.Add('e120ped.codcli,e120ped.codcpg,e120ped.qtdabe,e120ped.vlrbco,e120ped.vlrcom,e120ped.vlrliq,');
        DmOra.ConsE120Ped.SQL.Add('e120ped.qtdori,e120ped.vlrori,e120ped.sitped,e120ped.usuger,e120ped.datger,e120ped.usufec,');
        DmOra.ConsE120Ped.SQL.Add('e120ped.datfec,e120ped.usu_numcom,e120ped.usu_precar');
        DmOra.ConsE120Ped.SQL.Add('from e120ped');
        DmOra.ConsE120Ped.SQL.Add('where');
        DmOra.ConsE120Ped.SQL.Add(' e120ped.tnspro in (''90100'',''90106'',''90160'') and');
        DmOra.ConsE120Ped.SQL.Add(' e120ped.sitped in (1,2,3,6,7,8,9) and');
        DmOra.ConsE120Ped.SQL.Add(' e120ped.usu_numcom = 0 and');
        DmOra.ConsE120Ped.SQL.Add(' e120ped.codemp = 1 and');
        DmOra.ConsE120Ped.SQL.Add(' e120ped.codfil = 1 ');
        //DmOra.ConsE120Ped.SQL.Add('  and e120ped.codREP in (11,12)');  //essa linha é temporario só para desenvolvimento
        DmOra.ConsE120Ped.SQL.Add(' order by e120ped.numped desc');
        DmOra.ConsE120Ped.Open;
        DmOra.ConsE120Ped.Last;
        DmOra.ConsE120Ped.First;
        vnQtdReg := DmOra.ConsE120Ped.RecordCount;
        vnContReg := vnQtdReg;
        while not DmOra.ConsE120Ped.Eof do
           begin
             MemoStatusPed.Lines.Add('Atualizando pedidos com numero de controle 0(zero) '+IntToStr(vnContReg)+'/'+IntToStr(vnQtdReg));
             DmFireRep.CadE120Ped.Open;
             DmFireRep.CadE120Ped.Insert;
             DmFireRep.CadE120PedCODEMP.Value := DmOra.ConsE120PedCODEMP.Value;
             DmFireRep.CadE120PedCODFIL.Value := DmOra.ConsE120PedCODFIL.Value;
             DmFireRep.CadE120PedNUMPED.Value := DmOra.ConsE120PedNUMPED.Value;
             DmFireRep.CadE120PedCODREP.Value := DmOra.ConsE120PedCODREP.Value;
             DmFireRep.CadE120PedCODCLI.Value := DmOra.ConsE120PedCODCLI.Value;
             DmFireRep.CadE120PedTNSPRO.Value := DmOra.ConsE120PedTNSPRO.Value;
             DmFireRep.CadE120PedDATEMI.Value := DmOra.ConsE120PedDATEMI.Value;
             DmFireRep.CadE120PedCODCPG.Value := DmOra.ConsE120PedCODCPG.Value;
             DmFireRep.CadE120PedQTDORI.Value := DmOra.ConsE120PedQTDORI.AsFloat;
             DmFireRep.CadE120PedQTDABE.Value := DmOra.ConsE120PedQTDABE.AsFloat;
             DmFireRep.CadE120PedVLRBCO.Value := DmOra.ConsE120PedVLRBCO.Value;
             DmFireRep.CadE120PedVLRCOM.Value := DmOra.ConsE120PedVLRCOM.Value;
             DmFireRep.CadE120PedVLRLIQ.Value := DmOra.ConsE120PedVLRLIQ.Value;
             DmFireRep.CadE120PedVLRORI.Value := DmOra.ConsE120PedVLRORI.Value;
             DmFireRep.CadE120PedSITPED.Value := DmOra.ConsE120PedSITPED.AsString;
             DmFireRep.CadE120PedUSUGER.Value := DmOra.ConsE120PedUSUGER.AsInteger;
             DmFireRep.CadE120PedDATGER.Value := DmOra.ConsE120PedDATGER.Value;
             DmFireRep.CadE120PedPEDCON.Value := 'S';
             DmFireRep.CadE120PedDATCON.Value := DmOra.ConsE120PedDATGER.Value;
             DmFireRep.CadE120PedUSUCON.Value := DmOra.ConsE120PedUSUGER.AsInteger;
             DmFireRep.CadE120PedPRECAR.Value := DmOra.ConsE120PedUSU_PRECAR.Value;

             DmFireRep.ConsSql.Close;
             DmFireRep.ConsSql.SQL.Clear;
             DmFireRep.ConsSql.SQL.Add(' SELECT NCAI,NCFI FROM E100USU WHERE CODREP = :CODREP ');
             DmFireRep.ConsSql.ParamByName('CODREP').Value := DmOra.ConsE120PedCODREP.Value;
             DmFireRep.ConsSql.Open;

              if DmFireRep.ConsSql.FieldByName('NCAI').AsInteger = DmFireRep.ConsSql.FieldByName('NCFI').AsInteger then
                 begin
                   DmFireRep.UltimaFaixaNumCon.Close;
                   DmFireRep.UltimaFaixaNumCon.Open;
                   if DmFireRep.UltimaFaixaNumConULTIMA_I.Value > DmFireRep.UltimaFaixaNumConULTIMA_E.Value then
                      begin
                        vnNovaFaixaNumCon := DmFireRep.UltimaFaixaNumConULTIMA_I.Value + 1;
                      end
                   else
                   if DmFireRep.UltimaFaixaNumConULTIMA_E.Value > DmFireRep.UltimaFaixaNumConULTIMA_I.Value then
                      begin
                        vnNovaFaixaNumCon := DmFireRep.UltimaFaixaNumConULTIMA_E.Value + 1;
                      end;

                   DmFireRep.CadE100Usu.Close;
                   DmFireRep.CadE100Usu.ParamByName('CODREP').Value := DmOra.ConsE120PedCODREP.Value;
                   DmFireRep.CadE100Usu.Open;
                   if not DmFireRep.CadE100Usu.IsEmpty then
                      begin
                        DmFireRep.CadE100Usu.Edit;
                        DmFireRep.CadE100UsuNCII.Value := vnNovaFaixaNumCon;
                        DmFireRep.CadE100UsuNCFI.Value := vnNovaFaixaNumCon + 500;
                        DmFireRep.CadE100UsuNCAI.Value := vnNovaFaixaNumCon;
                        DmFireRep.CadE100Usu.Post;
                      end;

                   DmFireRep.CadE120PedNUMCON.Value := DmFireRep.CadE100UsuNCAI.Value + 1;
                 end
              else
                begin
                  DmFireRep.CadE120PedNUMCON.Value := DmFireRep.ConsSql.FieldByName('NCAI').AsInteger + 1;
                end;

             DmFireRep.CadE120Ped.Post;

             DmFireRep.Sql.Close;
             DmFireRep.Sql.SQL.Clear;
             DmFireRep.Sql.SQL.Add(' UPDATE E100USU SET NCAI = :NCAI WHERE CODREP = :CODREP');
             DmFireRep.Sql.ParamByName('CODREP').Value := DmOra.ConsE120PedCODREP.Value;
             DmFireRep.Sql.ParamByName('NCAI').Value := DmFireRep.CadE120PedNUMCON.Value;
             DmFireRep.Sql.ExecQuery;

             DmOra.ConsSql.Close;
             DmOra.ConsSql.SQL.Clear;
             DmOra.ConsSql.SQL.Add('UPDATE E120PED SET USU_NUMCOM = :NUMCOM');
             DmOra.ConsSql.SQL.Add(' WHERE');
             DmOra.ConsSql.SQL.Add(' CODEMP = :CODEMP AND');
             DmOra.ConsSql.SQL.Add(' CODFIL = :CODFIL AND');
             DmOra.ConsSql.SQL.Add(' NUMPED = :NUMPED');
             DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := DmOra.ConsE120PedCODEMP.Value;
             DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := DmOra.ConsE120PedCODFIL.Value;
             DmOra.ConsSql.Parameters.ParamByName('NUMPED').Value := DmOra.ConsE120PedNUMPED.Value;
             DmOra.ConsSql.Parameters.ParamByName('NUMCOM').Value := DmFireRep.CadE120PedNUMCON.Value;
             DmOra.ConsSql.ExecSQL;


             vnContReg := vnContReg - 1;
             DmOra.ConsE120Ped.Next;
           end;
        DmFireRep.ibtTransacao.CommitRetaining;
     Application.ProcessMessages;
    {*********************************************************************************
     PERCORRE OS PRODUTOS DE PEDIDOS COM NUMERO DE CONTROLE 0(ZERO) NA BASE DO SAPIENS
    **********************************************************************************}

    DmOra.ConsE120Ipd.Close;
    DmOra.ConsE120Ipd.SQL.Clear;
    DmOra.ConsE120Ipd.SQL.Add('select e120ipd.codemp,e120ipd.codfil,e120ipd.numped,e120ipd.seqipd,e120ipd.tnspro,e120ipd.codpro,e120ipd.codder,');
    DmOra.ConsE120Ipd.SQL.Add('e120ipd.codfam,e120ipd.qtdped,e120ipd.qtdfat,e120ipd.qtdcan,e120ipd.qtdabe,e120ipd.unimed,e120ipd.codtpr,e120ipd.coddep,');
    DmOra.ConsE120Ipd.SQL.Add('e120ipd.preuni,e120ipd.percom,e120ipd.vlrbru,e120ipd.vlrbco,e120ipd.vlrcom,e120ipd.vlrlpr,e120ipd.vlrliq,');
    DmOra.ConsE120Ipd.SQL.Add('e120ipd.sitipd,e120ipd.usuger,e120ipd.datger,e120ipd.usu_totdsc,e120ipd.usu_vlrori,e120ipd.usu_numcom,e120ped.codrep');
    DmOra.ConsE120Ipd.SQL.Add('from e120ipd');
    DmOra.ConsE120Ipd.SQL.Add('inner join e120ped on e120ped.codemp = e120ipd.codemp and');
    DmOra.ConsE120Ipd.SQL.Add('e120ped.codfil = e120ipd.codfil and');
    DmOra.ConsE120Ipd.SQL.Add('e120ped.numped = e120ipd.numped');
    DmOra.ConsE120Ipd.SQL.Add('where');
    DmOra.ConsE120Ipd.SQL.Add(' e120ipd.codemp = :codemp and');
    DmOra.ConsE120Ipd.SQL.Add(' e120ipd.codfil = :codfil and');
    DmOra.ConsE120Ipd.SQL.Add(' e120ipd.usu_numcom = 0 and');
    DmOra.ConsE120Ipd.SQL.Add(' e120ped.sitped in (1,2,3,6,7,8,9) and');
    DmOra.ConsE120Ipd.SQL.Add(' e120ipd.tnspro in (''90100'',''90106'',''90160'')');
    //DmOra.ConsE120Ipd.SQL.Add(' and e120ped.codrep in (11,12)'); //essa linha é temporario só para desenvolvimento
    DmOra.ConsE120Ipd.SQL.Add(' order by e120ipd.numped');
    DmOra.ConsE120Ipd.Parameters.ParamByName('codemp').Value := 1;
    DmOra.ConsE120Ipd.Parameters.ParamByName('codfil').Value := 1;
    DmOra.ConsE120Ipd.Open;
    DmOra.ConsE120Ipd.Last;
    DmOra.ConsE120Ipd.First;
    vnQtdReg := DmOra.ConsE120Ipd.RecordCount;
    vnContReg := vnQtdReg;
    while not DmOra.ConsE120Ipd.eof do
      begin
         MemoStatusPed.Lines.Add('Atualizando produtos de pedidos com numero de controle 0(zero) '+IntToStr(vnContReg)+'/'+IntToStr(vnQtdReg));
         DmFireRep.ConsSql.Close;
         DmFireRep.ConsSql.SQL.Clear;
         DmFireRep.ConsSql.SQL.Add('SELECT NUMPED,NUMCON ');
         DmFireRep.ConsSql.SQL.Add(' FROM E120PED');
         DmFireRep.ConsSql.SQL.Add(' WHERE');
         DmFireRep.ConsSql.SQL.Add(' NUMPED = :NUMPED');
         DmFireRep.ConsSql.ParamByName('NUMPED').Value := DmOra.ConsE120IpdNUMPED.Value;
         DmFireRep.ConsSql.Open;
         if not DmFireRep.ConsSql.IsEmpty then
            begin
              DmFireRep.CadE120Ipd.Close;
              DmFireRep.CadE120Ipd.ParamByName('CODEMP').Value := DmOra.ConsE120IpdCODEMP.Value;
              DmFireRep.CadE120Ipd.ParamByName('CODFIL').Value := DmOra.ConsE120IpdCODFIL.Value;
              DmFireRep.CadE120Ipd.ParamByName('NUMCON').Value := DmFireRep.ConsSql.FieldByName('NUMCON').AsInteger;
              DmFireRep.CadE120Ipd.ParamByName('SEQIPD').Value := DmOra.ConsE120IpdSEQIPD.Value;
              DmFireRep.CadE120Ipd.Open;
              if DmFireRep.CadE120Ipd.IsEmpty then
                 begin
                    DmFireRep.CadE120Ipd.Insert;
                    DmFireRep.CadE120IpdCODEMP.Value := DmOra.ConsE120IpdCODEMP.Value;
                    DmFireRep.CadE120IpdCODFIL.Value := DmOra.ConsE120IpdCODFIL.Value;
                    DmFireRep.CadE120IpdNUMPED.Value := DmOra.ConsE120IpdNUMPED.Value;
                    DmFireRep.CadE120IpdNUMCON.Value := DmFireRep.ConsSql.FieldByName('NUMCON').AsInteger;
                    DmFireRep.CadE120IpdCODREP.Value := DmOra.ConsE120IpdCODREP.Value;
                    DmFireRep.CadE120IpdSEQIPD.Value := DmOra.ConsE120IpdSEQIPD.Value;
                    DmFireRep.CadE120IpdTNSPRO.Value := DmOra.ConsE120IpdTNSPRO.Value;
                    DmFireRep.CadE120IpdCODPRO.Value := DmOra.ConsE120IpdCODPRO.Value;
                    DmFireRep.CadE120IpdCODDER.Value := DmOra.ConsE120IpdCODDER.Value;
                    DmFireRep.CadE120IpdCODFAM.Value := DmOra.ConsE120IpdCODFAM.Value;
                    DmFireRep.CadE120IpdCODDEP.Value := DmOra.ConsE120IpdCODDEP.Value;
                    DmFireRep.CadE120IpdQTDPED.Value := DmOra.ConsE120IpdQTDPED.AsInteger;
                    DmFireRep.CadE120IpdQTDFAT.Value := DmOra.ConsE120IpdQTDFAT.AsInteger;
                    DmFireRep.CadE120IpdQTDCAN.Value := DmOra.ConsE120IpdQTDCAN.AsInteger;
                    DmFireRep.CadE120IpdQTDABE.Value := DmOra.ConsE120IpdQTDABE.AsInteger;
                    DmFireRep.CadE120IpdUNIMED.Value := DmOra.ConsE120IpdUNIMED.Value;
                    DmFireRep.CadE120IpdCODTPR.Value := DmOra.ConsE120IpdCODTPR.Value;
                    DmFireRep.CadE120IpdPREUNI.Value := DmOra.ConsE120IpdPREUNI.AsFloat;
                    DmFireRep.CadE120IpdPERCOM.Value := DmOra.ConsE120IpdPERCOM.Value;
                    DmFireRep.CadE120IpdVLRBRU.Value := DmOra.ConsE120IpdVLRBRU.Value;
                    DmFireRep.CadE120IpdVLRBCO.Value := DmOra.ConsE120IpdVLRBCO.Value;
                    DmFireRep.CadE120IpdVLRCOM.Value := DmOra.ConsE120IpdVLRCOM.Value;
                    DmFireRep.CadE120IpdVLRLPR.Value := DmOra.ConsE120IpdVLRLPR.Value;
                    DmFireRep.CadE120IpdVLRLIQ.Value := DmOra.ConsE120IpdVLRLIQ.Value;
                    DmFireRep.CadE120IpdSITIPD.Value := DmOra.ConsE120IpdSITIPD.AsString;
                    DmFireRep.CadE120IpdUSUGER.Value := DmOra.ConsE120IpdUSUGER.AsInteger;
                    DmFireRep.CadE120IpdDATGER.Value := DmOra.ConsE120IpdDATGER.Value;
                    DmFireRep.CadE120IpdTOTDESC.Value := DmOra.ConsE120IpdUSU_TOTDSC.Value;
                    DmFireRep.CadE120IpdVLRORI.Value := DmOra.ConsE120IpdUSU_VLRORI.Value;
                    DmFireRep.CadE120Ipd.Post;
                 end
              else
                 begin
                    DmFireRep.CadE120Ipd.Edit;
                    DmFireRep.CadE120IpdNUMPED.Value := DmOra.ConsE120IpdNUMPED.Value;
                    DmFireRep.CadE120IpdCODREP.Value := DmOra.ConsE120IpdCODREP.Value;
                    DmFireRep.CadE120IpdTNSPRO.Value := DmOra.ConsE120IpdTNSPRO.Value;
                    DmFireRep.CadE120IpdCODPRO.Value := DmOra.ConsE120IpdCODPRO.Value;
                    DmFireRep.CadE120IpdCODDER.Value := DmOra.ConsE120IpdCODDER.Value;
                    DmFireRep.CadE120IpdCODFAM.Value := DmOra.ConsE120IpdCODFAM.Value;
                    DmFireRep.CadE120IpdCODDEP.Value := DmOra.ConsE120IpdCODDEP.Value;
                    DmFireRep.CadE120IpdQTDPED.Value := DmOra.ConsE120IpdQTDPED.AsInteger;
                    DmFireRep.CadE120IpdQTDFAT.Value := DmOra.ConsE120IpdQTDFAT.AsInteger;
                    DmFireRep.CadE120IpdQTDCAN.Value := DmOra.ConsE120IpdQTDCAN.AsInteger;
                    DmFireRep.CadE120IpdQTDABE.Value := DmOra.ConsE120IpdQTDABE.AsInteger;
                    DmFireRep.CadE120IpdUNIMED.Value := DmOra.ConsE120IpdUNIMED.Value;
                    DmFireRep.CadE120IpdCODTPR.Value := DmOra.ConsE120IpdCODTPR.Value;
                    DmFireRep.CadE120IpdPREUNI.Value := DmOra.ConsE120IpdPREUNI.AsFloat;
                    DmFireRep.CadE120IpdPERCOM.Value := DmOra.ConsE120IpdPERCOM.Value;
                    DmFireRep.CadE120IpdVLRBRU.Value := DmOra.ConsE120IpdVLRBRU.Value;
                    DmFireRep.CadE120IpdVLRBCO.Value := DmOra.ConsE120IpdVLRBCO.Value;
                    DmFireRep.CadE120IpdVLRCOM.Value := DmOra.ConsE120IpdVLRCOM.Value;
                    DmFireRep.CadE120IpdVLRLPR.Value := DmOra.ConsE120IpdVLRLPR.Value;
                    DmFireRep.CadE120IpdVLRLIQ.Value := DmOra.ConsE120IpdVLRLIQ.Value;
                    DmFireRep.CadE120IpdSITIPD.Value := DmOra.ConsE120IpdSITIPD.AsString;
                    DmFireRep.CadE120IpdUSUGER.Value := DmOra.ConsE120IpdUSUGER.AsInteger;
                    DmFireRep.CadE120IpdDATGER.Value := DmOra.ConsE120IpdDATGER.Value;
                    DmFireRep.CadE120IpdTOTDESC.Value := DmOra.ConsE120IpdUSU_TOTDSC.Value;
                    DmFireRep.CadE120IpdVLRORI.Value := DmOra.ConsE120IpdUSU_VLRORI.Value;
                    DmFireRep.CadE120Ipd.Post;
                 end;

              DmOra.ConsSql.Close;
              DmOra.ConsSql.SQL.Clear;
              DmOra.ConsSql.SQL.Add('UPDATE E120IPD SET USU_NUMCOM =  :NUMCOM');
              DmOra.ConsSql.SQL.Add(' WHERE');
              DmOra.ConsSql.SQL.Add(' CODEMP = :CODEMP AND');
              DmOra.ConsSql.SQL.Add(' CODFIL = :CODFIL AND');
              DmOra.ConsSql.SQL.Add(' NUMPED = :NUMPED AND');
              DmOra.ConsSql.SQL.Add(' SEQIPD = :SEQIPD');
              DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := DmOra.ConsE120IpdCODEMP.Value;
              DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := DmOra.ConsE120IpdCODFIL.Value;
              DmOra.ConsSql.Parameters.ParamByName('NUMPED').Value := DmOra.ConsE120IpdNUMPED.Value;
              DmOra.ConsSql.Parameters.ParamByName('SEQIPD').Value := DmOra.ConsE120IpdSEQIPD.Value;
              DmOra.ConsSql.Parameters.ParamByName('NUMCOM').Value := DmFireRep.ConsSql.FieldByName('NUMCON').AsInteger;
              DmOra.ConsSql.ExecSQL;

            end;

        vnContReg := vnContReg - 1;
        DmOra.ConsE120Ipd.Next;
      end;
      DmFireRep.ibtTransacao.CommitRetaining;
      Application.ProcessMessages;
      {*******************************
             PERCORRE AS CORES
      *******************************}

      DmOra.ConsUsu_T120Ipd.Close;
      DmOra.ConsUsu_T120Ipd.SQL.Clear;
      DmOra.ConsUsu_T120Ipd.SQL.Add('select usu_t120ipd.*,e120ped.codrep from usu_t120ipd');
      DmOra.ConsUsu_T120Ipd.SQL.Add('inner join e120ped on e120ped.codemp = usu_t120ipd.usu_codemp and');
      DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.codfil = usu_t120ipd.usu_codfil and');
      DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.numped = usu_t120ipd.usu_numped');
      DmOra.ConsUsu_T120Ipd.SQL.Add('inner join e120ipd on e120ipd.codemp = usu_t120ipd.usu_codemp and');
      DmOra.ConsUsu_T120Ipd.SQL.Add('                            e120ipd.codfil = usu_t120ipd.usu_codfil and');
      DmOra.ConsUsu_T120Ipd.SQL.Add('                            e120ipd.numped = usu_t120ipd.usu_numped and');
      DmOra.ConsUsu_T120Ipd.SQL.Add('                            e120ipd.seqipd = usu_t120ipd.usu_seqipd');
      DmOra.ConsUsu_T120Ipd.SQL.Add('where');
      DmOra.ConsUsu_T120Ipd.SQL.Add(' USU_T120IPD.USU_NUMCOM = 0 AND');
      DmOra.ConsUsu_T120Ipd.SQL.Add(' E120PED.SITPED IN (1,2,3,6,7,8,9) AND');
      DmOra.ConsUsu_T120Ipd.SQL.Add(' USU_T120IPD.USU_CODFIL = 1');
      DmOra.ConsUsu_T120Ipd.SQL.Add(' and e120ipd.coddep in (''01001'',''01002'',''01025'')');
      DmOra.ConsUsu_T120Ipd.SQL.Add(' and e120ped.usu_numcom <> 0');
     // DmOra.ConsUsu_T120Ipd.SQL.Add(' AND e120ped.codrep in (11,12)'); //essa linha é temporario só para desenvolvimento
      DmOra.ConsUsu_T120Ipd.Open;
      DmOra.ConsUsu_T120Ipd.Last;
      DmOra.ConsUsu_T120Ipd.First;
      vnQtdReg := DmOra.ConsUsu_T120Ipd.RecordCount;
      vnContReg := vnQtdReg;
      while not DmOra.ConsUsu_T120Ipd.Eof do
        begin
           MemoStatusPed.Lines.Add('Atualizando cores de pedidos com numero de controle 0(zero) '+IntToStr(vnContReg)+'/'+IntToStr(vnQtdReg));
           DmFireRep.ConsSql.Close;
           DmFireRep.ConsSql.SQL.Clear;
           DmFireRep.ConsSql.SQL.Add('SELECT NUMPED,NUMCON,CODREP');
           DmFireRep.ConsSql.SQL.Add(' FROM E120IPD');
           DmFireRep.ConsSql.SQL.Add(' WHERE');
           DmFireRep.ConsSql.SQL.Add(' NUMPED = :NUMPED AND');
           DmFireRep.ConsSql.SQL.Add(' SEQIPD = :SEQIPD');
           DmFireRep.ConsSql.ParamByName('NUMPED').Value := DmOra.ConsUsu_T120IpdUSU_NUMPED.Value;
           DmFireRep.ConsSql.ParamByName('SEQIPD').Value := DmOra.ConsUsu_T120IpdUSU_SEQIPD.Value;
           DmFireRep.ConsSql.Open;
           if not DmFireRep.ConsSql.IsEmpty then
              begin
                DmFireRep.CadUsu120Ipd.Close;
                DmFireRep.CadUsu120Ipd.ParamByName('CODEMP').Value := DmOra.ConsUsu_T120IpdUSU_CODEMP.Value;
                DmFireRep.CadUsu120Ipd.ParamByName('CODFIL').Value := DmOra.ConsUsu_T120IpdUSU_CODFIL.Value;
                DmFireRep.CadUsu120Ipd.ParamByName('NUMCON').Value := DmFireRep.ConsSql.FieldByName('NUMCON').AsInteger;
                DmFireRep.CadUsu120Ipd.ParamByName('SEQIPD').Value := DmOra.ConsUsu_T120IpdUSU_SEQIPD.Value;
                DmFireRep.CadUsu120Ipd.ParamByName('SEQITE').Value := DmOra.ConsUsu_T120IpdUSU_SEQITE.Value;
                DmFireRep.CadUsu120Ipd.Open;
                if DmFireRep.CadUsu120Ipd.IsEmpty then
                   begin
                      DmFireRep.CadUsu120Ipd.Insert;
                      DmFireRep.CadUsu120IpdCODEMP.Value := DmOra.ConsUsu_T120IpdUSU_CODEMP.Value;
                      DmFireRep.CadUsu120IpdCODFIL.Value := DmOra.ConsUsu_T120IpdUSU_CODFIL.Value;
                      DmFireRep.CadUsu120IpdNUMCON.Value := DmFireRep.ConsSql.FieldByName('NUMCON').AsInteger;
                      DmFireRep.CadUsu120IpdNUMPED.Value := DmOra.ConsUsu_T120IpdUSU_NUMPED.Value;
                      DmFireRep.CadUsu120IpdSEQIPD.Value := DmOra.ConsUsu_T120IpdUSU_SEQIPD.Value;
                      DmFireRep.CadUsu120IpdSEQITE.Value := DmOra.ConsUsu_T120IpdUSU_SEQITE.Value;
                      DmFireRep.CadUsu120IpdCODREP.Value := DmFireRep.ConsSql.FieldByName('CODREP').AsInteger;
                      DmFireRep.CadUsu120IpdQTDCOR.Value := DmOra.ConsUsu_T120IpdUSU_QTDCOR.Value;
                      DmFireRep.CadUsu120IpdQTDABE.Value := DmOra.ConsUsu_T120IpdUSU_QTDABE.Value;
                      DmFireRep.CadUsu120IpdQTDCAN.Value := DmOra.ConsUsu_T120IpdUSU_QTDCAN.Value;
                      DmFireRep.CadUsu120IpdTIPCMB.Value := DmOra.ConsUsu_T120IpdUSU_TIPCMB.Value;
                      DmFireRep.CadUsu120IpdCOR001.Value := DmOra.ConsUsu_T120IpdUSU_COR001.Value;
                      DmFireRep.CadUsu120IpdCOR002.Value := DmOra.ConsUsu_T120IpdUSU_COR002.Value;
                      DmFireRep.CadUsu120IpdCODPRO.Value := DmOra.ConsUsu_T120IpdUSU_CODPRO.Value;
                      DmFireRep.CadUsu120IpdCODDER.Value := DmOra.ConsUsu_T120IpdUSU_CODDER.Value;
                      DmFireRep.CadUsu120IpdTECTRA.Value := DmOra.ConsUsu_T120IpdUSU_TECTRA.Value;
                      DmFireRep.CadUsu120IpdPRECAR.Value := DmOra.ConsUsu_T120IpdUSU_PRECAR.Value;
                      DmFireRep.CadUsu120Ipd.Post;
                   end
                else
                   begin
                      DmFireRep.CadUsu120Ipd.Edit;
                      DmFireRep.CadUsu120IpdNUMPED.Value := DmOra.ConsUsu_T120IpdUSU_NUMPED.Value;
                      DmFireRep.CadUsu120IpdCODREP.Value := DmFireRep.ConsSql.FieldByName('CODREP').AsInteger;
                      DmFireRep.CadUsu120IpdQTDCOR.Value := DmOra.ConsUsu_T120IpdUSU_QTDCOR.Value;
                      DmFireRep.CadUsu120IpdQTDABE.Value := DmOra.ConsUsu_T120IpdUSU_QTDABE.Value;
                      DmFireRep.CadUsu120IpdQTDCAN.Value := DmOra.ConsUsu_T120IpdUSU_QTDCAN.Value;
                      DmFireRep.CadUsu120IpdTIPCMB.Value := DmOra.ConsUsu_T120IpdUSU_TIPCMB.Value;
                      DmFireRep.CadUsu120IpdCOR001.Value := DmOra.ConsUsu_T120IpdUSU_COR001.Value;
                      DmFireRep.CadUsu120IpdCOR002.Value := DmOra.ConsUsu_T120IpdUSU_COR002.Value;
                      DmFireRep.CadUsu120IpdCODPRO.Value := DmOra.ConsUsu_T120IpdUSU_CODPRO.Value;
                      DmFireRep.CadUsu120IpdCODDER.Value := DmOra.ConsUsu_T120IpdUSU_CODDER.Value;
                      DmFireRep.CadUsu120IpdTECTRA.Value := DmOra.ConsUsu_T120IpdUSU_TECTRA.Value;
                      DmFireRep.CadUsu120IpdPRECAR.Value := DmOra.ConsUsu_T120IpdUSU_PRECAR.Value;
                      DmFireRep.CadUsu120Ipd.Post;
                   end;


                DmOra.ConsSql.Close;
                DmOra.ConsSql.SQL.Clear;
                DmOra.ConsSql.SQL.Add('UPDATE USU_T120IPD SET USU_NUMCOM =  :NUMCOM');
                DmOra.ConsSql.SQL.Add(' WHERE');
                DmOra.ConsSql.SQL.Add(' USU_CODEMP = :CODEMP AND');
                DmOra.ConsSql.SQL.Add(' USU_CODFIL = :CODFIL AND');
                DmOra.ConsSql.SQL.Add(' USU_NUMPED = :NUMPED AND');
                DmOra.ConsSql.SQL.Add(' USU_SEQIPD = :SEQIPD AND');
                DmOra.ConsSql.SQL.Add(' USU_SEQITE = :SEQITE');
                DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := DmOra.ConsUsu_T120IpdUSU_CODEMP.Value;
                DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := DmOra.ConsUsu_T120IpdUSU_CODFIL.Value;
                DmOra.ConsSql.Parameters.ParamByName('NUMPED').Value := DmOra.ConsUsu_T120IpdUSU_NUMPED.Value;
                DmOra.ConsSql.Parameters.ParamByName('SEQIPD').Value := DmOra.ConsUsu_T120IpdUSU_SEQIPD.Value;
                DmOra.ConsSql.Parameters.ParamByName('SEQITE').Value := DmOra.ConsUsu_T120IpdUSU_SEQITE.Value;
                DmOra.ConsSql.Parameters.ParamByName('NUMCOM').Value := DmFireRep.ConsSql.FieldByName('NUMCON').AsInteger;
                DmOra.ConsSql.ExecSQL;

              end;

          vnContReg := vnContReg - 1;
          DmOra.ConsUsu_T120Ipd.Next;
        end;
        DmFireRep.ibtTransacao.CommitRetaining;
         Application.ProcessMessages;
        {*************************************
               PERCORRE AS OBSERVAÇÕES
        **************************************}

        DmOra.ConsE120Obs.Close;
        DmOra.ConsE120Obs.SQL.Clear;
        DmOra.ConsE120Obs.SQL.Add('select e120obs.codemp,e120obs.codfil,e120obs.numped,e120obs.seqobs,e120obs.tipobs,e120obs.obsped,');
        DmOra.ConsE120Obs.SQL.Add('e120obs.obsusu,e120obs.obsdat,e120obs.sitobs,e120obs.usu_numcom,e120ped.codrep');
        DmOra.ConsE120Obs.SQL.Add(' from e120obs');
        DmOra.ConsE120Obs.SQL.Add('inner join e120ped on e120ped.codemp = e120obs.codemp and');
        DmOra.ConsE120Obs.SQL.Add('e120ped.codfil = e120obs.codfil and');
        DmOra.ConsE120Obs.SQL.Add('e120ped.numped = e120obs.numped');
        DmOra.ConsE120Obs.SQL.Add(' where');
       // DmOra.ConsE120Obs.SQL.Add(' e120ped.codrep in (11,12) and'); //so para desenvolvimento
        DmOra.ConsE120Obs.SQL.Add(' e120ped.tnspro in (''90100'',''90106'',''90160'') and');
        DmOra.ConsE120Obs.SQL.Add(' e120ped.sitped in (1,2,3,6,8,9) and');
        DmOra.ConsE120Obs.SQL.Add(' e120ped.codemp = 1 and');
        DmOra.ConsE120Obs.SQL.Add(' e120ped.codfil = 1 and');
        DmOra.ConsE120Obs.SQL.Add(' e120obs.usu_numcom = 0 and');
        DmOra.ConsE120Obs.SQL.Add(' e120obs.tipobs = ''M''');
        DmOra.ConsE120Obs.Open;
        DmOra.ConsE120Obs.Last;
        DmOra.ConsE120Obs.First;
        vnQtdReg := DmOra.ConsE120Obs.RecordCount;
        vnContReg := vnQtdReg;
        while not DmOra.ConsE120Obs.Eof do
          begin
              MemoStatusPed.Lines.Add('Atualizando observações de pedidos com numero de controle 0(zero) '+IntToStr(vnContReg)+'/'+IntToStr(vnQtdReg));
              DmFireRep.ConsSql.Close;
              DmFireRep.ConsSql.SQL.Clear;
              DmFireRep.ConsSql.SQL.Add('SELECT NUMPED,NUMCON,CODREP');
              DmFireRep.ConsSql.SQL.Add(' FROM E120PED');
              DmFireRep.ConsSql.SQL.Add(' WHERE');
              DmFireRep.ConsSql.SQL.Add(' NUMPED = :NUMPED');
              DmFireRep.ConsSql.ParamByName('NUMPED').Value := DmOra.ConsE120ObsNUMPED.Value;
              DmFireRep.ConsSql.Open;
              if not DmFireRep.ConsSql.IsEmpty then
                 begin
                   DmFireRep.CadE120Obs.Open;
                   DmFireRep.CadE120Obs.Insert;
                   DmFireRep.CadE120ObsCODEMP.Value := DmOra.ConsE120ObsCODEMP.Value;
                   DmFireRep.CadE120ObsCODFIL.Value := DmOra.ConsE120ObsCODFIL.Value;
                   DmFireRep.CadE120ObsNUMCON.Value := DmFireRep.ConsSql.FieldByName('NUMCON').Value;
                   DmFireRep.CadE120ObsCODREP.Value := DmOra.ConsE120ObsCODREP.Value;
                   DmFireRep.CadE120ObsSEQOBS.Value := DmOra.ConsE120ObsSEQOBS.Value;
                   DmFireRep.CadE120ObsNUMPED.Value := DmOra.ConsE120ObsNUMPED.Value;
                   DmFireRep.CadE120ObsOBSPED.Value := DmOra.ConsE120ObsOBSPED.Value;
                   DmFireRep.CadE120ObsSITOBS.Value := DmOra.ConsE120ObsSITOBS.Value;
                   DmFireRep.CadE120ObsOBSUSU.Value := DmOra.ConsE120ObsOBSUSU.AsInteger;
                   DmFireRep.CadE120ObsOBSDAT.Value := DmOra.ConsE120ObsOBSDAT.Value;
                   DmFireRep.CadE120Obs.Post;

                    DmOra.ConsSql.Close;
                    DmOra.ConsSql.SQL.Clear;
                    DmOra.ConsSql.SQL.Add('UPDATE E120OBS SET USU_NUMCOM =  :NUMCOM');
                    DmOra.ConsSql.SQL.Add(' WHERE');
                    DmOra.ConsSql.SQL.Add(' CODEMP = :CODEMP AND');
                    DmOra.ConsSql.SQL.Add(' CODFIL = :CODFIL AND');
                    DmOra.ConsSql.SQL.Add(' NUMPED = :NUMPED AND');
                    DmOra.ConsSql.SQL.Add(' SEQOBS = :SEQOBS');
                    DmOra.ConsSql.Parameters.ParamByName('CODEMP').Value := DmOra.ConsE120ObsCODEMP.Value;
                    DmOra.ConsSql.Parameters.ParamByName('CODFIL').Value := DmOra.ConsE120ObsCODFIL.Value;
                    DmOra.ConsSql.Parameters.ParamByName('NUMPED').Value := DmOra.ConsE120ObsNUMPED.Value;
                    DmOra.ConsSql.Parameters.ParamByName('SEQOBS').Value := DmOra.ConsE120ObsSEQOBS.Value;
                    DmOra.ConsSql.Parameters.ParamByName('NUMCOM').Value := DmFireRep.ConsSql.FieldByName('NUMCON').AsInteger;
                    DmOra.ConsSql.ExecSQL;

                 end;
            vnContReg := vnContReg - 1;
            DmOra.ConsE120Obs.Next;
          end;
          DmFireRep.ibtTransacao.CommitRetaining;
          Application.ProcessMessages;
          MemoStatusPed.Lines.Add('Atualização de pedidos gerada com sucesso!!');
          MemoStatusPed.Lines.Add(DateToStr(Date)+'   '+TimeToStr(Time));
          btnGerarBase.Enabled := true;
          btnGerarPedidos.Enabled := true;
end;

procedure TFPrincipal.btnGerarPedidos3Click(Sender: TObject);
var vnQtdReg,vnContReg, vnNovaFaixaNumCon : Integer;
begin

    









end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
    TGeraAtuClientes.Enabled := false;
    BIniciaServ.Caption := 'Iniciar Serviço';

    TProcessaPededidos.Enabled := false;
    BAtualizaPedidos.Caption := 'Iniciar Serviço';


end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
  MemoStatus.Clear;
  MemoStatusPed.Clear;
  edtData.Date := IncDay(Date,-2);
end;

procedure TFPrincipal.TGeraAtuClientesTimer(Sender: TObject);
var
    vaCodCli,vaNomCli,vaApecli,vaInsEst,vaCgcCpf,
    vaEndCli,vaNemCli,vaCplEnd,vaCepCli,vaBaiCli,
    vaCidCli,vaSigUfs,vaSitCli : string;
    ArqE085cli,ArqE085hcl,ArqE028Cpl,ArqE075Pro,ArqE075Der,ArqE075Cor,ArqE075Ldc,ArqE081Tab,
    ArqE081Itp,ArqDatAtu,ArqE075Lldc,ArqE100Sql,ArqE301Tcr : TextFile;
    vaSitCpg : string;
    vaDestDatAtu,linha : string;
    vaDatAtu,vaHorAtu,vaVerExe : string;
    I : integer;
begin
LStatus.Caption := 'Gerando atualizações...';
Application.ProcessMessages;

    DmFire.ConsE100Usu.Close;
    DmFire.ConsE100Usu.Open;
    DmFire.ConsE100Usu.First;
    //atualiza a data da ultima atualização
    while not DmFire.ConsE100Usu.Eof do
       begin//aa
          vaDestDatAtu := '\\senior\ftproot\ArqAtu\'+IntToStr(DmFire.ConsE100UsuCODUSU.Value)+'_DATATU.TXT';
          if FileExists(vaDestDatAtu) then
          begin//A
            AssignFile(ArqDatAtu, vaDestDatAtu);
            Reset(ArqDatAtu);

            While not Eof(ArqDatAtu) do
              begin//A1
                //limpa as variaveis
                vaDatAtu := '';vaHorAtu := '';

                Readln(ArqDatAtu, linha);

                vaDatAtu := Copy(linha,1,10);
                vaHorAtu := Copy(linha,12,8);
                vaVerExe := trim(Copy(linha,21,10));
              end;//A1
              CloseFile(ArqDatAtu);
              DeleteFile(vaDestDatAtu);


              //GRAVAR NA TABELA DO USUARIO A DATA E A HORA
              DmFire.CadE100Usu.Close;
              DmFire.CadE100Usu.ParamByName('codusu').Value := DmFire.ConsE100UsuCODUSU.Value;
              DmFire.CadE100Usu.Open;
              if not DmFire.CadE100Usu.IsEmpty then
                 begin//a4
                   if vaDatAtu <> '' then
                      begin
                        DmFire.CadE100Usu.Edit;
                        DmFire.CadE100UsuDATATU.AsDateTime := StrToDate(vaDatAtu);
                        DmFire.CadE100UsuHORATU.AsString := vaHorAtu;
                        DmFire.CadE100UsuVEREXE.AsString := vaVerExe;
                        DmFire.CadE100Usu.Post;
                        DmFire.IBTransacao.CommitRetaining;
                      end;
                 end;//a4
          end;//A
         DmFire.ConsE100Usu.Next;
       end;//aa



    MemoStatus.Lines.Add('Consultando usuários..');
    //consulta os usuarios para fazer a atualizacao
    DmFire.ConsE100Usu.Close;
    DmFire.ConsE100Usu.Open;
    DmFire.ConsE100Usu.First;
    while not DmFire.ConsE100Usu.Eof do
      begin//1
       MemoStatus.Lines.Add('Consultando clientes..');
       //atualiza os clientes  de cada usuario/representante
       if (DmFire.ConsE100UsuCODREP.Value <> 0) then
          begin//2
              DmOra.ConsE085Cli.Close;
              DmOra.ConsE085Cli.SQL.Clear;
              DmOra.ConsE085Cli.SQL.Add('select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.insest,e085cli.cgccpf,e085cli.endcli,e085cli.nencli,');
              DmOra.ConsE085Cli.SQL.Add('e085cli.cplend,e085cli.cepcli,e085cli.baicli,e085cli.cidcli,e085cli.sigufs,e085cli.sitcli,e085cli.foncli,');
              DmOra.ConsE085Cli.SQL.Add('e085hcl.codemp,e085hcl.codfil,e085hcl.codrep,e085hcl.saldup,e085hcl.datmac,e085hcl.vlrmac,e085hcl.datupe,e085hcl.vlrupe,');
              DmOra.ConsE085Cli.SQL.Add('e085hcl.datufa,e085hcl.vlrufa,e085hcl.datupg,e085hcl.vlrupg,e085hcl.qtdpgt,e085hcl.datmfa,e085hcl.vlrmfa,e085hcl.datatr,');
              DmOra.ConsE085Cli.SQL.Add('e085hcl.vlratr,e085hcl.maiatr,e085hcl.ultnfv');
              DmOra.ConsE085Cli.SQL.Add(' from e085cli');
              DmOra.ConsE085Cli.SQL.Add(' inner join e085hcl on e085hcl.codcli = e085cli.codcli');
              DmOra.ConsE085Cli.SQL.Add(' where e085hcl.codemp = 1 and');
              DmOra.ConsE085Cli.SQL.Add(' e085hcl.codfil = 1 and');
              DmOra.ConsE085Cli.SQL.Add(' e085hcl.codrep = :codrep');
              DmOra.ConsE085Cli.SQL.Add(' order by codcli');
              DmOra.ConsE085Cli.Parameters.ParamByName('codrep').Value := DmFire.ConsE100UsuCODREP.Value;
              DmOra.ConsE085Cli.Open;
          end//2
       else
          begin//3
              DmOra.ConsE085Cli.Close;
              DmOra.ConsE085Cli.SQL.Clear;
              DmOra.ConsE085Cli.SQL.Add('select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.insest,e085cli.cgccpf,e085cli.endcli,e085cli.nencli,');
              DmOra.ConsE085Cli.SQL.Add('e085cli.cplend,e085cli.cepcli,e085cli.baicli,e085cli.cidcli,e085cli.sigufs,e085cli.sitcli,e085cli.foncli,');
              DmOra.ConsE085Cli.SQL.Add('e085hcl.codemp,e085hcl.codfil,e085hcl.codrep,e085hcl.saldup,e085hcl.datmac,e085hcl.vlrmac,e085hcl.datupe,e085hcl.vlrupe,');
              DmOra.ConsE085Cli.SQL.Add('e085hcl.datufa,e085hcl.vlrufa,e085hcl.datupg,e085hcl.vlrupg,e085hcl.qtdpgt,e085hcl.datmfa,e085hcl.vlrmfa,e085hcl.datatr,');
              DmOra.ConsE085Cli.SQL.Add('e085hcl.vlratr,e085hcl.maiatr,e085hcl.ultnfv');
              DmOra.ConsE085Cli.SQL.Add(' from e085cli');
              DmOra.ConsE085Cli.SQL.Add(' inner join e085hcl on e085hcl.codcli = e085cli.codcli');
              DmOra.ConsE085Cli.SQL.Add(' where e085hcl.codemp = 1 and');
              DmOra.ConsE085Cli.SQL.Add(' e085hcl.codfil = 1');
              DmOra.ConsE085Cli.SQL.Add(' order by codcli');
              DmOra.ConsE085Cli.Open;
          end;//3
            MemoStatus.Lines.Add('Gerando arquivo de clientes..');
            AssignFile ( ArqE085cli,'\\senior\ftproot\ArqAtu\'+IntToStr(DmFire.ConsE100UsuCODUSU.Value)+'_E085CLI.txt');
            Rewrite ( ArqE085cli );
            DmOra.ConsE085Cli.First;
            while not DmOra.ConsE085Cli.Eof do
               begin//4
                  Write(ArqE085cli, IntToStr(DmOra.ConsE085CliCODCLI.Value)+';');
                  Write(ArqE085cli, DmOra.ConsE085CliNOMCLI.Value+';');
                  Write(ArqE085cli, DmOra.ConsE085CliAPECLI.Value+';');
                  Write(ArqE085cli, DmOra.ConsE085CliINSEST.Value+';');
                  Write(ArqE085cli, CurrToStr(DmOra.ConsE085CliCGCCPF.Value)+';');
                  Write(ArqE085cli, DmOra.ConsE085CliENDCLI.Value+';');
                  Write(ArqE085cli, DmOra.ConsE085CliNENCLI.Value+';');
                  Write(ArqE085cli, DmOra.ConsE085CliCPLEND.Value+';');
                  Write(ArqE085cli, IntToStr(DmOra.ConsE085CliCEPCLI.Value)+';');
                  Write(ArqE085cli, DmOra.ConsE085CliBAICLI.Value+';');
                  Write(ArqE085cli, DmOra.ConsE085CliCIDCLI.Value+';');
                  Write(ArqE085cli, DmOra.ConsE085CliSIGUFS.Value+';');
                  Write(ArqE085cli, DmOra.ConsE085CliFONCLI.Value+';');
                  Write(ArqE085cli, DmOra.ConsE085CliSITCLI.Value+';');

                  Write(ArqE085cli, IntToStr(DmOra.ConsE085CliCODEMP.Value)+';');
                  Write(ArqE085cli, IntToStr(DmOra.ConsE085CliCODFIL.Value)+';');
                  Write(ArqE085cli, IntToStr(DmOra.ConsE085CliCODREP.Value)+';');
                  Write(ArqE085cli, FloatToStr(DmOra.ConsE085CliSALDUP.Value)+';');
                  Write(ArqE085cli, DateToStr(DmOra.ConsE085CliDATMAC.Value)+';');
                  Write(ArqE085cli, FloatToStr(DmOra.ConsE085CliVLRMAC.Value)+';');
                  Write(ArqE085cli, DateToStr(DmOra.ConsE085CliDATUPE.Value)+';');
                  Write(ArqE085cli, FloatToStr(DmOra.ConsE085CliVLRUPE.Value)+';');
                  Write(ArqE085cli, DateToStr(DmOra.ConsE085CliDATUFA.Value)+';');
                  Write(ArqE085cli, FloatToStr(DmOra.ConsE085CliVLRUFA.Value)+';');
                  Write(ArqE085cli, DateToStr(DmOra.ConsE085CliDATUPG.Value)+';');
                  Write(ArqE085cli, FloatToStr(DmOra.ConsE085CliVLRUPG.Value)+';');
                  Write(ArqE085cli, IntToStr(DmOra.ConsE085CliQTDPGT.Value)+';');
                  Write(ArqE085cli, DateToStr(DmOra.ConsE085CliDATMFA.Value)+';');
                  Write(ArqE085cli, FloatToStr(DmOra.ConsE085CliVLRMFA.Value)+';');
                  Write(ArqE085cli, DateToStr(DmOra.ConsE085CliDATATR.Value)+';');
                  Write(ArqE085cli, FloatToStr(DmOra.ConsE085CliVLRATR.Value)+';');
                  Write(ArqE085cli, IntToStr(DmOra.ConsE085CliMAIATR.Value)+';');
                  Write(ArqE085cli, FloatToStr(DmOra.ConsE085CliULTNFV.Value)+';');

                  WriteLn ( ArqE085cli);


                  DmOra.ConsE085Cli.Next;
               end;//4
                CloseFile ( ArqE085cli );
      //-----------termina aqui a atualizaçao dos clientes

    {*****************************************************
     **********gera as condiçoes de pagamanto*************
     *****************************************************}
         MemoStatus.Lines.Add('consultando condições de pagamento..');
         DmFire.ConsE028Cpg.Close;
         DmFire.ConsE028Cpg.ParamByName('codusu').Value := DmFire.ConsE100UsuCODUSU.Value;
         DmFire.ConsE028Cpg.Open;

         AssignFile ( ArqE028Cpl,'\\senior\ftproot\ArqAtu\'+IntToStr(DmFire.ConsE100UsuCODUSU.Value)+'_E028CPG.txt');
         Rewrite ( ArqE028Cpl );

         MemoStatus.Lines.Add('Gerando arquivo de condições de pagamento..');
         DmFire.ConsE028Cpg.First;
         while not DmFire.ConsE028Cpg.Eof do
            begin//5
              Write(ArqE028Cpl, IntToStr(DmFire.ConsE028CpgCODEMP.Value)+';');
              Write(ArqE028Cpl, DmFire.ConsE028CpgCODCPG.Value+';');
              Write(ArqE028Cpl, IntToStr(DmFire.ConsE028CpgCODUSU.Value)+';');
              Write(ArqE028Cpl, DmFire.ConsE028CpgDESCPG.Value+';');
              Write(ArqE028Cpl, DmFire.ConsE028CpgABRCPG.Value+';');
              Write(ArqE028Cpl, IntToStr(DmFire.ConsE028CpgPRZMED.Value)+';');
              Write(ArqE028Cpl, IntToStr(DmFire.ConsE028CpgQTDPAR.Value)+';');
              if DmFire.ConsE028CpgCPGLIB.Value = 'S' then
                 vaSitCpg := 'A'
              else
                 vaSitCpg := 'I';
              Write(ArqE028Cpl, vaSitCpg+';');
              Write(ArqE028Cpl, FloatToStr(DmFire.ConsE028CpgPERCOM.Value)+';');

              WriteLn ( ArqE028Cpl);

              DmFire.ConsE028Cpg.Next;
            end;//5
            CloseFile ( ArqE028Cpl );

         {*****************************************************
                  gera atualização da tabela de preço
         ******************************************************}
          AssignFile ( ArqE081Tab,'\\senior\ftproot\ArqAtu\'+IntToStr(DmFire.ConsE100UsuCODUSU.Value)+'_E081TAB.txt');
          Rewrite (ArqE081Tab);
          MemoStatus.Lines.Add('Consultando tabela de preço..');
          DmFire.ConsE081Tab.Close;
          DmFire.ConsE081Tab.ParamByName('codusu').Value := DmFire.ConsE100UsuCODUSU.AsInteger;
          DmFire.ConsE081Tab.Open;
          while not DmFire.ConsE081Tab.Eof do
            begin//10
              Write(ArqE081Tab, IntToStr(DmFire.ConsE081TabCODEMP.Value)+';');
              Write(ArqE081Tab, DmFire.ConsE081TabCODTPR.Value+';');
              Write(ArqE081Tab, IntToStr(DmFire.ConsE081TabCODUSU.Value)+';');
              Write(ArqE081Tab, DmFire.ConsE081TabDESTPR.Value+';');
              Write(ArqE081Tab, DmFire.ConsE081TabSITTPR.Value+';');
              WriteLn (ArqE081Tab);

              MemoStatus.Lines.Add('Gerando arquivos da tabela de preço..');
              //consulta e atualiza os produtos da tabela de preço
              DmFire.ConsE081Itp.Close;
              DmFire.ConsE081Itp.ParamByName('codemp').Value := DmFire.ConsE081TabCODEMP.Value;
              DmFire.ConsE081Itp.ParamByName('codtpr').Value := DmFire.ConsE081TabCODTPR.Value;
              DmFire.ConsE081Itp.ParamByName('codusu').Value := DmFire.ConsE081TabCODUSU.Value;
              DmFire.ConsE081Itp.Open;
              AssignFile ( ArqE081Itp,'\\senior\ftproot\ArqAtu\'+IntToStr(DmFire.ConsE100UsuCODUSU.Value)+'_E081ITP.txt');
              Rewrite (ArqE081Itp);
              while not DmFire.ConsE081Itp.Eof  do
                begin//11
                  Write(ArqE081Itp, IntToStr(DmFire.ConsE081ItpCODEMP.Value)+';');
                  Write(ArqE081Itp, DmFire.ConsE081ItpCODTPR.Value+';');
                  Write(ArqE081Itp, DmFire.ConsE081ItpCODPRO.Value+';');
                  Write(ArqE081Itp, DmFire.ConsE081ItpCODDER.Value+';');
                  Write(ArqE081Itp, IntToStr(DmFire.ConsE081ItpCODUSU.Value)+';');
                  Write(ArqE081Itp, DmFire.ConsE081ItpDESPRO.Value+';');
                  Write(ArqE081Itp, CurrToStr(DmFire.ConsE081ItpPREBAS.Value)+';');
                  Write(ArqE081Itp, CurrToStr(DmFire.ConsE081ItpTOLMAI.Value)+';');
                  Write(ArqE081Itp, CurrToStr(DmFire.ConsE081ItpTOLMEN.Value)+';');
                  Write(ArqE081Itp, CurrToStr(DmFire.ConsE081ItpVLRMAI.Value)+';');
                  Write(ArqE081Itp, CurrToStr(DmFire.ConsE081ItpVLRMEN.Value)+';');
                  Write(ArqE081Itp, DmFire.ConsE081ItpSITREG.Value+';');
                  Write(ArqE081Itp, DateToStr(DmFire.ConsE081ItpDATINI.Value)+';');
                  Write(ArqE081Itp, DateToStr(DmFire.ConsE081ItpDATFIM.Value)+';');
                  WriteLn (ArqE081Itp);

                  DmFire.ConsE081Itp.Next;
                end;//11
              DmFire.ConsE081Tab.Next;
            end;//10
            CloseFile ( ArqE081Tab );
            CloseFile ( ArqE081Itp );

         {**************************************************************
          gera atualização dos logs de ligações de produtos com tecidos
         ***************************************************************}
         MemoStatus.Lines.Add('Gerando arquivos E075LLDC...');
         AssignFile ( ArqE075Lldc,'\\senior\ftproot\ArqAtu\'+IntToStr(DmFire.ConsE100UsuCODUSU.Value)+'_E075LLDC.txt');
         Rewrite (ArqE075Lldc);

         DmFire.ConsE075LLDC.Close;
         DmFire.ConsE075LLDC.ParamByName('datmov1').Value := DmFire.ConsE100UsuDATATU.Value;
         DmFire.ConsE075LLDC.ParamByName('datmov2').Value := Date;
         DmFire.ConsE075LLDC.Open;
         DmFire.ConsE075LLDC.First;
         while not DmFire.ConsE075LLDC.Eof do
            begin
              Write(ArqE075Lldc, IntToStr(DmFire.ConsE075LLDCNUMMOV.Value)+';');
              Write(ArqE075Lldc, IntToStr(DmFire.ConsE075LLDCCODEMP.Value)+';');
              Write(ArqE075Lldc, DmFire.ConsE075LLDCCODPRO.Value+';');
              Write(ArqE075Lldc, DmFire.ConsE075LLDCCODDER.Value+';');
              Write(ArqE075Lldc, DmFire.ConsE075LLDCCODTEC.Value+';');
              Write(ArqE075Lldc, DateToStr(DmFire.ConsE075LLDCDATMOV.Value)+';');
              Write(ArqE075Lldc, DmFire.ConsE075LLDCTIPMOV.Value+';');

              WriteLn (ArqE075Lldc);
              DmFire.ConsE075LLDC.Next;
            end;
          CloseFile ( ArqE075Lldc );



         //ATUALIZA OS TITULOS EM ABERTO
       if (DmFire.ConsE100UsuCODREP.Value <> 0) then
          begin//12
             DmOra.ConsE301Tcr.Close;
             DmOra.ConsE301Tcr.SQL.Clear;
             DmOra.ConsE301Tcr.SQL.Add('SELECT E301TCR.CODEMP,E301TCR.CODFIL,E301TCR.NUMTIT,E301TCR.CODTPT,E301TCR.CODTNS,');
             DmOra.ConsE301Tcr.SQL.Add('E301TCR.SITTIT,E301TCR.DATEMI,E301TCR.CODCLI,E301TCR.OBSTCR,E301TCR.VCTORI,');
             DmOra.ConsE301Tcr.SQL.Add('E301TCR.VLRORI,E301TCR.VCTPRO,E301TCR.DATPPT,E301TCR.VLRABE');
             DmOra.ConsE301Tcr.SQL.Add('FROM E301TCR');
             DmOra.ConsE301Tcr.SQL.Add('INNER JOIN E085HCL ON E085HCL.CODEMP = E301TCR.CODEMP AND');
             DmOra.ConsE301Tcr.SQL.Add('E085HCL.CODFIL = E301TCR.CODFIL AND');
             DmOra.ConsE301Tcr.SQL.Add('E085HCL.CODCLI = E301TCR.CODCLI');
             DmOra.ConsE301Tcr.SQL.Add('WHERE');
             DmOra.ConsE301Tcr.SQL.Add('E301TCR.CODTPT IN (''DPL'',''CHP'',''CHD'') AND');
             DmOra.ConsE301Tcr.SQL.Add('E301TCR.SITTIT IN (''AB'',''AP'',''AC'') AND');
             DmOra.ConsE301Tcr.SQL.Add('E085HCL.CODREP = :CODREP AND');
             DmOra.ConsE301Tcr.SQL.Add('E301TCR.CODFIL = 1');
             DmOra.ConsE301Tcr.Parameters.ParamByName('codrep').Value := DmFire.ConsE100UsuCODREP.Value;
             DmOra.ConsE301Tcr.Open;
          end//12
       else
          begin//13
             DmOra.ConsE301Tcr.Close;
             DmOra.ConsE301Tcr.SQL.Clear;
             DmOra.ConsE301Tcr.SQL.Add('SELECT E301TCR.CODEMP,E301TCR.CODFIL,E301TCR.NUMTIT,E301TCR.CODTPT,E301TCR.CODTNS,');
             DmOra.ConsE301Tcr.SQL.Add('E301TCR.SITTIT,E301TCR.DATEMI,E301TCR.CODCLI,E301TCR.OBSTCR,E301TCR.VCTORI,');
             DmOra.ConsE301Tcr.SQL.Add('E301TCR.VLRORI,E301TCR.VCTPRO,E301TCR.DATPPT,E301TCR.VLRABE');
             DmOra.ConsE301Tcr.SQL.Add('FROM E301TCR');
             DmOra.ConsE301Tcr.SQL.Add('INNER JOIN E085HCL ON E085HCL.CODEMP = E301TCR.CODEMP AND');
             DmOra.ConsE301Tcr.SQL.Add('E085HCL.CODFIL = E301TCR.CODFIL AND');
             DmOra.ConsE301Tcr.SQL.Add('E085HCL.CODCLI = E301TCR.CODCLI');
             DmOra.ConsE301Tcr.SQL.Add('WHERE');
             DmOra.ConsE301Tcr.SQL.Add('E301TCR.CODTPT IN (''DPL'',''CHP'',''CHD'') AND');
             DmOra.ConsE301Tcr.SQL.Add('E301TCR.SITTIT IN (''AB'',''AP'',''AC'') AND');
             DmOra.ConsE301Tcr.SQL.Add('E301TCR.CODFIL = 1');
             DmOra.ConsE301Tcr.Open;
          end;//13
          MemoStatus.Lines.Add('Gerando arquivos E301TCR...');
          AssignFile ( ArqE301Tcr,'\\senior\ftproot\ArqAtu\'+IntToStr(DmFire.ConsE100UsuCODUSU.Value)+'_E301TCR.txt');
          Rewrite (ArqE301Tcr);
          DmOra.ConsE301Tcr.First;
          while not DmOra.ConsE301Tcr.Eof do
             begin//14

               Write(ArqE301Tcr, IntToStr(DmOra.ConsE301TcrCODEMP.Value)+';');
               Write(ArqE301Tcr, IntToStr(DmOra.ConsE301TcrCODFIL.Value)+';');
               Write(ArqE301Tcr, DmOra.ConsE301TcrNUMTIT.Value+';');
               Write(ArqE301Tcr, DmOra.ConsE301TcrCODTPT.Value+';');
               Write(ArqE301Tcr, DmOra.ConsE301TcrCODTNS.Value+';');
               Write(ArqE301Tcr, DmOra.ConsE301TcrSITTIT.Value+';');
               Write(ArqE301Tcr, DateToStr(DmOra.ConsE301TcrDATEMI.Value)+';');
               Write(ArqE301Tcr, IntToStr(DmOra.ConsE301TcrCODCLI.Value)+';');
               //Write(ArqE301Tcr, DmOra.ConsE301TcrOBSTCR.Value+';');
               Write(ArqE301Tcr, DateToStr(DmOra.ConsE301TcrVCTORI.Value)+';');
               Write(ArqE301Tcr, CurrToStr(DmOra.ConsE301TcrVLRORI.Value)+';');
               Write(ArqE301Tcr, DateToStr(DmOra.ConsE301TcrVCTPRO.Value)+';');
               Write(ArqE301Tcr, DateToStr(DmOra.ConsE301TcrDATPPT.Value)+';');
               Write(ArqE301Tcr, CurrToStr(DmOra.ConsE301TcrVLRABE.Value)+';');

               WriteLn (ArqE301Tcr);

               DmOra.ConsE301Tcr.Next;
             end;//14
          CloseFile(ArqE301Tcr);

         DmFire.ConsE100Usu.Next;
      end;//1

      {**************************************************
       gera atualização dos produtos e075pro e e075der
      ****************************************************}
      MemoStatus.Lines.Add('Gerando arquivos E075Pro..');
      AssignFile ( ArqE075PRO,'\\senior\ftproot\ArqAtu\E075PRO.txt');
      Rewrite (ArqE075PRO);
      DmOra.ConsE075Pro.Close;
      DmOra.ConsE075Pro.Open;
      while not DmOra.ConsE075Pro.Eof do
         begin//6
           Write(ArqE075PRO, IntToStr(DmOra.ConsE075ProCODEMP.Value)+';');
           Write(ArqE075PRO, DmOra.ConsE075ProCODPRO.Value+';');
           Write(ArqE075PRO, DmOra.ConsE075ProDESPRO.Value+';');
           Write(ArqE075PRO, DmOra.ConsE075ProCODFAM.Value+';');
           Write(ArqE075PRO, DmOra.ConsE075ProCODAGP.Value+';');
           Write(ArqE075PRO, DmOra.ConsE075ProSITPRO.Value+';');
           WriteLn (ArqE075PRO);

           DmOra.ConsE075Pro.Next;
         end;//6
         CloseFile (ArqE075PRO);

         AssignFile ( ArqE075DER,'\\senior\ftproot\ArqAtu\E075DER.txt');
         Rewrite (ArqE075DER);
         DmOra.ConsE075Der.Close;
         DmOra.ConsE075Der.Open;
         while not DmOra.ConsE075Der.Eof do
           begin//7
             Write(ArqE075DER, IntToStr(DmOra.ConsE075DerCODEMP.Value)+';');
             Write(ArqE075DER, DmOra.ConsE075DerCODPRO.Value+';');
             Write(ArqE075DER, DmOra.ConsE075DerCODDER.Value+';');
             Write(ArqE075DER, DmOra.ConsE075DerDESDER.Value+';');
             Write(ArqE075DER, FloatToStr(DmOra.ConsE075DerPESBRU.AsFloat)+';');
             Write(ArqE075DER, FloatToStr(DmOra.ConsE075DerPESLIQ.AsFloat)+';');
             Write(ArqE075DER, FloatToStr(DmOra.ConsE075DerVOLDER.AsFloat)+';');
             Write(ArqE075DER, DmOra.ConsE075DerSITDER.Value+';');
             Write(ArqE075DER, FloatToStr(DmOra.ConsE075DerUSU_CORUNI.AsFloat)+';');
             Write(ArqE075DER, FloatToStr(DmOra.ConsE075DerUSU_CMP1BB.AsFloat)+';');
             Write(ArqE075DER, FloatToStr(DmOra.ConsE075DerUSU_CMP1AE.AsFloat)+';');
             Write(ArqE075DER, FloatToStr(DmOra.ConsE075DerUSU_CMP2BB.AsFloat)+';');
             Write(ArqE075DER, FloatToStr(DmOra.ConsE075DerUSU_CMP2EN.AsFloat)+';');
             Writeln(ArqE075Der);

             DmOra.ConsE075Der.Next;
           end;//7
             CloseFile (ArqE075Der);

           {*******************************************
                   gera atualizaçoes das cores
           ********************************************}
           AssignFile ( ArqE075Cor,'\\senior\ftproot\ArqAtu\E075COR.txt');
           Rewrite (ArqE075Cor);
           DmOra.ConsE075Cor.Close;
           DmOra.ConsE075Cor.Open;
           while not DmOra.ConsE075Cor.Eof  do
             begin//8
               Write(ArqE075Cor, IntToStr(DmOra.ConsE075CorCODEMP.Value)+';');
               Write(ArqE075Cor, DmOra.ConsE075CorCODPRO.Value+';');
               Write(ArqE075Cor, DmOra.ConsE075CorDESPRO.Value+';');
               Write(ArqE075Cor, DmOra.ConsE075CorSITPRO.Value+';');
               Writeln(ArqE075Cor);

               DmOra.ConsE075Cor.Next;
             end;//8
              CloseFile (ArqE075Cor);

              {********************************************************************
                gera atualizaçoes das ligaçoes de produtos/derivaçoes com as cores
              *********************************************************************}
              MemoStatus.Lines.Add('Gerando arquivo da ligação dos produtos com as cores');
              AssignFile ( ArqE075Ldc,'\\senior\ftproot\ArqAtu\E075LDC.txt');
              Rewrite (ArqE075Ldc);
              DmOra.ConsUsu_TDerCor.Close;
              DmOra.ConsUsu_TDerCor.Open;
              while not DmOra.ConsUsu_TDerCor.Eof do
                begin//9
                  Write(ArqE075Ldc, IntToStr(DmOra.ConsUsu_TDerCorUSU_CODEMP.Value)+';');
                  Write(ArqE075Ldc, DmOra.ConsUsu_TDerCorUSU_CODPRO.Value+';');
                  Write(ArqE075Ldc, DmOra.ConsUsu_TDerCorUSU_CODDER.Value+';');
                  Write(ArqE075Ldc, DmOra.ConsUsu_TDerCorUSU_CODTEC.Value+';');
                  Write(ArqE075Ldc, DmOra.ConsUsu_TDerCorUSU_DESTEC.Value+';');
                  Write(ArqE075Ldc, DmOra.ConsUsu_TDerCorUSU_SITTEC.Value+';');
                  Writeln(ArqE075Ldc);

                  DmOra.ConsUsu_TDerCor.Next;
                end;//9
                CloseFile (ArqE075Ldc);

     LStatus.Caption := '';
     MemoStatus.Clear;
     Application.ProcessMessages;

end;

procedure TFPrincipal.tmrBaseTimer(Sender: TObject);
begin
  if btnGerarBase.Enabled = true then
     begin
       btnGerarBase.Click;
     end;
end;

procedure TFPrincipal.tmrPedidosTimer(Sender: TObject);
begin
if btnGerarPedidos.Enabled = true then
     begin
       btnGerarPedidos.Click;
     end;
end;

procedure TFPrincipal.TProcessaPededidosTimer(Sender: TObject);
var SearchRec : TSearchRec;
    vdData : TDateTime;
    ArqE120Ped,ArqE120Ipd,ArqUsu120Ipd,ArqE120Obs : TextFile;
    vaObsPed : string;

begin

    MemoStatusPed.Lines.Add('Consultando usuários..');
    DmFire.ConsE100Usu.Close;
    DmFire.ConsE100Usu.Open;
    DmFire.ConsE100Usu.First;
    while not DmFire.ConsE100Usu.Eof do
      begin//1
          if (DmFire.ConsE100UsuCODREP.Value <> 0) then
          begin//2
             {**********************************************************************
              CONSULTA NO BANCO FIREBIRD DOS PEDIDOS QUE FORAM RECEBIDOS, PEDIDOS
              QUE AINDA NAO FORAM LIBERADOS E IMPRESSOS, CASO NAO TENHA MAIS PEDIDOS
              PARA TIRAR OU IMPRIMIR APAGA TODOS DO REPRESENTANTE
             ***********************************************************************}
             DmFire.ConsSql.Close;
             DmFire.ConsSql.SQL.Clear;
             DmFire.ConsSql.SQL.Add('select e120ped.*  from e120ped where');
             DmFire.ConsSql.SQL.Add('e120ped.codrep = :codrep and');
             DmFire.ConsSql.SQL.Add('e120ped.sitped <> 0');
             DmFire.ConsSql.ParamByName('codrep').Value := DmFire.ConsE100UsuCODREP.Value;
             DmFire.ConsSql.Open;
             if DmFire.ConsSql.IsEmpty then
                begin//
                  DmFire.ConsSql.Close;
                  DmFire.ConsSql.SQL.Clear;
                  DmFire.ConsSql.SQL.Add('delete from e120obs where codrep = :codrep');
                  DmFire.ConsSql.ParamByName('codrep').Value := DmFire.ConsE100UsuCODREP.Value;
                  DmFire.ConsSql.Open;

                  DmFire.ConsSql.Close;
                  DmFire.ConsSql.SQL.Clear;
                  DmFire.ConsSql.SQL.Add('delete from usu120ipd where codrep = :codrep');
                  DmFire.ConsSql.ParamByName('codrep').Value := DmFire.ConsE100UsuCODREP.Value;
                  DmFire.ConsSql.Open;

                  DmFire.ConsSql.Close;
                  DmFire.ConsSql.SQL.Clear;
                  DmFire.ConsSql.SQL.Add('delete from e120ipd where codrep = :codrep');
                  DmFire.ConsSql.ParamByName('codrep').Value := DmFire.ConsE100UsuCODREP.Value;
                  DmFire.ConsSql.Open;

                  DmFire.ConsSql.Close;
                  DmFire.ConsSql.SQL.Clear;
                  DmFire.ConsSql.SQL.Add('delete from e120ped where codrep = :codrep');
                  DmFire.ConsSql.ParamByName('codrep').Value := DmFire.ConsE100UsuCODREP.Value;
                  DmFire.ConsSql.Open;

                  DmFire.IBTransacao.CommitRetaining;
                end;//


              {*********************************************************
              CONSULTA OS PEDIDOS DO REPRESENTANTE DENTRO DA QUANTIDADE DE DIAS ESPECIFICADO NO CADASTRO
              *********************************************************}
              MemoStatusPed.Lines.Add('Consultado pedidos tabela E120Ped do usuário: '+ DmFire.ConsE100UsuNOMUSU.AsString );
              DmOra.ConsE120Ped.Close;
              DmOra.ConsE120Ped.SQL.Clear;
              DmOra.ConsE120Ped.SQL.Add('select e120ped.codemp,e120ped.codfil,e120ped.numped,e120ped.codrep,e120ped.tnspro,e120ped.datemi,e120ped.horemi,');
              DmOra.ConsE120Ped.SQL.Add('e120ped.codcli,e120ped.codcpg,e120ped.qtdabe,e120ped.vlrbco,e120ped.vlrcom,e120ped.vlrliq,');
              DmOra.ConsE120Ped.SQL.Add('e120ped.qtdori,e120ped.vlrori,e120ped.sitped,e120ped.usuger,e120ped.datger,e120ped.usufec,');
              DmOra.ConsE120Ped.SQL.Add('e120ped.datfec,e120ped.usu_numcom,e120ped.usu_precar');
              DmOra.ConsE120Ped.SQL.Add('from e120ped');
              DmOra.ConsE120Ped.SQL.Add('where');
              DmOra.ConsE120Ped.SQL.Add('e120ped.codrep = :codrep and');
              DmOra.ConsE120Ped.SQL.Add('e120ped.tnspro in (''90100'',''90106'',''90160'') and');
              DmOra.ConsE120Ped.SQL.Add('e120ped.sitped in (1,2,3,4,5,8,9) and');
              DmOra.ConsE120Ped.SQL.Add('e120ped.datemi between :datini and :datfim and');
              DmOra.ConsE120Ped.SQL.Add('e120ped.codemp = :codemp and');
              DmOra.ConsE120Ped.SQL.Add('e120ped.codfil = :codfil');
              DmOra.ConsE120Ped.SQL.Add('order by e120ped.usu_numcom desc');
              DmOra.ConsE120Ped.Parameters.ParamByName('codemp').Value := 1;
              DmOra.ConsE120Ped.Parameters.ParamByName('codfil').Value := 1;
              DmOra.ConsE120Ped.Parameters.ParamByName('codrep').Value := DmFire.ConsE100UsuCODREP.Value;
              vdData := (date - DmFire.ConsE100UsuQTDDIA.AsInteger);
              DmOra.ConsE120Ped.Parameters.ParamByName('datini').Value := vdData;
              DmOra.ConsE120Ped.Parameters.ParamByName('datfim').Value := date;
              DmOra.ConsE120Ped.Open;

              //consulta os produtos dos pedidos
              MemoStatusPed.Lines.Add('Consultando produtos dos pedidos');
              DmOra.ConsE120Ipd.Close;
              DmOra.ConsE120Ipd.SQL.Clear;
              DmOra.ConsE120Ipd.SQL.Add('select e120ipd.codemp,e120ipd.codfil,e120ipd.numped,e120ipd.seqipd,e120ipd.tnspro,e120ipd.codpro,e120ipd.codder,');
              DmOra.ConsE120Ipd.SQL.Add('e120ipd.codfam,e120ipd.qtdped,e120ipd.qtdfat,e120ipd.qtdcan,e120ipd.qtdabe,e120ipd.unimed,e120ipd.codtpr,');
              DmOra.ConsE120Ipd.SQL.Add('e120ipd.preuni,e120ipd.percom,e120ipd.vlrbru,e120ipd.vlrbco,e120ipd.vlrcom,e120ipd.vlrlpr,e120ipd.vlrliq,');
              DmOra.ConsE120Ipd.SQL.Add('e120ipd.sitipd,e120ipd.usuger,e120ipd.datger,e120ipd.usu_totdsc,e120ipd.usu_vlrori,e120ipd.usu_numcom,e120ped.codrep');
              DmOra.ConsE120Ipd.SQL.Add('from e120ipd');
              DmOra.ConsE120Ipd.SQL.Add('inner join e120ped on e120ped.codemp = e120ipd.codemp and');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.codfil = e120ipd.codfil and');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.numped = e120ipd.numped');
              DmOra.ConsE120Ipd.SQL.Add('where');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.codrep = :codrep and');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.tnspro in (''90100'',''90106'',''90160'') and');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.sitped in (1,2,3,4,5,8,9) and');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.datemi between :datini and :datfim and');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.codfil = :codfil and');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.codemp = :codemp');
              DmOra.ConsE120Ipd.SQL.Add('order by e120ped.usu_numcom desc');
              DmOra.ConsE120Ipd.Parameters.ParamByName('codemp').Value := 1;
              DmOra.ConsE120Ipd.Parameters.ParamByName('codfil').Value := 1;
              DmOra.ConsE120Ipd.Parameters.ParamByName('codrep').Value := DmFire.ConsE100UsuCODREP.Value;
              DmOra.ConsE120Ipd.Parameters.ParamByName('datini').Value := vdData;
              DmOra.ConsE120Ipd.Parameters.ParamByName('datfim').Value := date;
              DmOra.ConsE120Ipd.Open;

              MemoStatusPed.Lines.Add('Consultando cores dos produtos ..');
              //consulta as cores dos produtos
              DmOra.ConsUsu_T120Ipd.Close;
              DmOra.ConsUsu_T120Ipd.SQL.Clear;
              DmOra.ConsUsu_T120Ipd.SQL.Add('select usu_t120ipd.*,e120ped.codrep from usu_t120ipd');
              DmOra.ConsUsu_T120Ipd.SQL.Add('inner join e120ped on e120ped.codemp = usu_t120ipd.usu_codemp and');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.codfil = usu_t120ipd.usu_codfil and');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.numped = usu_t120ipd.usu_numped');
              DmOra.ConsUsu_T120Ipd.SQL.Add('where');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.codrep = :codrep and');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.tnspro in (''90100'',''90106'',''90160'') and');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.sitped in (1,2,3,4,5,8,9) and');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.datemi between :datini and :datfim and');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.codemp = :codemp and');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.codfil = :codfil');
              DmOra.ConsUsu_T120Ipd.SQL.Add('order by e120ped.usu_numcom desc');
              DmOra.ConsUsu_T120Ipd.Parameters.ParamByName('codemp').Value := 1;
              DmOra.ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := 1;
              DmOra.ConsUsu_T120Ipd.Parameters.ParamByName('codrep').Value := DmFire.ConsE100UsuCODREP.Value;
              DmOra.ConsUsu_T120Ipd.Parameters.ParamByName('datini').Value := vdData;
              DmOra.ConsUsu_T120Ipd.Parameters.ParamByName('datfim').Value := date;
              DmOra.ConsUsu_T120Ipd.Open;

              MemoStatusPed.Lines.Add('Consultando observações dos pedidos ..');
              DmOra.ConsE120Obs.Close;
              DmOra.ConsE120Obs.SQL.Clear;
              DmOra.ConsE120Obs.SQL.Add('select e120obs.codemp,e120obs.codfil,e120obs.numped,e120obs.seqobs,e120obs.tipobs,e120obs.obsped,');
              DmOra.ConsE120Obs.SQL.Add('e120obs.obsusu,e120obs.obsdat,e120obs.sitobs,e120obs.usu_numcom,e120ped.codrep');
              DmOra.ConsE120Obs.SQL.Add(' from e120obs');
              DmOra.ConsE120Obs.SQL.Add('inner join e120ped on e120ped.codemp = e120obs.codemp and');
              DmOra.ConsE120Obs.SQL.Add('e120ped.codfil = e120obs.codfil and');
              DmOra.ConsE120Obs.SQL.Add('e120ped.numped = e120obs.numped');
              DmOra.ConsE120Obs.SQL.Add(' where');
              DmOra.ConsE120Obs.SQL.Add('e120ped.codrep = :codrep and');
              DmOra.ConsE120Obs.SQL.Add('e120ped.tnspro in (''90100'',''90106'',''90160'') and');
              DmOra.ConsE120Obs.SQL.Add('e120ped.sitped in (1,2,3,4,5,8,9) and');
              DmOra.ConsE120Obs.SQL.Add('e120ped.datemi between :datini and :datfim and');
              DmOra.ConsE120Obs.SQL.Add('e120ped.codfil = :codfil and');
              DmOra.ConsE120Obs.SQL.Add('e120ped.codemp = :codemp');
              DmOra.ConsE120Obs.Parameters.ParamByName('codemp').Value := 1;
              DmOra.ConsE120Obs.Parameters.ParamByName('codfil').Value := 1;
              DmOra.ConsE120Obs.Parameters.ParamByName('codrep').Value := DmFire.ConsE100UsuCODREP.Value;
              DmOra.ConsE120Obs.Parameters.ParamByName('datini').Value := vdData;
              DmOra.ConsE120Obs.Parameters.ParamByName('datfim').Value := date;
              DmOra.ConsE120Obs.Open;

          end//2
      else
          begin//3
              MemoStatusPed.Lines.Add('Consultado pedidos tabela E120Ped do usuário: '+ DmFire.ConsE100UsuNOMUSU.AsString );
              DmOra.ConsE120Ped.Close;
              DmOra.ConsE120Ped.SQL.Clear;
              DmOra.ConsE120Ped.SQL.Add('select e120ped.codemp,e120ped.codfil,e120ped.numped,e120ped.codrep,e120ped.tnspro,e120ped.datemi,e120ped.horemi,');
              DmOra.ConsE120Ped.SQL.Add('e120ped.codcli,e120ped.codcpg,e120ped.qtdabe,e120ped.vlrbco,e120ped.vlrcom,e120ped.vlrliq,');
              DmOra.ConsE120Ped.SQL.Add('e120ped.qtdori,e120ped.vlrori,e120ped.sitped,e120ped.usuger,e120ped.datger,e120ped.usufec,');
              DmOra.ConsE120Ped.SQL.Add('e120ped.datfec,e120ped.usu_numcom,e120ped.usu_precar');
              DmOra.ConsE120Ped.SQL.Add('from e120ped');
              DmOra.ConsE120Ped.SQL.Add('where');
              DmOra.ConsE120Ped.SQL.Add('e120ped.tnspro in (''90100'',''90106'',''90160'') and');
              DmOra.ConsE120Ped.SQL.Add('e120ped.sitped in (1,2,3,4,5,8,9) and');
              DmOra.ConsE120Ped.SQL.Add('e120ped.datemi between :datini and :datfim and');
              DmOra.ConsE120Ped.SQL.Add('e120ped.codemp = :codemp and');
              DmOra.ConsE120Ped.SQL.Add('e120ped.codfil = :codfil');
              DmOra.ConsE120Ped.SQL.Add('order by e120ped.usu_numcom desc');
              DmOra.ConsE120Ped.Parameters.ParamByName('codemp').Value := 1;
              DmOra.ConsE120Ped.Parameters.ParamByName('codfil').Value := 1;
              vdData := (date - DmFire.ConsE100UsuQTDDIA.AsInteger);
              DmOra.ConsE120Ped.Parameters.ParamByName('datini').Value := vdData;
              DmOra.ConsE120Ped.Parameters.ParamByName('datfim').Value := date;
              DmOra.ConsE120Ped.Open;

              MemoStatusPed.Lines.Add('Consultando produtos dos pedidos..');
              //consulta os produtos dos pedidos
              DmOra.ConsE120Ipd.Close;
              DmOra.ConsE120Ipd.SQL.Clear;
              DmOra.ConsE120Ipd.SQL.Add('select e120ipd.codemp,e120ipd.codfil,e120ipd.numped,e120ipd.seqipd,e120ipd.tnspro,e120ipd.codpro,e120ipd.codder,');
              DmOra.ConsE120Ipd.SQL.Add('e120ipd.codfam,e120ipd.qtdped,e120ipd.qtdfat,e120ipd.qtdcan,e120ipd.qtdabe,e120ipd.unimed,e120ipd.codtpr,');
              DmOra.ConsE120Ipd.SQL.Add('e120ipd.preuni,e120ipd.percom,e120ipd.vlrbru,e120ipd.vlrbco,e120ipd.vlrcom,e120ipd.vlrlpr,e120ipd.vlrliq,');
              DmOra.ConsE120Ipd.SQL.Add('e120ipd.sitipd,e120ipd.usuger,e120ipd.datger,e120ipd.usu_totdsc,e120ipd.usu_vlrori,e120ipd.usu_numcom,e120ped.codrep');
              DmOra.ConsE120Ipd.SQL.Add('from e120ipd');
              DmOra.ConsE120Ipd.SQL.Add('inner join e120ped on e120ped.codemp = e120ipd.codemp and');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.codfil = e120ipd.codfil and');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.numped = e120ipd.numped');
              DmOra.ConsE120Ipd.SQL.Add('where');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.tnspro in (''90100'',''90106'',''90160'') and');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.sitped in (1,2,3,4,5,8,9) and');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.datemi between :datini and :datfim and');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.codfil = :codfil and');
              DmOra.ConsE120Ipd.SQL.Add('e120ped.codemp = :codemp');
              DmOra.ConsE120Ipd.SQL.Add('order by e120ped.usu_numcom desc');
              DmOra.ConsE120Ipd.Parameters.ParamByName('codemp').Value := 1;
              DmOra.ConsE120Ipd.Parameters.ParamByName('codfil').Value := 1;
              DmOra.ConsE120Ipd.Parameters.ParamByName('datini').Value := vdData;
              DmOra.ConsE120Ipd.Parameters.ParamByName('datfim').Value := date;
              DmOra.ConsE120Ipd.Open;

              MemoStatusPed.Lines.Add('Consultando cores dos produtos..');
              //consulta as cores dos produtos
              DmOra.ConsUsu_T120Ipd.Close;
              DmOra.ConsUsu_T120Ipd.SQL.Clear;
              DmOra.ConsUsu_T120Ipd.SQL.Add('select usu_t120ipd.*,e120ped.codrep from usu_t120ipd');
              DmOra.ConsUsu_T120Ipd.SQL.Add('inner join e120ped on e120ped.codemp = usu_t120ipd.usu_codemp and');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.codfil = usu_t120ipd.usu_codfil and');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.numped = usu_t120ipd.usu_numped');
              DmOra.ConsUsu_T120Ipd.SQL.Add('where');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.tnspro in (''90100'',''90106'',''90160'') and');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.sitped in (1,2,3,4,5,8,9) and');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.datemi between :datini and :datfim and');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.codemp = :codemp and');
              DmOra.ConsUsu_T120Ipd.SQL.Add('e120ped.codfil = :codfil');
              DmOra.ConsUsu_T120Ipd.SQL.Add('order by e120ped.usu_numcom desc');
              DmOra.ConsUsu_T120Ipd.Parameters.ParamByName('codemp').Value := 1;
              DmOra.ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := 1;
              DmOra.ConsUsu_T120Ipd.Parameters.ParamByName('datini').Value := vdData;
              DmOra.ConsUsu_T120Ipd.Parameters.ParamByName('datfim').Value := date;
              DmOra.ConsUsu_T120Ipd.Open;

              MemoStatusPed.Lines.Add('Consultando observações dos pedidos ..');
              DmOra.ConsE120Obs.Close;
              DmOra.ConsE120Obs.SQL.Clear;
              DmOra.ConsE120Obs.SQL.Add('select e120obs.codemp,e120obs.codfil,e120obs.numped,e120obs.seqobs,e120obs.tipobs,e120obs.obsped,');
              DmOra.ConsE120Obs.SQL.Add('e120obs.obsusu,e120obs.obsdat,e120obs.sitobs,e120obs.usu_numcom,e120ped.codrep');
              DmOra.ConsE120Obs.SQL.Add(' from e120obs');
              DmOra.ConsE120Obs.SQL.Add('inner join e120ped on e120ped.codemp = e120obs.codemp and');
              DmOra.ConsE120Obs.SQL.Add('e120ped.codfil = e120obs.codfil and');
              DmOra.ConsE120Obs.SQL.Add('e120ped.numped = e120obs.numped');
              DmOra.ConsE120Obs.SQL.Add(' where');
              DmOra.ConsE120Obs.SQL.Add('e120ped.tnspro in (''90100'',''90106'',''90160'') and');
              DmOra.ConsE120Obs.SQL.Add('e120ped.sitped in (1,2,3,4,5,8,9) and');
              DmOra.ConsE120Obs.SQL.Add('e120ped.datemi between :datini and :datfim and');
              DmOra.ConsE120Obs.SQL.Add('e120ped.codfil = :codfil and');
              DmOra.ConsE120Obs.SQL.Add('e120ped.codemp = :codemp');
              DmOra.ConsE120Obs.Parameters.ParamByName('codemp').Value := 1;
              DmOra.ConsE120Obs.Parameters.ParamByName('codfil').Value := 1;
              DmOra.ConsE120Obs.Parameters.ParamByName('datini').Value := vdData;
              DmOra.ConsE120Obs.Parameters.ParamByName('datfim').Value := date;
              DmOra.ConsE120Obs.Open;
          end;//3

            //GRAVA O ARQUIVO COM OS PEDIDOS
            MemoStatusPed.Lines.Add('Gerando arquivo dos pedidos tabela E120Ped');
            AssignFile ( ArqE120Ped,'\\senior\ftproot\ArqAtu\'+IntToStr(DmFire.ConsE100UsuCODUSU.Value)+'_E120PED.txt');
            Rewrite ( ArqE120Ped );
             DmOra.ConsE120Ped.First;
             while not DmOra.ConsE120Ped.Eof do
                begin//4
                  Write(ArqE120Ped, IntToStr(DmOra.ConsE120PedCODEMP.Value)+';');
                  Write(ArqE120Ped, IntToStr(DmOra.ConsE120PedCODFIL.Value)+';');
                  Write(ArqE120Ped, IntToStr(DmOra.ConsE120PedNUMPED.Value)+';');
                  Write(ArqE120Ped, IntToStr(DmOra.ConsE120PedCODREP.Value)+';');
                  Write(ArqE120Ped, IntToStr(DmOra.ConsE120PedUSU_NUMCOM.Value)+';');
                  Write(ArqE120Ped, DmOra.ConsE120PedTNSPRO.Value+';');
                  Write(ArqE120Ped, DateToStr(DmOra.ConsE120PedDATEMI.Value)+';');
                  Write(ArqE120Ped, IntToStr(DmOra.ConsE120PedHOREMI.Value)+';');
                  Write(ArqE120Ped, IntToStr(DmOra.ConsE120PedCODCLI.Value)+';');
                  Write(ArqE120Ped, DmOra.ConsE120PedCODCPG.Value+';');
                  Write(ArqE120Ped, IntToStr(DmOra.ConsE120PedQTDABE.AsInteger)+';');
                  Write(ArqE120Ped, CurrToStr(DmOra.ConsE120PedVLRBCO.AsCurrency)+';');
                  Write(ArqE120Ped, CurrToStr(DmOra.ConsE120PedVLRCOM.AsCurrency)+';');
                  Write(ArqE120Ped, CurrToStr(DmOra.ConsE120PedVLRLIQ.AsCurrency)+';');
                  Write(ArqE120Ped, IntToStr(DmOra.ConsE120PedQTDORI.AsInteger)+';');
                  Write(ArqE120Ped, CurrToStr(DmOra.ConsE120PedVLRORI.AsCurrency)+';');
                  Write(ArqE120Ped, DmOra.ConsE120PedSITPED.AsString+';');
                  Write(ArqE120Ped, IntToStr(DmOra.ConsE120PedUSUGER.AsInteger)+';');
                  Write(ArqE120Ped, DateToStr(DmOra.ConsE120PedDATGER.Value)+';');
                  Write(ArqE120Ped, IntToStr(DmOra.ConsE120PedUSUFEC.AsInteger)+';');
                  Write(ArqE120Ped, DateToStr(DmOra.ConsE120PedDATFEC.Value)+';');
                  Write(ArqE120Ped, IntToStr(DmOra.ConsE120PedUSU_PRECAR.Value)+';');
                  WriteLn ( ArqE120Ped);

                   DmOra.ConsE120Ped.Next;
                end;//4
                CloseFile(ArqE120Ped);

             //GRAVA O ARQUIVO COM OS PRODUTOS DOS PEDIDOS
             MemoStatusPed.Lines.Add('Gerando arquivo dos produtos dos pedidos tabela E120Ipd');
             AssignFile ( ArqE120Ipd,'\\senior\ftproot\ArqAtu\'+IntToStr(DmFire.ConsE100UsuCODUSU.Value)+'_E120IPD.txt');
             Rewrite ( ArqE120Ipd );
             DmOra.ConsE120Ipd.First;
             while not DmOra.ConsE120Ipd.Eof do
                begin//5
                  Write(ArqE120Ipd, IntToStr(DmOra.ConsE120IpdCODEMP.Value)+';');
                  Write(ArqE120Ipd, IntToStr(DmOra.ConsE120IpdCODFIL.Value)+';');
                  Write(ArqE120Ipd, IntToStr(DmOra.ConsE120IpdNUMPED.Value)+';');
                  Write(ArqE120Ipd, IntToStr(DmOra.ConsE120IpdSEQIPD.Value)+';');
                  Write(ArqE120Ipd, IntToStr(DmOra.ConsE120IpdUSU_NUMCOM.Value)+';');
                  Write(ArqE120Ipd, IntToStr(DmOra.ConsE120IpdCODREP.Value)+';');
                  Write(ArqE120Ipd, DmOra.ConsE120IpdTNSPRO.Value+';');
                  Write(ArqE120Ipd, DmOra.ConsE120IpdCODPRO.Value+';');
                  Write(ArqE120Ipd, DmOra.ConsE120IpdCODDER.Value+';');
                  Write(ArqE120Ipd, DmOra.ConsE120IpdCODFAM.Value+';');
                  Write(ArqE120Ipd, IntToStr(DmOra.ConsE120IpdQTDPED.AsInteger)+';');
                  Write(ArqE120Ipd, IntToStr(DmOra.ConsE120IpdQTDFAT.AsInteger)+';');
                  Write(ArqE120Ipd, IntToStr(DmOra.ConsE120IpdQTDCAN.AsInteger)+';');
                  Write(ArqE120Ipd, IntToStr(DmOra.ConsE120IpdQTDABE.AsInteger)+';');
                  Write(ArqE120Ipd, DmOra.ConsE120IpdUNIMED.Value+';');
                  Write(ArqE120Ipd, DmOra.ConsE120IpdCODTPR.Value+';');
                  Write(ArqE120Ipd, CurrToStr(DmOra.ConsE120IpdPREUNI.AsCurrency)+';');
                  Write(ArqE120Ipd, FloatToStr(DmOra.ConsE120IpdPERCOM.Value)+';');
                  Write(ArqE120Ipd, CurrToStr(DmOra.ConsE120IpdVLRBRU.Value)+';');
                  Write(ArqE120Ipd, CurrToStr(DmOra.ConsE120IpdVLRBCO.Value)+';');
                  Write(ArqE120Ipd, CurrToStr(DmOra.ConsE120IpdVLRCOM.Value)+';');
                  Write(ArqE120Ipd, CurrToStr(DmOra.ConsE120IpdVLRLPR.Value)+';');
                  Write(ArqE120Ipd, CurrToStr(DmOra.ConsE120IpdVLRLIQ.Value)+';');
                  Write(ArqE120Ipd, IntToStr(DmOra.ConsE120IpdSITIPD.Value)+';');
                  Write(ArqE120Ipd, IntToStr(DmOra.ConsE120IpdUSUGER.AsInteger)+';');
                  Write(ArqE120Ipd, DateToStr(DmOra.ConsE120IpdDATGER.Value)+';');
                  Write(ArqE120Ipd, FloatToStr(DmOra.ConsE120IpdUSU_TOTDSC.Value)+';');
                  Write(ArqE120Ipd, CurrToStr(DmOra.ConsE120IpdUSU_VLRORI.Value)+';');
                  WriteLn ( ArqE120Ipd);

                  DmOra.ConsE120Ipd.Next;
                end;//5
                CloseFile(ArqE120Ipd);

             //GERA O ARQUIVO COM AS CORES DOS PRODUTOS DOS PEDIDOS
             MemoStatusPed.Lines.Add('Gerando arquivo das cores dos produtos tabela Usu_T120Ipd');
             AssignFile ( ArqUsu120Ipd,'\\senior\ftproot\ArqAtu\'+IntToStr(DmFire.ConsE100UsuCODUSU.Value)+'_USU120IPD.txt');
             Rewrite ( ArqUsu120Ipd );
             DmOra.ConsUsu_T120Ipd.First;
             while not DmOra.ConsUsu_T120Ipd.Eof do
                begin//6
                   Write(ArqUsu120Ipd, IntToStr(DmOra.ConsUsu_T120IpdUSU_CODEMP.Value)+';');
                   Write(ArqUsu120Ipd, IntToStr(DmOra.ConsUsu_T120IpdUSU_CODFIL.Value)+';');
                   Write(ArqUsu120Ipd, IntToStr(DmOra.ConsUsu_T120IpdUSU_NUMPED.Value)+';');
                  // Write(ArqUsu120Ipd, IntToStr(DmOra.ConsUsu_T120IpdCODREP.Value)+';');
                   Write(ArqUsu120Ipd, IntToStr(DmOra.ConsUsu_T120IpdUSU_SEQIPD.Value)+';');
                   Write(ArqUsu120Ipd, IntToStr(DmOra.ConsUsu_T120IpdUSU_SEQITE.Value)+';');
                   Write(ArqUsu120Ipd, IntToStr(DmOra.ConsUsu_T120IpdUSU_NUMCOM.Value)+';');
                   Write(ArqUsu120Ipd, IntToStr(DmOra.ConsUsu_T120IpdUSU_QTDCOR.Value)+';');
                   Write(ArqUsu120Ipd, IntToStr(DmOra.ConsUsu_T120IpdUSU_TIPCMB.Value)+';');
                   Write(ArqUsu120Ipd, DmOra.ConsUsu_T120IpdUSU_COR001.Value+';');
                   Write(ArqUsu120Ipd, DmOra.ConsUsu_T120IpdUSU_COR002.Value+';');
                   Write(ArqUsu120Ipd, DmOra.ConsUsu_T120IpdUSU_CODPRO.Value+';');
                   Write(ArqUsu120Ipd, DmOra.ConsUsu_T120IpdUSU_CODDER.Value+';');
                   Write(ArqUsu120Ipd, DmOra.ConsUsu_T120IpdUSU_TECTRA.Value+';');
                   Write(ArqUsu120Ipd, IntToStr(DmOra.ConsUsu_T120IpdUSU_QTDABE.Value)+';');
                   Write(ArqUsu120Ipd, IntToStr(DmOra.ConsUsu_T120IpdUSU_QTDCAN.Value)+';');
                   Write(ArqUsu120Ipd, IntToStr(DmOra.ConsUsu_T120IpdUSU_PRECAR.Value)+';');

                   WriteLn ( ArqUsu120Ipd);
                  DmOra.ConsUsu_T120Ipd.Next;
                end;//6
               CloseFile(ArqUsu120Ipd);

             //GERA O ARQUIVO COM AS OBSERVAÇÕES DOS PRODUTOS DOS PEDIDOS
             MemoStatusPed.Lines.Add('Gerando arquivo das observações dos pedidos E120Obs');
             AssignFile ( ArqE120Obs,'\\senior\ftproot\ArqAtu\'+IntToStr(DmFire.ConsE100UsuCODUSU.Value)+'_E120OBS.txt');
             Rewrite ( ArqE120Obs );
             DmOra.ConsE120Obs.First;
             while not DmOra.ConsE120Obs.Eof do
                begin//7
                   Write(ArqE120Obs, IntToStr(DmOra.ConsE120ObsCODEMP.Value)+';');
                   Write(ArqE120Obs, IntToStr(DmOra.ConsE120ObsCODFIL.Value)+';');
                   Write(ArqE120Obs, IntToStr(DmOra.ConsE120ObsNUMPED.Value)+';');
                   write(ArqE120Obs, IntToStr(DmOra.ConsE120ObsUSU_NUMCOM.Value)+';');
                   write(ArqE120Obs, IntToStr(DmOra.ConsE120ObsCODREP.Value)+';');
                   Write(ArqE120Obs, IntToStr(DmOra.ConsE120ObsSEQOBS.Value)+';');
                   Write(ArqE120Obs, DmOra.ConsE120ObsTIPOBS.Value+';');
                   vaObsPed := DmOra.ConsE120ObsOBSPED.Value;
                   vaObsPed := StringReplace(vaObsPed, #13#10, '', [rfReplaceAll]); //tira os espaços da quebra de linha se tiver
                   vaObsPed := Copy(vaObsPed,0,110);
                   Write(ArqE120Obs, vaObsPed+';');
                   Write(ArqE120Obs, IntToStr(DmOra.ConsE120ObsOBSUSU.AsInteger)+';');
                   Write(ArqE120Obs, dateToStr(DmOra.ConsE120ObsOBSDAT.Value)+';');
                   Write(ArqE120Obs, DmOra.ConsE120ObsSITOBS.Value+';');
                   WriteLn ( ArqE120Obs);
                  DmOra.ConsE120Obs.Next;
                end;//7
               CloseFile(ArqE120Obs);

         DmFire.ConsE100Usu.Next;
      end;//1
      MemoStatusPed.Clear;

end;

end.
