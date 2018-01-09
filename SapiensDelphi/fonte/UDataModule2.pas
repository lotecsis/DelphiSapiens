unit UDataModule2;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBQuery, IBCustomDataSet;

type
  TDataModule2 = class(TDataModule)
    IBDFone: TIBDataSet;
    IBDFoneCD_FONE: TIntegerField;
    IBDFoneNUM_FONE: TIBStringField;
    IBDFoneDDD: TIBStringField;
    IBDFoneDS_FONE: TIBStringField;
    IBDFoneCD_PESSOA: TIntegerField;
    IBQUltimoFone: TIBQuery;
    IBQUltimoFoneULTIMO: TLargeintField;
    IBDEmail: TIBDataSet;
    IBQUltimoEmail: TIBQuery;
    IBQUltimoEmailULTIMO: TLargeintField;
    IBDContatos: TIBDataSet;
    IBQUltimoContato: TIBQuery;
    IBQUltimoContatoULTIMO: TLargeintField;
    IBDPessoa: TIBDataSet;
    IBDPessoaJu: TIBDataSet;
    IBQUltimaPessoa: TIBQuery;
    IBQUltimaPessoaULTIMO: TLargeintField;
    IBQUltimaPessoaJu: TIBQuery;
    IBQUltimaPessoaJuULTIMO: TLargeintField;
    IBDPessoaCD_PESSOA: TIntegerField;
    IBDPessoaCD_CIDADE: TIntegerField;
    IBDPessoaRUA: TIBStringField;
    IBDPessoaBAIRRO: TIBStringField;
    IBDPessoaCEP: TIBStringField;
    IBDPessoaCOMPLEMENTO: TIBStringField;
    IBDPessoaHOME_PAGE: TIBStringField;
    IBDPessoaDT_CADASTRO: TDateField;
    IBDPessoaSITUACAO: TIBStringField;
    IBDPessoaOBSERVACOES: TIBStringField;
    IBDPessoaUSUARIO: TIBStringField;
    IBDPessoaJuCD_PESSOA_JU: TIntegerField;
    IBDPessoaJuCD_PESSOA: TIntegerField;
    IBDPessoaJuCGC: TIBStringField;
    IBDPessoaJuINSC_ESTADUAL: TIBStringField;
    IBDPessoaJuRZ_SOCIAL: TIBStringField;
    IBDPessoaJuNM_FANTAZIA: TIBStringField;
    IBDPessoaJuCLI_FOR: TIBStringField;
    IBDPessoaJuBLOQUEADO: TIBStringField;
    IBDPessoaJuRM_ATIVIDADE: TIBStringField;
    IBDPessoaJuCD_REGIAO: TIntegerField;
    IBDEmailCD_EMAIL: TIntegerField;
    IBDEmailCD_PESSOA: TIntegerField;
    IBDEmailEMAIL: TIBStringField;
    IBDEmailDS_EMAIL: TIBStringField;
    IBDContatosCD_CONTATO: TIntegerField;
    IBDContatosCD_PESSOA: TIntegerField;
    IBDContatosDS_CONTATO: TIBStringField;
    IBDContatosTEL: TIBStringField;
    IBDContatosCARGO: TIBStringField;
    IBQConsGeralPessoa: TIBQuery;
    IBQConsGeralPessoaCD_PESSOA: TIntegerField;
    IBQConsGeralPessoaSITUACAO: TIBStringField;
    IBQConsGeralPessoaNM_CIDADE: TIBStringField;
    IBQConsGeralPessoaSIGLA_UF: TIBStringField;
    IBQConsGeralPessoaCGC: TIBStringField;
    IBQConsGeralPessoaINSC_ESTADUAL: TIBStringField;
    IBQConsGeralPessoaRZ_SOCIAL: TIBStringField;
    IBQConsGeralPessoaNM_FANTAZIA: TIBStringField;
    IBQConsGeralPessoaCLI_FOR: TIBStringField;
    IBQConsGeralPessoaBLOQUEADO: TIBStringField;
    IBQConsGeralPessoaRM_ATIVIDADE: TIBStringField;
    IBQConsGeralPessoaCD_REGIAO: TIntegerField;
    IBQApagaFone: TIBQuery;
    IBQApagaEmail: TIBQuery;
    IBQApagaContato: TIBQuery;
    IBDAlertaPessoa: TIBDataSet;
    IBDAlertaPessoaCD_ALERTA: TIntegerField;
    IBDAlertaPessoaCD_PESSOA: TIntegerField;
    IBDAlertaPessoaDS_ALERTA: TIBStringField;
    IBDAlertaPessoaUSUARIOO: TIBStringField;
    IBDAlertaPessoaDT_ALERTA: TDateField;
    IBDAlertaPessoaHR_ALERTA: TTimeField;
    IBQUltimoAlerta: TIBQuery;
    IBQUltimoAlertaULTIMO: TLargeintField;
    IBQApagaAlerta: TIBQuery;
    IBQExisteAlerta: TIBQuery;
    IBQExisteAlertaCD_ALERTA: TIntegerField;
    IBQExisteAlertaCD_PESSOA: TIntegerField;
    IBQExisteAlertaDS_ALERTA: TIBStringField;
    IBQExisteAlertaUSUARIOO: TIBStringField;
    IBQExisteAlertaDT_ALERTA: TDateField;
    IBQExisteAlertaHR_ALERTA: TTimeField;
    IBQUltimaPessoaFi: TIBQuery;
    IBDPessoaFi: TIBDataSet;
    IBQUltimaPessoaFiULTIMO: TLargeintField;
    IBDPessoaFiCD_PESSOA_FI: TIntegerField;
    IBDPessoaFiCD_PESSOA: TIntegerField;
    IBDPessoaFiRG: TIBStringField;
    IBDPessoaFiCPF: TIBStringField;
    IBDPessoaFiDT_NASCIMENTO: TDateField;
    IBDPessoaFiSEXO: TIBStringField;
    IBDPessoaFiNM_PESSOA: TIBStringField;
    IBQConsPesFi: TIBQuery;
    IBQConsPesFiCD_PESSOA: TIntegerField;
    IBQConsPesFiCD_CIDADE: TIntegerField;
    IBQConsPesFiRUA: TIBStringField;
    IBQConsPesFiBAIRRO: TIBStringField;
    IBQConsPesFiCEP: TIBStringField;
    IBQConsPesFiCOMPLEMENTO: TIBStringField;
    IBQConsPesFiHOME_PAGE: TIBStringField;
    IBQConsPesFiDT_CADASTRO: TDateField;
    IBQConsPesFiSITUACAO: TIBStringField;
    IBQConsPesFiOBSERVACOES: TIBStringField;
    IBQConsPesFiUSUARIO: TIBStringField;
    IBQConsPesFiNM_CIDADE: TIBStringField;
    IBQConsPesFiSIGLA_UF: TIBStringField;
    IBQConsPesFiCD_PESSOA_FI: TIntegerField;
    IBQConsPesFiCD_PESSOA1: TIntegerField;
    IBQConsPesFiRG: TIBStringField;
    IBQConsPesFiCPF: TIBStringField;
    IBQConsPesFiDT_NASCIMENTO: TDateField;
    IBQConsPesFiSEXO: TIBStringField;
    IBQConsPesFiNM_PESSOA: TIBStringField;
    IBQConsGeralPessoaCD_PESSOA_JU: TIntegerField;
    IBDRegiao: TIBDataSet;
    IBDRegiaoCD_REGIAO: TIntegerField;
    IBDRegiaoCD_TABELA_PRECO: TIntegerField;
    IBDRegiaoDS_REGIAO: TIBStringField;
    IBDRegiaoPOPULACAO: TLargeintField;
    IBDRegiaoOBSERVACOES: TIBStringField;
    IBDRegiaoDT_CAD: TDateField;
    IBDRegiaoUSUARIOO: TIBStringField;
    IBQUltimaRegiao: TIBQuery;
    IBQUltimaRegiaoULTIMO: TLargeintField;
    IBQConsRegiao: TIBQuery;
    IBQConsRegiaoCD_REGIAO: TIntegerField;
    IBQConsRegiaoCD_TABELA_PRECO: TIntegerField;
    IBQConsRegiaoDS_REGIAO: TIBStringField;
    IBQConsRegiaoPOPULACAO: TLargeintField;
    IBQConsRegiaoOBSERVACOES: TIBStringField;
    IBQConsRegiaoDT_CAD: TDateField;
    IBQConsRegiaoUSUARIOO: TIBStringField;
    IBQConsRegiaoDS_TABELA: TIBStringField;
    IBQExistCliForRep: TIBQuery;
    IBQExistCliForRepCD_PESSOA_JU: TIntegerField;
    IBQValidaPessoaCnpj: TIBQuery;
    IBQValidaPessoaCnpjCD_PESSOA_JU: TIntegerField;
    IBQValidaPessoaCnpjCGC: TIBStringField;
    IBQValidaPessoaCpf: TIBQuery;
    IBQValidaPessoaCpfCD_PESSOA_FI: TIntegerField;
    IBQValidaPessoaCpfCPF: TIBStringField;
    procedure IBDPessoaBeforePost(DataSet: TDataSet);
    procedure IBDPessoaJuBeforePost(DataSet: TDataSet);
    procedure IBDFoneBeforePost(DataSet: TDataSet);
    procedure IBDEmailBeforePost(DataSet: TDataSet);
    procedure IBDContatosBeforePost(DataSet: TDataSet);
    procedure IBDAlertaPessoaBeforePost(DataSet: TDataSet);
    procedure IBDRegiaoBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

uses UPessoaJuridica, UDataModule1;

{$R *.dfm}

procedure TDataModule2.IBDPessoaBeforePost(DataSet: TDataSet);
begin
{if DataModule2.IBDPessoa.State in [dsinsert] then
  begin
    DataModule2.IBQUltimaPessoa.Close;
    DataModule2.IBQUltimaPessoa.Open;
    if DataModule2.IBQUltimaPessoaULTIMO.AsInteger = 0 then
        DataModule2.IBDPessoaCD_PESSOA.AsInteger := 1
    else
        DataModule2.IBDPessoaCD_PESSOA.AsInteger :=
        DataModule2.IBQUltimaPessoaULTIMO.AsInteger;
end;}
end;

procedure TDataModule2.IBDPessoaJuBeforePost(DataSet: TDataSet);
begin
{if DataModule2.IBDPessoaJu.State in [dsinsert] then
  begin
    DataModule2.IBQUltimaPessoaJu.Close;
    DataModule2.IBQUltimaPessoaJu.Open;
    if DataModule2.IBQUltimaPessoaJuULTIMO.AsInteger = 0 then
        DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger := 1
    else
        DataModule2.IBDPessoaJuCD_PESSOA_JU.AsInteger :=
        DataModule2.IBQUltimaPessoaJuULTIMO.AsInteger;
end;}
end;

procedure TDataModule2.IBDFoneBeforePost(DataSet: TDataSet);
begin
if DataModule2.IBDFone.State in [dsinsert] then
  begin
    DataModule2.IBQUltimoFone.Close;
    DataModule2.IBQUltimoFone.Open;
    if DataModule2.IBQUltimoFoneULTIMO.AsInteger = 0 then
        DataModule2.IBDFoneCD_FONE.AsInteger := 1
    else
        DataModule2.IBDFoneCD_FONE.AsInteger :=
        DataModule2.IBQUltimoFoneULTIMO.AsInteger;
end;
end;

procedure TDataModule2.IBDEmailBeforePost(DataSet: TDataSet);
begin
if DataModule2.IBDEmail.State in [dsinsert] then
  begin
    DataModule2.IBQUltimoEmail.Close;
    DataModule2.IBQUltimoEmail.Open;
    if DataModule2.IBQUltimoEmailULTIMO.AsInteger = 0 then
        DataModule2.IBDEmailCD_EMAIL.AsInteger := 1
    else
        DataModule2.IBDEmailCD_EMAIL.AsInteger :=
        DataModule2.IBQUltimoEmailULTIMO.AsInteger;
end;
end;

procedure TDataModule2.IBDContatosBeforePost(DataSet: TDataSet);
begin
if DataModule2.IBDContatos.State in [dsinsert] then
  begin
    DataModule2.IBQUltimoContato.Close;
    DataModule2.IBQUltimoContato.Open;
    if DataModule2.IBQUltimoContatoULTIMO.AsInteger = 0 then
        DataModule2.IBDContatosCD_CONTATO.AsInteger := 1
    else
        DataModule2.IBDContatosCD_CONTATO.AsInteger :=
        DataModule2.IBQUltimoContatoULTIMO.AsInteger;
end;
end;

procedure TDataModule2.IBDAlertaPessoaBeforePost(DataSet: TDataSet);
begin
if DataModule2.IBDAlertaPessoa.State in [dsinsert] then
  begin
    DataModule2.IBQUltimoAlerta.Close;
    DataModule2.IBQUltimoAlerta.Open;
    if DataModule2.IBQUltimoAlertaULTIMO.AsInteger = 0 then
        DataModule2.IBDAlertaPessoaCD_ALERTA.AsInteger := 1
    else
        DataModule2.IBDAlertaPessoaCD_ALERTA.AsInteger :=
        DataModule2.IBQUltimoAlertaULTIMO.AsInteger;
end;
end;

procedure TDataModule2.IBDRegiaoBeforePost(DataSet: TDataSet);
begin
if DataModule2.IBDRegiao.State in [dsinsert] then
  begin
    DataModule2.IBQUltimaRegiao.Close;
    DataModule2.IBQUltimaRegiao.Open;
    if DataModule2.IBQUltimaRegiaoULTIMO.AsInteger = 0 then
        DataModule2.IBDRegiaoCD_REGIAO.AsInteger := 1
    else
        DataModule2.IBDRegiaoCD_REGIAO.AsInteger :=
        DataModule2.IBQUltimaRegiaoULTIMO.AsInteger;
end;
end;

procedure TDataModule2.DataModuleCreate(Sender: TObject);
var i : Integer;
begin
  for i := 0 to ComponentCount - 1 do
          begin
            if Components[i] is TIBDataSet then
              begin
                 TIBDataSet(Components[i]).Active := true;;
              end;
          end;

end;

end.
