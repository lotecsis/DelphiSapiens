unit ULancaServConvenio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, DBClient, DateUtils;

type
  TFLancaServConvenio = class(TForm)
    CbServicos: TComboBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    BConfirmar: TBitBtn;
    DsTempServ: TDataSource;
    TempServ: TClientDataSet;
    TempServCodSer: TStringField;
    TempServNumCad: TIntegerField;
    TempServCodDep: TIntegerField;
    TempServQtdSer: TIntegerField;
    TempServPreUni: TFloatField;
    TempServDatSer: TDateField;
    TempServNomFun: TStringField;
    TempServObsSer: TStringField;
    TempServInAdt: TStringField;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure TempServ2AfterInsert(DataSet: TDataSet);
    procedure DsTempServStateChange(Sender: TObject);
    procedure TempServ2BeforePost(DataSet: TDataSet);
    procedure BConfirmarClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure TempServAfterInsert(DataSet: TDataSet);
    procedure TempServBeforePost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    vaStatusTempServ : TDataSetState;
  public
    { Public declarations }
  end;

var
  FLancaServConvenio: TFLancaServConvenio;

implementation

uses UDmOra, UConsFuncionarios;

{$R *.dfm}

procedure TFLancaServConvenio.BConfirmarClick(Sender: TObject);
var Ano,Mes,Dia : word;
begin

    if not TempServ.IsEmpty then
       begin//1
         TempServ.First;
         while not TempServ.Eof do
            begin//2
               DmOra.CadUsu_TRhSerMov.Open;
               DmOra.CadUsu_TRhSerMov.Insert;
               DmOra.CadUsu_TRhSerMovUSU_CODSER.Value := TempServCodSer.AsString;

               DmOra.ConsSql.Close;
               DmOra.ConsSql.SQL.Clear;
               DmOra.ConsSql.SQL.Add('SELECT USU_SEQSER FROM USU_TRHSERMOV WHERE USU_CODSER = :CODSER ORDER BY USU_SEQSER DESC');
               DmOra.ConsSql.Parameters.ParamByName('CODSER').Value := TempServCodSer.Value;
               DmOra.ConsSql.Open;
               if DmOra.ConsSql.IsEmpty then
                  DmOra.CadUsu_TRhSerMovUSU_SEQSER.Value := 1
               else
                  DmOra.CadUsu_TRhSerMovUSU_SEQSER.Value := DmOra.ConsSql.FieldByName('USU_SEQSER').Value + 1;

               DmOra.CadUsu_TRhSerMovUSU_NUMCAD.Value := TempServNumCad.Value;
               DmOra.CadUsu_TRhSerMovUSU_CODDEP.Value := TempServCodDep.Value;
               DmOra.CadUsu_TRhSerMovUSU_QTDSER.Value := TempServQtdSer.Value;
               DmOra.CadUsu_TRhSerMovUSU_PREUNI.Value := TempServPreUni.Value;
               DmOra.CadUsu_TRhSerMovUSU_DATSER.Value := TempServDatSer.Value;
               DmOra.CadUsu_TRhSerMovUSU_NOMFUN.Value := TempServNomFun.Value;
               DmOra.CadUsu_TRhSerMovUSU_INADT.Value := TempServInAdt.Value;

               DecodeDate(TempServDatSer.Value,Ano,Mes,Dia);
               DmOra.CadUsu_TRhSerMovUSU_MESSER.Value := Mes;
               DmOra.CadUsu_TRhSerMovUSU_ANOSER.Value := Ano;
               DmOra.CadUsu_TRhSerMovUSU_OBSSER.Value := TempServObsSer.Value;
               DmOra.CadUsu_TRhSerMovUSU_ADTGER.Value := 'N';
               DmOra.CadUsu_TRhSerMov.Post;

               TempServ.Delete;
            end;//2
       end;//1

end;

procedure TFLancaServConvenio.DBGrid1ColExit(Sender: TObject);
begin
if vaStatusTempServ in [dsInsert,dsEdit] then
   begin//a
     if DBGrid1.SelectedField.FieldName = 'NumCad' then
        begin//1
          if DBGrid1.SelectedField.AsInteger = 0 then
             begin
               MessageDlg('Informe o funcionário',mtWarning,[mbOK],0);
               DBGrid1.SelectedIndex := 0;
               Abort;
             end;
        end//1
     else
     if DBGrid1.SelectedField.FieldName = 'CodDep' then
        begin//2
          if DBGrid1.SelectedField.AsInteger = 0 then
             begin
               MessageDlg('Informe o dependente',mtWarning,[mbOK],0);
               DBGrid1.SelectedIndex := 1;
               Abort;
             end
          else
             begin
               DmOra.ConsSql.Close;
               DmOra.ConsSql.SQL.Clear;
               DmOra.ConsSql.SQL.Add('SELECT USU_TRHFUN.USU_NOMFUN FROM USU_TRHFUN WHERE USU_NUMCAD = :NUMCAD AND');
               DmOra.ConsSql.SQL.Add('USU_CODDEP = :CODDEP');
               DmOra.ConsSql.Parameters.ParamByName('NUMCAD').Value := TempServNumCad.Value;
               DmOra.ConsSql.Parameters.ParamByName('CODDEP').Value := TempServCodDep.AsInteger;
               DmOra.ConsSql.Open;
               if DmOra.ConsSql.IsEmpty then
                  begin
                     MessageDlg('Funcionário não encontrado',mtWarning,[mbOK],0);
                     DBGrid1.SelectedIndex := 1;
                     Abort;
                  end
               else
                  begin
                     TempServNomFun.Value := DmOra.ConsSql.FieldByName('USU_NOMFUN').Value;
                  end;

             end;
        end//2
     else
     if DBGrid1.SelectedField.FieldName = 'QtdSer' then
        begin//3
          if DBGrid1.SelectedField.AsInteger = 0 then
             begin
               MessageDlg('Informe a quantidade',mtWarning,[mbOK],0);
               DBGrid1.SelectedIndex := 3;
               Abort;
             end;
        end//3
     else
     if DBGrid1.SelectedField.FieldName = 'PreUni' then
        begin//4
          if DBGrid1.SelectedField.AsInteger = 0 then
             begin
               MessageDlg('Informe o valor unitário',mtWarning,[mbOK],0);
               DBGrid1.SelectedIndex := 4;
               Abort;
             end;
        end//4
     else
     if DBGrid1.SelectedField.FieldName = 'DatSer' then
        begin//5
          if DBGrid1.SelectedField.AsDateTime = 0 then
             begin
               MessageDlg('Informe a data',mtWarning,[mbOK],0);
               DBGrid1.SelectedIndex := 5;
               Abort;
             end;
        end//5

   end;//a

end;

procedure TFLancaServConvenio.DBGrid1EditButtonClick(Sender: TObject);
begin
  if vaStatusTempServ in [dsinsert,dsedit] then
     begin//1
        if DBGrid1.SelectedField.FieldName = 'NumCad' then
           begin//2
              if FConsFuncionarios.ShowModal = mrOk then
                 begin//3
                    if not DmOra.ConsFuncionarios.IsEmpty then
                       begin//4
                         TempServNumCad.Value := DmOra.ConsFuncionariosUSU_NUMCAD.Value;
                         TempServCodDep.Value := DmOra.ConsFuncionariosUSU_CODDEP.Value;
                         TempServNomFun.Value := DmOra.ConsFuncionariosUSU_NOMFUN.Value;

                       end;//4
                 end;//3
           end;//2
     end;//1
end;

procedure TFLancaServConvenio.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = vk_Return Then
    DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1;

    if key = vk_f3 then
       begin//
          if vaStatusTempServ in [dsinsert,dsedit] then
             begin//1
                if DBGrid1.SelectedField.FieldName = 'NumCad' then
                   begin//2
                      if FConsFuncionarios.ShowModal = mrOk then
                         begin//3
                            if not DmOra.ConsFuncionarios.IsEmpty then
                               begin//4
                                 TempServNumCad.Value := DmOra.ConsFuncionariosUSU_NUMCAD.Value;
                                 TempServCodDep.Value := DmOra.ConsFuncionariosUSU_CODDEP.Value;
                                 TempServNomFun.Value := DmOra.ConsFuncionariosUSU_NOMFUN.Value;

                               end;//4
                         end;//3
                   end;//2
              end;//1
       end;//
end;

procedure TFLancaServConvenio.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
Key:= Upcase(Key);

if DBGrid1.SelectedField.FieldName = 'InAdt' then
   begin
     if not (key in ['A','S','N'])and not (key in [#8])
      and not (key in [#240]) then
        BEGIN
          Key := #0;
        END;

   end;
end;

procedure TFLancaServConvenio.DsTempServStateChange(Sender: TObject);
begin
  vaStatusTempServ := TempServ.State;
end;

procedure TFLancaServConvenio.FormShow(Sender: TObject);
begin
    TempServ.Open;
    TempServ.First;
    while not TempServ.Eof do
       begin
         TempServ.Delete;
       end;

end;

procedure TFLancaServConvenio.TempServ2AfterInsert(DataSet: TDataSet);
begin
 TempServCodSer.Value := CbServicos.Text;
 TempServDatSer.Value := date;
 TempServCodSer.Value := CbServicos.Text;

DBGrid1.SelectedIndex := 0;
end;

procedure TFLancaServConvenio.TempServ2BeforePost(DataSet: TDataSet);
begin
  if TempServNumCad.Value = 0 then
     begin
       Abort;
     end
  else
  if TempServCodDep.Value = 0 then
     begin
       Abort;
     end
  else
  if TempServQtdSer.Value = 0 then
     begin
       Abort;
     end
  else
  if TempServPreUni.Value = 0 then
     begin
       Abort;
     end
  else
  if TempServDatSer.Value = 0 then
     begin
       Abort;
     end;

end;

procedure TFLancaServConvenio.TempServAfterInsert(DataSet: TDataSet);
begin

  TempServCodSer.Value := CbServicos.Text;

  DBGrid1.SelectedIndex := 0;

end;

procedure TFLancaServConvenio.TempServBeforePost(DataSet: TDataSet);
begin
    if TempServNumCad.Value = 0 then
       begin
         Abort;
       end
    else
    if TempServCodDep.Value = 0 then
       begin
         abort;
       end
    else
    if TempServQtdSer.Value = 0 then
       begin
         Abort;
       end
    else
    if TempServPreUni.Value = 0 then
       begin
         Abort;
       end
    else
    if TempServDatSer.Value = 0 then
       begin
         abort;
       end
    else
    if Trim(TempServInAdt.AsString) = '' then
       begin
         Abort;
       end;


end;

end.
