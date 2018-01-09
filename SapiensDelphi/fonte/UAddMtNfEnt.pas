unit UAddMtNfEnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UNfEntrada, Mask, rxToolEdit, rxCurrEdit, Buttons,
  DB, ADODB;

type
  TFAddMtNfEnt = class(TForm)
    EdCodPro: TEdit;
    EdProFor: TEdit;
    EdNumOcp: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EdQtdOcp: TCurrencyEdit;
    EdQtdRec: TCurrencyEdit;
    BCodPro: TBitBtn;
    BProFor: TBitBtn;
    BNumOcp: TBitBtn;
    ValidaProduto: TADOQuery;
    ValidaProdutoCODPRO: TStringField;
    ValidaProdutoDESPRO: TStringField;
    ValidaProdutoCODFAM: TStringField;
    LDsCodPro: TLabel;
    ConsE403Fpr: TADOQuery;
    ConsE403FprCODEMP: TIntegerField;
    ConsE403FprCODFOR: TIntegerField;
    ConsE403FprCODPRO: TStringField;
    ConsE403FprCODDER: TStringField;
    ConsE403FprPROFOR: TStringField;
    ConsE403FprDESFOR: TStringField;
    ConsE403FprUNIMED: TStringField;
    ConsE403FprPRZENT: TIntegerField;
    ConsE403FprCODBAR: TBCDField;
    ConsE403FprPREBST: TFMTBCDField;
    ConsE403FprPTOQLD: TIntegerField;
    ConsE403FprPTOPRZ: TIntegerField;
    ConsE403FprPTOCND: TIntegerField;
    ConsE403FprBLOFPR: TStringField;
    ConsE403FprCODMOT: TIntegerField;
    ConsE403FprOBSMOT: TStringField;
    ConsE403FprUSUMOT: TBCDField;
    ConsE403FprDATMOT: TDateTimeField;
    ConsE403FprHORMOT: TIntegerField;
    ConsE403FprCODCLF: TStringField;
    ConsE403FprPERIPI: TBCDField;
    ConsE403FprRECIPI: TStringField;
    ConsE403FprCODTIC: TStringField;
    ConsE403FprCODTRD: TStringField;
    ConsE403FprCODTST: TStringField;
    ConsE403FprCODSTP: TStringField;
    ConsE403FprCODSTC: TStringField;
    ConsE403FprRECICM: TStringField;
    ConsE403FprNOTFOR: TBCDField;
    ConsE403FprINDEXP: TIntegerField;
    ConsE403FprDATPAL: TDateTimeField;
    ConsE403FprHORPAL: TIntegerField;
    ConsE403FprNOTPRO: TBCDField;
    ConsE403FprRECPIS: TStringField;
    ConsE403FprCODSTR: TStringField;
    ConsE403FprPERSCO: TBCDField;
    ConsE403FprRECCOF: TStringField;
    ConsE403FprIPIPDO: TStringField;
    ConsE403FprQTDMLT: TFMTBCDField;
    ConsE403FprQTDMIN: TFMTBCDField;
    ConsE403FprQTDMAX: TFMTBCDField;
    ConsE403FprCODPIN: TStringField;
    ConsE403FprSOMIIM: TStringField;
    ConsE403FprSOMIIL: TStringField;
    ConsE403FprSOMIPS: TStringField;
    ConsE403FprSOMIPL: TStringField;
    ConsE403FprSOMICO: TStringField;
    ConsE403FprSOMICL: TStringField;
    ConsE403FprTEMICM: TStringField;
    ConsE403FprTRIPIS: TStringField;
    ConsE403FprTRICOF: TStringField;
    ConsE403FprPERIRF: TBCDField;
    ConsE403FprPERPIS: TBCDField;
    ConsE403FprPERCOF: TBCDField;
    ConsE403FprPERCSL: TBCDField;
    ConsE403FprPEROUR: TBCDField;
    ConsE403FprPERFUN: TBCDField;
    ConsE403FprUSUGER: TBCDField;
    ConsE403FprDATGER: TDateTimeField;
    ConsE403FprHORGER: TIntegerField;
    ConsE403FprUSUATU: TBCDField;
    ConsE403FprDATATU: TDateTimeField;
    ConsE403FprHORATU: TIntegerField;
    LDsProFor: TLabel;
    EdPreUni: TCurrencyEdit;
    BProcessa: TBitBtn;
    EdPerIcm: TCurrencyEdit;
    Label7: TLabel;
    ChSaldoRestante: TCheckBox;
    ConsE009Ppe: TADOQuery;
    ConsE009PpeCODEMP: TIntegerField;
    ConsE009PpeSIGUFS: TStringField;
    ConsE009PpeCODFIL: TIntegerField;
    ConsE009PpeINSEST: TStringField;
    ConsE009PpePERREP: TBCDField;
    ConsE009PpeLIMICM: TBCDField;
    ConsE009PpeICMSCO: TBCDField;
    ConsE009PpeICMSNC: TBCDField;
    ConsE009PpeICMECO: TBCDField;
    ConsE009PpeICMENC: TBCDField;
    ConsE009PpeVENTFP: TStringField;
    ConsE009PpeVENTFN: TStringField;
    ConsE009PpeVENTPA: TStringField;
    ConsE009PpeVENTPN: TStringField;
    ConsE009PpeVENTFS: TStringField;
    ConsE009PpeVENTDP: TStringField;
    ConsE009PpeVENTDS: TStringField;
    ConsE009PpeTNSREM: TStringField;
    ConsE009PpeCPRTNP: TStringField;
    ConsE009PpeCPRTNS: TStringField;
    ConsE009PpeCPRTDP: TStringField;
    ConsE009PpeCPRTDS: TStringField;
    ConsE009PpeTNSRET: TStringField;
    ConsE009PpeVENDSC: TBCDField;
    ConsE009PpePERDZF: TBCDField;
    ConsE009PpeFORRSU: TIntegerField;
    ConsE009PpeTPTRSU: TStringField;
    ConsE009PpeTNSRSU: TStringField;
    ConsE009PpeIMPRSU: TStringField;
    procedure BCodProClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodProExit(Sender: TObject);
    procedure EdProForExit(Sender: TObject);
    procedure BProForClick(Sender: TObject);
    procedure BNumOcpClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BProcessaClick(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdProForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNumOcpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdQtdRecExit(Sender: TObject);
    procedure EdNumOcpExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vnCodFor : integer;
    vnNumNfc : Integer;
    vaCodSnf : string;
    vaTnsPro : string;
    vaTnsSer : string;
    vaCodPro : string;
    vaCodDer : string;
    vnQtdRec : Currency;
    vnPreUni : Currency;
    vaFilOpc : string;
    vnNumOpc : integer;
    vnSeqIpo : Integer;
    vnPerIcm : Currency;

  end;

var
  FAddMtNfEnt: TFAddMtNfEnt;

implementation

uses UDm2,UConsGeralNfEnt, UDm;

{$R *.dfm}

procedure TFAddMtNfEnt.BCodProClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select * from e075Pro';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'CodPro';
    FConsGeralNfEnt.vnColuna := 999999;
    FConsGeralNfEnt.vaTela := 'FAddMtNfEnt';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
end;

procedure TFAddMtNfEnt.BProForClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e403fpr.codfor,e403fpr.profor,e403fpr.desfor,e403fpr.codpro from e403fpr';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'ProFor';
    FConsGeralNfEnt.vnColuna := 2;
    FConsGeralNfEnt.vaTela := 'FAddMtNfEnt';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
end;

procedure TFAddMtNfEnt.BNumOcpClick(Sender: TObject);
var auxSql : TStringList;
begin
  auxSql := TStringList.Create;
  auxSql.Add('select e420ipo.numocp,e420ocp.datemi,e420ipo.qtdped,e420ipo.qtdabe,e420ipo.preuni,e075pro.despro,e420ipo.codpro,e420ipo.desfor,e420ipo.profor,');
  auxSql.Add('e420ipo.qtdrec,');
  auxSql.Add('e420ipo.qtdcan,e420ipo.sitipo,e420ocp.codfor,e420ipo.seqipo');
  auxSql.Add('from e420ipo');
  auxSql.Add('inner join e075pro on e075pro.codemp = e420ipo.codemp and');
  auxSql.Add('e075pro.codpro = e420ipo.codpro');
  auxSql.Add('inner join e420ocp on e420ocp.codemp = e420ipo.codemp and');
  auxSql.Add('e420ocp.codfil = e420ipo.codfil and');
  auxSql.Add('e420ocp.numocp = e420ipo.numocp');
  auxSql.Add('where');
  auxSql.Add('e420ipo.sitipo in (1,2,9) and');
  auxSql.Add('e420ocp.codfor = ');
  auxSql.Add(FNfEntrada.EdCodFor.Text);

  if trim(EdCodPro.Text) <> '' then
     begin
      auxSql.Add('and e420ipo.codpro = ');
      auxSql.Add(EdCodPro.Text);
     end;

    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := auxSql.Text;
    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'NumOcp';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FAddMtNfEnt';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

end;

procedure TFAddMtNfEnt.BProcessaClick(Sender: TObject);
begin
  if trim(EdCodPro.Text) = '' then
     begin
       MessageDlg('Informe o código do produto',mtWarning,[mbOK],0);
       ActiveControl := EdCodPro;
     end
  else
  if EdQtdRec.Value = 0 then
     begin
       MessageDlg('Informe a quantidade recebida',mtWarning,[mbOK],0);
       ActiveControl := EdQtdRec;
     end
  else
  if EdPreUni.Value = 0 then
     begin
       MessageDlg('Informe o preço unitário',mtWarning,[mbOK],0);
       ActiveControl := EdPreUni;
     end
  else
     begin//1
       vnCodFor := StrToInt(FNfEntrada.EdCodFor.Text);
       vaCodSnf := FNfEntrada.EdCodSnf.Text;
       vaCodPro := EdCodPro.Text;
       vaCodDer := '';
       vnNumNfc := StrToInt(FNfEntrada.EdNumNfc.Text);
       vaTnsPro := FNfEntrada.EdTnsPro.Text;
       vaTnsSer := Trim(FNfEntrada.EdTnsSer.Text);
       if trim(EdNumOcp.Text) = '' then
          begin
            vnNumOpc := 0;
            vnSeqIpo := 0;
          end
       else
         vnNumOpc := StrToInt(trim(edNumOcp.Text));
       vnQtdRec := EdQtdRec.Value;
       vnPreUni := EdPreUni.Value;
       vnPerIcm := EdPerIcm.Value;

       FNfEntrada.ClientE440Ipc.Open;
       FNfEntrada.ClientE440Ipc.Insert;
       FNfEntrada.ClientE440IpcCODEMP.Value := 1;
       FNfEntrada.ClientE440IpcCODFIL.Value := 1;
       FNfEntrada.ClientE440IpcCODFOR.Value := vnCodFor;
       FNfEntrada.ClientE440IpcNUMNFC.Value := vnNumNfc;
       FNfEntrada.ClientE440IpcCODSNF.Value := vaCodSnf;
       FNfEntrada.ClientE440IpcTNSPRO.Value := vaTnsPro;
       FNfEntrada.ClientE440IpcCODPRO.Value := vaCodPro;
       FNfEntrada.ClientE440IpcCODDER.Value := vaCodDer;
       FNfEntrada.ClientE440IpcQTDREC.AsCurrency := vnQtdRec;
       FNfEntrada.ClientE440IpcPREUNI.AsCurrency := vnPreUni;
       FNfEntrada.ClientE440IpcNUMOCP.AsInteger := vnNumOpc;
       FNfEntrada.ClientE440IpcSEQIPO.AsInteger := vnSeqIpo;
       FNfEntrada.ClientE440IpcPERICM.AsCurrency := vnPerIcm;
       FNfEntrada.ClientE440IpcNUMPED.AsInteger := 111111;
       FNfEntrada.ClientE440IpcVLRBRU.AsCurrency := vnQtdRec * vnPreUni;
       FNfEntrada.ClientE440IpcVLRBIC.AsCurrency := vnQtdRec * vnPreUni;
       FNfEntrada.ClientE440IpcVLRICM.AsCurrency := (vnQtdRec * vnPreUni) * (vnPerIcm/100);
       FNfEntrada.ClientE440Ipc.Post;

       //grava o produto para ser cancelado o saldo restante
       //na ordem de compra
       if (ChSaldoRestante.Checked = true) and (EdQtdRec.Value < EdQtdOcp.Value) then
          begin//2
               Dm2.CadUsu_TCanSal.Close;
               Dm2.CadUsu_TCanSal.Parameters.ParamByName('codemp').Value := 1;
               Dm2.CadUsu_TCanSal.Parameters.ParamByName('codfil').Value := 1;
               Dm2.CadUsu_TCanSal.Parameters.ParamByName('numocp').Value := vnNumOpc;
               Dm2.CadUsu_TCanSal.Parameters.ParamByName('seqipo').Value := vnSeqIpo;
               Dm2.CadUsu_TCanSal.Open;
               if Dm2.CadUsu_TCanSal.IsEmpty then
                  begin//3
                    Dm2.CadUsu_TCanSal.Insert;
                    Dm2.CadUsu_TCanSalUSU_CODEMP.Value := 1;
                    Dm2.CadUsu_TCanSalUSU_CODFIL.Value := 1;
                    Dm2.CadUsu_TCanSalUSU_NUMOCP.Value := vnNumOpc;
                    Dm2.CadUsu_TCanSalUSU_SEQIPO.Value := vnSeqIpo;
                    Dm2.CadUsu_TCanSalUSU_SALCAN.Value := 'N';
                    Dm2.CadUsu_TCanSalUSU_CODPRO.Value := vaCodPro;
                    Dm2.CadUsu_TCanSalUSU_QTDREC.Value := vnQtdRec;
                    Dm2.CadUsu_TCanSalUSU_QTDPED.Value := EdQtdOcp.Value;
                    Dm2.CadUsu_TCanSalUSU_QTDCAN.Value := EdQtdOcp.Value - vnQtdRec;
                    Dm2.CadUsu_TCanSal.Post;
                  end;//3
          end;//2

       Close;
     end;//1
end;

procedure TFAddMtNfEnt.EdCodProExit(Sender: TObject);
begin
if trim(EdCodPro.Text) <> '' then
   begin
     ValidaProduto.Close;
     ValidaProduto.Parameters.ParamByName('codemp').Value := 1;
     ValidaProduto.Parameters.ParamByName('codpro').Value := EdCodPro.Text;
     ValidaProduto.Open;
     if ValidaProduto.IsEmpty then
        begin
          Application.MessageBox('Produto não encontrado','Aviso', MB_ICONWARNING+MB_OK);
          EdCodPro.Clear;
          ActiveControl := EdCodPro;
        end
     else
        begin
          LDsCodPro.Caption := ValidaProdutoDESPRO.Value;

          //consulta o codigo do produto no fornecedor
          ConsE403Fpr.Close;
          ConsE403Fpr.SQL.Clear;
          ConsE403Fpr.SQL.Add('select * from e403fpr where codemp = :codemp and');
          ConsE403Fpr.SQL.Add('codfor = :codfor and');
          ConsE403Fpr.SQL.Add('codpro = :codpro');
          ConsE403Fpr.Parameters.ParamByName('codemp').Value := 1;
          ConsE403Fpr.Parameters.ParamByName('codfor').Value := FNfEntrada.EdCodFor.Text;
          ConsE403Fpr.Parameters.ParamByName('codpro').Value := EdCodPro.Text;
          ConsE403Fpr.Open;
          if not ConsE403Fpr.IsEmpty then
             begin
               EdProFor.Text := ConsE403FprPROFOR.AsString;
               LDsProFor.Caption := ConsE403FprDESFOR.AsString;
             end;
        end;
   end
     else
       begin
         EdCodPro.Clear;
         LDsProFor.Caption := '';
         LDsCodPro.Caption := '';
       end;

end;

procedure TFAddMtNfEnt.EdCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f3 then
      begin
        BCodPro.Click;
      end;
end;

procedure TFAddMtNfEnt.EdNumOcpExit(Sender: TObject);
var vbExiste : boolean;
begin
    if trim(EdNumOcp.Text) <> '' then
       begin//1
       //valida se ja existe o mesmo item com a mesma ordem de compra
        vbExiste := false;
         FNfEntrada.ClientE440Ipc.First;
           while not FNfEntrada.ClientE440Ipc.Eof do
             begin//2
               if(FNfEntrada.ClientE440IpcNUMOCP.Value = StrToInt(trim(EdNumOcp.Text))) and
                 (FNfEntrada.ClientE440IpcSEQIPO.Value = vnSeqIpo) then
                  vbExiste := true;

               FNfEntrada.ClientE440Ipc.Next;
             end;//2
             FNfEntrada.ClientE440Ipc.First;
            if vbExiste = true then
              begin
                MessageDlg('Ordem de Compra já Utilizada',mtWarning,[mbOK],0);
                ActiveControl := EdNumOcp;
              end;
         if StrToInt(trim(EdNumOcp.Text)) = 0 then
           EdNumOcp.Clear;
       end;//1
end;

procedure TFAddMtNfEnt.EdNumOcpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f3 then
      begin
        BNumOcp.Click;
      end;
//se a tecla backspace foi precionada
if key = VK_BACK then
   begin
     EdNumOcp.Clear;
     EdQtdOcp.Clear;
   end;
end;

procedure TFAddMtNfEnt.EdProForExit(Sender: TObject);
begin
    if (EdProFor.Text <> '') then
       begin
          ConsE403Fpr.Close;
          ConsE403Fpr.SQL.Clear;
          ConsE403Fpr.SQL.Add('select * from e403fpr where codemp = :codemp and');
          ConsE403Fpr.SQL.Add('codfor = :codfor and');
          ConsE403Fpr.SQL.Add('profor = :profor');
          ConsE403Fpr.Parameters.ParamByName('codemp').Value := 1;
          ConsE403Fpr.Parameters.ParamByName('codfor').Value := FNfEntrada.EdCodFor.Text;
          ConsE403Fpr.Parameters.ParamByName('profor').Value := EdProFor.Text;
          ConsE403Fpr.Open;
          if not ConsE403Fpr.IsEmpty then
             begin
               EdCodPro.Text := ConsE403FprCODPRO.AsString;
               EdCodProExit(Sender);
             end
          else
             begin
               EdCodPro.Clear;
               EdProFor.Clear;
               LDsCodPro.Caption := '';
               LDsProFor.Caption := '';
             end;
       end;
end;

procedure TFAddMtNfEnt.EdProForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f3 then
      begin
        BProFor.Click;
      end;
end;

procedure TFAddMtNfEnt.EdQtdRecExit(Sender: TObject);
begin
   if (EdQtdOcp.Value <> 0) and (EdQtdRec.Value <> 0) then
      begin
        if EdQtdRec.Value < EdQtdOcp.Value then
           begin
             if Application.MessageBox('Deseja Cancelar o Saldo Restante?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
                begin
                  ChSaldoRestante.Checked := true;
                end
             else
                begin
                  ChSaldoRestante.Checked := false;
                end;
           end;
      end;

end;

procedure TFAddMtNfEnt.FormActivate(Sender: TObject);
begin
vnSeqIpo := 0;

  ConsE009Ppe.Close;
  ConsE009Ppe.Parameters.ParamByName('codemp').Value := 1;
  ConsE009Ppe.Parameters.ParamByName('codfil').Value := 1;
  ConsE009Ppe.Parameters.ParamByName('sigufs').Value := FNfEntrada.ConsE095ForSIGUFS.AsString;
  ConsE009Ppe.Open;
  if not ConsE009Ppe.IsEmpty then
     begin
       EdPerIcm.Value := ConsE009PpeICMECO.Value;
     end;
end;

procedure TFAddMtNfEnt.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFAddMtNfEnt.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
