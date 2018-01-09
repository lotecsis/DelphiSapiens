unit UMtCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Mask, DBCtrls, RbDrawCore, RbButton,
  rxToolEdit, rxCurrEdit;

type
  TFMtCompra = class(TForm)
    Label1: TLabel;
    DBECdMtPrima: TDBEdit;
    DSMtCompra: TDataSource;
    Label2: TLabel;
    DBEQtde: TDBEdit;
    Label3: TLabel;
    BMateriaPrima: TSpeedButton;
    EdDsMtPrima: TEdit;
    BConfirma: TRbButton;
    BCancela: TRbButton;
    EdUnMedida: TEdit;
    EdValor: TCurrencyEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BConfirmaClick(Sender: TObject);
    procedure DBECdMtPrimaExit(Sender: TObject);
    procedure BMateriaPrimaClick(Sender: TObject);
    procedure DBECdMtPrimaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdValorKeyPress(Sender: TObject; var Key: Char);
    procedure EdValorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMtCompra: TFMtCompra;
  importancia : string;

implementation

uses UDataModule4, UDataModule1, UConsSimpMtPrima;

{$R *.dfm}

procedure TFMtCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFMtCompra.BConfirmaClick(Sender: TObject);
begin
  if DBECdMtPrima.Text = '' then
    begin
      MessageDlg('Matéria Prima Obrigatório',mtWarning,[mbOK],0);
      DBECdMtPrima.SetFocus;
    end
  else
  if DBEQtde.Text = '' then
    begin
      MessageDlg('Quantidade é Obrigatório',mtWarning,[mbOK],0);
      DBEQtde.SetFocus;
    end
  else
  if EdValor.Text = '' then
    begin
      MessageDlg('Valor é Obrigatório',mtWarning,[mbOK],0);
       EdValor.SetFocus;
    end
  else
    begin
       BConfirma.ModalResult := mrOk;
       DataModule4.IBDMtCompraVALOR.AsFloat := StrToFloat(EdValor.Text);

    end;


end;

procedure TFMtCompra.DBECdMtPrimaExit(Sender: TObject);
begin
importancia := 'P';

      if DBECdMtPrima.Text <> '' then
         begin
          DataModule4.IBQExisteMt.Close;
          DataModule4.IBQExisteMt.ParamByName('pmateria').AsInteger :=
          StrToInt(DBECdMtPrima.Text);
          DataModule4.IBQExisteMt.ParamByName('ppedido').AsInteger :=
          DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;
          DataModule4.IBQExisteMt.Open;
          if not(DataModule4.IBQExisteMt.IsEmpty) then
            begin
              MessageDlg('Matéia Prima já existente.',mtWarning,[mbok],0);
              DBECdMtPrima.SetFocus;
              DBECdMtPrima.Clear;

            end
          else
          begin

          DataModule1.IBQConsMatPrimapNf.Close;
          DataModule1.IBQConsMatPrimapNf.SQL.Clear;
          DataModule1.IBQConsMatPrimapNf.SQL.Add('select mt.*, un.ds_unidade');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('from MATERIA_PRIMA mt, UNIDADE_MEDIDA un');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('where');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('mt.cd_un_medida = un.cd_unidade and');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('mt.cd_mat_prima = :pmateria');
          DataModule1.IBQConsMatPrimapNf.ParamByName('pmateria').AsInteger := StrToInt(DBECdMtPrima.Text);
          DataModule1.IBQConsMatPrimapNf.Open;
        if DataModule1.IBQConsMatPrimapNf.IsEmpty then
          begin
            ShowMessage('Não existe matéria prima com este código');
            DBECdMtPrima.SetFocus;
            DBECdMtPrima.Clear;
            EdDsMtPrima.Clear;
            EdUnMedida.Clear;
          end
        else
          begin
            EdDsMtPrima.Text := DataModule1.IBQConsMatPrimapNfDS_MAT_PRIMA.AsString;
            EdUnMedida.Text := DataModule1.IBQConsMatPrimapNfDS_UNIDADE.AsString;

            //puxa o valor da materia prima
            DataModule4.IBQValorMt.Close;
            DataModule4.IBQValorMt.ParamByName('pimportancia').AsString := importancia;
            DataModule4.IBQValorMt.ParamByName('pmateria').AsInteger :=
            DataModule1.IBQConsMatPrimapNfCD_MAT_PRIMA.AsInteger;
            DataModule4.IBQValorMt.Open;
            EdValor.Text := FloatToStr(DataModule4.IBQValorMtVL_MAX.AsFloat);


          end;
      end;
       end;
end;

procedure TFMtCompra.BMateriaPrimaClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpMtPrima, FConsSimpMtPrima);
  if FConsSimpMtPrima.ShowModal = mrOk then
    begin
      DataModule4.IBDMtCompraCD_MAT_PRIMA.AsInteger :=
      DataModule1.IBQConsMatPrimaCD_MAT_PRIMA.AsInteger;

      EdDsMtPrima.Text := DataModule1.IBQConsMatPrimaDS_MAT_PRIMA.AsString;
      EdUnMedida.Text := DataModule1.IBQConsMatPrimapNfDS_UNIDADE.AsString;
    end;
end;

procedure TFMtCompra.DBECdMtPrimaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F5 then
BMateriaPrima.Click;
end;

procedure TFMtCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFMtCompra.EdValorKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
  beep;
  key:=#0;
  end;
end;

procedure TFMtCompra.EdValorExit(Sender: TObject);
begin
ActiveControl := BConfirma;
end;

end.
