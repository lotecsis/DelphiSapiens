unit UConsSimpGrupoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpGrupoProd = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsSimpGrupoProd: TFConsSimpGrupoProd;

implementation

uses UDataModule1, UDataModule3;

{$R *.dfm}

procedure TFConsSimpGrupoProd.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsGPUsuario.Close;
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

procedure TFConsSimpGrupoProd.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpGrupoProd.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpGrupoProd.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule3.IBQConsGrupoProdutos.Close;
    DataModule3.IBQConsGrupoProdutos.SQL.Clear;
    DataModule3.IBQConsGrupoProdutos.SQL.Add('select * from GRUPO_PRODUTO');
    DataModule3.IBQConsGrupoProdutos.SQL.Add('order by cd_grupo asc');
    DataModule3.IBQConsGrupoProdutos.Open;
    if DataModule3.IBQConsGrupoProdutos.IsEmpty then
      begin
        ShowMessage('Não existe grupos cadastrados');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule3.IBQConsGrupoProdutos.Close;
        DataModule3.IBQConsGrupoProdutos.SQL.Clear;
        DataModule3.IBQConsGrupoProdutos.SQL.Add('select * from GRUPO_PRODUTO');
        DataModule3.IBQConsGrupoProdutos.SQL.Add('where cd_grupo = :pgrupo');
        DataModule3.IBQConsGrupoProdutos.ParamByName('pgrupo').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule3.IBQConsGrupoProdutos.Open;
        if DataModule3.IBQConsGrupoProdutos.IsEmpty then
          begin
            ShowMessage('Não existe grupos cadastrados com este código');
            EdPesquisa.SetFocus;
            EdPesquisa.Clear;
          end;
        end;
       end
      else
        if FiltroPesquisa.ItemIndex = 2 then
          begin
          if EdPesquisa.Text <> '' then
          begin
            DataModule3.IBQConsGrupoProdutos.Close;
            DataModule3.IBQConsGrupoProdutos.SQL.Clear;
            DataModule3.IBQConsGrupoProdutos.SQL.Add('select * from GRUPO_PRODUTO');
            DataModule3.IBQConsGrupoProdutos.SQL.Add('where ds_grupo LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule3.IBQConsGrupoProdutos.Open;
            if DataModule3.IBQConsGrupoProdutos.IsEmpty then
              begin
                ShowMessage('Não existe grupos cadastrados com esta descrição');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;


end;

procedure TFConsSimpGrupoProd.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpGrupoProd.BCancelarClick(Sender: TObject);
begin
Close;
end;

end.
