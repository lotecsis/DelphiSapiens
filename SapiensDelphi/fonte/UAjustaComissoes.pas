unit UAjustaComissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, rxCurrEdit, Mask, rxToolEdit, Buttons, DB, DateUtils,
  DBCtrls, ADODB, OleCtrls, SHDocVw,ComObj,Math;

type
  TFAjustaComissoes = class(TForm)
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbgItens: TDBGrid;
    btnMostrar: TBitBtn;
    dsClientAjustaE504Cap: TDataSource;
    Label4: TLabel;
    ConsRep: TADOQuery;
    ConsRepCODREP: TIntegerField;
    ConsRepNOMREP: TStringField;
    ConsRepAPEREP: TStringField;
    ConsRepSENREP: TStringField;
    ConsRepTIPREP: TStringField;
    ConsRepINSEST: TStringField;
    ConsRepINSMUN: TStringField;
    ConsRepCGCCPF: TBCDField;
    ConsRepENDREP: TStringField;
    ConsRepCPLEND: TStringField;
    ConsRepZIPCOD: TStringField;
    ConsRepCEPREP: TIntegerField;
    ConsRepBAIREP: TStringField;
    ConsRepCIDREP: TStringField;
    ConsRepSIGUFS: TStringField;
    ConsRepFONREP: TStringField;
    ConsRepFONRE2: TStringField;
    ConsRepFONRE3: TStringField;
    ConsRepFAXREP: TStringField;
    ConsRepCXAPST: TIntegerField;
    ConsRepINTNET: TStringField;
    ConsRepDATCAD: TDateTimeField;
    ConsRepDATATU: TDateTimeField;
    ConsRepSITREP: TStringField;
    ConsRepQTDDEP: TIntegerField;
    ConsRepCALIRF: TStringField;
    ConsRepCALISS: TStringField;
    ConsRepCALINS: TStringField;
    ConsRepFIRIND: TStringField;
    ConsRepGERTIT: TStringField;
    ConsRepCODMOT: TIntegerField;
    ConsRepOBSMOT: TStringField;
    ConsRepUSUMOT: TBCDField;
    ConsRepDATMOT: TDateTimeField;
    ConsRepHORMOT: TIntegerField;
    ConsRepDATNAS: TDateTimeField;
    ConsRepNUMRGE: TStringField;
    ConsRepORGRGE: TStringField;
    ConsRepDATRGE: TDateTimeField;
    ConsRepREPCLI: TIntegerField;
    ConsRepREPFOR: TIntegerField;
    ConsRepINDEXP: TIntegerField;
    ConsRepDATPAL: TDateTimeField;
    ConsRepHORPAL: TIntegerField;
    ConsRepCODCDI: TIntegerField;
    ConsRepEENREP: TStringField;
    ConsRepHORATU: TIntegerField;
    ConsRepNENREP: TStringField;
    ConsRepUSUCAD: TBCDField;
    ConsRepHORCAD: TIntegerField;
    ConsRepUSUATU: TBCDField;
    ConsRepUSU_UM12A: TStringField;
    dbedtvnTotalDiferenca: TDBEdit;
    btnProdutosNF: TBitBtn;
    btnAjustar: TBitBtn;
    btnExportar: TBitBtn;
    btn1: TBitBtn;
    Diminuir: TADOQuery;
    DiminuirCODEMP: TIntegerField;
    DiminuirCODFIL: TIntegerField;
    DiminuirCODREP: TIntegerField;
    DiminuirSEQCOM: TIntegerField;
    DiminuirDATBAS: TDateTimeField;
    DiminuirDATLIB: TDateTimeField;
    DiminuirCODTNS: TStringField;
    DiminuirVLRCOM: TBCDField;
    DiminuirNUMTIT: TStringField;
    DiminuirCODTPT: TStringField;
    DiminuirCODFOR: TIntegerField;
    DiminuirSEQMOV: TIntegerField;
    DiminuirCODCLI: TIntegerField;
    DiminuirVCTPRO: TDateTimeField;
    DiminuirVLRABE: TBCDField;
    DiminuirVLRBCO: TBCDField;
    DiminuirDATMOV: TDateTimeField;
    DiminuirNOMCLI: TStringField;
    DiminuirCODCPG: TStringField;
    DiminuirDESCPG: TStringField;
    DiminuirPRZMED: TIntegerField;
    DiminuirPERCOM: TBCDField;
    DiminuirUSU_PERAPL: TBCDField;
    DiminuirAPEREP: TStringField;
    cmdAtualizaE504Cap: TADOCommand;
    cmdAtualizaE301Mcr: TADOCommand;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnProdutosNFClick(Sender: TObject);
    procedure btnAjustarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vaAtualizar : string;
  end;

var
  FAjustaComissoes: TFAjustaComissoes;

implementation

uses UDmOra, UProdutosNf, UAplicarAjusteComissao;

{$R *.dfm}

procedure TFAjustaComissoes.btnExportarClick(Sender: TObject);
var
  PLANILHA, Sheet : Variant;
  Linha : Integer;
  vaTitulo : string;
  Dia,Mes,Ano : Word;
Begin
if not DmOra.ClientAjustaE504Cap.IsEmpty then
   begin

       inherited;
       DecodeDate(Date,Ano,Mes,Dia);
       vaTitulo := 'AJUSTE DE COMISSÕES REF. MÊS:   '+IntToStr(Mes)+' / '+IntToStr(Ano);

       Linha :=5;
       PLANILHA := CreateOleObject('Excel.Application');
       PLANILHA.Caption := vaTitulo;
       PLANILHA.Visible := False;
       PLANILHA.WorkBooks.add(1);

       // TITULO DAS COLUNAS
       PLANILHA.Cells[4,1] := ' FILIAL ';
       PLANILHA.Cells[4,2] := ' TITULO ';
       PLANILHA.Cells[4,3] := ' VLR. BASE ';
       PLANILHA.Cells[4,4] := ' VLR. COMISSÃO ';
       PLANILHA.Cells[4,5] := '  % NF  ';
       PLANILHA.Cells[4,6] := ' % COND. PGTO. ';
       PLANILHA.Cells[4,7] := ' VLR. REAL ';
       PLANILHA.Cells[4,8] := ' DIFERENÇA ';
       PLANILHA.Cells[4,9] := ' CLIENTE ';
       PLANILHA.Cells[4,10] := ' NOME ';
       PLANILHA.Cells[4,11] := ' COND. PGTO. ';
       PLANILHA.Cells[4,12] := ' DESCRIÇÃO ';
       PLANILHA.Cells[4,13] := ' REP. ';
       PLANILHA.Cells[4,14] := ' NOME ';

       // Formatando o Cabeçalho
        PLANILHA.Range['A4:N4'].font.name := 'Verdana'; // Fonte
        PLANILHA.Range['A4:N4'].font.size := 9; // Tamanho da Fonte
        PLANILHA.Range['A4:N4'].font.bold := true; // Negrito
        PLANILHA.Range['A4:N4'].font.italic := false; // Italico
        PLANILHA.Range['A4:N4'].font.color := clBlue; // Cor da Fonte
        PLANILHA.Range['A4:N4'].Interior.Color := $00ffcf9c; // Cor da Célula

        //formatando o titulo que fica em cima do cabeçalho
        PLANILHA.Range['G2:J2'].Mergecells := True; //mescla as celulas
        PLANILHA.Cells[2,7] := vaTitulo;
        PLANILHA.Range['G2:J2'].font.name := 'Verdana'; // Fonte
        PLANILHA.Range['G2:J2'].font.size := 9; // Tamanho da Fonte
        PLANILHA.Range['G2:J2'].font.bold := true; // Negrito
        PLANILHA.Range['G2:J2'].font.italic := false; // Italico
        PLANILHA.Range['G2:J2'].font.color := clBlue; // Cor da Fonte
        PLANILHA.Range['G2:J2'].Interior.Color := $00ffcccc; // Cor da Célula
        PLANILHA.Range['G2'].VerticalAlignment := 3; // 1=Top - 2=Center - 3=Bottom
        PLANILHA.Range['G2'].HorizontalAlignment := 3; // 3=Center - 4=Right


          // PRRENCHIMENTO DAS CÉLULAS COM OS VALORES DOS CAMPOS DA TABELA
       Try
          DmOra.ClientAjustaE504Cap.First;
          While not DmOra.ClientAjustaE504Cap.Eof do
          Begin
             PLANILHA.Cells[linha,1] := DmOra.ClientAjustaE504CapCODFIL.Value;
             PLANILHA.Cells[Linha,2] := DmOra.ClientAjustaE504CapNUMTIT.Value;
             PLANILHA.Cells[Linha,3] := DmOra.ClientAjustaE504CapVLRBCO.AsFloat;
             PLANILHA.Cells[Linha,4] := DmOra.ClientAjustaE504CapVLRCOM.AsFloat;
             PLANILHA.Cells[Linha,5] := DmOra.ClientAjustaE504CapvnPerComissaoNF.AsFloat;
             PLANILHA.Cells[Linha,6] := DmOra.ClientAjustaE504CapPERCOM.AsFloat;
             PLANILHA.Cells[Linha,7] := DmOra.ClientAjustaE504CapvnComissao_Real.AsFloat;
             PLANILHA.Cells[Linha,8] := DmOra.ClientAjustaE504CapvnDiferenca.AsFloat;
             PLANILHA.Cells[Linha,9] := DmOra.ClientAjustaE504CapCODCLI.AsInteger;
             PLANILHA.Cells[Linha,10] := Copy(DmOra.ClientAjustaE504CapNOMCLI.Value,0,30);
             PLANILHA.Cells[Linha,11] := DmOra.ClientAjustaE504CapCODCPG.AsInteger;
             PLANILHA.Cells[Linha,12] := DmOra.ClientAjustaE504CapDESCPG.Value;
             PLANILHA.Cells[Linha,13] := DmOra.ClientAjustaE504CapCODREP.AsInteger;
             PLANILHA.Cells[Linha,14] := DmOra.ClientAjustaE504CapAPEREP.Value;

             Linha := Linha + 1;
             DmOra.ClientAjustaE504Cap.Next;
           End;
           PLANILHA.Columns.AutoFit;

           PLANILHA.Visible := True;
       Finally
          PLANILHA := Unassigned;
       end;

   end;

End;

procedure TFAjustaComissoes.btn1Click(Sender: TObject);
var vnVlrCom : Double;
begin
  //CONSULTA TODOS OS TITULOS COM CONDIÇÃO DE PAGAMENTO COM PRAZO MEDIO ACIMA DE 80 DIAS E
  //DIMINUI 10%
  Diminuir.Close;
  Diminuir.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
  Diminuir.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
  Diminuir.Open;
  Diminuir.First;
  while NOT Diminuir.Eof do
    begin
      vnVlrCom := RoundTo(DiminuirVLRCOM.AsFloat - (DiminuirVLRCOM.AsFloat * 0.07),-2);

      cmdAtualizaE504Cap.Parameters.ParamByName('numtit').Value := DiminuirNUMTIT.Value;
      cmdAtualizaE504Cap.Parameters.ParamByName('VLRCOM').Value := vnVlrCom;
      cmdAtualizaE504Cap.Execute;

      cmdAtualizaE301Mcr.Parameters.ParamByName('numtit').Value := DiminuirNUMTIT.Value;
      cmdAtualizaE301Mcr.Parameters.ParamByName('VLRCOM').Value := vnVlrCom;
      cmdAtualizaE301Mcr.Execute;

      Diminuir.Next;
    end;
end;

procedure TFAjustaComissoes.btnAjustarClick(Sender: TObject);
begin
  if not DmOra.ClientAjustaE504Cap.IsEmpty then
     begin
        vaAtualizar := 'N';

        FAplicarAjusteComissao := TFAplicarAjusteComissao.Create(Self);

        FAplicarAjusteComissao.edtNumTit.Text := DmOra.ClientAjustaE504CapNUMTIT.Value;
        FAplicarAjusteComissao.edtVlrBase.Value := DmOra.ClientAjustaE504CapVLRBCO.AsFloat;
        FAplicarAjusteComissao.edtVlrComissao.Value := DmOra.ClientAjustaE504CapVLRCOM.AsFloat;
        FAplicarAjusteComissao.edtPerNf.Value := DmOra.ClientAjustaE504CapvnPerComissaoNF.AsFloat;
        FAplicarAjusteComissao.edtPerCondCpg.Value := DmOra.ClientAjustaE504CapPERCOM.AsFloat;
        FAplicarAjusteComissao.edtVlrDiferenca.Value := DmOra.ClientAjustaE504CapvnDiferenca.AsFloat;
        FAplicarAjusteComissao.edtVlrReal.Value := DmOra.ClientAjustaE504CapvnComissao_Real.AsFloat;

        FAplicarAjusteComissao.ShowModal;
        FreeAndNil(FAplicarAjusteComissao);

         if vaAtualizar = 'S' then
            begin
               btnMostrar.Click;
            end;
     end;

end;

procedure TFAjustaComissoes.btnMostrarClick(Sender: TObject);
begin
    DmOra.ClientAjustaE504Cap.Close;
    DmOra.AjustaE504Cap.Close;
    DmOra.AjustaE504Cap.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
    DmOra.AjustaE504Cap.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
    DmOra.AjustaE504Cap.Open;
    DmOra.ClientAjustaE504Cap.Open;
    DmOra.ClientAjustaE504Cap.First;
    while not DmOra.ClientAjustaE504Cap.Eof do
       begin
         if (DmOra.ClientAjustaE504CapPERCOM.AsFloat  = DmOra.ClientAjustaE504CapvnPerComissaoNF.AsFloat) or
            (DmOra.ClientAjustaE504CapVLRBCO.Value = 0) {or (DmOra.ClientAjustaE504CapvnDiferenca.Value < 0)} then
            begin
              DmOra.ClientAjustaE504Cap.Delete;
            end
         else
             begin
               DmOra.ClientAjustaE504Cap.Next;
             end;
       end;
    DmOra.ClientAjustaE504Cap.First;
end;

procedure TFAjustaComissoes.btnProdutosNFClick(Sender: TObject);
begin
  if not DmOra.ClientAjustaE504Cap.IsEmpty then
     begin
        DmOra.ConsSql.Close;
        DmOra.ConsSql.SQL.Clear;
        DmOra.ConsSql.SQL.Add('SELECT NUMNFV FROM E301TCR WHERE NUMTIT = :NUMTIT');
        DmOra.ConsSql.Parameters.ParamByName('NUMTIT').Value := DmOra.ClientAjustaE504CapNUMTIT.Value;
        DmOra.ConsSql.Open;
        if not DmOra.ConsSql.IsEmpty then
           begin
             DmOra.ClientConsProdutosNF.Close;
             DmOra.ConsProdutosNF.Close;
             DmOra.ConsProdutosNF.Parameters.ParamByName('NUMNFV').Value := DmOra.ConsSql.FieldByName('NUMNFV').AsString;
             DmOra.ConsProdutosNF.Parameters.ParamByName('CODFIL').Value := DmOra.ClientAjustaE504CapCODFIL.Value;
             DmOra.ConsProdutosNF.Open;
             DmOra.ClientConsProdutosNF.Open;


             FProdutosNf := TFProdutosNf.Create(Self);
             FProdutosNf.ShowModal;
             FreeAndNil(FProdutosNf);
           end;
     end;

end;

procedure TFAjustaComissoes.dbgItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if DmOra.ClientAjustaE504CapvnDiferenca.AsFloat < 0 then
      with (Sender as TDBGrid).Canvas do
      begin
        FillRect(Rect);
        //Brush.Color := clRed;
        Font.Color := clRed;
        Font.Style := [fsBold];
        if (Column.FieldName <> 'NOMCLI') AND (Column.FieldName <> 'DESCPG') AND (Column.FieldName <> 'APEREP') then
           Column.Field.Alignment := taCenter;


        TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
      end;

  if gdSelected in State then
     begin
        //dbgProdutos.Canvas.Font.Color := clNavy;
        dbgItens.Canvas.Brush.Color := $00B7FFFF;
        dbgItens.Canvas.Font.Style := [fsBold];
         dbgItens.Canvas.Font.Color := clBlack;
        dbgItens.Canvas.FillRect(Rect);
        dbgItens.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;

  { //MUDA A COR DA LINHA
   if DmOra.ClientAjustaE504CapPERCOM.AsFloat <> DmOra.ClientAjustaE504CapvnComissao_Real.AsFloat then
      with (Sender as TDBGrid).Canvas do
      begin
         //Brush.Color := clSilver; //clSkyBlue;
        FillRect(Rect);
        //Font.Style := [fsbold];
        Font.Color := clRed;
        if Column.FieldName <> 'NOMCLI' then
           Column.Field.Alignment := taCenter;
      end;
      TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State); }
end;

procedure TFAjustaComissoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAjustaComissoes.FormShow(Sender: TObject);
begin
  edtDatIni.Date := StartOfTheMonth(Date);
  edtDatFim.Date := EndOfTheMonth(Date);
  DmOra.ClientAjustaE504Cap.Close;
end;

end.
