unit UCoresPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ComCtrls, StdCtrls, Mask, rxToolEdit, rxCurrEdit,
  Buttons, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  ADODB, Math;

type
  TFCoresPedido = class(TForm)
    dsConsE120Ipd: TDataSource;
    dbg1: TDBGrid;
    dsConsUsu_T120Ipd: TDataSource;
    SapSid: TIdHTTP;
    qryUltimoSeqIte: TADOQuery;
    qryUltimoSeqIteUSU_SEQITE: TIntegerField;
    lbl4: TLabel;
    lbl5: TLabel;
    edtAltCorAdd: TCurrencyEdit;
    edtAltCorCanc: TCurrencyEdit;
    btnAlteraCor: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtAltCorAddExit(Sender: TObject);
    procedure edtAltCorCancExit(Sender: TObject);
    procedure btnAlteraCorClick(Sender: TObject);
  private
    { Private declarations }
    vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;

    procedure ConectaSid();

  public
    { Public declarations }
  end;

var
  FCoresPedido: TFCoresPedido;

implementation

uses UPedido, UDm2, UDm1, UPrincipal;

{$R *.dfm}

procedure TFCoresPedido.btnAlteraCorClick(Sender: TObject);
var vaNumPed,vaSeqIpd,vaCodPro,vaCodDer,vaQtdPed,vaDatEnt,vaQtdCan,vaPreUni : string;
    vnSaldoDisp,vnQtdTrans,vnSaldoTrans,vnSaldoFila : Double;
    vaCor02, vaObsCar : string;
begin
    if (edtAltCorAdd.Value > 0) and (edtAltCorCanc.Value = 0) then //se estiver adicionando
       begin
         Screen.Cursor := crHourGlass;
         ConectaSid();

         vaNumPed := IntToStr(Dm2.ConsE120IpdNUMPED.Value);
         vaSeqIpd := IntToStr(Dm2.ConsE120IpdSEQIPD.Value);
         vaCodPro := Dm2.ConsE120IpdCODPRO.Value;
         vaCodDer := Dm2.ConsE120IpdCODDER.Value;
         vaDatEnt := DateToStr(Date);
         vaDatEnt := FormatDateTime('DD/MM/YYYY',StrToDate(vaDatEnt));
         vaQtdPed := IntToStr(Dm2.ConsE120IpdQTDPED.AsInteger + edtAltCorAdd.AsInteger);
         vaPreUni := FloatToStr(Dm2.ConsE120IpdPREUNI.AsFloat);

         xPostQuery.Clear;
         xPostQuery.Add('ACAO=SID.Ped.GravarProduto');
         xPostQuery.Add('&NumPed='+vaNumPed);
         xPostQuery.Add('&SeqIpd='+vaSeqIpd);
         xPostQuery.Add('&CodPro='+vaCodPro);
         xPostQuery.Add('&CodDer='+vaCodDer);
         xPostQuery.Add('&DatEnt='+vaDatEnt);
         xPostQuery.Add('&QtdPed='+vaQtdPed);
         xPostQuery.Add('&PreUni='+vaPreUni);

         // Executar ação  Alterar Produto
         xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));
         if (xRetorno <> vaSeqIpd) then
            begin
              raise Exception.Create(xRetorno);
              Screen.Cursor := crDefault;
            end
         else
            begin

            end;
         Screen.Cursor := crDefault;
         Close;
       end
    else
    if (edtAltCorAdd.Value = 0) and (edtAltCorCanc.Value > 0) then //se estiver cancelando
       begin
       if edtAltCorCanc.AsInteger > Dm2.ConsE120IpdQTDABE.AsInteger then
          begin
            Application.MessageBox('Quantidade a cancelar nao pode ser maior do que a quantidade em aberto','Aviso', MB_ICONWARNING+MB_OK);
            Abort;
          end;
         Screen.Cursor := crHourGlass;
         ConectaSid();

         vaNumPed := IntToStr(Dm2.ConsE120IpdNUMPED.Value);
         vaSeqIpd := IntToStr(Dm2.ConsE120IpdSEQIPD.Value);
         vaCodPro := Dm2.ConsE120IpdCODPRO.Value;
         vaCodDer := Dm2.ConsE120IpdCODDER.Value;
         vaDatEnt := DateToStr(Date);
         vaDatEnt := FormatDateTime('DD/MM/YYYY',StrToDate(vaDatEnt));
         vaQtdPed := IntToStr(Dm2.ConsE120IpdQTDPED.AsInteger);
         vaQtdCan := IntToStr(Dm2.ConsE120IpdQTDCAN.AsInteger + edtAltCorCanc.AsInteger);
         vaPreUni := FloatToStr(Dm2.ConsE120IpdPREUNI.AsFloat);

         xPostQuery.Clear;
         xPostQuery.Add('ACAO=SID.Ped.GravarProduto');
         xPostQuery.Add('&NumPed='+vaNumPed);
         xPostQuery.Add('&SeqIpd='+vaSeqIpd);
         xPostQuery.Add('&CodPro='+vaCodPro);
         xPostQuery.Add('&CodDer='+vaCodDer);
         xPostQuery.Add('&DatEnt='+vaDatEnt);
         xPostQuery.Add('&QtdPed='+vaQtdPed);
         xPostQuery.Add('&QtdCan='+vaQtdCan);
         xPostQuery.Add('&PreUni='+vaPreUni);

         // Executar ação  Alterar Produto
         xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));
         if (xRetorno <> vaSeqIpd) then
            begin
              ShowMessage(xRetorno);
              Abort;
              //raise Exception.Create(xRetorno);
              Screen.Cursor := crDefault;
            end
         else
            begin

            end;
         Screen.Cursor := crDefault;
         Close;
       end;
end;

procedure TFCoresPedido.ConectaSid();
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
    xPostQuery.Add('&CodEmp=1');
    xPostQuery.Add('&CodFil=1');
    xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));



end;


procedure TFCoresPedido.edtAltCorAddExit(Sender: TObject);
begin
if edtAltCorAdd.Value > 0 then
   edtAltCorCanc.Value := 0;
end;

procedure TFCoresPedido.edtAltCorCancExit(Sender: TObject);
begin
if edtAltCorCanc.Value > 0 then
   edtAltCorAdd.Value := 0;
end;

procedure TFCoresPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
