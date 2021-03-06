unit UMovimentoEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons, rxToolEdit;

type
  TFMovimentoEstoque = class(TForm)
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
    DSMovimento: TDataSource;
    Label2: TLabel;
    DBEDescricao: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEUsuario: TDBEdit;
    DBETipoMovimento: TDBComboBox;
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
    procedure DSMovimentoStateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMovimentoEstoque: TFMovimentoEstoque;

implementation

uses UDataModule1, UDataModule3, UPrincipal;

{$R *.dfm}

procedure TFMovimentoEstoque.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFMovimentoEstoque.DsFormulariosStateChange(Sender: TObject);
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

procedure TFMovimentoEstoque.BInserirClick(Sender: TObject);
begin
DataModule3.IBDMovimentoEstoque.Insert;
DBEDescricao.SetFocus;
DBEData.Date := Date;
DataModule3.IBDMovimentoEstoqueUSUARIOO.AsString := FPrincipal.usuario;
end;

procedure TFMovimentoEstoque.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule3.IBDMovimentoEstoque.Cancel;
  DBEDescricao.SetFocus;

 end;
end;

procedure TFMovimentoEstoque.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule3.IBDMovimentoEstoque.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
     DataModule3.IBDMovimentoEstoque.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFMovimentoEstoque.BAlterarClick(Sender: TObject);
begin
if DataModule3.IBDMovimentoEstoque.IsEmpty then
 begin
  Showmessage ('Formulario n�o pode ser editado vazio');
 end
  else
    begin
      DataModule3.IBDMovimentoEstoque.Edit;
      DBEDescricao.SetFocus;

                  if DataModule3.IBDMovimentoEstoqueTIPO_MOVIMENTO.AsString = 'E' then
              begin
                DBETipoMovimento.ItemIndex := 0;
              end
            else
              begin
                 DBETipoMovimento.ItemIndex := 1;
              end;
    end;
end;

procedure TFMovimentoEstoque.BExcluirClick(Sender: TObject);
begin
if not DataModule3.IBDMovimentoEstoque.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
    if (DataModule3.IBDMovimentoEstoqueCD_MOVIMENTO.AsInteger <> 1) and
    (DataModule3.IBDMovimentoEstoqueCD_MOVIMENTO.AsInteger <> 2) then
    begin
     DataModule3.IBDMovimentoEstoque.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

      EdPesquisa.Clear;
     //atualiza a grid de consulta
      DataModule3.IBQConsMovimento.Close;
      DataModule3.IBQConsMovimento.SQL.Clear;
      DataModule3.IBQConsMovimento.SQL.Add('select * from MOVIMENTO_ESTOQUE');
      DataModule3.IBQConsMovimento.Open;


    end;
    end;
  end
 else
  Begin
   Showmessage('N�o existe Registros a serem excluidos ou n�o foi feita a sele��o do registro !');
   DBECodigo.SetFocus;
  end;
end;

procedure TFMovimentoEstoque.BConfirmarClick(Sender: TObject);
begin
     if DBEDescricao.Text = '' then
        begin
          MessageDlg('Campo Descri��o � obrigat�rio.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
        end
      else
        if DBETipoMovimento.Text = '' then
          begin
          MessageDlg('Campo Tipo de Movimento � obrigat�rio.',mtWarning,[mbok],0);
          DBETipoMovimento.SetFocus;
          end
        else
          begin
            DataModule3.IBDMovimentoEstoque.Post;
            DataModule1.IBTTransacao.CommitRetaining;

            if DataModule3.IBDMovimentoEstoqueTIPO_MOVIMENTO.AsString = 'E' then
              begin
                DBETipoMovimento.ItemIndex := 0;
              end
            else
              begin
                 DBETipoMovimento.ItemIndex := 1;
              end;
          end;
end;

procedure TFMovimentoEstoque.FormShow(Sender: TObject);
begin
DBECodigo.Clear;

DBEDescricao.Clear;
DBEData.Clear;
DBEUsuario.Clear;
DBETipoMovimento.ItemIndex := -1;
EdPesquisa.Clear;
DataModule3.IBQConsMovimento.Close;
PaginaControle.ActivePageIndex := 0;

end;

procedure TFMovimentoEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFMovimentoEstoque.FiltroPesquisaExit(Sender: TObject);
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
         LDescricaoPesquisa.Caption := 'Nome';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end;
end;

procedure TFMovimentoEstoque.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFMovimentoEstoque.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule3.IBQConsMovimento.Close;
end;

procedure TFMovimentoEstoque.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule3.IBQConsMovimento.Close;
    DataModule3.IBQConsMovimento.SQL.Clear;
    DataModule3.IBQConsMovimento.SQL.Add('select * from MOVIMENTO_ESTOQUE');
    DataModule3.IBQConsMovimento.SQL.Add('order by cd_movimento asc');
    DataModule3.IBQConsMovimento.Open;
    if DataModule3.IBQConsMovimento.IsEmpty then
      begin
        ShowMessage('N�o existe movimentos cadastrados');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule3.IBQConsMovimento.Close;
        DataModule3.IBQConsMovimento.SQL.Clear;
        DataModule3.IBQConsMovimento.SQL.Add('select * from MOVIMENTO_ESTOQUE');
        DataModule3.IBQConsMovimento.SQL.Add('where cd_movimento = :pmovimento');
        DataModule3.IBQConsMovimento.ParamByName('pmovimento').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule3.IBQConsMovimento.Open;
        if DataModule3.IBQConsMovimento.IsEmpty then
          begin
            ShowMessage('N�o existe movimentos cadastrados');
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
            DataModule3.IBQConsMovimento.Close;
            DataModule3.IBQConsMovimento.SQL.Clear;
            DataModule3.IBQConsMovimento.SQL.Add('select * from MOVIMENTO_ESTOQUE');
            DataModule3.IBQConsMovimento.SQL.Add('where ds_movimento LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule3.IBQConsMovimento.Open;
            if DataModule3.IBQConsMovimento.IsEmpty then
              begin
                ShowMessage('N�o existe movimentos cadastrados');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;
end;

procedure TFMovimentoEstoque.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFMovimentoEstoque.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFMovimentoEstoque.DBEGrigDblClick(Sender: TObject);
begin
  DataModule3.IBDMovimentoEstoque.Close;
  DataModule3.IBDMovimentoEstoque.ParamByName('pmovimento').AsInteger :=
  DataModule3.IBQConsMovimentoCD_MOVIMENTO.AsInteger;
  DataModule3.IBDMovimentoEstoque.Open;
  if (DataModule3.IBQConsMovimento.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;

            if DataModule3.IBDMovimentoEstoqueTIPO_MOVIMENTO.AsString = 'E' then
              begin
                DBETipoMovimento.ItemIndex := 0;
              end
            else
              begin
                 DBETipoMovimento.ItemIndex := 1;
              end;

end;

procedure TFMovimentoEstoque.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFMovimentoEstoque.DBEGrigGetCellParams(Sender: TObject; Field: TField;
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

procedure TFMovimentoEstoque.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFMovimentoEstoque.DSMovimentoStateChange(Sender: TObject);
begin
if DataModule3.IBDMovimentoEstoque.State in [dsinsert,dsedit]then
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

procedure TFMovimentoEstoque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
