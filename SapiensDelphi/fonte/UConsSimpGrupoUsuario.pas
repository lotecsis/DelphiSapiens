unit UConsSimpGrupoUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpGrupoUsuario = class(TForm)
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
  FConsSimpGrupoUsuario: TFConsSimpGrupoUsuario;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFConsSimpGrupoUsuario.FiltroPesquisaClick(Sender: TObject);
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
    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'Descrição';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end;
end;

procedure TFConsSimpGrupoUsuario.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpGrupoUsuario.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpGrupoUsuario.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule1.IBQConsGPUsuario.Close;
    DataModule1.IBQConsGPUsuario.SQL.Clear;
    DataModule1.IBQConsGPUsuario.SQL.Add('select * from GRUPO_USUARIO');
    DataModule1.IBQConsGPUsuario.SQL.Add('order by cd_grupo asc');
    DataModule1.IBQConsGPUsuario.Open;
    if DataModule1.IBQConsGPUsuario.IsEmpty then
      begin
        ShowMessage('Não existe grupos cadastrados');
      end;
 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule1.IBQConsGPUsuario.Close;
        DataModule1.IBQConsGPUsuario.SQL.Clear;
        DataModule1.IBQConsGPUsuario.SQL.Add('select * from GRUPO_USUARIO');
        DataModule1.IBQConsGPUsuario.SQL.Add('where cd_grupo = :pgrupo');
        DataModule1.IBQConsGPUsuario.ParamByName('pgrupo').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule1.IBQConsGPUsuario.Open;
        if DataModule1.IBQConsGPUsuario.IsEmpty then
          begin
            ShowMessage('Não existe grupos  cadastrados');
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
            DataModule1.IBQConsGPUsuario.Close;
            DataModule1.IBQConsGPUsuario.SQL.Clear;
            DataModule1.IBQConsGPUsuario.SQL.Add('select * from GRUPO_USUARIO');
            DataModule1.IBQConsGPUsuario.SQL.Add('where ds_grupo LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule1.IBQConsGPUsuario.Open;
            if DataModule1.IBQConsGPUsuario.IsEmpty then
              begin
                ShowMessage('Não existe grupos cadastrados');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;


end;

procedure TFConsSimpGrupoUsuario.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpGrupoUsuario.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpGrupoUsuario.FormShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 0;
FiltroPesquisaClick(sender);
EdPesquisaExit(sender);

FiltroPesquisa.ItemIndex := 2;
FiltroPesquisaClick(sender);
EdPesquisaExit(sender);
EdPesquisa.SetFocus;
end;

end.
