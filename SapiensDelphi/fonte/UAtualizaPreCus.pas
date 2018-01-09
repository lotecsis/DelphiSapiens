unit UAtualizaPreCus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, DB, ADODB,
  DBClient, Provider;

type
  TFAtualizaPreCus = class(TForm)
    DBGrid: TDBGrid;
    Panel1: TPanel;
    RbProdSCus: TRadioButton;
    RbProdCCus: TRadioButton;
    BMostrar: TBitBtn;
    BAtualizar: TBitBtn;
    BImprimir: TBitBtn;
    BSair: TBitBtn;
    ClientProdSemCus: TDataSource;
    CadE075Der: TADOQuery;
    CadE075DerCODEMP: TIntegerField;
    CadE075DerCODPRO: TStringField;
    CadE075DerCODDER: TStringField;
    CadE075DerDESDER: TStringField;
    CadE075DerDESCPL: TStringField;
    CadE075DerCODBAR: TBCDField;
    CadE075DerCODAGR: TIntegerField;
    CadE075DerCODAGT: TStringField;
    CadE075DerSEQCMD: TIntegerField;
    CadE075DerDATVAL: TDateTimeField;
    CadE075DerDIAVLT: TIntegerField;
    CadE075DerTIPCN2: TStringField;
    CadE075DerVLRCN2: TBCDField;
    CadE075DerTIPCN3: TStringField;
    CadE075DerVLRCN3: TBCDField;
    CadE075DerPRECUS: TBCDField;
    CadE075DerDATCUS: TDateTimeField;
    CadE075DerPREMED: TBCDField;
    CadE075DerDATMED: TDateTimeField;
    CadE075DerPREUEN: TBCDField;
    CadE075DerDATUEN: TDateTimeField;
    CadE075DerPREREP: TBCDField;
    CadE075DerDATREP: TDateTimeField;
    CadE075DerDIAREP: TIntegerField;
    CadE075DerPESBRU: TBCDField;
    CadE075DerPESLIQ: TBCDField;
    CadE075DerTOLPES: TBCDField;
    CadE075DerVOLDER: TBCDField;
    CadE075DerPERPRD: TBCDField;
    CadE075DerQTDIQL: TBCDField;
    CadE075DerQTDCIC: TBCDField;
    CadE075DerQTDPRD: TBCDField;
    CadE075DerPREUIS: TBCDField;
    CadE075DerPERICS: TBCDField;
    CadE075DerCODEMB: TIntegerField;
    CadE075DerQTDEMB: TIntegerField;
    CadE075DerCODROT: TStringField;
    CadE075DerCODROY: TIntegerField;
    CadE075DerBXAORP: TStringField;
    CadE075DerSERCCL: TStringField;
    CadE075DerNUMCCL: TStringField;
    CadE075DerCURABC: TStringField;
    CadE075DerCURAB2: TStringField;
    CadE075DerCURAB3: TStringField;
    CadE075DerCURAB4: TStringField;
    CadE075DerCODREG: TIntegerField;
    CadE075DerSITDER: TStringField;
    CadE075DerCODMOT: TIntegerField;
    CadE075DerCTRLOT: TStringField;
    CadE075DerCTRSEP: TStringField;
    CadE075DerCTRVLD: TStringField;
    CadE075DerDEPPAD: TStringField;
    CadE075DerDEPPAA: TStringField;
    CadE075DerINDPCE: TStringField;
    CadE075DerINDPCR: TStringField;
    CadE075DerINDKAN: TStringField;
    CadE075DerCODREF: TStringField;
    CadE075DerCODPIN: TStringField;
    CadE075DerNOTFOR: TBCDField;
    CadE075DerORICUS: TStringField;
    CadE075DerINFCUS: TStringField;
    CadE075DerHORCUS: TIntegerField;
    CadE075DerUSUGER: TBCDField;
    CadE075DerHORGER: TIntegerField;
    CadE075DerDATGER: TDateTimeField;
    CadE075DerUSUALT: TBCDField;
    CadE075DerHORALT: TIntegerField;
    CadE075DerDATALT: TDateTimeField;
    CadE075DerCODAGE: TStringField;
    CadE075DerCODBA2: TStringField;
    CadE075DerINDEXP: TIntegerField;
    CadE075DerDATPAL: TDateTimeField;
    CadE075DerHORPAL: TIntegerField;
    CadE075DerEXPWMS: TIntegerField;
    CadE075DerSERMVP: TStringField;
    CadE075DerAPRDFT: TStringField;
    CadE075DerCODAEM: TStringField;
    CadE075DerCODPDV: TIntegerField;
    CadE075DerINDGEN: TStringField;
    CadE075DerQTDMLT: TBCDField;
    CadE075DerQTDMIN: TBCDField;
    CadE075DerQTDMAX: TBCDField;
    CadE075DerCODEND: TStringField;
    CadE075DerROTANX: TIntegerField;
    CadE075DerNUMANX: TBCDField;
    CadE075DerINDPCQ: TStringField;
    CadE075DerVLRCID: TBCDField;
    CadE075DerUSU_CORUNI: TBCDField;
    CadE075DerUSU_CMP1BB: TBCDField;
    CadE075DerUSU_CMP1AE: TBCDField;
    CadE075DerUSU_CMP2BB: TBCDField;
    CadE075DerUSU_CMP2EN: TBCDField;
    CadE075DerUSU_MEDESP: TStringField;
    procedure BMostrarClick(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure BAtualizarClick(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure RbProdSCusClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAtualizaPreCus: TFAtualizaPreCus;

implementation

uses UDm, UDm1, UAuxPreCus, UPrincipal;

{$R *.dfm}

procedure TFAtualizaPreCus.BMostrarClick(Sender: TObject);
begin
    if RbProdSCus.Checked = true then
       begin//1
          dm1.ConsProdSemCus.Close;
          dm1.ConsProdSemCus.SQL.Clear;
          dm1.ConsProdSemCus.SQL.Add('select e075pro.despro, e075der.* from e075der');
          dm1.ConsProdSemCus.SQL.Add('inner join e075pro on e075pro.codemp = e075der.codemp and');
          dm1.ConsProdSemCus.SQL.Add('e075pro.codpro = e075der.codpro');
          dm1.ConsProdSemCus.SQL.Add('where');
          dm1.ConsProdSemCus.SQL.Add('e075pro.tippro = ''P'' and');
          dm1.ConsProdSemCus.SQL.Add('e075der.precus = 0');
          dm1.ConsProdSemCus.SQL.Add('order by e075pro.despro');
          dm1.ConsProdSemCus.Open;
          while not dm1.ConsProdSemCus.Eof do
             begin//2
               CadE075Der.Close;
               CadE075Der.Parameters.ParamByName('codemp').Value := dm1.ConsProdSemCusCODEMP.Value;
               CadE075Der.Parameters.ParamByName('codpro').Value := dm1.ConsProdSemCusCODPRO.Value;
               CadE075Der.Parameters.ParamByName('codder').Value := dm1.ConsProdSemCusCODDER.Value;
               CadE075Der.Open;
               CadE075Der.Edit;
               CadE075DerPRECUS.Value := 1;
               CadE075Der.Post;

               dm1.ConsProdSemCus.Next;
             end;//2
       end//1
    else if RbProdCCus.Checked = true then
            begin//2
              dm1.ConsProdSemCus.Close;
              dm1.ConsProdSemCus.SQL.Clear;
              dm1.ConsProdSemCus.SQL.Add('select e075pro.despro, e075der.* from e075der');
              dm1.ConsProdSemCus.SQL.Add('inner join e075pro on e075pro.codemp = e075der.codemp and');
              dm1.ConsProdSemCus.SQL.Add('e075pro.codpro = e075der.codpro');
              dm1.ConsProdSemCus.SQL.Add('where');
              dm1.ConsProdSemCus.SQL.Add('e075pro.tippro = ''P'' and');
              dm1.ConsProdSemCus.SQL.Add('e075der.precus = 1');
              dm1.ConsProdSemCus.SQL.Add('order by e075pro.despro');
              dm1.ConsProdSemCus.Open;

            end;//2

end;

procedure TFAtualizaPreCus.BSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFAtualizaPreCus.BAtualizarClick(Sender: TObject);
begin

      if (not dm1.ConsProdSemCus.IsEmpty) and (RbProdCCus.Checked = true) then
         begin
           FAuxPreCus := TFAuxPreCus.Create(Self);
           FAuxPreCus.LCodPro.Caption := dm1.ConsProdSemCusCODPRO.Value;
           FAuxPreCus.LDesPro.Caption := dm1.ConsProdSemCusDESPRO.Value;
           FAuxPreCus.LDesDer.Caption := dm1.ConsProdSemCusDESDER.Value;
           FAuxPreCus.ShowModal;
           FreeAndNil(FAuxPreCus);
         end;
      
end;

procedure TFAtualizaPreCus.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
      begin
      if (not dm1.ConsProdSemCus.IsEmpty) and (RbProdCCus.Checked = true) then
         begin
           FAuxPreCus := TFAuxPreCus.Create(Self);
           FAuxPreCus.LCodPro.Caption := dm1.ConsProdSemCusCODPRO.Value;
           FAuxPreCus.LDesPro.Caption := dm1.ConsProdSemCusDESPRO.Value;
           FAuxPreCus.LDesDer.Caption := dm1.ConsProdSemCusDESDER.Value;
           FAuxPreCus.ShowModal;
           FreeAndNil(FAuxPreCus);
         end;
      end;
end;

procedure TFAtualizaPreCus.RbProdSCusClick(Sender: TObject);
begin
dm1.ConsProdSemCus.Close;
end;

procedure TFAtualizaPreCus.DBGridDblClick(Sender: TObject);
begin
       if (not dm1.ConsProdSemCus.IsEmpty) and (RbProdCCus.Checked = true) then
         begin
           FAuxPreCus := TFAuxPreCus.Create(Self);
           FAuxPreCus.LCodPro.Caption := dm1.ConsProdSemCusCODPRO.Value;
           FAuxPreCus.LDesPro.Caption := dm1.ConsProdSemCusDESPRO.Value;
           FAuxPreCus.LDesDer.Caption := dm1.ConsProdSemCusDESDER.Value;
           FAuxPreCus.ShowModal;
           FreeAndNil(FAuxPreCus);
         end;
end;

procedure TFAtualizaPreCus.BImprimirClick(Sender: TObject);
begin
if not dm1.ConsProdSemCus.IsEmpty then
  begin
   // QrAtualizaPreCus.Preview;
  end;
end;

procedure TFAtualizaPreCus.FormShow(Sender: TObject);
begin
  FPrincipal.GravaTela(FAtualizaPreCus.Name,FPrincipal.vnCodCon);
end;

procedure TFAtualizaPreCus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FPrincipal.ApagaTela(FAtualizaPreCus.Name,FPrincipal.vnCodCon);
end;

end.
