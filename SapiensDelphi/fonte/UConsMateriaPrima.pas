unit UConsMateriaPrima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Mask, rxToolEdit, Grids,
  DBGrids, DB, DBCtrls;

type
  TFConsMateriaPrima = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    EdCodPro: TEdit;
    BConsProduto: TBitBtn;
    Label1: TLabel;
    PaginaControle: TPageControl;
    TbDadosGerais: TTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Panel7: TPanel;
    DBGrid2: TDBGrid;
    Panel9: TPanel;
    PaginaControleFor: TPageControl;
    TbDadoGerais: TTabSheet;
    TbDadosCadlll: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    EdDatIni: TDateEdit;
    EdDatFim: TDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    Panel10: TPanel;
    BMostrar: TBitBtn;
    LDsCodPro: TLabel;
    Label6: TLabel;
    LDsCodFam: TLabel;
    LDsCodOri: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    LDsUm: TLabel;
    LDsSitPro: TLabel;
    LDsVlrMax: TLabel;
    LDsPerIpi: TLabel;
    LDsTemIcm: TLabel;
    DsConsE210Est: TDataSource;
    Label10: TLabel;
    LSalTot: TLabel;
    Label13: TLabel;
    LVlrTot: TLabel;
    Label18: TLabel;
    LConTot: TLabel;
    DsConsE403Fpr: TDataSource;
    LQtdDias: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DsConsE095For: TDataSource;
    DBNomFor: TDBText;
    DBApeFor: TDBText;
    DBCgcCpf: TDBText;
    DBEndFor: TDBText;
    DBBaiFor: TDBText;
    DBCidFor: TDBText;
    DBFonFor: TDBText;
    DBDatCad: TDBText;
    DBInsEst: TDBText;
    DBCepFor: TDBText;
    DBFaxFor: TDBText;
    DBIntNet: TDBText;
    DBSitFor: TDBText;
    Label30: TLabel;
    DBSigUfs: TDBText;
    Label31: TLabel;
    Panel11: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    DsConsUltimaNfEnt: TDataSource;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    LNumNfc: TLabel;
    LDatEmi: TLabel;
    LQtdRec: TLabel;
    LPerIpi: TLabel;
    LVlrBru: TLabel;
    LNumOcp: TLabel;
    LCodSnf: TLabel;
    LPreUni: TLabel;
    LPerIcm: TLabel;
    LVlrLiq: TLabel;
    LCodCpg: TLabel;
    DBGrid3: TDBGrid;
    DsConsE420Ipo: TDataSource;
    Label43: TLabel;
    Label44: TLabel;
    LPreEst: TLabel;
    LDatEnt: TLabel;
    Label45: TLabel;
    LQtdEst: TLabel;
    BProximo: TSpeedButton;
    BAnterior: TSpeedButton;
    Label46: TLabel;
    LFornecedor: TLabel;
    edtDsCodPro: TEdit;
    btnObsPro: TBitBtn;
    procedure BMostrarClick(Sender: TObject);
    procedure BConsProdutoClick(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BProximoClick(Sender: TObject);
    procedure BAnteriorClick(Sender: TObject);
    procedure btnObsProClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsMateriaPrima: TFConsMateriaPrima;

implementation

uses UDm3, UConsGeralNfEnt, UDm2, UContatosFornecedor, UObsPro;

{$R *.dfm}

procedure TFConsMateriaPrima.BAnteriorClick(Sender: TObject);
begin
if  not DM2.ConsGeral.IsEmpty then
    begin
       dm2.ConsGeral.Prior;
       EdCodPro.Text := dm2.ConsGeral.FieldByName('CODPRO').AsString;
       BMostrar.Click;
    end;
end;

procedure TFConsMateriaPrima.BConsProdutoClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e012fam.desfam,e075pro.codori,e083ori.desori';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +',e075pro.unimed,e075pro.usu_vlrmax,e075pro.codclf,e075pro.sitpro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +',e075pro.temicm,e075pro.recicm';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e012fam on e012fam.codemp = e075pro.codemp and';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e012fam.codfam = e075pro.codfam';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e083ori on e083ori.codemp = e075pro.codemp and';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e083ori.codori = e075pro.codori';

    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'codpro';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FConsMateriaPrima';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodPro;
end;

procedure TFConsMateriaPrima.BMostrarClick(Sender: TObject);
var vaDatIni,vaDatFim : string;
    vdDatIni,vdDatFim : TDate;
    vnSalTot,vnVlrTot,vnConTot : Currency;

begin
     {*********************************************************
                        valida data
     ***********************************************************}
        if EdDatIni.Date = 0 then
           begin
           vaDatIni := '01/01/1990';
           vdDatIni := StrToDate(vaDatIni);
           end
        else
           begin
             vdDatIni := EdDatIni.Date;
           end;

      if EdDatFim.Date = 0 then
           begin
           vaDatFim := '31/12/2020';
           vdDatFim := StrToDate(vaDatFim);
           end
        else
           begin
             vdDatFim := EdDatFim.Date;
           end;

        LQtdDias.Caption := FloatToStr(vdDatFim - vdDatIni);
        LQtdDias.Caption := LQtdDias.Caption + ' Dias';

      if trim(EdCodPro.Text) = '' then
         begin
             MessageDlg('Informe o produto',mtWarning,[mbok],0);
             LDsCodPro.Caption := '';
             edtDsCodPro.Text := '';
             LDsCodFam.Caption := '';
             LDsCodOri.Caption := '';
             LDsUm.Caption := '';
             LDsSitPro.Caption := '';
             LDsVlrMax.Caption := '';
             LDsPerIpi.Caption := '';
             LDsTemIcm.Caption := '';

             LNumNfc.Caption := '';
             LCodSnf.Caption := '';
             LDatEmi.Caption := '';
             LQtdRec.Caption := '';
             LPreUni.Caption := '';
             LPerIpi.Caption := '';
             LPerIcm.Caption := '';
             LVlrBru.Caption := '';
             LVlrLiq.Caption := '';
             LNumOcp.Caption := '';
             LCodCpg.Caption := '';

             LConTot.Caption := '';
             LVlrTot.Caption := '';
             LSalTot.Caption := '';


             dm3.ConsE210Est.Close;
             dm3.ConsE210Est.Parameters.ParamByName('datini').Value := vdDatIni;
             dm3.ConsE210Est.Parameters.ParamByName('datfim').Value := vdDatFim;
             dm3.ConsE210Est.Parameters.ParamByName('codpro').Value := '99999999';
             dm3.ConsE210Est.Open;

             dm3.ConsE403Fpr.Close;
             dm3.ConsE403Fpr.Parameters.ParamByName('codpro').Value := '99999999';
             dm3.ConsE403Fpr.Open;

             dm3.ConsE095For.Close;

             ActiveControl := EdCodPro;
         end
      else
         begin//1
            dm3.ConsE075Pro.Close;
            dm3.ConsE075Pro.Parameters.ParamByName('codpro').Value := trim(EdCodPro.Text);
            dm3.ConsE075Pro.Open;
            if dm3.ConsE075Pro.IsEmpty then
               begin//2
                 MessageDlg('Produto não encontrado',mtWarning,[mbok],0);

                 LDsCodPro.Caption := '';
                 edtDsCodPro.Text := '';
                 LDsCodFam.Caption := '';
                 LDsCodOri.Caption := '';
                 LDsUm.Caption := '';
                 LDsSitPro.Caption := '';
                 LDsVlrMax.Caption := '';
                 LDsPerIpi.Caption := '';
                 LDsTemIcm.Caption := '';

                  LNumNfc.Caption := '';
                  LCodSnf.Caption := '';
                  LDatEmi.Caption := '';
                  LQtdRec.Caption := '';
                  LPreUni.Caption := '';
                  LPerIpi.Caption := '';
                  LPerIcm.Caption := '';
                  LVlrBru.Caption := '';
                  LVlrLiq.Caption := '';
                  LNumOcp.Caption := '';
                  LCodCpg.Caption := '';

                  LConTot.Caption := '';
                  LVlrTot.Caption := '';
                  LSalTot.Caption := '';

                 dm3.ConsE210Est.Close;
                 dm3.ConsE210Est.Parameters.ParamByName('datini').Value := vdDatIni;
                 dm3.ConsE210Est.Parameters.ParamByName('datfim').Value := vdDatFim;
                 dm3.ConsE210Est.Parameters.ParamByName('codpro').Value := '99999999';
                 dm3.ConsE210Est.Open;

                 dm3.ConsE403Fpr.Close;
                 dm3.ConsE403Fpr.Parameters.ParamByName('codpro').Value := '99999999';
                 dm3.ConsE403Fpr.Open;

                 dm3.ConsE095For.Close;


                 ActiveControl := EdCodPro;
               end//2
            else
               begin//3
                 LDsCodPro.Caption := dm3.ConsE075ProDESPRO.Value;
                 edtDsCodPro.Text := Dm3.ConsE075ProDESPRO.Value;
                 LDsCodOri.Caption := dm3.ConsE075ProCODORI.Value +' - '+dm3.ConsE075ProDESORI.Value;
                 LDsCodFam.Caption := dm3.ConsE075ProCODFAM.Value +' - '+dm3.ConsE075ProDESFAM.Value;
                 LDsUm.Caption := dm3.ConsE075ProUNIMED.Value;

                 if dm3.ConsE075ProSITPRO.Value = 'A' then
                    LDsSitPro.Caption := 'Ativo'
                 else if dm3.ConsE075ProSITPRO.Value = 'I' then
                         LDsSitPro.Caption := 'Inativo';

                 LDsVlrMax.Caption := CurrToStr(dm3.ConsE075ProUSU_VLRMAX.AsCurrency);
                 LDsPerIpi.Caption := CurrToStr(dm3.ConsE075ProPERIPI.AsCurrency);

                 if dm3.ConsE075ProTEMICM.Value = 'S' then
                    LDsTemIcm.Caption := 'SIM'
                 else if dm3.ConsE075ProTEMICM.Value = 'N' then
                         LDsTemIcm.Caption := 'NAO';

                 

                {**************************************************************
                         consulta o saldo e o cumsumo nos depositos
                ***************************************************************}
                 dm3.ConsE210Est.Close;
                 dm3.ConsE210Est.Parameters.ParamByName('datini').Value := vdDatIni;
                 dm3.ConsE210Est.Parameters.ParamByName('datfim').Value := vdDatFim;
                 dm3.ConsE210Est.Parameters.ParamByName('codpro').Value := dm3.ConsE075ProCODPRO.Value;
                 dm3.ConsE210Est.Open;

                 //faz o calculo dos totais
                 vnSalTot := 0;
                 vnVlrTot := 0;
                 vnConTot := 0;
                 dm3.ConsE210Est.First;
                 while not dm3.ConsE210Est.Eof do
                    begin
                       if dm3.ConsE210EstCODDEP.Value <> '1001' then
                          begin
                             vnConTot := vnConTot + dm3.ConsE210EstCONSUMO.AsCurrency;
                          end;

                       vnSalTot := vnSalTot + dm3.ConsE210EstQTDEST.AsCurrency;
                       vnVlrTot := vnVlrTot + dm3.ConsE210EstVLREST.AsCurrency;
                      dm3.ConsE210Est.Next;
                    end;
                 dm3.ConsE210Est.First;

                 LSalTot.Caption := formatcurr('###,###,##0.00',vnSalTot);
                 LSalTot.Caption := LSalTot.Caption + ' - '+dm3.ConsE075ProUNIMED.Value;
                 LVlrTot.Caption := formatcurr('###,###,##0.00',vnVlrTot);
                 LConTot.Caption := formatcurr('###,###,##0.00',vnConTot);
                 LConTot.Caption := LConTot.Caption + ' - '+dm3.ConsE075ProUNIMED.Value;

                 {**************************************************************
                               consulta os fornecedores do produto
                 ***************************************************************}
                  dm3.ConsE403Fpr.Close;
                  dm3.ConsE403Fpr.Parameters.ParamByName('codpro').Value := dm3.ConsE075ProCODPRO.Value;
                  dm3.ConsE403Fpr.Open;

                  {**************************************************************
                           consulta a ultima nota de entrada do produto
                  ***************************************************************}
                  dm3.ConsUltimaNfEnt.Close;
                  dm3.ConsUltimaNfEnt.Parameters.ParamByName('codpro').Value := dm3.ConsE075ProCODPRO.Value;
                  dm3.ConsUltimaNfEnt.Open;
                  dm3.ConsUltimaNfEnt.First;

                  LFornecedor.Caption := IntToStr(dm3.ConsUltimaNfEntCODFOR.Value)+' - '+dm3.ConsUltimaNfEntNOMFOR.Value;
                  LNumNfc.Caption := IntToStr(dm3.ConsUltimaNfEntNUMNFC.Value);
                  LCodSnf.Caption := dm3.ConsUltimaNfEntCODSNF.Value;
                  LDatEmi.Caption := DateToStr(dm3.ConsUltimaNfEntDATEMI.Value);
                  LDatEnt.Caption := DateToStr(dm3.ConsUltimaNfEntDATENT.Value);
                  LQtdRec.Caption := formatcurr('###,###,##0.00',dm3.ConsUltimaNfEntQTDTOT.AsCurrency);
                  LQtdRec.Caption := LQtdRec.Caption + ' - '+dm3.ConsUltimaNfEntUNINFC.Value;
                  LQtdEst.Caption := formatcurr('###,###,##0.00',dm3.ConsUltimaNfEntQTDEST.AsCurrency);
                  LQtdEst.Caption := LQtdEst.Caption + ' - '+dm3.ConsUltimaNfEntUNIMED.Value;
                  LPreUni.Caption := formatcurr('###,###,##0.000',dm3.ConsUltimaNfEntPREUNI.AsCurrency);
                  LPreEst.Caption := formatcurr('###,###,##0.000',dm3.ConsUltimaNfEntPREEST.AsCurrency);
                  LPerIpi.Caption := CurrToStr(dm3.ConsUltimaNfEntPERIPI.AsCurrency);
                  LPerIcm.Caption := CurrToStr(dm3.ConsUltimaNfEntPERICM.AsCurrency);
                  LVlrBru.Caption := formatcurr('###,###,##0.00',dm3.ConsUltimaNfEntVLRBRU.AsCurrency);
                  LVlrLiq.Caption := formatcurr('###,###,##0.00',dm3.ConsUltimaNfEntVLRLIQ.AsCurrency);
                  LNumOcp.Caption := IntToStr(dm3.ConsUltimaNfEntNUMOCP.Value);
                  LCodCpg.Caption := dm3.ConsUltimaNfEntDESCPG.Value;

                  {*******************************************************************
                            consulta as ordens de compra em aberto do prodo
                  ********************************************************************}
                  dm3.ConsE420Ipo.Close;
                  dm3.ConsE420Ipo.Parameters.ParamByName('codpro').Value := dm3.ConsE075ProCODPRO.Value;
                  dm3.ConsE420Ipo.Open;

               end;//3
         end;//1


end;

procedure TFConsMateriaPrima.EdCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f3 then
     begin
       BConsProduto.Click;
     end;
end;

procedure TFConsMateriaPrima.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFConsMateriaPrima.FormShow(Sender: TObject);
begin
    EdDatFim.Date := Date;
    EdDatIni.Date := (Date - 30);

    PaginaControleFor.ActivePageIndex := 0;

    dm3.ConsE210Est.Close;
    dm3.ConsE095For.Close;
    dm3.ConsE420Ipo.Close;
    dm3.ConsE403Fpr.Close;
end;

procedure TFConsMateriaPrima.BProximoClick(Sender: TObject);
begin
if  not DM2.ConsGeral.IsEmpty then
    begin
       dm2.ConsGeral.Next;
       EdCodPro.Text := dm2.ConsGeral.FieldByName('CODPRO').AsString;
       BMostrar.Click;
    end;
end;

procedure TFConsMateriaPrima.btnObsProClick(Sender: TObject);
begin
if not dm3.ConsE075Pro.IsEmpty then
   begin
     FObsPro := TFObsPro.Create(Self);
     FObsPro.memoObs.Text := dm3.ConsE075ProUSU_OBSPRO.AsString;
     FObsPro.vnCodEmp := dm3.ConsE075ProCODEMP.AsInteger;
     FObsPro.vaCodPro := dm3.ConsE075ProCODPRO.AsString;
     FObsPro.ShowModal;
     FreeAndNil(FObsPro);
   end;
end;

end.
