unit UCompProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFCompProduto = class(TForm)
    Label1: TLabel;
    DBECdMatPrima: TDBEdit;
    DSCompProduto: TDataSource;
    Label3: TLabel;
    DBEQuantidade: TDBEdit;
    SpeedButton1: TSpeedButton;
    EdDsMatPrima: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCompProduto: TFCompProduto;

implementation

uses UDataModule3, UConsSimpMtPrima, UDataModule1;

{$R *.dfm}

procedure TFCompProduto.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TFConsSimpMtPrima, FConsSimpMtPrima);
  if FConsSimpMtPrima.ShowModal = mrOk then
    begin
      DataModule3.IBDCompProdutoCD_MAT_PRIMA.AsInteger :=
      DataModule1.IBQConsMatPrimaCD_MAT_PRIMA.AsInteger;

      EdDsMatPrima.Text := DataModule1.IBQConsMatPrimaDS_MAT_PRIMA.AsString;
    end;
end;

procedure TFCompProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
