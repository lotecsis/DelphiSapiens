unit UFormulario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons;

type
  TFFormulario = class(TForm)
    PaginaControle: TPageControl;
    TbCadastro: TTabSheet;
    TbConsulta: TTabSheet;
    Panel1: TPanel;
    BInserir: TRbButton;
    BCancelar: TRbButton;
    BConfirmar: TRbButton;
    BAlterar: TRbButton;
    BExcluir: TRbButton;
    Label1: TLabel;
    DBECodigo: TDBEdit;
    Label2: TLabel;
    DBENome: TDBEdit;
    Label3: TLabel;
    DBEDescricao: TDBMemo;
    DBEGrig: TRxDBGrid;
    DSGrid: TDataSource;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    DsFormulario: TDataSource;
    procedure BSairClick(Sender: TObject);
    procedure DsFormulariosStateChange(Sender: TObject);
    procedure BInserirClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BAlterarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure DBEGrigEnter(Sender: TObject);
    procedure DBEGrigExit(Sender: TObject);
    procedure DBEGrigDblClick(Sender: TObject);
    procedure DBEGrigKeyPress(Sender: TObject; var Key: Char);
    procedure DBEGrigGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure EdPesquisaExit(Sender: TObject);
    procedure DsFormularioStateChange(Sender: TObject);
    procedure TbCadastroShow(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFormulario: TFFormulario;

implementation

uses UDataModule1, UDm;

{$R *.dfm}

procedure TFFormulario.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFFormulario.DsFormulariosStateChange(Sender: TObject);
begin
if DataModule1.IBDFormularios.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      //BProcuraFornecedor.Enabled := true;
      TbConsulta.Enabled := false;
    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      //BProcuraFornecedor.Enabled := false;
      TbConsulta.Enabled := true;
    end;
end;

procedure TFFormulario.BInserirClick(Sender: TObject);
begin
dm.CadFormulario.Open;
dm.CadFormulario.Insert;
DBENome.SetFocus;
end;

procedure TFFormulario.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
 dm.CadFormulario.Cancel;
 DBECodigo.SetFocus;
  
 end;
end;

procedure TFFormulario.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if dm.CadFormulario.State in [dsedit,dsinsert] then
  begin
   MessageDlg('Confirme ou Cancele os dados antes de fechar.',mtWarning,[mbok],0);
  end
 else
   canclose := true;
end;

procedure TFFormulario.BAlterarClick(Sender: TObject);
begin
if dm.CadFormulario.IsEmpty then
 begin
  Showmessage ('Formulario não pode ser editado vazio');
 end
  else
    begin
      dm.CadFormulario.Edit;
    end;
end;

procedure TFFormulario.BExcluirClick(Sender: TObject);
begin
if not Dm.CadFormulario.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     //apagas todos form_nivel que tenha este formulario
     dm.ApagaUsu_TForNiv.Close;
     dm.ApagaUsu_TForNiv.SQL.Clear;
     dm.ApagaUsu_TForNiv.SQL.Add('select * from usu_tforniv');
     dm.ApagaUsu_TForNiv.SQL.Add('where usu_codfor = :codfor');
     dm.ApagaUsu_TForNiv.Parameters.ParamByName('codfor').Value := dm.CadFormularioUSU_CODFOR.Value;
     dm.ApagaUsu_TForNiv.Open;
     dm.ApagaUsu_TForNiv.First;
     while not dm.ApagaUsu_TForNiv.Eof do
      begin
       dm.ApagaUsu_TForNiv.Delete;
      end;

     Dm.CadFormulario.Delete;

    end;
  end
 else
  Begin
   Showmessage('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !');
   DBECodigo.SetFocus;
  end;
end;

procedure TFFormulario.BConfirmarClick(Sender: TObject);
begin
     if DBENome.Text = '' then
        begin
          MessageDlg('Campo Nome é obrigatório.',mtWarning,[mbok],0);
          DBENome.SetFocus;
        end
      else
        if DBEDescricao.Text = '' then
          begin
          MessageDlg('Campo Descrição é obrigatório.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
          end
        else
          begin
            dm.CadFormulario.Post;
          end;
          dm.ConsUsu_TNivAce.Close;
           dm.ConsUsu_TNivAce.SQL.Clear;
           dm.ConsUsu_TNivAce.SQL.Add('select * from usu_tnivace');
           dm.ConsUsu_TNivAce.SQL.Add('order by usu_codniv asc');
           dm.ConsUsu_TNivAce.Open;

          dm.ConsUsu_TNivAce.First;
          while not dm.ConsUsu_TNivAce.Eof do
            begin
              dm.CadUsu_ForNiv.Open;
              dm.CadUsu_ForNiv.Insert;
              dm.CadUsu_ForNivUSU_CODFOR.Value := dm.CadFormularioUSU_CODFOR.Value;
              dm.CadUsu_ForNivUSU_CODNIV.Value := dm.ConsUsu_TNivAceUSU_CODNIV.Value;
              dm.CadUsu_ForNivUSU_FORLIB.Value := 'N';
              dm.CadUsu_ForNiv.Post;

              dm.ConsUsu_TNivAce.Next;
            end;
            
end;

procedure TFFormulario.FormShow(Sender: TObject);
begin
DBECodigo.Clear;
DBENome.Clear;
DBEDescricao.Clear;
EdPesquisa.Clear;
dm.ConsFormulario.Close;
PaginaControle.ActivePageIndex := 0;
dm.CadFormulario.Open;


end;


procedure TFFormulario.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFFormulario.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFFormulario.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
dm.ConsFormulario.Close;

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
      end;
end;

procedure TFFormulario.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    dm.ConsFormulario.Close;
    dm.ConsFormulario.SQL.Clear;
    dm.ConsFormulario.SQL.Add('select * from usu_tformul');
    dm.ConsFormulario.SQL.Add('order by usu_codfor asc');
    dm.ConsFormulario.Open;
    if dm.ConsFormulario.IsEmpty then
      begin
        ShowMessage('Não existe formularios cadastrados');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        dm.ConsFormulario.Close;
        dm.ConsFormulario.SQL.Clear;
        dm.ConsFormulario.SQL.Add('select * from usu_tformul');
        dm.ConsFormulario.SQL.Add('where usu_codfor = :codfor');
        dm.ConsFormulario.Parameters.ParamByName('codfor').Value := StrToInt(EdPesquisa.Text);
        dm.ConsFormulario.Open;
        if dm.ConsFormulario.IsEmpty then
          begin
            ShowMessage('Não existe formularios cadastrados');
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
            dm.ConsFormulario.Close;
            dm.ConsFormulario.SQL.Clear;
            dm.ConsFormulario.SQL.Add('select * from usu_tformul');
            dm.ConsFormulario.SQL.Add('where usu_nomfor LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            dm.ConsFormulario.Open;
            if dm.ConsFormulario.IsEmpty then
              begin
                ShowMessage('Não existe formularios cadastrados');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;
end;

procedure TFFormulario.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFFormulario.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFFormulario.DBEGrigDblClick(Sender: TObject);
begin
  dm.CadFormulario.Close;
  Dm.CadFormulario.Parameters.ParamByName('pcodfor').Value :=
  dm.ConsFormularioUSU_CODFOR.AsInteger;
  dm.CadFormulario.Open;
  if (dm.ConsFormulario.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;
end;

procedure TFFormulario.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFFormulario.DBEGrigGetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
{if not Highlight then
  begin
    Background := clWhite;
  end
  else
   begin
    Background := clMenuHighlight;
   end; }
end;

procedure TFFormulario.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFFormulario.DsFormularioStateChange(Sender: TObject);
begin
  if dm.CadFormulario.State in [dsinsert,dsedit] then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      TbConsulta.TabVisible := false;
    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      TbConsulta.TabVisible := true;
      
    end;
end;

procedure TFFormulario.TbCadastroShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 0;
FiltroPesquisaClick(Sender);
end;

procedure TFFormulario.TbConsultaShow(Sender: TObject);
begin
  FiltroPesquisa.ItemIndex := 0;
  FiltroPesquisaClick(Sender);
end;

end.
