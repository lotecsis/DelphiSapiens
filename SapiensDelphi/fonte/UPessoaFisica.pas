unit UPessoaFisica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons, rxToolEdit, jpeg;

type
  TFPessoaFi = class(TForm)
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
    PAtivo: TPanel;
    DSPessoa: TDataSource;
    Label9: TLabel;
    DBECodigo: TDBEdit;
    PaginaControleEnd: TPageControl;
    TbEndereco: TTabSheet;
    TbTelefones: TTabSheet;
    Label11: TLabel;
    DBECdCidade: TDBEdit;
    Label12: TLabel;
    DBERua: TDBEdit;
    Label13: TLabel;
    DBEBairro: TDBEdit;
    Label14: TLabel;
    DBECep: TDBEdit;
    Label15: TLabel;
    DBEComplemento: TDBEdit;
    EdDescCidade: TEdit;
    EdUf: TEdit;
    TbEmail: TTabSheet;
    TbContatos: TTabSheet;
    TbObservacoes: TTabSheet;
    Label17: TLabel;
    DBESituacao: TDBComboBox;
    Label19: TLabel;
    DBEData: TDBDateEdit;
    Label20: TLabel;
    DBUsuario: TDBEdit;
    BPesqCidade: TSpeedButton;
    DBEGridTel: TRxDBGrid;
    DSFones: TDataSource;
    DBEGridEmail: TRxDBGrid;
    DBEGridContatos: TRxDBGrid;
    DSContato: TDataSource;
    DSEmail: TDataSource;
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    FiltroPesquisa: TListBox;
    DBEGridPessoa: TRxDBGrid;
    DSConsPesFi: TDataSource;
    DBEGridAlerta: TRxDBGrid;
    DSAlertas: TDataSource;
    ImgAlerta: TImage;
    Label1: TLabel;
    DBENome: TDBEdit;
    DSPessoaFi: TDataSource;
    Label2: TLabel;
    DBERg: TDBEdit;
    Label3: TLabel;
    DBECpf: TDBEdit;
    Label4: TLabel;
    DBESexo: TDBComboBox;
    Label5: TLabel;
    DBEDtNascimento: TDBDateEdit;
    BAddFones: TRbButton;
    BRemoveFone: TRbButton;
    BRemoveEmail: TRbButton;
    BAddEmail: TRbButton;
    BAddContatos: TRbButton;
    BRemoveContatos: TRbButton;
    BAddAlertas: TRbButton;
    BRemoveAlerta: TRbButton;
    PBloqueado: TPanel;
    PObservacao: TPanel;
    EdPesquisa: TMaskEdit;
    procedure BSairClick(Sender: TObject);
    procedure DsFormulariosStateChange(Sender: TObject);
    procedure BInserirClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BAlterarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure DBEGrigEnter(Sender: TObject);
    procedure DBEGrigExit(Sender: TObject);
    procedure DBEGrigDblClick(Sender: TObject);
    procedure DBEGrigKeyPress(Sender: TObject; var Key: Char);
    procedure DBEGrigGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure DSPessoaJuStateChange(Sender: TObject);
    procedure DSPessoaStateChange(Sender: TObject);
    procedure BPesqCidadeClick(Sender: TObject);
    procedure DBECdCidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEGridPessoaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImgAlertaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEGridPessoaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEGridPessoaEnter(Sender: TObject);
    procedure DBEGridPessoaExit(Sender: TObject);
    procedure DBECpfExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BAddFonesClick(Sender: TObject);
    procedure BRemoveFoneClick(Sender: TObject);
    procedure BAddEmailClick(Sender: TObject);
    procedure BRemoveEmailClick(Sender: TObject);
    procedure BAddContatosClick(Sender: TObject);
    procedure BRemoveContatosClick(Sender: TObject);
    procedure BAddAlertasClick(Sender: TObject);
    procedure BRemoveAlertaClick(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure EdPesquisaExit(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    vl_cpf_ini, vl_cpf_sai : string;
  end;

var
  FPessoaFi: TFPessoaFi;
  imagem : string;
  nada : string;
  codigo : Integer;
implementation

uses UDataModule1, UDataModule2, UPrincipal, UConsSimpCidade, UFones,
  UEmail, UContatos, UAlertaPessoa, UDataModule5;

{$R *.dfm}

procedure TFPessoaFi.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFPessoaFi.DsFormulariosStateChange(Sender: TObject);
begin
if DataModule1.IBDFormularios.State in [dsinsert,dsedit]then
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

procedure TFPessoaFi.BInserirClick(Sender: TObject);
begin
DataModule2.IBDPessoa.Open;
DataModule2.IBDPessoaFi.Open;
DataModule2.IBDPessoa.Insert;
DataModule2.IBDPessoaFi.Insert;
DBEData.Date := Date;
DataModule2.IBDPessoaUSUARIO.AsString := FPrincipal.usuario;
DBENome.SetFocus;

 //pega ultimo codigo de pessoa
    DataModule2.IBQUltimaPessoa.Close;
    DataModule2.IBQUltimaPessoa.Open;
    if DataModule2.IBQUltimaPessoaULTIMO.AsInteger = 0 then
        DataModule2.IBDPessoaCD_PESSOA.AsInteger := 1
    else
        DataModule2.IBDPessoaCD_PESSOA.AsInteger :=
        DataModule2.IBQUltimaPessoaULTIMO.AsInteger;

   //pega ultimo codigo pessoa fisica
    DataModule2.IBQUltimaPessoaFi.Close;
    DataModule2.IBQUltimaPessoaFi.Open;
    if DataModule2.IBQUltimaPessoaFiULTIMO.AsInteger = 0 then
        DataModule2.IBDPessoaFiCD_PESSOA_FI.AsInteger := 1
    else
        DataModule2.IBDPessoaFiCD_PESSOA_FI.AsInteger :=
        DataModule2.IBQUltimaPessoaFiULTIMO.AsInteger;


  DataModule2.IBDPessoaFiCD_PESSOA.AsInteger :=
  DataModule2.IBDPessoaCD_PESSOA.AsInteger;

  //-------------------------------------
  //para limpar os campos da grid

  DataModule2.IBDFone.Close;
  DataModule2.IBDFone.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBDPessoaCD_PESSOA.AsInteger;
  DataModule2.IBDFone.Open;

  DataModule2.IBDEmail.Close;
  DataModule2.IBDEmail.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBDPessoaCD_PESSOA.AsInteger;
  DataModule2.IBDEmail.Open;

  DataModule2.IBDContatos.Close;
  DataModule2.IBDContatos.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBDPessoaCD_PESSOA.AsInteger;
  DataModule2.IBDContatos.Open;

  DataModule2.IBDAlertaPessoa.Close;
  DataModule2.IBDAlertaPessoa.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBDPessoaCD_PESSOA.AsInteger;
  DataModule2.IBDAlertaPessoa.Open;



end;

procedure TFPessoaFi.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
 {if not DataModule2.IBDEmail.IsEmpty then
  DataModule2.IBDEmail.Transaction.Rollback;
  
 if not DataModule2.IBDFone.IsEmpty then
  DataModule2.IBDFone.Transaction.Rollback;

  if not DataModule2.IBDContatos.IsEmpty then
  DataModule2.IBDContatos.Transaction.Rollback;

  if not DataModule2.IBDAlertaPessoa.IsEmpty then
  DataModule2.IBDAlertaPessoa.Transaction.Rollback; }

  DataModule2.IBDPessoa.Cancel;
  DataModule2.IBDPessoaFi.Cancel;
  DataModule1.IBTTransacao.Rollback;

  PAtivo.Color := clBtnFace;
  PAtivo.Caption := '';


 end;
end;

procedure TFPessoaFi.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule2.IBDPessoa.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
    
  if not DataModule2.IBDEmail.IsEmpty then
  DataModule2.IBDEmail.Transaction.Rollback;
  
 if not DataModule2.IBDFone.IsEmpty then
  DataModule2.IBDFone.Transaction.Rollback;

  if not DataModule2.IBDContatos.IsEmpty then
  DataModule2.IBDContatos.Transaction.Rollback;

  if not DataModule2.IBDAlertaPessoa.IsEmpty then
  DataModule2.IBDAlertaPessoa.Transaction.Rollback;

     DataModule2.IBDPessoa.Cancel;
     DataModule2.IBDPessoaFi.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFPessoaFi.BAlterarClick(Sender: TObject);
begin
if DataModule2.IBDPessoa.IsEmpty then
 begin
  Showmessage ('N�o pode ser editado vazio');
 end
  else
    begin
      DataModule2.IBDPessoa.Edit;
      DataModule2.IBDPessoaFi.Edit;

        vl_cpf_ini := DataModule2.IBDPessoaFiCPF.AsString;
    ///--------------------------------------------------------------------

            if DataModule2.IBDPessoaSITUACAO.AsString = 'A' then
              begin
                DBESituacao.ItemIndex := 0;
              end
            else
            if DataModule2.IBDPessoaSITUACAO.AsString = 'I' then
              begin
                DBESituacao.ItemIndex := 1;
              end;
     //-------------------------------------------------------


        if DataModule2.IBDPessoaFiSEXO.AsString = 'M' then
          begin
             DBESexo.ItemIndex := 0;
          end
        else
        if DataModule2.IBDPessoaFiSEXO.AsString = 'F' then
          begin
             DBESexo.ItemIndex := 1;
          end;
    end;
end;

procedure TFPessoaFi.BExcluirClick(Sender: TObject);
var exclui : Boolean;
begin
if not DataModule2.IBDPessoa.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
    exclui := true;

    //verifica se pf esta sendo usado em usuarios
     DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select u.cd_usuario');
     DataModule5.IBQSeExiste.SQL.Add('from USUARIO u');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('u.cd_pessoa_ju = :ppessoa');
     DataModule5.IBQSeExiste.ParamByName('ppessoa').AsInteger := DataModule2.IBDPessoaFiCD_PESSOA_FI.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
       Application.MessageBox('Pessoa est� relacionado em usu�rio'#13'e n�o pode ser exclu�do', 'Aviso ', MB_ICONWARNING+MB_OK);
       exclui := false;
      end;

      if exclui = true then
      begin

      DataModule2.IBQApagaFone.Close;
    DataModule2.IBQApagaFone.ParamByName('ppessoa').AsInteger :=
                                    StrToInt(DBECodigo.Text);
    DataModule2.IBQApagaFone.Open;


    DataModule2.IBQApagaEmail.Close;
    DataModule2.IBQApagaEmail.ParamByName('ppessoa').AsInteger :=
                                    StrToInt(DBECodigo.Text);
    DataModule2.IBQApagaEmail.Open;


    DataModule2.IBQApagaContato.Close;
    DataModule2.IBQApagaContato.ParamByName('ppessoa').AsInteger :=
                                    StrToInt(DBECodigo.Text);
    DataModule2.IBQApagaContato.Open;

    DataModule2.IBQApagaAlerta.Close;
    DataModule2.IBQApagaAlerta.ParamByName('ppessoa').AsInteger :=
                                    StrToInt(DBECodigo.Text);
    DataModule2.IBQApagaAlerta.Open;

      codigo := DataModule2.IBDPessoaCD_PESSOA.AsInteger;

      DataModule2.IBDPessoaFi.Delete;
     DataModule2.IBDPessoa.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

     //para limpar os campos da grid

    DataModule2.IBDFone.Close;
  DataModule2.IBDFone.ParamByName('ppessoa').AsInteger := codigo;
  DataModule2.IBDFone.Open;

  DataModule2.IBDEmail.Close;
  DataModule2.IBDEmail.ParamByName('ppessoa').AsInteger := codigo;
  DataModule2.IBDEmail.Open;

  DataModule2.IBDContatos.Close;
  DataModule2.IBDContatos.ParamByName('ppessoa').AsInteger := codigo;
  DataModule2.IBDContatos.Open;

  DataModule2.IBDAlertaPessoa.Close;
  DataModule2.IBDAlertaPessoa.ParamByName('ppessoa').AsInteger := codigo;
  DataModule2.IBDAlertaPessoa.Open;



     EdDescCidade.Text := '';
     EdUf.Text := '';


     PAtivo.Color := clBtnFace;
     PAtivo.Caption := '';


     ImgAlerta.Picture.LoadFromFile(nada);


    end;
    end;
  end
 else
  Begin
   Showmessage('N�o existe Registros a serem excluidos ou n�o foi feita a sele��o do registro !');

  end;
end;

procedure TFPessoaFi.BConfirmarClick(Sender: TObject);
begin
     if DBENome.Text = '' then
        begin
          MessageDlg('Campo Nome � obrigat�rio.',mtWarning,[mbok],0);
          DBENome.SetFocus;
        end
      else
        if DBERg.Text = '' then
          begin
          MessageDlg('Campo RG � obrigat�rio.',mtWarning,[mbok],0);
          DBERg.SetFocus;
          end
        else
        if DBECpf.Text = '' then
          begin
          MessageDlg('Campo CPF � obrigat�rio.',mtWarning,[mbok],0);
          DBECpf.SetFocus;
          end
        else
        if DBESexo.Text = '' then
          begin
          MessageDlg('Campo Sexo � obrigat�rio.',mtWarning,[mbok],0);
          DBESexo.SetFocus;
          end
        else
        if DBEDtNascimento.Text = '' then
          begin
          MessageDlg('Campo Data do Nascimento � obrigat�rio.',mtWarning,[mbok],0);
          DBEDtNascimento.SetFocus;
          end
        else
        if DBESituacao.Text = '' then
          begin
          MessageDlg('Campo Situa��o � obrigat�rio.',mtWarning,[mbok],0);
          DBESituacao.SetFocus;
          end
        else
        if DBERua.Text = '' then
          begin
          MessageDlg('Campo Rua � obrigat�rio.',mtWarning,[mbok],0);
          PaginaControleEnd.ActivePage := TbEndereco;
          DBERua.SetFocus;
          end
        else
        if DBEBairro.Text = '' then
          begin
          MessageDlg('Campo Bairro � obrigat�rio.',mtWarning,[mbok],0);
          PaginaControleEnd.ActivePage := TbEndereco;
          DBEBairro.SetFocus;
          end
        else
        if DBECep.Text = '' then
          begin
          MessageDlg('Campo Cep � obrigat�rio.',mtWarning,[mbok],0);
          PaginaControleEnd.ActivePage := TbEndereco;
          DBECep.SetFocus;
          end
        else
        if DBECdCidade.Text = '' then
          begin
          MessageDlg('Campo Cidade � obrigat�rio.',mtWarning,[mbok],0);
          PaginaControleEnd.ActivePage := TbEndereco;
          DBECdCidade.SetFocus;
          end
        else
          begin
            DataModule2.IBDPessoa.Post;
            DataModule2.IBDPessoaFi.Post;
            DataModule1.IBTTransacao.CommitRetaining;
     //--------------------------------------------------------------
            //colorir panels

            if DataModule2.IBDPessoaSITUACAO.AsString = 'A' then
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

 //---------------------------------------------------------------
            DataModule2.IBQExisteAlerta.Close;
            DataModule2.IBQExisteAlerta.ParamByName('ppessoa').AsInteger :=
            DataModule2.IBDPessoaCD_PESSOA.AsInteger;
            DataModule2.IBQExisteAlerta.Open;
            if not(DataModule2.IBQExisteAlerta.IsEmpty) then
              begin
                 ImgAlerta.Picture.LoadFromFile(imagem);
              end
            else
              begin
                  ImgAlerta.Picture.LoadFromFile('');
              end;


    ///--------------------------------------------------------------------

            if DataModule2.IBDPessoaSITUACAO.AsString = 'A' then
              begin
                DBESituacao.ItemIndex := 0;
              end
            else
            if DataModule2.IBDPessoaSITUACAO.AsString = 'I' then
              begin
                DBESituacao.ItemIndex := 1;
              end;
   //--------------------------------------------------------------

        if DataModule2.IBDPessoaFiSEXO.AsString = 'M' then
          begin
             DBESexo.ItemIndex := 0;
          end
        else
        if DataModule2.IBDPessoaFiSEXO.AsString = 'F' then
          begin
             DBESexo.ItemIndex := 1;
          end;

          end;
end;

procedure TFPessoaFi.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFPessoaFi.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
{if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end; }
end;

procedure TFPessoaFi.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule2.IBQConsPesFi.Close;

if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'Nome';
      EdPesquisa.MaxLength := 100;
      EdPesquisa.ReadOnly := false;
      EdPesquisa.SetFocus;

      EdPesquisa.Width := 315;
      EdPesquisa.EditMask := '';
      BPesquisa.Left := 480;
  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      LDescricaoPesquisa.Caption := 'C.P.F';

      EdPesquisa.MaxLength := 100;
      EdPesquisa.Width := 120;
      EdPesquisa.EditMask := '###.###.###-##;0;_';
      BPesquisa.Left := 280;

    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'R.G';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
         EdPesquisa.SetFocus;
         EdPesquisa.Width := 120;
         EdPesquisa.EditMask := '';
         BPesquisa.Left := 280;
      end
    else
    if FiltroPesquisa.ItemIndex = 3 then
      begin
         LDescricaoPesquisa.Caption := 'Cidade';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
         EdPesquisa.SetFocus;
         EdPesquisa.Width := 315;
      EdPesquisa.EditMask := '';
      BPesquisa.Left := 480;
      end
    else
    if FiltroPesquisa.ItemIndex = 4 then
      begin
         LDescricaoPesquisa.Caption := 'Contido no Nome';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
         EdPesquisa.SetFocus;
         EdPesquisa.Width := 315;
          EdPesquisa.EditMask := '';
          BPesquisa.Left := 480;
      end;
end;

procedure TFPessoaFi.BPesquisaClick(Sender: TObject);
begin
if (FiltroPesquisa.ItemIndex = 0) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsPesFi.Close;
    DataModule2.IBQConsPesFi.SQL.Clear;
    DataModule2.IBQConsPesFi.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pff.*');
    DataModule2.IBQConsPesFi.SQL.Add('from PESSOA p, PESSOA_FISICA pff, CIDADE c');
    DataModule2.IBQConsPesFi.SQL.Add('where p.cd_pessoa = pff.cd_pessoa and');
    DataModule2.IBQConsPesFi.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsPesFi.SQL.Add('pff.nm_pessoa = :pnome order by p.cd_pessoa');
    DataModule2.IBQConsPesFi.ParamByName('pnome').AsString := EdPesquisa.Text;
    DataModule2.IBQConsPesFi.Open;
    if DataModule2.IBQConsPesFi.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
  else
   if (FiltroPesquisa.ItemIndex = 1) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsPesFi.Close;
    DataModule2.IBQConsPesFi.SQL.Clear;
    DataModule2.IBQConsPesFi.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pff.*');
    DataModule2.IBQConsPesFi.SQL.Add('from PESSOA p, PESSOA_FISICA pff, CIDADE c');
    DataModule2.IBQConsPesFi.SQL.Add('where p.cd_pessoa = pff.cd_pessoa and');
    DataModule2.IBQConsPesFi.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsPesFi.SQL.Add('pff.cpf = :pcpf order by p.cd_pessoa');
    DataModule2.IBQConsPesFi.ParamByName('pcpf').AsString := EdPesquisa.Text;
    DataModule2.IBQConsPesFi.Open;
    if DataModule2.IBQConsPesFi.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end

    else
    if (FiltroPesquisa.ItemIndex = 2) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsPesFi.Close;
    DataModule2.IBQConsPesFi.SQL.Clear;
    DataModule2.IBQConsPesFi.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pff.*');
    DataModule2.IBQConsPesFi.SQL.Add('from PESSOA p, PESSOA_FISICA pff, CIDADE c');
    DataModule2.IBQConsPesFi.SQL.Add('where p.cd_pessoa = pff.cd_pessoa and');
    DataModule2.IBQConsPesFi.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsPesFi.SQL.Add('pff.rg = :prg');
    DataModule2.IBQConsPesFi.ParamByName('prg').AsString := EdPesquisa.Text;
    DataModule2.IBQConsPesFi.Open;
    if DataModule2.IBQConsPesFi.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
    else
    if (FiltroPesquisa.ItemIndex = 3) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsPesFi.Close;
    DataModule2.IBQConsPesFi.SQL.Clear;
    DataModule2.IBQConsPesFi.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pff.*');
    DataModule2.IBQConsPesFi.SQL.Add('from PESSOA p, PESSOA_FISICA pff, CIDADE c');
    DataModule2.IBQConsPesFi.SQL.Add('where p.cd_pessoa = pff.cd_pessoa and');
    DataModule2.IBQConsPesFi.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsPesFi.SQL.Add('c.nm_cidade = :pcidade order by p.cd_pessoa');
    DataModule2.IBQConsPesFi.ParamByName('pcidade').AsString := EdPesquisa.Text;
    DataModule2.IBQConsPesFi.Open;
    if DataModule2.IBQConsPesFi.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
    else
    if (FiltroPesquisa.ItemIndex = 4) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsPesFi.Close;
    DataModule2.IBQConsPesFi.SQL.Clear;
    DataModule2.IBQConsPesFi.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pff.*');
    DataModule2.IBQConsPesFi.SQL.Add('from PESSOA p, PESSOA_FISICA pff, CIDADE c');
    DataModule2.IBQConsPesFi.SQL.Add('where p.cd_pessoa = pff.cd_pessoa and');
    DataModule2.IBQConsPesFi.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsPesFi.SQL.Add('pff.nm_pessoa LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
    DataModule2.IBQConsPesFi.Open;
    if DataModule2.IBQConsPesFi.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end;

end;

procedure TFPessoaFi.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFPessoaFi.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFPessoaFi.DBEGrigDblClick(Sender: TObject);
begin
DataModule1.IBDFormularios.Close;
  DataModule1.IBDFormularios.ParamByName('pformulario').AsInteger :=
  DataModule1.IBQConsultaFormCD_FORMULARIO.AsInteger;
  DataModule1.IBDFormularios.Open;
  if (DataModule1.IBQConsultaForm.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;
end;

procedure TFPessoaFi.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFPessoaFi.DBEGrigGetCellParams(Sender: TObject; Field: TField;
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

procedure TFPessoaFi.DSPessoaJuStateChange(Sender: TObject);
begin
if DataModule2.IBDPessoaFi.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      BPesqCidade.Enabled := true;


    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      BPesqCidade.Enabled := false;


    end;
end;

procedure TFPessoaFi.DSPessoaStateChange(Sender: TObject);
begin
if DataModule2.IBDPessoa.State in [dsinsert,dsedit]then
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

procedure TFPessoaFi.BPesqCidadeClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpCidade, FConsSimpCidade);
  if FConsSimpCidade.ShowModal = mrOk then
    begin
      DataModule2.IBDPessoaCD_CIDADE.AsInteger := DataModule1.IBQConsultaCidadeCD_CIDADE.AsInteger;
      EdDescCidade.Text := DataModule1.IBQConsultaCidadeNM_CIDADE.AsString;
      EdUf.Text := DataModule1.IBQConsultaCidadeSIGLA_UF.AsString;
    end;
end;

procedure TFPessoaFi.DBECdCidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F5 then
BPesqCidade.Click;
end;

procedure TFPessoaFi.DBEGridPessoaDblClick(Sender: TObject);
begin
  DataModule2.IBDPessoa.Close;
  DataModule2.IBDPessoa.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBQConsPesFiCD_PESSOA.AsInteger;
  DataModule2.IBDPessoa.Open;

  DataModule2.IBDPessoaFi.Close;
  DataModule2.IBDPessoaFi.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBQConsPesFiCD_PESSOA_FI.AsInteger;
  DataModule2.IBDPessoaFi.Open;

  DataModule2.IBDFone.Close;
  DataModule2.IBDFone.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBQConsPesFiCD_PESSOA.AsInteger;
  DataModule2.IBDFone.Open;

  DataModule2.IBDEmail.Close;
  DataModule2.IBDEmail.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBQConsPesFiCD_PESSOA.AsInteger;
  DataModule2.IBDEmail.Open;

  DataModule2.IBDContatos.Close;
  DataModule2.IBDContatos.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBQConsPesFiCD_PESSOA.AsInteger;
  DataModule2.IBDContatos.Open;

  DataModule2.IBDAlertaPessoa.Close;
  DataModule2.IBDAlertaPessoa.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBQConsPesFiCD_PESSOA.AsInteger;
  DataModule2.IBDAlertaPessoa.Open;

  if (DataModule2.IBQConsPesFi.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;
  EdDescCidade.Text := DataModule2.IBQConsPesFiNM_CIDADE.AsString;
  EdUf.Text := DataModule2.IBQConsPesFiSIGLA_UF.AsString;

   //define cor dos panels de liberado

               if DataModule2.IBDPessoaSITUACAO.AsString = 'A' then
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


     //--------------------------------------------------------------
            DataModule2.IBQExisteAlerta.Close;
            DataModule2.IBQExisteAlerta.ParamByName('ppessoa').AsInteger :=
            DataModule2.IBDPessoaCD_PESSOA.AsInteger;
            DataModule2.IBQExisteAlerta.Open;
            if not(DataModule2.IBQExisteAlerta.IsEmpty) then
              begin
                 ImgAlerta.Picture.LoadFromFile(imagem);
              end
            else
              begin
                  ImgAlerta.Picture.LoadFromFile(nada);
              end;


    ///--------------------------------------------------------------------

            if DataModule2.IBDPessoaSITUACAO.AsString = 'A' then
              begin
                DBESituacao.ItemIndex := 0;
              end
            else
            if DataModule2.IBDPessoaSITUACAO.AsString = 'I' then
              begin
                DBESituacao.ItemIndex := 1;
              end;
    //-----------------------------------------------------

            if DataModule2.IBDPessoaFiSEXO.AsString = 'M' then
          begin
             DBESexo.ItemIndex := 0;
          end
        else
        if DataModule2.IBDPessoaFiSEXO.AsString = 'F' then
          begin
             DBESexo.ItemIndex := 1;
          end;



  end;

procedure TFPessoaFi.FormShow(Sender: TObject);
begin
imagem := 'C:\SysLider\icones\alerta.jpg';
nada := 'C:\SysLider\icones\nada.jpg';
ImgAlerta.Picture.LoadFromFile('');

DBECodigo.Clear;
DBENome.Clear;
DBERg.Clear;
DBECpf.Clear;
DBESexo.ItemIndex := -1;
DBEDtNascimento.Clear;
DBEData.Clear;
DBECdCidade.Clear;
DBERua.Clear;
DBEBairro.Clear;
DBECep.Clear;
DBEComplemento.Clear;
DBESituacao.ItemIndex := -1;
EdDescCidade.Clear;
EdUf.Clear;
DBUsuario.Clear;

     PAtivo.Color := clBtnFace;
     PAtivo.Caption := '';




end;

procedure TFPessoaFi.ImgAlertaClick(Sender: TObject);
begin
PaginaControleEnd.ActivePage := TbObservacoes;
end;

procedure TFPessoaFi.FormCreate(Sender: TObject);
begin
PaginaControle.ActivePageIndex := 0;
end;

procedure TFPessoaFi.DBEGridPessoaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGridPessoaDblClick(sender);
end;
end;

procedure TFPessoaFi.DBEGridPessoaEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFPessoaFi.DBEGridPessoaExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFPessoaFi.DBECpfExit(Sender: TObject);
var n1, n2,n3,n4,n5,n6,n7,n8,n9,d1,d2: integer;
digitado, calculado, num: string;
begin
if DBECpf.Field.AsString <> '' then
begin
  if Length(DBECpf.Field.AsString)< 11 then
    begin
      MessageDlg('Digitos inferior ao necess�rio!.',mtWarning,[mbok],0);
      DBECpf.SetFocus;
      Abort;
    end
 else
  begin

    num := DBECpf.Text;

    n1:=StrToInt(num[1]);
    n2:=StrToInt(num[2]);
    n3:=StrToInt(num[3]);
    n4:=StrToInt(num[4]);
    n5:=StrToInt(num[5]);
    n6:=StrToInt(num[6]);
    n7:=StrToInt(num[7]);
    n8:=StrToInt(num[8]);
    n9:=StrToInt(num[9]);

  if (n1 = n2) and (n2 = n3) and (n3 = n4) and (n4 = n5) and (n5= n6) and (n6 = n7) and (n7= n8) and (n8 = n9)
  then
    begin
      MessageDlg('CPF Inv�lido.',mtWarning,[mbok],0);
       DBECpf.SetFocus;
       Abort;
    end
  else

  if (n2 = n1+1) and (n3 = n2+1) and (n4 = n3+1) and (n5 = n4 +1) and (n6= n5+1) and (n7 = n6+1) and (n8= n7+1) and (n9 = n8+1)
  then
      begin
        MessageDlg('CPF Inv�lido.',mtWarning,[mbok],0);
       DBECpf.SetFocus;
       Abort;
      end
  else
  begin
  
      d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
      d1:=11-(d1 mod 11);
      if d1>=10 then d1:=0;

       d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
       d2:=11-(d2 mod 11);
      if d2>=10 then d2:=0;

       calculado:= IntToStr(d1)+IntToStr(d2);
       digitado:=num[10]+num[11];

      if calculado=digitado then

      else
        begin
          MessageDlg('CPF Inv�lido.',mtWarning,[mbok],0);
          DBECpf.SetFocus;
          Abort;
        end;
      end;
      vl_cpf_sai := DBECpf.Text;

      if vl_cpf_ini <> vl_cpf_sai then
      begin
      DataModule2.IBQValidaPessoaCpf.Close;
      DataModule2.IBQValidaPessoaCpf.ParamByName('pcpf').AsString := DBECpf.Text;
      DataModule2.IBQValidaPessoaCpf.Open;
      if not DataModule2.IBQValidaPessoaCpf.IsEmpty then
        begin
          if Application.MessageBox('Deseja Visualizar a Pessoa?', 'CPF j� existente! ', MB_ICONWARNING+MB_YESNO) = idyes then
          Begin
            FiltroPesquisa.ItemIndex := 1;
            FiltroPesquisaClick(Sender);
            EdPesquisa.Text := DBECpf.Text;
            EdPesquisaExit(Sender);
            DBEGridPessoaDblClick(Sender);
          end
        else
          begin
            DBECpf.SetFocus;
            DBECpf.Clear;
          end;
        end;

     end;
    end;
  end;
end;

procedure TFPessoaFi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFPessoaFi.BAddFonesClick(Sender: TObject);
begin
if (DataModule2.IBDPessoa.State in [dsInsert, dsedit]) then
   begin
       FFones := TFFones.Create(Self);
       DataModule2.IBDFone.Insert;

               if FFones.ShowModal = mrCancel then
                begin
                   DataModule2.IBDFone.Cancel;
                   FreeAndNil(FFones);
                    Abort;
                end
               else
                      begin
                        DataModule2.IBDFoneCD_PESSOA.AsInteger := DataModule2.IBDPessoaCD_PESSOA.AsInteger;

                        DataModule2.IBDFone.Post;
                        FFones.Close;
                        FreeAndNil(FFones);
                     end;
                 end;
              //end;
         // end;
end;

procedure TFPessoaFi.BRemoveFoneClick(Sender: TObject);
begin
if (DataModule2.IBDPessoa.State in [dsInsert, dsedit]) then
   begin
if not (DataModule2.IBDPessoa.IsEmpty) then
      begin
           if not DataModule2.IBDFone.IsEmpty then
             begin
              if messagedlg('Excluir Telefone',mtConfirmation,[mbYes, mbNo], 0) =  mrYes then
                begin
                    DataModule2.IBDFone.Delete;
                    //DataModule2.IBDFone.Transaction.CommitRetaining;
                end;

             end;
      end;
   end;
end;

procedure TFPessoaFi.BAddEmailClick(Sender: TObject);
begin
if (DataModule2.IBDPessoa.State in [dsInsert, dsedit]) then
   begin
       FEmail := TFEmail.Create(Self);
       DataModule2.IBDEmail.Insert;

               if FEmail.ShowModal = mrCancel then
                begin
                   DataModule2.IBDEmail.Cancel;
                   FreeAndNil(FEmail);
                    Abort;
                end
               else
                      begin
                        DataModule2.IBDEmailCD_PESSOA.AsInteger := DataModule2.IBDPessoaCD_PESSOA.AsInteger;

                        DataModule2.IBDEmail.Post;
                        FEmail.Close;
                        FreeAndNil(FEmail);
                     end;
                 end;
              //end;
         // end;
end;

procedure TFPessoaFi.BRemoveEmailClick(Sender: TObject);
begin
if (DataModule2.IBDPessoa.State in [dsInsert, dsedit]) then
   begin
if not (DataModule2.IBDPessoa.IsEmpty) then
      begin
           if not DataModule2.IBDEmail.IsEmpty then
             begin
              if messagedlg('Excluir Email',mtConfirmation,[mbYes, mbNo], 0) =  mrYes then
                begin
                    DataModule2.IBDEmail.Delete;
                    //DataModule2.IBDContatos.Transaction.CommitRetaining;
                end;

             end;
      end;
   end;
end;

procedure TFPessoaFi.BAddContatosClick(Sender: TObject);
begin
if (DataModule2.IBDPessoa.State in [dsInsert, dsedit]) then
   begin
       FContatos := TFContatos.Create(Self);
       DataModule2.IBDContatos.Insert;

               if FContatos.ShowModal = mrCancel then
                begin
                   DataModule2.IBDContatos.Cancel;
                   FreeAndNil(FContatos);
                    Abort;
                end
               else
                      begin
                        DataModule2.IBDContatosCD_PESSOA.AsInteger := DataModule2.IBDPessoaCD_PESSOA.AsInteger;

                        DataModule2.IBDContatos.Post;
                        FContatos.Close;
                        FreeAndNil(FContatos);
                     end;
                 end;
              //end;
         // end;
end;

procedure TFPessoaFi.BRemoveContatosClick(Sender: TObject);
begin
if (DataModule2.IBDPessoa.State in [dsInsert, dsedit]) then
   begin
if not (DataModule2.IBDPessoa.IsEmpty) then
      begin
           if not DataModule2.IBDContatos.IsEmpty then
             begin
              if messagedlg('Excluir Contato',mtConfirmation,[mbYes, mbNo], 0) =  mrYes then
                begin
                    DataModule2.IBDContatos.Delete;
                   // DataModule2.IBDContatos.Transaction.CommitRetaining;
                end;

             end;
      end;
   end;
end;

procedure TFPessoaFi.BAddAlertasClick(Sender: TObject);
begin
if (DataModule2.IBDPessoa.State in [dsInsert, dsedit]) then
   begin

       Application.CreateForm(TFAlertasPessoa, FAlertasPessoa);
       DataModule2.IBDAlertaPessoa.Insert;

               if FAlertasPessoa.ShowModal = mrCancel then
                begin
                   DataModule2.IBDAlertaPessoa.Cancel;
                    Abort;
                end
               else
                      begin
                        DataModule2.IBDAlertaPessoaCD_PESSOA.AsInteger := DataModule2.IBDPessoaCD_PESSOA.AsInteger;
                        DataModule2.IBDAlertaPessoaUSUARIOO.AsString := FPrincipal.usuario;
                        DataModule2.IBDAlertaPessoaDT_ALERTA.AsDateTime :=Date;
                        DataModule2.IBDAlertaPessoaHR_ALERTA.AsDateTime := Time;
                        DataModule2.IBDAlertaPessoa.Post;
                        FAlertasPessoa.Close;
                     end;
                 end;
end;

procedure TFPessoaFi.BRemoveAlertaClick(Sender: TObject);
begin
if (DataModule2.IBDPessoa.State in [dsInsert, dsedit]) then
   begin
if not (DataModule2.IBDPessoa.IsEmpty) then
      begin
           if not DataModule2.IBDAlertaPessoa.IsEmpty then
             begin
              if messagedlg('Excluir Alerta',mtConfirmation,[mbYes, mbNo], 0) =  mrYes then
                begin
                    DataModule2.IBDAlertaPessoa.Delete;
                   // DataModule2.IBDAlertaPessoa.Transaction.CommitRetaining;
                end;

             end;
    end;
   end;
end;

procedure TFPessoaFi.TbConsultaShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 4;
FiltroPesquisaClick(Sender);
end;

procedure TFPessoaFi.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;

end;

end.
