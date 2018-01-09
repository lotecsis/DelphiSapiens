unit UUnidadeMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons, rxToolEdit;

type
  TFUnidadeMedida = class(TForm)
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
    DSUnMedida: TDataSource;
    Label2: TLabel;
    DBESigla: TDBEdit;
    Label3: TLabel;
    DBEDescricao: TDBEdit;
    Label4: TLabel;
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
    procedure DSUnMedidaStateChange(Sender: TObject);
    procedure DBESiglaExit(Sender: TObject);
    procedure DBEDescricaoExit(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnidadeMedida: TFUnidadeMedida;

implementation

uses UDataModule1, UPrincipal, UDataModule5;

{$R *.dfm}

procedure TFUnidadeMedida.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFUnidadeMedida.DsFormulariosStateChange(Sender: TObject);
begin
if DataModule1.IBDUnMedida.State in [dsinsert,dsedit]then
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

procedure TFUnidadeMedida.BInserirClick(Sender: TObject);
begin
DataModule1.IBDUnMedida.Insert;

DataModule1.IBDUnMedidaUSUARIOO.AsString := FPrincipal.usuario;
DBEData.Date := Date;
DBESigla.SetFocus;
//TbConsulta.TabVisible := False;
end;

procedure TFUnidadeMedida.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule1.IBDUnMedida.Cancel;
   DBEDescricao.SetFocus;

 end;
 TbConsulta.TabVisible := True;
end;

procedure TFUnidadeMedida.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule1.IBDUnMedida.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
     DataModule1.IBDUnMedida.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFUnidadeMedida.BAlterarClick(Sender: TObject);
begin
if DataModule1.IBDUnMedida.IsEmpty then
 begin
  Showmessage ('Unidade de Medida não pode ser editado vazio');
 end
  else
    begin
      DataModule1.IBDUnMedida.Edit;
      DBEDescricao.SetFocus;
    end;
end;

procedure TFUnidadeMedida.BExcluirClick(Sender: TObject);
begin
if not DataModule1.IBDUnMedida.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin

    DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select mt.cd_mat_prima');
     DataModule5.IBQSeExiste.SQL.Add('from MATERIA_PRIMA mt');
     DataModule5.IBQSeExiste.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('mt.cd_un_medida = :punidade');
     DataModule5.IBQSeExiste.ParamByName('punidade').AsInteger := DataModule1.IBDUnMedidaCD_UNIDADE.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
       MessageDlg('Unidade de Medida está sendo usada '#13' em matéria prima!',mtWarning,[mbok],0);
      end
     else
     begin
     DataModule1.IBDUnMedida.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

      EdPesquisa.Clear;
     //atualiza a grid de consulta
      DataModule1.IBQConsUnMedida.Close;
      DataModule1.IBQConsUnMedida.SQL.Clear;
      DataModule1.IBQConsUnMedida.SQL.Add('select * from UNIDADE_MEDIDA');
      DataModule1.IBQConsUnMedida.Open;


    end;
    end;
  end
 else
  Begin
   Showmessage('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !');
   DBECodigo.SetFocus;
  end;
end;

procedure TFUnidadeMedida.BConfirmarClick(Sender: TObject);
begin
     if DBESigla.Text = '' then
        begin
          MessageDlg('Campo Sigla é obrigatório.',mtWarning,[mbok],0);
          DBESigla.SetFocus;
        end
      else
        if DBEDescricao.Text = '' then
          begin
          MessageDlg('Campo Descrição é obrigatório.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
          end
        else
          begin
            DataModule1.IBDUnMedida.Post;
            DataModule1.IBTTransacao.CommitRetaining;
          end;
end;

procedure TFUnidadeMedida.FormShow(Sender: TObject);
begin
DBECodigo.Clear;
DBESigla.Clear;
DBEDescricao.Clear;
EdPesquisa.Clear;
DBEData.Clear;
DataModule1.IBQConsUnMedida.Close;
PaginaControle.ActivePageIndex := 0;


end;

procedure TFUnidadeMedida.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFUnidadeMedida.FiltroPesquisaExit(Sender: TObject);
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

procedure TFUnidadeMedida.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFUnidadeMedida.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsUnMedida.Close;
end;

procedure TFUnidadeMedida.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule1.IBQConsUnMedida.Close;
    DataModule1.IBQConsUnMedida.SQL.Clear;
    DataModule1.IBQConsUnMedida.SQL.Add('select * from UNIDADE_MEDIDA');
    DataModule1.IBQConsUnMedida.SQL.Add('order by cd_unidade asc');
    DataModule1.IBQConsUnMedida.Open;
    if DataModule1.IBQConsUnMedida.IsEmpty then
      begin
        ShowMessage('Não existe Unidades de Medida cadastrados');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule1.IBQConsUnMedida.Close;
        DataModule1.IBQConsUnMedida.SQL.Clear;
        DataModule1.IBQConsUnMedida.SQL.Add('select * from UNIDADE_MEDIDA');
        DataModule1.IBQConsUnMedida.SQL.Add('where cd_unidade = :punidade');
        DataModule1.IBQConsUnMedida.ParamByName('punidade').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule1.IBQConsUnMedida.Open;
        if DataModule1.IBQConsUnMedida.IsEmpty then
          begin
            ShowMessage('Não existe unidades de medida cadastrados com este código');
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
            DataModule1.IBQConsUnMedida.Close;
            DataModule1.IBQConsUnMedida.SQL.Clear;
            DataModule1.IBQConsUnMedida.SQL.Add('select * from UNIDADE_MEDIDA');
            DataModule1.IBQConsUnMedida.SQL.Add('where ds_unidade LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule1.IBQConsUnMedida.Open;
            if DataModule1.IBQConsUnMedida.IsEmpty then
              begin
                ShowMessage('Não existe unidades de medida cadastrados com esta descrição');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;
end;                                                   

procedure TFUnidadeMedida.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFUnidadeMedida.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFUnidadeMedida.DBEGrigDblClick(Sender: TObject);
begin
DataModule1.IBDUnMedida.Close;
  DataModule1.IBDUnMedida.ParamByName('punidade').AsInteger :=
  DataModule1.IBQConsUnMedidaCD_UNIDADE.AsInteger;
  DataModule1.IBDUnMedida.Open;
  if (DataModule1.IBQConsUnMedida.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;
end;

procedure TFUnidadeMedida.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFUnidadeMedida.DBEGrigGetCellParams(Sender: TObject; Field: TField;
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

procedure TFUnidadeMedida.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFUnidadeMedida.DSUnMedidaStateChange(Sender: TObject);
begin
if DataModule1.IBDUnMedida.State in [dsinsert,dsedit]then
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
      //BProcuraFornecedor.Enabled := false;
      TbConsulta.Enabled := true;
      TbConsulta.TabVisible := true;
    end;
end;

procedure TFUnidadeMedida.DBESiglaExit(Sender: TObject);
begin
//DBEDescricao.SetFocus;
end;

procedure TFUnidadeMedida.DBEDescricaoExit(Sender: TObject);
begin
if DataModule1.IBDUnMedida.State in [dsinsert, dsedit] then
BConfirmar.SetFocus;
end;

procedure TFUnidadeMedida.TbConsultaShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 2;
FiltroPesquisaExit(sender);
EdPesquisa.SetFocus;
end;

procedure TFUnidadeMedida.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
