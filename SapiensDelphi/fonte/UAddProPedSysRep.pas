unit UAddProPedSysRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, rxToolEdit, rxCurrEdit, ExtCtrls, StdCtrls, Buttons, DB, ADODB,
  IBCustomDataSet, IBQuery;

type
  TFAddProPedSysRep = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    LDsCodPro: TLabel;
    LDsCodDer: TLabel;
    EdCodPro: TEdit;
    BCodPro: TBitBtn;
    EdCodDer: TEdit;
    EdQtdPed: TEdit;
    BCodDer: TBitBtn;
    EdCodTpr: TEdit;
    Panel1: TPanel;
    Desc2: TCurrencyEdit;
    Desc6: TCurrencyEdit;
    Desc1: TCurrencyEdit;
    Desc5: TCurrencyEdit;
    Desc4: TCurrencyEdit;
    Desc3: TCurrencyEdit;
    EdTotDesc: TCurrencyEdit;
    ValidaProduto: TADOQuery;
    ValidaProdutoCODPRO: TStringField;
    ValidaProdutoDESPRO: TStringField;
    ValidaProdutoCODFAM: TStringField;
    Label5: TLabel;
    Label7: TLabel;
    EdVlrOri: TCurrencyEdit;
    EdPreUni: TCurrencyEdit;
    ConsE081Itp: TADOQuery;
    ConsE081ItpCODEMP: TIntegerField;
    ConsE081ItpCODTPR: TStringField;
    ConsE081ItpDATINI: TDateTimeField;
    ConsE081ItpCODPRO: TStringField;
    ConsE081ItpCODDER: TStringField;
    ConsE081ItpQTDMAX: TBCDField;
    ConsE081ItpPREBAS: TFMTBCDField;
    ConsE081ItpPERDSC: TBCDField;
    ConsE081ItpPERLIM: TBCDField;
    ConsE081ItpPERCOM: TBCDField;
    ConsE081ItpTOLMAI: TBCDField;
    ConsE081ItpTOLMEN: TBCDField;
    ConsE081ItpSITREG: TStringField;
    ConsE081ItpINDEXC: TStringField;
    ConsE081ItpINDEXP: TIntegerField;
    ConsE081ItpDATPAL: TDateTimeField;
    ConsE081ItpHORPAL: TIntegerField;
    ConsE081ItpDATGER: TDateTimeField;
    ConsE081ItpHORGER: TIntegerField;
    ConsE081ItpUSUGER: TBCDField;
    ConsE081ItpDATALT: TDateTimeField;
    ConsE081ItpHORALT: TIntegerField;
    ConsE081ItpUSUALT: TBCDField;
    ConsE081ItpPROEXT: TStringField;
    ConsE081ItpPREMT2: TFMTBCDField;
    ConsE081ItpVLRCMO: TFMTBCDField;
    ConsE081ItpVLRCTE: TFMTBCDField;
    ConsE081ItpVLRCPR: TFMTBCDField;
    ConsE081ItpPREORC: TFMTBCDField;
    ConsE081ItpDATORC: TDateTimeField;
    ConsE081ItpCODREP: TIntegerField;
    ConsE081ItpCODPRB: TStringField;
    ConsE081ItpVLTMAI: TFMTBCDField;
    ConsE081ItpVLTMEN: TFMTBCDField;
    ConsE081ItpOBSITP: TStringField;
    ConsE081ItpUNIMED: TStringField;
    BProcessar: TBitBtn;
    ValidaProdutoCODAGP: TStringField;
    E120IpdSeqIpd: TIBQuery;
    E120IpdSeqIpdULTIMO: TIntegerField;
    procedure BCodProClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodProExit(Sender: TObject);
    procedure BCodDerClick(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodDerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodTprExit(Sender: TObject);
    procedure Desc1Exit(Sender: TObject);
    procedure Desc2Exit(Sender: TObject);
    procedure Desc3Exit(Sender: TObject);
    procedure Desc4Exit(Sender: TObject);
    procedure Desc5Exit(Sender: TObject);
    procedure Desc6Exit(Sender: TObject);
    procedure EdCodDerExit(Sender: TObject);
    procedure BProcessarClick(Sender: TObject);
  private
    { Private declarations }
    vnVlrOri : Currency;
    function calcula(desc1,desc2,desc3,desc4,desc5,desc6 : Real): Real;
  public
    { Public declarations }
     vnTotDesc : real;
     vaStatus : string;
     vnCodEmp,vnCodFil,vnNumCon,vnSeqIte : integer;
  end;

var
  FAddProPedSysRep: TFAddProPedSysRep;

implementation

uses UConsGeralNfEnt, UDmOra, UDmFire, UConsDerivacoes;

{$R *.dfm}

function TFAddProPedSysRep.calcula(desc1,desc2,desc3,desc4,desc5,desc6 : Real): Real;
var vnValor, vnTotal: Real;
begin
    vnValor := 100;
    vnValor := vnValor - (vnValor * desc1);
    vnValor := vnValor - (vnValor * desc2);
    vnValor := vnValor - (vnValor * desc3);
    vnValor := vnValor - (vnValor * desc4);
    vnValor := vnValor - (vnValor * desc5);
    vnValor := vnValor - (vnValor * desc6);
    vnTotal := 100 - vnValor;

        Result := vnTotal;
end;

procedure TFAddProPedSysRep.BCodDerClick(Sender: TObject);
begin
if trim(EdCodPro.Text) <> '' then
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
end;

procedure TFAddProPedSysRep.BCodProClick(Sender: TObject);
begin
FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,e075pro.codfam,e075pro.codori';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where codori = 01';
    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodPro';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FAddProPedSysRep';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
    ActiveControl := EdCodPro;
end;

procedure TFAddProPedSysRep.BProcessarClick(Sender: TObject);
begin
if trim(EdCodPro.Text) = '' then
       begin
         MessageDlg('Informe o codigo do produto!',mtWarning,[mbOK],0);
         ActiveControl := EdCodPro;
       end
    else
    if trim(EdCodDer.Text) = '' then
       begin
         MessageDlg('Informe a derivação',mtWarning,[mbOK],0);
         ActiveControl := EdCodDer;
       end
    else
    if trim(EdQtdPed.Text) = '' then
       begin
         MessageDlg('Informe a quantidade pedida',mtWarning,[mbOK],0);
         ActiveControl := EdQtdPed;
       end
    else
    if EdPreUni.Value = 0 then
       begin
         MessageDlg('O produto não tem valor informado!',mtWarning,[mbOK],0);
         ActiveControl := EdCodPro;
       end
    else
     if EdTotDesc.Value > ConsE081ItpTOLMEN.Value then  //valida o total de desconto
      begin
        MessageDlg('O desconto informado é maior do que o permitido para o produto!',mtWarning,[mbOK],0);
        ActiveControl := EdTotDesc;
      end
     else
       begin//1
          if vaStatus = 'INSERINDO' then
             begin//2
                DmFire.CadE120Ipd.Open;
                DmFire.CadE120Ipd.Insert;
                DmFire.CadE120IpdCODEMP.Value := DmFire.ConsE120PedChegouCODEMP.Value;
                DmFire.CadE120IpdCODFIL.Value := DmFire.ConsE120PedChegouCODFIL.Value;
                DmFire.CadE120IpdNUMPED.Value := DmFire.ConsE120PedChegouNUMPED.Value;
                DmFire.CadE120IpdNUMCON.Value := DmFire.ConsE120PedChegouNUMCON.Value;
                DmFire.CadE120IpdCODREP.Value := DmFire.ConsE120PedChegouCODREP.Value;

               if ValidaProdutoCODAGP.Value = 'ESTOF' then
                      begin
                        DmFire.CadE120IpdTNSPRO.Value := '90100';
                        DmFire.CadE120IpdCODDEP.Value := '01001'
                      end
                   else
                   if ValidaProdutoCODAGP.Value = 'COLCH' then
                      begin
                        DmFire.CadE120IpdTNSPRO.Value := '90106';
                        DmFire.CadE120IpdCODDEP.Value := '01002'
                      end;

                   DmFire.CadE120IpdCODPRO.Value := trim(EdCodPro.Text);
                   DmFire.CadE120IpdCODDER.Value := trim(EdCodDer.Text);
                   DmFire.CadE120IpdCODFAM.Value := ValidaProdutoCODFAM.Value;
                   DmFire.CadE120IpdQTDPED.Value := StrToInt(trim(EdQtdPed.Text));
                   DmFire.CadE120IpdCODTPR.Value := trim(EdCodTpr.Text);
                   DmFire.CadE120IpdPREUNI.Value := EdPreUni.Value;
                   DmFire.CadE120IpdVLRORI.Value := EdVlrOri.Value;
                   DmFire.CadE120IpdVLRBRU.Value := DmFire.CadE120IpdPREUNI.Value * DmFire.CadE120IpdQTDPED.Value;
                   DmFire.CadE120IpdTOTDESC.Value := EdTotDesc.Value;
                   DmFire.CadE120IpdSITIPD.Value := '9';

                    E120IpdSeqIpd.Close;//busca a sequencia para o item
                    E120IpdSeqIpd.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
                    E120IpdSeqIpd.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
                    E120IpdSeqIpd.ParamByName('numcon').Value := DmFire.ConsE120PedChegouNUMCON.Value;
                    E120IpdSeqIpd.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
                    E120IpdSeqIpd.Open;
                    if E120IpdSeqIpd.IsEmpty then
                       DmFire.CadE120IpdSEQIPD.Value := 1
                    else
                       DmFire.CadE120IpdSEQIPD.Value := E120IpdSeqIpdULTIMO.Value + 1;

                   DmFire.CadE120Ipd.Post;
                   DmFire.IBTransacao.CommitRetaining;
                   MessageDlg('Produto incluido com sucesso!',mtWarning,[mbOK],0);
                   Close;
             end//2
          else
             if vaStatus = 'ALTERANDO' then
                begin//3
                   DmFire.CadE120IpdQTDPED.Value := StrToInt(trim(EdQtdPed.Text));
                   DmFire.CadE120IpdCODTPR.Value := trim(EdCodTpr.Text);
                   DmFire.CadE120IpdPREUNI.Value := EdPreUni.Value;
                   DmFire.CadE120IpdVLRORI.Value := EdVlrOri.Value;
                   DmFire.CadE120IpdVLRBRU.Value := DmFire.CadE120IpdPREUNI.Value * DmFire.CadE120IpdQTDPED.Value;
                   DmFire.CadE120IpdTOTDESC.Value := EdTotDesc.Value;
                   DmFire.CadE120Ipd.Post;
                   DmFire.IBTransacao.CommitRetaining;
                   MessageDlg('Produto alterado com sucesso!',mtWarning,[mbOK],0);
                   Close;
                end;//3
       end;//1
end;

procedure TFAddProPedSysRep.Desc1Exit(Sender: TObject);
begin
 if EdVlrOri.Value <> 0 then
    begin
      vnTotDesc := calcula(Desc1.Value/100,Desc2.Value/100,Desc3.Value/100,Desc4.Value/100,Desc5.Value/100,Desc6.Value/100);
      EdTotDesc.Value := vnTotDesc;
      EdPreUni.Value := (ConsE081ItpPREBAS.AsCurrency - (ConsE081ItpPREBAS.AsCurrency * EdTotDesc.Value / 100));
    end;
end;

procedure TFAddProPedSysRep.Desc2Exit(Sender: TObject);
begin
 if EdVlrOri.Value <> 0 then
    begin
      vnTotDesc := calcula(Desc1.Value/100,Desc2.Value/100,Desc3.Value/100,Desc4.Value/100,Desc5.Value/100,Desc6.Value/100);
      EdTotDesc.Value := vnTotDesc;
      EdPreUni.Value := (ConsE081ItpPREBAS.AsCurrency - (ConsE081ItpPREBAS.AsCurrency * EdTotDesc.Value / 100));
    end;
end;

procedure TFAddProPedSysRep.Desc3Exit(Sender: TObject);
begin
  if EdVlrOri.Value <> 0 then
    begin
      vnTotDesc := calcula(Desc1.Value/100,Desc2.Value/100,Desc3.Value/100,Desc4.Value/100,Desc5.Value/100,Desc6.Value/100);
      EdTotDesc.Value := vnTotDesc;
      EdPreUni.Value := (ConsE081ItpPREBAS.AsCurrency - (ConsE081ItpPREBAS.AsCurrency * EdTotDesc.Value / 100));
    end;
end;

procedure TFAddProPedSysRep.Desc4Exit(Sender: TObject);
begin
  if EdVlrOri.Value <> 0 then
    begin
      vnTotDesc := calcula(Desc1.Value/100,Desc2.Value/100,Desc3.Value/100,Desc4.Value/100,Desc5.Value/100,Desc6.Value/100);
      EdTotDesc.Value := vnTotDesc;
      EdPreUni.Value := (ConsE081ItpPREBAS.AsCurrency - (ConsE081ItpPREBAS.AsCurrency * EdTotDesc.Value / 100));
    end;
end;

procedure TFAddProPedSysRep.Desc5Exit(Sender: TObject);
begin
  if EdVlrOri.Value <> 0 then
    begin
      vnTotDesc := calcula(Desc1.Value/100,Desc2.Value/100,Desc3.Value/100,Desc4.Value/100,Desc5.Value/100,Desc6.Value/100);
      EdTotDesc.Value := vnTotDesc;
      EdPreUni.Value := (ConsE081ItpPREBAS.AsCurrency - (ConsE081ItpPREBAS.AsCurrency * EdTotDesc.Value / 100));
    end;
end;

procedure TFAddProPedSysRep.Desc6Exit(Sender: TObject);
begin
  if EdVlrOri.Value <> 0 then
    begin
      vnTotDesc := calcula(Desc1.Value/100,Desc2.Value/100,Desc3.Value/100,Desc4.Value/100,Desc5.Value/100,Desc6.Value/100);
      EdTotDesc.Value := vnTotDesc;
      EdPreUni.Value := (ConsE081ItpPREBAS.AsCurrency - (ConsE081ItpPREBAS.AsCurrency * EdTotDesc.Value / 100));
    end;
end;

procedure TFAddProPedSysRep.EdCodDerExit(Sender: TObject);
begin
  if EdCodTpr.Text <> '' then
             begin
               EdCodTpr.Clear;
               EdVlrOri.Value := 0;
               EdPreUni.Value := 0;
             end;
end;

procedure TFAddProPedSysRep.EdCodDerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f3 then
     BCodDer.Click;
end;

procedure TFAddProPedSysRep.EdCodProExit(Sender: TObject);
begin
if EdCodPro.Text <> '' then
   begin
     ValidaProduto.Close;
     ValidaProduto.Parameters.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
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

          if EdCodTpr.Text <> '' then
             begin
               EdCodTpr.Clear;
               EdVlrOri.Value := 0;
               EdPreUni.Value := 0;
             end;
        end;
  end;
end;

procedure TFAddProPedSysRep.EdCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f3 then
     BCodPro.Click;
end;

procedure TFAddProPedSysRep.EdCodTprExit(Sender: TObject);
var vdDatIni : TDate;
begin
    if(trim(EdCodPro.Text) <> '') and (trim(EdCodDer.Text) <> '') and (trim(EdCodTpr.Text) <> '') then
      begin//1

          ConsE081Itp.Close;
          ConsE081Itp.Parameters.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
          ConsE081Itp.Parameters.ParamByName('codtpr').Value := Trim(EdCodTpr.Text);

          if trim(EdCodTpr.Text) = '0001' then
             ConsE081Itp.Parameters.ParamByName('datini').Value := '01/07/2009'
          else
          if trim(EdCodTpr.Text) = '0002' then
             ConsE081Itp.Parameters.ParamByName('datini').Value := '01/11/2009'
          else
          if trim(EdCodTpr.Text) = '0003' then
             ConsE081Itp.Parameters.ParamByName('datini').Value := '01/02/2010'
          else
          if trim(EdCodTpr.Text) = '0004' then
             ConsE081Itp.Parameters.ParamByName('datini').Value := '01/03/2010'
          else
          if trim(EdCodTpr.Text) = '0007' then
             ConsE081Itp.Parameters.ParamByName('datini').Value := '14/03/2014'
          else
          if trim(EdCodTpr.Text) = '0008' then
             ConsE081Itp.Parameters.ParamByName('datini').Value := '08/10/2014'
          else
          if trim(EdCodTpr.Text) = '1000' then
             ConsE081Itp.Parameters.ParamByName('datini').Value := '04/10/2017';



          ConsE081Itp.Parameters.ParamByName('codpro').Value := Trim(EdCodPro.Text);
          ConsE081Itp.Parameters.ParamByName('codder').Value := Trim(EdCodDer.Text);
          ConsE081Itp.Open;

           if ConsE081Itp.IsEmpty then
              begin//8
                 MessageDlg('Produto não encontrado na tabela de preço!',mtWarning,[mbOK],0);
                 EdVlrOri.Clear;
                 EdPreUni.Clear;
                 ActiveControl := EdCodTpr;
              end//8
           else
             begin//9
               EdVlrOri.Value := ConsE081ItpPREBAS.AsCurrency;
               // LVlrOri.Caption := formatcurr('###,###,##0.00',ConsE081ItpPREBAS.Value);

               if EdTotDesc.Value = 0 then
                  begin//11
                     EdPreUni.Value := ConsE081ItpPREBAS.AsCurrency;
                  end//11
               else
                  begin//12
                    EdPreUni.Value := ConsE081ItpPREBAS.AsCurrency - (ConsE081ItpPREBAS.AsCurrency * EdTotDesc.Value / 100);
                  end;//12
             end;//9

      end;//1

end;

procedure TFAddProPedSysRep.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
