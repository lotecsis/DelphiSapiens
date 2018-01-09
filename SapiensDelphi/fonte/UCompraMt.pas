unit UCompraMt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls,
  rxToolEdit, RXDBCtrl, Buttons, DB, Mask, Grids, DBGrids, rxCurrEdit;

type
  TFCompraMt = class(TForm)
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
    DSCompra: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBECdFornecedor: TDBEdit;
    Label3: TLabel;
    DBENPedido: TDBEdit;
    EdDsFornecedor: TEdit;
    BCliente: TSpeedButton;
    Label4: TLabel;
    DBEDtCompra: TDBDateEdit;
    Label5: TLabel;
    DBEVendedor: TDBEdit;
    Label6: TLabel;
    DBEModalidade: TDBComboBox;
    Label8: TLabel;
    DBECondPgto: TDBEdit;
    Label9: TLabel;
    DBEPrazoEnt: TDBEdit;
    Label10: TLabel;
    Panel2: TPanel;
    Label11: TLabel;
    DBEDtChegada: TDBDateEdit;
    Label12: TLabel;
    DBENumNota: TDBEdit;
    Label7: TLabel;
    DBESituacao: TDBComboBox;
    DBEGridMt: TRxDBGrid;
    BAdd: TRbButton;
    BRemove: TRbButton;
    BalteraMt: TRbButton;
    Label13: TLabel;
    DBELocRetira: TDBEdit;
    Label14: TLabel;
    DBEObservacoes: TDBMemo;
    DBEUsuario: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    EdPedido: TEdit;
    DSGridCad: TDataSource;
    EdTotPed: TCurrencyEdit;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    BPesquisa: TSpeedButton;
    Panel3: TPanel;
    DBGPedidos: TRxDBGrid;
    Panel4: TPanel;
    DBGMtPedidos: TRxDBGrid;
    DSGridConsCompra: TDataSource;
    DBEDtPrevista: TDBDateEdit;
    EdData: TDateEdit;
    LDescricaoPesquisa: TLabel;
    DSGridConsMt: TDataSource;
    Email: TRbButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BSairClick(Sender: TObject);
    procedure DSCompraStateChange(Sender: TObject);
    procedure BInserirClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BAlterarClick(Sender: TObject);
    procedure DBECdFornecedorExit(Sender: TObject);
    procedure BClienteClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure DBEPrazoEntExit(Sender: TObject);
    procedure EdPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEPrazoEntKeyPress(Sender: TObject; var Key: Char);
    procedure EdPedidoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BAddClick(Sender: TObject);
    procedure BRemoveClick(Sender: TObject);
    procedure BalteraMtClick(Sender: TObject);
    procedure DBEGridMtDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BPesquisaClick(Sender: TObject);
    procedure EdPesquisaExit(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure EdDataExit(Sender: TObject);
    procedure DBGPedidosEnter(Sender: TObject);
    procedure DBGPedidosExit(Sender: TObject);
    procedure DBGPedidosDblClick(Sender: TObject);
    procedure DBGPedidosKeyPress(Sender: TObject; var Key: Char);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure DBECdFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EmailClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tot_compra : Real;
  end;

var
  FCompraMt: TFCompraMt;
  f : string;
implementation

uses UDataModule4, UPrincipal, UDataModule1, UConsSimpFornecedor,
  UDataModule2, UMtCompra, UEmailRespCompra;

{$R *.dfm}

procedure TFCompraMt.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFCompraMt.BSairClick(Sender: TObject);
begin
Close;
end;

procedure TFCompraMt.DSCompraStateChange(Sender: TObject);
begin
if DataModule4.IBDCompraMt.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      TbConsulta.TabVisible := false;
      BAdd.Enabled := true;
      BalteraMt.Enabled := true;
      BRemove.Enabled := true;
    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      TbConsulta.TabVisible := true;
      BAdd.Enabled := false;
      BalteraMt.Enabled := false;
      BRemove.Enabled := false;
    end;
end;

procedure TFCompraMt.BInserirClick(Sender: TObject);
begin
    EdDsFornecedor.Clear;
    EdPedido.Clear;
    EdTotPed.Clear;
    EdData.Clear;

    DataModule4.IBDCompraMt.Open;
    DataModule4.IBDCompraMt.Insert;
    
    DBEDtCompra.Date := Date;
    DataModule4.IBDCompraMtUSUARIOO.AsString := FPrincipal.usuario;
    DataModule4.IBDCompraMtSITUACAO.AsString := 'E';

    if DataModule4.IBDCompraMt.State in [dsinsert] then
  begin
    DataModule4.IBQUltimaCompra.Close;
    DataModule4.IBQUltimaCompra.Open;
    if DataModule4.IBQUltimaCompraULTIMO.AsInteger = 0 then
        DataModule4.IBDCompraMtCD_PEDIDO.AsInteger := 1
    else
        DataModule4.IBDCompraMtCD_PEDIDO.AsInteger :=
        DataModule4.IBQUltimaCompraULTIMO.AsInteger;
  end;
    //atualiza a grid de matéria prima
    DataModule4.IBQConsMtCompra.Close;
     DataModule4.IBQConsMtCompra.ParamByName('ppedido').AsInteger :=
     DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;
     DataModule4.IBQConsMtCompra.Open;

  

  EdPedido.Text := IntToStr(DataModule4.IBDCompraMtCD_PEDIDO.AsInteger);

  DBECdFornecedor.SetFocus;
end;

procedure TFCompraMt.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin

     DataModule4.IBQConsMtCompra.Close;
     DataModule4.IBQConsMtCompra.ParamByName('ppedido').AsInteger :=
     DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;
     DataModule4.IBQConsMtCompra.Open;

  DataModule4.IBDCompraMt.Cancel;
  DataModule1.IBTTransacao.RollbackRetaining;


 end;
end;

procedure TFCompraMt.BAlterarClick(Sender: TObject);
begin
if DataModule4.IBDCompraMt.IsEmpty then
 begin
  Showmessage ('Pedido não pode ser editado vazio');
 end
  else
    begin
      DataModule4.IBDCompraMt.Edit;
      
       //valida combo de situação
       if DataModule4.IBDCompraMtSITUACAO.AsString = 'E' then
        begin
          DBESituacao.ItemIndex := 0;
        end
       else
       if DataModule4.IBDCompraMtSITUACAO.AsString = 'P' then
        begin
           DBESituacao.ItemIndex := 1;
        end
       else
       if DataModule4.IBDCompraMtSITUACAO.AsString = 'C' then
        begin
           DBESituacao.ItemIndex := 2;
        end;
    end;
end;

procedure TFCompraMt.DBECdFornecedorExit(Sender: TObject);
begin
f := 'F';

  if DataModule4.IBDCompraMt.State in [dsinsert,dsedit] then
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
            MessageDlg('Não existe fornecedor com este código',mtInformation,[mbok],0);
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

procedure TFCompraMt.BClienteClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpFornecedor, FConsSimpFornecedor);
  if FConsSimpFornecedor.ShowModal = mrOk then
    begin
     DataModule4.IBDCompraMtCD_FORNECEDOR.AsInteger := DataModule2.IBQConsGeralPessoaCD_PESSOA_JU.AsInteger;
      EdDsFornecedor.Text := DataModule2.IBQConsGeralPessoaRZ_SOCIAL.AsString;
    end;
end;

procedure TFCompraMt.BConfirmarClick(Sender: TObject);
var cont_espera,cont_parcial,cont_completo : Integer;
begin
      if DBECdFornecedor.Text = '' then
        begin
          MessageDlg('Campo Fornecedor é obrigatório.',mtWarning,[mbok],0);
          DBECdFornecedor.SetFocus;
        end
      else
        if DBEModalidade.Text = '' then
          begin
          MessageDlg('Campo Modalidade é obrigatório.',mtWarning,[mbok],0);
          DBEModalidade.SetFocus;
          end
        else
        if DBECondPgto.Text = '' then
          begin
          MessageDlg('Campo Condição de Pagamento é obrigatório.',mtWarning,[mbok],0);
          DBECondPgto.SetFocus;
          end
        else
        if DBEPrazoEnt.Text = '' then
          begin
          MessageDlg('Campo Prazo de Entrega é obrigatório.',mtWarning,[mbok],0);
          DBEPrazoEnt.SetFocus;
          end
        else
          begin

          //confere a situação da compra
           DataModule4.IBQConsMtCompra.Close;
           DataModule4.IBQConsMtCompra.ParamByName('ppedido').AsInteger :=
           DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;
           DataModule4.IBQConsMtCompra.Open;
           DataModule4.IBQConsMtCompra.First;
           cont_espera := 0;
           cont_parcial := 0;
           cont_completo := 0;
           while not DataModule4.IBQConsMtCompra.Eof do
            begin
              if DataModule4.IBQConsMtCompraCHEGOU.AsString = 'P' then
                cont_parcial := cont_parcial + 1
              else
              if DataModule4.IBQConsMtCompraCHEGOU.AsString = 'S' then
                cont_completo := cont_completo + 1
              else
              if DataModule4.IBQConsMtCompraCHEGOU.AsString = 'N' then
                cont_espera := cont_espera + 1;
              DataModule4.IBQConsMtCompra.Next;
            end;

            if (cont_espera = 0) and (cont_parcial = 0) and (cont_completo > 0) then
               DataModule4.IBDCompraMtSITUACAO.AsString := 'C'
            else
            if (cont_espera = 0) and (cont_parcial > 0) and (cont_completo = 0) then
              DataModule4.IBDCompraMtSITUACAO.AsString := 'P'
            else
            if (cont_espera = 0) and (cont_parcial > 0) and (cont_completo > 0) then
              DataModule4.IBDCompraMtSITUACAO.AsString := 'P'
            else
            if (cont_espera > 0) and (cont_parcial > 0) and (cont_completo = 0) then
              DataModule4.IBDCompraMtSITUACAO.AsString := 'P'
            else
            if (cont_espera > 0) and (cont_parcial > 0) and (cont_completo > 0) then
              DataModule4.IBDCompraMtSITUACAO.AsString := 'P'
            else
            if (cont_espera > 0) and (cont_parcial = 0) and (cont_completo = 0) then
              DataModule4.IBDCompraMtSITUACAO.AsString := 'E';


            DataModule4.IBDCompraMt.Post;
            DataModule1.IBTTransacao.CommitRetaining;

        //valida combo de situação
       if DataModule4.IBDCompraMtSITUACAO.AsString = 'E' then
        begin
          DBESituacao.ItemIndex := 0;
        end
       else
       if DataModule4.IBDCompraMtSITUACAO.AsString = 'P' then
        begin
           DBESituacao.ItemIndex := 1;
        end
       else
       if DataModule4.IBDCompraMtSITUACAO.AsString = 'C' then
        begin
           DBESituacao.ItemIndex := 2;
        end;
       BInserir.SetFocus;
end;
end;

procedure TFCompraMt.DBEPrazoEntExit(Sender: TObject);
begin
 if (DataModule4.IBDCompraMt.State in [dsinsert,dsedit])
  and (DBEPrazoEnt.Text <> '') then
  begin
    DataModule4.IBDCompraMtDT_PREVISTA.AsDateTime := DBEDtCompra.Date + StrToInt(DBEPrazoEnt.Text);

     BAdd.SetFocus;
  end;
  end;

procedure TFCompraMt.EdPedidoKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TFCompraMt.DBEPrazoEntKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TFCompraMt.EdPedidoExit(Sender: TObject);
begin

if not(DataModule4.IBDCompraMt.State in [dsinsert,dsedit]) then
begin
  if EdPedido.Text <> '' then
  begin
  DataModule4.IBDCompraMt.Close;
  DataModule4.IBDCompraMt.ParamByName('ppedido').AsInteger :=
  StrToInt(EdPedido.Text);
  DataModule4.IBDCompraMt.Open;
  if DataModule4.IBDCompraMt.IsEmpty then
    begin
      MessageDlg('Pedido não encontrado.',mtInformation,[mbok],0);
      EdPedido.SetFocus;
      EdPedido.Clear;
    end
  else
    begin

       //valida combo de situação
       if DataModule4.IBDCompraMtSITUACAO.AsString = 'E' then
        begin
          DBESituacao.ItemIndex := 0;
        end
       else
       if DataModule4.IBDCompraMtSITUACAO.AsString = 'P' then
        begin
           DBESituacao.ItemIndex := 1;
        end
       else
       if DataModule4.IBDCompraMtSITUACAO.AsString = 'C' then
        begin
           DBESituacao.ItemIndex := 2;
        end;

        //atualiza a grid de matéria prima
        DataModule4.IBQConsMtCompra.Close;
        DataModule4.IBQConsMtCompra.ParamByName('ppedido').AsInteger :=
        DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;
        DataModule4.IBQConsMtCompra.Open;

        //calcula o valor total do pedido
        tot_compra := 0;
        DataModule4.IBQConsMtCompra.First;
        while not DataModule4.IBQConsMtCompra.Eof do
          begin
            tot_compra := tot_compra +(DataModule4.IBQConsMtCompraQTDE.AsInteger * DataModule4.IBQConsMtCompraVALOR.AsFloat);
            DataModule4.IBQConsMtCompra.Next;
          end;
        EdTotPed.Text := FloatToStr(tot_compra);
        

          //preenche o campo descrição do fornecedor
          f := 'F';
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

          EdDsFornecedor.Text := DataModule1.IBQConsFornecedorRZ_SOCIAL.AsString;

    end;
  end;

end;

end;

procedure TFCompraMt.FormShow(Sender: TObject);
begin
  DBECdFornecedor.Clear;
  DBENPedido.Clear;
  DBEDtCompra.Clear;
  DBEVendedor.Clear;
  DBEModalidade.ItemIndex := -1;
  DBECondPgto.Clear;
  DBEPrazoEnt.Clear;
  DBEDtChegada.Clear;
  DBENumNota.Clear;
  DBESituacao.ItemIndex := -1;
  DBELocRetira.Clear;
  DBEObservacoes.Clear;
  DBEUsuario.Clear;
  DBEDtPrevista.Clear;

  EdDsFornecedor.Clear;
  EdTotPed.Clear;
  EdPedido.Clear;

  PaginaControle.ActivePageIndex := 0;

  DataModule4.IBQConsMtCompra.Close;
  DataModule4.IBQConsMtCompra.ParamByName('ppedido').AsInteger := 999999;
  DataModule4.IBQConsMtCompra.Open;

end;

procedure TFCompraMt.BExcluirClick(Sender: TObject);
begin
If not DataModule4.IBDCompraMt.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     DataModule4.IBQApagaMtGeral.Close;
     DataModule4.IBQApagaMtGeral.ParamByName('ppedido').AsInteger :=
     DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;
     DataModule4.IBQApagaMtGeral.Open;
    
     DataModule4.IBDCompraMt.Delete;
     DataModule1.IBTTransacao.CommitRetaining;

     EdDsFornecedor.Clear;
     EdTotPed.Clear;
     EdPedido.Clear;
     DBEDtPrevista.Clear;

     DataModule4.IBQConsMtCompra.Close;
     DataModule4.IBQConsMtCompra.ParamByName('ppedido').AsInteger :=
     DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;
     DataModule4.IBQConsMtCompra.Open;

    end;
  end
 else
  Begin
  MessageDlg('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !',mtWarning,[mbok],0);
   EdPedido.SetFocus;
  end;
end;

procedure TFCompraMt.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule4.IBDCompraMt.State in [dsedit,dsinsert] then
  begin
   MessageDlg('Confirme ou Cancele os dados antes de fechar.',mtWarning,[mbok],0);
  end
 else
   canclose := true;
end;

procedure TFCompraMt.BAddClick(Sender: TObject);
begin
Application.CreateForm(TFMtCompra, FMtCompra);

  DataModule4.IBDMtCompra.Open;
  DataModule4.IBDMtCompra.Insert;
  DataModule4.IBDMtCompraCD_PEDIDO.AsInteger :=
  DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;

  DataModule4.IBDMtCompraCHEGOU.AsString := 'N';


  if FMtCompra.ShowModal = mrCancel then
    begin
      DataModule4.IBDMtCompra.Cancel;

    end
  else
    begin

     DataModule4.IBDMtCompra.Post;

     DataModule4.IBQConsMtCompra.Close;
     DataModule4.IBQConsMtCompra.ParamByName('ppedido').AsInteger :=
     DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;
     DataModule4.IBQConsMtCompra.Open;

     //calcula o valor total do pedido
     tot_compra := 0;
     DataModule4.IBQConsMtCompra.First;
     while not DataModule4.IBQConsMtCompra.Eof do
      begin
        tot_compra := tot_compra +(DataModule4.IBQConsMtCompraQTDE.AsInteger * DataModule4.IBQConsMtCompraVALOR.AsFloat);
        DataModule4.IBQConsMtCompra.Next;
      end;
      EdTotPed.Text := FloatToStr(tot_compra);


    end;

end;

procedure TFCompraMt.BRemoveClick(Sender: TObject);
begin
  DataModule4.IBQApagaMt.Close;
  DataModule4.IBQApagaMt.ParamByName('ppedido').AsInteger :=
  DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;
  DataModule4.IBQApagaMt.ParamByName('pmateria').AsInteger :=
  DataModule4.IBQConsMtCompraCD_MAT_PRIMA.AsInteger;
  DataModule4.IBQApagaMt.Open;

    DataModule4.IBQConsMtCompra.Close;
     DataModule4.IBQConsMtCompra.ParamByName('ppedido').AsInteger :=
     DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;
     DataModule4.IBQConsMtCompra.Open;

     //calcula o valor total do pedido
        tot_compra := 0;
        DataModule4.IBQConsMtCompra.First;
        while not DataModule4.IBQConsMtCompra.Eof do
          begin
            tot_compra := tot_compra +(DataModule4.IBQConsMtCompraQTDE.AsInteger * DataModule4.IBQConsMtCompraVALOR.AsFloat);
            DataModule4.IBQConsMtCompra.Next;
          end;
        EdTotPed.Text := FloatToStr(tot_compra);

      

end;

procedure TFCompraMt.BalteraMtClick(Sender: TObject);
begin
if not (DataModule4.IBQConsMtCompra.IsEmpty) then
  begin
  if DataModule4.IBDCompraMtSITUACAO.AsString <> 'C' then
begin
Application.CreateForm(TFMtCompra, FMtCompra);

  DataModule4.IBDMtCompra.Close;
  DataModule4.IBDMtCompra.ParamByName('ppedido').AsInteger :=
  DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;
  DataModule4.IBDMtCompra.ParamByName('pmateria').AsInteger :=
  DataModule4.IBQConsMtCompraCD_MAT_PRIMA.AsInteger;
  DataModule4.IBDMtCompra.Open;

  DataModule4.IBDMtCompra.Open;
  DataModule4.IBDMtCompra.Edit;

  FMtCompra.DBECdMtPrima.Enabled := false;

          importancia := 'P';
          DataModule1.IBQConsMatPrimapNf.Close;
          DataModule1.IBQConsMatPrimapNf.SQL.Clear;
          DataModule1.IBQConsMatPrimapNf.SQL.Add('select mt.*, un.ds_unidade');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('from MATERIA_PRIMA mt, UNIDADE_MEDIDA un');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('where');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('mt.cd_un_medida = un.cd_unidade and');
          DataModule1.IBQConsMatPrimapNf.SQL.Add('mt.cd_mat_prima = :pmateria');
          DataModule1.IBQConsMatPrimapNf.ParamByName('pmateria').AsInteger := DataModule4.IBQConsMtCompraCD_MAT_PRIMA.AsInteger;
          DataModule1.IBQConsMatPrimapNf.Open;

          FMtCompra.EdDsMtPrima.Text := DataModule1.IBQConsMatPrimapNfDS_MAT_PRIMA.AsString;
          FMtCompra.EdUnMedida.Text := DataModule1.IBQConsMatPrimapNfDS_UNIDADE.AsString;


  if FMtCompra.ShowModal = mrCancel then
    begin
      DataModule4.IBDMtCompra.Cancel;
      FMtCompra.DBECdMtPrima.Enabled := true;
    end
  else
    begin

      if DataModule4.IBDMtCompraQTDE_CHEGADA.AsInteger <
      DataModule4.IBDMtCompraQTDE.AsInteger * 0.95 then
        begin
          DataModule4.IBDMtCompraCHEGOU.AsString := 'P';
        end
      else
      if DataModule4.IBDMtCompraQTDE_CHEGADA.AsInteger >
      DataModule4.IBDMtCompraQTDE.AsInteger * 0.95 then
        begin
          DataModule4.IBDMtCompraCHEGOU.AsString := 'S';
        end;

       if DataModule4.IBDMtCompraQTDE_CHEGADA.AsInteger = 0 then
        begin
          DataModule4.IBDMtCompraCHEGOU.AsString := 'N';
        end;

     DataModule4.IBDMtCompra.Post;

     DataModule4.IBQConsMtCompra.Close;
     DataModule4.IBQConsMtCompra.ParamByName('ppedido').AsInteger :=
     DataModule4.IBDCompraMtCD_PEDIDO.AsInteger;
     DataModule4.IBQConsMtCompra.Open;

     //calcula o valor total do pedido
        tot_compra := 0;
        DataModule4.IBQConsMtCompra.First;
        while not DataModule4.IBQConsMtCompra.Eof do
          begin
            tot_compra := tot_compra +(DataModule4.IBQConsMtCompraQTDE.AsInteger * DataModule4.IBQConsMtCompraVALOR.AsFloat);
            DataModule4.IBQConsMtCompra.Next;
          end;
        EdTotPed.Text := FloatToStr(tot_compra);

     FMtCompra.DBECdMtPrima.Enabled := true;
    end;
  end;
end;
end;

procedure TFCompraMt.DBEGridMtDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if DataModule4.IBQConsMtCompra.FieldByName('chegou').Value = 'N' then
  begin
   DBEGridMt.Canvas.brush.Color := $0080FFFF;
   DBEGridMt.Canvas.Font.Color := clBlack;
   DBEGridMt.DefaultDrawDataCell(Rect,DBEGridMt.Columns[Datacol].Field,state);
 end
 else
  if DataModule4.IBQConsMtCompra.FieldByName('chegou').Value = 'S' then
  begin
   DBEGridMt.Canvas.brush.Color := $0080FF80;
   DBEGridMt.Canvas.Font.Color := clblack;
   DBEGridMt.DefaultDrawDataCell(Rect,DBEGridMt.Columns[Datacol].Field,state);
 end
 else
   if DataModule4.IBQConsMtCompra.FieldByName('chegou').Value = 'P' then
  begin
   DBEGridMt.Canvas.brush.Color := $00FF8080;
   DBEGridMt.Canvas.Font.Color := clblack;
   DBEGridMt.DefaultDrawDataCell(Rect,DBEGridMt.Columns[Datacol].Field,state);
 end

end;

procedure TFCompraMt.BPesquisaClick(Sender: TObject);
var situacao : string;
begin

if FiltroPesquisa.ItemIndex = 0 then
  begin
    situacao := 'C';
    DataModule4.IBQConsCompra.Close;
    DataModule4.IBQConsCompra.SQL.Clear;
    DataModule4.IBQConsCompra.SQL.Add('select pj.cd_pessoa_ju, pj.rz_social,comp.*');
    DataModule4.IBQConsCompra.SQL.Add('from');
    DataModule4.IBQConsCompra.SQL.Add('PESSOA_JURIDICA pj, COMPRA comp');
    DataModule4.IBQConsCompra.SQL.Add('where');
    DataModule4.IBQConsCompra.SQL.Add('comp.cd_fornecedor = pj.cd_pessoa_ju and');
    DataModule4.IBQConsCompra.SQL.Add('comp.situacao <> :psituacao');
    DataModule4.IBQConsCompra.SQL.Add('order by comp.dt_compra asc');
    DataModule4.IBQConsCompra.ParamByName('psituacao').AsString := situacao;
    DataModule4.IBQConsCompra.Open;
  end
else
  if (FiltroPesquisa.ItemIndex = 1) and (EdPesquisa.Text <> '') then
    begin
    DataModule4.IBQConsCompra.Close;
    DataModule4.IBQConsCompra.SQL.Clear;
    DataModule4.IBQConsCompra.SQL.Add('select pj.cd_pessoa_ju, pj.rz_social,comp.*');
    DataModule4.IBQConsCompra.SQL.Add('from');
    DataModule4.IBQConsCompra.SQL.Add('PESSOA_JURIDICA pj, COMPRA comp');
    DataModule4.IBQConsCompra.SQL.Add('where');
    DataModule4.IBQConsCompra.SQL.Add('comp.cd_fornecedor = pj.cd_pessoa_ju and');
    DataModule4.IBQConsCompra.SQL.Add('comp.cd_pedido = :ppedido');
    DataModule4.IBQConsCompra.ParamByName('ppedido').AsInteger :=
    StrToInt(EdPesquisa.Text);
    DataModule4.IBQConsCompra.Open;
    if DataModule4.IBQConsCompra.IsEmpty then
      begin
         MessageDlg('Não existe pedido cadastrado.',mtWarning,[mbok],0);
         EdPesquisa.SetFocus;
         EdPesquisa.Clear;
      end;
  end
else
  if (FiltroPesquisa.ItemIndex = 2) and (EdPesquisa.Text <> '')then
    begin
    DataModule4.IBQConsCompra.Close;
    DataModule4.IBQConsCompra.SQL.Clear;
    DataModule4.IBQConsCompra.SQL.Add('select pj.cd_pessoa_ju, pj.rz_social,comp.*');
    DataModule4.IBQConsCompra.SQL.Add('from');
    DataModule4.IBQConsCompra.SQL.Add('PESSOA_JURIDICA pj, COMPRA comp');
    DataModule4.IBQConsCompra.SQL.Add('where');
    DataModule4.IBQConsCompra.SQL.Add('comp.cd_fornecedor = pj.cd_pessoa_ju and');
    DataModule4.IBQConsCompra.SQL.Add('pj.rz_social like'
                                      +QuotedStr('%'+EdPesquisa.Text+'%'));
    DataModule4.IBQConsCompra.Open;
    if DataModule4.IBQConsCompra.IsEmpty then
      begin
         MessageDlg('Não existe pedido cadastrado.',mtWarning,[mbok],0);
         EdPesquisa.SetFocus;
         EdPesquisa.Clear;
      end;
  end
else
  if (FiltroPesquisa.ItemIndex = 3) and (EdData.Date <> 0) then
    begin
    DataModule4.IBQConsCompra.Close;
    DataModule4.IBQConsCompra.SQL.Clear;
    DataModule4.IBQConsCompra.SQL.Add('select pj.cd_pessoa_ju, pj.rz_social,comp.*');
    DataModule4.IBQConsCompra.SQL.Add('from');
    DataModule4.IBQConsCompra.SQL.Add('PESSOA_JURIDICA pj, COMPRA comp');
    DataModule4.IBQConsCompra.SQL.Add('where');
    DataModule4.IBQConsCompra.SQL.Add('comp.cd_fornecedor = pj.cd_pessoa_ju and');
    DataModule4.IBQConsCompra.SQL.Add('comp.dt_compra = :pdata');
    DataModule4.IBQConsCompra.ParamByName('pdata').AsDate :=
    StrToDate(EdData.Text);
    DataModule4.IBQConsCompra.Open;
    if DataModule4.IBQConsCompra.IsEmpty then
      begin
         MessageDlg('Não existe pedido cadastrado.',mtWarning,[mbok],0);
         EdData.SetFocus;
         EdData.Clear;
      end;
  end
else
  if (FiltroPesquisa.ItemIndex = 4) and (EdData.Date <> 0)then
    begin
    DataModule4.IBQConsCompra.Close;
    DataModule4.IBQConsCompra.SQL.Clear;
    DataModule4.IBQConsCompra.SQL.Add('select pj.cd_pessoa_ju, pj.rz_social,comp.*');
    DataModule4.IBQConsCompra.SQL.Add('from');
    DataModule4.IBQConsCompra.SQL.Add('PESSOA_JURIDICA pj, COMPRA comp');
    DataModule4.IBQConsCompra.SQL.Add('where');
    DataModule4.IBQConsCompra.SQL.Add('comp.cd_fornecedor = pj.cd_pessoa_ju and');
    DataModule4.IBQConsCompra.SQL.Add('comp.dt_prevista = :pdata');
    DataModule4.IBQConsCompra.ParamByName('pdata').AsDate :=
    StrToDate(EdData.Text);
    DataModule4.IBQConsCompra.Open;
    if DataModule4.IBQConsCompra.IsEmpty then
      begin
         MessageDlg('Não existe pedido cadastrado.',mtWarning,[mbok],0);
         EdData.SetFocus;
         EdData.Clear;
      end;
  end
else
  if (FiltroPesquisa.ItemIndex = 5) and (EdData.Date <> 0)then
    begin
    DataModule4.IBQConsCompra.Close;
    DataModule4.IBQConsCompra.SQL.Clear;
    DataModule4.IBQConsCompra.SQL.Add('select pj.cd_pessoa_ju, pj.rz_social,comp.*');
    DataModule4.IBQConsCompra.SQL.Add('from');
    DataModule4.IBQConsCompra.SQL.Add('PESSOA_JURIDICA pj, COMPRA comp');
    DataModule4.IBQConsCompra.SQL.Add('where');
    DataModule4.IBQConsCompra.SQL.Add('comp.cd_fornecedor = pj.cd_pessoa_ju and');
    DataModule4.IBQConsCompra.SQL.Add('comp.dt_chegada = :pdata');
    DataModule4.IBQConsCompra.ParamByName('pdata').AsDate :=
    StrToDate(EdData.Text);
    DataModule4.IBQConsCompra.Open;
    if DataModule4.IBQConsCompra.IsEmpty then
      begin
         MessageDlg('Não existe pedido cadastrado.',mtWarning,[mbok],0);
         EdData.SetFocus;
         EdData.Clear;
      end;
  end
else
  if FiltroPesquisa.ItemIndex = 6 then
    begin
    situacao := 'C';
    DataModule4.IBQConsCompra.Close;
    DataModule4.IBQConsCompra.SQL.Clear;
    DataModule4.IBQConsCompra.SQL.Add('select pj.cd_pessoa_ju, pj.rz_social,comp.*');
    DataModule4.IBQConsCompra.SQL.Add('from');
    DataModule4.IBQConsCompra.SQL.Add('PESSOA_JURIDICA pj, COMPRA comp');
    DataModule4.IBQConsCompra.SQL.Add('where');
    DataModule4.IBQConsCompra.SQL.Add('comp.cd_fornecedor = pj.cd_pessoa_ju and');
    DataModule4.IBQConsCompra.SQL.Add('comp.situacao = :psituacao');
    DataModule4.IBQConsCompra.ParamByName('psituacao').AsString := situacao;
    DataModule4.IBQConsCompra.Open;
    if DataModule4.IBQConsCompra.IsEmpty then
      begin
         MessageDlg('Não existe pedido cadastrado.',mtWarning,[mbok],0);
      end;
  end
else
  if FiltroPesquisa.ItemIndex = 7 then
    begin
    situacao := 'E';
    DataModule4.IBQConsCompra.Close;
    DataModule4.IBQConsCompra.SQL.Clear;
    DataModule4.IBQConsCompra.SQL.Add('select pj.cd_pessoa_ju, pj.rz_social,comp.*');
    DataModule4.IBQConsCompra.SQL.Add('from');
    DataModule4.IBQConsCompra.SQL.Add('PESSOA_JURIDICA pj, COMPRA comp');
    DataModule4.IBQConsCompra.SQL.Add('where');
    DataModule4.IBQConsCompra.SQL.Add('comp.cd_fornecedor = pj.cd_pessoa_ju and');
    DataModule4.IBQConsCompra.SQL.Add('comp.situacao = :psituacao');
    DataModule4.IBQConsCompra.ParamByName('psituacao').AsString := situacao;
    DataModule4.IBQConsCompra.Open;
    if DataModule4.IBQConsCompra.IsEmpty then
      begin
         MessageDlg('Não existe pedido cadastrado.',mtWarning,[mbok],0);
      end;
  end;



end;//fim do evento
procedure TFCompraMt.EdPesquisaExit(Sender: TObject);
begin
  BPesquisa.Click;
end;

procedure TFCompraMt.TbConsultaShow(Sender: TObject);
begin
  FiltroPesquisa.ItemIndex := 0;
  FiltroPesquisaClick(sender);
  DataModule4.IBQConsCompraAfterScroll(DataModule4.IBQConsCompra);
  BPesquisa.Click;
end;

procedure TFCompraMt.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F1 then
FiltroPesquisa.SetFocus;
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);

end;


procedure TFCompraMt.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
  DataModule4.IBQConsCompra.Close;
  DataModule4.IBQConsMtCompra2.Close;
  if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'Consulta Geral';
       BPesquisa.Click;
      EdData.Visible := false;
      EdData.Top := 50;
      EdData.Left := 145;

      EdPesquisa.Visible := false;
      EdPesquisa.Top := 24;
      EdPesquisa.Left := 144;

  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      LDescricaoPesquisa.Caption := 'Código do Pedido';
      EdPesquisa.Visible := true;
      EdPesquisa.SetFocus;
      EdPesquisa.MaxLength := 6;

      EdData.Visible := false;
      EdData.Top := 50;
      EdData.Left := 145;

      EdPesquisa.Visible := true;
      EdPesquisa.Top := 24;
      EdPesquisa.Left := 144;


    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'Contido na Razão Social do Fornecedor';
         EdPesquisa.Visible := true;
         EdPesquisa.SetFocus;
         EdPesquisa.MaxLength := 100;
         EdData.Visible := false;

        EdData.Visible := false;
        EdData.Top := 50;
        EdData.Left := 145;

        EdPesquisa.Visible := true;
        EdPesquisa.Top := 24;
        EdPesquisa.Left := 144;
      end
  else
    if FiltroPesquisa.ItemIndex = 3 then
      begin
         LDescricaoPesquisa.Caption := 'Data do Pedido';

         EdPesquisa.Visible := false;
         EdData.Visible := true;
         EdData.SetFocus;

        EdData.Top := 24;
        EdData.Left := 145;

        EdPesquisa.Top := 50;
        EdPesquisa.Left := 145;
      end
  else
    if FiltroPesquisa.ItemIndex = 4 then
      begin
         LDescricaoPesquisa.Caption := 'Data Prevista';

         EdPesquisa.Visible := false;
         EdData.Visible := true;
         EdData.SetFocus;

        EdData.Top := 24;
        EdData.Left := 145;


        EdPesquisa.Top := 50;
        EdPesquisa.Left := 145;
      end
   else
    if FiltroPesquisa.ItemIndex = 5 then
      begin
         LDescricaoPesquisa.Caption := 'Data da Chegada';

         EdPesquisa.Visible := false;
         EdData.Visible := true;
         EdData.SetFocus;

        EdData.Top := 24;
        EdData.Left := 145;


        EdPesquisa.Top := 50;
        EdPesquisa.Left := 145;
      end
  else
    if FiltroPesquisa.ItemIndex = 6 then
      begin
         LDescricaoPesquisa.Caption := 'Pedidos Recebidos';

         BPesquisa.Click;

         EdPesquisa.Visible := false;
         EdData.Visible := false;

        EdData.Top := 24;
        EdData.Left := 145;


        EdPesquisa.Top := 50;
        EdPesquisa.Left := 145;
      end
  else
    if FiltroPesquisa.ItemIndex = 7 then
      begin
         LDescricaoPesquisa.Caption := 'Pedidos Não Recebidos';

         BPesquisa.Click;
         EdPesquisa.Visible := false;
         EdData.Visible := false;

        EdData.Top := 24;
        EdData.Left := 145;


        EdPesquisa.Top := 50;
        EdPesquisa.Left := 145;
      end;
end;

procedure TFCompraMt.EdDataExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFCompraMt.DBGPedidosEnter(Sender: TObject);
begin
  KeyPreview := false;
end;

procedure TFCompraMt.DBGPedidosExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFCompraMt.DBGPedidosDblClick(Sender: TObject);
begin
if not(DataModule4.IBQConsCompra.IsEmpty) then
  begin
    EdPedido.Text := IntToStr(DataModule4.IBQConsCompraCD_PEDIDO.AsInteger);
    EdPedidoExit(sender);
    PaginaControle.ActivePage := TbCadastro;
  end;

{
  DataModule4.IBDCompraMt.Close;
  DataModule4.IBDCompraMt.ParamByName('ppedido').AsInteger :=
  DataModule4.IBQConsCompraCD_PEDIDO.AsInteger;
  DataModule4.IBDCompraMt.Open;
  if (DataModule4.IBDCompraMt.IsEmpty)then
      begin
        ShowMessage('Registro nao encontrado');
        Abort;
      end
    else
  PaginaControle.ActivePage := TbCadastro;}
end;

procedure TFCompraMt.DBGPedidosKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBGPedidosDblClick(sender);

end;
end;

procedure TFCompraMt.EdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;


end;

procedure TFCompraMt.DBECdFornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataModule4.IBDCompraMt.State in [dsinsert,dsedit] then
    begin
      if Key = VK_F5 then
      BCliente.Click;
    end;
end;

procedure TFCompraMt.EmailClick(Sender: TObject);
begin
  FEmailRespCompra := TFEmailRespCompra.Create(Self);
  FEmailRespCompra.ShowModal;

end;

end.
