unit UProdPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, RbDrawCore, RbButton, Buttons,
  Grids, DBGrids, RXDBCtrl, rxToolEdit, rxCurrEdit;

type
  TFProdPedido = class(TForm)
    Label1: TLabel;
    DBECdProduto: TDBEdit;
    DSProdPedido: TDataSource;
    Label3: TLabel;
    DBEQtde: TDBEdit;
    Label4: TLabel;
    DBETotDesc: TDBEdit;
    Label5: TLabel;
    DBEVlOriginal: TDBEdit;
    Label6: TLabel;
    DBEVlVenda: TDBEdit;
    LDescricaoProduto: TLabel;
    EdIndice: TEdit;
    Label2: TLabel;
    EdTotProduto: TEdit;
    Label8: TLabel;
    BConfirma: TRbButton;
    BCancela: TRbButton;
    BProduto: TSpeedButton;
    DBEGridCorProd: TRxDBGrid;
    DSCorProd: TDataSource;
    Label7: TLabel;
    DBEQtdeCor: TDBEdit;
    Label9: TLabel;
    DBECor: TDBEdit;
    BDefCor: TRbButton;
    BConfirmaCor: TRbButton;
    BRemoveCor: TRbButton;
    procedure BProdutoClick(Sender: TObject);
    procedure DBECdProdutoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdIndiceExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEQtdeExit(Sender: TObject);
    procedure BDefCorClick(Sender: TObject);
    procedure BConfirmaCorClick(Sender: TObject);
    procedure DBEQtdeCorExit(Sender: TObject);
    procedure DSCorProdStateChange(Sender: TObject);
    procedure BRemoveCorClick(Sender: TObject);
    procedure BConfirmaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBECorExit(Sender: TObject);
    procedure DBECorKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBECdProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEQtdeEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdPedido: TFProdPedido;
  conta_saida, ul_qtde, conta_qtde: Integer;
  total_perc, percentual, calc_perc, multiplica_perc, perc_prod : Real;
  fecha_prod : Boolean;
implementation

uses UDataModule3, UConsSimpProduto, UDataModule4;

{$R *.dfm}

procedure TFProdPedido.BProdutoClick(Sender: TObject);
begin
if fecha_prod = false then
  begin
  Application.CreateForm(TFConsSimpProduto, FConsSimpProduto);
  if FConsSimpProduto.ShowModal = mrOk then
    begin
      DataModule3.IBDProdPedidoCD_PRODUTO.AsInteger :=
      DataModule3.IBQConsProdutoCD_PRODUTO.AsInteger;

      LDescricaoProduto.Caption :=
      DataModule3.IBQConsProdutoDS_PRODUTO.AsString;

      DBECdProduto.SetFocus;

    end;
  end;
end;

procedure TFProdPedido.DBECdProdutoExit(Sender: TObject);
begin

    if DBECdProduto.Text <> '' then
      begin
        DataModule3.IBQExisteProd.Close;
        DataModule3.IBQExisteProd.ParamByName('ppedido').AsInteger :=
        DataModule3.IBDProdPedidoCD_PEDIDO.AsInteger;
        DataModule3.IBQExisteProd.ParamByName('pproduto').AsInteger :=
        StrToInt(DBECdProduto.Text);
        DataModule3.IBQExisteProd.Open;
        if not (DataModule3.IBQExisteProd.IsEmpty) then
          begin
             ShowMessage('Produto já existente');
             DBECdProduto.SetFocus;
             DBECdProduto.Clear;
          end
        else
        begin

            DataModule3.IBQConsProduto.Close;
            DataModule3.IBQConsProduto.SQL.Clear;
            DataModule3.IBQConsProduto.SQL.Add('select pd.*, str.ds_situacao, un.ds_unidade, gp.ds_grupo');
            DataModule3.IBQConsProduto.SQL.Add('from');
            DataModule3.IBQConsProduto.SQL.Add('PRODUTO pd, UNIDADE_MEDIDA un, SITU_TRIBUTARIA str,');
            DataModule3.IBQConsProduto.SQL.Add('GRUPO_PRODUTO gp');
            DataModule3.IBQConsProduto.SQL.Add('where');
            DataModule3.IBQConsProduto.SQL.Add('pd.cd_situ_tribu = str.cd_situacao and');
            DataModule3.IBQConsProduto.SQL.Add('pd.cd_un_medida = un.cd_unidade and');
            DataModule3.IBQConsProduto.SQL.Add('pd.cd_grupo_prod = gp.cd_grupo and');
            DataModule3.IBQConsProduto.SQL.Add('pd.cd_produto = :pproduto');
            DataModule3.IBQConsProduto.ParamByName('pproduto').AsInteger := StrToInt(DBECdProduto.Text);
            DataModule3.IBQConsProduto.Open;
            if DataModule3.IBQConsProduto.IsEmpty then
          begin
            ShowMessage('Produto não encontrado!');
            DBECdProduto.SetFocus;
            DBECdProduto.Clear;
          end
        else
          begin
             LDescricaoProduto.Caption :=
             DataModule3.IBQConsProdutoDS_PRODUTO.AsString;
             DataModule3.IBDProdPedidoVALOR_PROD.AsFloat := DataModule3.IBQConsProdutoPRECO_VENDA.AsFloat;
          end;
  end;
  end;
end;

procedure TFProdPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;

end;

procedure TFProdPedido.EdIndiceExit(Sender: TObject);
begin
if DBEQtde.Text <> '' then
  begin
  if EdIndice.Text <> '' then
    begin
    conta_saida := conta_saida + 1;

    if conta_saida = 1 then
      begin
        DataModule3.IBDProdPedidoPERC_DESCONTO.AsFloat :=
        StrToFloat(EdIndice.Text);
      end
    else
      begin
      //CALCULA E MOSTRA O PERCENTUAL DE DESCONTO
        percentual := StrToFloat(EdIndice.Text);
        multiplica_perc := (percentual * DataModule3.IBDProdPedidoPERC_DESCONTO.AsFloat)/100;
        calc_perc := (DataModule3.IBDProdPedidoPERC_DESCONTO.AsFloat + (percentual))+ multiplica_perc;
        DataModule3.IBDProdPedidoPERC_DESCONTO.AsFloat := calc_perc;
      end;
      //CALCULA VALOR DE VENDA DO PRODUTO
      if DataModule3.IBDProdPedidoPERC_DESCONTO.AsFloat < 0 then
        begin
        perc_prod := DataModule3.IBDProdPedidoPERC_DESCONTO.AsFloat * (-1);
          DataModule3.IBDProdPedidoVL_PROD_VENDA.AsFloat :=
          DataModule3.IBDProdPedidoVALOR_PROD.AsFloat - ((DataModule3.IBDProdPedidoVALOR_PROD.AsFloat *  perc_prod)/100);
        end
      else
        begin
          DataModule3.IBDProdPedidoVL_PROD_VENDA.AsFloat :=
          DataModule3.IBDProdPedidoVALOR_PROD.AsFloat + ((DataModule3.IBDProdPedidoVALOR_PROD.AsFloat * DataModule3.IBDProdPedidoPERC_DESCONTO.AsFloat )/100);

        end;

      end
    else
      begin
         //SE NAO FOI INFORMADO INDICE NENHUM
          DataModule3.IBDProdPedidoVL_PROD_VENDA.AsFloat :=
          DataModule3.IBDProdPedidoVALOR_PROD.AsFloat;

          DataModule3.IBDProdPedidoPERC_DESCONTO.AsFloat := 0;
      end;
      //CALCULA O VALOR TOTAL DOS PRODUTOS
      EdTotProduto.Text :=
      FloatToStr(DataModule3.IBDProdPedidoQTDE_PRODUTO.AsInteger * DataModule3.IBDProdPedidoVL_PROD_VENDA.AsFloat);
    end
  else
    begin
       ShowMessage('Informe a quantidade!');
       DBEQtde.SetFocus;
       EdIndice.Clear;

    end;
end;

procedure TFProdPedido.FormShow(Sender: TObject);
begin
  conta_saida := 0;
  ul_qtde := 0;
  conta_qtde := 0;
  fecha_prod := false;

  DataModule3.IBDCorProd.Close;
  DataModule3.IBDCorProd.ParamByName('ppedido').AsInteger := 999999;
  DataModule3.IBDCorProd.ParamByName('pproduto').AsInteger := 999999;
  DataModule3.IBDCorProd.Open;
end;

procedure TFProdPedido.DBEQtdeExit(Sender: TObject);
begin

  if EdIndice.Text <> '' then
    begin
       //CALCULA VALOR DE VENDA DO PRODUTO
      if DataModule3.IBDProdPedidoPERC_DESCONTO.AsFloat < 0 then
        begin
        perc_prod := DataModule3.IBDProdPedidoPERC_DESCONTO.AsFloat * (-1);
          DataModule3.IBDProdPedidoVL_PROD_VENDA.AsFloat :=
          DataModule3.IBDProdPedidoVALOR_PROD.AsFloat - ((DataModule3.IBDProdPedidoVALOR_PROD.AsFloat *  perc_prod)/100);
        end
      else
        begin
          DataModule3.IBDProdPedidoVL_PROD_VENDA.AsFloat :=
          DataModule3.IBDProdPedidoVALOR_PROD.AsFloat + ((DataModule3.IBDProdPedidoVALOR_PROD.AsFloat * DataModule3.IBDProdPedidoPERC_DESCONTO.AsFloat )/100);

        end;
        BConfirma.SetFocus;
      end
    else
      begin
         //SE NAO FOI INFORMADO INDICE NENHUM
          DataModule3.IBDProdPedidoVL_PROD_VENDA.AsFloat :=
          DataModule3.IBDProdPedidoVALOR_PROD.AsFloat;

          DataModule3.IBDProdPedidoPERC_DESCONTO.AsFloat := 0;
      end;
      //CALCULA O VALOR TOTAL DOS PRODUTOS
      EdTotProduto.Text :=
      FloatToStr(DataModule3.IBDProdPedidoQTDE_PRODUTO.AsInteger * DataModule3.IBDProdPedidoVL_PROD_VENDA.AsFloat);

      BDefCor.Enabled := true;
end;




procedure TFProdPedido.BDefCorClick(Sender: TObject);
begin

  DataModule3.IBQSomaQtdeCor.Close;
  DataModule3.IBQSomaQtdeCor.ParamByName('ppedido').AsInteger :=
  DataModule3.IBDProdPedidoCD_PEDIDO.AsInteger;
  DataModule3.IBQSomaQtdeCor.ParamByName('pproduto').AsInteger :=
  StrToInt(DBECdProduto.Text);
  DataModule3.IBQSomaQtdeCor.Open;
  if DataModule3.IBQSomaQtdeCorSOMA_QTDE.AsInteger <> StrToInt(DBEQtde.Text) then
  begin

  DataModule3.IBDCorProd.Open;
  DataModule3.IBDCorProd.Insert;

  DataModule3.IBDCorProdCD_PEDIDO.AsInteger :=
  DataModule3.IBDProdPedidoCD_PEDIDO.AsInteger;

  DataModule3.IBDCorProdCD_PRODUTO.AsInteger :=
  DataModule3.IBDProdPedidoCD_PRODUTO.AsInteger;

  DBEQtdeCor.SetFocus;
  end
else
  begin
     ShowMessage('Cores já definidos');
  end;

end;

procedure TFProdPedido.BConfirmaCorClick(Sender: TObject);
begin

  if DBEQtdeCor.Text = '' then
    begin
      ShowMessage('Quantidade é obrigatório');
      DBEQtdeCor.SetFocus;
    end
  else
  if DBECor.Text = '' then
    begin
      ShowMessage('Cor é obrigatório');
      DBECor.SetFocus;
    end
  else
    begin

  DataModule3.IBDCorProd.Post;

  DataModule3.IBQSomaQtdeCor.Close;
  DataModule3.IBQSomaQtdeCor.ParamByName('ppedido').AsInteger :=
  DataModule3.IBDProdPedidoCD_PEDIDO.AsInteger;
  DataModule3.IBQSomaQtdeCor.ParamByName('pproduto').AsInteger :=
  StrToInt(DBECdProduto.Text);
  DataModule3.IBQSomaQtdeCor.Open;
  if DataModule3.IBQSomaQtdeCorSOMA_QTDE.AsInteger <> StrToInt(DBEQtde.Text) then
    begin
      DataModule3.IBDCorProd.Open;
      DataModule3.IBDCorProd.Insert;

      DataModule3.IBDCorProdCD_PEDIDO.AsInteger :=
      DataModule3.IBDProdPedidoCD_PEDIDO.AsInteger;

      DataModule3.IBDCorProdCD_PRODUTO.AsInteger :=
      DataModule3.IBDProdPedidoCD_PRODUTO.AsInteger;
      DBEQtdeCor.SetFocus;

    end
  else
    begin
       DataModule3.IBQConsCoresProd.Close;
       DataModule3.IBQConsCoresProd.ParamByName('ppedido').AsInteger :=
       DataModule3.IBDProdPedidoCD_PEDIDO.AsInteger;
       DataModule3.IBQConsCoresProd.ParamByName('pproduto').AsInteger :=
       DataModule3.IBDProdPedidoCD_PRODUTO.AsInteger;
       DataModule3.IBQConsCoresProd.Open;

       BDefCor.Enabled := false;
       fecha_prod := true;
       DBECdProduto.ReadOnly := true;
       BConfirma.SetFocus;
    end;


 end; 
end;

procedure TFProdPedido.DBEQtdeCorExit(Sender: TObject);
begin
if DBEQtdeCor.Text <> '' then
  begin
  DataModule3.IBQSomaQtdeCor.Close;
  DataModule3.IBQSomaQtdeCor.ParamByName('ppedido').AsInteger :=
  DataModule3.IBDProdPedidoCD_PEDIDO.AsInteger;
  DataModule3.IBQSomaQtdeCor.ParamByName('pproduto').AsInteger :=
  StrToInt(DBECdProduto.Text);
  DataModule3.IBQSomaQtdeCor.Open;
  if (DataModule3.IBQSomaQtdeCorSOMA_QTDE.AsInteger + StrToInt(DBEQtdeCor.Text)) > StrToInt(DBEQtde.Text) then
    begin
      ShowMessage('Quantidade maior do que o informado!');
      DBEQtdeCor.SetFocus;
      DBEQtdeCor.Clear;
    end;

 end;
end;

procedure TFProdPedido.DSCorProdStateChange(Sender: TObject);
begin
if DataModule3.IBDCorProd.State in [dsinsert,dsedit] then
  begin
    BDefCor.Enabled := false;
    BRemoveCor.Enabled := false;
    BConfirmaCor.Enabled := true;
  end
else
  begin
    BConfirmaCor.Enabled := false;
    BRemoveCor.Enabled := true;
  end;

end;

procedure TFProdPedido.BRemoveCorClick(Sender: TObject);
begin
  DataModule3.IBQApagaCorProd.Close;
  DataModule3.IBQApagaCorProd.ParamByName('ppedido').AsInteger :=
  DataModule3.IBQConsCoresProdCD_PEDIDO.AsInteger;
  DataModule3.IBQApagaCorProd.ParamByName('pproduto').AsInteger :=
  DataModule3.IBQConsCoresProdCD_PRODUTO.AsInteger;
  DataModule3.IBQApagaCorProd.ParamByName('pdesempate').AsInteger :=
  DataModule3.IBQConsCoresProdCD_DESEMPATE.AsInteger;
  DataModule3.IBQApagaCorProd.Open;

       DataModule3.IBQConsCoresProd.Close;
       DataModule3.IBQConsCoresProd.ParamByName('ppedido').AsInteger :=
       DataModule3.IBDProdPedidoCD_PEDIDO.AsInteger;
       DataModule3.IBQConsCoresProd.ParamByName('pproduto').AsInteger :=
       DataModule3.IBDProdPedidoCD_PRODUTO.AsInteger;
       DataModule3.IBQConsCoresProd.Open;

       DataModule3.IBDCorProd.Close;
       DataModule3.IBDCorProd.ParamByName('ppedido').AsInteger :=
       DataModule3.IBDProdPedidoCD_PEDIDO.AsInteger;
       DataModule3.IBDCorProd.ParamByName('pproduto').AsInteger :=
       DataModule3.IBDProdPedidoCD_PRODUTO.AsInteger;
       DataModule3.IBDCorProd.Open;

      BDefCor.Enabled := true;

       
end;

procedure TFProdPedido.BConfirmaClick(Sender: TObject);
begin
  DataModule3.IBQSomaQtdeCor.Close;
  DataModule3.IBQSomaQtdeCor.ParamByName('ppedido').AsInteger :=
  DataModule3.IBDProdPedidoCD_PEDIDO.AsInteger;
  DataModule3.IBQSomaQtdeCor.ParamByName('pproduto').AsInteger :=
  StrToInt(DBECdProduto.Text);
  DataModule3.IBQSomaQtdeCor.Open;
  if DataModule3.IBQSomaQtdeCorSOMA_QTDE.AsInteger <> StrToInt(DBEQtde.Text) then
    begin
      BConfirma.ModalResult := mrNone;
      ShowMessage('Definir cores antes de confirmar!');
    end
  else
    begin
      BConfirma.ModalResult := mrOk;
    end


end;

procedure TFProdPedido.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule3.IBDCorProd.State in [dsedit,dsinsert] then
  begin
   ShowMessage('Confirme o cadastro antes de fehar!!!  ');
  end
 else
   canclose := true;

end;

procedure TFProdPedido.DBECorExit(Sender: TObject);
var cor : Integer;
begin
if DBECor.Text <> '' then
begin
 if DBECor.Text = '999' then
 begin
   MessageDlg('Cor 999 não é permitido.',mtWarning,[mbok],0);
   DBECor.SetFocus;
   DBECor.Clear;
 end
else
  begin
    cor := StrToInt(DBECor.Text);

    DataModule3.IBQExisteCorP.Close;
    DataModule3.IBQExisteCorP.ParamByName('pmateria').AsInteger := cor;
    DataModule3.IBQExisteCorP.Open;
    if DataModule3.IBQExisteCorP.IsEmpty then
      begin
        MessageDlg('Não existe tecido com este código!',mtWarning,[mbok],0);
        DBECor.SetFocus;
        DBECor.Clear;
      end
    else
   if DataModule3.IBQExisteCorPFORA_LINHA.AsString = 'S' then
    begin
      MessageDlg('Tecido fora de linha!',mtWarning,[mbok],0);
      DBECor.SetFocus;
      DBECor.Clear;
    end
  else
    begin

  //consulta saldo carteira e processo da cor
  DataModule4.IBQCarteiraProcesso.Close;
  DataModule4.IBQCarteiraProcesso.ParamByName('pmateria').AsInteger := StrToInt(DBECor.Text);
  DataModule4.IBQCarteiraProcesso.Open;
  if DataModule4.IBQCarteiraProcessoDISPONIVEL.AsFloat < StrToFloat(DBECor.Text) then
    begin
      MessageDlg('Tecido não disponível no momento!',mtWarning,[mbok],0);
      
    end;


  DataModule3.IBQExisteCor.Close;
  DataModule3.IBQExisteCor.ParamByName('ppedido').AsInteger :=
  DataModule3.IBDProdPedidoCD_PEDIDO.AsInteger;
  DataModule3.IBQExisteCor.ParamByName('pproduto').AsInteger :=
  DataModule3.IBDProdPedidoCD_PRODUTO.AsInteger;
  DataModule3.IBQExisteCor.ParamByName('pcor').AsInteger :=
  StrToInt(DBECor.Text);
  DataModule3.IBQExisteCor.Open;
  if not(DataModule3.IBQExisteCor.IsEmpty) then
    begin
      ShowMessage('Cor já existente');
      DBECor.SetFocus;
      DBECor.Clear;
    end;
  end;
 end;
end;
end;

procedure TFProdPedido.DBECorKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;

procedure TFProdPedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFProdPedido.DBECdProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f5 then
    begin
      BProduto.Click;
    end;
end;

procedure TFProdPedido.DBEQtdeEnter(Sender: TObject);
begin
DataModule3.IBDCorProd.Close;
end;

end.
