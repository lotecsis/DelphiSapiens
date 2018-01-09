unit UAnalizeConsumoMPProduzir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, Mask, rxToolEdit, DB, ADODB, DBClient, ComObj;

type
  TFAnaliseConsumoMPProduzir = class(TForm)
    dbgItensPedido: TDBGrid;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    Label1: TLabel;
    btnMostrar: TBitBtn;
    ConsE120Ipd: TADOQuery;
    dsConsE120Ipd: TDataSource;
    ConsE120IpdCODPRO: TStringField;
    ConsE120IpdCPLIPD: TStringField;
    ConsE120IpdCODDER: TStringField;
    ConsE120IpdQTDABE: TFMTBCDField;
    Label2: TLabel;
    edtPedidos: TEdit;
    Label3: TLabel;
    cbbAgrupamento: TComboBox;
    dbgMateriasPrimas: TDBGrid;
    dsClientConsumoMP: TDataSource;
    btnCalcular: TBitBtn;
    ConsUSU_T700CTM_P: TADOQuery;
    ConsUSU_T700CTM_PUSU_CODEMP: TIntegerField;
    ConsUSU_T700CTM_PUSU_CODMOD: TStringField;
    ConsUSU_T700CTM_PUSU_SEQMOD: TIntegerField;
    ConsUSU_T700CTM_PUSU_CODCMP: TStringField;
    ConsUSU_T700CTM_PUSU_DERCMP: TStringField;
    ConsUSU_T700CTM_PUSU_QTDUTI: TFMTBCDField;
    ConsUSU_T700CTM_PUSU_UNIME2: TStringField;
    ConsUSU_T700CTM_PUSU_DATALT: TDateTimeField;
    ConsUSU_T700CTM_PUSU_DERMOD: TStringField;
    ConsUSU_T700CTM_PDESPRO: TStringField;
    Label4: TLabel;
    edtDesPro: TEdit;
    chkFiltrar: TCheckBox;
    btnExportar: TBitBtn;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure dbgMateriasPrimasTitleClick(Column: TColumn);
    procedure chkFiltrarClick(Sender: TObject);
    procedure dsClientConsumoMPDataChange(Sender: TObject; Field: TField);
    procedure btnExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnaliseConsumoMPProduzir: TFAnaliseConsumoMPProduzir;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFAnaliseConsumoMPProduzir.btnCalcularClick(Sender: TObject);
begin
  if not ConsE120Ipd.IsEmpty then
     begin
        dbgItensPedido.DataSource := nil;
        dbgMateriasPrimas.DataSource := nil;
        DmOra.ClientConsumoMP.EmptyDataSet;
        DmOra.ClientConsumoMP.Open;
        //percorre os itens de pedido
        ConsE120Ipd.First;
        while not ConsE120Ipd.Eof do
           begin
              //consulta as materias primas da ficha tecnica da tabela ja resumida
              ConsUSU_T700CTM_P.Close;
              ConsUSU_T700CTM_P.Parameters.ParamByName('CODMOD').Value := ConsE120IpdCODPRO.Value;
              ConsUSU_T700CTM_P.Parameters.ParamByName('DERMOD').Value := ConsE120IpdCODDER.Value;
              ConsUSU_T700CTM_P.Open;
              ConsUSU_T700CTM_P.First;
              while not ConsUSU_T700CTM_P.Eof do
                 begin
                   DmOra.ClientConsumoMP.Filtered := False;
                   DmOra.ClientConsumoMP.Filter := 'codpro = '+QuotedStr(ConsUSU_T700CTM_PUSU_CODCMP.AsString);
                   DmOra.ClientConsumoMP.Filtered := True;
                   if DmOra.ClientConsumoMP.IsEmpty then
                      begin
                        DmOra.ClientConsumoMP.Insert;
                        DmOra.ClientConsumoMPCodPro.Value := ConsUSU_T700CTM_PUSU_CODCMP.Value;
                        DmOra.ClientConsumoMPDesPro.Value := ConsUSU_T700CTM_PDESPRO.AsString;
                        DmOra.ClientConsumoMPUniMed.Value := ConsUSU_T700CTM_PUSU_UNIME2.Value;
                        DmOra.ClientConsumoMPQtdUti.Value := ConsUSU_T700CTM_PUSU_QTDUTI.AsFloat * ConsE120IpdQTDABE.AsFloat;
                        DmOra.ClientConsumoMP.Post;
                      end
                   else
                      begin
                        DmOra.ClientConsumoMP.Edit;
                        DmOra.ClientConsumoMPQtdUti.AsFloat := DmOra.ClientConsumoMPQtdUti.AsFloat + (ConsUSU_T700CTM_PUSU_QTDUTI.AsFloat * ConsE120IpdQTDABE.AsFloat);
                        DmOra.ClientConsumoMP.Post;
                      end;

                   ConsUSU_T700CTM_P.Next;
                 end;


             ConsE120Ipd.Next;
           end;
           DmOra.ClientConsumoMP.Filtered := False;

           //PERCORRE O CLIENT COM AS MATERIAS PRIMAS PARA VER SE EXISTE AJUSTE E CALCULAR O VALOR CORRETO
           DmOra.ClientConsumoMP.First;
           while not DmOra.ClientConsumoMP.Eof do
             begin
                DmOra.CadUSU_T700INF.Close;
                DmOra.CadUSU_T700INF.Parameters.ParamByName('CODEMP').Value := 1;
                DmOra.CadUSU_T700INF.Parameters.ParamByName('CODPRO').Value := DmOra.ClientConsumoMPCodPro.AsString;
                DmOra.CadUSU_T700INF.Open;
                if not DmOra.CadUSU_T700INF.IsEmpty then
                   begin
                     DmOra.ClientConsumoMP.Edit;
                     DmOra.ClientConsumoMPQtdUti.AsFloat := ((DmOra.ClientConsumoMPQtdUti.AsFloat * 100) / (DmOra.CadUSU_T700INFUSU_PERINF.AsFloat+100));
                     DmOra.ClientConsumoMP.Post;
                   end;

               DmOra.ClientConsumoMP.Next;
             end;

           DmOra.ClientConsumoMP.First;
           ConsE120Ipd.First;
           dbgItensPedido.DataSource := dsConsE120Ipd;
           dbgMateriasPrimas.DataSource := dsClientConsumoMP;
     end;
end;

procedure TFAnaliseConsumoMPProduzir.btnExportarClick(Sender: TObject);
var
  PLANILHA, Sheet : Variant;
  Linha : Integer;
  vaTitulo : string;
  Dia,Mes,Ano : Word;
Begin
if not DmOra.ClientConsumoMP.IsEmpty then
   begin

       inherited;
       DecodeDate(Date,Ano,Mes,Dia);
       vaTitulo := 'RELAÇÃO DE CONSUMO DE MATÉRIA PRIMA PARA PRODUÇÃO DE PEDIDOS';

       Linha :=5;
       PLANILHA := CreateOleObject('Excel.Application');
       PLANILHA.Caption := vaTitulo;
       PLANILHA.Visible := False;
       PLANILHA.WorkBooks.add(1);

       // TITULO DAS COLUNAS
       PLANILHA.Cells[4,1] := ' PRODUTO ';
       PLANILHA.Cells[4,2] := ' DESCRIÇÃO ';
       PLANILHA.Cells[4,3] := ' UN. ';
       PLANILHA.Cells[4,4] := ' QUANTIDADE ';


       // Formatando o Cabeçalho
        PLANILHA.Range['A4:D4'].font.name := 'Verdana'; // Fonte
        PLANILHA.Range['A4:D4'].font.size := 9; // Tamanho da Fonte
        PLANILHA.Range['A4:D4'].font.bold := true; // Negrito
        PLANILHA.Range['A4:D4'].font.italic := false; // Italico
        PLANILHA.Range['A4:D4'].font.color := clBlue; // Cor da Fonte
        PLANILHA.Range['A4:D4'].Interior.Color := $00ffcf9c; // Cor da Célula

        //formatando o titulo que fica em cima do cabeçalho
        PLANILHA.Range['A2:D2'].Mergecells := True; //mescla as celulas
        PLANILHA.Cells[2,1] := vaTitulo;
        PLANILHA.Range['A2:D2'].font.name := 'Verdana'; // Fonte
        PLANILHA.Range['A2:D2'].font.size := 9; // Tamanho da Fonte
        PLANILHA.Range['A2:D2'].font.bold := true; // Negrito
        PLANILHA.Range['A2:D2'].font.italic := false; // Italico
        PLANILHA.Range['A2:D2'].font.color := clBlue; // Cor da Fonte
        PLANILHA.Range['A2:D2'].Interior.Color := $00ffcccc; // Cor da Célula
        PLANILHA.Range['A2'].VerticalAlignment := 3; // 1=Top - 2=Center - 3=Bottom
        PLANILHA.Range['A2'].HorizontalAlignment := 3; // 3=Center - 4=Right

             // PRRENCHIMENTO DAS CÉLULAS COM OS VALORES DOS CAMPOS DA TABELA
             Try
                DmOra.ClientConsumoMP.First;
                While not DmOra.ClientConsumoMP.Eof do
                Begin
                   PLANILHA.Cells[linha,1] := DmOra.ClientConsumoMPCodPro.Value;
                   PLANILHA.Cells[Linha,2] := DmOra.ClientConsumoMPDesPro.Value;
                   PLANILHA.Cells[Linha,3] := DmOra.ClientConsumoMPUniMed.Value;
                   PLANILHA.Cells[Linha,4] := DmOra.ClientConsumoMPQtdUti.AsFloat;

                   Linha := Linha + 1;
                   DmOra.ClientConsumoMP.Next;
                 End;
                 PLANILHA.Columns.AutoFit;

                 PLANILHA.Visible := True;
             Finally
                PLANILHA := Unassigned;
             end;

   end;

end;

procedure TFAnaliseConsumoMPProduzir.btnMostrarClick(Sender: TObject);
var vaPedidos : string;
begin
  if (edtDatIni.Date <> 0) and (edtDatFim.Date <> 0) then
     begin
       DmOra.ClientConsumoMP.EmptyDataSet;

       ConsE120Ipd.Close;
       ConsE120Ipd.SQL.Clear;
       ConsE120Ipd.SQL.Add('SELECT E120IPD.CODPRO,E120IPD.CPLIPD, E120IPD.CODDER,SUM(E120IPD.QTDABE) AS QTDABE');
       ConsE120Ipd.SQL.Add('   FROM');
       ConsE120Ipd.SQL.Add('    E120IPD');
       ConsE120Ipd.SQL.Add('    INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND');
       ConsE120Ipd.SQL.Add('                          E120PED.CODFIL = E120IPD.CODFIL AND');
       ConsE120Ipd.SQL.Add('                          E120PED.NUMPED = E120IPD.NUMPED');
       ConsE120Ipd.SQL.Add('    INNER JOIN E075PRO ON E075PRO.CODEMP = E120IPD.CODEMP AND');
       ConsE120Ipd.SQL.Add('                          E075PRO.CODPRO = E120IPD.CODPRO');
       ConsE120Ipd.SQL.Add('   WHERE');
       ConsE120Ipd.SQL.Add('    E120IPD.TNSPRO IN (''90100'',''90106'') AND');
       ConsE120Ipd.SQL.Add('    E120IPD.CODEMP = 1 AND');
       ConsE120Ipd.SQL.Add('    E120IPD.CODFIL = 1 AND');
       ConsE120Ipd.SQL.Add('    E120IPD.SITIPD IN (1,3) AND');
       ConsE120Ipd.SQL.Add('    E120PED.DATEMI BETWEEN :DATINI AND :DATFIM');

       if Trim(edtPedidos.Text) <> '' then
          begin
            vaPedidos := '('+edtPedidos.Text+')';
            ConsE120Ipd.SQL.Add('    AND E120PED.NUMPED NOT IN '+vaPedidos);
          end;

       if cbbAgrupamento.Text <> 'TODOS' then
          begin
            ConsE120Ipd.SQL.Add('    AND E075PRO.CODAGP = '+QuotedStr(cbbAgrupamento.Text));
          end;

       ConsE120Ipd.SQL.Add('    GROUP BY E120IPD.CODPRO,E120IPD.CPLIPD, E120IPD.CODDER');
       ConsE120Ipd.SQL.Add('    ORDER BY QTDABE DESC');
       ConsE120Ipd.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
       ConsE120Ipd.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
       ConsE120Ipd.Open;
     end;

end;

procedure TFAnaliseConsumoMPProduzir.chkFiltrarClick(Sender: TObject);
begin
  if (chkFiltrar.Checked) and (Trim(edtDesPro.Text) <> '') then
     begin
       DmOra.ClientConsumoMP.Filtered := False;
       DmOra.ClientConsumoMP.Filter := 'DESPRO LIKE '+QuotedStr('%'+edtDesPro.Text+'%');
       DmOra.ClientConsumoMP.Filtered := True;
     end
  else
     begin
       DmOra.ClientConsumoMP.Filtered := false;
     end;

end;

procedure TFAnaliseConsumoMPProduzir.dbgMateriasPrimasTitleClick(Column: TColumn);
var
  indice: string;
  existe: boolean;
  clientdataset_idx: TClientDataSet;
begin
   clientdataset_idx := TClientDataset(Column.Grid.DataSource.DataSet);

  if clientdataset_idx.IndexFieldNames = Column.FieldName then
  begin
    indice := AnsiUpperCase(Column.FieldName);

    try
      clientdataset_idx.IndexDefs.Find(indice);
      existe := true;
    except
      existe := false;
    end;

    if not existe then
      with clientdataset_idx.IndexDefs.AddIndexDef do begin
        Name := indice;
        Fields := Column.FieldName;
        Options := [ixDescending];
      end;
    clientdataset_idx.IndexName := indice;
    clientdataset_idx.First;
  end
  else
     begin
       clientdataset_idx.IndexFieldNames := Column.FieldName;
       clientdataset_idx.First;
     end;

end;

procedure TFAnaliseConsumoMPProduzir.dsClientConsumoMPDataChange(
  Sender: TObject; Field: TField);
begin
  chkFiltrar.Enabled := not DmOra.ClientConsumoMP.IsEmpty;
end;

procedure TFAnaliseConsumoMPProduzir.FormShow(Sender: TObject);
begin
  ConsE120Ipd.Close;
  DmOra.ClientConsumoMP.EmptyDataSet;
end;

end.
