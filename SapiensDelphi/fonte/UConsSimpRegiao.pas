unit UConsSimpRegiao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpRegiao = class(TForm)
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
  FConsSimpRegiao: TFConsSimpRegiao;

implementation

uses UDataModule1, UDataModule2;

{$R *.dfm}

procedure TFConsSimpRegiao.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule2.IBQConsRegiao.Close;

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

procedure TFConsSimpRegiao.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpRegiao.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpRegiao.BPesquisaClick(Sender: TObject);

begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule2.IBQConsRegiao.Close;
    DataModule2.IBQConsRegiao.SQL.Clear;
    DataModule2.IBQConsRegiao.SQL.Add(' SELECT rg.*, tb_p.ds_tabela from');
    DataModule2.IBQConsRegiao.SQL.Add('REGIAO rg, TABELA_PRECO tb_p');
    DataModule2.IBQConsRegiao.SQL.Add('where rg.cd_tabela_preco = tb_p.cd_tabela');
    DataModule2.IBQConsRegiao.SQL.Add('order by rg.cd_regiao');
    DataModule2.IBQConsRegiao.Open;
    if DataModule2.IBQConsRegiao.IsEmpty then
      begin
        ShowMessage('Regi�o n�o encontrada!');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule2.IBQConsRegiao.Close;
        DataModule2.IBQConsRegiao.SQL.Clear;
        DataModule2.IBQConsRegiao.SQL.Add(' SELECT rg.*, tb_p.ds_tabela from');
        DataModule2.IBQConsRegiao.SQL.Add('REGIAO rg, TABELA_PRECO tb_p');
        DataModule2.IBQConsRegiao.SQL.Add('where rg.cd_tabela_preco = tb_p.cd_tabela and');
        DataModule2.IBQConsRegiao.SQL.Add('rg.cd_regiao = :pregiao');
        DataModule2.IBQConsRegiao.ParamByName('pregiao').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule2.IBQConsRegiao.Open;
        if DataModule2.IBQConsRegiao.IsEmpty then
          begin
            ShowMessage('Regi�o n�o encontrada!');
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
            DataModule2.IBQConsRegiao.SQL.Clear;
            DataModule2.IBQConsRegiao.SQL.Add(' SELECT rg.*, tb_p.ds_tabela from');
            DataModule2.IBQConsRegiao.SQL.Add('REGIAO rg, TABELA_PRECO tb_p');
            DataModule2.IBQConsRegiao.SQL.Add('where rg.cd_tabela_preco = tb_p.cd_tabela and');
            DataModule2.IBQConsRegiao.SQL.Add('rg.ds_regiao LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule2.IBQConsRegiao.Open;
            if DataModule2.IBQConsRegiao.IsEmpty then
              begin
                ShowMessage('Regi�o n�o encontrada!');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;

          end;
      end;
 


end;

procedure TFConsSimpRegiao.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpRegiao.BCancelarClick(Sender: TObject);
begin
Close;
end;

end.
