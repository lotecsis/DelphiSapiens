unit UEtiquetaProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RbDrawCore, RbButton, StdCtrls;

type
  TFEtiquetasProd = class(TForm)
    EdCdProduto: TEdit;
    Label1: TLabel;
    EdDsProduto: TEdit;
    RbButton1: TRbButton;
    Label2: TLabel;
    EdQtde: TEdit;
    BImprimir: TRbButton;
    procedure BImprimirClick(Sender: TObject);
    procedure RbButton1Click(Sender: TObject);
    procedure EdCdProdutoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCdProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure EdQtdeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEtiquetasProd: TFEtiquetasProd;

implementation

uses UDataModule5, UConsSimpProduto, UDataModule3, UQrEtiquetasProd;

{$R *.dfm}

procedure TFEtiquetasProd.BImprimirClick(Sender: TObject);
var i, cont : Integer;
begin

i := StrToInt(EdQtde.Text);

for cont := 1 to i do
  begin
    DataModule5.ClienteEtiquetasProd.Open;
    DataModule5.ClienteEtiquetasProd.Insert;
    DataModule5.ClienteEtiquetasProdCD_CONTROLE.AsInteger := 0;
    DataModule5.ClienteEtiquetasProdCD_PRODUTO.AsInteger := StrToInt(EdCdProduto.Text);
    DataModule5.ClienteEtiquetasProdDS_PRODUTO.AsString := EdDsProduto.Text;
    DataModule5.ClienteEtiquetasProd.Post;
  end;

     QrEtiquetasProd.Preview;
     
  


end;

procedure TFEtiquetasProd.RbButton1Click(Sender: TObject);
begin
Application.CreateForm(TFConsSimpProduto, FConsSimpProduto);
  if FConsSimpProduto.ShowModal = mrOk then
    begin
      EdCdProduto.Text := IntToStr(DataModule3.IBQConsProdutoCD_PRODUTO.AsInteger);
      EdDsProduto.Text := DataModule3.IBQConsProdutoDS_PRODUTO.AsString;
    end;
end;

procedure TFEtiquetasProd.EdCdProdutoExit(Sender: TObject);
begin
if EdCdProduto.Text <> '' then
  begin

            DataModule3.IBQConsProduto.Close;
            DataModule3.IBQConsProduto.SQL.Clear;
            DataModule3.IBQConsProduto.SQL.Add('select pd.*, str.ds_situacao, un.ds_unidade, gp.ds_grupo');
            DataModule3.IBQConsProduto.SQL.Add('from');
            DataModule3.IBQConsProduto.SQL.Add('PRODUTO pd, UNIDADE_MEDIDA un, SITU_TRIBUTARIA str,');
            DataModule3.IBQConsProduto.SQL.Add('GRUPO_PRODUTO gp');
            DataModule3.IBQConsProduto.SQL.Add('where');
            DataModule3.IBQConsProduto.SQL.Add('pd.cd_situ_tribu = str.cd_situacao and');
            DataModule3.IBQConsProduto.SQL.Add('pd.cd_un_medida = un.cd_unidade and');
            DataModule3.IBQConsProduto.SQL.Add('pd.cd_grupo_prod = gp.cd_grupo and');
            DataModule3.IBQConsProduto.SQL.Add('pd.cd_produto = :pproduto');
            DataModule3.IBQConsProduto.ParamByName('pproduto').AsInteger := StrToInt(EdCdProduto.Text);
            DataModule3.IBQConsProduto.Open;
            if DataModule3.IBQConsProduto.IsEmpty then
          begin
            ShowMessage('Produto não encontrado!');
            EdCdProduto.SetFocus;
            EdCdProduto.Clear;
          end
        else
          begin
             EdDsProduto.Text := DataModule3.IBQConsProdutoDS_PRODUTO.AsString;
          end;
  end;
end;

procedure TFEtiquetasProd.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
if key = #27 then
  begin
     Close;
  end;
end;

procedure TFEtiquetasProd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFEtiquetasProd.EdCdProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TFEtiquetasProd.EdQtdeKeyPress(Sender: TObject; var Key: Char);
begin

    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
 
end;

end.
