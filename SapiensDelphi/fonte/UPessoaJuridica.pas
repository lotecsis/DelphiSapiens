unit UPessoaJuridica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons, rxToolEdit, jpeg, Menus,
  rxCurrEdit;

type
  TFPessoaJu = class(TForm)
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
    PBloqueado: TPanel;
    PAtivo: TPanel;
    Label1: TLabel;
    DBECgc: TDBEdit;
    DSPessoaJu: TDataSource;
    Label2: TLabel;
    DBEInscEstadual: TDBEdit;
    Label3: TLabel;
    DBERzSocial: TDBEdit;
    Label4: TLabel;
    DBENmFantasia: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBERamoAtiv: TDBComboBox;
    DBECliFor: TDBComboBox;
    DBELiberado: TDBComboBox;
    Label8: TLabel;
    DBECdRegiao: TDBEdit;
    BPesqRegiao: TSpeedButton;
    DSPessoa: TDataSource;
    Label9: TLabel;
    DBECodigo: TDBEdit;
    PObservacao: TPanel;
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
    DSConsGeral: TDataSource;
    DBEGridAlerta: TRxDBGrid;
    DSAlertas: TDataSource;
    ImgAlerta: TImage;
    BGeraCopia: TRbButton;
    PopGeraJuridica: TPopupMenu;
    PoCliente: TMenuItem;
    PoFornecedor: TMenuItem;
    PoRepresentante: TMenuItem;
    EdDsRegiao: TEdit;
    BRemoveContatos: TRbButton;
    BAddContatos: TRbButton;
    BAddEmail: TRbButton;
    BRemoveEmail: TRbButton;
    BAddFones: TRbButton;
    BRemoveFone: TRbButton;
    BAddAlertas: TRbButton;
    BRemoveAlerta: TRbButton;
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
    procedure DBEGridTelKeyPress(Sender: TObject; var Key: Char);
    procedure DBEGridEmailKeyPress(Sender: TObject; var Key: Char);
    procedure DBEGridPessoaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImgAlertaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEGridPessoaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEGridPessoaEnter(Sender: TObject);
    procedure DBEGridPessoaExit(Sender: TObject);
    procedure DBEInscEstadualKeyPress(Sender: TObject; var Key: Char);
    procedure BPesqRegiaoClick(Sender: TObject);
    procedure DBECdRegiaoExit(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure DBECgcExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BGeraCopiaClick(Sender: TObject);
    procedure PoClienteClick(Sender: TObject);
    procedure PopGeraJuridicaPopup(Sender: TObject);
    procedure PoFornecedorClick(Sender: TObject);
    procedure PoRepresentanteClick(Sender: TObject);
    procedure dExit(Sender: TObject);
    procedure DBECdRegiaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BAddContatosClick(Sender: TObject);
    procedure BRemoveContatosClick(Sender: TObject);
    procedure BAddEmailClick(Sender: TObject);
    procedure BRemoveEmailClick(Sender: TObject);
    procedure BAddFonesClick(Sender: TObject);
    procedure BRemoveFoneClick(Sender: TObject);
    procedure BAddAlertasClick(Sender: TObject);
    procedure BRemoveAlertaClick(Sender: TObject);
    procedure EdPesquisaExit(Sender: TObject);
    //procedure EdPesquisaExit(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    vl_cnpj_ini, vl_cnpj_sai : string;
  end;

var
  FPessoaJu: TFPessoaJu;
  imagem : string;
  nada : string;
  codigo : Integer;
implementation

uses UDataModule1, UDataModule2, UPrincipal, UConsSimpCidade, UFones,
  UEmail, UContatos, UAlertaPessoa, UConsSimpRegiao, UDataModule5;

{$R *.dfm}

procedure TFPessoaJu.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFPessoaJu.DsFormulariosStateChange(Sender: TObject);
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

procedure TFPessoaJu.BInserirClick(Sender: TObject);
begin
DataModule2.IBDPessoa.Open;
DataModule2.IBDPessoaJu.Open;
DataModule2.IBDPessoa.Insert;
DataModule2.IBDPessoaJu.Insert;
DBEData.Date := Date;
DataModule2.IBDPessoaSITUACAO.AsString := 'A';
DataModule2.IBDPessoaJuBLOQUEADO.AsString := 'N';

DataModule2.IBDPessoaUSUARIO.AsString := FPrincipal.usuario;
DBERzSocial.SetFocus;

 //pega ultimo codigo de pessoa
    DataModule2.IBQUltimaPessoa.Close;
    DataModule2.IBQUltimaPessoa.Open;
    if DataModule2.IBQUltimaPessoaULTIMO.AsInteger = 0 then
        DataModule2.IBDPessoaCD_PESSOA.AsInteger := 1
    else
        DataModule2.IBDPessoaCD_PESSOA.AsInteger :=
        DataModule2.IBQUltimaPessoaULTIMO.AsInteger;

   //pega ultimo codigo pessoa juridica
    DataModule2.IBQUltimaPessoaJu.Close;
    DataModule2.IBQUltimaPessoaJu.Open;
    if DataModule2.IBQUltimaPessoaJuULTIMO.AsInteger = 0 then
        DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger := 1
    else
        DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger :=
        DataModule2.IBQUltimaPessoaJuULTIMO.AsInteger;


  DataModule2.IBDPessoaJuCD_PESSOA.AsInteger :=
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


  //=============================
      PAtivo.Color := clBtnFace;
     PAtivo.Caption := '';

     PObservacao.Color := clBtnFace;
     PObservacao.Caption := '';
 //===========================
 DBELiberado.ItemIndex := 1;
 DBESituacao.ItemIndex := 0;    

end;

procedure TFPessoaJu.BCancelarClick(Sender: TObject);
var i : Integer;
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
  DataModule2.IBDAlertaPessoa.Transaction.Rollback;}
  DBECgc.Enabled := true;

  DataModule2.IBDPessoa.Cancel;
  DataModule2.IBDPessoaJu.Cancel;
  DataModule1.IBTTransacao.Rollback;

  //limpa todos os campos edits
     for i := 0 to ComponentCount - 1 do
          begin
            if Components[i] is TEdit then
              begin
                 TEdit(Components[i]).Text := '';
              end;
          end;


     //limpa todos os campos panels
     for i := 0 to ComponentCount - 1 do
          begin
            if Components[i] is TPanel then
              begin
                 TPanel(Components[i]).Caption := '';
                 TPanel(Components[i]).Color := clBtnFace;
              end;
          end;
         ImgAlerta.Picture.LoadFromFile('');

 end;
end;

procedure TFPessoaJu.FormCloseQuery(Sender: TObject;
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
     DataModule2.IBDPessoaJu.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFPessoaJu.BAlterarClick(Sender: TObject);
begin
if DataModule2.IBDPessoa.IsEmpty then
 begin
  Showmessage ('N�o pode ser editado vazio');
 end
  else
    begin
      DataModule2.IBDPessoa.Edit;
      DataModule2.IBDPessoaJu.Edit;

      //atribi o numero do cnpj
      vl_cnpj_ini := DataModule2.IBDPessoaJuCGC.AsString;

      //-----------------------------------------------------------------
              if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'C' then
                begin
                  DBECliFor.ItemIndex := 0;
                end
              else
              if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'F' then
                begin
                  DBECliFor.ItemIndex := 1;
                end
              else
              if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'R' then
                begin
                  DBECliFor.ItemIndex := 2;
                end;
      //--------------------------------------------------------------

              if DataModule2.IBDPessoaJuBLOQUEADO.AsString = 'S' then
                 begin
                 DBELiberado.ItemIndex := 0;
                 end
              else
              if DataModule2.IBDPessoaJuBLOQUEADO.AsString = 'N' then
                 begin
                  DBELiberado.ItemIndex := 1;
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

    end;
end;

procedure TFPessoaJu.BExcluirClick(Sender: TObject);
var i : Integer;
    exclui : Boolean;
begin
if not DataModule2.IBDPessoaJu.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     exclui := true;
     //verifica se esta sendo usada em pedido
     DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select ped.cd_pedido');
     DataModule5.IBQSeExiste.SQL.Add('from pedido ped');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('ped.cd_pessoa_ju = :ppessoa');
     DataModule5.IBQSeExiste.ParamByName('ppessoa').AsInteger := DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
       Application.MessageBox('Cliente est� relacionado em algum pedido'#13'e n�o pode ser exclu�do', 'Aviso ', MB_ICONWARNING+MB_OK);
       exclui := false;
      end;
      
     //verifica se representante esta sendo usado em pedido
     DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select ped.cd_pedido');
     DataModule5.IBQSeExiste.SQL.Add('from pedido ped');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('ped.cd_pessoa_usu = :ppessoa');
     DataModule5.IBQSeExiste.ParamByName('ppessoa').AsInteger := DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
       Application.MessageBox('Representante est� relacionado em algum pedido'#13'e n�o pode ser exclu�do', 'Aviso ', MB_ICONWARNING+MB_OK);
       exclui := false;
      end;

     //verifica se pessoa esta sendo usado em compra
     DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select comp.cd_pedido');
     DataModule5.IBQSeExiste.SQL.Add('from COMPRA comp');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('comp.cd_fornecedor = :ppessoa');
     DataModule5.IBQSeExiste.ParamByName('ppessoa').AsInteger := DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
       Application.MessageBox('Fornecedor est� relacionado em compra de mat�ria prima'#13'e n�o pode ser exclu�do', 'Aviso ', MB_ICONWARNING+MB_OK);
       exclui := false;
      end;

      //verifica se fornecedor esta sendo usado em mt_prima_nf
     DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select mt_nf.cd_prima_nf');
     DataModule5.IBQSeExiste.SQL.Add('from MT_PRIMA_NF mt_nf');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('mt_nf.cd_fornecedor = :ppessoa');
     DataModule5.IBQSeExiste.ParamByName('ppessoa').AsInteger := DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
       Application.MessageBox('Fornecedor est� relacionado em Mat�ria Prima Nf'#13'e n�o pode ser exclu�do', 'Aviso ', MB_ICONWARNING+MB_OK);
       exclui := false;
      end;

       //verifica se pj esta sendo usado em usuarios
     DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select u.cd_usuario');
     DataModule5.IBQSeExiste.SQL.Add('from USUARIO u');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('u.cd_pessoa_ju = :ppessoa');
     DataModule5.IBQSeExiste.ParamByName('ppessoa').AsInteger := DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger;
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

      //verifica se a pesseoa esta sendo usado por alguma pessoa juridica
      DataModule5.IBQSeExiste.Close;
      DataModule5.IBQSeExiste.SQL.Clear;
      DataModule5.IBQSeExiste.SQL.Add('select pj.cd_pessoa_ju');
      DataModule5.IBQSeExiste.SQL.Add('from PESSOA_JURIDICA pj');
      DataModule5.IBQSeExiste.SQL.Add('where');
      DataModule5.IBQSeExiste.SQL.Add('pj.cd_pessoa = :ppessoa');
      DataModule5.IBQSeExiste.ParamByName('ppessoa').AsInteger := DataModule2.IBDPessoaJuCD_PESSOA.AsInteger;
      DataModule5.IBQSeExiste.Open;
      if DataModule5.IBQSeExiste.IsEmpty then
        begin
          DataModule2.IBDPessoa.Delete;
        end;


      DataModule2.IBDPessoaJu.Delete;
     DataModule1.IBTTransacao.Commit;

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

     PBloqueado.Color := clBtnFace;
     PBloqueado.Caption := '';

     PAtivo.Color := clBtnFace;
     PAtivo.Caption := '';

     PObservacao.Color := clBtnFace;
     PObservacao.Caption := '';

     ImgAlerta.Picture.LoadFromFile(nada);


     //limpa todos os campos DBEedits
     for i := 0 to ComponentCount - 1 do
          begin
            if Components[i] is TDBEdit then
              begin
                 TDBEdit(Components[i]).Text := '';
              end;
          end;

    //limpa todos os campos edits
     for i := 0 to ComponentCount - 1 do
          begin
            if Components[i] is TEdit then
              begin
                 TEdit(Components[i]).Text := '';
              end;
          end;

    end;
   end;
  end
 else
  Begin
   Showmessage('N�o existe Registros a serem excluidos ou n�o foi feita a sele��o do registro !');

  end;

end;

procedure TFPessoaJu.BConfirmarClick(Sender: TObject);
begin
     if DBERzSocial.Text = '' then
        begin
          MessageDlg('Campo Raz�o Social � obrigat�rio.',mtWarning,[mbok],0);
          DBERzSocial.SetFocus;
        end
      else
        if DBENmFantasia.Text = '' then
          begin
          MessageDlg('Campo Nome Fantasia � obrigat�rio.',mtWarning,[mbok],0);
          DBENmFantasia.SetFocus;
          end
        else
        if DBEInscEstadual.Text = '' then
          begin
          MessageDlg('Campo Inscri��o Estadual � obrigat�rio.',mtWarning,[mbok],0);
          DBEInscEstadual.SetFocus;
          end
        else
        if DBECgc.Text = '' then
          begin
          MessageDlg('Campo C.G.C � obrigat�rio.',mtWarning,[mbok],0);
          DBECgc.SetFocus;
          end
        else
        if DBERamoAtiv.Text = '' then
          begin
          MessageDlg('Campo Ramo de Atividade � obrigat�rio.',mtWarning,[mbok],0);
          DBERamoAtiv.SetFocus;
          end
        else
        if DBECliFor.Text = '' then
          begin
          MessageDlg('Campo Defini��o � obrigat�rio.',mtWarning,[mbok],0);
          DBECliFor.SetFocus;
          end
        else
        if DBECdRegiao.Text = '' then
          begin
          MessageDlg('Campo Regi�o � obrigat�rio.',mtWarning,[mbok],0);
          DBECdRegiao.SetFocus;
          end
        else
        if DBELiberado.Text = '' then
          begin
          MessageDlg('Campo Liberado? � obrigat�rio.',mtWarning,[mbok],0);
          DBELiberado.SetFocus;
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
            DBECgc.Enabled := true;

            DataModule2.IBDPessoa.Post;
            DataModule2.IBDPessoaJu.Post;
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

              if DataModule2.IBDPessoaJuBLOQUEADO.AsString = 'N' then
             begin
              PBloqueado.Color := $003DDF20;
              PBloqueado.Font.Color := clWhite;
              PBloqueado.Caption := 'LIBERADO';
             end
            else
              begin
                PBloqueado.Color := clRed;
                PBloqueado.Font.Color := clYellow;
                PBloqueado.Caption := 'BLOQUEADO';
              end;

          if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'C' then
            begin
            PObservacao.Color := clYellow;
            PObservacao.Font.Color := clGray;
            PObservacao.Caption := 'CLIENTE';
            end
            else
            if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'F' then
              begin
                PObservacao.Color := $00FF8080;
                PObservacao.Font.Color := clBlack;
                PObservacao.Caption := 'FORNECEDOR';
              end
            else
            if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'R' then
              begin
                PObservacao.Color := $00FFFF80;
                PObservacao.Font.Color := clGray;
                PObservacao.Caption := 'REPRESENTANTE';
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
                  ImgAlerta.Picture.LoadFromFile(nada);
              end;
   //-----------------------------------------------------------------
              if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'C' then
                begin
                  DBECliFor.ItemIndex := 0;
                end
              else
              if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'F' then
                begin
                  DBECliFor.ItemIndex := 1;
                end
              else
              if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'R' then
                begin
                  DBECliFor.ItemIndex := 2;
                end;
      //--------------------------------------------------------------

              if DataModule2.IBDPessoaJuBLOQUEADO.AsString = 'S' then
                 begin
                 DBELiberado.ItemIndex := 0;
                 end
              else
              if DataModule2.IBDPessoaJuBLOQUEADO.AsString = 'N' then
                 begin
                  DBELiberado.ItemIndex := 1;
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

            ActiveControl := BInserir;
          end;
end;

procedure TFPessoaJu.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFPessoaJu.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
{if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end; }
end;

procedure TFPessoaJu.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule2.IBQConsGeralPessoa.Close;
if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'Raz�o Social';
      EdPesquisa.MaxLength := 100;
      EdPesquisa.ReadOnly := false;
      EdPesquisa.EditMask := '';

      EdPesquisa.Left := 165;
      EdPesquisa.Width := 305;
      BPesquisa.Left := 480;
      EdPesquisa.SetFocus;

  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      LDescricaoPesquisa.Caption := 'Fantasia';
      EdPesquisa.ReadOnly := false;
      EdPesquisa.MaxLength := 100;
      EdPesquisa.EditMask := '';

      EdPesquisa.Left := 165;
      EdPesquisa.Width := 305;
      BPesquisa.Left := 480;
      EdPesquisa.SetFocus;
    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'C.N.P.J';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
         EdPesquisa.EditMask := '##.###.###/####-##;0;_';

         EdPesquisa.Left := 165;
        EdPesquisa.Width := 125;
        BPesquisa.Left := 290;
        EdPesquisa.SetFocus;
      end
    else
    if FiltroPesquisa.ItemIndex = 3 then
      begin
         LDescricaoPesquisa.Caption := 'Cidade';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
         EdPesquisa.EditMask := '';

         EdPesquisa.Left := 165;
        EdPesquisa.Width := 305;
        BPesquisa.Left := 480;
        EdPesquisa.SetFocus;
      end
    else
    if FiltroPesquisa.ItemIndex = 4 then
      begin
         LDescricaoPesquisa.Caption := 'Contido na Raz�o Social';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
         EdPesquisa.EditMask := '';

         EdPesquisa.Left := 165;
        EdPesquisa.Width := 305;
        BPesquisa.Left := 480;
        EdPesquisa.SetFocus;
      end
      else
    if FiltroPesquisa.ItemIndex = 5 then
      begin
         LDescricaoPesquisa.Caption := 'Contido na Fantasia';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
         EdPesquisa.EditMask := '';

         EdPesquisa.Left := 165;
         EdPesquisa.Width := 305;
         BPesquisa.Left := 480;
         EdPesquisa.SetFocus;
      end;
end;

procedure TFPessoaJu.BPesquisaClick(Sender: TObject);
begin
if (FiltroPesquisa.ItemIndex = 0) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsGeralPessoa.Close;
    DataModule2.IBQConsGeralPessoa.SQL.Clear;
    DataModule2.IBQConsGeralPessoa.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pf.*');
    DataModule2.IBQConsGeralPessoa.SQL.Add('from PESSOA p, PESSOA_JURIDICA pf, CIDADE c');
    DataModule2.IBQConsGeralPessoa.SQL.Add('where p.cd_pessoa = pf.cd_pessoa and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.rz_social = :psocial order by p.cd_pessoa');
    DataModule2.IBQConsGeralPessoa.ParamByName('psocial').AsString := EdPesquisa.Text;
    DataModule2.IBQConsGeralPessoa.Open;
    if DataModule2.IBQConsGeralPessoa.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
  else
   if (FiltroPesquisa.ItemIndex = 1) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsGeralPessoa.Close;
    DataModule2.IBQConsGeralPessoa.SQL.Clear;
    DataModule2.IBQConsGeralPessoa.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pf.*');
    DataModule2.IBQConsGeralPessoa.SQL.Add('from PESSOA p, PESSOA_JURIDICA pf, CIDADE c');
    DataModule2.IBQConsGeralPessoa.SQL.Add('where p.cd_pessoa = pf.cd_pessoa and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.nm_fantazia = :pfantasia order by p.cd_pessoa');
    DataModule2.IBQConsGeralPessoa.ParamByName('pfantasia').AsString := EdPesquisa.Text;
    DataModule2.IBQConsGeralPessoa.Open;
    if DataModule2.IBQConsGeralPessoa.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end

    else
    if (FiltroPesquisa.ItemIndex = 2) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsGeralPessoa.Close;
    DataModule2.IBQConsGeralPessoa.SQL.Clear;
    DataModule2.IBQConsGeralPessoa.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pf.*');
    DataModule2.IBQConsGeralPessoa.SQL.Add('from PESSOA p, PESSOA_JURIDICA pf, CIDADE c');
    DataModule2.IBQConsGeralPessoa.SQL.Add('where p.cd_pessoa = pf.cd_pessoa and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.cgc = :pcgc');
    DataModule2.IBQConsGeralPessoa.ParamByName('pcgc').AsString := EdPesquisa.Text;
    DataModule2.IBQConsGeralPessoa.Open;
    if DataModule2.IBQConsGeralPessoa.IsEmpty then
      begin
        //ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
    else
    if (FiltroPesquisa.ItemIndex = 3) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsGeralPessoa.Close;
    DataModule2.IBQConsGeralPessoa.SQL.Clear;
    DataModule2.IBQConsGeralPessoa.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pf.*');
    DataModule2.IBQConsGeralPessoa.SQL.Add('from PESSOA p, PESSOA_JURIDICA pf, CIDADE c');
    DataModule2.IBQConsGeralPessoa.SQL.Add('where p.cd_pessoa = pf.cd_pessoa and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('c.nm_cidade = :pcidade order by p.cd_pessoa');
    DataModule2.IBQConsGeralPessoa.ParamByName('pcidade').AsString := EdPesquisa.Text;
    DataModule2.IBQConsGeralPessoa.Open;
    if DataModule2.IBQConsGeralPessoa.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
    else
    if (FiltroPesquisa.ItemIndex = 4) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsGeralPessoa.Close;
    DataModule2.IBQConsGeralPessoa.SQL.Clear;
    DataModule2.IBQConsGeralPessoa.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pf.*');
    DataModule2.IBQConsGeralPessoa.SQL.Add('from PESSOA p, PESSOA_JURIDICA pf, CIDADE c');
    DataModule2.IBQConsGeralPessoa.SQL.Add('where p.cd_pessoa = pf.cd_pessoa and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.rz_social LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
    DataModule2.IBQConsGeralPessoa.Open;
    if DataModule2.IBQConsGeralPessoa.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end

    else
    if (FiltroPesquisa.ItemIndex = 5) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsGeralPessoa.Close;
    DataModule2.IBQConsGeralPessoa.SQL.Clear;
    DataModule2.IBQConsGeralPessoa.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pf.*');
    DataModule2.IBQConsGeralPessoa.SQL.Add('from PESSOA p, PESSOA_JURIDICA pf, CIDADE c');
    DataModule2.IBQConsGeralPessoa.SQL.Add('where p.cd_pessoa = pf.cd_pessoa and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.nm_fantazia LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
    DataModule2.IBQConsGeralPessoa.Open;
    if DataModule2.IBQConsGeralPessoa.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end;

end;

procedure TFPessoaJu.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFPessoaJu.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFPessoaJu.DBEGrigDblClick(Sender: TObject);
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

procedure TFPessoaJu.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFPessoaJu.DBEGrigGetCellParams(Sender: TObject; Field: TField;
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

procedure TFPessoaJu.DSPessoaJuStateChange(Sender: TObject);
begin
if DataModule2.IBDPessoaJu.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      BPesqCidade.Enabled := true;
      BPesqRegiao.Enabled := true;

    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      BPesqCidade.Enabled := false;
      BPesqRegiao.Enabled := false;
    end;

 if DataModule2.IBDPessoaJu.State in [dsedit]then
  begin
    DBECliFor.Enabled := false;
  end
 else
  begin
    DBECliFor.Enabled := true;
  end;


end;

procedure TFPessoaJu.DSPessoaStateChange(Sender: TObject);
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

procedure TFPessoaJu.BPesqCidadeClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpCidade, FConsSimpCidade);
  if FConsSimpCidade.ShowModal = mrOk then
    begin
      DataModule2.IBDPessoaCD_CIDADE.AsInteger := DataModule1.IBQConsultaCidadeCD_CIDADE.AsInteger;
      EdDescCidade.Text := DataModule1.IBQConsultaCidadeNM_CIDADE.AsString;
      EdUf.Text := DataModule1.IBQConsultaCidadeSIGLA_UF.AsString;
    end;
end;

procedure TFPessoaJu.DBECdCidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F5 then
BPesqCidade.Click;
end;

procedure TFPessoaJu.DBEGridTelKeyPress(Sender: TObject; var Key: Char);
begin
if (DataModule2.IBDPessoa.State in [dsInsert, dsedit]) then
   begin
     if key = '+' then
      begin
       Application.CreateForm(TFFones, FFones);
       DataModule2.IBDFone.Insert;

               if FFones.ShowModal = mrCancel then
                begin
                   DataModule2.IBDFone.Cancel;
                    Abort;
                end
               else
                  begin
                    if FFones.DBEDdd.Text = '' then
                      begin
                        showmessage('DDD � obrigat�rio!');
                        DataModule2.IBDFone.Cancel;
                        FFones.Close;
                        key := #0;
                        abort;
                      end
                     else
                    if FFones.DBENumero.Text = '' then
                      begin
                        showmessage('N�mero � obrigat�rio!');
                        showmessage('DDD � obrigat�rio!');
                        DataModule2.IBDFone.Cancel;
                        FFones.Close;
                        key := #0;
                        abort;
                      end
                     else
                    if FFones.DBEDescricao.Text = '' then
                      begin
                        showmessage('Descri��o � obrigat�rio!');
                        DataModule2.IBDFone.Cancel;
                        FFones.Close;
                        key := #0;
                        abort;
                      end
                    else
                      begin
                        DataModule2.IBDFoneCD_PESSOA.AsInteger := DataModule2.IBDPessoaCD_PESSOA.AsInteger;

                        DataModule2.IBDFone.Post;
                        FFones.Close;
                        key := #0;
                     end;
                 end;
              end;
          end;
  if not (DataModule2.IBDPessoa.IsEmpty) and (Key = '-') then
      begin
           if not DataModule2.IBDFone.IsEmpty then
             begin
              if messagedlg('Excluir Produto',mtConfirmation,[mbYes, mbNo], 0) =  mrYes then
                begin
                    DataModule2.IBDFone.Delete;
                    DataModule2.IBDFone.Transaction.CommitRetaining;
                    key := #0;
                end;

             end;
   end;
end;

procedure TFPessoaJu.DBEGridEmailKeyPress(Sender: TObject; var Key: Char);
begin
if (DataModule2.IBDPessoa.State in [dsInsert, dsedit]) then
   begin
     if key = '+' then
      begin
       Application.CreateForm(TFEmail, FEmail);
       DataModule2.IBDEmail.Insert;

               if FEmail.ShowModal = mrCancel then
                begin
                   DataModule2.IBDEmail.Cancel;
                    Abort;
                end
               else
                  begin
                    if FEmail.DBEEmail.Text = '' then
                      begin
                        showmessage('E-Mail � obrigat�rio!');
                        DataModule2.IBDEmail.Cancel;
                        FEmail.Close;
                        key := #0;
                        abort;
                      end
                    else
                      begin
                        DataModule2.IBDEmailCD_PESSOA.AsInteger := DataModule2.IBDPessoaCD_PESSOA.AsInteger;

                        DataModule2.IBDEmail.Post;
                        FEmail.Close;
                        key := #0;
                     end;
                 end;
              end;
          end;
  if not (DataModule2.IBDPessoa.IsEmpty) and (Key = '-') then
      begin
           if not DataModule2.IBDEmail.IsEmpty then
             begin
              if messagedlg('Excluir Produto',mtConfirmation,[mbYes, mbNo], 0) =  mrYes then
                begin
                    DataModule2.IBDEmail.Delete;
                    DataModule2.IBDEmail.Transaction.CommitRetaining;
                    key := #0;
                end;

             end;
   end;
end;

procedure TFPessoaJu.DBEGridPessoaDblClick(Sender: TObject);
begin
  DataModule2.IBDPessoa.Close;
  DataModule2.IBDPessoa.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBQConsGeralPessoaCD_PESSOA.AsInteger;
  DataModule2.IBDPessoa.Open;

  DataModule2.IBDPessoaJu.Close;
  DataModule2.IBDPessoaJu.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBQConsGeralPessoaCD_PESSOA_JU.AsInteger;
  DataModule2.IBDPessoaJu.Open;

  DataModule2.IBDFone.Close;
  DataModule2.IBDFone.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBQConsGeralPessoaCD_PESSOA.AsInteger;
  DataModule2.IBDFone.Open;

  DataModule2.IBDEmail.Close;
  DataModule2.IBDEmail.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBQConsGeralPessoaCD_PESSOA.AsInteger;
  DataModule2.IBDEmail.Open;

  DataModule2.IBDContatos.Close;
  DataModule2.IBDContatos.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBQConsGeralPessoaCD_PESSOA.AsInteger;
  DataModule2.IBDContatos.Open;

  DataModule2.IBDAlertaPessoa.Close;
  DataModule2.IBDAlertaPessoa.ParamByName('ppessoa').AsInteger :=
  DataModule2.IBQConsGeralPessoaCD_PESSOA.AsInteger;
  DataModule2.IBDAlertaPessoa.Open;

  if (DataModule2.IBQConsGeralPessoa.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;
  EdDescCidade.Text := DataModule2.IBQConsGeralPessoaNM_CIDADE.AsString;
  EdUf.Text := DataModule2.IBQConsGeralPessoaSIGLA_UF.AsString;

  DBECdRegiaoExit(Sender);
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

              if DataModule2.IBDPessoaJuBLOQUEADO.AsString = 'N' then
             begin
              PBloqueado.Color := $003DDF20;
              PBloqueado.Font.Color := clWhite;
              PBloqueado.Caption := 'LIBERADO';
             end
            else
              begin
                PBloqueado.Color := clRed;
                PBloqueado.Font.Color := clYellow;
                PBloqueado.Caption := 'BLOQUEADO';
              end;
    //--------------------------------------------------------

              if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'C' then
            begin
            PObservacao.Color := clYellow;
            PObservacao.Font.Color := clGray;
            PObservacao.Caption := 'CLIENTE';
            end
            else
            if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'F' then
              begin
                PObservacao.Color := $00FF8080;
                PObservacao.Font.Color := clBlack;
                PObservacao.Caption := 'FORNECEDOR';
              end
            else
            if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'R' then
              begin
                PObservacao.Color := $00FFFF80;
                PObservacao.Font.Color := clGray;
                PObservacao.Caption := 'REPRESENTANTE';
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
      //---------------------------------------------------------------

          //-----------------------------------------------------------------
              if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'C' then
                begin
                  DBECliFor.ItemIndex := 0;
                end
              else
              if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'F' then
                begin
                  DBECliFor.ItemIndex := 1;
                end
              else
              if DataModule2.IBDPessoaJuCLI_FOR.AsString = 'R' then
                begin
                  DBECliFor.ItemIndex := 2;
                end;
      //--------------------------------------------------------------

              if DataModule2.IBDPessoaJuBLOQUEADO.AsString = 'S' then
                 begin
                 DBELiberado.ItemIndex := 0;
                 end
              else
              if DataModule2.IBDPessoaJuBLOQUEADO.AsString = 'N' then
                 begin
                  DBELiberado.ItemIndex := 1;
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




  end;

procedure TFPessoaJu.FormShow(Sender: TObject);
begin
imagem := 'C:\SysLider\icones\alerta.jpg';
nada := 'C:\SysLider\icones\nada.jpg';
ImgAlerta.Picture.LoadFromFile(nada);
DataModule2.IBQConsGeralPessoa.Close;
PaginaControleEnd.ActivePageIndex := 0;
PaginaControle.ActivePageIndex := 0;

DataModule2.IBDPessoaJu.Close;

DBERzSocial.Clear;
DBENmFantasia.Clear;
DBEInscEstadual.Clear;
DBECgc.Clear;
DBEData.Clear;
DBERamoAtiv.ItemIndex := -1;
DBECliFor.ItemIndex := -1;
DBELiberado.ItemIndex := -1;
DBECdRegiao.Clear;
DBECodigo.Clear;
DBECdCidade.Clear;
DBERua.Clear;
DBEBairro.Clear;
DBECep.Clear;
DBEComplemento.Clear;
DBESituacao.ItemIndex := -1;
EdDescCidade.Clear;
EdUf.Clear;
DBUsuario.Clear;

     PBloqueado.Color := clBtnFace;
     PBloqueado.Caption := '';

     PAtivo.Color := clBtnFace;
     PAtivo.Caption := '';

     PObservacao.Color := clBtnFace;
     PObservacao.Caption := '';




end;

procedure TFPessoaJu.ImgAlertaClick(Sender: TObject);
begin
PaginaControleEnd.ActivePage := TbObservacoes;
end;

procedure TFPessoaJu.FormCreate(Sender: TObject);
begin
PaginaControle.ActivePageIndex := 0;
end;

procedure TFPessoaJu.DBEGridPessoaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGridPessoaDblClick(sender);
end;
end;

procedure TFPessoaJu.DBEGridPessoaEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFPessoaJu.DBEGridPessoaExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFPessoaJu.DBEInscEstadualKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TFPessoaJu.BPesqRegiaoClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpRegiao, FConsSimpRegiao);
 if FConsSimpRegiao.ShowModal = mrOk then
    begin
      DataModule2.IBDPessoaJuCD_REGIAO.AsInteger := DataModule2.IBQConsRegiaoCD_REGIAO.AsInteger;
      EdDsRegiao.Text := DataModule2.IBQConsRegiaoDS_REGIAO.AsString;
    end;
end;

procedure TFPessoaJu.DBECdRegiaoExit(Sender: TObject);
begin
       if DBECdRegiao.Text <> '' then
       begin

        DataModule2.IBQConsRegiao.Close;
        DataModule2.IBQConsRegiao.SQL.Clear;
        DataModule2.IBQConsRegiao.SQL.Add(' SELECT rg.*, tb_p.ds_tabela from');
        DataModule2.IBQConsRegiao.SQL.Add('REGIAO rg, TABELA_PRECO tb_p');
        DataModule2.IBQConsRegiao.SQL.Add('where rg.cd_tabela_preco = tb_p.cd_tabela and');
        DataModule2.IBQConsRegiao.SQL.Add('rg.cd_regiao = :pregiao');
        DataModule2.IBQConsRegiao.ParamByName('pregiao').AsInteger := StrToInt(DBECdRegiao.Text);
        DataModule2.IBQConsRegiao.Open;
        if DataModule2.IBQConsRegiao.IsEmpty then
          begin
            ShowMessage('N�o existe regi�o com este c�digo');
            DBECdRegiao.SetFocus;
            DBECdRegiao.Clear;
          end
        else
          begin
            EdDsRegiao.Text := DataModule2.IBQConsRegiaoDS_REGIAO.AsString;
          end;
        end;
end;

procedure TFPessoaJu.TbConsultaShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 4;
FiltroPesquisaClick(sender);
EdPesquisa.SetFocus;
end;

procedure TFPessoaJu.DBECgcExit(Sender: TObject);
var n1, n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,d2: integer;
digitado, calculado,num: string;
begin
if DataModule2.IBDPessoaJu.State in [dsinsert,dsedit] then
begin
if DBECgc.Field.AsString <> '' then
begin
if Length(DBECgc.Field.AsString) < 14 then
  begin
   MessageDlg('Numero de digitos inferior ao necess�rio! .',mtWarning,[mbok],0);
   DBECgc.SetFocus;
   Abort;
  end
else
begin
  num := DBECgc.Text;

  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[3]);
  n4:=StrToInt(num[4]);
  n5:=StrToInt(num[5]);
  n6:=StrToInt(num[6]);
  n7:=StrToInt(num[7]);
  n8:=StrToInt(num[8]);
  n9:=StrToInt(num[9]);
  n10:=StrToInt(num[10]);
  n11:=StrToInt(num[11]);
  n12:=StrToInt(num[12]);
  if (n1 = n2) and (n2 = n3) and (n3 = n4) and (n4 = n5) and (n5= n6) and (n6 = n7) and (n7= n8) and (n8 = n9) and (n9 = n10) and (n10 = n11) and (n11 = n12)
  then
    begin
      MessageDlg('C.N.P.J Inv�lido',mtWarning,[mbok],0);
      DBECgc.SetFocus;
      DBECgc.Clear;
      Abort;
    end
  else

  if (n2 = n1+1) and (n3 = n2+1) and (n4 = n3+1) and (n5 = n4 +1) and (n6= n5+1) and (n7 = n6+1) and (n8= n7+1) and (n9 = n8+1) and (n10 = n9+1) and (n11 = n10+1) and (n12 = n11+1)
  then
    begin
      MessageDlg('C.N.P.J Inv�lido',mtWarning,[mbok],0);
      DBECgc.SetFocus;
      DBECgc.Clear;
      Abort;
    end
  else
  begin

    d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
    d1:=11-(d1 mod 11);
    if d1>=10 then d1:=0;

      d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
      d2:=11-(d2 mod 11);
    if d2>=10 then d2:=0;

      calculado:=IntToStr(d1)+IntToStr(d2);
      digitado:=num[13]+num[14];

    if calculado=digitado then
    begin

    end
    else
      begin
        MessageDlg('C.N.P.J Inv�lido',mtWarning,[mbok],0);
        DBECgc.SetFocus;
        Abort;
      end;
   end;
  end;

  vl_cnpj_sai := DBECgc.Text;


  if vl_cnpj_ini <> vl_cnpj_sai then
  begin
  //valida o cnpj
   DataModule2.IBQValidaPessoaCnpj.Close;
   DataModule2.IBQValidaPessoaCnpj.ParamByName('pcgc').AsString := DBECgc.Text;
   DataModule2.IBQValidaPessoaCnpj.Open;
   if not DataModule2.IBQValidaPessoaCnpj.IsEmpty then
    begin
    if Application.MessageBox('Deseja Visualizar a Pessoa?', 'C.N.P.J j� existente! ', MB_ICONWARNING+MB_YESNO) = idyes then
    Begin
      EdPesquisa.Text := DBECgc.Text;
      FiltroPesquisa.ItemIndex := 2;
      EdPesquisaExit(Sender);
      DBEGridPessoaDblClick(Sender);
    end
   else
    begin
      DBECgc.SetFocus;
      DBECgc.Clear;
    end;
    end;
  end;
 end;
 end;
end;

procedure TFPessoaJu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFPessoaJu.BGeraCopiaClick(Sender: TObject);
begin
if DataModule2.IBDPessoaJu.IsEmpty then
 begin
  Application.MessageBox('Pessoa n�o pose ser copiado vazio', 'Aviso ', MB_ICONWARNING+MB_OK);
 end
  else
    begin
      //para poder chamar o popup no clic do botao esquerdo enves do direito
       PopGeraJuridica.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
       DBECgc.Enabled := false;
    end;
end;

procedure TFPessoaJu.PoClienteClick(Sender: TObject);
var
RzSocial,NmFantasia,cgc,InscEstadual,RamoAtividade : String;
regiao,CdPessoa,IdexRamoAtividade : Integer;
begin

RzSocial := DataModule2.IBDPessoaJuRZ_SOCIAL.AsString;
NmFantasia := DataModule2.IBDPessoaJuNM_FANTAZIA.AsString;
cgc := DataModule2.IBDPessoaJuCGC.AsString;
InscEstadual := DataModule2.IBDPessoaJuINSC_ESTADUAL.AsString;
regiao := DataModule2.IBDPessoaJuCD_REGIAO.AsInteger;
CdPessoa := DataModule2.IBDPessoaJuCD_PESSOA.AsInteger;
IdexRamoAtividade := DBERamoAtiv.ItemIndex;
RamoAtividade := DBERamoAtiv.Text;

DataModule2.IBDPessoaJu.Open;
DataModule2.IBDPessoaJu.Insert;

 DataModule2.IBDPessoa.Edit;

DataModule2.IBDPessoaJuCD_PESSOA.AsInteger := CdPessoa;
DataModule2.IBDPessoaJuRZ_SOCIAL.AsString := RzSocial;
DataModule2.IBDPessoaJuNM_FANTAZIA.AsString := NmFantasia;
DataModule2.IBDPessoaJuCGC.AsString := cgc;
DataModule2.IBDPessoaJuINSC_ESTADUAL.AsString := InscEstadual;
DataModule2.IBDPessoaJuCD_REGIAO.AsInteger := regiao;
DataModule2.IBDPessoaJuBLOQUEADO.AsString := 'N';
DataModule2.IBDPessoaJuCLI_FOR.AsString := 'C';

DataModule2.IBDPessoaJuRM_ATIVIDADE.AsString := RamoAtividade;

DBECliFor.ItemIndex := 0;
DBELiberado.ItemIndex := 1;
DBESituacao.ItemIndex := 0;
DBERamoAtiv.ItemIndex := IdexRamoAtividade;

     PBloqueado.Color := clBtnFace;
     PBloqueado.Caption := '';

     PAtivo.Color := clBtnFace;
     PAtivo.Caption := '';

     PObservacao.Color := clBtnFace;
     PObservacao.Caption := '';



  //pega ultimo codigo pessoa juridica
    DataModule2.IBQUltimaPessoaJu.Close;
    DataModule2.IBQUltimaPessoaJu.Open;
    if DataModule2.IBQUltimaPessoaJuULTIMO.AsInteger = 0 then
        DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger := 1
    else
        DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger :=
        DataModule2.IBQUltimaPessoaJuULTIMO.AsInteger;


end;

procedure TFPessoaJu.PopGeraJuridicaPopup(Sender: TObject);
begin

      DataModule2.IBQExistCliForRep.Close;
      DataModule2.IBQExistCliForRep.SQL.Clear;
      DataModule2.IBQExistCliForRep.SQL.Add('select pj.cd_pessoa_ju from PESSOA_JURIDICA pj');
      DataModule2.IBQExistCliForRep.SQL.Add('inner join PESSOA p on p.cd_pessoa = pj.cd_pessoa');
      DataModule2.IBQExistCliForRep.SQL.Add('where');
      DataModule2.IBQExistCliForRep.SQL.Add('p.cd_pessoa = :ppessoa and');
      DataModule2.IBQExistCliForRep.SQL.Add('pj.cli_for = ''C''');
      DataModule2.IBQExistCliForRep.ParamByName('ppessoa').AsInteger := DataModule2.IBDPessoaJuCD_PESSOA.AsInteger;
      DataModule2.IBQExistCliForRep.Open;
     if DataModule2.IBQExistCliForRep.IsEmpty then
        begin
          PopGeraJuridica.Items[0].Enabled := true;
        end
      else
        begin
          PopGeraJuridica.Items[0].Enabled := false;
        end;

      DataModule2.IBQExistCliForRep.Close;
      DataModule2.IBQExistCliForRep.SQL.Clear;
      DataModule2.IBQExistCliForRep.SQL.Add('select pj.cd_pessoa_ju from PESSOA_JURIDICA pj');
      DataModule2.IBQExistCliForRep.SQL.Add('inner join PESSOA p on p.cd_pessoa = pj.cd_pessoa');
      DataModule2.IBQExistCliForRep.SQL.Add('where');
      DataModule2.IBQExistCliForRep.SQL.Add('p.cd_pessoa = :ppessoa and');
      DataModule2.IBQExistCliForRep.SQL.Add('pj.cli_for = ''F''');
      DataModule2.IBQExistCliForRep.ParamByName('ppessoa').AsInteger := DataModule2.IBDPessoaJuCD_PESSOA.AsInteger;
      DataModule2.IBQExistCliForRep.Open;
     if DataModule2.IBQExistCliForRep.IsEmpty then
        begin
          PopGeraJuridica.Items[1].Enabled := true;
        end
      else
        begin
          PopGeraJuridica.Items[1].Enabled := false;
        end;


      DataModule2.IBQExistCliForRep.Close;
      DataModule2.IBQExistCliForRep.SQL.Clear;
      DataModule2.IBQExistCliForRep.SQL.Add('select pj.cd_pessoa_ju from PESSOA_JURIDICA pj');
      DataModule2.IBQExistCliForRep.SQL.Add('inner join PESSOA p on p.cd_pessoa = pj.cd_pessoa');
      DataModule2.IBQExistCliForRep.SQL.Add('where');
      DataModule2.IBQExistCliForRep.SQL.Add('p.cd_pessoa = :ppessoa and');
      DataModule2.IBQExistCliForRep.SQL.Add('pj.cli_for = ''R''');
      DataModule2.IBQExistCliForRep.ParamByName('ppessoa').AsInteger := DataModule2.IBDPessoaJuCD_PESSOA.AsInteger;
      DataModule2.IBQExistCliForRep.Open;
     if DataModule2.IBQExistCliForRep.IsEmpty then
        begin
          PopGeraJuridica.Items[2].Enabled := true;
        end
      else
        begin
          PopGeraJuridica.Items[2].Enabled := false;
        end;

end;

procedure TFPessoaJu.PoFornecedorClick(Sender: TObject);
var
RzSocial,NmFantasia,cgc,InscEstadual,RamoAtividade : String;
regiao,CdPessoa,IdexRamoAtividade : Integer;
begin

RzSocial := DataModule2.IBDPessoaJuRZ_SOCIAL.AsString;
NmFantasia := DataModule2.IBDPessoaJuNM_FANTAZIA.AsString;
cgc := DataModule2.IBDPessoaJuCGC.AsString;
InscEstadual := DataModule2.IBDPessoaJuINSC_ESTADUAL.AsString;
regiao := DataModule2.IBDPessoaJuCD_REGIAO.AsInteger;
CdPessoa := DataModule2.IBDPessoaJuCD_PESSOA.AsInteger;
IdexRamoAtividade := DBERamoAtiv.ItemIndex;
RamoAtividade := DBERamoAtiv.Text;

DataModule2.IBDPessoaJu.Open;
DataModule2.IBDPessoaJu.Insert;

 DataModule2.IBDPessoa.Edit;

DataModule2.IBDPessoaJuCD_PESSOA.AsInteger := CdPessoa;
DataModule2.IBDPessoaJuRZ_SOCIAL.AsString := RzSocial;
DataModule2.IBDPessoaJuNM_FANTAZIA.AsString := NmFantasia;
DataModule2.IBDPessoaJuCGC.AsString := cgc;
DataModule2.IBDPessoaJuINSC_ESTADUAL.AsString := InscEstadual;
DataModule2.IBDPessoaJuCD_REGIAO.AsInteger := regiao;
DataModule2.IBDPessoaJuBLOQUEADO.AsString := 'N';
DataModule2.IBDPessoaJuCLI_FOR.AsString := 'F';

DataModule2.IBDPessoaJuRM_ATIVIDADE.AsString := RamoAtividade;

DBECliFor.ItemIndex := 1;
DBELiberado.ItemIndex := 1;
DBESituacao.ItemIndex := 0;
DBERamoAtiv.ItemIndex := IdexRamoAtividade;

     PBloqueado.Color := clBtnFace;
     PBloqueado.Caption := '';

     PAtivo.Color := clBtnFace;
     PAtivo.Caption := '';

     PObservacao.Color := clBtnFace;
     PObservacao.Caption := '';



  //pega ultimo codigo pessoa juridica
    DataModule2.IBQUltimaPessoaJu.Close;
    DataModule2.IBQUltimaPessoaJu.Open;
    if DataModule2.IBQUltimaPessoaJuULTIMO.AsInteger = 0 then
        DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger := 1
    else
        DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger :=
        DataModule2.IBQUltimaPessoaJuULTIMO.AsInteger;

end;

procedure TFPessoaJu.PoRepresentanteClick(Sender: TObject);
var
RzSocial,NmFantasia,cgc,InscEstadual,RamoAtividade : String;
regiao,CdPessoa,IdexRamoAtividade : Integer;
begin

RzSocial := DataModule2.IBDPessoaJuRZ_SOCIAL.AsString;
NmFantasia := DataModule2.IBDPessoaJuNM_FANTAZIA.AsString;
cgc := DataModule2.IBDPessoaJuCGC.AsString;
InscEstadual := DataModule2.IBDPessoaJuINSC_ESTADUAL.AsString;
regiao := DataModule2.IBDPessoaJuCD_REGIAO.AsInteger;
CdPessoa := DataModule2.IBDPessoaJuCD_PESSOA.AsInteger;
IdexRamoAtividade := DBERamoAtiv.ItemIndex;
RamoAtividade := DBERamoAtiv.Text;

DataModule2.IBDPessoaJu.Open;
DataModule2.IBDPessoaJu.Insert;

 DataModule2.IBDPessoa.Edit;

DataModule2.IBDPessoaJuCD_PESSOA.AsInteger := CdPessoa;
DataModule2.IBDPessoaJuRZ_SOCIAL.AsString := RzSocial;
DataModule2.IBDPessoaJuNM_FANTAZIA.AsString := NmFantasia;
DataModule2.IBDPessoaJuCGC.AsString := cgc;
DataModule2.IBDPessoaJuINSC_ESTADUAL.AsString := InscEstadual;
DataModule2.IBDPessoaJuCD_REGIAO.AsInteger := regiao;
DataModule2.IBDPessoaJuBLOQUEADO.AsString := 'N';
DataModule2.IBDPessoaJuCLI_FOR.AsString := 'R';

DataModule2.IBDPessoaJuRM_ATIVIDADE.AsString := RamoAtividade;

DBECliFor.ItemIndex := 2;
DBELiberado.ItemIndex := 1;
DBESituacao.ItemIndex := 0;
DBERamoAtiv.ItemIndex := IdexRamoAtividade;

     PBloqueado.Color := clBtnFace;
     PBloqueado.Caption := '';

     PAtivo.Color := clBtnFace;
     PAtivo.Caption := '';

     PObservacao.Color := clBtnFace;
     PObservacao.Caption := '';



  //pega ultimo codigo pessoa juridica
    DataModule2.IBQUltimaPessoaJu.Close;
    DataModule2.IBQUltimaPessoaJu.Open;
    if DataModule2.IBQUltimaPessoaJuULTIMO.AsInteger = 0 then
        DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger := 1
    else
        DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger :=
        DataModule2.IBQUltimaPessoaJuULTIMO.AsInteger;

end;

procedure TFPessoaJu.dExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFPessoaJu.DBECdRegiaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f5 then
    begin
       BPesqRegiao.Click;
    end;
end;

procedure TFPessoaJu.BAddContatosClick(Sender: TObject);
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

procedure TFPessoaJu.BRemoveContatosClick(Sender: TObject);
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
                    DataModule2.IBDContatos.Transaction.CommitRetaining;
                end;

             end;
      end;
   end;
end;

procedure TFPessoaJu.BAddEmailClick(Sender: TObject);
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

procedure TFPessoaJu.BRemoveEmailClick(Sender: TObject);
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
                    DataModule2.IBDContatos.Transaction.CommitRetaining;
                end;

             end;
      end;
   end;
end;

procedure TFPessoaJu.BAddFonesClick(Sender: TObject);
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

procedure TFPessoaJu.BRemoveFoneClick(Sender: TObject);
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
                    DataModule2.IBDFone.Transaction.CommitRetaining;
                end;

             end;
      end;
   end;
end;

procedure TFPessoaJu.BAddAlertasClick(Sender: TObject);
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



procedure TFPessoaJu.BRemoveAlertaClick(Sender: TObject);
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

procedure TFPessoaJu.EdPesquisaExit(Sender: TObject);
begin
 BPesquisa.Click;
end;

end.
procedure TFPessoaJu.EdPesquisaExit(Sender: TObject);
begin

end;


