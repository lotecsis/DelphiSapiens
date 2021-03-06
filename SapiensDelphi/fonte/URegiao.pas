unit URegiao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons, rxToolEdit;

type
  TFRegiao = class(TForm)
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
    DSRegiao: TDataSource;
    Label2: TLabel;
    DBECdTabPreco: TDBEdit;
    Label3: TLabel;
    DBEDescricao: TDBEdit;
    Label4: TLabel;
    DBEPopulacao: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEUsuario: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEData: TDBDateEdit;
    DBEObservacoes: TDBMemo;
    EdDsTabPreco: TEdit;
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
    procedure DSRegiaoStateChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBECdTabPrecoExit(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRegiao: TFRegiao;

implementation

uses UDataModule1, UDataModule2, UPrincipal, UConsSimpTabPreco,
  UDataModule3, UDataModule5;

{$R *.dfm}

procedure TFRegiao.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFRegiao.DsFormulariosStateChange(Sender: TObject);
begin
if DataModule2.IBDRegiao.State in [dsinsert,dsedit]then
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

procedure TFRegiao.BInserirClick(Sender: TObject);
begin
DataModule2.IBDRegiao.Open;
DataModule2.IBDRegiao.Insert;

DataModule2.IBDRegiaoUSUARIOO.AsString := FPrincipal.usuario;
DBEData.Date := Date;
DBEDescricao.SetFocus;
end;

procedure TFRegiao.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule2.IBDRegiao.Cancel;
  DBECodigo.SetFocus;
  
 end;
end;

procedure TFRegiao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule2.IBDRegiao.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
     DataModule2.IBDRegiao.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFRegiao.BAlterarClick(Sender: TObject);
begin
if DataModule2.IBDRegiao.IsEmpty then
 begin
  Showmessage ('Formulario n�o pode ser editado vazio');
 end
  else
    begin
      DataModule2.IBDRegiao.Edit;
      DBECodigo.SetFocus;
    end;
end;

procedure TFRegiao.BExcluirClick(Sender: TObject);
begin
if not DataModule2.IBDRegiao.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin

    //verifica se regiao esta sendo usado em pessoa juridica
     DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select pj.cd_pessoa_ju');
     DataModule5.IBQSeExiste.SQL.Add('from PESSOA_JURIDICA pj');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('pj.cd_regiao = :pregiao');
     DataModule5.IBQSeExiste.ParamByName('pregiao').AsInteger := DataModule2.IBDRegiaoCD_REGIAO.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
       Application.MessageBox('Regi�o est� sendo usada em Pessoa Jur�dico'#13'e n�o pode ser exclu�do', 'Aviso ', MB_ICONWARNING+MB_OK);

      end
     else
      begin

     DataModule2.IBDRegiao.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

      EdPesquisa.Clear;
      EdDsTabPreco.Clear;
     //atualiza a grid de consulta
        DataModule2.IBQConsRegiao.Close;
        DataModule2.IBQConsRegiao.SQL.Clear;
        DataModule2.IBQConsRegiao.SQL.Add(' SELECT rg.*, tb_p.ds_tabela from');
        DataModule2.IBQConsRegiao.SQL.Add('REGIAO rg, TABELA_PRECO tb_p');
        DataModule2.IBQConsRegiao.SQL.Add('where rg.cd_tabela_preco = tb_p.cd_tabela');
        DataModule2.IBQConsRegiao.SQL.Add('order by rg.cd_regiao');
        DataModule2.IBQConsRegiao.Open;


    end;
    end;
  end
 else
  Begin
   Showmessage('N�o existe Registros a serem excluidos ou n�o foi feita a sele��o do registro !');
   DBEDescricao.SetFocus;
  end;
end;

procedure TFRegiao.BConfirmarClick(Sender: TObject);
begin
     if DBEDescricao.Text = '' then
        begin
          MessageDlg('Campo Descri��o � obrigat�rio.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
        end
      else
        if DBECdTabPreco.Text = '' then
          begin
          MessageDlg('Campo Tabela de Pre�o � obrigat�rio.',mtWarning,[mbok],0);
          DBECdTabPreco.SetFocus;
          end
        else
          begin
            DataModule2.IBDRegiao.Post;
            DataModule1.IBTTransacao.CommitRetaining;
          end;
end;

procedure TFRegiao.FormShow(Sender: TObject);
begin

DBECodigo.Clear;
DBEDescricao.Clear;
DBECdTabPreco.Clear;
DBEPopulacao.Clear;
DBEUsuario.Clear;
DBEData.Clear;
DBEObservacoes.Clear;
EdDsTabPreco.Clear;

EdPesquisa.Clear;
DataModule2.IBQConsRegiao.Close;
PaginaControle.ActivePageIndex := 0;

end;

procedure TFRegiao.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFRegiao.FiltroPesquisaExit(Sender: TObject);
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

procedure TFRegiao.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFRegiao.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule2.IBQConsRegiao.Close;
end;

procedure TFRegiao.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule2.IBQConsRegiao.Close;
    DataModule2.IBQConsRegiao.SQL.Clear;
    DataModule2.IBQConsRegiao.SQL.Add(' SELECT rg.*, tb_p.ds_tabela from');
    DataModule2.IBQConsRegiao.SQL.Add('REGIAO rg, TABELA_PRECO tb_p');
    DataModule2.IBQConsRegiao.SQL.Add('where rg.cd_tabela_preco = tb_p.cd_tabela');
    DataModule2.IBQConsRegiao.SQL.Add('order by rg.cd_regiao');
    DataModule2.IBQConsRegiao.Open;
    if DataModule2.IBQConsRegiao.IsEmpty then
      begin
        ShowMessage('Regi�o n�o encontrada!');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule2.IBQConsRegiao.Close;
        DataModule2.IBQConsRegiao.SQL.Clear;
        DataModule2.IBQConsRegiao.SQL.Add(' SELECT rg.*, tb_p.ds_tabela from');
        DataModule2.IBQConsRegiao.SQL.Add('REGIAO rg, TABELA_PRECO tb_p');
        DataModule2.IBQConsRegiao.SQL.Add('where rg.cd_tabela_preco = tb_p.cd_tabela and');
        DataModule2.IBQConsRegiao.SQL.Add('rg.cd_regiao = :pregiao');
        DataModule2.IBQConsRegiao.ParamByName('pregiao').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule2.IBQConsRegiao.Open;
        if DataModule2.IBQConsRegiao.IsEmpty then
          begin
            ShowMessage('Regi�o n�o encontrada!');
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
            DataModule2.IBQConsRegiao.SQL.Clear;
            DataModule2.IBQConsRegiao.SQL.Add(' SELECT rg.*, tb_p.ds_tabela from');
            DataModule2.IBQConsRegiao.SQL.Add('REGIAO rg, TABELA_PRECO tb_p');
            DataModule2.IBQConsRegiao.SQL.Add('where rg.cd_tabela_preco = tb_p.cd_tabela and');
            DataModule2.IBQConsRegiao.SQL.Add('rg.ds_regiao LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule2.IBQConsRegiao.Open;
            if DataModule2.IBQConsRegiao.IsEmpty then
              begin
                ShowMessage('Regi�o n�o encontrada!');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;
end;

procedure TFRegiao.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFRegiao.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFRegiao.DBEGrigDblClick(Sender: TObject);
begin
DataModule2.IBDRegiao.Close;
  DataModule2.IBDRegiao.ParamByName('pregiao').AsInteger :=
  DataModule2.IBQConsRegiaoCD_REGIAO.AsInteger;
  DataModule2.IBDRegiao.Open;
  if (DataModule2.IBQConsRegiao.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;
  EdDsTabPreco.Text := DataModule2.IBQConsRegiaoDS_REGIAO.AsString;
end;

procedure TFRegiao.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFRegiao.DBEGrigGetCellParams(Sender: TObject; Field: TField;
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

procedure TFRegiao.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFRegiao.DSRegiaoStateChange(Sender: TObject);
begin
if DataModule2.IBDRegiao.State in [dsinsert,dsedit]then
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

procedure TFRegiao.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TFConsSimpTabPreco, FConsSimpTabPreco);
  if FConsSimpTabPreco.ShowModal = mrOk then
    begin
      DataModule2.IBDRegiaoCD_TABELA_PRECO.AsInteger :=
      DataModule3.IBQConsSimpTabPrecoCD_TABELA.AsInteger;
      EdDsTabPreco.Text := DataModule3.IBQConsSimpTabPrecoDS_TABELA.AsString;
      DBEPopulacao.SetFocus;

    end;

end;

procedure TFRegiao.DBECdTabPrecoExit(Sender: TObject);
begin
  if DBECdTabPreco.Text <> '' then
    begin
    DataModule3.IBQConsSimpTabPreco.Close;
    DataModule3.IBQConsSimpTabPreco.SQL.Clear;
    DataModule3.IBQConsSimpTabPreco.SQL.Add('select * from TABELA_PRECO');
    DataModule3.IBQConsSimpTabPreco.SQL.Add('where cd_tabela = :ptabela');
    DataModule3.IBQConsSimpTabPreco.ParamByName('ptabela').AsInteger := StrToInt(DBECdTabPreco.Text);
    DataModule3.IBQConsSimpTabPreco.Open;
    if DataModule3.IBQConsSimpTabPreco.IsEmpty then
    begin
      ShowMessage('N�o existe tabela com este c�digo');
      EdDsTabPreco.Clear;
      DBECdTabPreco.SetFocus;
      DBECdTabPreco.Clear;
    end
    else
      begin
         EdDsTabPreco.Text := DataModule3.IBQConsSimpTabPrecoDS_TABELA.AsString;
      end;
  end;
end;

procedure TFRegiao.TbConsultaShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 0;
FiltroPesquisaExit(sender);
end;

procedure TFRegiao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
