unit UTpCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons, rxToolEdit;

type
  TFTpCobranca = class(TForm)
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
    DSTpCobranca: TDataSource;
    Label2: TLabel;
    DBEDescricao: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEUsuario: TDBEdit;
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
    procedure DSTpCobrancaStateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTpCobranca: TFTpCobranca;

implementation

uses UDataModule1, UPrincipal;

{$R *.dfm}

procedure TFTpCobranca.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFTpCobranca.DsFormulariosStateChange(Sender: TObject);
begin
if DataModule1.IBDTpCobranca.State in [dsinsert,dsedit]then
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

procedure TFTpCobranca.BInserirClick(Sender: TObject);
begin
DataModule1.IBDTpCobranca.Insert;
DBEDescricao.SetFocus;
DBEData.Date := Date;
DataModule1.IBDTpCobrancaUSUARIOO.AsString := FPrincipal.usuario;
end;

procedure TFTpCobranca.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule1.IBDTpCobranca.Cancel;
  DBEDescricao.SetFocus;
  
 end;
end;

procedure TFTpCobranca.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule1.IBDTpCobranca.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
     DataModule1.IBDTpCobranca.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFTpCobranca.BAlterarClick(Sender: TObject);
begin
if DataModule1.IBDTpCobranca.IsEmpty then
 begin
  Showmessage ('Tipo de Cobrança não pode ser editado vazio');
 end
  else
    begin
      DataModule1.IBDTpCobranca.Edit;
      DBEDescricao.SetFocus;
    end;
end;

procedure TFTpCobranca.BExcluirClick(Sender: TObject);
begin
if not DataModule1.IBDTpCobranca.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     DataModule1.IBDTpCobranca.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

      EdPesquisa.Clear;
     //atualiza a grid de consulta
      DataModule1.IBQConsTpCobranca.Close;
      DataModule1.IBQConsTpCobranca.SQL.Clear;
      DataModule1.IBQConsTpCobranca.SQL.Add('select * from TIPO_COBRANCA');
      DataModule1.IBQConsTpCobranca.Open;


    
    end;
  end
 else
  Begin
   Showmessage('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !');
   DBECodigo.SetFocus;
  end;
end;

procedure TFTpCobranca.BConfirmarClick(Sender: TObject);
begin
     if DBEDescricao.Text = '' then
        begin
          MessageDlg('Campo Descrição é obrigatório.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
        end
        else
          begin
            DataModule1.IBDTpCobranca.Post;
            DataModule1.IBTTransacao.CommitRetaining;
          end;
end;

procedure TFTpCobranca.FormShow(Sender: TObject);
begin
DBECodigo.Clear;
DBEDescricao.Clear;
EdPesquisa.Clear;
DBEUsuario.Clear;
DBEData.Clear;
DataModule1.IBQConsTpCobranca.Close;
PaginaControle.ActivePageIndex := 0;

end;

procedure TFTpCobranca.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFTpCobranca.FiltroPesquisaExit(Sender: TObject);
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

procedure TFTpCobranca.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFTpCobranca.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsTpCobranca.Close;
end;

procedure TFTpCobranca.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule1.IBQConsTpCobranca.Close;
    DataModule1.IBQConsTpCobranca.SQL.Clear;
    DataModule1.IBQConsTpCobranca.SQL.Add('select * from TIPO_COBRANCA');
    DataModule1.IBQConsTpCobranca.SQL.Add('order by cd_tipo_cobranca asc');
    DataModule1.IBQConsTpCobranca.Open;
    if DataModule1.IBQConsTpCobranca.IsEmpty then
      begin
        ShowMessage('Não existe Tipo de Cobrança cadastrado');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule1.IBQConsTpCobranca.Close;
        DataModule1.IBQConsTpCobranca.SQL.Clear;
        DataModule1.IBQConsTpCobranca.SQL.Add('select * from TIPO_COBRANCA');
        DataModule1.IBQConsTpCobranca.SQL.Add('where cd_tipo_cobranca = :pcobranca');
        DataModule1.IBQConsTpCobranca.ParamByName('pcobranca').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule1.IBQConsTpCobranca.Open;
        if DataModule1.IBQConsTpCobranca.IsEmpty then
          begin
            ShowMessage('Não existe Tipo de Cobrança cadastrados');
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
            DataModule1.IBQConsTpCobranca.Close;
            DataModule1.IBQConsTpCobranca.SQL.Clear;
            DataModule1.IBQConsTpCobranca.SQL.Add('select * from TIPO_COBRANCA');
            DataModule1.IBQConsTpCobranca.SQL.Add('where ds_tipo_cobranca  LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule1.IBQConsTpCobranca.Open;
            if DataModule1.IBQConsTpCobranca.IsEmpty then
              begin
                ShowMessage('Não existe Tipo de Cobrança cadastrados');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;
end;

procedure TFTpCobranca.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFTpCobranca.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFTpCobranca.DBEGrigDblClick(Sender: TObject);
begin
DataModule1.IBDTpCobranca.Close;
  DataModule1.IBDTpCobranca.ParamByName('pcobranca').AsInteger :=
  DataModule1.IBQConsTpCobrancaCD_TIPO_COBRANCA.AsInteger;
  DataModule1.IBDTpCobranca.Open;
  if (DataModule1.IBQConsTpCobranca.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;
end;

procedure TFTpCobranca.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFTpCobranca.DBEGrigGetCellParams(Sender: TObject; Field: TField;
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

procedure TFTpCobranca.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFTpCobranca.DSTpCobrancaStateChange(Sender: TObject);
begin
if DataModule1.IBDTpCobranca.State in [dsinsert,dsedit]then
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
      TbConsulta.TabVisible := true;
    end;
end;

procedure TFTpCobranca.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
