unit UTabelaPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, rxToolEdit, RXDBCtrl,
  DB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, CheckLst;

type
  TFTabelaPreco = class(TForm)
    PaginaControle: TPageControl;
    TbTabela: TTabSheet;
    TbProdTab: TTabSheet;
    DSTabPreco: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    DBECodigo: TDBEdit;
    Label2: TLabel;
    DBEDescricao: TDBEdit;
    Label3: TLabel;
    DBEUsuario: TDBEdit;
    Label4: TLabel;
    DBESigla: TDBEdit;
    Label5: TLabel;
    DBEData: TDBDateEdit;
    BSair: TRbButton;
    BInserir: TRbButton;
    BCancelar: TRbButton;
    BConfirmar: TRbButton;
    BAlterar: TRbButton;
    BExcluir: TRbButton;
    Panel3: TPanel;
    Panel1: TPanel;
    DBGTabPreco: TDBGrid;
    DSGridTabPreco: TDataSource;
    DBGProdTabela: TDBGrid;
    DSGridProdTab: TDataSource;
    Panel4: TPanel;
    BAdicionaProd: TRbButton;
    BAlteraProd: TRbButton;
    BExcluiProd: TRbButton;
    EdDsTabela: TEdit;
    EdDsCdTabela: TEdit;
    BImprimir: TRbButton;
    procedure BInserirClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure DSTabPrecoStateChange(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGTabPrecoDblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BAlterarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BAdicionaProdClick(Sender: TObject);
    procedure TbProdTabShow(Sender: TObject);
    procedure BAlteraProdClick(Sender: TObject);
    procedure BExcluiProdClick(Sender: TObject);
    procedure TbTabelaShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTabelaPreco: TFTabelaPreco;

implementation

uses UDataModule3, UDataModule1, UPrincipal, UProdTabela, UOpsaoTabela,
  UDataModule5;

{$R *.dfm}

procedure TFTabelaPreco.BInserirClick(Sender: TObject);
begin
  DataModule3.IBDTabPreco.Open;
  DataModule3.IBDTabPreco.Insert;

  //gera o codigo da tabela
    DataModule3.IBQUltimaTabela.Close;
    DataModule3.IBQUltimaTabela.Open;
    if DataModule3.IBQUltimaTabelaULTIMO.AsInteger = 0 then
        DataModule3.IBDTabPrecoCD_TABELA.AsInteger := 1
    else
        DataModule3.IBDTabPrecoCD_TABELA.AsInteger :=
        DataModule3.IBQUltimaTabelaULTIMO.AsInteger;


  DBEData.Date := Date;

  DataModule3.IBDTabPrecoUSUARIO.AsString := FPrincipal.usuario;

end;

procedure TFTabelaPreco.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule3.IBDTabPreco.Cancel;
  
 end;
end;

procedure TFTabelaPreco.BConfirmarClick(Sender: TObject);
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
          begin
            DataModule3.IBDTabPreco.Post;
            DataModule1.IBTTransacao.Commit;


            DataModule3.IBQConsTabPreco.Close;
            DataModule3.IBQConsTabPreco.Open;
          end;
end;

procedure TFTabelaPreco.DSTabPrecoStateChange(Sender: TObject);
begin
if DataModule3.IBDTabPreco.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
     

    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;


    end;
end;

procedure TFTabelaPreco.BSairClick(Sender: TObject);
begin
Close;

end;

procedure TFTabelaPreco.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFTabelaPreco.FormShow(Sender: TObject);
begin
  PaginaControle.ActivePageIndex := 0;
end;

procedure TFTabelaPreco.DBGTabPrecoDblClick(Sender: TObject);
begin
  DataModule3.IBDTabPreco.Close;
  DataModule3.IBDTabPreco.ParamByName('ptabela').AsInteger :=
  DataModule3.IBQConsTabPrecoCD_TABELA.AsInteger;
  DataModule3.IBDTabPreco.Open;

end;

procedure TFTabelaPreco.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule3.IBDTabPreco.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
     DataModule3.IBDTabPreco.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFTabelaPreco.BAlterarClick(Sender: TObject);
begin
if DataModule3.IBDTabPreco.IsEmpty then
 begin
  Showmessage ('Tabela de Preço não pode ser editado vazio');
 end
  else
    begin
      DataModule3.IBDTabPreco.Edit;
    end;
end;

procedure TFTabelaPreco.BExcluirClick(Sender: TObject);
begin
if not DataModule3.IBDTabPreco.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin

    DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select REGIAO.cd_tabela_preco');
     DataModule5.IBQSeExiste.SQL.Add('from REGIAO');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('REGIAO.cd_tabela_preco = :ptabela');
     DataModule5.IBQSeExiste.ParamByName('ptabela').AsInteger := DataModule3.IBDTabPrecoCD_TABELA.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
      Application.MessageBox('Tabela de Preço está sendo usado '#13' em Região!', 'Aviso', MB_ICONWARNING+MB_OK);
      end
    else
     begin


    DataModule3.IBQApagaProdTab.Close;
    DataModule3.IBQApagaProdTab.ParamByName('ptabela').AsInteger :=
    DataModule3.IBDTabPrecoCD_TABELA.AsInteger;
    DataModule3.IBQApagaProdTab.Open;

     DataModule3.IBDTabPreco.Delete;
     DataModule1.IBTTransacao.CommitRetaining;


     //atualiza a grid de consulta
      DataModule3.IBQConsTabPreco.Close;
      DataModule3.IBQConsTabPreco.Open;

    end;
    end;
  end
 else
  Begin
   Showmessage('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !');
  
  end;
end;

procedure TFTabelaPreco.BAdicionaProdClick(Sender: TObject);
begin

  Application.CreateForm(TFProdTab, FProdTab);
  DataModule3.IBDProdTabela.Open;
       DataModule3.IBDProdTabela.Insert;


       DataModule3.IBDProdTabelaCD_TABELA.AsInteger :=
       DataModule3.IBQConsTabPrecoCD_TABELA.AsInteger;

       DataModule3.IBDProdTabelaUSUARIOO.AsString :=
       FPrincipal.usuario;

       FProdTab.DBEData.Date := Date;


               if FProdTab.ShowModal = mrCancel then
                begin
                   DataModule3.IBDProdTabela.Cancel;
                    Abort;
                end
               else
                  begin

                        DataModule3.IBDProdTabela.Post;
                        DataModule1.IBTTransacao.CommitRetaining;


                       DataModule3.IBQConsProdTabela.Close;
                       DataModule3.IBQConsProdTabela.ParamByName('ptabela').AsInteger :=
                       DataModule3.IBQConsTabPrecoCD_TABELA.AsInteger;
                       DataModule3.IBQConsProdTabela.Open;
                     end;
                 //end;
         
end;

procedure TFTabelaPreco.TbProdTabShow(Sender: TObject);
begin

    DataModule3.IBQConsProdTabela.Close;
    DataModule3.IBQConsProdTabela.ParamByName('ptabela').AsInteger :=
    DataModule3.IBQConsTabPrecoCD_TABELA.AsInteger;
    DataModule3.IBQConsProdTabela.Open;


    EdDsTabela.Text :=  DataModule3.IBQConsTabPrecoDS_TABELA.AsString;
    EdDsCdTabela.Text := IntToStr(DataModule3.IBQConsTabPrecoCD_TABELA.AsInteger);
    end;

procedure TFTabelaPreco.BAlteraProdClick(Sender: TObject);
begin
Application.CreateForm(TFProdTab, FProdTab);

    FProdTab.DBECdProduto.ReadOnly := true;

       DataModule3.IBDProdTabela.Close;
       DataModule3.IBDProdTabela.ParamByName('pproduto').AsInteger :=
       DataModule3.IBQConsProdTabelaCD_PRODUTO.AsInteger;
       DataModule3.IBDProdTabela.ParamByName('ptabela').AsInteger :=
       DataModule3.IBQConsProdTabelaCD_TABELA.AsInteger;
       DataModule3.IBDProdTabela.Open;

       FProdTab.EdDsProduto.Text := DataModule3.IBQConsProdTabelaDS_PRODUTO.AsString;

       DataModule3.IBDProdTabela.Edit;


               if FProdTab.ShowModal = mrCancel then
                begin
                   DataModule3.IBDProdTabela.Cancel;
                    Abort;
                end
               else
                      begin
                        DataModule3.IBDProdTabela.Post;
                        DataModule1.IBTTransacao.CommitRetaining;

                         FProdTab.DBECdProduto.ReadOnly := false;
                        FProdTab.Close;


                       DataModule3.IBQConsProdTabela.Close;
                       DataModule3.IBQConsProdTabela.ParamByName('ptabela').AsInteger :=
                       DataModule3.IBQConsTabPrecoCD_TABELA.AsInteger;
                       DataModule3.IBQConsProdTabela.Open;
                     end;
                 //end;
end;

procedure TFTabelaPreco.BExcluiProdClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
       DataModule3.IBDProdTabela.Close;
       DataModule3.IBDProdTabela.ParamByName('pproduto').AsInteger :=
       DataModule3.IBQConsProdTabelaCD_PRODUTO.AsInteger;
       DataModule3.IBDProdTabela.ParamByName('ptabela').AsInteger :=
       DataModule3.IBQConsProdTabelaCD_TABELA.AsInteger;
       DataModule3.IBDProdTabela.Open;

       DataModule3.IBDProdTabela.Delete;
       DataModule1.IBTTransacao.CommitRetaining;


       DataModule3.IBQConsProdTabela.Close;
       DataModule3.IBQConsProdTabela.ParamByName('ptabela').AsInteger :=
       DataModule3.IBQConsTabPrecoCD_TABELA.AsInteger;
       DataModule3.IBQConsProdTabela.Open;
  end;
end;



procedure TFTabelaPreco.TbTabelaShow(Sender: TObject);
begin
DataModule3.IBQConsTabPreco.Close;
DataModule3.IBQConsTabPreco.Open;
end;

procedure TFTabelaPreco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFTabelaPreco.BImprimirClick(Sender: TObject);
begin
  FOpsaoTabela := TFOpsaoTabela.Create(Self);
  FOpsaoTabela.ShowModal;
  FreeAndNil(FOpsaoTabela);
end;

end.
