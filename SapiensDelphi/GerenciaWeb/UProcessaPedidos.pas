unit UProcessaPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, rxToolEdit, rxCurrEdit, DB;

type
  TFProcessaPedidos = class(TForm)
    btnProcessar: TBitBtn;
    LQtdArq: TLabel;
    lbl1: TLabel;
    dbg1: TDBGrid;
    EdQtdPed: TCurrencyEdit;
    EdTotal: TCurrencyEdit;
    dsDsLivre: TDataSource;
    dsDmConsE120PedChegou: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    mmo: TMemo;
    btnAtualizar: TBitBtn;
    btnBDescartar: TBitBtn;
    procedure btnProcessarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnBDescartarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProcessaPedidos: TFProcessaPedidos;

implementation

uses UDmFire, UDmFireRep;

{$R *.dfm}

procedure TFProcessaPedidos.btnAtualizarClick(Sender: TObject);
begin
  FProcessaPedidos.FormShow(Sender);
end;

procedure TFProcessaPedidos.btnBDescartarClick(Sender: TObject);
var vaObsPed,vaUsu120Ipd,vaE120Ipd,vaE120Ped : string;
    vnTotal : double;
    vnQtdPed : integer;
begin
  if not DmFire.ConsE120PedChegou.IsEmpty then
   begin//1
   if Application.MessageBox('Deseja realmente descartar o pedido?','Confirmação',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = mrYes then
         begin
               {try
                  //conecta com o banco
                  DmMySql.Banco.Connected := False;
                  DmMySql.Banco.Connected := True;
               except
                   Application.MessageBox('Não foi possível conectar ao WebService, verifique sua conexão com a internet!!','Atenção', MB_ICONWARNING+MB_OK);
                   Abort;
               end;}

               try
                   DmFireRep.ConsSql.Close;
                   DmFireRep.ConsSql.SQL.Clear;
                   DmFireRep.ConsSql.SQL.Add('DELETE FROM E120OBS WHERE NUMCON = :NUMCON');
                   DmFireRep.ConsSql.SQL.Add('                      AND CODREP = :CODREP');
                   DmFireRep.ConsSql.ParamByName('NUMCON').Value := DmFire.ConsE120PedChegouNUMCON.Value;
                   DmFireRep.ConsSql.ParamByName('CODREP').Value := DmFire.ConsE120PedChegouCODREP.Value;
                   DmFireRep.ConsSql.ExecSQL;

                   DmFireRep.ConsSql.Close;
                   DmFireRep.ConsSql.SQL.Clear;
                   DmFireRep.ConsSql.SQL.Add('DELETE FROM E120PED WHERE NUMCON = :NUMCON');
                   DmFireRep.ConsSql.SQL.Add('                      AND CODREP = :CODREP');
                   DmFireRep.ConsSql.ParamByName('NUMCON').Value := DmFire.ConsE120PedChegouNUMCON.Value;
                   DmFireRep.ConsSql.ParamByName('CODREP').Value := DmFire.ConsE120PedChegouCODREP.Value;
                   DmFireRep.ConsSql.ExecSQL;

                   DmFireRep.ConsSql.Close;
                   DmFireRep.ConsSql.SQL.Clear;
                   DmFireRep.ConsSql.SQL.Add('DELETE FROM E120IPD WHERE NUMCON = :NUMCON');
                   DmFireRep.ConsSql.SQL.Add('                      AND CODREP = :CODREP');
                   DmFireRep.ConsSql.ParamByName('NUMCON').Value := DmFire.ConsE120PedChegouNUMCON.Value;
                   DmFireRep.ConsSql.ParamByName('CODREP').Value := DmFire.ConsE120PedChegouCODREP.Value;
                   DmFireRep.ConsSql.ExecSQL;

                   DmFireRep.ConsSql.Close;
                   DmFireRep.ConsSql.SQL.Clear;
                   DmFireRep.ConsSql.SQL.Add('DELETE FROM USU120IPD WHERE NUMCON = :NUMCON');
                   DmFireRep.ConsSql.SQL.Add('                        AND CODREP = :CODREP');
                   DmFireRep.ConsSql.ParamByName('NUMCON').Value := DmFire.ConsE120PedChegouNUMCON.Value;
                   DmFireRep.ConsSql.ParamByName('CODREP').Value := DmFire.ConsE120PedChegouCODREP.Value;
                   DmFireRep.ConsSql.ExecSQL;
                   DmFireRep.ibtTransacao.CommitRetaining;

               except
                 Application.MessageBox('Não foi possível descartar o pedido na base web','Atenção', MB_ICONWARNING+MB_OK);
                 Abort;
               end;


             //apaga as observações do pedido
             vaObsPed := 'delete from e120obs where codemp = '+IntToStr(DmFire.ConsE120PedChegouCODEMP.AsInteger);
             vaObsPed := vaObsPed + ' and codfil =  '+IntToStr(DmFire.ConsE120PedChegouCODFIL.AsInteger);
             vaObsPed := vaObsPed + ' and numcon =  '+IntToStr(DmFire.ConsE120PedChegouNUMCON.AsInteger);
             vaObsPed := vaObsPed + ' and codrep =  '+IntToStr(DmFire.ConsE120PedChegouCODREP.AsInteger);
             DmFire.ConsSql.Close;
             DmFire.ConsSql.SQL.Clear;
             DmFire.ConsSql.SQL.Add(vaObsPed);
             DmFire.ConsSql.ExecSQL;

             vaObsPed := 'delete from e120obs_ocu where codemp = '+IntToStr(DmFire.ConsE120PedChegouCODEMP.AsInteger);
             vaObsPed := vaObsPed + ' and codfil =  '+IntToStr(DmFire.ConsE120PedChegouCODFIL.AsInteger);
             vaObsPed := vaObsPed + ' and numcon =  '+IntToStr(DmFire.ConsE120PedChegouNUMCON.AsInteger);
             vaObsPed := vaObsPed + ' and codrep =  '+IntToStr(DmFire.ConsE120PedChegouCODREP.AsInteger);
             DmFire.ConsSql.Close;
             DmFire.ConsSql.SQL.Clear;
             DmFire.ConsSql.SQL.Add(vaObsPed);
             DmFire.ConsSql.ExecSQL;

             //apaga todas as cores dos produtos
             vaUsu120Ipd := 'delete from usu120ipd where ';
             vaUsu120Ipd := vaUsu120Ipd + ' codemp = '+IntToStr(DmFire.ConsE120PedChegouCODEMP.AsInteger);
             vaUsu120Ipd := vaUsu120Ipd + ' and codfil = '+IntToStr(DmFire.ConsE120PedChegouCODFIL.AsInteger);
             vaUsu120Ipd := vaUsu120Ipd + ' and numcon = '+IntToStr(DmFire.ConsE120PedChegouNUMCON.AsInteger);
             vaUsu120Ipd := vaUsu120Ipd + ' and codrep = '+IntToStr(DmFire.ConsE120PedChegouCODREP.AsInteger);
             DmFire.ConsSql.Close;
             DmFire.ConsSql.SQL.Clear;
             DmFire.ConsSql.SQL.Add(vaUsu120Ipd);
             DmFire.ConsSql.ExecSQL;

             vaUsu120Ipd := 'delete from usu120ipd_ocu where ';
             vaUsu120Ipd := vaUsu120Ipd + ' codemp = '+IntToStr(DmFire.ConsE120PedChegouCODEMP.AsInteger);
             vaUsu120Ipd := vaUsu120Ipd + ' and codfil = '+IntToStr(DmFire.ConsE120PedChegouCODFIL.AsInteger);
             vaUsu120Ipd := vaUsu120Ipd + ' and numcon = '+IntToStr(DmFire.ConsE120PedChegouNUMCON.AsInteger);
             vaUsu120Ipd := vaUsu120Ipd + ' and codrep = '+IntToStr(DmFire.ConsE120PedChegouCODREP.AsInteger);
             DmFire.ConsSql.Close;
             DmFire.ConsSql.SQL.Clear;
             DmFire.ConsSql.SQL.Add(vaUsu120Ipd);
             DmFire.ConsSql.ExecSQL;


             //apaga todos os produtos do pedido
             vaE120Ipd := 'delete from e120ipd where ';
             vaE120Ipd := vaE120Ipd + ' codemp = '+IntToStr(DmFire.ConsE120PedChegouCODEMP.AsInteger);
             vaE120Ipd := vaE120Ipd + ' and codfil = '+IntToStr(DmFire.ConsE120PedChegouCODFIL.AsInteger);
             vaE120Ipd := vaE120Ipd + ' and numcon = '+IntToStr(DmFire.ConsE120PedChegouNUMCON.AsInteger);
             vaE120Ipd := vaE120Ipd + ' and codrep = '+IntToStr(DmFire.ConsE120PedChegouCODREP.AsInteger);
             DmFire.ConsSql.Close;
             DmFire.ConsSql.SQL.Clear;
             DmFire.ConsSql.SQL.Add(vaE120Ipd);
             DmFire.ConsSql.ExecSQL;

             vaE120Ipd := 'delete from e120ipd_ocu where ';
             vaE120Ipd := vaE120Ipd + ' codemp = '+IntToStr(DmFire.ConsE120PedChegouCODEMP.AsInteger);
             vaE120Ipd := vaE120Ipd + ' and codfil = '+IntToStr(DmFire.ConsE120PedChegouCODFIL.AsInteger);
             vaE120Ipd := vaE120Ipd + ' and numcon = '+IntToStr(DmFire.ConsE120PedChegouNUMCON.AsInteger);
             vaE120Ipd := vaE120Ipd + ' and codrep = '+IntToStr(DmFire.ConsE120PedChegouCODREP.AsInteger);
             DmFire.ConsSql.Close;
             DmFire.ConsSql.SQL.Clear;
             DmFire.ConsSql.SQL.Add(vaE120Ipd);
             DmFire.ConsSql.ExecSQL;


             //apaga od dados gerais do pedido
             vaE120Ped := 'delete from e120ped where ';
             vaE120Ped := vaE120Ped + ' codemp = '+IntToStr(DmFire.ConsE120PedChegouCODEMP.AsInteger);
             vaE120Ped := vaE120Ped + ' and codfil = '+IntToStr(DmFire.ConsE120PedChegouCODFIL.AsInteger);
             vaE120Ped := vaE120Ped + ' and numcon = '+IntToStr(DmFire.ConsE120PedChegouNUMCON.AsInteger);
             vaE120Ped := vaE120Ped + ' and codrep = '+IntToStr(DmFire.ConsE120PedChegouCODREP.AsInteger);
             DmFire.ConsSql.Close;
             DmFire.ConsSql.SQL.Clear;
             DmFire.ConsSql.SQL.Add(vaE120Ped);
             DmFire.ConsSql.ExecSQL;

             vaE120Ped := 'delete from e120ped_ocu where ';
             vaE120Ped := vaE120Ped + ' codemp = '+IntToStr(DmFire.ConsE120PedChegouCODEMP.AsInteger);
             vaE120Ped := vaE120Ped + ' and codfil = '+IntToStr(DmFire.ConsE120PedChegouCODFIL.AsInteger);
             vaE120Ped := vaE120Ped + ' and numcon = '+IntToStr(DmFire.ConsE120PedChegouNUMCON.AsInteger);
             vaE120Ped := vaE120Ped + ' and codrep = '+IntToStr(DmFire.ConsE120PedChegouCODREP.AsInteger);
             DmFire.ConsSql.Close;
             DmFire.ConsSql.SQL.Clear;
             DmFire.ConsSql.SQL.Add(vaE120Ped);
             DmFire.ConsSql.ExecSQL;

            DmFire.IBTransacao.CommitRetaining;

            cursor := Screen.Cursor;
            Screen.Cursor := crSQLWait;
            //atualiza a consulta dos pedidos que estao esperando confirmação
            DmFire.ConsE120PedChegou.Close;
            DmFire.ConsE120PedChegou.Open;


            vnTotal := 0;  //calcula o total de todos os pedidos
            vnQtdPed := 0;
            DmFire.ConsE120PedChegou.First;
            while not DmFire.ConsE120PedChegou.eof do
               begin
                 vnQtdPed := vnQtdPed + 1;
                 vnTotal := vnTotal + DmFire.ConsE120PedChegouTOTBRU.Value;
                 DmFire.ConsE120PedChegou.Next;
               end;
            DmFire.ConsE120PedChegou.First;
            EdTotal.Value := vnTotal;
            EdQtdPed.Value := vnQtdPed;

            Screen.Cursor := Cursor;

         end;
   end;//1
end;

procedure TFProcessaPedidos.btnProcessarClick(Sender: TObject);
var Cont : integer;
    vnTotal : double;
    vnQtdPed : integer;
    vaPedGravado,vaInConectadoMySql, vaTexto : string;
begin

    mmo.Clear;

   cursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;


    vaTexto := 'Consultando produtos dos pedidos..';
    mmo.Lines.Add(vaTexto);
    DmFireRep.E120IpdRec.Close;
    DmFireRep.E120IpdRec.Open;
    DmFireRep.E120IpdRec.First;
    while not DmFireRep.E120IpdRec.Eof do
       begin
          DmFire.CadE120Ipd.Close;
          DmFire.CadE120Ipd.ParamByName('codemp').Value := DmFireRep.E120IpdRecCODEMP.Value;
          DmFire.CadE120Ipd.ParamByName('codfil').Value := DmFireRep.E120IpdRecCODFIL.Value;
          DmFire.CadE120Ipd.ParamByName('numcon').Value := DmFireRep.E120IpdRecNUMCON.Value;
          DmFire.CadE120Ipd.ParamByName('codrep').Value := DmFireRep.E120IpdRecCODREP.Value;
          DmFire.CadE120Ipd.ParamByName('seqipd').Value := DmFireRep.E120IpdRecSEQIPD.Value;
          DmFire.CadE120Ipd.Open;
          if DmFire.CadE120Ipd.IsEmpty then
            begin
               vaTexto := 'Inserindo produto do pedido nº controle: '+IntToStr(DmFireRep.E120IpdRecNUMCON.Value)+' Seq.:'+IntToStr(DmFireRep.E120IpdRecSEQIPD.Value);
               mmo.Lines.Add(vaTexto);
               DmFire.CadE120Ipd.Open;
               DmFire.CadE120Ipd.Insert;
               DmFire.CadE120IpdCODEMP.Value := DmFireRep.E120IpdRecCODEMP.Value;
               DmFire.CadE120IpdCODFIL.Value := DmFireRep.E120IpdRecCODFIL.Value;
               DmFire.CadE120IpdNUMCON.Value := DmFireRep.E120IpdRecNUMCON.Value;
               DmFire.CadE120IpdCODREP.Value := DmFireRep.E120IpdRecCODREP.Value;
               DmFire.CadE120IpdSEQIPD.Value := DmFireRep.E120IpdRecSEQIPD.Value;
               DmFire.CadE120IpdNUMPED.Value := 0;
               //DmFire.CadE120IpdTNSPRO.Value := DmFireRep.E120IpdRecTNSPRO.Value;
               DmFire.CadE120IpdTNSPRO.Value := '90100';
               DmFire.CadE120IpdCODPRO.Value := DmFireRep.E120IpdRecCODPRO.Value;
               DmFire.CadE120IpdCODDER.Value := DmFireRep.E120IpdRecCODDER.Value;
               DmFire.CadE120IpdCODFAM.Value := DmFireRep.E120IpdRecCODFAM.Value;
               DmFire.CadE120IpdCODDEP.Value := DmFireRep.E120IpdRecCODDEP.Value;
               DmFire.CadE120IpdQTDPED.Value := DmFireRep.E120IpdRecQTDPED.Value;
               DmFire.CadE120IpdCODTPR.Value := DmFireRep.E120IpdRecCODTPR.Value;
               DmFire.CadE120IpdPREUNI.Value := DmFireRep.E120IpdRecPREUNI.Value;
               DmFire.CadE120IpdVLRBRU.Value := DmFireRep.E120IpdRecVLRBRU.Value;
               DmFire.CadE120IpdSITIPD.Value := DmFireRep.E120IpdRecSITIPD.Value;
               DmFire.CadE120IpdTOTDESC.Value := DmFireRep.E120IpdRecTOTDESC.Value;
               DmFire.CadE120IpdVLRORI.Value := DmFireRep.E120IpdRecVLRORI.Value;
               DmFire.CadE120Ipd.Post;
               DmFire.IBTransacao.CommitRetaining;
            end;

         Application.ProcessMessages;
         DmFireRep.E120IpdRec.Next;
       end;

     Application.ProcessMessages;

   vaTexto := 'Consultando observações.. ';
   mmo.Lines.Add(vaTexto);
   DmFireRep.E120ObsRec.Close;
   DmFireRep.E120ObsRec.Open;
   DmFireRep.E120ObsRec.First;
   while not DmFireRep.E120ObsRec.Eof do
      begin
        DmFire.CadE120Obs.Close;
        DmFire.CadE120Obs.ParamByName('codemp').Value := DmFireRep.E120ObsRecCODEMP.Value;
        DmFire.CadE120Obs.ParamByName('codfil').Value := DmFireRep.E120ObsRecCODFIL.Value;
        DmFire.CadE120Obs.ParamByName('numcon').Value := DmFireRep.E120ObsRecNUMCON.Value;
        DmFire.CadE120Obs.ParamByName('codrep').Value := DmFireRep.E120ObsRecCODREP.Value;
        DmFire.CadE120Obs.ParamByName('seqobs').Value := DmFireRep.E120ObsRecSEQOBS.Value;
        DmFire.CadE120Obs.Open;
        if DmFire.CadE120Obs.IsEmpty then
          begin
             vaTexto := 'Inserindo observação do pedido nº controle: '+ IntToStr(DmFireRep.E120ObsRecNUMCON.Value);
             mmo.Lines.Add(vaTexto);
             DmFire.CadE120Obs.Open;
             DmFire.CadE120Obs.Insert;
             DmFire.CadE120ObsCODEMP.Value := DmFireRep.E120ObsRecCODEMP.Value;
             DmFire.CadE120ObsCODFIL.Value := DmFireRep.E120ObsRecCODFIL.Value;
             DmFire.CadE120ObsNUMCON.Value := DmFireRep.E120ObsRecNUMCON.Value;
             DmFire.CadE120ObsCODREP.Value := DmFireRep.E120ObsRecCODREP.Value;
             DmFire.CadE120ObsNUMPED.Value := 0;
             DmFire.CadE120ObsSEQOBS.Value := DmFireRep.E120ObsRecSEQOBS.Value;
             DmFire.CadE120ObsOBSPED.Value := DmFireRep.E120ObsRecOBSPED.Value;
             DmFire.CadE120ObsSITOBS.Value := DmFireRep.E120ObsRecSITOBS.Value;
             DmFire.CadE120ObsOBSUSU.AsInteger := DmFireRep.E120ObsRecOBSUSU.Value;
             DmFire.CadE120ObsOBSDAT.Value := DmFireRep.E120ObsRecOBSDAT.Value;
             DmFire.CadE120Obs.Post;

             DmFire.IBTransacao.CommitRetaining;
          end;

        DmFireRep.E120ObsRec.Next;
      end;

    mmo.Lines.Add('Consultando dados gerais..');
    DmFireRep.E120PedRec.Close;
    DmFireRep.E120PedRec.Open;
    DmFireRep.E120PedRec.First;
    while not DmFireRep.E120PedRec.Eof do
      begin
        DmFire.CadE120Ped.Close;
        DmFire.CadE120Ped.ParamByName('codemp').Value := DmFireRep.E120PedRecCODEMP.Value;
        DmFire.CadE120Ped.ParamByName('codfil').Value := DmFireRep.E120PedRecCODFIL.Value;
        DmFire.CadE120Ped.ParamByName('numcon').Value := DmFireRep.E120PedRecNUMCON.Value;
        DmFire.CadE120Ped.ParamByName('codrep').Value := DmFireRep.E120PedRecCODREP.Value;
        DmFire.CadE120Ped.Open;
        if DmFire.CadE120Ped.IsEmpty then
          begin
             vaPedGravado := 'N';
             try
               vaTexto := 'Gravando dados gerais, nº controle: '+IntToStr(DmFireRep.E120PedRecNUMCON.Value);
               mmo.Lines.Add(vaTexto);
               DmFire.CadE120Ped.Open;
               DmFire.CadE120Ped.Insert;
               DmFire.CadE120PedCODEMP.Value := DmFireRep.E120PedRecCODEMP.Value;
               DmFire.CadE120PedCODFIL.Value := DmFireRep.E120PedRecCODFIL.Value;
               DmFire.CadE120PedNUMCON.Value := DmFireRep.E120PedRecNUMCON.Value;
               DmFire.CadE120PedCODREP.Value := DmFireRep.E120PedRecCODREP.Value;
               DmFire.CadE120PedNUMPED.Value := 0;
               DmFire.CadE120PedCODCLI.Value := DmFireRep.E120PedRecCODCLI.Value;
               DmFire.CadE120PedTNSPRO.Value := DmFireRep.E120PedRecTNSPRO.Value;
               DmFire.CadE120PedDATEMI.AsDateTime := DmFireRep.E120PedRecDATEMI.Value;
               DmFire.CadE120PedCODCPG.Value := DmFireRep.E120PedRecCODCPG.Value;;
               DmFire.CadE120PedSITPED.Value := DmFireRep.E120PedRecSITPED.Value;
               DmFire.CadE120PedUSUGER.Value := DmFireRep.E120PedRecUSUGER.Value;
               DmFire.CadE120PedDATGER.Value := DmFireRep.E120PedRecDATGER.Value;
               DmFire.CadE120PedPEDCON.Value := 'N';
               DmFire.CadE120PedDATENV.Value := DmFireRep.E120PedRecDATENV.Value;
               DmFire.CadE120PedSITCON.Value := 'E'; //E-espera, L-liberado, R-rejeitado
               DmFire.CadE120Ped.Post;
               DmFire.IBTransacao.CommitRetaining;
               vaPedGravado := 'S';
             except
               vaPedGravado := 'N';
             end;

            Application.ProcessMessages;

             if vaPedGravado = 'S' then
                begin
                   vaTexto := 'Gravando dados gerais base web, nº controle: '+IntToStr(DmFireRep.E120PedRecNUMCON.Value)+'  para pedido processado!';
                   mmo.Lines.Add(vaTexto);
                   DmFireRep.ConsSql.Close;
                   DmFireRep.ConsSql.SQL.Clear;
                   DmFireRep.ConsSql.SQL.Add('UPDATE E120PED SET PEDPRO = ''S''');
                   DmFireRep.ConsSql.SQL.Add(' WHERE');
                   DmFireRep.ConsSql.SQL.Add(' CODEMP = :CODEMP AND');
                   DmFireRep.ConsSql.SQL.Add(' CODFIL = :CODFIL AND');
                   DmFireRep.ConsSql.SQL.Add(' NUMCON = :NUMCON AND');
                   DmFireRep.ConsSql.SQL.Add(' CODREP = :CODREP');
                   DmFireRep.ConsSql.ParamByName('CODEMP').Value := DmFireRep.E120PedRecCODEMP.Value;
                   DmFireRep.ConsSql.ParamByName('CODFIL').Value := DmFireRep.E120PedRecCODFIL.Value;
                   DmFireRep.ConsSql.ParamByName('NUMCON').Value := DmFireRep.E120PedRecNUMCON.Value;
                   DmFireRep.ConsSql.ParamByName('CODREP').Value := DmFireRep.E120PedRecCODREP.Value;
                   DmFireRep.ConsSql.ExecSQL;
                end;
          end;

        DmFireRep.E120PedRec.Next;
        Application.ProcessMessages;
      end;


     Application.ProcessMessages;
     DmFireRep.ConsSql.Close;
     DmFireRep.ConsSql.SQL.Clear;
     DmFireRep.ConsSql.SQL.Add('SELECT NUMCON FROM E120PED');
     DmFireRep.ConsSql.SQL.Add(' WHERE');
     DmFireRep.ConsSql.SQL.Add(' PEDPRO = ''N''');
     DmFireRep.ConsSql.Open;
     DmFireRep.ConsSql.Last;
     DmFireRep.ConsSql.First;
     Cont := DmFireRep.ConsSql.RecordCount;

     LQtdArq.Caption := IntToStr(Cont);

   //atualiza a consulta dos pedidos que estao esperando confirmação
   DmFire.ConsE120PedChegou.Close;
   DmFire.ConsE120PedChegou.Open;

  vaTexto := 'Finalizando processamento..';
  mmo.Lines.Add(vaTexto);

   //DBGrid2.DataSource := DsLivre;
   vnTotal := 0;  //calcula o total de todos os pedidos
   vnQtdPed := 0;
   DmFire.ConsE120PedChegou.First;
   while not DmFire.ConsE120PedChegou.eof do
      begin
        vnQtdPed := vnQtdPed + 1;
        vnTotal := vnTotal + DmFire.ConsE120PedChegouTOTBRU.Value;
        DmFire.ConsE120PedChegou.Next;
      end;
   DmFire.ConsE120PedChegou.First;
   EdTotal.Value := vnTotal;
   EdQtdPed.Value := vnQtdPed;
   DmFireRep.ibtTransacao.CommitRetaining;
   DmFire.IBTransacao.CommitRetaining;
   //DBGrid2.DataSource := DsDmConsE120PedChegou;
   Screen.Cursor := Cursor;
   vaTexto := 'Processamento realizado com sucesso!!';
   mmo.Lines.Add(vaTexto);
   btnProcessar.Enabled := false;
end;

procedure TFProcessaPedidos.FormShow(Sender: TObject);
var Cont : integer;
    vnTotal : double;
    vnQtdPed : integer;
begin
    mmo.Clear;

         DmFireRep.ConsSql.Close;
         DmFireRep.ConsSql.SQL.Clear;
         DmFireRep.ConsSql.SQL.Add('SELECT NUMCON FROM E120PED');
         DmFireRep.ConsSql.SQL.Add(' WHERE');
         DmFireRep.ConsSql.SQL.Add(' PEDPRO = ''N''');
         DmFireRep.ConsSql.Open;
         DmFireRep.ConsSql.Last;
         DmFireRep.ConsSql.First;
         Cont := DmFireRep.ConsSql.RecordCount;

         LQtdArq.Caption := IntToStr(Cont);
         if Cont > 0 then
            btnProcessar.Enabled := True
         else
            btnProcessar.Enabled := false;

         DmFire.ConsE120PedChegou.Close;
         DmFire.ConsE120PedChegou.Open;


         vnTotal := 0;  //calcula o total de todos os pedidos
         vnQtdPed := 0;
         DmFire.ConsE120PedChegou.First;
         while not DmFire.ConsE120PedChegou.eof do
            begin
              vnQtdPed := vnQtdPed + 1;
              vnTotal := vnTotal + DmFire.ConsE120PedChegouTOTBRU.Value;
              DmFire.ConsE120PedChegou.Next;
            end;

         DmFire.ConsE120PedChegou.First;

         EdTotal.Value := vnTotal;
         EdQtdPed.Value := vnQtdPed;

end;

end.
