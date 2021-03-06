unit UEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Mask, DBCtrls;

type
  TFEmail = class(TForm)
    BConfirma: TBitBtn;
    BCancela: TBitBtn;
    DSEmail: TDataSource;
    Label2: TLabel;
    DBEEmail: TDBEdit;
    Label1: TLabel;
    DBEDescricao: TDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEmail: TFEmail;

implementation

uses UDataModule1, UDataModule2;

{$R *.dfm}

procedure TFEmail.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFEmail.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFEmail.BConfirmaClick(Sender: TObject);
begin
if DBEEmail.Text = '' then
    begin
      MessageDlg('Email � Obrigat�rio',mtWarning,[mbok],0);
      DBEEmail.SetFocus;
    end
  else
  begin
     BConfirma.ModalResult := mrOk;
  end;
end;

end.
