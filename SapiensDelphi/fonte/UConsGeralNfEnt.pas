unit UConsGeralNfEnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, UDm2, DB, StdCtrls, Buttons, DBClient;

type
  TFConsGeralNfEnt = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid: TDBGrid;
    DsConsGeral: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    EdFiltro: TEdit;
    EdValor: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure DBGridTitleClick(Column: TColumn);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure EdValorChange(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    vaCampo, vaTela, vaSql : string;
    vbWhere : Boolean;
    vnColuna : Integer;
  end;

var
  FConsGeralNfEnt: TFConsGeralNfEnt;

implementation
uses  UNfEntrada,UAddMtNfEnt, UPedido, UAddProdPed, UConsPedido,
  UConsMateriaPrima, UMensagensAlertaClientes, UAltDadosGeraisPedSysRep,
  UAddProPedSysRep, UAlteraProdCarCorte, ULigProdutos_Cores,
  UComparaComprasClientes, URelatorioViagem, UAssistencia, UPendenciaCarga,
  UDmOra, UPendenciasPreCarga, UConsFaturamento, UAcertoViagem,
  UConsCoresPorProdutos, UAltProdCargaCorteEstof, UConsMateriaPrimaMediaCons,
  UComposicaoMpProdutos, UDuplicaComposicaoMpProdutos, UGerenciamentoCidades,
  UAddCliMonitoramento, UMoniCliente, UApelidosProdSapiens, UDescontosPorRep,
  UCadFormaCompraMP, UAjustaConsumoMateriaPrima;

{$R *.dfm}

procedure TFConsGeralNfEnt.DBGridDblClick(Sender: TObject);
begin
    if (vaCampo = 'CodFor') and (vaTela = 'FNfEntrada') then
      begin
        FNfEntrada.EdCodFor.Text := IntToStr(DBGrid.DataSource.DataSet.FieldByName('CODFOR').AsInteger);
        FNfEntrada.ActiveControl := FNfEntrada.EdCodFor;
        Close;
      end
    else
     if (vaCampo = 'CodSnf') and (vaTela = 'FNfEntrada') then
      begin
        FNfEntrada.EdCodSnf.Text := DBGrid.DataSource.DataSet.FieldByName('CODSNF').AsString;
        FNfEntrada.ActiveControl := FNfEntrada.EdCodSnf;
        Close;
      end
    else
     if (vaCampo = 'TnsPro') and (vaTela = 'FNfEntrada') then
      begin
        FNfEntrada.EdTnsPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODTNS').AsString;
        FNfEntrada.ActiveControl := FNfEntrada.EdTnsPro;
        Close;
      end
   else
     if (vaCampo = 'TnsSer')  and (vaTela = 'FNfEntrada')then
      begin
        FNfEntrada.EdTnsSer.Text := DBGrid.DataSource.DataSet.FieldByName('CODTNS').AsString;
        FNfEntrada.ActiveControl := FNfEntrada.EdTnsSer;
        Close;
      end
   else
     if (vaCampo = 'CodCpg') and (vaTela = 'FNfEntrada') then
      begin
        FNfEntrada.EdCodCpg.Text := DBGrid.DataSource.DataSet.FieldByName('CODCPG').AsString;
        FNfEntrada.ActiveControl := FNfEntrada.EdCodCpg;
        Close;
      end
   else
     if (vaCampo = 'CodPro') and (vaTela = 'FAddMtNfEnt') then
      begin
        FAddMtNfEnt.EdCodPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        FAddMtNfEnt.ActiveControl := FAddMtNfEnt.EdCodPro;
        Close;
      end
   else
     if (vaCampo = 'ProFor') and (vaTela = 'FAddMtNfEnt') then
      begin
        FAddMtNfEnt.EdProFor.Text := DBGrid.DataSource.DataSet.FieldByName('PROFOR').AsString;
        FAddMtNfEnt.ActiveControl := FAddMtNfEnt.EdProFor;
        Close;
      end
   else
     if (vaCampo = 'NumOcp') and (vaTela = 'FAddMtNfEnt') then
      begin
        FAddMtNfEnt.EdNumOcp.Text := IntToStr(DBGrid.DataSource.DataSet.FieldByName('NUMOCP').AsInteger);
        FAddMtNfEnt.EdQtdOcp.Value := DBGrid.DataSource.DataSet.FieldByName('QTDABE').AsCurrency;
        FAddMtNfEnt.vnSeqIpo := DBGrid.DataSource.DataSet.FieldByName('SEQIPO').AsInteger;
        FAddMtNfEnt.ActiveControl := FAddMtNfEnt.EdQtdOcp;
        Close;
      end
   else
     if (vaCampo = 'NumPed') and (vaTela = 'FPedido') then
      begin
        FPedido.EdNumPed.Text := IntToStr(DBGrid.DataSource.DataSet.FieldByName('NUMPED').AsInteger);
        Close;
      end
   else
     if (vaCampo = 'TnsPro') and (vaTela = 'FPedido') then
      begin
        FPedido.EdTnsPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODTNS').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodCli') and (vaTela = 'FPedido') then
      begin
        FPedido.EdCodCli.Text := IntToStr(DBGrid.DataSource.DataSet.FieldByName('CODCLI').AsInteger);
        Close;
      end
   else
     if (vaCampo = 'CodRep') and (vaTela = 'FPedido') then
      begin
        FPedido.EdCodRep.Text := IntToStr(DBGrid.DataSource.DataSet.FieldByName('CODREP').AsInteger);
        Close;
      end
   else
     if (vaCampo = 'CodCpg') and (vaTela = 'FPedido') then
      begin
        FPedido.EdCodCpg.Text := DBGrid.DataSource.DataSet.FieldByName('CODCPG').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodPro') and (vaTela = 'FAddProdPred') then
      begin
        FAddProdPred.EdCodPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodCli') and (vaTela = 'FConsPedido') then
      begin
        if trim(FConsPedido.EdCodCli.Text) = '' then
           FConsPedido.EdCodCli.Text := DBGrid.DataSource.DataSet.FieldByName('CODCLI').AsString
        else
           FConsPedido.EdCodCli.Text := FConsPedido.EdCodCli.Text +','+DBGrid.DataSource.DataSet.FieldByName('CODCLI').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodRep') and (vaTela = 'FConsPedido') then
      begin
        if trim(FConsPedido.EdCodRep.Text) = '' then
           FConsPedido.EdCodRep.Text := DBGrid.DataSource.DataSet.FieldByName('CODREP').AsString
        else
           FConsPedido.EdCodRep.Text := FConsPedido.EdCodRep.Text +','+DBGrid.DataSource.DataSet.FieldByName('CODREP').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodFil') and (vaTela = 'FConsPedido') then
      begin
        if trim(FConsPedido.EdCodFil.Text) = '' then
           FConsPedido.EdCodFil.Text := IntToStr(DBGrid.DataSource.DataSet.FieldByName('CODFIL').AsInteger)
        else
           FConsPedido.EdCodFil.Text := FConsPedido.EdCodFil.Text +','+ IntToStr(DBGrid.DataSource.DataSet.FieldByName('CODFIL').AsInteger);
        Close;
      end
   else
     if (vaCampo = 'precar') and (vaTela = 'FConsPedido') then
      begin
        if trim(FConsPedido.EdPreCar.Text) = '' then
           FConsPedido.EdPreCar.Text := IntToStr(DBGrid.DataSource.DataSet.FieldByName('USU_PRECAR').AsInteger)
        else
           FConsPedido.EdPreCar.Text := FConsPedido.EdPreCar.Text +','+ IntToStr(DBGrid.DataSource.DataSet.FieldByName('USU_PRECAR').AsInteger);
        Close;
      end
   else
     if (vaCampo = 'numane') and (vaTela = 'FConsPedido') then
      begin
        if trim(FConsPedido.EdNumAne.Text) = '' then
           FConsPedido.EdNumAne.Text := IntToStr(DBGrid.DataSource.DataSet.FieldByName('NUMANE').AsInteger)
        else
           FConsPedido.EdNumAne.Text := FConsPedido.EdNumAne.Text +','+ IntToStr(DBGrid.DataSource.DataSet.FieldByName('NUMANE').AsInteger);
        Close;
      end
   else
     if (vaCampo = 'CidCli') and (vaTela = 'FConsPedido') then
      begin
        FConsPedido.EdCidCli.Text := DBGrid.DataSource.DataSet.FieldByName('CIDCLI').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodPro') and (vaTela = 'FConsPedido') then
      begin
        FConsPedido.EdCodPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        Close;
      end
   else
     if (vaCampo = 'codpro') and (vaTela = 'FConsMateriaPrima') then
      begin
        FConsMateriaPrima.EdCodPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        Close;
      end
   else
   if (vaCampo = 'codpro') and (vaTela = 'FConsMateriaPrimaMediaCons') then
      begin
        FConsMateriaPrimaMediaCons.edtCodPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        Close;
      end
   else
   if (vaCampo = 'codfam') and (vaTela = 'FConsMateriaPrimaMediaCons') then
      begin
        FConsMateriaPrimaMediaCons.edtCodFam.Text := DBGrid.DataSource.DataSet.FieldByName('CODFAM').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodCli') and (vaTela = 'FMensagensAlertaClientes') then
      begin
        FMensagensAlertaClientes.EdCodCli.Text := IntToStr(DBGrid.DataSource.DataSet.FieldByName('CODCLI').AsInteger);
        Close;
      end
   else
     if (vaCampo = 'CodCpg') and (vaTela = 'FAltDadosGeraisPedSysRep') then
      begin
        FAltDadosGeraisPedSysRep.EdCodCpg.Text := DBGrid.DataSource.DataSet.FieldByName('CODCPG').AsString;
        FAltDadosGeraisPedSysRep.LDsCodCpg.Caption := DBGrid.DataSource.DataSet.FieldByName('DESCPG').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodPro') and (vaTela = 'FAddProPedSysRep') then
      begin
        FAddProPedSysRep.EdCodPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        FAddProPedSysRep.LDsCodPro.Caption := DBGrid.DataSource.DataSet.FieldByName('DESPRO').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodPro') and (vaTela = 'FAlteraProdCarCorte') then
      begin
        FAlteraProdCarCorte.EdProduto.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodPro') and (vaTela = 'FLigProdutos_Cores') then
      begin
        FLigProdutos_Cores.edtCodPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        Close;
      end
   else
     if (vaCampo = 'EdCodPro') and (vaTela = 'FLigProdutos_Cores') then
      begin
        FLigProdutos_Cores.EdCodPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        Close;
      end
   else
     if (vaCampo = 'EdCodCli') and (vaTela = 'FComparaComprasClientes') then
      begin
        FComparaComprasClientes.EdCodCli.Text := DBGrid.DataSource.DataSet.FieldByName('CODCLI').AsString;
        Close;
      end
   else
     if (vaCampo = 'EdCodRep') and (vaTela = 'FComparaComprasClientes') then
      begin
        FComparaComprasClientes.EdCodRep.Text := DBGrid.DataSource.DataSet.FieldByName('CODREP').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodMtr') and (vaTela = 'FRelatorioViagem') then
      begin
        FRelatorioViagem.DBEUSU_CODMTR.Field.Value := DBGrid.DataSource.DataSet.FieldByName('CODMTR').AsInteger;
        FRelatorioViagem.LDsCodMtr.Caption := DBGrid.DataSource.DataSet.FieldByName('NOMMOT').AsString;
        Close;
      end
   else
     if (vaCampo = 'NumPed') and (vaTela = 'FAssistencia') then
      begin
        FAssistencia.EdNumPed.Text := DBGrid.DataSource.DataSet.FieldByName('NUMPED').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodPro') and (vaTela = 'FAssistencia') then
      begin
        FAssistencia.EdCodPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodCli') and (vaTela = 'FPendenciaCarga') then
      begin
        FPendenciaCarga.DBUSU_CODCLI.Field.Value := DBGrid.DataSource.DataSet.FieldByName('CODCLI').AsInteger;
        Close;
      end
   else
     if (vaCampo = 'CodPro') and (vaTela = 'FPendenciaCarga') then
      begin
        DmOra.CadUsu_T097PpenUSU_CODPRO.AsString := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        Close;
      end
   else
     if (vaCampo = 'NumPen') and (vaTela = 'FPendenciaCarga') then
      begin
        FPendenciaCarga.EdNumPen.Text := IntToStr(DBGrid.DataSource.DataSet.FieldByName('USU_NUMPEN').AsInteger);
        Close;
      end
   else
     if (vaCampo = 'VlrPro') and (vaTela = 'FPendenciaCarga') then
      begin
        DmOra.CadUsu_T097PpenUSU_VLRPRO.AsCurrency := DBGrid.DataSource.DataSet.FieldByName('PREBAS').AsCurrency;
        Close;
      end
   else
     if (vaCampo = 'CodCli') and (vaTela = 'FAssistencia') then
      begin
        FAssistencia.EdCodCli.Text := IntToStr(DBGrid.DataSource.DataSet.FieldByName('CODCLI').AsInteger);
        Close;
      end
   else
     if (vaCampo = 'NumPen') and (vaTela = 'FPendenciasPreCarga') then
      begin
        FPendenciasPreCarga.AddPendenciasNumPen.Value := DBGrid.DataSource.DataSet.FieldByName('USU_NUMPEN').AsInteger;
        FPendenciasPreCarga.AddPendenciasCodCli.Value := DBGrid.DataSource.DataSet.FieldByName('USU_CODCLI').AsInteger;
        FPendenciasPreCarga.AddPendenciasNomCli.Value := DBGrid.DataSource.DataSet.FieldByName('NOMCLI').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodCli') and (vaTela = 'FConsFaturamento') then
      begin
        FConsFaturamento.EdCodCli.Text := IntToStr(DBGrid.DataSource.DataSet.FieldByName('CODCLI').AsInteger);
        Close;
      end
   else
     if (vaCampo = 'CodRep') and (vaTela = 'FConsFaturamento') then
      begin
        FConsFaturamento.EdCodRep.Text := IntToStr(DBGrid.DataSource.DataSet.FieldByName('CODREP').AsInteger);
        Close;
      end
   else
     if (vaCampo = 'CodRep') and (vaTela = 'FCidades') then
      begin
        DmOra.CadUsu_TCidadesUSU_CODREP.AsInteger := DBGrid.DataSource.DataSet.FieldByName('CODREP').AsInteger;
        DmOra.CadUsu_TCidadesUSU_APEREP.AsString := DBGrid.DataSource.DataSet.FieldByName('APEREP').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodDes') and (vaTela = 'FAcertoViagem') then
      begin
        FAcertoViagem.CadUsu_TAdvDspUSU_CODDES.AsInteger := DBGrid.DataSource.DataSet.FieldByName('USU_CODDES').AsInteger;
        Close;
      end
   else
     if (vaCampo = 'CodPro') and (vaTela = 'FConsCoresPorProdutos') then
      begin
        FConsCoresPorProdutos.EdCodPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        FConsCoresPorProdutos.LDsProd.Caption := DBGrid.DataSource.DataSet.FieldByName('DESPRO').AsString;
        Close;
      end
   else
     if (vaCampo = 'CodPro') and (vaTela = 'FAltProdCargaCorteEstof') then
      begin
        Dm2.ClientAltCargaCorteEstofCODPRO.Value := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        Dm2.ClientAltCargaCorteEstofDESPRO.Value := DBGrid.DataSource.DataSet.FieldByName('DESPRO').AsString;
        Close;
      end
     else
     if (vaCampo = 'CodPro') and (vaTela = 'FComposicaoMpProdutos') then
      begin
        FComposicaoMpProdutos.edtCodPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        Close;
      end
     else
     if (vaCampo = 'CodDer') and (vaTela = 'FComposicaoMpProdutos') then
      begin
        FComposicaoMpProdutos.edtCodDer.Text := DBGrid.DataSource.DataSet.FieldByName('CODDER').AsString;
        Close;
      end
     else
     if (vaCampo = 'CodPro') and (vaTela = 'FDuplicaComposicaoMpProdutos') then
      begin
        FDuplicaComposicaoMpProdutos.edtCodPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        Close;
      end
     else
     if (vaCampo = 'CodDer') and (vaTela = 'FDuplicaComposicaoMpProdutos') then
      begin
        FDuplicaComposicaoMpProdutos.edtCodDer.Text := DBGrid.DataSource.DataSet.FieldByName('CODDER').AsString;
        Close;
      end
     else
     if (vaCampo = 'CodRep') and (vaTela = 'FGerenciamentoCidades') then
      begin
        FGerenciamentoCidades.edtCodRep.Value := DBGrid.DataSource.DataSet.FieldByName('CODREP').AsInteger;
        FGerenciamentoCidades.edtDesRep.Text := DBGrid.DataSource.DataSet.FieldByName('APEREP').AsString;
        Close;
      end
     else
     if (vaCampo = 'CodCli') and (vaTela = 'FAddCliMonitoramento') then
      begin
        FAddCliMonitoramento.edtCodCli.AsInteger := DBGrid.DataSource.DataSet.FieldByName('CODCLI').AsInteger;
        FAddCliMonitoramento.edtNomCli.Text := DBGrid.DataSource.DataSet.FieldByName('NOMCLI').AsString;
        Close;
      end
      else
      if (vaCampo = 'CodCli') and (vaTela = 'FMoniCliente') then
       begin
        FMoniCliente.edtCodCli.AsInteger := DBGrid.DataSource.DataSet.FieldByName('CODCLI').AsInteger;
        FMoniCliente.edtNomCli.Text := DBGrid.DataSource.DataSet.FieldByName('NOMCLI').AsString;
        Close;
       end
       else
      if (vaCampo = 'CodRai') and (vaTela = 'FMoniCliente') then
       begin
        FMoniCliente.edtCodRaiz.AsInteger := DBGrid.DataSource.DataSet.FieldByName('CODRAI').AsInteger;
        FMoniCliente.edtNomCid.Text := DBGrid.DataSource.DataSet.FieldByName('NOMCID').AsString;
        Close;
       end
       else
      if (vaCampo = 'CodRep') and (vaTela = 'FMoniCliente') then
       begin
        FMoniCliente.edtCodRep.AsInteger := DBGrid.DataSource.DataSet.FieldByName('CODREP').AsInteger;
        FMoniCliente.edtNomRep.Text := DBGrid.DataSource.DataSet.FieldByName('APEREP').AsString;
        Close;
       end
      else
      if (vaCampo = 'CodPro') and (vaTela = 'FApelidosProdSapiens') then
       begin
        FApelidosProdSapiens.edtCodProSapiens.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        FApelidosProdSapiens.edtNomProSapiens.Text := DBGrid.DataSource.DataSet.FieldByName('DESPRO').AsString;
        Close;
       end
      else
      if (vaCampo = 'CodRep') and (vaTela = 'FDescontosPorRep') then
       begin
        FDescontosPorRep.edtCodRep.Text := DBGrid.DataSource.DataSet.FieldByName('CODREP').AsString;
        FDescontosPorRep.edtNomRep.Text := DBGrid.DataSource.DataSet.FieldByName('NOMREP').AsString;
        FDescontosPorRep.edtApeRep.Text := DBGrid.DataSource.DataSet.FieldByName('APEREP').AsString;
        Close;
       end
      else
      if (vaCampo = 'CodCli') and (vaTela = 'FDescontosPorRep') then
       begin
        FDescontosPorRep.edtCodCli.Text := DBGrid.DataSource.DataSet.FieldByName('CODCLI').AsString;
        FDescontosPorRep.edtNomCli.Text := DBGrid.DataSource.DataSet.FieldByName('NOMCLI').AsString;
        Close;
       end
      else
      if (vaCampo = 'CodPro') and (vaTela = 'FDescontosPorRep') then
       begin
        FDescontosPorRep.edtCodPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        FDescontosPorRep.edtDesPro.Text := DBGrid.DataSource.DataSet.FieldByName('DESPRO').AsString;
        Close;
       end
      else
      if (vaCampo = 'CodCpg') and (vaTela = 'FDescontosPorRep') then
       begin
        FDescontosPorRep.edtCodCpg.Text := DBGrid.DataSource.DataSet.FieldByName('CODCPG').AsString;
        FDescontosPorRep.edtDesCpg.Text := DBGrid.DataSource.DataSet.FieldByName('DESCPG').AsString;
        Close;
       end
      else
      if (vaCampo = 'CodPro') and (vaTela = 'FCadFormaCompraMP') then
       begin
        DmOra.CadUSU_T210PerUSU_CODPRO.AsString := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        FCadFormaCompraMP.edtDesPro.Text := DBGrid.DataSource.DataSet.FieldByName('DESPRO').AsString;
        Close;
       end
      else
       if (vaCampo = 'CodPro') and (vaTela = 'FAjustaConsumoMateriaPrima') then
       begin
        FAjustaConsumoMateriaPrima.edtCodPro.Text := DBGrid.DataSource.DataSet.FieldByName('CODPRO').AsString;
        FAjustaConsumoMateriaPrima.edtDesPro1.Text := DBGrid.DataSource.DataSet.FieldByName('DESPRO').AsString;
        Close;
       end;


end;


procedure TFConsGeralNfEnt.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      DBGridDblClick(Sender);
    end;
end;

procedure TFConsGeralNfEnt.DBGridTitleClick(Column: TColumn);
var
  vaSql2 : string;
begin

  EdFiltro.Text := Column.FieldName;
  vaSql2 := vaSql + ' order by '+Column.FieldName;
    Dm2.ConsGeral.Close;
    Dm2.ConsGeral.SQL.Clear;
    Dm2.ConsGeral.SQL.Add(vaSql2);
    Dm2.ConsGeral.Open;
    ActiveControl := EdValor;
    //EdValor.Clear;

end;

procedure TFConsGeralNfEnt.EdValorChange(Sender: TObject);
var vaSql3 : string;
begin
if trim(EdFiltro.Text) <> '' then
  begin//1

        if vbWhere = false then//se o vbWhere for falso é pq nao existe nenhum where no sql se for true é pq ja existe
           vaSql3 := vaSql + ' where '+EdFiltro.Text+ ' like ''%'+EdValor.Text+'%'''
        else
           vaSql3 := vaSql + ' and '+EdFiltro.Text+ ' like ''%'+EdValor.Text+'%''';

    Dm2.ConsGeral.Close;
    Dm2.ConsGeral.SQL.Clear;
    Dm2.ConsGeral.SQL.Add(vaSql3);
    Dm2.ConsGeral.Open;
  end;//1
end;

procedure TFConsGeralNfEnt.FormActivate(Sender: TObject);
var vcColuna : TColumn;
begin
    Dm2.ConsGeral.Close;
    Dm2.ConsGeral.SQL.Clear;
    Dm2.ConsGeral.SQL.Add(vaSql);
    Dm2.ConsGeral.Open;

    //para simular o clique na coluna
    if vnColuna <> 999999 then
      begin
         vcColuna := DBGrid.Columns[vnColuna];
         DBGridTitleClick(vcColuna);
      end;


end;

end.
