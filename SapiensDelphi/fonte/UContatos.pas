unit UContatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Mask, DBCtrls;

type
  TFContatos = class(TForm)
    BConfirma: TBitBtn;
    BCancela: TBitBtn;
    Label1: TLabel;
    DBECodigo: TDBEdit;
    DSContats: TDataSource;
    Label2: TLabel;
    DBEDescricao: TDBEdit;
    Label3: TLabel;
    DBETelefone: TDBEdit;
    Label4: TLabel;
    DBECargo: TDBEdit;
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
  FContatos: TFContatos;

implementation

uses UDataModule1, UDataModule2;

{$R *.dfm}

procedure TFContatos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFContatos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFContatos.BConfirmaClick(Sender: TObject);
begin
  if DBEDescricao.Text = '' then
    begin
      MessageDlg('Descrição é Obrigatório',mtWarning,[mbok],0);
      DBEDescricao.SetFocus;
    end
  else
  begin
     BConfirma.ModalResult := mrOk;
  end;
end;

end.
