unit UMovimentaEstoqueCarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB, DBClient,
  Provider, ImgList, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP;

type
  TFMovimentaEstoqueCarga = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    EdNumAne: TEdit;
    DBGrid1: TDBGrid;
    BProcessar: TBitBtn;
    BMostrar: TBitBtn;
    ConsE135Pes: TADOQuery;
    DsClientE135Pes: TDataSource;
    Cliente135Pes: TClientDataSet;
    Cliente135PesCODEMP: TIntegerField;
    Cliente135PesCODFIL: TIntegerField;
    Cliente135PesNUMANE: TIntegerField;
    Cliente135PesNUMPFA: TIntegerField;
    Cliente135PesSEQPES: TIntegerField;
    Cliente135PesFILPED: TIntegerField;
    Cliente135PesCODPRO: TStringField;
    Cliente135PesCODDER: TStringField;
    Cliente135PesCODDEP: TStringField;
    Cliente135PesCODFAM: TStringField;
    Cliente135PesQTDPED: TIntegerField;
    Cliente135PesUSU_PROMOV: TStringField;
    Cliente135PesQTDEST: TIntegerField;
    Cliente135PesQTDMOV: TIntegerField;
    ImageList1: TImageList;
    SapSid: TIdHTTP;
    CadE210Mvp: TADOQuery;
    CadE210MvpCODEMP: TIntegerField;
    CadE210MvpCODPRO: TStringField;
    CadE210MvpCODDER: TStringField;
    CadE210MvpCODDEP: TStringField;
    CadE210MvpDATMOV: TDateTimeField;
    CadE210MvpSEQMOV: TIntegerField;
    CadE210MvpNUMDOC: TIntegerField;
    CadE135Pes: TADOQuery;
    CadE135PesCODEMP: TIntegerField;
    CadE135PesCODFIL: TIntegerField;
    CadE135PesNUMANE: TBCDField;
    CadE135PesNUMPFA: TIntegerField;
    CadE135PesSEQPES: TIntegerField;
    CadE135PesFILPED: TIntegerField;
    CadE135PesNUMPED: TIntegerField;
    CadE135PesSEQIPD: TIntegerField;
    CadE135PesSEQISP: TIntegerField;
    CadE135PesTNSIPD: TStringField;
    CadE135PesTNSISP: TStringField;
    CadE135PesFILNFV: TIntegerField;
    CadE135PesSNFNFV: TStringField;
    CadE135PesNUMNFV: TIntegerField;
    CadE135PesSEQIPV: TIntegerField;
    CadE135PesSEQISV: TIntegerField;
    CadE135PesTNSPRO: TStringField;
    CadE135PesTNSSER: TStringField;
    CadE135PesCODPRO: TStringField;
    CadE135PesCODDER: TStringField;
    CadE135PesCODSER: TStringField;
    CadE135PesPROSER: TStringField;
    CadE135PesCPLPES: TStringField;
    CadE135PesCODFAM: TStringField;
    CadE135PesCODTRI: TStringField;
    CadE135PesCODCLF: TStringField;
    CadE135PesCODSTR: TStringField;
    CadE135PesCODTIC: TStringField;
    CadE135PesCODTRD: TStringField;
    CadE135PesCODTST: TStringField;
    CadE135PesCODSTP: TStringField;
    CadE135PesCODSTC: TStringField;
    CadE135PesCODDEP: TStringField;
    CadE135PesCODLOT: TStringField;
    CadE135PesQTDEST: TFMTBCDField;
    CadE135PesQTDPED: TFMTBCDField;
    CadE135PesQTDPPF: TFMTBCDField;
    CadE135PesUNIMED: TStringField;
    CadE135PesSALCAN: TStringField;
    CadE135PesPESBRU: TFMTBCDField;
    CadE135PesPESLIQ: TFMTBCDField;
    CadE135PesVOLPES: TBCDField;
    CadE135PesCODTPR: TStringField;
    CadE135PesPREUNI: TFMTBCDField;
    CadE135PesPREBAS: TFMTBCDField;
    CadE135PesPEROFE: TBCDField;
    CadE135PesPERACR: TBCDField;
    CadE135PesPERDSC: TBCDField;
    CadE135PesPERIPI: TBCDField;
    CadE135PesPERICM: TBCDField;
    CadE135PesPERFUN: TBCDField;
    CadE135PesPERISS: TBCDField;
    CadE135PesPERIRF: TBCDField;
    CadE135PesPERINS: TBCDField;
    CadE135PesPERCOM: TBCDField;
    CadE135PesNUMPRJ: TIntegerField;
    CadE135PesCODFPJ: TIntegerField;
    CadE135PesCTAFIN: TIntegerField;
    CadE135PesCTARED: TIntegerField;
    CadE135PesCODCCU: TStringField;
    CadE135PesVLRFRE: TBCDField;
    CadE135PesVLRSEG: TBCDField;
    CadE135PesVLREMB: TBCDField;
    CadE135PesVLRENC: TBCDField;
    CadE135PesVLROUT: TBCDField;
    CadE135PesVLRDAR: TBCDField;
    CadE135PesVLRFRD: TBCDField;
    CadE135PesVLROUD: TBCDField;
    CadE135PesVLRPES: TBCDField;
    CadE135PesVLRFAT: TFMTBCDField;
    CadE135PesDATMOV: TDateTimeField;
    CadE135PesSEQMOV: TIntegerField;
    CadE135PesFILNFC: TIntegerField;
    CadE135PesFORNFC: TIntegerField;
    CadE135PesNUMNFC: TIntegerField;
    CadE135PesSNFNFC: TStringField;
    CadE135PesSEQIPC: TIntegerField;
    CadE135PesSEQISC: TIntegerField;
    CadE135PesUSUPRP: TBCDField;
    CadE135PesDATPRP: TDateTimeField;
    CadE135PesHORPRP: TIntegerField;
    CadE135PesSITPES: TIntegerField;
    CadE135PesOBSPES: TStringField;
    CadE135PesUSUAPR: TBCDField;
    CadE135PesDATAPR: TDateTimeField;
    CadE135PesHORAPR: TIntegerField;
    CadE135PesPREFIX: TStringField;
    CadE135PesUNIVEN: TStringField;
    CadE135PesQTDVEN: TFMTBCDField;
    CadE135PesPREVEN: TFMTBCDField;
    CadE135PesCODMCP: TStringField;
    CadE135PesDATMFP: TDateTimeField;
    CadE135PesCOTMFP: TFMTBCDField;
    CadE135PesCODMOE: TStringField;
    CadE135PesDATMOE: TDateTimeField;
    CadE135PesCOTMOE: TFMTBCDField;
    CadE135PesFECMOE: TStringField;
    CadE135PesPREBRU: TFMTBCDField;
    CadE135PesVLRDSC: TBCDField;
    CadE135PesCMPKIT: TStringField;
    CadE135PesSEQITC: TIntegerField;
    CadE135PesVLRBCT: TBCDField;
    CadE135PesVLRCRT: TBCDField;
    CadE135PesPERCRT: TBCDField;
    CadE135PesVLRBPT: TBCDField;
    CadE135PesVLRPIT: TBCDField;
    CadE135PesPERPIT: TBCDField;
    CadE135PesVLRBCL: TBCDField;
    CadE135PesVLRCSL: TBCDField;
    CadE135PesPERCSL: TBCDField;
    CadE135PesVLRBOR: TBCDField;
    CadE135PesVLROUR: TBCDField;
    CadE135PesPEROUR: TBCDField;
    CadE135PesCODMAR: TStringField;
    CadE135PesPERDS1: TBCDField;
    CadE135PesPERDS2: TBCDField;
    CadE135PesPERDS3: TBCDField;
    CadE135PesPERDS4: TBCDField;
    CadE135PesVLRFIN: TBCDField;
    CadE135PesPERPIF: TBCDField;
    CadE135PesPERCFF: TBCDField;
    CadE135PesPESCNF: TIntegerField;
    CadE135PesPERDS5: TBCDField;
    CadE135PesUSU_PROMOV: TStringField;
    ConsE135PesQTDPED: TFMTBCDField;
    ConsE135PesCODPRO: TStringField;
    ConsE135PesCODDER: TStringField;
    ConsE135PesCODDEP: TStringField;
    ConsE135PesNUMANE: TBCDField;
    AtualizaProMov: TADOCommand;
    ConsE135PesCODFIL: TIntegerField;
    procedure BMostrarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BProcessarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMovimentaEstoqueCarga: TFMovimentaEstoqueCarga;

implementation

uses UDmOra, UDm2;

{$R *.dfm}

procedure TFMovimentaEstoqueCarga.BMostrarClick(Sender: TObject);
begin
if trim(EdNumAne.Text) <> '' then
   begin//1

        Cliente135Pes.First;
        while not Cliente135Pes.Eof do
          begin

            Cliente135Pes.Delete;
          end;

        Cliente135Pes.Open;
        ConsE135Pes.Close;
        ConsE135Pes.Parameters.ParamByName('numane').Value := StrToInt(trim(EdNumAne.Text));
        ConsE135Pes.Open;
        ConsE135Pes.First;
        while not ConsE135Pes.Eof do
           begin//2
              Cliente135Pes.Insert;

              Cliente135PesNUMANE.Value := ConsE135PesNUMANE.AsInteger;
              Cliente135PesCODFIL.Value := ConsE135PesCODFIL.AsInteger;

              Cliente135PesCODPRO.Value := ConsE135PesCODPRO.Value;
              Cliente135PesCODDER.Value := ConsE135PesCODDER.Value;
              Cliente135PesCODDEP.Value := ConsE135PesCODDEP.Value;

              Cliente135PesQTDPED.Value := ConsE135PesQTDPED.AsInteger;
              Cliente135PesUSU_PROMOV.Value := 'N';
              Cliente135Pes.Post;

              ConsE135Pes.Next;
           end;//2
   end;//1
end;

procedure TFMovimentaEstoqueCarga.BProcessarClick(Sender: TObject);
VAR vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;
    vaCodPro,vaCodDer,vaCodTns,vaCodDep,vaQtdMov,vaVlrMov,vaNumDoc : string;
    vnQtdEst : double;
begin

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

    Cliente135Pes.First;
    while not Cliente135Pes.Eof do
       begin//1
          //consulta o saldo do produto
          DmOra.ConsSql.Close;
          DmOra.ConsSql.SQL.Clear;
          DmOra.ConsSql.SQL.Add('SELECT CODEMP,CODPRO,CODDER,CODDEP,QTDEST FROM E210EST');
          DmOra.ConsSql.SQL.Add('WHERE');
          DmOra.ConsSql.SQL.Add('CODPRO = :CODPRO AND');
          DmOra.ConsSql.SQL.Add('CODDER = :CODDER AND');
          DmOra.ConsSql.SQL.Add('CODDEP = :CODDEP');
          DmOra.ConsSql.Parameters.ParamByName('CODPRO').Value := Cliente135PesCODPRO.Value;
          DmOra.ConsSql.Parameters.ParamByName('CODDER').Value := Cliente135PesCODDER.Value;
          DmOra.ConsSql.Parameters.ParamByName('CODDEP').Value := Cliente135PesCODDEP.Value;
          DmOra.ConsSql.Open;
          if not DmOra.ConsSql.IsEmpty then
             begin
               vnQtdEst := DmOra.ConsSql.FieldByName('QTDEST').AsFloat;
             end
          else
             begin
               vnQtdEst := 999999;
             end;

          //se a quantidade DE ESTOQUE FOR MENOR DO QUE VAI SER FATURADO
          if vnQtdEst < Cliente135PesQTDPED.Value then
             begin//2
                vaCodPro := Cliente135PesCODPRO.AsString;
                vaCodDer := Cliente135PesCODDER.AsString;
                vaCodTns := '90201';
                vaCodDep := Cliente135PesCODDEP.AsString;
                vaQtdMov := floatToStr(Cliente135PesQTDPED.AsFloat - vnQtdEst);

                DmOra.ConsSql.Close;
                DmOra.ConsSql.SQL.Clear;
                DmOra.ConsSql.SQL.Add('Select PreCus');
                DmOra.ConsSql.SQL.Add('From E075DER');
                DmOra.ConsSql.SQL.Add('Where CodEmp = 1');
                DmOra.ConsSql.SQL.Add('and CodPro = :CodPro ');
                DmOra.ConsSql.SQL.Add('and CodDer = :CodDer');
                DmOra.ConsSql.Parameters.ParamByName('CodPro').Value := Cliente135PesCODPRO.AsString;
                DmOra.ConsSql.Parameters.ParamByName('CodDer').Value := Cliente135PesCODDER.AsString;
                DmOra.ConsSql.Open;
                if not DmOra.ConsSql.IsEmpty then
                   begin
                     vaVlrMov := FloatToStr(StrToFloat(vaQtdMov) * DmOra.ConsSql.FieldByName('PreCus').AsFloat);
                   end
                else
                   begin
                     vaVlrMov := FloatToStr(Cliente135PesQTDMOV.AsInteger * 1);
                   end;

                xPostQuery.Clear;
                xPostQuery.Add('ACAO=SID.Est.Movimentar');
                xPostQuery.Add('&CodPro='+vaCodPro);
                xPostQuery.Add('&CodDer='+vaCodDer);
                xPostQuery.Add('&CodTns='+vaCodTns);
                xPostQuery.Add('&CodDep='+vaCodDep);
                xPostQuery.Add('&QtdMov='+vaQtdMov);
                xPostQuery.Add('&VlrMov='+vaVlrMov);

                // Executar ação  movimentar produtos
                xRetorno := Trim(SapSid.Post(vA_URL, xPostQuery));

                // Verificar retorno
                if (xRetorno = '0') then
                   begin
                      //raise Exception.Create(xRetorno);
                      ShowMessage(xRetorno);
                      Abort;
                   end
                else
                   begin//4
                     vaNumDoc := IntToStr(Cliente135PesNUMANE.AsInteger) + xRetorno;

                     //atualiza o movimento com o numero da carga
                     CadE210Mvp.Close;
                     CadE210Mvp.Parameters.ParamByName('codemp').Value := 1;
                     CadE210Mvp.Parameters.ParamByName('codpro').Value := Cliente135PesCODPRO.AsString;
                     CadE210Mvp.Parameters.ParamByName('codder').Value := Cliente135PesCODDER.AsString;
                     CadE210Mvp.Parameters.ParamByName('coddep').Value := Cliente135PesCODDEP.AsString;
                     CadE210Mvp.Parameters.ParamByName('datmov').Value := date;
                     CadE210Mvp.Parameters.ParamByName('seqmov').Value := StrToInt(xRetorno);
                     CadE210Mvp.Open;
                     if not CadE210Mvp.IsEmpty then
                        begin//5
                          CadE210Mvp.Edit;
                          CadE210MvpNUMDOC.Value := StrToInt(vaNumDoc);
                          CadE210Mvp.Post;
                        end;//5

                   end;//4

               Cliente135Pes.Edit;
               Cliente135PesUSU_PROMOV.Value := 'S';
               Cliente135PesQTDMOV.AsFloat := StrToFloat(vaQtdMov);
               Cliente135Pes.Post;
             end//2
          else
             begin//3

                Cliente135Pes.Edit;
                Cliente135PesUSU_PROMOV.Value := 'S';
                Cliente135Pes.Post;
             end;//3

          //ATUALZA O PRODUTO COMO MOVIMENTADO
          AtualizaProMov.Parameters.ParamByName('CODEMP').Value := 1;
          AtualizaProMov.Parameters.ParamByName('CODFIL').Value := Cliente135PesCODFIL.Value;
          AtualizaProMov.Parameters.ParamByName('NUMANE').Value := Cliente135PesNUMANE.Value;
          AtualizaProMov.Parameters.ParamByName('CODPRO').Value := Cliente135PesCODPRO.Value;
          AtualizaProMov.Parameters.ParamByName('CODDER').Value := Cliente135PesCODDER.Value;
          AtualizaProMov.Parameters.ParamByName('CODDEP').Value := Cliente135PesCODDEP.Value;
          AtualizaProMov.Execute;

          Cliente135Pes.Next;
       end;//1

      Application.MessageBox('Movimentação concluida com sucesso!','Aviso', MB_ICONWARNING+MB_OK);


end;

procedure TFMovimentaEstoqueCarga.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

//GRID ZEBRADA
    if odd(Cliente135Pes.RecNo) then
    DBGrid1.Canvas.Brush.Color:= clmenubar
    else
    DBGrid1.Canvas.Brush.Color:= clCream;

    TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

if Column.FieldName = 'Imagem' then
    begin
        DBGrid1.Canvas.FillRect(Rect);
        // Desenha o Quadrado
      //  ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,0);

        // Desenha o check sobre o quadrado

        if Cliente135PesUSU_PROMOV.AsString = 'S' then
           begin
             ImageList1.Draw(DBGrid1.Canvas,Rect.Left+10,Rect.Top+1,7);
           end;
    end;


end;

procedure TFMovimentaEstoqueCarga.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
