unit UConsSimpSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpSetor = class(TForm)
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
  FConsSimpSetor: TFConsSimpSetor;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFConsSimpSetor.FiltroPesquisaClick(Sender: TObject);
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
    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'Descrição';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end
    else
       if FiltroPesquisa.ItemIndex = 3 then
    begin
      LDescricaoPesquisa.Caption := 'SIGLA UF';
      EdPesquisa.ReadOnly := false;
      EdPesquisa.MaxLength := 2;
    end;
end;

procedure TFConsSimpSetor.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpSetor.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpSetor.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule1.IBQConsSetor.Close;
    DataModule1.IBQConsSetor.SQL.Clear;
    DataModule1.IBQConsSetor.SQL.Add('select * from SETOR');
    DataModule1.IBQConsSetor.SQL.Add('order by cd_setor asc');
    DataModule1.IBQConsSetor.Open;
    if DataModule1.IBQConsSetor.IsEmpty then
      begin
        ShowMessage('Não existe setores cadastrados');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule1.IBQConsSetor.Close;
        DataModule1.IBQConsSetor.SQL.Clear;
        DataModule1.IBQConsSetor.SQL.Add('select * from SETOR');
        DataModule1.IBQConsSetor.SQL.Add('where cd_setor = :psetor');
        DataModule1.IBQConsSetor.ParamByName('psetor').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule1.IBQConsSetor.Open;
        if DataModule1.IBQConsSetor.IsEmpty then
          begin
            ShowMessage('Não existe setores cadastrados com este código');
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
            DataModule1.IBQConsSetor.Close;
            DataModule1.IBQConsSetor.SQL.Clear;
            DataModule1.IBQConsSetor.SQL.Add('select * from SETOR');
            DataModule1.IBQConsSetor.SQL.Add('where ds_setor LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule1.IBQConsSetor.Open;
            if DataModule1.IBQConsSetor.IsEmpty then
              begin
                ShowMessage('Não existe setores cadastrados com esta descrição');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;


end;

procedure TFConsSimpSetor.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpSetor.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpSetor.FormShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 2;
FiltroPesquisaClick(sender);
EdPesquisa.SetFocus;
end;

end.
