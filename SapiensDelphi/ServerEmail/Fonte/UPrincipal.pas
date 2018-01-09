unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, rxToolEdit, Buttons, rxCurrEdit, DB, DateUtils,MidasLib,
  IdMessage, IdSMTP, WinInet, // componemtes envio de email
  IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL, // componentes SSL
  IdAttachmentFile, IdIOHandlerStack, IdSSL, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  ImgList;

type
  TFPrincipal = class(TForm)
    dbgLista: TDBGrid;
    edtData: TDateEdit;
    Label1: TLabel;
    btnMostrar: TBitBtn;
    cbbAvisoVencimento: TComboBox;
    edtDiasAvisoVencimento: TCurrencyEdit;
    Label4: TLabel;
    edtDiasTituloVencido: TCurrencyEdit;
    Label5: TLabel;
    cbbEmailEnviado: TComboBox;
    dsListaEnvio: TDataSource;
    dbg2: TDBGrid;
    dsConsTitulos: TDataSource;
    btnEnviar: TBitBtn;
    Label2: TLabel;
    edtEmailDestinatario: TEdit;
    Label3: TLabel;
    edtSenhaEmailDestinatario: TEdit;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgListaCellClick(Column: TColumn);
    procedure btnEnviarClick(Sender: TObject);
  private
    { Private declarations }
    function EnviaMail(Email, Conta, Senha, Autentica, Smtp, Auth_SSL, Nom_exibe, Porta_smtp, Corpo, Destinatario, Assunto, Anexo : String) : String;
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UDmOra, UDmFire;

{$R *.dfm}

function TFPrincipal.EnviaMail(Email, Conta, Senha, Autentica, Smtp, Auth_SSL, Nom_exibe, Porta_smtp, Corpo, Destinatario, Assunto, Anexo : String) : String;
var
Mensagem: TIdMessage;
cnxSMTP: TIdSMTP;
AuthSSL: TIdSSLIOHandlerSocketOpenSSL;
begin
Result := '';
try
  Mensagem := TIdMessage.Create(nil);
  cnxSMTP  := TIdSMTP.Create(nil);

  //acrecentei por conta propria copiado da net
  Mensagem.ContentType:='multipart/related';
  Mensagem.CharSet:='iso-8859-1';
  Mensagem.Encoding := MeMIME;

  Mensagem.From.Name := Nom_exibe; // Nome do Remetente
  Mensagem.From.Address := Email; // E-mail do Remetente = email valido...
  Mensagem.Recipients.EMailAddresses := Destinatario;  // destinatario
  Mensagem.Priority := mpHighest;
  Mensagem.Subject := Assunto; // Assunto do E-mail

  cnxSMTP.Host := Smtp;  // smtp terra}
  cnxSMTP.Username := Conta;
  cnxSMTP.Password := Senha;
  if Autentica = 'S' then
  cnxSMTP.AuthType := satDefault;
  if Autentica = 'N' then
  cnxSMTP.AuthType := satNone;


  if Auth_SSL = 'S' then
   begin
    AuthSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
    cnxSMTP.IOHandler := AuthSSL;
    cnxSMTP.UseTLS := utUseImplicitTLS;
    AuthSSL.DefaultPort := StrToInt(Porta_smtp);
    AuthSSL.SSLOptions.Method := sslvSSLv3;
    AuthSSL.SSLOptions.Mode := sslmClient;
   end;

   cnxSMTP.Port := StrToInt(Porta_smtp);


  if trim(Anexo) <> '' then
   begin
    TIdAttachmentFile.Create(Mensagem.MessageParts, TFileName(Anexo));
   end;

   Mensagem.Body.Clear;
   //Mensagem.Body.Add(Corpo); ORIGINAL DA ROTINA QUE VEIO
   Mensagem.ContentType := 'text/html';
   {aqui eu coloquei  codigo html   e todos estão marcados com *  }
  { Mensagem.Body.Add('<html><body>');
   Mensagem.Body.Add('<p><h><br> MENSAGEM AUTOMÁTICA </h></p>');
   Mensagem.Body.Add('<p><hr></p><br>'+Corpo);
   Mensagem.Body.Add('<p><h2><br> teste</h2></p>');
   Mensagem.Body.Add('<p><hr><br> Aviso de Cobrança</hr></p>');
   Mensagem.Body.Add('</body></html>');}  //original
   Mensagem.Body.Add(Corpo);


  cnxSMTP.UseEhlo := true;
  cnxSMTP.UseVerp := false;


  cnxSMTP.ReadTimeout := 5000;
  cnxSMTP.Connect;
  sleep(1000);
  cnxSMTP.Authenticate;
  sleep(1000);
  Try
  if cnxSMTP.Connected then
   cnxSMTP.Send(Mensagem)
   else
    begin
    // LStatusEnvio.Caption := '';
     Refresh;
     Result := 'Mensagem não pode ser enviada.';
     exit;
    end;
  except
    cnxSMTP.Disconnect;
    cnxSMTP.Host := Smtp;   // smtp
    cnxSMTP.AuthType := satNone;
    cnxSMTP.Connect;
    try
      cnxSMTP.Send(Mensagem);
    except
     begin
     // LStatusEnvio.Caption := '';
      Refresh;
      Result := 'Não pode enviar o email para ' + Destinatario +  '. Verifique as configurações da conta!';

     end;
    end;
    cnxSMTP.Disconnect;
  end;
  cnxSMTP.Disconnect;


  finally
  FreeAndNil(Mensagem);
  FreeAndNil(cnxSMTP);
  if Auth_SSL = 'S' then
   FreeAndNil(AuthSSL);
  end;


  if Result = '' then
   Result := 'Mensagem enviada com sucesso!';

end;
/// fim função envia email

procedure TFPrincipal.btnEnviarClick(Sender: TObject);
var vaEnvEma,vaCorpoEmail  : string;
    vaCorpo : TStringList;
    vaSitTit, vaTipTit, vaPastaExe : string;
begin
  if not DmOra.ListaEnvio.IsEmpty then
    begin
        vaPastaExe:= ExtractFilePath(Application.ExeName);
        if FileExists(vaPastaExe+ '\enviando.ico') then
           begin
             Application.Icon.LoadFromFile(vaPastaExe+ '\enviando.ico');
             Application.ProcessMessages;
             Refresh;
           end;

      // Application.Minimize;
      // ShowWindow(Application.Handle, SW_HIDE);

       DmOra.ListaEnvio.First;
       while not DmOra.ListaEnvio.Eof do
         begin
           if DmOra.ListaEnvioIn_Sel.Value = 'S' then
              begin

                vaSitTit := '';
                vaTipTit := '';
                vaCorpo := TStringList.Create;
                vaCorpo.Add('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">');
                vaCorpo.Add('<html xmlns="http://www.w3.org/1999/xhtml">');

                vaCorpo.Add('<head>');
                vaCorpo.Add('<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />');
                vaCorpo.Add('<title>Aviso de Vencimento</title>');
                vaCorpo.Add('</head>');

                vaCorpo.Add('<body>');

                vaCorpo.Add('				<div style="position: relative;');
                vaCorpo.Add('							width: 800px;');
                vaCorpo.Add('							border: 1px solid #CCCCCC;');
                vaCorpo.Add('							margin:1px auto;');
                vaCorpo.Add('							background-color: #E8E8E8;');
                vaCorpo.Add('							height: 675px;');
                vaCorpo.Add('							border-radius: 10px;');
                vaCorpo.Add('							font-family:Arial, Helvetica, sans-serif;');
                vaCorpo.Add('							font-size:12px;">');

                vaCorpo.Add('					  <div style="float:right ;padding:5px;" ><strong><span style="color:#666666; font-size:10px; ">MENSAGEM AUTOMÁTICA</span></strong></div>');
                vaCorpo.Add('					      <br />');
                vaCorpo.Add('					      <div style="padding:10px;">');
                vaCorpo.Add('					         <div style="font-weight:bold; width:100px; float:left;"><span>Caro Cliente</span></div>');
                vaCorpo.Add('							 <div style="width:500px; float:left;"><span>'+DmOra.ListaEnvioNomCli.AsString+'</span></div> ');
                vaCorpo.Add('					         <br />');
                vaCorpo.Add('					         <br /> ');
                vaCorpo.Add('						     <span>Por meio desse comunicado, informamos o(s) título(s) que consta(m) em aberto perante a empresa:  </span>');
                vaCorpo.Add('						     <br />');
                vaCorpo.Add('						     <span><strong>LIDER LAR ESTOFADOS E COLCHÕES LTDA.</strong></span>');
                vaCorpo.Add('						     <br />	');
                vaCorpo.Add('				   	      </div>');
                vaCorpo.Add('						   <br />');

                vaCorpo.Add('					 <div style="text-align:center; padding:1px; background-color:#D6D6D6; border-radius:8px; width:798px; font-weight:bold;">VENCIDOS</div>');
                vaCorpo.Add('					 <div style="width:798px; padding:5px; height:13px;">');
                vaCorpo.Add('					   <div style="width:30px; text-align:center; float:left;color:#CCCCCC">.</div> ');
                vaCorpo.Add('					   <div style="width:140px; text-align:center; float:left;">DOCUMENTO</div>');
                vaCorpo.Add('						 <div style="width:140px; text-align:center; float:left;">VENCIMENTO</div>');
                vaCorpo.Add('						 <div style="width:50px; text-align:center; float:left;">DIAS</div>');
                vaCorpo.Add('						 <div style="width:140px; text-align:center; float:left;">SITUAÇÃO</div>');
                vaCorpo.Add('						 <div style="width:140px; text-align:center; float:left;">TIPO</div>');
                vaCorpo.Add('						 <div style="width:120px; text-align:center; float:left;">VALOR</div>');
                vaCorpo.Add('					 </div>');

                vaCorpo.Add('					 <div style="height:150px; width:770px; margin-left:5px;">');

                DmOra.ConsTitulos.First;
                while not DmOra.ConsTitulos.Eof do
                   begin
                      if DmOra.ConsTitulosvnQtdDias.Value < 0 then
                         begin
                            vaSitTit := '';
                            vaTipTit := '';
                            vaCorpo.Add('					   <div style="width:30px; text-align:center; float:left;color:#CCCCCC">.</div> ');
                            vaCorpo.Add('					   <div style="width:140px; text-align:center; float:left;">'+DmOra.ConsTitulosNUMTIT.AsString+'</div>');
                            vaCorpo.Add('						 <div style="width:140px; text-align:center; float:left;">'+DateToStr(DmOra.ConsTitulosVCTPRO.Value)+'</div>');
                            vaCorpo.Add('						 <div style="width:50px; text-align:center; float:left;">'+IntToStr(DmOra.ConsTitulosvnQtdDias.Value)+'</div>');

                            if DmOra.ConsTitulosSITTIT.Value = 'AB' then
                               vaSitTit := 'ABERTO'
                            else
                            if DmOra.ConsTitulosSITTIT.Value = 'AC' then
                               vaSitTit := 'CARTÓRIO'
                            else
                            if DmOra.ConsTitulosSITTIT.Value = 'AP' then
                               vaSitTit := 'PROTESTADO';

                           if DmOra.ConsTitulosCODTPT.Value = 'DPL' then
                              vaTipTit := 'DUPLICATA'
                           else
                           if DmOra.ConsTitulosCODTPT.Value = 'CHQ' then
                              vaTipTit := 'CHEQUE'
                           else
                           if DmOra.ConsTitulosCODTPT.Value = 'CHP' then
                              vaTipTit := 'CHEQUE-PRE-DAT'
                           else
                           if DmOra.ConsTitulosCODTPT.Value = 'CHD' then
                              vaTipTit := 'CHEQUE-DEVOLVIDO'
                           else
                           if DmOra.ConsTitulosCODTPT.Value = 'CHR' then
                              vaTipTit := 'CHEQUE-REAP'
                           else
                             if DmOra.ConsTitulosCODTPT.Value = 'DEV' then
                                vaTipTit := 'DEVOLUÇÃO'
                             else
                               vaTipTit := '------';

                            vaCorpo.Add('						 <div style="width:140px; text-align:center; float:left;">'+vaSitTit+'</div>');
                            vaCorpo.Add('						 <div style="width:140px; text-align:center; float:left;">'+vaTipTit+'</div>');
                            vaCorpo.Add('						 <div style="width:120px; text-align:center; float:left;">'+formatfloat('###,###,##0.00', DmOra.ConsTitulosVLRABE.Value)+'</div>');
                            vaSitTit := '';
                            vaTipTit := '';
                         end;
                     DmOra.ConsTitulos.Next;
                   end;

                vaCorpo.Add('					 </div> ');

                vaCorpo.Add('          <div style="text-align:right; margin-right:10px; font-weight:bold; width:790px; height:20px;">');
                vaCorpo.Add('					    <p align="right">Valores de títulos vencidos sujeitos a correções diárias.</p>');
                vaCorpo.Add('					 </div> ');

                vaCorpo.Add('					 <div style="text-align:center; background-color:#D6D6D6; border-radius:8px; width:798px; font-weight:bold; padding:1px;">VENCENDO HOJE</div>');

                vaCorpo.Add('          <div style="width:798px; padding:5px; height:13px;">');
                vaCorpo.Add('					   <div style="width:30px; text-align:center; float:left;color:#CCCCCC">.</div> ');
                vaCorpo.Add('					   <div style="width:140px; text-align:center; float:left;">DOCUMENTO</div>');
                vaCorpo.Add('						 <div style="width:140px; text-align:center; float:left;">VENCIMENTO</div>');
                vaCorpo.Add('						 <div style="width:50px; text-align:center; float:left;">DIAS</div>');
                vaCorpo.Add('						 <div style="width:140px; text-align:center; float:left;">SITUAÇÃO</div>');
                vaCorpo.Add('						 <div style="width:140px; text-align:center; float:left;">TIPO</div>');
                vaCorpo.Add('						 <div style="width:120px; text-align:center; float:left;">VALOR</div>');
                vaCorpo.Add('					 </div> ');

                vaCorpo.Add('					 <div style="height:100px; width:770px; margin-left:5px;">');

                DmOra.ConsTitulos.First;
                while not DmOra.ConsTitulos.Eof do
                   begin
                      if DmOra.ConsTitulosvnQtdDias.Value = 0 then
                         begin
                            vaSitTit := '';
                            vaTipTit := '';
                            vaCorpo.Add('					   <div style="width:30px; text-align:center; float:left;color:#CCCCCC">.</div> ');
                            vaCorpo.Add('					   <div style="width:140px; text-align:center; float:left;">'+DmOra.ConsTitulosNUMTIT.AsString+'</div>');
                            vaCorpo.Add('						 <div style="width:140px; text-align:center; float:left;">'+DateToStr(DmOra.ConsTitulosVCTPRO.Value)+'</div>');
                            vaCorpo.Add('						 <div style="width:50px; text-align:center; float:left;">'+IntToStr(DmOra.ConsTitulosvnQtdDias.Value)+'</div>');

                            if DmOra.ConsTitulosSITTIT.Value = 'AB' then
                               vaSitTit := 'ABERTO'
                            else
                            if DmOra.ConsTitulosSITTIT.Value = 'AC' then
                               vaSitTit := 'CARTÓRIO'
                            else
                            if DmOra.ConsTitulosSITTIT.Value = 'AP' then
                               vaSitTit := 'PROTESTADO';

                             if DmOra.ConsTitulosCODTPT.Value = 'DPL' then
                                vaTipTit := 'DUPLICATA'
                             else
                             if DmOra.ConsTitulosCODTPT.Value = 'CHQ' then
                                vaTipTit := 'CHEQUE'
                             else
                             if DmOra.ConsTitulosCODTPT.Value = 'CHP' then
                                vaTipTit := 'CHEQUE-PRE-DAT'
                             else
                             if DmOra.ConsTitulosCODTPT.Value = 'CHD' then
                                vaTipTit := 'CHEQUE-DEVOLVIDO'
                             else
                             if DmOra.ConsTitulosCODTPT.Value = 'CHR' then
                                vaTipTit := 'CHEQUE-REAP'
                             else
                             if DmOra.ConsTitulosCODTPT.Value = 'DEV' then
                                vaTipTit := 'DEVOLUÇÃO'
                             else
                               vaTipTit := '------';

                            vaCorpo.Add('						 <div style="width:140px; text-align:center; float:left;">'+vaSitTit+'</div>');
                            vaCorpo.Add('						 <div style="width:140px; text-align:center; float:left;">'+vaTipTit+'</div>');
                            vaCorpo.Add('						 <div style="width:120px; text-align:center; float:left;">'+formatfloat('###,###,##0.00', DmOra.ConsTitulosVLRABE.Value)+'</div>');
                            vaSitTit := '';
                            vaTipTit := '';
                         end;
                     DmOra.ConsTitulos.Next;
                   end;

                vaCorpo.Add('					 </div>');

                vaCorpo.Add('					 <div style="text-align:center; height:70px;"> ');
                vaCorpo.Add('					    <p>Tendo em vista que a emissão deste aviso é automática,');
                vaCorpo.Add('					    caso já tenha efetuado o pagamento até a data da entrega do mesmo,<br/> pedimos que desconcidere este comunicado');
                vaCorpo.Add('					  	e entre em contato com o departamento financeiro<br/>');
                vaCorpo.Add('					  	pelo telefone: (44) 3562-1483 ou e-mail: priscila@liderlar.com.br</p>');
                vaCorpo.Add('					 </div>');

                vaCorpo.Add('					<div style="margin-left:15px; height:50px;"> ');
                vaCorpo.Add('					  <span>Atenciosamente </span>');
                vaCorpo.Add('					</div>');

                vaCorpo.Add('					<div style="margin-left:40px;  height:40px;">');
                vaCorpo.Add('					   <span style="font-weight:bold;"> LIDER LAR ESTOFADOS E COLCHÕES LTDA.</span>');
                vaCorpo.Add('					   <br/>');
                vaCorpo.Add('					   <span style="margin-left:40px;">CNPJ: 79.094.579/0001-59 </span>');
                vaCorpo.Add('					</div>');

                vaCorpo.Add('					<div style="margin-right:30px; text-align:right;">');
                vaCorpo.Add('					  <span>'+FormatDateTime('dddddd',Now)+'</span>');
                vaCorpo.Add('					</div> ');

                vaCorpo.Add('				</div>');

                vaCorpo.Add('</body>');
                vaCorpo.Add('</html>');

               
                vaCorpoEmail := 'CORPO DO EMAIL - PARA EMAIL DE COBRANÇA';

                vaEnvEma := EnviaMail(edtEmailDestinatario.Text,//email do remetente
                           edtEmailDestinatario.Text,//conta do remetente
                           edtSenhaEmailDestinatario.Text, //senha do remetente
                           'S',//Autentica
                           'Smtp.gmail.com',
                           'S',//Auth_SSL
                           'LIDER LAR - COBRANÇA', //nome do remetente
                           '465',// Porta_smtp, padrao 25, ssl 465
                           vaCorpo.Text, // Corpo do email
                           DmOra.ListaEnvioEmaCli.AsString,//destinatario
                           'Valores em Aberto / Lider Lar Estofados e Colchões ',//assunto do email
                           ''//Anexo caso tenha anexo preencha: 'c:arquivo.txt' por ex.
                       );
                       // Application.MessageBox(pchar(vaEnvEma), 'Envidado!' , MB_ICONINFORMATION + MB_OK);
                      // ShowMessage(vaEnvEma);
                       // LStatusEnvio.Caption := '';
                       Application.ProcessMessages;
                       vaCorpo.Free;

                //grava a data que foi realizado o envio
                DmFire.CadEnviados.Open;
                DmFire.CadEnviados.Insert;
                DmFire.CadEnviadosDATENV.Value := edtData.Date;
                DmFire.CadEnviadosHORENV.Value := TimeToStr(Time);
                DmFire.CadEnviadosCODCLI.Value := DmOra.ListaEnvioCodCli.Value;
                DmFire.CadEnviadosNOMCLI.Value := DmOra.ListaEnvioNomCli.Value;
                DmFire.CadEnviadosEMAENV.Value := DmOra.ListaEnvioEmaCli.Value;
                DmFire.CadEnviadosVLRABE.Value := DmOra.ListaEnvioSaldo.Value;

                DmFire.ConsSql.Close;
                DmFire.ConsSql.SQL.Clear;
                DmFire.ConsSql.SQL.Add('select max(seqenv) as seqenv from enviados');
                DmFire.ConsSql.Open;
                if NOT DmFire.ConsSql.IsEmpty then
                   begin
                     DmFire.CadEnviadosSEQENV.Value := DmFire.ConsSql.FieldByName('SEQENV').AsInteger + 1;
                   end
                else
                   begin
                      DmFire.CadEnviadosSEQENV.Value := 1;
                   end;

                DmFire.CadEnviados.Post;
                DmFire.ibtTransacao.CommitRetaining;

                DmOra.ListaEnvio.Edit;
                DmOra.ListaEnvioIn_enviado.Value := 'SIM';
                DmOra.ListaEnvioIn_Sel.Value := 'N';
                DmOra.ListaEnvio.Post;
              end;
           DmOra.ListaEnvio.Next;
           Application.ProcessMessages;
         end;
     end;
     DmOra.ListaEnvio.First;
    Application.Restore;

        if FileExists(vaPastaExe+ '\padrao.ico') then
           begin
             Application.Icon.LoadFromFile(vaPastaExe+ '\padrao.ico');
             Application.ProcessMessages;
           end;

end;

procedure TFPrincipal.btnMostrarClick(Sender: TObject);
var vdDatIni,vdDatFim : TDate;
begin
    if edtData.Date = 0 then
       begin
         Application.MessageBox('Informe a Data','Aviso',MB_ICONWARNING+MB_OK);
         ActiveControl := edtData;
         Abort;
       end;

    vdDatIni := IncDay(edtData.Date,(edtDiasTituloVencido.AsInteger) * (-1));

    if cbbAvisoVencimento.Text = 'NAO' then
       begin
         //vdDatFim := IncDay(edtData.Date,-1);  //PARA PEGAR APENAS OS QUE JÁ ESTAO VENCIDOS HÁ + DE 1 DIA
           vdDatFim := edtData.Date;
       end
    else
      if cbbAvisoVencimento.Text = 'SIM' then
         begin
           vdDatFim := IncDay(edtData.Date, edtDiasAvisoVencimento.AsInteger);
         end;

    DmOra.ListaEnvio.First;
    while not DmOra.ListaEnvio.Eof do
       begin
         DmOra.ListaEnvio.Delete;
       end;

    DmOra.ConsE301Tcr.Close;
    DmOra.ConsE301Tcr.Parameters.ParamByName('DATINI').Value := vdDatIni;
    DmOra.ConsE301Tcr.Parameters.ParamByName('DATFIM').Value := vdDatFim;
    DmOra.ConsE301Tcr.Open;
    DmOra.ConsE301Tcr.First;
    while not DmOra.ConsE301Tcr.Eof do
       begin
         DmOra.ListaEnvio.Insert;
         DmOra.ListaEnvioCodCli.Value := DmOra.ConsE301TcrCODCLI.Value;
         DmOra.ListaEnvioNomCli.Value := DmOra.ConsE301TcrNOMCLI.Value;

         if Trim(DmOra.ConsE301TcrEMANFE.Value) <> '' then
            begin
              DmOra.ListaEnvioEmaCli.Value := DmOra.ConsE301TcrEMANFE.Value;
            end
         else if Trim(DmOra.ConsE301TcrINTNET.Value) <> '' then
             begin
                DmOra.ListaEnvioEmaCli.Value := DmOra.ConsE301TcrINTNET.Value;
             end
             else
                begin
                  DmOra.ListaEnvioEmaCli.Value := '';
                end;
         DmOra.ListaEnvioSaldo.Value := DmOra.ConsE301TcrVLRABE.AsFloat;
         DmOra.ListaEnvioIn_Sel.Value := 'N';

         DmFire.ConsEnvio.Close;
         DmFire.ConsEnvio.ParamByName('CODCLI').Value := DmOra.ListaEnvioCodCli.Value;
         DmFire.ConsEnvio.ParamByName('DATENV').Value := edtData.Date;
         DmFire.ConsEnvio.Open;
         if DmFire.ConsEnvio.IsEmpty then
            begin
              DmOra.ListaEnvioIn_enviado.Value := 'NAO';
            end
         else
            begin
              DmOra.ListaEnvioIn_enviado.Value := 'SIM';
            end;

         DmOra.ListaEnvio.Post;

         DmOra.ConsE301Tcr.Next;
       end;
    DmOra.ListaEnvio.First;

    if cbbEmailEnviado.Text = 'SIM' then
       begin
         while not DmOra.ListaEnvio.Eof do
           begin
             if DmOra.ListaEnvioIn_enviado.Value <> 'SIM' then
                begin
                  DmOra.ListaEnvio.Delete;
                end
             else
                begin
                  DmOra.ListaEnvio.Next;
                end;
           end;
       end
    else
    if cbbEmailEnviado.Text = 'NAO' then
       begin
         while not DmOra.ListaEnvio.Eof do
           begin
             if DmOra.ListaEnvioIn_enviado.Value <> 'NAO' then
                begin
                  DmOra.ListaEnvio.Delete;
                end
             else
                begin
                  DmOra.ListaEnvio.Next;
                end;
           end;
       end;

       DmOra.ListaEnvio.First;

end;

procedure TFPrincipal.dbgListaCellClick(Column: TColumn);
begin
if not DmOra.ListaEnvio.IsEmpty then
   begin
     if DmOra.ListaEnvioIn_enviado.Value = 'NAO' then
        begin
            if Column.FieldName = 'IteSel' then
               begin
                 DmOra.ListaEnvio.Edit;
                 if DmOra.ListaEnvioIn_Sel.Value = 'N' then
                    begin
                      DmOra.ListaEnvioIn_Sel.Value := 'S';
                    end
                 else
                    begin
                      DmOra.ListaEnvioIn_Sel.Value := 'N';
                    end;
                    DmOra.ListaEnvio.Post;
               end;
        end;
   end;
end;

procedure TFPrincipal.dbgListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
  Check: Integer;
  R: TRect;
begin

   //MUDA A COR DA LINHA
   if DmOra.ListaEnvioIn_Sel.Value = 'S'  then
      begin
        with (Sender as TDBGrid).Canvas do
        begin
            Brush.Color := clSilver; //clSkyBlue;
            FillRect(Rect);
            //Font.Style := [fsbold];
            //Font.Color := clRed;

            if Column.FieldName = 'CodCli' then
                begin
                   Column.Field.Alignment := taCenter;
                end;
            if Column.FieldName = 'Saldo' then
                begin
                   Column.Field.Alignment := taCenter;
                end;
            if Column.FieldName = 'In_enviado' then
                begin
                   Column.Field.Alignment := taCenter;
                end;
        end;
          TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
      end;

   {if gdSelected in State then
      begin
        if DmOra.ListaEnvioIn_Sel.Value = 'S' then
           begin
             dbgLista.Canvas.Font.Color := clRed;
             dbgLista.DefaultDrawDataCell(Rect, Column.Field, State);
           end;
      end; }

  //DESENHA O CHECK NA GRID
  if Column.FieldName = 'IteSel' then
     begin
       dbgLista.Canvas.FillRect(Rect);
       Check := 0;

       if DmOra.ListaEnvioIn_Sel.Value = 'S' then
          Check := DFCS_CHECKED
          else Check := 0;
          R:=Rect;
          InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
          DrawFrameControl(dbgLista.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
     end;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
edtData.Date := Date;
edtDiasTituloVencido.Value := 365;
end;

end.
