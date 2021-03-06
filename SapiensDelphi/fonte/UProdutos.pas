unit UProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, DB, StdCtrls, Mask,
  DBCtrls, Buttons, rxToolEdit, RXDBCtrl, Grids, DBGrids, rxCurrEdit;

type
  TFProdutos = class(TForm)
    PaginaControle: TPageControl;
    TbCadastro: TTabSheet;
    TbComposicao: TTabSheet;
    TbImagem: TTabSheet;
    Panel1: TPanel;
    BInserir: TRbButton;
    BCancelar: TRbButton;
    BConfirmar: TRbButton;
    BAlterar: TRbButton;
    BExcluir: TRbButton;
    BSair: TRbButton;
    Label1: TLabel;
    DSProdutos: TDataSource;
    Label2: TLabel;
    DBEDescricao: TDBEdit;
    Label3: TLabel;
    DBEGrupo: TDBEdit;
    Label4: TLabel;
    DBEUnMedida: TDBEdit;
    Label5: TLabel;
    DBESituTribu: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    DBECubico: TDBEdit;
    Label12: TLabel;
    DBEPeso: TDBEdit;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    DBECdBarras: TDBEdit;
    DBESituacao: TDBComboBox;
    DBEVendaSusp: TDBComboBox;
    BGrupo: TSpeedButton;
    BUnMedida: TSpeedButton;
    BSitTribu: TSpeedButton;
    EdDsGrupo: TEdit;
    EdDsUnMedida: TEdit;
    EdDsSitTribu: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEUsuario: TDBEdit;
    DBEdata: TDBDateEdit;
    EdCodigo: TEdit;
    EdDsSiglaUnMedida: TEdit;
    PBloqueado: TPanel;
    PAtivo: TPanel;
    PObservacao: TPanel;
    Image1: TImage;
    BAdd: TRbButton;
    BRemove: TRbButton;
    JanelaImagem: TOpenDialog;
    DBGComposicao: TDBGrid;
    DSCompProduto: TDataSource;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Label16: TLabel;
    DBECdMatPrima: TDBEdit;
    Label17: TLabel;
    DBEQtde: TDBEdit;
    BAddMat: TSpeedButton;
    EdDsMatPrima: TEdit;
    BExcluirMt: TRbButton;
    BConfirmarMt: TRbButton;
    BAddMt: TRbButton;
    DSConsComp: TDataSource;
    BAlteraMt: TRbButton;
    BCancelarMt: TRbButton;
    EdDsUnidadeMedida: TEdit;
    Label18: TLabel;
    BPesqProduto: TSpeedButton;
    EdPrecoVenda: TCurrencyEdit;
    EdPercMin: TCurrencyEdit;
    EdPercMax: TCurrencyEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BSairClick(Sender: TObject);
    procedure BInserirClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure DSProdutosStateChange(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure BSitTribuClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BUnMedidaClick(Sender: TObject);
    procedure BGrupoClick(Sender: TObject);
    procedure DBEUnMedidaExit(Sender: TObject);
    procedure DBEGrupoExit(Sender: TObject);
    procedure DBESituTribuExit(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure BAlterarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BAddClick(Sender: TObject);
    procedure BRemoveClick(Sender: TObject);
    procedure BAddMtClick(Sender: TObject);
    procedure BConfirmarMtClick(Sender: TObject);
    procedure BAddMatClick(Sender: TObject);
    procedure DBECdMatPrimaExit(Sender: TObject);
    procedure DSCompProdutoStateChange(Sender: TObject);
    procedure BCancelarMtClick(Sender: TObject);
    procedure BAlteraMtClick(Sender: TObject);
    procedure BExcluirMtClick(Sender: TObject);
    procedure TbComposicaoShow(Sender: TObject);
    procedure DBGComposicaoDblClick(Sender: TObject);
    procedure DBGComposicaoCellClick(Column: TColumn);
    procedure BPesqProdutoClick(Sender: TObject);
    procedure DBEGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEUnMedidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBESituTribuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBECdMatPrimaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPercMinKeyPress(Sender: TObject; var Key: Char);
    procedure EdPercMaxKeyPress(Sender: TObject; var Key: Char);
    procedure EdPrecoVendaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdutos: TFProdutos;
  nada : string;
  cd_produto : integer;

implementation

uses UDataModule3, UPrincipal, UDataModule1, UConsSimpSitTribu,
  UConsSimpUnMedida, UConsSimpGrupoProduto, UConsSimpMtPrima,
  UConsSimpProduto, UDataModule5;

{$R *.dfm}

procedure TFProdutos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFProdutos.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFProdutos.BInserirClick(Sender: TObject);
begin
DataModule3.IBDProduto.Open;
DataModule3.IBDProduto.Insert;
DBEDescricao.SetFocus;

DataModule3.IBDProdutoUSUARIOO.AsString := FPrincipal.usuario;
DBEdata.Date := Date;

 //pega o codigo
if DataModule3.IBDProduto.State in [dsinsert] then
  begin
    DataModule3.IBQUltimoProduto.Close;
    DataModule3.IBQUltimoProduto.Open;
    if DataModule3.IBQUltimoProdutoULTIMO.AsInteger = 0 then
        DataModule3.IBDProdutoCD_PRODUTO.AsInteger := 1
    else
        DataModule3.IBDProdutoCD_PRODUTO.AsInteger :=
        DataModule3.IBQUltimoProdutoULTIMO.AsInteger;
  end;
  //------------------------------------------------
  //limpa a grid da composi�o

          DataModule3.IBQConsComp.Close;
          DataModule3.IBQConsComp.ParamByName('pproduto').AsInteger :=
          DataModule3.IBDProdutoCD_PRODUTO.AsInteger;
          DataModule3.IBQConsComp.Open;

 //--------------------------------------------------------

 DataModule3.IBDProdutoCODIGO_BARRAS.AsString :=
 IntToStr(DataModule3.IBDProdutoCD_PRODUTO.AsInteger + 100);

 EdCodigo.Text := IntToStr(DataModule3.IBDProdutoCD_PRODUTO.AsInteger);

 EdDsGrupo.Clear;
 EdDsUnMedida.Clear;
 EdDsSitTribu.Clear;
 EdDsSiglaUnMedida.Clear;

 Image1.Picture.LoadFromFile(nada);

 DataModule3.IBDProdutoSITUACAO.AsString := 'A';
 DataModule3.IBDProdutoVEND_SUSPENSA.AsString := 'N';

 DBESituacao.ItemIndex := 0;
 DBEVendaSusp.ItemIndex := 0;

end;

procedure TFProdutos.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule3.IBDProduto.Cancel;


 end;
end;

procedure TFProdutos.DSProdutosStateChange(Sender: TObject);
begin
if DataModule3.IBDProduto.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      BGrupo.Enabled := true;
      BUnMedida.Enabled := true;
      BSitTribu.Enabled := true;
      //TbConsulta.Enabled := false;
      BAdd.Enabled := true;
      BRemove.Enabled := true;


    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      BGrupo.Enabled := false;
      BUnMedida.Enabled := false;
      BSitTribu.Enabled := false;
      BAdd.Enabled := false;
      BRemove.Enabled := false;

      //TbConsulta.Enabled := true;
    end;
end;

procedure TFProdutos.BConfirmarClick(Sender: TObject);
begin
     if DBEDescricao.Text = '' then
        begin
          MessageDlg('Campo Descri��o � obrigat�rio.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
        end
      else
        if DBEGrupo.Text = '' then
          begin
          MessageDlg('Campo Grupo � obrigat�rio.',mtWarning,[mbok],0);
          DBEGrupo.SetFocus;
          end
        else
        if DBEUnMedida.Text = '' then
          begin
          MessageDlg('Campo Unidade de Medida � obrigat�rio.',mtWarning,[mbok],0);
          DBEUnMedida.SetFocus;
          end
        else
        if DBESituTribu.Text = '' then
          begin
          MessageDlg('Campo Situa��o Tribut�ria � obrigat�rio.',mtWarning,[mbok],0);
          DBESituTribu.SetFocus;
          end
        else
        if DBESituacao.Text = '' then
          begin
          MessageDlg('Campo Situa��o � obrigat�rio.',mtWarning,[mbok],0);
          DBESituacao.SetFocus;
          end
        else
        if DBEVendaSusp.Text = '' then
          begin
          MessageDlg('Campo Venda Suspensa � obrigat�rio.',mtWarning,[mbok],0);
          DBEVendaSusp.SetFocus;
          end
        else
        if DBECubico.Text = '' then
          begin
          MessageDlg('Campo C�bico � obrigat�rio.',mtWarning,[mbok],0);
          DBECubico.SetFocus;
          end
        else
        if DBEPeso.Text = '' then
          begin
          MessageDlg('Campo Peso � obrigat�rio.',mtWarning,[mbok],0);
          DBEPeso.SetFocus;
          end
        else
        if EdPrecoVenda.Text = '' then
          begin
          MessageDlg('Campo Pre�o de Venda � obrigat�rio.',mtWarning,[mbok],0);
          EdPrecoVenda.SetFocus;
          end
        else
        if EdPercMin.Text = '' then
          begin
          MessageDlg('Campo Percentual M�nimo � obrigat�rio.',mtWarning,[mbok],0);
          EdPercMin.SetFocus;
          end
        else
        if EdPercMax.Text = '' then
          begin
          MessageDlg('Campo Percentual Maximo � obrigat�rio.',mtWarning,[mbok],0);
          EdPercMax.SetFocus;
          end
        else
          begin

            DataModule3.IBDProdutoPERC_MIN.AsFloat := StrToFloat(EdPercMin.Text);
            DataModule3.IBDProdutoPERC_MAX.AsFloat := StrToFloat(EdPercMax.Text);
            DataModule3.IBDProdutoPRECO_VENDA.AsFloat := StrToFloat(EdPrecoVenda.Text);
            DataModule3.IBDProduto.Post;
            DataModule1.IBTTransacao.CommitRetaining;


      if DataModule3.IBDProdutoSITUACAO.AsString = 'A' then
        begin
          DBESituacao.ItemIndex := 0;
        end
      else
       if DataModule3.IBDProdutoSITUACAO.AsString = 'I' then
        begin
           DBESituacao.ItemIndex := 1;
        end;


        if DataModule3.IBDProdutoVEND_SUSPENSA.AsString = 'N' then
          begin
            DBEVendaSusp.ItemIndex := 0;
          end
        else
        if DataModule3.IBDProdutoVEND_SUSPENSA.AsString = 'S' then
          begin
            DBEVendaSusp.ItemIndex := 1;
          end;

//colorir panels

            if DataModule3.IBDProdutoSITUACAO.AsString = 'A' then
             begin
              PAtivo.Color := $003DDF20;
              PAtivo.Font.Color := clWhite;
              PAtivo.Caption := 'ATIVO';
             end
            else
              begin
                PAtivo.Color := clRed;
                PAtivo.Font.Color := clWhite;
                PAtivo.Caption := 'INATIVO';
              end;


            if DataModule3.IBDProdutoVEND_SUSPENSA.AsString = 'N' then
             begin
              PBloqueado.Color := $003DDF20;
              PBloqueado.Font.Color := clWhite;
              PBloqueado.Caption := 'EM VENDA';
             end
            else
              begin
                PBloqueado.Color := clRed;
                PBloqueado.Font.Color := clYellow;
                PBloqueado.Caption := 'FORA DE VENDA';
              end;
          end;
end;

procedure TFProdutos.BSitTribuClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpSitTribu, FConsSimpSitTribu);
  if FConsSimpSitTribu.ShowModal = mrOk then
    begin
      DataModule3.IBDProdutoCD_SITU_TRIBU.AsInteger :=
      DataModule3.IBQConsSitTribuCD_SITUACAO.AsInteger;
      EdDsSitTribu.Text := DataModule3.IBQConsSitTribuDS_SITUACAO.AsString;
    end;

end;

procedure TFProdutos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule3.IBDProduto.State in [dsedit,dsinsert] then
  begin
   ShowMessage('Confirme o cadastro antes de fehar!!!  ');
  end
 else
   canclose := true;
end;

procedure TFProdutos.BUnMedidaClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpUnMedida, FConsSimpUnMedida);
  if FConsSimpUnMedida.ShowModal = mrOk then
    begin
      DataModule3.IBDProdutoCD_UN_MEDIDA.AsInteger := DataModule1.IBQConsUnMedidaCD_UNIDADE.AsInteger;
      EdDsUnMedida.Text := DataModule1.IBQConsUnMedidaDS_UNIDADE.AsString;
      EdDsSiglaUnMedida.Text := DataModule1.IBQConsUnMedidaSIGLA_UNIDADE.AsString;
    end;
end;

procedure TFProdutos.BGrupoClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpGrupoProd, FConsSimpGrupoProd);
  if FConsSimpGrupoProd.ShowModal = mrOk then
    begin
      DataModule3.IBDProdutoCD_GRUPO_PROD.AsInteger :=
      DataModule3.IBQConsGrupoProdutosCD_GRUPO.AsInteger;
      EdDsGrupo.Text := DataModule3.IBQConsGrupoProdutosDS_GRUPO.AsString;
    end;
end;

procedure TFProdutos.DBEUnMedidaExit(Sender: TObject);
begin
if DataModule3.IBDProduto.State in [dsinsert,dsedit]then
begin
       if DBEUnMedida.Text <> '' then
       begin
        DataModule1.IBQConsUnMedida.Close;
        DataModule1.IBQConsUnMedida.SQL.Clear;
        DataModule1.IBQConsUnMedida.SQL.Add('select * from UNIDADE_MEDIDA');
        DataModule1.IBQConsUnMedida.SQL.Add('where cd_unidade = :punidade');
        DataModule1.IBQConsUnMedida.ParamByName('punidade').AsInteger := StrToInt(DBEUnMedida.Text);
        DataModule1.IBQConsUnMedida.Open;
        if DataModule1.IBQConsUnMedida.IsEmpty then
          begin
            ShowMessage('N�o existe unidades de medida cadastrados com este c�digo');
            DBEUnMedida.SetFocus;
            DBEUnMedida.Clear;

          end
          else
            begin
                EdDsUnMedida.Text := DataModule1.IBQConsUnMedidaDS_UNIDADE.AsString;
                EdDsSiglaUnMedida.Text := DataModule1.IBQConsUnMedidaSIGLA_UNIDADE.AsString;
            end;

       end;
end;
end;

procedure TFProdutos.DBEGrupoExit(Sender: TObject);
begin
if DataModule3.IBDProduto.State in [dsinsert,dsedit]then
begin
       if DBEGrupo.Text <> '' then
       begin
        DataModule3.IBQConsGrupoProdutos.Close;
        DataModule3.IBQConsGrupoProdutos.SQL.Clear;
        DataModule3.IBQConsGrupoProdutos.SQL.Add('select * from GRUPO_PRODUTO');
        DataModule3.IBQConsGrupoProdutos.SQL.Add('where cd_grupo = :pgrupo');
        DataModule3.IBQConsGrupoProdutos.ParamByName('pgrupo').AsInteger := StrToInt(DBEGrupo.Text);
        DataModule3.IBQConsGrupoProdutos.Open;
        if DataModule3.IBQConsGrupoProdutos.IsEmpty then
          begin
            ShowMessage('N�o existe grupos cadastrados com este c�digo');
            DBEGrupo.SetFocus;
            DBEGrupo.Clear;
          end
          else
            begin
                EdDsGrupo.Text := DataModule3.IBQConsGrupoProdutosDS_GRUPO.AsString;
            end;

       end;
end;
end;

procedure TFProdutos.DBESituTribuExit(Sender: TObject);
begin
if DataModule3.IBDProduto.State in [dsinsert,dsedit]then
begin
       if DBESituTribu.Text <> '' then
       begin
        DataModule3.IBQConsSitTribu.Close;
        DataModule3.IBQConsSitTribu.SQL.Clear;
        DataModule3.IBQConsSitTribu.SQL.Add('select * from SITU_TRIBUTARIA');
        DataModule3.IBQConsSitTribu.SQL.Add('where cd_situacao = :psituacao');
        DataModule3.IBQConsSitTribu.ParamByName('psituacao').AsInteger := StrToInt(DBESituTribu.Text);
        DataModule3.IBQConsSitTribu.Open;
        if DataModule3.IBQConsSitTribu.IsEmpty then
          begin
            ShowMessage('N�o existe situa��o tribut�ria cadastrada com este c�digo');
            DBESituTribu.SetFocus;
            DBESituTribu.Clear;
          end
          else
            begin
                EdDsSitTribu.Text := DataModule3.IBQConsSitTribuDS_SITUACAO.AsString;
            end;

       end;
end;
end;

procedure TFProdutos.EdCodigoExit(Sender: TObject);
begin
if EdCodigo.Text <> '' then
  begin

  if not (DataModule3.IBDProduto.State in [dsinsert,dsedit]) then
    begin
        EdDsGrupo.Clear;
        EdDsUnMedida.Clear;
        EdDsSitTribu.Clear;
        EdDsSiglaUnMedida.Clear;

        PBloqueado.Color := clBtnFace;
        PBloqueado.Caption := '';

        PAtivo.Color := clBtnFace;
        PAtivo.Caption := '';

    DataModule3.IBDProduto.Close;
    DataModule3.IBDProduto.ParamByName('pproduto').AsInteger := StrToInt(EdCodigo.Text);
    DataModule3.IBDProduto.Open;
    if DataModule3.IBDProduto.IsEmpty then
      begin
        ShowMessage('N�o existe produto cadastrado com este c�digo');
        EdCodigo.SetFocus;
        EdCodigo.Clear;

      end
    else
      begin
          //realiza a consulta da descricao dos campos edit
         DataModule3.IBQConsTabsProd.Close;
         DataModule3.IBQConsTabsProd.ParamByName('pproduto').AsInteger :=
         DataModule3.IBDProdutoCD_PRODUTO.AsInteger;
         DataModule3.IBQConsTabsProd.Open;

         EdDsGrupo.Text := DataModule3.IBQConsTabsProdDS_GRUPO.AsString;
         EdDsUnMedida.Text := DataModule3.IBQConsTabsProdDS_UNIDADE.AsString;
         EdDsSiglaUnMedida.Text := DataModule3.IBQConsTabsProdSIGLA_UNIDADE.AsString;
         EdDsSitTribu.Text := DataModule3.IBQConsTabsProdDS_SITUACAO.AsString;
         EdPrecoVenda.Text := FloatToStr(DataModule3.IBDProdutoPRECO_VENDA.AsFloat);


         //carrega a grid da composicao
         DataModule3.IBQConsComp.Close;
         DataModule3.IBQConsComp.ParamByName('pproduto').AsInteger :=
         DataModule3.IBDProdutoCD_PRODUTO.AsInteger;
         DataModule3.IBQConsComp.Open;

       
       if DataModule3.IBDProdutoSITUACAO.AsString = 'A' then
        begin
          DBESituacao.ItemIndex := 0;
        end
       else
       if DataModule3.IBDProdutoSITUACAO.AsString = 'I' then
        begin
           DBESituacao.ItemIndex := 1;
        end;


        if DataModule3.IBDProdutoVEND_SUSPENSA.AsString = 'N' then
          begin
            DBEVendaSusp.ItemIndex := 0;
          end
        else
        if DataModule3.IBDProdutoVEND_SUSPENSA.AsString = 'S' then
          begin
            DBEVendaSusp.ItemIndex := 1;
          end;

//colorir panels

            if DataModule3.IBDProdutoSITUACAO.AsString = 'A' then
             begin
              PAtivo.Color := $003DDF20;
              PAtivo.Font.Color := clWhite;
              PAtivo.Caption := 'ATIVO';
             end
            else
              begin
                PAtivo.Color := clRed;
                PAtivo.Font.Color := clWhite;
                PAtivo.Caption := 'INATIVO';
              end;


            if DataModule3.IBDProdutoVEND_SUSPENSA.AsString = 'N' then
             begin
              PBloqueado.Color := $003DDF20;
              PBloqueado.Font.Color := clWhite;
              PBloqueado.Caption := 'EM VENDA';
             end
            else
              begin
                PBloqueado.Color := clRed;
                PBloqueado.Font.Color := clYellow;
                PBloqueado.Caption := 'FORA DE VENDA';
              end;

  //carrega a imagem
  if DataModule3.IBDProdutoIMAGEM.AsString = '' then
    begin
      Image1.Picture.LoadFromFile(nada);
    end
  else
    begin
     Image1.Picture.LoadFromFile(DataModule3.IBDProdutoIMAGEM.AsString);
    end;

  end;
    end;
end;
end;

procedure TFProdutos.BAlterarClick(Sender: TObject);
begin
if DataModule3.IBDProduto.IsEmpty then
 begin
  Showmessage ('Produto n�o pode ser editado vazio');
 end
  else
    begin
      DataModule3.IBDProduto.Edit;

      if DataModule3.IBDProdutoSITUACAO.AsString = 'A' then
        begin
          DBESituacao.ItemIndex := 0;
        end
      else
       if DataModule3.IBDProdutoSITUACAO.AsString = 'I' then
        begin
           DBESituacao.ItemIndex := 1;
        end;


        if DataModule3.IBDProdutoVEND_SUSPENSA.AsString = 'N' then
          begin
            DBEVendaSusp.ItemIndex := 0;
          end
        else
        if DataModule3.IBDProdutoVEND_SUSPENSA.AsString = 'S' then
          begin
            DBEVendaSusp.ItemIndex := 1;
          end;
    end;
end;

procedure TFProdutos.BExcluirClick(Sender: TObject);
begin
if not DataModule3.IBDProduto.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
    cd_produto := DataModule3.IBDProdutoCD_PRODUTO.AsInteger;

     DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select pd_p.cd_pedido');
     DataModule5.IBQSeExiste.SQL.Add('from PRODUTOS_PEDIDO pd_p');
     DataModule5.IBQSeExiste.SQL.Add('inner join PRODUTO pd on pd.cd_produto = pd_p.cd_produto');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('pd_p.cd_produto = :pproduto');
     DataModule5.IBQSeExiste.ParamByName('pproduto').AsInteger := DataModule3.IBDProdutoCD_PRODUTO.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
       MessageDlg('Produto est� sendo usado '#13' em pedidos!',mtWarning,[mbok],0);
      end
     else
     begin
     DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select pd_t.cd_tabela');
     DataModule5.IBQSeExiste.SQL.Add('from PRODUTOS_TABELA pd_t');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('pd_t.cd_produto = :pproduto');
     DataModule5.IBQSeExiste.ParamByName('pproduto').AsInteger := DataModule3.IBDProdutoCD_PRODUTO.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
       MessageDlg('Produto est� sendo usado '#13' em tab�la de pre�o!',mtWarning,[mbok],0);
      end
     else
     begin
     DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select showP.cd_produto');
     DataModule5.IBQSeExiste.SQL.Add('from SHOW_PRODUTOS showP');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('showP.cd_produto = :pproduto');
     DataModule5.IBQSeExiste.ParamByName('pproduto').AsInteger := DataModule3.IBDProdutoCD_PRODUTO.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
      Application.MessageBox('Produto est� sendo usado '#13' em Showroom de Produtos!', 'Aviso', MB_ICONWARNING+MB_OK);
      end
     else
     begin
     DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select sp.cd_produto');
     DataModule5.IBQSeExiste.SQL.Add('FROM SAIDA_PROD_ACABADO sp');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('sp.cd_produto = :pproduto');
     DataModule5.IBQSeExiste.ParamByName('pproduto').AsInteger := DataModule3.IBDProdutoCD_PRODUTO.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
      Application.MessageBox('Produto est� sendo usado '#13' em Sa�da de Produto Acabado!', 'Aviso', MB_ICONWARNING+MB_OK);
      end
     else
     begin
     DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select cores.cd_produto');
     DataModule5.IBQSeExiste.SQL.Add('from CORES_PROD_PED cores');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('cores.cd_produto = :pproduto');
     DataModule5.IBQSeExiste.ParamByName('pproduto').AsInteger := DataModule3.IBDProdutoCD_PRODUTO.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
      Application.MessageBox('Produto est� sendo usado '#13' em Cores de Produtos do Pedido!', 'Aviso', MB_ICONWARNING+MB_OK);
      end
     else
     begin

     DataModule3.IBDProduto.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

     
     DataModule3.IBQApagaComposicao.Close;
     DataModule3.IBQApagaComposicao.ParamByName('pproduto').AsInteger := cd_produto;
     DataModule3.IBQApagaComposicao.Open;

     DataModule3.IBQConsComp.Close;
     DataModule3.IBQConsComp.ParamByName('pproduto').AsInteger := cd_produto;
     DataModule3.IBQConsComp.Open;

     EdDsGrupo.Clear;
     EdDsUnMedida.Clear;
     EdDsSiglaUnMedida.Clear;
     EdDsSitTribu.Clear;
     EdCodigo.Clear;

     PBloqueado.Color := clBtnFace;
     PBloqueado.Caption := '';

     PAtivo.Color := clBtnFace;
     PAtivo.Caption := '';

     Image1.Picture.LoadFromFile(nada);
     end;
    end;
    end;
  end;
  end;
  end;
  end
 else
  Begin
   Showmessage('N�o existe Registros a serem excluidos ou n�o foi feita a sele��o do registro !');
   DBEDescricao.SetFocus;
  end;
end;

procedure TFProdutos.FormShow(Sender: TObject);
begin
PaginaControle.ActivePageIndex := 0;
nada := 'C:\SysLider\icones\nada.jpg';

     EdDsGrupo.Clear;
     EdDsUnMedida.Clear;
     EdDsSiglaUnMedida.Clear;
     EdDsSitTribu.Clear;
     EdCodigo.Clear;

     DBEDescricao.Clear;
     DBEGrupo.Clear;
     DBEUnMedida.Clear;
     DBESituTribu.Clear;
     DBECubico.Clear;
     DBEPeso.Clear;
     EdPrecoVenda.Clear;
     EdPercMin.Clear;
     EdPercMax.Clear;
     DBECdBarras.Clear;
     DBESituacao.ItemIndex := -1;
     DBEVendaSusp.ItemIndex := -1;
     DBEUsuario.Clear;
     DBEdata.Clear;

     DBECdMatPrima.Clear;
     DBEQtde.Clear;
     EdDsMatPrima.Clear;
     EdDsUnidadeMedida.Clear;

     PBloqueado.Color := clBtnFace;
     PBloqueado.Caption := '';

     PAtivo.Color := clBtnFace;
     PAtivo.Caption := '';

     Image1.Picture.LoadFromFile(nada);


     DataModule3.IBQConsComp.Close;
     DataModule3.IBQConsComp.ParamByName('pproduto').AsInteger := 999999;
     DataModule3.IBQConsComp.Open;

end;

procedure TFProdutos.BAddClick(Sender: TObject);
begin
  if JanelaImagem.Execute then
  begin
    DataModule3.IBDProdutoIMAGEM.Value := JanelaImagem.FileName;
    Image1.Picture.LoadFromFile(JanelaImagem.FileName);
  end;
end;

procedure TFProdutos.BRemoveClick(Sender: TObject);
begin
if DataModule3.IBDProdutoIMAGEM.AsString <> '' then
  begin
    if Application.MessageBox('Deseja excluir a imagem?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
      Begin
        Image1.Picture.LoadFromFile(nada);
        DataModule3.IBDProdutoIMAGEM.AsString := '';
      end;
  end;
end;

procedure TFProdutos.BAddMtClick(Sender: TObject);
begin
DataModule3.IBDCompProduto.open;
DataModule3.IBDCompProduto.Insert;
DBECdMatPrima.SetFocus;

DataModule3.IBDCompProdutoCD_PRODUTO.AsInteger :=
DataModule3.IBDProdutoCD_PRODUTO.AsInteger;

EdDsMatPrima.Clear;
EdDsUnidadeMedida.Clear;

end;

procedure TFProdutos.BConfirmarMtClick(Sender: TObject);
begin
  if DBECdMatPrima.Text = '' then
    begin
      ShowMessage('Campo c�digo mat�ria prima � obrigat�rio');
      DBECdMatPrima.SetFocus;
    end
    else
  if DBEQtde.Text = '' then
    begin
      ShowMessage('Campo quantidade � obrigat�rio');
      DBEQtde.SetFocus;
    end
    else
      begin
    if DataModule3.IBDCompProduto.State in [dsinsert] then
      begin
        DataModule3.IBQExisteMat.Close;
        DataModule3.IBQExisteMat.ParamByName('pproduto').AsInteger :=
        DataModule3.IBDProdutoCD_PRODUTO.AsInteger;
        DataModule3.IBQExisteMat.ParamByName('pmateria').AsInteger :=
        StrToInt(DBECdMatPrima.Text);
        DataModule3.IBQExisteMat.Open;
        if DataModule3.IBQExisteMat.IsEmpty then
          begin
            DataModule3.IBDCompProduto.Post;


            DBECdMatPrima.Clear;
            DBEQtde.Clear;
            EdDsMatPrima.Clear;
            EdDsUnidadeMedida.Clear;

            DataModule3.IBQConsComp.Close;
            DataModule3.IBQConsComp.ParamByName('pproduto').AsInteger :=
            DataModule3.IBDProdutoCD_PRODUTO.AsInteger;
            DataModule3.IBQConsComp.Open;

          end
         else
          begin
           ShowMessage('Mat�ria Prima ja existe na composi��o');
          end;
        end
      else
       if DataModule3.IBDCompProduto.State in [dsedit] then
          begin
            DataModule3.IBDCompProduto.Post;

            DataModule3.IBQConsComp.Close;
            DataModule3.IBQConsComp.ParamByName('pproduto').AsInteger :=
            DataModule3.IBDProdutoCD_PRODUTO.AsInteger;
            DataModule3.IBQConsComp.Open;
          end;

      end;

      ActiveControl := BAddMt;
      DBECdMatPrima.ReadOnly := false;

end;

procedure TFProdutos.BAddMatClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpMtPrima, FConsSimpMtPrima);
  if FConsSimpMtPrima.ShowModal = mrOk then
    begin
      DataModule3.IBDCompProdutoCD_MAT_PRIMA.AsInteger :=
      DataModule1.IBQConsMatPrimaCD_MAT_PRIMA.AsInteger;

      EdDsMatPrima.Text := DataModule1.IBQConsMatPrimaDS_MAT_PRIMA.AsString;

      DBECdMatPrimaExit(sender);
      
    end;
end;

procedure TFProdutos.DBECdMatPrimaExit(Sender: TObject);
begin
  if DataModule3.IBDCompProduto.State in [dsinsert,dsedit] then
    begin
      if DBECdMatPrima.Text <> '' then
        begin
          DataModule1.IBQConsMatPrimapNf.Close;
          DataModule1.IBQConsMatPrimapNf.SQL.Clear;
          DataModule1.IBQConsMatPrimapNf.SQL.Add('select mt.*, un.ds_unidade');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('from MATERIA_PRIMA mt, UNIDADE_MEDIDA un');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('where');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('mt.cd_un_medida = un.cd_unidade and');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('mt.cd_mat_prima = :pmateria');
          DataModule1.IBQConsMatPrimapNf.ParamByName('pmateria').AsInteger := StrToInt(DBECdMatPrima.Text);
          DataModule1.IBQConsMatPrimapNf.Open;
        if DataModule1.IBQConsMatPrimapNf.IsEmpty then
          begin
            ShowMessage('N�o existe mat�ria prima com este c�digo');
            DBECdMatPrima.SetFocus;
            DBECdMatPrima.Clear;
          end
        else
          begin
          if (Length(DBECdMatPrima.Text) = 3) and (DBECdMatPrima.Text <> '999') then
            begin
               ShowMessage('Tecido diferente de 999');
               DBECdMatPrima.SetFocus;
               DBECdMatPrima.Clear;
               EdDsMatPrima.Clear;
               EdDsUnidadeMedida.Clear;
            end
          else
            begin
              EdDsMatPrima.Text := DataModule1.IBQConsMatPrimapNfDS_MAT_PRIMA.AsString;
              EdDsUnidadeMedida.Text := DataModule1.IBQConsMatPrimapNfDS_UNIDADE.AsString;
            end;
          end;
      end;
    end;
end;

procedure TFProdutos.DSCompProdutoStateChange(Sender: TObject);
begin

    if DataModule3.IBDCompProduto.State in [dsinsert,dsedit] then
      begin
        BAddMt.Enabled := false;
        BAlteraMt.Enabled := false;
        BExcluirMt.Enabled := false;
        BConfirmarMt.Enabled := true;
        BCancelarMt.Enabled := true;
        BAddMat.Enabled := true;
        TbCadastro.TabVisible := false;
        TbImagem.TabVisible := false;
      end
    else
      begin
        BAddMt.Enabled := true;
        BAlteraMt.Enabled := true;
        BExcluirMt.Enabled := true;
        BConfirmarMt.Enabled := false;
        BCancelarMt.Enabled := false;
        BAddMat.Enabled := false;
        TbCadastro.TabVisible := true;
        TbImagem.TabVisible := true;
      end;
  



end;

procedure TFProdutos.BCancelarMtClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule3.IBDCompProduto.Cancel;
  DBECdMatPrima.Clear;
  DBEQtde.Clear;
  EdDsMatPrima.Clear;
  EdDsUnidadeMedida.Clear;

  DBECdMatPrima.ReadOnly := false;
  
 end;
end;

procedure TFProdutos.BAlteraMtClick(Sender: TObject);
begin
if DataModule3.IBDCompProduto.IsEmpty then
 begin
  Showmessage ('Mat�ria Prima n�o pode ser editado vazio');
 end
  else
    begin
      DataModule3.IBDCompProduto.Edit;

      DBECdMatPrima.ReadOnly := true;
    end;
end;

procedure TFProdutos.BExcluirMtClick(Sender: TObject);
begin
if not DataModule3.IBDCompProduto.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     DataModule3.IBDCompProduto.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

     DataModule3.IBQConsComp.Close;
     DataModule3.IBQConsComp.ParamByName('pproduto').AsInteger :=
     DataModule3.IBDProdutoCD_PRODUTO.AsInteger;
     DataModule3.IBQConsComp.Open;

     EdDsMatPrima.Clear;
     EdDsUnidadeMedida.Clear;

    end;
  end
 else
  Begin
   Showmessage('N�o existe Registros a serem excluidos ou n�o foi feita a sele��o do registro !');
   
  end;
end;

procedure TFProdutos.TbComposicaoShow(Sender: TObject);
begin
if DataModule3.IBDProduto.State in [dsinsert, dsedit] then
  begin
     BAddMt.Enabled := true;
     BAlteraMt.Enabled := true;
     BExcluirMt.Enabled := true;
  end
else
  begin
     BAddMt.Enabled := false;
     BAlteraMt.Enabled := false;
     BExcluirMt.Enabled := false;
  end;
end;

procedure TFProdutos.DBGComposicaoDblClick(Sender: TObject);
begin
{if not (DataModule3.IBDCompProduto.State in [dsinsert,dsedit]) then
begin
if DataModule3.IBDProduto.State in [dsinsert,dsedit] then
  begin
    DataModule3.IBDCompProduto.Close;
    DataModule3.IBDCompProduto.ParamByName('pproduto').AsInteger :=
    DataModule3.IBDProdutoCD_PRODUTO.AsInteger;
    DataModule3.IBDCompProduto.ParamByName('pmateria').AsInteger :=
    DataModule3.IBQConsCompCD_MAT_PRIMA.AsInteger;
    DataModule3.IBDCompProduto.Open;

      DataModule1.IBQConsMatPrimapNf.Close;
      DataModule1.IBQConsMatPrimapNf.SQL.Clear;
      DataModule1.IBQConsMatPrimapNf.SQL.Add('select mt.*, un.ds_unidade');
      DataModule1.IBQConsMatPrimapNf.SQL.Add('from MATERIA_PRIMA mt, UNIDADE_MEDIDA un');
      DataModule1.IBQConsMatPrimapNf.SQL.Add('where');
      DataModule1.IBQConsMatPrimapNf.SQL.Add('mt.cd_un_medida = un.cd_unidade and');
      DataModule1.IBQConsMatPrimapNf.SQL.Add('mt.cd_mat_prima = :pmateria');
      DataModule1.IBQConsMatPrimapNf.ParamByName('pmateria').AsInteger := DataModule3.IBQConsCompCD_MAT_PRIMA.AsInteger;
      DataModule1.IBQConsMatPrimapNf.Open;

      EdDsMatPrima.Text := DataModule1.IBQConsMatPrimapNfDS_MAT_PRIMA.AsString;
      EdDsUnidadeMedida.Text := DataModule1.IBQConsMatPrimapNfDS_UNIDADE.AsString;
  end;
end; }
end;
procedure TFProdutos.DBGComposicaoCellClick(Column: TColumn);
begin
if not (DataModule3.IBDCompProduto.State in [dsinsert,dsedit]) then
begin
if DataModule3.IBDProduto.State in [dsinsert,dsedit] then
  begin
    DataModule3.IBDCompProduto.Close;
    DataModule3.IBDCompProduto.ParamByName('pproduto').AsInteger :=
    DataModule3.IBDProdutoCD_PRODUTO.AsInteger;
    DataModule3.IBDCompProduto.ParamByName('pmateria').AsInteger :=
    DataModule3.IBQConsCompCD_MAT_PRIMA.AsInteger;
    DataModule3.IBDCompProduto.Open;

      DataModule1.IBQConsMatPrimapNf.Close;
      DataModule1.IBQConsMatPrimapNf.SQL.Clear;
      DataModule1.IBQConsMatPrimapNf.SQL.Add('select mt.*, un.ds_unidade');
      DataModule1.IBQConsMatPrimapNf.SQL.Add('from MATERIA_PRIMA mt, UNIDADE_MEDIDA un');
      DataModule1.IBQConsMatPrimapNf.SQL.Add('where');
      DataModule1.IBQConsMatPrimapNf.SQL.Add('mt.cd_un_medida = un.cd_unidade and');
      DataModule1.IBQConsMatPrimapNf.SQL.Add('mt.cd_mat_prima = :pmateria');
      DataModule1.IBQConsMatPrimapNf.ParamByName('pmateria').AsInteger := DataModule3.IBQConsCompCD_MAT_PRIMA.AsInteger;
      DataModule1.IBQConsMatPrimapNf.Open;

      EdDsMatPrima.Text := DataModule1.IBQConsMatPrimapNfDS_MAT_PRIMA.AsString;
      EdDsUnidadeMedida.Text := DataModule1.IBQConsMatPrimapNfDS_UNIDADE.AsString;
  end;
end;
end;

procedure TFProdutos.BPesqProdutoClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpProduto, FConsSimpProduto);

if FConsSimpProduto.ShowModal = mrOk then
    begin
      EdCodigo.Text := IntToStr(DataModule3.IBQConsProdutoCD_PRODUTO.AsInteger);
      EdCodigo.SetFocus;
    end;


end;

procedure TFProdutos.DBEGrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F5 then
BGrupo.Click;
end;

procedure TFProdutos.DBEUnMedidaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F5 then
BUnMedida.Click;
end;

procedure TFProdutos.DBESituTribuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F5 then
BSitTribu.Click;
end;

procedure TFProdutos.DBECdMatPrimaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F5 then
BAddMat.Click;
end;

procedure TFProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFProdutos.EdPercMinKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
  beep;
  key:=#0;
  end;
end;

procedure TFProdutos.EdPercMaxKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
  beep;
  key:=#0;
  end;
end;

procedure TFProdutos.EdPrecoVendaKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
  beep;
  key:=#0;
  end;
end;

end.

