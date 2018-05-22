unit UfrmControleFaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, DB, ADODB, DBClient, Provider, StdCtrls,
  Buttons, ExtCtrls, Menus, Mask, DBCtrls;

type
  TfrmControleFaixa = class(TForm)
    pgcControle: TPageControl;
    tsFaixa: TTabSheet;
    lblProduto: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblCarga: TLabel;
    dbgrd1: TDBGrid;
    edtFiltro: TEdit;
    btnAtualizar: TBitBtn;
    edtDesPro: TEdit;
    rgGrupo: TRadioGroup;
    rbTodos: TRadioButton;
    rbEnviado: TRadioButton;
    rbBordado: TRadioButton;
    dbedtTQtdNaoEnv: TDBEdit;
    dbedtTQtdEnv: TDBEdit;
    dbedtTQtdBord: TDBEdit;
    dbedtTQtdTotal: TDBEdit;
    rbNaoEnv: TRadioButton;
    edtPreCar: TEdit;
    ConsE120Ipd: TADOQuery;
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
    ConsE120IpdCODEMP: TIntegerField;
    ConsE120IpdCODFIL: TIntegerField;
    ConsE120IpdSEQIPD: TIntegerField;
    ConsE120IpdUSU_PRECAR: TIntegerField;
    dsClientConsE120Ipd: TDataSource;
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
    ClientConsE120IpdCODEMP: TIntegerField;
    ClientConsE120IpdCODFIL: TIntegerField;
    ClientConsE120IpdSEQIPD: TIntegerField;
    ClientConsE120IpdvnQtdNaoEnv: TFloatField;
    ClientConsE120IpdvnQtdEnv: TFloatField;
    ClientConsE120IpdvnQtdBord: TFloatField;
    ClientConsE120IpdUSU_PRECAR: TIntegerField;
    ClientConsE120IpdTQtdNaoEnv: TAggregateField;
    ClientConsE120IpdTQtdEnv: TAggregateField;
    ClientConsE120IpdTQtdBord: TAggregateField;
    ClientConsE120IpdTQtdTotal: TAggregateField;
    CadE120Ipd: TADOQuery;
    CadE120IpdCODEMP: TIntegerField;
    CadE120IpdCODFIL: TIntegerField;
    CadE120IpdNUMPED: TIntegerField;
    CadE120IpdSEQIPD: TIntegerField;
    CadE120IpdUSU_SITFAI: TStringField;
    CadE120IpdUSU_DATSITFAI: TStringField;
    pm1: TPopupMenu;
    mnuFiltrar: TMenuItem;
    mnuResetar: TMenuItem;
    tsIsopor: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    edtDesProIso: TEdit;
    edtPreCarIso: TEdit;
    rgIso: TRadioGroup;
    btnAtualizarIso: TBitBtn;
    rbNaoVisualizado: TRadioButton;
    rbVisualizado: TRadioButton;
    rbTodosIso: TRadioButton;
    ConsE120IpdIso: TADOQuery;
    ProviderConsE120IpdIso: TDataSetProvider;
    ClientConsE120IpdIso: TClientDataSet;
    ClientConsE120IpdIsoCODEMP: TIntegerField;
    ClientConsE120IpdIsoCODFIL: TIntegerField;
    ClientConsE120IpdIsoSEQIPD: TIntegerField;
    ClientConsE120IpdIsoCODPRO: TStringField;
    ClientConsE120IpdIsoCODDER: TStringField;
    ClientConsE120IpdIsoQTDPED: TFMTBCDField;
    ClientConsE120IpdIsoQTDABE: TFMTBCDField;
    ClientConsE120IpdIsoSITIPD: TIntegerField;
    ClientConsE120IpdIsoUSU_SITFAI: TStringField;
    ClientConsE120IpdIsoUSU_DATSITFAI: TStringField;
    ClientConsE120IpdIsoNUMPED: TIntegerField;
    ClientConsE120IpdIsoCODCLI: TIntegerField;
    ClientConsE120IpdIsoDATEMI: TDateTimeField;
    ClientConsE120IpdIsoUSU_PRECAR: TIntegerField;
    ClientConsE120IpdIsoNOMCLI: TStringField;
    ClientConsE120IpdIsoDESPRO: TStringField;
    ClientConsE120IpdIsoUSU_TIPO: TStringField;
    dbgrdIso: TDBGrid;
    dsClientConsE120IpdIso: TDataSource;
    edtFiltroIso: TEdit;
    CadE120IpdUSU_TIPCMB: TIntegerField;
    ClientConsE120IpdIsoUSU_TIPCMB: TIntegerField;
    ConsE120IpdIsoCODEMP: TIntegerField;
    ConsE120IpdIsoCODFIL: TIntegerField;
    ConsE120IpdIsoSEQIPD: TIntegerField;
    ConsE120IpdIsoCODPRO: TStringField;
    ConsE120IpdIsoCODDER: TStringField;
    ConsE120IpdIsoQTDPED: TFMTBCDField;
    ConsE120IpdIsoQTDABE: TFMTBCDField;
    ConsE120IpdIsoSITIPD: TIntegerField;
    ConsE120IpdIsoUSU_SITFAI: TStringField;
    ConsE120IpdIsoUSU_DATSITFAI: TStringField;
    ConsE120IpdIsoUSU_TIPCMB: TIntegerField;
    ConsE120IpdIsoNUMPED: TIntegerField;
    ConsE120IpdIsoCODCLI: TIntegerField;
    ConsE120IpdIsoDATEMI: TDateTimeField;
    ConsE120IpdIsoUSU_PRECAR: TIntegerField;
    ConsE120IpdIsoNOMCLI: TStringField;
    ConsE120IpdIsoDESPRO: TStringField;
    ConsE120IpdIsoUSU_TIPO: TStringField;
    pm2: TPopupMenu;
    mnuFiltrarIso: TMenuItem;
    mnuResetarIso: TMenuItem;
    mnuAlteraTipoIso: TMenuItem;
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
    procedure edtPreCarChange(Sender: TObject);
    procedure edtPreCarKeyPress(Sender: TObject; var Key: Char);
    procedure edtPreCarIsoKeyPress(Sender: TObject; var Key: Char);
    procedure edtFiltroIsoChange(Sender: TObject);
    procedure rbNaoVisualizadoClick(Sender: TObject);
    procedure rbVisualizadoClick(Sender: TObject);
    procedure rbTodosIsoClick(Sender: TObject);
    procedure btnAtualizarIsoClick(Sender: TObject);
    procedure edtDesProIsoChange(Sender: TObject);
    procedure edtPreCarIsoChange(Sender: TObject);
    procedure dbgrdIsoDblClick(Sender: TObject);
    procedure dbgrdIsoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure mnuFiltrarIsoClick(Sender: TObject);
    procedure mnuResetarIsoClick(Sender: TObject);
    procedure mnuAlteraTipoIsoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControleFaixa: TfrmControleFaixa;

implementation

uses UDmOra, UfrmAlteraTipoIso;

{$R *.dfm}

procedure TfrmControleFaixa.btnAtualizarClick(Sender: TObject);
begin
 edtFiltroChange(Sender);
end;

procedure TfrmControleFaixa.btnAtualizarIsoClick(Sender: TObject);
begin
  edtFiltroIsoChange(Sender);
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

procedure TfrmControleFaixa.dbgrdIsoDblClick(Sender: TObject);
begin
if not ClientConsE120IpdIso.IsEmpty then
     begin
       CadE120Ipd.Close;
       CadE120Ipd.Parameters.ParamByName('CODEMP').Value := ClientConsE120IpdIsoCODEMP.AsInteger;
       CadE120Ipd.Parameters.ParamByName('CODFIL').Value := ClientConsE120IpdIsoCODFIL.AsInteger;
       CadE120Ipd.Parameters.ParamByName('NUMPED').Value := ClientConsE120IpdIsoNUMPED.AsInteger;
       CadE120Ipd.Parameters.ParamByName('SEQIPD').Value := ClientConsE120IpdIsoSEQIPD.AsInteger;
       CadE120Ipd.Open;
       if NOT CadE120Ipd.IsEmpty then
          begin
            CadE120Ipd.Edit;
            if CadE120IpdUSU_TIPCMB.AsInteger = 0 then
               begin
                 CadE120IpdUSU_TIPCMB.AsInteger := 1;
               end
            else
               begin
                 CadE120IpdUSU_TIPCMB.AsInteger := 0;
               end;
            CadE120Ipd.Post;
            ConsE120IpdIso.Close;
            ConsE120IpdIso.Open;
            ClientConsE120IpdIso.Refresh;

          end;
     end;
end;

procedure TfrmControleFaixa.dbgrdIsoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //MUDA A COR DA LINHA
   if ClientConsE120IpdIsoUSU_TIPCMB.AsInteger = 0  then
      begin
        with (Sender as TDBGrid).Canvas do
        begin
        Brush.Color := clWindow;
        FillRect(Rect);
        //Font.Style := [fsbold];
       // Font.Color := clRed;
        end;
        TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
      end
   else
   if ClientConsE120IpdIsoUSU_TIPCMB.AsInteger = 1  then
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

procedure TfrmControleFaixa.edtDesProIsoChange(Sender: TObject);
begin
edtFiltroIsoChange(Sender);
end;

procedure TfrmControleFaixa.edtFiltroChange(Sender: TObject);
begin
  ClientConsE120Ipd.Close;
  ConsE120Ipd.Close;
  ConsE120Ipd.SQL.Clear;
  ConsE120Ipd.SQL.Add(' SELECT E120IPD.CODEMP, E120IPD.CODFIL, E120IPD.SEQIPD,');
  ConsE120Ipd.SQL.Add('       E120IPD.CODPRO, E120IPD.CODDER, E120IPD.QTDPED, E120IPD.QTDABE, E120IPD.SITIPD, E120IPD.USU_SITFAI, E120IPD.USU_DATSITFAI,');
  ConsE120Ipd.SQL.Add('       E120PED.NUMPED, E120PED.CODCLI, E120PED.DATEMI, E120PED.USU_PRECAR,');
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

  if Trim(edtPreCar.Text) <> '' then
     begin
       ConsE120Ipd.SQL.Add(' AND E120PED.USU_PRECAR = '+edtPreCar.Text);
     end;

  ConsE120Ipd.SQL.Add('   ORDER BY E120IPD.DATGER DESC, E120IPD.NUMPED DESC, E120IPD.QTDABE DESC');
  ConsE120Ipd.Open;
  ClientConsE120Ipd.Open
end;

procedure TfrmControleFaixa.edtFiltroIsoChange(Sender: TObject);
begin
  ClientConsE120IpdIso.Close;
  ConsE120IpdIso.Close;
  ConsE120IpdIso.SQL.Clear;
  ConsE120IpdIso.SQL.Add('SELECT E120IPD.CODEMP, E120IPD.CODFIL, E120IPD.SEQIPD,');
  ConsE120IpdIso.SQL.Add('       E120IPD.CODPRO, E120IPD.CODDER, E120IPD.QTDPED, E120IPD.QTDABE, E120IPD.SITIPD, E120IPD.USU_SITFAI, E120IPD.USU_DATSITFAI, E120IPD.USU_TIPCMB,');
  ConsE120IpdIso.SQL.Add('       E120PED.NUMPED, E120PED.CODCLI, E120PED.DATEMI, E120PED.USU_PRECAR,');
  ConsE120IpdIso.SQL.Add('       E085CLI.NOMCLI,');
  ConsE120IpdIso.SQL.Add('       E075PRO.DESPRO,');
  ConsE120IpdIso.SQL.Add('       USU_TE075CTRL.USU_TIPO');
  ConsE120IpdIso.SQL.Add('  FROM E120IPD');
  ConsE120IpdIso.SQL.Add('    INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND');
  ConsE120IpdIso.SQL.Add('                          E120PED.CODFIL = E120IPD.CODFIL AND');
  ConsE120IpdIso.SQL.Add('                          E120PED.NUMPED = E120IPD.NUMPED');
  ConsE120IpdIso.SQL.Add('    INNER JOIN E085CLI ON E085CLI.CODCLI =  E120PED.CODCLI');
  ConsE120IpdIso.SQL.Add('    INNER JOIN E075PRO ON E075PRO.CODEMP = E120IPD.CODEMP AND');
  ConsE120IpdIso.SQL.Add('                          E075PRO.CODPRO = E120IPD.CODPRO');
  ConsE120IpdIso.SQL.Add('    INNER JOIN USU_TE075CTRL ON USU_TE075CTRL.USU_CODEMP = E075PRO.CODEMP AND');
  ConsE120IpdIso.SQL.Add('                                USU_TE075CTRL.USU_CODPRO = E075PRO.CODPRO');
  ConsE120IpdIso.SQL.Add('   WHERE');
  ConsE120IpdIso.SQL.Add('        E120IPD.SITIPD IN (1,2)');

  if Trim(edtDesProIso.Text) <> '' then
     begin
       ConsE120IpdIso.SQL.Add(' AND E075PRO.DESPRO LIKE '+QuotedStr('%'+edtDesProIso.Text+'%'));
     end;

  if rbVisualizado.Checked then
     begin
       ConsE120IpdIso.SQL.Add(' AND E120IPD.USU_TIPCMB = 1'); //ESTOU USANDO ESTE CAMPO SÓ PRA NAO PRECISAR CRIAR OUTRO
     end
  else
  if rbNaoVisualizado.Checked then
     begin
       ConsE120IpdIso.SQL.Add(' AND E120IPD.USU_TIPCMB = 0');
     end;


  if Trim(edtPreCarIso.Text) <> '' then
     begin
       ConsE120IpdIso.SQL.Add(' AND E120PED.USU_PRECAR = '+edtPreCarIso.Text);
     end;

  ConsE120IpdIso.SQL.Add('   ORDER BY E120IPD.DATGER DESC, E120IPD.NUMPED DESC, E120IPD.QTDABE DESC');
  ConsE120IpdIso.Open;
  ClientConsE120IpdIso.Open
end;

procedure TfrmControleFaixa.edtPreCarChange(Sender: TObject);
begin
 edtFiltroChange(Sender);
end;

procedure TfrmControleFaixa.edtPreCarIsoChange(Sender: TObject);
begin
edtFiltroIsoChange(Sender);
end;

procedure TfrmControleFaixa.edtPreCarIsoKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TfrmControleFaixa.edtPreCarKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TfrmControleFaixa.FormShow(Sender: TObject);
begin
  pgcControle.ActivePageIndex := 0;

 edtFiltroChange(Sender);
 edtFiltroIsoChange(Sender);
end;

procedure TfrmControleFaixa.mnuAlteraTipoIsoClick(Sender: TObject);
begin
 if not ClientConsE120IpdIso.IsEmpty then
    begin
      frmAlteraTipoIso := TfrmAlteraTipoIso.Create(Self);
      frmAlteraTipoIso.vaCodPro := ClientConsE120IpdIsoCODPRO.AsString;
      frmAlteraTipoIso.ShowModal;
      FreeAndNil(frmAlteraTipoIso);

      ConsE120IpdIso.Close;
      ConsE120IpdIso.Open;
      ClientConsE120IpdIso.Refresh;
    end;
end;

procedure TfrmControleFaixa.mnuFiltrarClick(Sender: TObject);
begin
 if not ClientConsE120Ipd.IsEmpty then
    begin
      edtDesPro.Text := ClientConsE120IpdDESPRO.AsString;
    end;
end;

procedure TfrmControleFaixa.mnuFiltrarIsoClick(Sender: TObject);
begin
if not ClientConsE120IpdIso.IsEmpty then
    begin
      edtDesProIso.Text := ClientConsE120IpdIsoDESPRO.AsString;
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

procedure TfrmControleFaixa.mnuResetarIsoClick(Sender: TObject);
begin
if not ClientConsE120IpdIso.IsEmpty then
     begin
       CadE120Ipd.Close;
       CadE120Ipd.Parameters.ParamByName('CODEMP').Value := ClientConsE120IpdIsoCODEMP.AsInteger;
       CadE120Ipd.Parameters.ParamByName('CODFIL').Value := ClientConsE120IpdIsoCODFIL.AsInteger;
       CadE120Ipd.Parameters.ParamByName('NUMPED').Value := ClientConsE120IpdIsoNUMPED.AsInteger;
       CadE120Ipd.Parameters.ParamByName('SEQIPD').Value := ClientConsE120IpdIsoSEQIPD.AsInteger;
       CadE120Ipd.Open;
       if NOT CadE120Ipd.IsEmpty then
          begin
            CadE120Ipd.Edit;
            CadE120IpdUSU_TIPCMB.AsInteger := 0;
            CadE120Ipd.Post;

            ConsE120IpdIso.Close;
            ConsE120IpdIso.Open;
            ClientConsE120IpdIso.Refresh;
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

procedure TfrmControleFaixa.rbNaoVisualizadoClick(Sender: TObject);
begin
edtFiltroIsoChange(Sender);
end;

procedure TfrmControleFaixa.rbTodosClick(Sender: TObject);
begin
edtFiltroChange(Sender);
end;

procedure TfrmControleFaixa.rbTodosIsoClick(Sender: TObject);
begin
edtFiltroIsoChange(Sender);
end;

procedure TfrmControleFaixa.rbVisualizadoClick(Sender: TObject);
begin
edtFiltroIsoChange(Sender);
end;

end.
