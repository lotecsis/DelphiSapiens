unit UImportaExcelCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, comobj, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB, xmldom,
  DBClient, Provider, Xmlxform;

type
  TFImportaExcelCidades = class(TForm)
    btnCarregarXml: TBitBtn;
    dsClientCidadesIBGE: TDataSource;
    dbg1: TDBGrid;
    dlgOpen: TOpenDialog;
    btnProcessar: TBitBtn;
    procedure btnCarregarXmlClick(Sender: TObject);
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImportaExcelCidades: TFImportaExcelCidades;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFImportaExcelCidades.btnCarregarXmlClick(Sender: TObject);

begin
   if dlgOpen.Execute then
      begin
        DmOra.XMLTransformProviderCidades.XMLDataFile := dlgOpen.FileName;
        DmOra.ClientCidadesIBGE.Close;
        DmOra.ClientCidadesIBGE.Open;
      end;


  end;

procedure TFImportaExcelCidades.btnProcessarClick(Sender: TObject);
begin
  DmOra.ClientCidadesIBGE.First;
  while not DmOra.ClientCidadesIBGE.Eof do
    begin
      DmOra.CadE008Rai.Close;
      DmOra.CadE008Rai.Parameters.ParamByName('CODRAI').Value := DmOra.ClientCidadesIBGEB.AsInteger;
      DmOra.CadE008Rai.Open;
      if not DmOra.CadE008Rai.IsEmpty then
         begin
           DmOra.CadE008Rai.Edit;
           DmOra.CadE008RaiUSU_GENTILICO.Value := DmOra.ClientCidadesIBGEC.Value;
           DmOra.CadE008RaiUSU_POPULACAO.Value := StrToInt(DmOra.ClientCidadesIBGED.Value);
           DmOra.CadE008RaiUSU_PIB.Value := StrToFloat(DmOra.ClientCidadesIBGEF.Value);
          // DmOra.CadE008RaiUSU_AREAT.AsLargeInt := DmOra.ClientCidadesIBGEE.AsLargeInt;
           DmOra.CadE008Rai.Post;
         end;

      DmOra.ClientCidadesIBGE.Next;
    end;
end;

end.
