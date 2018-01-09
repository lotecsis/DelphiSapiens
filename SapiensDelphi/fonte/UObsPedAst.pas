unit UObsPedAst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Buttons;

type
  TFObsPedAst = class(TForm)
    DsConsE120PedA: TDataSource;
    DBMemo1: TDBMemo;
    BGravar: TBitBtn;
    procedure BGravarClick(Sender: TObject);
    procedure DsConsE120PedAStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FObsPedAst: TFObsPedAst;

implementation

uses UDm2;

{$R *.dfm}

procedure TFObsPedAst.BGravarClick(Sender: TObject);
begin
  Dm2.ConsE120PedA.Post;
end;

procedure TFObsPedAst.DsConsE120PedAStateChange(Sender: TObject);
begin
  if Dm2.ConsE120PedA.State in [dsinsert,dsedit] then
     begin
       BGravar.Enabled := true;

     end
  else
     begin
       BGravar.Enabled := false;
     end;
end;

procedure TFObsPedAst.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canClose := False;
with application do
 if Dm2.ConsE120PedA.State in [dsinsert,dsedit] then
  begin
      Application.MessageBox('É necessário gravar a observação antes de sair','Confirmação',MB_ICONWARNING+MB_OK);
      ActiveControl := BGravar;
  end
 else
   begin
     canclose := true;
   end;
end;

end.
