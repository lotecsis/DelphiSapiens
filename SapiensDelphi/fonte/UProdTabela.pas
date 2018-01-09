unit UProdTabela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rxToolEdit, RXDBCtrl, DB, StdCtrls, Mask, DBCtrls, Buttons,
  rxCurrEdit;

type
  TFProdTab = class(TForm)
    Label1: TLabel;
    DBECdProduto: TDBEdit;
    DSProdTabela: TDataSource;
    Label2: TLabel;
    DBECdTabela: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEUsuario: TDBEdit;
    DBEData: TDBDateEdit;
    BConfirma: TBitBtn;
    BCancelar: TBitBtn;
    BConsProduto: TSpeedButton;
    EdDsProduto: TEdit;
    EdPreco: TCurrencyEdit;
    procedure BConsProdutoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBECdProdutoExit(Sender: TObject);
    procedure DSProdTabelaStateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure BConfirmaClick(Sender: TObject);
    procedure DBEValorKeyPress(Sender: TObject; var Key: Char);
    procedure EdValorKeyPress(Sender: TObject; var Key: Char);
    procedure EdPrecoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdTab: TFProdTab;

implementation

uses UDataModule3, UConsSimpProduto, UTabelaPreco;

{$R *.dfm}

procedure TFProdTab.BConsProdutoClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpProduto, FConsSimpProduto);
 if FConsSimpProduto.ShowModal = mrOk then
    begin
      DataModule3.IBDProdTabelaCD_PRODUTO.AsInteger := DataModule3.IBQConsProdutoCD_PRODUTO.AsInteger;
      EdDsProduto.Text := DataModule3.IBQConsProdutoDS_PRODUTO.AsString;

      //QUERY EXCLUSIVA PARA PEGAR PREÇO DO PRODUTO
      DataModule3.IBQPrecoProduto.Close;
      DataModule3.IBQPrecoProduto.ParamByName('pproduto').AsInteger :=
      StrToInt(FProdTab.DBECdProduto.Text);
      DataModule3.IBQPrecoProduto.Open;

      EdPreco.Text := FloatToStr(DataModule3.IBQPrecoProdutoPRECO_VENDA.AsFloat);

      EdPreco.SetFocus;
    end;

end;

procedure TFProdTab.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFProdTab.DBECdProdutoExit(Sender: TObject);
begin
    if DBECdProduto.Text <> '' then
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
            DataModule3.IBQConsProduto.ParamByName('pproduto').AsInteger := StrToInt(DBECdProduto.Text);
            DataModule3.IBQConsProduto.Open;
    if DataModule3.IBQConsProduto.IsEmpty then
      begin
        ShowMessage('Produto não encontrado!');
        DBECdProduto.SetFocus;
        DBECdProduto.Clear;
      end
  else
    begin
    if DataModule3.IBDProdTabela.State in [dsinsert] then
    begin
    //VERIFICA SE JA EXISTE O PRODUTO
    DataModule3.IBQExisteProduto.Close;
    DataModule3.IBQExisteProduto.ParamByName('pproduto').AsInteger :=
    DataModule3.IBQConsProdutoCD_PRODUTO.AsInteger;
    DataModule3.IBQExisteProduto.ParamByName('ptabela').AsInteger :=
    StrToInt(DBECdTabela.Text);
    DataModule3.IBQExisteProduto.Open;
    if DataModule3.IBQExisteProduto.IsEmpty then
      begin

        EdDsProduto.Text := DataModule3.IBQConsProdutoDS_PRODUTO.AsString;

        //QUERY EXCLUSIVA PARA PEGAR PREÇO DO PRODUTO
        DataModule3.IBQPrecoProduto.Close;
        DataModule3.IBQPrecoProduto.ParamByName('pproduto').AsInteger :=
        StrToInt(FProdTab.DBECdProduto.Text);
        DataModule3.IBQPrecoProduto.Open;

        EdPreco.Text := FloatToStr(DataModule3.IBQPrecoProdutoPRECO_VENDA.AsFloat);
      end
    else
      begin
         ShowMessage('Produto já existe na tabela');
         DBECdProduto.SetFocus;
         DBECdProduto.Clear;
      end;
    end;

    end;
  end;
end;

procedure TFProdTab.DSProdTabelaStateChange(Sender: TObject);
begin
  if DataModule3.IBDProdTabela.State in [dsinsert,dsedit] then
    begin

       FTabelaPreco.BAdicionaProd.Enabled := false;
       FTabelaPreco.BAlteraProd.Enabled := false;
       FTabelaPreco.BExcluiProd.Enabled := false;
    end
  else
    begin
       FTabelaPreco.BAdicionaProd.Enabled := true;
       FTabelaPreco.BAlteraProd.Enabled := true;
       FTabelaPreco.BExcluiProd.Enabled := true;
    end;

end;

procedure TFProdTab.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFProdTab.EdPrecoKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
  beep;
  key:=#0;
  end;
end;

procedure TFProdTab.BConfirmaClick(Sender: TObject);
begin
                      if DBECdProduto.Text = '' then
                      begin
                        showmessage('Produto é obrigatório!');
                        DBECdProduto.SetFocus;
                      end
                     else
                    if EdPreco.Text = '' then
                      begin
                        showmessage('Preço é obrigatório!');
                        EdPreco.SetFocus;
                      end
                    else
                      begin
                        DataModule3.IBDProdTabelaPRECO_VENDA.AsFloat := StrToFloat(EdPreco.Text);
                        BConfirma.ModalResult := mrOk;
                      end;
end;

procedure TFProdTab.DBEValorKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
  beep;
  key:=#0;
  end;
end;

procedure TFProdTab.EdValorKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
  beep;
  key:=#0;
  end;
end;

procedure TFProdTab.EdPrecoExit(Sender: TObject);
begin
  ActiveControl := BConfirma;
end;

end.
