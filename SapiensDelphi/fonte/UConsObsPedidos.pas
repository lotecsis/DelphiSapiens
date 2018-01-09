unit UConsObsPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, rxToolEdit, Buttons, Grids, DBGrids,
  DBCtrls, DB, ADODB;

type
  TFConsObsPedidos = class(TForm)
    Panel10: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    EdDatIni: TDateEdit;
    EdDatFim: TDateEdit;
    BMostrar: TBitBtn;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    DBObs: TDBMemo;
    ConsE120Obs: TADOQuery;
    DsConsE120Obs: TDataSource;
    ConsE120ObsCODEMP: TIntegerField;
    ConsE120ObsCODFIL: TIntegerField;
    ConsE120ObsNUMPED: TIntegerField;
    ConsE120ObsSEQOBS: TIntegerField;
    ConsE120ObsTIPOBS: TStringField;
    ConsE120ObsCODMOT: TIntegerField;
    ConsE120ObsOBSPED: TStringField;
    ConsE120ObsOBSUSU: TBCDField;
    ConsE120ObsOBSDAT: TDateTimeField;
    ConsE120ObsOBSHOR: TIntegerField;
    ConsE120ObsSOLOBS: TStringField;
    ConsE120ObsSOLUSU: TBCDField;
    ConsE120ObsSOLDAT: TDateTimeField;
    ConsE120ObsSOLHOR: TIntegerField;
    ConsE120ObsSITOBS: TStringField;
    ConsE120ObsAREOBS: TStringField;
    ConsE120ObsAPRRPR: TStringField;
    ConsE120ObsSEQIPD: TIntegerField;
    ConsE120ObsSEQISP: TIntegerField;
    ConsE120ObsUSU_NUMCOM: TIntegerField;
    ConsE120ObsCODCLI: TIntegerField;
    ConsE120ObsDATEMI: TDateTimeField;
    ConsE120ObsVLRLIQ: TBCDField;
    ConsE120ObsSITPED: TIntegerField;
    ConsE120ObsCODREP: TIntegerField;
    ConsE120ObsNOMCLI: TStringField;
    ConsE120ObsCGCCPF: TBCDField;
    ConsE120ObsENDCLI: TStringField;
    ConsE120ObsCEPCLI: TIntegerField;
    ConsE120ObsBAICLI: TStringField;
    ConsE120ObsCIDCLI: TStringField;
    ConsE120ObsSIGUFS: TStringField;
    ConsE120ObsNOMREP: TStringField;
    ConsE120ObsAPEREP: TStringField;
    LDsCli: TLabel;
    ConsE120ObsNENCLI: TStringField;
    ConsE120ObsFONCLI: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    DBText3: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    procedure ConsE120ObsAfterScroll(DataSet: TDataSet);
    procedure BMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsObsPedidos: TFConsObsPedidos;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFConsObsPedidos.BMostrarClick(Sender: TObject);
begin
   if EdDatIni.Date = 0 then
      begin
        ShowMessage('Informe a data inicial');
        ActiveControl := EdDatIni;
        Abort;
      end
   else
   if EdDatFim.Date = 0 then
      begin
        ShowMessage('Informe a data final');
        ActiveControl := EdDatFim;
        Abort;
      end;

    ConsE120Obs.Close;
    ConsE120Obs.Parameters.ParamByName('DATINI').Value := EdDatIni.Date;
    ConsE120Obs.Parameters.ParamByName('DATFIM').Value := EdDatFim.Date;
    ConsE120Obs.Open;

end;

procedure TFConsObsPedidos.ConsE120ObsAfterScroll(DataSet: TDataSet);
var vaEndCli : string;
begin
 LDsCli.Caption := '';
              vaEndCli := IntToStr(ConsE120ObsCODCLI.AsInteger) +'  -  '+
              ConsE120ObsNOMCLI.Value +'  -  '+
              ConsE120ObsENDCLI.Value+'  -  '+
              ConsE120ObsNENCLI.Value+'  -  '+
              ConsE120ObsBAICLI.Value+'  -  '+
              ConsE120ObsCIDCLI.Value+'  -  '+
              ConsE120ObsSIGUFS.Value+'  -  '+
              ConsE120ObsFONCLI.Value;
              LDsCli.Caption := vaEndCli;
end;

procedure TFConsObsPedidos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    //GRID ZEBRADA
    if odd(ConsE120Obs.RecNo) then
    DBGrid1.Canvas.Brush.Color:= clmenubar
    else
    DBGrid1.Canvas.Brush.Color:= clCream;

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

procedure TFConsObsPedidos.FormShow(Sender: TObject);
begin
  EdDatIni.Date := date;
  EdDatFim.Date := date;
end;

end.
