unit UPedidoSysRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DB, DBCtrls, Buttons;

type
  TFPedidoSysRep = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    LDsCli1: TLabel;
    LDsCli2: TLabel;
    LNumCon: TLabel;
    LDesCpg: TLabel;
    LDatEmi: TLabel;
    LVlrTot: TLabel;
    LCodRep: TLabel;
    LNomRep: TLabel;
    LApeRep: TLabel;
    DsConsE120Ipd: TDataSource;
    Label1: TLabel;
    Label8: TLabel;
    DBDesPro: TDBText;
    DBCodDer: TDBText;
    btnDadosGerais: TBitBtn;
    Panel11: TPanel;
    Panel12: TPanel;
    BExcProd: TBitBtn;
    BAltProd: TBitBtn;
    BAddProd: TBitBtn;
    DsLivre: TDataSource;
    btnLiberarDesc: TBitBtn;
    procedure btnDadosGeraisClick(Sender: TObject);
    procedure BAddProdClick(Sender: TObject);
    procedure BAltProdClick(Sender: TObject);
    procedure BExcProdClick(Sender: TObject);
    procedure btnLiberarDescClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPedidoSysRep: TFPedidoSysRep;

implementation

uses UDmFire, UAltDadosGeraisPedSysRep, UAddProPedSysRep, UAddCorProdPedSysRep,
  UPrincipal;

{$R *.dfm}

procedure TFPedidoSysRep.BAddProdClick(Sender: TObject);
var vnTotPed : double;
begin
  FAddProPedSysRep := TFAddProPedSysRep.Create(Self);
  FAddProPedSysRep.vaStatus := 'INSERINDO';
  FAddProPedSysRep.ShowModal;
  FreeAndNil(FAddProPedSysRep);

  //atualiza a consulta dos produtos
  DmFire.ConsE120Ipd.Close;
  DmFire.ConsE120Ipd.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
  DmFire.ConsE120Ipd.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
  DmFire.ConsE120Ipd.ParamByName('numcon').Value := DmFire.ConsE120PedChegouNUMCON.Value;
  DmFire.ConsE120Ipd.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
  DmFire.ConsE120Ipd.Open;
  DBGrid2.DataSource := DsLivre;
  vnTotPed := 0;
  DmFire.ConsE120Ipd.First;
  while not DmFire.ConsE120Ipd.Eof do
     begin
       vnTotPed := vnTotPed + DmFire.ConsE120IpdVLRBRU.Value;
       DmFire.ConsE120Ipd.Next;
     end;
  LVlrTot.Caption := formatcurr('###,###,##0.00',vnTotPed);
  DBGrid2.DataSource := DsConsE120Ipd;

end;

procedure TFPedidoSysRep.BAltProdClick(Sender: TObject);
var vnTotPed : double;
begin

if not DmFire.ConsE120Ipd.IsEmpty then
   begin
      DmFire.CadE120Ipd.Close;
      DmFire.CadE120Ipd.ParamByName('codemp').Value := DmFire.ConsE120IpdCODEMP.Value;
      DmFire.CadE120Ipd.ParamByName('codfil').Value := DmFire.ConsE120IpdCODFIL.Value;
      DmFire.CadE120Ipd.ParamByName('numcon').Value := DmFire.ConsE120IpdNUMCON.Value;
      DmFire.CadE120Ipd.ParamByName('codrep').Value := DmFire.ConsE120IpdCODREP.Value;
      DmFire.CadE120Ipd.ParamByName('seqipd').Value := DmFire.ConsE120IpdSEQIPD.Value;
      DmFire.CadE120Ipd.Open;
      if not DmFire.CadE120Ipd.IsEmpty then
         begin
            DmFire.CadE120Ipd.Edit;
            FAddProPedSysRep := TFAddProPedSysRep.Create(Self);
            FAddProPedSysRep.vaStatus := 'ALTERANDO';
            FAddProPedSysRep.EdCodPro.Text := DmFire.ConsE120IpdCODPRO.Value;
            FAddProPedSysRep.EdCodProExit(Sender);
            FAddProPedSysRep.EdCodDer.Text := DmFire.ConsE120IpdCODDER.Value;
            FAddProPedSysRep.EdQtdPed.Text := IntToStr(DmFire.ConsE120IpdQTDPED.Value);
            FAddProPedSysRep.EdCodTpr.Text := DmFire.ConsE120IpdCODTPR.Value;
            FAddProPedSysRep.EdCodTprExit(Sender);
            FAddProPedSysRep.Desc1.Value := DmFire.ConsE120IpdTOTDESC.Value;
            FAddProPedSysRep.EdTotDesc.Value := DmFire.ConsE120IpdTOTDESC.Value;
            FAddProPedSysRep.EdVlrOri.Value := DmFire.ConsE120IpdVLRORI.Value;
            FAddProPedSysRep.EdPreUni.Value := DmFire.ConsE120IpdPREUNI.Value;
            FAddProPedSysRep.EdCodPro.Enabled := false;
            FAddProPedSysRep.EdCodDer.Enabled := false;
            FAddProPedSysRep.ShowModal;
            FreeAndNil(FAddProPedSysRep);

            //atualiza a consulta dos produtos
            DmFire.ConsE120Ipd.Close;
            DmFire.ConsE120Ipd.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
            DmFire.ConsE120Ipd.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
            DmFire.ConsE120Ipd.ParamByName('numcon').Value := DmFire.ConsE120PedChegouNUMCON.Value;
            DmFire.ConsE120Ipd.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
            DmFire.ConsE120Ipd.Open;
            DBGrid2.DataSource := DsLivre;
            vnTotPed := 0;
            DmFire.ConsE120Ipd.First;
            while not DmFire.ConsE120Ipd.Eof do
               begin
                 vnTotPed := vnTotPed + DmFire.ConsE120IpdVLRBRU.Value;
                 DmFire.ConsE120Ipd.Next;
               end;
            LVlrTot.Caption := formatcurr('###,###,##0.00',vnTotPed);
            DBGrid2.DataSource := DsConsE120Ipd;

         end;
   end;

end;

procedure TFPedidoSysRep.BExcProdClick(Sender: TObject);
var vnTotPed : double;
begin
    if not DmFire.ConsE120Ipd.IsEmpty then
       begin//0
         if Application.MessageBox('Deseja realmente excluir o registro?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
            begin//1
              DmFire.CadE120Ipd.Close;
              DmFire.CadE120Ipd.ParamByName('codemp').Value := DmFire.ConsE120IpdCODEMP.Value;
              DmFire.CadE120Ipd.ParamByName('codfil').Value := DmFire.ConsE120IpdCODFIL.Value;
              DmFire.CadE120Ipd.ParamByName('numcon').Value := DmFire.ConsE120IpdNUMCON.Value;
              DmFire.CadE120Ipd.ParamByName('codrep').Value := DmFire.ConsE120IpdCODREP.Value;
              DmFire.CadE120Ipd.ParamByName('seqipd').Value := DmFire.ConsE120IpdSEQIPD.Value;
              DmFire.CadE120Ipd.Open;
              if not DmFire.CadE120Ipd.IsEmpty then
                 begin//2
                   DmFire.CadE120Ipd.Delete;
                   DmFire.IBTransacao.CommitRetaining;

                   //atualiza a consulta dos produtos
                    DmFire.ConsE120Ipd.Close;
                    DmFire.ConsE120Ipd.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
                    DmFire.ConsE120Ipd.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
                    DmFire.ConsE120Ipd.ParamByName('numcon').Value := DmFire.ConsE120PedChegouNUMCON.Value;
                    DmFire.ConsE120Ipd.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
                    DmFire.ConsE120Ipd.Open;
                    DBGrid2.DataSource := DsLivre;
                    vnTotPed := 0;
                    DmFire.ConsE120Ipd.First;
                    while not DmFire.ConsE120Ipd.Eof do
                       begin//3
                         vnTotPed := vnTotPed + DmFire.ConsE120IpdVLRBRU.Value;
                         DmFire.ConsE120Ipd.Next;
                       end;//3
                    LVlrTot.Caption := formatcurr('###,###,##0.00',vnTotPed);
                    DBGrid2.DataSource := DsConsE120Ipd;

                 end;//2

            end;//1
       end;//0

end;

procedure TFPedidoSysRep.btnDadosGeraisClick(Sender: TObject);
begin
    FAltDadosGeraisPedSysRep := TFAltDadosGeraisPedSysRep.Create(Self);
    FAltDadosGeraisPedSysRep.EdCodCpg.Text := DmFire.ConsE120PedChegouCODCPG.Value;
    FAltDadosGeraisPedSysRep.LDsCodCpg.Caption := LDesCpg.Caption;
    FAltDadosGeraisPedSysRep.edtDatEmi.Date := DmFire.ConsE120PedChegouDATEMI.Value;
    FAltDadosGeraisPedSysRep.ShowModal;
    FreeAndNil(FAltDadosGeraisPedSysRep);
end;

procedure TFPedidoSysRep.btnLiberarDescClick(Sender: TObject);
begin
  if not DmFire.ConsE120Ipd.IsEmpty then
   begin
      if Application.MessageBox('Liberar Desconto?','Confirmação',+MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = mrYes then
         begin
            DmFire.CadE120Ipd.Close;
            DmFire.CadE120Ipd.ParamByName('codemp').Value := DmFire.ConsE120IpdCODEMP.Value;
            DmFire.CadE120Ipd.ParamByName('codfil').Value := DmFire.ConsE120IpdCODFIL.Value;
            DmFire.CadE120Ipd.ParamByName('numcon').Value := DmFire.ConsE120IpdNUMCON.Value;
            DmFire.CadE120Ipd.ParamByName('codrep').Value := DmFire.ConsE120IpdCODREP.Value;
            DmFire.CadE120Ipd.ParamByName('seqipd').Value := DmFire.ConsE120IpdSEQIPD.Value;
            DmFire.CadE120Ipd.Open;
            if not DmFire.CadE120Ipd.IsEmpty then
               begin
                  DmFire.CadE120Ipd.Edit;
                  DmFire.CadE120IpdDESCAPR.Value := 'S';
                  DmFire.CadE120Ipd.Post;
                  DmFire.IBTransacao.CommitRetaining;

                  DmFire.ConsE120Ipd.Close;
                  DmFire.ConsE120Ipd.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
                  DmFire.ConsE120Ipd.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
                  DmFire.ConsE120Ipd.ParamByName('numcon').Value := DmFire.ConsE120PedChegouNUMCON.Value;
                  DmFire.ConsE120Ipd.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
                  DmFire.ConsE120Ipd.Open;
               end;
         end;
   end;
end;

procedure TFPedidoSysRep.FormShow(Sender: TObject);
begin
   // btnLiberarDesc.Enabled := FPrincipal.cd_usuario in [3,9,42];

   if DmFire.ConsE120PedChegouSITCON.Value = 'L' then
      begin
        BAltProd.Enabled := false;
        BExcProd.Enabled := False;
        BAddProd.Enabled := false;

        btnDadosGerais.Enabled := false;

        btnLiberarDesc.Enabled := False;
      end;
end;

end.
