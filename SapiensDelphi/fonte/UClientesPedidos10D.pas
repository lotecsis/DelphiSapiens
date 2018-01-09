unit UClientesPedidos10D;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB;

type
  TFClientesPedidos10D = class(TForm)
    DBGrid1: TDBGrid;
    CadUSU_T085TEP: TADOQuery;
    CadUSU_T085TEPUSU_CODCLI: TIntegerField;
    CadUSU_T085TEPUSU_NOMCLI: TStringField;
    DsCadUSU_T085TEP: TDataSource;
    ConsE085Cli: TADOQuery;
    ConsE085CliNOMCLI: TStringField;
    procedure FormShow(Sender: TObject);
    procedure DsCadUSU_T085TEPStateChange(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure CadUSU_T085TEPBeforePost(DataSet: TDataSet);
    procedure CadUSU_T085TEPAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    vaStatusCad : TDataSetState;
  public
    { Public declarations }
  end;

var
  FClientesPedidos10D: TFClientesPedidos10D;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFClientesPedidos10D.CadUSU_T085TEPAfterPost(DataSet: TDataSet);
begin
    DBGrid1.SelectedIndex := 0;
end;

procedure TFClientesPedidos10D.CadUSU_T085TEPBeforePost(DataSet: TDataSet);
begin
    if CadUSU_T085TEPUSU_CODCLI.Value = 0 then
       begin
         MessageDlg('Informe o Cliente',mtWarning,[mbOK],0);
         DBGrid1.SelectedIndex := 0;
         Abort;
       end
    else
    if CadUSU_T085TEPUSU_NOMCLI.Value = '' then
       begin
         MessageDlg('Informe o Cliente',mtWarning,[mbOK],0);
         DBGrid1.SelectedIndex := 0;
         Abort;
       end
    else
       begin
         ConsE085Cli.Close;
         ConsE085Cli.Parameters.ParamByName('codcli').Value := CadUSU_T085TEPUSU_CODCLI.Value;
         ConsE085Cli.Open;
         if ConsE085Cli.IsEmpty then
            begin
              MessageDlg('Cliente não encontrado',mtWarning,[mbOK],0);
              CadUSU_T085TEPUSU_NOMCLI.Value := '';
              DBGrid1.SelectedIndex := 0;
              Abort;
            end;
       end;

end;

procedure TFClientesPedidos10D.DBGrid1ColExit(Sender: TObject);
begin
if vaStatusCad in [dsinsert,dsedit] then
   begin//1
     if DBGrid1.SelectedField.FieldName = 'USU_CODCLI' then
        begin//2
           if DBGrid1.SelectedField.AsInteger = 0 then
              begin
                MessageDlg('Informe o Cliente',mtWarning,[mbOK],0);
                DBGrid1.SelectedIndex := 0;
                Abort;
              end
           else
              begin
                ConsE085Cli.Close;
                ConsE085Cli.Parameters.ParamByName('codcli').Value := DBGrid1.SelectedField.AsInteger;
                ConsE085Cli.Open;
                if ConsE085Cli.IsEmpty then
                   begin
                     MessageDlg('Cliente não encontrado',mtWarning,[mbOK],0);
                     CadUSU_T085TEPUSU_NOMCLI.Value := '';
                     DBGrid1.SelectedIndex := 0;
                     Abort;
                   end
                else
                   begin
                     CadUSU_T085TEPUSU_NOMCLI.Value := ConsE085CliNOMCLI.Value;
                   end;

              end;

        end;//2
   end;//1
end;

procedure TFClientesPedidos10D.DsCadUSU_T085TEPStateChange(Sender: TObject);
begin
    vaStatusCad := CadUSU_T085TEP.State;
end;

procedure TFClientesPedidos10D.FormShow(Sender: TObject);
begin
  CadUSU_T085TEP.Close;
  CadUSU_T085TEP.Open;
end;

end.
