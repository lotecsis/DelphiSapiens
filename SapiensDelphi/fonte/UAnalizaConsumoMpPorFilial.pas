unit UAnalizaConsumoMpPorFilial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit,
  DBClient;

type
  TFAnalizaConsumoMpPorFilial = class(TForm)
    dbg1: TDBGrid;
    dsClientConsUsu_T700Ana: TDataSource;
    btnMostrar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtCodAna: TCurrencyEdit;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    procedure btnMostrarClick(Sender: TObject);
    procedure dbg1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnalizaConsumoMpPorFilial: TFAnalizaConsumoMpPorFilial;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFAnalizaConsumoMpPorFilial.btnMostrarClick(Sender: TObject);
begin
  DmOra.ClientConsUsu_T700Ana.Close;
  DmOra.ConsUsu_T700Ana.Close;
  DmOra.ConsUsu_T700Ana.SQL.Clear;
  DmOra.ConsUsu_T700Ana.SQL.Add('select usu_t700ana.*,');
  DmOra.ConsUsu_T700Ana.SQL.Add('      e075pro.despro,e075pro.unimed');
  DmOra.ConsUsu_T700Ana.SQL.Add('  from usu_t700ana');
  DmOra.ConsUsu_T700Ana.SQL.Add('  inner join e075pro on e075pro.codemp = usu_t700ana.usu_codemp and');
  DmOra.ConsUsu_T700Ana.SQL.Add('                        e075pro.codpro = usu_t700ana.usu_codpro');
  DmOra.ConsUsu_T700Ana.SQL.Add(' where');
  DmOra.ConsUsu_T700Ana.SQL.Add(' usu_t700ana.usu_codana <> 999999'); //so para deixar o where fixo

    if edtCodAna.Value > 0 then
       begin
         DmOra.ConsUsu_T700Ana.SQL.Add(' and usu_t700ana.usu_codana = :codana');
         DmOra.ConsUsu_T700Ana.Parameters.ParamByName('codana').Value := edtCodAna.AsInteger;
       end;

    if edtDatIni.Date <> 0 then
       begin
         DmOra.ConsUsu_T700Ana.SQL.Add(' and usu_t700ana.usu_perini = :perini');
         DmOra.ConsUsu_T700Ana.Parameters.ParamByName('perini').Value := edtDatIni.Date;
       end;

    if edtDatFim.Date <> 0 then
       begin
         DmOra.ConsUsu_T700Ana.SQL.Add(' and usu_t700ana.usu_perfin = :perfin');
         DmOra.ConsUsu_T700Ana.Parameters.ParamByName('perfin').Value := edtDatFim.Date;
       end;


  DmOra.ConsUsu_T700Ana.SQL.Add('');
  DmOra.ConsUsu_T700Ana.Open;
  DmOra.ClientConsUsu_T700Ana.Open;
end;

procedure TFAnalizaConsumoMpPorFilial.dbg1TitleClick(Column: TColumn);
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

end;

end.
