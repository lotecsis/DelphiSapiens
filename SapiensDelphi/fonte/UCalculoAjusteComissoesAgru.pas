unit UCalculoAjusteComissoesAgru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, rxCurrEdit, Mask, rxToolEdit, Buttons, DB, DateUtils,
  DBCtrls, ADODB;

type
  TFCalculoAjusteComissoesAgru = class(TForm)
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    edtCodRep: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbg1: TDBGrid;
    btnMostrar: TBitBtn;
    dsConsE504CapAgru: TDataSource;
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
    lblDesRep: TLabel;
    btnImprimir: TBitBtn;
    edtTotalComissao: TCurrencyEdit;
    Label5: TLabel;
    edtCodFil: TCurrencyEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtTotalBase: TCurrencyEdit;
    edtVlrComissao: TCurrencyEdit;
    edtTotalAjuste: TCurrencyEdit;
    edtDozeAvos: TCurrencyEdit;
    Label9: TLabel;
    chkAjustar: TCheckBox;
    Label10: TLabel;
    edtUF: TEdit;
    edtTotalAjuste1_101: TCurrencyEdit;
    btn1: TBitBtn;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodRepExit(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCalculoAjusteComissoesAgru: TFCalculoAjusteComissoesAgru;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFCalculoAjusteComissoesAgru.btn1Click(Sender: TObject);
var vnTotalAjuste : Double;
begin
if edtDatIni.Date = 0 then
   begin
     Application.MessageBox('Informe a data inicial','Aviso',MB_ICONWARNING+MB_OK);
     ActiveControl := edtDatIni;
     Abort;
   end;
if edtDatFim.Date = 0 then
   begin
     Application.MessageBox('Informe a data final','Aviso',MB_ICONWARNING+MB_OK);
     ActiveControl := edtDatFim;
     Abort;
   end;
if edtCodRep.Value = 0 then
   begin
     Application.MessageBox('Informe o representante','Aviso',MB_ICONWARNING+MB_OK);
     ActiveControl := edtCodRep;
     Abort;
   end;

  edtTotalAjuste1_101.Value := 0;
  chkAjustar.Checked := False;

  vnTotalAjuste := 0;
  edtCodFil.Value := 1;
  btnMostrar.Click;
    if Trim(edtTotalAjuste.Text) <> '' then
      begin
        vnTotalAjuste := vnTotalAjuste + StrToFloat(edtTotalAjuste.Text);
      end;

  edtCodFil.Value := 101;
  btnMostrar.Click;
  if Trim(edtTotalAjuste.Text) <> '' then
     begin
       vnTotalAjuste := vnTotalAjuste + StrToFloat(edtTotalAjuste.Text);
     end;


  edtTotalAjuste1_101.Value := vnTotalAjuste;
  chkAjustar.Checked := True;
  edtCodFil.Value := 0;
  DmOra.ConsE504CapAgru.Close;
  edtTotalComissao.Value := 0;
  edtTotalBase.Value := 0;
  edtVlrComissao.Value := 0;
  edtTotalAjuste.Value := 0;
  edtDozeAvos.Value := 0;
 
end;

procedure TFCalculoAjusteComissoesAgru.btnImprimirClick(Sender: TObject);
var Dia,Mes,Ano : Word;
    vaMes : string;
begin
  { DecodeDate(edtDatIni.Date,Ano,Mes,Dia);

   case Mes of
     1 : vaMes := 'Janeiro';
     2 : vaMes := 'Fevereiro';
     3 : vaMes := 'Março';
     4 : vaMes := 'Abril';
     5 : vaMes := 'Maio';
     6 : vaMes := 'Junho';
     7 : vaMes := 'Julho';
     8 : vaMes := 'Agosto';
     9 : vaMes := 'Setembro';
     10 : vaMes := 'Outubro';
     11 : vaMes := 'Novembro';
     12 : vaMes := 'Dezembro';
   end;

   vaMes := vaMes + '  -  '+IntToStr(Ano); }

  if NOT DmOra.ConsE504CapAgru.IsEmpty then
     begin
       if edtCodFil.Value = 1 then
          begin
             DmOra.RvAjusteComissaoAgru1.SetParam('vnTotal',FormatFloat(',0.00',edtTotalAjuste.Value));
             DmOra.RvAjusteComissaoAgru1.Execute;
          end;

       if edtCodFil.Value = 101 then
          begin
             DmOra.RvAjusteComissaoAgru.SetParam('vnTotal',FormatFloat(',0.00',edtTotalComissao.Value));
             DmOra.RvAjusteComissaoAgru.Execute;
          end;


     end;
end;

procedure TFCalculoAjusteComissoesAgru.btnMostrarClick(Sender: TObject);
var vnTotalComissao,vnTotalBase,vnVlrComissao,vnTotalReajuste, vnDozeAvos : Double;
    vnAno,vnMes,vnDia : Word;
begin
   //consulta se foi lançado algum ajuste de comissão
    DecodeDate(edtDatIni.Date,vnAno,vnMes,vnDia);
    DmOra.ConsUSU_TAjuCom.Close;
    DmOra.ConsUSU_TAjuCom.Parameters.ParamByName('codrep').Value := edtCodRep.Value;
    DmOra.ConsUSU_TAjuCom.Parameters.ParamByName('mesaju').Value := vnMes;
    DmOra.ConsUSU_TAjuCom.Parameters.ParamByName('anoaju').Value := vnAno;
    DmOra.ConsUSU_TAjuCom.Open;


    DmOra.ConsE504CapAgru.Close;
    DmOra.ConsE504CapAgru.SQL.Clear;
    DmOra.ConsE504CapAgru.SQL.Add('select sum(e301mcr.vlrbco) as total_base, round(sum(e504cap.vlrcom),2) as total_comissao,');
    DmOra.ConsE504CapAgru.SQL.Add('       e504cap.codemp,e504cap.codfil,e504cap.codrep,e504cap.datbas,e504cap.codtns,');
    DmOra.ConsE504CapAgru.SQL.Add('       e301tcr.codcli,');
    DmOra.ConsE504CapAgru.SQL.Add('       e085cli.nomcli,');
    DmOra.ConsE504CapAgru.SQL.Add('       e140nfv.codcpg,e140nfv.numnfv,');
    DmOra.ConsE504CapAgru.SQL.Add('       e028cpg.descpg,e028cpg.przmed,e028cpg.percom,e028cpg.usu_perapl');
    DmOra.ConsE504CapAgru.SQL.Add('from e504cap');
    DmOra.ConsE504CapAgru.SQL.Add('inner join e301tcr on e301tcr.codemp = e504cap.codemp and');
    DmOra.ConsE504CapAgru.SQL.Add('                      e301tcr.codfil = e504cap.codfil and');
    DmOra.ConsE504CapAgru.SQL.Add('                      e301tcr.numtit = e504cap.numtit and');
    DmOra.ConsE504CapAgru.SQL.Add('                      e301tcr.codtpt = e504cap.codtpt');
    DmOra.ConsE504CapAgru.SQL.Add('inner join e301mcr on e301mcr.codemp = e504cap.codemp and');
    DmOra.ConsE504CapAgru.SQL.Add('                      e301mcr.codfil = e504cap.codfil and');
    DmOra.ConsE504CapAgru.SQL.Add('                      e301mcr.numtit = e504cap.numtit and');
    DmOra.ConsE504CapAgru.SQL.Add('                      e301mcr.codtpt = e504cap.codtpt and');
    DmOra.ConsE504CapAgru.SQL.Add('                      e301mcr.seqmov = e504cap.seqmov');
    DmOra.ConsE504CapAgru.SQL.Add('inner join e085cli on e085cli.codcli = e301tcr.codcli');
    DmOra.ConsE504CapAgru.SQL.Add('inner join e140nfv on e140nfv.codemp = e301tcr.codemp and');
    DmOra.ConsE504CapAgru.SQL.Add('                      e140nfv.codfil = e301tcr.filnfv and');
    DmOra.ConsE504CapAgru.SQL.Add('                      e140nfv.codsnf = e301tcr.codsnf and');
    DmOra.ConsE504CapAgru.SQL.Add('                      e140nfv.numnfv = e301tcr.numnfv');
    DmOra.ConsE504CapAgru.SQL.Add('inner join e028cpg on e028cpg.codemp = e140nfv.codemp and');
    DmOra.ConsE504CapAgru.SQL.Add('                      e028cpg.codcpg = e140nfv.codcpg');
    DmOra.ConsE504CapAgru.SQL.Add('where datbas between :DATINI and :DATFIM and');
    DmOra.ConsE504CapAgru.SQL.Add('      e504cap.codrep = :CODREP and');
    DmOra.ConsE504CapAgru.SQL.Add('      e504cap.codfil = :CODFIL and');
    DmOra.ConsE504CapAgru.SQL.Add('      not (e504cap.codtns in (''90590'',''90599'',''90581'',''90591'')) and');
    DmOra.ConsE504CapAgru.SQL.Add('      e140nfv.sitnfv = ''2'' and');
    DmOra.ConsE504CapAgru.SQL.Add('      e504cap.vlrcom > 0');

    if Trim(edtUF.Text) <> '' then
       begin
         DmOra.ConsE504CapAgru.SQL.Add('      and e085cli.sigufs = '+QuotedStr(edtUF.Text));
       end;


    //temporario para excluir a comissao depois apaga
    //DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''27016=01'',''27016=02'',''27016=03'',''27016=04'',''27016=05'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''27077=01'',''27077=02'',''27077=03'',''27077=04'',''27077=05'')');
    //DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''11077-02'',''11077-03'',''11077-04'',''11078-01'',''11078-02'',''11078-03'',''11078-04'',''11078-05'',''11078-06'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''11088-01'',''11088-02'',''11088-03'',''11088-04'',''11088-05'',''11088-06'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''11182-01'',''11182-02'',''11182-03'',''11182-04'',''11182-05'',''11182-06'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''27578=01'',''27578=02'',''27578=03'',''27578=04'',''27578=05'')');

    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''11451-01'',''11451-02'',''11451-03'',''11451-04'',''11451-05'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''11466-01'',''11466-02'',''11466-03'',''11466-04'',''11466-05'',''11466-06'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''11495-01'',''11495-02'',''11495-03'',''11495-04'',''11495-05'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''11520-01'',''11520-02'',''11520-03'',''11520-04'',''11520-05'',''11520-06'')');

    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''12020-01'',''12020-02'',''12020-03'',''12020-04'',''12020-05'',''12020-06'')');

    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''30858=02'',''30858=03'',''30858=04'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''31057=02'',''31057=03'',''31057=04'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''31061=02'',''31061=03'',''31061=04'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''31343=02'',''31343=03'',''31343=04'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''12439-02'',''12439-03'',''12439-04'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''30874=02'',''30874=03'',''30874=04'',''30877=01'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''30835=02'',''30835=03'',''30835=04'',''30835=05'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''31163=02'',''31163=03'',''31163=04'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''12394-01'',''12394-02'',''12394-03'',''12394-04'',''12394-05'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''12509-02'',''12509-03'',''12509-04'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''31000=05'')');
    DmOra.ConsE504CapAgru.SQL.Add('      and e504cap.numtit not in(''31238=01'',''31238=02'',''31238=03'',''31238=04'',''31238=05'')');

    if edtCodFil.Value = 1 then
       begin
         DmOra.ConsE504CapAgru.SQL.Add('      and e028cpg.usu_perapl > 0');
       end;

    DmOra.ConsE504CapAgru.SQL.Add('group by e504cap.codemp,e504cap.codfil,e504cap.codrep,e504cap.datbas,e504cap.codtns,');
    DmOra.ConsE504CapAgru.SQL.Add('       e301tcr.codcli,');
    DmOra.ConsE504CapAgru.SQL.Add('       e085cli.nomcli,');
    DmOra.ConsE504CapAgru.SQL.Add('       e140nfv.codcpg,e140nfv.numnfv,');
    DmOra.ConsE504CapAgru.SQL.Add('       e028cpg.descpg,e028cpg.przmed,e028cpg.percom,e028cpg.usu_perapl');
    DmOra.ConsE504CapAgru.SQL.Add('       order by e140nfv.numnfv');
    DmOra.ConsE504CapAgru.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
    DmOra.ConsE504CapAgru.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
    DmOra.ConsE504CapAgru.Parameters.ParamByName('CODREP').Value := edtCodRep.AsInteger;
    DmOra.ConsE504CapAgru.Parameters.ParamByName('CODFIL').Value := edtCodFil.AsInteger;
    DmOra.ConsE504CapAgru.Open;
    vnTotalComissao := 0;
    vnTotalBase := 0;
    vnVlrComissao := 0;
    vnTotalReajuste := 0;
    vnDozeAvos := 0;
    DmOra.ConsE504CapAgru.First;
    while not DmOra.ConsE504CapAgru.Eof do
      begin
        vnTotalComissao := vnTotalComissao + DmOra.ConsE504CapAgruvnTotalComissao.AsFloat;
        vnTotalBase := vnTotalBase + DmOra.ConsE504CapAgruTOTAL_BASE.AsFloat;
        vnVlrComissao := vnVlrComissao + DmOra.ConsE504CapAgruTOTAL_COMISSAO.AsFloat;
        vnTotalReajuste := vnTotalReajuste + DmOra.ConsE504CapAgruvnVlrReajuste.AsFloat;

        if edtCodFil.Value = 1 then
           vnDozeAvos := vnDozeAvos + DmOra.ConsE504CapAgruvnDezeAvos.AsFloat;

        DmOra.ConsE504CapAgru.Next;
      end;
    DmOra.ConsE504CapAgru.First;

    edtTotalComissao.Value := vnTotalComissao;
    edtTotalBase.Value := vnTotalBase;
    edtVlrComissao.Value := vnVlrComissao;
    edtTotalAjuste.Value := vnTotalReajuste;
    edtDozeAvos.Value := vnDozeAvos;




end;

procedure TFCalculoAjusteComissoesAgru.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   //MUDA A COR DA LINHA
   {if DmOra.ClientConsE504CapPERCOM.AsFloat <> DmOra.ClientConsE504CapvnComissao_Real.AsFloat then
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

procedure TFCalculoAjusteComissoesAgru.edtCodRepExit(Sender: TObject);
begin
  if edtCodRep.AsInteger > 0 then
     begin
       ConsRep.Close;
       ConsRep.Parameters.ParamByName('codrep').Value := edtCodRep.AsInteger;
       ConsRep.Open;
       if ConsRep.IsEmpty then
          begin
            lblDesRep.Caption := '';
          end
       else
          begin
            lblDesRep.Caption := ConsRepNOMREP.Value+'  -  '+ConsRepAPEREP.Value;
          end;
     end
  else
     begin
       lblDesRep.Caption := '';
     end;
end;

procedure TFCalculoAjusteComissoesAgru.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFCalculoAjusteComissoesAgru.FormShow(Sender: TObject);
begin
  edtDatIni.Date := StartOfTheMonth(Date);
  edtDatFim.Date := EndOfTheMonth(Date);
  DmOra.ConsE504CapAgru.Close;
end;

end.
