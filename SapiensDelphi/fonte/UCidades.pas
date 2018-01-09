unit UCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TFCidades = class(TForm)
    EdNomCid: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    EdSigUfs: TEdit;
    DsCadUsu_TCidades: TDataSource;
    procedure EdNomCidChange(Sender: TObject);
    procedure DsCadUsu_TCidadesStateChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
    vaStatus : TDataSetState;
  public
    { Public declarations }
  end;

var
  FCidades: TFCidades;

implementation

uses UDmOra, UDm2, UConsGeralNfEnt;

{$R *.dfm}

procedure TFCidades.DBGrid1ColExit(Sender: TObject);
begin
   if vaStatus in [dsinsert,dsedit] then
      begin//1
         if (DBGrid1.SelectedField.FieldName = 'USU_CODREP') then
            begin//2
              if DmOra.CadUsu_TCidadesUSU_CODREP.AsInteger <> 0 then
                 begin//6
                     DmOra.ConsSql.Close;
                     DmOra.ConsSql.SQL.Clear;
                     DmOra.ConsSql.SQL.Add('select e090rep.codrep,e090rep.aperep from e090rep where e090rep.codrep = :codrep');
                     DmOra.ConsSql.Parameters.ParamByName('codrep').Value := DmOra.CadUsu_TCidadesUSU_CODREP.AsInteger;
                     DmOra.ConsSql.Open;
                     if DmOra.ConsSql.IsEmpty then
                        begin//3
                           Application.MessageBox('Representante não encontrado!','Aviso', MB_ICONWARNING+MB_OK);
                           DmOra.CadUsu_TCidadesUSU_APEREP.Value := '';
                           DBGrid1.SelectedIndex := 4;
                           Abort;
                        end//3
                     else
                        begin//5
                           DmOra.CadUsu_TCidadesUSU_APEREP.Value := DmOra.ConsSql.FieldByName('aperep').Value;
                        end;//5
                 end//6
              else
                 begin//7
                    DmOra.CadUsu_TCidadesUSU_APEREP.Value := '';
                 end;//7
            end;//2

      end;//1

end;

procedure TFCidades.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//GRID ZEBRADA
    if odd(DmOra.CadUsu_TCidades.RecNo) then
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

procedure TFCidades.DBGrid1EditButtonClick(Sender: TObject);
begin
if vaStatus in [dsinsert,dsedit] then
      begin//1
         if (DBGrid1.SelectedField.FieldName = 'USU_CODREP') then
            begin//2
                FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
                FConsGeralNfEnt.vaSql := 'select e090rep.codrep,e090rep.nomrep,e090rep.aperep,e090rep.cgccpf,';
                FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e090rep.cidrep,e090rep.sigufs,e090rep.endrep,e090rep.bairep';
                FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e090rep';
                FConsGeralNfEnt.vbWhere := false;
                FConsGeralNfEnt.vaCampo := 'CodRep';
                FConsGeralNfEnt.vnColuna := 1;
                FConsGeralNfEnt.vaTela := 'FCidades';
                FConsGeralNfEnt.ShowModal;
                FreeAndNil(FConsGeralNfEnt);

            end;//2
      end;//1
end;

procedure TFCidades.DsCadUsu_TCidadesStateChange(Sender: TObject);
begin
  vaStatus := DmOra.CadUsu_TCidades.State;
end;

procedure TFCidades.EdNomCidChange(Sender: TObject);
begin

 if not (vaStatus  in [dsInsert,dsEdit]) then
    begin
       DmOra.CadUsu_TCidades.Close;
       DmOra.CadUsu_TCidades.SQL.Clear;
       DmOra.CadUsu_TCidades.SQL.Add('select usu_tcidades.* from usu_tcidades');
       DmOra.CadUsu_TCidades.SQL.Add(' where usu_tcidades.usu_nomcid like '+QuotedStr('%'+EdNomCid.Text+'%'));

       if trim(EdSigUfs.Text) <> '' then
          begin
            DmOra.CadUsu_TCidades.SQL.Add('AND usu_tcidades.USU_SIGUFS = '+QuotedStr(trim(EdSigUfs.Text)));
          end;

       DmOra.CadUsu_TCidades.SQL.Add('order by usu_tcidades.usu_nomcid');
       DmOra.CadUsu_TCidades.Open;
    end;

end;

end.
