unit UConsSimpCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpCidade = class(TForm)
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
  FConsSimpCidade: TFConsSimpCidade;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFConsSimpCidade.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsultaCidade.Close;

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
         LDescricaoPesquisa.Caption := 'Nome';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
         EdPesquisa.SetFocus;
      end
    else
       if FiltroPesquisa.ItemIndex = 3 then
    begin
      LDescricaoPesquisa.Caption := 'Sigla UF';
      EdPesquisa.ReadOnly := false;
      EdPesquisa.MaxLength := 2;
      EdPesquisa.SetFocus;
    end;
end;

procedure TFConsSimpCidade.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpCidade.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpCidade.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule1.IBQConsultaCidade.Close;
    DataModule1.IBQConsultaCidade.SQL.Clear;
    DataModule1.IBQConsultaCidade.SQL.Add('select * from CIDADE');
    DataModule1.IBQConsultaCidade.SQL.Add('order by cd_cidade asc');
    DataModule1.IBQConsultaCidade.Open;
    if DataModule1.IBQConsultaCidade.IsEmpty then
      begin
        ShowMessage('Não existe Cidades cadastradas');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule1.IBQConsultaCidade.Close;
        DataModule1.IBQConsultaCidade.SQL.Clear;
        DataModule1.IBQConsultaCidade.SQL.Add('select * from CIDADE');
        DataModule1.IBQConsultaCidade.SQL.Add('where cd_CIDADE = :pcidade');
        DataModule1.IBQConsultaCidade.ParamByName('pcidade').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule1.IBQConsultaCidade.Open;
        if DataModule1.IBQConsultaCidade.IsEmpty then
          begin
            ShowMessage('Não existe Cidades cadastradas com este código');
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
            DataModule1.IBQConsultaCidade.Close;
            DataModule1.IBQConsultaCidade.SQL.Clear;
            DataModule1.IBQConsultaCidade.SQL.Add('select * from CIDADE');
            DataModule1.IBQConsultaCidade.SQL.Add('where nm_cidade LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule1.IBQConsultaCidade.Open;
            if DataModule1.IBQConsultaCidade.IsEmpty then
              begin
                ShowMessage('Não existe Cidades cadastradas com esta descrição');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
              end;
          end;
          end
             else
        if FiltroPesquisa.ItemIndex = 3 then
          begin
          if EdPesquisa.Text <> '' then
          begin
            DataModule1.IBQConsultaCidade.Close;
            DataModule1.IBQConsultaCidade.SQL.Clear;
            DataModule1.IBQConsultaCidade.SQL.Add('select * from CIDADE');
            DataModule1.IBQConsultaCidade.SQL.Add('where sigla_uf = :puf');
            DataModule1.IBQConsultaCidade.ParamByName('puf').AsString := EdPesquisa.Text;
            DataModule1.IBQConsultaCidade.Open;
            if DataModule1.IBQConsultaCidade.IsEmpty then
              begin
                ShowMessage('Não existe Cidades cadastradas com esta UF');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
            end;
          end;


end;

procedure TFConsSimpCidade.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpCidade.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpCidade.FormShow(Sender: TObject);
begin
  FiltroPesquisa.ItemIndex := 2;
  FiltroPesquisaClick(Sender);
end;

end.
