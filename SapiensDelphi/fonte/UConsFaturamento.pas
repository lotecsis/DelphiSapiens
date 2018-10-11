{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR OFF}
{$WARN CVT_WIDENING_STRING_LOST OFF}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
unit UConsFaturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DB, DBClient, Buttons, ADODB,
  Mask, rxToolEdit, rxCurrEdit, DateUtils;

type
  TFConsFaturamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    cbAnoInicio: TComboBox;
    cbAnoFim: TComboBox;
    DBGrid1: TDBGrid;
    ClientDatas: TClientDataSet;
    DsClientDatas: TDataSource;
    ClientDatasDatIni: TDateField;
    ClientDatasDatFim: TDateField;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label4: TLabel;
    EdCodCli: TEdit;
    EdCodRep: TEdit;
    Label5: TLabel;
    EdCodFil: TEdit;
    BMostrar: TBitBtn;
    DBGrid2: TDBGrid;
    DsClientResultado: TDataSource;
    ConsFaturamento: TADOQuery;
    ConsFaturamentoTOTAL: TFMTBCDField;
    ConsFaturamentoTOTAL_LIQ: TFMTBCDField;
    EdEstof: TCurrencyEdit;
    EdColch: TCurrencyEdit;
    EdDiver: TCurrencyEdit;
    EdTotBru: TCurrencyEdit;
    EdTotLiq: TCurrencyEdit;
    EdTotImob: TCurrencyEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    BCodCli: TBitBtn;
    BCodRep: TBitBtn;
    BImprimir: TBitBtn;
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BMostrarClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BCodCliClick(Sender: TObject);
    procedure BCodRepClick(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    vnGeralEstof,vnGeralColch,vnGeralDiver,vnGeralBruto,vnGeralLiq,vnGeralImob : double;
  public
    { Public declarations }
  end;

var
  FConsFaturamento: TFConsFaturamento;

implementation

uses UDmOra, UConsGeralNfEnt, UDmRave, UDmRubi;

{$R *.dfm}

procedure TFConsFaturamento.BCodCliClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.cgccpf,e085cli.insest,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085cli.cidcli,e085cli.sigufs,e085cli.endcli,e085cli.baicli,e085cli.sitcli,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085hcl.codrep,e090rep.nomrep,e090rep.aperep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e085cli';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e085hcl on e085hcl.codcli = e085cli.codcli';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e090rep on e090rep.codrep = e085hcl.codrep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e085hcl.codfil = 1';

    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodCli';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FConsFaturamento';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodCli;
end;

procedure TFConsFaturamento.BCodRepClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e090rep.codrep,e090rep.nomrep,e090rep.aperep,e090rep.cgccpf,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e090rep.cidrep,e090rep.sigufs,e090rep.endrep,e090rep.bairep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e090rep';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'CodRep';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FConsFaturamento';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodRep;
end;

procedure TFConsFaturamento.BImprimirClick(Sender: TObject);
begin
      if not DmOra.ClientResultado.Eof then
         begin
            DmRave.RvConsFaturamento.Execute;
         end;
end;

procedure TFConsFaturamento.BitBtn1Click(Sender: TObject);
begin
 if trim(cbAnoInicio.Text) = '' then
    begin
      Application.MessageBox('INFORME O ANO INICIAL','AVISO', MB_ICONWARNING+MB_OK);
      ActiveControl := cbAnoInicio;
    end
 else
 if trim(cbAnoFim.Text) = '' then
    begin
      Application.MessageBox('INFORME O ANO FINAL','AVISO', MB_ICONWARNING+MB_OK);
      ActiveControl := cbAnoFim;
    end
 else
   begin//1
      ClientDatas.First;
      while not ClientDatas.Eof do
        begin
          ClientDatas.Delete;
        end;


      DmOra.ConsSql.Close;
      DmOra.ConsSql.SQL.Clear;
      DmOra.ConsSql.SQL.Add('SELECT * FROM USU_TDATAS');
      DmOra.ConsSql.SQL.Add('WHERE');
      DmOra.ConsSql.SQL.Add('USU_ANODAT BETWEEN :AnoIni AND :AnoFim');
      DmOra.ConsSql.SQL.Add('ORDER BY USU_TDATAS.USU_ANODAT DESC,USU_TDATAS.USU_MESDAT DESC');
      DmOra.ConsSql.Parameters.ParamByName('AnoIni').Value := StrToInt(cbAnoInicio.Text);
      DmOra.ConsSql.Parameters.ParamByName('AnoFim').Value := StrToInt(cbAnoFim.Text);
      DmOra.ConsSql.Open;
      DmOra.ConsSql.First;

      ClientDatas.Open;

      while not DmOra.ConsSql.Eof do
         begin//2
            ClientDatas.Insert;
            ClientDatasDatIni.AsDateTime := DmOra.ConsSql.FieldByName('usu_datini').Value;
            ClientDatasDatFim.AsDateTime := DmOra.ConsSql.FieldByName('usu_datfim').Value;
            ClientDatas.Post;
            DmOra.ConsSql.Next;
         end;//2

   end;//1

end;

procedure TFConsFaturamento.BMostrarClick(Sender: TObject);
var vaSql,vaSqlEstof,vaSqlColch,vaSqlDiver,vaSqlExec : string;
    vnEstof,vnColch,vnDiver,vnImob : Double;
    vnEstofLiq,vnColchLiq,vnDiverLiq : Double;
    vnDiasUteis,vnFds,vnDiasTrab,vnFeriados,vnQtdFun: Double;
    vdData : TDateTime;

begin
  vnGeralEstof := 0;
  vnGeralColch := 0;
  vnGeralDiver := 0;
  vnGeralBruto := 0;
  vnGeralLiq := 0;
  vnGeralImob := 0;


  DmOra.ClientResultado.First;
  while not DmOra.ClientResultado.Eof do
     begin
       DmOra.ClientResultado.Delete;
     end;


  ClientDatas.Last;
  while not ClientDatas.Bof do
     begin//1
       //consulta os estofados
       ConsFaturamento.Close;
       ConsFaturamento.SQL.Clear;
       ConsFaturamento.SQL.Add(' SELECT SUM(E140IPV.VLRBRU) AS TOTAL,SUM(E140IPV.VLRLIQ) AS TOTAL_LIQ FROM E140IPV');
       ConsFaturamento.SQL.Add(' INNER JOIN E140NFV ON E140NFV.CODEMP = E140IPV.CODEMP AND');
       ConsFaturamento.SQL.Add(' E140NFV.CODFIL = E140IPV.CODFIL AND');
       ConsFaturamento.SQL.Add(' E140NFV.NUMNFV = E140IPV.NUMNFV AND ');
       ConsFaturamento.SQL.Add(' E140NFV.CODSNF = E140IPV.CODSNF');
       ConsFaturamento.SQL.Add(' INNER JOIN E075PRO ON E075PRO.CODEMP = E140IPV.CODEMP AND ');
       ConsFaturamento.SQL.Add(' E075PRO.CODPRO = E140IPV.CODPRO');
       ConsFaturamento.SQL.Add(' INNER JOIN E085CLI ON E085CLI.CODCLI = E140NFV.CODCLI');
       ConsFaturamento.SQL.Add(' INNER JOIN E085HCL ON E085HCL.CODCLI = E085CLI.CODCLI AND');
       ConsFaturamento.SQL.Add(' E085HCL.CODFIL = 1 ');
       ConsFaturamento.SQL.Add(' WHERE');
       ConsFaturamento.SQL.Add(' (SELECT E001TNS.VENFAT FROM E001TNS WHERE E001TNS.CODEMP = E140IPV.CODEMP AND');
       ConsFaturamento.SQL.Add(' E001TNS.CODTNS = E140IPV.TNSPRO) = ''S''');
       ConsFaturamento.SQL.Add(' AND E140NFV.SITNFV = 2');
       ConsFaturamento.SQL.Add(' AND E140NFV.TIPNFS IN (10,1)');
       ConsFaturamento.SQL.Add(' AND E140NFV.DATEMI BETWEEN '+QuotedStr(DateToStr(ClientDatasDatIni.AsDateTime)) +' AND '+QuotedStr(DateToStr(ClientDatasDatFim.AsDateTime)));

         if trim(EdCodFil.Text) <> '' then
            begin
              ConsFaturamento.SQL.Add(' AND E140NFV.CODFIL = :CODFIL');
              ConsFaturamento.Parameters.ParamByName('CODFIL').Value := TRIM(EdCodFil.Text);
            end;

         if trim(EdCodCli.Text) <> '' then
            begin
              ConsFaturamento.SQL.Add(' AND E140NFV.CODCLI = :CODCLI');
              ConsFaturamento.Parameters.ParamByName('CODCLI').Value := TRIM(EdCodCli.Text);
            end;

         if trim(EdCodRep.Text) <> '' then
            begin
              ConsFaturamento.SQL.Add(' AND E085HCL.CODREP = :CODREP');
              ConsFaturamento.Parameters.ParamByName('CODREP').Value := TRIM(EdCodRep.Text);
            end;

        ConsFaturamento.SQL.Add(' AND E075PRO.CODAGC = ''ESTOF''');//PEGA OS ETOFADOS .
        ConsFaturamento.Open;
        if ConsFaturamento.IsEmpty then
           BEGIN
             vnEstof := 0;
             vnEstofLiq := 0;
           END
        ELSE
           BEGIN
             vnEstof := ConsFaturamentoTOTAL.AsCurrency;
             vnEstofLiq := ConsFaturamentoTOTAL_LIQ.AsCurrency;

           END;
  //----------------------FIM ESTOFADOS

      //CONSULTA OS COLCHOES
      ConsFaturamento.Close;
       ConsFaturamento.SQL.Clear;
       ConsFaturamento.SQL.Add(' SELECT SUM(E140IPV.VLRBRU) AS TOTAL,SUM(E140IPV.VLRLIQ) AS TOTAL_LIQ FROM E140IPV');
       ConsFaturamento.SQL.Add(' INNER JOIN E140NFV ON E140NFV.CODEMP = E140IPV.CODEMP AND');
       ConsFaturamento.SQL.Add(' E140NFV.CODFIL = E140IPV.CODFIL AND');
       ConsFaturamento.SQL.Add(' E140NFV.NUMNFV = E140IPV.NUMNFV AND ');
       ConsFaturamento.SQL.Add(' E140NFV.CODSNF = E140IPV.CODSNF');
       ConsFaturamento.SQL.Add(' INNER JOIN E075PRO ON E075PRO.CODEMP = E140IPV.CODEMP AND ');
       ConsFaturamento.SQL.Add(' E075PRO.CODPRO = E140IPV.CODPRO');
       ConsFaturamento.SQL.Add(' INNER JOIN E085CLI ON E085CLI.CODCLI = E140NFV.CODCLI');
       ConsFaturamento.SQL.Add(' INNER JOIN E085HCL ON E085HCL.CODCLI = E085CLI.CODCLI AND');
       ConsFaturamento.SQL.Add(' E085HCL.CODFIL = 1 ');
       ConsFaturamento.SQL.Add(' WHERE');
       ConsFaturamento.SQL.Add(' (SELECT E001TNS.VENFAT FROM E001TNS WHERE E001TNS.CODEMP = E140IPV.CODEMP AND');
       ConsFaturamento.SQL.Add(' E001TNS.CODTNS = E140IPV.TNSPRO) = ''S''');
       ConsFaturamento.SQL.Add(' AND E140NFV.SITNFV = 2');
       ConsFaturamento.SQL.Add(' AND E140NFV.TIPNFS IN (10,1)');
       ConsFaturamento.SQL.Add(' AND E140NFV.DATEMI BETWEEN '+QuotedStr(DateToStr(ClientDatasDatIni.AsDateTime)) +' AND '+QuotedStr(DateToStr(ClientDatasDatFim.AsDateTime)));

         if trim(EdCodFil.Text) <> '' then
            begin
              ConsFaturamento.SQL.Add(' AND E140NFV.CODFIL = :CODFIL');
              ConsFaturamento.Parameters.ParamByName('CODFIL').Value := TRIM(EdCodFil.Text);
            end;

         if trim(EdCodCli.Text) <> '' then
            begin
              ConsFaturamento.SQL.Add(' AND E140NFV.CODCLI = :CODCLI');
              ConsFaturamento.Parameters.ParamByName('CODCLI').Value := TRIM(EdCodCli.Text);
            end;

         if trim(EdCodRep.Text) <> '' then
            begin
              ConsFaturamento.SQL.Add(' AND E085HCL.CODREP = :CODREP');
              ConsFaturamento.Parameters.ParamByName('CODREP').Value := TRIM(EdCodRep.Text);
            end;

        ConsFaturamento.SQL.Add(' AND E075PRO.CODAGC = ''COLCH''');//PEGA OS ETOFADOS .
        ConsFaturamento.Open;
        if ConsFaturamento.IsEmpty then
           BEGIN
             vnColch := 0;
             vnColchLiq := 0;
           END
        ELSE
           BEGIN
             vnColch := ConsFaturamentoTOTAL.AsCurrency;
             vnColchLiq := ConsFaturamentoTOTAL_LIQ.AsCurrency;
           END;

        //------FIM DOS COLCHOES


       //CONSULTA OS DIVERSOS
       ConsFaturamento.Close;
       ConsFaturamento.SQL.Clear;
       ConsFaturamento.SQL.Add(' SELECT SUM(E140IPV.VLRBRU) AS TOTAL,SUM(E140IPV.VLRLIQ) AS TOTAL_LIQ FROM E140IPV');
       ConsFaturamento.SQL.Add(' INNER JOIN E140NFV ON E140NFV.CODEMP = E140IPV.CODEMP AND');
       ConsFaturamento.SQL.Add(' E140NFV.CODFIL = E140IPV.CODFIL AND');
       ConsFaturamento.SQL.Add(' E140NFV.NUMNFV = E140IPV.NUMNFV AND ');
       ConsFaturamento.SQL.Add(' E140NFV.CODSNF = E140IPV.CODSNF');
       ConsFaturamento.SQL.Add(' INNER JOIN E075PRO ON E075PRO.CODEMP = E140IPV.CODEMP AND ');
       ConsFaturamento.SQL.Add(' E075PRO.CODPRO = E140IPV.CODPRO');
       ConsFaturamento.SQL.Add(' INNER JOIN E085CLI ON E085CLI.CODCLI = E140NFV.CODCLI');
       ConsFaturamento.SQL.Add(' INNER JOIN E085HCL ON E085HCL.CODCLI = E085CLI.CODCLI AND');
       ConsFaturamento.SQL.Add(' E085HCL.CODFIL = 1 ');
       ConsFaturamento.SQL.Add(' WHERE');
       ConsFaturamento.SQL.Add(' (SELECT E001TNS.VENFAT FROM E001TNS WHERE E001TNS.CODEMP = E140IPV.CODEMP AND');
       ConsFaturamento.SQL.Add(' E001TNS.CODTNS = E140IPV.TNSPRO) = ''S''');
       ConsFaturamento.SQL.Add(' AND E140NFV.SITNFV = 2');
       ConsFaturamento.SQL.Add(' AND E140NFV.TIPNFS IN (10,1)');
       ConsFaturamento.SQL.Add(' AND E140NFV.DATEMI BETWEEN '+QuotedStr(DateToStr(ClientDatasDatIni.AsDateTime)) +' AND '+QuotedStr(DateToStr(ClientDatasDatFim.AsDateTime)));

         if trim(EdCodFil.Text) <> '' then
            begin
              ConsFaturamento.SQL.Add(' AND E140NFV.CODFIL = :CODFIL');
              ConsFaturamento.Parameters.ParamByName('CODFIL').Value := TRIM(EdCodFil.Text);
            end;

         if trim(EdCodCli.Text) <> '' then
            begin
              ConsFaturamento.SQL.Add(' AND E140NFV.CODCLI = :CODCLI');
              ConsFaturamento.Parameters.ParamByName('CODCLI').Value := TRIM(EdCodCli.Text);
            end;

         if trim(EdCodRep.Text) <> '' then
            begin
              ConsFaturamento.SQL.Add(' AND E085HCL.CODREP = :CODREP');
              ConsFaturamento.Parameters.ParamByName('CODREP').Value := TRIM(EdCodRep.Text);
            end;

        ConsFaturamento.SQL.Add(' AND E075PRO.CODAGC = ''DIVER''');//PEGA OS ETOFADOS .
        ConsFaturamento.Open;
        if ConsFaturamento.IsEmpty then
           BEGIN
             vnDiver := 0;
             vnDiverLiq := 0;
           END
        ELSE
           BEGIN
             vnDiver := ConsFaturamentoTOTAL.AsCurrency;
             vnDiverLiq := ConsFaturamentoTOTAL_LIQ.AsCurrency;
           END;

       //--------FIM DOS DIVERSOS

       //IMABILIZADOS E OUTROS
        ConsFaturamento.Close;
       ConsFaturamento.SQL.Clear;
       ConsFaturamento.SQL.Add(' SELECT SUM(E140IPV.VLRBRU) AS TOTAL,SUM(E140IPV.VLRLIQ) AS TOTAL_LIQ FROM E140IPV');
       ConsFaturamento.SQL.Add(' INNER JOIN E140NFV ON E140NFV.CODEMP = E140IPV.CODEMP AND');
       ConsFaturamento.SQL.Add(' E140NFV.CODFIL = E140IPV.CODFIL AND');
       ConsFaturamento.SQL.Add(' E140NFV.NUMNFV = E140IPV.NUMNFV AND ');
       ConsFaturamento.SQL.Add(' E140NFV.CODSNF = E140IPV.CODSNF');
       ConsFaturamento.SQL.Add(' INNER JOIN E075PRO ON E075PRO.CODEMP = E140IPV.CODEMP AND ');
       ConsFaturamento.SQL.Add(' E075PRO.CODPRO = E140IPV.CODPRO');
       ConsFaturamento.SQL.Add(' INNER JOIN E085CLI ON E085CLI.CODCLI = E140NFV.CODCLI');
       ConsFaturamento.SQL.Add(' INNER JOIN E085HCL ON E085HCL.CODCLI = E085CLI.CODCLI AND');
       ConsFaturamento.SQL.Add(' E085HCL.CODFIL = 1 ');
       ConsFaturamento.SQL.Add(' WHERE');
       ConsFaturamento.SQL.Add(' (SELECT E001TNS.VENFAT FROM E001TNS WHERE E001TNS.CODEMP = E140IPV.CODEMP AND');
       ConsFaturamento.SQL.Add(' E001TNS.CODTNS = E140IPV.TNSPRO) = ''S''');
       ConsFaturamento.SQL.Add(' AND E140NFV.SITNFV = 2');
       ConsFaturamento.SQL.Add(' AND E140IPV.TNSPRO IN (''5102'',''5102R'',''5551'',''6102'',''6102R'',''6551'')');

       ConsFaturamento.SQL.Add(' AND E140NFV.DATEMI BETWEEN '+QuotedStr(DateToStr(ClientDatasDatIni.AsDateTime)) +' AND '+QuotedStr(DateToStr(ClientDatasDatFim.AsDateTime)));

         if trim(EdCodFil.Text) <> '' then
            begin
              ConsFaturamento.SQL.Add(' AND E140NFV.CODFIL = :CODFIL');
              ConsFaturamento.Parameters.ParamByName('CODFIL').Value := TRIM(EdCodFil.Text);
            end;

         if trim(EdCodCli.Text) <> '' then
            begin
              ConsFaturamento.SQL.Add(' AND E140NFV.CODCLI = :CODCLI');
              ConsFaturamento.Parameters.ParamByName('CODCLI').Value := TRIM(EdCodCli.Text);
            end;

         if trim(EdCodRep.Text) <> '' then
            begin
              ConsFaturamento.SQL.Add(' AND E085HCL.CODREP = :CODREP');
              ConsFaturamento.Parameters.ParamByName('CODREP').Value := TRIM(EdCodRep.Text);
            end;


        ConsFaturamento.Open;
        if ConsFaturamento.IsEmpty then
           BEGIN
             vnImob := 0;
           END
        ELSE
           BEGIN
             vnImob := ConsFaturamentoTOTAL_LIQ.AsCurrency;
           END;

       //FIM IMOBILIZADOS E OUTROS

       //função para pegar a quantidade de dias uteis em um periodo
        vnDiasUteis := 0;
        vnFds := 0;
       vdData := ClientDatasDatIni.AsDateTime;
       while vdData <= ClientDatasDatFim.AsDateTime do
         begin//a
            case DayOfWeek(vdData) of//a1
              2 : vnDiasUteis := vnDiasUteis + 1;
              3 : vnDiasUteis := vnDiasUteis + 1;
              4 : vnDiasUteis := vnDiasUteis + 1;
              5 : vnDiasUteis := vnDiasUteis + 1;
              6 : vnDiasUteis := vnDiasUteis + 1;
              1 : vnFds := vnFds + 1;
              7 : vnFds := vnFds + 1;
            end;//a1

           vdData := vdData + 1;
         end;//a

         vnFeriados := 0;
         //consulta os feriados dentro do periodo
         DmRubi.ConsR002Fem.Close;
         DmRubi.ConsR002Fem.Parameters.ParamByName('DatIni').Value := ClientDatasDatIni.Value;
         DmRubi.ConsR002Fem.Parameters.ParamByName('DatFim').Value := ClientDatasDatFim.Value;
         DmRubi.ConsR002Fem.Open;
         DmRubi.ConsR002Fem.First;
         while not DmRubi.ConsR002Fem.Eof do
           begin

             if (DayOfWeek(DmRubi.ConsR002FemDATFER.AsDateTime) <> 1) and (DayOfWeek(DmRubi.ConsR002FemDATFER.AsDateTime) <> 7)  then
                begin
                  vnFeriados := vnFeriados + 1;
                end;
             DmRubi.ConsR002Fem.Next;
           end;

       vnDiasTrab := vnDiasUteis - vnFeriados;
       //fim da função dos dias uteis

       //consulta a quantidade de funcionarios no periodo
       vnQtdFun := 0;
       DmRubi.ConsR054Ctd.Close;
       DmRubi.ConsR054Ctd.Parameters.ParamByName('DATINI').Value := ClientDatasDatIni.AsDateTime;
       DmRubi.ConsR054Ctd.Parameters.ParamByName('DATFIM').Value := ClientDatasDatFim.AsDateTime;
       DmRubi.ConsR054Ctd.Open;
       DmRubi.ConsR054Ctd.First;
       while not DmRubi.ConsR054Ctd.Eof do
         begin
           vnQtdFun := vnQtdFun + 1;
           DmRubi.ConsR054Ctd.Next;
         end;

       DmOra.ClientResultado.Open;
       DmOra.ClientResultado.Insert;
       DmOra.ClientResultadoDatIni.AsDateTime := ClientDatasDatIni.AsDateTime;
       DmOra.ClientResultadoDatFim.AsDateTime := ClientDatasDatFim.AsDateTime;
       DmOra.ClientResultadoTotEstof.AsFloat := vnEstof;
       DmOra.ClientResultadoTotColch.AsFloat := vnColch;
       DmOra.ClientResultadoTotDiver.AsFloat := vnDiver;
       DmOra.ClientResultadoTotBruto.AsFloat := vnEstof + vnColch + vnDiver;
       DmOra.ClientResultadoToTLiq.AsFloat := vnEstofLiq + vnColchLiq + vnDiverLiq;
       DmOra.ClientResultadoTotOutros.AsFloat := vnImob;
       DmOra.ClientResultadoQtdFun.AsFloat := vnQtdFun;
       DmOra.ClientResultadoDiasTrab.AsFloat := vnDiasTrab;

       if vnDiasTrab > 0 then
       DmOra.ClientResultadoMedVlrDiasTrab.AsFloat := DmOra.ClientResultadoTotBruto.AsFloat / vnDiasTrab;

       if vnQtdFun > 0 then
       DmOra.ClientResultadoMedVlrQtdFun.AsFloat := DmOra.ClientResultadoTotBruto.AsFloat / vnQtdFun;

       DmOra.ClientResultado.Post;

       vnGeralEstof := vnGeralEstof + DmOra.ClientResultadoTotEstof.AsFloat;
       vnGeralColch := vnGeralColch + DmOra.ClientResultadoTotColch.AsFloat;
       vnGeralDiver := vnGeralDiver + DmOra.ClientResultadoTotDiver.AsFloat;
       vnGeralBruto := vnGeralBruto + DmOra.ClientResultadoTotBruto.AsFloat;
       vnGeralLiq := vnGeralLiq + DmOra.ClientResultadoTotLiq.AsFloat;
       vnGeralImob := vnGeralImob + DmOra.ClientResultadoTotOutros.AsFloat;

       ClientDatas.Prior;
     end;//1

     EdEstof.Value := vnGeralEstof;
     EdColch.Value := vnGeralColch;
     EdDiver.Value := vnGeralDiver;
     EdTotBru.Value := vnGeralBruto;
     EdTotLiq.Value := vnGeralLiq;
     EdTotImob.Value := vnGeralImob;

     DmOra.ClientResultado.IndexFieldNames := 'DatIni';
end;


procedure TFConsFaturamento.btn1Click(Sender: TObject);
var diaIni, diaFim : TDate;
    datIni, datFim : TDate;
begin

   datIni := ClientDatasDatIni.AsDateTime;
   datFim := ClientDatasDatFim.AsDateTime;

  if DayOfWeek(StartOfTheMonth(ClientDatasDatIni.AsDateTime)) = 1 then
     begin
       diaIni := ClientDatasDatIni.AsDateTime;
     end
  else
  if DayOfWeek(StartOfTheMonth(ClientDatasDatIni.AsDateTime)) = 2 then
     begin
       diaIni := IncDay(ClientDatasDatIni.AsDateTime,-1);
     end
  else
  if DayOfWeek(StartOfTheMonth(ClientDatasDatIni.AsDateTime)) = 3 then
     begin
       diaIni := IncDay(ClientDatasDatIni.AsDateTime,-2);
     end
  else
  if DayOfWeek(StartOfTheMonth(ClientDatasDatIni.AsDateTime)) = 4 then
     begin
       diaIni := IncDay(ClientDatasDatIni.AsDateTime,-3);
     end
  else
  if DayOfWeek(StartOfTheMonth(ClientDatasDatIni.AsDateTime)) = 5 then
     begin
       diaIni := IncDay(ClientDatasDatIni.AsDateTime,-4);
     end
  else
  if DayOfWeek(StartOfTheMonth(ClientDatasDatIni.AsDateTime)) = 6 then
     begin
       diaIni := IncDay(ClientDatasDatIni.AsDateTime,-5);
     end
  else
  if DayOfWeek(StartOfTheMonth(ClientDatasDatIni.AsDateTime)) = 7 then
     begin
       diaIni := IncDay(ClientDatasDatIni.AsDateTime,-6);
     end;

  diaFim := IncDay(diaIni,6);

  ClientDatas.Insert;
  ClientDatasDatIni.AsDateTime := diaIni;
  ClientDatasDatFim.AsDateTime := diaFim;
  ClientDatas.Post;

  diaIni := IncDay(diaFim,1);
  diaFim := IncDay(diaIni,6);
  ClientDatas.Insert;
  ClientDatasDatIni.AsDateTime := diaIni;
  ClientDatasDatFim.AsDateTime := diaFim;
  ClientDatas.Post;

  diaIni := IncDay(diaFim,1);
  diaFim := IncDay(diaIni,6);
  ClientDatas.Insert;
  ClientDatasDatIni.AsDateTime := diaIni;
  ClientDatasDatFim.AsDateTime := diaFim;
  ClientDatas.Post;

  diaIni := IncDay(diaFim,1);
  diaFim := IncDay(diaIni,6);
  ClientDatas.Insert;
  ClientDatasDatIni.AsDateTime := diaIni;
  ClientDatasDatFim.AsDateTime := diaFim;
  ClientDatas.Post;

  diaIni := IncDay(diaFim,1);
  diaFim := IncDay(diaIni,6);
  ClientDatas.Insert;
  ClientDatasDatIni.AsDateTime := diaIni;
  ClientDatasDatFim.AsDateTime := diaFim;
  ClientDatas.Post;

  diaIni := IncDay(diaFim,1);
  diaFim := IncDay(diaIni,6);
  if StartOfTheMonth(diaIni)  =  StartOfTheMonth(datIni) then
     begin
        ClientDatas.Insert;
        ClientDatasDatIni.AsDateTime := diaIni;
        ClientDatasDatFim.AsDateTime := diaFim;
        ClientDatas.Post;
     end;

  ClientDatas.Last;
  ClientDatas.Delete;
  ClientDatas.IndexFieldNames := 'DatIni';
  ClientDatas.First;


end;

procedure TFConsFaturamento.btn2Click(Sender: TObject);
begin
  ClientDatas.First;
  while not ClientDatas.Eof do
    begin
      ClientDatas.Delete;
    end;

 BMostrarClick(Sender);
end;

procedure TFConsFaturamento.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //GRID ZEBRADA
    if odd(DmOra.ClientResultado.RecNo) then
    DBGrid2.Canvas.Brush.Color:= clmenubar
    else
    DBGrid2.Canvas.Brush.Color:= clCream;

    TDbGrid(Sender).Canvas.font.Color:= clBlack;
    //MUDA A COR QUANDO A LINHA ESTIVER SELECIONADA
    if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
    begin
    Brush.Color := clSkyBlue;
    FillRect(Rect);
    Font.Style := [fsbold]
    end;

    TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

end.
