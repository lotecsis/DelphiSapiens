unit UConsSimpUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpUsuarios = class(TForm)
    LDescricaoPesquisa: TLabel;
    DSBrig: TDataSource;
    BSeleciona: TRbButton;
    BCancelar: TRbButton;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    BPesquisa: TSpeedButton;
    DBEGrig: TRxDBGrid;
    procedure FiltroPesquisaExit(Sender: TObject);
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
  FConsSimpUsuarios: TFConsSimpUsuarios;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFConsSimpUsuarios.FiltroPesquisaExit(Sender: TObject);
begin
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


procedure TFConsSimpUsuarios.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsUsuario.Close;

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
         LDescricaoPesquisa.Caption := 'Nome';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end
  else
    if FiltroPesquisa.ItemIndex = 3 then
      begin
         LDescricaoPesquisa.Caption := 'Nível de Acesso';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end
  else
    if FiltroPesquisa.ItemIndex = 4 then
      begin
         LDescricaoPesquisa.Caption := 'Grupo de Usuário';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end;
end;

procedure TFConsSimpUsuarios.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpUsuarios.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpUsuarios.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule1.IBQConsUsuario.Close;
    DataModule1.IBQConsUsuario.SQL.Clear;
    DataModule1.IBQConsUsuario.SQL.Add('select u.*, pj.rz_social, n.ds_nivel, g.ds_grupo');
    DataModule1.IBQConsUsuario.SQL.Add('from USUARIO u,');
    DataModule1.IBQConsUsuario.SQL.Add('PESSOA_JURIDICA pj,');
    DataModule1.IBQConsUsuario.SQL.Add('NIVEL_ACESSO n,');
    DataModule1.IBQConsUsuario.SQL.Add('GRUPO_USUARIO g');
    DataModule1.IBQConsUsuario.SQL.Add('where u.cd_nivel = n.cd_nivel and');
    DataModule1.IBQConsUsuario.SQL.Add('u.cd_grupo = g.cd_grupo and');
    DataModule1.IBQConsUsuario.SQL.Add('u.cd_pessoa_ju = pj.cd_pessoa_ju');
    DataModule1.IBQConsUsuario.SQL.Add('order by u.cd_usuario asc');
    DataModule1.IBQConsUsuario.Open;
 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule1.IBQConsUsuario.Close;
        DataModule1.IBQConsUsuario.SQL.Clear;
        DataModule1.IBQConsUsuario.SQL.Add('select u.*, pj.rz_social, n.ds_nivel, g.ds_grupo');
        DataModule1.IBQConsUsuario.SQL.Add('from USUARIO u,');
        DataModule1.IBQConsUsuario.SQL.Add('PESSOA_JURIDICA pj,');
        DataModule1.IBQConsUsuario.SQL.Add('NIVEL_ACESSO n,');
        DataModule1.IBQConsUsuario.SQL.Add('GRUPO_USUARIO g');
        DataModule1.IBQConsUsuario.SQL.Add('where u.cd_nivel = n.cd_nivel and');
        DataModule1.IBQConsUsuario.SQL.Add('u.cd_grupo = g.cd_grupo and');
        DataModule1.IBQConsUsuario.SQL.Add('u.cd_pessoa_ju = pj.cd_pessoa_ju and');
        DataModule1.IBQConsUsuario.SQL.Add('u.cd_usuario = :pusuario');
        DataModule1.IBQConsUsuario.ParamByName('pusuario').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule1.IBQConsUsuario.Open;
        if DataModule1.IBQConsUsuario.IsEmpty then
          begin
            ShowMessage('Não existe usuários com este código');
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
            DataModule1.IBQConsUsuario.Close;
            DataModule1.IBQConsUsuario.SQL.Clear;
            DataModule1.IBQConsUsuario.SQL.Add('select u.*, pj.rz_social, n.ds_nivel, g.ds_grupo');
            DataModule1.IBQConsUsuario.SQL.Add('from USUARIO u,');
            DataModule1.IBQConsUsuario.SQL.Add('PESSOA_JURIDICA pj,');
            DataModule1.IBQConsUsuario.SQL.Add('NIVEL_ACESSO n,');
            DataModule1.IBQConsUsuario.SQL.Add('GRUPO_USUARIO g');
            DataModule1.IBQConsUsuario.SQL.Add('where u.cd_nivel = n.cd_nivel and');
            DataModule1.IBQConsUsuario.SQL.Add('u.cd_grupo = g.cd_grupo and');
            DataModule1.IBQConsUsuario.SQL.Add('u.cd_pessoa_ju = pj.cd_pessoa_ju and');
            DataModule1.IBQConsUsuario.SQL.Add('u.nm_usuario LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule1.IBQConsUsuario.Open;
            if DataModule1.IBQConsUsuario.IsEmpty then
              begin
                ShowMessage('Não existe usuários com este nome');
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
            DataModule1.IBQConsUsuario.Close;
            DataModule1.IBQConsUsuario.SQL.Clear;
            DataModule1.IBQConsUsuario.SQL.Add('select u.*, pj.rz_social, n.ds_nivel, g.ds_grupo');
            DataModule1.IBQConsUsuario.SQL.Add('from USUARIO u,');
            DataModule1.IBQConsUsuario.SQL.Add('PESSOA_JURIDICA pj,');
            DataModule1.IBQConsUsuario.SQL.Add('NIVEL_ACESSO n,');
            DataModule1.IBQConsUsuario.SQL.Add('GRUPO_USUARIO g');
            DataModule1.IBQConsUsuario.SQL.Add('where u.cd_nivel = n.cd_nivel and');
            DataModule1.IBQConsUsuario.SQL.Add('u.cd_grupo = g.cd_grupo and');
            DataModule1.IBQConsUsuario.SQL.Add('u.cd_pessoa_ju = pj.cd_pessoa_ju and');
            DataModule1.IBQConsUsuario.SQL.Add('n.ds_nivel LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule1.IBQConsUsuario.Open;
            if DataModule1.IBQConsUsuario.IsEmpty then
              begin
                ShowMessage('Não existe usuários com este nível');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
        end
      else
      if FiltroPesquisa.ItemIndex = 4 then
        begin
          if EdPesquisa.Text <> '' then
          begin
            DataModule1.IBQConsUsuario.Close;
            DataModule1.IBQConsUsuario.SQL.Clear;
            DataModule1.IBQConsUsuario.SQL.Add('select u.*, pj.rz_social, n.ds_nivel, g.ds_grupo');
            DataModule1.IBQConsUsuario.SQL.Add('from USUARIO u,');
            DataModule1.IBQConsUsuario.SQL.Add('PESSOA_JURIDICA pj,');
            DataModule1.IBQConsUsuario.SQL.Add('NIVEL_ACESSO n,');
            DataModule1.IBQConsUsuario.SQL.Add('GRUPO_USUARIO g');
            DataModule1.IBQConsUsuario.SQL.Add('where u.cd_nivel = n.cd_nivel and');
            DataModule1.IBQConsUsuario.SQL.Add('u.cd_grupo = g.cd_grupo and');
            DataModule1.IBQConsUsuario.SQL.Add('u.cd_pessoa_ju = pj.cd_pessoa_ju and');
            DataModule1.IBQConsUsuario.SQL.Add('g.ds_grupo LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule1.IBQConsUsuario.Open;
            if DataModule1.IBQConsUsuario.IsEmpty then
              begin
                ShowMessage('Não existe usuários com este grupo');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
        end;


end;

procedure TFConsSimpUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpUsuarios.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpUsuarios.FormShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 2;
FiltroPesquisaExit(sender);
EdPesquisa.SetFocus;
end;

end.
