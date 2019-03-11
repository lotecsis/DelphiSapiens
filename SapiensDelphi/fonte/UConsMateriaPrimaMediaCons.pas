unit UConsMateriaPrimaMediaCons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, Mask, rxToolEdit,
  Buttons, DB, DateUtils, AppEvnts, ImgList;

type
  TFConsMateriaPrimaMediaCons = class(TForm)
    pnl1: TPanel;
    dbgProdutos: TDBGrid;
    Label12: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    dbtxtNOMFOR: TDBText;
    dbtxtAPEFOR: TDBText;
    dbtxtCGCCPF: TDBText;
    dbtxtENDFOR: TDBText;
    dbtxtBAIFOR: TDBText;
    dbtxtCIDFOR: TDBText;
    dbtxtFONFOR: TDBText;
    dbtxtDATCAD: TDBText;
    dbtxtINSEST: TDBText;
    dbtxtCEPFOR: TDBText;
    dbtxtFAXFOR: TDBText;
    dbtxtINTNET: TDBText;
    dbtxtSITFOR: TDBText;
    Label30: TLabel;
    dbtxtSIGUFS: TDBText;
    Label31: TLabel;
    pnl2: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    lblProduto: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LDsCodPro: TLabel;
    edtCodPro: TEdit;
    btnConsProduto: TBitBtn;
    EdDatIni: TDateEdit;
    EdDatFim: TDateEdit;
    cbbOC: TComboBox;
    Label2: TLabel;
    btnBMostrar: TBitBtn;
    cbbFiltro: TComboBox;
    Label3: TLabel;
    dsClientMateriaPrimaMeiaCons: TDataSource;
    ApplicationEvents1: TApplicationEvents;
    dbgOC: TDBGrid;
    dsDsConsE420Ipo: TDataSource;
    dbgFornecedores: TDBGrid;
    dsConsE403FprMC: TDataSource;
    dsDsConsE095For: TDataSource;
    dsConsUltimaNfEntMC: TDataSource;
    dbtxt1: TDBText;
    dbtxt2: TDBText;
    dbtxt3: TDBText;
    dbtxt4: TDBText;
    dbtxt5: TDBText;
    dbtxt6: TDBText;
    dbtxt7: TDBText;
    dbtxt8: TDBText;
    dbtxt9: TDBText;
    dbtxt10: TDBText;
    dbtxt11: TDBText;
    dbtxt12: TDBText;
    dbtxt13: TDBText;
    dbtxt14: TDBText;
    dbtxt15: TDBText;
    lblFamilia: TLabel;
    edtCodFam: TEdit;
    btnConsFamilia: TBitBtn;
    btnContatosFornecedores: TBitBtn;
    ImageList1: TImageList;
    cbbOrdem: TComboBox;
    Label1: TLabel;
    lblDesFam: TLabel;
    btnAtuEstMin: TBitBtn;
    Label6: TLabel;
    cbbMostrarTecido: TComboBox;
    procedure btnBMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure btnConsProdutoClick(Sender: TObject);
    procedure edtCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConsFamiliaClick(Sender: TObject);
    procedure btnContatosFornecedoresClick(Sender: TObject);
    procedure dbgOCDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgOCCellClick(Column: TColumn);
    procedure dbgProdutosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgProdutosCellClick(Column: TColumn);
    procedure dbgFornecedoresDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgFornecedoresCellClick(Column: TColumn);
    procedure edtCodFamKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodFamExit(Sender: TObject);
    procedure btnAtuEstMinClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsMateriaPrimaMediaCons: TFConsMateriaPrimaMediaCons;

implementation

uses UDm3, UConsGeralNfEnt, UContatosFornecedor, UObsOC, UHistoricoConsumoMP,
  UValorMaxCotacao, UAtualizaEstMin, UGraficoConsumoMP;

{$R *.dfm}

procedure TFConsMateriaPrimaMediaCons.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  if cbbFiltro.Text = 'MEDIA CONSUMO' then
     begin
       dbgProdutos.Columns[0].Font.Style := [];
       dbgProdutos.Columns[2].Font.Style := [];
       dbgProdutos.Columns[4].Font.Style := [fsBold];
       dbgProdutos.Columns[5].Font.Style := [];
       dbgProdutos.Columns[6].Font.Style := [fsBold];

       dbgProdutos.Columns[0].Font.Color := clBlack;
       dbgProdutos.Columns[2].Font.Color := clBlack;
       dbgProdutos.Columns[4].Font.Color := clRed;
       dbgProdutos.Columns[5].Font.Color := clBlack;
       dbgProdutos.Columns[6].Font.Color := clRed;
     end
  else
  if cbbFiltro.Text = 'ESTOQUE MINIMO' then
     begin
       dbgProdutos.Columns[0].Font.Style := [];
       dbgProdutos.Columns[2].Font.Style := [];
       dbgProdutos.Columns[4].Font.Style := [fsBold];
       dbgProdutos.Columns[5].Font.Style := [fsBold];
       dbgProdutos.Columns[6].Font.Style := [];

       dbgProdutos.Columns[0].Font.Color := clBlack;
       dbgProdutos.Columns[2].Font.Color := clBlack;
       dbgProdutos.Columns[4].Font.Color := clRed;
       dbgProdutos.Columns[5].Font.Color := clRed;
       dbgProdutos.Columns[6].Font.Color := clBlack;
     end
  else
  if cbbFiltro.Text = 'PRODUTO' then
     begin
       dbgProdutos.Columns[0].Font.Style := [fsBold];
       dbgProdutos.Columns[2].Font.Style := [];
       dbgProdutos.Columns[4].Font.Style := [];
       dbgProdutos.Columns[5].Font.Style := [];
       dbgProdutos.Columns[6].Font.Style := [];

       dbgProdutos.Columns[0].Font.Color := clRed;
       dbgProdutos.Columns[2].Font.Color := clBlack;
       dbgProdutos.Columns[4].Font.Color := clBlack;
       dbgProdutos.Columns[5].Font.Color := clBlack;
       dbgProdutos.Columns[6].Font.Color := clBlack;
     end
  else
  if cbbFiltro.Text = 'FAMILIA - CONSUMO' then
     begin
       dbgProdutos.Columns[0].Font.Style := [];
       dbgProdutos.Columns[2].Font.Style := [fsBold];
       dbgProdutos.Columns[4].Font.Style := [];
       dbgProdutos.Columns[5].Font.Style := [];
       dbgProdutos.Columns[6].Font.Style := [fsBold];

       dbgProdutos.Columns[0].Font.Color := clBlack;
       dbgProdutos.Columns[2].Font.Color := clRed;
       dbgProdutos.Columns[4].Font.Color := clBlack;
       dbgProdutos.Columns[5].Font.Color := clBlack;
       dbgProdutos.Columns[6].Font.Color := clRed;
     end
  else
  if cbbFiltro.Text = 'FAMILIA - TODOS' then
     begin
       dbgProdutos.Columns[0].Font.Style := [];
       dbgProdutos.Columns[2].Font.Style := [fsBold];
       dbgProdutos.Columns[4].Font.Style := [];
       dbgProdutos.Columns[5].Font.Style := [];
       dbgProdutos.Columns[6].Font.Style := [];

       dbgProdutos.Columns[0].Font.Color := clBlack;
       dbgProdutos.Columns[2].Font.Color := clRed;
       dbgProdutos.Columns[4].Font.Color := clBlack;
       dbgProdutos.Columns[5].Font.Color := clBlack;
       dbgProdutos.Columns[6].Font.Color := clBlack;
     end
  else
    begin
      dbgProdutos.Columns[0].Font.Style := [];
      dbgProdutos.Columns[2].Font.Style := [];
      dbgProdutos.Columns[4].Font.Style := [];
      dbgProdutos.Columns[5].Font.Style := [];
      dbgProdutos.Columns[6].Font.Style := [];

      dbgProdutos.Columns[0].Font.Color := clBlack;
      dbgProdutos.Columns[2].Font.Color := clBlack;
      dbgProdutos.Columns[4].Font.Color := clBlack;
      dbgProdutos.Columns[5].Font.Color := clBlack;
      dbgProdutos.Columns[6].Font.Color := clBlack;
    end;

    edtCodPro.Enabled := cbbFiltro.Text = 'PRODUTO';
    btnConsProduto.Enabled := cbbFiltro.Text = 'PRODUTO';
    lblProduto.Enabled := cbbFiltro.Text = 'PRODUTO';
    edtCodFam.Enabled := ((cbbFiltro.Text = 'FAMILIA - CONSUMO') or (cbbFiltro.Text = 'FAMILIA - TODOS'));
    btnConsFamilia.Enabled := ((cbbFiltro.Text = 'FAMILIA - CONSUMO') or (cbbFiltro.Text = 'FAMILIA - TODOS'));
    lblFamilia.Enabled := ((cbbFiltro.Text = 'FAMILIA - CONSUMO') or (cbbFiltro.Text = 'FAMILIA - TODOS'));
    lblDesFam.Enabled := (((cbbFiltro.Text = 'FAMILIA - CONSUMO') or (cbbFiltro.Text = 'FAMILIA - TODOS')) and (Trim(lblDesFam.Caption) <> ''));
    btnContatosFornecedores.Enabled := NOT Dm3.ConsE095Cto.IsEmpty;
    btnAtuEstMin.Enabled := not Dm3.ClientMateriaPrimaMeiaCons.IsEmpty;

end;

procedure TFConsMateriaPrimaMediaCons.btnAtuEstMinClick(Sender: TObject);
begin
  FAtualizaEstMin := TFAtualizaEstMin.Create(Self);
  FAtualizaEstMin.ShowModal;
  FreeAndNil(FAtualizaEstMin);
  btnBMostrar.Click;
end;

procedure TFConsMateriaPrimaMediaCons.btnBMostrarClick(Sender: TObject);
begin
  Dm3.vaStatusClientMateriaPrimaMeiaCons := 'PROCESSANDO';

  Dm3.ClientMateriaPrimaMeiaCons.Close;
  Dm3.MateriaPrimaMediaCons.Close;
  Dm3.MateriaPrimaMediaCons.SQL.Clear;
  Dm3.MateriaPrimaMediaCons.SQL.Add('select e210est.codpro,e210est.codder,e075pro.despro,e210est.coddep,e210est.unimed,e210est.qtdest,e210est.estmin,e075pro.codfam,');
  Dm3.MateriaPrimaMediaCons.SQL.Add('       (select sum(e210mvp.qtdmov) from e210mvp');
  Dm3.MateriaPrimaMediaCons.SQL.Add('               where');
  Dm3.MateriaPrimaMediaCons.SQL.Add('               e210mvp.datmov between :DATINI and :DATFIM and');
  Dm3.MateriaPrimaMediaCons.SQL.Add('               e210mvp.esteos = ''S'' and');
  Dm3.MateriaPrimaMediaCons.SQL.Add('               e210mvp.codpro = e210est.codpro and');
  //Dm3.MateriaPrimaMediaCons.SQL.Add('               e210mvp.coddep = e210est.coddep and');
  Dm3.MateriaPrimaMediaCons.SQL.Add('               e210mvp.codtns in (''90250'',''90251'')) as consumo,');
  //Dm3.MateriaPrimaMediaCons.SQL.Add('               e210mvp.codtns in (''90259'')) as consumo,');
  Dm3.MateriaPrimaMediaCons.SQL.Add(' (select sum(e420ipo.qtdabe) as qtdabe');
  Dm3.MateriaPrimaMediaCons.SQL.Add(' from e420ipo');
  Dm3.MateriaPrimaMediaCons.SQL.Add(' where');
  Dm3.MateriaPrimaMediaCons.SQL.Add(' e420ipo.sitipo in (1,2,3) and');
  Dm3.MateriaPrimaMediaCons.SQL.Add(' e420ipo.codpro = e210est.codpro) as oc');
  Dm3.MateriaPrimaMediaCons.SQL.Add(' from e210est');
  Dm3.MateriaPrimaMediaCons.SQL.Add(' inner join e075pro on e075pro.codemp = e210est.codemp and');
  Dm3.MateriaPrimaMediaCons.SQL.Add('                       e075pro.codpro = e210est.codpro');
  Dm3.MateriaPrimaMediaCons.SQL.Add(' where');
  Dm3.MateriaPrimaMediaCons.SQL.Add(' e210est.coddep not in (''2000'',''01002'',''AST'',''TRC'',''101'',''1001.1'',''3000'') AND');
  Dm3.MateriaPrimaMediaCons.SQL.Add(' e075pro.codori not in (''1'',''2'',''50'',''40'',''30'',''25'',''20'',''19'') AND');
  Dm3.MateriaPrimaMediaCons.SQL.Add(' e075pro.codori <> 01 and');
  Dm3.MateriaPrimaMediaCons.SQL.Add(' e075pro.sitpro = ''A''');


  if cbbMostrarTecido.Text = 'NAO' then
     begin
       Dm3.MateriaPrimaMediaCons.SQL.Add(' and e075pro.codfam not in (''1001'',''1002'',''1003'',''1004'')');
     end;

  if cbbFiltro.Text = 'MEDIA CONSUMO' then
     begin
       Dm3.MateriaPrimaMediaCons.SQL.Add(' and (select sum(e210mvp.qtdmov) from e210mvp');
       Dm3.MateriaPrimaMediaCons.SQL.Add('inner join e075pro on e075pro.codpro = e210mvp.codpro');
       Dm3.MateriaPrimaMediaCons.SQL.Add(' where e210mvp.datmov between :DatIniC and :DatFimC and');
       Dm3.MateriaPrimaMediaCons.SQL.Add('       e210mvp.esteos = ''S'' and');
       Dm3.MateriaPrimaMediaCons.SQL.Add('       e210mvp.codtns in (''90250'',''90251'') and');
       Dm3.MateriaPrimaMediaCons.SQL.Add(' e075pro.codori not in (''1'',''2'',''50'',''40'',''30'',''25'',''20'') AND');
       Dm3.MateriaPrimaMediaCons.SQL.Add(' e210mvp.codpro = e210est.codpro ) > e210est.qtdest');
       Dm3.MateriaPrimaMediaCons.Parameters.ParamByName('DatIniC').Value := EdDatIni.Date;
       Dm3.MateriaPrimaMediaCons.Parameters.ParamByName('DatFimC').Value := EdDatFim.Date;
     end
  else
  if cbbFiltro.Text = 'ESTOQUE MINIMO' then
     begin
        Dm3.MateriaPrimaMediaCons.SQL.Add(' and e210est.qtdest <= e210est.estmin');
     end
  else
  if cbbFiltro.Text = 'PRODUTO' then
     begin
       Dm3.MateriaPrimaMediaCons.SQL.Add(' and e210est.codpro = :codpro');
       Dm3.MateriaPrimaMediaCons.Parameters.ParamByName('codpro').Value := edtCodPro.Text;
     end
  else
  if cbbFiltro.Text = 'FAMILIA - CONSUMO' then
     begin
       Dm3.MateriaPrimaMediaCons.SQL.Add(' and e075pro.codfam = :codfam');
       Dm3.MateriaPrimaMediaCons.Parameters.ParamByName('codfam').Value := edtCodFam.Text;

       Dm3.MateriaPrimaMediaCons.SQL.Add(' and (select sum(e210mvp.qtdmov) from e210mvp');
       Dm3.MateriaPrimaMediaCons.SQL.Add(' where e210mvp.datmov between :DatIniC and :DatFimC and');
       Dm3.MateriaPrimaMediaCons.SQL.Add('       e210mvp.esteos = ''S'' and');
       Dm3.MateriaPrimaMediaCons.SQL.Add('       e210mvp.codtns in (''90250'',''90251'') and');
       Dm3.MateriaPrimaMediaCons.SQL.Add(' e210mvp.codpro = e210est.codpro and');
       Dm3.MateriaPrimaMediaCons.SQL.Add(' e210mvp.coddep = e210est.coddep) > e210est.qtdest');
       Dm3.MateriaPrimaMediaCons.Parameters.ParamByName('DatIniC').Value := EdDatIni.Date;
       Dm3.MateriaPrimaMediaCons.Parameters.ParamByName('DatFimC').Value := EdDatFim.Date;
     end
  else
  if cbbFiltro.Text = 'FAMILIA - TODOS' then
     begin
       Dm3.MateriaPrimaMediaCons.SQL.Add(' and e075pro.codfam = :codfam');
       Dm3.MateriaPrimaMediaCons.Parameters.ParamByName('codfam').Value := edtCodFam.Text;
     end;


  if cbbOrdem.Text = 'CODIGO' then
     begin
       Dm3.MateriaPrimaMediaCons.SQL.Add(' order by e075pro.codpro');
     end
  else
  if cbbOrdem.Text = 'DESCRICAO' then
     begin
       Dm3.MateriaPrimaMediaCons.SQL.Add(' order by e075pro.despro');
     end
  else
  if cbbOrdem.Text = 'FAMILIA' then
     begin
       Dm3.MateriaPrimaMediaCons.SQL.Add(' order by e075pro.codfam');
     end;


  Dm3.MateriaPrimaMediaCons.SQL.Add('');
  Dm3.MateriaPrimaMediaCons.SQL.Add('');
  Dm3.MateriaPrimaMediaCons.Parameters.ParamByName('DATINI').Value := EdDatIni.Date;
  Dm3.MateriaPrimaMediaCons.Parameters.ParamByName('DATFIM').Value := EdDatFim.Date;
  Dm3.MateriaPrimaMediaCons.Open;
  Dm3.ClientMateriaPrimaMeiaCons.Open;
  if cbbOC.Text = 'SIM' then
     begin
       Dm3.ClientMateriaPrimaMeiaCons.First;
       while not Dm3.ClientMateriaPrimaMeiaCons.Eof do
         begin
           if Dm3.ClientMateriaPrimaMeiaConsOC.AsFloat <= 0 then
              begin
                Dm3.ClientMateriaPrimaMeiaCons.Delete;
              end
           else
              begin
                Dm3.ClientMateriaPrimaMeiaCons.Next;
              end;

         end;
       Dm3.ClientMateriaPrimaMeiaCons.First;
     end
  else
  if cbbOC.Text = 'NAO' then
     begin
       Dm3.ClientMateriaPrimaMeiaCons.First;
       while not Dm3.ClientMateriaPrimaMeiaCons.Eof do
         begin
           if Dm3.ClientMateriaPrimaMeiaConsOC.AsFloat > 0 then
              begin
                Dm3.ClientMateriaPrimaMeiaCons.Delete;
              end
           else
              begin
                Dm3.ClientMateriaPrimaMeiaCons.Next;
              end;

         end;
       Dm3.ClientMateriaPrimaMeiaCons.First;
     end;

     Dm3.vaStatusClientMateriaPrimaMeiaCons := 'OK';

     Dm3.ClientMateriaPrimaMeiaCons.Last;
     Dm3.ClientMateriaPrimaMeiaCons.First;

     if Dm3.ClientMateriaPrimaMeiaCons.IsEmpty then
        begin
          Dm3.ClientMateriaPrimaMeiaCons.Close;
          Dm3.MateriaPrimaMediaCons.Close;
          Dm3.ConsE420Ipo.Close;
          Dm3.ConsE403FprMC.Close;
          Dm3.ConsE095For.Close;
          Dm3.ConsUltimaNfEntMC.Close;
          Dm3.ConsE095Cto.Close;
        end;

end;

procedure TFConsMateriaPrimaMediaCons.btnConsFamiliaClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e012fam.codfam,e012fam.desfam from e012fam';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'codfam';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FConsMateriaPrimaMediaCons';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodFam;
end;

procedure TFConsMateriaPrimaMediaCons.btnConsProdutoClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e012fam.desfam,e075pro.codori,e083ori.desori';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +',e075pro.unimed,e075pro.usu_vlrmax,e075pro.codclf,e075pro.sitpro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +',e075pro.temicm,e075pro.recicm';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e012fam on e012fam.codemp = e075pro.codemp and';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e012fam.codfam = e075pro.codfam';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e083ori on e083ori.codemp = e075pro.codemp and';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e083ori.codori = e075pro.codori';

    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'codpro';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FConsMateriaPrimaMediaCons';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodPro;
end;

procedure TFConsMateriaPrimaMediaCons.btnContatosFornecedoresClick(
  Sender: TObject);
begin
  FContatosFornecedor := TFContatosFornecedor.Create(Self);
  FContatosFornecedor.ShowModal;
  FreeAndNil(FContatosFornecedor);
end;

procedure TFConsMateriaPrimaMediaCons.dbgFornecedoresCellClick(Column: TColumn);
begin
if not Dm3.ConsE403FprMC.IsEmpty then
   begin
      if dbgFornecedores.SelectedField.FieldName = 'Img1' then
         begin
            FValorMaxCotacao := TFValorMaxCotacao.Create(Self);
            FValorMaxCotacao.ShowModal;
            FreeAndNil(FValorMaxCotacao);

            Dm3.ConsE403FprMC.Close;
            Dm3.ConsE403FprMC.Parameters.ParamByName('CODPRO').Value := Dm3.ClientMateriaPrimaMeiaConsCODPRO.Value;
            Dm3.ConsE403FprMC.Open;

         end;
   end;
end;

procedure TFConsMateriaPrimaMediaCons.dbgFornecedoresDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if gdSelected in State then
     begin
        //dbgProdutos.Canvas.Font.Color := clNavy;
        dbgFornecedores.Canvas.Brush.Color := $00B7FFFF;
        dbgFornecedores.Canvas.Font.Style := [fsBold];
        dbgFornecedores.Canvas.FillRect(Rect);
        dbgFornecedores.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;

if not Dm3.ConsE403FprMC.IsEmpty then
   begin
      if Column.FieldName = 'Img1' then
        begin
            dbgFornecedores.Canvas.FillRect(Rect);
            // Desenha o Quadrado
          //  ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,0);

            // Desenha o check sobre o quadrado


          ImageList1.Draw(dbgFornecedores.Canvas,Rect.Left+3,Rect.Top+1,15);

        end;
   end;
end;

procedure TFConsMateriaPrimaMediaCons.dbgOCCellClick(Column: TColumn);
begin
if not Dm3.ConsE420Ipo.IsEmpty then
   begin
      if dbgOC.SelectedField.FieldName = 'Img1' then
         begin
           Dm3.CadE420Ipo.Close;
           Dm3.CadE420Ipo.Parameters.ParamByName('CODEMP').Value := Dm3.ConsE420IpoCODEMP.Value;
           Dm3.CadE420Ipo.Parameters.ParamByName('CODFIL').Value := Dm3.ConsE420IpoCODFIL.Value;
           Dm3.CadE420Ipo.Parameters.ParamByName('NUMOCP').Value := Dm3.ConsE420IpoNUMOCP.Value;
           Dm3.CadE420Ipo.Parameters.ParamByName('SEQIPO').Value := Dm3.ConsE420IpoSEQIPO.Value;
           Dm3.CadE420Ipo.Open;
           if not Dm3.CadE420Ipo.IsEmpty then
              begin
                 FObsOC := TFObsOC.Create(Self);
                 FObsOC.ShowModal;
                 FreeAndNil(FObsOC);

                 Dm3.ConsE420Ipo.Close;
                 Dm3.ConsE420Ipo.Parameters.ParamByName('CODPRO').Value := Dm3.ClientMateriaPrimaMeiaConsCODPRO.Value;
                 Dm3.ConsE420Ipo.Open;
              end;

         end;
   end;
end;

procedure TFConsMateriaPrimaMediaCons.dbgOCDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if gdSelected in State then
     begin
        //dbgProdutos.Canvas.Font.Color := clNavy;
        dbgOC.Canvas.Brush.Color := $00B7FFFF;
        dbgOC.Canvas.Font.Style := [fsBold];
        dbgOC.Canvas.FillRect(Rect);
        dbgOC.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;

if not Dm3.ConsE420Ipo.IsEmpty then
   begin
      if Column.FieldName = 'Img1' then
                begin
                    dbgOC.Canvas.FillRect(Rect);
                    // Desenha o Quadrado
                  //  ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,0);

                    // Desenha o check sobre o quadrado

                    if Trim(Dm3.ConsE420IpoOBSMOT.Value) = '' then
                       begin
                         ImageList1.Draw(dbgOC.Canvas,Rect.Left+7,Rect.Top+1,0);
                       end
                    else
                       begin
                         ImageList1.Draw(dbgOC.Canvas,Rect.Left+7,Rect.Top+1,3);
                       end;
                end;
   end;
end;

procedure TFConsMateriaPrimaMediaCons.dbgProdutosCellClick(Column: TColumn);
begin
if not Dm3.ClientMateriaPrimaMeiaCons.IsEmpty then
   begin
      if dbgProdutos.SelectedField.FieldName = 'Img1' then
         begin
           { FHistoricoConsumoMP := TFHistoricoConsumoMP.Create(Self);
            FHistoricoConsumoMP.ShowModal;
            FreeAndNil(FHistoricoConsumoMP); }

            FGraficoConsumoMP := TFGraficoConsumoMP.Create(Self);
            FGraficoConsumoMP.ShowModal;
            FreeAndNil(FGraficoConsumoMP);
         end;
   end;
end;

procedure TFConsMateriaPrimaMediaCons.dbgProdutosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
     begin
        //dbgProdutos.Canvas.Font.Color := clNavy;
        dbgProdutos.Canvas.Brush.Color := $00B7FFFF;
        dbgProdutos.Canvas.Font.Style := [fsBold];
        dbgProdutos.Canvas.FillRect(Rect);
        dbgProdutos.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;



  if not Dm3.ClientMateriaPrimaMeiaCons.IsEmpty then
   begin
      if Column.FieldName = 'Img1' then
          begin
              dbgProdutos.Canvas.FillRect(Rect);
              // Desenha o Quadrado
            //  ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,0);

              // Desenha o check sobre o quadrado

              ImageList1.Draw(dbgProdutos.Canvas,Rect.Left+7,Rect.Top+1,14);
          end;
   end;
end;

procedure TFConsMateriaPrimaMediaCons.edtCodFamExit(Sender: TObject);
begin
    if Trim(edtCodFam.Text) <> '' then
       begin
         Dm3.ConsSql.Close;
         Dm3.ConsSql.SQL.Clear;
         Dm3.ConsSql.SQL.Add('select e012fam.codfam,e012fam.desfam from e012fam where e012fam.codfam = :codfam');
         Dm3.ConsSql.Parameters.ParamByName('codfam').Value := edtCodFam.Text;
         Dm3.ConsSql.Open;
         if not Dm3.ConsSql.IsEmpty then
            begin
              lblDesFam.Caption := Dm3.ConsSql.FieldByName('desfam').AsString;
            end
         else
            begin
              lblDesFam.Caption := '';
            end;
       end
    else
       begin
         lblDesFam.Caption := '';
       end;
end;

procedure TFConsMateriaPrimaMediaCons.edtCodFamKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_f3 then
     begin
       btnConsFamilia.Click;
     end;
end;

procedure TFConsMateriaPrimaMediaCons.edtCodProKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_f3 then
     begin
       btnConsProduto.Click;
     end;
end;

procedure TFConsMateriaPrimaMediaCons.FormShow(Sender: TObject);
begin
EdDatIni.Date := IncDay(Date,-30);
EdDatFim.Date := Date;

  Dm3.ClientMateriaPrimaMeiaCons.Close;
  Dm3.MateriaPrimaMediaCons.Close;
  Dm3.ConsE420Ipo.Close;
  Dm3.ConsE403FprMC.Close;
  Dm3.ConsE095For.Close;
  Dm3.ConsUltimaNfEntMC.Close;
  Dm3.ConsE095Cto.Close;

end;


end.
