unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, RbDrawCore, RbButton, ComCtrls,
  Buttons, IniFiles, DB, ADODB, IdBaseComponent, IdComponent, IdIPWatch;

type
  TFLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdLogin: TEdit;
    EdSenha: TEdit;
    BConfirma: TRbButton;
    BCancela: TRbButton;
    Image1: TImage;
    Timer1: TTimer;
    UltimoUsu_T100CCU: TADOQuery;
    UltimoUsu_T100CCUUSU_CODCON: TIntegerField;
    UltimoUsu_T100CCUUSU_CODUSU: TBCDField;
    UltimoUsu_T100CCUUSU_DATCON: TDateTimeField;
    UltimoUsu_T100CCUUSU_HORCON: TIntegerField;
    UltimoUsu_T100CCUUSU_NOMMAQ: TStringField;
    UltimoUsu_T100CCUUSU_IPMAQ: TStringField;
    CadUsu_T100CCU: TADOQuery;
    IdIP: TIdIPWatch;
    ValidaConexcao: TADOQuery;
    ValidaConexcaoUSU_CODCON: TIntegerField;
    ValidaConexcaoUSU_CODUSU: TBCDField;
    ValidaConexcaoUSU_DATCON: TDateTimeField;
    ValidaConexcaoUSU_HORCON: TIntegerField;
    ValidaConexcaoUSU_NOMMAQ: TStringField;
    ValidaConexcaoUSU_IPMAQ: TStringField;
    CadUsu_T100CCUUSU_CODCON: TIntegerField;
    CadUsu_T100CCUUSU_CODUSU: TBCDField;
    CadUsu_T100CCUUSU_DATCON: TDateTimeField;
    CadUsu_T100CCUUSU_HORCON: TIntegerField;
    CadUsu_T100CCUUSU_NOMMAQ: TStringField;
    CadUsu_T100CCUUSU_IPMAQ: TStringField;
    procedure BConfirmaClick(Sender: TObject);
    procedure BCancelaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
  
  private
    { Private declarations }
  public
    { Public declarations }
    contaTempo: Integer;
    contaErroLogin : Integer;
    tempo : Integer;
    procedure Delay(msecs:Integer);

  end;

var
  FLogin: TFLogin;
  fechar : Boolean;

implementation

uses UPrincipal, UDataModule1, Menus, UDataModule6, UDm;

{$R *.dfm}
//procedimento para usar o Delay
procedure TFLogin.Delay(msecs:integer); 
var
FirstTickCount:longint;
begin
FirstTickCount:=GetTickCount;
repeat
Application.ProcessMessages; {para acessar outros controles, etc.}
until ((GetTickCount-FirstTickCount) >= Longint(msecs));
end;

procedure TFLogin.BConfirmaClick(Sender: TObject);
var Hora, vaNomMaq : String;
lpBuffer : PChar;
   nSize : DWord;
   vnQtdCon : Integer;
const Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
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
    begin
       dm.ConsUsuarioLogin.Close;
       dm.ConsUsuarioLogin.Parameters.ParamByName('logusu').Value := EdLogin.Text;
       dm.ConsUsuarioLogin.Parameters.ParamByName('senusu').Value := EdSenha.Text;
       dm.ConsUsuarioLogin.Open;
       if dm.ConsUsuarioLogin.IsEmpty then
        begin
          MessageDlg('Login ou Senha Incorreto!',mtWarning,[mbok],0);
          EdLogin.SetFocus;
          EdSenha.Clear;
          Timer1.Destroy;
        end
       else//se a senha for correta
          begin
            if dm.ConsUsuarioLoginUSU_SITUSU.Value = 'I' then
              begin
                MessageDlg('Usuário Inativo!',mtWarning,[mbok],0);
                EdLogin.SetFocus;
                Timer1.Enabled := false;
              end
            else
              begin
               UltimoUsu_T100CCU.Close;
               UltimoUsu_T100CCU.Open;
               CadUsu_T100CCU.Open;
               {CadUsu_T100CCU.Insert;
               CadUsu_T100CCUUSU_CODCON.Value := UltimoUsu_T100CCUUSU_CODCON.Value + 1;
               CadUsu_T100CCUUSU_CODUSU.Value := dm.ConsUsuarioLoginUSU_CODUSU.Value;
               CadUsu_T100CCUUSU_DATCON.Value := Date;
               //calcula a hora em segundos
               Hora := TimeToStr(Time);
               CadUsu_T100CCUUSU_HORCON.Value := (StrToInt(Copy(Hora,1,2))*60) + StrToInt(Copy(Hora,4,2));
               //pega o ip da maquina
               CadUsu_T100CCUUSU_IPMAQ.Value := IdIP.LocalIP;
               //pega o nome da maquina
               nSize := Buff_Size;
               lpBuffer := StrAlloc(Buff_Size);
               GetComputerName(lpBuffer,nSize);
               vaNomMaq := String(lpBuffer);
               StrDispose(lpBuffer);
               CadUsu_T100CCUUSU_NOMMAQ.Value := vaNomMaq;
               CadUsu_T100CCU.Post; }


                FPrincipal.vnCodCon := CadUsu_T100CCUUSU_CODCON.Value;
                FPrincipal.usuario := EdLogin.Text;
                FPrincipal.cd_usuario := dm.ConsUsuarioLoginUSU_CODUSU.Value;
                FPrincipal.StatusBar1.Panels[4].Text := 'Usuário: '+dm.ConsUsuarioLoginUSU_NOMUSU.Value;
                fechar := true;
                close;
              end;
          end;
     end;
end;

procedure TFLogin.BCancelaClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
    
    contaTempo := 0;
end;

procedure TFLogin.FormShow(Sender: TObject);
var ArqIni : TIniFile;
   vaLogin, vaSenha, vaLogAut : String;
begin
fechar := false;
contaTempo := 0;

  if FileExists('C:\SapiensDelphi\UsuSapLider.ini') then
      begin//1
         ArqIni := TIniFile.Create('C:\SapiensDelphi\UsuSapLider.ini');
         vaLogin := ArqIni.ReadString('Usuario', 'Login',vaLogin);
         vaSenha := ArqIni.ReadString('Usuario', 'Senha',vaSenha);
         vaLogAut := ArqIni.ReadString('Usuario', 'LoginAutomatico',vaLogAut);
         if vaLogAut = 'S' then
           begin//2
              EdLogin.Text := vaLogin;
              EdSenha.Text := vaSenha;

              dm.ConsUsuarioLogin.Close;
              dm.ConsUsuarioLogin.Parameters.ParamByName('logusu').Value := EdLogin.Text;
              dm.ConsUsuarioLogin.Parameters.ParamByName('senusu').Value := EdSenha.Text;
              dm.ConsUsuarioLogin.Open;
             if not dm.ConsUsuarioLogin.IsEmpty then
                begin

                  Timer1.Enabled := true;
                  ArqIni.Free;
                end;
           end//2
         else
           begin//3
              EdLogin.Text := vaLogin;
              ArqIni.Free;
           end;//3
      end;//1


end;

procedure TFLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if fechar = false then
  begin
    CanClose := False;
  end
else
  begin
     CanClose := true;
  end;
end;

procedure TFLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFLogin.Timer1Timer(Sender: TObject);
begin
  BConfirma.Click;
  Timer1.Enabled := false;
end;

end.



