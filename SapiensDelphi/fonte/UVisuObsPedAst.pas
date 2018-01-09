unit UVisuObsPedAst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB;

type
  TFVisuObsPedAst = class(TForm)
    DBGrid1: TDBGrid;
    ConsE120Obs: TADOQuery;
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
    DsConsE120Obs: TDataSource;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVisuObsPedAst: TFVisuObsPedAst;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFVisuObsPedAst.DBGrid1DrawColumnCell(Sender: TObject;
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
  //  Font.Style := [fsbold]
    end;

    TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

end.
