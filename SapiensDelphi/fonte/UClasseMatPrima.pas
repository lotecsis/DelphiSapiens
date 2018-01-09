unit UClasseMatPrima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons, rxToolEdit;

type
  TFClasseMatPrima = class(TForm)
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
    DSClasse: TDataSource;
    Label2: TLabel;
    DBEDescricao: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBESituacao: TDBComboBox;
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
    procedure DSClasseStateChange(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClasseMatPrima: TFClasseMatPrima;

implementation

uses UDataModule1, UPrincipal, UDataModule5;

{$R *.dfm}

procedure TFClasseMatPrima.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFClasseMatPrima.DsFormulariosStateChange(Sender: TObject);
begin
if DataModule1.IBDClasse.State in [dsinsert,dsedit]then
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

procedure TFClasseMatPrima.BInserirClick(Sender: TObject);
begin
DataModule1.IBDClasse.Insert;
DataModule1.IBDClasseUSUARIOO.AsString := FPrincipal.usuario;
DBEData.Date := Date;
DBEDescricao.SetFocus;
end;

procedure TFClasseMatPrima.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule1.IBDClasse.Cancel;
  DBEDescricao.SetFocus;
  
 end;
end;

procedure TFClasseMatPrima.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule1.IBDClasse.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
     DataModule1.IBDClasse.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFClasseMatPrima.BAlterarClick(Sender: TObject);
begin
if DataModule1.IBDClasse.IsEmpty then
 begin
  Showmessage ('Formulario n�o pode ser editado vazio');
 end
  else
    begin
      DataModule1.IBDClasse.Edit;
      DBECodigo.SetFocus;
    end;
end;

procedure TFClasseMatPrima.BExcluirClick(Sender: TObject);
begin
if not DataModule1.IBDClasse.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin

     DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select mt.cd_mat_prima');
     DataModule5.IBQSeExiste.SQL.Add('from MATERIA_PRIMA mt');
     DataModule5.IBQSeExiste.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('mt.cd_classe = :pclasse');
     DataModule5.IBQSeExiste.ParamByName('pclasse').AsInteger := DataModule1.IBDClasseCD_CLASSE.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
       MessageDlg('Classe est� sendo usada '#13' em mat�ria prima!',mtWarning,[mbok],0);
      end
     else
     begin


     DataModule1.IBDClasse.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

      EdPesquisa.Clear;
     //atualiza a grid de consulta
      DataModule1.IBQConsClasse.Close;
      DataModule1.IBQConsClasse.SQL.Clear;
      DataModule1.IBQConsClasse.SQL.Add('select * from CLASSE_MAT_PRIMA');
      DataModule1.IBQConsClasse.Open;


     end;
    end;
  end
 else
  Begin
   Showmessage('N�o existe Registros a serem excluidos ou n�o foi feita a sele��o do registro !');
   DBECodigo.SetFocus;
  end;
end;

procedure TFClasseMatPrima.BConfirmarClick(Sender: TObject);
begin
     if DBEDescricao.Text = '' then
        begin
          MessageDlg('Campo Descri��o � obrigat�rio.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
        end
      else
        if DBESituacao.Text = '' then
          begin
          MessageDlg('Campo Situa��o � obrigat�rio.',mtWarning,[mbok],0);
          DBESituacao.SetFocus;
          end
        else
          begin
            DataModule1.IBDClasse.Post;
            DataModule1.IBTTransacao.CommitRetaining;
          end;
end;

procedure TFClasseMatPrima.FormShow(Sender: TObject);
begin
DBECodigo.Clear;
DBEDescricao.Clear;
DBESituacao.ClearSelection;
DBEData.Clear;
EdPesquisa.Clear;
DataModule1.IBQConsClasse.Close;
PaginaControle.ActivePageIndex := 0;

end;

procedure TFClasseMatPrima.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFClasseMatPrima.FiltroPesquisaExit(Sender: TObject);
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

procedure TFClasseMatPrima.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFClasseMatPrima.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsClasse.Close;
end;

procedure TFClasseMatPrima.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule1.IBQConsClasse.Close;
    DataModule1.IBQConsClasse.SQL.Clear;
    DataModule1.IBQConsClasse.SQL.Add('select * from CLASSE_MAT_PRIMA');
    DataModule1.IBQConsClasse.SQL.Add('order by cd_classe asc');
    DataModule1.IBQConsClasse.Open;
    if DataModule1.IBQConsClasse.IsEmpty then
      begin
        ShowMessage('N�o existe classes cadastrados');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule1.IBQConsClasse.Close;
        DataModule1.IBQConsClasse.SQL.Clear;
        DataModule1.IBQConsClasse.SQL.Add('select * from CLASSE_MAT_PRIMA');
        DataModule1.IBQConsClasse.SQL.Add('where cd_classe = :pclasse');
        DataModule1.IBQConsClasse.ParamByName('pclasse').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule1.IBQConsClasse.Open;
        if DataModule1.IBQConsClasse.IsEmpty then
          begin
            ShowMessage('N�o existe classes cadastrados com este c�digo');
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
            DataModule1.IBQConsClasse.Close;
            DataModule1.IBQConsClasse.SQL.Clear;
            DataModule1.IBQConsClasse.SQL.Add('select * from CLASSE_MAT_PRIMA');
            DataModule1.IBQConsClasse.SQL.Add('where ds_classe LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule1.IBQConsClasse.Open;
            if DataModule1.IBQConsClasse.IsEmpty then
              begin
                ShowMessage('N�o existe classes cadastrados com esta descri��o');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;
end;

procedure TFClasseMatPrima.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFClasseMatPrima.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFClasseMatPrima.DBEGrigDblClick(Sender: TObject);
begin
DataModule1.IBDClasse.Close;
  DataModule1.IBDClasse.ParamByName('pclasse').AsInteger :=
  DataModule1.IBQConsClasseCD_CLASSE.AsInteger;
  DataModule1.IBDClasse.Open;
  if (DataModule1.IBQConsClasse.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;
end;

procedure TFClasseMatPrima.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFClasseMatPrima.DBEGrigGetCellParams(Sender: TObject; Field: TField;
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

procedure TFClasseMatPrima.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFClasseMatPrima.DSClasseStateChange(Sender: TObject);
begin
if DataModule1.IBDClasse.State in [dsinsert,dsedit]then
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

procedure TFClasseMatPrima.TbConsultaShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 2;
FiltroPesquisaExit(sender);
EdPesquisa.SetFocus;
end;

procedure TFClasseMatPrima.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
