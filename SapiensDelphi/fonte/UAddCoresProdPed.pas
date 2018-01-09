unit UAddCoresProdPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons, ExtCtrls, DB, ADODB;

type
  TFAddCoresProdPed = class(TForm)
    EdTipCmb: TCurrencyEdit;
    EdCor001: TCurrencyEdit;
    EdCor002: TCurrencyEdit;
    EdQtdPed: TCurrencyEdit;
    EdQtdCan: TCurrencyEdit;
    EdQtdAbe: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    LNumPed: TLabel;
    LCodPro: TLabel;
    LQtdPed: TLabel;
    LQtdAbe: TLabel;
    BProcessa: TBitBtn;
    BCancela: TBitBtn;
    UltimoSeqIte: TADOQuery;
    UltimoSeqIteUSU_SEQITE: TIntegerField;
    BPesCor01: TSpeedButton;
    BPesCor02: TSpeedButton;
    ValidaCor: TADOQuery;
    ValidaCorUSU_CODEMP: TIntegerField;
    ValidaCorUSU_CODPRO: TStringField;
    ValidaCorUSU_CODDER: TStringField;
    ValidaCorUSU_CODTEC: TStringField;
    ValidaCorUSU_SITTEC: TStringField;
    ValidaCorUSU_DESTEC: TStringField;
    ValidaTipCmb: TADOQuery;
    ValidaTipCmbUSU_CODTIP: TIntegerField;
    ValidaTipCmbUSU_DESTIP: TStringField;
    ValidaTipCmbUSU_ABRTIP: TStringField;
    LDsTipCmb: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure EdQtdPedExit(Sender: TObject);
    procedure EdQtdCanExit(Sender: TObject);
    procedure BCancelaClick(Sender: TObject);
    procedure BProcessaClick(Sender: TObject);
    procedure BPesCor01Click(Sender: TObject);
    procedure BPesCor02Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCor001KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCor001Exit(Sender: TObject);
    procedure EdCor002Exit(Sender: TObject);
    procedure EdTipCmbExit(Sender: TObject);
    procedure EdCor002KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }
    vnCodEmp, vnCodFil, vnNumPed, vnSeqIpd, vnSeqIte : Integer;
    vaStatus, vaCodPro, vaCodDer : String; //indicativo se esta incluindo ouo alterando 
  end;

var
  FAddCoresProdPed: TFAddCoresProdPed;

implementation

uses UDm2, UDm, UConsCores, UAddProdPed;

{$R *.dfm}

procedure TFAddCoresProdPed.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAddCoresProdPed.FormShow(Sender: TObject);
begin
    if vaStatus = 'ALTERANDO' then
       begin
         EdCor001.ReadOnly := true;
         EdCor002.ReadOnly := true;
         EdTipCmb.ReadOnly := true;
         BPesCor01.Enabled := false;
         BPesCor02.Enabled := false;
         EdQtdCan.ReadOnly := false;
         EdQtdCan.TabStop := true;
       end
    else if vaStatus = 'INSERINDO' then
            begin
              EdCor001.ReadOnly := false;
              EdCor002.ReadOnly := false;
              EdTipCmb.ReadOnly := false;
              BPesCor01.Enabled := true;
              BPesCor02.Enabled := true;
              EdQtdCan.ReadOnly := true;
              EdQtdCan.TabStop := false;
            end;

    EdTipCmbExit(Sender);
end;

procedure TFAddCoresProdPed.EdQtdPedExit(Sender: TObject);
begin
if vaStatus = 'ALTERANDO' then
 begin
 if EdQtdPed.Value <= EdQtdCan.Value then
    begin
      Application.MessageBox('Quantidade pedida n�o pode ser menor ou igual a cancelada !','Aviso', MB_ICONWARNING+MB_OK);
      EdQtdPed.SetFocus;
      EdQtdPed.Value := Dm2.ConsUsu_T120IpdUSU_QTDCOR.Value;
    end
 else
    begin
      EdQtdAbe.Value := EdQtdPed.Value - EdQtdCan.Value;
    end;
 end
  else
    EdQtdAbe.Value := EdQtdPed.Value - EdQtdCan.Value;
end;

procedure TFAddCoresProdPed.EdQtdCanExit(Sender: TObject);
begin
if EdQtdPed.Value <> 0 then
   begin
      if EdQtdCan.Value >= EdQtdPed.Value then
         begin
           Application.MessageBox('Quantidade cancelada nao pode ser maior ou igual a pedida!','Aviso', MB_ICONWARNING+MB_OK);
           EdQtdCan.SetFocus;
           EdQtdCan.Value := Dm2.ConsUsu_T120IpdUSU_QTDCAN.Value;
         end
      else
        begin
          EdQtdAbe.Value := EdQtdPed.Value - EdQtdCan.Value;
        end;
   end;
end;

procedure TFAddCoresProdPed.BCancelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFAddCoresProdPed.BProcessaClick(Sender: TObject);
var vbExiste : Boolean;
begin
    if vaStatus = 'ALTERANDO' then
       begin//1
           if (EdQtdPed.Value = 0) or (EdQtdPed.Text = '') then
              begin//2
                 Application.MessageBox('Quantidade pedida obrigat�rio','Aviso', MB_ICONWARNING+MB_OK);
                 EdQtdPed.SetFocus;
              end//2
           else
              begin//3
                 Dm2.CadUsu_T120Ipd.Close;
                 Dm2.CadUsu_T120Ipd.Parameters.ParamByName('codemp').Value := vnCodEmp;
                 Dm2.CadUsu_T120Ipd.Parameters.ParamByName('codfil').Value := vnCodFil;
                 Dm2.CadUsu_T120Ipd.Parameters.ParamByName('numped').Value := vnNumPed;
                 Dm2.CadUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := vnSeqIpd;
                 Dm2.CadUsu_T120Ipd.Parameters.ParamByName('seqite').Value := vnSeqIte;
                 Dm2.CadUsu_T120Ipd.Open;
                 Dm2.CadUsu_T120Ipd.Edit;
                 Dm2.CadUsu_T120IpdUSU_QTDCOR.Value := EdQtdPed.AsInteger;
                 Dm2.CadUsu_T120IpdUSU_QTDCAN.Value := EdQtdCan.AsInteger;
                 Dm2.CadUsu_T120IpdUSU_QTDABE.Value := EdQtdAbe.AsInteger;
                 Dm2.CadUsu_T120Ipd.Post;

                 dm2.ConsUsu_T120Ipd.Close;
                 dm2.ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := FAddProdPred.ClientE120IpdCODFIL.Value;
                 dm2.ConsUsu_T120Ipd.Parameters.ParamByName('numped').Value := FAddProdPred.ClientE120IpdNUMPED.Value;
                 dm2.ConsUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := FAddProdPred.ClientE120IpdSEQIPD.Value;
                 dm2.ConsUsu_T120Ipd.Open;
                 dm2.ConsUsu_T120Ipd.First;
                 Close;

              end;//3
       end//1
    else if vaStatus = 'INSERINDO' then
            begin//4
                if EdQtdPed.Value = 0 then
                   begin
                     Application.MessageBox('Quantidade pedida obrigat�rio','Aviso', MB_ICONWARNING+MB_OK);
                     EdQtdPed.SetFocus;
                   end
                else if EdTipCmb.Value = 0 then
                        begin
                           Application.MessageBox('Tipo de combina��o obrigat�rio','Aviso', MB_ICONWARNING+MB_OK);
                           EdTipCmb.SetFocus;
                        end
                      else if EdCor001.Value = 0 then
                              begin
                                Application.MessageBox('Cor 01 obrigat�rio','Aviso', MB_ICONWARNING+MB_OK);
                                EdCor001.SetFocus;
                              end
                           else if ((EdTipCmb.Value = 2) or (EdTipCmb.Value = 3)) and (EdCor002.Value = 0) then
                                    begin
                                      Application.MessageBox('Para o tipo de combina��o informado a cor 02 � obrigat�rio','Aviso', MB_ICONWARNING+MB_OK);
                                      EdCor002.SetFocus;
                                    end
                                 else if (EdTipCmb.Value = 1) and (EdCor002.Value <> 0) then
                                    begin
                                      Application.MessageBox('Para o tipo de combina��o informado s� � poss�vel usar a cor 01','Aviso', MB_ICONWARNING+MB_OK);
                                      EdCor002.Clear;
                                      EdCor002.SetFocus;
                                    end
                                 else
                                    begin//5
                                          FAddProdPred.ClientE120Ipd.First;
                                          while not FAddProdPred.ClientE120Ipd.Eof do
                                            begin//6

                                             Dm2.CadUsu_T120Ipd.Open;
                                             Dm2.CadUsu_T120Ipd.Insert;
                                             Dm2.CadUsu_T120IpdUSU_CODEMP.Value := vnCodEmp;
                                             Dm2.CadUsu_T120IpdUSU_CODFIL.Value := vnCodFil;
                                             Dm2.CadUsu_T120IpdUSU_NUMPED.Value := vnNumPed;
                                             Dm2.CadUsu_T120IpdUSU_SEQIPD.Value := FAddProdPred.ClientE120IpdSEQIPD.Value;
                                             if EdQtdPed.AsInteger > FAddProdPred.ClientE120IpdQTDPED.Value then
                                                  Dm2.CadUsu_T120IpdUSU_QTDCOR.Value := FAddProdPred.ClientE120IpdQTDPED.AsInteger
                                             else
                                                 Dm2.CadUsu_T120IpdUSU_QTDCOR.Value := EdQtdPed.AsInteger;

                                             Dm2.CadUsu_T120IpdUSU_TIPCMB.Value := EdTipCmb.AsInteger;
                                             Dm2.CadUsu_T120IpdUSU_COR001.Value := IntToStr(EdCor001.AsInteger);
                                             if EdCor002.Value = 0 then
                                                Dm2.CadUsu_T120IpdUSU_COR002.Value := ' '
                                             else
                                                 Dm2.CadUsu_T120IpdUSU_COR002.Value := IntToStr(EdCor002.AsInteger);

                                             Dm2.CadUsu_T120IpdUSU_CODPRO.Value := vaCodPro;
                                             Dm2.CadUsu_T120IpdUSU_CODDER.Value := FAddProdPred.ClientE120IpdCODDER.Value;
                                             Dm2.CadUsu_T120IpdUSU_TECTRA.Value := 'N';
                                             Dm2.CadUsu_T120IpdUSU_QTDABE.Value := Dm2.CadUsu_T120IpdUSU_QTDCOR.Value - EdQtdCan.AsInteger;
                                             Dm2.CadUsu_T120IpdUSU_QTDCAN.Value := EdQtdCan.AsInteger;

                                             UltimoSeqIte.Close;
                                             UltimoSeqIte.Parameters.ParamByName('codemp').Value := vnCodEmp;
                                             UltimoSeqIte.Parameters.ParamByName('codfil').Value := vnCodFil;
                                             UltimoSeqIte.Parameters.ParamByName('numped').Value := vnNumPed;
                                             UltimoSeqIte.Parameters.ParamByName('seqipd').Value := FAddProdPred.ClientE120IpdSEQIPD.Value;
                                             UltimoSeqIte.Open;
                                             Dm2.CadUsu_T120IpdUSU_SEQITE.Value := UltimoSeqIteUSU_SEQITE.Value + 1;
                                             Dm2.CadUsu_T120IpdUSU_PRECAR.Value := Dm2.ConsE120pedUSU_PRECAR.Value;
                                             Dm2.CadUsu_T120IpdUSU_NUMCOM.Value := 0;
                                             Dm2.CadUsu_T120Ipd.Post;

                                             FAddProdPred.ClientE120Ipd.Next;
                                          end;//6
                                             dm2.ConsUsu_T120Ipd.Close;
                                             //dm2.ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := dm2.ConsE120IpdCODFIL.Value;
                                             //dm2.ConsUsu_T120Ipd.Parameters.ParamByName('numped').Value := dm2.ConsE120IpdNUMPED.Value;
                                             dm2.ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := FAddProdPred.ClientE120IpdCODFIL.Value;
                                             dm2.ConsUsu_T120Ipd.Parameters.ParamByName('numped').Value := FAddProdPred.ClientE120IpdNUMPED.Value;
                                             dm2.ConsUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := FAddProdPred.ClientE120IpdSEQIPD.Value;
                                             dm2.ConsUsu_T120Ipd.Open;
                                             dm2.ConsUsu_T120Ipd.First;

                                             FAddProdPred.ClientE120Ipd.First;
                                             Close;
                                    end;//5
            end;//4
end;

procedure TFAddCoresProdPed.BPesCor01Click(Sender: TObject);
begin
  FConsCores := TFConsCores.Create(Self);
  FConsCores.vaTela := 'Add';
  if FConsCores.ShowModal = mrOk then
     begin
        EdCor001.Text := Dm2.ConsUsu_TDerCorUSU_CODTEC.Value;
        ActiveControl := EdCor001;
     end;
  FreeAndNil(FConsCores);
end;

procedure TFAddCoresProdPed.BPesCor02Click(Sender: TObject);
begin
FConsCores := TFConsCores.Create(Self);
FConsCores.vaTela := 'Add';
  if FConsCores.ShowModal = mrOk then
     begin
        EdCor002.Text := Dm2.ConsUsu_TDerCorUSU_CODTEC.Value;
        ActiveControl := EdCor002;
     end;
  FreeAndNil(FConsCores);
end;

procedure TFAddCoresProdPed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RIGHT   then
    SelectNext(ActiveControl,true,true);
  if key = VK_LEFT then
    SelectNext(ActiveControl, false, true);
end;

procedure TFAddCoresProdPed.EdCor001KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F5 then
    begin
       BPesCor01.Click;
    end;
end;

procedure TFAddCoresProdPed.EdCor001Exit(Sender: TObject);
begin
  if (EdCor001.Value <> 0) and (vaStatus = 'INSERINDO') then
     begin
        ValidaCor.Close;
        ValidaCor.Parameters.ParamByName('codemp').Value := vnCodEmp;
        ValidaCor.Parameters.ParamByName('codpro').Value := vaCodPro;
        ValidaCor.Parameters.ParamByName('codder').Value := vaCodDer;
        ValidaCor.Parameters.ParamByName('codtec').Value := EdCor001.Text;
        ValidaCor.Open;
        if ValidaCor.IsEmpty then
           begin
              Application.MessageBox('Cor n�o encontrada','Aviso', MB_ICONWARNING+MB_OK);
              EdCor001.Clear;
              ActiveControl := EdCor001;
           end;


     end;
end;

procedure TFAddCoresProdPed.EdCor002Exit(Sender: TObject);
begin
if (EdCor002.Value <> 0) and (vaStatus = 'INSERINDO') then
     begin
        ValidaCor.Close;
        ValidaCor.Parameters.ParamByName('codemp').Value := vnCodEmp;
        ValidaCor.Parameters.ParamByName('codpro').Value := vaCodPro;
        ValidaCor.Parameters.ParamByName('codder').Value := vaCodDer;
        ValidaCor.Parameters.ParamByName('codtec').Value := EdCor002.Text;
        ValidaCor.Open;
        if ValidaCor.IsEmpty then
           begin
              Application.MessageBox('Cor n�o encontrada','Aviso', MB_ICONWARNING+MB_OK);
              EdCor002.Clear;
              ActiveControl := EdCor002;
           end;


     end;
end;

procedure TFAddCoresProdPed.EdTipCmbExit(Sender: TObject);
begin
    if EdTipCmb.Value <> 0 then
       begin
         ValidaTipCmb.Close;
         ValidaTipCmb.Parameters.ParamByName('codtip').Value := EdTipCmb.Value;
         ValidaTipCmb.Open;
         if ValidaTipCmb.IsEmpty then
            begin
              Application.MessageBox('Tipo n�o encontrado','Aviso', MB_ICONWARNING+MB_OK);
              ActiveControl := EdTipCmb;
              LDsTipCmb.Caption := '';
            end
         else
            begin
              LDsTipCmb.Caption := ValidaTipCmbUSU_ABRTIP.Value;
            end;

       end;
end;

procedure TFAddCoresProdPed.EdCor002KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_F5 then
    begin
       BPesCor01.Click;
    end;
end;

end.
