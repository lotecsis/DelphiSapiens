unit UAlteraProdPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, dbcgrids, ExtCtrls, Grids, DBGrids, DB,
  rxToolEdit, rxCurrEdit, Buttons, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP,IdIOHandler;

type
  TFAlteraProdPedido = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdNumPed: TEdit;
    EdCodPro: TEdit;
    EdCodDer: TEdit;
    EdSeqIpd: TEdit;
    LDsCodPro: TLabel;
    LDsCodDer: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DsConsUsu_T120Ipd: TDataSource;
    EdPreUni: TCurrencyEdit;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BProcessa: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    BSair: TBitBtn;
    EdQtdPed: TCurrencyEdit;
    EdQtdCan: TCurrencyEdit;
    EdQtdAbe: TCurrencyEdit;
    SapSid: TIdHTTP;
    procedure BProcessaClick(Sender: TObject);
    procedure EdQtdPed1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure EdQtdPedExit(Sender: TObject);
    procedure EdQtdCanExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vnQtdPed, vnQtdCan : Integer;
  public
    { Public declarations }
  end;

var
  FAlteraProdPedido: TFAlteraProdPedido;

implementation

uses UDm2, UPedido, UAltCoresProdPed;

{$R *.dfm}

procedure TFAlteraProdPedido.BProcessaClick(Sender: TObject);
var
vA_URL, vA_BasQry, xRetorno : String;
xPostQuery		              : TStringList;

vaINumPed : String;
vaICodPro : String;
vaICodDer : String;
vaISeqIpd : String;
vaIPreUni : String;
vaIQtdPed : String;
vaIQtdCan : String;
vaIDatEnt : String;

vnIQtdAbe : Integer;


begin


  vnIQtdAbe := 0;
  Dm2.ConsUsu_T120Ipd.First;
  while not Dm2.ConsUsu_T120Ipd.Eof do
    begin
      vnIQtdAbe := vnIQtdAbe + Dm2.ConsUsu_T120IpdUSU_QTDABE.Value;


      Dm2.ConsUsu_T120Ipd.Next;
    end;
    if vnIQtdAbe < EdQtdAbe.Value then
       begin//1
           Application.MessageBox('Quantidade em aberto é maior que a quantodade de cores em aberto','Aviso', MB_ICONWARNING+MB_OK);
           DBGrid1.SetFocus;
           Abort;
        end//1
    else if  vnIQtdAbe > EdQtdAbe.Value then
             begin//2
               Application.MessageBox('Quantidade de cores em aberto é maior que a quantidade pedida','Aviso', MB_ICONWARNING+MB_OK);
               DBGrid1.SetFocus;
               Abort;

             end//2
          else
            begin//3
               vaIDatEnt := FormatDateTime('DD/MM/YYYY',Date);

               vaINumPed := EdNumPed.Text;
               vaICodPro := EdCodPro.Text;
               vaICodDer := EdCodDer.Text;
               vaISeqIpd := EdSeqIpd.Text;
               vaIPreUni := EdPreUni.Text;
               vaIQtdPed := EdQtdPed.Text;
               vaIQtdCan := EdQtdCan.Text;


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

              // Altera produto do pedido
              xPostQuery.Clear;
              xPostQuery.Add('ACAO=SID.Ped.GravarProduto');
              xPostQuery.Add('&NumPed='+ vaINumPed);
              xPostQuery.Add('&CodPro='+ vaICodPro);
              xPostQuery.Add('&CodDer='+ vaICodDer);
              xPostQuery.Add('&SeqIpd='+ vaISeqIpd);
              xPostQuery.Add('&PreUni='+ vaIPreUni);
              xPostQuery.Add('&QtdPed='+ vaIQtdPed);
              xPostQuery.Add('&QtdCan='+ vaIQtdCan);
              xPostQuery.Add('&DatEnt='+ vaIDatEnt);


             // Executar ação  Alterar Pedido
              xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

              // Verificar retorno
              if (xRetorno <> vaISeqIpd) then
                raise Exception.Create(xRetorno)
              else
                begin
                  FPedido.EdNumPedExit(Sender);
                  Close;
                end;
               BProcessa.Enabled := False;
               Dm2.ADOUsuT000sis.Close;

             end;//3
end;

procedure TFAlteraProdPedido.EdQtdPed1Exit(Sender: TObject);
begin
    if (EdQtdPed.Text = '0') or (EdQtdPed.Text = '') then
       begin
          Application.MessageBox('Quantidade pedida não pode ser 0 ou estar em branco!','Aviso', MB_ICONWARNING+MB_OK);
          EdQtdPed.SetFocus;
       end;
end;

procedure TFAlteraProdPedido.FormShow(Sender: TObject);
begin
  vnQtdPed := StrToInt(EdQtdPed.Text);
  vnQtdCan := Dm2.ConsE120IpdQTDCAN.AsInteger;
end;

procedure TFAlteraProdPedido.BSairClick(Sender: TObject);
var vnIQtdAbe : Integer;
begin
  vnIQtdAbe := 0;
  Dm2.ConsUsu_T120Ipd.First;
  while not Dm2.ConsUsu_T120Ipd.Eof do
    begin
      vnIQtdAbe := vnIQtdAbe + Dm2.ConsUsu_T120IpdUSU_QTDABE.Value;
      Dm2.ConsUsu_T120Ipd.Next;
    end;
    if vnIQtdAbe < EdQtdAbe.Value then
       begin//1
           Application.MessageBox('Quantidade em aberto é maior que a quantodade de cores em aberto','Aviso', MB_ICONWARNING+MB_OK);
           DBGrid1.SetFocus;
           Abort;
        end//1
    else if  vnIQtdAbe > EdQtdAbe.Value then
             begin//2
               Application.MessageBox('Quantidade de cores em aberto é maior que a quantidade pedida','Aviso', MB_ICONWARNING+MB_OK);
               DBGrid1.SetFocus;
               Abort;

             end//2
          else
            begin//3
                Close;
            end;//3
end;

procedure TFAlteraProdPedido.EdQtdPedExit(Sender: TObject);
begin
if (EdQtdPed.Text = '0') or (EdQtdPed.Text = '') then
       begin
          Application.MessageBox('Quantidade pedida não pode ser 0 ou estar em branco!','Aviso', MB_ICONWARNING+MB_OK);
          EdQtdPed.SetFocus;
       end
else if EdQtdPed.Value < Dm2.ConsE120IpdQTDPED.AsInteger then
        begin
           Application.MessageBox('Quantidade pedida não pode ser menor que a já existente','Aviso', MB_ICONWARNING+MB_OK);
           EdQtdPed.SetFocus;
           EdQtdPed.Text := IntToStr(Dm2.ConsE120IpdQTDPED.AsInteger);
        end
     else
        begin
           EdQtdAbe.Value := EdQtdPed.Value - EdQtdCan.Value;

           if (EdQtdPed.Value <> Dm2.ConsE120IpdQTDPED.AsInteger) or
              (EdQtdCan.Value <> Dm2.ConsE120IpdQTDCAN.AsInteger)
            then
             BProcessa.Enabled := true
           else
            BProcessa.Enabled := false;

        end;

end;

procedure TFAlteraProdPedido.EdQtdCanExit(Sender: TObject);
var vnIQtdCan, vnIQtdPed : Double;
begin
   vnIQtdCan := EdQtdCan.Value;
   vnIQtdPed := EdQtdPed.Value;
   if vnIQtdCan > vnIQtdPed then
     begin
        Application.MessageBox('Quantidade cancelada não pode ser maior do que a pedida!','Aviso', MB_ICONWARNING+MB_OK);
        EdQtdCan.SetFocus;
        EdQtdCan.Text := IntToStr(Dm2.ConsE120IpdQTDCAN.AsInteger);
     end
   else
     begin
        EdQtdAbe.Value := EdQtdPed.Value - EdQtdCan.Value;

        if (EdQtdPed.Value <> Dm2.ConsE120IpdQTDPED.AsInteger) or
           (EdQtdCan.Value <> Dm2.ConsE120IpdQTDCAN.AsInteger) then
               BProcessa.Enabled := true
        else
             BProcessa.Enabled := false;
     end;


end;

procedure TFAlteraProdPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAlteraProdPedido.SpeedButton2Click(Sender: TObject);
var vaProduto : String;
begin
if not Dm2.ConsUsu_T120Ipd.IsEmpty then
begin//1
  FAltCoresProdPed := TFAltCoresProdPed.Create(Self);
  FAltCoresProdPed.LNumPed.Caption := IntToStr(Dm2.ConsUsu_T120IpdUSU_NUMPED.Value);
  vaProduto := Dm2.ConsUsu_T120IpdUSU_CODPRO.Value +'   -   '+LDsCodPro.Caption +
  '     Deriv.: '+Dm2.ConsUsu_T120IpdUSU_CODDER.Value;
  FAltCoresProdPed.LCodPro.Caption := vaProduto;
  FAltCoresProdPed.LQtdPed.Caption := IntToStr(Dm2.ConsUsu_T120IpdUSU_QTDCOR.Value);
  FAltCoresProdPed.LQtdAbe.Caption := IntToStr(Dm2.ConsUsu_T120IpdUSU_QTDABE.Value);

  FAltCoresProdPed.vnCodEmp := Dm2.ConsE120IpdCODEMP.Value;
  FAltCoresProdPed.vnCodFil := Dm2.ConsE120IpdCODFIL.Value;
  FAltCoresProdPed.vnNumPed := Dm2.ConsE120IpdNUMPED.Value;
  FAltCoresProdPed.vnSeqIpd := Dm2.ConsE120IpdSEQIPD.Value;
  FAltCoresProdPed.vnSeqIte := Dm2.ConsUsu_T120IpdUSU_SEQITE.Value;

  FAltCoresProdPed.EdQtdPed.Value := Dm2.ConsUsu_T120IpdUSU_QTDCOR.Value;
  FAltCoresProdPed.EdTipCmb.Value := Dm2.ConsUsu_T120IpdUSU_TIPCMB.Value;
  FAltCoresProdPed.EdCor001.Text := Dm2.ConsUsu_T120IpdUSU_COR001.Value;
  FAltCoresProdPed.EdCor002.Text := Dm2.ConsUsu_T120IpdUSU_COR002.Value;
  FAltCoresProdPed.EdQtdCan.Value := Dm2.ConsUsu_T120IpdUSU_QTDCAN.Value;
  FAltCoresProdPed.EdQtdAbe.Value := Dm2.ConsUsu_T120IpdUSU_QTDABE.Value;

  FAltCoresProdPed.vaStatus := 'ALTERANDO';

  FAltCoresProdPed.ShowModal;
  FreeAndNil(FAltCoresProdPed);
  end;//1
end;

procedure TFAlteraProdPedido.SpeedButton1Click(Sender: TObject);
begin
if not Dm2.ConsUsu_T120Ipd.IsEmpty then
begin//1
 if Application.MessageBox('Deseja Realmente Excluir o Registro?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
   begin//2
    Dm2.CadUsu_T120Ipd.Close;
    Dm2.CadUsu_T120Ipd.Parameters.ParamByName('codemp').Value := Dm2.ConsUsu_T120IpdUSU_CODEMP.Value;
    Dm2.CadUsu_T120Ipd.Parameters.ParamByName('codfil').Value := Dm2.ConsUsu_T120IpdUSU_CODFIL.Value;
    Dm2.CadUsu_T120Ipd.Parameters.ParamByName('numped').Value := Dm2.ConsUsu_T120IpdUSU_NUMPED.Value;
    Dm2.CadUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := Dm2.ConsUsu_T120IpdUSU_SEQIPD.Value;
    Dm2.CadUsu_T120Ipd.Parameters.ParamByName('seqite').Value := Dm2.ConsUsu_T120IpdUSU_SEQITE.Value;
    Dm2.CadUsu_T120Ipd.Open;
    Dm2.CadUsu_T120Ipd.Delete;

    dm2.ConsUsu_T120Ipd.Close;
    dm2.ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := dm2.ConsE120IpdCODFIL.Value;
    dm2.ConsUsu_T120Ipd.Parameters.ParamByName('numped').Value := dm2.ConsE120IpdNUMPED.Value;
    dm2.ConsUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := dm2.ConsE120IpdSEQIPD.Value;
    dm2.ConsUsu_T120Ipd.Open;
   end;//2
end;//1
end;

procedure TFAlteraProdPedido.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if BProcessa.Enabled = true then
  begin
   MessageDlg('Confirme ou Cancele os dados antes de fechar.',mtWarning,[mbok],0);
  end
 else
   canclose := true;
end;

procedure TFAlteraProdPedido.SpeedButton3Click(Sender: TObject);
var vaProduto : String;
begin
  FAltCoresProdPed := TFAltCoresProdPed.Create(Self);
  FAltCoresProdPed.LNumPed.Caption := IntToStr(Dm2.ConsE120IpdNUMPED.Value);
  vaProduto := Dm2.ConsE120IpdCODPRO.Value +'   -   '+LDsCodPro.Caption +
  '     Deriv.: '+Dm2.ConsE120IpdCODDER.Value;
  FAltCoresProdPed.LCodPro.Caption := vaProduto;
  FAltCoresProdPed.LQtdPed.Caption := IntToStr(0);
  FAltCoresProdPed.LQtdAbe.Caption := IntToStr(0);

  FAltCoresProdPed.vnCodEmp := Dm2.ConsE120IpdCODEMP.Value;
  FAltCoresProdPed.vnCodFil := Dm2.ConsE120IpdCODFIL.Value;
  FAltCoresProdPed.vnNumPed := Dm2.ConsE120IpdNUMPED.Value;
  FAltCoresProdPed.vnSeqIpd := Dm2.ConsE120IpdSEQIPD.Value;
  FAltCoresProdPed.vnSeqIte := Dm2.ConsUsu_T120IpdUSU_SEQITE.Value;
  FAltCoresProdPed.vaCodPro := Dm2.ConsE120IpdCODPRO.Value;
  FAltCoresProdPed.vaCodDer := Dm2.ConsE120IpdCODDER.Value;
  FAltCoresProdPed.vaStatus := 'INSERINDO';

  FAltCoresProdPed.ShowModal;
  FreeAndNil(FAltCoresProdPed);
end;

procedure TFAlteraProdPedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
