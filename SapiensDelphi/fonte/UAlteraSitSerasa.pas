unit UAlteraSitSerasa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFAlteraSitSerasa = class(TForm)
    btnConfirmar: TBitBtn;
    cbbSitSer: TComboBox;
    edtNomCli: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAlteraSitSerasa: TFAlteraSitSerasa;

implementation

uses UDmOra, UPrincipal;

{$R *.dfm}

procedure TFAlteraSitSerasa.btnConfirmarClick(Sender: TObject);
begin
   if Trim(cbbSitSer.Text) <> '' then
      begin
         DmOra.CadUsu_TE085Moni.Close;
         DmOra.CadUsu_TE085Moni.Parameters.ParamByName('USU_IDMON').Value := DmOra.CliAvaliarSerasaUSU_IDMON.AsInteger;
         DmOra.CadUsu_TE085Moni.Open;
         if not DmOra.CadUsu_TE085Moni.IsEmpty then
            begin
              DmOra.CadUsu_TE085Moni.Edit;
              DmOra.CadUsu_TE085MoniUSU_SITSER.Value := cbbSitSer.Text;
              DmOra.CadUsu_TE085MoniUSU_DATSER.Value := Date;
              DmOra.CadUsu_TE085MoniUSU_USUSER.AsInteger := FPrincipal.cd_usuario;

              if cbbSitSer.Text = 'RUIM' then
                 begin
                   DmOra.CadUsu_TE085MoniUSU_DATFIM.Value := Date;
                   DmOra.CadUsu_TE085MoniUSU_MOTFIM.Value := 'SERASA RUIM';

                   //CONSULTA O SALDO
                   DmOra.ConsSql.Close;
                   DmOra.ConsSql.SQL.Clear;
                   DmOra.ConsSql.SQL.Add(' SELECT USU_TE085MONI.USU_CODCLI,');
                   DmOra.ConsSql.SQL.Add('       ((SELECT SUM(E120IPD.QTDABE * E120IPD.PREUNI)');
                   DmOra.ConsSql.SQL.Add('         FROM E120IPD');
                   DmOra.ConsSql.SQL.Add('          INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND');
                   DmOra.ConsSql.SQL.Add('                                E120PED.CODFIL = E120IPD.CODFIL AND');
                   DmOra.ConsSql.SQL.Add('                                E120PED.NUMPED = E120IPD.NUMPED');
                   DmOra.ConsSql.SQL.Add('          WHERE');
                   DmOra.ConsSql.SQL.Add('            E120PED.DATEMI BETWEEN USU_TE085MONI.USU_DATINI AND SYSDATE AND');
                   DmOra.ConsSql.SQL.Add('            E120PED.TNSPRO IN (''90100'',''90106'',''90150'',''90156'') AND');
                   DmOra.ConsSql.SQL.Add('            E120IPD.SITIPD IN (1,2,3) AND');
                   DmOra.ConsSql.SQL.Add('            E120PED.CODCLI = USU_TE085MONI.USU_CODCLI) +');
                   DmOra.ConsSql.SQL.Add('       (SELECT SUM(E120IPD.QTDFAT * E120IPD.PREUNI)');
                   DmOra.ConsSql.SQL.Add('         FROM E120IPD');
                   DmOra.ConsSql.SQL.Add('          INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND');
                   DmOra.ConsSql.SQL.Add('                                E120PED.CODFIL = E120IPD.CODFIL AND');
                   DmOra.ConsSql.SQL.Add('                                E120PED.NUMPED = E120IPD.NUMPED');
                   DmOra.ConsSql.SQL.Add('          WHERE');
                   DmOra.ConsSql.SQL.Add('            E120PED.DATEMI BETWEEN USU_TE085MONI.USU_DATINI AND SYSDATE AND');
                   DmOra.ConsSql.SQL.Add('            E120PED.TNSPRO IN (''90100'',''90106'',''90150'',''90156'') AND');
                   DmOra.ConsSql.SQL.Add('            E120IPD.SITIPD IN (2,4) AND');
                   DmOra.ConsSql.SQL.Add('            E120PED.CODCLI = USU_TE085MONI.USU_CODCLI)) AS VLR_SALDO');
                   DmOra.ConsSql.SQL.Add(' FROM USU_TE085MONI');
                   DmOra.ConsSql.SQL.Add(' WHERE');
                   DmOra.ConsSql.SQL.Add('  USU_TE085MONI.USU_CODCLI = :CODCLI');
                   DmOra.ConsSql.Parameters.ParamByName('CODCLI').Value := DmOra.CadUsu_TE085MoniUSU_CODCLI.AsInteger;
                   DmOra.ConsSql.Open;
                   if DmOra.ConsSql.IsEmpty then
                      begin
                        DmOra.CadUsu_TE085MoniUSU_SALFIM.Value := 0;
                      end
                   else
                      begin
                         DmOra.CadUsu_TE085MoniUSU_SALFIM.Value := DmOra.ConsSql.FieldByName('VLR_SALDO').AsFloat;
                      end;


                 end;

              DmOra.CadUsu_TE085Moni.Post;

              Application.MessageBox('Atualização realizada com sucesso!!','Confirmação',MB_ICONINFORMATION+MB_OK);
              Close;
            end;
      end;
end;

end.
