unit UConsSimpClasse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpClasse = class(TForm)
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
  FConsSimpClasse: TFConsSimpClasse;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFConsSimpClasse.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsClasse.Close;
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
      EdPesquisa.SetFocus;
    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'Descrição';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
         EdPesquisa.SetFocus;
      end;
end;

procedure TFConsSimpClasse.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpClasse.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpClasse.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule1.IBQConsClasse.Close;
    DataModule1.IBQConsClasse.SQL.Clear;
    DataModule1.IBQConsClasse.SQL.Add('select * from CLASSE_MAT_PRIMA');
    DataModule1.IBQConsClasse.SQL.Add('order by cd_classe asc');
    DataModule1.IBQConsClasse.Open;
    if DataModule1.IBQConsClasse.IsEmpty then
      begin
        ShowMessage('Não existe classes cadastrados');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule1.IBQConsClasse.Close;
        DataModule1.IBQConsClasse.SQL.Clear;
        DataModule1.IBQConsClasse.SQL.Add('select * from CLASSE_MAT_PRIMA');
        DataModule1.IBQConsClasse.SQL.Add('where cd_classe = :pclasse');
        DataModule1.IBQConsClasse.ParamByName('pclasse').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule1.IBQConsClasse.Open;
        if DataModule1.IBQConsClasse.IsEmpty then
          begin
            ShowMessage('Não existe classes cadastrados com este código');
            EdPesquisa.SetFocus;
          end;
        end;
       end
      else
        if FiltroPesquisa.ItemIndex = 2 then
          begin
          if EdPesquisa.Text <> '' then
          begin
            DataModule1.IBQConsClasse.Close;
            DataModule1.IBQConsClasse.SQL.Clear;
            DataModule1.IBQConsClasse.SQL.Add('select * from CLASSE_MAT_PRIMA');
            DataModule1.IBQConsClasse.SQL.Add('where ds_classe LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule1.IBQConsClasse.Open;
            if DataModule1.IBQConsClasse.IsEmpty then
              begin
                ShowMessage('Não existe classes cadastrados com esta descrição');
                EdPesquisa.SetFocus;
            end;
          end;
          end;


end;

procedure TFConsSimpClasse.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpClasse.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpClasse.FormShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 2;
FiltroPesquisaClick(sender);
EdPesquisa.SetFocus;
end;

end.
