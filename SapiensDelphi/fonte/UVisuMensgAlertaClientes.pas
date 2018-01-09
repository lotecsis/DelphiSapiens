unit UVisuMensgAlertaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, StdCtrls, DBCtrls, Buttons;

type
  TFVisuMensgAlertaClientes = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DsConsUsu_T085Mac: TDataSource;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    DBText6: TDBText;
    Label4: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    BResolvido: TBitBtn;
    BProrrogar: TBitBtn;
    DBText9: TDBText;
    procedure FormShow(Sender: TObject);
    procedure BResolvidoClick(Sender: TObject);
    procedure BProrrogarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVisuMensgAlertaClientes: TFVisuMensgAlertaClientes;

implementation

uses UDm3;

{$R *.dfm}

procedure TFVisuMensgAlertaClientes.BProrrogarClick(Sender: TObject);
var vnQtdDias : integer;
    vbValidaDias : boolean;
begin

if not Dm3.ConsUsu_T085Mac.IsEmpty then
  begin
      if Application.MessageBox('Deseja realmente prorrogar este alerta?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
           begin
              Dm3.CadUsu_T085Mac.Close;
              Dm3.CadUsu_T085Mac.Parameters.ParamByName('codcli').Value := Dm3.ConsUsu_T085MacUSU_CODCLI.Value;
              Dm3.CadUsu_T085Mac.Parameters.ParamByName('nummen').Value := Dm3.ConsUsu_T085MacUSU_NUMMEN.Value;
              Dm3.CadUsu_T085Mac.Open;
              if not Dm3.CadUsu_T085Mac.IsEmpty then
                 begin
                    vbValidaDias := false;
                    while vbValidaDias = false do
                       begin
                         try
                            vnQtdDias := StrToInt(InputBox('PRORROGAÇÃO','Quantidade de dias que deseja prorrogar',''));
                            vbValidaDias := true;
                         except
                            MessageDlg('Digito Inválido',mtWarning,[mbOK],0);
                            vbValidaDias := false;
                         end;

                       end;

                    Dm3.CadUsu_T085Mac.Edit;
                    Dm3.CadUsu_T085MacUSU_DATALE.Value := Dm3.CadUsu_T085MacUSU_DATALE.Value + vnQtdDias;

                    Dm3.CadUsu_T085Mac.Post;

                    Dm3.ConsUsu_T085Mac.Close;
                    Dm3.ConsUsu_T085Mac.Parameters.ParamByName('data').Value := date;
                    Dm3.ConsUsu_T085Mac.Open;
                 end;
           end;
  end;
end;

procedure TFVisuMensgAlertaClientes.BResolvidoClick(Sender: TObject);
begin
if not Dm3.ConsUsu_T085Mac.IsEmpty then
  begin
      if Application.MessageBox('Deseja realmente finalizar este alerta?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
         begin
            Dm3.CadUsu_T085Mac.Close;
            Dm3.CadUsu_T085Mac.Parameters.ParamByName('codcli').Value := Dm3.ConsUsu_T085MacUSU_CODCLI.Value;
            Dm3.CadUsu_T085Mac.Parameters.ParamByName('nummen').Value := Dm3.ConsUsu_T085MacUSU_NUMMEN.Value;
            Dm3.CadUsu_T085Mac.Open;
            if not Dm3.CadUsu_T085Mac.IsEmpty then
               begin
                  Dm3.CadUsu_T085Mac.Edit;
                  Dm3.CadUsu_T085MacUSU_MENRES.Value := 'S';
                  Dm3.CadUsu_T085Mac.Post;

                  Dm3.ConsUsu_T085Mac.Close;
                  Dm3.ConsUsu_T085Mac.Parameters.ParamByName('data').Value := date;
                  Dm3.ConsUsu_T085Mac.Open;
               end;
         end;
  end;
end;

procedure TFVisuMensgAlertaClientes.FormShow(Sender: TObject);
begin
   Dm3.ConsUsu_T085Mac.Close;
   Dm3.ConsUsu_T085Mac.Parameters.ParamByName('data').Value := date;
   Dm3.ConsUsu_T085Mac.Open;

end;

end.
