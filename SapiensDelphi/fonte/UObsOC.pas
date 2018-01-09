unit UObsOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Buttons;

type
  TFObsOC = class(TForm)
    dbmmoOBSMOT: TDBMemo;
    dsCadE420Ipo: TDataSource;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    procedure btnConfirmarClick(Sender: TObject);
    procedure dsCadE420IpoStateChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FObsOC: TFObsOC;

implementation

uses UDm3;

{$R *.dfm}

procedure TFObsOC.btnCancelarClick(Sender: TObject);
begin
Dm3.CadE420Ipo.Cancel;
end;

procedure TFObsOC.btnConfirmarClick(Sender: TObject);
begin
  Dm3.CadE420Ipo.Post;
end;

procedure TFObsOC.dsCadE420IpoStateChange(Sender: TObject);
begin
  if Dm3.CadE420Ipo.State in [dsInsert,dsEdit] then
     begin
       btnConfirmar.Enabled := True;
       btnCancelar.Enabled := True;
     end
  else
     begin
       btnConfirmar.Enabled := false;
       btnCancelar.Enabled := False;
     end;
end;

procedure TFObsOC.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canClose := False;
with application do
 if Dm3.CadE420Ipo.State in [dsinsert,dsedit] then
  begin
    Application.MessageBox('Confirme ou Cancele as alterações antes de fechar!', 'Atenção', MB_ICONWARNING+MB_OK);
  end
 else
   canclose := true;
end;

procedure TFObsOC.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
