unit UAplicarAjusteComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons, ADODB, DB;

type
  TFAplicarAjusteComissao = class(TForm)
    edtVlrComissao: TCurrencyEdit;
    edtPerNf: TCurrencyEdit;
    edtVlrBase: TCurrencyEdit;
    edtPerCondCpg: TCurrencyEdit;
    edtVlrReal: TCurrencyEdit;
    edtVlrDiferenca: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtNumTit: TEdit;
    btnAplicar: TBitBtn;
    cmdAtualizaE504Cap: TADOCommand;
    cmdAtualizaE301Mcr: TADOCommand;
    procedure btnAplicarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAplicarAjusteComissao: TFAplicarAjusteComissao;

implementation

uses UDmOra, UAjustaComissoes;

{$R *.dfm}

procedure TFAplicarAjusteComissao.btnAplicarClick(Sender: TObject);
begin
    cmdAtualizaE504Cap.Parameters.ParamByName('numtit').Value := edtNumTit.Text;
    cmdAtualizaE504Cap.Parameters.ParamByName('VLRCOM').Value := edtVlrReal.Value;
    cmdAtualizaE504Cap.Execute;

    cmdAtualizaE301Mcr.Parameters.ParamByName('numtit').Value := edtNumTit.Text;
    cmdAtualizaE301Mcr.Parameters.ParamByName('VLRCOM').Value := edtVlrReal.Value;
    cmdAtualizaE301Mcr.Execute;

    if (edtVlrReal.Value + edtVlrDiferenca.Value) = edtVlrComissao.Value then
       begin
         DmOra.ClientAjustaE504Cap.Delete;
       end
    else
       begin
         FAjustaComissoes.vaAtualizar := 'S';
       end;
    Close;
end;

end.
