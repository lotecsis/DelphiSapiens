unit UAlteraPerTolTabPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons;

type
  TFAlteraPerTolTabPreco = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    LProduto: TLabel;
    LDerivacao: TLabel;
    Panel2: TPanel;
    EdPerTolMen: TCurrencyEdit;
    EdPerTolMai: TCurrencyEdit;
    Label4: TLabel;
    Label5: TLabel;
    EdVlrMen: TCurrencyEdit;
    EdVlrMai: TCurrencyEdit;
    Label6: TLabel;
    Label7: TLabel;
    BCancelar: TBitBtn;
    BConfirma: TBitBtn;
    Label3: TLabel;
    EdPrecoBase: TCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdPerTolMenExit(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure EdPerTolMaiExit(Sender: TObject);
    procedure BConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAlteraPerTolTabPreco: TFAlteraPerTolTabPreco;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFAlteraPerTolTabPreco.BCancelarClick(Sender: TObject);
begin
  DmFire.CadE081Itp.Cancel;
  Close;
end;

procedure TFAlteraPerTolTabPreco.BConfirmaClick(Sender: TObject);
begin
  DmFire.CadE081ItpTOLMAI.Value := EdPerTolMai.Value;
  DmFire.CadE081ItpTOLMEN.Value := EdPerTolMen.Value;
  DmFire.CadE081ItpVLRMAI.Value := EdVlrMai.Value;
  DmFire.CadE081ItpVLRMEN.Value := EdVlrMen.Value;
  DmFire.CadE081Itp.Post;
  DmFire.IBTransacao.CommitRetaining;
  Close;

end;

procedure TFAlteraPerTolTabPreco.EdPerTolMaiExit(Sender: TObject);
begin
EdVlrMai.Value := EdPrecoBase.Value * EdPerTolMai.Value / 100;
end;

procedure TFAlteraPerTolTabPreco.EdPerTolMenExit(Sender: TObject);
begin
  EdVlrMen.Value := EdPrecoBase.Value * EdPerTolMen.Value / 100;
end;

procedure TFAlteraPerTolTabPreco.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAlteraPerTolTabPreco.FormShow(Sender: TObject);
begin
  ActiveControl := nil;
end;

end.
