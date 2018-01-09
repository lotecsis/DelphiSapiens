unit UMensagensAlertaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, rxToolEdit, DB, ADODB, rxCurrEdit;

type
  TFMensagensAlertaClientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EdCodCli: TEdit;
    BitBtn1: TBitBtn;
    LDsNomCli: TLabel;
    EdMenSag: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    EdDatAlerta: TDateEdit;
    BConfirma: TBitBtn;
    ValidaCliente: TADOQuery;
    ValidaClienteCODCLI: TIntegerField;
    ValidaClienteNOMCLI: TStringField;
    EdQtdDias: TCurrencyEdit;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BConfirmaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdQtdDiasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMensagensAlertaClientes: TFMensagensAlertaClientes;

implementation

uses UDm3, UPrincipal, UConsGeralNfEnt, UDm;

{$R *.dfm}

procedure TFMensagensAlertaClientes.BConfirmaClick(Sender: TObject);
begin
     if trim(EdCodCli.Text) = '' then
        begin
          Application.MessageBox('Informe o Cliente','AVISO', MB_ICONWARNING+MB_OK);
          ActiveControl := EdCodCli;
          Abort;
        end
     else
      if trim(EdMenSag.Text) = '' then
         begin
            Application.MessageBox('Informe a Mensagem','AVISO', MB_ICONWARNING+MB_OK);
            ActiveControl := EdMenSag;
            Abort;
         end
        else
          if EdDatAlerta.Date = 0 then
             begin
                Application.MessageBox('Informe a data para o alerta','AVISO', MB_ICONWARNING+MB_OK);
                ActiveControl := EdDatAlerta;
                Abort;
             end
          else
            begin//1
              Dm3.CadUsu_T085Mac.Open;
              Dm3.CadUsu_T085Mac.Insert;
              Dm3.CadUsu_T085MacUSU_CODCLI.Value := StrToInt(trim(EdCodCli.Text));

              //busca o numero de controle
              Dm3.UltimoUsu_T085Mac.Close;
              Dm3.UltimoUsu_T085Mac.Parameters.ParamByName('codcli').Value := StrToInt(trim(EdCodCli.Text));
              Dm3.UltimoUsu_T085Mac.Open;
              Dm3.UltimoUsu_T085Mac.First;
              if Dm3.UltimoUsu_T085Mac.IsEmpty then
                 Dm3.CadUsu_T085MacUSU_NUMMEN.Value := 1
              else
                 Dm3.CadUsu_T085MacUSU_NUMMEN.Value := Dm3.UltimoUsu_T085MacUSU_NUMMEN.Value + 1;

              Dm3.CadUsu_T085MacUSU_MENSAG.Value := EdMenSag.Text;
              Dm3.CadUsu_T085MacUSU_DATCAD.Value := date;
            //  Dm3.CadUsu_T085MacUSU_HORMEN.AsDateTime := FormatDateTime('HH:mm', Time);
              Dm3.CadUsu_T085MacUSU_USUCAD.Value := FPrincipal.cd_usuario;
              Dm3.CadUsu_T085MacUSU_DATALE.Value := EdDatAlerta.Date;
              Dm3.CadUsu_T085MacUSU_MENRES.Value := 'N';
              Dm3.CadUsu_T085Mac.Post;
              Application.MessageBox('Mensagem confirmada com sucesso!','CONFIRMAÇÃO', MB_ICONINFORMATION+MB_OK);
              BConfirma.Enabled := false;
            end;//1

end;

procedure TFMensagensAlertaClientes.BitBtn1Click(Sender: TObject);
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
    FConsGeralNfEnt.vaTela := 'FMensagensAlertaClientes';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodCli;
end;

procedure TFMensagensAlertaClientes.EdCodCliExit(Sender: TObject);
begin
    if trim(EdCodCli.Text) <> '' then
       begin//1
          ValidaCliente.Close;
          ValidaCliente.Parameters.ParamByName('codcli').Value := trim(EdCodCli.Text);
          ValidaCliente.Open;
          if ValidaCliente.IsEmpty then
             begin
               Application.MessageBox('Cliente não encontrado!','AVISO', MB_ICONINFORMATION+MB_OK);
               LDsNomCli.Caption := '';
               BConfirma.Enabled := false;
               ActiveControl := EdCodCli;
             end
          else
            begin
              LDsNomCli.Caption := ValidaClienteNOMCLI.Value;
              BConfirma.Enabled := true;
            end;
       end//1
    else
      begin
        LDsNomCli.Caption := '';
        BConfirma.Enabled := false;
      end;
end;

procedure TFMensagensAlertaClientes.EdQtdDiasChange(Sender: TObject);
begin
  EdDatAlerta.Date := Date + EdQtdDias.Value;
end;

procedure TFMensagensAlertaClientes.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFMensagensAlertaClientes.FormShow(Sender: TObject);
begin
  EdMenSag.Clear;
  EdQtdDias.Value := 30;
end;

end.
