unit UConsSimpProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpProduto = class(TForm)
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    DSBrig: TDataSource;
    DBEGrig: TRxDBGrid;
    BSeleciona: TRbButton;
    BCancelar: TRbButton;
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure EdPesquisaExit(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsSimpProduto: TFConsSimpProduto;

implementation

uses UDataModule1, UDataModule3;

{$R *.dfm}

procedure TFConsSimpProduto.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule3.IBQConsProduto.Close;

if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'Geral';
      EdPesquisa.ReadOnly := true;
      BPesquisa.Click;
  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      LDescricaoPesquisa.Caption := 'Código';
      EdPesquisa.ReadOnly := false;
      EdPesquisa.MaxLength := 6;
    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'Descrição';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end;

if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'Geral';
      EdPesquisa.ReadOnly := true;
      BPesquisa.Click;
  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      LDescricaoPesquisa.Caption := 'Código';
      EdPesquisa.ReadOnly := false;
      EdPesquisa.MaxLength := 6;
    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'Descrição';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end;
end;

procedure TFConsSimpProduto.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpProduto.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpProduto.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
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
    DataModule3.IBQConsProduto.SQL.Add('pd.cd_grupo_prod = gp.cd_grupo');
    DataModule3.IBQConsProduto.Open;
    if DataModule3.IBQConsProduto.IsEmpty then
      begin
        ShowMessage('Produtos não encontrados!');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
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
            DataModule3.IBQConsProduto.ParamByName('pproduto').AsInteger := StrToInt(EdPesquisa.Text);
            DataModule3.IBQConsProduto.Open;
            if DataModule3.IBQConsProduto.IsEmpty then
          begin
            ShowMessage('Produto não encontrado!');
          end;
        end;
       end
      else
        if FiltroPesquisa.ItemIndex = 2 then
          begin
          if EdPesquisa.Text <> '' then
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
            DataModule3.IBQConsProduto.SQL.Add('pd.ds_produto LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule3.IBQConsProduto.Open;
            if DataModule3.IBQConsProduto.IsEmpty then
              begin
                ShowMessage('Produto não encontrado!');
                EdPesquisa.SetFocus;
            end;
          end;
          end;


end;

procedure TFConsSimpProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
if key = #27 then
  begin
     BCancelar.Click;
  end;
end;

procedure TFConsSimpProduto.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpProduto.FormShow(Sender: TObject);
begin
  FiltroPesquisa.ItemIndex := 2;
  FiltroPesquisaClick(Sender);
  ActiveControl := EdPesquisa;  
end;

end.
