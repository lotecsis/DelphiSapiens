unit UCondPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons, rxToolEdit;

type
  TFCondicaoPgto = class(TForm)
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
    DSGrid: TDataSource;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    Label1: TLabel;
    DBECodigo: TDBEdit;
    DSCondicao: TDataSource;
    Label2: TLabel;
    DBEDescricao: TDBEdit;
    Label3: TLabel;
    DBEData: TDBDateEdit;
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
    procedure DSCondicaoStateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCondicaoPgto: TFCondicaoPgto;

implementation

uses UDataModule1, UPrincipal;

{$R *.dfm}

procedure TFCondicaoPgto.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFCondicaoPgto.DsFormulariosStateChange(Sender: TObject);
begin
if DataModule1.IBDCondPgto.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      //BProcuraFornecedor.Enabled := true;
    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      //BProcuraFornecedor.Enabled := false;
    end;
end;

procedure TFCondicaoPgto.BInserirClick(Sender: TObject);
begin
DataModule1.IBDCondPgto.Insert;
DBEData.Date := Date;
DataModule1.IBDCondPgtoUSUARIOO.AsString := FPrincipal.usuario;
DBEDescricao.SetFocus;
end;

procedure TFCondicaoPgto.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule1.IBDCondPgto.Cancel;
  DBEDescricao.SetFocus;
  
 end;
end;

procedure TFCondicaoPgto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule1.IBDCondPgto.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
     DataModule1.IBDCondPgto.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFCondicaoPgto.BAlterarClick(Sender: TObject);
begin
if DataModule1.IBDCondPgto.IsEmpty then
 begin
  Showmessage ('Condição de Pagamento não pode ser editado vazio');
 end
  else
    begin
      DataModule1.IBDCondPgto.Edit;
      DBEDescricao.SetFocus;
    end;
end;

procedure TFCondicaoPgto.BExcluirClick(Sender: TObject);
begin
if not DataModule1.IBDCondPgto.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     DataModule1.IBDCondPgto.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

      EdPesquisa.Clear;
     //atualiza a grid de consulta
       DataModule1.IBQConsCondPgto.Close;
       DataModule1.IBQConsCondPgto.SQL.Clear;
       DataModule1.IBQConsCondPgto.SQL.Add('select * from CONDICAO_PGTO');
       DataModule1.IBQConsCondPgto.Open;


    
    end;
  end
 else
  Begin
   Showmessage('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !');
   DBECodigo.SetFocus;
  end;
end;

procedure TFCondicaoPgto.BConfirmarClick(Sender: TObject);
begin
     if DBEDescricao.Text = '' then
        begin
          MessageDlg('Campo Descrição é obrigatório.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
        end
        else
          begin
            DataModule1.IBDCondPgto.Post;
            DataModule1.IBTTransacao.CommitRetaining;
          end;
end;

procedure TFCondicaoPgto.FormShow(Sender: TObject);
begin
DBECodigo.Clear;
DBEDescricao.Clear;
EdPesquisa.Clear;
DBEData.Clear;
 DataModule1.IBQConsCondPgto.Close;
 PaginaControle.ActivePageIndex := 0;

end;

procedure TFCondicaoPgto.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFCondicaoPgto.FiltroPesquisaExit(Sender: TObject);
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

procedure TFCondicaoPgto.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFCondicaoPgto.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
 DataModule1.IBQConsCondPgto.Close;
end;

procedure TFCondicaoPgto.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
     DataModule1.IBQConsCondPgto.Close;
     DataModule1.IBQConsCondPgto.SQL.Clear;
     DataModule1.IBQConsCondPgto.SQL.Add('select * from CONDICAO_PGTO');
     DataModule1.IBQConsCondPgto.SQL.Add('order by cd_cond_pgto  asc');
     DataModule1.IBQConsCondPgto.Open;
    if  DataModule1.IBQConsCondPgto.IsEmpty then
      begin
        ShowMessage('Não existe condições de pagamento cadastrados');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
         DataModule1.IBQConsCondPgto.Close;
         DataModule1.IBQConsCondPgto.SQL.Clear;
         DataModule1.IBQConsCondPgto.SQL.Add('select * from CONDICAO_PGTO');
         DataModule1.IBQConsCondPgto.SQL.Add('where cd_cond_pgto = :pcondicao');
         DataModule1.IBQConsCondPgto.ParamByName('pcondicao').AsInteger := StrToInt(EdPesquisa.Text);
         DataModule1.IBQConsCondPgto.Open;
        if  DataModule1.IBQConsCondPgto.IsEmpty then
          begin
            ShowMessage('Não existe condição de pagamento cadastrado com este código');
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
             DataModule1.IBQConsCondPgto.Close;
             DataModule1.IBQConsCondPgto.SQL.Clear;
             DataModule1.IBQConsCondPgto.SQL.Add('select * from CONDICAO_PGTO');
             DataModule1.IBQConsCondPgto.SQL.Add('where ds_cond_pgto LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
             DataModule1.IBQConsCondPgto.Open;
            if  DataModule1.IBQConsCondPgto.IsEmpty then
              begin
                ShowMessage('Não existe condição de pagamento cadastrado com esta descrição');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;
end;

procedure TFCondicaoPgto.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFCondicaoPgto.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFCondicaoPgto.DBEGrigDblClick(Sender: TObject);
begin
DataModule1.IBDCondPgto.Close;
  DataModule1.IBDCondPgto.ParamByName('pcondicao').AsInteger :=
   DataModule1.IBQConsCondPgtoCD_COND_PGTO.AsInteger;
  DataModule1.IBDCondPgto.Open;
  if ( DataModule1.IBQConsCondPgto.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;
end;

procedure TFCondicaoPgto.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFCondicaoPgto.DBEGrigGetCellParams(Sender: TObject; Field: TField;
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

procedure TFCondicaoPgto.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFCondicaoPgto.DSCondicaoStateChange(Sender: TObject);
begin
if DataModule1.IBDCondPgto.State in [dsinsert,dsedit]then
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

procedure TFCondicaoPgto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
