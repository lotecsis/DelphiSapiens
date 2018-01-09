unit UConsPedidos10D;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, DBClient, StdCtrls,DateUtils;

type
  TFConsPedidos10D = class(TForm)
    DBGrid1: TDBGrid;
    ConsUsu_T085Tep: TADOQuery;
    ConsUsu_T085TepUSU_CODCLI: TIntegerField;
    ConsUsu_T085TepUSU_NOMCLI: TStringField;
    ConsPedidos: TADOQuery;
    ConsPedidosCODEMP: TIntegerField;
    ConsPedidosCODFIL: TIntegerField;
    ConsPedidosNUMPED: TIntegerField;
    ConsPedidosTNSPRO: TStringField;
    ConsPedidosDATEMI: TDateTimeField;
    ConsPedidosTOTPED: TFMTBCDField;
    ConsPedidosNOMCLI: TStringField;
    ConsPedidosCIDCLI: TStringField;
    ConsPedidosSIGUFS: TStringField;
    ConsPedidosCODCLI: TIntegerField;
    DsClientPedidos: TDataSource;
    ConsPedidosFONCLI: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    ConsE120Ipd: TADOQuery;
    ConsE120IpdCODPRO: TStringField;
    ConsE120IpdCODDER: TStringField;
    ConsE120IpdCPLIPD: TStringField;
    ConsE120IpdQTDPED: TFMTBCDField;
    ConsE120IpdQTDCAN: TFMTBCDField;
    ConsE120IpdQTDABE: TFMTBCDField;
    ConsE120IpdPREUNI: TFMTBCDField;
    ConsE120IpdVLRBRU: TBCDField;
    ConsE120IpdUSU_TOTDSC: TBCDField;
    DsConsE120Ipd: TDataSource;
    ClientPedidos: TClientDataSet;
    ClientPedidosNUMPED: TIntegerField;
    ClientPedidosDATEMI: TDateField;
    ClientPedidosVLRPED: TFloatField;
    ClientPedidosCODCLI: TIntegerField;
    ClientPedidosNOMCLI: TStringField;
    ClientPedidosCIDCLI: TStringField;
    ClientPedidosSIGUFS: TStringField;
    ClientPedidosFONCLI: TStringField;
    ClientPedidosQTDDIA: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure ClientPedidos1AfterScroll(DataSet: TDataSet);
    procedure ClientPedidosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsPedidos10D: TFConsPedidos10D;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFConsPedidos10D.ClientPedidosAfterScroll(DataSet: TDataSet);
begin
  ConsE120Ipd.Close;
  ConsE120Ipd.Parameters.ParamByName('NUMPED').Value := ClientPedidosNUMPED.Value;
  ConsE120Ipd.Open;
end;

procedure TFConsPedidos10D.ClientPedidos1AfterScroll(DataSet: TDataSet);
begin
  ConsE120Ipd.Close;
  ConsE120Ipd.Parameters.ParamByName('NUMPED').Value := ClientPedidosNUMPED.Value;
  ConsE120Ipd.Open;
end;

procedure TFConsPedidos10D.FormShow(Sender: TObject);
VAR vdDatEmi : TDate;
    vnQtdDia : integer;
begin
  vdDatEmi := (date - 10);

  ConsUsu_T085Tep.Close;
  ConsUsu_T085Tep.Open;
  ConsUsu_T085Tep.First;
  while not ConsUsu_T085Tep.Eof do
    begin//1
       ConsPedidos.Close;
       ConsPedidos.Parameters.ParamByName('CODCLI').Value := ConsUsu_T085TepUSU_CODCLI.Value;
       ConsPedidos.Parameters.ParamByName('DATEMI').Value := vdDatEmi;
       ConsPedidos.Open;
       if not ConsPedidos.IsEmpty then
          begin//2
            ClientPedidos.Open;
            ClientPedidos.Insert;
            ClientPedidosNUMPED.Value := ConsPedidosNUMPED.Value;
            ClientPedidosDATEMI.Value := ConsPedidosDATEMI.Value;
            ClientPedidosVLRPED.Value := ConsPedidosTOTPED.AsFloat;
            ClientPedidosCODCLI.Value := ConsPedidosCODCLI.Value;
            ClientPedidosNOMCLI.Value := ConsPedidosNOMCLI.Value;
            ClientPedidosCIDCLI.Value := ConsPedidosCIDCLI.Value;
            ClientPedidosSIGUFS.Value := ConsPedidosSIGUFS.Value;
            ClientPedidosFONCLI.Value := ConsPedidosFONCLI.Value;

             vnqtdDia := DaysBetween(ClientPedidosDATEMI.AsDateTime,Date);

            ClientPedidosQTDDIA.Value := vnqtdDia;
            ClientPedidos.Post;
          end;//2

      ConsUsu_T085Tep.Next;
    end;//1

    ClientPedidos.IndexFieldNames := 'DATEMI';
    ClientPedidos.First;
    ClientPedidos.Next;
    ClientPedidos.First;

end;

end.
