unit UfrmControleFaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, DB, ADODB, DBClient, Provider, StdCtrls,
  Buttons, ExtCtrls, Menus, Mask, DBCtrls;

type
  TfrmControleFaixa = class(TForm)
    dbgrd1: TDBGrid;
    ConsE120Ipd: TADOQuery;
    dsClientConsE120Ipd: TDataSource;
    ConsE120IpdCODPRO: TStringField;
    ConsE120IpdCODDER: TStringField;
    ConsE120IpdQTDPED: TFMTBCDField;
    ConsE120IpdQTDABE: TFMTBCDField;
    ConsE120IpdSITIPD: TIntegerField;
    ConsE120IpdUSU_SITFAI: TStringField;
    ConsE120IpdUSU_DATSITFAI: TStringField;
    ConsE120IpdNUMPED: TIntegerField;
    ConsE120IpdCODCLI: TIntegerField;
    ConsE120IpdDATEMI: TDateTimeField;
    ConsE120IpdNOMCLI: TStringField;
    ConsE120IpdDESPRO: TStringField;
    ProviderConsE120Ipd: TDataSetProvider;
    ClientConsE120Ipd: TClientDataSet;
    ClientConsE120IpdCODPRO: TStringField;
    ClientConsE120IpdCODDER: TStringField;
    ClientConsE120IpdQTDPED: TFMTBCDField;
    ClientConsE120IpdQTDABE: TFMTBCDField;
    ClientConsE120IpdSITIPD: TIntegerField;
    ClientConsE120IpdUSU_SITFAI: TStringField;
    ClientConsE120IpdUSU_DATSITFAI: TStringField;
    ClientConsE120IpdNUMPED: TIntegerField;
    ClientConsE120IpdCODCLI: TIntegerField;
    ClientConsE120IpdDATEMI: TDateTimeField;
    ClientConsE120IpdNOMCLI: TStringField;
    ClientConsE120IpdDESPRO: TStringField;
    ClientConsE120IpdvaSitFai: TStringField;
    CadE120Ipd: TADOQuery;
    CadE120IpdCODEMP: TIntegerField;
    CadE120IpdCODFIL: TIntegerField;
    CadE120IpdNUMPED: TIntegerField;
    CadE120IpdSEQIPD: TIntegerField;
    CadE120IpdUSU_SITFAI: TStringField;
    CadE120IpdUSU_DATSITFAI: TStringField;
    ConsE120IpdCODEMP: TIntegerField;
    ConsE120IpdCODFIL: TIntegerField;
    ConsE120IpdSEQIPD: TIntegerField;
    ClientConsE120IpdCODEMP: TIntegerField;
    ClientConsE120IpdCODFIL: TIntegerField;
    ClientConsE120IpdSEQIPD: TIntegerField;
    edtFiltro: TEdit;
    btnAtualizar: TBitBtn;
    edtDesPro: TEdit;
    lblProduto: TLabel;
    rgGrupo: TRadioGroup;
    rbTodos: TRadioButton;
    rbEnviado: TRadioButton;
    rbBordado: TRadioButton;
    pm1: TPopupMenu;
    mnuFiltrar: TMenuItem;
    mnuResetar: TMenuItem;
    ClientConsE120IpdvnQtdNaoEnv: TFloatField;
    ClientConsE120IpdvnQtdEnv: TFloatField;
    ClientConsE120IpdvnQtdBord: TFloatField;
    ClientConsE120IpdTQtdNaoEnv: TAggregateField;
    ClientConsE120IpdTQtdEnv: TAggregateField;
    ClientConsE120IpdTQtdBord: TAggregateField;
    ClientConsE120IpdTQtdTotal: TAggregateField;
    dbedtTQtdNaoEnv: TDBEdit;
    dbedtTQtdEnv: TDBEdit;
    dbedtTQtdBord: TDBEdit;
    dbedtTQtdTotal: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    rbNaoEnv: TRadioButton;
    procedure ClientConsE120IpdCalcFields(DataSet: TDataSet);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtFiltroChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure edtDesProChange(Sender: TObject);
    procedure rbTodosClick(Sender: TObject);
    procedure rbEnviadoClick(Sender: TObject);
    procedure rbBordadoClick(Sender: TObject);
    procedure mnuFiltrarClick(Sender: TObject);
    procedure mnuResetarClick(Sender: TObject);
    procedure rbNaoEnvClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControleFaixa: TfrmControleFaixa;

implementation

uses UDmOra;

{$R *.dfm}

procedure TfrmControleFaixa.btnAtualizarClick(Sender: TObject);
begin
 edtFiltroChange(Sender);
end;

procedure TfrmControleFaixa.ClientConsE120IpdCalcFields(DataSet: TDataSet);
begin
  ClientConsE120IpdvaSitFai.AsString := ClientConsE120IpdUSU_SITFAI.AsString+ '   '+ClientConsE120IpdUSU_DATSITFAI.AsString;

  if ClientConsE120IpdUSU_SITFAI.AsString = ' ' then
     begin
       ClientConsE120IpdvnQtdNaoEnv.AsFloat := ClientConsE120IpdQTDABE.AsInteger;
       ClientConsE120IpdvnQtdEnv.AsFloat := 0;
       ClientConsE120IpdvnQtdBord.AsFloat := 0;
     end
  else
  if ClientConsE120IpdUSU_SITFAI.AsString = 'ENVIADO' then
     begin
       ClientConsE120IpdvnQtdNaoEnv.AsFloat := 0;
       ClientConsE120IpdvnQtdEnv.AsFloat := ClientConsE120IpdQTDABE.AsInteger;
       ClientConsE120IpdvnQtdBord.AsFloat := 0;
     end
  else
  if ClientConsE120IpdUSU_SITFAI.AsString = 'BORDADO' then
     begin
       ClientConsE120IpdvnQtdNaoEnv.AsFloat := 0;
       ClientConsE120IpdvnQtdEnv.AsFloat := 0;
       ClientConsE120IpdvnQtdBord.AsFloat := ClientConsE120IpdQTDABE.AsInteger;
     end;
end;

procedure TfrmControleFaixa.dbgrd1DblClick(Sender: TObject);
begin
  if not ClientConsE120Ipd.IsEmpty then
     begin
       CadE120Ipd.Close;
       CadE120Ipd.Parameters.ParamByName('CODEMP').Value := ClientConsE120IpdCODEMP.AsInteger;
       CadE120Ipd.Parameters.ParamByName('CODFIL').Value := ClientConsE120IpdCODFIL.AsInteger;
       CadE120Ipd.Parameters.ParamByName('NUMPED').Value := ClientConsE120IpdNUMPED.AsInteger;
       CadE120Ipd.Parameters.ParamByName('SEQIPD').Value := ClientConsE120IpdSEQIPD.AsInteger;
       CadE120Ipd.Open;
       if NOT CadE120Ipd.IsEmpty then
          begin
            CadE120Ipd.Edit;
            if CadE120IpdUSU_SITFAI.AsString = ' ' then
               begin
                 CadE120IpdUSU_SITFAI.AsString := 'ENVIADO';
                 CadE120IpdUSU_DATSITFAI.AsString := DateToStr(Date)+'  '+TimeToStr(Time);
               end
            else
            if CadE120IpdUSU_SITFAI.AsString = 'ENVIADO' then
               begin
                 CadE120IpdUSU_SITFAI.AsString := 'BORDADO';
                 CadE120IpdUSU_DATSITFAI.AsString := DateToStr(Date)+'  '+TimeToStr(Time);
               end;
            CadE120Ipd.Post;
            ConsE120Ipd.Close;
            ConsE120Ipd.Open;
            ClientConsE120Ipd.Refresh;

          end;
     end;
end;

procedure TfrmControleFaixa.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   //MUDA A COR DA LINHA
   if ClientConsE120IpdUSU_SITFAI.AsString = 'ENVIADO'  then
      begin
        with (Sender as TDBGrid).Canvas do
        begin
        Brush.Color := $00B7FFFF;
        FillRect(Rect);
        //Font.Style := [fsbold];
       // Font.Color := clRed;
        end;
        TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
      end
   else
   if ClientConsE120IpdUSU_SITFAI.AsString = 'BORDADO'  then
      begin
        with (Sender as TDBGrid).Canvas do
        begin
        Brush.Color := $00B9FFB9;
        FillRect(Rect);
       // Font.Style := [fsbold];
       // Font.Color := clGreen;
        end;
        TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
      end;
end;

procedure TfrmControleFaixa.edtDesProChange(Sender: TObject);
begin
 edtFiltroChange(Sender);
end;

procedure TfrmControleFaixa.edtFiltroChange(Sender: TObject);
begin
  ClientConsE120Ipd.Close;
  ConsE120Ipd.Close;
  ConsE120Ipd.SQL.Clear;
  ConsE120Ipd.SQL.Add(' SELECT E120IPD.CODEMP, E120IPD.CODFIL, E120IPD.SEQIPD,');
  ConsE120Ipd.SQL.Add('       E120IPD.CODPRO, E120IPD.CODDER, E120IPD.QTDPED, E120IPD.QTDABE, E120IPD.SITIPD, E120IPD.USU_SITFAI, E120IPD.USU_DATSITFAI,');
  ConsE120Ipd.SQL.Add('       E120PED.NUMPED, E120PED.CODCLI, E120PED.DATEMI,');
  ConsE120Ipd.SQL.Add('       E085CLI.NOMCLI,');
  ConsE120Ipd.SQL.Add('       E075PRO.DESPRO');
  ConsE120Ipd.SQL.Add('  FROM E120IPD');
  ConsE120Ipd.SQL.Add('    INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND');
  ConsE120Ipd.SQL.Add('                          E120PED.CODFIL = E120IPD.CODFIL AND');
  ConsE120Ipd.SQL.Add('                          E120PED.NUMPED = E120IPD.NUMPED');
  ConsE120Ipd.SQL.Add('    INNER JOIN E085CLI ON E085CLI.CODCLI =  E120PED.CODCLI');
  ConsE120Ipd.SQL.Add('    INNER JOIN E075PRO ON E075PRO.CODEMP = E120IPD.CODEMP AND');
  ConsE120Ipd.SQL.Add('                          E075PRO.CODPRO = E120IPD.CODPRO');
  ConsE120Ipd.SQL.Add('   WHERE');
  ConsE120Ipd.SQL.Add('     E120IPD.SITIPD IN (1,2)');
  ConsE120Ipd.SQL.Add(' AND E075PRO.USU_INFAIBOR = ''SIM''');

  if Trim(edtDesPro.Text) <> '' then
     begin
       ConsE120Ipd.SQL.Add(' AND E075PRO.DESPRO LIKE '+QuotedStr('%'+edtDesPro.Text+'%'));
     end;

  if rbEnviado.Checked then
     begin
       ConsE120Ipd.SQL.Add(' AND E120IPD.USU_SITFAI = ''ENVIADO''');
     end
  else
  if rbBordado.Checked then
     begin
       ConsE120Ipd.SQL.Add(' AND E120IPD.USU_SITFAI = ''BORDADO''');
     end
  else
  if rbNaoEnv.Checked then
     begin
       ConsE120Ipd.SQL.Add(' AND E120IPD.USU_SITFAI = '' ''');
     end;

  ConsE120Ipd.SQL.Add('   ORDER BY E120IPD.DATGER DESC, E120IPD.NUMPED DESC, E120IPD.QTDABE DESC');
  ConsE120Ipd.Open;
  ClientConsE120Ipd.Open
end;

procedure TfrmControleFaixa.FormShow(Sender: TObject);
begin
 edtFiltroChange(Sender);
end;

procedure TfrmControleFaixa.mnuFiltrarClick(Sender: TObject);
begin
 if not ClientConsE120Ipd.IsEmpty then
    begin
      edtDesPro.Text := ClientConsE120IpdDESPRO.AsString;
    end;
end;

procedure TfrmControleFaixa.mnuResetarClick(Sender: TObject);
begin
if not ClientConsE120Ipd.IsEmpty then
     begin
       CadE120Ipd.Close;
       CadE120Ipd.Parameters.ParamByName('CODEMP').Value := ClientConsE120IpdCODEMP.AsInteger;
       CadE120Ipd.Parameters.ParamByName('CODFIL').Value := ClientConsE120IpdCODFIL.AsInteger;
       CadE120Ipd.Parameters.ParamByName('NUMPED').Value := ClientConsE120IpdNUMPED.AsInteger;
       CadE120Ipd.Parameters.ParamByName('SEQIPD').Value := ClientConsE120IpdSEQIPD.AsInteger;
       CadE120Ipd.Open;
       if NOT CadE120Ipd.IsEmpty then
          begin
            CadE120Ipd.Edit;
            CadE120IpdUSU_SITFAI.AsString := ' ';
            CadE120IpdUSU_DATSITFAI.AsString := ' ';
            CadE120Ipd.Post;

            ConsE120Ipd.Close;
            ConsE120Ipd.Open;
            ClientConsE120Ipd.Refresh;
          end;
     end;
end;

procedure TfrmControleFaixa.rbBordadoClick(Sender: TObject);
begin
edtFiltroChange(Sender);
end;

procedure TfrmControleFaixa.rbEnviadoClick(Sender: TObject);
begin
edtFiltroChange(Sender);
end;

procedure TfrmControleFaixa.rbNaoEnvClick(Sender: TObject);
begin
 edtFiltroChange(Sender);
end;

procedure TfrmControleFaixa.rbTodosClick(Sender: TObject);
begin
edtFiltroChange(Sender);
end;

end.
