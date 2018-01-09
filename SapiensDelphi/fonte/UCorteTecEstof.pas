unit UCorteTecEstof;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, DB, Buttons, ADODB,
  DBCtrls, ImgList, Menus, AppEvnts;

type
  TFCorteTecEstof = class(TForm)
    PaginaControle: TPageControl;
    tbEmCorte: TTabSheet;
    tbResumo: TTabSheet;
    pnl1: TPanel;
    dbgCargasLiberadas: TDBGrid;
    dbgCargasEmProducao: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    dbgProdutosEmCorte: TDBGrid;
    dbgCoresEmCorte: TDBGrid;
    edtDesPro: TEdit;
    dsConsUsu_TPreCarLib: TDataSource;
    btnTransferir: TSpeedButton;
    dsConsUsu_TCarPro: TDataSource;
    dsConsUsu_TProCar: TDataSource;
    dsConsUsu_tCorCar: TDataSource;
    ConsUsu_TCorCar: TADOQuery;
    ConsUsu_TCorCarUSU_NUMANE: TIntegerField;
    ConsUsu_TCorCarUSU_CODPRO: TStringField;
    ConsUsu_TCorCarUSU_CODDER: TStringField;
    ConsUsu_TCorCarUSU_CODCOR1: TStringField;
    ConsUsu_TCorCarUSU_QTDPED: TIntegerField;
    ConsUsu_TCorCarUSU_QTDPRO: TIntegerField;
    ConsUsu_TCorCarUSU_QTDABE: TIntegerField;
    ConsUsu_TCorCarUSU_SALABE1: TBCDField;
    ConsUsu_TCorCarUSU_CODCOR2: TStringField;
    ConsUsu_TCorCarUSU_SALABE2: TBCDField;
    ConsUsu_TCorCarUSU_TIPCOM: TIntegerField;
    ConsUsu_TCorCarUSU_CORCOR: TStringField;
    ConsUsu_TCorCarUSU_SELITE: TStringField;
    ConsUsu_TCorCarUSU_QTDCOR1: TBCDField;
    ConsUsu_TCorCarUSU_QTDCOR2: TBCDField;
    ConsUsu_TProCar: TADOQuery;
    ConsUsu_TProCarUSU_NUMANE: TIntegerField;
    ConsUsu_TProCarUSU_CODPRO: TStringField;
    ConsUsu_TProCarUSU_CODDER: TStringField;
    ConsUsu_TProCarUSU_QTDPED: TIntegerField;
    ConsUsu_TProCarUSU_QTDPRO: TIntegerField;
    ConsUsu_TProCarUSU_QTDABE: TIntegerField;
    ConsUsu_TProCarUSU_PROCOR: TStringField;
    ConsUsu_TProCarDESPRO: TStringField;
    ConsUsu_TCarPro: TADOQuery;
    ConsUsu_TCarProUSU_NUMANE: TIntegerField;
    ConsUsu_TCarProUSU_DATIMP: TDateTimeField;
    ConsUsu_TCarProUSU_HORIMP: TIntegerField;
    ConsUsu_TCarProUSU_USUIMP: TIntegerField;
    ConsUsu_TCarProUSU_CARPRO: TStringField;
    ConsUsu_TCarProNOMUSU: TStringField;
    rbTodos: TRadioButton;
    rbFinalizado: TRadioButton;
    rbEmAberto: TRadioButton;
    pnl2: TPanel;
    dbgCargasProdResumo: TDBGrid;
    edtDesProResumo: TEdit;
    dbg2: TDBGrid;
    dbg3: TDBGrid;
    lbl4: TLabel;
    ConsUsu_TCarProResumo: TADOQuery;
    dsConsUsu_TCarProResumo: TDataSource;
    ConsUsu_TCarProResumoUSU_NUMANE: TIntegerField;
    ConsUsu_TCarProResumoUSU_DATIMP: TDateTimeField;
    ConsUsu_TCarProResumoUSU_HORIMP: TIntegerField;
    ConsUsu_TCarProResumoUSU_USUIMP: TIntegerField;
    ConsUsu_TCarProResumoUSU_CARPRO: TStringField;
    ConsUsu_TCarProResumoUSU_ITESEL: TStringField;
    ConsUsu_TCarProResumoNOMUSU: TStringField;
    ConsUsu_TCarProResumoITESEL: TStringField;
    ConsUsu_TProCarResumo: TADOQuery;
    dsConsUsu_TProCarResumo: TDataSource;
    ConsUsu_TCorCarResumo: TADOQuery;
    ConsUsu_TCorCarResumoUSU_CODCOR1: TStringField;
    ConsUsu_TCorCarResumoUSU_CODCOR2: TStringField;
    ConsUsu_TCorCarResumoQTDPED: TFMTBCDField;
    ConsUsu_TCorCarResumoQTDPRO: TFMTBCDField;
    ConsUsu_TCorCarResumoQTDABE: TFMTBCDField;
    dsConsUsu_TCorCarResumo: TDataSource;
    ConsUsu_TProCarResumoUSU_CODPRO: TStringField;
    ConsUsu_TProCarResumoUSU_CODDER: TStringField;
    ConsUsu_TProCarResumoDESPRO: TStringField;
    ConsUsu_TProCarResumoQTDPED: TFMTBCDField;
    ConsUsu_TProCarResumoQTDPRO: TFMTBCDField;
    ConsUsu_TProCarResumoQTDABE: TFMTBCDField;
    btnMarcaCargasResumo: TSpeedButton;
    btnDesmarcaCargasResumo: TSpeedButton;
    dsReserva: TDataSource;
    ConsUsu_TCarProUSU_ITESEL: TStringField;
    btnBaixaProduto: TBitBtn;
    btnEstornoLancamento: TBitBtn;
    ConsUsu_TCarProUSU_OBSCAR: TStringField;
    dsCadUsu_TCarProObs: TDataSource;
    dbgObservacoes: TDBGrid;
    ImageList1: TImageList;
    btnAlteraProdutos: TBitBtn;
    pmCarga: TPopupMenu;
    mnuAddProd: TMenuItem;
    pmCores: TPopupMenu;
    mnuAddCor: TMenuItem;
    mnuExcluir: TMenuItem;
    btnInverterCores: TBitBtn;
    ApplicationEvents1: TApplicationEvents;
    ConsUsu_TCorCarLISFLO1: TStringField;
    ConsUsu_TCorCarLISFLO2: TStringField;
    btnValidar: TBitBtn;
    ValidaProdutos: TADOQuery;
    ValidaProdutosUSU_PRECAR: TIntegerField;
    ValidaProdutosUSU_SEQITE: TIntegerField;
    ValidaProdutosUSU_FILPED: TIntegerField;
    ValidaProdutosUSU_NUMPED: TIntegerField;
    ValidaProdutosUSU_CODUSU: TIntegerField;
    ValidaProdutosUSU_DATGER: TDateTimeField;
    ValidaProdutosUSU_HORGER: TIntegerField;
    ValidaProdutosUSU_CODREP: TIntegerField;
    ValidaProdutosQTD_ESTOF: TFMTBCDField;
    procedure FormShow(Sender: TObject);
    procedure btnTransferirClick(Sender: TObject);
    procedure tbEmCorteShow(Sender: TObject);
    procedure ConsUsu_TProCarAfterScroll(DataSet: TDataSet);
    procedure ConsUsu_TCarProAfterScroll(DataSet: TDataSet);
    procedure edtDesProChange(Sender: TObject);
    procedure dbgProdutosEmCorteDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure rbEmAbertoClick(Sender: TObject);
    procedure rbFinalizadoClick(Sender: TObject);
    procedure rbTodosClick(Sender: TObject);
    procedure dbgCargasProdResumoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tbResumoShow(Sender: TObject);
    procedure dbgCargasProdResumoCellClick(Column: TColumn);
    procedure ConsUsu_TCarProResumoAfterPost(DataSet: TDataSet);
    procedure edtDesProResumoChange(Sender: TObject);
    procedure ConsUsu_TProCarResumoAfterScroll(DataSet: TDataSet);
    procedure btnMarcaCargasResumoClick(Sender: TObject);
    procedure btnDesmarcaCargasResumoClick(Sender: TObject);
    procedure dbgCargasEmProducaoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnBaixaProdutoClick(Sender: TObject);
    procedure dbgProdutosEmCorteDblClick(Sender: TObject);
    procedure btnEstornoLancamentoClick(Sender: TObject);
    procedure dbgObservacoesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgObservacoesCellClick(Column: TColumn);
    procedure btnAlteraProdutosClick(Sender: TObject);
    procedure mnuAddProdClick(Sender: TObject);
    procedure mnuAddCorClick(Sender: TObject);
    procedure mnuExcluirClick(Sender: TObject);
    procedure btnInverterCoresClick(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure btnValidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCorteTecEstof: TFCorteTecEstof;

implementation

uses UDm1, UPrincipal, UDmOra, UBaixaCorteTecEstof, UAltProdCargaCorteEstof,
  UDm2;

{$R *.dfm}

procedure TFCorteTecEstof.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
   { if (Trim(ConsUsu_TCorCarUSU_CODCOR1.Value) <> '') and (Trim(ConsUsu_TCorCarUSU_CODCOR2.Value) <> '') then
        begin
           btnTransferir.Enabled := true;
        end
    else
        begin
           btnTransferir.Enabled := false;
        end; }

end;

procedure TFCorteTecEstof.btnAlteraProdutosClick(Sender: TObject);
begin

  FAltProdCargaCorteEstof := TFAltProdCargaCorteEstof.Create(Self);

  Dm2.ClientAltCargaCorteEstof.Open;

  FAltProdCargaCorteEstof.ShowModal;
  FreeAndNil(FAltProdCargaCorteEstof);

  //atualiza a consulta
  ConsUsu_TProCar.Close;
  ConsUsu_TProCar.SQL.Clear;
  ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
  ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
  ConsUsu_TProCar.SQL.Add('where');
  ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane');
  //ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
  if Trim(edtDesPro.Text) <> '' then
  ConsUsu_TProCar.SQL.Add('and e075pro.despro LIKE'+QuotedStr('%'+edtDesPro.Text+'%'));

  if rbEmAberto.Checked then
     ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe > 0')
  else
  if rbFinalizado.Checked then
     ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe = 0')
  else
  if rbTodos.Checked then
     ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe >= 0');

  ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
  ConsUsu_TProCar.Parameters.ParamByName('numane').Value := ConsUsu_TCarProUSU_NUMANE.Value;
  ConsUsu_TProCar.Open;
  if ConsUsu_TProCar.IsEmpty then
     ConsUsu_TCorCar.Close;

  ConsUsu_TCarPro.Close;
  ConsUsu_TCarPro.Open;

end;

procedure TFCorteTecEstof.btnBaixaProdutoClick(Sender: TObject);
VAR vaMensagem,vaSenha : string;
begin
 if not (ConsUsu_TProCar.IsEmpty) and (ConsUsu_TProCarUSU_QTDABE.Value > 0) then
    begin
    ConsUsu_TCorCar.First;
    while not ConsUsu_TCorCar.Eof do
          begin
            if (Trim(ConsUsu_TCorCarUSU_CODCOR1.Value) <> '') and (Trim(ConsUsu_TCorCarUSU_CODCOR2.Value) <> '') then
                begin
                  if ConsUsu_TCorCarLISFLO1.Value = 'F' then
                     begin
                        vaMensagem := 'A cor:  '+ConsUsu_TCorCarUSU_CODCOR1.Value+'  é uma cor florida e neste caso está como cor 01(a parte lisa), tem certeza que está correto o composê?';
                        if Application.MessageBox(PChar(vaMensagem),'Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
                           begin
                             vaSenha := InputBox('Confirmação','Digite a senha para liberação deste tipo de composê!','');
                             vaSenha := UpperCase(vaSenha);
                             if vaSenha <> 'LIDERLAR' then
                                begin
                                  Application.MessageBox('Senha incorreta','Aviso',MB_ICONQUESTION+MB_OK);
                                  Abort;
                                end;
                           end
                        else
                           begin
                             Abort;
                           end;
                     end;
                end;
            ConsUsu_TCorCar.Next;
          end;



        //limpa o client
        Dm1.ClientBaixaCorteTecEstof.Open;
        Dm1.ClientBaixaCorteTecEstof.First;
        while not Dm1.ClientBaixaCorteTecEstof.Eof do
          begin
            Dm1.ClientBaixaCorteTecEstof.Delete;
          end;
        Dm1.ClientBaixaCorteTecEstof.Open;


       ConsUsu_TCorCar.First;
       while not ConsUsu_TCorCar.Eof do
          begin
                  Dm1.ClientBaixaCorteTecEstof.Insert;
                  Dm1.ClientBaixaCorteTecEstofNUMANE.Value := ConsUsu_TCorCarUSU_NUMANE.Value;
                  Dm1.ClientBaixaCorteTecEstofCODPRO.Value := ConsUsu_TCorCarUSU_CODPRO.Value;
                  Dm1.ClientBaixaCorteTecEstofCODDER.Value := ConsUsu_TCorCarUSU_CODDER.Value;
                  Dm1.ClientBaixaCorteTecEstofCODCOR1.Value := ConsUsu_TCorCarUSU_CODCOR1.Value;
                  Dm1.ClientBaixaCorteTecEstofCODCOR2.Value := ConsUsu_TCorCarUSU_CODCOR2.Value;
                  Dm1.ClientBaixaCorteTecEstofQTDPED.Value := ConsUsu_TCorCarUSU_QTDPED.Value;
                  Dm1.ClientBaixaCorteTecEstofQTDPRO.Value := ConsUsu_TCorCarUSU_QTDPRO.Value;
                  Dm1.ClientBaixaCorteTecEstofQTDABE.Value := ConsUsu_TCorCarUSU_QTDABE.Value;
                  Dm1.ClientBaixaCorteTecEstofQTDMOV.Value := ConsUsu_TCorCarUSU_QTDABE.Value;
                  Dm1.ClientBaixaCorteTecEstofITESEL.Value := 'N';
                  Dm1.ClientBaixaCorteTecEstof.Post;

            ConsUsu_TCorCar.Next;
          end;
          Dm1.ClientBaixaCorteTecEstof.IndexFieldNames := 'CODCOR1';
          Dm1.ClientBaixaCorteTecEstof.First;

          FBaixaCorteTecEstof := TFBaixaCorteTecEstof.Create(Self);
          FBaixaCorteTecEstof.vaComando := 'BAIXA';
          FBaixaCorteTecEstof.edtNumAne.Text := IntToStr(ConsUsu_TProCarUSU_NUMANE.AsInteger);
          FBaixaCorteTecEstof.edtProduto.Text := ConsUsu_TProCarUSU_CODPRO.AsString + '  -  '+ConsUsu_TProCarDESPRO.AsString + '  -  '+ConsUsu_TProCarUSU_CODDER.AsString;
          FBaixaCorteTecEstof.edtQtdPed.Text := IntToStr(ConsUsu_TProCarUSU_QTDPED.AsInteger);
          FBaixaCorteTecEstof.edtQtdPro.Text := IntToStr(ConsUsu_TProCarUSU_QTDPRO.AsInteger);
          FBaixaCorteTecEstof.edtQtdAbe.Text := IntToStr(ConsUsu_TProCarUSU_QTDABE.AsInteger);

          FBaixaCorteTecEstof.ShowModal;
          FreeAndNil(FBaixaCorteTecEstof);

          //atualiza a consulta
          ConsUsu_TProCar.Close;
          ConsUsu_TProCar.SQL.Clear;
          ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
          ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
          ConsUsu_TProCar.SQL.Add('where');
          ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane');
          //ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
          if Trim(edtDesPro.Text) <> '' then
          ConsUsu_TProCar.SQL.Add('and e075pro.despro LIKE'+QuotedStr('%'+edtDesPro.Text+'%'));

          if rbEmAberto.Checked then
             ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe > 0')
          else
          if rbFinalizado.Checked then
             ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe = 0')
          else
          if rbTodos.Checked then
             ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe >= 0');

          ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
          ConsUsu_TProCar.Parameters.ParamByName('numane').Value := ConsUsu_TCarProUSU_NUMANE.Value;
          ConsUsu_TProCar.Open;
          if ConsUsu_TProCar.IsEmpty then
             ConsUsu_TCorCar.Close;


          Dm2.ConsGeral.Close;
          Dm2.ConsGeral.SQL.Clear;
          Dm2.ConsGeral.SQL.Add('SELECT * FROM USU_TCORCAR WHERE USU_NUMANE = :NUMANE AND');
          Dm2.ConsGeral.SQL.Add('USU_QTDABE > 0');
          Dm2.ConsGeral.Parameters.ParamByName('NUMANE').Value := ConsUsu_TCarProUSU_NUMANE.Value;
          Dm2.ConsGeral.Open;
          if Dm2.ConsGeral.IsEmpty then
             begin
               ConsUsu_TCarPro.Edit;
               ConsUsu_TCarProUSU_CARPRO.Value := 'S';
               ConsUsu_TCarProUSU_ITESEL.Value := 'N';
               ConsUsu_TCarPro.Post;

                ConsUsu_TCarPro.Close;
                ConsUsu_TCarPro.Open;

             end;

    end;

end;

procedure TFCorteTecEstof.btnDesmarcaCargasResumoClick(Sender: TObject);
begin
   dbgCargasProdResumo.DataSource := dsReserva;

    ConsUsu_TCarProResumo.First;
    while not ConsUsu_TCarProResumo.Eof do
       begin
         ConsUsu_TCarProResumo.Edit;
         ConsUsu_TCarProResumoUSU_ITESEL.Value := 'N';
         ConsUsu_TCarProResumo.Post;

         ConsUsu_TCarProResumo.Next;
       end;
    ConsUsu_TCarProResumo.First;
    dbgCargasProdResumo.DataSource := dsConsUsu_TCarProResumo;
end;

procedure TFCorteTecEstof.btnEstornoLancamentoClick(Sender: TObject);
begin
 if not (ConsUsu_TProCar.IsEmpty) and (ConsUsu_TProCarUSU_QTDPRO.Value > 0) then
    begin

        //limpa o client
        Dm1.ClientBaixaCorteTecEstof.Open;
        Dm1.ClientBaixaCorteTecEstof.First;
        while not Dm1.ClientBaixaCorteTecEstof.Eof do
          begin
            Dm1.ClientBaixaCorteTecEstof.Delete;
          end;
        Dm1.ClientBaixaCorteTecEstof.Open;


       ConsUsu_TCorCar.First;
       while not ConsUsu_TCorCar.Eof do
          begin
                  Dm1.ClientBaixaCorteTecEstof.Insert;
                  Dm1.ClientBaixaCorteTecEstofNUMANE.Value := ConsUsu_TCorCarUSU_NUMANE.Value;
                  Dm1.ClientBaixaCorteTecEstofCODPRO.Value := ConsUsu_TCorCarUSU_CODPRO.Value;
                  Dm1.ClientBaixaCorteTecEstofCODDER.Value := ConsUsu_TCorCarUSU_CODDER.Value;
                  Dm1.ClientBaixaCorteTecEstofCODCOR1.Value := ConsUsu_TCorCarUSU_CODCOR1.Value;
                  Dm1.ClientBaixaCorteTecEstofCODCOR2.Value := ConsUsu_TCorCarUSU_CODCOR2.Value;
                  Dm1.ClientBaixaCorteTecEstofQTDPED.Value := ConsUsu_TCorCarUSU_QTDPED.Value;
                  Dm1.ClientBaixaCorteTecEstofQTDPRO.Value := ConsUsu_TCorCarUSU_QTDPRO.Value;
                  Dm1.ClientBaixaCorteTecEstofQTDABE.Value := ConsUsu_TCorCarUSU_QTDABE.Value;
                  Dm1.ClientBaixaCorteTecEstofQTDMOV.Value := ConsUsu_TCorCarUSU_QTDABE.Value;
                  Dm1.ClientBaixaCorteTecEstofITESEL.Value := 'N';
                  Dm1.ClientBaixaCorteTecEstof.Post;

            ConsUsu_TCorCar.Next;
          end;
          Dm1.ClientBaixaCorteTecEstof.IndexFieldNames := 'CODCOR1';
          Dm1.ClientBaixaCorteTecEstof.First;

          FBaixaCorteTecEstof := TFBaixaCorteTecEstof.Create(Self);
          FBaixaCorteTecEstof.vaComando := 'ESTORNO';
          FBaixaCorteTecEstof.edtNumAne.Text := IntToStr(ConsUsu_TProCarUSU_NUMANE.AsInteger);
          FBaixaCorteTecEstof.edtProduto.Text := ConsUsu_TProCarUSU_CODPRO.AsString + '  -  '+ConsUsu_TProCarDESPRO.AsString + '  -  '+ConsUsu_TProCarUSU_CODDER.AsString;
          FBaixaCorteTecEstof.edtQtdPed.Text := IntToStr(ConsUsu_TProCarUSU_QTDPED.AsInteger);
          FBaixaCorteTecEstof.edtQtdPro.Text := IntToStr(ConsUsu_TProCarUSU_QTDPRO.AsInteger);
          FBaixaCorteTecEstof.edtQtdAbe.Text := IntToStr(ConsUsu_TProCarUSU_QTDABE.AsInteger);

          FBaixaCorteTecEstof.ShowModal;
          FreeAndNil(FBaixaCorteTecEstof);

          //atualiza a consulta
          ConsUsu_TProCar.Close;
          ConsUsu_TProCar.SQL.Clear;
          ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
          ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
          ConsUsu_TProCar.SQL.Add('where');
          ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane');
          //ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
          if Trim(edtDesPro.Text) <> '' then
          ConsUsu_TProCar.SQL.Add('and e075pro.despro LIKE'+QuotedStr('%'+edtDesPro.Text+'%'));

          if rbEmAberto.Checked then
             ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe > 0')
          else
          if rbFinalizado.Checked then
             ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe = 0')
          else
          if rbTodos.Checked then
             ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe >= 0');

          ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
          ConsUsu_TProCar.Parameters.ParamByName('numane').Value := ConsUsu_TCarProUSU_NUMANE.Value;
          ConsUsu_TProCar.Open;
          if ConsUsu_TProCar.IsEmpty then
             ConsUsu_TCorCar.Close;
    end;
end;

procedure TFCorteTecEstof.btnInverterCoresClick(Sender: TObject);
begin
if (Trim(ConsUsu_TCorCarUSU_CODCOR1.Value) <> '') and (Trim(ConsUsu_TCorCarUSU_CODCOR2.Value) <> '') and (ConsUsu_TCorCarUSU_QTDABE.Value > 0) then
    begin
        FAltProdCargaCorteEstof := TFAltProdCargaCorteEstof.Create(Self);
        FAltProdCargaCorteEstof.edtNumAne.Value := ConsUsu_TCorCarUSU_NUMANE.Value;
        FAltProdCargaCorteEstof.rbExcluir.Checked := True;

        Dm2.ClientAltCargaCorteEstof.Open;
        Dm2.ClientAltCargaCorteEstof.Insert;
        Dm2.ClientAltCargaCorteEstofNUMANE.Value := ConsUsu_TCorCarUSU_NUMANE.Value;
        Dm2.ClientAltCargaCorteEstofCODPRO.Value := ConsUsu_TCorCarUSU_CODPRO.Value;
        Dm2.ClientAltCargaCorteEstofCODDER.Value := ConsUsu_TCorCarUSU_CODDER.Value;
        Dm2.ClientAltCargaCorteEstofCODCOR1.Value := ConsUsu_TCorCarUSU_CODCOR1.Value;
        Dm2.ClientAltCargaCorteEstofCODCOR2.Value := ConsUsu_TCorCarUSU_CODCOR2.Value;
        Dm2.ClientAltCargaCorteEstofDESPRO.Value := ConsUsu_TProCarDESPRO.Value;

        Dm2.ClientAltCargaCorteEstofQTDMOV.Value := ConsUsu_TCorCarUSU_QTDABE.Value;
        Dm2.ClientAltCargaCorteEstof.Post;
        //-----------------
        FAltProdCargaCorteEstof.rbAdicionar.Checked := True;

        Dm2.ClientAltCargaCorteEstof.Open;
        Dm2.ClientAltCargaCorteEstof.Insert;
        Dm2.ClientAltCargaCorteEstofNUMANE.Value := ConsUsu_TCorCarUSU_NUMANE.Value;
        Dm2.ClientAltCargaCorteEstofCODPRO.Value := ConsUsu_TCorCarUSU_CODPRO.Value;
        Dm2.ClientAltCargaCorteEstofCODDER.Value := ConsUsu_TCorCarUSU_CODDER.Value;
        Dm2.ClientAltCargaCorteEstofCODCOR1.Value := ConsUsu_TCorCarUSU_CODCOR2.Value;
        Dm2.ClientAltCargaCorteEstofCODCOR2.Value := ConsUsu_TCorCarUSU_CODCOR1.Value;
        Dm2.ClientAltCargaCorteEstofDESPRO.Value := ConsUsu_TProCarDESPRO.Value;

        Dm2.ClientAltCargaCorteEstofQTDMOV.Value := ConsUsu_TCorCarUSU_QTDABE.Value;
        Dm2.ClientAltCargaCorteEstof.Post;


        //FAltProdCargaCorteEstof.ActiveControl := FAltProdCargaCorteEstof.dbg1;
        //FAltProdCargaCorteEstof.dbg1.SelectedIndex := 6;

        FAltProdCargaCorteEstof.ShowModal;
        FreeAndNil(FAltProdCargaCorteEstof);

        //atualiza a consulta
        ConsUsu_TProCar.Close;
        ConsUsu_TProCar.SQL.Clear;
        ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
        ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
        ConsUsu_TProCar.SQL.Add('where');
        ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane');
        //ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
        if Trim(edtDesPro.Text) <> '' then
        ConsUsu_TProCar.SQL.Add('and e075pro.despro LIKE'+QuotedStr('%'+edtDesPro.Text+'%'));

        if rbEmAberto.Checked then
           ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe > 0')
        else
        if rbFinalizado.Checked then
           ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe = 0')
        else
        if rbTodos.Checked then
           ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe >= 0');

        ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
        ConsUsu_TProCar.Parameters.ParamByName('numane').Value := ConsUsu_TCarProUSU_NUMANE.Value;
        ConsUsu_TProCar.Open;
        if ConsUsu_TProCar.IsEmpty then
           ConsUsu_TCorCar.Close;
    end;

end;

procedure TFCorteTecEstof.btnMarcaCargasResumoClick(Sender: TObject);
begin
    dbgCargasProdResumo.DataSource := dsReserva;

    ConsUsu_TCarProResumo.First;
    while not ConsUsu_TCarProResumo.Eof do
       begin
         ConsUsu_TCarProResumo.Edit;
         ConsUsu_TCarProResumoUSU_ITESEL.Value := 'S';
         ConsUsu_TCarProResumo.Post;

         ConsUsu_TCarProResumo.Next;
       end;
    ConsUsu_TCarProResumo.First;
    dbgCargasProdResumo.DataSource := dsConsUsu_TCarProResumo;
end;

procedure TFCorteTecEstof.btnTransferirClick(Sender: TObject);
var vnQtdPro : Integer;
begin
    if not Dm1.ConsUsu_TPreCarLib.IsEmpty then
      begin
         //valida se possui estofados na carga
         vnQtdPro := 0;
         ValidaProdutos.Close;
         ValidaProdutos.Parameters.ParamByName('PRECAR').Value := Dm1.ConsUsu_TPreCarLibUSU_PRECAR.Value;
         ValidaProdutos.Open;
         ValidaProdutos.First;
         while not ValidaProdutos.Eof do
           begin
             vnQtdPro := vnQtdPro + ValidaProdutosQTD_ESTOF.AsInteger;
             ValidaProdutos.Next;
           end;
         if vnQtdPro = 0 then
            begin
               //assinala que a pre carga ja esta importada
              Dm1.CadUsu_TPreCarLib.Close;
              Dm1.CadUsu_TPreCarLib.Parameters.ParamByName('precar').Value := Dm1.ConsUsu_TPreCarLibUSU_PRECAR.Value;
              Dm1.CadUsu_TPreCarLib.Open;
              Dm1.CadUsu_TPreCarLib.Edit;
              Dm1.CadUsu_TPreCarLibUSU_CARIMP.Value := 'S';
              Dm1.CadUsu_TPreCarLib.Post;

              //atualiza a consulta das cargas em produao
              ConsUsu_TCarPro.Close;
              ConsUsu_TCarPro.Open;

              //atualiza a consulta das cargas liberadas para producao
              Dm1.ConsUsu_TPreCarLib.Close;
              Dm1.ConsUsu_TPreCarLib.Open;

              Abort;
            end;


         //GRAVA OD DADOS GERAIS DA CARGA
         Dm1.CadUsu_TCarPro.Close;
         Dm1.CadUsu_TCarPro.Parameters.ParamByName('NUMANE').Value := Dm1.ConsUsu_TPreCarLibUSU_PRECAR.Value;
         Dm1.CadUsu_TCarPro.Open;
         if Dm1.CadUsu_TCarPro.IsEmpty then
            begin
              Dm1.CadUsu_TCarPro.Insert;
              Dm1.CadUsu_TCarProUSU_NUMANE.Value := Dm1.ConsUsu_TPreCarLibUSU_PRECAR.Value;
              Dm1.CadUsu_TCarProUSU_DATIMP.AsDateTime := Date;
              Dm1.CadUsu_TCarProUSU_USUIMP.Value := FPrincipal.cd_usuario;
              Dm1.CadUsu_TCarProUSU_CARPRO.Value := 'N';
            Dm1.CadUsu_TCarProUSU_ITESEL.Value := 'N';
              Dm1.CadUsu_TCarPro.Post;
            end;


         //CONSULTA TODOS OS PRODUTOS/CORES DA CARGA
         Dm1.ConsProdutos_Cores.Close;
         Dm1.ConsProdutos_Cores.Parameters.ParamByName('PRECAR').Value := Dm1.ConsUsu_TPreCarLibUSU_PRECAR.Value;
         Dm1.ConsProdutos_Cores.Open;
         Dm1.ConsProdutos_Cores.First;
         while not Dm1.ConsProdutos_Cores.Eof do
            begin
               //PRIMEIRO CONSULTA OS PRODUTOS
               Dm1.ConsProdutosCarga.Close;
               Dm1.ConsProdutosCarga.Parameters.ParamByName('NUMANE').Value := Dm1.ConsProdutos_CoresUSU_PRECAR.Value;
               Dm1.ConsProdutosCarga.Parameters.ParamByName('CODPRO').Value := Dm1.ConsProdutos_CoresUSU_CODPRO.Value;
               Dm1.ConsProdutosCarga.Parameters.ParamByName('CODDER').Value := Dm1.ConsProdutos_CoresUSU_CODDER.Value;
               Dm1.ConsProdutosCarga.Open;
               if Dm1.ConsProdutosCarga.IsEmpty then
                  begin
                    Dm1.ConsProdutosCarga.Insert;
                    Dm1.ConsProdutosCargaUSU_NUMANE.Value := Dm1.ConsProdutos_CoresUSU_PRECAR.Value;
                    Dm1.ConsProdutosCargaUSU_CODPRO.Value := Dm1.ConsProdutos_CoresUSU_CODPRO.Value;
                    Dm1.ConsProdutosCargaUSU_CODDER.Value := Dm1.ConsProdutos_CoresUSU_CODDER.Value;
                    Dm1.ConsProdutosCargaUSU_QTDPED.Value := Dm1.ConsProdutos_CoresUSU_QTDABE.Value;
                    Dm1.ConsProdutosCargaUSU_QTDPRO.Value := 0;
                    Dm1.ConsProdutosCargaUSU_QTDABE.Value := Dm1.ConsProdutos_CoresUSU_QTDABE.Value;
                    Dm1.ConsProdutosCargaUSU_PROCOR.Value := 'N';
                    Dm1.ConsProdutosCarga.Post;
                  end
               else
                  begin
                    Dm1.ConsProdutosCarga.Edit;
                    Dm1.ConsProdutosCargaUSU_QTDPED.Value := Dm1.ConsProdutosCargaUSU_QTDPED.Value + Dm1.ConsProdutos_CoresUSU_QTDABE.Value;
                    Dm1.ConsProdutosCargaUSU_QTDABE.Value := Dm1.ConsProdutosCargaUSU_QTDPED.Value - Dm1.ConsProdutosCargaUSU_QTDPRO.Value;
                    Dm1.ConsProdutosCarga.Post;
                  end;

               //CONSULTA AS CORES DOS PRODUTOS
               Dm1.ConsCoresCarga.Close;
               Dm1.ConsCoresCarga.Parameters.ParamByName('NUMANE').Value := Dm1.ConsProdutos_CoresUSU_PRECAR.Value;
               Dm1.ConsCoresCarga.Parameters.ParamByName('CODPRO').Value := Dm1.ConsProdutos_CoresUSU_CODPRO.Value;
               Dm1.ConsCoresCarga.Parameters.ParamByName('CODDER').Value := Dm1.ConsProdutos_CoresUSU_CODDER.Value;
               Dm1.ConsCoresCarga.Parameters.ParamByName('CODCOR1').Value := Dm1.ConsProdutos_CoresUSU_COR001.Value;
               if Trim(Dm1.ConsProdutos_CoresUSU_COR002.Value) = '' then
                  Dm1.ConsCoresCarga.Parameters.ParamByName('CODCOR2').Value := ' '
               else
                  Dm1.ConsCoresCarga.Parameters.ParamByName('CODCOR2').Value := Dm1.ConsProdutos_CoresUSU_COR002.Value;
               Dm1.ConsCoresCarga.Open;
               if Dm1.ConsCoresCarga.IsEmpty then
                  begin
                    Dm1.ConsCoresCarga.Insert;
                    Dm1.ConsCoresCargaUSU_NUMANE.Value := Dm1.ConsProdutos_CoresUSU_PRECAR.Value;
                    Dm1.ConsCoresCargaUSU_CODPRO.Value := Dm1.ConsProdutos_CoresUSU_CODPRO.Value;
                    Dm1.ConsCoresCargaUSU_CODDER.Value := Dm1.ConsProdutos_CoresUSU_CODDER.Value;
                    Dm1.ConsCoresCargaUSU_CODCOR1.Value := Dm1.ConsProdutos_CoresUSU_COR001.Value;
                    if Trim(Dm1.ConsProdutos_CoresUSU_COR002.Value) = '' then
                       Dm1.ConsCoresCargaUSU_CODCOR2.Value := ' '
                    else
                    Dm1.ConsCoresCargaUSU_CODCOR2.Value := Dm1.ConsProdutos_CoresUSU_COR002.Value;

                    Dm1.ConsCoresCargaUSU_QTDPED.Value := Dm1.ConsProdutos_CoresUSU_QTDABE.Value;
                    Dm1.ConsCoresCargaUSU_QTDPRO.Value := 0;
                    Dm1.ConsCoresCargaUSU_QTDABE.Value := Dm1.ConsProdutos_CoresUSU_QTDABE.Value;
                    Dm1.ConsCoresCargaUSU_CORCOR.Value := 'N';
                    Dm1.ConsCoresCargaUSU_SELITE.Value := 'N';
                    Dm1.ConsCoresCarga.Post;
                  end
               else
                  begin
                    Dm1.ConsCoresCarga.Edit;
                    Dm1.ConsCoresCargaUSU_QTDPED.Value := Dm1.ConsCoresCargaUSU_QTDPED.Value + Dm1.ConsProdutos_CoresUSU_QTDABE.Value;
                    Dm1.ConsCoresCargaUSU_QTDABE.Value := Dm1.ConsCoresCargaUSU_QTDPED.Value - Dm1.ConsCoresCargaUSU_QTDPRO.Value;
                    Dm1.ConsCoresCarga.Post;

                  end;

              Dm1.ConsProdutos_Cores.Next;
            end;

            //assinala que a pre carga ja esta importada
            Dm1.CadUsu_TPreCarLib.Close;
            Dm1.CadUsu_TPreCarLib.Parameters.ParamByName('precar').Value := Dm1.ConsUsu_TPreCarLibUSU_PRECAR.Value;
            Dm1.CadUsu_TPreCarLib.Open;
            Dm1.CadUsu_TPreCarLib.Edit;
            Dm1.CadUsu_TPreCarLibUSU_CARIMP.Value := 'S';
            Dm1.CadUsu_TPreCarLib.Post;


            //atualiza a consulta das cargas em produao
            ConsUsu_TCarPro.Close;
            ConsUsu_TCarPro.Open;

            //atualiza a consulta das cargas liberadas para producao
            Dm1.ConsUsu_TPreCarLib.Close;
            Dm1.ConsUsu_TPreCarLib.Open;
       end;


end;

procedure TFCorteTecEstof.btnValidarClick(Sender: TObject);
var vnQtdPro : Integer;
begin
  if NOT Dm1.ConsUsu_TPreCarLib.IsEmpty then
     begin
       vnQtdPro := 0;
       ValidaProdutos.Close;
       ValidaProdutos.Parameters.ParamByName('PRECAR').Value := Dm1.ConsUsu_TPreCarLibUSU_PRECAR.Value;
       ValidaProdutos.Open;
       ValidaProdutos.First;
       while not ValidaProdutos.Eof do
         begin
           vnQtdPro := vnQtdPro + ValidaProdutosQTD_ESTOF.AsInteger;
           ValidaProdutos.Next;
         end;
       if vnQtdPro = 0 then
          begin
             //assinala que a pre carga ja esta importada
            Dm1.CadUsu_TPreCarLib.Close;
            Dm1.CadUsu_TPreCarLib.Parameters.ParamByName('precar').Value := Dm1.ConsUsu_TPreCarLibUSU_PRECAR.Value;
            Dm1.CadUsu_TPreCarLib.Open;
            Dm1.CadUsu_TPreCarLib.Edit;
            Dm1.CadUsu_TPreCarLibUSU_CARIMP.Value := 'S';
            Dm1.CadUsu_TPreCarLib.Post;

            //atualiza a consulta das cargas em produao
            ConsUsu_TCarPro.Close;
            ConsUsu_TCarPro.Open;

            //atualiza a consulta das cargas liberadas para producao
            Dm1.ConsUsu_TPreCarLib.Close;
            Dm1.ConsUsu_TPreCarLib.Open;
          end
       else
          begin
            Application.MessageBox('Esta carga é válida','Aviso',MB_ICONINFORMATION+MB_OK);

          end;
     end;
end;

procedure TFCorteTecEstof.ConsUsu_TCarProAfterScroll(DataSet: TDataSet);
begin
    ConsUsu_TProCar.Close;
    ConsUsu_TProCar.SQL.Clear;
    ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
    ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
    ConsUsu_TProCar.SQL.Add('where');
    ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane');
    //ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
    if Trim(edtDesPro.Text) <> '' then
    ConsUsu_TProCar.SQL.Add('and e075pro.despro LIKE'+QuotedStr('%'+edtDesPro.Text+'%'));

    if rbEmAberto.Checked then
       ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe > 0')
    else
    if rbFinalizado.Checked then
       ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe = 0')
    else
    if rbTodos.Checked then
       ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe >= 0');

    ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
    ConsUsu_TProCar.Parameters.ParamByName('numane').Value := ConsUsu_TCarProUSU_NUMANE.Value;
    ConsUsu_TProCar.Open;

    if ConsUsu_TProCar.IsEmpty then
       ConsUsu_TCorCar.Close;

      //consulta as observaçoes da carga
     Dm1.CadUsu_TCarProObs.Close;
     Dm1.CadUsu_TCarProObs.Parameters.ParamByName('NUMANE').Value := ConsUsu_TCarProUSU_NUMANE.Value;
     Dm1.CadUsu_TCarProObs.Open;

  
end;

procedure TFCorteTecEstof.ConsUsu_TCarProResumoAfterPost(DataSet: TDataSet);
begin
    ConsUsu_TProCarResumo.Close;
    ConsUsu_TProCarResumo.SQL.Clear;
    ConsUsu_TProCarResumo.SQL.Add('SELECT USU_TCORCAR.USU_CODPRO, USU_TCORCAR.USU_CODDER,E075PRO.DESPRO,');
    ConsUsu_TProCarResumo.SQL.Add(' SUM(USU_TCORCAR.USU_QTDPED) AS QTDPED,');
    ConsUsu_TProCarResumo.SQL.Add(' SUM(USU_TCORCAR.USU_QTDPRO) AS QTDPRO,');
    ConsUsu_TProCarResumo.SQL.Add(' SUM(USU_TCORCAR.USU_QTDABE) AS QTDABE');
    ConsUsu_TProCarResumo.SQL.Add(' FROM USU_TCORCAR');
    ConsUsu_TProCarResumo.SQL.Add(' INNER JOIN USU_TCARPRO ON USU_TCARPRO.USU_NUMANE = USU_TCORCAR.USU_NUMANE');
    ConsUsu_TProCarResumo.SQL.Add(' INNER JOIN E075PRO ON E075PRO.CODPRO = USU_TCORCAR.USU_CODPRO');
    ConsUsu_TProCarResumo.SQL.Add(' WHERE USU_TCARPRO.USU_ITESEL = ''S''');

    if Trim(edtDesProResumo.Text) <> '' then
       ConsUsu_TProCarResumo.SQL.Add(' AND E075PRO.DESPRO LIKE'+QuotedStr('%'+edtDesProResumo.Text+'%'));

    ConsUsu_TProCarResumo.SQL.Add(' GROUP BY USU_TCORCAR.USU_CODPRO,USU_TCORCAR.USU_CODDER,E075PRO.DESPRO');
    ConsUsu_TProCarResumo.SQL.Add(' ORDER BY USU_TCORCAR.USU_CODPRO, QTDABE');
    ConsUsu_TProCarResumo.Open;

    if ConsUsu_TProCarResumo.IsEmpty then
       begin
         ConsUsu_TCorCarResumo.Close;
       end;
end;

procedure TFCorteTecEstof.ConsUsu_TProCarAfterScroll(DataSet: TDataSet);
begin
    ConsUsu_tCorCar.Close;
    ConsUsu_tCorCar.Parameters.ParamByName('numane').Value := ConsUsu_TProCarUSU_NUMANE.Value;
    ConsUsu_tCorCar.Parameters.ParamByName('codpro').Value := ConsUsu_TProCarUSU_CODPRO.Value;
    ConsUsu_tCorCar.Parameters.ParamByName('codder').Value := ConsUsu_TProCarUSU_CODDER.Value;
    ConsUsu_tCorCar.Open;
end;

procedure TFCorteTecEstof.ConsUsu_TProCarResumoAfterScroll(DataSet: TDataSet);
begin
    ConsUsu_TCorCarResumo.Close;
    ConsUsu_TCorCarResumo.Parameters.ParamByName('CODPRO').Value := ConsUsu_TProCarResumoUSU_CODPRO.Value;
    ConsUsu_TCorCarResumo.Parameters.ParamByName('CODDER').Value := ConsUsu_TProCarResumoUSU_CODDER.Value;
    ConsUsu_TCorCarResumo.Open;
    ConsUsu_TCorCarResumo.First;
end;

procedure TFCorteTecEstof.dbgObservacoesCellClick(Column: TColumn);
begin
  if not Dm1.CadUsu_TCarProObs.IsEmpty then
     begin
       if dbgObservacoes.SelectedIndex = 0 then
          begin
             if Dm1.CadUsu_TCarProObsUSU_OBSRES.Value = 'N' then
                begin
                  if Application.MessageBox('Confirmar a observação como resolvido','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
                     begin
                        Dm1.CadUsu_TCarProObs.Edit;
                        Dm1.CadUsu_TCarProObsUSU_OBSRES.Value := 'S';
                        Dm1.CadUsu_TCarProObs.Post;
                     end;
                end;
          end
       else
       if dbgObservacoes.SelectedIndex = 1 then
          begin
             if Dm1.CadUsu_TCarProObsUSU_OBSRES.Value = 'N' then
                begin
                    FAltProdCargaCorteEstof := TFAltProdCargaCorteEstof.Create(Self);
                    FAltProdCargaCorteEstof.edtNumAne.Value := Dm1.CadUsu_TCarProObsUSU_NUMANE.Value;
                    if Dm1.CadUsu_TCarProObsUSU_TIPMOV.Value = 'A' then
                       FAltProdCargaCorteEstof.rbAdicionar.Checked := True
                    else
                    if Dm1.CadUsu_TCarProObsUSU_TIPMOV.Value = 'C' then
                       FAltProdCargaCorteEstof.rbExcluir.Checked := True;


                    Dm2.ClientAltCargaCorteEstof.Open;
                    Dm2.ClientAltCargaCorteEstof.Insert;
                    Dm2.ClientAltCargaCorteEstofNUMANE.Value := Dm1.CadUsu_TCarProObsUSU_NUMANE.Value;
                    Dm2.ClientAltCargaCorteEstofCODPRO.Value := Dm1.CadUsu_TCarProObsUSU_CODPRO.Value;
                    Dm2.ClientAltCargaCorteEstofCODDER.Value := Dm1.CadUsu_TCarProObsUSU_CODDER.Value;
                    Dm2.ClientAltCargaCorteEstofCODCOR1.Value := Dm1.CadUsu_TCarProObsUSU_CODCOR1.Value;
                    if Trim(Dm1.CadUsu_TCarProObsUSU_CODCOR2.Value) = '' then
                       Dm2.ClientAltCargaCorteEstofCODCOR2.Value := ' '
                    else
                    Dm2.ClientAltCargaCorteEstofCODCOR2.Value := Dm1.CadUsu_TCarProObsUSU_CODCOR2.Value;

                    Dm2.ClientAltCargaCorteEstofSEQOBS.Value := Dm1.CadUsu_TCarProObsUSU_SEQOBS.Value;

                    Dm2.ClientAltCargaCorteEstofQTDMOV.Value := Dm1.CadUsu_TCarProObsUSU_QTDMOV.Value;

                    FAltProdCargaCorteEstof.ActiveControl := FAltProdCargaCorteEstof.dbg1;
                    FAltProdCargaCorteEstof.dbg1.SelectedIndex := 6;



                    FAltProdCargaCorteEstof.ShowModal;
                    FreeAndNil(FAltProdCargaCorteEstof);

                    //atualiza a consulta
                    ConsUsu_TProCar.Close;
                    ConsUsu_TProCar.SQL.Clear;
                    ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
                    ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
                    ConsUsu_TProCar.SQL.Add('where');
                    ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane');
                    //ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
                    if Trim(edtDesPro.Text) <> '' then
                    ConsUsu_TProCar.SQL.Add('and e075pro.despro LIKE'+QuotedStr('%'+edtDesPro.Text+'%'));

                    if rbEmAberto.Checked then
                       ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe > 0')
                    else
                    if rbFinalizado.Checked then
                       ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe = 0')
                    else
                    if rbTodos.Checked then
                       ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe >= 0');

                    ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
                    ConsUsu_TProCar.Parameters.ParamByName('numane').Value := ConsUsu_TCarProUSU_NUMANE.Value;
                    ConsUsu_TProCar.Open;
                    if ConsUsu_TProCar.IsEmpty then
                       ConsUsu_TCorCar.Close;

                     //consulta as observaçoes da carga
                     Dm1.CadUsu_TCarProObs.Close;
                     Dm1.CadUsu_TCarProObs.Parameters.ParamByName('NUMANE').Value := ConsUsu_TCarProUSU_NUMANE.Value;
                     Dm1.CadUsu_TCarProObs.Open;


                end;
          end;

     end;
end;

procedure TFCorteTecEstof.dbgObservacoesDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
Check: Integer;
  R: TRect;

begin

   //DESENHA O CHECK NA GRID
  if Column.FieldName = 'Check' then
     begin//1
       dbgObservacoes.Canvas.FillRect(Rect);
       Check := 0;

       if Dm1.CadUsu_TCarProObsUSU_OBSRES.Value = 'S' then
          Check := DFCS_CHECKED
       else Check := 0;
          R:=Rect;
          InflateRect(R,-1,-1); {Diminue o tamanho do CheckBox}
          DrawFrameControl(dbgObservacoes.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
     end;//1

  if Column.FieldName = 'ImgTipMov' then
    begin
        dbgObservacoes.Canvas.FillRect(Rect);
        // Desenha o Quadrado
      //  ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,0);
        if Dm1.CadUsu_TCarProObsUSU_TIPMOV.Value = 'A' then
           begin
            ImageList1.Draw(dbgObservacoes.Canvas,Rect.Left+5,Rect.Top+1,8);
           end
        else
        if Dm1.CadUsu_TCarProObsUSU_TIPMOV.Value = 'C' then
           begin
            ImageList1.Draw(dbgObservacoes.Canvas,Rect.Left+5,Rect.Top+1,7);
           end;
    end;

    if Column.FieldName = 'USU_DESOBS' then
    begin
       if Dm1.CadUsu_TCarProObsUSU_OBSRES.Value = 'N' then
          begin
            with (Sender as TDBGrid).Canvas do
              begin
               Brush.Color := $00D2FFFF;
               TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
              end;
          end;
    end;


end;

procedure TFCorteTecEstof.dbgCargasEmProducaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin


       //MUDA A COR DA LINHA
       if ConsUsu_TCarProUSU_ITESEL.Value = 'S' then
          begin
            with (Sender as TDBGrid).Canvas do
            begin
               // Brush.Color := clSilver; //clSkyBlue;
                //FillRect(Rect);
               // Brush.Color := $00D7FFD7;

                Font.Color := clRed;
                Column.Field.Alignment := taCenter;

                TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

            end;
          end;
end;

procedure TFCorteTecEstof.dbgCargasProdResumoCellClick(Column: TColumn);
begin
   if dbgCargasProdResumo.SelectedField.FieldName = 'ITESEL' then
      begin
        ConsUsu_TCarProResumo.Open;
        ConsUsu_TCarProResumo.Edit;
        if ConsUsu_TCarProResumoUSU_ITESEL.Value = 'N' then
           ConsUsu_TCarProResumoUSU_ITESEL.Value := 'S'
        else
        if ConsUsu_TCarProResumoUSU_ITESEL.Value = 'S' then
           ConsUsu_TCarProResumoUSU_ITESEL.Value := 'N';

        ConsUsu_TCarProResumo.Post;
      end;

end;

procedure TFCorteTecEstof.dbgCargasProdResumoDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
   //DESENHA O CHECK NA GRID
  if Column.FieldName = 'ITESEL' then
     begin//1
       dbgCargasProdResumo.Canvas.FillRect(Rect);
       Check := 0;

       if ConsUsu_TCarProResumoUSU_ITESEL.Value = 'S' then
          Check := DFCS_CHECKED
          else Check := 0;
          R:=Rect;
          InflateRect(R,-1,-1); {Diminue o tamanho do CheckBox}
          DrawFrameControl(dbgCargasProdResumo.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
     end;//1
end;

procedure TFCorteTecEstof.dbgProdutosEmCorteDblClick(Sender: TObject);
begin
    btnBaixaProduto.Click;
end;

procedure TFCorteTecEstof.dbgProdutosEmCorteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   {if Column.Field.FieldName = 'USU_QTDABE' then
      begin
       //MUDA A COR DA LINHA
       if ConsUsu_TProCarUSU_QTDABE.Value > 0 then
          with (Sender as TDBGrid).Canvas do
          begin
         // Brush.Color := clSilver; //clSkyBlue;
          FillRect(Rect);
          Brush.Color := $00D7FFD7;
          //Brush.Color := $00CACACA;
        // Font.Color := clRed;

          if Column.Field.FieldName <> 'DESPRO' then
          Column.Field.Alignment := taCenter;

          TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end;
      end;}
end;

procedure TFCorteTecEstof.edtDesProChange(Sender: TObject);
begin
    ConsUsu_TProCar.Close;
    ConsUsu_TProCar.SQL.Clear;
    ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
    ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
    ConsUsu_TProCar.SQL.Add('where');
    ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane and');
    ConsUsu_TProCar.SQL.Add('e075pro.despro LIKE'+QuotedStr('%'+edtDesPro.Text+'%'));

    if rbEmAberto.Checked then
       ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe > 0')
    else
    if rbFinalizado.Checked then
       ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe = 0')
    else
    if rbTodos.Checked then
       ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe >= 0');


    ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
    ConsUsu_TProCar.Parameters.ParamByName('numane').Value := ConsUsu_TCarProUSU_NUMANE.Value;
    ConsUsu_TProCar.Open;

    if ConsUsu_TProCar.IsEmpty then
       ConsUsu_TCorCar.Close;
end;

procedure TFCorteTecEstof.edtDesProResumoChange(Sender: TObject);
begin
    ConsUsu_TProCarResumo.Close;
    ConsUsu_TProCarResumo.SQL.Clear;
    ConsUsu_TProCarResumo.SQL.Add('SELECT USU_TCORCAR.USU_CODPRO, USU_TCORCAR.USU_CODDER,E075PRO.DESPRO,');
    ConsUsu_TProCarResumo.SQL.Add(' SUM(USU_TCORCAR.USU_QTDPED) AS QTDPED,');
    ConsUsu_TProCarResumo.SQL.Add(' SUM(USU_TCORCAR.USU_QTDPRO) AS QTDPRO,');
    ConsUsu_TProCarResumo.SQL.Add(' SUM(USU_TCORCAR.USU_QTDABE) AS QTDABE');
    ConsUsu_TProCarResumo.SQL.Add(' FROM USU_TCORCAR');
    ConsUsu_TProCarResumo.SQL.Add(' INNER JOIN USU_TCARPRO ON USU_TCARPRO.USU_NUMANE = USU_TCORCAR.USU_NUMANE');
    ConsUsu_TProCarResumo.SQL.Add(' INNER JOIN E075PRO ON E075PRO.CODPRO = USU_TCORCAR.USU_CODPRO');
    ConsUsu_TProCarResumo.SQL.Add(' WHERE USU_TCARPRO.USU_ITESEL = ''S''');

    ConsUsu_TProCarResumo.SQL.Add(' AND E075PRO.DESPRO LIKE'+QuotedStr('%'+edtDesProResumo.Text+'%'));

    ConsUsu_TProCarResumo.SQL.Add(' GROUP BY USU_TCORCAR.USU_CODPRO,USU_TCORCAR.USU_CODDER,E075PRO.DESPRO');
    ConsUsu_TProCarResumo.SQL.Add(' ORDER BY USU_TCORCAR.USU_CODPRO, QTDABE');
    ConsUsu_TProCarResumo.Open;

    if ConsUsu_TProCarResumo.IsEmpty then
       begin
         ConsUsu_TCorCarResumo.Close;
       end;
end;

procedure TFCorteTecEstof.FormShow(Sender: TObject);
begin
    Dm1.ConsUsu_TPreCarLib.Close;
    Dm1.ConsUsu_TPreCarLib.Open;

    PaginaControle.ActivePageIndex := 0;

end;

procedure TFCorteTecEstof.mnuAddCorClick(Sender: TObject);
begin
  FAltProdCargaCorteEstof := TFAltProdCargaCorteEstof.Create(Self);
  FAltProdCargaCorteEstof.edtNumAne.Value := ConsUsu_TCorCarUSU_NUMANE.Value;
  FAltProdCargaCorteEstof.rbAdicionar.Checked := True;

  Dm2.ClientAltCargaCorteEstof.Open;
  Dm2.ClientAltCargaCorteEstof.Insert;
  Dm2.ClientAltCargaCorteEstofNUMANE.Value := ConsUsu_TCorCarUSU_NUMANE.Value;
  Dm2.ClientAltCargaCorteEstofCODPRO.Value := ConsUsu_TCorCarUSU_CODPRO.Value;
  Dm2.ClientAltCargaCorteEstofCODDER.Value := ConsUsu_TCorCarUSU_CODDER.Value;
  Dm2.ClientAltCargaCorteEstofCODCOR1.Value := ConsUsu_TCorCarUSU_CODCOR1.Value;
  Dm2.ClientAltCargaCorteEstofCODCOR2.Value := ConsUsu_TCorCarUSU_CODCOR2.Value;
  Dm2.ClientAltCargaCorteEstofDESPRO.Value := ConsUsu_TProCarDESPRO.Value;

  FAltProdCargaCorteEstof.ActiveControl := FAltProdCargaCorteEstof.dbg1;
  FAltProdCargaCorteEstof.dbg1.SelectedIndex := 6;

  FAltProdCargaCorteEstof.ShowModal;
  FreeAndNil(FAltProdCargaCorteEstof);

  //atualiza a consulta
  ConsUsu_TProCar.Close;
  ConsUsu_TProCar.SQL.Clear;
  ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
  ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
  ConsUsu_TProCar.SQL.Add('where');
  ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane');
  //ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
  if Trim(edtDesPro.Text) <> '' then
  ConsUsu_TProCar.SQL.Add('and e075pro.despro LIKE'+QuotedStr('%'+edtDesPro.Text+'%'));

  if rbEmAberto.Checked then
     ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe > 0')
  else
  if rbFinalizado.Checked then
     ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe = 0')
  else
  if rbTodos.Checked then
     ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe >= 0');

  ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
  ConsUsu_TProCar.Parameters.ParamByName('numane').Value := ConsUsu_TCarProUSU_NUMANE.Value;
  ConsUsu_TProCar.Open;
  if ConsUsu_TProCar.IsEmpty then
     ConsUsu_TCorCar.Close;
end;

procedure TFCorteTecEstof.mnuAddProdClick(Sender: TObject);
begin
  FAltProdCargaCorteEstof := TFAltProdCargaCorteEstof.Create(Self);
  FAltProdCargaCorteEstof.edtNumAne.Value := ConsUsu_TCarProUSU_NUMANE.Value;
  FAltProdCargaCorteEstof.rbAdicionar.Checked := True;

  Dm2.ClientAltCargaCorteEstof.Open;

  FAltProdCargaCorteEstof.ShowModal;
  FreeAndNil(FAltProdCargaCorteEstof);

  //atualiza a consulta
  ConsUsu_TProCar.Close;
  ConsUsu_TProCar.SQL.Clear;
  ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
  ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
  ConsUsu_TProCar.SQL.Add('where');
  ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane');
  //ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
  if Trim(edtDesPro.Text) <> '' then
  ConsUsu_TProCar.SQL.Add('and e075pro.despro LIKE'+QuotedStr('%'+edtDesPro.Text+'%'));

  if rbEmAberto.Checked then
     ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe > 0')
  else
  if rbFinalizado.Checked then
     ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe = 0')
  else
  if rbTodos.Checked then
     ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe >= 0');

  ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
  ConsUsu_TProCar.Parameters.ParamByName('numane').Value := ConsUsu_TCarProUSU_NUMANE.Value;
  ConsUsu_TProCar.Open;
  if ConsUsu_TProCar.IsEmpty then
     ConsUsu_TCorCar.Close;
end;

procedure TFCorteTecEstof.mnuExcluirClick(Sender: TObject);
begin
  FAltProdCargaCorteEstof := TFAltProdCargaCorteEstof.Create(Self);
  FAltProdCargaCorteEstof.edtNumAne.Value := ConsUsu_TCorCarUSU_NUMANE.Value;
  FAltProdCargaCorteEstof.rbExcluir.Checked := True;

  Dm2.ClientAltCargaCorteEstof.Open;
  Dm2.ClientAltCargaCorteEstof.Insert;
  Dm2.ClientAltCargaCorteEstofNUMANE.Value := ConsUsu_TCorCarUSU_NUMANE.Value;
  Dm2.ClientAltCargaCorteEstofCODPRO.Value := ConsUsu_TCorCarUSU_CODPRO.Value;
  Dm2.ClientAltCargaCorteEstofCODDER.Value := ConsUsu_TCorCarUSU_CODDER.Value;
  Dm2.ClientAltCargaCorteEstofCODCOR1.Value := ConsUsu_TCorCarUSU_CODCOR1.Value;
  Dm2.ClientAltCargaCorteEstofCODCOR2.Value := ConsUsu_TCorCarUSU_CODCOR2.Value;
  Dm2.ClientAltCargaCorteEstofDESPRO.Value := ConsUsu_TProCarDESPRO.Value;

  FAltProdCargaCorteEstof.ActiveControl := FAltProdCargaCorteEstof.dbg1;
  FAltProdCargaCorteEstof.dbg1.SelectedIndex := 6;

  FAltProdCargaCorteEstof.ShowModal;
  FreeAndNil(FAltProdCargaCorteEstof);

  //atualiza a consulta
  ConsUsu_TProCar.Close;
  ConsUsu_TProCar.SQL.Clear;
  ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
  ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
  ConsUsu_TProCar.SQL.Add('where');
  ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane');
  //ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
  if Trim(edtDesPro.Text) <> '' then
  ConsUsu_TProCar.SQL.Add('and e075pro.despro LIKE'+QuotedStr('%'+edtDesPro.Text+'%'));

  if rbEmAberto.Checked then
     ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe > 0')
  else
  if rbFinalizado.Checked then
     ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe = 0')
  else
  if rbTodos.Checked then
     ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe >= 0');

  ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
  ConsUsu_TProCar.Parameters.ParamByName('numane').Value := ConsUsu_TCarProUSU_NUMANE.Value;
  ConsUsu_TProCar.Open;
  if ConsUsu_TProCar.IsEmpty then
     ConsUsu_TCorCar.Close;
end;

procedure TFCorteTecEstof.rbEmAbertoClick(Sender: TObject);
begin
if rbEmAberto.Checked then
   begin
     ConsUsu_TProCar.Close;
     ConsUsu_TProCar.SQL.Clear;
     ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
     ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
     ConsUsu_TProCar.SQL.Add('where');
     ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane');
     //ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
     if Trim(edtDesPro.Text) <> '' then
     ConsUsu_TProCar.SQL.Add('and e075pro.despro LIKE'+QuotedStr('%'+edtDesPro.Text+'%'));

     ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe > 0');

     ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
     ConsUsu_TProCar.Parameters.ParamByName('numane').Value := ConsUsu_TCarProUSU_NUMANE.Value;
     ConsUsu_TProCar.Open;
   end;
end;

procedure TFCorteTecEstof.rbFinalizadoClick(Sender: TObject);
begin
if rbFinalizado.Checked then
   begin
     ConsUsu_TProCar.Close;
     ConsUsu_TProCar.SQL.Clear;
     ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
     ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
     ConsUsu_TProCar.SQL.Add('where');
     ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane');
     //ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
     if Trim(edtDesPro.Text) <> '' then
     ConsUsu_TProCar.SQL.Add('and e075pro.despro LIKE'+QuotedStr('%'+edtDesPro.Text+'%'));

     ConsUsu_TProCar.SQL.Add('and usu_tprocar.usu_qtdabe = 0');

     ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
     ConsUsu_TProCar.Parameters.ParamByName('numane').Value := ConsUsu_TCarProUSU_NUMANE.Value;
     ConsUsu_TProCar.Open;
   end;
end;

procedure TFCorteTecEstof.rbTodosClick(Sender: TObject);
begin
if rbTodos.Checked then
   begin
     ConsUsu_TProCar.Close;
     ConsUsu_TProCar.SQL.Clear;
     ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
     ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
     ConsUsu_TProCar.SQL.Add('where');
     ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane');
     //ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
     if Trim(edtDesPro.Text) <> '' then
     ConsUsu_TProCar.SQL.Add('and e075pro.despro LIKE'+QuotedStr('%'+edtDesPro.Text+'%'));

     ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
     ConsUsu_TProCar.Parameters.ParamByName('numane').Value := ConsUsu_TCarProUSU_NUMANE.Value;
     ConsUsu_TProCar.Open;
   end;
end;

procedure TFCorteTecEstof.tbEmCorteShow(Sender: TObject);
begin
   //atualiza a consulta das cargas em produao
    ConsUsu_TCarPro.Close;
    ConsUsu_TCarPro.Open;
    if ConsUsu_TProCar.IsEmpty then
       ConsUsu_TCorCar.Close;


    //atualiza a consulta das cargas liberadas para producao
    Dm1.ConsUsu_TPreCarLib.Close;
    Dm1.ConsUsu_TPreCarLib.Open;
end;

procedure TFCorteTecEstof.tbResumoShow(Sender: TObject);
begin
    ConsUsu_TCarProResumo.Close;
    ConsUsu_TCarProResumo.Open;

    ConsUsu_TProCarResumo.Close;
    ConsUsu_TProCarResumo.SQL.Clear;
    ConsUsu_TProCarResumo.SQL.Add('SELECT USU_TCORCAR.USU_CODPRO, USU_TCORCAR.USU_CODDER,E075PRO.DESPRO,');
    ConsUsu_TProCarResumo.SQL.Add(' SUM(USU_TCORCAR.USU_QTDPED) AS QTDPED,');
    ConsUsu_TProCarResumo.SQL.Add(' SUM(USU_TCORCAR.USU_QTDPRO) AS QTDPRO,');
    ConsUsu_TProCarResumo.SQL.Add(' SUM(USU_TCORCAR.USU_QTDABE) AS QTDABE');
    ConsUsu_TProCarResumo.SQL.Add(' FROM USU_TCORCAR');
    ConsUsu_TProCarResumo.SQL.Add(' INNER JOIN USU_TCARPRO ON USU_TCARPRO.USU_NUMANE = USU_TCORCAR.USU_NUMANE');
    ConsUsu_TProCarResumo.SQL.Add(' INNER JOIN E075PRO ON E075PRO.CODPRO = USU_TCORCAR.USU_CODPRO');
    ConsUsu_TProCarResumo.SQL.Add(' WHERE USU_TCARPRO.USU_ITESEL = ''S''');

    if Trim(edtDesProResumo.Text) <> '' then
       ConsUsu_TProCarResumo.SQL.Add(' AND E075PRO.DESPRO LIKE'+QuotedStr('%'+edtDesProResumo.Text+'%'));

    ConsUsu_TProCarResumo.SQL.Add(' GROUP BY USU_TCORCAR.USU_CODPRO,USU_TCORCAR.USU_CODDER,E075PRO.DESPRO');
    ConsUsu_TProCarResumo.SQL.Add(' ORDER BY USU_TCORCAR.USU_CODPRO, QTDABE');
    ConsUsu_TProCarResumo.Open;

    if ConsUsu_TProCarResumo.IsEmpty then
       begin
         ConsUsu_TCorCarResumo.Close;
       end;
end;

end.
