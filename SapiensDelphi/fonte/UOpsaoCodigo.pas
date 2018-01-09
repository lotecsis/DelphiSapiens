unit UOpsaoCodigo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RbDrawCore, RbRadioButton, RbButton;

type
  TFOpsaoCodigo = class(TForm)
    RbTecidoEstofado: TRbRadioButton;
    RbMtPrima: TRbRadioButton;
    RbTecidoColchao: TRbRadioButton;
    BOk: TRbButton;
    procedure BOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOpsaoCodigo: TFOpsaoCodigo;

implementation

uses UDataModule1, UMateriaPrima, UDataModule3, UPrincipal;

{$R *.dfm}

procedure TFOpsaoCodigo.BOkClick(Sender: TObject);
var m,e,c : string;
begin
  m := 'M';
  e := 'E';
  c := 'C';
  if RbMtPrima.Checked = true then
    begin
       FMateriaPrima.DBECodigo.MaxLength := 6;
       FMateriaPrima.DBECodigo.ReadOnly := true;

       DataModule1.IBQUltimoTipoCodigo.Close;
       DataModule1.IBQUltimoTipoCodigo.ParamByName('ptipo').AsString := m;
       DataModule1.IBQUltimoTipoCodigo.Open;

       //grava na tabela de codigos o codigo da matéria prima que esta sendo inserida
       DataModule1.IBDTipoCodigo.Open;
       DataModule1.IBDTipoCodigo.Insert;
       DataModule1.IBDTipoCodigoCD_MATERIA.AsInteger :=
       DataModule1.IBQUltimoTipoCodigoULTIMO.AsInteger;
       DataModule1.IBDTipoCodigoTP_MATERIA.AsString := m;
       DataModule1.IBDTipoCodigo.Post;

       //atribui o codigo para a materia prima
       DataModule1.IBDMateriaPrima.Open;
       DataModule1.IBDMateriaPrima.Insert;
       DataModule1.IBDMateriaPrimaCD_MAT_PRIMA.AsInteger :=
       DataModule1.IBQUltimoTipoCodigoULTIMO.AsInteger;

        FMateriaPrima.inserindo := true;


        DataModule3.IBDCarteira.Open;
        DataModule3.IBDCarteira.Insert;

        DataModule3.IBDProcesso.Open;
        DataModule3.IBDProcesso.Insert;



    FMateriaPrima.DBEData.Date := Date;
    DataModule1.IBDMateriaPrimaUSUARIOO.AsString := FPrincipal.usuario;
    FMateriaPrima.DBEDescricao.SetFocus;
    FMateriaPrima.EdDescUnMed.Clear;
    FMateriaPrima.EdDsClasse.Clear;
    FMateriaPrima.EdDsSetor.Clear;
    FMateriaPrima.EDSiglaUn.Clear;
    FMateriaPrima.EdTotEntrada.Clear;
    FMateriaPrima.EdTotSaida.Clear;
    FMateriaPrima.EdDtUlEnt.Clear;
    FMateriaPrima.EdDtUlSai.Clear;
    FMateriaPrima.EdQtdeUlEnt.Clear;
    FMateriaPrima.EdQtdeUlSai.Clear;
    FMateriaPrima.EdCarteira.Clear;
    FMateriaPrima.EdProcesso.Clear;
    FMateriaPrima.EdDisponivel.Clear;


    FMateriaPrima.Image1.Picture.LoadFromFile('');

    FMateriaPrima.PAtivo.Color := clBtnFace;
     FMateriaPrima.PAtivo.Caption := '';

     Close;
    end
  else
    if RbTecidoEstofado.Checked = true then
      begin

         DataModule1.IBDMateriaPrima.Open;
          DataModule1.IBDMateriaPrima.Insert;

         FMateriaPrima.DBECodigo.MaxLength := 3;
         FMateriaPrima.DBECodigo.ReadOnly := false;

        FMateriaPrima.inserindo := true;


        DataModule3.IBDCarteira.Open;
        DataModule3.IBDCarteira.Insert;

        DataModule3.IBDProcesso.Open;
        DataModule3.IBDProcesso.Insert;



    FMateriaPrima.DBEData.Date := Date;
    DataModule1.IBDMateriaPrimaUSUARIOO.AsString := FPrincipal.usuario;
    FMateriaPrima.DBEDescricao.SetFocus;
    FMateriaPrima.EdDescUnMed.Clear;
    FMateriaPrima.EdDsClasse.Clear;
    FMateriaPrima.EdDsSetor.Clear;
    FMateriaPrima.EDSiglaUn.Clear;
    FMateriaPrima.EdTotEntrada.Clear;
    FMateriaPrima.EdTotSaida.Clear;
    FMateriaPrima.EdDtUlEnt.Clear;
    FMateriaPrima.EdDtUlSai.Clear;
    FMateriaPrima.EdQtdeUlEnt.Clear;
    FMateriaPrima.EdQtdeUlSai.Clear;
    FMateriaPrima.EdCarteira.Clear;
    FMateriaPrima.EdProcesso.Clear;
    FMateriaPrima.EdDisponivel.Clear;


    FMateriaPrima.Image1.Picture.LoadFromFile('');

     FMateriaPrima.PAtivo.Color := clBtnFace;
     FMateriaPrima.PAtivo.Caption := '';

     FMateriaPrima.tp_mt_prima := 'E';

     Close;
     FMateriaPrima.ActiveControl := FMateriaPrima.DBECodigo;


      end
    else
    if RbTecidoColchao.Checked = true then
      begin

         DataModule1.IBDMateriaPrima.Open;
          DataModule1.IBDMateriaPrima.Insert;

         FMateriaPrima.DBECodigo.MaxLength := 3;
         FMateriaPrima.DBECodigo.ReadOnly := false;

        FMateriaPrima.inserindo := true;

        DataModule3.IBDCarteira.Open;
        DataModule3.IBDCarteira.Insert;

        DataModule3.IBDProcesso.Open;
        DataModule3.IBDProcesso.Insert;

    FMateriaPrima.DBEData.Date := Date;
    DataModule1.IBDMateriaPrimaUSUARIOO.AsString := FPrincipal.usuario;
    FMateriaPrima.DBEDescricao.SetFocus;
    FMateriaPrima.EdDescUnMed.Clear;
    FMateriaPrima.EdDsClasse.Clear;
    FMateriaPrima.EdDsSetor.Clear;
    FMateriaPrima.EDSiglaUn.Clear;
    FMateriaPrima.EdTotEntrada.Clear;
    FMateriaPrima.EdTotSaida.Clear;
    FMateriaPrima.EdDtUlEnt.Clear;
    FMateriaPrima.EdDtUlSai.Clear;
    FMateriaPrima.EdQtdeUlEnt.Clear;
    FMateriaPrima.EdQtdeUlSai.Clear;
    FMateriaPrima.EdCarteira.Clear;
    FMateriaPrima.EdProcesso.Clear;
    FMateriaPrima.EdDisponivel.Clear;

    FMateriaPrima.Image1.Picture.LoadFromFile('');

     FMateriaPrima.PAtivo.Color := clBtnFace;
     FMateriaPrima.PAtivo.Caption := '';

     FMateriaPrima.tp_mt_prima := 'C';

     Close;
     FMateriaPrima.ActiveControl := FMateriaPrima.DBECodigo;

      end;
end;

procedure TFOpsaoCodigo.FormShow(Sender: TObject);
begin
BOk.SetFocus;
end;

procedure TFOpsaoCodigo.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
