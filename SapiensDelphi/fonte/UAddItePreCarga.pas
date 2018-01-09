unit UAddItePreCarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB;

type
  TFAddItePreCarga = class(TForm)
    EdPreCar: TEdit;
    EdFilial: TEdit;
    EdPedido: TEdit;
    EdCodRep: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BProcessa: TBitBtn;
    BCancela: TBitBtn;
    ValidaFilial: TADOQuery;
    ValidaFilialCODEMP: TIntegerField;
    ValidaFilialCODFIL: TIntegerField;
    ValidaFilialNOMFIL: TStringField;
    ValidaFilialSIGFIL: TStringField;
    ValidaFilialINSEST: TStringField;
    ValidaFilialINSMUN: TStringField;
    ValidaFilialNUMCGC: TBCDField;
    ValidaFilialENDFIL: TStringField;
    ValidaFilialNUMEND: TIntegerField;
    ValidaFilialCPLEND: TStringField;
    ValidaFilialCEPFIL: TIntegerField;
    ValidaFilialCEPINI: TIntegerField;
    ValidaFilialCODRAI: TIntegerField;
    ValidaFilialBAIFIL: TStringField;
    ValidaFilialCIDFIL: TStringField;
    ValidaFilialSIGUFS: TStringField;
    ValidaFilialENDENT: TStringField;
    ValidaFilialCPLENT: TStringField;
    ValidaFilialCEPENT: TIntegerField;
    ValidaFilialCIDENT: TStringField;
    ValidaFilialESTENT: TStringField;
    ValidaFilialENDCOB: TStringField;
    ValidaFilialCPLCOB: TStringField;
    ValidaFilialCEPCOB: TIntegerField;
    ValidaFilialCIDCOB: TStringField;
    ValidaFilialESTCOB: TStringField;
    ValidaFilialNUMFON: TStringField;
    ValidaFilialNUMFAX: TStringField;
    ValidaFilialCXAPST: TIntegerField;
    ValidaFilialINTNET: TStringField;
    ValidaFilialTIPEMP: TIntegerField;
    ValidaFilialFILCLI: TIntegerField;
    ValidaFilialFILFOR: TIntegerField;
    ValidaFilialPEDINI: TIntegerField;
    ValidaFilialZONFRA: TIntegerField;
    ValidaFilialCODSUF: TStringField;
    ValidaFilialDIFALI: TStringField;
    ValidaFilialCRIFED: TIntegerField;
    ValidaFilialQTDDLB: TIntegerField;
    ValidaFilialVENPDI: TDateTimeField;
    ValidaFilialVENPDF: TDateTimeField;
    ValidaFilialVENCAE: TIntegerField;
    ValidaFilialVENQDF: TIntegerField;
    ValidaFilialVENTCC: TStringField;
    ValidaFilialVENTPP: TStringField;
    ValidaFilialVENTPS: TStringField;
    ValidaFilialVENDSU: TBCDField;
    ValidaFilialVENVMP: TBCDField;
    ValidaFilialVENLEP: TIntegerField;
    ValidaFilialVENTCV: TStringField;
    ValidaFilialVENCEP: TStringField;
    ValidaFilialVENPVP: TStringField;
    ValidaFilialVENNPA: TStringField;
    ValidaFilialVENCFI: TStringField;
    ValidaFilialVENNTR: TStringField;
    ValidaFilialVENSNR: TStringField;
    ValidaFilialVENQIP: TIntegerField;
    ValidaFilialVENSNP: TStringField;
    ValidaFilialVENQDP: TIntegerField;
    ValidaFilialVENRPD: TIntegerField;
    ValidaFilialVENCCC: TStringField;
    ValidaFilialVENCCR: TStringField;
    ValidaFilialVENCRR: TStringField;
    ValidaFilialVENPSE: TStringField;
    ValidaFilialVENPAM: TIntegerField;
    ValidaFilialVENPMA: TIntegerField;
    ValidaFilialVENPPC: TIntegerField;
    ValidaFilialVENPTA: TIntegerField;
    ValidaFilialVENPDT: TIntegerField;
    ValidaFilialVENPCS: TIntegerField;
    ValidaFilialVENPLC: TStringField;
    ValidaFilialVENFAM: TIntegerField;
    ValidaFilialVENFMA: TIntegerField;
    ValidaFilialVENFPC: TIntegerField;
    ValidaFilialVENFTA: TIntegerField;
    ValidaFilialVENFDT: TIntegerField;
    ValidaFilialVENFCS: TIntegerField;
    ValidaFilialVENFLC: TStringField;
    ValidaFilialVENISS: TBCDField;
    ValidaFilialVENIPD: TIntegerField;
    ValidaFilialVENAPC: TIntegerField;
    ValidaFilialVENLVP: TBCDField;
    ValidaFilialESTPDI: TDateTimeField;
    ValidaFilialESTPDF: TDateTimeField;
    ValidaFilialESTPAI: TDateTimeField;
    ValidaFilialESTPAF: TDateTimeField;
    ValidaFilialESTTEI: TStringField;
    ValidaFilialESTTSI: TStringField;
    ValidaFilialESTTPR: TStringField;
    ValidaFilialESTUNM: TStringField;
    ValidaFilialESTDPF: TStringField;
    ValidaFilialRECPDI: TDateTimeField;
    ValidaFilialRECPDF: TDateTimeField;
    ValidaFilialRECPOR: TStringField;
    ValidaFilialRECCRT: TStringField;
    ValidaFilialRECOCR: TStringField;
    ValidaFilialRECINS: TStringField;
    ValidaFilialRECVMT: TBCDField;
    ValidaFilialRECDPR: TIntegerField;
    ValidaFilialRECMOE: TStringField;
    ValidaFilialRECJMM: TBCDField;
    ValidaFilialRECTJR: TStringField;
    ValidaFilialRECDTJ: TIntegerField;
    ValidaFilialRECMUL: TBCDField;
    ValidaFilialRECDTM: TIntegerField;
    ValidaFilialRECVJM: TBCDField;
    ValidaFilialRECVDM: TBCDField;
    ValidaFilialRECVMM: TBCDField;
    ValidaFilialRECAVS: TStringField;
    ValidaFilialRECADC: TStringField;
    ValidaFilialRECAOC: TStringField;
    ValidaFilialRECPCJ: TStringField;
    ValidaFilialRECPCM: TStringField;
    ValidaFilialRECPCE: TStringField;
    ValidaFilialRECPCC: TStringField;
    ValidaFilialRECPCO: TStringField;
    ValidaFilialRECTPM: TStringField;
    ValidaFilialRECTAC: TStringField;
    ValidaFilialRECTES: TStringField;
    ValidaFilialRECTBP: TStringField;
    ValidaFilialRECTBA: TStringField;
    ValidaFilialRECTBS: TStringField;
    ValidaFilialRECTBC: TStringField;
    ValidaFilialRECTPC: TStringField;
    ValidaFilialRECTCC: TStringField;
    ValidaFilialCPRPDI: TDateTimeField;
    ValidaFilialCPRPDF: TDateTimeField;
    ValidaFilialCPRQMC: TIntegerField;
    ValidaFilialCPRAVO: TStringField;
    ValidaFilialCPRDNF: TBCDField;
    ValidaFilialCPRTOP: TStringField;
    ValidaFilialCPRTOM: TStringField;
    ValidaFilialCPRTOS: TStringField;
    ValidaFilialCPRTFP: TStringField;
    ValidaFilialCPRTFS: TStringField;
    ValidaFilialCPRTEA: TStringField;
    ValidaFilialCPRTSA: TStringField;
    ValidaFilialCPRSNP: TStringField;
    ValidaFilialCPRCCF: TStringField;
    ValidaFilialCPRCFR: TStringField;
    ValidaFilialCPRFSS: TIntegerField;
    ValidaFilialPAGPDI: TDateTimeField;
    ValidaFilialPAGPDF: TDateTimeField;
    ValidaFilialPAGAPR: TStringField;
    ValidaFilialPAGDPR: TIntegerField;
    ValidaFilialPAGMOE: TStringField;
    ValidaFilialPAGJMM: TBCDField;
    ValidaFilialPAGTJR: TStringField;
    ValidaFilialPAGDTJ: TIntegerField;
    ValidaFilialPAGMUL: TBCDField;
    ValidaFilialPAGDTM: TIntegerField;
    ValidaFilialPAGTPM: TStringField;
    ValidaFilialPAGTPF: TStringField;
    ValidaFilialPAGTAF: TStringField;
    ValidaFilialPAGTBP: TStringField;
    ValidaFilialPAGTBC: TStringField;
    ValidaFilialPAGTBS: TStringField;
    ValidaFilialPAGTPC: TStringField;
    ValidaFilialPAGTCC: TStringField;
    ValidaFilialPAGVJM: TBCDField;
    ValidaFilialPAGVDM: TBCDField;
    ValidaFilialPAGVMM: TBCDField;
    ValidaFilialPAGTCM: TStringField;
    ValidaFilialPAGTDC: TStringField;
    ValidaFilialPAGTDI: TStringField;
    ValidaFilialPAGLIR: TBCDField;
    ValidaFilialPAGEEV: TIntegerField;
    ValidaFilialCXBPDI: TDateTimeField;
    ValidaFilialCXBPDF: TDateTimeField;
    ValidaFilialCXBTCA: TStringField;
    ValidaFilialCXBTDC: TStringField;
    ValidaFilialCXBTDE: TStringField;
    ValidaFilialCXBTDT: TStringField;
    ValidaFilialCXBDEC: TIntegerField;
    ValidaFilialCTBEXI: TDateTimeField;
    ValidaFilialCTBEXF: TDateTimeField;
    ValidaFilialCTBPEI: TDateTimeField;
    ValidaFilialCTBPEF: TDateTimeField;
    ValidaFilialCTBQDL: TIntegerField;
    ValidaFilialCTBMOE: TStringField;
    ValidaFilialCTBLOG: TStringField;
    ValidaFilialCTBALI: TStringField;
    ValidaFilialCTBDIA: TDateTimeField;
    ValidaFilialCTBOBS: TStringField;
    ValidaFilialCTBNRJ: TStringField;
    ValidaFilialCTBDRJ: TDateTimeField;
    ValidaFilialCTBNSR: TStringField;
    ValidaFilialCTBFSR: TStringField;
    ValidaFilialCTBCSR: TBCDField;
    ValidaFilialCTBNCR: TStringField;
    ValidaFilialCTBFCR: TStringField;
    ValidaFilialCTBCRC: TStringField;
    ValidaFilialCTBCCR: TBCDField;
    ValidaFilialCTBCFM: TIntegerField;
    ValidaFilialCTBCAE: TStringField;
    ValidaFilialCTBCAF: TIntegerField;
    ValidaFilialCTBFEC: TStringField;
    ValidaFilialCTBSDT: TStringField;
    ValidaFilialCTBSDE: TStringField;
    ValidaFilialCTBSCR: TStringField;
    ValidaFilialCTBSVL: TStringField;
    ValidaFilialCTBSHP: TStringField;
    ValidaFilialCTBHAB: TStringField;
    ValidaFilialEFIPDI: TDateTimeField;
    ValidaFilialEFIPDF: TDateTimeField;
    ValidaFilialEFIFTR: TStringField;
    ValidaFilialEFIAPI: TBCDField;
    ValidaFilialEFISTR: TStringField;
    ValidaFilialEFIREG: TIntegerField;
    ValidaFilialEFIQCI: TIntegerField;
    ValidaFilialPRDTEP: TStringField;
    ValidaFilialPRDTSP: TStringField;
    ValidaFilialPRDQDD: TIntegerField;
    ValidaFilialPRDTPP: TStringField;
    ValidaFilialPRDCPP: TIntegerField;
    ValidaFilialPRDRPP: TIntegerField;
    ValidaFilialPRDPPP: TStringField;
    ValidaFilialPRDTEE: TStringField;
    ValidaFilialPRDTNR: TStringField;
    ValidaFilialPRDEFI: TBCDField;
    ValidaFilialPEDBLO: TStringField;
    ValidaFilialCOMPRZ: TStringField;
    ValidaFilialPERCOM: TBCDField;
    ValidaFilialTIPSEP: TStringField;
    ValidaFilialINDROE: TStringField;
    ValidaFilialCPRIEF: TStringField;
    ValidaFilialVENIEC: TStringField;
    ValidaFilialRECTIA: TStringField;
    ValidaFilialESTFPR: TStringField;
    ValidaFilialINDEXP: TIntegerField;
    ValidaFilialDATPAL: TDateTimeField;
    ValidaFilialHORPAL: TIntegerField;
    ValidaFilialCODAFI: TIntegerField;
    ValidaFilialEENFIL: TStringField;
    ValidaFilialEENENT: TStringField;
    ValidaFilialEENCOB: TStringField;
    ValidaFilialBAIENT: TStringField;
    ValidaFilialBAICOB: TStringField;
    ValidaFilialNENFIL: TStringField;
    ValidaFilialFILMAT: TStringField;
    ValidaPedido: TADOQuery;
    ValidaPedidoCODEMP: TIntegerField;
    ValidaPedidoCODFIL: TIntegerField;
    ValidaPedidoNUMPED: TIntegerField;
    ValidaPedidoCODCLI: TIntegerField;
    ValidaPedidoSITPED: TIntegerField;
    ValidaPedidoCIDCLI: TStringField;
    ValidaPedidoSIGUFS: TStringField;
    ValidaPedidoCODREP: TIntegerField;
    ValidaPedidoNOMREP: TStringField;
    ValidaPedidoNOMCLI: TStringField;
    LDscliente: TLabel;
    LDsRepresentante: TLabel;
    ConsVolPro: TADOQuery;
    ConsVolProCODPRO: TStringField;
    ConsVolProCODDER: TStringField;
    ConsVolProVOLDER: TBCDField;
    SeExisteUsu_TProCar: TADOQuery;
    SeExisteUsu_TProCarUSU_NUMANE: TIntegerField;
    SeExisteUsu_TProCarUSU_CODPRO: TStringField;
    SeExisteUsu_TProCarUSU_CODDER: TStringField;
    SeExisteUsu_TProCarUSU_QTDPED: TIntegerField;
    SeExisteUsu_TProCarUSU_QTDPRO: TIntegerField;
    SeExisteUsu_TProCarUSU_QTDABE: TIntegerField;
    SeExisteUsu_TProCarUSU_PROCOR: TStringField;
    SeExisteUsu_TCorCar: TADOQuery;
    SeExisteUsu_TCorCarUSU_NUMANE: TIntegerField;
    SeExisteUsu_TCorCarUSU_CODPRO: TStringField;
    SeExisteUsu_TCorCarUSU_CODDER: TStringField;
    SeExisteUsu_TCorCarUSU_CODCOR1: TStringField;
    SeExisteUsu_TCorCarUSU_QTDPED: TIntegerField;
    SeExisteUsu_TCorCarUSU_QTDPRO: TIntegerField;
    SeExisteUsu_TCorCarUSU_QTDABE: TIntegerField;
    SeExisteUsu_TCorCarUSU_SALABE1: TBCDField;
    SeExisteUsu_TCorCarUSU_CODCOR2: TStringField;
    SeExisteUsu_TCorCarUSU_SALABE2: TBCDField;
    SeExisteUsu_TCorCarUSU_TIPCOM: TIntegerField;
    SeExisteUsu_TCorCarUSU_CORCOR: TStringField;
    SeExisteUsu_TCorCarUSU_SELITE: TStringField;
    SeExisteUsu_TCorCarUSU_QTDCOR1: TBCDField;
    SeExisteUsu_TCorCarUSU_QTDCOR2: TBCDField;
    ValidaPedidoPEDBLO: TStringField;
    ValidaPedidoUSU_PRECAR: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BCancelaClick(Sender: TObject);
    procedure EdFilialExit(Sender: TObject);
    procedure EdPedidoExit(Sender: TObject);
    procedure BProcessaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddItePreCarga: TFAddItePreCarga;

implementation

uses UDm1, UDm, UPrincipal, UPreCarga;

{$R *.dfm}

procedure TFAddItePreCarga.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAddItePreCarga.BCancelaClick(Sender: TObject);
begin
    Dm1.CadUsu_TIteCar.Cancel;
    Close;
end;

procedure TFAddItePreCarga.EdFilialExit(Sender: TObject);
begin
    if EdFilial.Text <> '' then
       begin
          ValidaFilial.Close;
          ValidaFilial.Parameters.ParamByName('codemp').Value := 1;
          ValidaFilial.Parameters.ParamByName('codfil').Value := StrToInt(EdFilial.Text);
          ValidaFilial.Open;
          if ValidaFilial.IsEmpty then
            begin
               Application.MessageBox('Filial Inválida!','Aviso', MB_ICONWARNING+MB_OK);
               EdFilial.Clear;
               EdFilial.SetFocus;
            end;

       end;
end;

procedure TFAddItePreCarga.EdPedidoExit(Sender: TObject);
var vaErroPedido : String;
begin
if EdPedido.Text <> '' then
   begin
    if EdFilial.Text = '' then
       begin
         Application.MessageBox('Informe a Filial antes de informar o pedido','Aviso', MB_ICONWARNING+MB_OK);
         EdFilial.SetFocus;
       end
    else
       begin
          ValidaPedido.Close;
          ValidaPedido.Parameters.ParamByName('numped').Value := StrToInt(EdPedido.Text);
          ValidaPedido.Open;
          if ValidaPedido.IsEmpty then
             begin
               vaErroPedido := 'Pedido não encontrado';
               Application.MessageBox(Pchar(vaErroPedido),'Aviso', MB_ICONWARNING+MB_OK);
               EdPedido.Clear;
               LDscliente.Caption := '';
               LDsRepresentante.Caption := '';
               EdPedido.SetFocus;
               Abort;
             end
          else
             begin
               if ((ValidaPedidoSITPED.Value <> 1) and (ValidaPedidoSITPED.Value <> 2)) then
                  begin
                     vaErroPedido := 'Situação do pedido não está entre (1,2)';
                     Application.MessageBox(Pchar(vaErroPedido),'Aviso', MB_ICONWARNING+MB_OK);
                     EdPedido.Clear;
                     LDscliente.Caption := '';
                     LDsRepresentante.Caption := '';
                     EdPedido.SetFocus;
                     Abort;
                  end;

                if ValidaPedidoUSU_PRECAR.Value <> 0 then
                   begin
                     vaErroPedido := 'O pedido já está em pré-carga. Pré-Carga Nº '+IntToStr(ValidaPedidoUSU_PRECAR.AsInteger);
                     Application.MessageBox(Pchar(vaErroPedido),'Aviso', MB_ICONWARNING+MB_OK);
                     EdPedido.Clear;
                     LDscliente.Caption := '';
                     LDsRepresentante.Caption := '';
                     EdPedido.SetFocus;
                     Abort;
                   end;

                if ValidaPedidoPEDBLO.AsString = 'S' then
                   begin
                     vaErroPedido := 'Pedido BLOQUEADO, (falar com financeiro)';
                     Application.MessageBox(Pchar(vaErroPedido),'Aviso', MB_ICONWARNING+MB_OK);
                     EdPedido.Clear;
                     LDscliente.Caption := '';
                     LDsRepresentante.Caption := '';
                     EdPedido.SetFocus;
                     Abort;
                   end;

                LDscliente.Caption := ValidaPedidoNOMCLI.Value;
                EdCodRep.Text := IntToStr(ValidaPedidoCODREP.Value);
                LDsRepresentante.Caption := ValidaPedidoNOMREP.Value;

             end;

         { if ValidaPedido.IsEmpty then
             begin
               vaErroPedido := 'Pedido não encontrado, motivos:'#13'';
               vaErroPedido := vaErroPedido + 'Situação não está entre (1 ou 2);'#13'';
               vaErroPedido := vaErroPedido + 'O pedidos já está em Pré-Carga;'#13'';
               Application.MessageBox(Pchar(vaErroPedido),'Aviso', MB_ICONWARNING+MB_OK);
               EdPedido.Clear;
               LDscliente.Caption := '';
               LDsRepresentante.Caption := '';
               EdPedido.SetFocus;
             end
          else
             begin
               LDscliente.Caption := ValidaPedidoNOMCLI.Value;
               EdCodRep.Text := IntToStr(ValidaPedidoCODREP.Value);
               LDsRepresentante.Caption := ValidaPedidoNOMREP.Value;
             end;}

       end;
   end;

end;

procedure TFAddItePreCarga.BProcessaClick(Sender: TObject);
var Hora : String;
    vnVolPro, vnVlrTot : Double;
    vaCodCor2 : string;
begin
    if EdFilial.Text = '' then
      begin
         Application.MessageBox('Informe a Filial','Aviso', MB_ICONWARNING+MB_OK);
         EdFilial.SetFocus;
      end
    else if EdPedido.Text = '' then
            begin
              Application.MessageBox('Informe o Pedido','Aviso', MB_ICONWARNING+MB_OK);
               EdPedido.SetFocus;
            end
          else
            begin//1
               //inseri na tabela usu_titecar
               Dm1.CadUsu_TIteCar.Open;
               Dm1.CadUsu_TIteCar.Insert;
               Dm1.CadUsu_TIteCarUSU_PRECAR.Value := StrToInt(EdPreCar.Text);
               //busca a sequencia para o iten
               Dm1.SeqUsu_TIteCar.Close;
               Dm1.SeqUsu_TIteCar.Parameters.ParamByName('precar').Value := StrToInt(EdPreCar.Text);
               Dm1.SeqUsu_TIteCar.Open;
               if Dm1.SeqUsu_TIteCarUSU_SEQITE.Value = 0 then
                  begin//2
                    Dm1.CadUsu_TIteCarUSU_SEQITE.Value := 1;
                  end//2
               else
                  begin//3
                    Dm1.CadUsu_TIteCarUSU_SEQITE.Value := Dm1.SeqUsu_TIteCarUSU_SEQITE.Value + 1;
                  end;//3
              Dm1.CadUsu_TIteCarUSU_FILPED.Value := StrToInt(EdFilial.Text);
              Dm1.CadUsu_TIteCarUSU_NUMPED.Value := StrToInt(EdPedido.Text);
              Dm1.CadUsu_TIteCarUSU_CODUSU.Value := FPrincipal.cd_usuario;
              Dm1.CadUsu_TIteCarUSU_DATGER.Value := Date;
              Hora := TimeToStr(Time);
              Dm1.CadUsu_TIteCarUSU_HORGER.Value := (StrToInt(Copy(Hora,1,2))*60) + StrToInt(Copy(Hora,4,2));
              Dm1.CadUsu_TIteCarUSU_CODREP.Value := StrToInt(EdCodRep.Text);
              Dm1.CadUsu_TIteCar.Post;
              //atualiza a tabela e120ped o campo com o numero da pre-carga
              Dm1.CadE120Ped.Close;
              Dm1.CadE120Ped.Parameters.ParamByName('codemp').Value := ValidaPedidoCODEMP.Value;
              Dm1.CadE120Ped.Parameters.ParamByName('codfil').Value := StrToInt(EdFilial.Text);
              Dm1.CadE120Ped.Parameters.ParamByName('numped').Value := StrToInt(EdPedido.Text);
              Dm1.CadE120Ped.Open;
              Dm1.CadE120Ped.Edit;
              Dm1.CadE120PedUSU_PRECAR.Value := StrToInt(EdPreCar.Text);

              if Dm1.CadE120PedCODREP.AsInteger = 15 then
                 Dm1.CadE120PedCODREP.AsInteger := 1;
              Dm1.CadE120Ped.Post;
              
              //consulta os produtos do pedido
              Dm1.ConsE120Ipd.Close;
              Dm1.ConsE120Ipd.Parameters.ParamByName('codemp').Value := ValidaPedidoCODEMP.Value;
              Dm1.ConsE120Ipd.Parameters.ParamByName('codfil').Value := StrToInt(EdFilial.Text);
              Dm1.ConsE120Ipd.Parameters.ParamByName('numped').Value := StrToInt(EdPedido.Text);
              Dm1.ConsE120Ipd.Open;
              
              if FPreCarga.EdVolProd.Text <> '' then
                vnVolPro := StrToFloat(FPreCarga.EdVolProd.Text)
              else
                vnVolPro := 0;

              if FPreCarga.EdVlrTot.Text <> '' then
                 vnVlrTot := StrToFloat(FPreCarga.EdVlrTot.Text)
              else
                 vnVlrTot := 0;
              //percorre todos os produtos do pedido
              Dm1.ConsE120Ipd.First;
              while not Dm1.ConsE120Ipd.Eof do
                 begin//4
                    //consulta as cores de cada produto do pedido
                    Dm1.ConsUsu_T120IpdPC.Close;
                    Dm1.ConsUsu_T120IpdPC.Parameters.ParamByName('codemp').Value := Dm1.ConsE120IpdCODEMP.Value;
                    Dm1.ConsUsu_T120IpdPC.Parameters.ParamByName('codfil').Value := Dm1.ConsE120IpdCODFIL.Value;
                    Dm1.ConsUsu_T120IpdPC.Parameters.ParamByName('numped').Value := Dm1.ConsE120IpdNUMPED.Value;
                    Dm1.ConsUsu_T120IpdPC.Parameters.ParamByName('seqipd').Value := Dm1.ConsE120IpdSEQIPD.Value;
                    Dm1.ConsUsu_T120IpdPC.Open;
                    //percorre todas as cores de cada produto do pedido da pre-carga
                    Dm1.ConsUsu_T120IpdPC.First;
                    while not Dm1.ConsUsu_T120IpdPC.Eof do
                        begin//5
                          Dm1.CadUsu_T120Ipd.Close;
                          Dm1.CadUsu_T120Ipd.Parameters.ParamByName('codemp').Value := Dm1.ConsUsu_T120IpdPCUSU_CODEMP.Value;
                          Dm1.CadUsu_T120Ipd.Parameters.ParamByName('codfil').Value := Dm1.ConsUsu_T120IpdPCUSU_CODFIL.Value;
                          Dm1.CadUsu_T120Ipd.Parameters.ParamByName('numped').Value := Dm1.ConsUsu_T120IpdPCUSU_NUMPED.Value;
                          Dm1.CadUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := Dm1.ConsUsu_T120IpdPCUSU_SEQIPD.Value;
                          Dm1.CadUsu_T120Ipd.Parameters.ParamByName('seqite').Value := Dm1.ConsUsu_T120IpdPCUSU_SEQITE.Value;
                          Dm1.CadUsu_T120Ipd.Open;
                          Dm1.CadUsu_T120Ipd.Edit;
                          Dm1.CadUsu_T120IpdUSU_PRECAR.Value := StrToInt(EdPreCar.Text);
                          Dm1.CadUsu_T120Ipd.Post;
                          //se a pre-carga ja foi importada para produção  e o produto for estofado
                          if (Dm1.CadUsu_TPreCarUSU_CARIMP.Value = 'S') and (Dm1.ConsE120IpdCODFAM.Value = '01001') then
                            begin//6
                                //verifica se ja existe
                                SeExisteUsu_TProCar.Close;
                                SeExisteUsu_TProCar.Parameters.ParamByName('numane').Value := StrToInt(EdPreCar.Text);
                                SeExisteUsu_TProCar.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                SeExisteUsu_TProCar.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                SeExisteUsu_TProCar.Open;
                                //se existir altera a quantidade na carga se nao inseri um novo registro
                                if not SeExisteUsu_TProCar.IsEmpty then
                                   begin//7
                                      Dm1.CadUsu_TProCar.Close;
                                      Dm1.CadUsu_TProCar.Parameters.ParamByName('numane').Value := StrToInt(EdPreCar.Text);
                                      Dm1.CadUsu_TProCar.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                      Dm1.CadUsu_TProCar.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                      Dm1.CadUsu_TProCar.Open;
                                      Dm1.CadUsu_TProCar.Edit;
                                      Dm1.CadUsu_TProCarUSU_QTDPED.Value := Dm1.CadUsu_TProCarUSU_QTDPED.Value + Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                      Dm1.CadUsu_TProCarUSU_QTDABE.Value := Dm1.CadUsu_TProCarUSU_QTDABE.Value + Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                      if Dm1.CadUsu_TProCarUSU_QTDABE.Value = Dm1.CadUsu_TProCarUSU_QTDPED.Value then
                                          Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'N'
                                      else
                                          Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'P';
                                      Dm1.CadUsu_TProCar.Post;
                                    end//7
                                else
                                   begin//8
                                      Dm1.CadUsu_TProCar.Open;
                                      Dm1.CadUsu_TProCar.Insert;
                                      Dm1.CadUsu_TProCarUSU_NUMANE.Value := StrToInt(EdPreCar.Text);
                                      Dm1.CadUsu_TProCarUSU_CODPRO.Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                      Dm1.CadUsu_TProCarUSU_CODDER.Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                      Dm1.CadUsu_TProCarUSU_QTDPED.Value := Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                      Dm1.CadUsu_TProCarUSU_QTDPRO.Value := 0;
                                      Dm1.CadUsu_TProCarUSU_QTDABE.Value := Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                      Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'N';
                                      Dm1.CadUsu_TProCar.Post;
                                   end;//8
                                  //se ja existir a cor para o produto atualiza a quantidade se nao inserre um novo registro
                                  SeExisteUsu_TCorCar.Close;
                                  SeExisteUsu_TCorCar.Parameters.ParamByName('numane').Value := StrToInt(EdPreCar.Text);
                                  SeExisteUsu_TCorCar.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                  SeExisteUsu_TCorCar.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                  SeExisteUsu_TCorCar.Parameters.ParamByName('codcor1').Value := Dm1.ConsUsu_T120IpdPCUSU_COR001.Value;
                                  if Dm1.ConsUsu_T120IpdPCUSU_COR002.Value = '' then
                                   vaCodCor2 := ' '
                                  else
                                   vaCodCor2 := Dm1.ConsUsu_T120IpdPCUSU_COR002.Value;

                                  SeExisteUsu_TCorCar.Parameters.ParamByName('codcor2').Value := vaCodCor2;
                                  SeExisteUsu_TCorCar.Open;
                                  if not SeExisteUsu_TCorCar.IsEmpty then
                                     begin//9
                                       Dm1.CadUsu_TCorCar.Close;
                                       Dm1.CadUsu_TCorCar.Parameters.ParamByName('numane').Value := StrToInt(EdPreCar.Text);
                                       Dm1.CadUsu_TCorCar.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                       Dm1.CadUsu_TCorCar.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                       Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor1').Value := Dm1.ConsUsu_T120IpdPCUSU_COR001.Value;
                                       Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor2').Value := vaCodCor2;
                                       Dm1.CadUsu_TCorCar.Open;
                                       Dm1.CadUsu_TCorCar.Edit;
                                       Dm1.CadUsu_TCorCarUSU_QTDPED.Value := Dm1.CadUsu_TCorCarUSU_QTDPED.Value + Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                       Dm1.CadUsu_TCorCarUSU_QTDABE.Value := Dm1.CadUsu_TCorCarUSU_QTDABE.Value + Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                       //consulta o consumo de tecido do produto
                                       Dm1.ConsE075DerConsTec.Close;
                                       Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                       Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                       Dm1.ConsE075DerConsTec.Open;
                                       if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 1 then
                                          begin//10
                                             Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value + (Dm1.ConsE075DerConsTecUSU_CORUNI.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value);
                                          end//10
                                       else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 2 then
                                               begin//11
                                                  Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value + (Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value);
                                                  Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.CadUsu_TCorCarUSU_SALABE2.Value + (Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value);
                                               end//11
                                            else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 3 then
                                                    begin//12
                                                       Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value + (Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value);
                                                       Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.CadUsu_TCorCarUSU_SALABE2.Value + (Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value);
                                                    end;//12
                                       if Dm1.CadUsu_TCorCarUSU_QTDPED.Value =  Dm1.CadUsu_TCorCarUSU_QTDABE.Value then
                                           Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'N'
                                       else
                                           Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'P';
                                       Dm1.CadUsu_TCorCar.Post;
                                     end//9
                                  else
                                    begin//13
                                       Dm1.CadUsu_TCorCar.Open;
                                       Dm1.CadUsu_TCorCar.Insert;
                                       Dm1.CadUsu_TCorCarUSU_NUMANE.Value := StrToInt(EdPreCar.Text);
                                       Dm1.CadUsu_TCorCarUSU_CODPRO.Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                       Dm1.CadUsu_TCorCarUSU_CODDER.Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                       Dm1.CadUsu_TCorCarUSU_CODCOR1.Value := Dm1.ConsUsu_T120IpdPCUSU_COR001.Value;
                                       Dm1.CadUsu_TCorCarUSU_CODCOR2.Value := vaCodCor2;
                                       Dm1.CadUsu_TCorCarUSU_QTDPED.Value := Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                       Dm1.CadUsu_TCorCarUSU_QTDPRO.Value := 0;
                                       Dm1.CadUsu_TCorCarUSU_QTDABE.Value := Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                       Dm1.CadUsu_TCorCarUSU_TIPCOM.Value := Dm1.ConsUsu_T120IpdPCUSU_TIPCMB.Value;
                                       Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'N';
                                       //consulta o consumo de tecido do produto
                                       Dm1.ConsE075DerConsTec.Close;
                                       Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                       Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                       Dm1.ConsE075DerConsTec.Open;
                                       if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 1 then
                                          begin//14
                                             Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.ConsE075DerConsTecUSU_CORUNI.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                             Dm1.CadUsu_TCorCarUSU_SALABE2.Value := 0;
                                          end//14
                                       else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 2 then
                                               begin//15
                                                  Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                                  Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                               end//15
                                             else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 3 then
                                                     begin//16
                                                        Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                                        Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                                     end;//16
                                       Dm1.CadUsu_TCorCar.Post;
                                    end;//13
                                    //veririca se existe saldo geral do produto se existir atualiza o saldo se nao insere
                                    Dm1.CadUsu_TSalPro.Close;
                                    Dm1.CadUsu_TSalPro.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                    Dm1.CadUsu_TSalPro.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                    Dm1.CadUsu_TSalPro.Open;
                                    if not Dm1.CadUsu_TSalPro.IsEmpty then
                                       begin//17
                                         Dm1.CadUsu_TSalPro.Edit;
                                         Dm1.CadUsu_TSalProUSU_QTDABE.Value := Dm1.CadUsu_TSalProUSU_QTDABE.Value + Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                         Dm1.CadUsu_TSalPro.Post;
                                       end//17
                                    else
                                      begin//18
                                         Dm1.CadUsu_TSalPro.Insert;
                                         Dm1.CadUsu_TSalProUSU_CODPRO.Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                         Dm1.CadUsu_TSalProUSU_CODDER.Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                         Dm1.CadUsu_TSalProUSU_QTDABE.Value := Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                         Dm1.CadUsu_TSalPro.Post;
                                      end;//18
                                    //verifica se existe a cor do saldo geral de produtos se existir atualiza se nao insere
                                    Dm1.CadUsu_TCorSal.Close;
                                    Dm1.CadUsu_TCorSal.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                    Dm1.CadUsu_TCorSal.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                    Dm1.CadUsu_TCorSal.Parameters.ParamByName('codcor1').Value := Dm1.ConsUsu_T120IpdPCUSU_COR001.Value;
                                    if Dm1.ConsUsu_T120IpdPCUSU_COR002.Value = '' then
                                   vaCodCor2 := ' '
                                  else
                                    vaCodCor2 := Dm1.ConsUsu_T120IpdPCUSU_COR002.Value;
                                    Dm1.CadUsu_TCorSal.Parameters.ParamByName('codcor2').Value := vaCodCor2;
                                    Dm1.CadUsu_TCorSal.Open;
                                    if not Dm1.CadUsu_TCorSal.IsEmpty then
                                       begin//19
                                          Dm1.CadUsu_TCorSal.Edit;
                                          Dm1.CadUsu_TCorSalUSU_QTDABE.Value := Dm1.CadUsu_TCorSalUSU_QTDABE.Value + Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                          Dm1.CadUsu_TCorSal.Post;
                                       end//19
                                    else
                                       begin//20
                                          Dm1.CadUsu_TCorSal.Insert;
                                          Dm1.CadUsu_TCorSalUSU_CODPRO.Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                          Dm1.CadUsu_TCorSalUSU_CODDER.Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                          Dm1.CadUsu_TCorSalUSU_CODCOR1.Value := Dm1.ConsUsu_T120IpdPCUSU_COR001.Value;
                                          Dm1.CadUsu_TCorSalUSU_CODCOR2.Value := vaCodCor2;
                                          Dm1.CadUsu_TCorSalUSU_QTDABE.Value := Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                          Dm1.CadUsu_TCorSalUSU_TIPCOM.Value := Dm1.ConsUsu_T120IpdPCUSU_TIPCMB.Value;
                                          Dm1.CadUsu_TCorSal.Post;
                                       end;//20
                            end;//6

                          Dm1.ConsUsu_T120IpdPC.Next;
                        end;//5

                    //faz o calculo da metragem cubica
                    ConsVolPro.Close;
                    ConsVolPro.Parameters.ParamByName('codpro').Value := Dm1.ConsE120IpdCODPRO.Value;
                    ConsVolPro.Parameters.ParamByName('codder').Value := Dm1.ConsE120IpdCODDER.Value;
                    ConsVolPro.Open;
                    vnVolPro := vnVolPro + ConsVolProVOLDER.Value * Dm1.ConsE120IpdQTDABE.Value;

                    //faz o calculo do valor da pre-carga
                    vnVlrTot := vnVlrTot + Dm1.ConsE120IpdVLRLIQ.Value;

                    Dm1.ConsE120Ipd.Next;
                 end;//4
               FPreCarga.EdVolProd.Text := FloatToStr(vnVolPro);
               FPreCarga.EdVlrTot.Text := FloatToStr(vnVlrTot);
              //atualiza a consulta dos pedidos da pre-carga   
              Dm1.ConsUsu_TIteCar.Close;
              Dm1.ConsUsu_TIteCar.Parameters.ParamByName('precar').Value := StrToInt(EdPreCar.Text);
              Dm1.ConsUsu_TIteCar.Open;
              Close;   
            end;//1

end;

procedure TFAddItePreCarga.FormShow(Sender: TObject);
begin
FPrincipal.GravaTela(FAddItePreCarga.Name,FPrincipal.vnCodCon);
  EdFilial.Text := '1';
  EdPedido.SetFocus;
end;

procedure TFAddItePreCarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FPrincipal.ApagaTela(FAddItePreCarga.Name,FPrincipal.vnCodCon);
end;

end.
