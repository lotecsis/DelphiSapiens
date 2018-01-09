unit UPendenciasPreCarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ADODB, DBClient, Buttons;

type
  TFPendenciasPreCarga = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid3: TDBGrid;
    DsAddPendencias: TDataSource;
    AddPendencias: TClientDataSet;
    AddPendenciasNumPen: TIntegerField;
    AddPendenciasCodCli: TIntegerField;
    AddPendenciasNomCli: TStringField;
    ConsUsu_T097Pen: TADOQuery;
    DsConsUsu_T097Pen: TDataSource;
    BAddPen: TBitBtn;
    BExcluiPen: TBitBtn;
    ConsUsu_T097PenUSU_CODEMP: TIntegerField;
    ConsUsu_T097PenUSU_NUMPEN: TIntegerField;
    ConsUsu_T097PenUSU_CODCLI: TIntegerField;
    ConsUsu_T097PenUSU_TIPPEN: TStringField;
    ConsUsu_T097PenUSU_SITPEN: TStringField;
    ConsUsu_T097PenUSU_DESPEN: TStringField;
    ConsUsu_T097PenUSU_OBSPEN: TStringField;
    ConsUsu_T097PenUSU_PRECAR: TIntegerField;
    ConsUsu_T097PenUSU_DATGER: TDateTimeField;
    ConsUsu_T097PenUSU_USUGER: TIntegerField;
    ConsUsu_T097PenNOMCLI: TStringField;
    ConsUsu_T097PenCIDCLI: TStringField;
    ConsUsu_T097PenSIGUFS: TStringField;
    ConsUsu_T097Ppen: TADOQuery;
    DsConsUsu_T097Ppen: TDataSource;
    ConsUsu_T097PpenUSU_CODEMP: TIntegerField;
    ConsUsu_T097PpenUSU_NUMPEN: TIntegerField;
    ConsUsu_T097PpenUSU_SEQIPD: TIntegerField;
    ConsUsu_T097PpenUSU_CODPRO: TStringField;
    ConsUsu_T097PpenUSU_CODDER: TStringField;
    ConsUsu_T097PpenUSU_COR01: TStringField;
    ConsUsu_T097PpenUSU_COR02: TStringField;
    ConsUsu_T097PpenUSU_OBSPRO: TStringField;
    ConsUsu_T097PpenUSU_SITIPD: TStringField;
    ConsUsu_T097PpenUSU_PRECAR: TIntegerField;
    ConsUsu_T097PpenUSU_DATGER: TDateTimeField;
    ConsUsu_T097PpenUSU_USUGER: TIntegerField;
    ConsUsu_T097PpenUSU_VLRPRO: TBCDField;
    ConsUsu_T097PpenUSU_QTDPRO: TIntegerField;
    ConsUsu_T097PpenDESPRO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure DsAddPendenciasStateChange(Sender: TObject);
    procedure AddPendenciasBeforePost(DataSet: TDataSet);
    procedure DBGrid3ColExit(Sender: TObject);
    procedure DBGrid3Enter(Sender: TObject);
    procedure DBGrid3Exit(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure BAddPenClick(Sender: TObject);
    procedure BExcluiPenClick(Sender: TObject);
    procedure ConsUsu_T097PenAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    vaStatus : TDataSetState;
  public
    { Public declarations }
  end;

var
  FPendenciasPreCarga: TFPendenciasPreCarga;

implementation

uses UDmOra, UDm, UPreCarga, UConsGeralNfEnt;

{$R *.dfm}

procedure TFPendenciasPreCarga.AddPendenciasBeforePost(DataSet: TDataSet);
begin
  if AddPendenciasNumPen.Value = 0 then
     begin
       MessageDlg('Informe a Pendência!',mtWarning,[mbok],0);
       DBGrid3.SelectedIndex := 0;
       Abort;
     end;


  if vaStatus in [dsinsert,dsedit] then
     begin//1
       if DBGrid3.SelectedField.FieldName = 'NumPen' then
          begin//2
              DmOra.ConsSql.Close;
              DmOra.ConsSql.SQL.Clear;
              DmOra.ConsSql.SQL.Add('select usu_t097pen.usu_numpen,usu_t097pen.usu_codcli,e085cli.nomcli,e085cli.cidcli,e085cli.sigufs');
              DmOra.ConsSql.SQL.Add('from usu_t097pen');
              DmOra.ConsSql.SQL.Add('inner join e085cli on e085cli.codcli = usu_t097pen.usu_codcli');
              DmOra.ConsSql.SQL.Add('where usu_t097pen.usu_numpen = :numpen');
              DmOra.ConsSql.Parameters.ParamByName('numpen').Value := AddPendenciasNumPen.Value;
              DmOra.ConsSql.Open;
              if DmOra.ConsSql.IsEmpty then
                 begin//3
                    MessageDlg('Pendência não encontrada',mtWarning,[mbok],0);
                    DBGrid3.SelectedIndex := 0;
                    abort;
                 end//3
              else
                 begin//4
                    AddPendenciasCodCli.Value := DmOra.ConsSql.FieldByName('usu_codcli').AsInteger;
                    AddPendenciasNomCli.Value := DmOra.ConsSql.FieldByName('nomcli').AsString;

                 end;//4

          end;//2
     end;//1


end;

procedure TFPendenciasPreCarga.BAddPenClick(Sender: TObject);
begin
    if not AddPendencias.IsEmpty then
       begin//1
          AddPendencias.First;
          while not AddPendencias.Eof do
             begin//2
               DmOra.CadUsu_T097Pen.Close;
               DmOra.CadUsu_T097Pen.Parameters.ParamByName('codemp').Value := 1;
               DmOra.CadUsu_T097Pen.Parameters.ParamByName('numpen').Value := AddPendenciasNumPen.Value;
               DmOra.CadUsu_T097Pen.Open;
               if not DmOra.CadUsu_T097Pen.IsEmpty then
                  begin//3
                    DmOra.CadUsu_T097Pen.Edit;
                    DmOra.CadUsu_T097PenUSU_PRECAR.Value := StrToInt(trim(FPreCarga.EdPreCarga.Text));
                    DmOra.CadUsu_T097Pen.Post;
                  end;//3

               AddPendencias.Delete;
             end;//2

             FormShow(Sender);
       end;//1
end;

procedure TFPendenciasPreCarga.BExcluiPenClick(Sender: TObject);
begin
    if not ConsUsu_T097Pen.IsEmpty then
       begin
         DmOra.CadUsu_T097Pen.Close;
         DmOra.CadUsu_T097Pen.Parameters.ParamByName('codemp').Value := 1;
         DmOra.CadUsu_T097Pen.Parameters.ParamByName('numpen').Value := ConsUsu_T097PenUSU_NUMPEN.Value;
         DmOra.CadUsu_T097Pen.Open;
         if not DmOra.CadUsu_T097Pen.IsEmpty then
            begin//3
               DmOra.CadUsu_T097Pen.Edit;
               DmOra.CadUsu_T097PenUSU_PRECAR.Value := 0;
               DmOra.CadUsu_T097Pen.Post;

               FormShow(Sender);
            end;//3
       end;
end;

procedure TFPendenciasPreCarga.ConsUsu_T097PenAfterScroll(DataSet: TDataSet);
begin
    ConsUsu_T097Ppen.Close;
    ConsUsu_T097Ppen.Parameters.ParamByName('numpen').Value := ConsUsu_T097PenUSU_NUMPEN.Value;
    ConsUsu_T097Ppen.Open;

end;

procedure TFPendenciasPreCarga.DBGrid3ColExit(Sender: TObject);
begin
  if vaStatus in [dsinsert,dsedit] then
     begin//1
       if DBGrid3.SelectedField.FieldName = 'NumPen' then
          begin//2
              DmOra.ConsSql.Close;
              DmOra.ConsSql.SQL.Clear;
              DmOra.ConsSql.SQL.Add('select usu_t097pen.usu_numpen,usu_t097pen.usu_codcli,e085cli.nomcli,e085cli.cidcli,e085cli.sigufs');
              DmOra.ConsSql.SQL.Add('from usu_t097pen');
              DmOra.ConsSql.SQL.Add('inner join e085cli on e085cli.codcli = usu_t097pen.usu_codcli');
              DmOra.ConsSql.SQL.Add('where usu_t097pen.usu_numpen = :numpen');
              DmOra.ConsSql.Parameters.ParamByName('numpen').Value := AddPendenciasNumPen.Value;
              DmOra.ConsSql.Open;
              if DmOra.ConsSql.IsEmpty then
                 begin//3
                    MessageDlg('Pendência não encontrada',mtWarning,[mbok],0);
                    DBGrid3.SelectedIndex := 0;
                    abort;
                 end//3
              else
                 begin//4
                    AddPendenciasCodCli.Value := DmOra.ConsSql.FieldByName('usu_codcli').AsInteger;
                    AddPendenciasNomCli.Value := DmOra.ConsSql.FieldByName('nomcli').AsString;

                 end;//4

          end;//2
     end;//1
end;

procedure TFPendenciasPreCarga.DBGrid3EditButtonClick(Sender: TObject);
begin
  if vaStatus in [dsInsert,dsEdit] then
     begin//1
         if DBGrid3.SelectedField.FieldName = 'NumPen' then
            begin//2
                FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
                FConsGeralNfEnt.vaSql := 'select usu_t097pen.usu_tippen,usu_t097pen.usu_sitpen, usu_t097pen.usu_numpen,';
                FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' usu_t097pen.usu_codcli,';
                FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e085cli.nomcli,e085cli.apecli,e085cli.cidcli,e085cli.cgccpf,';
                FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' usu_t097pen.usu_precar,usu_t097pen.usu_datger,usu_t097pen.usu_usuger';
                FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from usu_t097pen';
                FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e085cli on e085cli.codcli = usu_t097pen.usu_codcli';
                FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where usu_t097pen.usu_sitpen = ''A''';

                FConsGeralNfEnt.vbWhere := true;
                FConsGeralNfEnt.vaCampo := 'NumPen';
                FConsGeralNfEnt.vnColuna := 4;
                FConsGeralNfEnt.vaTela := 'FPendenciasPreCarga';
                FConsGeralNfEnt.ShowModal;
                FreeAndNil(FConsGeralNfEnt);

                //DBGrid3.SelectedIndex := 0;

            end;//2
     end;//1

end;

procedure TFPendenciasPreCarga.DBGrid3Enter(Sender: TObject);
begin
    KeyPreview := false;
end;

procedure TFPendenciasPreCarga.DBGrid3Exit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFPendenciasPreCarga.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = vk_Return Then
    DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1
end;

procedure TFPendenciasPreCarga.DsAddPendenciasStateChange(Sender: TObject);
begin
  vaStatus := AddPendencias.State;
end;

procedure TFPendenciasPreCarga.FormShow(Sender: TObject);
begin
    ConsUsu_T097Pen.Close;
    ConsUsu_T097Pen.Parameters.ParamByName('precar').Value := StrToInt(trim(FPreCarga.EdPreCarga.Text));
    ConsUsu_T097Pen.Open;
end;

end.
