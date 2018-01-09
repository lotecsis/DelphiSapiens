unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, RXShell, pngimage;

type
  TFPrincipal = class(TForm)
    btn1: TBitBtn;
    btnCadUsuario: TBitBtn;
    tmr1: TTimer;
    RxTrayIcon1: TRxTrayIcon;
    img1: TImage;
    img2: TImage;
    pnl1: TPanel;
    btnDesabilitaAlerta: TBitBtn;
    btnEncerrar: TBitBtn;
    Label1: TLabel;
    edtSenha: TEdit;
    btnAdministrar: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure btnCadUsuarioClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure RxTrayIcon1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnEncerrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAdministrarClick(Sender: TObject);
    procedure btnDesabilitaAlertaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vaTextoAlerta : string;
    vaAlertaAtivo : string;
    procedure AlertaLateral;
  end;

var
  FPrincipal: TFPrincipal;
  H : THandle;
implementation

uses UProcessaPedidos, UCadUsuSysRepWeb, UFormAlerta, UDmFireRep;

{$R *.dfm}

procedure TFPrincipal.AlertaLateral;
var
  I: Integer;
  fAlertaMsn: TForm;
  BarraIniciar: HWND; {Barra Iniciar}
  tmAltura: Integer;
  tmRect: TRect;
  xTop : Integer;
  xIniTop : Integer;
begin
  //localiza o Handle da janela iniciar
  BarraIniciar := FindWindow('Shell_TrayWnd', nil);
  //Pega o "retângulo" que envolve a barra e sua altura
  GetWindowRect(BarraIniciar, tmRect);
  tmAltura := tmRect.Bottom - tmRect.Top;
  fAlertaMsn := TFormAlerta.Create(Self);

  with fAlertaMsn do
  begin
    Left := Screen.Width - ClientWidth;
    if tmRect.Top = -2 then
      tmAltura := 30;
    //Pega o top final
    xTop := Screen.Height - ClientHeight - tmAltura;
    //Pega o top inicial
    xIniTop := Screen.Height + ClientHeight + tmAltura;
    Top := xIniTop;
    for I := xIniTop downto xTop do
    begin
      Top := Top - 1;
      Show;
      Update;
      Application.ProcessMessages;
      Sleep(1); //tempo para subir o form
    end;
    Sleep(3000);
    Close;
    FreeAndNil(fAlertaMsn);
  end;

end;


procedure TFPrincipal.btn1Click(Sender: TObject);
begin
  FProcessaPedidos := TFProcessaPedidos.Create(Self);
  FProcessaPedidos.ShowModal;
  FreeAndNil(FProcessaPedidos);
end;

procedure TFPrincipal.btnAdministrarClick(Sender: TObject);
begin
  if edtSenha.Text = '1483' then
     begin
       btnDesabilitaAlerta.Enabled := True;
       btnEncerrar.Enabled := True;
       btnCadUsuario.Enabled := True;
     end;
end;

procedure TFPrincipal.btnCadUsuarioClick(Sender: TObject);
begin
  FCadUsuSysRepWeb := TFCadUsuSysRepWeb.Create(Self);
  FCadUsuSysRepWeb.ShowModal;
  FreeAndNil(FCadUsuSysRepWeb);
end;

procedure TFPrincipal.btnDesabilitaAlertaClick(Sender: TObject);
begin
  vaAlertaAtivo := 'N';
end;

procedure TFPrincipal.btnEncerrarClick(Sender: TObject);
begin
if Application.MessageBox('Encerrar o Sistema?','Confirmação',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = mrYes then
   begin
      Application.Terminate;
   end;
end;

procedure TFPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if CanClose then { se o comando para fechar for acionado }
    CanClose := false; { cancela o comando }
    h := FindWindow(nil,'TrayIcon'); { acha o ponteiro da aplicação no sistema}
    ShowWindow(h,SW_HIDE); { esconde a aplicação da barra de tarefas}
    RxTrayIcon1.Active := true; { coloca ícone no tray icon}
    hide; { esconde o form }
end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
  vaAlertaAtivo := 'S';
  btnDesabilitaAlerta.Enabled := False;
  btnEncerrar.Enabled := False;
  btnCadUsuario.Enabled := False;
end;

procedure TFPrincipal.RxTrayIcon1DblClick(Sender: TObject);
begin
    show; {Mostra o form}
    H := FindWindow(nil,'TrayIcon'); { acha o ponteiro da aplicação no sistema}
    ShowWindow(h,SW_RESTORE); { mostra aplicação na barra de tarefas}
    RxTrayIcon1.Active := false; {oculta ícone do tray icon}
end;

procedure TFPrincipal.tmr1Timer(Sender: TObject);
var vaInConectadoMySql : string;
    Cont : Integer;
begin
  if (FProcessaPedidos = nil) and (vaAlertaAtivo = 'S') then
     begin
      { try
          //conecta com o banco
          DmMySql.Banco.Connected := False;
          DmMySql.Banco.Connected := True;
          vaInConectadoMySql := 'S';
        except
          vaInConectadoMySql := 'N';
        end; }
        vaInConectadoMySql := 'S';
        if vaInConectadoMySql = 'S' then
           begin
             DmFireRep.ConsSql.Close;
             DmFireRep.ConsSql.SQL.Clear;
             DmFireRep.ConsSql.SQL.Add('SELECT NUMCON FROM E120PED');
             DmFireRep.ConsSql.SQL.Add(' WHERE');
             DmFireRep.ConsSql.SQL.Add(' PEDPRO = ''N''');
             DmFireRep.ConsSql.Open;
             DmFireRep.ConsSql.Last;
             DmFireRep.ConsSql.First;
             Cont := DmFireRep.ConsSql.RecordCount;
           end
        else
           begin
             Cont := 0;
           end;

        if Cont > 0 then
           begin
              vaTextoAlerta := IntToStr(Cont);
              AlertaLateral;
           end;
     end;



end;

end.
