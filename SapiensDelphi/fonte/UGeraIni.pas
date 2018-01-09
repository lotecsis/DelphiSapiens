unit UGeraIni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, IniFiles, StdCtrls, Buttons, ExtCtrls;

type
  TFGeraIni = class(TForm)
    PaginaControle: TPageControl;
    TbIniUsuario: TTabSheet;
    EdLogin: TEdit;
    EdSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BProcessar: TBitBtn;
    RadioGroup1: TRadioGroup;
    RSim: TRadioButton;
    RNao: TRadioButton;
    procedure BProcessarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGeraIni: TFGeraIni;

implementation

uses UDm, UPrincipal;

{$R *.dfm}

procedure TFGeraIni.BProcessarClick(Sender: TObject);
var ArqIni: TIniFile;
begin
if EdLogin.Text = '' then
    begin
      MessageDlg('Informe o Login!',mtWarning,[mbok],0);
      EdLogin.SetFocus;
    end
  else
  if EdSenha.Text = '' then
    begin
      MessageDlg('Informe a Senha!.',mtWarning,[mbok],0);
      EdSenha.SetFocus;
    end
  else
    begin//1
      dm.ConsUsuarioLogin.Close;
       dm.ConsUsuarioLogin.Parameters.ParamByName('logusu').Value := EdLogin.Text;
       dm.ConsUsuarioLogin.Parameters.ParamByName('senusu').Value := EdSenha.Text;
       dm.ConsUsuarioLogin.Open;
       if dm.ConsUsuarioLogin.IsEmpty then
        begin//2
          MessageDlg('Login ou Senha Incorreto!',mtWarning,[mbok],0);
          EdLogin.SetFocus;
        end//2
      else
        begin//3
      ArqIni := TIniFile.Create('C:\SapiensDelphi\UsuSapLider.ini');

      ArqIni.WriteString('Usuario', 'Login', EdLogin.Text);
      ArqIni.WriteString('Usuario', 'Senha', EdSenha.Text);

      if RSim.Checked = true then
         begin
           ArqIni.WriteString('Usuario', 'LoginAutomatico', 'S');
         end
      else
         begin
           ArqIni.WriteString('Usuario', 'LoginAutomatico', 'N');
         end;

      ArqIni.Free;

      Application.MessageBox('Arquivo atualizado com sucesso!','Aviso', MB_ICONINFORMATION+MB_OK);
       end;//3
    end;//1
end;

procedure TFGeraIni.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFGeraIni.FormShow(Sender: TObject);
begin
   FPrincipal.GravaTela(FGeraIni.Name,FPrincipal.vnCodCon);
end;

procedure TFGeraIni.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FPrincipal.ApagaTela(FGeraIni.Name,FPrincipal.vnCodCon);
end;

end.
