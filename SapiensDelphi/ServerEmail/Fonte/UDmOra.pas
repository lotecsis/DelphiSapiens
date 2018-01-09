unit UDmOra;

interface

uses
  SysUtils, Classes, DB, ADODB, DBClient, DateUtils;

type
  TDmOra = class(TDataModule)
    Banco: TADOConnection;
    ConsE301Tcr: TADOQuery;
    ConsE301TcrCODCLI: TIntegerField;
    ConsE301TcrNOMCLI: TStringField;
    ConsE301TcrCIDCLI: TStringField;
    ConsE301TcrSIGUFS: TStringField;
    ConsE301TcrEMANFE: TStringField;
    ConsE301TcrINTNET: TStringField;
    ConsE301TcrVLRABE: TFMTBCDField;
    ListaEnvio: TClientDataSet;
    ListaEnvioCodCli: TIntegerField;
    ListaEnvioNomCli: TStringField;
    ListaEnvioEmaCli: TStringField;
    ListaEnvioSaldo: TFloatField;
    ListaEnvioIn_enviado: TStringField;
    ConsTitulos: TADOQuery;
    ConsTitulosCODCLI: TIntegerField;
    ConsTitulosNOMCLI: TStringField;
    ConsTitulosCODEMP: TIntegerField;
    ConsTitulosCODFIL: TIntegerField;
    ConsTitulosNUMTIT: TStringField;
    ConsTitulosCODTPT: TStringField;
    ConsTitulosSITTIT: TStringField;
    ConsTitulosDATEMI: TDateTimeField;
    ConsTitulosVCTPRO: TDateTimeField;
    ConsTitulosVLRABE: TBCDField;
    ConsTitulosvnQtdDias: TIntegerField;
    ConsTitulosNUMNFV: TIntegerField;
    ListaEnvioIn_Sel: TStringField;
    ListaEnvioIteSel: TStringField;
    procedure ListaEnvioAfterScroll(DataSet: TDataSet);
    procedure ConsTitulosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmOra: TDmOra;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TDmOra.ConsTitulosCalcFields(DataSet: TDataSet);
begin
  ConsTitulosvnQtdDias.AsInteger := DaysBetween(Date,ConsTitulosVCTPRO.AsDateTime);
  if ConsTitulosVCTPRO.AsDateTime < date then
     begin
       ConsTitulosvnQtdDias.AsInteger := ConsTitulosvnQtdDias.AsInteger * (-1);
     end;

end;

procedure TDmOra.ListaEnvioAfterScroll(DataSet: TDataSet);
begin
  ConsTitulos.Close;
  ConsTitulos.Parameters.ParamByName('DATINI').Value := ConsE301Tcr.Parameters.ParamByName('DATINI').Value;
  ConsTitulos.Parameters.ParamByName('DATFIM').Value := ConsE301Tcr.Parameters.ParamByName('DATFIM').Value;
  ConsTitulos.Parameters.ParamByName('CODCLI').Value := ListaEnvioCodCli.Value;
  ConsTitulos.Open;
end;

end.
