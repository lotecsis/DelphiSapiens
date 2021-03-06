unit UCalculoAjusteComissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, rxCurrEdit, Mask, rxToolEdit, Buttons, DB, DateUtils,
  DBCtrls, ADODB;

type
  TFCalculoAjusteComissoes = class(TForm)
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    edtCodRep: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbg1: TDBGrid;
    btnMostrar: TBitBtn;
    dsClientConsE504Cap: TDataSource;
    Label4: TLabel;
    dbedtvnTotalReaJuste: TDBEdit;
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
    Label5: TLabel;
    edtCodFil: TCurrencyEdit;
    Label10: TLabel;
    edtUF: TEdit;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodRepExit(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCalculoAjusteComissoes: TFCalculoAjusteComissoes;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFCalculoAjusteComissoes.btnImprimirClick(Sender: TObject);
var Dia,Mes,Ano : Word;
    vaMes : string;
    vnTotalComAvos : Double;
begin
   DecodeDate(edtDatIni.Date,Ano,Mes,Dia);

   case Mes of
     1 : vaMes := 'Jan';
     2 : vaMes := 'Fev';
     3 : vaMes := 'Mar';
     4 : vaMes := 'Abr';
     5 : vaMes := 'Mai';
     6 : vaMes := 'Jun';
     7 : vaMes := 'Jul';
     8 : vaMes := 'Ago';
     9 : vaMes := 'Set';
     10 : vaMes := 'Out';
     11 : vaMes := 'Nov';
     12 : vaMes := 'Dez';
   end;

   vaMes := vaMes + '  -  '+IntToStr(Ano);

  if NOT DmOra.ClientConsE504Cap.IsEmpty then
     begin
       DmOra.RvAjusteComissao.SetParam('vaData',vaMes);
       DmOra.RvAjusteComissao.SetParam('vnTotal',FormatFloat(',0.00',DmOra.ClientConsE504CapvnTotalReaJuste.Value));
       DmOra.RvAjusteComissao.SetParam('vaNomRep',IntToStr(ConsRepCODREP.Value));

       if edtCodFil.Value = 1 then
          begin
            vnTotalComAvos := DmOra.ClientConsE504CapvnTotalReaJuste.Value + (DmOra.ClientConsE504CapvnTotalReaJuste.Value / 12);
            DmOra.RvAjusteComissao.SetParam('vnTotalComAvos','Total L�quido: '+FormatFloat(',0.00',vnTotalComAvos));
          end
       else
           begin
             DmOra.RvAjusteComissao.SetParam('vnTotalComAvos','');
           end;

       DmOra.RvAjusteComissao.Execute;

     end;
end;

procedure TFCalculoAjusteComissoes.btnMostrarClick(Sender: TObject);
begin
    DmOra.ClientConsE504Cap.Close;
    DmOra.ConsE504Cap.Close;
    DmOra.ConsE504Cap.SQL.Clear;
    DmOra.ConsE504Cap.SQL.Add('select e504cap.codemp,e504cap.codfil,e504cap.codrep,e504cap.seqcom,e504cap.datbas,e504cap.datlib,');
    DmOra.ConsE504Cap.SQL.Add('       e504cap.codtns,e504cap.vlrcom,e504cap.numtit,e504cap.codtpt,e504cap.codfor,e504cap.seqmov,');
    DmOra.ConsE504Cap.SQL.Add('       e301tcr.codcli,e301tcr.vctpro,e301tcr.vlrabe,');
    DmOra.ConsE504Cap.SQL.Add('       e301mcr.vlrbco,e301mcr.datmov,');
    DmOra.ConsE504Cap.SQL.Add('       e085cli.nomcli,');
    DmOra.ConsE504Cap.SQL.Add('       e140nfv.codcpg,');
    DmOra.ConsE504Cap.SQL.Add('       e028cpg.descpg,e028cpg.przmed,e028cpg.percom,e028cpg.usu_perapl');
    DmOra.ConsE504Cap.SQL.Add('from e504cap');
    DmOra.ConsE504Cap.SQL.Add('inner join e301tcr on e301tcr.codemp = e504cap.codemp and');
    DmOra.ConsE504Cap.SQL.Add('                      e301tcr.codfil = e504cap.codfil and');
    DmOra.ConsE504Cap.SQL.Add('                      e301tcr.numtit = e504cap.numtit and');
    DmOra.ConsE504Cap.SQL.Add('                      e301tcr.codtpt = e504cap.codtpt');
    DmOra.ConsE504Cap.SQL.Add('inner join e301mcr on e301mcr.codemp = e504cap.codemp and');
    DmOra.ConsE504Cap.SQL.Add('                      e301mcr.codfil = e504cap.codfil and');
    DmOra.ConsE504Cap.SQL.Add('                      e301mcr.numtit = e504cap.numtit and');
    DmOra.ConsE504Cap.SQL.Add('                      e301mcr.codtpt = e504cap.codtpt and');
    DmOra.ConsE504Cap.SQL.Add('                      e301mcr.seqmov = e504cap.seqmov');
    DmOra.ConsE504Cap.SQL.Add('inner join e085cli on e085cli.codcli = e301tcr.codcli');
    DmOra.ConsE504Cap.SQL.Add('inner join e140nfv on e140nfv.codemp = e301tcr.codemp and');
    DmOra.ConsE504Cap.SQL.Add('                      e140nfv.codfil = e301tcr.filnfv and');
    DmOra.ConsE504Cap.SQL.Add('                      e140nfv.codsnf = e301tcr.codsnf and');
    DmOra.ConsE504Cap.SQL.Add('                      e140nfv.numnfv = e301tcr.numnfv');
    DmOra.ConsE504Cap.SQL.Add('inner join e028cpg on e028cpg.codemp = e140nfv.codemp and');
    DmOra.ConsE504Cap.SQL.Add('                      e028cpg.codcpg = e140nfv.codcpg');
    DmOra.ConsE504Cap.SQL.Add('where datbas between :DATINI and :DATFIM and');
    DmOra.ConsE504Cap.SQL.Add('       not (e504cap.codtns in (''90590'',''90599'',''90581'',''90591'')) and');
    DmOra.ConsE504Cap.SQL.Add('      e140nfv.sitnfv = ''2'' and');
    DmOra.ConsE504Cap.SQL.Add('      e504cap.codrep = :CODREP and');
    DmOra.ConsE504Cap.SQL.Add('      e504cap.vlrcom > 0');

    if Trim(edtUF.Text) <> '' then
       begin
         DmOra.ConsE504Cap.SQL.Add('      and e085cli.sigufs = '+QuotedStr(edtUF.Text));
       end;

    //temporario para excluir a excluir a comissao depois apaga
    //DmOra.ConsE504Cap.SQL.Add('      and e504cap.numtit not in(''27016=01'',''27016=02'',''27016=03'',''27016=04'',''27016=05'')');
    DmOra.ConsE504Cap.SQL.Add('      and e504cap.numtit not in(''27077=01'',''27077=02'',''27077=03'',''27077=04'',''27077=05'')');
    //DmOra.ConsE504Cap.SQL.Add('      and e504cap.numtit not in(''11077-02'',''11077-03'',''11077-04'',''11078-01'',''11078-02'',''11078-03'',''11078-04'',''11078-05'',''11078-06'')');
    DmOra.ConsE504Cap.SQL.Add('      and e504cap.numtit not in(''11088-01'',''11088-02'',''11088-03'',''11088-04'',''11088-05'',''11088-06'')');
    DmOra.ConsE504Cap.SQL.Add('      and e504cap.numtit not in(''11182-01'',''11182-02'',''11182-03'',''11182-04'',''11182-05'',''11182-06'')');
    DmOra.ConsE504Cap.SQL.Add('      and e504cap.numtit not in(''27578=01'',''27578=02'',''27578=03'',''27578=04'',''27578=05'')');

    DmOra.ConsE504Cap.SQL.Add('      and e504cap.numtit not in(''11451-01'',''11451-02'',''11451-03'',''11451-04'',''11451-05'')');
    DmOra.ConsE504Cap.SQL.Add('      and e504cap.numtit not in(''11466-01'',''11466-02'',''11466-03'',''11466-04'',''11466-05'',''11466-06'')');
    DmOra.ConsE504Cap.SQL.Add('      and e504cap.numtit not in(''11495-01'',''11495-02'',''11495-03'',''11495-04'',''11495-05'')');
    DmOra.ConsE504Cap.SQL.Add('      and e504cap.numtit not in(''11520-01'',''11520-02'',''11520-03'',''11520-04'',''11520-05'',''11520-06'')');

    DmOra.ConsE504Cap.SQL.Add('      and e504cap.numtit not in(''12020-01'',''12020-02'',''12020-03'',''12020-04'',''12020-05'',''12020-06'')');
    //DmOra.ConsE504Cap.SQL.Add('      and e504cap.numtit not in('''','''','''','''','''','''')');
    {DmOra.ConsE504Cap.SQL.Add('      and e504cap.numtit not in('''','''','''','''','''','''')');
    DmOra.ConsE504Cap.SQL.Add('      and e504cap.numtit not in('''','''','''','''','''','''')');}

    if edtCodFil.Value > 0 then
       begin
          DmOra.ConsE504Cap.SQL.Add(' and e504cap.codfil = :CODFIL');
          DmOra.ConsE504Cap.Parameters.ParamByName('CODFIL').Value := edtCodFil.AsInteger;
       end;

    DmOra.ConsE504Cap.SQL.Add('order by e504cap.codfil, e504cap.numtit');
    DmOra.ConsE504Cap.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
    DmOra.ConsE504Cap.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
    DmOra.ConsE504Cap.Parameters.ParamByName('CODREP').Value := edtCodRep.AsInteger;
    DmOra.ConsE504Cap.Open;
    DmOra.ClientConsE504Cap.Open;

    DmOra.ClientConsE504Cap.First;
    while not DmOra.ClientConsE504Cap.Eof do
      begin
        if DmOra.ClientConsE504CapvnVlrReajuste.AsFloat = 0 then
           begin
             DmOra.ClientConsE504Cap.Delete;
           end
        else
           begin
             DmOra.ClientConsE504Cap.Next;
           end;
      end;

end;

procedure TFCalculoAjusteComissoes.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   //MUDA A COR DA LINHA
   if DmOra.ClientConsE504CapPERCOM.AsFloat <> DmOra.ClientConsE504CapvnComissao_Real.AsFloat then
      with (Sender as TDBGrid).Canvas do
      begin
         //Brush.Color := clSilver; //clSkyBlue;
        FillRect(Rect);
        //Font.Style := [fsbold];
        Font.Color := clRed;
        if Column.FieldName <> 'NOMCLI' then
           Column.Field.Alignment := taCenter;
      end;
      TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TFCalculoAjusteComissoes.edtCodRepExit(Sender: TObject);
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

procedure TFCalculoAjusteComissoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFCalculoAjusteComissoes.FormShow(Sender: TObject);
begin
  edtDatIni.Date := StartOfTheMonth(Date);
  edtDatFim.Date := EndOfTheMonth(Date);
end;

end.
