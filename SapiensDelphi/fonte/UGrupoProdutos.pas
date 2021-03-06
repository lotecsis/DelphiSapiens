unit UGrupoProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons, rxToolEdit;

type
  TFGrupoProdutos = class(TForm)
    PaginaControle: TPageControl;
    TbCadastro: TTabSheet;
    TbConsulta: TTabSheet;
    Panel1: TPanel;
    BInserir: TRbButton;
    BCancelar: TRbButton;
    BConfirmar: TRbButton;
    BAlterar: TRbButton;
    BExcluir: TRbButton;
    BSair: TRbButton;
    DBEGrig: TRxDBGrid;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    Label1: TLabel;
    DBECodigo: TDBEdit;
    DSGrupoProduto: TDataSource;
    Label2: TLabel;
    DBEDescricao: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEUsuario: TDBEdit;
    DBEData: TDBDateEdit;
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
    procedure FiltroPesquisaExit(Sender: TObject);
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
    procedure DSGrupoProdutoStateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGrupoProdutos: TFGrupoProdutos;

implementation

uses UDataModule1, UDataModule3, UPrincipal;

{$R *.dfm}

procedure TFGrupoProdutos.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFGrupoProdutos.DsFormulariosStateChange(Sender: TObject);
begin
if DataModule3.IBDGrupoProdutos.State in [dsinsert,dsedit]then
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

procedure TFGrupoProdutos.BInserirClick(Sender: TObject);
begin
DataModule3.IBDGrupoProdutos.Insert;
DataModule3.IBDGrupoProdutosUSUARIOO.AsString := FPrincipal.usuario;
DBEData.Date := Date;
DBEDescricao.SetFocus;
end;

procedure TFGrupoProdutos.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule3.IBDGrupoProdutos.Cancel;
  DBEDescricao.SetFocus;
  
 end;
end;

procedure TFGrupoProdutos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule3.IBDGrupoProdutos.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
     DataModule3.IBDGrupoProdutos.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFGrupoProdutos.BAlterarClick(Sender: TObject);
begin
if DataModule3.IBDGrupoProdutos.IsEmpty then
 begin
  Showmessage ('Grupo n�o pode ser editado vazio');
 end
  else
    begin
      DataModule3.IBDGrupoProdutos.Edit;
      DBEDescricao.SetFocus;
    end;
end;

procedure TFGrupoProdutos.BExcluirClick(Sender: TObject);
begin
if not DataModule3.IBDGrupoProdutos.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     DataModule3.IBDGrupoProdutos.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

      EdPesquisa.Clear;
     //atualiza a grid de consulta
      DataModule3.IBQConsGrupoProdutos.Close;
      DataModule3.IBQConsGrupoProdutos.SQL.Clear;
      DataModule3.IBQConsGrupoProdutos.SQL.Add('select * from GRUPO_PRODUTO');
      DataModule3.IBQConsGrupoProdutos.Open;


    
    end;
  end
 else
  Begin
   Showmessage('N�o existe Registros a serem excluidos ou n�o foi feita a sele��o do registro !');
   DBEDescricao.SetFocus;
  end;
end;

procedure TFGrupoProdutos.BConfirmarClick(Sender: TObject);
begin
     if DBEDescricao.Text = '' then
        begin
          MessageDlg('Campo Descri��o � obrigat�rio.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
        end
      else
          begin
            DataModule3.IBDGrupoProdutos.Post;
            DataModule1.IBTTransacao.CommitRetaining;
          end;
end;

procedure TFGrupoProdutos.FormShow(Sender: TObject);
begin
DBECodigo.Clear;
DBEDescricao.Clear;
EdPesquisa.Clear;
DBEData.Clear;
DBEUsuario.Clear;
DataModule3.IBQConsGrupoProdutos.Close;
PaginaControle.ActivePageIndex := 0;

end;

procedure TFGrupoProdutos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFGrupoProdutos.FiltroPesquisaExit(Sender: TObject);
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

procedure TFGrupoProdutos.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFGrupoProdutos.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule3.IBQConsGrupoProdutos.Close;
end;

procedure TFGrupoProdutos.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule3.IBQConsGrupoProdutos.Close;
    DataModule3.IBQConsGrupoProdutos.SQL.Clear;
    DataModule3.IBQConsGrupoProdutos.SQL.Add('select * from GRUPO_PRODUTO');
    DataModule3.IBQConsGrupoProdutos.SQL.Add('order by cd_grupo asc');
    DataModule3.IBQConsGrupoProdutos.Open;
    if DataModule3.IBQConsGrupoProdutos.IsEmpty then
      begin
        ShowMessage('N�o existe grupos cadastrados');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule3.IBQConsGrupoProdutos.Close;
        DataModule3.IBQConsGrupoProdutos.SQL.Clear;
        DataModule3.IBQConsGrupoProdutos.SQL.Add('select * from GRUPO_PRODUTO');
        DataModule3.IBQConsGrupoProdutos.SQL.Add('where cd_grupo = :pgrupo');
        DataModule3.IBQConsGrupoProdutos.ParamByName('pgrupo').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule3.IBQConsGrupoProdutos.Open;
        if DataModule3.IBQConsGrupoProdutos.IsEmpty then
          begin
            ShowMessage('N�o existe grupos cadastrados com este c�digo');
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
            DataModule3.IBQConsGrupoProdutos.Close;
            DataModule3.IBQConsGrupoProdutos.SQL.Clear;
            DataModule3.IBQConsGrupoProdutos.SQL.Add('select * from GRUPO_PRODUTO');
            DataModule3.IBQConsGrupoProdutos.SQL.Add('where ds_grupo LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule3.IBQConsGrupoProdutos.Open;
            if DataModule3.IBQConsGrupoProdutos.IsEmpty then
              begin
                ShowMessage('N�o existe grupos cadastrados com esta descri��o');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;
end;

procedure TFGrupoProdutos.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFGrupoProdutos.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFGrupoProdutos.DBEGrigDblClick(Sender: TObject);
begin
DataModule3.IBDGrupoProdutos.Close;
  DataModule3.IBDGrupoProdutos.ParamByName('pgrupo').AsInteger :=
  DataModule3.IBQConsGrupoProdutosCD_GRUPO.AsInteger;
  DataModule3.IBDGrupoProdutos.Open;
  if (DataModule3.IBQConsGrupoProdutos.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;
end;

procedure TFGrupoProdutos.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFGrupoProdutos.DBEGrigGetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
if not Highlight then
  begin
    Background := clWindow;
  end
  else
   begin
    Background := clMenuHighlight;
   end;
end;

procedure TFGrupoProdutos.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFGrupoProdutos.DSGrupoProdutoStateChange(Sender: TObject);
begin
if DataModule3.IBDGrupoProdutos.State in [dsinsert,dsedit]then
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

procedure TFGrupoProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
