unit ULancaAdiantamentosFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Grids, DBGrids, Buttons, DB,
  DBClient, DateUtils, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP;

type
  TFLancaAdiantamentosFuncionarios = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EdVlrAdt: TCurrencyEdit;
    DBGrid1: TDBGrid;
    BGerarParcelas: TBitBtn;
    BConfirma: TBitBtn;
    DsClientParcelas: TDataSource;
    ChDescontarEmFolha: TCheckBox;
    EdQtdPar: TCurrencyEdit;
    ClientParcelas2: TClientDataSet;
    ClientParcelas2NUMADT: TIntegerField;
    ClientParcelas2VLRPAR: TFloatField;
    ClientParcelas2DATVCT: TDateField;
    ClientParcelas2DSCFLA: TStringField;
    ClientParcelas2SEQADT: TIntegerField;
    ClientParcelas: TClientDataSet;
    ClientParcelasNUMADT: TIntegerField;
    ClientParcelasVLRPAR: TFloatField;
    ClientParcelasDATVCT: TDateField;
    ClientParcelasDSCFLA: TStringField;
    ClientParcelasSEQADT: TIntegerField;
    BResultado: TBitBtn;
    SapSid: TIdHTTP;
    procedure BGerarParcelasClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BConfirmaClick(Sender: TObject);
  private
    { Private declarations }
    vnNumAdt : integer;
    vnSeqAdt : integer;
  public
    { Public declarations }
   // vnNumCad : integer;
  end;

var
  FLancaAdiantamentosFuncionarios: TFLancaAdiantamentosFuncionarios;

implementation

uses UDmOra, UGerenciaFuncionario, UImprimiReciboAdtFunc, UDm2;

{$R *.dfm}

procedure TFLancaAdiantamentosFuncionarios.BConfirmaClick(Sender: TObject);
var
vA_URL, vA_BasQry, xRetorno : String;
xPostQuery		              : TStringList;
vaCodEmp,vaCodFil,vaNumCco,vaCodTns,vaVlrMov,vaDatMov,vaHisMov : string;
vaNumTit,vaCodTpt,vaCodFor,vaDatEnt,vaDatEmi,vaVctOri,
vaVlrOri,vaVctPro,vaCodMoe,vaCodPor,vaCodCrt,vaCtaFin,vaCtaRed,vaCodCcu,vaVlrCta,vaVlrRat : string;
vaNumAne : string;
vnSeqMov : integer;
cursor : TCursor;
begin
    if not ClientParcelas.IsEmpty then
       begin//
         if Application.MessageBox('Confirmar lançamento do(os) adiantamento(os)?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
            Begin//11
              cursor := Screen.Cursor;
              Screen.Cursor := crSQLWait;
               ClientParcelas.First;
               while not ClientParcelas.Eof do
                  begin//1
                    DmOra.CadUsu_TRhAdtFun.Open;
                    DmOra.CadUsu_TRhAdtFun.Insert;
                    DmOra.CadUsu_TRhAdtFunUSU_NUMCAD.Value := FGerenciaFuncionario.ConsUsu_TRhFunUSU_NUMCAD.Value;
                    DmOra.CadUsu_TRhAdtFunUSU_NUMADT.Value := ClientParcelasNUMADT.Value;
                    DmOra.CadUsu_TRhAdtFunUSU_SEQADT.Value := ClientParcelasSEQADT.Value;
                    DmOra.CadUsu_TRhAdtFunUSU_DATADT.Value := date;
                    DmOra.CadUsu_TRhAdtFunUSU_VLRADT.Value := EdVlrAdt.Value;
                    DmOra.CadUsu_TRhAdtFunUSU_VLRPAR.Value := ClientParcelasVLRPAR.Value;
                    DmOra.CadUsu_TRhAdtFunUSU_VLRPGT.Value := 0;
                    DmOra.CadUsu_TRhAdtFunUSU_VLRABE.Value := ClientParcelasVLRPAR.Value;
                    DmOra.CadUsu_TRhAdtFunUSU_VLRDSC.Value := 0;
                    DmOra.CadUsu_TRhAdtFunUSU_DATVCT.Value := ClientParcelasDATVCT.Value;
                    DmOra.CadUsu_TRhAdtFunUSU_SITADT.Value := 'A';
                    DmOra.CadUsu_TRhAdtFunUSU_DSCFLA.Value := ClientParcelasDSCFLA.Value;
                    DmOra.CadUsu_TRhAdtFun.Post;

                    ClientParcelas.Next;
                  end;//1
               // BResultado.Click;

             //REALIZA O MOVIMENTO NA TEZOURARIA

              xPostQuery := TStringList.Create;

              Dm2.ADOUsuT000sis.Close;
              Dm2.ADOUsuT000sis.Open;
              vA_URL := Dm2.ADOUsuT000sisUSU_URLSRV.Value;
              vA_BasQry := Dm2.ADOUsuT000sisUSU_BASQRY.Value;

              xPostQuery.Add('ACAO=EXESENHA');
              xPostQuery.Add('&NOMUSU=sapienssid');
              xPostQuery.Add('&SENUSU=sapienssid');

              // Executar ação de autenticação no Sapiens SID
              xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

              // Verificar se a ação executou com sucesso
              if (StrToIntDef(Copy(xRetorno, 1, 5), 0)) = 0 then
                  raise Exception.Create('ERRO - Conexão SID não foi estabelecida: ' + xRetorno)
              else
                  vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;

              vaCodEmp := '1';;
              vaCodFil := '1';

              //loga na filial
              xPostQuery.Clear;
              xPostQuery.Add('ACAO=SID.Srv.AltEmpFil');
              xPostQuery.Add('&CodEmp='+vaCodEmp);
              xPostQuery.Add('&CodFil='+vaCodFil);
              xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

              //GERA O TIRULO
              //preenxe as variaveis para gerar o titulo
              vaNumTit := 'EMF-'+ IntToStr(FGerenciaFuncionario.ConsUsu_TRhFunUSU_NUMCAD.Value)+'-'+IntToStr(ClientParcelasNUMADT.AsInteger) ;
              vaCodTpt := 'EMF';
              vaCodFor := '940';
              vaCodTns := '90530';
              vaDatEnt := FormatDateTime('DD/MM/YYYY',date);
              vaDatEmi := FormatDateTime('DD/MM/YYYY',date);
              vaVctOri := FormatDateTime('DD/MM/YYYY',date);
              vaVctPro := FormatDateTime('DD/MM/YYYY',date);
              vaVlrOri := FloatToStr(EdVlrAdt.Value);
              vaCodMoe := '01';
              vaCodPor := '999';
              vaCodCrt := '99';
              //vaNumAne := IntToStr(CadUsu_TAdvAdtUSU_NUMANE.AsInteger);

              //gera o titulo
              xPostQuery.Clear;
              xPostQuery.Add('ACAO=SID.Tcp.Gravar');
              xPostQuery.Add('&NumTit='+vaNumTit);
              xPostQuery.Add('&CodTpt='+vaCodTpt);
              xPostQuery.Add('&CodFor='+vaCodFor);
              xPostQuery.Add('&CodTns='+vaCodTns);
              xPostQuery.Add('&DatEnt='+vaDatEnt);
              xPostQuery.Add('&DatEmi='+vaDatEmi);
              xPostQuery.Add('&VctOri='+vaVctOri);
              xPostQuery.Add('&VctPro='+vaVctPro);
              xPostQuery.Add('&VlrOri='+vaVlrOri);
              xPostQuery.Add('&CodMoe='+vaCodMoe);
              xPostQuery.Add('&CodPor='+vaCodPor);
              xPostQuery.Add('&CodCrt='+vaCodCrt);
              xPostQuery.Add('&CtaFin='+'1210');
              xPostQuery.Add('&CtaRed='+'3240');
              xPostQuery.Add('&CodCcu='+'2000');
              //xPostQuery.Add('&USU_NumAne='+vaNumAne);
              xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

              if xRetorno <> 'OK' then
                 begin
                   Refresh;
                   raise Exception.Create(xRetorno);
                 end
              else
            begin//3

            end;

              //FIM DO TITULO

              //GRAVA O MOVIMENTO DE SAIDA
              vaNumCco := 'CX01';
              vaCodTns := '90697';
              vaVlrMov := FloatToStr(EdVlrAdt.Value);//desconta o saldo da conta
              vaHisMov := 'ADIANTAMENTO P/FUNC.: '+ IntToStr(FGerenciaFuncionario.ConsUsu_TRhFunUSU_NUMCAD.Value)+' - '+FGerenciaFuncionario.ConsUsu_TRhFunUSU_NOMFUN.Value;
              vaDatMov := DateToStr(Date);
              // GRAVA MOVIMENTO
              xPostQuery.Clear;
              xPostQuery.Add('ACAO=SID.Tes.Gravar');
              xPostQuery.Add('&NumCco='+vaNumCco);
              xPostQuery.Add('&CodTns='+vaCodTns);
              xPostQuery.Add('&VlrMov='+vaVlrMov);
              xPostQuery.Add('&HisMov='+vaHisMov);
              xPostQuery.Add('&DatMov='+vaDatMov);

              // Executar ação
                 xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

                 try
                   vnSeqMov := StrToInt(xRetorno);
                 except
                   raise Exception.Create('Não foi possivel gerar o movimento na tesouraria');
                 end;
              Screen.Cursor := cursor;

             //FIM DO MOVIMENTO NA TESOURARIA
              FImprimiReciboAdtFunc := TFImprimiReciboAdtFunc.Create(Self);
              FImprimiReciboAdtFunc.EdNumCad.Value := FGerenciaFuncionario.ConsUsu_TRhFunUSU_NUMCAD.Value;
              FImprimiReciboAdtFunc.EdNumAdt.Value := ClientParcelasNUMADT.Value;

              FImprimiReciboAdtFunc.ShowModal;
              FreeAndNil(FImprimiReciboAdtFunc);
              Close;
            End;//11
       end;//
end;

procedure TFLancaAdiantamentosFuncionarios.BGerarParcelasClick(Sender: TObject);
var I : integer;
    vnVlrPar : double;
    Dia,Mes,Ano : word;
    vdDatVct : TDate;
begin
if (EdVlrAdt.Value > 0) and (EdQtdPar.Value > 0) then
   begin//1

    ClientParcelas.First;
    while not ClientParcelas.Eof do
       begin
         ClientParcelas.Delete;
       end;
    ClientParcelas.Open;

    //PEGA O NUMERO DO ADIANTAMENTO
    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('SELECT USU_TRHADTFUN.USU_NUMADT FROM USU_TRHADTFUN WHERE');
    DmOra.ConsSql.SQL.Add('USU_TRHADTFUN.USU_NUMCAD = :NUMCAD');
    DmOra.ConsSql.SQL.Add('ORDER BY USU_TRHADTFUN.USU_NUMADT DESC');
    DmOra.ConsSql.Parameters.ParamByName('NUMCAD').Value := FGerenciaFuncionario.ConsUsu_TRhFunUSU_NUMCAD.Value;
    DmOra.ConsSql.Open;
    if DmOra.ConsSql.IsEmpty then
       begin
         vnNumAdt := 1
       end
    else
       begin
         vnNumAdt := DmOra.ConsSql.FieldByName('usu_numadt').AsInteger + 1;
       end;

    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('SELECT USU_TRHADTFUN.USU_SEQADT FROM USU_TRHADTFUN WHERE');
    DmOra.ConsSql.SQL.Add('USU_TRHADTFUN.USU_NUMCAD = :NUMCAD AND');
    DmOra.ConsSql.SQL.Add('USU_TRHADTFUN.USU_NUMADT = :NUMADT');
    DmOra.ConsSql.SQL.Add('ORDER BY USU_TRHADTFUN.USU_SEQADT DESC');
    DmOra.ConsSql.Parameters.ParamByName('NUMCAD').Value := FGerenciaFuncionario.ConsUsu_TRhFunUSU_NUMCAD.Value;
    DmOra.ConsSql.Parameters.ParamByName('NUMADT').Value := vnNumAdt;
    DmOra.ConsSql.Open;
    if DmOra.ConsSql.IsEmpty then
       begin
          vnSeqAdt := 0
       end
    else
       begin
         vnSeqAdt := DmOra.ConsSql.FieldByName('USU_SEQADT').AsInteger;
       end;

    vnVlrPar := EdVlrAdt.Value / EdQtdPar.Value;

    DecodeDate(date,Ano,Mes,Dia);

    i := 1;
    while i <= EdQtdPar.Value do
       begin
         vnSeqAdt := vnSeqAdt + 1;

         if Mes < 12 then
            begin
              vdDatVct := EncodeDate(Ano,Mes+1,5);
              Mes := Mes + 1;
            end
         else
            begin
              vdDatVct := EncodeDate(Ano+1,1,5);
              Mes := 1;
              Ano := Ano + 1;
            end;

         ClientParcelas.Open;
         ClientParcelas.Insert;
         ClientParcelasNUMADT.Value := vnNumAdt;
         ClientParcelasSEQADT.Value := vnSeqAdt;
         ClientParcelasVLRPAR.Value := vnVlrPar;
         ClientParcelasDATVCT.Value := vdDatVct;
         if ChDescontarEmFolha.Checked then
            ClientParcelasDSCFLA.Value := 'S'
         else
            ClientParcelasDSCFLA.Value := 'N';
         ClientParcelas.Post;

         i := i + 1;
       end;

      ClientParcelas.IndexFieldNames := 'NUMADT;SEQADT';//ORDENA O CLIENTDATASET
   end;//1


end;

procedure TFLancaAdiantamentosFuncionarios.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:= Upcase(Key);

if DBGrid1.SelectedField.FieldName = 'DSCFLA' then
   begin
     if not (key in ['S','N'])and not (key in [#8])
      and not (key in [#240]) then
        BEGIN
          Key := #0;
        END;
   end;

end;

procedure TFLancaAdiantamentosFuncionarios.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
