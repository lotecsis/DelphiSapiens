unit UConsSimpTabPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpTabPreco = class(TForm)
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
  FConsSimpTabPreco: TFConsSimpTabPreco;

implementation

uses UDataModule1, UDataModule3;

{$R *.dfm}

procedure TFConsSimpTabPreco.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule3.IBQConsSimpTabPreco.Close;

if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'Geral';
      EdPesquisa.ReadOnly := true;
      BPesquisa.Click;
  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      LDescricaoPesquisa.Caption := 'C�digo';
      EdPesquisa.ReadOnly := false;
      EdPesquisa.MaxLength := 6;
    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'Descri��o';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end;
end;

procedure TFConsSimpTabPreco.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpTabPreco.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpTabPreco.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin

    DataModule3.IBQConsSimpTabPreco.Close;
    DataModule3.IBQConsSimpTabPreco.SQL.Clear;
    DataModule3.IBQConsSimpTabPreco.SQL.Add('select * from TABELA_PRECO');
    DataModule3.IBQConsSimpTabPreco.SQL.Add('order by cd_tabela asc');
    DataModule3.IBQConsSimpTabPreco.Open;
    if DataModule3.IBQConsSimpTabPreco.IsEmpty then
      begin
        ShowMessage('Tabela n�o encontrada');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule3.IBQConsSimpTabPreco.Close;
        DataModule3.IBQConsSimpTabPreco.SQL.Clear;
        DataModule3.IBQConsSimpTabPreco.SQL.Add('select * from TABELA_PRECO');
        DataModule3.IBQConsSimpTabPreco.SQL.Add('where cd_tabela = :ptabela');
        DataModule3.IBQConsSimpTabPreco.ParamByName('ptabela').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule3.IBQConsSimpTabPreco.Open;
        if DataModule3.IBQConsSimpTabPreco.IsEmpty then
          begin
            ShowMessage('Tabela n�o encontrada');
            EdPesquisa.SetFocus;
          end;
        end;
       end
      else
        if FiltroPesquisa.ItemIndex = 2 then
          begin
          if EdPesquisa.Text <> '' then
          begin
            DataModule3.IBQConsSimpTabPreco.Close;
            DataModule3.IBQConsSimpTabPreco.SQL.Clear;
            DataModule3.IBQConsSimpTabPreco.SQL.Add('select * from TABELA_PRECO');
            DataModule3.IBQConsSimpTabPreco.SQL.Add('where ds_tabela LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule3.IBQConsSimpTabPreco.Open;
            if DataModule3.IBQConsSimpTabPreco.IsEmpty then
              begin
                ShowMessage('Tabela n�o encontrada');
                EdPesquisa.SetFocus;
            end;
          end;
          end;


end;

procedure TFConsSimpTabPreco.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpTabPreco.BCancelarClick(Sender: TObject);
begin
Close;
end;

end.
