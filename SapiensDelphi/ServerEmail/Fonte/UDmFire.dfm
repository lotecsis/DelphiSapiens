object DmFire: TDmFire
  OldCreateOrder = False
  Height = 545
  Width = 682
  object Banco: TIBDatabase
    DatabaseName = 
      '192.168.10.44:C:\DelphiSapiens\SapiensDelphi\ServerEmail\Banco\B' +
      'ANCO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = ibtTransacao
    Left = 40
    Top = 16
  end
  object ibtTransacao: TIBTransaction
    DefaultDatabase = Banco
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 128
    Top = 16
  end
  object CadEnviados: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from ENVIADOS'
      'where'
      '  SEQENV = :OLD_SEQENV')
    InsertSQL.Strings = (
      'insert into ENVIADOS'
      '  (CODCLI, DATENV, EMAENV, HORENV, NOMCLI, SEQENV, VLRABE)'
      'values'
      
        '  (:CODCLI, :DATENV, :EMAENV, :HORENV, :NOMCLI, :SEQENV, :VLRABE' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  SEQENV,'
      '  DATENV,'
      '  HORENV,'
      '  CODCLI,'
      '  NOMCLI,'
      '  EMAENV,'
      '  VLRABE'
      'from ENVIADOS '
      'where'
      '  SEQENV = :SEQENV')
    SelectSQL.Strings = (
      'select * from ENVIADOS where seqenv = :seqenv')
    ModifySQL.Strings = (
      'update ENVIADOS'
      'set'
      '  CODCLI = :CODCLI,'
      '  DATENV = :DATENV,'
      '  EMAENV = :EMAENV,'
      '  HORENV = :HORENV,'
      '  NOMCLI = :NOMCLI,'
      '  SEQENV = :SEQENV,'
      '  VLRABE = :VLRABE'
      'where'
      '  SEQENV = :OLD_SEQENV')
    Left = 96
    Top = 128
    object CadEnviadosSEQENV: TIntegerField
      FieldName = 'SEQENV'
      Origin = '"ENVIADOS"."SEQENV"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadEnviadosDATENV: TDateField
      FieldName = 'DATENV'
      Origin = '"ENVIADOS"."DATENV"'
    end
    object CadEnviadosHORENV: TIBStringField
      FieldName = 'HORENV'
      Origin = '"ENVIADOS"."HORENV"'
      Size = 15
    end
    object CadEnviadosCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"ENVIADOS"."CODCLI"'
    end
    object CadEnviadosNOMCLI: TIBStringField
      FieldName = 'NOMCLI'
      Origin = '"ENVIADOS"."NOMCLI"'
      Size = 100
    end
    object CadEnviadosEMAENV: TIBStringField
      FieldName = 'EMAENV'
      Origin = '"ENVIADOS"."EMAENV"'
      Size = 100
    end
    object CadEnviadosVLRABE: TFloatField
      FieldName = 'VLRABE'
      Origin = '"ENVIADOS"."VLRABE"'
    end
  end
  object ConsSql: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    Left = 208
    Top = 128
  end
  object ConsEnvio: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'select enviados.seqenv from enviados'
      'where'
      'enviados.codcli = :codcli and'
      'enviados.datenv = :datenv')
    Left = 104
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codcli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datenv'
        ParamType = ptUnknown
      end>
    object ConsEnvioSEQENV: TIntegerField
      FieldName = 'SEQENV'
      Origin = '"ENVIADOS"."SEQENV"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
