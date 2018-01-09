unit UValorMaxCotacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, rxToolEdit, Mask, rxCurrEdit, DB, Buttons, DBCtrls;

type
  TFValorMaxCotacao = class(TForm)
    edtVlrCot: TCurrencyEdit;
    edtDatCot: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    dsConsE403FprMC: TDataSource;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    dbedtCODFOR: TDBEdit;
    dbedtNOMFOR: TDBEdit;
    dbedtCODPRO: TDBEdit;
    dbedtDESFOR: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dsClientMateriaPrimaMeiaCons: TDataSource;
    Label5: TLabel;
    dbedtCODPRO1: TDBEdit;
    dbedtDESPRO: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FValorMaxCotacao: TFValorMaxCotacao;

implementation

uses UDm3;

{$R *.dfm}

procedure TFValorMaxCotacao.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFValorMaxCotacao.btnConfirmarClick(Sender: TObject);
begin
    Dm3.CadE403Fpr.Close;
    Dm3.CadE403Fpr.Parameters.ParamByName('CODEMP').Value := Dm3.ConsE403FprMCCODEMP.Value;
    Dm3.CadE403Fpr.Parameters.ParamByName('CODPRO').Value := Dm3.ConsE403FprMCCODPRO.Value;
    Dm3.CadE403Fpr.Parameters.ParamByName('CODDER').Value := Dm3.ConsE403FprMCCODDER.Value;
    Dm3.CadE403Fpr.Parameters.ParamByName('CODFOR').Value := Dm3.ConsE403FprMCCODFOR.Value;
    Dm3.CadE403Fpr.Open;
    if not Dm3.CadE403Fpr.IsEmpty then
       begin
         Dm3.CadE403Fpr.Edit;
         Dm3.CadE403FprOBSMOT.AsString :=  formatcurr('###,###,##0.00',edtVlrCot.Value);
         Dm3.CadE403FprDATMOT.Value := edtDatCot.Date;

         Dm3.CadE403Fpr.Post;
         Close;
       end;

end;

procedure TFValorMaxCotacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFValorMaxCotacao.FormShow(Sender: TObject);
begin
    if Trim(Dm3.ConsE403FprMCOBSMOT.Value) = '' then
       begin
         edtVlrCot.Value := 0;
       end
    else
       begin
         edtVlrCot.Value :=  StrToCurr (Copy(Dm3.ConsE403FprMCOBSMOT.Value,1,10));
       end;

    edtDatCot.Date := Dm3.ConsE403FprMCDATMOT.Value;

end;

end.
