unit UAddCorProdPedSysRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TFAddCorProdPedSysRep = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdTipCmb: TCurrencyEdit;
    EdCor001: TCurrencyEdit;
    EdCor002: TCurrencyEdit;
    EdQtdPed: TCurrencyEdit;
    BConfirma: TBitBtn;
    Usu120IpdSeqIte: TIBQuery;
    Usu120IpdSeqIteSEQITE: TIntegerField;
    ValidaCor: TADOQuery;
    ValidaCorCODPRO: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BConfirmaClick(Sender: TObject);
    procedure EdCor001Exit(Sender: TObject);
    procedure EdCor002Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vaStatus : string;
  end;

var
  FAddCorProdPedSysRep: TFAddCorProdPedSysRep;

implementation

uses UDmFire, UDmOra;

{$R *.dfm}

procedure TFAddCorProdPedSysRep.BConfirmaClick(Sender: TObject);
begin
  if EdQtdPed.Value = 0 then
     begin
       MessageDlg('Informe a quantidade pedida!',mtWarning,[mbOK],0);
       ActiveControl := EdQtdPed;
     end
  else
    if EdTipCmb.Value = 0 then
     begin
       MessageDlg('Informe o tipo de combinação!',mtWarning,[mbOK],0);
       ActiveControl := EdTipCmb;
     end
  else
    if EdCor001.Value = 0 then
     begin
       MessageDlg('Informe a Cor 1',mtWarning,[mbOK],0);
       ActiveControl := EdCor001;
     end
  else if ((EdTipCmb.Value = 2) or (EdTipCmb.Value = 3)) and (EdCor002.Value = 0) then
      begin
         Application.MessageBox('Para o tipo de combinação informado a cor 02 é obrigatório','Aviso', MB_ICONWARNING+MB_OK);
         EdCor002.SetFocus;
      end
  else if (EdTipCmb.Value = 1) and (EdCor002.Value <> 0) then
     begin
       Application.MessageBox('Para o tipo de combinação informado só é possível usar a cor 01','Aviso', MB_ICONWARNING+MB_OK);
       EdCor002.Clear;
       EdCor002.SetFocus;
     end
  else
     begin//1
        if vaStatus = 'INSERINDO' then
           begin//2
              DmFire.CadUsu120Ipd.Open;
              DmFire.CadUsu120Ipd.Insert;
              DmFire.CadUsu120IpdCODEMP.Value := DmFire.ConsE120IpdCODEMP.Value;
              DmFire.CadUsu120IpdCODFIL.Value := DmFire.ConsE120IpdCODFIL.Value;
              DmFire.CadUsu120IpdNUMCON.Value := DmFire.ConsE120IpdNUMCON.Value;
              DmFire.CadUsu120IpdCODREP.Value := DmFire.ConsE120IpdCODREP.Value;
              DmFire.CadUsu120IpdSEQIPD.Value := DmFire.ConsE120IpdSEQIPD.Value;
              DmFire.CadUsu120IpdNUMPED.Value := DmFire.ConsE120IpdNUMPED.Value;
              DmFire.CadUsu120IpdQTDCOR.Value := EdQtdPed.AsInteger;
              DmFire.CadUsu120IpdQTDABE.Value := EdQtdPed.AsInteger;
              DmFire.CadUsu120IpdQTDCAN.Value := 0;
              DmFire.CadUsu120IpdTIPCMB.Value := EdTipCmb.AsInteger;

              DmFire.CadUsu120IpdCOR001.Value := IntToStr(EdCor001.AsInteger);
              if EdCor002.Value = 0 then
                 DmFire.CadUsu120IpdCOR002.Value := ' '
              else
                 DmFire.CadUsu120IpdCOR002.Value := IntToStr(EdCor002.AsInteger);

              DmFire.CadUsu120IpdCODPRO.Value := DmFire.ConsE120IpdCODPRO.Value;
              DmFire.CadUsu120IpdCODDER.Value := DmFire.ConsE120IpdCODDER.Value;
              DmFire.CadUsu120IpdTECTRA.Value := 'N';
              DmFire.CadUsu120IpdPRECAR.Value := 0;

              //falta buscar o seqite
              Usu120IpdSeqIte.Close;
              Usu120IpdSeqIte.ParamByName('codemp').Value := DmFire.ConsE120IpdCODEMP.Value;
              Usu120IpdSeqIte.ParamByName('codfil').Value := DmFire.ConsE120IpdCODFIL.Value;
              Usu120IpdSeqIte.ParamByName('numcon').Value := DmFire.ConsE120IpdNUMCON.Value;
              Usu120IpdSeqIte.ParamByName('codrep').Value := DmFire.ConsE120IpdCODREP.Value;
              Usu120IpdSeqIte.ParamByName('seqipd').Value := DmFire.ConsE120IpdSEQIPD.Value;
              Usu120IpdSeqIte.Open;
              if Usu120IpdSeqIte.IsEmpty then
                 DmFire.CadUsu120IpdSEQITE.Value := 1
              else
                 DmFire.CadUsu120IpdSEQITE.Value := Usu120IpdSeqIteSEQITE.Value + 1;

              DmFire.CadUsu120Ipd.Post;
              DmFire.IBTransacao.CommitRetaining;

              Close;
           end//2
        else
          if vaStatus = 'ALTERANDO' then
             begin//3
                DmFire.CadUsu120IpdQTDCOR.Value := EdQtdPed.AsInteger;
                DmFire.CadUsu120IpdQTDABE.Value := EdQtdPed.AsInteger;
                DmFire.CadUsu120IpdQTDCAN.Value := 0;
                DmFire.CadUsu120IpdTIPCMB.Value := EdTipCmb.AsInteger;

                DmFire.CadUsu120IpdCOR001.Value := IntToStr(EdCor001.AsInteger);
                if EdCor002.Value = 0 then
                   DmFire.CadUsu120IpdCOR002.Value := ' '
                else
                   DmFire.CadUsu120IpdCOR002.Value := IntToStr(EdCor002.AsInteger);

               DmFire.CadUsu120Ipd.Post;
               DmFire.IBTransacao.CommitRetaining;

               MessageDlg('Alteração realizada com sucesso!',mtWarning,[mbOK],0);
               Close;

             end;//3

     end;//1



end;

procedure TFAddCorProdPedSysRep.EdCor001Exit(Sender: TObject);
begin
    if EdCor001.Value <> 0 then
       begin
          ValidaCor.Close;
          ValidaCor.Parameters.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
          ValidaCor.Parameters.ParamByName('codpro').Value := IntToStr(EdCor001.AsInteger);
          ValidaCor.Open;
          if ValidaCor.IsEmpty then
             begin
                MessageDlg('Cor não encontrada!',mtWarning,[mbOK],0);
                ActiveControl := EdCor001;
             end;
       end;
end;

procedure TFAddCorProdPedSysRep.EdCor002Exit(Sender: TObject);
begin
  if EdCor002.Value <> 0 then
       begin
          ValidaCor.Close;
          ValidaCor.Parameters.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
          ValidaCor.Parameters.ParamByName('codpro').Value := IntToStr(EdCor002.AsInteger);
          ValidaCor.Open;
          if ValidaCor.IsEmpty then
             begin
                MessageDlg('Cor não encontrada!',mtWarning,[mbOK],0);
                ActiveControl := EdCor002;
             end;
       end;
end;

procedure TFAddCorProdPedSysRep.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
