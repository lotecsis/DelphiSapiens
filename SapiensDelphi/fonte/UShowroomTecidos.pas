unit UShowroomTecidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, RbDrawCore, RbButton, StdCtrls, rxToolEdit,
  RXDBCtrl, DBCtrls, DB, Mask, ComCtrls, Grids, DBGrids;

type
  TFShowTecidos = class(TForm)
    PaginaControle: TPageControl;
    TbCadastro: TTabSheet;
    TbConsulta: TTabSheet;
    Label1: TLabel;
    DBECdTecido: TDBEdit;
    DsShowTecido: TDataSource;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEUsuario: TDBEdit;
    Label9: TLabel;
    DBESituacao: TDBComboBox;
    DBEData: TDBDateEdit;
    CbGrupo: TComboBox;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BInserirClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BAlteraClick(Sender: TObject);
    procedure DsShowTecidoStateChange(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure BAdd1Click(Sender: TObject);
    procedure BAdd2Click(Sender: TObject);
    procedure BRemove1Click(Sender: TObject);
    procedure BRemove2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBECdTecidoExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BPesquisaClick(Sender: TObject);
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure DBEGridDblClick(Sender: TObject);
    procedure DBEGridEnter(Sender: TObject);
    procedure DBEGridExit(Sender: TObject);
    procedure DBEGridKeyPress(Sender: TObject; var Key: Char);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FShowTecidos: TFShowTecidos;

implementation

uses UDataModule6, UPrincipal, UDataModule1;

{$R *.dfm}

procedure TFShowTecidos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFShowTecidos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFShowTecidos.BInserirClick(Sender: TObject);
begin
  DataModule6.IBDShowTecidos.Open;
  DataModule6.IBDShowTecidos.Insert;

  DataModule6.IBDShowTecidosDT_CADASTRO.AsDateTime := Date;
  DataModule6.IBDShowTecidosUSUARIOO.AsString := FPrincipal.usuario;
  DataModule6.IBDShowTecidosSITUACAO.AsString := 'A';
  DBESituacao.ItemIndex := 0;

  Image1.Picture.LoadFromFile('');
   Image2.Picture.LoadFromFile('');
  ActiveControl := DBECdTecido;


end;

procedure TFShowTecidos.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule6.IBDShowTecidos.Cancel;
 end;
end;

procedure TFShowTecidos.BConfirmarClick(Sender: TObject);
begin
      if DBECdTecido.Text = '' then
        begin
          MessageDlg('Tecido obrigatório.',mtWarning,[mbok],0);
          DBECdTecido.SetFocus;
        end
      else
        if CbGrupo.Text = '' then
          begin
          MessageDlg('Grupo obrigatório.',mtWarning,[mbok],0);
          CbGrupo.SetFocus;
          end
        else
          begin
          
           if CbGrupo.ItemIndex = 0 then
            begin
               DataModule6.IBDShowTecidosCD_GRUPO.AsInteger := 1;
            end
           else
            begin
               DataModule6.IBDShowTecidosCD_GRUPO.AsInteger := 2;
            end;


            DataModule6.IBDShowTecidos.Post;
            DataModule1.IBTTransacao.CommitRetaining;

            if DataModule6.IBDShowTecidosSITUACAO.AsString = 'A' then
              begin
                DBESituacao.ItemIndex := 0
              end
            else
              begin
                 DBESituacao.ItemIndex := 1;
              end;

          end;
end;

procedure TFShowTecidos.BExcluirClick(Sender: TObject);
begin
if not DataModule6.IBDShowTecidos.IsEmpty then
  Begin
    if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
      Begin
        Image1.Picture.LoadFromFile('');
        Image2.Picture.LoadFromFile('');

        DataModule6.IBDShowTecidos.Delete;
        DataModule1.IBTTransacao.CommitRetaining;
      end;
  end;
end;

procedure TFShowTecidos.BAlteraClick(Sender: TObject);
begin
if DataModule6.IBDShowTecidos.IsEmpty then
 begin
  Showmessage ('Showroom não pode ser editado vazio');
 end
  else
    begin
      DataModule6.IBDShowTecidos.Edit;

      if DataModule6.IBDShowTecidosSITUACAO.AsString = 'A' then
              begin
                DBESituacao.ItemIndex := 0
              end
            else
              begin
                 DBESituacao.ItemIndex := 1;
              end;

    end;
end;

procedure TFShowTecidos.DsShowTecidoStateChange(Sender: TObject);
begin
if DataModule6.IBDShowTecidos.State in [dsinsert,dsedit]then
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
    end;

    if DataModule6.IBDShowTecidos.State in [dsinsert]then
      begin
        DBECdTecido.ReadOnly := false;
      end
    else
      begin
         DBECdTecido.ReadOnly := true;
      end;
end;

procedure TFShowTecidos.BSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFShowTecidos.BAdd1Click(Sender: TObject);
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

    DataModule6.IBDShowTecidosIMAGEM_PEQ.Value := JanelaImagem.FileName;
    DataModule6.IBDShowTecidosNM_IMAGEM_PEQ.AsString := nomeImagem;
    Image1.Picture.LoadFromFile(JanelaImagem.FileName);
  end;

end;

procedure TFShowTecidos.BAdd2Click(Sender: TObject);
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

    DataModule6.IBDShowTecidosIMAGEM_GRANDE.Value := JanelaImagem.FileName;
    DataModule6.IBDShowTecidosNM_IMAGEM_GRANDE.AsString := nomeImagem;
    Image2.Picture.LoadFromFile(JanelaImagem.FileName);
  end;

end;

procedure TFShowTecidos.BRemove1Click(Sender: TObject);
begin
if DataModule6.IBDShowTecidosIMAGEM_PEQ.AsString <> '' then
  begin
    if Application.MessageBox('Deseja excluir a imagem?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
      Begin
        Image1.Picture.LoadFromFile('');
        DataModule6.IBDShowTecidosIMAGEM_PEQ.AsString := '';
        DataModule6.IBDShowTecidosNM_IMAGEM_PEQ.AsString := '';
      end;
  end;
end;

procedure TFShowTecidos.BRemove2Click(Sender: TObject);
begin
if DataModule6.IBDShowTecidosIMAGEM_GRANDE.AsString <> '' then
  begin
    if Application.MessageBox('Deseja excluir a imagem?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
      Begin
        Image2.Picture.LoadFromFile('');
        DataModule6.IBDShowTecidosIMAGEM_GRANDE.AsString := '';
        DataModule6.IBDShowTecidosNM_IMAGEM_GRANDE.AsString := '';
      end;
  end;
end;

procedure TFShowTecidos.FormShow(Sender: TObject);
begin
  PaginaControle.ActivePageIndex := 0;
end;

procedure TFShowTecidos.DBECdTecidoExit(Sender: TObject);
begin
if DBECdTecido.Text <> '' then
begin
  if DataModule6.IBDShowTecidos.State in [dsinsert] then
    begin
          DataModule6.IBQExisteTecido.Close;
          DataModule6.IBQExisteTecido.ParamByName('ptecido').AsInteger := StrToInt(DBECdTecido.Text);
          DataModule6.IBQExisteTecido.Open;
          if not DataModule6.IBQExisteTecido.IsEmpty then
            begin
               MessageDlg('Tecido já existente.',mtWarning,[mbok],0);
               DBECdTecido.SetFocus;
               DBECdTecido.Clear;
            end;
       end;
end;
end;

procedure TFShowTecidos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule6.IBDShowTecidos.State in [dsedit,dsinsert] then
  begin
   MessageDlg('Confirme ou Cancele os dados antes de fechar.',mtWarning,[mbok],0);
  end
 else
   canclose := true;
end;

procedure TFShowTecidos.BPesquisaClick(Sender: TObject);
var grupo : Integer;
begin
     if FiltroPesquisa.ItemIndex = 0 then
      begin
        DataModule6.IBQConsShowTecido.Close;
        DataModule6.IBQConsShowTecido.SQL.Clear;
        DataModule6.IBQConsShowTecido.SQL.Add('select show_t.*,gp_t.ds_grupo');
        DataModule6.IBQConsShowTecido.SQL.Add('from SHOW_TECIDOS show_t');
        DataModule6.IBQConsShowTecido.SQL.Add('inner join GRUPO_TECIDO gp_t on gp_t.cd_grupo = show_t.cd_grupo');
        DataModule6.IBQConsShowTecido.SQL.Add('order by show_t.cd_tecido');
        DataModule6.IBQConsShowTecido.Open;
      end
    else
     if (FiltroPesquisa.ItemIndex = 1) and (EdPesquisa.Text <> '') then
     begin
        DataModule6.IBQConsShowTecido.Close;
        DataModule6.IBQConsShowTecido.SQL.Clear;
        DataModule6.IBQConsShowTecido.SQL.Add('select show_t.*,gp_t.ds_grupo');
        DataModule6.IBQConsShowTecido.SQL.Add('from SHOW_TECIDOS show_t');
        DataModule6.IBQConsShowTecido.SQL.Add('inner join GRUPO_TECIDO gp_t on gp_t.cd_grupo = show_t.cd_grupo');
        DataModule6.IBQConsShowTecido.SQL.Add('where show_t.cd_tecido = :ptecido');
        DataModule6.IBQConsShowTecido.SQL.Add('order by show_t.cd_tecido');
        DataModule6.IBQConsShowTecido.ParamByName('ptecido').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule6.IBQConsShowTecido.Open;
     end
   else
     if FiltroPesquisa.ItemIndex = 2 then
        begin
          if EdGrupo.ItemIndex = 0 then
            grupo := 1
          else
            grupo := 2;

           DataModule6.IBQConsShowTecido.Close;
           DataModule6.IBQConsShowTecido.SQL.Clear;
           DataModule6.IBQConsShowTecido.SQL.Add('select show_t.*,gp_t.ds_grupo');
           DataModule6.IBQConsShowTecido.SQL.Add('from SHOW_TECIDOS show_t');
           DataModule6.IBQConsShowTecido.SQL.Add('inner join GRUPO_TECIDO gp_t on gp_t.cd_grupo = show_t.cd_grupo');
           DataModule6.IBQConsShowTecido.SQL.Add('where show_t.cd_grupo = :pgrupo');
           DataModule6.IBQConsShowTecido.ParamByName('pgrupo').AsInteger := grupo;
           DataModule6.IBQConsShowTecido.SQL.Add('order by show_t.cd_tecido');
           DataModule6.IBQConsShowTecido.Open;
        end;

end;

procedure TFShowTecidos.FiltroPesquisaClick(Sender: TObject);
begin
  if FiltroPesquisa.ItemIndex = 0 then
    begin
   DataModule6.IBQConsShowTecido.Close;

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
       DataModule6.IBQConsShowTecido.Close;

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
       DataModule6.IBQConsShowTecido.Close;

       EdGrupo.Top := 32;
       EdGrupo.Left := 160;
       EdGrupo.Visible := true;

       EdPesquisa.Top := 0;
       EdPesquisa.Left := 160;
       EdPesquisa.Visible := false;

       BPesquisa.Left := 310;
       BPesquisa.Visible := true;

       EdGrupo.SetFocus;
      end;
end;

procedure TFShowTecidos.TbConsultaShow(Sender: TObject);
begin
  FiltroPesquisa.ItemIndex := 0;
  FiltroPesquisaClick(Sender);
end;

procedure TFShowTecidos.DBEGridDblClick(Sender: TObject);
begin
    DataModule6.IBDShowTecidos.Close;
    DataModule6.IBDShowTecidos.ParamByName('ptecido').AsInteger :=
    DataModule6.IBQConsShowTecidoCD_TECIDO.AsInteger;
    DataModule6.IBDShowTecidos.Open;

    if DataModule6.IBDShowTecidosSITUACAO.AsString = 'A' then
      begin
        DBESituacao.ItemIndex := 0;
      end
    else
      begin
        DBESituacao.ItemIndex := 1;
      end;

    if DataModule6.IBDShowTecidosCD_GRUPO.AsInteger = 1 then
      begin
        CbGrupo.ItemIndex := 0;
      end
    else
      begin
        CbGrupo.ItemIndex := 1;
      end;

    Image1.Picture.LoadFromFile(DataModule6.IBQConsShowTecidoIMAGEM_PEQ.AsString);
    Image2.Picture.LoadFromFile(DataModule6.IBQConsShowTecidoIMAGEM_GRANDE.AsString);

   PaginaControle.ActivePage := TbCadastro;

end;

procedure TFShowTecidos.DBEGridEnter(Sender: TObject);
begin
  KeyPreview := false;
end;

procedure TFShowTecidos.DBEGridExit(Sender: TObject);
begin
  KeyPreview := true;
end;

procedure TFShowTecidos.DBEGridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      DBEGridDblClick(Sender);
    end;
end;

procedure TFShowTecidos.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;

      EdPesquisa.MaxLength := 6;
  end;
end;

end.
