unit UConsTecido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, RXCtrls, Buttons, Mask, rxToolEdit,
  DBCtrls, DateUtils, ExtCtrls;

type
  TFConsTecido = class(TForm)
    dbg1: TDBGrid;
    dsConsEstoqueTecidos: TDataSource;
    CheckLinhas: TRxCheckListBox;
    edDatIni: TDateEdit;
    edDatFim: TDateEdit;
    cbbSituacao: TComboBox;
    btnMostrar: TBitBtn;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtCodPro: TEdit;
    lbl4: TLabel;
    dbtxtCODPRO: TDBText;
    dbtxtDESPRO: TDBText;
    lbl5: TLabel;
    lbl6: TLabel;
    dbedtQTDEST: TDBEdit;
    dbedtUSU_SALRES: TDBEdit;
    dbedtSALDO_DISP: TDBEdit;
    dbedtQTDMOV: TDBEdit;
    dbedtUSU_SALFIL: TDBEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    dbg2: TDBGrid;
    lbl12: TLabel;
    dsClientConsOCTecido: TDataSource;
    dbedtTOT_ABERTO: TDBEdit;
    lbl13: TLabel;
    dbg3: TDBGrid;
    lbl14: TLabel;
    dsConsFornecedoresTecido: TDataSource;
    pnl1: TPanel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    dbtxtNUMNFC: TDBText;
    dbtxtQTDREC: TDBText;
    dbtxtDATEMI: TDBText;
    dbtxtPREUNI: TDBText;
    dsConsPrimeiraNfTecido: TDataSource;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsTecido: TFConsTecido;

implementation

uses UDm2;

{$R *.dfm}

procedure TFConsTecido.btnMostrarClick(Sender: TObject);
var vaCodFam, vaNumFam, vaSql : string;
    I : Integer;
begin
 if edDatIni.Date = 0 then
    begin
      application.MessageBox('Informe a Data Inicial', 'Alerta', MB_ICONWARNING+MB_OK);
      ActiveControl := edDatIni;
      Abort;
    end
 else
  if edDatFim.Date = 0 then
    begin
      application.MessageBox('Informe a Data Final', 'Alerta', MB_ICONWARNING+MB_OK);
      ActiveControl := edDatFim;
      Abort;
    end;



  vaCodFam := '(';
  for I := 0 to CheckLinhas.Items.Count - 1 do
     begin
       if CheckLinhas.Checked[I] then
          begin
            if CheckLinhas.Items.Strings[I] = '100' then
               vaNumFam := '1001'
            else
            if CheckLinhas.Items.Strings[I] = '200' then
               vaNumFam := '1002'
            else
            if CheckLinhas.Items.Strings[I] = '300' then
               vaNumFam := '1003'
            else
            if CheckLinhas.Items.Strings[I] = '400' then
               vaNumFam := '1004';


            if vaCodFam = '(' then
               begin
                 vaCodFam := vaCodFam + vaNumFam;
               end
            else
              begin
                vaCodFam := vaCodFam + ','+vaNumFam;
              end;
          end;
     end;
    vaCodFam := vaCodFam +')';

    if vaCodFam = '()' then
       begin
         application.MessageBox('Informe a linha de tecido', 'Alerta', MB_ICONWARNING+MB_OK);
         ActiveControl := CheckLinhas;
         Abort;
       end;

    vaSql := '';
    vaSql := vaSql +'SELECT E075PRO.CODEMP,E075PRO.CODPRO,E075PRO.DESPRO,E075PRO.USU_VLRMAX,E075PRO.SITPRO,E075PRO.CODFAM,';
    vaSql := vaSql +' E075DER.PREMED,';
    vaSql := vaSql +' (SELECT SUM(E210MVP.QTDMOV) FROM E210MVP';
    vaSql := vaSql +' WHERE E210MVP.CODPRO = E075PRO.CODPRO AND';
    vaSql := vaSql +' E210MVP.CODDER = '' '' AND';
    vaSql := vaSql +' E210MVP.CODDEP = ''1001'' AND';
    vaSql := vaSql +' E210MVP.DATMOV BETWEEN :DATINI AND :DATFIM AND';
    vaSql := vaSql +' E210MVP.ESTEOS = ''S'') AS QTDMOV,';
    vaSql := vaSql +' USU_TSALTEC.USU_SALRES,USU_TSALTEC.USU_SALFIL,';
    vaSql := vaSql +' E210EST.QTDEST,';
    vaSql := vaSql +' E210EST.QTDEST - (USU_TSALTEC.USU_SALRES + USU_TSALTEC.USU_SALFIL) AS SALDO_DISP';
    vaSql := vaSql +' FROM E075PRO';
    vaSql := vaSql +' INNER JOIN E075DER ON E075DER.CODEMP = E075PRO.CODEMP AND';
    vaSql := vaSql +' E075DER.CODPRO = E075PRO.CODPRO AND';
    vaSql := vaSql +' E075DER.CODDER = '' ''';
    vaSql := vaSql +' INNER JOIN E210EST ON E210EST.CODEMP = E075PRO.CODEMP AND';
    vaSql := vaSql +' E210EST.CODPRO = E075PRO.CODPRO AND';
    vaSql := vaSql +' E210EST.CODDER = '' '' AND';
    vaSql := vaSql +' E210EST.CODDEP = ''1001''';
    vaSql := vaSql +' LEFT JOIN USU_TSALTEC ON USU_TSALTEC.USU_CODPRO = E075PRO.CODPRO';
    vaSql := vaSql +' WHERE E075PRO.CODFAM IN '+ vaCodFam;

    if cbbSituacao.ItemIndex = 0 then
       vaSql := vaSql + ' AND E075PRO.SITPRO = ''A'''
    else
    if cbbSituacao.ItemIndex = 1 then
       vaSql := vaSql + ' AND E075PRO.SITPRO = ''I''';

    if Trim(edtCodPro.Text) <> '' then
       begin
         vaSql := vaSql + ' AND E075PRO.CODPRO = '+edtCodPro.Text;
       end;

    vaSql := vaSql + ' ORDER BY E075PRO.CODPRO';

    Dm2.ConsEstoqueTecidos.Close;
    Dm2.ConsEstoqueTecidos.SQL.Clear;
    Dm2.ConsEstoqueTecidos.SQL.Add(vaSql);
    Dm2.ConsEstoqueTecidos.Parameters.ParamByName('DATINI').Value := edDatIni.Date;
    Dm2.ConsEstoqueTecidos.Parameters.ParamByName('DATFIM').Value := edDatFim.Date;
    Dm2.ConsEstoqueTecidos.Open;

end;

procedure TFConsTecido.FormShow(Sender: TObject);
begin
  edDatIni.Date := (Date - 30);
  edDatFim.Date := Date;

  Dm2.ConsEstoqueTecidos.Close;
  Dm2.ClientConsOCTecido.Close;
  Dm2.ConsFornecedoresTecido.Close;
  Dm2.ConsPrimeiraNfTecido.Close;

end;

end.
