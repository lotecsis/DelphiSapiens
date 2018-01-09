unit UCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, RXDBCtrl, Buttons, DBCtrls, Mask,
  RbDrawCore, RbButton, ExtCtrls, ComCtrls, DB;

type
  TFCidade = class(TForm)
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
    DSCidade: TDataSource;
    Label2: TLabel;
    DBENome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBECep: TDBEdit;
    DBESiglaUf: TDBComboBox;
    DSGrid: TDataSource;
    procedure BSairClick(Sender: TObject);
    procedure DSCidadeStateChange(Sender: TObject);
    procedure BInserirClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure BAlterarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure FiltroPesquisaExit(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure EdPesquisaExit(Sender: TObject);
    procedure DBEGrigEnter(Sender: TObject);
    procedure DBEGrigExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEGrigDblClick(Sender: TObject);
    procedure DBEGrigKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCidade: TFCidade;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFCidade.BSairClick(Sender: TObject);
begin
Close;
end;

procedure TFCidade.DSCidadeStateChange(Sender: TObject);
begin
if DataModule1.IBDCidade.State in [dsinsert,dsedit]then
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

procedure TFCidade.BInserirClick(Sender: TObject);
begin
DataModule1.IBDCidade.Insert;
DBENome.SetFocus;
end;

procedure TFCidade.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule1.IBDCidade.Cancel;
  DBENome.SetFocus;
  
 end;
end;

procedure TFCidade.BConfirmarClick(Sender: TObject);
begin
if DBENome.Text = '' then
        begin
          MessageDlg('Campo Nome é obrigatório.',mtWarning,[mbok],0);
          DBENome.SetFocus;
        end
      else
        if DBESiglaUf.Text = '' then
          begin
          MessageDlg('Campo Estado é obrigatório.',mtWarning,[mbok],0);
          DBESiglaUf.SetFocus;
          end
        else
        if DBECep.Text = '' then
          begin
          MessageDlg('Campo Cep é obrigatório.',mtWarning,[mbok],0);
          DBECep.SetFocus;
          end
          else
          begin
            DataModule1.IBDCidade.Post;
            DataModule1.IBTTransacao.CommitRetaining;
          end;
end;

procedure TFCidade.BAlterarClick(Sender: TObject);
begin
if DataModule1.IBDCidade.IsEmpty then
 begin
  Showmessage ('Cidade não pode ser editado vazio');
 end
  else
    begin
      DataModule1.IBDCidade.Edit;
      DBENome.SetFocus;
    end;
end;

procedure TFCidade.BExcluirClick(Sender: TObject);
begin
if not DataModule1.IBDCidade.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     DataModule1.IBDCidade.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

      EdPesquisa.Clear;
     //atualiza a grid de consulta
      DataModule1.IBQConsultaCidade.Close;
      DataModule1.IBQConsultaCidade.SQL.Clear;
      DataModule1.IBQConsultaCidade.SQL.Add('select * from CIDADE order by cd_cidade');
      DataModule1.IBQConsultaCidade.Open;

    end;
  end
 else
  Begin
   Showmessage('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !');
   DBECodigo.SetFocus;
  end;
end;

procedure TFCidade.FiltroPesquisaExit(Sender: TObject);
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
         LDescricaoPesquisa.Caption := 'Nome';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end
    else
       if FiltroPesquisa.ItemIndex = 3 then
    begin
      LDescricaoPesquisa.Caption := 'Sigla UF';
      EdPesquisa.ReadOnly := false;
      EdPesquisa.MaxLength := 2;
    end;
end;

procedure TFCidade.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule1.IBQConsultaCidade.Close;
    DataModule1.IBQConsultaCidade.SQL.Clear;
    DataModule1.IBQConsultaCidade.SQL.Add('select * from CIDADE');
    DataModule1.IBQConsultaCidade.SQL.Add('order by cd_cidade asc');
    DataModule1.IBQConsultaCidade.Open;
    if DataModule1.IBQConsultaCidade.IsEmpty then
      begin
        ShowMessage('Não existe Cidades cadastradas');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule1.IBQConsultaCidade.Close;
        DataModule1.IBQConsultaCidade.SQL.Clear;
        DataModule1.IBQConsultaCidade.SQL.Add('select * from CIDADE');
        DataModule1.IBQConsultaCidade.SQL.Add('where cd_CIDADE = :pcidade');
        DataModule1.IBQConsultaCidade.ParamByName('pcidade').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule1.IBQConsultaCidade.Open;
        if DataModule1.IBQConsultaCidade.IsEmpty then
          begin
            ShowMessage('Não existe Cidades cadastradas com este código');
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
            DataModule1.IBQConsultaCidade.Close;
            DataModule1.IBQConsultaCidade.SQL.Clear;
            DataModule1.IBQConsultaCidade.SQL.Add('select * from CIDADE');
            DataModule1.IBQConsultaCidade.SQL.Add('where nm_cidade LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule1.IBQConsultaCidade.Open;
            if DataModule1.IBQConsultaCidade.IsEmpty then
              begin
                ShowMessage('Não existe Cidades cadastradas com esta descrição');
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
            DataModule1.IBQConsultaCidade.Close;
            DataModule1.IBQConsultaCidade.SQL.Clear;
            DataModule1.IBQConsultaCidade.SQL.Add('select * from CIDADE');
            DataModule1.IBQConsultaCidade.SQL.Add('where sigla_uf = :puf');
            DataModule1.IBQConsultaCidade.ParamByName('puf').AsString := EdPesquisa.Text;
            DataModule1.IBQConsultaCidade.Open;
            if DataModule1.IBQConsultaCidade.IsEmpty then
              begin
                ShowMessage('Não existe Cidades cadastradas com esta UF');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
            end;
          end;

end;

procedure TFCidade.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsultaCidade.Close;
end;

procedure TFCidade.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFCidade.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFCidade.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFCidade.DBEGrigExit(Sender: TObject);
begin
KeyPreview :=true;
end;

procedure TFCidade.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule1.IBDCidade.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
     DataModule1.IBDCidade.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFCidade.DBEGrigDblClick(Sender: TObject);
begin
  DataModule1.IBDCidade.Close;
  DataModule1.IBDCidade.ParamByName('pcidade').AsInteger :=
  DataModule1.IBQConsultaCidadeCD_CIDADE.AsInteger;
  DataModule1.IBDCidade.Open;
  if (DataModule1.IBQConsultaCidade.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;
end;

procedure TFCidade.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);
end;
end;

procedure TFCidade.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFCidade.FormShow(Sender: TObject);
begin
DBECodigo.Clear;
DBENome.Clear;
DBECep.Clear;
//DBESiglaUf.Clear;
EdPesquisa.Clear;
DataModule1.IBQConsultaCidade.Close;
PaginaControle.ActivePageIndex := 0;
end;

procedure TFCidade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
