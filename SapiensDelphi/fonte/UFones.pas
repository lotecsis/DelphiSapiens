unit UFones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Mask, DBCtrls;

type
  TFFones = class(TForm)
    BConfirma: TBitBtn;
    BCancela: TBitBtn;
    DSFones: TDataSource;
    Label2: TLabel;
    DBENumero: TDBEdit;
    Label3: TLabel;
    DBEDdd: TDBEdit;
    Label4: TLabel;
    DBEDescricao: TDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBENumeroKeyPress(Sender: TObject; var Key: Char);
    procedure DBEDddKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFones: TFFones;

implementation

uses UDataModule1, UDataModule2;

{$R *.dfm}

procedure TFFones.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFFones.DBENumeroKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TFFones.DBEDddKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TFFones.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFFones.BConfirmaClick(Sender: TObject);
begin
if DBEDdd.Text = '' then
    begin
      MessageDlg('DDD é Obrigatório',mtWarning,[mbok],0);
      DBEDdd.SetFocus;
    end
  else
  if DBENumero.Text = '    -    ' then
    begin
      MessageDlg('Número é Obrigatório',mtWarning,[mbok],0);
      DBENumero.SetFocus;
    end
  else
  begin
     BConfirma.ModalResult := mrOk;
  end;
end;

end.
