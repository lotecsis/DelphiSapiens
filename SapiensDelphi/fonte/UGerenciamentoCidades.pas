unit UGerenciamentoCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, Mask, rxToolEdit, rxCurrEdit,
  Buttons, OleCtrls, OleServer, DB, DBClient, DBCtrls, DBCGrids, Menus;

type
  TFGerenciamentoCidades = class(TForm)
    PaginaControle: TPageControl;
    tsCidades_compra: TTabSheet;
    dbg1: TDBGrid;
    dbg2: TDBGrid;
    edtCodRep: TCurrencyEdit;
    dsClientConsCidadesComCompra: TDataSource;
    btnConsRep: TBitBtn;
    edtDesRep: TEdit;
    Label1: TLabel;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    Label2: TLabel;
    dbedtvnQtdCidades: TDBEdit;
    dbedtvnTotalPopulacao: TDBEdit;
    dbedtvnTotalVenda: TDBEdit;
    dbedtvnTotalPHab: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbg3: TDBGrid;
    Label7: TLabel;
    Label8: TLabel;
    dsClientCliComCompra: TDataSource;
    dbedtvnQtdCli: TDBEdit;
    Label9: TLabel;
    dsClientCliSemCompra: TDataSource;
    dbedtvnQtdCli1: TDBEdit;
    Label10: TLabel;
    tsCidades_SemCompra: TTabSheet;
    dbg4: TDBGrid;
    dsClientConsCidadesSemCompra: TDataSource;
    dbedtvnQtdCid: TDBEdit;
    dbedtvnTotPopulacao: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    dbg5: TDBGrid;
    Label13: TLabel;
    dsClientCliSemCompra2: TDataSource;
    Label14: TLabel;
    dbedtvnQtdCli2: TDBEdit;
    tsResumoRep: TTabSheet;
    dsClientResumoCidRep: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    dbedtCODREP: TDBEdit;
    dbedtNOMREP: TDBEdit;
    dbedtAPEREP: TDBEdit;
    Label15: TLabel;
    dbedtQTDCIDADE: TDBEdit;
    Label16: TLabel;
    dbedtQTD_CID_COM: TDBEdit;
    dbedtQTD_CID_SEMCOM: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    dbedtTOTAL_POP: TDBEdit;
    dbedtPOP_COM_COMPRA: TDBEdit;
    dbedtPOP_SEM_COMPRA: TDBEdit;
    Label21: TLabel;
    dbedtVLR_FATURADO: TDBEdit;
    Label22: TLabel;
    dbedtVLR_POR_HAB: TDBEdit;
    btnMostrarResumoRep: TBitBtn;
    btnMostrarCidadeSemCompra: TBitBtn;
    dbedtvnTotalCid: TDBEdit;
    dbedtvnTotalPop: TDBEdit;
    dbedtvnTotalCidSCom: TDBEdit;
    dbedtvnTotalCidCCom: TDBEdit;
    dbedtvnTotalPopCCom: TDBEdit;
    dbedtvnTotalPopSCom: TDBEdit;
    dbedtvnVlrPHab: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    edtCidSemCom: TEdit;
    chkCidCiSemCom: TCheckBox;
    Label26: TLabel;
    Label31: TLabel;
    edtCidComCom: TEdit;
    chkCidCiComCom: TCheckBox;
    pmCliSemCom2: TPopupMenu;
    mnuAdicionarMon2: TMenuItem;
    pmCliSemCom: TPopupMenu;
    mnuAdicionarMon: TMenuItem;
    pmCliComCom: TPopupMenu;
    mnuAddMon: TMenuItem;

    procedure btnConsRepClick(Sender: TObject);
    procedure edtCodRepExit(Sender: TObject);
    procedure dbg1TitleClick(Column: TColumn);
    procedure dbg2TitleClick(Column: TColumn);
    procedure dbg3TitleClick(Column: TColumn);
    procedure dbg4TitleClick(Column: TColumn);
    procedure dbg5TitleClick(Column: TColumn);
    procedure btnMostrarResumoRepClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnMostrarCidadeSemCompraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkCidCiSemComClick(Sender: TObject);
    procedure chkCidCiComComClick(Sender: TObject);
    procedure mnuAdicionarMon2Click(Sender: TObject);
    procedure mnuAdicionarMonClick(Sender: TObject);
    procedure mnuAddMonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGerenciamentoCidades: TFGerenciamentoCidades;

implementation

uses UDmOra, UConsGeralNfEnt, UAddCliMonitoramento;

{$R *.dfm}

procedure TFGerenciamentoCidades.btnConsRepClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select codrep,nomrep,aperep,cgccpf from e090rep';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'CodRep';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FGerenciamentoCidades';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodRep;
end;

procedure TFGerenciamentoCidades.btnMostrarCidadeSemCompraClick(
  Sender: TObject);
begin
 if edtCodRep.AsInteger = 0 then
    begin
      Application.MessageBox('Informe o Representante','Aviso',MB_ICONWARNING+MB_OK);
      ActiveControl := edtCodRep;
      Abort;
    end;

 if edtDatIni.Date = 0 then
    begin
      Application.MessageBox('Informe a Data Incial','Aviso',MB_ICONWARNING+MB_OK);
      ActiveControl := edtDatIni;
      Abort;
    end;

 if edtDatFim.Date = 0 then
    begin
      Application.MessageBox('Informe a Data Final','Aviso',MB_ICONWARNING+MB_OK);
      ActiveControl := edtDatFim;
      Abort;
    end;
   Screen.Cursor := crSQLWait;

  DmOra.ClientConsCidadesComCompra.Close;
  DmOra.ConsCidadesComCompra.Close;
  DmOra.ConsCidadesComCompra.Parameters.ParamByName('CODREP_').Value := edtCodRep.AsInteger;
  DmOra.ConsCidadesComCompra.Parameters.ParamByName('DATINI_').Value := edtDatIni.Date;
  DmOra.ConsCidadesComCompra.Parameters.ParamByName('DATFIM_').Value := edtDatFim.Date;
  DmOra.ConsCidadesComCompra.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
  DmOra.ConsCidadesComCompra.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
  DmOra.ConsCidadesComCompra.Open;
  DmOra.ClientConsCidadesComCompra.Open;

  DmOra.ClientConsCidadesSemCompra.Close;
  DmOra.ConsCidadesSemCompra.Close;
  DmOra.ConsCidadesSemCompra.Parameters.ParamByName('CODREP').Value := edtCodRep.AsInteger;
  DmOra.ConsCidadesSemCompra.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
  DmOra.ConsCidadesSemCompra.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
  DmOra.ConsCidadesSemCompra.Open;
  DmOra.ClientConsCidadesSemCompra.Open;

  Screen.Cursor := crDefault;
end;

procedure TFGerenciamentoCidades.btnMostrarResumoRepClick(Sender: TObject);
begin
  if edtDatIni.Date = 0 then
    begin
      Application.MessageBox('Informe a Data Incial','Aviso',MB_ICONWARNING+MB_OK);
      ActiveControl := edtDatIni;
      Abort;
    end;

 if edtDatFim.Date = 0 then
    begin
      Application.MessageBox('Informe a Data Final','Aviso',MB_ICONWARNING+MB_OK);
      ActiveControl := edtDatFim;
      Abort;
    end;
   Screen.Cursor := crSQLWait;
  DmOra.ClientResumoCidRep.Close;
  DmOra.ResumoCidRep.Close;
  DmOra.ResumoCidRep.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
  DmOra.ResumoCidRep.Parameters.ParamByName('DATINI_').Value := edtDatIni.Date;
  DmOra.ResumoCidRep.Parameters.ParamByName('DATINI__').Value := edtDatIni.Date;
  DmOra.ResumoCidRep.Parameters.ParamByName('DATINI___').Value := edtDatIni.Date;
  DmOra.ResumoCidRep.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
  DmOra.ResumoCidRep.Parameters.ParamByName('DATFIM_').Value := edtDatFim.Date;
  DmOra.ResumoCidRep.Parameters.ParamByName('DATFIM__').Value := edtDatFim.Date;
  DmOra.ResumoCidRep.Parameters.ParamByName('DATFIM___').Value := edtDatFim.Date;
  DmOra.ResumoCidRep.Open;
  DmOra.ClientResumoCidRep.Open;

  Screen.Cursor := crDefault;
end;

procedure TFGerenciamentoCidades.chkCidCiComComClick(Sender: TObject);
begin
if Trim( edtCidComCom.Text) <> '' then

  if chkCidCiComCom.Checked then
     begin
       DmOra.ClientConsCidadesComCompra.Filtered := False;
       DmOra.ClientConsCidadesComCompra.Filter := 'NomCid like '+QuotedStr('%'+edtCidComCom.Text+'%');
       DmOra.ClientConsCidadesComCompra.Filtered := True;
     end
  else
     begin
       DmOra.ClientConsCidadesComCompra.Filtered := False;
     end;
end;

procedure TFGerenciamentoCidades.chkCidCiSemComClick(Sender: TObject);
begin
if Trim( edtCidSemCom.Text) <> '' then

  if chkCidCiSemCom.Checked then
     begin
       DmOra.ClientConsCidadesSemCompra.Filtered := False;
       DmOra.ClientConsCidadesSemCompra.Filter := 'NomCid like '+QuotedStr('%'+edtCidSemCom.Text+'%');
       DmOra.ClientConsCidadesSemCompra.Filtered := True;
     end
  else
     begin
       DmOra.ClientConsCidadesSemCompra.Filtered := False;
     end;
end;

procedure TFGerenciamentoCidades.dbg1TitleClick(Column: TColumn);
var
  indice: string;
  existe: boolean;
  clientdataset_idx: TClientDataSet;
begin
   clientdataset_idx := TClientDataset(Column.Grid.DataSource.DataSet);

  if clientdataset_idx.IndexFieldNames = Column.FieldName then
  begin
    indice := AnsiUpperCase(Column.FieldName);

    try
      clientdataset_idx.IndexDefs.Find(indice);
      existe := true;
    except
      existe := false;
    end;

    if not existe then
      with clientdataset_idx.IndexDefs.AddIndexDef do begin
        Name := indice;
        Fields := Column.FieldName;
        Options := [ixDescending];
      end;
    clientdataset_idx.IndexName := indice;
    clientdataset_idx.First;
  end
  else
     begin
       clientdataset_idx.IndexFieldNames := Column.FieldName;
       clientdataset_idx.First;
     end;

  {with DmOra.ClientConsCidadesComCompra.IndexDefs.AddIndexDef do
     begin
       Name := Column.FieldName;
       Fields := Column.FieldName;
       Options := [ixDescending, ixCaseInsensitive];
     end;
     DmOra.ClientConsCidadesComCompra.IndexName := Column.FieldName;}

end;

procedure TFGerenciamentoCidades.dbg2TitleClick(Column: TColumn);
var
  indice: string;
  existe: boolean;
  clientdataset_idc: TClientDataSet;
begin
   clientdataset_idc := TClientDataset(Column.Grid.DataSource.DataSet);

  if clientdataset_idc.IndexFieldNames = Column.FieldName then
  begin
    indice := AnsiUpperCase(Column.FieldName);

    try
      clientdataset_idc.IndexDefs.Find(indice);
      existe := true;
    except
      existe := false;
    end;

    if not existe then
      with clientdataset_idc.IndexDefs.AddIndexDef do begin
        Name := indice;
        Fields := Column.FieldName;
        Options := [ixDescending];
      end;
    clientdataset_idc.IndexName := indice;
    clientdataset_idc.First;
  end
  else
     begin
       clientdataset_idc.IndexFieldNames := Column.FieldName;
       clientdataset_idc.First;
     end;

end;

procedure TFGerenciamentoCidades.dbg3TitleClick(Column: TColumn);
var
  indice: string;
  existe: boolean;
  clientdataset_idg: TClientDataSet;
begin
   clientdataset_idg := TClientDataset(Column.Grid.DataSource.DataSet);

  if clientdataset_idg.IndexFieldNames = Column.FieldName then
  begin
    indice := AnsiUpperCase(Column.FieldName);

    try
      clientdataset_idg.IndexDefs.Find(indice);
      existe := true;
    except
      existe := false;
    end;

    if not existe then
      with clientdataset_idg.IndexDefs.AddIndexDef do begin
        Name := indice;
        Fields := Column.FieldName;
        Options := [ixDescending];
      end;
    clientdataset_idg.IndexName := indice;
    clientdataset_idg.First;
  end
  else
     begin
       clientdataset_idg.IndexFieldNames := Column.FieldName;
       clientdataset_idg.First;
     end;

end;

procedure TFGerenciamentoCidades.dbg4TitleClick(Column: TColumn);
var
  indice: string;
  existe: boolean;
  clientdataset_idq: TClientDataSet;
begin
   clientdataset_idq := TClientDataset(Column.Grid.DataSource.DataSet);

  if clientdataset_idq.IndexFieldNames = Column.FieldName then
  begin
    indice := AnsiUpperCase(Column.FieldName);

    try
      clientdataset_idq.IndexDefs.Find(indice);
      existe := true;
    except
      existe := false;
    end;

    if not existe then
      with clientdataset_idq.IndexDefs.AddIndexDef do begin
        Name := indice;
        Fields := Column.FieldName;
        Options := [ixDescending];
      end;
    clientdataset_idq.IndexName := indice;
    clientdataset_idq.First;
  end
  else
     begin
       clientdataset_idq.IndexFieldNames := Column.FieldName;
       clientdataset_idq.First;
     end;

end;

procedure TFGerenciamentoCidades.dbg5TitleClick(Column: TColumn);
var
  indice: string;
  existe: boolean;
  clientdataset_idf: TClientDataSet;
begin
   clientdataset_idf := TClientDataset(Column.Grid.DataSource.DataSet);

  if clientdataset_idf.IndexFieldNames = Column.FieldName then
  begin
    indice := AnsiUpperCase(Column.FieldName);

    try
      clientdataset_idf.IndexDefs.Find(indice);
      existe := true;
    except
      existe := false;
    end;

    if not existe then
      with clientdataset_idf.IndexDefs.AddIndexDef do begin
        Name := indice;
        Fields := Column.FieldName;
        Options := [ixDescending];
      end;
    clientdataset_idf.IndexName := indice;
    clientdataset_idf.First;
  end
  else
     begin
       clientdataset_idf.IndexFieldNames := Column.FieldName;
       clientdataset_idf.First;
     end;

end;

procedure TFGerenciamentoCidades.edtCodRepExit(Sender: TObject);
begin
  if edtCodRep.Value > 0 then
     begin
        DmOra.ConsSql.Close;
        DmOra.ConsSql.SQL.Clear;
        DmOra.ConsSql.SQL.Add('select codrep,nomrep,aperep,cgccpf from e090rep');
        DmOra.ConsSql.SQL.Add(' where codrep = :codrep');
        DmOra.ConsSql.Parameters.ParamByName('codrep').Value := edtCodRep.AsInteger;
        DmOra.ConsSql.Open;
        if DmOra.ConsSql.IsEmpty then
           begin
             Application.MessageBox('Representante não encontrado','Aviso',MB_ICONWARNING+MB_OK);
             edtDesRep.Clear;
             ActiveControl := edtCodRep;
             Abort;
           end
        else
           begin
             edtDesRep.Text := DmOra.ConsSql.FieldByName('aperep').AsString;
           end;

     end
  else
     begin
       edtDesRep.Clear;
     end;
end;

procedure TFGerenciamentoCidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
     begin
       btnMostrarCidadeSemCompra.Click;
     end;
  if key = VK_F2 then
     begin
       btnMostrarResumoRep.Click;
     end;

end;

procedure TFGerenciamentoCidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFGerenciamentoCidades.FormShow(Sender: TObject);
begin
  DmOra.ClientResumoCidRep.Close;
  DmOra.ResumoCidRep.Close;
  DmOra.ClientConsCidadesComCompra.Close;
  DmOra.ConsCidadesComCompra.Close;
  DmOra.ClientConsCidadesSemCompra.Close;
  DmOra.ConsCidadesSemCompra.Close;
  DmOra.ClientCliComCompra.Close;
  DmOra.CliComCompra.Close;
  DmOra.ClientCliSemCompra.Close;
  DmOra.CliSemCompra.Close;
  DmOra.ClientCliSemCompra2.Close;
  DmOra.CliSemCompra2.Close;
end;

procedure TFGerenciamentoCidades.mnuAddMonClick(Sender: TObject);
begin
  if not DmOra.ClientCliComCompra.IsEmpty then
     begin
        FAddCliMonitoramento := TFAddCliMonitoramento.Create(Self);
        FAddCliMonitoramento.edtCodCli.AsInteger := DmOra.ClientCliComCompraCODCLI.Value;
        FAddCliMonitoramento.edtNomCli.Text := DmOra.ClientCliComCompraNOMCLI.Value;
        FAddCliMonitoramento.ShowModal;
        FreeAndNil(FAddCliMonitoramento);
     end;
end;

procedure TFGerenciamentoCidades.mnuAdicionarMon2Click(Sender: TObject);
begin
  if not DmOra.ClientCliSemCompra2.IsEmpty then
     begin
        FAddCliMonitoramento := TFAddCliMonitoramento.Create(Self);
        FAddCliMonitoramento.edtCodCli.AsInteger := DmOra.ClientCliSemCompra2CODCLI.Value;
        FAddCliMonitoramento.edtNomCli.Text := DmOra.ClientCliSemCompra2NOMCLI.Value;
        FAddCliMonitoramento.ShowModal;
        FreeAndNil(FAddCliMonitoramento);
     end;
end;

procedure TFGerenciamentoCidades.mnuAdicionarMonClick(Sender: TObject);
begin
  if not DmOra.ClientCliSemCompra.IsEmpty then
     begin
        FAddCliMonitoramento := TFAddCliMonitoramento.Create(Self);
        FAddCliMonitoramento.edtCodCli.AsInteger := DmOra.ClientCliSemCompraCODCLI.Value;
        FAddCliMonitoramento.edtNomCli.Text := DmOra.ClientCliSemCompraNOMCLI.Value;
        FAddCliMonitoramento.ShowModal;
        FreeAndNil(FAddCliMonitoramento);
     end;
end;

end.
