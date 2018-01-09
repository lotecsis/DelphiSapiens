unit USetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons, rxToolEdit;

type
  TFSetor = class(TForm)
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
    DSSetor: TDataSource;
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
    procedure DSSetorStateChange(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSetor: TFSetor;

implementation

uses UDataModule1, UPrincipal, UDataModule5;

{$R *.dfm}

procedure TFSetor.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFSetor.DsFormulariosStateChange(Sender: TObject);
begin
if DataModule1.IBDSetor.State in [dsinsert,dsedit]then
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

procedure TFSetor.BInserirClick(Sender: TObject);
begin
DataModule1.IBDSetor.Insert;
DBEData.Date := Date;
DataModule1.IBDSetorUSUARIOO.AsString := FPrincipal.usuario;
DBEDescricao.SetFocus;
end;

procedure TFSetor.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule1.IBDSetor.Cancel;
  DBEDescricao.SetFocus;
  
 end;
end;

procedure TFSetor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule1.IBDSetor.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
     DataModule1.IBDSetor.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFSetor.BAlterarClick(Sender: TObject);
begin
if DataModule1.IBDSetor.IsEmpty then
 begin
  Showmessage ('Setor não pode ser editado vazio');
 end
  else
    begin
      DataModule1.IBDSetor.Edit;
      DBEDescricao.SetFocus;
    end;
end;

procedure TFSetor.BExcluirClick(Sender: TObject);
begin
if not DataModule1.IBDSetor.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select mt.cd_mat_prima');
     DataModule5.IBQSeExiste.SQL.Add('from MATERIA_PRIMA mt');
     DataModule5.IBQSeExiste.SQL.Add('inner join SETOR  on SETOR.cd_setor = mt.cd_setor');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('mt.cd_setor = :psetor');
     DataModule5.IBQSeExiste.ParamByName('psetor').AsInteger := DataModule1.IBDSetorCD_SETOR.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
       MessageDlg('Setor está sendo usado '#13' em matéria prima!',mtWarning,[mbok],0);
      end
     else
     begin

     DataModule1.IBDSetor.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

      EdPesquisa.Clear;
     //atualiza a grid de consulta
      DataModule1.IBQConsSetor.Close;
      DataModule1.IBQConsSetor.SQL.Clear;
      DataModule1.IBQConsSetor.SQL.Add('select * from SETOR');
      DataModule1.IBQConsSetor.Open;


    end;
    end;
  end
 else
  Begin
   Showmessage('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !');
   DBECodigo.SetFocus;
  end;
end;

procedure TFSetor.BConfirmarClick(Sender: TObject);
begin
     if DBEDescricao.Text = '' then
        begin
          MessageDlg('Campo Descrição é obrigatório.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
        end
        else
          begin
            DataModule1.IBDSetor.Post;
            DataModule1.IBTTransacao.CommitRetaining;
          end;
end;

procedure TFSetor.FormShow(Sender: TObject);
begin
DBECodigo.Clear;
DBEDescricao.Clear;
EdPesquisa.Clear;
DBEData.Clear;
DataModule1.IBQConsSetor.Close;
PaginaControle.ActivePageIndex := 0;

end;

procedure TFSetor.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFSetor.FiltroPesquisaExit(Sender: TObject);
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

procedure TFSetor.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFSetor.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsSetor.Close;
end;

procedure TFSetor.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule1.IBQConsSetor.Close;
    DataModule1.IBQConsSetor.SQL.Clear;
    DataModule1.IBQConsSetor.SQL.Add('select * from SETOR');
    DataModule1.IBQConsSetor.SQL.Add('order by cd_setor asc');
    DataModule1.IBQConsSetor.Open;
    if DataModule1.IBQConsSetor.IsEmpty then
      begin
        ShowMessage('Não existe setores cadastrados');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule1.IBQConsSetor.Close;
        DataModule1.IBQConsSetor.SQL.Clear;
        DataModule1.IBQConsSetor.SQL.Add('select * from SETOR');
        DataModule1.IBQConsSetor.SQL.Add('where cd_setor = :psetor');
        DataModule1.IBQConsSetor.ParamByName('psetor').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule1.IBQConsSetor.Open;
        if DataModule1.IBQConsSetor.IsEmpty then
          begin
            ShowMessage('Não existe setores cadastrados com este código');
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
            DataModule1.IBQConsSetor.Close;
            DataModule1.IBQConsSetor.SQL.Clear;
            DataModule1.IBQConsSetor.SQL.Add('select * from SETOR');
            DataModule1.IBQConsSetor.SQL.Add('where ds_setor LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule1.IBQConsSetor.Open;
            if DataModule1.IBQConsSetor.IsEmpty then
              begin
                ShowMessage('Não existe setores cadastrados com esta descrição');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;
end;

procedure TFSetor.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFSetor.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFSetor.DBEGrigDblClick(Sender: TObject);
begin
DataModule1.IBDSetor.Close;
  DataModule1.IBDSetor.ParamByName('psetor').AsInteger :=
  DataModule1.IBQConsSetorCD_SETOR.AsInteger;
  DataModule1.IBDSetor.Open;
  if (DataModule1.IBQConsSetor.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;
end;

procedure TFSetor.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFSetor.DBEGrigGetCellParams(Sender: TObject; Field: TField;
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

procedure TFSetor.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFSetor.DSSetorStateChange(Sender: TObject);
begin
if DataModule1.IBDSetor.State in [dsinsert,dsedit]then
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

procedure TFSetor.TbConsultaShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 2;
FiltroPesquisaExit(sender);
EdPesquisa.SetFocus;
end;

procedure TFSetor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
