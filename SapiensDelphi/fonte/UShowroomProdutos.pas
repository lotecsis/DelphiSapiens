unit UShowroomProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, RbDrawCore, RbButton, StdCtrls, rxToolEdit,
  RXDBCtrl, DBCtrls, DB, Mask, ComCtrls, Grids, DBGrids;

type
  TFShowProdutos = class(TForm)
    PaginaControle: TPageControl;
    TbCadastro: TTabSheet;
    TbConsulta: TTabSheet;
    Label1: TLabel;
    DBECdProduto: TDBEdit;
    DsShowProdutos: TDataSource;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEUsuario: TDBEdit;
    Label9: TLabel;
    DBESituacao: TDBComboBox;
    DBEData: TDBDateEdit;
    CbLinha: TComboBox;
    Panel1: TPanel;
    BInserir: TRbButton;
    BCancelar: TRbButton;
    BConfirmar: TRbButton;
    BExcluir: TRbButton;
    BSair: TRbButton;
    Panel3: TPanel;
    Image1: TImage;
    BRemove1: TSpeedButton;
    BAdd1: TSpeedButton;
    JanelaImagem: TOpenDialog;
    BAltera: TRbButton;
    Panel2: TPanel;
    Image2: TImage;
    BAdd2: TSpeedButton;
    BRemove2: TSpeedButton;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    BPesquisa: TSpeedButton;
    DBEGrid: TRxDBGrid;
    EdGrupo: TComboBox;
    DsConsulta: TDataSource;
    EdDsProduto: TEdit;
    BPesquisaProduto: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BInserirClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BAlteraClick(Sender: TObject);
    procedure DsShowProdutosStateChange(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure BAdd1Click(Sender: TObject);
    procedure BAdd2Click(Sender: TObject);
    procedure BRemove1Click(Sender: TObject);
    procedure BRemove2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBECdProdutoExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BPesquisaClick(Sender: TObject);
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure DBEGridDblClick(Sender: TObject);
    procedure DBEGridEnter(Sender: TObject);
    procedure DBEGridExit(Sender: TObject);
    procedure DBEGridKeyPress(Sender: TObject; var Key: Char);
    procedure BPesquisaProdutoClick(Sender: TObject);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FShowProdutos: TFShowProdutos;

implementation

uses UDataModule6, UPrincipal, UDataModule1, UConsSimpProduto,
  UDataModule3;

{$R *.dfm}

procedure TFShowProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFShowProdutos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFShowProdutos.BInserirClick(Sender: TObject);
begin
  DataModule6.IBDShowProdutos.Open;
  DataModule6.IBDShowProdutos.Insert;

  DataModule6.IBDShowProdutosDT_CADASTRO.AsDateTime := Date;
  DataModule6.IBDShowProdutosUSUARIOO.AsString := FPrincipal.usuario;
  DataModule6.IBDShowProdutosSITUACAO.AsString := 'A';
  DBESituacao.ItemIndex := 0;

  Image1.Picture.LoadFromFile('');
  Image2.Picture.LoadFromFile('');
  EdDsProduto.Clear;
  ActiveControl := DBECdProduto;
   
end;

procedure TFShowProdutos.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule6.IBDShowProdutos.Cancel;
 end;
end;

procedure TFShowProdutos.BConfirmarClick(Sender: TObject);
begin
      if DBECdProduto.Text = '' then
        begin
          MessageDlg('Produto obrigatório.',mtWarning,[mbok],0);
          DBECdProduto.SetFocus;
        end
      else
        if CbLinha.Text = '' then
          begin
          MessageDlg('Linha obrigatório.',mtWarning,[mbok],0);
          CbLinha.SetFocus;
          end
        else
          begin
          
           if CbLinha.ItemIndex = 0 then
            begin
               DataModule6.IBDShowProdutosCD_LINHA.AsInteger := 1;
            end
           else
           if CbLinha.ItemIndex = 1 then
            begin
               DataModule6.IBDShowProdutosCD_LINHA.AsInteger := 2;
            end
            else
           if CbLinha.ItemIndex = 2 then
            begin
               DataModule6.IBDShowProdutosCD_LINHA.AsInteger := 3;
            end;



            DataModule6.IBDShowProdutos.Post;
            DataModule1.IBTTransacao.CommitRetaining;

            if DataModule6.IBDShowProdutosSITUACAO.AsString = 'A' then
              begin
                DBESituacao.ItemIndex := 0
              end
            else
              begin
                 DBESituacao.ItemIndex := 1;
              end;

          end;
end;

procedure TFShowProdutos.BExcluirClick(Sender: TObject);
begin
if not DataModule6.IBDShowProdutos.IsEmpty then
  Begin
    if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
      Begin
        Image1.Picture.LoadFromFile('');
        Image2.Picture.LoadFromFile('');

        DataModule6.IBDShowProdutos.Delete;
        DataModule1.IBTTransacao.CommitRetaining;

        EdDsProduto.Clear;
      end;
  end;
end;

procedure TFShowProdutos.BAlteraClick(Sender: TObject);
begin
if DataModule6.IBDShowProdutos.IsEmpty then
 begin
  Showmessage ('Showroom não pode ser editado vazio');
 end
  else
    begin
      DataModule6.IBDShowProdutos.Edit;

      if DataModule6.IBDShowProdutosSITUACAO.AsString = 'A' then
              begin
                DBESituacao.ItemIndex := 0
              end
            else
              begin
                 DBESituacao.ItemIndex := 1;
              end;

    end;
end;

procedure TFShowProdutos.DsShowProdutosStateChange(Sender: TObject);
begin
if DataModule6.IBDShowProdutos.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAltera.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      TbConsulta.TabVisible := false;
      BAdd1.Enabled := true;
      BAdd2.Enabled := true;
      BRemove1.Enabled := true;
      BRemove2.Enabled := true;
      BPesquisaProduto.Enabled := true;
    end
  else
    begin
      BInserir.Enabled := true;
      BAltera.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      TbConsulta.TabVisible := true;
      BAdd1.Enabled := false;
      BAdd2.Enabled := false;
      BRemove1.Enabled := false;
      BRemove2.Enabled := false;
      BPesquisaProduto.Enabled := false
    end;

    if DataModule6.IBDShowProdutos.State in [dsinsert]then
      begin
        DBECdProduto.ReadOnly := false;
      end
    else
      begin
         DBECdProduto.ReadOnly := true;
      end;
end;

procedure TFShowProdutos.BSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFShowProdutos.BAdd1Click(Sender: TObject);
var
nomeImagem, caminho,caracter : String;
i : Integer;
begin
  if JanelaImagem.Execute then
  begin
  //pega somente o nome da imagem
    caminho := JanelaImagem.FileName;
    i := length(caminho);
    while (caminho[i] <> '\') do
      begin
        nomeImagem := caminho[i] + nomeImagem;
        i := i - 1;
      end;

    DataModule6.IBDShowProdutosIMAGEM_PEQ.Value := JanelaImagem.FileName;
    DataModule6.IBDShowProdutosNM_IMAGEM_PEQ.AsString := nomeImagem;
    Image1.Picture.LoadFromFile(JanelaImagem.FileName);
  end;

end;

procedure TFShowProdutos.BAdd2Click(Sender: TObject);
var
nomeImagem, caminho,caracter : String;
i : Integer;
begin
  if JanelaImagem.Execute then
  begin
  //pega somente o nome da imagem
    caminho := JanelaImagem.FileName;
    i := length(caminho);
    while (caminho[i] <> '\') do
      begin
        nomeImagem := caminho[i] + nomeImagem;
        i := i - 1;
      end;

    DataModule6.IBDShowProdutosIMAGEM_GRANDE.Value := JanelaImagem.FileName;
    DataModule6.IBDShowProdutosNM_IMAGEM_GRANDE.AsString := nomeImagem;
    Image2.Picture.LoadFromFile(JanelaImagem.FileName);
  end;

end;

procedure TFShowProdutos.BRemove1Click(Sender: TObject);
begin
if DataModule6.IBDShowProdutosIMAGEM_PEQ.AsString <> '' then
  begin
    if Application.MessageBox('Deseja excluir a imagem?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
      Begin
        Image1.Picture.LoadFromFile('');
        DataModule6.IBDShowProdutosIMAGEM_PEQ.AsString := '';
        DataModule6.IBDShowProdutosNM_IMAGEM_PEQ.AsString := '';
      end;
  end;
end;

procedure TFShowProdutos.BRemove2Click(Sender: TObject);
begin
if DataModule6.IBDShowProdutosIMAGEM_GRANDE.AsString <> '' then
  begin
    if Application.MessageBox('Deseja excluir a imagem?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
      Begin
        Image2.Picture.LoadFromFile('');
        DataModule6.IBDShowProdutosIMAGEM_GRANDE.AsString := '';
        DataModule6.IBDShowProdutosNM_IMAGEM_GRANDE.AsString := '';
      end;
  end;
end;

procedure TFShowProdutos.FormShow(Sender: TObject);
begin
  PaginaControle.ActivePageIndex := 0;
end;

procedure TFShowProdutos.DBECdProdutoExit(Sender: TObject);
begin
if DBECdProduto.Text <> '' then
begin
  if DataModule6.IBDShowProdutos.State in [dsinsert] then
    begin

      DataModule6.IBQExisteProdCadastrado.Close;
      DataModule6.IBQExisteProdCadastrado.ParamByName('pproduto').AsInteger := StrToInt(DBECdProduto.Text);
      DataModule6.IBQExisteProdCadastrado.Open;
      if DataModule6.IBQExisteProdCadastrado.IsEmpty then
        begin
           MessageDlg('Produto não está cadastrado em produtos.',mtWarning,[mbok],0);
           DBECdProduto.SetFocus;
           DBECdProduto.Clear;
           EdDsProduto.Clear;
        end
      else
        begin
          DataModule6.IBQExisteProduto.Close;
          DataModule6.IBQExisteProduto.ParamByName('pproduto').AsInteger := StrToInt(DBECdProduto.Text);
          DataModule6.IBQExisteProduto.Open;
          if not DataModule6.IBQExisteProduto.IsEmpty then
            begin
               MessageDlg('Produto já existente.',mtWarning,[mbok],0);
               DBECdProduto.SetFocus;
               DBECdProduto.Clear;
               EdDsProduto.Clear;
            end
          else
            begin
               EdDsProduto.Text := DataModule6.IBQExisteProdCadastradoDS_PRODUTO.AsString;
            end;
       end;
    end;
end;
end;

procedure TFShowProdutos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule6.IBDShowProdutos.State in [dsedit,dsinsert] then
  begin
   MessageDlg('Confirme ou Cancele os dados antes de fechar.',mtWarning,[mbok],0);
  end
 else
   canclose := true;
end;

procedure TFShowProdutos.BPesquisaClick(Sender: TObject);
var linha : Integer;
begin
     if FiltroPesquisa.ItemIndex = 0 then
      begin
        DataModule6.IBQConsShowProdutos.Close;
        DataModule6.IBQConsShowProdutos.SQL.Clear;
        DataModule6.IBQConsShowProdutos.SQL.Add('select show_p.*, linha.ds_linha, p.ds_produto');
        DataModule6.IBQConsShowProdutos.SQL.Add('from SHOW_PRODUTOS show_p');
        DataModule6.IBQConsShowProdutos.SQL.Add('inner join LINHA_PRODUTOS linha on linha.cd_linha = show_p.cd_linha');
        DataModule6.IBQConsShowProdutos.SQL.Add('inner join PRODUTO p on p.cd_produto = show_p.cd_produto');
        DataModule6.IBQConsShowProdutos.SQL.Add('order by show_p.cd_produto');
        DataModule6.IBQConsShowProdutos.Open;
      end
    else
     if (FiltroPesquisa.ItemIndex = 1) and (EdPesquisa.Text <> '') then
     begin
        DataModule6.IBQConsShowProdutos.Close;
        DataModule6.IBQConsShowProdutos.SQL.Clear;
        DataModule6.IBQConsShowProdutos.SQL.Add('select show_p.*, linha.ds_linha, p.ds_produto');
        DataModule6.IBQConsShowProdutos.SQL.Add('from SHOW_PRODUTOS show_p');
        DataModule6.IBQConsShowProdutos.SQL.Add('inner join LINHA_PRODUTOS linha on linha.cd_linha = show_p.cd_linha');
        DataModule6.IBQConsShowProdutos.SQL.Add('inner join PRODUTO p on p.cd_produto = show_p.cd_produto');
        DataModule6.IBQConsShowProdutos.SQL.Add('where show_p.cd_produto = :pproduto');
        DataModule6.IBQConsShowProdutos.SQL.Add('order by p.ds_produto');
        DataModule6.IBQConsShowProdutos.ParamByName('pproduto').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule6.IBQConsShowProdutos.Open;
     end
   else
     if FiltroPesquisa.ItemIndex = 2 then
        begin
          if EdGrupo.ItemIndex = 0 then
            linha := 1
          else
          if EdGrupo.ItemIndex = 1 then
            linha := 2
          else
          if EdGrupo.ItemIndex = 2 then
            linha := 3;


           DataModule6.IBQConsShowProdutos.Close;
        DataModule6.IBQConsShowProdutos.SQL.Clear;
        DataModule6.IBQConsShowProdutos.SQL.Add('select show_p.*, linha.ds_linha, p.ds_produto');
        DataModule6.IBQConsShowProdutos.SQL.Add('from SHOW_PRODUTOS show_p');
        DataModule6.IBQConsShowProdutos.SQL.Add('inner join LINHA_PRODUTOS linha on linha.cd_linha = show_p.cd_linha');
        DataModule6.IBQConsShowProdutos.SQL.Add('inner join PRODUTO p on p.cd_produto = show_p.cd_produto');
           DataModule6.IBQConsShowProdutos.SQL.Add('where show_p.cd_linha = :plinha');
           DataModule6.IBQConsShowProdutos.ParamByName('plinha').AsInteger := linha;
           DataModule6.IBQConsShowProdutos.SQL.Add('order by p.ds_produto');
           DataModule6.IBQConsShowProdutos.Open;
        end
     else
     if FiltroPesquisa.ItemIndex = 3 then
      begin
        DataModule6.IBQConsShowProdutos.Close;
        DataModule6.IBQConsShowProdutos.SQL.Clear;
        DataModule6.IBQConsShowProdutos.SQL.Add('select show_p.*, linha.ds_linha, p.ds_produto');
        DataModule6.IBQConsShowProdutos.SQL.Add('from SHOW_PRODUTOS show_p');
        DataModule6.IBQConsShowProdutos.SQL.Add('inner join LINHA_PRODUTOS linha on linha.cd_linha = show_p.cd_linha');
        DataModule6.IBQConsShowProdutos.SQL.Add('inner join PRODUTO p on p.cd_produto = show_p.cd_produto');
        DataModule6.IBQConsShowProdutos.SQL.Add('where p.ds_produto like' +QuotedStr('%'+EdPesquisa.Text+'%'));
        DataModule6.IBQConsShowProdutos.SQL.Add('order by p.ds_produto');
        DataModule6.IBQConsShowProdutos.Open;

      end;

end;

procedure TFShowProdutos.FiltroPesquisaClick(Sender: TObject);
begin
  if FiltroPesquisa.ItemIndex = 0 then
    begin
   DataModule6.IBQConsShowProdutos.Close;

       EdGrupo.Top := 0;
       EdGrupo.Left := 160;
       EdGrupo.Visible := false;

       EdPesquisa.Top := 32;
       EdPesquisa.Left := 160;
       EdPesquisa.Visible := False;

       BPesquisa.Click;

       BPesquisa.Left := 480;
       BPesquisa.Visible := false;
    end
  else
    if FiltroPesquisa.ItemIndex = 1 then
      begin
       DataModule6.IBQConsShowProdutos.Close;

       EdGrupo.Top := 0;
       EdGrupo.Left := 160;
       EdGrupo.Visible := false;

       EdPesquisa.Top := 32;
       EdPesquisa.Left := 160;
       EdPesquisa.Visible := true;

       BPesquisa.Left := 480;
       BPesquisa.Visible := true;

       EdPesquisa.SetFocus;
      end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
       DataModule6.IBQConsShowProdutos.Close;

       EdGrupo.Top := 32;
       EdGrupo.Left := 160;
       EdGrupo.Visible := true;

       EdPesquisa.Top := 0;
       EdPesquisa.Left := 160;
       EdPesquisa.Visible := false;

       BPesquisa.Left := 310;
       BPesquisa.Visible := true;

       EdGrupo.SetFocus;
      end
    else
    if FiltroPesquisa.ItemIndex = 3 then
      begin
       DataModule6.IBQConsShowProdutos.Close;

       EdGrupo.Top := 0;
       EdGrupo.Left := 160;
       EdGrupo.Visible := false;

       EdPesquisa.Top := 32;
       EdPesquisa.Left := 160;
       EdPesquisa.Visible := true;

       BPesquisa.Left := 480;
       BPesquisa.Visible := true;

       EdPesquisa.SetFocus;
      end;
end;

procedure TFShowProdutos.TbConsultaShow(Sender: TObject);
begin
  FiltroPesquisa.ItemIndex := 0;
  FiltroPesquisaClick(Sender);
end;

procedure TFShowProdutos.DBEGridDblClick(Sender: TObject);
begin
    DataModule6.IBDShowProdutos.Close;
    DataModule6.IBDShowProdutos.ParamByName('pproduto').AsInteger :=
    DataModule6.IBQConsShowProdutosCD_PRODUTO.AsInteger;
    DataModule6.IBDShowProdutos.Open;

    if DataModule6.IBDShowProdutosSITUACAO.AsString = 'A' then
      begin
        DBESituacao.ItemIndex := 0;
      end
    else
      begin
        DBESituacao.ItemIndex := 1;
      end;

    if DataModule6.IBDShowProdutosCD_LINHA.AsInteger = 1 then
      begin
        CbLinha.ItemIndex := 0;
      end
    else
    if DataModule6.IBDShowProdutosCD_LINHA.AsInteger = 2 then
      begin
        CbLinha.ItemIndex := 1;
      end
    else
    if DataModule6.IBDShowProdutosCD_LINHA.AsInteger = 3 then
      begin
        CbLinha.ItemIndex := 2;
      end
    else
    if DataModule6.IBDShowProdutosCD_LINHA.AsInteger = 4 then
      begin
        CbLinha.ItemIndex := 3;
      end;

    Image1.Picture.LoadFromFile(DataModule6.IBQConsShowProdutosIMAGEM_PEQ.AsString);
    Image2.Picture.LoadFromFile(DataModule6.IBQConsShowProdutosIMAGEM_GRANDE.AsString);

    EdDsProduto.Text := DataModule6.IBQConsShowProdutosDS_PRODUTO.AsString;

   PaginaControle.ActivePage := TbCadastro;

end;

procedure TFShowProdutos.DBEGridEnter(Sender: TObject);
begin
  KeyPreview := false;
end;

procedure TFShowProdutos.DBEGridExit(Sender: TObject);
begin
  KeyPreview := true;
end;

procedure TFShowProdutos.DBEGridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      DBEGridDblClick(Sender);
    end;
end;

procedure TFShowProdutos.BPesquisaProdutoClick(Sender: TObject);
begin
  FConsSimpProduto := TFConsSimpProduto.Create(Self);
    if FConsSimpProduto.ShowModal = mrOk then
      begin
       DBECdProduto.Field.Value := DataModule3.IBQConsProdutoCD_PRODUTO.AsInteger;
       EdDsProduto.Text := DataModule3.IBQConsProdutoDS_PRODUTO.AsString;
      end;
    FreeAndNil(FConsSimpProduto);
end;

procedure TFShowProdutos.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;

  EdPesquisa.MaxLength := 6;
end;

end.
