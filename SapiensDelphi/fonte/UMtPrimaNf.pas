unit UMtPrimaNf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons, rxToolEdit, rxCurrEdit;

type
  TFMtPtimaNf = class(TForm)
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
    DSMatPrimaNf: TDataSource;
    Label2: TLabel;
    DBEMatPrima: TDBEdit;
    Label3: TLabel;
    DBECdFornecedor: TDBEdit;
    Label4: TLabel;
    DBEDescricao: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEUsuario: TDBEdit;
    Label7: TLabel;
    DBEData: TDBDateEdit;
    bfornecedor: TSpeedButton;
    BMateriPrima: TSpeedButton;
    EdDsFornecedor: TEdit;
    EdDsMatPrima: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEImportancia: TDBComboBox;
    DBESituacao: TDBComboBox;
    Label11: TLabel;
    DBEClassFiscal: TDBEdit;
    Label12: TLabel;
    DBESubTributaria: TDBEdit;
    EdDsSubTributaria: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    BSubTributaria: TSpeedButton;
    EdVlMinimo: TCurrencyEdit;
    EdVlMaximo: TCurrencyEdit;
    EdIpi: TCurrencyEdit;
    EdIcms: TCurrencyEdit;
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
    procedure DSMatPrimaNfStateChange(Sender: TObject);
    procedure DBECdFornecedorExit(Sender: TObject);
    procedure DBEMatPrimaExit(Sender: TObject);
    procedure BMateriPrimaClick(Sender: TObject);
    procedure DBECdFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEMatPrimaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bfornecedorClick(Sender: TObject);
    procedure DBEImportanciaExit(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure DBESubTributariaExit(Sender: TObject);
    procedure BSubTributariaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEValMinKeyPress(Sender: TObject; var Key: Char);
    procedure EdVlMinimoKeyPress(Sender: TObject; var Key: Char);
    procedure EdVlMaximoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEIpiKeyPress(Sender: TObject; var Key: Char);
    procedure DBEIcmsKeyPress(Sender: TObject; var Key: Char);
    procedure EdIpiKeyPress(Sender: TObject; var Key: Char);
    procedure EdIcmsKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMtPtimaNf: TFMtPtimaNf;
  f, cd_mat : string;
  principal : Boolean;

implementation

uses UDataModule1, UPrincipal, UConsSimpMtPrima, UConsSimpFornecedor,
  UDataModule2, UDataModule3, UConsSimpSitTribu;

{$R *.dfm}

procedure TFMtPtimaNf.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFMtPtimaNf.DsFormulariosStateChange(Sender: TObject);
begin
if DataModule1.IBDMatPrimaNf.State in [dsinsert,dsedit]then
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

procedure TFMtPtimaNf.BInserirClick(Sender: TObject);
begin
DataModule1.IBDMatPrimaNf.Insert;
DBEDescricao.SetFocus;

DataModule1.IBDMatPrimaNfDT_CADASTRO.AsDateTime := Date;
DataModule1.IBDMatPrimaNfUSUARIOO.AsString := FPrincipal.usuario;

EdDsFornecedor.Clear;
EdDsMatPrima.Clear;
end;

procedure TFMtPtimaNf.BCancelarClick(Sender: TObject);
var i : Integer;
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule1.IBDMatPrimaNf.Cancel;
  DataModule1.IBTTransacao.Rollback;
  DBEDescricao.SetFocus;

  for i := 0 to ComponentCount - 1 do
          begin
            if Components[i] is TEdit then
              begin
                 TEdit(Components[i]).Text := '';
              end;
          end;
  
 end;
end;

procedure TFMtPtimaNf.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule1.IBDMatPrimaNf.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
     DataModule1.IBDMatPrimaNf.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFMtPtimaNf.BAlterarClick(Sender: TObject);
begin
if DataModule1.IBDMatPrimaNf.IsEmpty then
 begin
  Showmessage ('Matéria Prima não pode ser editado vazio');
 end
  else
    begin

      cd_mat := DBECodigo.Text;
      if DBEImportancia.ItemIndex = 0 then
        principal := true
      else
        principal := false;

      DataModule1.IBDMatPrimaNf.Open;
      DataModule1.IBDMatPrimaNf.Edit;
      DBEDescricao.SetFocus;
 ///-------------------------------------------------------
        if DataModule1.IBDMatPrimaNfSITUACAO.AsString = 'A' then
              begin
                 DBESituacao.ItemIndex := 0;
              end
            else
              if DataModule1.IBDMatPrimaNfSITUACAO.AsString = 'I' then
                begin
                  DBESituacao.ItemIndex := 1;
                end;


          if DataModule1.IBDMatPrimaNfIMPORTANCIA.AsString = 'P' then
            begin
              DBEImportancia.ItemIndex := 0;
            end
           else
           if DataModule1.IBDMatPrimaNfIMPORTANCIA.AsString = 'S' then
            begin
               DBEImportancia.ItemIndex := 1;
            end;
    end;
end;

procedure TFMtPtimaNf.BExcluirClick(Sender: TObject);
var i : Integer;
begin
if not DataModule1.IBDMatPrimaNf.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     DataModule1.IBDMatPrimaNf.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

     for i := 0 to ComponentCount - 1 do
          begin
            if Components[i] is TCurrencyEdit then
              begin
                 TCurrencyEdit(Components[i]).Clear;
              end;
          end;

      EdPesquisa.Clear;
      EdDsFornecedor.Clear;
      EdDsMatPrima.Clear;
      EdDsSubTributaria.Clear;
     {//atualiza a grid de consulta
      DataModule1.IBQConsMtPrimaNf.Close;
      DataModule1.IBQConsMtPrimaNf.SQL.Clear;
      DataModule1.IBQConsMtPrimaNf.SQL.Add('select * from MT_PRIMA_NF');
      DataModule1.IBQConsMtPrimaNf.Open;}


    
    end;
  end
 else
  Begin
   Showmessage('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !');
   DBECodigo.SetFocus;
  end;
end;

procedure TFMtPtimaNf.BConfirmarClick(Sender: TObject);
begin
     if DBEDescricao.Text = '' then
        begin
          MessageDlg('Campo Descrição é obrigatório.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
        end
      else
        if DBECdFornecedor.Text = '' then
          begin
          MessageDlg('Campo Fornecedor é obrigatório.',mtWarning,[mbok],0);
          DBECdFornecedor.SetFocus;
          end
        else
        if DBEMatPrima.Text = '' then
          begin
          MessageDlg('Campo Matéria Prima é obrigatório.',mtWarning,[mbok],0);
          DBEMatPrima.SetFocus;
          end
        else
        if DBESituacao.Text = '' then
          begin
          MessageDlg('Campo Situação é obrigatório.',mtWarning,[mbok],0);
          DBESituacao.SetFocus;
          end
        else
        if DBEImportancia.Text = '' then
          begin
          MessageDlg('Campo Importância é obrigatório.',mtWarning,[mbok],0);
          DBEImportancia.SetFocus;
          end
        else
        if EdVlMinimo.Text = '' then
          begin
          MessageDlg('Campo Valor Mínimo é obrigatório.',mtWarning,[mbok],0);
          EdVlMinimo.SetFocus;
          end
        else
        if EdVlMaximo.Text = '' then
          begin
          MessageDlg('Campo Valor Máximo é obrigatório.',mtWarning,[mbok],0);
          EdVlMaximo.SetFocus;
          end
        else
          begin

           DataModule1.IBDMatPrimaNfVL_MIN.AsFloat := StrToFloat(EdVlMinimo.Text);
           DataModule1.IBDMatPrimaNfVL_MAX.AsFloat := StrToFloat(EdVlMaximo.Text);
           DataModule1.IBDMatPrimaNfIPI.AsFloat := StrToFloat(EdIpi.Text);
           DataModule1.IBDMatPrimaNfICMS.AsFloat := StrToFloat(EdIcms.Text);

            DataModule1.IBDMatPrimaNf.Post;
            DataModule1.IBTTransacao.CommitRetaining;

            //ActiveControl := BInserir;
            //-------------------------------------------

            if DataModule1.IBDMatPrimaNfSITUACAO.AsString = 'A' then
              begin
                 DBESituacao.ItemIndex := 0;
              end
            else
              if DataModule1.IBDMatPrimaNfSITUACAO.AsString = 'I' then
                begin
                  DBESituacao.ItemIndex := 1;
                end;

           //----------------------------------------------

               if DataModule1.IBDMatPrimaNfIMPORTANCIA.AsString = 'P' then
            begin
              DBEImportancia.ItemIndex := 0;
            end
           else
           if DataModule1.IBDMatPrimaNfIMPORTANCIA.AsString = 'S' then
            begin
               DBEImportancia.ItemIndex := 1;
            end;
          end;


end;

procedure TFMtPtimaNf.FormShow(Sender: TObject);
begin
DBECodigo.Clear;
DBEDescricao.Clear;
DBECdFornecedor.Clear;
DBEMatPrima.Clear;
DBESituacao.ItemIndex := -1;
DBEImportancia.ItemIndex := -1;
DBEData.Clear;
DBEUsuario.Clear;
EdDsFornecedor.Clear;
EdDsMatPrima.Clear;
EdDsSubTributaria.Clear;
EdPesquisa.Clear;
DataModule1.IBQConsMtPrimaNf.Close;
PaginaControle.ActivePageIndex := 0;

end;

procedure TFMtPtimaNf.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFMtPtimaNf.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFMtPtimaNf.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsMtPrimaNf.Close;
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
      end
      else
      if FiltroPesquisa.ItemIndex = 3 then
      begin
         LDescricaoPesquisa.Caption := 'Matéria Prima';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end;
end;

procedure TFMtPtimaNf.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule1.IBQConsMtPrimaNf.Close;
    DataModule1.IBQConsMtPrimaNf.SQL.Clear;
    DataModule1.IBQConsMtPrimaNf.SQL.Add('select pj.rz_social,mt.ds_mat_prima ,mtnf.*');
    DataModule1.IBQConsMtPrimaNf.SQL.Add('from PESSOA_JURIDICA pj, MT_PRIMA_NF mtnf, MATERIA_PRIMA mt');
    DataModule1.IBQConsMtPrimaNf.SQL.Add('where');
    DataModule1.IBQConsMtPrimaNf.SQL.Add('mtnf.cd_mat_prima = mt.cd_mat_prima and');
    DataModule1.IBQConsMtPrimaNf.SQL.Add('pj.cd_pessoa_ju = mtnf.cd_fornecedor order by mtnf.ds_prima_nf asc');
    DataModule1.IBQConsMtPrimaNf.Open;
    if DataModule1.IBQConsMtPrimaNf.IsEmpty then
      begin
        ShowMessage('Não existe Matéria Prima Cadastrada');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
    DataModule1.IBQConsMtPrimaNf.Close;
    DataModule1.IBQConsMtPrimaNf.SQL.Clear;
    DataModule1.IBQConsMtPrimaNf.SQL.Add('select pj.rz_social,mt.ds_mat_prima ,mtnf.*');
    DataModule1.IBQConsMtPrimaNf.SQL.Add('from PESSOA_JURIDICA pj, MT_PRIMA_NF mtnf, MATERIA_PRIMA mt');
    DataModule1.IBQConsMtPrimaNf.SQL.Add('where');
    DataModule1.IBQConsMtPrimaNf.SQL.Add('mtnf.cd_mat_prima = mt.cd_mat_prima and');
    DataModule1.IBQConsMtPrimaNf.SQL.Add('pj.cd_pessoa_ju = mtnf.cd_fornecedor and');
    DataModule1.IBQConsMtPrimaNf.SQL.Add('mtnf.cd_prima_nf = :pmtnf order by mtnf.ds_prima_nf asc');
    DataModule1.IBQConsMtPrimaNf.ParamByName('pmtnf').AsInteger := StrToInt(EdPesquisa.Text);
    DataModule1.IBQConsMtPrimaNf.Open;
    if DataModule1.IBQConsMtPrimaNf.IsEmpty then
      begin
        ShowMessage('Não existe Matéria Prima Cadastrada com este código');
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
              DataModule1.IBQConsMtPrimaNf.Close;
              DataModule1.IBQConsMtPrimaNf.SQL.Clear;
              DataModule1.IBQConsMtPrimaNf.SQL.Add('select pj.rz_social,mt.ds_mat_prima ,mtnf.*');
              DataModule1.IBQConsMtPrimaNf.SQL.Add('from PESSOA_JURIDICA pj, MT_PRIMA_NF mtnf, MATERIA_PRIMA mt');
              DataModule1.IBQConsMtPrimaNf.SQL.Add('where');
              DataModule1.IBQConsMtPrimaNf.SQL.Add('mtnf.cd_mat_prima = mt.cd_mat_prima and');
              DataModule1.IBQConsMtPrimaNf.SQL.Add('pj.cd_pessoa_ju = mtnf.cd_fornecedor and');
              DataModule1.IBQConsMtPrimaNf.SQL.Add('mtnf.ds_prima_nf LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
              DataModule1.IBQConsMtPrimaNf.SQL.Add('order by mtnf.ds_prima_nf asc');
              DataModule1.IBQConsMtPrimaNf.Open;
              if DataModule1.IBQConsMtPrimaNf.IsEmpty then
                begin
                  ShowMessage('Não existe Matéria Prima cadastrada');
                  EdPesquisa.SetFocus;
                  EdPesquisa.Clear;
                end;
          end;
        end
        else
        if FiltroPesquisa.ItemIndex = 3 then
          begin
            if EdPesquisa.Text <> '' then
            begin
              DataModule1.IBQConsMtPrimaNf.Close;
              DataModule1.IBQConsMtPrimaNf.SQL.Clear;
              DataModule1.IBQConsMtPrimaNf.SQL.Add('select pj.rz_social,mt.ds_mat_prima ,mtnf.*');
              DataModule1.IBQConsMtPrimaNf.SQL.Add('from PESSOA_JURIDICA pj, MT_PRIMA_NF mtnf, MATERIA_PRIMA mt');
              DataModule1.IBQConsMtPrimaNf.SQL.Add('where');
              DataModule1.IBQConsMtPrimaNf.SQL.Add('mtnf.cd_mat_prima = mt.cd_mat_prima and');
              DataModule1.IBQConsMtPrimaNf.SQL.Add('pj.cd_pessoa_ju = mtnf.cd_fornecedor and');
              DataModule1.IBQConsMtPrimaNf.SQL.Add('mt.ds_mat_prima LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
              DataModule1.IBQConsMtPrimaNf.SQL.Add('order by mtnf.ds_prima_nf asc');
              DataModule1.IBQConsMtPrimaNf.Open;
              if DataModule1.IBQConsMtPrimaNf.IsEmpty then
                begin
                  ShowMessage('Não existe Matéria Prima cadastrada');
                  EdPesquisa.SetFocus;
                  EdPesquisa.Clear;
                end;
          end;
        end;


end;

procedure TFMtPtimaNf.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFMtPtimaNf.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFMtPtimaNf.DBEGrigDblClick(Sender: TObject);
begin
DataModule1.IBDMatPrimaNf.Close;
  DataModule1.IBDMatPrimaNf.ParamByName('pprima').AsInteger :=
  DataModule1.IBQConsMtPrimaNfCD_PRIMA_NF.AsInteger;
  DataModule1.IBDMatPrimaNf.Open;
  if (DataModule1.IBQConsMtPrimaNf.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;
  EdDsFornecedor.Text := DataModule1.IBQConsMtPrimaNfRZ_SOCIAL.AsString;
  EdDsMatPrima.Text := DataModule1.IBQConsMtPrimaNfDS_MAT_PRIMA.AsString;

  EdVlMinimo.Text := FloatToStr(DataModule1.IBQConsMtPrimaNfVL_MIN.AsFloat);
  EdVlMaximo.Text := FloatToStr(DataModule1.IBQConsMtPrimaNfVL_MAX.AsFloat);

  EdIpi.Text := FloatToStr(DataModule1.IBQConsMtPrimaNfIPI.AsFloat);
  EdIcms.Text := FloatToStr(DataModule1.IBQConsMtPrimaNfICMS.AsFloat);
  //---------------------------------------------------------

        if DataModule1.IBDMatPrimaNfSITUACAO.AsString = 'A' then
          begin
            DBESituacao.ItemIndex := 0;
          end
        else
        if DataModule1.IBDMatPrimaNfSITUACAO.AsString = 'I' then
          begin
            DBESituacao.ItemIndex := 1;
          end;

//---------------------------------------------------------

          if DataModule1.IBDMatPrimaNfIMPORTANCIA.AsString = 'P' then
            begin
              DBEImportancia.ItemIndex := 0;
            end
           else
           if DataModule1.IBDMatPrimaNfIMPORTANCIA.AsString = 'S' then
            begin
               DBEImportancia.ItemIndex := 1;
            end;
        //consulta a situaçao tributária
        DataModule3.IBQConsSitTribu.Close;
        DataModule3.IBQConsSitTribu.SQL.Clear;
        DataModule3.IBQConsSitTribu.SQL.Add('select * from SITU_TRIBUTARIA');
        DataModule3.IBQConsSitTribu.SQL.Add('where cd_situacao = :psituacao');
        DataModule3.IBQConsSitTribu.ParamByName('psituacao').AsInteger := DataModule1.IBQConsMtPrimaNfSUB_TRIBUTARIA.AsInteger;
        DataModule3.IBQConsSitTribu.Open;
        EdDsSubTributaria.Text := DataModule3.IBQConsSitTribuDS_SITUACAO.AsString;

            

  end;

procedure TFMtPtimaNf.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEGrigDblClick(sender);

end;
end;

procedure TFMtPtimaNf.DBEGrigGetCellParams(Sender: TObject; Field: TField;
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

procedure TFMtPtimaNf.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFMtPtimaNf.DSMatPrimaNfStateChange(Sender: TObject);
begin
if DataModule1.IBDMatPrimaNf.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      TbConsulta.TabVisible := false;
      bfornecedor.Enabled := true;
      BMateriPrima.Enabled := true;
      BSubTributaria.Enabled := true;
    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      TbConsulta.TabVisible := true;
      bfornecedor.Enabled := false;
      BMateriPrima.Enabled := false;
      BSubTributaria.Enabled := false;
    end;
end;

procedure TFMtPtimaNf.DBECdFornecedorExit(Sender: TObject);
begin
  f := 'F';

  if DataModule1.IBDMatPrimaNf.State in [dsinsert,dsedit] then
    begin
      if DBECdFornecedor.Text <> '' then
        begin
          DataModule1.IBQConsFornecedor.Close;
          DataModule1.IBQConsFornecedor.SQL.Clear;
          DataModule1.IBQConsFornecedor.SQL.Add('select pj.cd_pessoa_ju, pj.rz_social');
          DataModule1.IBQConsFornecedor.SQL.Add('from PESSOA_JURIDICA pj');
          DataModule1.IBQConsFornecedor.SQL.Add('where');
          DataModule1.IBQConsFornecedor.SQL.Add('pj.cli_for = :pfornecedor and');
          DataModule1.IBQConsFornecedor.SQL.Add('pj.cd_pessoa_ju = :ppessoa');
          DataModule1.IBQConsFornecedor.ParamByName('pfornecedor').AsString := f;
          DataModule1.IBQConsFornecedor.ParamByName('ppessoa').AsInteger := StrToInt(DBECdFornecedor.Text);
          DataModule1.IBQConsFornecedor.Open;
          if DataModule1.IBQConsFornecedor.IsEmpty then
            begin
              ShowMessage('Não existe fornecedor com este código');
              DBECdFornecedor.SetFocus;
              DBECdFornecedor.Clear;
            end
          else
            begin
              EdDsFornecedor.Text := DataModule1.IBQConsFornecedorRZ_SOCIAL.AsString;
            end;
        end;
    end;

end;


procedure TFMtPtimaNf.DBEMatPrimaExit(Sender: TObject);
begin
  if DataModule1.IBDMatPrimaNf.State in [dsinsert,dsedit] then
    begin
      if DBEMatPrima.Text <> '' then
        begin
          DataModule1.IBQConsMatPrimapNf.Close;
          DataModule1.IBQConsMatPrimapNf.SQL.Clear;
          DataModule1.IBQConsMatPrimapNf.SQL.Add('select mt.*, un.ds_unidade');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('from MATERIA_PRIMA mt, UNIDADE_MEDIDA un');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('where');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('mt.cd_un_medida = un.cd_unidade and');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('mt.cd_mat_prima = :pmateria');
          DataModule1.IBQConsMatPrimapNf.ParamByName('pmateria').AsInteger := StrToInt(DBEMatPrima.Text);
          DataModule1.IBQConsMatPrimapNf.Open;
        if DataModule1.IBQConsMatPrimapNf.IsEmpty then
          begin
            ShowMessage('Não existe matéria prima com este código');
            DBEMatPrima.SetFocus;
            DBEMatPrima.Clear;
          end
        else
          begin
            EdDsMatPrima.Text := DataModule1.IBQConsMatPrimapNfDS_MAT_PRIMA.AsString;
          end;
      end;
    end;

end;

procedure TFMtPtimaNf.BMateriPrimaClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpMtPrima, FConsSimpMtPrima);
  if FConsSimpMtPrima.ShowModal = mrOk then
    begin
      DataModule1.IBDMatPrimaNfCD_MAT_PRIMA.AsInteger :=
      DataModule1.IBQConsMatPrimaCD_MAT_PRIMA.AsInteger;

      EdDsMatPrima.Text := DataModule1.IBQConsMatPrimaDS_MAT_PRIMA.AsString;
    end;
end;

procedure TFMtPtimaNf.DBECdFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if DataModule1.IBDMatPrimaNf.State in [dsinsert,dsedit] then
    begin
      if Key = VK_F5 then
      bfornecedor.Click;
    end;
  
end;

procedure TFMtPtimaNf.DBEMatPrimaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if DataModule1.IBDMatPrimaNf.State in [dsinsert,dsedit] then
    begin
      if Key = VK_F5 then
      BMateriPrima.Click;
    end;
end;

procedure TFMtPtimaNf.bfornecedorClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpFornecedor, FConsSimpFornecedor);
  if FConsSimpFornecedor.ShowModal = mrOk then
    begin
      DataModule1.IBDMatPrimaNfCD_FORNECEDOR.AsInteger :=
      DataModule2.IBQConsGeralPessoaCD_PESSOA_JU.AsInteger;

      EdDsFornecedor.Text := DataModule2.IBQConsGeralPessoaRZ_SOCIAL.AsString;
    end;

end;

procedure TFMtPtimaNf.DBEImportanciaExit(Sender: TObject);
var importancia : string;
begin
  if  DBEImportancia.ItemIndex = 0 then
      importancia := 'P'
  else
      importancia := 'S';

    if DataModule1.IBDMatPrimaNf.State in [dsedit] then
      begin//22
        if principal = False then
          begin //ll
            if DBEMatPrima.Text <> '' then
              begin
                DataModule1.IBQContaImportania.Close;
                DataModule1.IBQContaImportania.ParamByName('pimportancia').AsString := importancia;
                DataModule1.IBQContaImportania.ParamByName('pmateria').AsInteger := StrToInt(DBEMatPrima.Text);
                DataModule1.IBQContaImportania.Open;
                if (importancia = 'P') and
                (DataModule1.IBQContaImportaniaTOTAL.AsInteger >= 1) then
                  begin
                    ShowMessage('Já existe um principal!');
                    DBEImportancia.SetFocus;
                  end;
              end;
         end;//ll

      end//22
    else
    if DataModule1.IBDMatPrimaNf.State in [dsinsert] then
    begin//88
      if DBEMatPrima.Text <> '' then
        begin
          DataModule1.IBQContaImportania.Close;
          DataModule1.IBQContaImportania.ParamByName('pimportancia').AsString := importancia;
          DataModule1.IBQContaImportania.ParamByName('pmateria').AsInteger := StrToInt(DBEMatPrima.Text);
          DataModule1.IBQContaImportania.Open;
          if (importancia = 'P') and
            (DataModule1.IBQContaImportaniaTOTAL.AsInteger = 1) then
              begin
                ShowMessage('Já existe um principal!');
                DBEImportancia.SetFocus;
              end;
          end;

      end;//88
 
end;

procedure TFMtPtimaNf.TbConsultaShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 3;
FiltroPesquisaClick(sender);
EdPesquisa.SetFocus;
end;

procedure TFMtPtimaNf.DBESubTributariaExit(Sender: TObject);
begin
  if DataModule1.IBDMatPrimaNf.State in [dsinsert,dsedit]then
begin
       if DBESubTributaria.Text <> '' then
       begin
        DataModule3.IBQConsSitTribu.Close;
        DataModule3.IBQConsSitTribu.SQL.Clear;
        DataModule3.IBQConsSitTribu.SQL.Add('select * from SITU_TRIBUTARIA');
        DataModule3.IBQConsSitTribu.SQL.Add('where cd_situacao = :psituacao');
        DataModule3.IBQConsSitTribu.ParamByName('psituacao').AsInteger := StrToInt(DBESubTributaria.Text);
        DataModule3.IBQConsSitTribu.Open;
        if DataModule3.IBQConsSitTribu.IsEmpty then
          begin
            ShowMessage('Não existe situação tributária cadastrada com este código');
            DBESubTributaria.SetFocus;
            DBESubTributaria.Clear;
          end
          else
            begin
                EdDsSubTributaria.Text := DataModule3.IBQConsSitTribuDS_SITUACAO.AsString;
            end;

        end;
end;
end;

procedure TFMtPtimaNf.BSubTributariaClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpSitTribu, FConsSimpSitTribu);
  if FConsSimpSitTribu.ShowModal = mrOk then
    begin
      DataModule1.IBDMatPrimaNfSUB_TRIBUTARIA.AsInteger :=
      DataModule3.IBQConsSitTribuCD_SITUACAO.AsInteger;
      EdDsSubTributaria.Text := DataModule3.IBQConsSitTribuDS_SITUACAO.AsString;
    end;
end;

procedure TFMtPtimaNf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFMtPtimaNf.DBEValMinKeyPress(Sender: TObject; var Key: Char);
begin
// , é #44



end;

procedure TFMtPtimaNf.EdVlMinimoKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
  beep;
  key:=#0;
  end;
end;

procedure TFMtPtimaNf.EdVlMaximoKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
  beep;
  key:=#0;
  end;
end;

procedure TFMtPtimaNf.DBEIpiKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
  beep;
  key:=#0;
  end;
end;

procedure TFMtPtimaNf.DBEIcmsKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#08] ) then
  begin
  beep;
  key:=#0;
  end;
end;

procedure TFMtPtimaNf.EdIpiKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
  beep;
  key:=#0;
  end;
end;

procedure TFMtPtimaNf.EdIcmsKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  begin
  beep;
  key:=#0;
  end;
end;

end.
