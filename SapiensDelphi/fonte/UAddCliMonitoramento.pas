unit UAddCliMonitoramento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons, DB, ADODB;

type
  TFAddCliMonitoramento = class(TForm)
    edtCodCli: TCurrencyEdit;
    Label1: TLabel;
    btnConsCli: TBitBtn;
    edtNomCli: TEdit;
    btnConfirmar: TBitBtn;
    ConsCli: TADOQuery;
    ConsCliCODCLI: TIntegerField;
    ConsCliNOMCLI: TStringField;
    ConsCliCODRAI: TIntegerField;
    ConsCliCODREP: TIntegerField;
    ConsCliSITCLI: TStringField;
    procedure btnConsCliClick(Sender: TObject);
    procedure edtCodCliExit(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddCliMonitoramento: TFAddCliMonitoramento;

implementation

uses UDmOra, UConsGeralNfEnt;

{$R *.dfm}

procedure TFAddCliMonitoramento.btnConfirmarClick(Sender: TObject);
begin
  if edtCodCli.AsInteger = 0 then
     begin
       Application.MessageBox('Informe o Cliente','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtCodCli;
       Abort;
     end;

     if ConsCliSITCLI.AsString = 'I' then
        begin
          Application.MessageBox('O cliente esta INATIVO e não pode ser monitorado','Aviso',MB_ICONWARNING+MB_OK);
          Abort;
        end;


    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('SELECT USU_TE085MONI.USU_CODCLI');
    DmOra.ConsSql.SQL.Add(' FROM USU_TE085MONI');
    DmOra.ConsSql.SQL.Add(' WHERE USU_CODCLI = :CODCLI');
    DmOra.ConsSql.SQL.Add(' AND USU_MOTFIM = '' ''');
    DmOra.ConsSql.Parameters.ParamByName('CODCLI').Value := edtCodCli.AsInteger;
    DmOra.ConsSql.Open;
    if not DmOra.ConsSql.IsEmpty then
       begin
         Application.MessageBox('Cliente já esta sendo monitorado','Aviso',MB_ICONWARNING+MB_OK);
         Abort;
       end;

    DmOra.CadUsu_TE085Moni.Open;
    DmOra.CadUsu_TE085Moni.Insert;
    DmOra.CadUsu_TE085MoniUSU_CODCLI.AsInteger := edtCodCli.AsInteger;
    DmOra.CadUsu_TE085MoniUSU_CODRAI.Value := ConsCliCODRAI.Value;
    DmOra.CadUsu_TE085MoniUSU_CODREP.Value := ConsCliCODREP.Value;
    DmOra.CadUsu_TE085MoniUSU_CLISERA.Value := 'NAO';
    DmOra.CadUsu_TE085MoniUSU_DATINI.Value := Date;
    DmOra.CadUsu_TE085MoniUSU_DATFIM.Value := 0;
    DmOra.CadUsu_TE085MoniUSU_MOTFIM.Value := ' ';
    DmOra.CadUsu_TE085MoniUSU_SALFIM.AsFloat := 0;
    DmOra.CadUsu_TE085MoniUSU_DATSER.Value := 0;
    DmOra.CadUsu_TE085MoniUSU_SITSER.Value := 'INDEFINIDO';
    DmOra.CadUsu_TE085MoniUSU_USUSER.Value := 0;


    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('SELECT MAX(USU_IDMON)AS USU_IDMON FROM USU_TE085MONI');
    DmOra.ConsSql.Open;
    if not DmOra.ConsSql.IsEmpty then
       begin
         DmOra.CadUsu_TE085MoniUSU_IDMON.Value := DmOra.ConsSql.FieldByName('USU_IDMON').AsInteger + 1;
       end
    else
       begin
         DmOra.CadUsu_TE085MoniUSU_IDMON.Value :=  1;
       end;

    DmOra.CadUsu_TE085Moni.Post;

    Application.MessageBox(PChar('Cliente:  '+edtNomCli.Text +'  adicionado com sucesso!!'),'Confirmação',MB_ICONINFORMATION+MB_OK);

    edtCodCli.AsInteger := 0;
    edtNomCli.Clear;

end;

procedure TFAddCliMonitoramento.btnConsCliClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.cgccpf,e085cli.insest,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085cli.cidcli,e085cli.sigufs,e085cli.endcli,e085cli.baicli,e085cli.sitcli,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085hcl.codrep,e090rep.nomrep,e090rep.aperep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e085cli';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e085hcl on e085hcl.codcli = e085cli.codcli';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e090rep on e090rep.codrep = e085hcl.codrep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e085hcl.codfil = 1';

    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodCli';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FAddCliMonitoramento';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodCli;
end;

procedure TFAddCliMonitoramento.edtCodCliExit(Sender: TObject);
begin
if edtCodCli.AsInteger > 0 then
   begin
     ConsCli.Close;
     ConsCli.Parameters.ParamByName('CODCLI').Value := edtCodCli.AsInteger;
     ConsCli.Open;
     if ConsCli.IsEmpty then
        begin
          Application.MessageBox('Cliente não encontrado','Aviso',MB_ICONWARNING+MB_OK);
          edtNomCli.Clear;
          ActiveControl := edtCodCli;
        end
     else
        begin
          edtNomCli.Text := ConsCli.FieldByName('NOMCLI').AsString;
        end;

   end
else
   begin
     edtNomCli.Clear;

   end;
end;

procedure TFAddCliMonitoramento.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.



