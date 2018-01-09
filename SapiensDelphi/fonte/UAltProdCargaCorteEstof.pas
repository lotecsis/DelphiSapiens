unit UAltProdCargaCorteEstof;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons,
  ExtCtrls, ImgList, ADODB, AppEvnts ,Math{para usar o RoundTo};

type
  TFAltProdCargaCorteEstof = class(TForm)
    dbg1: TDBGrid;
    dsClientAltCargaCorteEstof: TDataSource;
    edtNumAne: TCurrencyEdit;
    lbl1: TLabel;
    btnConfirmar: TBitBtn;
    rbAdicionar: TRadioButton;
    img1: TImage;
    img2: TImage;
    rbExcluir: TRadioButton;
    ImageList1: TImageList;
    ValidaProduto: TADOQuery;
    ValidaProdutoCODPRO: TStringField;
    ValidaProdutoDESPRO: TStringField;
    ValidaProdutoCODFAM: TStringField;
    ValidaProdutoCODAGP: TStringField;
    ValidaDerivacao: TADOQuery;
    ValidaDerivacaoCODEMP: TIntegerField;
    ValidaDerivacaoCODPRO: TStringField;
    ValidaDerivacaoCODDER: TStringField;
    ValidaDerivacaoDESDER: TStringField;
    ValidaDerivacaoDESCPL: TStringField;
    ValidaDerivacaoCODBAR: TBCDField;
    ValidaDerivacaoCODAGR: TIntegerField;
    ValidaDerivacaoCODAGT: TStringField;
    ValidaDerivacaoSEQCMD: TIntegerField;
    ValidaDerivacaoDATVAL: TDateTimeField;
    ValidaDerivacaoDIAVLT: TIntegerField;
    ValidaDerivacaoTIPCN2: TStringField;
    ValidaDerivacaoVLRCN2: TBCDField;
    ValidaDerivacaoTIPCN3: TStringField;
    ValidaDerivacaoVLRCN3: TBCDField;
    ValidaDerivacaoPRECUS: TBCDField;
    ValidaDerivacaoDATCUS: TDateTimeField;
    ValidaDerivacaoPREMED: TBCDField;
    ValidaDerivacaoDATMED: TDateTimeField;
    ValidaDerivacaoPREUEN: TBCDField;
    ValidaDerivacaoDATUEN: TDateTimeField;
    ValidaDerivacaoPREREP: TBCDField;
    ValidaDerivacaoDATREP: TDateTimeField;
    ValidaDerivacaoDIAREP: TIntegerField;
    ValidaDerivacaoPESBRU: TBCDField;
    ValidaDerivacaoPESLIQ: TBCDField;
    ValidaDerivacaoTOLPES: TBCDField;
    ValidaDerivacaoVOLDER: TBCDField;
    ValidaDerivacaoPERPRD: TBCDField;
    ValidaDerivacaoQTDIQL: TBCDField;
    ValidaDerivacaoQTDCIC: TBCDField;
    ValidaDerivacaoQTDPRD: TBCDField;
    ValidaDerivacaoPREUIS: TBCDField;
    ValidaDerivacaoPERICS: TBCDField;
    ValidaDerivacaoCODEMB: TIntegerField;
    ValidaDerivacaoCODROT: TStringField;
    ValidaDerivacaoCODROY: TIntegerField;
    ValidaDerivacaoBXAORP: TStringField;
    ValidaDerivacaoSERCCL: TStringField;
    ValidaDerivacaoNUMCCL: TStringField;
    ValidaDerivacaoCURABC: TStringField;
    ValidaDerivacaoCURAB2: TStringField;
    ValidaDerivacaoCURAB3: TStringField;
    ValidaDerivacaoCURAB4: TStringField;
    ValidaDerivacaoCODREG: TIntegerField;
    ValidaDerivacaoSITDER: TStringField;
    ValidaDerivacaoCODMOT: TIntegerField;
    ValidaDerivacaoCTRLOT: TStringField;
    ValidaDerivacaoCTRSEP: TStringField;
    ValidaDerivacaoCTRVLD: TStringField;
    ValidaDerivacaoDEPPAD: TStringField;
    ValidaDerivacaoDEPPAA: TStringField;
    ValidaDerivacaoINDPCE: TStringField;
    ValidaDerivacaoINDPCR: TStringField;
    ValidaDerivacaoINDKAN: TStringField;
    ValidaDerivacaoCODREF: TStringField;
    ValidaDerivacaoCODPIN: TStringField;
    ValidaDerivacaoNOTFOR: TBCDField;
    ValidaDerivacaoORICUS: TStringField;
    ValidaDerivacaoINFCUS: TStringField;
    ValidaDerivacaoHORCUS: TIntegerField;
    ValidaDerivacaoUSUGER: TBCDField;
    ValidaDerivacaoHORGER: TIntegerField;
    ValidaDerivacaoDATGER: TDateTimeField;
    ValidaDerivacaoUSUALT: TBCDField;
    ValidaDerivacaoHORALT: TIntegerField;
    ValidaDerivacaoDATALT: TDateTimeField;
    ValidaDerivacaoCODAGE: TStringField;
    ValidaDerivacaoCODBA2: TStringField;
    ValidaDerivacaoINDEXP: TIntegerField;
    ValidaDerivacaoDATPAL: TDateTimeField;
    ValidaDerivacaoHORPAL: TIntegerField;
    ValidaDerivacaoEXPWMS: TIntegerField;
    ValidaDerivacaoSERMVP: TStringField;
    ValidaDerivacaoAPRDFT: TStringField;
    ValidaDerivacaoCODAEM: TStringField;
    ValidaDerivacaoCODPDV: TIntegerField;
    ValidaDerivacaoINDGEN: TStringField;
    ValidaDerivacaoQTDMLT: TBCDField;
    ValidaDerivacaoQTDMIN: TBCDField;
    ValidaDerivacaoQTDMAX: TBCDField;
    ValidaDerivacaoCODEND: TStringField;
    ValidaDerivacaoROTANX: TIntegerField;
    ValidaDerivacaoNUMANX: TBCDField;
    ValidaDerivacaoINDPCQ: TStringField;
    ValidaDerivacaoVLRCID: TBCDField;
    ValidaDerivacaoUSU_CORUNI: TBCDField;
    ValidaDerivacaoUSU_CMP1BB: TBCDField;
    ValidaDerivacaoUSU_CMP1AE: TBCDField;
    ValidaDerivacaoUSU_CMP2BB: TBCDField;
    ValidaDerivacaoUSU_CMP2EN: TBCDField;
    ValidaDerivacaoUSU_MEDESP: TStringField;
    ValidaDerivacaoUSU_FATOR: TBCDField;
    ValidaDerivacaoQTDEMB: TFMTBCDField;
    ControlaEventos: TApplicationEvents;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    procedure img1Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg1ColExit(Sender: TObject);
    procedure dsClientAltCargaCorteEstofStateChange(Sender: TObject);
    procedure dbg1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbg1EditButtonClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure ControlaEventosIdle(Sender: TObject; var Done: Boolean);
    procedure btnConfirmarKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbg1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbg1Enter(Sender: TObject);
    procedure dbg1Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    vaStatuClient : TDataSetState;
  public
    { Public declarations }
  end;

var
  FAltProdCargaCorteEstof: TFAltProdCargaCorteEstof;

implementation

uses UDm2, UConsGeralNfEnt, UDmOra, UDm1;

{$R *.dfm}

procedure TFAltProdCargaCorteEstof.btnConfirmarClick(Sender: TObject);
var vnSaldoDisp,vnSaldoTrans,vnQtdTrans,vnSaldoFila : Double;
begin
    //valida os dados informados
    Dm2.ClientAltCargaCorteEstof.First;
    while not Dm2.ClientAltCargaCorteEstof.Eof do
       begin
         ValidaDerivacao.Close;//valida o produto/derivacao
         ValidaDerivacao.Parameters.ParamByName('CODEMP').Value := 1;
         ValidaDerivacao.Parameters.ParamByName('CODPRO').Value := Dm2.ClientAltCargaCorteEstofCODPRO.Value;
         ValidaDerivacao.Parameters.ParamByName('CODDER').Value := Dm2.ClientAltCargaCorteEstofCODDER.Value;
         ValidaDerivacao.Open;
         if ValidaDerivacao.IsEmpty then
            begin
               MessageDlg('Produto:'+QuotedStr(Dm2.ClientAltCargaCorteEstofCODPRO.AsString+'  Derivação: '+
               QuotedStr(Dm2.ClientAltCargaCorteEstofCODDER.AsString)+'  não encontrado'),mtWarning,[mbok],0);
               Abort;
            end;

         //VALIDA A LIGACAO COM A COR INFORMADA
         Dm2.ConsGeral.Close;
         Dm2.ConsGeral.SQL.Clear;
         Dm2.ConsGeral.SQL.Add('SELECT * FROM USU_TDERCOR');
         Dm2.ConsGeral.SQL.Add('WHERE');
         Dm2.ConsGeral.SQL.Add('USU_CODEMP = 1 AND');
         Dm2.ConsGeral.SQL.Add('USU_CODPRO = :CODPRO AND');
         Dm2.ConsGeral.SQL.Add('USU_CODDER = :CODDER AND');
         Dm2.ConsGeral.SQL.Add('USU_CODTEC = :CODTEC AND');
         Dm2.ConsGeral.SQL.Add('USU_SITTEC = ''A''');
         Dm2.ConsGeral.Parameters.ParamByName('CODPRO').Value := Dm2.ClientAltCargaCorteEstofCODPRO.Value;
         Dm2.ConsGeral.Parameters.ParamByName('CODDER').Value := Dm2.ClientAltCargaCorteEstofCODDER.Value;
         Dm2.ConsGeral.Parameters.ParamByName('CODTEC').Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;
         Dm2.ConsGeral.Open;
         if Dm2.ConsGeral.IsEmpty then
            begin
              MessageDlg('Não existe ligação do produto: '+QuotedStr(Dm2.ClientAltCargaCorteEstofCODPRO.AsString)+
              '  Derivação: '+ QuotedStr(Dm2.ClientAltCargaCorteEstofCODDER.AsString)+'  com o tecido: '+
              QuotedStr(Dm2.ClientAltCargaCorteEstofCODCOR1.AsString),mtWarning,[mbok],0);
              Abort;
            end;
         if Trim(Dm2.ClientAltCargaCorteEstofCODCOR2.Value) <> '' then
            begin
               Dm2.ConsGeral.Close;
               Dm2.ConsGeral.SQL.Clear;
               Dm2.ConsGeral.SQL.Add('SELECT * FROM USU_TDERCOR');
               Dm2.ConsGeral.SQL.Add('WHERE');
               Dm2.ConsGeral.SQL.Add('USU_CODEMP = 1 AND');
               Dm2.ConsGeral.SQL.Add('USU_CODPRO = :CODPRO AND');
               Dm2.ConsGeral.SQL.Add('USU_CODDER = :CODDER AND');
               Dm2.ConsGeral.SQL.Add('USU_CODTEC = :CODTEC AND');
               Dm2.ConsGeral.SQL.Add('USU_SITTEC = ''A''');
               Dm2.ConsGeral.Parameters.ParamByName('CODPRO').Value := Dm2.ClientAltCargaCorteEstofCODPRO.Value;
               Dm2.ConsGeral.Parameters.ParamByName('CODDER').Value := Dm2.ClientAltCargaCorteEstofCODDER.Value;
               Dm2.ConsGeral.Parameters.ParamByName('CODTEC').Value := Dm2.ClientAltCargaCorteEstofCODCOR2.Value;
               Dm2.ConsGeral.Open;
               if Dm2.ConsGeral.IsEmpty then
                  begin
                    MessageDlg('Não existe ligação do produto: '+QuotedStr(Dm2.ClientAltCargaCorteEstofCODPRO.AsString)+
                    '  Derivação: '+ QuotedStr(Dm2.ClientAltCargaCorteEstofCODDER.AsString)+'  com o tecido: '+
                    QuotedStr(Dm2.ClientAltCargaCorteEstofCODCOR2.AsString),mtWarning,[mbok],0);
                    Abort;
                  end;
            end;

          if Dm2.ClientAltCargaCorteEstofTIPMOV.Value = 'E' then //se estiver excluindo
             begin
                Dm1.CadUsu_TCorCar.Close;
                Dm1.CadUsu_TCorCar.Parameters.ParamByName('numane').Value := Dm2.ClientAltCargaCorteEstofNUMANE.Value;
                Dm1.CadUsu_TCorCar.Parameters.ParamByName('codpro').Value := Dm2.ClientAltCargaCorteEstofCODPRO.Value;
                Dm1.CadUsu_TCorCar.Parameters.ParamByName('codder').Value := Dm2.ClientAltCargaCorteEstofCODDER.Value;
                Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor1').Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;
                if Trim(Dm2.ClientAltCargaCorteEstofCODCOR2.Value) = '' then
                   Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor2').Value := ' '
                else
                   Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor2').Value := Dm2.ClientAltCargaCorteEstofCODCOR2.Value;
                Dm1.CadUsu_TCorCar.Open;
                if Dm1.CadUsu_TCorCar.IsEmpty then
                   begin
                       MessageDlg('Produto:'+QuotedStr(Dm2.ClientAltCargaCorteEstofCODPRO.AsString)+'  Derivação: '+
                       QuotedStr(Dm2.ClientAltCargaCorteEstofCODDER.AsString)+'  Cor: '+QuotedStr(Dm2.ClientAltCargaCorteEstofCODCOR1.AsString)+
                       '/'+QuotedStr(Dm2.ClientAltCargaCorteEstofCODCOR2.AsString)+
                       '  não encontrado para ser excluído',mtWarning,[mbok],0);
                       Abort;
                   end
                else
                   begin
                      if Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger > Dm1.CadUsu_TCorCarUSU_QTDABE.AsInteger then
                         begin
                             MessageDlg('Produto:'+QuotedStr(Dm2.ClientAltCargaCorteEstofCODPRO.AsString)+'  Derivação: '+
                             QuotedStr(Dm2.ClientAltCargaCorteEstofCODDER.AsString)+'  Cor: '+QuotedStr(Dm2.ClientAltCargaCorteEstofCODCOR1.AsString)+
                             '/'+QuotedStr(Dm2.ClientAltCargaCorteEstofCODCOR2.AsString)+
                             '  quantidade do movimento '+QuotedStr(IntToStr(Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger))+
                             '  não pode ser maior do que a quantidade em aberto '+QuotedStr(IntToStr(Dm1.CadUsu_TCorCarUSU_QTDABE.AsInteger))
                             ,mtWarning,[mbok],0);
                             Abort;
                         end;
                   end;

             end;

         Dm2.ClientAltCargaCorteEstof.Next;
       end; //fim da validaçao


       Dm2.ClientAltCargaCorteEstof.First;
       while not Dm2.ClientAltCargaCorteEstof.Eof do
          begin
            //consulta o consumo de tecido
            Dm2.ConsE075Der.Close;
            Dm2.ConsE075Der.Parameters.ParamByName('CODPRO').Value := Dm2.ClientAltCargaCorteEstofCODPRO.Value;
            Dm2.ConsE075Der.Parameters.ParamByName('CODDER').Value := Dm2.ClientAltCargaCorteEstofCODDER.Value;
            Dm2.ConsE075Der.Open;

            if Dm2.ClientAltCargaCorteEstofTIPMOV.Value = 'A' then
               begin
                  if Trim(Dm2.ClientAltCargaCorteEstofCODCOR2.Value) = '' then  //cor unica
                     begin
                       Dm2.ConsSaldos.Close;
                       Dm2.ConsSaldos.Parameters.ParamByName('CODPRO').Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;
                       Dm2.ConsSaldos.Open;

                       vnSaldoDisp := RoundTo(Dm2.ConsSaldosQTDEST.AsFloat - (Dm2.ConsSaldosUSU_SALRES.AsFloat + Dm2.ConsSaldosUSU_SALFIL.AsFloat),-2);
                       if vnSaldoDisp < 0 then
                          vnSaldoDisp := 0;
                       vnQtdTrans := RoundTo(Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger * Dm2.ConsE075DerUSU_CORUNI.Value,-2);
                       vnSaldoTrans := RoundTo(vnSaldoDisp - vnQtdTrans,-2);

                       Dm2.CadUsu_TSalTec.Close;
                       Dm2.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;
                       Dm2.CadUsu_TSalTec.Open;
                       if Dm2.CadUsu_TSalTec.IsEmpty then
                          begin
                            Dm2.CadUsu_TSalTec.Insert;
                            Dm2.CadUsu_TSalTecUSU_CODPRO.Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;
                            Dm2.CadUsu_TSalTecUSU_SALRES.Value := 0;
                            Dm2.CadUsu_TSalTecUSU_SALFIL.Value := 0;
                          end
                       else
                          begin
                            Dm2.CadUsu_TSalTec.Edit;
                          end;

                       if vnSaldoTrans >= 0 then
                           begin
                              Dm2.CadUsu_TSalTecUSU_SALRES.Value := Dm2.CadUsu_TSalTecUSU_SALRES.Value + vnQtdTrans;
                           end
                       else
                           begin
                              Dm2.CadUsu_TSalTecUSU_SALRES.Value := Dm2.CadUsu_TSalTecUSU_SALRES.Value + vnSaldoDisp;
                              Dm2.CadUsu_TSalTecUSU_SALFIL.Value := Dm2.CadUsu_TSalTecUSU_SALFIL.Value + (vnSaldoTrans * (-1));
                           end;
                        Dm2.CadUsu_TSalTec.Post;

                     end
                  else
                     begin
                       //com a cor 01
                       Dm2.ConsSaldos.Close;
                       Dm2.ConsSaldos.Parameters.ParamByName('CODPRO').Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;
                       Dm2.ConsSaldos.Open;

                       vnSaldoDisp := RoundTo(Dm2.ConsSaldosQTDEST.AsFloat - (Dm2.ConsSaldosUSU_SALRES.AsFloat + Dm2.ConsSaldosUSU_SALFIL.AsFloat),-2);
                       if vnSaldoDisp < 0 then
                          vnSaldoDisp := 0;
                       vnQtdTrans := RoundTo(Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger * Dm2.ConsE075DerUSU_CMP1BB.Value,-2);
                       vnSaldoTrans := RoundTo(vnSaldoDisp - vnQtdTrans,-2);

                       Dm2.CadUsu_TSalTec.Close;
                       Dm2.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;
                       Dm2.CadUsu_TSalTec.Open;
                       if Dm2.CadUsu_TSalTec.IsEmpty then
                          begin
                            Dm2.CadUsu_TSalTec.Insert;
                            Dm2.CadUsu_TSalTecUSU_CODPRO.Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;
                            Dm2.CadUsu_TSalTecUSU_SALRES.Value := 0;
                            Dm2.CadUsu_TSalTecUSU_SALFIL.Value := 0;
                          end
                       else
                          begin
                            Dm2.CadUsu_TSalTec.Edit;
                          end;

                       if vnSaldoTrans >= 0 then
                           begin
                              Dm2.CadUsu_TSalTecUSU_SALRES.Value := Dm2.CadUsu_TSalTecUSU_SALRES.Value + vnQtdTrans;
                           end
                       else
                           begin
                              Dm2.CadUsu_TSalTecUSU_SALRES.Value := Dm2.CadUsu_TSalTecUSU_SALRES.Value + vnSaldoDisp;
                              Dm2.CadUsu_TSalTecUSU_SALFIL.Value := Dm2.CadUsu_TSalTecUSU_SALFIL.Value + (vnSaldoTrans * (-1));
                           end;
                        Dm2.CadUsu_TSalTec.Post;

                        //com a cor 02
                       Dm2.ConsSaldos.Close;
                       Dm2.ConsSaldos.Parameters.ParamByName('CODPRO').Value := Dm2.ClientAltCargaCorteEstofCODCOR2.Value;
                       Dm2.ConsSaldos.Open;

                       vnSaldoDisp := RoundTo(Dm2.ConsSaldosQTDEST.AsFloat - (Dm2.ConsSaldosUSU_SALRES.AsFloat + Dm2.ConsSaldosUSU_SALFIL.AsFloat),-2);
                       if vnSaldoDisp < 0 then
                          vnSaldoDisp := 0;
                       vnQtdTrans := RoundTo(Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger * Dm2.ConsE075DerUSU_CMP1AE.Value,-2);
                       vnSaldoTrans := RoundTo(vnSaldoDisp - vnQtdTrans,-2);

                       Dm2.CadUsu_TSalTec.Close;
                       Dm2.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := Dm2.ClientAltCargaCorteEstofCODCOR2.Value;
                       Dm2.CadUsu_TSalTec.Open;
                       if Dm2.CadUsu_TSalTec.IsEmpty then
                          begin
                            Dm2.CadUsu_TSalTec.Insert;
                            Dm2.CadUsu_TSalTecUSU_CODPRO.Value := Dm2.ClientAltCargaCorteEstofCODCOR2.Value;
                            Dm2.CadUsu_TSalTecUSU_SALRES.Value := 0;
                            Dm2.CadUsu_TSalTecUSU_SALFIL.Value := 0;
                          end
                       else
                          begin
                            Dm2.CadUsu_TSalTec.Edit;
                          end;

                       if vnSaldoTrans >= 0 then
                           begin
                              Dm2.CadUsu_TSalTecUSU_SALRES.Value := Dm2.CadUsu_TSalTecUSU_SALRES.Value + vnQtdTrans;
                           end
                       else
                           begin
                              Dm2.CadUsu_TSalTecUSU_SALRES.Value := Dm2.CadUsu_TSalTecUSU_SALRES.Value + vnSaldoDisp;
                              Dm2.CadUsu_TSalTecUSU_SALFIL.Value := Dm2.CadUsu_TSalTecUSU_SALFIL.Value + (vnSaldoTrans * (-1));
                           end;
                        Dm2.CadUsu_TSalTec.Post;
                     end;

                  //GRAVA O PRODUTO NA CARGA
                  Dm1.CadUsu_TProCar.Close;
                  Dm1.CadUsu_TProCar.Parameters.ParamByName('numane').Value := Dm2.ClientAltCargaCorteEstofNUMANE.Value;
                  Dm1.CadUsu_TProCar.Parameters.ParamByName('codpro').Value := Dm2.ClientAltCargaCorteEstofCODPRO.Value;
                  Dm1.CadUsu_TProCar.Parameters.ParamByName('codder').Value := Dm2.ClientAltCargaCorteEstofCODDER.Value;
                  Dm1.CadUsu_TProCar.Open;
                  if Dm1.CadUsu_TProCar.IsEmpty then
                      begin//16
                        Dm1.CadUsu_TProCar.Insert;
                        Dm1.CadUsu_TProCarUSU_NUMANE.Value := Dm2.ClientAltCargaCorteEstofNUMANE.Value;
                        Dm1.CadUsu_TProCarUSU_CODPRO.Value := Dm2.ClientAltCargaCorteEstofCODPRO.Value;
                        Dm1.CadUsu_TProCarUSU_CODDER.Value := Dm2.ClientAltCargaCorteEstofCODDER.Value;
                        Dm1.CadUsu_TProCarUSU_QTDPED.Value := Dm2.ClientAltCargaCorteEstofQTDMOV.Value;
                        Dm1.CadUsu_TProCarUSU_QTDPRO.Value := 0;
                        Dm1.CadUsu_TProCarUSU_QTDABE.Value := Dm2.ClientAltCargaCorteEstofQTDMOV.Value;
                        Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'N';
                        Dm1.CadUsu_TProCar.Post;
                      end//16
                  else
                      begin//17
                         Dm1.CadUsu_TProCar.Edit;
                         Dm1.CadUsu_TProCarUSU_QTDPED.Value := Dm1.CadUsu_TProCarUSU_QTDPED.Value + Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger;
                         Dm1.CadUsu_TProCarUSU_QTDABE.Value := Dm1.CadUsu_TProCarUSU_QTDABE.Value + Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger;
                         Dm1.CadUsu_TProCar.Post;
                      end;//17


                   if Trim(Dm2.ClientAltCargaCorteEstofCODCOR2.Value) = '' then  //cor unica
                      begin
                        Dm1.CadUsu_TCorCar.Close;
                        Dm1.CadUsu_TCorCar.Parameters.ParamByName('numane').Value := Dm2.ClientAltCargaCorteEstofNUMANE.Value;
                        Dm1.CadUsu_TCorCar.Parameters.ParamByName('codpro').Value := Dm2.ClientAltCargaCorteEstofCODPRO.Value;
                        Dm1.CadUsu_TCorCar.Parameters.ParamByName('codder').Value := Dm2.ClientAltCargaCorteEstofCODDER.Value;
                        Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor1').Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;
                        Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor2').Value := ' ';
                        Dm1.CadUsu_TCorCar.Open;
                        if Dm1.CadUsu_TCorCar.IsEmpty then
                           begin//24
                             Dm1.CadUsu_TCorCar.Insert;
                             Dm1.CadUsu_TCorCarUSU_NUMANE.Value := Dm2.ClientAltCargaCorteEstofNUMANE.Value;
                             Dm1.CadUsu_TCorCarUSU_CODPRO.Value := Dm2.ClientAltCargaCorteEstofCODPRO.Value;
                             Dm1.CadUsu_TCorCarUSU_CODDER.Value := Dm2.ClientAltCargaCorteEstofCODDER.Value;
                             Dm1.CadUsu_TCorCarUSU_CODCOR1.Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;
                             Dm1.CadUsu_TCorCarUSU_CODCOR2.Value := ' ';
                             Dm1.CadUsu_TCorCarUSU_TIPCOM.Value := 1;
                             Dm1.CadUsu_TCorCarUSU_QTDPED.Value := Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger;
                             Dm1.CadUsu_TCorCarUSU_QTDPRO.Value := 0;
                             Dm1.CadUsu_TCorCarUSU_QTDABE.Value := Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger;
                             Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'N';
                             Dm1.CadUsu_TCorCar.Post;
                           end//24
                        else
                           begin//25
                             Dm1.CadUsu_TCorCar.Edit;
                             Dm1.CadUsu_TCorCarUSU_QTDPED.Value := Dm1.CadUsu_TCorCarUSU_QTDPED.Value + Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger;
                             Dm1.CadUsu_TCorCarUSU_QTDABE.Value := Dm1.CadUsu_TCorCarUSU_QTDABE.Value + Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger;
                             Dm1.CadUsu_TCorCar.Post;
                           end;//25
                      end
                   else
                      begin
                        Dm1.CadUsu_TCorCar.Close;
                        Dm1.CadUsu_TCorCar.Parameters.ParamByName('numane').Value := Dm2.ClientAltCargaCorteEstofNUMANE.Value;
                        Dm1.CadUsu_TCorCar.Parameters.ParamByName('codpro').Value := Dm2.ClientAltCargaCorteEstofCODPRO.Value;
                        Dm1.CadUsu_TCorCar.Parameters.ParamByName('codder').Value := Dm2.ClientAltCargaCorteEstofCODDER.Value;
                        Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor1').Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;
                        Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor2').Value := Dm2.ClientAltCargaCorteEstofCODCOR2.Value;
                        Dm1.CadUsu_TCorCar.Open;
                        if Dm1.CadUsu_TCorCar.IsEmpty then
                           begin//24
                             Dm1.CadUsu_TCorCar.Insert;
                             Dm1.CadUsu_TCorCarUSU_NUMANE.Value := Dm2.ClientAltCargaCorteEstofNUMANE.Value;
                             Dm1.CadUsu_TCorCarUSU_CODPRO.Value := Dm2.ClientAltCargaCorteEstofCODPRO.Value;
                             Dm1.CadUsu_TCorCarUSU_CODDER.Value := Dm2.ClientAltCargaCorteEstofCODDER.Value;
                             Dm1.CadUsu_TCorCarUSU_CODCOR1.Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;
                             Dm1.CadUsu_TCorCarUSU_CODCOR2.Value := Dm2.ClientAltCargaCorteEstofCODCOR2.Value;
                             Dm1.CadUsu_TCorCarUSU_TIPCOM.Value := 2;
                             Dm1.CadUsu_TCorCarUSU_QTDPED.Value := Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger;
                             Dm1.CadUsu_TCorCarUSU_QTDPRO.Value := 0;
                             Dm1.CadUsu_TCorCarUSU_QTDABE.Value := Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger;
                             Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'N';
                             Dm1.CadUsu_TCorCar.Post;
                           end//24
                        else
                           begin//25
                             Dm1.CadUsu_TCorCar.Edit;
                             Dm1.CadUsu_TCorCarUSU_QTDPED.Value := Dm1.CadUsu_TCorCarUSU_QTDPED.Value + Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger;
                             Dm1.CadUsu_TCorCarUSU_QTDABE.Value := Dm1.CadUsu_TCorCarUSU_QTDABE.Value + Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger;
                             Dm1.CadUsu_TCorCar.Post;
                           end;//25
                      end;


               end
            else
            if Dm2.ClientAltCargaCorteEstofTIPMOV.Value = 'E' then //se estiver excluindo
               begin
                  //se chegou até aqui é pq passou pela validaçao

                  if Trim(Dm2.ClientAltCargaCorteEstofCODCOR2.Value) = '' then
                     begin
                        Dm1.CadUsu_TSalTec.Close;
                        Dm1.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;//cor do tecido
                        Dm1.CadUsu_TSalTec.Open;
                        if not Dm1.CadUsu_TSalTec.IsEmpty then
                           begin
                              Dm1.CadUsu_TSalTec.Edit;
                              vnQtdTrans := RoundTo(Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger * Dm2.ConsE075DerUSU_CORUNI.Value,-2);//

                              if RoundTo(Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2) >= RoundTo(vnQtdTrans,-2) then
                                 begin
                                    Dm1.CadUsu_TSalTecUSU_SALFIL.Value := Dm1.CadUsu_TSalTecUSU_SALFIL.Value - RoundTo(vnQtdTrans,-2);
                                 end
                              else
                              if (Dm1.CadUsu_TSalTecUSU_SALFIL.Value > 0) and (RoundTo(Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2) < RoundTo(vnQtdTrans,-2)) then
                                 begin
                                   vnSaldoFila := RoundTo(vnQtdTrans - Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2);
                                   Dm1.CadUsu_TSalTecUSU_SALFIL.Value := 0;
                                   Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value - vnSaldoFila;
                                 end
                              else
                                 begin
                                    Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value - RoundTo(vnQtdTrans,-2);
                                 end;

                              Dm1.CadUsu_TSalTec.Post;
                           end;
                     end
                  else
                     begin
                        //faz com a cor 01
                        Dm1.CadUsu_TSalTec.Close;
                        Dm1.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;//cor do tecido
                        Dm1.CadUsu_TSalTec.Open;
                        if not Dm1.CadUsu_TSalTec.IsEmpty then
                           begin
                              Dm1.CadUsu_TSalTec.Edit;
                              vnQtdTrans := RoundTo(Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger * Dm2.ConsE075DerUSU_CMP1BB.Value,-2);

                              if RoundTo(Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2) >= RoundTo(vnQtdTrans,-2) then
                                 begin
                                    Dm1.CadUsu_TSalTecUSU_SALFIL.Value := Dm1.CadUsu_TSalTecUSU_SALFIL.Value - RoundTo(vnQtdTrans,-2);
                                 end
                              else
                              if (Dm1.CadUsu_TSalTecUSU_SALFIL.Value > 0) and (RoundTo(Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2) < RoundTo(vnQtdTrans,-2)) then
                                 begin
                                   vnSaldoFila := RoundTo(vnQtdTrans - Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2);
                                   Dm1.CadUsu_TSalTecUSU_SALFIL.Value := 0;
                                   Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value - vnSaldoFila;
                                 end
                              else
                                 begin
                                    Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value - RoundTo(vnQtdTrans,-2);
                                 end;

                              Dm1.CadUsu_TSalTec.Post;
                           end;

                        //com a cor 02
                        Dm1.CadUsu_TSalTec.Close;
                        Dm1.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := Dm2.ClientAltCargaCorteEstofCODCOR2.Value;//cor do tecido
                        Dm1.CadUsu_TSalTec.Open;
                        if not Dm1.CadUsu_TSalTec.IsEmpty then
                           begin
                              Dm1.CadUsu_TSalTec.Edit;
                              vnQtdTrans := RoundTo(Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger * Dm2.ConsE075DerUSU_CMP1AE.Value,-2);

                              if RoundTo(Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2) >= RoundTo(vnQtdTrans,-2) then
                                 begin
                                    Dm1.CadUsu_TSalTecUSU_SALFIL.Value := Dm1.CadUsu_TSalTecUSU_SALFIL.Value - RoundTo(vnQtdTrans,-2);
                                 end
                              else
                              if (Dm1.CadUsu_TSalTecUSU_SALFIL.Value > 0) and (RoundTo(Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2) < RoundTo(vnQtdTrans,-2)) then
                                 begin
                                   vnSaldoFila := RoundTo(vnQtdTrans - Dm1.CadUsu_TSalTecUSU_SALFIL.Value,-2);
                                   Dm1.CadUsu_TSalTecUSU_SALFIL.Value := 0;
                                   Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value - vnSaldoFila;
                                 end
                              else
                                 begin
                                    Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value - RoundTo(vnQtdTrans,-2);
                                 end;

                              Dm1.CadUsu_TSalTec.Post;
                           end;
                     end;

                  Dm1.CadUsu_TCorCar.Close;
                  Dm1.CadUsu_TCorCar.Parameters.ParamByName('numane').Value := Dm2.ClientAltCargaCorteEstofNUMANE.Value;
                  Dm1.CadUsu_TCorCar.Parameters.ParamByName('codpro').Value := Dm2.ClientAltCargaCorteEstofCODPRO.Value;
                  Dm1.CadUsu_TCorCar.Parameters.ParamByName('codder').Value := Dm2.ClientAltCargaCorteEstofCODDER.Value;
                  Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor1').Value := Dm2.ClientAltCargaCorteEstofCODCOR1.Value;
                  if Trim(Dm2.ClientAltCargaCorteEstofCODCOR2.Value) = '' then
                     Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor2').Value := ' '
                  else
                     Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor2').Value := Dm2.ClientAltCargaCorteEstofCODCOR2.Value;
                  Dm1.CadUsu_TCorCar.Open;
                  if not Dm1.CadUsu_TCorCar.IsEmpty then
                     begin
                        if Dm1.CadUsu_TCorCarUSU_QTDPED.AsInteger = Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger  then
                           begin
                             Dm1.CadUsu_TCorCar.Delete;
                           end
                        else
                           begin
                              Dm1.CadUsu_TCorCar.Edit;
                              Dm1.CadUsu_TCorCarUSU_QTDPED.Value := Dm1.CadUsu_TCorCarUSU_QTDPED.Value - Dm2.ClientAltCargaCorteEstofQTDMOV.AsInteger;
                              Dm1.CadUsu_TCorCarUSU_QTDABE.Value := Dm1.CadUsu_TCorCarUSU_QTDPED.Value - Dm1.CadUsu_TCorCarUSU_QTDPRO.Value;
                              Dm1.CadUsu_TCorCar.Post;
                           end;
                     end;

                  //com o produto
                  Dm1.CadUsu_TProCar.Close;
                  Dm1.CadUsu_TProCar.Parameters.ParamByName('numane').Value := Dm2.ClientAltCargaCorteEstofNUMANE.Value;
                  Dm1.CadUsu_TProCar.Parameters.ParamByName('codpro').Value := Dm2.ClientAltCargaCorteEstofCODPRO.Value;
                  Dm1.CadUsu_TProCar.Parameters.ParamByName('codder').Value := Dm2.ClientAltCargaCorteEstofCODDER.Value;
                  Dm1.CadUsu_TProCar.Open;
                  if not Dm1.CadUsu_TProCar.IsEmpty then
                     begin
                       if Dm1.CadUsu_TProCarUSU_QTDPED.Value = Dm2.ClientAltCargaCorteEstofQTDMOV.Value then
                          begin
                            Dm1.CadUsu_TProCar.Delete;
                          end
                       else
                          begin
                            Dm1.CadUsu_TProCar.Edit;
                            Dm1.CadUsu_TProCarUSU_QTDPED.Value := Dm1.CadUsu_TProCarUSU_QTDPED.Value - Dm2.ClientAltCargaCorteEstofQTDMOV.Value;
                            Dm1.CadUsu_TProCarUSU_QTDABE.Value := Dm1.CadUsu_TProCarUSU_QTDPED.Value - Dm1.CadUsu_TProCarUSU_QTDPRO.Value;
                            Dm1.CadUsu_TProCar.Post;
                          end;


                     end;

               end;
             if Dm2.ClientAltCargaCorteEstofSEQOBS.Value > 0 then
                begin
                  Dm1.cmdAtualizaCarProObs.Prepared;
                  Dm1.cmdAtualizaCarProObs.Parameters.ParamByName('NUMANE').Value := Dm2.ClientAltCargaCorteEstofNUMANE.Value;
                  Dm1.cmdAtualizaCarProObs.Parameters.ParamByName('SEQOBS').Value := Dm2.ClientAltCargaCorteEstofSEQOBS.Value;
                  Dm1.cmdAtualizaCarProObs.Execute;
                end;

            Dm2.ClientAltCargaCorteEstof.Next;
          end;

          //valida a situaçao da carga em produçao
          Dm1.CadUsu_TCarPro2.Close;
          Dm1.CadUsu_TCarPro2.Parameters.ParamByName('NUMANE').Value := edtNumAne.AsInteger;
          Dm1.CadUsu_TCarPro2.Open;
          if not Dm1.CadUsu_TCarPro2.IsEmpty then
             begin
                Dm1.CadUsu_TCarPro2.Edit;

                Dm2.ConsGeral.Close;
                Dm2.ConsGeral.SQL.Clear;
                Dm2.ConsGeral.SQL.Add('SELECT * FROM USU_TCORCAR WHERE USU_NUMANE = :NUMANE AND');
                Dm2.ConsGeral.SQL.Add('USU_QTDABE > 0');
                Dm2.ConsGeral.Parameters.ParamByName('NUMANE').Value := edtNumAne.AsInteger;
                Dm2.ConsGeral.Open;
                if Dm2.ConsGeral.IsEmpty then
                   begin
                      Dm1.CadUsu_TCarPro2USU_CARPRO.Value := 'S';
                      Dm1.CadUsu_TCarPro2USU_ITESEL.Value := 'N';
                   end
                else
                   begin
                      Dm1.CadUsu_TCarPro2USU_CARPRO.Value := 'N';
                   end;

                Dm1.CadUsu_TCarPro2.Post;
             end;

          Close;
end;

procedure TFAltProdCargaCorteEstof.btnConfirmarKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAltProdCargaCorteEstof.ControlaEventosIdle(Sender: TObject;
  var Done: Boolean);
begin
  rbAdicionar.Visible := not (vaStatuClient in [dsInsert,dsEdit]);
  rbExcluir.Visible := not (vaStatuClient in [dsInsert,dsEdit]);
  btnConfirmar.Visible := not (vaStatuClient in [dsInsert,dsEdit]);
  img1.Visible := not (vaStatuClient in [dsInsert,dsEdit]);
  img2.Visible := not (vaStatuClient in [dsInsert,dsEdit]);
//  FAltProdCargaCorteEstof.KeyPreview := not (vaStatuClient in [dsInsert,dsEdit]);
end;

procedure TFAltProdCargaCorteEstof.dbg1ColExit(Sender: TObject);
begin
if vaStatuClient in [dsInsert,dsEdit] then
   begin
      if dbg1.SelectedIndex = 1 then
         begin
            if Trim(dbg1.SelectedField.AsString) <> '' then
               begin
                 ValidaProduto.Close;
                 ValidaProduto.Parameters.ParamByName('CODEMP').Value := 1;
                 ValidaProduto.Parameters.ParamByName('CODPRO').Value := dbg1.SelectedField.AsString;
                 ValidaProduto.Open;
                 if not ValidaProduto.IsEmpty then
                    begin
                      Dm2.ClientAltCargaCorteEstofDESPRO.Value := ValidaProdutoDESPRO.Value;
                    end
                 else
                    begin
                      Dm2.ClientAltCargaCorteEstofDESPRO.Value := '';
                    end;
               end
            else
               begin
                  Dm2.ClientAltCargaCorteEstofDESPRO.Value := '';
               end;
         end;


   end;
end;

procedure TFAltProdCargaCorteEstof.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.FieldName = 'ImgTipMov' then
    begin
        dbg1.Canvas.FillRect(Rect);
        // Desenha o Quadrado
      //  ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,0);
        if Dm2.ClientAltCargaCorteEstofTIPMOV.Value = 'A' then
           begin
            ImageList1.Draw(dbg1.Canvas,Rect.Left+5,Rect.Top+1,8);
           end
        else
        if Dm2.ClientAltCargaCorteEstofTIPMOV.Value = 'E' then
           begin
            ImageList1.Draw(dbg1.Canvas,Rect.Left+5,Rect.Top+1,7);
           end;
    end;
end;

procedure TFAltProdCargaCorteEstof.dbg1EditButtonClick(Sender: TObject);
begin
if vaStatuClient in [dsInsert,dsEdit] then
   begin
      if dbg1.SelectedIndex = 1 then
         begin
            FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
            FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,e075pro.codfam,e075pro.codori,E075PRO.CODAGP';
            FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
            FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where codori = 01 AND E075PRO.CODAGP = ''ESTOF''';
            FConsGeralNfEnt.vbWhere := true;
            FConsGeralNfEnt.vaCampo := 'CodPro';
            FConsGeralNfEnt.vnColuna := 1;
            FConsGeralNfEnt.vaTela := 'FAltProdCargaCorteEstof';
            FConsGeralNfEnt.ShowModal;
            FreeAndNil(FConsGeralNfEnt);
         end;
   end;
end;

procedure TFAltProdCargaCorteEstof.dbg1Enter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFAltProdCargaCorteEstof.dbg1Exit(Sender: TObject);
begin
KeyPreview := True;
end;

procedure TFAltProdCargaCorteEstof.dbg1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = vk_Return Then
    dbg1.SelectedIndex := dbg1.SelectedIndex + 1;
end;

procedure TFAltProdCargaCorteEstof.dbg1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (vaStatuClient in [dsInsert,dsEdit]) then
     begin
       if key = '+' then
          begin
            rbAdicionar.Checked := True;
          end
       else
       if Key = '-' then
          begin
            rbExcluir.Checked := True;
          end;
     end;

if Key in ['+','-'] then
   begin
     Key := #0;
   end;
end;

procedure TFAltProdCargaCorteEstof.dsClientAltCargaCorteEstofStateChange(
  Sender: TObject);
begin
  vaStatuClient := Dm2.ClientAltCargaCorteEstof.State;
end;

procedure TFAltProdCargaCorteEstof.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//FAltProdCargaCorteEstof.KeyPreview := True;
end;

procedure TFAltProdCargaCorteEstof.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   if vaStatuClient in [dsInsert,dsEdit] then
      begin
        Dm2.ClientAltCargaCorteEstof.Cancel;
      end;

   Dm2.ClientAltCargaCorteEstof.First;
     while not Dm2.ClientAltCargaCorteEstof.Eof do
        begin
          Dm2.ClientAltCargaCorteEstof.Delete;
        end;
     Dm2.ClientAltCargaCorteEstof.Close;
end;

procedure TFAltProdCargaCorteEstof.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;

if Key = '+' then
   begin
     rbAdicionar.Checked := True;
   end
else
if Key = '-' then
   begin
     rbExcluir.Checked := True;
   end;
end;

procedure TFAltProdCargaCorteEstof.img1Click(Sender: TObject);
begin
if rbAdicionar.Checked = false then
   rbAdicionar.Checked := True;
end;

procedure TFAltProdCargaCorteEstof.img2Click(Sender: TObject);
begin
if rbExcluir.Checked = false then
   rbExcluir.Checked := True;
end;

end.
