unit UConsMensgAlertaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, DBCtrls, DateUtils;

type
  TFConsMensgAlertaClientes = class(TForm)
    DBGrid1: TDBGrid;
    ConsUSU_T085MAC: TADOQuery;
    ConsUSU_T085MACUSU_CODCLI: TIntegerField;
    ConsUSU_T085MACUSU_NUMMEN: TIntegerField;
    ConsUSU_T085MACUSU_MENSAG: TStringField;
    ConsUSU_T085MACUSU_DATCAD: TDateTimeField;
    ConsUSU_T085MACUSU_HORMEN: TIntegerField;
    ConsUSU_T085MACUSU_USUCAD: TIntegerField;
    ConsUSU_T085MACUSU_DATALE: TDateTimeField;
    ConsUSU_T085MACUSU_MENRES: TStringField;
    ConsUSU_T085MACUSU_NOMUSU: TStringField;
    ConsUSU_T085MACNOMCLI: TStringField;
    ConsUSU_T085MACAPECLI: TStringField;
    ConsUSU_T085MACCIDCLI: TStringField;
    ConsUSU_T085MACSIGUFS: TStringField;
    ConsUSU_T085MACFONCLI: TStringField;
    DsConsUSU_T085MAC: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBText7: TDBText;
    Label5: TLabel;
    DBText8: TDBText;
    Label3: TLabel;
    DBText9: TDBText;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    DBText10: TDBText;
    ConsUSU_T085MACvnQtdDia: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure ConsUSU_T085MACCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsMensgAlertaClientes: TFConsMensgAlertaClientes;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFConsMensgAlertaClientes.ConsUSU_T085MACCalcFields(
  DataSet: TDataSet);
var vnqtdDia : integer;
begin

  vnqtdDia := DaysBetween(ConsUSU_T085MACUSU_DATCAD.AsDateTime,Date);

  ConsUSU_T085MACvnQtdDia.Value := vnqtdDia;

end;

procedure TFConsMensgAlertaClientes.FormShow(Sender: TObject);
begin
ConsUSU_T085MAC.Close;
ConsUSU_T085MAC.Open;
end;

end.
