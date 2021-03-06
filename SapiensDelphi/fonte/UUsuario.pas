unit UUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons, rxToolEdit, RbRadioButton,
  RbProgressBar;

type
  TFUsuario = class(TForm)
    PaginaControle: TPageControl;
    TbImportacao: TTabSheet;
    TbConsulta: TTabSheet;
    DBEGrig: TRxDBGrid;
    DSGrid: TDataSource;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    TbManutencao: TTabSheet;
    Panel1: TPanel;
    BCancelar: TRbButton;
    BConfirmar: TRbButton;
    BAlterar: TRbButton;
    BExcluir: TRbButton;
    DBGrid1: TDBGrid;
    BImportar: TBitBtn;
    DsImportacao: TDataSource;
    Label1: TLabel;
    DBECodUsu: TDBEdit;
    DsManutencao: TDataSource;
    Label2: TLabel;
    DBENomUsu: TDBEdit;
    Label3: TLabel;
    DBESenUsu: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBELogUsu: TDBEdit;
    Label6: TLabel;
    DBENivAce: TDBEdit;
    CbSitUsu: TComboBox;
    BConsNivAce: TSpeedButton;
    LDsNivAce: TLabel;
    procedure BSairClick(Sender: TObject);
    procedure BInserirClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BAlterarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure DBEGrigEnter(Sender: TObject);
    procedure DBEGrigExit(Sender: TObject);
    procedure DBEGrigDblClick(Sender: TObject);
    procedure DBEGrigKeyPress(Sender: TObject; var Key: Char);
    procedure DBEGrigGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure EdPesquisaExit(Sender: TObject);
    procedure DSUsuarioStateChange(Sender: TObject);
    procedure BNivelClick(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BImportarClick(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure DsManutencaoStateChange(Sender: TObject);
    procedure TbManutencaoShow(Sender: TObject);
    procedure BConsNivAceClick(Sender: TObject);
    procedure DBENivAceExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuario: TFUsuario;

implementation

uses UNivelAcesso, UConsSimpNivelAcesso, Math,
  UDm;

{$R *.dfm}

procedure TFUsuario.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFUsuario.BInserirClick(Sender: TObject);
begin
dm.CadUsu_TR999Usu.Open;
dm.CadUsu_TR999Usu.Insert;

EdPesquisa.Clear;






end;

procedure TFUsuario.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  dm.CadUsu_TR999Usu.Cancel;
 end;
end;

procedure TFUsuario.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if dm.CadUsu_TR999Usu.State in [dsedit,dsinsert] then
  begin
   MessageDlg('Confirme ou Cancele os dados antes de fechar.',mtWarning,[mbok],0);
  end
 else
   canclose := true;
end;

procedure TFUsuario.BAlterarClick(Sender: TObject);
begin
if dm.CadUsu_TR999Usu.IsEmpty then
 begin
  Showmessage ('Usu�rio n�o pode ser editado vazio');
 end
  else
    begin
       dm.CadUsu_TR999Usu.Edit;
    end;
end;

procedure TFUsuario.BExcluirClick(Sender: TObject);
begin
if not DM.CadUsu_TR999Usu.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     DM.CadUsu_TR999Usu.Delete;
     EdPesquisa.Clear;
     CbSitUsu.ItemIndex := -1;
    end;
  end
 else
  Begin
   Showmessage('N�o existe Registros a serem excluidos ou n�o foi feita a sele��o do registro !');

  end;
end;

procedure TFUsuario.BConfirmarClick(Sender: TObject);
begin
  if DBELogUsu.Text = '' then
    begin
       Application.MessageBox('Campo Login Obrigat�rio!', 'Aviso', MB_ICONWARNING+MB_OK);
       DBELogUsu.SetFocus;
    end
  else
    if DBESenUsu.Text = '' then
      begin
        Application.MessageBox('Campo Senha Obrigat�rio!', 'Aviso', MB_ICONWARNING+MB_OK);
        DBESenUsu.SetFocus;
      end
  else
    if DBENivAce.Text = '' then
      begin
        Application.MessageBox('Campo N�vel de Acesso Obrigat�rio!', 'Aviso', MB_ICONWARNING+MB_OK);
        DBENivAce.SetFocus;
      end
  else
    begin
       if CbSitUsu.ItemIndex = 0 then
           dm.CadUsu_TR999UsuUSU_SITUSU.Value := 'A'
       else
           dm.CadUsu_TR999UsuUSU_SITUSU.Value := 'I';

       dm.CadUsu_TR999Usu.Post;
    end;

end;

procedure TFUsuario.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFUsuario.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFUsuario.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
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
         LDescricaoPesquisa.Caption := 'Nome';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end
  else
    if FiltroPesquisa.ItemIndex = 3 then
      begin
         LDescricaoPesquisa.Caption := 'N�vel de Acesso';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end
  else
    if FiltroPesquisa.ItemIndex = 4 then
      begin
         LDescricaoPesquisa.Caption := 'Grupo de Usu�rio';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end;
end;

procedure TFUsuario.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFUsuario.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFUsuario.DBEGrigDblClick(Sender: TObject);
begin
  dm.CadUsu_TR999Usu.Close;
  dm.CadUsu_TR999Usu.Parameters.ParamByName('codusu').Value :=
  dm.ConsUsu_TR999UsuUSU_CODUSU.Value;
  dm.CadUsu_TR999Usu.Open;

  //consulta o nivel de acesso do usuario
  dm.ConsUsu_TNivAce.Close;
  dm.ConsUsu_TNivAce.SQL.Clear;
  dm.ConsUsu_TNivAce.SQL.Add('select * from usu_tnivace');
  dm.ConsUsu_TNivAce.SQL.Add('where usu_codniv = :codniv');
  dm.ConsUsu_TNivAce.Parameters.ParamByName('codniv').Value := dm.CadUsu_TR999UsuUSU_CODNIV.Value;
  dm.ConsUsu_TNivAce.Open;
  LDsNivAce.Caption := dm.ConsUsu_TNivAceUSU_DESNIV.Value;

  //valida a combo da situa�ao
  if dm.CadUsu_TR999UsuUSU_SITUSU.Value = 'A' then
    CbSitUsu.ItemIndex := 0
  else
    CbSitUsu.ItemIndex := 1;

  PaginaControle.ActivePageIndex := 2;
end;

procedure TFUsuario.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFUsuario.DBEGrigGetCellParams(Sender: TObject; Field: TField;
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

procedure TFUsuario.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFUsuario.DSUsuarioStateChange(Sender: TObject);
begin
if dm.CadUsu_TR999Usu.State in [dsinsert,dsedit]then
    begin

      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      TbConsulta.TabVisible := false;
    end
  else
    begin
      
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      TbConsulta.TabVisible := true;
    end;
end;

procedure TFUsuario.BNivelClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpNivel, FConsSimpNivel);
if FConsSimpNivel.ShowModal = mrOk then
    begin



    end;
end;

procedure TFUsuario.TbConsultaShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 0;
FiltroPesquisaClick(sender);
EdPesquisaExit(sender);
end;

procedure TFUsuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFUsuario.BImportarClick(Sender: TObject);
begin
    dm.ConsR999Usu.Close;
    dm.ConsR999Usu.Open;
    
    dm.Client_R999Usu.Open;
    dm.Client_R999Usu.First;
     while not dm.Client_R999Usu.Eof do
      begin
        dm.Client_R999Usu.Delete;
      end;

    dm.ConsR999Usu.First;
    while not dm.ConsR999Usu.Eof do
      begin
         dm.ConsUsu_TR999Usu.Close;
         dm.ConsUsu_TR999Usu.SQL.Clear;
         dm.ConsUsu_TR999Usu.SQL.Add('select * from usu_tr999usu where usu_codusu = :codusu');
         dm.ConsUsu_TR999Usu.Parameters.ParamByName('codusu').Value := dm.ConsR999UsuCODUSU.Value;
         dm.ConsUsu_TR999Usu.Open;
         if dm.ConsUsu_TR999Usu.IsEmpty then
           begin
              dm.CadUsu_TR999Usu.Open;
              dm.CadUsu_TR999Usu.Insert;
              dm.CadUsu_TR999UsuUSU_CODUSU.Value := dm.ConsR999UsuCODUSU.AsInteger;
              dm.CadUsu_TR999UsuUSU_NOMUSU.Value := dm.ConsR999UsuNOMUSU.Value;
              dm.CadUsu_TR999Usu.Post;

              dm.Client_R999Usu.Open;
              dm.Client_R999Usu.Insert;
              dm.Client_R999UsuCODUSU.Value := dm.ConsR999UsuCODUSU.AsInteger;
              dm.Client_R999UsuNOMUSU.Value := dm.ConsR999UsuNOMUSU.Value;
              dm.Client_R999Usu.Post;
           end;

        dm.ConsR999Usu.Next;
      end;


end;

procedure TFUsuario.BPesquisaClick(Sender: TObject);
begin

  dm.ConsUsu_TR999Usu.Close;
  dm.ConsUsu_TR999Usu.SQL.Clear;
  dm.ConsUsu_TR999Usu.SQL.Add('select * from usu_tr999usu');
  if (FiltroPesquisa.ItemIndex = 1) and (EdPesquisa.Text <> '') then
    begin
       dm.ConsUsu_TR999Usu.SQL.Add('where');
       dm.ConsUsu_TR999Usu.SQL.Add('usu_codusu = :codusu');
       dm.ConsUsu_TR999Usu.Parameters.ParamByName('codusu').Value :=
                                       StrToInt(EdPesquisa.Text);

    end
  else
  if (FiltroPesquisa.ItemIndex = 2) then
    begin
       dm.ConsUsu_TR999Usu.SQL.Add('where');
       dm.ConsUsu_TR999Usu.SQL.Add('usu_nomusu LIKE'
                                                +QuotedStr('%'+EdPesquisa.Text+'%'));
    end;

      dm.ConsUsu_TR999Usu.SQL.Add('order by usu_codusu');
      dm.ConsUsu_TR999Usu.Open;

end;

procedure TFUsuario.DsManutencaoStateChange(Sender: TObject);
begin
  if dm.CadUsu_TR999Usu.State in [dsinsert,dsedit] then
    begin
        BCancelar.Enabled := true;
        BConfirmar.Enabled := true;
        BAlterar.Enabled := false;
        BExcluir.Enabled := false;
        BConsNivAce.Enabled := true;
    end
  else
    begin
        BCancelar.Enabled := false;
        BConfirmar.Enabled := false;
        BAlterar.Enabled := true;
        BExcluir.Enabled := true;
        BConsNivAce.Enabled := false;
    end;
end;

procedure TFUsuario.TbManutencaoShow(Sender: TObject);
begin
  if dm.CadUsu_TR999Usu.IsEmpty then
    CbSitUsu.ItemIndex := -1;
end;

procedure TFUsuario.BConsNivAceClick(Sender: TObject);
begin
   FConsSimpNivel := TFConsSimpNivel.Create(Self);
   if FConsSimpNivel.ShowModal = mrOk then
    begin
       dm.CadUsu_TR999UsuUSU_CODNIV.Value := dm.ConsUsu_TNivAceUSU_CODNIV.Value;
       LDsNivAce.Caption := dm.ConsUsu_TNivAceUSU_DESNIV.Value;
    end;
   FreeAndNil(FConsSimpNivel);
end;

procedure TFUsuario.DBENivAceExit(Sender: TObject);
begin
   if (dm.CadUsu_TR999Usu.State in [dsinsert,dsedit]) and
      (DBENivAce.Text <> '') then
      begin
        dm.ConsUsu_TNivAce.Close;
        dm.ConsUsu_TNivAce.SQL.Clear;
        dm.ConsUsu_TNivAce.SQL.Add('select * from usu_tnivace');
        dm.ConsUsu_TNivAce.SQL.Add('where usu_codniv = :codniv');
        dm.ConsUsu_TNivAce.Parameters.ParamByName('codniv').Value:= StrToInt(DBENivAce.Text);
        dm.ConsUsu_TNivAce.Open;
        if dm.ConsUsu_TNivAce.IsEmpty then
          begin
            ShowMessage('N�vel de Acesso N�o Encontrado!');
            DBENivAce.SetFocus;
            DBENivAce.Clear;
            LDsNivAce.Caption := '';
          end
        else
          begin
             LDsNivAce.Caption := dm.ConsUsu_TNivAceUSU_DESNIV.Value;
          end;
     end;
end;

end.
