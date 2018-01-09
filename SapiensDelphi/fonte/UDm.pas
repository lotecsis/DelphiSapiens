unit UDm;

interface

uses
  SysUtils, Classes, DB, ADODB, DBClient, Provider, DateUtils;

type
  TDm = class(TDataModule)
    ADOBanco: TADOConnection;
    CadFormulario: TADOQuery;
    CadFormularioUSU_CODFOR: TIntegerField;
    CadFormularioUSU_NOMFOR: TStringField;
    CadFormularioUSU_DESFOR: TStringField;
    ConsFormulario: TADOQuery;
    ConsFormularioUSU_CODFOR: TIntegerField;
    ConsFormularioUSU_NOMFOR: TStringField;
    ConsFormularioUSU_DESFOR: TStringField;
    ConsUltimoFormulario: TADOQuery;
    ConsUltimoFormularioULTIMO: TBCDField;
    CadUsu_TNivAce: TADOQuery;
    CadUsu_TNivAceUSU_CODNIV: TIntegerField;
    CadUsu_TNivAceUSU_DESNIV: TStringField;
    ConsUltimoNivAce: TADOQuery;
    ConsUltimoNivAceULTIMO: TBCDField;
    ConsUsu_TNivAce: TADOQuery;
    ConsUsu_TNivAceUSU_CODNIV: TIntegerField;
    ConsUsu_TNivAceUSU_DESNIV: TStringField;
    CadUsu_ForNiv: TADOQuery;
    CadUsu_ForNivUSU_CODCOM: TIntegerField;
    CadUsu_ForNivUSU_CODNIV: TIntegerField;
    CadUsu_ForNivUSU_CODFOR: TIntegerField;
    CadUsu_ForNivUSU_FORLIB: TStringField;
    ConsUltimoForNiv: TADOQuery;
    ConsUltimoForNivULTIMO: TBCDField;
    ApagaUsu_TForNiv: TADOQuery;
    ApagaUsu_TForNivUSU_CODCOM: TIntegerField;
    ApagaUsu_TForNivUSU_CODNIV: TIntegerField;
    ApagaUsu_TForNivUSU_CODFOR: TIntegerField;
    ApagaUsu_TForNivUSU_FORLIB: TStringField;
    CadUsu_TR999Usu: TADOQuery;
    CadUsu_TR999UsuUSU_CODUSU: TIntegerField;
    CadUsu_TR999UsuUSU_NOMUSU: TStringField;
    CadUsu_TR999UsuUSU_SENUSU: TStringField;
    CadUsu_TR999UsuUSU_SITUSU: TStringField;
    CadUsu_TR999UsuUSU_LOGUSU: TStringField;
    CadUsu_TR999UsuUSU_CODNIV: TIntegerField;
    ConsR999Usu: TADOQuery;
    ConsR999UsuCODUSU: TBCDField;
    ConsR999UsuNOMUSU: TStringField;
    ConsR999UsuTIPCOL: TStringField;
    ConsR999UsuNUMEMP: TStringField;
    ConsR999UsuCODFIL: TStringField;
    ConsR999UsuCODLOC: TStringField;
    ConsR999UsuNUMCAD: TStringField;
    ConsUsu_TR999Usu: TADOQuery;
    Provider_R999Usu: TDataSetProvider;
    Client_R999Usu: TClientDataSet;
    Client_R999UsuCODUSU: TBCDField;
    Client_R999UsuNOMUSU: TStringField;
    Client_R999UsuTIPCOL: TStringField;
    Client_R999UsuNUMEMP: TStringField;
    Client_R999UsuCODFIL: TStringField;
    Client_R999UsuCODLOC: TStringField;
    Client_R999UsuNUMCAD: TStringField;
    ConsUsu_TNivAce2: TADOQuery;
    ConsUsu_TNivAce2USU_CODNIV: TIntegerField;
    ConsUsu_TNivAce2USU_DESNIV: TStringField;
    ConsUsu_TForNiv: TADOQuery;
    ConsUsu_TForNivUSU_CODCOM: TIntegerField;
    ConsUsu_TForNivUSU_CODNIV: TIntegerField;
    ConsUsu_TForNivUSU_CODFOR: TIntegerField;
    ConsUsu_TForNivUSU_FORLIB: TStringField;
    ConsUsu_TForNivUSU_CODFOR_1: TIntegerField;
    ConsUsu_TForNivUSU_NOMFOR: TStringField;
    ConsUsu_TForNivUSU_DESFOR: TStringField;
    ConsUsu_TForNiv2: TADOQuery;
    ProviderUsu_TForNiv2: TDataSetProvider;
    ClientUsu_TForNiv2: TClientDataSet;
    ConsUsu_TForNiv2USU_CODCOM: TIntegerField;
    ConsUsu_TForNiv2USU_CODNIV: TIntegerField;
    ConsUsu_TForNiv2USU_CODFOR: TIntegerField;
    ConsUsu_TForNiv2USU_FORLIB: TStringField;
    ConsUsu_TForNiv2USU_CODFOR_1: TIntegerField;
    ConsUsu_TForNiv2USU_NOMFOR: TStringField;
    ConsUsu_TForNiv2USU_DESFOR: TStringField;
    ClientUsu_TForNiv2USU_CODCOM: TIntegerField;
    ClientUsu_TForNiv2USU_CODNIV: TIntegerField;
    ClientUsu_TForNiv2USU_CODFOR: TIntegerField;
    ClientUsu_TForNiv2USU_FORLIB: TStringField;
    ClientUsu_TForNiv2USU_CODFOR_1: TIntegerField;
    ClientUsu_TForNiv2USU_NOMFOR: TStringField;
    ClientUsu_TForNiv2USU_DESFOR: TStringField;
    ConsUsu_TR999usuNiv: TADOQuery;
    ConsUsu_TR999usuNivUSU_CODUSU: TIntegerField;
    ConsUsu_TR999usuNivUSU_NOMUSU: TStringField;
    ConsUsu_TR999usuNivUSU_SENUSU: TStringField;
    ConsUsu_TR999usuNivUSU_SITUSU: TStringField;
    ConsUsu_TR999usuNivUSU_LOGUSU: TStringField;
    ConsUsu_TR999usuNivUSU_CODNIV: TIntegerField;
    ProviderUsu_TR999Usu: TDataSetProvider;
    ClientConsUsu_TR999Usu: TClientDataSet;
    ConsUsu_TR999UsuUSU_CODUSU: TIntegerField;
    ConsUsu_TR999UsuUSU_NOMUSU: TStringField;
    ConsUsu_TR999UsuUSU_SENUSU: TStringField;
    ConsUsu_TR999UsuUSU_SITUSU: TStringField;
    ConsUsu_TR999UsuUSU_LOGUSU: TStringField;
    ConsUsu_TR999UsuUSU_CODNIV: TIntegerField;
    ClientConsUsu_TR999UsuUSU_CODUSU: TIntegerField;
    ClientConsUsu_TR999UsuUSU_NOMUSU: TStringField;
    ClientConsUsu_TR999UsuUSU_SENUSU: TStringField;
    ClientConsUsu_TR999UsuUSU_SITUSU: TStringField;
    ClientConsUsu_TR999UsuUSU_LOGUSU: TStringField;
    ClientConsUsu_TR999UsuUSU_CODNIV: TIntegerField;
    ConsUsuarioLogin: TADOQuery;
    ConsUsuarioLoginUSU_CODUSU: TIntegerField;
    ConsUsuarioLoginUSU_NOMUSU: TStringField;
    ConsUsuarioLoginUSU_SENUSU: TStringField;
    ConsUsuarioLoginUSU_SITUSU: TStringField;
    ConsUsuarioLoginUSU_LOGUSU: TStringField;
    ConsUsuarioLoginUSU_CODNIV: TIntegerField;
    ConsValidaMenu: TADOQuery;
    ConsValidaMenuUSU_FORLIB: TStringField;
    ClientCargasTempMed3: TClientDataSet;
    ClientCargasTempMed3NUMANE: TIntegerField;
    ClientCargasTempMed3QTDPED: TIntegerField;
    ClientCargasTempMed3TEMPMED: TIntegerField;
    PedidosTempMedio: TADOQuery;
    ConsSql: TADOQuery;
    ClientPedidosTempMedio: TClientDataSet;
    ProviderPedidosTempMedio: TDataSetProvider;
    ClientPedidosTempMedioNUMPED: TIntegerField;
    ClientPedidosTempMedioDATA_EMISSAO: TDateTimeField;
    ClientPedidosTempMedioDATA_FAT: TDateTimeField;
    ClientPedidosTempMedioCODCLI: TIntegerField;
    ClientPedidosTempMedioNOMCLI: TStringField;
    ClientPedidosTempMedioCIDCLI: TStringField;
    ClientPedidosTempMedioSIGUFS: TStringField;
    ClientPedidosTempMedioAPEREP: TStringField;
    ClientPedidosTempMediovnQtdDias: TIntegerField;
    PedidosQtdDias: TADOQuery;
    PedidosQtdDiasNUMPED: TIntegerField;
    PedidosQtdDiasDATA_EMISSAO: TDateTimeField;
    PedidosQtdDiasDATA_FAT: TDateTimeField;
    ClientCargasTempMed3vnTotalPedidos: TAggregateField;
    ClientCargasTempMed: TClientDataSet;
    ClientCargasTempMedNUMANE: TIntegerField;
    ClientCargasTempMedQTDPED: TIntegerField;
    ClientCargasTempMedTEMPMED: TIntegerField;
    ClientCargasTempMedQTDDIAS: TIntegerField;
    ClientCargasTempMedvnTotalDias: TAggregateField;
    ClientCargasTempMedvnTotalPedidos: TAggregateField;
    CadUSU_TDescRep: TADOQuery;
    CadUSU_TDescRepUSU_SEQDES: TIntegerField;
    CadUSU_TDescRepUSU_ESTOF: TBCDField;
    CadUSU_TDescRepUSU_COLCH: TBCDField;
    CadUSU_TDescRepUSU_CODREP: TIntegerField;
    CadUSU_TDescRepUSU_CODCLI: TIntegerField;
    CadUSU_TDescRepUSU_CODPRO: TStringField;
    CadUSU_TDescRepUSU_CODEMP: TIntegerField;
    CadUSU_TDescRepUSU_DATCAD: TDateTimeField;
    CadUSU_TDescRepUSU_CODUSU: TIntegerField;
    CadUSU_TDescRepUSU_DATVAL: TDateTimeField;
    ConsUSU_TDescRep: TADOQuery;
    ConsUSU_TDescRepUSU_SEQDES: TIntegerField;
    ConsUSU_TDescRepUSU_ESTOF: TBCDField;
    ConsUSU_TDescRepUSU_COLCH: TBCDField;
    ConsUSU_TDescRepUSU_CODREP: TIntegerField;
    ConsUSU_TDescRepUSU_CODCLI: TIntegerField;
    ConsUSU_TDescRepUSU_CODPRO: TStringField;
    ConsUSU_TDescRepUSU_CODEMP: TIntegerField;
    ConsUSU_TDescRepUSU_DATCAD: TDateTimeField;
    ConsUSU_TDescRepUSU_CODUSU: TIntegerField;
    ConsUSU_TDescRepUSU_DATVAL: TDateTimeField;
    ConsUSU_TDescRepNOMCLI: TStringField;
    ConsUSU_TDescRepDESPRO: TStringField;
    ValidaDescRep: TADOQuery;
    ValidaDescRepCODEMP: TIntegerField;
    ValidaDescRepCODFIL: TIntegerField;
    ValidaDescRepNUMPED: TIntegerField;
    ValidaDescRepCODPRO: TStringField;
    ValidaDescRepCODDER: TStringField;
    ValidaDescRepCODFAM: TStringField;
    ValidaDescRepTNSPRO: TStringField;
    ValidaDescRepQTDPED: TFMTBCDField;
    ValidaDescRepQTDCAN: TFMTBCDField;
    ValidaDescRepQTDABE: TFMTBCDField;
    ValidaDescRepQTDFAT: TFMTBCDField;
    ValidaDescRepCODTPR: TStringField;
    ValidaDescRepPREUNI: TFMTBCDField;
    ValidaDescRepVLRBRU: TBCDField;
    ValidaDescRepVLRLIQ: TBCDField;
    ValidaDescRepCODREP: TIntegerField;
    ValidaDescRepUSU_PRECAR: TIntegerField;
    ValidaDescRepNOMCLI: TStringField;
    ValidaDescRepCIDCLI: TStringField;
    ValidaDescRepSIGUFS: TStringField;
    ValidaDescRepNOMREP: TStringField;
    ValidaDescRepAPEREP: TStringField;
    ValidaDescRepPRETAB: TFMTBCDField;
    CadUsu_TDescRepH: TADOQuery;
    CadUsu_TDescRepHUSU_CODEMP: TIntegerField;
    CadUsu_TDescRepHUSU_CODFIL: TIntegerField;
    CadUsu_TDescRepHUSU_NUMPED: TIntegerField;
    CadUsu_TDescRepHUSU_CODPRO: TStringField;
    CadUsu_TDescRepHUSU_CODDER: TStringField;
    CadUsu_TDescRepHUSU_QTDPED: TFMTBCDField;
    CadUsu_TDescRepHUSU_QTDFAT: TFMTBCDField;
    CadUsu_TDescRepHUSU_QTDCAN: TFMTBCDField;
    CadUsu_TDescRepHUSU_QTDABE: TFMTBCDField;
    CadUsu_TDescRepHUSU_CODTPR: TStringField;
    CadUsu_TDescRepHUSU_PREUNI: TFMTBCDField;
    CadUsu_TDescRepHUSU_CODREP: TIntegerField;
    CadUsu_TDescRepHUSU_PRECAR: TIntegerField;
    CadUsu_TDescRepHUSU_CODCLI: TIntegerField;
    CadUsu_TDescRepHUSU_PRETAB: TFMTBCDField;
    CadUsu_TDescRepHUSU_SEQVAL: TIntegerField;
    CadUsu_TDescRepHUSU_SEQMOV: TIntegerField;
    CadUsu_TDescRepHUSU_DESLIB: TBCDField;
    CadUsu_TDescRepHUSU_DESAPL: TBCDField;
    ValidaDescRepCODCLI: TIntegerField;
    ValidaDescRepCODAGP: TStringField;
    CadUsu_TDescRepHUSU_OBSDES: TStringField;
    CadUsu_TDescRepHUSU_DATVAL: TDateTimeField;
    ConsUSU_TDescRepH: TADOQuery;
    ConsUSU_TDescRepHUSU_CODEMP: TIntegerField;
    ConsUSU_TDescRepHUSU_CODFIL: TIntegerField;
    ConsUSU_TDescRepHUSU_NUMPED: TIntegerField;
    ConsUSU_TDescRepHUSU_CODPRO: TStringField;
    ConsUSU_TDescRepHUSU_CODDER: TStringField;
    ConsUSU_TDescRepHUSU_QTDPED: TFMTBCDField;
    ConsUSU_TDescRepHUSU_QTDFAT: TFMTBCDField;
    ConsUSU_TDescRepHUSU_QTDCAN: TFMTBCDField;
    ConsUSU_TDescRepHUSU_QTDABE: TFMTBCDField;
    ConsUSU_TDescRepHUSU_CODTPR: TStringField;
    ConsUSU_TDescRepHUSU_PREUNI: TFMTBCDField;
    ConsUSU_TDescRepHUSU_CODREP: TIntegerField;
    ConsUSU_TDescRepHUSU_PRECAR: TIntegerField;
    ConsUSU_TDescRepHUSU_CODCLI: TIntegerField;
    ConsUSU_TDescRepHUSU_PRETAB: TFMTBCDField;
    ConsUSU_TDescRepHUSU_SEQVAL: TIntegerField;
    ConsUSU_TDescRepHUSU_SEQMOV: TIntegerField;
    ConsUSU_TDescRepHUSU_DESLIB: TBCDField;
    ConsUSU_TDescRepHUSU_DESAPL: TBCDField;
    ConsUSU_TDescRepHUSU_OBSDES: TStringField;
    ConsUSU_TDescRepHUSU_DATVAL: TDateTimeField;
    ConsUSU_TDescRepHNOMCLI: TStringField;
    ConsUSU_TDescRepHCIDCLI: TStringField;
    ConsUSU_TDescRepHSIGUFS: TStringField;
    ConsUSU_TDescRepHNOMREP: TStringField;
    ConsUSU_TDescRepHAPEREP: TStringField;
    ConsUSU_TDescRepHDESPRO: TStringField;
    ProviderConsUSU_TDescRepH: TDataSetProvider;
    ClientConsUSU_TDescRepH: TClientDataSet;
    ClientConsUSU_TDescRepHUSU_CODEMP: TIntegerField;
    ClientConsUSU_TDescRepHUSU_CODFIL: TIntegerField;
    ClientConsUSU_TDescRepHUSU_NUMPED: TIntegerField;
    ClientConsUSU_TDescRepHUSU_CODPRO: TStringField;
    ClientConsUSU_TDescRepHUSU_CODDER: TStringField;
    ClientConsUSU_TDescRepHUSU_QTDPED: TFMTBCDField;
    ClientConsUSU_TDescRepHUSU_QTDFAT: TFMTBCDField;
    ClientConsUSU_TDescRepHUSU_QTDCAN: TFMTBCDField;
    ClientConsUSU_TDescRepHUSU_QTDABE: TFMTBCDField;
    ClientConsUSU_TDescRepHUSU_CODTPR: TStringField;
    ClientConsUSU_TDescRepHUSU_PREUNI: TFMTBCDField;
    ClientConsUSU_TDescRepHUSU_CODREP: TIntegerField;
    ClientConsUSU_TDescRepHUSU_PRECAR: TIntegerField;
    ClientConsUSU_TDescRepHUSU_CODCLI: TIntegerField;
    ClientConsUSU_TDescRepHUSU_PRETAB: TFMTBCDField;
    ClientConsUSU_TDescRepHUSU_SEQVAL: TIntegerField;
    ClientConsUSU_TDescRepHUSU_SEQMOV: TIntegerField;
    ClientConsUSU_TDescRepHUSU_DESLIB: TBCDField;
    ClientConsUSU_TDescRepHUSU_DESAPL: TBCDField;
    ClientConsUSU_TDescRepHUSU_OBSDES: TStringField;
    ClientConsUSU_TDescRepHUSU_DATVAL: TDateTimeField;
    ClientConsUSU_TDescRepHNOMCLI: TStringField;
    ClientConsUSU_TDescRepHCIDCLI: TStringField;
    ClientConsUSU_TDescRepHSIGUFS: TStringField;
    ClientConsUSU_TDescRepHNOMREP: TStringField;
    ClientConsUSU_TDescRepHAPEREP: TStringField;
    ClientConsUSU_TDescRepHDESPRO: TStringField;
    ValidaDescRepCODCPG: TStringField;
    ValidaDescRepDESCPG: TStringField;
    CadUSU_TDescRepUSU_CODCPG: TStringField;
    ConsUSU_TDescRepUSU_CODCPG: TStringField;
    ConsUSU_TDescRepDESCPG: TStringField;
    CadUsu_TDescRepHUSU_JUSOBS: TStringField;
    CadUsu_TDescRepHUSU_CODCPG: TStringField;
    ConsUSU_TDescRepHUSU_JUSOBS: TStringField;
    ConsUSU_TDescRepHUSU_CODCPG: TStringField;
    ClientConsUSU_TDescRepHUSU_JUSOBS: TStringField;
    ClientConsUSU_TDescRepHUSU_CODCPG: TStringField;
    ConsUSU_TDescRepHDESCPG: TStringField;
    ClientConsUSU_TDescRepHDESCPG: TStringField;
    CadUsu_TDescRepHUSU_REGAPL: TStringField;
    ConsUSU_TDescRepHUSU_REGAPL: TStringField;
    ClientConsUSU_TDescRepHUSU_REGAPL: TStringField;
    ValidaDescRepUSU_GERNPD: TStringField;
    procedure CadFormularioBeforePost(DataSet: TDataSet);
    procedure CadUsu_TNivAceBeforePost(DataSet: TDataSet);
    procedure CadUsu_ForNivBeforePost(DataSet: TDataSet);
    procedure ConsUsu_TNivAce2AfterScroll(DataSet: TDataSet);
    procedure ClientCargasTempMed3AfterScroll(DataSet: TDataSet);
    procedure ClientPedidosTempMedioCalcFields(DataSet: TDataSet);
    procedure ClientCargasTempMedAfterScroll(DataSet: TDataSet);
    procedure ClientConsUSU_TDescRepHAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

uses UTempoMedioPedidos;

{$R *.dfm}

procedure TDm.CadFormularioBeforePost(DataSet: TDataSet);
begin
if Dm.CadFormulario.State in [dsinsert] then
  begin
     dm.ConsUltimoFormulario.Close;
     dm.ConsUltimoFormulario.Open;
     if dm.ConsUltimoFormularioULTIMO.Value = 0 then
      CadFormularioUSU_CODFOR.Value := 1
     else
      dm.CadFormularioUSU_CODFOR.Value := dm.ConsUltimoFormularioULTIMO.AsInteger;

  end

end;

procedure TDm.CadUsu_TNivAceBeforePost(DataSet: TDataSet);
begin
  if CadUsu_TNivAce.State in [dsinsert] then
    begin
      ConsUltimoNivAce.Close;
      ConsUltimoNivAce.Open;
      if ConsUltimoNivAceULTIMO.Value = 0 then
        CadUsu_TNivAceUSU_CODNIV.Value := 1
      else
        CadUsu_TNivAceUSU_CODNIV.Value := ConsUltimoNivAceULTIMO.AsInteger;
    end;
end;

procedure TDm.ClientCargasTempMedAfterScroll(DataSet: TDataSet);
begin
if FTempoMedioPedidos.vaCalculando = 'N' then
     begin
       PedidosTempMedio.Close;
       ClientPedidosTempMedio.Close;
       PedidosTempMedio.Parameters.ParamByName('NUMANE').Value := ClientCargasTempMedNUMANE.Value;
       PedidosTempMedio.Open;
       ClientPedidosTempMedio.Open;
     end;
end;

procedure TDm.ClientConsUSU_TDescRepHAfterScroll(DataSet: TDataSet);
begin
  CadUsu_TDescRepH.Close;
  CadUsu_TDescRepH.Parameters.ParamByName('SEQVAL').Value := ClientConsUSU_TDescRepHUSU_SEQVAL.Value;
  CadUsu_TDescRepH.Parameters.ParamByName('SEQMOV').Value := ClientConsUSU_TDescRepHUSU_SEQMOV.Value;
  CadUsu_TDescRepH.Parameters.ParamByName('PRECAR').Value := ClientConsUSU_TDescRepHUSU_PRECAR.Value;
  CadUsu_TDescRepH.Open;

end;

procedure TDm.ClientCargasTempMed3AfterScroll(DataSet: TDataSet);
begin
  if FTempoMedioPedidos.vaCalculando = 'N' then
     begin
       PedidosTempMedio.Close;
       ClientPedidosTempMedio.Close;
       PedidosTempMedio.Parameters.ParamByName('NUMANE').Value := ClientCargasTempMedNUMANE.Value;
       PedidosTempMedio.Open;
       ClientPedidosTempMedio.Open;
     end;
end;

procedure TDm.ClientPedidosTempMedioCalcFields(DataSet: TDataSet);
begin
  ClientPedidosTempMediovnQtdDias.AsInteger := DaysBetween(ClientPedidosTempMedioDATA_EMISSAO.AsDateTime,ClientPedidosTempMedioDATA_FAT.AsDateTime);
end;

procedure TDm.CadUsu_ForNivBeforePost(DataSet: TDataSet);
begin
  if CadUsu_ForNiv.State in [dsinsert] then
    begin
      ConsUltimoForNiv.Close;
      ConsUltimoForNiv.Open;
      if ConsUltimoForNivULTIMO.Value = 0 then
          CadUsu_ForNivUSU_CODCOM.Value := 1
      else
          CadUsu_ForNivUSU_CODCOM.Value := ConsUltimoForNivULTIMO.AsInteger;
    end;
end;

procedure TDm.ConsUsu_TNivAce2AfterScroll(DataSet: TDataSet);
begin
    ConsUsu_TForNiv.Close;
    ConsUsu_TForNiv.Parameters.ParamByName('codniv').Value :=
    ConsUsu_TNivAce2USU_CODNIV.Value;
    ConsUsu_TForNiv.Open;

    ConsUsu_TR999usuNiv.Close;
    ConsUsu_TR999usuNiv.Parameters.ParamByName('codniv').Value :=
    ConsUsu_TNivAce2USU_CODNIV.Value;
    ConsUsu_TR999usuNiv.Open;


end;

end.

