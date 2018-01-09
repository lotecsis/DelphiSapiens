unit UConsCoresPorProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Grids, DBGrids,
  Buttons, DB, ADODB;

type
  TFConsCoresPorProdutos = class(TForm)
    Panel1: TPanel;
    EdCodPro: TEdit;
    Label2: TLabel;
    EdCor001: TEdit;
    EdCor002: TEdit;
    EdCorAmbos: TEdit;
    Label5: TLabel;
    EdDatIni: TDateEdit;
    EdDatFim: TDateEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    EdQtdMinima: TCurrencyEdit;
    DBGrid1: TDBGrid;
    BMostrar: TBitBtn;
    Panel2: TPanel;
    ChTodos: TCheckBox;
    RbEstofados: TRadioButton;
    RbColchoes: TRadioButton;
    DsConsCoresPorProduto: TDataSource;
    EdTotal: TCurrencyEdit;
    Label8: TLabel;
    DsAux: TDataSource;
    BconsProduto: TSpeedButton;
    LDsProd: TLabel;
    ValidaProduto: TADOQuery;
    ValidaProdutoCODPRO: TStringField;
    ValidaProdutoDESPRO: TStringField;
    ValidaProdutoCODFAM: TStringField;
    BImprimir: TBitBtn;
    procedure BMostrarClick(Sender: TObject);
    procedure EdCorAmbosChange(Sender: TObject);
    procedure BconsProdutoClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsCoresPorProdutos: TFConsCoresPorProdutos;

implementation

uses UDmOra, UConsGeralNfEnt;

{$R *.dfm}

procedure TFConsCoresPorProdutos.BconsProdutoClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,e075pro.codfam,e075pro.codori';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where codori = 01';
    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodPro';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FConsCoresPorProdutos';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
    ActiveControl := EdCodPro;
end;

procedure TFConsCoresPorProdutos.BImprimirClick(Sender: TObject);
begin
 if not DmOra.ConsCoresPorProduto.IsEmpty then
    begin
      DmOra.RvCoresProProduto.SetParam('DATINI',DateToStr(EdDatIni.Date));
      DmOra.RvCoresProProduto.SetParam('DATFIM',DateToStr(EdDatFim.Date));
      DmOra.RvCoresProProduto.Execute;
    end;
end;

procedure TFConsCoresPorProdutos.BMostrarClick(Sender: TObject);
var vnTotal : integer;
begin
if EdDatIni.Date = 0 then
   begin
     MessageDlg('Informe a Data Inicial',mtWarning,[mbOK],0);
     ActiveControl := EdDatIni;
   end
else
if EdDatFim.Date = 0 then
   begin
     MessageDlg('Informe a Data Final',mtWarning,[mbOK],0);
     ActiveControl := EdDatFim;
   end
else
   begin


    DmOra.ConsCoresPorProduto.Close;
    DmOra.ConsCoresPorProduto.SQL.Clear;
    DmOra.ConsCoresPorProduto.SQL.Add('SELECT USU_T120IPD.USU_CODPRO,E075PRO.DESPRO,USU_T120IPD.USU_COR001,');
    DmOra.ConsCoresPorProduto.SQL.Add('USU_T120IPD.USU_COR002,SUM(USU_T120IPD.USU_QTDCOR - USU_T120IPD.USU_QTDCAN) AS QTDCOR FROM USU_T120IPD');
    DmOra.ConsCoresPorProduto.SQL.Add('INNER JOIN E120IPD ON E120IPD.CODEMP = USU_T120IPD.USU_CODEMP AND');
    DmOra.ConsCoresPorProduto.SQL.Add('E120IPD.CODFIL = USU_T120IPD.USU_CODFIL AND');
    DmOra.ConsCoresPorProduto.SQL.Add('E120IPD.NUMPED = USU_T120IPD.USU_NUMPED AND');
    DmOra.ConsCoresPorProduto.SQL.Add('E120IPD.SEQIPD = USU_T120IPD.USU_SEQIPD');
    DmOra.ConsCoresPorProduto.SQL.Add('INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND');
    DmOra.ConsCoresPorProduto.SQL.Add('E120PED.CODFIL = E120IPD.CODFIL AND');
    DmOra.ConsCoresPorProduto.SQL.Add('E120PED.NUMPED = E120IPD.NUMPED');
    DmOra.ConsCoresPorProduto.SQL.Add('INNER JOIN E075PRO ON E075PRO.CODEMP = E120PED.CODEMP AND');
    DmOra.ConsCoresPorProduto.SQL.Add('E075PRO.CODPRO = E120IPD.CODPRO');
    DmOra.ConsCoresPorProduto.SQL.Add('WHERE');
    DmOra.ConsCoresPorProduto.SQL.Add('E120IPD.SITIPD IN (1,4) AND');
    DmOra.ConsCoresPorProduto.SQL.Add('E120IPD.TNSPRO IN (''90100'',''90106'',''90150'',''90156'') AND');
    DmOra.ConsCoresPorProduto.SQL.Add('E120PED.DATEMI BETWEEN :DATINI AND :DATFIM');

    if ChTodos.Checked then
       begin//1
         DmOra.ConsCoresPorProduto.SQL.Add('AND E075PRO.CODAGP = :CODAGP');
         if RbEstofados.Checked then
            DmOra.ConsCoresPorProduto.Parameters.ParamByName('CODAGP').Value := 'ESTOF'
         else if RbColchoes.Checked then
                 DmOra.ConsCoresPorProduto.Parameters.ParamByName('CODAGP').Value := 'COLCH';
       end//1
    else
       begin//2
         if trim(EdCodPro.Text) <> '' then
            begin
              DmOra.ConsCoresPorProduto.SQL.Add('AND E120IPD.CODPRO = :CODPRO');
              DmOra.ConsCoresPorProduto.Parameters.ParamByName('CODPRO').Value := trim(EdCodPro.Text);
            end
         else
            begin//3
              if trim(EdCorAmbos.Text) <> '' then
                 begin//4
                    DmOra.ConsCoresPorProduto.SQL.Add('AND ((USU_T120IPD.USU_COr001 = :COR01) or (USU_T120IPD.USU_COr002 = :COR02))');
                    DmOra.ConsCoresPorProduto.Parameters.ParamByName('COR01').Value := EdCorAmbos.Text;
                    DmOra.ConsCoresPorProduto.Parameters.ParamByName('COR02').Value := EdCorAmbos.Text;
                 end//4
              else
                 begin//5
                    if (trim(EdCor001.Text) <> '') and (trim(EdCor002.Text) = '') then
                       begin
                         DmOra.ConsCoresPorProduto.SQL.Add('AND USU_T120IPD.USU_COr001 = :COR01');
                         DmOra.ConsCoresPorProduto.Parameters.ParamByName('COR01').Value := EdCor001.Text;
                       end
                    else
                     if (trim(EdCor001.Text) = '') and (trim(EdCor002.Text) <> '') then
                         begin
                           DmOra.ConsCoresPorProduto.SQL.Add('AND USU_T120IPD.USU_COr002 = :COR02');
                           DmOra.ConsCoresPorProduto.Parameters.ParamByName('COR02').Value := EdCor002.Text;
                         end
                    else
                    if (trim(EdCor001.Text) <> '') and (trim(EdCor002.Text) <> '') then
                        begin
                          DmOra.ConsCoresPorProduto.SQL.Add('AND USU_T120IPD.USU_COr001 = :COR01');
                          DmOra.ConsCoresPorProduto.SQL.Add('AND USU_T120IPD.USU_COr002 = :COR02');
                          DmOra.ConsCoresPorProduto.Parameters.ParamByName('COR01').Value := EdCor001.Text;
                          DmOra.ConsCoresPorProduto.Parameters.ParamByName('COR02').Value := EdCor002.Text;
                        end;

                 end;//5
            end;//3

       end;//2

    DmOra.ConsCoresPorProduto.SQL.Add('GROUP BY USU_T120IPD.USU_CODPRO,E075PRO.DESPRO,USU_T120IPD.USU_COR001,USU_T120IPD.USU_COR002');
    DmOra.ConsCoresPorProduto.SQL.Add('HAVING SUM(USU_T120IPD.USU_QTDABE) >= :QTDMIN');
    DmOra.ConsCoresPorProduto.SQL.Add('ORDER BY QTDCOR DESC');

    DmOra.ConsCoresPorProduto.Parameters.ParamByName('DATINI').Value := EdDatIni.Date;
    DmOra.ConsCoresPorProduto.Parameters.ParamByName('DATFIM').Value := EdDatFim.Date;
    DmOra.ConsCoresPorProduto.Parameters.ParamByName('QTDMIN').Value := EdQtdMinima.Value;
    DmOra.ConsCoresPorProduto.Open;

    DBGrid1.DataSource := DsAux;

    vnTotal := 0;
    DmOra.ConsCoresPorProduto.First;
    while not DmOra.ConsCoresPorProduto.Eof do
       begin
         vnTotal := vnTotal + DmOra.ConsCoresPorProdutoQTDCOR.AsInteger;
         DmOra.ConsCoresPorProduto.Next;
       end;
    DmOra.ConsCoresPorProduto.First;
    EdTotal.Value := vnTotal;

    DBGrid1.DataSource := DsConsCoresPorProduto;
   end;
end;

procedure TFConsCoresPorProdutos.EdCodProExit(Sender: TObject);
begin
if EdCodPro.Text <> '' then
   begin
     ValidaProduto.Close;
     ValidaProduto.Parameters.ParamByName('codemp').Value := 1;
     ValidaProduto.Parameters.ParamByName('codpro').Value := EdCodPro.Text;
     ValidaProduto.Open;
     if ValidaProduto.IsEmpty then
        begin
          Application.MessageBox('Produto não encontrado','Aviso', MB_ICONWARNING+MB_OK);
          EdCodPro.Clear;
          ActiveControl := EdCodPro;
        end
     else
        begin
          LDsProd.Caption := ValidaProdutoDESPRO.Value;
        end;
  end
else
   begin
     LDsProd.Caption := '';
   end;
end;

procedure TFConsCoresPorProdutos.EdCorAmbosChange(Sender: TObject);
begin
    EdCodPro.Clear;

    ChTodos.Checked := false;
end;

procedure TFConsCoresPorProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
