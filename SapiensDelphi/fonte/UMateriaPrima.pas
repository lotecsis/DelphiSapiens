unit UMateriaPrima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons, rxToolEdit, jpeg, Menus,ShellApi;

type
  TFMateriaPrima = class(TForm)
    PBloqueado: TPanel;
    PAtivo: TPanel;
    Label9: TLabel;
    DBECodigo: TDBEdit;
    PObservacao: TPanel;
    PaginaControle: TPageControl;
    TbCadastro: TTabSheet;
    Panel1: TPanel;
    BInserir: TRbButton;
    BCancelar: TRbButton;
    BConfirmar: TRbButton;
    BAlterar: TRbButton;
    BExcluir: TRbButton;
    BSair: TRbButton;
    TbConsulta: TTabSheet;
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    DBEGrid: TRxDBGrid;
    Label1: TLabel;
    DBESetor: TDBEdit;
    DSMatPrima: TDataSource;
    Label2: TLabel;
    DBEDescricao: TDBEdit;
    Label3: TLabel;
    DBEClasse: TDBEdit;
    Label4: TLabel;
    DBEUnMedida: TDBEdit;
    Label5: TLabel;
    DBEQtdeEmbalagem: TDBEdit;
    Label6: TLabel;
    DBEEstMinimo: TDBEdit;
    Label7: TLabel;
    DBEPeso: TDBEdit;
    Label8: TLabel;
    DBEForaLinha: TDBComboBox;
    BUnmedida: TSpeedButton;
    BClasse: TSpeedButton;
    BSetor: TSpeedButton;
    EdDescUnMed: TEdit;
    EdDsClasse: TEdit;
    EdDsSetor: TEdit;
    Panel2: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    DBEUsuario: TDBEdit;
    DBEData: TDBDateEdit;
    EDSiglaUn: TEdit;
    DSGrid: TDataSource;
    JanelaImagem: TOpenDialog;
    DSGridFornecedor: TDataSource;
    PaginaControle2: TPageControl;
    TbFornecedores: TTabSheet;
    DBGridFornecedor: TDBGrid;
    TbObservacoes: TTabSheet;
    DBEObservacoes: TDBMemo;
    TbImagem: TTabSheet;
    Panel3: TPanel;
    Image1: TImage;
    BRemoveImagem: TSpeedButton;
    BAddImagem: TSpeedButton;
    Panel4: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    EdCarteira: TEdit;
    EdProcesso: TEdit;
    EdDisponivel: TEdit;
    Label14: TLabel;
    DBESaldoAtual: TDBEdit;
    Label10: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EdDtUlEnt: TDateEdit;
    EdDtUlSai: TDateEdit;
    EdQtdeUlEnt: TEdit;
    EdQtdeUlSai: TEdit;
    EdTotEntrada: TEdit;
    EdTotSaida: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    EdVrUnitario: TEdit;
    RbButton1: TRbButton;
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
    procedure DBEGrigEnter(Sender: TObject);
    procedure DBEGrigExit(Sender: TObject);
    procedure DBEGrigDblClick(Sender: TObject);
    procedure DBEGrigKeyPress(Sender: TObject; var Key: Char);
    procedure DBEGrigGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure EdPesquisaExit(Sender: TObject);
    procedure DSPessoaJuStateChange(Sender: TObject);
    procedure DSPessoaStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEGridKeyPress(Sender: TObject; var Key: Char);
    procedure DBEGridEnter(Sender: TObject);
    procedure DBEGridExit(Sender: TObject);
    procedure DSMatPrimaStateChange(Sender: TObject);
    procedure BUnmedidaClick(Sender: TObject);
    procedure BClasseClick(Sender: TObject);
    procedure BSetorClick(Sender: TObject);
    procedure DBEUnMedidaExit(Sender: TObject);
    procedure DBEClasseExit(Sender: TObject);
    procedure DBESetorExit(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure DBEGridDblClick(Sender: TObject);
    procedure BAddImagemClick(Sender: TObject);
    procedure BRemoveImagemClick(Sender: TObject);
    procedure DBEUnMedidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEClasseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBESetorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TbConsultaShow(Sender: TObject);
    procedure DBECodigoExit(Sender: TObject);
    procedure DBGridFornecedorDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RbButton1Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    inserindo : Boolean;
    tp_mt_prima : string;
  end;

var
  FMateriaPrima: TFMateriaPrima;
  codigo : integer;

  cd_materia : integer;

  nada : string;
  
implementation

uses UDataModule1, UDataModule2, UPrincipal, UConsSimpCidade, UFones,
  UEmail, UContatos, UAlertaPessoa, UConsSimpClasse, UConsSimpSetor,
  UConsSimpUnMedida, UDataModule3, UOpsaoCodigo, UDataModule4,
  UImagemGrandMt, UDataModule5;

{$R *.dfm}

procedure TFMateriaPrima.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFMateriaPrima.DsFormulariosStateChange(Sender: TObject);
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

procedure TFMateriaPrima.BInserirClick(Sender: TObject);
begin
Application.CreateForm(TFOpsaoCodigo, FOpsaoCodigo);
FOpsaoCodigo.ShowModal;

 {inserindo := true;

//DataModule1.IBDMateriaPrima.Open;
//DataModule1.IBDMateriaPrima.Insert;

DataModule3.IBDCarteira.Open;
DataModule3.IBDCarteira.Insert;

DataModule3.IBDProcesso.Open;
DataModule3.IBDProcesso.Insert;



DBEData.Date := Date;
DataModule1.IBDMateriaPrimaUSUARIOO.AsString := FPrincipal.usuario;
DBEDescricao.SetFocus;
    EdDescUnMed.Clear;
    EdDsClasse.Clear;
    EdDsSetor.Clear;
    EDSiglaUn.Clear;
    EdTotEntrada.Clear;
    EdTotSaida.Clear;
    EdDtUlEnt.Clear;
    EdDtUlSai.Clear;
    EdQtdeUlEnt.Clear;
    EdQtdeUlSai.Clear;
    EdCarteira.Clear;
    EdProcesso.Clear;
    EdDisponivel.Clear;


    Image1.Picture.LoadFromFile(nada);

    PAtivo.Color := clBtnFace;
     PAtivo.Caption := ''; }




end;

procedure TFMateriaPrima.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin

  if DataModule1.IBDMateriaPrima.State in [dsinsert] then
  begin
    DBECodigo.Clear;
    DBEDescricao.Clear;
    DBESetor.Clear;
    DBEClasse.Clear;
    DBEUnMedida.Clear;
    DBEQtdeEmbalagem.Clear;
    DBEEstMinimo.Clear;
    DBEPeso.Clear;


    DBEUsuario.Clear;
    DBEObservacoes.Clear;
    DBESaldoAtual.Clear;
    EdPesquisa.Clear;
    EdDescUnMed.Clear;
    EdDsClasse.Clear;
    EdDsSetor.Clear;
    EDSiglaUn.Clear;
    DBEForaLinha.ItemIndex := -1;
  end;
  DataModule1.IBDMateriaPrima.Cancel;
  DataModule1.IBTTransacao.RollbackRetaining;


 //---------------------------------------------
    if DataModule1.IBDMateriaPrimaFORA_LINHA.AsString = 'N' then
    begin
        DBEForaLinha.ItemIndex := 0;
    end
  else
  if DataModule1.IBDMateriaPrimaFORA_LINHA.AsString = 'S' then
    begin
       DBEForaLinha.ItemIndex := 1;
    end;
 //----------------------------------------------------------

 end;
end;

procedure TFMateriaPrima.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule1.IBDMateriaPrima.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin

     DataModule1.IBDMateriaPrima.Cancel;

     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFMateriaPrima.BAlterarClick(Sender: TObject);
begin
inserindo := false;

if DataModule1.IBDMateriaPrima.IsEmpty then
 begin
  Showmessage ('N�o pode ser editado vazio');
 end
  else
    begin
    inserindo := false;
    DataModule1.IBDMateriaPrima.Open;
      DataModule1.IBDMateriaPrima.Edit;
      
//----------------------------------------------------------
  if DataModule1.IBDMateriaPrimaFORA_LINHA.AsString = 'N' then
    begin
        DBEForaLinha.ItemIndex := 0;
    end
  else
  if DataModule1.IBDMateriaPrimaFORA_LINHA.AsString = 'S' then
    begin
       DBEForaLinha.ItemIndex := 1;
    end;

//-----------------------------------------------------------
    end;
end;

procedure TFMateriaPrima.BExcluirClick(Sender: TObject);
begin
if not DataModule1.IBDMateriaPrima.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
    DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select mt_comp.cd_pedido');
     DataModule5.IBQSeExiste.SQL.Add('from MT_PRIMA_COMPRA mt_comp');
     DataModule5.IBQSeExiste.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = mt_comp.cd_mat_prima');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('mt_comp.cd_mat_prima = :pmateria');
     DataModule5.IBQSeExiste.ParamByName('pmateria').AsInteger := DataModule1.IBDMateriaPrimaCD_MAT_PRIMA.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
       MessageDlg('Mat�ria Prima est� sendo usada '#13' em Compra de Mat�ria Prima!',mtWarning,[mbok],0);
      end
    else
     begin
      DataModule5.IBQSeExiste.Close;
     DataModule5.IBQSeExiste.SQL.Clear;
     DataModule5.IBQSeExiste.SQL.Add('select comp_prod.cd_produto');
     DataModule5.IBQSeExiste.SQL.Add('from COMPOSICAO_PRODUTO comp_prod');
     DataModule5.IBQSeExiste.SQL.Add('inner join MATERIA_PRIMA mt on comp_prod.cd_mat_prima = mt.cd_mat_prima');
     DataModule5.IBQSeExiste.SQL.Add('where');
     DataModule5.IBQSeExiste.SQL.Add('comp_prod.cd_mat_prima = :pmateria');
     DataModule5.IBQSeExiste.ParamByName('pmateria').AsInteger := DataModule1.IBDMateriaPrimaCD_MAT_PRIMA.AsInteger;
     DataModule5.IBQSeExiste.Open;
     if not DataModule5.IBQSeExiste.IsEmpty then
      begin
       MessageDlg('Mat�ria Prima est� sendo usada '#13' em Composi��o dos Produtos!',mtWarning,[mbok],0);
      end
     else
     begin

     codigo := DBECodigo.Field.AsInteger;
     //nao deicha excluir o 999
     if DataModule1.IBDMateriaPrimaCD_MAT_PRIMA.AsInteger <> 999 then
     begin
     DataModule3.IBDCarteira.Delete;
     DataModule3.IBDProcesso.Delete;

     DataModule1.IBQApagaContEntSaida.Close;
     DataModule1.IBQApagaContEntSaida.ParamByName('pmateria').AsInteger := DataModule1.IBDMateriaPrimaCD_MAT_PRIMA.AsInteger;
     DataModule1.IBQApagaContEntSaida.Open;

     DataModule1.IBDMateriaPrima.Delete;

     DataModule1.IBTTransacao.CommitRetaining;

     EdDescUnMed.Clear;
     EdDsClasse.Clear;
     EdDsSetor.Clear;
     EDSiglaUn.Clear;
     EdTotEntrada.Clear;
    EdTotSaida.Clear;
    EdDtUlEnt.Clear;
    EdDtUlSai.Clear;
    EdQtdeUlEnt.Clear;
    EdQtdeUlSai.Clear;
    EdCarteira.Clear;
    EdProcesso.Clear;
    EdDisponivel.Clear;
     DBEForaLinha.ItemIndex := -1;
     Image1.Picture.LoadFromFile(nada);

     PAtivo.Color := clBtnFace;
     PAtivo.Caption := '';

  //limpa a grid de fornecedores
  DataModule1.IBQConsFornecedorGrid.Close;
  DataModule1.IBQConsFornecedorGrid.ParamByName('pmateria').AsInteger := 999999;
  DataModule1.IBQConsFornecedorGrid.Open;
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

procedure TFMateriaPrima.BConfirmarClick(Sender: TObject);
begin
   if DBECodigo.Text = '' then
        begin
          MessageDlg('Campo C�digo � obrigat�rio.',mtWarning,[mbok],0);
          DBECodigo.SetFocus;
        end
      else
     if DBEDescricao.Text = '' then
        begin
          MessageDlg('Campo Descri��o � obrigat�rio.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
        end
      else
        if DBEUnMedida.Text = '' then
          begin
          MessageDlg('Campo Unidade de Medida � obrigat�rio.',mtWarning,[mbok],0);
          DBEUnMedida.SetFocus;
          end
        else
        if DBEClasse.Text = '' then
          begin
          MessageDlg('Campo Classe � obrigat�rio.',mtWarning,[mbok],0);
          DBEClasse.SetFocus;
          end
        else
        if DBESetor.Text = '' then
          begin
          MessageDlg('Campo Setor � obrigat�rio.',mtWarning,[mbok],0);
          DBESetor.SetFocus;
          end
        else
        if DBEQtdeEmbalagem.Text = '' then
          begin
          MessageDlg('Campo Quantidade por Embalagem � obrigat�rio.',mtWarning,[mbok],0);
          DBEQtdeEmbalagem.SetFocus;
          end
        else
        if DBEEstMinimo.Text = '' then
          begin
          MessageDlg('Campo Estoque M�nimo � obrigat�rio.',mtWarning,[mbok],0);
          DBEEstMinimo.SetFocus;
          end
        else
        if DBEPeso.Text = '' then
          begin
          MessageDlg('Campo Peso � obrigat�rio.',mtWarning,[mbok],0);
          DBEPeso.SetFocus;
          end
        else
        if DBEForaLinha.Text = '' then
          begin
          MessageDlg('Campo Fora de Linha � obrigat�rio.',mtWarning,[mbok],0);
          DBEForaLinha.SetFocus;
          end
        else
         begin


//-----------------------------------------------------------

            DataModule1.IBDMateriaPrima.Post;

            if inserindo = true then
              begin
                  DataModule3.IBDCarteiraCD_MAT_PRIMA.AsInteger :=
                  DataModule1.IBDMateriaPrimaCD_MAT_PRIMA.AsInteger;
                  DataModule3.IBDCarteira.Post;

                  DataModule3.IBDProcessoCD_MAT_PRIMA.AsInteger :=
                  DataModule1.IBDMateriaPrimaCD_MAT_PRIMA.AsInteger;
                  DataModule3.IBDProcesso.Post;
              end;



              DataModule1.IBTTransacao.CommitRetaining;


     //--------------------------------------------------------------
  if DataModule1.IBDMateriaPrimaFORA_LINHA.AsString = 'N' then
    begin
        DBEForaLinha.ItemIndex := 0;
    end
  else
  if DataModule1.IBDMateriaPrimaFORA_LINHA.AsString = 'S' then
    begin
       DBEForaLinha.ItemIndex := 1;
    end;

   //------------------------------------------------

               if DataModule1.IBDMateriaPrimaFORA_LINHA.AsString = 'N' then
             begin
              PAtivo.Color := $003DDF20;
              PAtivo.Font.Color := clWhite;
              PAtivo.Caption := 'EM LINHA';
             end
            else
              begin
                PAtivo.Color := clRed;
                PAtivo.Font.Color := clWhite;
                PAtivo.Caption := 'FORA DE LINHA';
              end;
 //--------------------------------------------------------

     ActiveControl := BInserir;
        end;
end;

procedure TFMateriaPrima.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFMateriaPrima.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if (FiltroPesquisa.ItemIndex = 1) or (FiltroPesquisa.ItemIndex = 3)
or (FiltroPesquisa.ItemIndex = 4) then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFMateriaPrima.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule2.IBQConsGeralPessoa.Close;
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
         LDescricaoPesquisa.Caption := 'Descri��o';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end
    else
    if FiltroPesquisa.ItemIndex = 3 then
      begin
         LDescricaoPesquisa.Caption := 'Classe';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 6;

         Application.CreateForm(TFConsSimpClasse, FConsSimpClasse);
         if FConsSimpClasse.ShowModal = mrOk then
          begin

            EdPesquisa.Text := IntToStr(DataModule1.IBQConsClasseCD_CLASSE.AsInteger);

          end;
      end
    else
    if FiltroPesquisa.ItemIndex = 4 then
      begin
         LDescricaoPesquisa.Caption := 'Setor';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 6;

      Application.CreateForm(TFConsSimpSetor, FConsSimpSetor);
      if FConsSimpSetor.ShowModal = mrOk then
        begin

          EdPesquisa.Text := IntToStr(DataModule1.IBQConsSetorCD_SETOR.AsInteger);

        end;
      end;
end;

procedure TFMateriaPrima.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFMateriaPrima.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFMateriaPrima.DBEGrigDblClick(Sender: TObject);
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

procedure TFMateriaPrima.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFMateriaPrima.DBEGrigGetCellParams(Sender: TObject; Field: TField;
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

procedure TFMateriaPrima.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFMateriaPrima.DSPessoaJuStateChange(Sender: TObject);
begin
if DataModule1.IBDMateriaPrima.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      //BPesqCidade.Enabled := true;
     // BPesqRegiao.Enabled := true;

    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      //BPesqCidade.Enabled := false;
      //BPesqRegiao.Enabled := false;

    end;
end;

procedure TFMateriaPrima.DSPessoaStateChange(Sender: TObject);
begin
if DataModule1.IBDMateriaPrima.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      TbConsulta.Enabled := false;



    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      TbConsulta.Enabled := true;
      
    end;
end;

procedure TFMateriaPrima.FormShow(Sender: TObject);
begin
PaginaControle.ActivePageIndex := 0;
PaginaControle2.ActivePageIndex := 0;

nada := 'C:\SysLider\icones\nada.jpg';

DBECodigo.Clear;
DBEDescricao.Clear;
DBESetor.Clear;
DBEClasse.Clear;
DBEUnMedida.Clear;
DBEQtdeEmbalagem.Clear;
DBEEstMinimo.Clear;
DBEPeso.Clear;
DBEUsuario.Clear;
DBEObservacoes.Clear;
DBESaldoAtual.Clear;
EdPesquisa.Clear;
EdDescUnMed.Clear;
EdDsClasse.Clear;
EdDsSetor.Clear;
EDSiglaUn.Clear;

EdTotEntrada.Clear;
EdTotSaida.Clear;
EdDtUlEnt.Clear;
EdDtUlSai.Clear;
EdQtdeUlEnt.Clear;
EdQtdeUlSai.Clear;
EdCarteira.Clear;
EdProcesso.Clear;
EdDisponivel.Clear;
DBEForaLinha.ItemIndex := -1;
DBEData.Clear;
Image1.Picture.LoadFromFile(nada);

  //limpa a grid de fornecedores
  DataModule1.IBQConsFornecedorGrid.Close;
  DataModule1.IBQConsFornecedorGrid.ParamByName('pmateria').AsInteger := 999999;
  DataModule1.IBQConsFornecedorGrid.Open;



end;

procedure TFMateriaPrima.FormCreate(Sender: TObject);
begin
PaginaControle.ActivePageIndex := 0;
end;

procedure TFMateriaPrima.DBEGridKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
   DBEGridDblClick(Sender);
end;
end;

procedure TFMateriaPrima.DBEGridEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFMateriaPrima.DBEGridExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFMateriaPrima.DSMatPrimaStateChange(Sender: TObject);
begin
if DataModule1.IBDMateriaPrima.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      BUnmedida.Enabled := true;
      BClasse.Enabled := true;
      BSetor.Enabled := true;
      BAddImagem.Enabled := true;
      BRemoveImagem.Enabled := true;

      TbConsulta.TabVisible := false;
    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      BUnmedida.Enabled := false;
      BClasse.Enabled := false;
      BSetor.Enabled := false;
      TbConsulta.TabVisible := true;
      BAddImagem.Enabled := false;
      BRemoveImagem.Enabled := false;
    end;
end;

procedure TFMateriaPrima.BUnmedidaClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpUnMedida, FConsSimpUnMedida);
  if FConsSimpUnMedida.ShowModal = mrOk then
    begin
      DataModule1.IBDMateriaPrimaCD_UN_MEDIDA.AsInteger := DataModule1.IBQConsUnMedidaCD_UNIDADE.AsInteger;
      EdDescUnMed.Text := DataModule1.IBQConsUnMedidaDS_UNIDADE.AsString;
      EDSiglaUn.Text := DataModule1.IBQConsUnMedidaSIGLA_UNIDADE.AsString;
    end;
end;

procedure TFMateriaPrima.BClasseClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpClasse, FConsSimpClasse);
  if FConsSimpClasse.ShowModal = mrOk then
    begin
      DataModule1.IBDMateriaPrimaCD_CLASSE.AsInteger := DataModule1.IBQConsClasseCD_CLASSE.AsInteger;
      EdDsClasse.Text := DataModule1.IBQConsClasseDS_CLASSE.AsString;

    end;
end;

procedure TFMateriaPrima.BSetorClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpSetor, FConsSimpSetor);
  if FConsSimpSetor.ShowModal = mrOk then
    begin
      DataModule1.IBDMateriaPrimaCD_SETOR.AsInteger := DataModule1.IBQConsSetorCD_SETOR.AsInteger;
      EdDsSetor.Text := DataModule1.IBQConsSetorDS_SETOR.AsString;

    end;
end;

procedure TFMateriaPrima.DBEUnMedidaExit(Sender: TObject);
begin
if DataModule1.IBDMateriaPrima.State in [dsinsert,dsedit]then
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
                EdDescUnMed.Text := DataModule1.IBQConsUnMedidaDS_UNIDADE.AsString;
                EDSiglaUn.Text := DataModule1.IBQConsUnMedidaSIGLA_UNIDADE.AsString;
            end;

       end;
end;
end;

procedure TFMateriaPrima.DBEClasseExit(Sender: TObject);
begin
if DataModule1.IBDMateriaPrima.State in [dsinsert,dsedit]then
begin
       if DBEClasse.Text <> '' then
       begin
        DataModule1.IBQConsClasse.Close;
        DataModule1.IBQConsClasse.SQL.Clear;
        DataModule1.IBQConsClasse.SQL.Add('select * from CLASSE_MAT_PRIMA');
        DataModule1.IBQConsClasse.SQL.Add('where cd_classe = :pclasse');
        DataModule1.IBQConsClasse.ParamByName('pclasse').AsInteger := StrToInt(DBEClasse.Text);
        DataModule1.IBQConsClasse.Open;
        if DataModule1.IBQConsClasse.IsEmpty then
          begin
            ShowMessage('N�o existe classes cadastrados com este c�digo');
            DBEClasse.SetFocus;
            DBEClasse.Clear;
          end
        else
          begin
              EdDsClasse.Text := DataModule1.IBQConsClasseDS_CLASSE.AsString;
          end;

       end;
end;
end;

procedure TFMateriaPrima.DBESetorExit(Sender: TObject);
begin
if DataModule1.IBDMateriaPrima.State in [dsinsert,dsedit]then
begin
       if DBESetor.Text <> '' then
       begin
        DataModule1.IBQConsSetor.Close;
        DataModule1.IBQConsSetor.SQL.Clear;
        DataModule1.IBQConsSetor.SQL.Add('select * from SETOR');
        DataModule1.IBQConsSetor.SQL.Add('where cd_setor = :psetor');
        DataModule1.IBQConsSetor.ParamByName('psetor').AsInteger := StrToInt(DBESetor.Text);
        DataModule1.IBQConsSetor.Open;
        if DataModule1.IBQConsSetor.IsEmpty then
          begin
            ShowMessage('N�o existe setores cadastrados com este c�digo');
            DBESetor.SetFocus;
            DBESetor.Clear;
          end
        else
        begin
            EdDsSetor.Text := DataModule1.IBQConsSetorDS_SETOR.AsString;
        end;

       end;
end;
end;

procedure TFMateriaPrima.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule1.IBQConsMatPrima.Close;
    DataModule1.IBQConsMatPrima.SQL.Clear;
    DataModule1.IBQConsMatPrima.SQL.Add('select mt.*, st.ds_setor, un.ds_unidade,');
    DataModule1.IBQConsMatPrima.SQL.Add('un.sigla_unidade, cl.ds_classe');
    DataModule1.IBQConsMatPrima.SQL.Add('from MATERIA_PRIMA mt, SETOR st,');
    DataModule1.IBQConsMatPrima.SQL.Add('UNIDADE_MEDIDA un, CLASSE_MAT_PRIMA cl');
    DataModule1.IBQConsMatPrima.SQL.Add('where');
    DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_setor = st.cd_setor and');
    DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_classe = cl.cd_classe and');
    DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_un_medida = un.cd_unidade order by mt.ds_mat_prima asc');
    DataModule1.IBQConsMatPrima.Open;
    if DataModule1.IBQConsMatPrima.IsEmpty then
    begin
      ShowMessage('N�o existe Mat�ria Prima Cadastrada');
    end;
  end
  else
    if  FiltroPesquisa.ItemIndex = 1 then
      begin
        if EdPesquisa.Text <> '' then
          begin
            DataModule1.IBQConsMatPrima.Close;
            DataModule1.IBQConsMatPrima.SQL.Clear;
            DataModule1.IBQConsMatPrima.SQL.Add('select mt.*, st.ds_setor, un.ds_unidade,');
            DataModule1.IBQConsMatPrima.SQL.Add('un.sigla_unidade, cl.ds_classe');
            DataModule1.IBQConsMatPrima.SQL.Add('from MATERIA_PRIMA mt, SETOR st,');
            DataModule1.IBQConsMatPrima.SQL.Add('UNIDADE_MEDIDA un, CLASSE_MAT_PRIMA cl');
            DataModule1.IBQConsMatPrima.SQL.Add('where');
            DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_setor = st.cd_setor and');
            DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_classe = cl.cd_classe and');
            DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_un_medida = un.cd_unidade and');
            DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_mat_prima = :pmateria order by mt.ds_mat_prima asc');
            DataModule1.IBQConsMatPrima.ParamByName('pmateria').AsInteger := StrToInt(EdPesquisa.Text);
            DataModule1.IBQConsMatPrima.Open;
            if DataModule1.IBQConsMatPrima.IsEmpty then
              begin
                ShowMessage('N�o existe Mat�ria Prima Cadastrada');
                EdPesquisa.Clear;
                EdPesquisa.SetFocus;
              end;
          end;
      end
      else
      if (FiltroPesquisa.ItemIndex = 2) and (EdPesquisa.Text <> '') then
        begin
          if EdPesquisa.Text <> '' then
            begin
              DataModule1.IBQConsMatPrima.Close;
              DataModule1.IBQConsMatPrima.SQL.Clear;
              DataModule1.IBQConsMatPrima.SQL.Add('select mt.*, st.ds_setor, un.ds_unidade,');
              DataModule1.IBQConsMatPrima.SQL.Add('un.sigla_unidade, cl.ds_classe');
              DataModule1.IBQConsMatPrima.SQL.Add('from MATERIA_PRIMA mt, SETOR st,');
              DataModule1.IBQConsMatPrima.SQL.Add('UNIDADE_MEDIDA un, CLASSE_MAT_PRIMA cl');
              DataModule1.IBQConsMatPrima.SQL.Add('where');
              DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_setor = st.cd_setor and');
              DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_classe = cl.cd_classe and');
              DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_un_medida = un.cd_unidade and');
              DataModule1.IBQConsMatPrima.SQL.Add('mt.ds_mat_prima LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
              DataModule1.IBQConsMatPrima.SQL.Add('order by mt.ds_mat_prima asc');
              DataModule1.IBQConsMatPrima.Open;
              if DataModule1.IBQConsMatPrima.IsEmpty then
              begin
                ShowMessage('N�o existe Mat�ria Prima cadastrada');
                EdPesquisa.Clear;
                EdPesquisa.SetFocus;
              end;
        end;
      end
      else
      if (FiltroPesquisa.ItemIndex = 3) and (EdPesquisa.Text <> '') then
        begin
          if EdPesquisa.Text <> '' then
            begin
              DataModule1.IBQConsMatPrima.Close;
              DataModule1.IBQConsMatPrima.SQL.Clear;
              DataModule1.IBQConsMatPrima.SQL.Add('select mt.*, st.ds_setor, un.ds_unidade,');
              DataModule1.IBQConsMatPrima.SQL.Add('un.sigla_unidade, cl.ds_classe');
              DataModule1.IBQConsMatPrima.SQL.Add('from MATERIA_PRIMA mt, SETOR st,');
              DataModule1.IBQConsMatPrima.SQL.Add('UNIDADE_MEDIDA un, CLASSE_MAT_PRIMA cl');
              DataModule1.IBQConsMatPrima.SQL.Add('where');
              DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_setor = st.cd_setor and');
              DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_classe = cl.cd_classe and');
              DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_un_medida = un.cd_unidade and');
              DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_classe = :pclasse order by mt.ds_mat_prima asc');
              DataModule1.IBQConsMatPrima.ParamByName('pclasse').AsInteger := StrToInt(EdPesquisa.Text);
              DataModule1.IBQConsMatPrima.Open;
              if DataModule1.IBQConsMatPrima.IsEmpty then
              begin
                ShowMessage('N�o existe Mat�ria Prima cadastrada');
                EdPesquisa.Clear;
                EdPesquisa.SetFocus;
              end;
        end;
      end
      else
      if (FiltroPesquisa.ItemIndex = 4) and (EdPesquisa.Text <> '') then
        begin
          if EdPesquisa.Text <> '' then
            begin
              DataModule1.IBQConsMatPrima.Close;
              DataModule1.IBQConsMatPrima.SQL.Clear;
              DataModule1.IBQConsMatPrima.SQL.Add('select mt.*, st.ds_setor, un.ds_unidade,');
              DataModule1.IBQConsMatPrima.SQL.Add('un.sigla_unidade, cl.ds_classe');
              DataModule1.IBQConsMatPrima.SQL.Add('from MATERIA_PRIMA mt, SETOR st,');
              DataModule1.IBQConsMatPrima.SQL.Add('UNIDADE_MEDIDA un, CLASSE_MAT_PRIMA cl');
              DataModule1.IBQConsMatPrima.SQL.Add('where');
              DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_setor = st.cd_setor and');
              DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_classe = cl.cd_classe and');
              DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_un_medida = un.cd_unidade and');
              DataModule1.IBQConsMatPrima.SQL.Add('mt.cd_setor = :psetor order by mt.ds_mat_prima asc');
              DataModule1.IBQConsMatPrima.ParamByName('psetor').AsInteger := StrToInt(EdPesquisa.Text);
              DataModule1.IBQConsMatPrima.Open;
              if DataModule1.IBQConsMatPrima.IsEmpty then
              begin
                ShowMessage('N�o existe Mat�ria Prima cadastrada');
                EdPesquisa.Clear;
                EdPesquisa.SetFocus;
              end;
        end;
      end;


end;

procedure TFMateriaPrima.DBEGridDblClick(Sender: TObject);
var e, s : string;
begin
  e := 'E';
  s := 'S';
DataModule1.IBDMateriaPrima.Close;
  DataModule1.IBDMateriaPrima.ParamByName('pmateria').AsInteger :=
  DataModule1.IBQConsMatPrimaCD_MAT_PRIMA.AsInteger;
  DataModule1.IBDMateriaPrima.Open;
  if (DataModule1.IBQConsMatPrima.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else

   //------------------------------------------------------
       DataModule3.IBDCarteira.Close;
       DataModule3.IBDCarteira.ParamByName('pmateria').AsInteger :=
       DataModule1.IBQConsMatPrimaCD_MAT_PRIMA.AsInteger;
       DataModule3.IBDCarteira.Open;

       DataModule3.IBDProcesso.Close;
       DataModule3.IBDProcesso.ParamByName('pmateria').AsInteger :=
       DataModule1.IBQConsMatPrimaCD_MAT_PRIMA.AsInteger;
       DataModule3.IBDProcesso.Open;


   //---------------------------------------------------

  PaginaControle.ActivePage := TbCadastro;
  EdDescUnMed.Text := DataModule1.IBQConsMatPrimaDS_UNIDADE.AsString;
  EDSiglaUn.Text := DataModule1.IBQConsMatPrimaSIGLA_UNIDADE.AsString;
  EdDsClasse.Text := DataModule1.IBQConsMatPrimaDS_CLASSE.AsString;
  EdDsSetor.Text := DataModule1.IBQConsMatPrimaDS_SETOR.AsString;

  if DataModule1.IBDMateriaPrimaIMAGEM.AsString = '' then
    begin
      Image1.Picture.LoadFromFile(nada);
    end
  else
    begin
     Image1.Picture.LoadFromFile(DataModule1.IBDMateriaPrimaIMAGEM.AsString);
    end;


  //--------------------------------------------------------

  DataModule1.IBQConsFornecedorGrid.Close;
  DataModule1.IBQConsFornecedorGrid.ParamByName('pmateria').AsInteger :=
  DataModule1.IBQConsMatPrimaCD_MAT_PRIMA.AsInteger;
  DataModule1.IBQConsFornecedorGrid.Open;


  //----------------------------------------------------------------


  if DataModule1.IBDMateriaPrimaFORA_LINHA.AsString = 'N' then
    begin
        DBEForaLinha.ItemIndex := 0;
    end
  else
  if DataModule1.IBDMateriaPrimaFORA_LINHA.AsString = 'S' then
    begin
       DBEForaLinha.ItemIndex := 1;
    end;
//----------------------------------------------------------

               if DataModule1.IBDMateriaPrimaFORA_LINHA.AsString = 'N' then
             begin
              PAtivo.Color := $003DDF20;
              PAtivo.Font.Color := clWhite;
              PAtivo.Caption := 'EM LINHA';
             end
            else
              begin
                PAtivo.Color := clRed;
                PAtivo.Font.Color := clWhite;
                PAtivo.Caption := 'FORA DE LINHA';
              end;

  //consulta saldo carteira e processo
  DataModule4.IBQCarteiraProcesso.Close;
  DataModule4.IBQCarteiraProcesso.ParamByName('pmateria').AsInteger :=
  DataModule1.IBQConsMatPrimaCD_MAT_PRIMA.AsInteger;
  DataModule4.IBQCarteiraProcesso.Open;

  EdCarteira.Text :=  FloatToStr(DataModule4.IBQCarteiraProcessoQTDE_CAR.AsFloat);
  EdProcesso.Text := FloatToStr(DataModule4.IBQCarteiraProcessoQTDE_PRO.AsFloat);
  EdDisponivel.Text := FloatToStr(DataModule4.IBQCarteiraProcessoDISPONIVEL.AsFloat);


//consulta ultima entrada
  DataModule4.IBQUltEntrada.Close;
  DataModule4.IBQUltEntrada.ParamByName('ptipo').AsString := e;
  DataModule4.IBQUltEntrada.ParamByName('pmateria').AsInteger :=
  DataModule1.IBQConsMatPrimaCD_MAT_PRIMA.AsInteger;
  DataModule4.IBQUltEntrada.Open;
  EdDtUlEnt.Date := DataModule4.IBQUltEntradaDT_MOVIMENTO.AsDateTime;
  EdQtdeUlEnt.Text := FloatToStr(DataModule4.IBQUltEntradaQTDE.AsFloat);


//consulta ultima saida
  DataModule4.IBQUltSaida.Close;
  DataModule4.IBQUltSaida.ParamByName('ptipo').AsString := s;
  DataModule4.IBQUltSaida.ParamByName('pmateria').AsInteger :=
  DataModule1.IBQConsMatPrimaCD_MAT_PRIMA.AsInteger;
  DataModule4.IBQUltSaida.Open;
  EdDtUlSai.Date := DataModule4.IBQUltSaidaDT_MOVIMENTO.AsDateTime;
  EdQtdeUlSai.Text := FloatToStr(DataModule4.IBQUltSaidaQTDE.AsFloat);

  //consulta total entrada e saida
  DataModule4.IBQTotEntSai.Close;
  DataModule4.IBQTotEntSai.ParamByName('pmateria').AsInteger :=
  DataModule1.IBQConsMatPrimaCD_MAT_PRIMA.AsInteger;
  DataModule4.IBQTotEntSai.ParamByName('ptipo').AsString := e;
  DataModule4.IBQTotEntSai.Open;
  EdTotEntrada.Text := FloatToStr(DataModule4.IBQTotEntSaiSUM.AsFloat);

  DataModule4.IBQTotEntSai.Close;
  DataModule4.IBQTotEntSai.ParamByName('pmateria').AsInteger :=
  DataModule1.IBQConsMatPrimaCD_MAT_PRIMA.AsInteger;
  DataModule4.IBQTotEntSai.ParamByName('ptipo').AsString := s;
  DataModule4.IBQTotEntSai.Open;
  EdTotSaida.Text := FloatToStr(DataModule4.IBQTotEntSaiSUM.AsFloat);

  end;

procedure TFMateriaPrima.BAddImagemClick(Sender: TObject);
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

    DataModule1.IBDMateriaPrimaIMAGEM.Value := JanelaImagem.FileName;
    DataModule1.IBDMateriaPrimaNM_IMAGEM_PEQUENA.AsString := nomeImagem;
    Image1.Picture.LoadFromFile(JanelaImagem.FileName);
  end;

end;

procedure TFMateriaPrima.BRemoveImagemClick(Sender: TObject);
begin

if DataModule1.IBDMateriaPrimaIMAGEM.AsString <> '' then
  begin
    if Application.MessageBox('Deseja excluir a imagem?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
      Begin
        Image1.Picture.LoadFromFile(nada);
        DataModule1.IBDMateriaPrimaIMAGEM.AsString := '';
      end;
  end;
end;
procedure TFMateriaPrima.DBEUnMedidaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataModule1.IBDMateriaPrima.State in [dsinsert,dsedit] then
    begin
      if Key = VK_F5 then
      BUnmedida.Click;
    end;
end;

procedure TFMateriaPrima.DBEClasseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataModule1.IBDMateriaPrima.State in [dsinsert,dsedit] then
    begin
      if Key = VK_F5 then
      BClasse.Click;
    end;
end;

procedure TFMateriaPrima.DBESetorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataModule1.IBDMateriaPrima.State in [dsinsert,dsedit] then
    begin
      if Key = VK_F5 then
      BSetor.Click;
    end;
end;

procedure TFMateriaPrima.TbConsultaShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 2;
FiltroPesquisaClick(Sender);
EdPesquisa.SetFocus;
end;

procedure TFMateriaPrima.DBECodigoExit(Sender: TObject);
var mt_prima : Integer;
begin
if DataModule1.IBDMateriaPrima.State in [dsinsert] then
begin
  if DBECodigo.Text <> '' then
    begin
       mt_prima := StrToInt(DBECodigo.Text);

      DataModule1.IBQCodigoDentroFaxa.Close;
      DataModule1.IBQCodigoDentroFaxa.ParamByName('pmateria').AsInteger :=
      StrToInt(DBECodigo.Text);
      DataModule1.IBQCodigoDentroFaxa.Open;
      if not DataModule1.IBQCodigoDentroFaxa.IsEmpty then
        begin
          MessageDlg('C�digo j� existente!',mtWarning,[mbok],0);
          DBECodigo.SetFocus;
          DBECodigo.Clear;
        end;

    if tp_mt_prima = 'E' then
      begin
         if (mt_prima < 100) or (mt_prima > 599) then
          begin
            MessageDlg('C�digo fora da faixa de tecido estofado!'+#13+'Informe um valor de 100 � 599!' ,mtWarning,[mbok],0);
            DBECodigo.SetFocus;
            DBECodigo.Clear;
          end;
      end
    else
    if tp_mt_prima = 'C' then
      begin
         if (mt_prima < 600) or (mt_prima > 998) then
          begin
            MessageDlg('C�digo fora da faixa de tecido colch�o!'+#13+'Informe um valor de 600 � 998!' ,mtWarning,[mbok],0);
            DBECodigo.SetFocus;
            DBECodigo.Clear;
          end;
      end;


    end;//se o DBECodigo <> ''
  end;
end;

procedure TFMateriaPrima.DBGridFornecedorDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if DataModule1.IBQConsFornecedorGrid.FieldByName('importancia').Value = 'P' then
    begin
      DBGridFornecedor.Canvas.Brush.Color := $003DDF20;
      DBGridFornecedor.Canvas.Font.Color := clBlack;
      DBGridFornecedor.DefaultDrawDataCell(Rect,DBGridFornecedor.Columns[Datacol].Field,state);
    end
  else
    begin
      DBGridFornecedor.Canvas.Brush.Color := clWhite;
      DBGridFornecedor.Canvas.Font.Color := clBlack;
      DBGridFornecedor.DefaultDrawDataCell(Rect,DBGridFornecedor.Columns[Datacol].Field,state);
    end;
end;

procedure TFMateriaPrima.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFMateriaPrima.RbButton1Click(Sender: TObject);
begin
  FImagemGrandMt := TFImagemGrandMt.Create(Self);
  FImagemGrandMt.ShowModal;
  FreeAndNil(FImagemGrandMt);
end;

end.
