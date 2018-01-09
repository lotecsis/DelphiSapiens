unit UConsSimpSitTribu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpSitTribu = class(TForm)
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
  FConsSimpSitTribu: TFConsSimpSitTribu;

implementation

uses UDataModule1, UDataModule3;

{$R *.dfm}

procedure TFConsSimpSitTribu.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule3.IBQConsSitTribu.Close;
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

procedure TFConsSimpSitTribu.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpSitTribu.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpSitTribu.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule3.IBQConsSitTribu.Close;
    DataModule3.IBQConsSitTribu.SQL.Clear;
    DataModule3.IBQConsSitTribu.SQL.Add('select * from SITU_TRIBUTARIA');
    DataModule3.IBQConsSitTribu.SQL.Add('order by cd_situacao asc');
    DataModule3.IBQConsSitTribu.Open;
    if DataModule3.IBQConsSitTribu.IsEmpty then
      begin
        ShowMessage('Não existe situação tributária cadastrada');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule3.IBQConsSitTribu.Close;
        DataModule3.IBQConsSitTribu.SQL.Clear;
        DataModule3.IBQConsSitTribu.SQL.Add('select * from SITU_TRIBUTARIA');
        DataModule3.IBQConsSitTribu.SQL.Add('where cd_situacao = :psituacao');
        DataModule3.IBQConsSitTribu.ParamByName('psituacao').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule3.IBQConsSitTribu.Open;
        if DataModule3.IBQConsSitTribu.IsEmpty then
          begin
            ShowMessage('Não existe situação tributária cadastrada com este código');
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
            DataModule3.IBQConsSitTribu.Close;
            DataModule3.IBQConsSitTribu.SQL.Clear;
            DataModule3.IBQConsSitTribu.SQL.Add('select * from SITU_TRIBUTARIA');
            DataModule3.IBQConsSitTribu.SQL.Add('where ds_situacao LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule3.IBQConsSitTribu.Open;
            if DataModule3.IBQConsSitTribu.IsEmpty then
              begin
                ShowMessage('Não existe situação tributária cadastrada com esta descrição');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;
end;

procedure TFConsSimpSitTribu.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpSitTribu.BCancelarClick(Sender: TObject);
begin
Close;
end;

end.
