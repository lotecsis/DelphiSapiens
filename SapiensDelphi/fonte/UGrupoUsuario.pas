unit UGrupoUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, RXDBCtrl, Buttons, RbDrawCore,
  RbButton, ExtCtrls, ComCtrls, DB, Mask, DBCtrls;

type
  TFGrupoUsuario = class(TForm)
    PaginaControle: TPageControl;
    TbCadastro: TTabSheet;
    Panel1: TPanel;
    BInserir: TRbButton;
    BCancelar: TRbButton;
    BConfirmar: TRbButton;
    BAlterar: TRbButton;
    BExcluir: TRbButton;
    BSair: TRbButton;
    TbConsulta: TTabSheet;
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    DBEGrig: TRxDBGrid;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    Label1: TLabel;
    DBECodigo: TDBEdit;
    DSGrupoUsuario: TDataSource;
    Label2: TLabel;
    DBEDescricao: TDBEdit;
    DSGrid: TDataSource;
    procedure BInserirClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure BAlterarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure DSGrupoUsuarioStateChange(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure FiltroPesquisaExit(Sender: TObject);
    procedure EdPesquisaExit(Sender: TObject);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEGrigEnter(Sender: TObject);
    procedure DBEGrigExit(Sender: TObject);
    procedure DBEGrigDblClick(Sender: TObject);
    procedure DBEGrigKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGrupoUsuario: TFGrupoUsuario;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFGrupoUsuario.BInserirClick(Sender: TObject);
begin
  DataModule1.IBDGrupoUsuario.Insert;
  DBEDescricao.SetFocus;
  
end;

procedure TFGrupoUsuario.BCancelarClick(Sender: TObject);
begin

if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule1.IBDGrupoUsuario.Cancel;
  DBEDescricao.SetFocus;
  
 end;
end;

procedure TFGrupoUsuario.BConfirmarClick(Sender: TObject);
begin
if DBEDescricao.Text = '' then
          begin
          MessageDlg('Campo Descrição é obrigatório.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
          end
        else
          begin
            DataModule1.IBDGrupoUsuario.Post;
            DataModule1.IBTTransacao.CommitRetaining;
          end;


end;

procedure TFGrupoUsuario.BAlterarClick(Sender: TObject);
begin
if DataModule1.IBDGrupoUsuario.IsEmpty then
 begin
  Showmessage ('Grupo de Usuário não pode ser editado vazio');
 end
  else
    begin
      DataModule1.IBDGrupoUsuario.Edit;
      DBEDescricao.SetFocus;
    end;
end;

procedure TFGrupoUsuario.BExcluirClick(Sender: TObject);
begin
 if not DataModule1.IBDGrupoUsuario.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     DataModule1.IBDGrupoUsuario.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

      EdPesquisa.Clear;
     //atualiza a grid de consulta
      DataModule1.IBQConsGPUsuario.Close;
      DataModule1.IBQConsGPUsuario.SQL.Clear;
      DataModule1.IBQConsGPUsuario.SQL.Add('select * from GRUPO_USUARIO');
      DataModule1.IBQConsGPUsuario.Open;


    
    end;
  end
 else
  Begin
   Showmessage('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !');
   DBEDescricao.SetFocus;
  end;
end;

procedure TFGrupoUsuario.DSGrupoUsuarioStateChange(Sender: TObject);
begin
if DataModule1.IBDGrupoUsuario.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      //BProcuraFornecedor.Enabled := true;
      TbConsulta.TabVisible := false;
    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      //BProcuraFornecedor.Enabled := false;
      TbConsulta.TabVisible := true;
    end;
end;

procedure TFGrupoUsuario.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFGrupoUsuario.FiltroPesquisaExit(Sender: TObject);
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

procedure TFGrupoUsuario.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFGrupoUsuario.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFGrupoUsuario.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsGPUsuario.Close;
end;

procedure TFGrupoUsuario.BPesquisaClick(Sender: TObject);
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

procedure TFGrupoUsuario.FormShow(Sender: TObject);
begin
DBECodigo.Clear;
DBEDescricao.Clear;
EdPesquisa.Clear;
DataModule1.IBQConsGPUsuario.Close;
PaginaControle.ActivePageIndex := 0;
end;

procedure TFGrupoUsuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
if key = #27 then
  begin
     Close;
  end;
end;

procedure TFGrupoUsuario.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule1.IBDGrupoUsuario.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
     DataModule1.IBDGrupoUsuario.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFGrupoUsuario.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFGrupoUsuario.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFGrupoUsuario.DBEGrigDblClick(Sender: TObject);
begin
DataModule1.IBDGrupoUsuario.Close;
  DataModule1.IBDGrupoUsuario.ParamByName('pgrupo').AsInteger :=
  DataModule1.IBQConsGPUsuarioCD_GRUPO.AsInteger;
  DataModule1.IBDGrupoUsuario.Open;
  if (DataModule1.IBQConsGPUsuario.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro
end;

procedure TFGrupoUsuario.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFGrupoUsuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
