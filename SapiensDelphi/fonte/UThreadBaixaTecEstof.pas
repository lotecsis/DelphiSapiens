unit UThreadBaixaTecEstof;

interface

uses Classes,Windows, Messages, SysUtils, Variants, Graphics, Controls, Forms,
     Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons, IdBaseComponent,
     IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, math, ComCtrls, ExtCtrls{para usar o roundTo};

type
  TBaixaTecido=class(TThread)
  SapSid: TIdHTTP;

  protected
    procedure Execute; override;


  private
    { Private declarations }
  public
    { Public declarations }
    vaComando : string;
end;

implementation

uses UCorteTecEstof,UDmOra, UDm1, UDm2;


 procedure TBaixaTecido.Execute;
 var
    vnQtdTec : Double;
    vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;
    vaCodPro,vaCodDer,vaCodTns,vaCodDep,vaQtdMov,vaNumDoc : string;
    vaNumane, vaCodProPro, vaCodDerPro, vaCodCor1, vaCodCor2, vaSeqMov,vaDatMov : string;
    vnQtdMov : Double;
    vnSeqMov : Integer;
 begin

if vaComando = 'BAIXA' then
   begin
    if Application.MessageBox('Confirma Baixa?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
       begin
          //btnIniciaAnimacao.Click;
         //valida as informaçoes do client
         Dm1.ClientBaixaCorteTecEstof.First;
         while not Dm1.ClientBaixaCorteTecEstof.Eof do
            begin
              if Dm1.ClientBaixaCorteTecEstofITESEL.Value = 'S' then
                 begin
                   if Dm1.ClientBaixaCorteTecEstofQTDMOV.Value > 0 then
                      begin
                        if RoundTo(Dm1.ClientBaixaCorteTecEstofQTDMOV.Value,-2) > RoundTo(Dm1.ClientBaixaCorteTecEstofQTDABE.Value,-2) then
                           begin
                             MessageDlg('Quantidade do movimento não pode ser maior do que a quantidade em aberto.',mtError,[mbOK],0);
                             Abort;
                           end;

                        //CONSULTA O CONSUMO DE TECIDO
                        Dm1.ConsE075DerConsumoTec.Close;
                        Dm1.ConsE075DerConsumoTec.Parameters.ParamByName('CODPRO').Value := Dm1.ClientBaixaCorteTecEstofCODPRO.Value;
                        Dm1.ConsE075DerConsumoTec.Parameters.ParamByName('CODDER').Value := Dm1.ClientBaixaCorteTecEstofCODDER.Value;
                        Dm1.ConsE075DerConsumoTec.Open;
                        if Dm1.ConsE075DerConsumoTec.IsEmpty then
                           begin
                              MessageDlg('Não foi encontrado consumo de tecido para o produto: '+QuotedStr(Dm1.ClientBaixaCorteTecEstofCODPRO.AsString),mtError,[mbOK],0);
                              Abort;
                           end;

                        if Trim(Dm1.ClientBaixaCorteTecEstofCODCOR2.AsString) = '' then //SE FOR COR UNICA
                           begin
                              //CONSULTA OS SALDOS DO TECIDO
                              Dm1.ConsSaldoTecido.Close;
                              Dm1.ConsSaldoTecido.Parameters.ParamByName('CODPRO').Value := Dm1.ClientBaixaCorteTecEstofCODCOR1.Value;
                              Dm1.ConsSaldoTecido.Open;
                              if Dm1.ConsSaldoTecido.IsEmpty then
                                 begin
                                   MessageDlg('Não foi encontrado saldo para o tecido: '+QuotedStr(Dm1.ClientBaixaCorteTecEstofCODCOR1.AsString),mtError,[mbOK],0);
                                   Abort;
                                 end;

                              vnQtdTec := RoundTo(Dm1.ClientBaixaCorteTecEstofQTDMOV.Value * Dm1.ConsE075DerConsumoTecUSU_CORUNI.Value,-2);

                              if RoundTo(vnQtdTec,-2) > RoundTo(Dm1.ConsSaldoTecidoUSU_SALRES.Value,-2) then
                                 begin
                                   MessageDlg('Saldo reservado insuficiente para baixa. Tecido: '+QuotedStr(Dm1.ClientBaixaCorteTecEstofCODCOR1.AsString),mtError,[mbOK],0);
                                   Abort;
                                 end;
                           end
                        else
                           begin
                              //CONSULTA OS SALDOS DO TECIDO P/COR 01
                              Dm1.ConsSaldoTecido.Close;
                              Dm1.ConsSaldoTecido.Parameters.ParamByName('CODPRO').Value := Dm1.ClientBaixaCorteTecEstofCODCOR1.Value;
                              Dm1.ConsSaldoTecido.Open;
                              if Dm1.ConsSaldoTecido.IsEmpty then
                                 begin
                                   MessageDlg('Não foi encontrado saldo para o tecido: '+QuotedStr(Dm1.ClientBaixaCorteTecEstofCODCOR1.AsString),mtError,[mbOK],0);
                                   Abort;
                                 end;

                              vnQtdTec := Dm1.ClientBaixaCorteTecEstofQTDMOV.Value * Dm1.ConsE075DerConsumoTecUSU_CMP1BB.Value;

                              if RoundTo(vnQtdTec,-2) > RoundTo(Dm1.ConsSaldoTecidoUSU_SALRES.Value,-2) then
                                 begin
                                   MessageDlg('Saldo reservado insuficiente para baixa. Tecido: '+QuotedStr(Dm1.ClientBaixaCorteTecEstofCODCOR1.AsString),mtError,[mbOK],0);
                                   Abort;
                                 end;

                              //CONSULTA OS SALDOS DO TECIDO P/COR 02
                              Dm1.ConsSaldoTecido.Close;
                              Dm1.ConsSaldoTecido.Parameters.ParamByName('CODPRO').Value := Dm1.ClientBaixaCorteTecEstofCODCOR2.Value;
                              Dm1.ConsSaldoTecido.Open;
                              if Dm1.ConsSaldoTecido.IsEmpty then
                                 begin
                                   MessageDlg('Não foi encontrado saldo para o tecido: '+QuotedStr(Dm1.ClientBaixaCorteTecEstofCODCOR2.AsString),mtError,[mbOK],0);
                                   Abort;
                                 end;

                              vnQtdTec := Dm1.ClientBaixaCorteTecEstofQTDMOV.Value * Dm1.ConsE075DerConsumoTecUSU_CMP1AE.Value;

                              if RoundTo(vnQtdTec,-2) > RoundTo(Dm1.ConsSaldoTecidoUSU_SALRES.Value,-2) then
                                 begin
                                   MessageDlg('Saldo reservado insuficiente para baixa. Tecido: '+QuotedStr(Dm1.ClientBaixaCorteTecEstofCODCOR2.AsString),mtError,[mbOK],0);
                                   Abort;
                                 end;
                           end;
                      end
                   else
                   if Dm1.ClientBaixaCorteTecEstofQTDMOV.Value < 0 then
                      begin
                         MessageDlg('Quantidade do movimento não pode ser menor do que 0(zero)',mtError,[mbOK],0);
                         Abort;

                         {if ((Dm1.ClientBaixaCorteTecEstofQTDMOV.Value * (-1)) > Dm1.ClientBaixaCorteTecEstofQTDPRO.Value) then
                            begin
                              MessageDlg('Quantidade do movimento não pode ser maior do que a quantidade produzida.',mtError,[mbOK],0);
                              Abort;
                            end; }

                      end;
                 end;

              Dm1.ClientBaixaCorteTecEstof.Next;
            end;

          //SE CHEGOU ATÉ AQUI É PQ PASSOU PELAS VALIDAÇOES
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

         Dm1.ClientBaixaCorteTecEstof.First;
         while not Dm1.ClientBaixaCorteTecEstof.Eof do
            begin
               if (Dm1.ClientBaixaCorteTecEstofITESEL.Value = 'S') and (Dm1.ClientBaixaCorteTecEstofQTDMOV.Value > 0) then
                  begin
                    Dm1.CadUsu_TCorCar.Close;
                    Dm1.CadUsu_TCorCar.Parameters.ParamByName('NUMANE').Value := Dm1.ClientBaixaCorteTecEstofNUMANE.Value;
                    Dm1.CadUsu_TCorCar.Parameters.ParamByName('CODPRO').Value := Dm1.ClientBaixaCorteTecEstofCODPRO.Value;
                    Dm1.CadUsu_TCorCar.Parameters.ParamByName('CODDER').Value := Dm1.ClientBaixaCorteTecEstofCODDER.Value;
                    Dm1.CadUsu_TCorCar.Parameters.ParamByName('CODCOR1').Value := Dm1.ClientBaixaCorteTecEstofCODCOR1.Value;
                    if Dm1.ClientBaixaCorteTecEstofCODCOR2.Value = '' then
                      Dm1.CadUsu_TCorCar.Parameters.ParamByName('CODCOR2').Value := ' '
                    else
                      Dm1.CadUsu_TCorCar.Parameters.ParamByName('CODCOR2').Value := Dm1.ClientBaixaCorteTecEstofCODCOR2.Value;
                    Dm1.CadUsu_TCorCar.Open;

                    if not Dm1.CadUsu_TCorCar.IsEmpty then //se achou a cor
                       begin
                         //da saida no estoque fisico
                         if Trim(Dm1.ClientBaixaCorteTecEstofCODCOR2.Value) = '' then //se for cor unica
                            begin
                               vaCodPro := Dm1.ClientBaixaCorteTecEstofCODCOR1.AsString;
                               vaCodDer := ' ';
                               vaCodTns := '90251';
                               vaCodDep := '1001';
                               vaQtdMov := FloatToStr(RoundTo(Dm1.ClientBaixaCorteTecEstofQTDMOV.Value * Dm1.ConsE075DerConsumoTecUSU_CORUNI.Value,-2));
                               vaNumDoc := IntToStr(Dm1.ClientBaixaCorteTecEstofNUMANE.AsInteger);
                               vaNumane := IntToStr(Dm1.ClientBaixaCorteTecEstofNUMANE.AsInteger);
                               vaCodProPro := Dm1.ClientBaixaCorteTecEstofCODPRO.Value;
                               vaCodDerPro := Dm1.ClientBaixaCorteTecEstofCODDER.Value;
                               vaCodCor1 := Dm1.ClientBaixaCorteTecEstofCODCOR1.Value;
                               if Trim(Dm1.ClientBaixaCorteTecEstofCODCOR2.Value) = '' then
                                  vaCodCor2 := ' '
                               else
                                  vaCodCor2 := Dm1.ClientBaixaCorteTecEstofCODCOR2.Value;

                               // GRAVA MOVIMENTO
                               xPostQuery.Clear;
                               xPostQuery.Add('ACAO=SID.Est.Movimentar');
                               xPostQuery.Add('&CodPro='+vaCodPro);
                               xPostQuery.Add('&CodDer='+vaCodDer);
                               xPostQuery.Add('&CodTns='+vaCodTns);
                               xPostQuery.Add('&CodDep='+vaCodDep);
                               xPostQuery.Add('&QtdMov='+vaQtdMov);
                               xPostQuery.Add('&NumDoc='+vaNumDoc);
                               xPostQuery.Add('&USU_NumAne='+vaNumane);
                               xPostQuery.Add('&USU_CodPro='+vaCodProPro);
                               xPostQuery.Add('&USU_CodDer='+vaCodDerPro);
                               xPostQuery.Add('&USU_CodCor1='+vaCodCor1);
                               xPostQuery.Add('&USU_CodCor2='+vaCodCor2);

                               // Executar ação
                               xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                               try
                                 vnSeqMov := StrToInt(xRetorno);
                               except
                                 raise Exception.Create('Não foi possivel gerar o movimento de saída do estoque, motivo: '+xRetorno);
                               end;

                               //TIRA DO SALDO RESERVADO USU_TSALTEC
                               Dm1.CadUsu_TSalTec.Close;
                               Dm1.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := Dm1.ClientBaixaCorteTecEstofCODCOR1.AsString;
                               Dm1.CadUsu_TSalTec.Open;
                               if not Dm1.CadUsu_TSalTec.IsEmpty then
                                  begin
                                    Dm1.CadUsu_TSalTec.Edit;
                                    vnQtdTec := RoundTo(Dm1.ClientBaixaCorteTecEstofQTDMOV.Value * Dm1.ConsE075DerConsumoTecUSU_CORUNI.Value,-2);
                                    Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value - vnQtdTec;
                                    Dm1.CadUsu_TSalTec.Post;
                                  end;
                            end
                         else
                            begin //SE FOR COMPOSE
                               //faz com a cor 01
                               vaCodPro := Dm1.ClientBaixaCorteTecEstofCODCOR1.AsString;
                               vaCodDer := ' ';
                               vaCodTns := '90251';
                               vaCodDep := '1001';
                               vaQtdMov := FloatToStr(RoundTo(Dm1.ClientBaixaCorteTecEstofQTDMOV.Value * Dm1.ConsE075DerConsumoTecUSU_CMP1BB.Value,-2));
                               vaNumDoc := IntToStr(Dm1.ClientBaixaCorteTecEstofNUMANE.AsInteger);
                               vaNumane := IntToStr(Dm1.ClientBaixaCorteTecEstofNUMANE.AsInteger);
                               vaCodProPro := Dm1.ClientBaixaCorteTecEstofCODPRO.Value;
                               vaCodDerPro := Dm1.ClientBaixaCorteTecEstofCODDER.Value;
                               vaCodCor1 := Dm1.ClientBaixaCorteTecEstofCODCOR1.Value;
                               vaCodCor2 := Dm1.ClientBaixaCorteTecEstofCODCOR2.Value;

                               // GRAVA MOVIMENTO
                               xPostQuery.Clear;
                               xPostQuery.Add('ACAO=SID.Est.Movimentar');
                               xPostQuery.Add('&CodPro='+vaCodPro);
                               xPostQuery.Add('&CodDer='+vaCodDer);
                               xPostQuery.Add('&CodTns='+vaCodTns);
                               xPostQuery.Add('&CodDep='+vaCodDep);
                               xPostQuery.Add('&QtdMov='+vaQtdMov);
                               xPostQuery.Add('&NumDoc='+vaNumDoc);
                               xPostQuery.Add('&USU_NumAne='+vaNumane);
                               xPostQuery.Add('&USU_CodPro='+vaCodProPro);
                               xPostQuery.Add('&USU_CodDer='+vaCodDerPro);
                               xPostQuery.Add('&USU_CodCor1='+vaCodCor1);
                               xPostQuery.Add('&USU_CodCor2='+vaCodCor2);

                               // Executar ação
                               xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                               try
                                 vnSeqMov := StrToInt(xRetorno);
                               except
                                 raise Exception.Create('Não foi possivel gerar o movimento de saída do estoque, motivo: '+xRetorno);
                               end;

                               //TIRA DO SALDO RESERVADO USU_TSALTEC
                               Dm1.CadUsu_TSalTec.Close;
                               Dm1.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := Dm1.ClientBaixaCorteTecEstofCODCOR1.AsString;
                               Dm1.CadUsu_TSalTec.Open;
                               if not Dm1.CadUsu_TSalTec.IsEmpty then
                                  begin
                                    Dm1.CadUsu_TSalTec.Edit;
                                    vnQtdTec := RoundTo(Dm1.ClientBaixaCorteTecEstofQTDMOV.Value * Dm1.ConsE075DerConsumoTecUSU_CMP1BB.Value,-2);
                                    Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value - vnQtdTec;
                                    Dm1.CadUsu_TSalTec.Post;
                                  end;

                               //com a cor 02
                               vaCodPro := Dm1.ClientBaixaCorteTecEstofCODCOR2.AsString;
                               vaCodDer := ' ';
                               vaCodTns := '90251';
                               vaCodDep := '1001';
                               vaQtdMov := FloatToStr(RoundTo(Dm1.ClientBaixaCorteTecEstofQTDMOV.Value * Dm1.ConsE075DerConsumoTecUSU_CMP1AE.Value,-2));
                               vaNumDoc := IntToStr(Dm1.ClientBaixaCorteTecEstofNUMANE.AsInteger);
                               vaNumane := IntToStr(Dm1.ClientBaixaCorteTecEstofNUMANE.AsInteger);
                               vaCodProPro := Dm1.ClientBaixaCorteTecEstofCODPRO.Value;
                               vaCodDerPro := Dm1.ClientBaixaCorteTecEstofCODDER.Value;
                               vaCodCor1 := Dm1.ClientBaixaCorteTecEstofCODCOR1.Value;
                               vaCodCor2 := Dm1.ClientBaixaCorteTecEstofCODCOR2.Value;


                               // GRAVA MOVIMENTO
                               xPostQuery.Clear;
                               xPostQuery.Add('ACAO=SID.Est.Movimentar');
                               xPostQuery.Add('&CodPro='+vaCodPro);
                               xPostQuery.Add('&CodDer='+vaCodDer);
                               xPostQuery.Add('&CodTns='+vaCodTns);
                               xPostQuery.Add('&CodDep='+vaCodDep);
                               xPostQuery.Add('&QtdMov='+vaQtdMov);
                               xPostQuery.Add('&NumDoc='+vaNumDoc);
                               xPostQuery.Add('&USU_NumAne='+vaNumane);
                               xPostQuery.Add('&USU_CodPro='+vaCodProPro);
                               xPostQuery.Add('&USU_CodDer='+vaCodDerPro);
                               xPostQuery.Add('&USU_CodCor1='+vaCodCor1);
                               xPostQuery.Add('&USU_CodCor2='+vaCodCor2);

                               // Executar ação
                               xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                               try
                                 vnSeqMov := StrToInt(xRetorno);
                               except
                                 raise Exception.Create('Não foi possivel gerar o movimento de saída do estoque, motivo: '+xRetorno);
                               end;

                               //TIRA DO SALDO RESERVADO USU_TSALTEC
                               Dm1.CadUsu_TSalTec.Close;
                               Dm1.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := Dm1.ClientBaixaCorteTecEstofCODCOR2.AsString;
                               Dm1.CadUsu_TSalTec.Open;
                               if not Dm1.CadUsu_TSalTec.IsEmpty then
                                  begin
                                    Dm1.CadUsu_TSalTec.Edit;
                                    vnQtdTec := RoundTo(Dm1.ClientBaixaCorteTecEstofQTDMOV.Value * Dm1.ConsE075DerConsumoTecUSU_CMP1AE.Value,-2);
                                    Dm1.CadUsu_TSalTecUSU_SALRES.Value := RoundTo(Dm1.CadUsu_TSalTecUSU_SALRES.Value - vnQtdTec,-2);
                                    Dm1.CadUsu_TSalTec.Post;
                                  end;
                            end;


                         Dm1.CadUsu_TCorCar.Edit;
                         Dm1.CadUsu_TCorCarUSU_QTDPRO.Value := Dm1.CadUsu_TCorCarUSU_QTDPRO.Value + Dm1.ClientBaixaCorteTecEstofQTDMOV.Value;
                         Dm1.CadUsu_TCorCarUSU_QTDABE.Value := Dm1.CadUsu_TCorCarUSU_QTDPED.Value - Dm1.CadUsu_TCorCarUSU_QTDPRO.Value;
                         Dm1.CadUsu_TCorCar.Post;

                         //altera o produto
                         Dm1.CadUsu_TProCar.Close;
                         Dm1.CadUsu_TProCar.Parameters.ParamByName('NUMANE').Value := Dm1.ClientBaixaCorteTecEstofNUMANE.Value;
                         Dm1.CadUsu_TProCar.Parameters.ParamByName('CODPRO').Value := Dm1.ClientBaixaCorteTecEstofCODPRO.Value;
                         Dm1.CadUsu_TProCar.Parameters.ParamByName('CODDER').Value := Dm1.ClientBaixaCorteTecEstofCODDER.Value;
                         Dm1.CadUsu_TProCar.Open;
                         if not Dm1.CadUsu_TProCar.IsEmpty then
                            begin
                              Dm1.CadUsu_TProCar.Edit;
                              Dm1.CadUsu_TProCarUSU_QTDPRO.Value := Dm1.CadUsu_TProCarUSU_QTDPRO.Value + Dm1.ClientBaixaCorteTecEstofQTDMOV.Value;
                              Dm1.CadUsu_TProCarUSU_QTDABE.Value := Dm1.CadUsu_TProCarUSU_QTDPED.Value - Dm1.CadUsu_TProCarUSU_QTDPRO.Value;
                              Dm1.CadUsu_TProCar.Post;
                            end;
                       end;

                  end;


              Dm1.ClientBaixaCorteTecEstof.Next;
            end;

       end;
   end
else
if vaComando = 'ESTORNO' then
   begin
     if Application.MessageBox('Confirma Estorno do Lançamento?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
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

         Dm1.ClientBaixaCorteTecEstof.First;
         while not Dm1.ClientBaixaCorteTecEstof.Eof do
            begin
               if Dm1.ClientBaixaCorteTecEstofITESEL.Value = 'S' then
                  begin
                    //CONSULTA OS MOVIMENTOS GERADOS NA E210EST PARA APAGAR
                    Dm1.ConsE210MvpTecEstof.Close;
                    Dm1.ConsE210MvpTecEstof.Parameters.ParamByName('NUMANE').Value := Dm1.ClientBaixaCorteTecEstofNUMANE.Value;
                    Dm1.ConsE210MvpTecEstof.Parameters.ParamByName('CODPRO').Value := Dm1.ClientBaixaCorteTecEstofCODPRO.Value;
                    Dm1.ConsE210MvpTecEstof.Parameters.ParamByName('CODDER').Value := Dm1.ClientBaixaCorteTecEstofCODDER.Value;
                    Dm1.ConsE210MvpTecEstof.Parameters.ParamByName('CODCOR1').Value := Dm1.ClientBaixaCorteTecEstofCODCOR1.Value;
                    if Trim(Dm1.ClientBaixaCorteTecEstofCODCOR2.Value) = '' then
                       Dm1.ConsE210MvpTecEstof.Parameters.ParamByName('CODCOR2').Value := ' '
                    else
                       Dm1.ConsE210MvpTecEstof.Parameters.ParamByName('CODCOR2').Value := Dm1.ClientBaixaCorteTecEstofCODCOR2.Value;
                     Dm1.ConsE210MvpTecEstof.Open;
                     Dm1.ConsE210MvpTecEstof.First;
                      while not Dm1.ConsE210MvpTecEstof.Eof do
                            begin
                                //EXCLUI O MOVIMENTO
                                vaCodPro := Dm1.ConsE210MvpTecEstofCODPRO.Value;//no caso é a cor
                                vaCodDer := Dm1.ConsE210MvpTecEstofCODDER.Value;
                                vaCodDep := Dm1.ConsE210MvpTecEstofCODDEP.Value;
                                vaDatMov := FormatDateTime('DD/MM/YYYY',Dm1.ConsE210MvpTecEstofDATMOV.AsDateTime);
                                vaSeqMov := IntToStr(Dm1.ConsE210MvpTecEstofSEQMOV.AsInteger);

                                xPostQuery.Clear;
                                xPostQuery.Add('ACAO=SID.Est.ExcluirMovimento');
                                xPostQuery.Add('&CodPro='+vaCodPro);
                                xPostQuery.Add('&CodDer='+vaCodDer);
                                xPostQuery.Add('&CodDep='+vaCodDep);
                                xPostQuery.Add('&DatMov='+vaDatMov);
                                xPostQuery.Add('&SeqMov='+vaSeqMov);

                                // Executar ação
                                xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                                if xRetorno <> 'OK' then
                                   begin
                                     raise Exception.Create('Não foi possivel apagar o movimento de saída do estoque, motivo: '+xRetorno);
                                     Break;
                                   end;

                                //VOLTA O SALDO RESERVADO
                                Dm1.CadUsu_TSalTec.Close;
                                Dm1.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := Dm1.ConsE210MvpTecEstofCODPRO.Value;//cor do tecido
                                Dm1.CadUsu_TSalTec.Open;
                                if not Dm1.CadUsu_TSalTec.IsEmpty then
                                  begin
                                    Dm1.CadUsu_TSalTec.Edit;
                                    Dm1.CadUsu_TSalTecUSU_SALRES.Value := Dm1.CadUsu_TSalTecUSU_SALRES.Value + RoundTo(Dm1.ConsE210MvpTecEstofQTDMOV.AsFloat,-2);
                                    Dm1.CadUsu_TSalTec.Post;
                                  end;

                                Dm1.ConsE210MvpTecEstof.Next;
                            end;
                     //AGORA VOLTA A QUANTIDADE EM ABERTO DA COR
                     Dm1.ConsCoresCarga.Close;
                     Dm1.ConsCoresCarga.Parameters.ParamByName('NUMANE').Value := Dm1.ClientBaixaCorteTecEstofNUMANE.Value;
                     Dm1.ConsCoresCarga.Parameters.ParamByName('CODPRO').Value := Dm1.ClientBaixaCorteTecEstofCODPRO.Value;
                     Dm1.ConsCoresCarga.Parameters.ParamByName('CODDER').Value := Dm1.ClientBaixaCorteTecEstofCODDER.Value;
                     Dm1.ConsCoresCarga.Parameters.ParamByName('CODCOR1').Value := Dm1.ClientBaixaCorteTecEstofCODCOR1.Value;
                     if Trim(Dm1.ClientBaixaCorteTecEstofCODCOR2.Value) = '' then
                        Dm1.ConsCoresCarga.Parameters.ParamByName('CODCOR2').Value := ' '
                     else
                        Dm1.ConsCoresCarga.Parameters.ParamByName('CODCOR2').Value := Dm1.ClientBaixaCorteTecEstofCODCOR2.Value;
                     Dm1.ConsCoresCarga.Open;
                     if not Dm1.ConsCoresCarga.IsEmpty then
                        begin
                          Dm1.ConsCoresCarga.Edit;
                          Dm1.ConsCoresCargaUSU_QTDABE.Value := Dm1.ConsCoresCargaUSU_QTDABE.Value + Dm1.ConsCoresCargaUSU_QTDPRO.Value;
                          Dm1.ConsCoresCargaUSU_QTDPRO.Value := 0;
                          Dm1.ConsCoresCarga.Post;
                        end;

                     //VOLTA A QUANTIDADE EM ABERTO DO PRODUTO
                     Dm1.ConsProdutosCarga.Close;
                     Dm1.ConsProdutosCarga.Parameters.ParamByName('NUMANE').Value := Dm1.ClientBaixaCorteTecEstofNUMANE.Value;
                     Dm1.ConsProdutosCarga.Parameters.ParamByName('CODPRO').Value := Dm1.ClientBaixaCorteTecEstofCODPRO.Value;
                     Dm1.ConsProdutosCarga.Parameters.ParamByName('CODDER').Value := Dm1.ClientBaixaCorteTecEstofCODDER.Value;
                     Dm1.ConsProdutosCarga.Open;
                     if not Dm1.ConsProdutosCarga.IsEmpty then
                        begin
                          Dm1.ConsProdutosCarga.Edit;
                          Dm1.ConsProdutosCargaUSU_QTDPRO.Value := Dm1.ConsProdutosCargaUSU_QTDPRO.Value - Dm1.ClientBaixaCorteTecEstofQTDPRO.Value;
                          Dm1.ConsProdutosCargaUSU_QTDABE.Value := Dm1.ConsProdutosCargaUSU_QTDABE.Value + Dm1.ClientBaixaCorteTecEstofQTDPRO.Value;
                          Dm1.ConsProdutosCarga.Post;

                        end;
                  end;
              Dm1.ClientBaixaCorteTecEstof.Next;

            end;


       end;

   end;

 end;

end.
