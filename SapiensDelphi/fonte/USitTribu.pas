unit USitTribu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons;

type
  TFSitTribu = class(TForm)
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
    DSSitTribu: TDataSource;
    Label2: TLabel;
    DBEDescricao: TDBEdit;
    Label3: TLabel;
    DBESigla: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEIsento: TDBComboBox;
    DBESubst: TDBComboBox;
    DBEReduBase: TDBComboBox;
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
    procedure DSSitTribuStateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSitTribu: TFSitTribu;

implementation

uses UDataModule1, UDataModule3;

{$R *.dfm}

procedure TFSitTribu.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFSitTribu.DsFormulariosStateChange(Sender: TObject);
begin
if DataModule3.IBDSitTributaria.State in [dsinsert,dsedit]then
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

procedure TFSitTribu.BInserirClick(Sender: TObject);
begin
DataModule3.IBDSitTributaria.Insert;
DBEDescricao.SetFocus;
end;

procedure TFSitTribu.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule3.IBDSitTributaria.Cancel;


 end;
end;

procedure TFSitTribu.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule3.IBDSitTributaria.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
     DataModule3.IBDSitTributaria.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFSitTribu.BAlterarClick(Sender: TObject);
begin
if DataModule3.IBDSitTributaria.IsEmpty then
 begin
  Showmessage ('Situação Tributária não pode ser editado vazio');
 end
  else
    begin
      DataModule3.IBDSitTributaria.Edit;
      DBEDescricao.SetFocus;


        if DataModule3.IBDSitTributariaREDU_BC_ICMS.AsString = 'S' then
    begin
      DBEReduBase.ItemIndex := 0;
    end
  else
   if DataModule3.IBDSitTributariaREDU_BC_ICMS.AsString = 'N' then
    begin
      DBEReduBase.ItemIndex := 1;
    end;


  if DataModule3.IBDSitTributariaISENTO_ICMS.AsString = 'S' then
    begin
      DBEIsento.ItemIndex := 0;
    end
  else
  if DataModule3.IBDSitTributariaISENTO_ICMS.AsString = 'N' then
    begin
      DBEIsento.ItemIndex := 1;
    end;



    if DataModule3.IBDSitTributariaICMS_SUBSTITUIDO.AsString = 'S' then
      begin
        DBESubst.ItemIndex := 0;
      end
    else
    if DataModule3.IBDSitTributariaICMS_SUBSTITUIDO.AsString = 'N' then
      begin
        DBESubst.ItemIndex := 1;
      end;

    end;
end;

procedure TFSitTribu.BExcluirClick(Sender: TObject);
begin
if not DataModule3.IBDSitTributaria.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     DataModule3.IBDSitTributaria.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

      EdPesquisa.Clear;
     //atualiza a grid de consulta
      DataModule3.IBQConsSitTribu.Close;
      DataModule3.IBQConsSitTribu.SQL.Clear;
      DataModule3.IBQConsSitTribu.SQL.Add('select * from SITU_TRIBUTARIA');
      DataModule3.IBQConsSitTribu.Open;


    
    end;
  end
 else
  Begin
   Showmessage('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !');
   DBECodigo.SetFocus;
  end;
end;

procedure TFSitTribu.BConfirmarClick(Sender: TObject);
begin
     if DBEDescricao.Text = '' then
        begin
          MessageDlg('Campo Descrição é obrigatório.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
        end
      else
        if DBESigla.Text = '' then
          begin
          MessageDlg('Campo Sigla é obrigatório.',mtWarning,[mbok],0);
          DBESigla.SetFocus;
          end
        else
        if DBEReduBase.Text = '' then
          begin
          MessageDlg('Campo Redução Base de Calculo de ICMS é obrigatório.',mtWarning,[mbok],0);
          DBEReduBase.SetFocus;
          end
        else
        if DBEIsento.Text = '' then
          begin
          MessageDlg('Campo Isento de ICMS é obrigatório.',mtWarning,[mbok],0);
          DBEIsento.SetFocus;
          end
        else
        if DBESubst.Text = '' then
          begin
          MessageDlg('Campo ICMS Substituido é obrigatório.',mtWarning,[mbok],0);
          DBESubst.SetFocus;
          end
        else
          begin
            DataModule3.IBDSitTributaria.Post;
            DataModule1.IBTTransacao.CommitRetaining;


       //---------------------------------------------

  if DataModule3.IBDSitTributariaREDU_BC_ICMS.AsString = 'S' then
    begin
      DBEReduBase.ItemIndex := 0;
    end
  else
   if DataModule3.IBDSitTributariaREDU_BC_ICMS.AsString = 'N' then
    begin
      DBEReduBase.ItemIndex := 1;
    end;


  if DataModule3.IBDSitTributariaISENTO_ICMS.AsString = 'S' then
    begin
      DBEIsento.ItemIndex := 0;
    end
  else
  if DataModule3.IBDSitTributariaISENTO_ICMS.AsString = 'N' then
    begin
      DBEIsento.ItemIndex := 1;
    end;



    if DataModule3.IBDSitTributariaICMS_SUBSTITUIDO.AsString = 'S' then
      begin
        DBESubst.ItemIndex := 0;
      end
    else
    if DataModule3.IBDSitTributariaICMS_SUBSTITUIDO.AsString = 'N' then
      begin
        DBESubst.ItemIndex := 1;
      end;

          end;
end;

procedure TFSitTribu.FormShow(Sender: TObject);
begin
DBECodigo.Clear;
DBEDescricao.Clear;
EdPesquisa.Clear;
DataModule3.IBQConsSitTribu.Close;
PaginaControle.ActivePageIndex := 0;

end;

procedure TFSitTribu.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFSitTribu.FiltroPesquisaExit(Sender: TObject);
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

procedure TFSitTribu.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFSitTribu.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule3.IBQConsSitTribu.Close;
end;

procedure TFSitTribu.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule3.IBQConsSitTribu.Close;
    DataModule3.IBQConsSitTribu.SQL.Clear;
    DataModule3.IBQConsSitTribu.SQL.Add('select * from SITU_TRIBUTARIA');
    DataModule3.IBQConsSitTribu.SQL.Add('order by cd_situacao asc');
    DataModule3.IBQConsSitTribu.Open;
    if DataModule3.IBQConsSitTribu.IsEmpty then
      begin
        ShowMessage('Não existe situação tributária cadastrada');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule3.IBQConsSitTribu.Close;
        DataModule3.IBQConsSitTribu.SQL.Clear;
        DataModule3.IBQConsSitTribu.SQL.Add('select * from SITU_TRIBUTARIA');
        DataModule3.IBQConsSitTribu.SQL.Add('where cd_situacao = :psituacao');
        DataModule3.IBQConsSitTribu.ParamByName('psituacao').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule3.IBQConsSitTribu.Open;
        if DataModule3.IBQConsSitTribu.IsEmpty then
          begin
            ShowMessage('Não existe situação tributária cadastrada com este código');
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
            DataModule3.IBQConsSitTribu.Close;
            DataModule3.IBQConsSitTribu.SQL.Clear;
            DataModule3.IBQConsSitTribu.SQL.Add('select * from SITU_TRIBUTARIA');
            DataModule3.IBQConsSitTribu.SQL.Add('where ds_situacao LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule3.IBQConsSitTribu.Open;
            if DataModule3.IBQConsSitTribu.IsEmpty then
              begin
                ShowMessage('Não existe situação tributária cadastrada com esta descrição');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;
end;

procedure TFSitTribu.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFSitTribu.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFSitTribu.DBEGrigDblClick(Sender: TObject);
begin
DataModule3.IBDSitTributaria.Close;
  DataModule3.IBDSitTributaria.ParamByName('psituacao').AsInteger :=
  DataModule3.IBQConsSitTribuCD_SITUACAO.AsInteger;
  DataModule3.IBDSitTributaria.Open;
  if (DataModule3.IBQConsSitTribu.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;


    if DataModule3.IBDSitTributariaREDU_BC_ICMS.AsString = 'S' then
    begin
      DBEReduBase.ItemIndex := 0;
    end
  else
   if DataModule3.IBDSitTributariaREDU_BC_ICMS.AsString = 'N' then
    begin
      DBEReduBase.ItemIndex := 1;
    end;


  if DataModule3.IBDSitTributariaISENTO_ICMS.AsString = 'S' then
    begin
      DBEIsento.ItemIndex := 0;
    end
  else
  if DataModule3.IBDSitTributariaISENTO_ICMS.AsString = 'N' then
    begin
      DBEIsento.ItemIndex := 1;
    end;



    if DataModule3.IBDSitTributariaICMS_SUBSTITUIDO.AsString = 'S' then
      begin
        DBESubst.ItemIndex := 0;
      end
    else
    if DataModule3.IBDSitTributariaICMS_SUBSTITUIDO.AsString = 'N' then
      begin
        DBESubst.ItemIndex := 1;
      end;

end;

procedure TFSitTribu.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFSitTribu.DBEGrigGetCellParams(Sender: TObject; Field: TField;
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

procedure TFSitTribu.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFSitTribu.DSSitTribuStateChange(Sender: TObject);
begin
if DataModule3.IBDSitTributaria.State in [dsinsert,dsedit]then
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

procedure TFSitTribu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
