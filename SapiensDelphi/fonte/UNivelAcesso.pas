unit UNivelAcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons;

type
  TFNivelAcesso = class(TForm)
    PaginaControle: TPageControl;
    TbCadastro: TTabSheet;
    TbConsulta: TTabSheet;
    Panel1: TPanel;
    BInserir: TRbButton;
    BCancelar: TRbButton;
    BConfirmar: TRbButton;
    BAlterar: TRbButton;
    BExcluir: TRbButton;
    DBEGrig: TRxDBGrid;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    Label1: TLabel;
    DBECodigo: TDBEdit;
    DSNivel: TDataSource;
    Label2: TLabel;
    DBEDescricao: TDBEdit;
    DSGrid: TDataSource;
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
    procedure DSNivelStateChange(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNivelAcesso: TFNivelAcesso;

implementation

uses UDataModule1, UDm, UPrincipal;

{$R *.dfm}

procedure TFNivelAcesso.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFNivelAcesso.DsFormulariosStateChange(Sender: TObject);
begin
if DataModule1.IBDNivelAcesso.State in [dsinsert,dsedit]then
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

procedure TFNivelAcesso.BInserirClick(Sender: TObject);
begin
dm.CadUsu_TNivAce.Open;
dm.CadUsu_TNivAce.Insert;
DBEDescricao.SetFocus;

end;

procedure TFNivelAcesso.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  dm.CadUsu_TNivAce.Cancel;
  DBEDescricao.SetFocus;
  
 end;
end;

procedure TFNivelAcesso.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if dm.CadUsu_TNivAce.State in [dsedit,dsinsert] then
  begin
   MessageDlg('Confirme ou Cancele os dados antes de fechar.',mtWarning,[mbok],0);
  end
 else
   canclose := true;
end;

procedure TFNivelAcesso.BAlterarClick(Sender: TObject);
begin
if dm.CadUsu_TNivAce.IsEmpty then
 begin
  Showmessage ('Nível  não pode ser editado vazio');
 end
  else
    begin
      dm.CadUsu_TNivAce.Edit;
      DBEDescricao.SetFocus;
    end;
end;

procedure TFNivelAcesso.BExcluirClick(Sender: TObject);
begin
if not dm.CadUsu_TNivAce.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
    //apagas todos form_nivel que tenha este nivel de acesso
     dm.ApagaUsu_TForNiv.Close;
     dm.ApagaUsu_TForNiv.SQL.Clear;
     dm.ApagaUsu_TForNiv.SQL.Add('select * from usu_tforniv');
     dm.ApagaUsu_TForNiv.SQL.Add('where usu_codniv = :codniv');
     dm.ApagaUsu_TForNiv.Parameters.ParamByName('codniv').Value := dm.CadUsu_TNivAceUSU_CODNIV.Value;
     dm.ApagaUsu_TForNiv.Open;
     dm.ApagaUsu_TForNiv.First;
     while not dm.ApagaUsu_TForNiv.Eof do
      begin
       dm.ApagaUsu_TForNiv.Delete;
      end;
      
     dm.CadUsu_TNivAce.Delete;
    end;
  end
 else
  Begin
   Showmessage('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !');
   DBEDescricao.SetFocus;
  end;
end;

procedure TFNivelAcesso.BConfirmarClick(Sender: TObject);
begin
        if DBEDescricao.Text = '' then
          begin
          MessageDlg('Campo Descrição é obrigatório.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
          end
        else
          begin
            dm.CadUsu_TNivAce.Post;
          end;
           dm.ConsFormulario.Close;
            dm.ConsFormulario.SQL.Clear;
            dm.ConsFormulario.SQL.Add('select * from usu_tformul');
            dm.ConsFormulario.SQL.Add('order by usu_codfor asc');
            dm.ConsFormulario.Open;
            dm.ConsFormulario.First;
           while not dm.ConsFormulario.Eof do
            begin
              dm.CadUsu_ForNiv.Open;
              dm.CadUsu_ForNiv.Insert;
              dm.CadUsu_ForNivUSU_CODFOR.Value := dm.ConsFormularioUSU_CODFOR.Value;
              dm.CadUsu_ForNivUSU_CODNIV.Value := dm.CadUsu_TNivAceUSU_CODNIV.Value;
              dm.CadUsu_ForNivUSU_FORLIB.Value := 'N';
              dm.CadUsu_ForNiv.Post;

              dm.ConsFormulario.Next;
            end;

end;

procedure TFNivelAcesso.FormShow(Sender: TObject);
begin
FPrincipal.GravaTela(FNivelAcesso.Name,FPrincipal.vnCodCon);
DBECodigo.Clear;

DBEDescricao.Clear;
EdPesquisa.Clear;
dm.ConsUsu_TNivAce.Close;
dm.CadUsu_TNivAce.Open;
PaginaControle.ActivePageIndex := 0;

end;

procedure TFNivelAcesso.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFNivelAcesso.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFNivelAcesso.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
dm.ConsUsu_TNivAce.Close;

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

procedure TFNivelAcesso.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin

    dm.ConsUsu_TNivAce.Close;
    dm.ConsUsu_TNivAce.SQL.Clear;
    dm.ConsUsu_TNivAce.SQL.Add('select * from usu_tnivace');
    dm.ConsUsu_TNivAce.SQL.Add('order by usu_codniv asc');
    dm.ConsUsu_TNivAce.Open;
    
 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        dm.ConsUsu_TNivAce.Close;
        dm.ConsUsu_TNivAce.SQL.Clear;
        dm.ConsUsu_TNivAce.SQL.Add('select * from usu_tnivace');
        dm.ConsUsu_TNivAce.SQL.Add('where usu_codniv = :codniv');
        dm.ConsUsu_TNivAce.Parameters.ParamByName('codniv').Value:= StrToInt(EdPesquisa.Text);
        dm.ConsUsu_TNivAce.Open;
        if dm.ConsUsu_TNivAce.IsEmpty then
          begin
            ShowMessage('Não existe Nível cadastrado');
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
            dm.ConsUsu_TNivAce.Close;
            dm.ConsUsu_TNivAce.SQL.Clear;
            dm.ConsUsu_TNivAce.SQL.Add('select * from usu_tnivace');
            dm.ConsUsu_TNivAce.SQL.Add('where usu_desniv LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            dm.ConsUsu_TNivAce.Open;
            if dm.ConsUsu_TNivAce.IsEmpty then
              begin
                ShowMessage('Não existe Nível cadastrado');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;
end;

procedure TFNivelAcesso.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFNivelAcesso.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFNivelAcesso.DBEGrigDblClick(Sender: TObject);
begin

  dm.CadUsu_TNivAce.Close;
  dm.CadUsu_TNivAce.Parameters.ParamByName('codniv').Value :=
  dm.ConsUsu_TNivAceUSU_CODNIV.AsInteger;
  dm.CadUsu_TNivAce.Open;
  if (dm.ConsUsu_TNivAce.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;
end;

procedure TFNivelAcesso.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFNivelAcesso.DBEGrigGetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
{if not Highlight then
  begin
    Background := clWindow;
  end
  else
   begin
    Background := clMenuHighlight;
   end; }
end;

procedure TFNivelAcesso.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFNivelAcesso.DSNivelStateChange(Sender: TObject);
begin
if dm.CadUsu_TNivAce.State in [dsinsert,dsedit]then
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

procedure TFNivelAcesso.TbConsultaShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 0;
FiltroPesquisaClick(Sender);

end;

procedure TFNivelAcesso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFNivelAcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FPrincipal.ApagaTela(FNivelAcesso.Name,FPrincipal.vnCodCon);
end;

end.
