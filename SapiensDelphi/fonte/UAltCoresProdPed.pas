unit UAltCoresProdPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons, ExtCtrls, DB, ADODB;

type
  TFAltCoresProdPed = class(TForm)
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
  private
    { Private declarations }

  public
    { Public declarations }
    vnCodEmp, vnCodFil, vnNumPed, vnSeqIpd, vnSeqIte : Integer;
    vaStatus, vaCodPro, vaCodDer : String; //indicativo se esta incluindo ouo alterando 
    vnQtdAbe : Double;
  end;

var
  FAltCoresProdPed: TFAltCoresProdPed;

implementation

uses UDm2, UDm, UConsCores;

{$R *.dfm}

procedure TFAltCoresProdPed.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAltCoresProdPed.FormShow(Sender: TObject);
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

procedure TFAltCoresProdPed.EdQtdPedExit(Sender: TObject);
begin
if vaStatus = 'ALTERANDO' then
 begin
 if EdQtdPed.Value <= EdQtdCan.Value then
    begin
      Application.MessageBox('Quantidade pedida não pode ser menor ou igual a cancelada !','Aviso', MB_ICONWARNING+MB_OK);
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

procedure TFAltCoresProdPed.EdQtdCanExit(Sender: TObject);
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

procedure TFAltCoresProdPed.BCancelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFAltCoresProdPed.BProcessaClick(Sender: TObject);
var vbExiste : Boolean;
begin
    if vaStatus = 'ALTERANDO' then
       begin//1
           if (EdQtdPed.Value = 0) or (EdQtdPed.Text = '') then
              begin//2
                 Application.MessageBox('Quantidade pedida obrigatório','Aviso', MB_ICONWARNING+MB_OK);
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

                 //grava na tabela usu_t121cpp que o iten foi alterado


                 dm2.ConsUsu_T120Ipd.Close;
                 dm2.ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := dm2.ConsE120IpdCODFIL.Value;
                 dm2.ConsUsu_T120Ipd.Parameters.ParamByName('numped').Value := dm2.ConsE120IpdNUMPED.Value;
                 dm2.ConsUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := dm2.ConsE120IpdSEQIPD.Value;
                 dm2.ConsUsu_T120Ipd.Open;
                 Close;

              end;//3
       end//1
    else if vaStatus = 'INSERINDO' then
            begin//4
                if EdQtdPed.Value = 0 then
                   begin
                     Application.MessageBox('Quantidade pedida obrigatório','Aviso', MB_ICONWARNING+MB_OK);
                     EdQtdPed.SetFocus;
                   end
                else if EdTipCmb.Value = 0 then
                        begin
                           Application.MessageBox('Tipo de combinação obrigatório','Aviso', MB_ICONWARNING+MB_OK);
                           EdTipCmb.SetFocus;
                        end
                      else if EdCor001.Value = 0 then
                              begin
                                Application.MessageBox('Cor 01 obrigatório','Aviso', MB_ICONWARNING+MB_OK);
                                EdCor001.SetFocus;
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
                                    begin//5
                                    vbExiste := false;
                                    //verifica se ja existe a combinaçao de cores para o produto
                                    Dm2.ConsUsu_T120Ipd.First;
                                     while not Dm2.ConsUsu_T120Ipd.Eof do
                                       begin//6
                                         if (Dm2.ConsUsu_T120IpdUSU_COR001.Value = EdCor001.Text) and
                                            (Dm2.ConsUsu_T120IpdUSU_COR002.Value = EdCor002.Text) and
                                            (Dm2.ConsUsu_T120IpdUSU_TIPCMB.Value = EdTipCmb.Value) then
                                              vbExiste := true;

                                         Dm2.ConsUsu_T120Ipd.Next;
                                       end;//6
                                       if vbExiste then
                                          begin//7
                                             Application.MessageBox('Cor já existente para este produto/derivação','Aviso', MB_ICONWARNING+MB_OK);
                                             EdCor001.SetFocus;
                                             Abort;
                                          end//7
                                       else
                                          begin//8
                                             Dm2.CadUsu_T120Ipd.Open;
                                             Dm2.CadUsu_T120Ipd.Insert;
                                             Dm2.CadUsu_T120IpdUSU_CODEMP.Value := vnCodEmp;
                                             Dm2.CadUsu_T120IpdUSU_CODFIL.Value := vnCodFil;
                                             Dm2.CadUsu_T120IpdUSU_NUMPED.Value := vnNumPed;
                                             Dm2.CadUsu_T120IpdUSU_SEQIPD.Value := vnSeqIpd;
                                             Dm2.CadUsu_T120IpdUSU_QTDCOR.Value := EdQtdPed.AsInteger;
                                             Dm2.CadUsu_T120IpdUSU_TIPCMB.Value := EdTipCmb.AsInteger;
                                             Dm2.CadUsu_T120IpdUSU_COR001.Value := IntToStr(EdCor001.AsInteger);
                                             if EdCor002.Value = 0 then
                                                Dm2.CadUsu_T120IpdUSU_COR002.Value := ' '
                                             else
                                                 Dm2.CadUsu_T120IpdUSU_COR002.Value := IntToStr(EdCor002.AsInteger);

                                             Dm2.CadUsu_T120IpdUSU_CODPRO.Value := vaCodPro;
                                             Dm2.CadUsu_T120IpdUSU_CODDER.Value := vaCodDer;
                                             Dm2.CadUsu_T120IpdUSU_TECTRA.Value := 'N';
                                             Dm2.CadUsu_T120IpdUSU_QTDABE.Value := EdQtdAbe.AsInteger;
                                             Dm2.CadUsu_T120IpdUSU_QTDCAN.Value := EdQtdCan.AsInteger;

                                             UltimoSeqIte.Close;
                                             UltimoSeqIte.Parameters.ParamByName('codemp').Value := vnCodEmp;
                                             UltimoSeqIte.Parameters.ParamByName('codfil').Value := vnCodFil;
                                             UltimoSeqIte.Parameters.ParamByName('numped').Value := vnNumPed;
                                             UltimoSeqIte.Parameters.ParamByName('seqipd').Value := vnSeqIpd;
                                             UltimoSeqIte.Open;
                                             Dm2.CadUsu_T120IpdUSU_SEQITE.Value := UltimoSeqIteUSU_SEQITE.Value + 1;
                                             Dm2.CadUsu_T120IpdUSU_PRECAR.Value := Dm2.ConsE120pedUSU_PRECAR.Value;
                                             Dm2.CadUsu_T120Ipd.Post;


                                             dm2.ConsUsu_T120Ipd.Close;
                                             dm2.ConsUsu_T120Ipd.Parameters.ParamByName('codfil').Value := dm2.ConsE120IpdCODFIL.Value;
                                             dm2.ConsUsu_T120Ipd.Parameters.ParamByName('numped').Value := dm2.ConsE120IpdNUMPED.Value;
                                             dm2.ConsUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := dm2.ConsE120IpdSEQIPD.Value;
                                             dm2.ConsUsu_T120Ipd.Open;



                                             Close;
                                          end;//8
                                    end;//5
            end;//4
end;

procedure TFAltCoresProdPed.BPesCor01Click(Sender: TObject);
begin
  FConsCores := TFConsCores.Create(Self);
  FConsCores.vaTela := 'Alt';
  if FConsCores.ShowModal = mrOk then
     begin
        EdCor001.Text := Dm2.ConsUsu_TDerCorUSU_CODTEC.Value;
        ActiveControl := EdCor001;
     end;
  FreeAndNil(FConsCores);
end;

procedure TFAltCoresProdPed.BPesCor02Click(Sender: TObject);
begin
FConsCores := TFConsCores.Create(Self);
FConsCores.vaTela := 'Alt';
  if FConsCores.ShowModal = mrOk then
     begin
        EdCor002.Text := Dm2.ConsUsu_TDerCorUSU_CODTEC.Value;
        ActiveControl := EdCor002;
     end;
  FreeAndNil(FConsCores);
end;

procedure TFAltCoresProdPed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RIGHT   then
    SelectNext(ActiveControl,true,true);
  if key = VK_LEFT then
    SelectNext(ActiveControl, false, true);
end;

procedure TFAltCoresProdPed.EdCor001KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F5 then
    begin
       BPesCor01.Click;
    end;
end;

procedure TFAltCoresProdPed.EdCor001Exit(Sender: TObject);
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
              Application.MessageBox('Cor não encontrada','Aviso', MB_ICONWARNING+MB_OK);
              EdCor001.Clear;
              ActiveControl := EdCor001;
           end;


     end;
end;

procedure TFAltCoresProdPed.EdCor002Exit(Sender: TObject);
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
              Application.MessageBox('Cor não encontrada','Aviso', MB_ICONWARNING+MB_OK);
              EdCor002.Clear;
              ActiveControl := EdCor002;
           end;


     end;
end;

procedure TFAltCoresProdPed.EdTipCmbExit(Sender: TObject);
begin
    if EdTipCmb.Value <> 0 then
       begin
         ValidaTipCmb.Close;
         ValidaTipCmb.Parameters.ParamByName('codtip').Value := EdTipCmb.Value;
         ValidaTipCmb.Open;
         if ValidaTipCmb.IsEmpty then
            begin
              Application.MessageBox('Tipo não encontrado','Aviso', MB_ICONWARNING+MB_OK);
              ActiveControl := EdTipCmb;
              LDsTipCmb.Caption := '';
            end
         else
            begin
              LDsTipCmb.Caption := ValidaTipCmbUSU_ABRTIP.Value;
            end;

       end;
end;

end.
