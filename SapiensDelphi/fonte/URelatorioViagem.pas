unit URelatorioViagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons, DB,
  DBCtrls, RXDBCtrl, DateUtils;

type
  TFRelatorioViagem = class(TForm)
    Panel1: TPanel;
    EdNumAne: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    BConfirma: TBitBtn;
    BConsNumAne: TBitBtn;
    DsCadUsu_TRelVia: TDataSource;
    DBDUSU_DATSAI: TDBDateEdit;
    DBDUSU_DATCHE: TDBDateEdit;
    DBEUSU_KMSAI: TDBEdit;
    DBEUSU_KMCHE: TDBEdit;
    DBEUSU_TOTKM: TDBEdit;
    DBEUSU_VALCOM: TDBEdit;
    DBEUSU_MEDKM: TDBEdit;
    DBEUSU_QTCOMB: TDBEdit;
    DBEUSU_VALLIT: TDBEdit;
    DBEUSU_VALPED: TDBEdit;
    DBEUSU_VALDES: TDBEdit;
    DBEUSU_VALREF: TDBEdit;
    DBEUSU_OUTDES: TDBEdit;
    DBEUSU_QTCHEQ: TDBEdit;
    DBEUSU_PLAVEI: TDBEdit;
    DBEUSU_CODMTR: TDBEdit;
    EdRetCar: TComboBox;
    Label19: TLabel;
    DBDUSU_DATLAN: TDBDateEdit;
    BCancelar: TBitBtn;
    LDsCodMtr: TLabel;
    BConsCodMtr: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdNumAneExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsCadUsu_TRelViaStateChange(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BConfirmaClick(Sender: TObject);
    procedure DBEUSU_KMCHEExit(Sender: TObject);
    procedure DBEUSU_KMSAIExit(Sender: TObject);
    procedure DBEUSU_QTCOMBExit(Sender: TObject);
    procedure DBEUSU_VALLITExit(Sender: TObject);
    procedure DBEUSU_CODMTRExit(Sender: TObject);
    procedure DBEUSU_PLAVEIExit(Sender: TObject);
    procedure BConsCodMtrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioViagem: TFRelatorioViagem;

implementation

uses UDmOra, UConsGeralNfEnt;

{$R *.dfm}

procedure TFRelatorioViagem.BCancelarClick(Sender: TObject);
begin
  DmOra.CadUsu_TRelVia.Cancel;
  DmOra.CadUsu_TRelVia.Close;

  ActiveControl := EdNumAne;
  LDsCodMtr.Caption := '';
end;

procedure TFRelatorioViagem.BConfirmaClick(Sender: TObject);
var vnQtdDia : Double;
begin
  if DBDUSU_DATSAI.Date = 0 then
     begin
       MessageDlg('Informe a Data de Saída',mtWarning,[mbok],0);
       ActiveControl := DBDUSU_DATSAI;
     end
  else
  if DBDUSU_DATCHE.Date = 0 then
     begin
       MessageDlg('Informe a Data de Chegada',mtWarning,[mbok],0);
       ActiveControl := DBDUSU_DATCHE;
     end
  else
  if trim(DBEUSU_KMSAI.Text) = '' then
     begin
       MessageDlg('Informe o Km de Saída',mtWarning,[mbok],0);
       ActiveControl := DBEUSU_KMSAI;
     end
  else
  if trim(DBEUSU_KMCHE.Text) = '' then
     begin
       MessageDlg('Informe o Km de Chegada',mtWarning,[mbok],0);
       ActiveControl := DBEUSU_KMCHE;
     end
  else
  if trim(DBEUSU_QTCOMB.Text) = '' then
     begin
       MessageDlg('Informe a  Quantidade de Combustível',mtWarning,[mbok],0);
       ActiveControl := DBEUSU_QTCOMB;
     end
  else
  if trim(DBEUSU_VALLIT.Text) = '' then
     begin
       MessageDlg('Informe o Valor do Litro',mtWarning,[mbok],0);
       ActiveControl := DBEUSU_VALLIT;
     end
  else
  if EdRetCar.Text = '' then
     begin
       MessageDlg('Informe se o retorno foi carregado ou vazio',mtWarning,[mbok],0);
       ActiveControl := EdRetCar;
     end
  else
  if trim(DBEUSU_PLAVEI.Text) = '' then
     begin
       MessageDlg('Informe a Placa do Veículo',mtWarning,[mbok],0);
       ActiveControl := DBEUSU_PLAVEI;
     end
  else
  if trim(DBEUSU_CODMTR.Text) = '' then
     begin
       MessageDlg('Informe o Motorista',mtWarning,[mbok],0);
       ActiveControl := DBEUSU_CODMTR;
     end
  else
    begin//1

      //valida as datas
      if DBDUSU_DATCHE.Date < DBDUSU_DATSAI.Date then
         begin
           MessageDlg('Data de Chegada não pode ser menor do que a de saída',mtWarning,[mbok],0);
           ActiveControl := DBDUSU_DATCHE;
           Abort;
         end;
      //valida o km
      if DBEUSU_KMCHE.Field.AsFloat < DBEUSU_KMSAI.Field.AsFloat  then
         begin
           MessageDlg('Km de Chegada não pode ser menor do que a de saída',mtWarning,[mbok],0);
           ActiveControl := DBEUSU_KMCHE;
           Abort;
         end;

      DmOra.CadUsu_TRelViaUSU_TOTKM.Value := DmOra.CadUsu_TRelViaUSU_KMCHE.Value - DmOra.CadUsu_TRelViaUSU_KMSAI.Value;
      DmOra.CadUsu_TRelViaUSU_MEDKM.Value := DmOra.CadUsu_TRelViaUSU_TOTKM.Value / DmOra.CadUsu_TRelViaUSU_QTCOMB.Value;
      DmOra.CadUsu_TRelViaUSU_VALCOM.Value := DmOra.CadUsu_TRelViaUSU_QTCOMB.Value * DmOra.CadUsu_TRelViaUSU_VALLIT.Value;

      if DmOra.CadUsu_TRelViaUSU_MEDKM.AsFloat < 2.5 then
         begin
           if Application.MessageBox('A média de consumo esta abaixo de 2,5 isso não é comum, deseja realmente confirmar?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrNo then
              begin
                Abort;
              end;
         end;

       if DmOra.CadUsu_TRelViaUSU_MEDKM.AsFloat > 4.5 then
         begin
           if Application.MessageBox('A média de consumo esta acima de 4,5 isso não é comum, deseja realmente confirmar?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrNo then
              begin
                Abort;
              end;
         end;

      if EdRetCar.ItemIndex = 0 then
         DmOra.CadUsu_TRelViaUSU_RETCAR.Value := 'V'
      else
      if EdRetCar.ItemIndex = 1 then
         DmOra.CadUsu_TRelViaUSU_RETCAR.Value := 'C';

      //valida a placa da carreta
      if DmOra.CadUsu_TRelViaUSU_PLAVEI.Value = 'AJR-5443' then
         begin
           MessageDlg('Esta placa é de uma carreta, informe a placa do cavalo',mtWarning,[mbok],0);
           ActiveControl := DBEUSU_PLAVEI;
           abort;
         end;
      if DmOra.CadUsu_TRelViaUSU_PLAVEI.Value = 'AKL-6379' then
         begin
           MessageDlg('Esta placa é de uma carreta, informe a placa do cavalo',mtWarning,[mbok],0);
           ActiveControl := DBEUSU_PLAVEI;
           abort;
         end;
      if DmOra.CadUsu_TRelViaUSU_PLAVEI.Value = 'AJR-5553' then
         begin
           MessageDlg('Esta placa é de uma carreta, informe a placa do cavalo',mtWarning,[mbok],0);
           ActiveControl := DBEUSU_PLAVEI;
           abort;
         end;

      //valida se a data informada é menor do que 40 dias
      vnQtdDia := DaysBetween(DmOra.CadUsu_TRelViaUSU_DATSAI.AsDateTime,date);
      if vnQtdDia > 40 then
         begin
           MessageDlg('A data de saída está fora do período tolerado de 40 dias ',mtWarning,[mbok],0);
           ActiveControl := DBDUSU_DATSAI;
           abort;
         end;

      vnQtdDia := DaysBetween(DmOra.CadUsu_TRelViaUSU_DATCHE.AsDateTime,date);
      if vnQtdDia > 40 then
         begin
           MessageDlg('A data de chegada está fora do período tolerado de 40 dias ',mtWarning,[mbok],0);
           ActiveControl := DBDUSU_DATCHE;
           abort;
         end;

      DmOra.CadUsu_TRelVia.Post;

    end;//1
end;

procedure TFRelatorioViagem.BConsCodMtrClick(Sender: TObject);
begin
if BConfirma.Enabled = true then
   begin
      FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
      FConsGeralNfEnt.vaSql := 'select codmtr,nommot from e073mot';

      FConsGeralNfEnt.vbWhere := false;
      FConsGeralNfEnt.vaCampo := 'CodMtr';
      FConsGeralNfEnt.vnColuna := 999999;
      FConsGeralNfEnt.vaTela := 'FRelatorioViagem';
      FConsGeralNfEnt.ShowModal;
      FreeAndNil(FConsGeralNfEnt);

      ActiveControl := DBEUSU_CODMTR;
   end;
end;

procedure TFRelatorioViagem.DBEUSU_CODMTRExit(Sender: TObject);
begin
if trim(DBEUSU_CODMTR.Text) <> '' then
   begin
      DmOra.ConsSql.Close;
      DmOra.ConsSql.SQL.Clear;
      DmOra.ConsSql.SQL.Add('select nommot from e073mot');
      DmOra.ConsSql.SQL.Add('where');
      DmOra.ConsSql.SQL.Add('codtra = 1 and');
      DmOra.ConsSql.SQL.Add('codmtr = :codmtr');
      DmOra.ConsSql.Parameters.ParamByName('codmtr').Value := StrToInt(trim(DBEUSU_CODMTR.Text));
      DmOra.ConsSql.Open;
      if not DmOra.ConsSql.IsEmpty then
         begin
          LDsCodMtr.Caption := DmOra.ConsSql.FieldByName('nommot').AsString;
         end
      else
         begin
           LDsCodMtr.Caption := '';
         end;
   end;
end;

procedure TFRelatorioViagem.DBEUSU_KMCHEExit(Sender: TObject);
begin
  if BConfirma.Enabled = true then
     begin//1
        if trim(DBEUSU_KMSAI.Text) = '' then
           begin//2
             MessageDlg('Informe o Km de Saída',mtWarning,[mbok],0);
             ActiveControl := DBEUSU_KMSAI;
           end//2
        else
        if trim(DBEUSU_KMCHE.Text) = '' then
           begin//3
             MessageDlg('Informe o Km de Chegada',mtWarning,[mbok],0);
             ActiveControl := DBEUSU_KMCHE;
           end//3
        else
           begin//4
              DmOra.CadUsu_TRelViaUSU_TOTKM.Value := DmOra.CadUsu_TRelViaUSU_KMCHE.Value - DmOra.CadUsu_TRelViaUSU_KMSAI.Value;
           end;//4
     end//1


end;

procedure TFRelatorioViagem.DBEUSU_KMSAIExit(Sender: TObject);
begin
  if BConfirma.Enabled = true then
     begin//1
       if trim(DBEUSU_KMSAI.Text) = '' then
          begin//2
            MessageDlg('Informe o Km de Saída',mtWarning,[mbok],0);
            ActiveControl := DBEUSU_KMSAI;
          end//2
       else
       if trim(DBEUSU_KMCHE.Text) <> '' then
          begin//3
             DmOra.CadUsu_TRelViaUSU_TOTKM.Value := DmOra.CadUsu_TRelViaUSU_KMCHE.Value - DmOra.CadUsu_TRelViaUSU_KMSAI.Value;
          end;//3

     end;//1
end;

procedure TFRelatorioViagem.DBEUSU_PLAVEIExit(Sender: TObject);
begin
    if trim(DBEUSU_PLAVEI.Text) <> '' then
       begin
         DmOra.ConsSql.Close;
         DmOra.ConsSql.SQL.Clear;
         DmOra.ConsSql.SQL.Add('select * from e073vei where plavei = :plavei');
         DmOra.ConsSql.Parameters.ParamByName('plavei').Value := trim(DBEUSU_PLAVEI.Text);
         DmOra.ConsSql.Open;
         if DmOra.ConsSql.IsEmpty then
            begin
              MessageDlg('Veículo não encontrado',mtWarning,[mbok],0);
              ActiveControl := DBEUSU_PLAVEI;
            end;

       end;
end;

procedure TFRelatorioViagem.DBEUSU_QTCOMBExit(Sender: TObject);
begin
  if BConfirma.Enabled = true then
     begin//1
        if trim(DBEUSU_QTCOMB.Text) = '' then
           begin//2
              MessageDlg('Informe a quantidade de combustível',mtWarning,[mbok],0);
              ActiveControl := DBEUSU_QTCOMB;
           end//2
        else
           begin//3
              DmOra.CadUsu_TRelViaUSU_MEDKM.Value := DmOra.CadUsu_TRelViaUSU_TOTKM.Value / DmOra.CadUsu_TRelViaUSU_QTCOMB.Value;

           end;//3

     end;//1
end;

procedure TFRelatorioViagem.DBEUSU_VALLITExit(Sender: TObject);
begin
  if BConfirma.Enabled = true then
     begin//1
        if trim(DBEUSU_VALLIT.Text) = '' then
           begin//2
             MessageDlg('Informe o Valor do Litro do Combustível',mtWarning,[mbok],0);
              ActiveControl := DBEUSU_VALLIT;
           end//2
        else
           begin//3
              DmOra.CadUsu_TRelViaUSU_VALCOM.Value := DmOra.CadUsu_TRelViaUSU_QTCOMB.Value * DmOra.CadUsu_TRelViaUSU_VALLIT.Value;

           end;//3

     end;//1
end;

procedure TFRelatorioViagem.DsCadUsu_TRelViaStateChange(Sender: TObject);
begin
 if DmOra.CadUsu_TRelVia.State in [dsinsert,dsedit] then
    begin
      BConfirma.Enabled := true;
      BCancelar.Enabled := true;
    end
 else
    begin
      BConfirma.Enabled := false;
      BCancelar.Enabled := false;
    end;

end;

procedure TFRelatorioViagem.EdNumAneExit(Sender: TObject);
begin
  if (trim(EdNumAne.Text) <> '') and (BConfirma.Enabled = false) then
     begin//1
        DmOra.CadUsu_TRelVia.Close;
        DmOra.CadUsu_TRelVia.Parameters.ParamByName('codemp').Value := 1;
        DmOra.CadUsu_TRelVia.Parameters.ParamByName('codfil').Value := 1;
        DmOra.CadUsu_TRelVia.Parameters.ParamByName('numane').Value := StrToInt(trim(EdNumAne.Text));
        DmOra.CadUsu_TRelVia.Open;
        if not DmOra.CadUsu_TRelVia.IsEmpty then
           begin//2

              if DmOra.CadUsu_TRelViaUSU_RETCAR.Value = 'V' then
                 EdRetCar.ItemIndex := 0
              else
              if DmOra.CadUsu_TRelViaUSU_RETCAR.Value = 'C' then
                 EdRetCar.ItemIndex := 1;

              DBEUSU_CODMTRExit(Sender);
           end//2
        else
           begin//3
              EdRetCar.ItemIndex := -1;
              DmOra.CadUsu_TRelVia.Insert;
              DmOra.CadUsu_TRelViaUSU_DATLAN.Value := DATE;
              DmOra.CadUsu_TRelViaUSU_CODTRA.Value := 1;
              DmOra.CadUsu_TRelViaUSU_CODEMP.Value := 1;
              DmOra.CadUsu_TRelViaUSU_CODFIL.Value := 1;
              DmOra.CadUsu_TRelViaUSU_NUMANE.Value := StrToInt(TRIM(EdNumAne.Text));

              //consulta o veiculo e o motorista da carga
              DmOra.ConsSql.Close;
              DmOra.ConsSql.SQL.Clear;
              DmOra.ConsSql.SQL.Add('select distinct(e135pfa.plavei),e135pfa.codmtr from e135pfa');
              DmOra.ConsSql.SQL.Add('where');
              DmOra.ConsSql.SQL.Add('e135pfa.CodEmp = 1 and');
              DmOra.ConsSql.SQL.Add('e135pfa.CodFil = 1 and');
              DmOra.ConsSql.SQL.Add('e135pfa.NumAne = :numane');
              DmOra.ConsSql.Parameters.ParamByName('numane').Value := StrToInt(trim(EdNumAne.Text));
              DmOra.ConsSql.Open;
              if not DmOra.ConsSql.IsEmpty then
                 begin
                   DmOra.CadUsu_TRelViaUSU_PLAVEI.Value := DmOra.ConsSql.FieldByName('plavei').AsString;
                   DmOra.CadUsu_TRelViaUSU_CODMTR.Value := DmOra.ConsSql.FieldByName('codmtr').AsInteger;
                 end;

              DBEUSU_CODMTRExit(Sender);

           end;//3
     end//1
  else
     begin//4
        DmOra.CadUsu_TRelVia.Close;
        EdRetCar.ItemIndex := -1;
        LDsCodMtr.Caption := '';
     end;//4
end;

procedure TFRelatorioViagem.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFRelatorioViagem.FormShow(Sender: TObject);
begin
    DmOra.CadUsu_TRelVia.Open;



end;

end.
