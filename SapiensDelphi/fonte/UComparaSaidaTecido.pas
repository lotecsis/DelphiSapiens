unit UComparaSaidaTecido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask,
  rxToolEdit, DB, ADODB, rxCurrEdit, DBClient, Provider;

type
  TFComparaSaidaTecido = class(TForm)
    PaginaControle: TPageControl;
    TbConsulta: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    EdDatFim: TDateEdit;
    EdDatIni: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel4: TPanel;
    BMostrar: TBitBtn;
    ConsE075Der: TADOQuery;
    ConsE075DerCODEMP: TIntegerField;
    ConsE075DerCODPRO: TStringField;
    ConsE075DerCODDER: TStringField;
    ConsE075DerDESDER: TStringField;
    ConsE075DerDESCPL: TStringField;
    ConsE075DerCODBAR: TBCDField;
    ConsE075DerCODAGR: TIntegerField;
    ConsE075DerCODAGT: TStringField;
    ConsE075DerSEQCMD: TIntegerField;
    ConsE075DerDATVAL: TDateTimeField;
    ConsE075DerDIAVLT: TIntegerField;
    ConsE075DerTIPCN2: TStringField;
    ConsE075DerVLRCN2: TFMTBCDField;
    ConsE075DerTIPCN3: TStringField;
    ConsE075DerVLRCN3: TFMTBCDField;
    ConsE075DerPRECUS: TFMTBCDField;
    ConsE075DerDATCUS: TDateTimeField;
    ConsE075DerPREMED: TFMTBCDField;
    ConsE075DerDATMED: TDateTimeField;
    ConsE075DerPREUEN: TFMTBCDField;
    ConsE075DerDATUEN: TDateTimeField;
    ConsE075DerPREREP: TFMTBCDField;
    ConsE075DerDATREP: TDateTimeField;
    ConsE075DerDIAREP: TIntegerField;
    ConsE075DerPESBRU: TFMTBCDField;
    ConsE075DerPESLIQ: TFMTBCDField;
    ConsE075DerTOLPES: TBCDField;
    ConsE075DerVOLDER: TFMTBCDField;
    ConsE075DerPERPRD: TBCDField;
    ConsE075DerQTDIQL: TFMTBCDField;
    ConsE075DerQTDCIC: TFMTBCDField;
    ConsE075DerQTDPRD: TFMTBCDField;
    ConsE075DerPREUIS: TFMTBCDField;
    ConsE075DerPERICS: TBCDField;
    ConsE075DerCODEMB: TIntegerField;
    ConsE075DerQTDEMB: TIntegerField;
    ConsE075DerCODROT: TStringField;
    ConsE075DerCODROY: TIntegerField;
    ConsE075DerBXAORP: TStringField;
    ConsE075DerSERCCL: TStringField;
    ConsE075DerNUMCCL: TStringField;
    ConsE075DerCURABC: TStringField;
    ConsE075DerCURAB2: TStringField;
    ConsE075DerCURAB3: TStringField;
    ConsE075DerCURAB4: TStringField;
    ConsE075DerCODREG: TIntegerField;
    ConsE075DerSITDER: TStringField;
    ConsE075DerCODMOT: TIntegerField;
    ConsE075DerCTRLOT: TStringField;
    ConsE075DerCTRSEP: TStringField;
    ConsE075DerCTRVLD: TStringField;
    ConsE075DerDEPPAD: TStringField;
    ConsE075DerDEPPAA: TStringField;
    ConsE075DerINDPCE: TStringField;
    ConsE075DerINDPCR: TStringField;
    ConsE075DerINDKAN: TStringField;
    ConsE075DerCODREF: TStringField;
    ConsE075DerCODPIN: TStringField;
    ConsE075DerNOTFOR: TBCDField;
    ConsE075DerORICUS: TStringField;
    ConsE075DerINFCUS: TStringField;
    ConsE075DerHORCUS: TIntegerField;
    ConsE075DerUSUGER: TBCDField;
    ConsE075DerHORGER: TIntegerField;
    ConsE075DerDATGER: TDateTimeField;
    ConsE075DerUSUALT: TBCDField;
    ConsE075DerHORALT: TIntegerField;
    ConsE075DerDATALT: TDateTimeField;
    ConsE075DerCODAGE: TStringField;
    ConsE075DerCODBA2: TStringField;
    ConsE075DerINDEXP: TIntegerField;
    ConsE075DerDATPAL: TDateTimeField;
    ConsE075DerHORPAL: TIntegerField;
    ConsE075DerEXPWMS: TIntegerField;
    ConsE075DerSERMVP: TStringField;
    ConsE075DerAPRDFT: TStringField;
    ConsE075DerCODAEM: TStringField;
    ConsE075DerCODPDV: TIntegerField;
    ConsE075DerINDGEN: TStringField;
    ConsE075DerQTDMLT: TFMTBCDField;
    ConsE075DerQTDMIN: TFMTBCDField;
    ConsE075DerQTDMAX: TFMTBCDField;
    ConsE075DerCODEND: TStringField;
    ConsE075DerROTANX: TIntegerField;
    ConsE075DerNUMANX: TBCDField;
    ConsE075DerINDPCQ: TStringField;
    ConsE075DerVLRCID: TBCDField;
    ConsE075DerUSU_CORUNI: TBCDField;
    ConsE075DerUSU_CMP1BB: TBCDField;
    ConsE075DerUSU_CMP1AE: TBCDField;
    ConsE075DerUSU_CMP2BB: TBCDField;
    ConsE075DerUSU_CMP2EN: TBCDField;
    ConsE075DerUSU_MEDESP: TStringField;
    ConsE075DerUSU_FATOR: TBCDField;
    ConsE075DerQTDCUS: TFMTBCDField;
    CadUsu_TComTec: TADOQuery;
    CadUsu_TComTecUSU_CODPRO: TStringField;
    CadUsu_TComTecUSU_QTDSAI: TBCDField;
    CadUsu_TComTecUSU_QTDBAX: TBCDField;
    ConsUsu_TCorCar: TADOQuery;
    ConsUsu_TCorCarUSU_NUMANE: TIntegerField;
    ConsUsu_TCorCarUSU_CODPRO: TStringField;
    ConsUsu_TCorCarUSU_CODDER: TStringField;
    ConsUsu_TCorCarUSU_CODCOR1: TStringField;
    ConsUsu_TCorCarUSU_QTDPED: TIntegerField;
    ConsUsu_TCorCarUSU_QTDPRO: TIntegerField;
    ConsUsu_TCorCarUSU_QTDABE: TIntegerField;
    ConsUsu_TCorCarUSU_SALABE1: TBCDField;
    ConsUsu_TCorCarUSU_CODCOR2: TStringField;
    ConsUsu_TCorCarUSU_SALABE2: TBCDField;
    ConsUsu_TCorCarUSU_TIPCOM: TIntegerField;
    ConsUsu_TCorCarUSU_CORCOR: TStringField;
    ConsUsu_TCorCarUSU_SELITE: TStringField;
    ConsUsu_TCorCarUSU_QTDCOR1: TBCDField;
    ConsUsu_TCorCarUSU_QTDCOR2: TBCDField;
    Label3: TLabel;
    ConsUsu_TMovBax: TADOQuery;
    ConsUsu_TMovBaxUSU_SEQMOV: TIntegerField;
    ConsUsu_TMovBaxUSU_NUMANE: TIntegerField;
    ConsUsu_TMovBaxUSU_CODPRO: TStringField;
    ConsUsu_TMovBaxUSU_CODDER: TStringField;
    ConsUsu_TMovBaxUSU_CODCOR1: TStringField;
    ConsUsu_TMovBaxUSU_CODCOR2: TStringField;
    ConsUsu_TMovBaxUSU_QTDMOV: TIntegerField;
    ConsUsu_TMovBaxUSU_QTDMT1: TBCDField;
    ConsUsu_TMovBaxUSU_QTDMT2: TBCDField;
    ConsUsu_TMovBaxUSU_DATMOV: TDateTimeField;
    ConsUsu_TMovBaxUSU_HORMOV: TIntegerField;
    ConsUsu_TMovBaxUSU_USUMOV: TIntegerField;
    ConsUsu_TMovBaxUSU_TIPCOM: TIntegerField;
    ConsUsu_TMovBaxUSU_SITMOV: TStringField;
    ConsUsu_TDifTec: TADOQuery;
    ConsUsu_TDifTecUSU_CODEMP: TIntegerField;
    ConsUsu_TDifTecUSU_CODFIL: TIntegerField;
    ConsUsu_TDifTecUSU_NUMANE: TIntegerField;
    ConsUsu_TDifTecUSU_SEQMOV: TIntegerField;
    ConsUsu_TDifTecUSU_CODPRO: TStringField;
    ConsUsu_TDifTecUSU_QTDMOV: TBCDField;
    ConsUsu_TDifTecUSU_DATMOV: TDateTimeField;
    ConsUsu_TDifTecUSU_SEQLOG: TIntegerField;
    ConsUsu_TDifTecUSU_CODPROLOG: TStringField;
    ConsUsu_TComTec: TADOQuery;
    ConsUsu_TComTecUSU_CODPRO: TStringField;
    ConsUsu_TComTecUSU_QTDSAI: TBCDField;
    ConsUsu_TComTecUSU_QTDBAX: TBCDField;
    DsConsUsu_TComTec: TDataSource;
    ConsUsu_TComTecvnDiferenca: TFloatField;
    EdTotDif: TCurrencyEdit;
    Label4: TLabel;
    MeNumAne: TMemo;
    BCarregar: TBitBtn;
    ConsUsu_TCarPro: TADOQuery;
    ConsUsu_TCarProUSU_NUMANE: TIntegerField;
    ConsUsu_TCarProUSU_DATIMP: TDateTimeField;
    ConsUsu_TCarProUSU_HORIMP: TIntegerField;
    ConsUsu_TCarProUSU_USUIMP: TIntegerField;
    ConsUsu_TCarProUSU_CARPRO: TStringField;
    ValidaCarPro: TADOQuery;
    ValidaCarProUSU_NUMANE: TIntegerField;
    ValidaCarProUSU_DATIMP: TDateTimeField;
    ValidaCarProUSU_HORIMP: TIntegerField;
    ValidaCarProUSU_USUIMP: TIntegerField;
    ValidaCarProUSU_CARPRO: TStringField;
    TempCarPro: TADOQuery;
    TempCarProUSU_NUMANE: TIntegerField;
    TempCarProUSU_DATIMP: TDateTimeField;
    TempCarProUSU_HORIMP: TIntegerField;
    TempCarProUSU_USUIMP: TIntegerField;
    TempCarProUSU_CARPRO: TStringField;
    ProviderTempCarPro: TDataSetProvider;
    ClientTempCarPro: TClientDataSet;
    ClientTempCarProUSU_NUMANE: TIntegerField;
    ClientTempCarProUSU_DATIMP: TDateTimeField;
    ClientTempCarProUSU_HORIMP: TIntegerField;
    ClientTempCarProUSU_USUIMP: TIntegerField;
    ClientTempCarProUSU_CARPRO: TStringField;
    LDsGeral: TLabel;
    procedure BMostrarClick(Sender: TObject);
    procedure ConsUsu_TComTecCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BCarregarClick(Sender: TObject);
    procedure MeNumAneExit(Sender: TObject);
    procedure MeNumAneKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FComparaSaidaTecido: TFComparaSaidaTecido;

implementation
uses UDm;

{$R *.dfm}

procedure TFComparaSaidaTecido.BCarregarClick(Sender: TObject);
var vaNumAne : string;
    T     : TReplaceFlags;
begin
if EdDatIni.Date = 0 then
   begin
      MessageDlg('Informe a Data Inicial',mtWarning,[mbOK],0);
      ActiveControl := EdDatIni;
   end
else if EdDatFim.Date = 0 then
        begin
          MessageDlg('Informe a Data Final',mtWarning,[mbOK],0);
          ActiveControl := EdDatFim;
        end
     else
       begin//1
          vaNumAne := '';
          ConsUsu_TCarPro.Close;
          ConsUsu_TCarPro.Parameters.ParamByName('datini').Value := EdDatIni.Date;
          ConsUsu_TCarPro.Parameters.ParamByName('datfim').Value := EdDatFim.Date;
          ConsUsu_TCarPro.Open;
          ConsUsu_TCarPro.First;
          while not ConsUsu_TCarPro.Eof do
            begin//2
              if ConsUsu_TCarPro.bof then
                begin
                  vaNumAne := IntToStr(ConsUsu_TCarProUSU_NUMANE.Value);
                end
              else
                begin
                  vaNumAne := vaNumAne + ','+IntToStr(ConsUsu_TCarProUSU_NUMANE.Value);
                end;
              ConsUsu_TCarPro.Next;
            end;//2
          MeNumAne.Text := vaNumAne;
          MeNumAneExit(Sender);

       end;//1
end;

procedure TFComparaSaidaTecido.BMostrarClick(Sender: TObject);
var vnNumAne : Integer;
    vnTotDif : Currency;
begin

if trim(MeNumAne.Text) = '' then
  begin
    MessageDlg('Informe o Numero da Carga',mtWarning,[mbOK],0);
    ActiveControl := MeNumAne;
  end
  else
  begin

  //apaga os registros antigos
  LDsGeral.Caption := 'Apagando registros antigos...';
  FComparaSaidaTecido.Refresh;
   ConsUsu_TComTec.Close;
   ConsUsu_TComTec.Open;
   ConsUsu_TComTec.First;
   while not ConsUsu_TComTec.Eof do
     begin
       ConsUsu_TComTec.Delete;
     end;

    //percorre as cargas informadas
    ClientTempCarPro.First;
    while not ClientTempCarPro.Eof do
     begin//100

    vnNumAne := ClientTempCarProUSU_NUMANE.Value;
    //consulta as cores dos produtos da carga
    LDsGeral.Caption := 'Consultado cores da carga...';
    FComparaSaidaTecido.Refresh;
    ConsUsu_TCorCar.Close;
    ConsUsu_TCorCar.Parameters.ParamByName('numane').Value := vnNumAne;
    ConsUsu_TCorCar.Open;
    while not ConsUsu_TCorCar.Eof do
       begin//1
       LDsGeral.Caption := 'Percorrendo as cores...';
       FComparaSaidaTecido.Refresh;
         //consulta o consumo de tecido do produto
         ConsE075Der.Close;
         ConsE075Der.Parameters.ParamByName('codemp').Value := 1;
         ConsE075Der.Parameters.ParamByName('codpro').Value :=  ConsUsu_TCorCarUSU_CODPRO.Value;
         ConsE075Der.Parameters.ParamByName('codder').Value :=  ConsUsu_TCorCarUSU_CODDER.Value;
         ConsE075Der.Open;

         if ConsUsu_TCorCarUSU_TIPCOM.Value = 1 then
            begin//2
              //consulta se ja existe o tecido na tabela de coparaçao
              CadUsu_TComTec.Close;
              CadUsu_TComTec.Parameters.ParamByName('codpro').Value := ConsUsu_TCorCarUSU_CODCOR1.Value;
              CadUsu_TComTec.Open;
              if CadUsu_TComTec.IsEmpty  then
                 begin//3
                    CadUsu_TComTec.Insert;
                    CadUsu_TComTecUSU_CODPRO.Value := ConsUsu_TCorCarUSU_CODCOR1.Value;
                    CadUsu_TComTecUSU_QTDSAI.Value := ConsUsu_TCorCarUSU_QTDPRO.Value * ConsE075DerUSU_CORUNI.Value;
                    CadUsu_TComTec.Post;
                 end//3
              else
                 begin//4
                    CadUsu_TComTec.Edit;
                    CadUsu_TComTecUSU_QTDSAI.Value := CadUsu_TComTecUSU_QTDSAI.Value + (ConsUsu_TCorCarUSU_QTDPRO.Value * ConsE075DerUSU_CORUNI.Value);
                    CadUsu_TComTec.Post;
                 end;//4
            end//2
         else
           if ConsUsu_TCorCarUSU_TIPCOM.Value = 2 then
              begin//5
                 //consulta se ja existe o tecido na tabela de comparaçao
                 //cor 001
                 CadUsu_TComTec.Close;
                 CadUsu_TComTec.Parameters.ParamByName('codpro').Value := ConsUsu_TCorCarUSU_CODCOR1.Value;
                 CadUsu_TComTec.Open;
                 if CadUsu_TComTec.IsEmpty  then
                    begin//6
                       CadUsu_TComTec.Insert;
                       CadUsu_TComTecUSU_CODPRO.Value := ConsUsu_TCorCarUSU_CODCOR1.Value;
                       CadUsu_TComTecUSU_QTDSAI.Value := ConsUsu_TCorCarUSU_QTDPRO.Value * ConsE075DerUSU_CMP1BB.Value;
                       CadUsu_TComTec.Post;
                    end//6
                 else
                    begin//7
                       CadUsu_TComTec.Edit;
                       CadUsu_TComTecUSU_QTDSAI.Value := CadUsu_TComTecUSU_QTDSAI.Value + (ConsUsu_TCorCarUSU_QTDPRO.Value * ConsE075DerUSU_CMP1BB.Value);
                       CadUsu_TComTec.Post;
                    end;//7

                 //cor 002
                 CadUsu_TComTec.Close;
                 CadUsu_TComTec.Parameters.ParamByName('codpro').Value := ConsUsu_TCorCarUSU_CODCOR2.Value;
                 CadUsu_TComTec.Open;
                 if CadUsu_TComTec.IsEmpty  then
                    begin//8
                       CadUsu_TComTec.Insert;
                       CadUsu_TComTecUSU_CODPRO.Value := ConsUsu_TCorCarUSU_CODCOR2.Value;
                       CadUsu_TComTecUSU_QTDSAI.Value := ConsUsu_TCorCarUSU_QTDPRO.Value * ConsE075DerUSU_CMP1AE.Value;
                       CadUsu_TComTec.Post;
                    end//8
                 else
                    begin//9
                       CadUsu_TComTec.Edit;
                       CadUsu_TComTecUSU_QTDSAI.Value := CadUsu_TComTecUSU_QTDSAI.Value + (ConsUsu_TCorCarUSU_QTDPRO.Value * ConsE075DerUSU_CMP1AE.Value);
                       CadUsu_TComTec.Post;
                    end;//9

              end//5
           else
              if ConsUsu_TCorCarUSU_TIPCOM.Value = 3 then
                 begin//10
                   //consulta se ja existe o tecido na tabela de comparaçao
                  //cor 001
                  CadUsu_TComTec.Close;
                  CadUsu_TComTec.Parameters.ParamByName('codpro').Value := ConsUsu_TCorCarUSU_CODCOR1.Value;
                  CadUsu_TComTec.Open;
                  if CadUsu_TComTec.IsEmpty  then
                    begin//11
                       CadUsu_TComTec.Insert;
                       CadUsu_TComTecUSU_CODPRO.Value := ConsUsu_TCorCarUSU_CODCOR1.Value;
                       CadUsu_TComTecUSU_QTDSAI.Value := ConsUsu_TCorCarUSU_QTDPRO.Value * ConsE075DerUSU_CMP2BB.Value;
                       CadUsu_TComTec.Post;
                    end//11
                  else
                    begin//12
                       CadUsu_TComTec.Edit;
                       CadUsu_TComTecUSU_QTDSAI.Value := CadUsu_TComTecUSU_QTDSAI.Value + (ConsUsu_TCorCarUSU_QTDPRO.Value * ConsE075DerUSU_CMP2BB.Value);
                       CadUsu_TComTec.Post;
                    end;//12

                  //cor 002
                  CadUsu_TComTec.Close;
                  CadUsu_TComTec.Parameters.ParamByName('codpro').Value := ConsUsu_TCorCarUSU_CODCOR2.Value;
                  CadUsu_TComTec.Open;
                  if CadUsu_TComTec.IsEmpty  then
                    begin//13
                       CadUsu_TComTec.Insert;
                       CadUsu_TComTecUSU_CODPRO.Value := ConsUsu_TCorCarUSU_CODCOR2.Value;
                       CadUsu_TComTecUSU_QTDSAI.Value := ConsUsu_TCorCarUSU_QTDPRO.Value * ConsE075DerUSU_CMP2EN.Value;
                       CadUsu_TComTec.Post;
                    end//13
                  else
                    begin//14
                       CadUsu_TComTec.Edit;
                       CadUsu_TComTecUSU_QTDSAI.Value := CadUsu_TComTecUSU_QTDSAI.Value + (ConsUsu_TCorCarUSU_QTDPRO.Value * ConsE075DerUSU_CMP2EN.Value);
                       CadUsu_TComTec.Post;
                    end;//14
                 end;//10
         ConsUsu_TCorCar.Next;
       end;//1  termina aqui a busca pelos itens da carga

        //consulta os movimentos de baixa de tecido da carga

        LDsGeral.Caption := 'Consultando movimentos de baixa...';
        FComparaSaidaTecido.Refresh;
        ConsUsu_TMovBax.Close;
        ConsUsu_TMovBax.Parameters.ParamByName('numane').Value := vnNumAne;
        ConsUsu_TMovBax.Open;
        while not ConsUsu_TMovBax.Eof do
           begin//15
           LDsGeral.Caption := 'Percorrendo movimentos...';
           FComparaSaidaTecido.Refresh;
              if ConsUsu_TMovBaxUSU_TIPCOM.Value = 1 then
                 begin//16
                    CadUsu_TComTec.Close;
                    CadUsu_TComTec.Parameters.ParamByName('codpro').Value := ConsUsu_TMovBaxUSU_CODCOR1.Value;
                    CadUsu_TComTec.Open;
                    if CadUsu_TComTec.IsEmpty  then
                       begin//17
                          CadUsu_TComTec.Insert;
                          CadUsu_TComTecUSU_CODPRO.Value := ConsUsu_TMovBaxUSU_CODCOR1.Value;
                          CadUsu_TComTecUSU_QTDBAX.Value := ConsUsu_TMovBaxUSU_QTDMT1.Value;
                          CadUsu_TComTec.Post;
                       end//17
                    else
                       begin//18
                          CadUsu_TComTec.Edit;
                          CadUsu_TComTecUSU_QTDBAX.Value := CadUsu_TComTecUSU_QTDBAX.Value + ConsUsu_TMovBaxUSU_QTDMT1.Value;
                          CadUsu_TComTec.Post;
                       end;//18
                 end//16
              else
                if ConsUsu_TMovBaxUSU_TIPCOM.Value = 2 then
                   begin//19
                        //cor 001
                        CadUsu_TComTec.Close;
                        CadUsu_TComTec.Parameters.ParamByName('codpro').Value := ConsUsu_TMovBaxUSU_CODCOR1.Value;
                        CadUsu_TComTec.Open;
                        if CadUsu_TComTec.IsEmpty  then
                           begin//20
                             CadUsu_TComTec.Insert;
                             CadUsu_TComTecUSU_CODPRO.Value := ConsUsu_TMovBaxUSU_CODCOR1.Value;
                             CadUsu_TComTecUSU_QTDBAX.Value := ConsUsu_TMovBaxUSU_QTDMT1.Value;
                             CadUsu_TComTec.Post;
                           end//20
                        else
                          begin//21
                             CadUsu_TComTec.Edit;
                             CadUsu_TComTecUSU_QTDBAX.Value := CadUsu_TComTecUSU_QTDBAX.Value + ConsUsu_TMovBaxUSU_QTDMT1.Value;
                             CadUsu_TComTec.Post;
                          end;//21
                        //cor 002
                        CadUsu_TComTec.Close;
                        CadUsu_TComTec.Parameters.ParamByName('codpro').Value := ConsUsu_TMovBaxUSU_CODCOR2.Value;
                        CadUsu_TComTec.Open;
                        if CadUsu_TComTec.IsEmpty  then
                           begin//22
                             CadUsu_TComTec.Insert;
                             CadUsu_TComTecUSU_CODPRO.Value := ConsUsu_TMovBaxUSU_CODCOR2.Value;
                             CadUsu_TComTecUSU_QTDBAX.Value := ConsUsu_TMovBaxUSU_QTDMT2.Value;
                             CadUsu_TComTec.Post;
                           end//22
                        else
                          begin//23
                             CadUsu_TComTec.Edit;
                             CadUsu_TComTecUSU_QTDBAX.Value := CadUsu_TComTecUSU_QTDBAX.Value + ConsUsu_TMovBaxUSU_QTDMT2.Value;
                             CadUsu_TComTec.Post;
                          end;//23
                   end;//19
              ConsUsu_TMovBax.Next;
           end;//15  //termina aqui a consulta dos movimentos de baixa de tecido

           //consulta as diferencas lançadas
           ConsUsu_TDifTec.Close;
           ConsUsu_TDifTec.Parameters.ParamByName('numane').Value := vnNumAne;
           ConsUsu_TDifTec.Open;
           while not ConsUsu_TDifTec.Eof do
              begin//24
              LDsGeral.Caption := 'Percorrendo diferenças...';
              FComparaSaidaTecido.Refresh;
                  //consulta se ja existe o tecido na tabela de coparaçao
                  CadUsu_TComTec.Close;
                  CadUsu_TComTec.Parameters.ParamByName('codpro').Value := ConsUsu_TDifTecUSU_CODPRO.Value;
                  CadUsu_TComTec.Open;
                  if CadUsu_TComTec.IsEmpty  then
                     begin//25
                       CadUsu_TComTec.Insert;
                       CadUsu_TComTecUSU_CODPRO.Value := ConsUsu_TDifTecUSU_CODPRO.Value;
                       CadUsu_TComTecUSU_QTDBAX.Value := ConsUsu_TDifTecUSU_QTDMOV.Value;
                       CadUsu_TComTec.Post;
                     end//25
                  else
                     begin//26
                       CadUsu_TComTec.Edit;
                       CadUsu_TComTecUSU_QTDBAX.Value := CadUsu_TComTecUSU_QTDBAX.Value + ConsUsu_TDifTecUSU_QTDMOV.Value;
                       CadUsu_TComTec.Post;
                     end;//26

                ConsUsu_TDifTec.Next;
              end;//24

           ClientTempCarPro.Next;
     end;//100

              //atualiza a consulta das diferenças
              ConsUsu_TComTec.Close;
              ConsUsu_TComTec.Open;

              vnTotDif := 0;
              ConsUsu_TComTec.First;
              while not ConsUsu_TComTec.Eof do
                 begin
                    vnTotDif := vnTotDif + ConsUsu_TComTecvnDiferenca.Value;

                    ConsUsu_TComTec.Next;
                 end;
              EdTotDif.Value := vnTotDif;

              LDsGeral.Caption := 'Finalizando...';
              FComparaSaidaTecido.Refresh;
              Sleep(1000);
              LDsGeral.Caption := '';
              FComparaSaidaTecido.Refresh;

  end;
end;

procedure TFComparaSaidaTecido.ConsUsu_TComTecCalcFields(DataSet: TDataSet);
begin
    ConsUsu_TComTecvnDiferenca.Value := ConsUsu_TComTecUSU_QTDBAX.Value - ConsUsu_TComTecUSU_QTDSAI.Value;
end;

procedure TFComparaSaidaTecido.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if ConsUsu_TComTecvnDiferenca.Value > 0 then
      begin
        DBGrid1.Canvas.Font.Color := clRed;
        DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[Datacol].Field,state);

      end;
end;

procedure TFComparaSaidaTecido.MeNumAneExit(Sender: TObject);
var vaTexto : string;
    T     : TReplaceFlags;
    vnCont : Integer;
    vaNumAne,vaAneErr : string;
begin
  TempCarPro.Close;
  ClientTempCarPro.Close;
  TempCarPro.Open;
  ClientTempCarPro.Open;
  ClientTempCarPro.First;
  while not ClientTempCarPro.Eof do
    begin
       ClientTempCarPro.Delete;
    end;


 //valida todas as cargas informadas
  vaTexto := StringReplace(trim(MeNumAne.Text), ' ', '', [rfReplaceAll,rfIgnoreCase]);
  vaTexto := StringReplace(trim(vaTexto), ',,', ',', [rfReplaceAll,rfIgnoreCase]);
  vaNumAne := '';
  vaAneErr := '';
  vnCont := 1;
  while vnCont <= Length(vaTexto) do
     begin//1
       if vaTexto[vnCont] = ',' then
          begin//2
           ValidaCarPro.Close;
           ValidaCarPro.Parameters.ParamByName('numane').Value := StrToInt(vaNumAne);
           ValidaCarPro.Open;
           if ValidaCarPro.IsEmpty then
              begin//4
               if vaAneErr = '' then
                  vaAneErr := vaNumAne
               else
                  vaAneErr := vaAneErr + ','+vaNumAne;
                  vnCont := vnCont + 1;
                  vaNumAne := '';
              end//4
           else
              begin//5
                //inseri na tabela virtual
                ClientTempCarPro.Insert;
                ClientTempCarProUSU_NUMANE.Value := ValidaCarProUSU_NUMANE.Value;
                ClientTempCarPro.Post;

                vnCont := vnCont + 1;
                vaNumAne := '';
              end;//5
          end//2
       else
          begin//3
            vaNumAne := vaNumAne + vaTexto[vnCont];
            vnCont := vnCont + 1;
          end;//3

          if (vnCont = Length(vaTexto)) and (vaTexto[vnCont] <> ',') then
             begin
               vaTexto := vaTexto + ',';
               MeNumAne.Text := vaTexto;
             end;
     end;//1

     if vaAneErr <> '' then
        begin
           MessageDlg('Carga(s) nº: '+vaAneErr+', não encontrada(s).',mtWarning,[mbOK],0);

           ClientTempCarPro.First;
           while not ClientTempCarPro.Eof do
             begin
               ClientTempCarPro.Delete;
             end;

           ActiveControl := MeNumAne;
        end;
end;

procedure TFComparaSaidaTecido.MeNumAneKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
    key:=#0;
  end;
end;

end.
