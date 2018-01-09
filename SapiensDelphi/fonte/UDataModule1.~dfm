object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = ibacons
  Left = 192
  Top = 117
  Height = 600
  Width = 794
  object IBDBanco1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\SysLider\banco\SYSLIDER.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = IBTTransacao
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 40
    Top = 8
  end
  object IBTTransacao: TIBTransaction
    Active = True
    DefaultDatabase = IBDBanco1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 152
    Top = 8
  end
  object IBDFormularios: TIBDataSet
    Database = IBDBanco1
    Transaction = IBTTransacao
    BeforePost = IBDFormulariosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FORMULARIO'
      'where'
      '  CD_FORMULARIO = :OLD_CD_FORMULARIO')
    InsertSQL.Strings = (
      'insert into FORMULARIO'
      '  (CD_FORMULARIO, NM_FORMULARIO, DS_FORMULARIO)'
      'values'
      '  (:CD_FORMULARIO, :NM_FORMULARIO, :DS_FORMULARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_FORMULARIO,'
      '  NM_FORMULARIO,'
      '  DS_FORMULARIO'
      'from FORMULARIO '
      'where'
      '  CD_FORMULARIO = :CD_FORMULARIO')
    SelectSQL.Strings = (
      'select * from FORMULARIO where'
      'cd_formulario = :pformulario')
    ModifySQL.Strings = (
      'update FORMULARIO'
      'set'
      '  CD_FORMULARIO = :CD_FORMULARIO,'
      '  NM_FORMULARIO = :NM_FORMULARIO,'
      '  DS_FORMULARIO = :DS_FORMULARIO'
      'where'
      '  CD_FORMULARIO = :OLD_CD_FORMULARIO')
    Left = 32
    Top = 56
    object IBDFormulariosCD_FORMULARIO: TIntegerField
      FieldName = 'CD_FORMULARIO'
      Origin = 'FORMULARIO.CD_FORMULARIO'
      Required = True
    end
    object IBDFormulariosNM_FORMULARIO: TIBStringField
      FieldName = 'NM_FORMULARIO'
      Origin = 'FORMULARIO.NM_FORMULARIO'
      Size = 100
    end
    object IBDFormulariosDS_FORMULARIO: TIBStringField
      FieldName = 'DS_FORMULARIO'
      Origin = 'FORMULARIO.DS_FORMULARIO'
      Size = 100
    end
  end
  object IBQUltimoForm: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_formulario)+1 as ultimo from FORMULARIO')
    Left = 112
    Top = 56
    object IBQUltimoFormULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsultaForm: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FORMULARIO'
      'where'
      'cd_formulario = :pformulario')
    Left = 200
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pformulario'
        ParamType = ptUnknown
      end>
    object IBQConsultaFormCD_FORMULARIO: TIntegerField
      FieldName = 'CD_FORMULARIO'
      Origin = 'FORMULARIO.CD_FORMULARIO'
      Required = True
    end
    object IBQConsultaFormNM_FORMULARIO: TIBStringField
      FieldName = 'NM_FORMULARIO'
      Origin = 'FORMULARIO.NM_FORMULARIO'
      Size = 100
    end
    object IBQConsultaFormDS_FORMULARIO: TIBStringField
      FieldName = 'DS_FORMULARIO'
      Origin = 'FORMULARIO.DS_FORMULARIO'
      Size = 100
    end
  end
  object IBDCidade: TIBDataSet
    Database = IBDBanco1
    Transaction = IBTTransacao
    BeforePost = IBDCidadeBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CIDADE'
      'where'
      '  CD_CIDADE = :OLD_CD_CIDADE')
    InsertSQL.Strings = (
      'insert into CIDADE'
      '  (CD_CIDADE, NM_CIDADE, SIGLA_UF, CEP)'
      'values'
      '  (:CD_CIDADE, :NM_CIDADE, :SIGLA_UF, :CEP)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_CIDADE,'
      '  NM_CIDADE,'
      '  SIGLA_UF,'
      '  CEP'
      'from CIDADE '
      'where'
      '  CD_CIDADE = :CD_CIDADE')
    SelectSQL.Strings = (
      'select * from CIDADE'
      'where'
      'cd_cidade = :pcidade')
    ModifySQL.Strings = (
      'update CIDADE'
      'set'
      '  CD_CIDADE = :CD_CIDADE,'
      '  NM_CIDADE = :NM_CIDADE,'
      '  SIGLA_UF = :SIGLA_UF,'
      '  CEP = :CEP'
      'where'
      '  CD_CIDADE = :OLD_CD_CIDADE')
    Left = 24
    Top = 104
    object IBDCidadeCD_CIDADE: TIntegerField
      FieldName = 'CD_CIDADE'
      Origin = 'CIDADE.CD_CIDADE'
      Required = True
    end
    object IBDCidadeNM_CIDADE: TIBStringField
      FieldName = 'NM_CIDADE'
      Origin = 'CIDADE.NM_CIDADE'
      Required = True
      Size = 100
    end
    object IBDCidadeSIGLA_UF: TIBStringField
      FieldName = 'SIGLA_UF'
      Origin = 'CIDADE.SIGLA_UF'
      Size = 100
    end
    object IBDCidadeCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'CIDADE.CEP'
      EditMask = '00000\-9999;0;'
      Size = 15
    end
  end
  object IBQUltimaCidade: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_cidade)+1 as ultima from CIDADE')
    Left = 112
    Top = 104
    object IBQUltimaCidadeULTIMA: TLargeintField
      FieldName = 'ULTIMA'
    end
  end
  object IBQConsultaCidade: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CIDADE'
      'where cd_cidade = :pcidade')
    Left = 208
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcidade'
        ParamType = ptUnknown
      end>
    object IBQConsultaCidadeCD_CIDADE: TIntegerField
      FieldName = 'CD_CIDADE'
      Origin = 'CIDADE.CD_CIDADE'
      Required = True
    end
    object IBQConsultaCidadeNM_CIDADE: TIBStringField
      FieldName = 'NM_CIDADE'
      Origin = 'CIDADE.NM_CIDADE'
      Required = True
      Size = 100
    end
    object IBQConsultaCidadeSIGLA_UF: TIBStringField
      FieldName = 'SIGLA_UF'
      Origin = 'CIDADE.SIGLA_UF'
      Size = 100
    end
    object IBQConsultaCidadeCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'CIDADE.CEP'
      Size = 15
    end
  end
  object IBDGrupoUsuario: TIBDataSet
    Database = IBDBanco1
    Transaction = IBTTransacao
    BeforePost = IBDGrupoUsuarioBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from GRUPO_USUARIO'
      'where'
      '  CD_GRUPO = :OLD_CD_GRUPO')
    InsertSQL.Strings = (
      'insert into GRUPO_USUARIO'
      '  (CD_GRUPO, DS_GRUPO)'
      'values'
      '  (:CD_GRUPO, :DS_GRUPO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_GRUPO,'
      '  DS_GRUPO'
      'from GRUPO_USUARIO '
      'where'
      '  CD_GRUPO = :CD_GRUPO')
    SelectSQL.Strings = (
      'select * from GRUPO_USUARIO where cd_grupo = :pgrupo')
    ModifySQL.Strings = (
      'update GRUPO_USUARIO'
      'set'
      '  CD_GRUPO = :CD_GRUPO,'
      '  DS_GRUPO = :DS_GRUPO'
      'where'
      '  CD_GRUPO = :OLD_CD_GRUPO')
    Left = 24
    Top = 152
    object IBDGrupoUsuarioCD_GRUPO: TIntegerField
      FieldName = 'CD_GRUPO'
      Origin = 'GRUPO_USUARIO.CD_GRUPO'
      Required = True
    end
    object IBDGrupoUsuarioDS_GRUPO: TIBStringField
      FieldName = 'DS_GRUPO'
      Origin = 'GRUPO_USUARIO.DS_GRUPO'
      Size = 100
    end
  end
  object IBQUltimoGrupoUsuario: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_grupo)+1 as ultimo from GRUPO_USUARIO')
    Left = 128
    Top = 152
    object IBQUltimoGrupoUsuarioULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsGPUsuario: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GRUPO_USUARIO')
    Left = 240
    Top = 152
    object IBQConsGPUsuarioCD_GRUPO: TIntegerField
      FieldName = 'CD_GRUPO'
      Origin = 'GRUPO_USUARIO.CD_GRUPO'
      Required = True
    end
    object IBQConsGPUsuarioDS_GRUPO: TIBStringField
      FieldName = 'DS_GRUPO'
      Origin = 'GRUPO_USUARIO.DS_GRUPO'
      Size = 100
    end
  end
  object IBDUnMedida: TIBDataSet
    Database = IBDBanco1
    Transaction = IBTTransacao
    BeforePost = IBDUnMedidaBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from UNIDADE_MEDIDA'
      'where'
      '  CD_UNIDADE = :OLD_CD_UNIDADE')
    InsertSQL.Strings = (
      'insert into UNIDADE_MEDIDA'
      '  (CD_UNIDADE, SIGLA_UNIDADE, DS_UNIDADE, DT_CADASTRO, USUARIOO)'
      'values'
      '  (:CD_UNIDADE, :SIGLA_UNIDADE, :DS_UNIDADE, :DT_CADASTRO, '
      ':USUARIOO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_UNIDADE,'
      '  SIGLA_UNIDADE,'
      '  DS_UNIDADE,'
      '  DT_CADASTRO,'
      '  USUARIOO'
      'from UNIDADE_MEDIDA '
      'where'
      '  CD_UNIDADE = :CD_UNIDADE')
    SelectSQL.Strings = (
      'select * from UNIDADE_MEDIDA where cd_unidade = :punidade')
    ModifySQL.Strings = (
      'update UNIDADE_MEDIDA'
      'set'
      '  CD_UNIDADE = :CD_UNIDADE,'
      '  SIGLA_UNIDADE = :SIGLA_UNIDADE,'
      '  DS_UNIDADE = :DS_UNIDADE,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  USUARIOO = :USUARIOO'
      'where'
      '  CD_UNIDADE = :OLD_CD_UNIDADE')
    Left = 24
    Top = 208
    object IBDUnMedidaCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.CD_UNIDADE'
      Required = True
    end
    object IBDUnMedidaSIGLA_UNIDADE: TIBStringField
      FieldName = 'SIGLA_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.SIGLA_UNIDADE'
      Size = 2
    end
    object IBDUnMedidaDS_UNIDADE: TIBStringField
      FieldName = 'DS_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.DS_UNIDADE'
      Size = 50
    end
    object IBDUnMedidaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'UNIDADE_MEDIDA.DT_CADASTRO'
    end
    object IBDUnMedidaUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'UNIDADE_MEDIDA.USUARIOO'
      Size = 100
    end
  end
  object IBQUltimaUnMedida: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_unidade)+1 as ultimo from UNIDADE_MEDIDA')
    Left = 120
    Top = 208
    object IBQUltimaUnMedidaULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsUnMedida: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from UNIDADE_MEDIDA'
      'where cd_unidade = :punidade')
    Left = 232
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'punidade'
        ParamType = ptUnknown
      end>
    object IBQConsUnMedidaCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.CD_UNIDADE'
      Required = True
    end
    object IBQConsUnMedidaSIGLA_UNIDADE: TIBStringField
      FieldName = 'SIGLA_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.SIGLA_UNIDADE'
      Size = 2
    end
    object IBQConsUnMedidaDS_UNIDADE: TIBStringField
      FieldName = 'DS_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.DS_UNIDADE'
      Size = 50
    end
    object IBQConsUnMedidaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'UNIDADE_MEDIDA.DT_CADASTRO'
    end
    object IBQConsUnMedidaUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'UNIDADE_MEDIDA.USUARIOO'
      Size = 100
    end
  end
  object IBDClasse: TIBDataSet
    Database = IBDBanco1
    Transaction = IBTTransacao
    BeforePost = IBDClasseBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CLASSE_MAT_PRIMA'
      'where'
      '  CD_CLASSE = :OLD_CD_CLASSE')
    InsertSQL.Strings = (
      'insert into CLASSE_MAT_PRIMA'
      '  (CD_CLASSE, DS_CLASSE, SITUACAO, DT_CADASTRO, USUARIOO)'
      'values'
      '  (:CD_CLASSE, :DS_CLASSE, :SITUACAO, :DT_CADASTRO, :USUARIOO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_CLASSE,'
      '  DS_CLASSE,'
      '  SITUACAO,'
      '  DT_CADASTRO,'
      '  USUARIOO'
      'from CLASSE_MAT_PRIMA '
      'where'
      '  CD_CLASSE = :CD_CLASSE')
    SelectSQL.Strings = (
      'select * from CLASSE_MAT_PRIMA'
      'where cd_classe = :pclasse')
    ModifySQL.Strings = (
      'update CLASSE_MAT_PRIMA'
      'set'
      '  CD_CLASSE = :CD_CLASSE,'
      '  DS_CLASSE = :DS_CLASSE,'
      '  SITUACAO = :SITUACAO,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  USUARIOO = :USUARIOO'
      'where'
      '  CD_CLASSE = :OLD_CD_CLASSE')
    Left = 24
    Top = 264
    object IBDClasseCD_CLASSE: TIntegerField
      FieldName = 'CD_CLASSE'
      Origin = 'CLASSE_MAT_PRIMA.CD_CLASSE'
      Required = True
    end
    object IBDClasseDS_CLASSE: TIBStringField
      FieldName = 'DS_CLASSE'
      Origin = 'CLASSE_MAT_PRIMA.DS_CLASSE'
      Size = 100
    end
    object IBDClasseSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'CLASSE_MAT_PRIMA.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBDClasseDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'CLASSE_MAT_PRIMA.DT_CADASTRO'
    end
    object IBDClasseUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'CLASSE_MAT_PRIMA.USUARIOO'
      Size = 100
    end
  end
  object IBQUltimaClasse: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_classe)+1 as ultimo from CLASSE_MAT_PRIMA')
    Left = 104
    Top = 264
    object IBQUltimaClasseULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsClasse: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CLASSE_MAT_PRIMA '
      'where cd_classe = :pclasse')
    Left = 200
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pclasse'
        ParamType = ptUnknown
      end>
    object IBQConsClasseCD_CLASSE: TIntegerField
      FieldName = 'CD_CLASSE'
      Origin = 'CLASSE_MAT_PRIMA.CD_CLASSE'
      Required = True
    end
    object IBQConsClasseDS_CLASSE: TIBStringField
      FieldName = 'DS_CLASSE'
      Origin = 'CLASSE_MAT_PRIMA.DS_CLASSE'
      Size = 100
    end
    object IBQConsClasseSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'CLASSE_MAT_PRIMA.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBQConsClasseDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'CLASSE_MAT_PRIMA.DT_CADASTRO'
    end
    object IBQConsClasseUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'CLASSE_MAT_PRIMA.USUARIOO'
      Size = 100
    end
  end
  object IBDSetor: TIBDataSet
    Database = IBDBanco1
    Transaction = IBTTransacao
    BeforePost = IBDSetorBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SETOR'
      'where'
      '  CD_SETOR = :OLD_CD_SETOR')
    InsertSQL.Strings = (
      'insert into SETOR'
      '  (CD_SETOR, DS_SETOR, DT_CADASTRO, USUARIOO)'
      'values'
      '  (:CD_SETOR, :DS_SETOR, :DT_CADASTRO, :USUARIOO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_SETOR,'
      '  DS_SETOR,'
      '  DT_CADASTRO,'
      '  USUARIOO'
      'from SETOR '
      'where'
      '  CD_SETOR = :CD_SETOR')
    SelectSQL.Strings = (
      'select * from SETOR where cd_setor = :psetor')
    ModifySQL.Strings = (
      'update SETOR'
      'set'
      '  CD_SETOR = :CD_SETOR,'
      '  DS_SETOR = :DS_SETOR,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  USUARIOO = :USUARIOO'
      'where'
      '  CD_SETOR = :OLD_CD_SETOR')
    Left = 24
    Top = 320
    object IBDSetorCD_SETOR: TIntegerField
      FieldName = 'CD_SETOR'
      Origin = 'SETOR.CD_SETOR'
      Required = True
    end
    object IBDSetorDS_SETOR: TIBStringField
      FieldName = 'DS_SETOR'
      Origin = 'SETOR.DS_SETOR'
      Size = 100
    end
    object IBDSetorDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'SETOR.DT_CADASTRO'
    end
    object IBDSetorUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'SETOR.USUARIOO'
      Size = 100
    end
  end
  object IBQUltimoSetor: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_setor)+1 as ultimo from SETOR')
    Left = 104
    Top = 320
    object IBQUltimoSetorULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsSetor: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SETOR where cd_setor = :psetor')
    Left = 200
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'psetor'
        ParamType = ptUnknown
      end>
    object IBQConsSetorCD_SETOR: TIntegerField
      FieldName = 'CD_SETOR'
      Origin = 'SETOR.CD_SETOR'
      Required = True
    end
    object IBQConsSetorDS_SETOR: TIBStringField
      FieldName = 'DS_SETOR'
      Origin = 'SETOR.DS_SETOR'
      Size = 100
    end
    object IBQConsSetorDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'SETOR.DT_CADASTRO'
    end
    object IBQConsSetorUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'SETOR.USUARIOO'
      Size = 100
    end
  end
  object IBDCondPgto: TIBDataSet
    Database = IBDBanco1
    Transaction = IBTTransacao
    BeforePost = IBDCondPgtoBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CONDICAO_PGTO'
      'where'
      '  CD_COND_PGTO = :OLD_CD_COND_PGTO')
    InsertSQL.Strings = (
      'insert into CONDICAO_PGTO'
      '  (CD_COND_PGTO, DS_COND_PGTO, DT_CADASTRO, USUARIOO)'
      'values'
      '  (:CD_COND_PGTO, :DS_COND_PGTO, :DT_CADASTRO, :USUARIOO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_COND_PGTO,'
      '  DS_COND_PGTO,'
      '  DT_CADASTRO,'
      '  USUARIOO'
      'from CONDICAO_PGTO '
      'where'
      '  CD_COND_PGTO = :CD_COND_PGTO')
    SelectSQL.Strings = (
      'select * from CONDICAO_PGTO where cd_cond_pgto = :pcondicao')
    ModifySQL.Strings = (
      'update CONDICAO_PGTO'
      'set'
      '  CD_COND_PGTO = :CD_COND_PGTO,'
      '  DS_COND_PGTO = :DS_COND_PGTO,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  USUARIOO = :USUARIOO'
      'where'
      '  CD_COND_PGTO = :OLD_CD_COND_PGTO')
    Left = 24
    Top = 368
    object IBDCondPgtoCD_COND_PGTO: TIntegerField
      FieldName = 'CD_COND_PGTO'
      Origin = 'CONDICAO_PGTO.CD_COND_PGTO'
      Required = True
    end
    object IBDCondPgtoDS_COND_PGTO: TIBStringField
      FieldName = 'DS_COND_PGTO'
      Origin = 'CONDICAO_PGTO.DS_COND_PGTO'
      Size = 100
    end
    object IBDCondPgtoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'CONDICAO_PGTO.DT_CADASTRO'
    end
    object IBDCondPgtoUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'CONDICAO_PGTO.USUARIOO'
      Size = 100
    end
  end
  object IBQUltimaCondicao: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_cond_pgto)+1 as ultimo from CONDICAO_PGTO')
    Left = 120
    Top = 368
    object IBQUltimaCondicaoULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsCondPgto: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CONDICAO_PGTO'
      'where cd_cond_pgto = :pcondicao')
    Left = 224
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcondicao'
        ParamType = ptUnknown
      end>
    object IBQConsCondPgtoCD_COND_PGTO: TIntegerField
      FieldName = 'CD_COND_PGTO'
      Origin = 'CONDICAO_PGTO.CD_COND_PGTO'
      Required = True
    end
    object IBQConsCondPgtoDS_COND_PGTO: TIBStringField
      FieldName = 'DS_COND_PGTO'
      Origin = 'CONDICAO_PGTO.DS_COND_PGTO'
      Size = 100
    end
    object IBQConsCondPgtoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'CONDICAO_PGTO.DT_CADASTRO'
    end
    object IBQConsCondPgtoUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'CONDICAO_PGTO.USUARIOO'
      Size = 100
    end
  end
  object IBDTpCobranca: TIBDataSet
    Database = IBDBanco1
    Transaction = IBTTransacao
    BeforePost = IBDTpCobrancaBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TIPO_COBRANCA'
      'where'
      '  CD_TIPO_COBRANCA = :OLD_CD_TIPO_COBRANCA')
    InsertSQL.Strings = (
      'insert into TIPO_COBRANCA'
      '  (CD_TIPO_COBRANCA, DS_TIPO_COBRANCA, DT_CADASTRO, USUARIOO)'
      'values'
      
        '  (:CD_TIPO_COBRANCA, :DS_TIPO_COBRANCA, :DT_CADASTRO, :USUARIOO' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  CD_TIPO_COBRANCA,'
      '  DS_TIPO_COBRANCA,'
      '  DT_CADASTRO,'
      '  USUARIOO'
      'from TIPO_COBRANCA '
      'where'
      '  CD_TIPO_COBRANCA = :CD_TIPO_COBRANCA')
    SelectSQL.Strings = (
      'select * from TIPO_COBRANCA where cd_tipo_cobranca = :pcobranca')
    ModifySQL.Strings = (
      'update TIPO_COBRANCA'
      'set'
      '  CD_TIPO_COBRANCA = :CD_TIPO_COBRANCA,'
      '  DS_TIPO_COBRANCA = :DS_TIPO_COBRANCA,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  USUARIOO = :USUARIOO'
      'where'
      '  CD_TIPO_COBRANCA = :OLD_CD_TIPO_COBRANCA')
    Left = 32
    Top = 416
    object IBDTpCobrancaCD_TIPO_COBRANCA: TIntegerField
      FieldName = 'CD_TIPO_COBRANCA'
      Origin = 'TIPO_COBRANCA.CD_TIPO_COBRANCA'
      Required = True
    end
    object IBDTpCobrancaDS_TIPO_COBRANCA: TIBStringField
      FieldName = 'DS_TIPO_COBRANCA'
      Origin = 'TIPO_COBRANCA.DS_TIPO_COBRANCA'
      Size = 100
    end
    object IBDTpCobrancaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'TIPO_COBRANCA.DT_CADASTRO'
    end
    object IBDTpCobrancaUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'TIPO_COBRANCA.USUARIOO'
      Size = 100
    end
  end
  object IBQUltimoTpCobranca: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_tipo_cobranca)+1 as ultimo from TIPO_COBRANCA')
    Left = 136
    Top = 416
    object IBQUltimoTpCobrancaULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsTpCobranca: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TIPO_COBRANCA where cd_tipo_cobranca = :pcobranca')
    Left = 256
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcobranca'
        ParamType = ptUnknown
      end>
    object IBQConsTpCobrancaCD_TIPO_COBRANCA: TIntegerField
      FieldName = 'CD_TIPO_COBRANCA'
      Origin = 'TIPO_COBRANCA.CD_TIPO_COBRANCA'
      Required = True
    end
    object IBQConsTpCobrancaDS_TIPO_COBRANCA: TIBStringField
      FieldName = 'DS_TIPO_COBRANCA'
      Origin = 'TIPO_COBRANCA.DS_TIPO_COBRANCA'
      Size = 100
    end
    object IBQConsTpCobrancaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'TIPO_COBRANCA.DT_CADASTRO'
    end
    object IBQConsTpCobrancaUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'TIPO_COBRANCA.USUARIOO'
      Size = 100
    end
  end
  object IBDMateriaPrima: TIBDataSet
    Database = IBDBanco1
    Transaction = IBTTransacao
    BeforePost = IBDMateriaPrimaBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MATERIA_PRIMA'
      'where'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA')
    InsertSQL.Strings = (
      'insert into MATERIA_PRIMA'
      
        '  (CD_MAT_PRIMA, CD_SETOR, CD_CLASSE, CD_UN_MEDIDA, DS_MAT_PRIMA' +
        ', '
      'QTDE_EMBALAGEM, '
      
        '   VALOR, ESTOQUE_MINIMO, PESO, FORA_LINHA, IMAGEM, QTDE_ESTOQUE' +
        ', '
      'OBSERVACOES, '
      '   DT_CADASTRO, USUARIOO, CODIGO_BARRAS, IMAGEM_GRANDE, '
      'NM_IMAGEM_GRANDE, '
      '   NM_IMAGEM_PEQUENA)'
      'values'
      '  (:CD_MAT_PRIMA, :CD_SETOR, :CD_CLASSE, :CD_UN_MEDIDA, '
      ':DS_MAT_PRIMA, '
      
        '   :QTDE_EMBALAGEM, :VALOR, :ESTOQUE_MINIMO, :PESO, :FORA_LINHA,' +
        ' '
      ':IMAGEM, '
      '   :QTDE_ESTOQUE, :OBSERVACOES, :DT_CADASTRO, :USUARIOO, '
      ':CODIGO_BARRAS, '
      '   :IMAGEM_GRANDE, :NM_IMAGEM_GRANDE, :NM_IMAGEM_PEQUENA)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_MAT_PRIMA,'
      '  CD_SETOR,'
      '  CD_CLASSE,'
      '  CD_UN_MEDIDA,'
      '  DS_MAT_PRIMA,'
      '  QTDE_EMBALAGEM,'
      '  VALOR,'
      '  ESTOQUE_MINIMO,'
      '  PESO,'
      '  FORA_LINHA,'
      '  IMAGEM,'
      '  QTDE_ESTOQUE,'
      '  OBSERVACOES,'
      '  DT_CADASTRO,'
      '  USUARIOO,'
      '  CODIGO_BARRAS,'
      '  IMAGEM_GRANDE,'
      '  NM_IMAGEM_GRANDE,'
      '  NM_IMAGEM_PEQUENA'
      'from MATERIA_PRIMA '
      'where'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA')
    SelectSQL.Strings = (
      'select * from MATERIA_PRIMA where cd_mat_prima = :pmateria')
    ModifySQL.Strings = (
      'update MATERIA_PRIMA'
      'set'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA,'
      '  CD_SETOR = :CD_SETOR,'
      '  CD_CLASSE = :CD_CLASSE,'
      '  CD_UN_MEDIDA = :CD_UN_MEDIDA,'
      '  DS_MAT_PRIMA = :DS_MAT_PRIMA,'
      '  QTDE_EMBALAGEM = :QTDE_EMBALAGEM,'
      '  VALOR = :VALOR,'
      '  ESTOQUE_MINIMO = :ESTOQUE_MINIMO,'
      '  PESO = :PESO,'
      '  FORA_LINHA = :FORA_LINHA,'
      '  IMAGEM = :IMAGEM,'
      '  QTDE_ESTOQUE = :QTDE_ESTOQUE,'
      '  OBSERVACOES = :OBSERVACOES,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  USUARIOO = :USUARIOO,'
      '  CODIGO_BARRAS = :CODIGO_BARRAS,'
      '  IMAGEM_GRANDE = :IMAGEM_GRANDE,'
      '  NM_IMAGEM_GRANDE = :NM_IMAGEM_GRANDE,'
      '  NM_IMAGEM_PEQUENA = :NM_IMAGEM_PEQUENA'
      'where'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA')
    Left = 32
    Top = 464
    object IBDMateriaPrimaCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.CD_MAT_PRIMA'
      Required = True
    end
    object IBDMateriaPrimaCD_SETOR: TIntegerField
      FieldName = 'CD_SETOR'
      Origin = 'MATERIA_PRIMA.CD_SETOR'
      Required = True
    end
    object IBDMateriaPrimaCD_CLASSE: TIntegerField
      FieldName = 'CD_CLASSE'
      Origin = 'MATERIA_PRIMA.CD_CLASSE'
      Required = True
    end
    object IBDMateriaPrimaCD_UN_MEDIDA: TIntegerField
      FieldName = 'CD_UN_MEDIDA'
      Origin = 'MATERIA_PRIMA.CD_UN_MEDIDA'
      Required = True
    end
    object IBDMateriaPrimaDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.DS_MAT_PRIMA'
      Size = 100
    end
    object IBDMateriaPrimaQTDE_EMBALAGEM: TIBBCDField
      FieldName = 'QTDE_EMBALAGEM'
      Origin = 'MATERIA_PRIMA.QTDE_EMBALAGEM'
      Precision = 9
      Size = 2
    end
    object IBDMateriaPrimaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'MATERIA_PRIMA.VALOR'
      Precision = 9
      Size = 2
    end
    object IBDMateriaPrimaESTOQUE_MINIMO: TIBBCDField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'MATERIA_PRIMA.ESTOQUE_MINIMO'
      Precision = 9
      Size = 2
    end
    object IBDMateriaPrimaPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = 'MATERIA_PRIMA.PESO'
      Precision = 9
      Size = 2
    end
    object IBDMateriaPrimaFORA_LINHA: TIBStringField
      FieldName = 'FORA_LINHA'
      Origin = 'MATERIA_PRIMA.FORA_LINHA'
      FixedChar = True
      Size = 1
    end
    object IBDMateriaPrimaIMAGEM: TIBStringField
      FieldName = 'IMAGEM'
      Origin = 'MATERIA_PRIMA.IMAGEM'
      Size = 500
    end
    object IBDMateriaPrimaQTDE_ESTOQUE: TIBBCDField
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'MATERIA_PRIMA.QTDE_ESTOQUE'
      Precision = 9
      Size = 2
    end
    object IBDMateriaPrimaOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'MATERIA_PRIMA.OBSERVACOES'
      Size = 300
    end
    object IBDMateriaPrimaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'MATERIA_PRIMA.DT_CADASTRO'
    end
    object IBDMateriaPrimaUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'MATERIA_PRIMA.USUARIOO'
      Size = 100
    end
    object IBDMateriaPrimaCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'MATERIA_PRIMA.CODIGO_BARRAS'
    end
    object IBDMateriaPrimaIMAGEM_GRANDE: TIBStringField
      FieldName = 'IMAGEM_GRANDE'
      Origin = 'MATERIA_PRIMA.IMAGEM_GRANDE'
      Size = 500
    end
    object IBDMateriaPrimaNM_IMAGEM_GRANDE: TIBStringField
      FieldName = 'NM_IMAGEM_GRANDE'
      Origin = 'MATERIA_PRIMA.NM_IMAGEM_GRANDE'
      Size = 100
    end
    object IBDMateriaPrimaNM_IMAGEM_PEQUENA: TIBStringField
      FieldName = 'NM_IMAGEM_PEQUENA'
      Origin = 'MATERIA_PRIMA.NM_IMAGEM_PEQUENA'
      Size = 100
    end
  end
  object IBQUltimaMatPrima: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_mat_prima)+1 as ultimo from MATERIA_PRIMA')
    Left = 136
    Top = 464
    object IBQUltimaMatPrimaULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsMatPrima: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select mt.*, st.ds_setor, un.ds_unidade, un.sigla_unidade, cl.ds' +
        '_classe'
      
        '   from MATERIA_PRIMA mt, SETOR st, UNIDADE_MEDIDA un, CLASSE_MA' +
        'T_PRIMA cl'
      '   where'
      '   mt.cd_setor = st.cd_setor and'
      '   mt.cd_classe = cl.cd_classe and'
      '   mt.cd_un_medida = un.cd_unidade')
    Left = 264
    Top = 472
    object IBQConsMatPrimaCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsMatPrimaCD_SETOR: TIntegerField
      FieldName = 'CD_SETOR'
      Origin = 'MATERIA_PRIMA.CD_SETOR'
      Required = True
    end
    object IBQConsMatPrimaCD_CLASSE: TIntegerField
      FieldName = 'CD_CLASSE'
      Origin = 'MATERIA_PRIMA.CD_CLASSE'
      Required = True
    end
    object IBQConsMatPrimaCD_UN_MEDIDA: TIntegerField
      FieldName = 'CD_UN_MEDIDA'
      Origin = 'MATERIA_PRIMA.CD_UN_MEDIDA'
      Required = True
    end
    object IBQConsMatPrimaDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.DS_MAT_PRIMA'
      Size = 100
    end
    object IBQConsMatPrimaQTDE_EMBALAGEM: TIBBCDField
      FieldName = 'QTDE_EMBALAGEM'
      Origin = 'MATERIA_PRIMA.QTDE_EMBALAGEM'
      Precision = 9
      Size = 2
    end
    object IBQConsMatPrimaESTOQUE_MINIMO: TIBBCDField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'MATERIA_PRIMA.ESTOQUE_MINIMO'
      Precision = 9
      Size = 2
    end
    object IBQConsMatPrimaPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = 'MATERIA_PRIMA.PESO'
      Precision = 9
      Size = 2
    end
    object IBQConsMatPrimaFORA_LINHA: TIBStringField
      FieldName = 'FORA_LINHA'
      Origin = 'MATERIA_PRIMA.FORA_LINHA'
      FixedChar = True
      Size = 1
    end
    object IBQConsMatPrimaIMAGEM: TIBStringField
      FieldName = 'IMAGEM'
      Origin = 'MATERIA_PRIMA.IMAGEM'
      Size = 500
    end
    object IBQConsMatPrimaQTDE_ESTOQUE: TIBBCDField
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'MATERIA_PRIMA.QTDE_ESTOQUE'
      Precision = 9
      Size = 2
    end
    object IBQConsMatPrimaOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'MATERIA_PRIMA.OBSERVACOES'
      Size = 300
    end
    object IBQConsMatPrimaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'MATERIA_PRIMA.DT_CADASTRO'
    end
    object IBQConsMatPrimaUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'MATERIA_PRIMA.USUARIOO'
      Size = 100
    end
    object IBQConsMatPrimaCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'MATERIA_PRIMA.CODIGO_BARRAS'
    end
    object IBQConsMatPrimaDS_SETOR: TIBStringField
      FieldName = 'DS_SETOR'
      Origin = 'SETOR.DS_SETOR'
      Size = 100
    end
    object IBQConsMatPrimaDS_UNIDADE: TIBStringField
      FieldName = 'DS_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.DS_UNIDADE'
      Size = 50
    end
    object IBQConsMatPrimaSIGLA_UNIDADE: TIBStringField
      FieldName = 'SIGLA_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.SIGLA_UNIDADE'
      Size = 2
    end
    object IBQConsMatPrimaDS_CLASSE: TIBStringField
      FieldName = 'DS_CLASSE'
      Origin = 'CLASSE_MAT_PRIMA.DS_CLASSE'
      Size = 100
    end
  end
  object IBDMatPrimaNf: TIBDataSet
    Database = IBDBanco1
    Transaction = IBTTransacao
    BeforePost = IBDMatPrimaNfBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MT_PRIMA_NF'
      'where'
      '  CD_PRIMA_NF = :OLD_CD_PRIMA_NF and'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA')
    InsertSQL.Strings = (
      'insert into MT_PRIMA_NF'
      '  (CD_PRIMA_NF, CD_MAT_PRIMA, CD_FORNECEDOR, DS_PRIMA_NF, '
      'DT_CADASTRO, '
      
        '   USUARIOO, SITUACAO, VL_MAX, VL_MIN, IMPORTANCIA, CLASS_FISCAL' +
        ', IPI, '
      '   ICMS, SUB_TRIBUTARIA)'
      'values'
      '  (:CD_PRIMA_NF, :CD_MAT_PRIMA, :CD_FORNECEDOR, :DS_PRIMA_NF, '
      ':DT_CADASTRO, '
      
        '   :USUARIOO, :SITUACAO, :VL_MAX, :VL_MIN, :IMPORTANCIA, :CLASS_' +
        'FISCAL, '
      '   :IPI, :ICMS, :SUB_TRIBUTARIA)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_PRIMA_NF,'
      '  CD_MAT_PRIMA,'
      '  CD_FORNECEDOR,'
      '  DS_PRIMA_NF,'
      '  DT_CADASTRO,'
      '  USUARIOO,'
      '  SITUACAO,'
      '  VL_MAX,'
      '  VL_MIN,'
      '  IMPORTANCIA,'
      '  CLASS_FISCAL,'
      '  IPI,'
      '  ICMS,'
      '  SUB_TRIBUTARIA'
      'from MT_PRIMA_NF '
      'where'
      '  CD_PRIMA_NF = :CD_PRIMA_NF and'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA')
    SelectSQL.Strings = (
      'select * from MT_PRIMA_NF where cd_prima_nf = :pprima')
    ModifySQL.Strings = (
      'update MT_PRIMA_NF'
      'set'
      '  CD_PRIMA_NF = :CD_PRIMA_NF,'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA,'
      '  CD_FORNECEDOR = :CD_FORNECEDOR,'
      '  DS_PRIMA_NF = :DS_PRIMA_NF,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  USUARIOO = :USUARIOO,'
      '  SITUACAO = :SITUACAO,'
      '  VL_MAX = :VL_MAX,'
      '  VL_MIN = :VL_MIN,'
      '  IMPORTANCIA = :IMPORTANCIA,'
      '  CLASS_FISCAL = :CLASS_FISCAL,'
      '  IPI = :IPI,'
      '  ICMS = :ICMS,'
      '  SUB_TRIBUTARIA = :SUB_TRIBUTARIA'
      'where'
      '  CD_PRIMA_NF = :OLD_CD_PRIMA_NF and'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA')
    Left = 32
    Top = 520
    object IBDMatPrimaNfCD_PRIMA_NF: TIntegerField
      FieldName = 'CD_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.CD_PRIMA_NF'
      Required = True
    end
    object IBDMatPrimaNfCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MT_PRIMA_NF.CD_MAT_PRIMA'
      Required = True
    end
    object IBDMatPrimaNfCD_FORNECEDOR: TIntegerField
      FieldName = 'CD_FORNECEDOR'
      Origin = 'MT_PRIMA_NF.CD_FORNECEDOR'
      Required = True
    end
    object IBDMatPrimaNfDS_PRIMA_NF: TIBStringField
      FieldName = 'DS_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.DS_PRIMA_NF'
      Size = 100
    end
    object IBDMatPrimaNfDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'MT_PRIMA_NF.DT_CADASTRO'
    end
    object IBDMatPrimaNfUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'MT_PRIMA_NF.USUARIOO'
      Size = 100
    end
    object IBDMatPrimaNfSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'MT_PRIMA_NF.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBDMatPrimaNfVL_MAX: TIBBCDField
      FieldName = 'VL_MAX'
      Origin = 'MT_PRIMA_NF.VL_MAX'
      Precision = 9
      Size = 2
    end
    object IBDMatPrimaNfVL_MIN: TIBBCDField
      FieldName = 'VL_MIN'
      Origin = 'MT_PRIMA_NF.VL_MIN'
      Precision = 9
      Size = 2
    end
    object IBDMatPrimaNfIMPORTANCIA: TIBStringField
      FieldName = 'IMPORTANCIA'
      Origin = 'MT_PRIMA_NF.IMPORTANCIA'
      FixedChar = True
      Size = 1
    end
    object IBDMatPrimaNfCLASS_FISCAL: TIBStringField
      FieldName = 'CLASS_FISCAL'
      Origin = 'MT_PRIMA_NF.CLASS_FISCAL'
      EditMask = '####.##.##;0;_'
      Size = 15
    end
    object IBDMatPrimaNfIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = 'MT_PRIMA_NF.IPI'
      Precision = 9
      Size = 2
    end
    object IBDMatPrimaNfICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = 'MT_PRIMA_NF.ICMS'
      Precision = 9
      Size = 2
    end
    object IBDMatPrimaNfSUB_TRIBUTARIA: TIntegerField
      FieldName = 'SUB_TRIBUTARIA'
      Origin = 'MT_PRIMA_NF.SUB_TRIBUTARIA'
    end
  end
  object IBQUltimaMatPrimaNf: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_prima_nf)+1 as ultimo from MT_PRIMA_NF')
    Left = 128
    Top = 520
    object IBQUltimaMatPrimaNfULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsMtPrimaNf: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      '  select pj.rz_social,mt.ds_mat_prima ,mtnf.* '
      'from PESSOA_JURIDICA pj, MT_PRIMA_NF mtnf, MATERIA_PRIMA mt'
      '  where'
      '  pj.cd_pessoa_ju = mtnf.cd_fornecedor and'
      '  mtnf.cd_mat_prima = mt.cd_mat_prima')
    Left = 232
    Top = 528
    object IBQConsMtPrimaNfRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQConsMtPrimaNfDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.DS_MAT_PRIMA'
      Size = 100
    end
    object IBQConsMtPrimaNfCD_PRIMA_NF: TIntegerField
      FieldName = 'CD_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.CD_PRIMA_NF'
      Required = True
    end
    object IBQConsMtPrimaNfCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MT_PRIMA_NF.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsMtPrimaNfCD_FORNECEDOR: TIntegerField
      FieldName = 'CD_FORNECEDOR'
      Origin = 'MT_PRIMA_NF.CD_FORNECEDOR'
      Required = True
    end
    object IBQConsMtPrimaNfDS_PRIMA_NF: TIBStringField
      FieldName = 'DS_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.DS_PRIMA_NF'
      Size = 100
    end
    object IBQConsMtPrimaNfDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'MT_PRIMA_NF.DT_CADASTRO'
    end
    object IBQConsMtPrimaNfUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'MT_PRIMA_NF.USUARIOO'
      Size = 100
    end
    object IBQConsMtPrimaNfSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'MT_PRIMA_NF.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBQConsMtPrimaNfVL_MAX: TIBBCDField
      FieldName = 'VL_MAX'
      Origin = 'MT_PRIMA_NF.VL_MAX'
      Precision = 9
      Size = 2
    end
    object IBQConsMtPrimaNfVL_MIN: TIBBCDField
      FieldName = 'VL_MIN'
      Origin = 'MT_PRIMA_NF.VL_MIN'
      Precision = 9
      Size = 2
    end
    object IBQConsMtPrimaNfIMPORTANCIA: TIBStringField
      FieldName = 'IMPORTANCIA'
      Origin = 'MT_PRIMA_NF.IMPORTANCIA'
      FixedChar = True
      Size = 1
    end
    object IBQConsMtPrimaNfCLASS_FISCAL: TIBStringField
      FieldName = 'CLASS_FISCAL'
      Origin = 'MT_PRIMA_NF.CLASS_FISCAL'
      Size = 15
    end
    object IBQConsMtPrimaNfIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = 'MT_PRIMA_NF.IPI'
      Precision = 9
      Size = 2
    end
    object IBQConsMtPrimaNfICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = 'MT_PRIMA_NF.ICMS'
      Precision = 9
      Size = 2
    end
    object IBQConsMtPrimaNfSUB_TRIBUTARIA: TIntegerField
      FieldName = 'SUB_TRIBUTARIA'
      Origin = 'MT_PRIMA_NF.SUB_TRIBUTARIA'
    end
  end
  object IBQConsFornecedor: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      '  select pj.cd_pessoa_ju, pj.rz_social '
      'from PESSOA_JURIDICA pj'
      '  where'
      '  pj.cli_for = :pfornecedor and'
      '  pj.cd_pessoa_ju = :ppessoa')
    Left = 336
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pfornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ppessoa'
        ParamType = ptUnknown
      end>
    object IBQConsFornecedorCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA_JU'
      Required = True
    end
    object IBQConsFornecedorRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
  end
  object IBQConsMatPrimapNf: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select mt.*, un.ds_unidade from MATERIA_PRIMA mt, UNIDADE_MEDIDA' +
        ' un'
      'where'
      'mt.cd_un_medida = un.cd_unidade and'
      'mt.cd_mat_prima = :pmateria')
    Left = 440
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
    object IBQConsMatPrimapNfCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsMatPrimapNfCD_SETOR: TIntegerField
      FieldName = 'CD_SETOR'
      Origin = 'MATERIA_PRIMA.CD_SETOR'
      Required = True
    end
    object IBQConsMatPrimapNfCD_CLASSE: TIntegerField
      FieldName = 'CD_CLASSE'
      Origin = 'MATERIA_PRIMA.CD_CLASSE'
      Required = True
    end
    object IBQConsMatPrimapNfCD_UN_MEDIDA: TIntegerField
      FieldName = 'CD_UN_MEDIDA'
      Origin = 'MATERIA_PRIMA.CD_UN_MEDIDA'
      Required = True
    end
    object IBQConsMatPrimapNfDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.DS_MAT_PRIMA'
      Size = 100
    end
    object IBQConsMatPrimapNfQTDE_EMBALAGEM: TIBBCDField
      FieldName = 'QTDE_EMBALAGEM'
      Origin = 'MATERIA_PRIMA.QTDE_EMBALAGEM'
      Precision = 9
      Size = 2
    end
    object IBQConsMatPrimapNfVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'MATERIA_PRIMA.VALOR'
      Precision = 9
      Size = 2
    end
    object IBQConsMatPrimapNfESTOQUE_MINIMO: TIBBCDField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'MATERIA_PRIMA.ESTOQUE_MINIMO'
      Precision = 9
      Size = 2
    end
    object IBQConsMatPrimapNfPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = 'MATERIA_PRIMA.PESO'
      Precision = 9
      Size = 2
    end
    object IBQConsMatPrimapNfFORA_LINHA: TIBStringField
      FieldName = 'FORA_LINHA'
      Origin = 'MATERIA_PRIMA.FORA_LINHA'
      FixedChar = True
      Size = 1
    end
    object IBQConsMatPrimapNfIMAGEM: TIBStringField
      FieldName = 'IMAGEM'
      Origin = 'MATERIA_PRIMA.IMAGEM'
      Size = 500
    end
    object IBQConsMatPrimapNfQTDE_ESTOQUE: TIBBCDField
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'MATERIA_PRIMA.QTDE_ESTOQUE'
      Precision = 9
      Size = 2
    end
    object IBQConsMatPrimapNfOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'MATERIA_PRIMA.OBSERVACOES'
      Size = 300
    end
    object IBQConsMatPrimapNfDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'MATERIA_PRIMA.DT_CADASTRO'
    end
    object IBQConsMatPrimapNfUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'MATERIA_PRIMA.USUARIOO'
      Size = 100
    end
    object IBQConsMatPrimapNfCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'MATERIA_PRIMA.CODIGO_BARRAS'
    end
    object IBQConsMatPrimapNfDS_UNIDADE: TIBStringField
      FieldName = 'DS_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.DS_UNIDADE'
      Size = 50
    end
  end
  object IBQConsFornecedorGrid: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    AfterScroll = IBQConsFornecedorGridAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select mtnf.cd_prima_nf, mtnf.ds_prima_nf, mtnf.vl_max,mtnf.impo' +
        'rtancia,'
      '  pj.cd_pessoa_ju, pj.rz_social'
      '   from MT_PRIMA_NF mtnf, PESSOA_JURIDICA pj'
      '   where'
      '   mtnf.cd_fornecedor = pj.cd_pessoa_ju and'
      '   mtnf.cd_mat_prima = :pmateria')
    Left = 376
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
    object IBQConsFornecedorGridCD_PRIMA_NF: TIntegerField
      FieldName = 'CD_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.CD_PRIMA_NF'
      Required = True
    end
    object IBQConsFornecedorGridDS_PRIMA_NF: TIBStringField
      FieldName = 'DS_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.DS_PRIMA_NF'
      Size = 100
    end
    object IBQConsFornecedorGridCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA_JU'
      Required = True
    end
    object IBQConsFornecedorGridRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQConsFornecedorGridVL_MAX: TIBBCDField
      FieldName = 'VL_MAX'
      Origin = 'MT_PRIMA_NF.VL_MAX'
      Precision = 9
      Size = 2
    end
    object IBQConsFornecedorGridIMPORTANCIA: TIBStringField
      FieldName = 'IMPORTANCIA'
      Origin = 'MT_PRIMA_NF.IMPORTANCIA'
      FixedChar = True
      Size = 1
    end
  end
  object IBQContaImportania: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select count(mt_nf.importancia) as total from mt_prima_nf mt_nf'
      ' where'
      ' mt_nf.importancia = :pimportancia and'
      ' mt_nf.cd_mat_prima = :pmateria')
    Left = 544
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pimportancia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
    object IBQContaImportaniaTOTAL: TIntegerField
      FieldName = 'TOTAL'
      Required = True
    end
  end
  object IBQValidaFornecedor: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt_nf.* from MT_PRIMA_NF mt_nf, MATERIA_PRIMA mt'
      ' where'
      ' mt_nf.cd_mat_prima = mt.cd_mat_prima and'
      ' mt_nf.cd_fornecedor = :pfornecedor and'
      ' mt.cd_mat_prima = :pmateria')
    Left = 656
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pfornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
    object IBQValidaFornecedorCD_PRIMA_NF: TIntegerField
      FieldName = 'CD_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.CD_PRIMA_NF'
      Required = True
    end
    object IBQValidaFornecedorCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MT_PRIMA_NF.CD_MAT_PRIMA'
      Required = True
    end
    object IBQValidaFornecedorCD_FORNECEDOR: TIntegerField
      FieldName = 'CD_FORNECEDOR'
      Origin = 'MT_PRIMA_NF.CD_FORNECEDOR'
      Required = True
    end
    object IBQValidaFornecedorDS_PRIMA_NF: TIBStringField
      FieldName = 'DS_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.DS_PRIMA_NF'
      Size = 100
    end
    object IBQValidaFornecedorDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'MT_PRIMA_NF.DT_CADASTRO'
    end
    object IBQValidaFornecedorUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'MT_PRIMA_NF.USUARIOO'
      Size = 100
    end
    object IBQValidaFornecedorSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'MT_PRIMA_NF.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBQValidaFornecedorVL_MAX: TIBBCDField
      FieldName = 'VL_MAX'
      Origin = 'MT_PRIMA_NF.VL_MAX'
      Precision = 9
      Size = 2
    end
    object IBQValidaFornecedorVL_MIN: TIBBCDField
      FieldName = 'VL_MIN'
      Origin = 'MT_PRIMA_NF.VL_MIN'
      Precision = 9
      Size = 2
    end
    object IBQValidaFornecedorIMPORTANCIA: TIBStringField
      FieldName = 'IMPORTANCIA'
      Origin = 'MT_PRIMA_NF.IMPORTANCIA'
      FixedChar = True
      Size = 1
    end
  end
  object IBDNivelAcesso: TIBDataSet
    Database = IBDBanco1
    Transaction = IBTTransacao
    BeforePost = IBDNivelAcessoBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NIVEL_ACESSO'
      'where'
      '  CD_NIVEL = :OLD_CD_NIVEL')
    InsertSQL.Strings = (
      'insert into NIVEL_ACESSO'
      '  (CD_NIVEL, DS_NIVEL)'
      'values'
      '  (:CD_NIVEL, :DS_NIVEL)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_NIVEL,'
      '  DS_NIVEL'
      'from NIVEL_ACESSO '
      'where'
      '  CD_NIVEL = :CD_NIVEL')
    SelectSQL.Strings = (
      'select * from NIVEL_ACESSO where cd_nivel = :pnivel')
    ModifySQL.Strings = (
      'update NIVEL_ACESSO'
      'set'
      '  CD_NIVEL = :CD_NIVEL,'
      '  DS_NIVEL = :DS_NIVEL'
      'where'
      '  CD_NIVEL = :OLD_CD_NIVEL')
    Left = 336
    Top = 16
    object IBDNivelAcessoCD_NIVEL: TIntegerField
      FieldName = 'CD_NIVEL'
      Origin = 'NIVEL_ACESSO.CD_NIVEL'
      Required = True
    end
    object IBDNivelAcessoDS_NIVEL: TIBStringField
      FieldName = 'DS_NIVEL'
      Origin = 'NIVEL_ACESSO.DS_NIVEL'
      Size = 100
    end
  end
  object IBQUltimoNivel: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_nivel)+1 as ultimo from NIVEL_ACESSO')
    Left = 432
    Top = 16
    object IBQUltimoNivelULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsNivel: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from NIVEL_ACESSO')
    Left = 520
    Top = 16
    object IBQConsNivelCD_NIVEL: TIntegerField
      FieldName = 'CD_NIVEL'
      Origin = 'NIVEL_ACESSO.CD_NIVEL'
      Required = True
    end
    object IBQConsNivelDS_NIVEL: TIBStringField
      FieldName = 'DS_NIVEL'
      Origin = 'NIVEL_ACESSO.DS_NIVEL'
      Size = 100
    end
  end
  object IBDUsuario: TIBDataSet
    Database = IBDBanco1
    Transaction = IBTTransacao
    BeforePost = IBDUsuarioBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from USUARIO'
      'where'
      '  CD_USUARIO = :OLD_CD_USUARIO')
    InsertSQL.Strings = (
      'insert into USUARIO'
      '  (CD_USUARIO, NM_USUARIO, LOGIN, SENHA, DT_CADASTRO, CD_NIVEL, '
      'CD_GRUPO, '
      '   CD_PESSOA_JU, SITUACAO)'
      'values'
      
        '  (:CD_USUARIO, :NM_USUARIO, :LOGIN, :SENHA, :DT_CADASTRO, :CD_N' +
        'IVEL, '
      ':CD_GRUPO, '
      '   :CD_PESSOA_JU, :SITUACAO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_USUARIO,'
      '  NM_USUARIO,'
      '  LOGIN,'
      '  SENHA,'
      '  DT_CADASTRO,'
      '  CD_NIVEL,'
      '  CD_GRUPO,'
      '  CD_PESSOA_JU,'
      '  SITUACAO'
      'from USUARIO '
      'where'
      '  CD_USUARIO = :CD_USUARIO')
    SelectSQL.Strings = (
      'select * from USUARIO where'
      'cd_usuario = :pusuario')
    ModifySQL.Strings = (
      'update USUARIO'
      'set'
      '  CD_USUARIO = :CD_USUARIO,'
      '  NM_USUARIO = :NM_USUARIO,'
      '  LOGIN = :LOGIN,'
      '  SENHA = :SENHA,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  CD_NIVEL = :CD_NIVEL,'
      '  CD_GRUPO = :CD_GRUPO,'
      '  CD_PESSOA_JU = :CD_PESSOA_JU,'
      '  SITUACAO = :SITUACAO'
      'where'
      '  CD_USUARIO = :OLD_CD_USUARIO')
    Left = 336
    Top = 64
    object IBDUsuarioCD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
      Origin = 'USUARIO.CD_USUARIO'
      Required = True
    end
    object IBDUsuarioNM_USUARIO: TIBStringField
      FieldName = 'NM_USUARIO'
      Origin = 'USUARIO.NM_USUARIO'
      Required = True
      Size = 100
    end
    object IBDUsuarioLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = 'USUARIO.LOGIN'
      Required = True
      Size = 100
    end
    object IBDUsuarioSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = 'USUARIO.SENHA'
      Required = True
      Size = 15
    end
    object IBDUsuarioDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'USUARIO.DT_CADASTRO'
      Required = True
    end
    object IBDUsuarioCD_NIVEL: TIntegerField
      FieldName = 'CD_NIVEL'
      Origin = 'USUARIO.CD_NIVEL'
      Required = True
    end
    object IBDUsuarioCD_GRUPO: TIntegerField
      FieldName = 'CD_GRUPO'
      Origin = 'USUARIO.CD_GRUPO'
      Required = True
    end
    object IBDUsuarioCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'USUARIO.CD_PESSOA_JU'
      Required = True
    end
    object IBDUsuarioSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'USUARIO.SITUACAO'
      FixedChar = True
      Size = 1
    end
  end
  object IBQUltimoUsuario: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_usuario)+1 as ultimo from USUARIO')
    Left = 432
    Top = 64
    object IBQUltimoUsuarioULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsUsuario: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select u.*, pj.rz_social, n.ds_nivel, g.ds_grupo'
      '    from USUARIO u,'
      '         PESSOA_JURIDICA pj,'
      '         NIVEL_ACESSO n,'
      '         GRUPO_USUARIO g'
      '   where u.cd_nivel = n.cd_nivel and'
      '         u.cd_grupo = g.cd_grupo and'
      '         u.cd_pessoa_ju = pj.cd_pessoa_ju')
    Left = 536
    Top = 64
    object IBQConsUsuarioCD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
      Origin = 'USUARIO.CD_USUARIO'
      Required = True
    end
    object IBQConsUsuarioNM_USUARIO: TIBStringField
      FieldName = 'NM_USUARIO'
      Origin = 'USUARIO.NM_USUARIO'
      Required = True
      Size = 100
    end
    object IBQConsUsuarioLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = 'USUARIO.LOGIN'
      Required = True
      Size = 100
    end
    object IBQConsUsuarioSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = 'USUARIO.SENHA'
      Required = True
      Size = 15
    end
    object IBQConsUsuarioDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'USUARIO.DT_CADASTRO'
      Required = True
    end
    object IBQConsUsuarioCD_NIVEL: TIntegerField
      FieldName = 'CD_NIVEL'
      Origin = 'USUARIO.CD_NIVEL'
      Required = True
    end
    object IBQConsUsuarioCD_GRUPO: TIntegerField
      FieldName = 'CD_GRUPO'
      Origin = 'USUARIO.CD_GRUPO'
      Required = True
    end
    object IBQConsUsuarioCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'USUARIO.CD_PESSOA_JU'
      Required = True
    end
    object IBQConsUsuarioRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQConsUsuarioDS_NIVEL: TIBStringField
      FieldName = 'DS_NIVEL'
      Origin = 'NIVEL_ACESSO.DS_NIVEL'
      Size = 100
    end
    object IBQConsUsuarioDS_GRUPO: TIBStringField
      FieldName = 'DS_GRUPO'
      Origin = 'GRUPO_USUARIO.DS_GRUPO'
      Size = 100
    end
  end
  object IBQConsLogin: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select u.*, pj.rz_social, n.ds_nivel, g.ds_grupo'
      '    from USUARIO u,'
      '         PESSOA_JURIDICA pj,'
      '         NIVEL_ACESSO n,'
      '         GRUPO_USUARIO g'
      '   where u.cd_nivel = n.cd_nivel and'
      '         u.cd_grupo = g.cd_grupo and'
      '         u.cd_pessoa_ju = pj.cd_pessoa_ju  and'
      '         u.login = :plogin and'
      '         u.senha = :psenha')
    Left = 432
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'plogin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'psenha'
        ParamType = ptUnknown
      end>
    object IBQConsLoginCD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
      Origin = 'USUARIO.CD_USUARIO'
      Required = True
    end
    object IBQConsLoginNM_USUARIO: TIBStringField
      FieldName = 'NM_USUARIO'
      Origin = 'USUARIO.NM_USUARIO'
      Required = True
      Size = 100
    end
    object IBQConsLoginLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = 'USUARIO.LOGIN'
      Required = True
      Size = 100
    end
    object IBQConsLoginSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = 'USUARIO.SENHA'
      Required = True
      Size = 15
    end
    object IBQConsLoginDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'USUARIO.DT_CADASTRO'
      Required = True
    end
    object IBQConsLoginCD_NIVEL: TIntegerField
      FieldName = 'CD_NIVEL'
      Origin = 'USUARIO.CD_NIVEL'
      Required = True
    end
    object IBQConsLoginCD_GRUPO: TIntegerField
      FieldName = 'CD_GRUPO'
      Origin = 'USUARIO.CD_GRUPO'
      Required = True
    end
    object IBQConsLoginCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'USUARIO.CD_PESSOA_JU'
      Required = True
    end
    object IBQConsLoginRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQConsLoginDS_NIVEL: TIBStringField
      FieldName = 'DS_NIVEL'
      Origin = 'NIVEL_ACESSO.DS_NIVEL'
      Size = 100
    end
    object IBQConsLoginDS_GRUPO: TIBStringField
      FieldName = 'DS_GRUPO'
      Origin = 'GRUPO_USUARIO.DS_GRUPO'
      Size = 100
    end
    object IBQConsLoginSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'USUARIO.SITUACAO'
      FixedChar = True
      Size = 1
    end
  end
  object IBQConsPedEspera: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select u.cd_pessoa_ju, pj_usu.rz_social,'
      '        reg.cd_regiao, reg.ds_regiao,'
      
        '        sum(distinct(pd_p.qtde_produto) * pd_p.vl_prod_venda) as' +
        ' vl_tot,'
      '        count(distinct(ped.cd_pedido)) as qtde_ped'
      '    from  PEDIDO ped, USUARIO U,'
      
        '        PRODUTOS_PEDIDO pd_p, REGIAO reg,  PESSOA_JURIDICA pj_us' +
        'u'
      '    where'
      '          ped.cd_pessoa_usu = u.cd_pessoa_ju and'
      '          u.cd_pessoa_ju = pj_usu.cd_pessoa_ju and'
      '          pd_p.cd_pedido = ped.cd_pedido and'
      '          pj_usu.cd_regiao = reg.cd_regiao and'
      '          ped.situacao = :psituacao'
      '     group by  reg.cd_regiao, reg.ds_regiao,'
      '        u.cd_pessoa_ju, pj_usu.rz_social')
    Left = 536
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'psituacao'
        ParamType = ptUnknown
      end>
    object IBQConsPedEsperaCD_REGIAO: TIntegerField
      FieldName = 'CD_REGIAO'
      Origin = 'REGIAO.CD_REGIAO'
      Required = True
    end
    object IBQConsPedEsperaDS_REGIAO: TIBStringField
      FieldName = 'DS_REGIAO'
      Origin = 'REGIAO.DS_REGIAO'
      Size = 100
    end
    object IBQConsPedEsperaCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'USUARIO.CD_PESSOA_JU'
      Required = True
    end
    object IBQConsPedEsperaRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQConsPedEsperaVL_TOT: TIBBCDField
      FieldName = 'VL_TOT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object IBQConsPedEsperaQTDE_PED: TIntegerField
      FieldName = 'QTDE_PED'
      Required = True
    end
  end
  object IBQConsPedUsuario: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    AfterScroll = IBQConsPedUsuarioAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select pj.*, ped.*, pgto.ds_cond_pgto, cob.ds_tipo_cobranca,'
      
        '        reg.ds_regiao,reg.cd_regiao, pj_usu.rz_social, cid.nm_ci' +
        'dade, cid.sigla_uf, p.situacao,'
      
        '        sum(distinct(pd_p.qtde_produto) * (pd_p.vl_prod_venda)) ' +
        'as total'
      '        from'
      '        PEDIDO ped'
      
        '        inner join PRODUTOS_PEDIDO pd_p on pd_p.cd_pedido = ped.' +
        'cd_pedido'
      
        '        inner join PESSOA_JURIDICA pj on ped.cd_pessoa_ju = pj.c' +
        'd_pessoa_ju'
      '        inner join PESSOA p on pj.cd_pessoa = p.cd_pessoa'
      '        inner join CIDADE cid on p.cd_cidade = cid.cd_cidade'
      
        '        inner join USUARIO u on ped.cd_pessoa_usu = u.cd_pessoa_' +
        'ju'
      
        '        inner join PESSOA_JURIDICA pj_usu on u.cd_pessoa_ju = pj' +
        '_usu.cd_pessoa_ju'
      
        '        inner join REGIAO reg on pj_usu.cd_regiao = reg.cd_regia' +
        'o'
      
        '        inner join CONDICAO_PGTO pgto on ped.cd_cond_pgto = pgto' +
        '.cd_cond_pgto'
      
        '        inner join TIPO_COBRANCA cob on ped.cd_tipo_cobranca = c' +
        'ob.cd_tipo_cobranca'
      '        where'
      '        ped.cd_pessoa_usu = :pusuario and'
      '       ped.situacao = :psituacao'
      '        group by'
      
        '        pj.cd_pessoa_ju,pj.cd_pessoa,pj.cgc,pj.insc_estadual,pj.' +
        'rz_social,'
      
        '        pj.nm_fantazia,pj.cli_for,pj.bloqueado,pj.rm_atividade,p' +
        'j.cd_regiao,'
      
        '        ped.cd_pedido,ped.cd_cond_pgto,ped.cd_pessoa_ju,ped.cd_t' +
        'ipo_cobranca,'
      
        '        ped.dt_pedido,ped.dt_sistema,ped.hr_pedido,ped.situacao,' +
        'ped.observacoes,'
      
        '        ped.usuarioo,ped.modelo,ped.transportador,ped.cd_pessoa_' +
        'usu,'
      '        pgto.ds_cond_pgto, cob.ds_tipo_cobranca,'
      
        '        reg.ds_regiao, reg.cd_regiao,pj_usu.rz_social, cid.nm_ci' +
        'dade, cid.sigla_uf,p.situacao   '
      'order by ped.cd_pedido')
    Left = 424
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pusuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'psituacao'
        ParamType = ptUnknown
      end>
    object IBQConsPedUsuarioCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA_JU'
      Required = True
    end
    object IBQConsPedUsuarioCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA'
      Required = True
    end
    object IBQConsPedUsuarioCGC: TIBStringField
      FieldName = 'CGC'
      Origin = 'PESSOA_JURIDICA.CGC'
      Size = 15
    end
    object IBQConsPedUsuarioINSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
      Origin = 'PESSOA_JURIDICA.INSC_ESTADUAL'
      Size = 15
    end
    object IBQConsPedUsuarioRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQConsPedUsuarioNM_FANTAZIA: TIBStringField
      FieldName = 'NM_FANTAZIA'
      Origin = 'PESSOA_JURIDICA.NM_FANTAZIA'
      Required = True
      Size = 100
    end
    object IBQConsPedUsuarioCLI_FOR: TIBStringField
      FieldName = 'CLI_FOR'
      Origin = 'PESSOA_JURIDICA.CLI_FOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object IBQConsPedUsuarioBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = 'PESSOA_JURIDICA.BLOQUEADO'
      FixedChar = True
      Size = 1
    end
    object IBQConsPedUsuarioRM_ATIVIDADE: TIBStringField
      FieldName = 'RM_ATIVIDADE'
      Origin = 'PESSOA_JURIDICA.RM_ATIVIDADE'
      Size = 100
    end
    object IBQConsPedUsuarioCD_REGIAO: TIntegerField
      FieldName = 'CD_REGIAO'
      Origin = 'PESSOA_JURIDICA.CD_REGIAO'
      Required = True
    end
    object IBQConsPedUsuarioCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'PEDIDO.CD_PEDIDO'
      Required = True
    end
    object IBQConsPedUsuarioCD_COND_PGTO: TIntegerField
      FieldName = 'CD_COND_PGTO'
      Origin = 'PEDIDO.CD_COND_PGTO'
      Required = True
    end
    object IBQConsPedUsuarioCD_PESSOA_JU1: TIntegerField
      FieldName = 'CD_PESSOA_JU1'
      Origin = 'PEDIDO.CD_PESSOA_JU'
      Required = True
    end
    object IBQConsPedUsuarioCD_TIPO_COBRANCA: TIntegerField
      FieldName = 'CD_TIPO_COBRANCA'
      Origin = 'PEDIDO.CD_TIPO_COBRANCA'
      Required = True
    end
    object IBQConsPedUsuarioDT_PEDIDO: TDateField
      FieldName = 'DT_PEDIDO'
      Origin = 'PEDIDO.DT_PEDIDO'
    end
    object IBQConsPedUsuarioDT_SISTEMA: TDateField
      FieldName = 'DT_SISTEMA'
      Origin = 'PEDIDO.DT_SISTEMA'
    end
    object IBQConsPedUsuarioHR_PEDIDO: TTimeField
      FieldName = 'HR_PEDIDO'
      Origin = 'PEDIDO.HR_PEDIDO'
    end
    object IBQConsPedUsuarioSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'PEDIDO.SITUACAO'
    end
    object IBQConsPedUsuarioOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'PEDIDO.OBSERVACOES'
      Size = 500
    end
    object IBQConsPedUsuarioUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'PEDIDO.USUARIOO'
      Size = 100
    end
    object IBQConsPedUsuarioMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = 'PEDIDO.MODELO'
      FixedChar = True
      Size = 1
    end
    object IBQConsPedUsuarioTRANSPORTADOR: TIBStringField
      FieldName = 'TRANSPORTADOR'
      Origin = 'PEDIDO.TRANSPORTADOR'
      Size = 200
    end
    object IBQConsPedUsuarioCD_PESSOA_USU: TIntegerField
      FieldName = 'CD_PESSOA_USU'
      Origin = 'PEDIDO.CD_PESSOA_USU'
    end
    object IBQConsPedUsuarioDS_COND_PGTO: TIBStringField
      FieldName = 'DS_COND_PGTO'
      Origin = 'CONDICAO_PGTO.DS_COND_PGTO'
      Size = 100
    end
    object IBQConsPedUsuarioDS_TIPO_COBRANCA: TIBStringField
      FieldName = 'DS_TIPO_COBRANCA'
      Origin = 'TIPO_COBRANCA.DS_TIPO_COBRANCA'
      Size = 100
    end
    object IBQConsPedUsuarioDS_REGIAO: TIBStringField
      FieldName = 'DS_REGIAO'
      Origin = 'REGIAO.DS_REGIAO'
      Size = 100
    end
    object IBQConsPedUsuarioCD_REGIAO1: TIntegerField
      FieldName = 'CD_REGIAO1'
      Origin = 'REGIAO.CD_REGIAO'
      Required = True
    end
    object IBQConsPedUsuarioRZ_SOCIAL1: TIBStringField
      FieldName = 'RZ_SOCIAL1'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQConsPedUsuarioNM_CIDADE: TIBStringField
      FieldName = 'NM_CIDADE'
      Origin = 'CIDADE.NM_CIDADE'
      Required = True
      Size = 100
    end
    object IBQConsPedUsuarioSIGLA_UF: TIBStringField
      FieldName = 'SIGLA_UF'
      Origin = 'CIDADE.SIGLA_UF'
      Size = 100
    end
    object IBQConsPedUsuarioSITUACAO1: TIBStringField
      FieldName = 'SITUACAO1'
      Origin = 'PESSOA.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBQConsPedUsuarioTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 18
      Size = 4
    end
  end
  object IBQConsPedUsuario2: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      ''
      'select pj.*, cid.nm_cidade, cid.sigla_uf'
      '        from PESSOA_JURIDICA pj'
      '        inner join PESSOA p on pj.cd_pessoa = p.cd_pessoa'
      '        inner join CIDADE cid on cid.cd_cidade = p.cd_cidade'
      '        where'
      '            pj.cd_pessoa_ju = :ppessoa')
    Left = 536
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppessoa'
        ParamType = ptUnknown
      end>
    object IBQConsPedUsuario2CD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA_JU'
      Required = True
    end
    object IBQConsPedUsuario2CD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA'
      Required = True
    end
    object IBQConsPedUsuario2CGC: TIBStringField
      FieldName = 'CGC'
      Origin = 'PESSOA_JURIDICA.CGC'
      Size = 15
    end
    object IBQConsPedUsuario2INSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
      Origin = 'PESSOA_JURIDICA.INSC_ESTADUAL'
      Size = 15
    end
    object IBQConsPedUsuario2RZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQConsPedUsuario2NM_FANTAZIA: TIBStringField
      FieldName = 'NM_FANTAZIA'
      Origin = 'PESSOA_JURIDICA.NM_FANTAZIA'
      Required = True
      Size = 100
    end
    object IBQConsPedUsuario2CLI_FOR: TIBStringField
      FieldName = 'CLI_FOR'
      Origin = 'PESSOA_JURIDICA.CLI_FOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object IBQConsPedUsuario2BLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = 'PESSOA_JURIDICA.BLOQUEADO'
      FixedChar = True
      Size = 1
    end
    object IBQConsPedUsuario2RM_ATIVIDADE: TIBStringField
      FieldName = 'RM_ATIVIDADE'
      Origin = 'PESSOA_JURIDICA.RM_ATIVIDADE'
      Size = 100
    end
    object IBQConsPedUsuario2CD_REGIAO: TIntegerField
      FieldName = 'CD_REGIAO'
      Origin = 'PESSOA_JURIDICA.CD_REGIAO'
      Required = True
    end
    object IBQConsPedUsuario2NM_CIDADE: TIBStringField
      FieldName = 'NM_CIDADE'
      Origin = 'CIDADE.NM_CIDADE'
      Required = True
      Size = 100
    end
    object IBQConsPedUsuario2SIGLA_UF: TIBStringField
      FieldName = 'SIGLA_UF'
      Origin = 'CIDADE.SIGLA_UF'
      Size = 100
    end
  end
  object IBQConsAlertas: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select al.* from ALERTA_PESSOA al'
      '        where al.cd_pessoa = :ppessoa')
    Left = 424
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppessoa'
        ParamType = ptUnknown
      end>
    object IBQConsAlertasCD_ALERTA: TIntegerField
      FieldName = 'CD_ALERTA'
      Origin = 'ALERTA_PESSOA.CD_ALERTA'
      Required = True
    end
    object IBQConsAlertasCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'ALERTA_PESSOA.CD_PESSOA'
      Required = True
    end
    object IBQConsAlertasDS_ALERTA: TIBStringField
      FieldName = 'DS_ALERTA'
      Origin = 'ALERTA_PESSOA.DS_ALERTA'
      Required = True
      Size = 300
    end
    object IBQConsAlertasUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'ALERTA_PESSOA.USUARIOO'
      Size = 100
    end
    object IBQConsAlertasDT_ALERTA: TDateField
      FieldName = 'DT_ALERTA'
      Origin = 'ALERTA_PESSOA.DT_ALERTA'
    end
    object IBQConsAlertasHR_ALERTA: TTimeField
      FieldName = 'HR_ALERTA'
      Origin = 'ALERTA_PESSOA.HR_ALERTA'
    end
  end
  object IBQConsComposicaoProduto: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    AfterCancel = IBDCidadeBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from COMPOSICAO_PRODUTO'
      'where'
      'cd_produto = :pproduto')
    Left = 552
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end>
    object IBQConsComposicaoProdutoCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'COMPOSICAO_PRODUTO.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsComposicaoProdutoCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'COMPOSICAO_PRODUTO.CD_PRODUTO'
      Required = True
    end
    object IBQConsComposicaoProdutoQTDE_MAT_PRIMA: TIBBCDField
      FieldName = 'QTDE_MAT_PRIMA'
      Origin = 'COMPOSICAO_PRODUTO.QTDE_MAT_PRIMA'
      Precision = 9
      Size = 2
    end
  end
  object IBQConsCarteira: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    AfterCancel = IBDCidadeBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CARTEIRA')
    Left = 552
    Top = 272
  end
  object IBDTipoCodigo: TIBDataSet
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TIPO_CODIGO'
      'where'
      '  CD_MATERIA = :OLD_CD_MATERIA')
    InsertSQL.Strings = (
      'insert into TIPO_CODIGO'
      '  (CD_MATERIA, TP_MATERIA)'
      'values'
      '  (:CD_MATERIA, :TP_MATERIA)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_MATERIA,'
      '  TP_MATERIA'
      'from TIPO_CODIGO '
      'where'
      '  CD_MATERIA = :CD_MATERIA')
    SelectSQL.Strings = (
      'select * from TIPO_CODIGO where'
      'cd_materia = :pmateria')
    ModifySQL.Strings = (
      'update TIPO_CODIGO'
      'set'
      '  CD_MATERIA = :CD_MATERIA,'
      '  TP_MATERIA = :TP_MATERIA'
      'where'
      '  CD_MATERIA = :OLD_CD_MATERIA')
    Left = 368
    Top = 336
    object IBDTipoCodigoCD_MATERIA: TIntegerField
      FieldName = 'CD_MATERIA'
      Origin = 'TIPO_CODIGO.CD_MATERIA'
      Required = True
    end
    object IBDTipoCodigoTP_MATERIA: TIBStringField
      FieldName = 'TP_MATERIA'
      Origin = 'TIPO_CODIGO.TP_MATERIA'
      FixedChar = True
      Size = 1
    end
  end
  object IBQUltimoTipoCodigo: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(tp_cd.cd_materia)+ 1 as ultimo from'
      '        TIPO_CODIGO tp_cd'
      '        where'
      '        tp_cd.tp_materia = :ptipo')
    Left = 464
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptipo'
        ParamType = ptUnknown
      end>
    object IBQUltimoTipoCodigoULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQCodigoDentroFaxa: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt.cd_mat_prima from'
      '    MATERIA_PRIMA mt'
      '    where'
      '    mt.cd_mat_prima = :pmateria')
    Left = 576
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
    object IBQCodigoDentroFaxaCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.CD_MAT_PRIMA'
      Required = True
    end
  end
  object IBDFormNivel: TIBDataSet
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FORM_NIVEL'
      'where'
      '  CD_FORM_NIVEL = :OLD_CD_FORM_NIVEL')
    InsertSQL.Strings = (
      'insert into FORM_NIVEL'
      '  (CD_FORM_NIVEL, CD_FORMULARIO, CD_NIVEL, LIBERADO)'
      'values'
      '  (:CD_FORM_NIVEL, :CD_FORMULARIO, :CD_NIVEL, :LIBERADO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_FORM_NIVEL,'
      '  CD_FORMULARIO,'
      '  CD_NIVEL,'
      '  LIBERADO'
      'from FORM_NIVEL '
      'where'
      '  CD_FORM_NIVEL = :CD_FORM_NIVEL')
    SelectSQL.Strings = (
      'select * from FORM_NIVEL where'
      'cd_form_nivel = :pnivel')
    ModifySQL.Strings = (
      'update FORM_NIVEL'
      'set'
      '  CD_FORM_NIVEL = :CD_FORM_NIVEL,'
      '  CD_FORMULARIO = :CD_FORMULARIO,'
      '  CD_NIVEL = :CD_NIVEL,'
      '  LIBERADO = :LIBERADO'
      'where'
      '  CD_FORM_NIVEL = :OLD_CD_FORM_NIVEL')
    Left = 664
    Top = 24
    object IBDFormNivelCD_FORM_NIVEL: TIntegerField
      FieldName = 'CD_FORM_NIVEL'
      Origin = 'FORM_NIVEL.CD_FORM_NIVEL'
      Required = True
    end
    object IBDFormNivelCD_FORMULARIO: TIntegerField
      FieldName = 'CD_FORMULARIO'
      Origin = 'FORM_NIVEL.CD_FORMULARIO'
      Required = True
    end
    object IBDFormNivelCD_NIVEL: TIntegerField
      FieldName = 'CD_NIVEL'
      Origin = 'FORM_NIVEL.CD_NIVEL'
      Required = True
    end
    object IBDFormNivelLIBERADO: TIBStringField
      FieldName = 'LIBERADO'
      Origin = 'FORM_NIVEL.LIBERADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object IBQApagaFormNivel: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    Left = 672
    Top = 80
  end
  object IBQConsUsuarioDireitos: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    AfterScroll = IBQConsUsuarioDireitosAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from USUARIO u order by u.nm_usuario')
    Left = 680
    Top = 144
    object IBQConsUsuarioDireitosCD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
      Origin = 'USUARIO.CD_USUARIO'
      Required = True
    end
    object IBQConsUsuarioDireitosNM_USUARIO: TIBStringField
      FieldName = 'NM_USUARIO'
      Origin = 'USUARIO.NM_USUARIO'
      Required = True
      Size = 100
    end
    object IBQConsUsuarioDireitosLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = 'USUARIO.LOGIN'
      Required = True
      Size = 100
    end
    object IBQConsUsuarioDireitosSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = 'USUARIO.SENHA'
      Required = True
      Size = 15
    end
    object IBQConsUsuarioDireitosDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'USUARIO.DT_CADASTRO'
      Required = True
    end
    object IBQConsUsuarioDireitosCD_NIVEL: TIntegerField
      FieldName = 'CD_NIVEL'
      Origin = 'USUARIO.CD_NIVEL'
      Required = True
    end
    object IBQConsUsuarioDireitosCD_GRUPO: TIntegerField
      FieldName = 'CD_GRUPO'
      Origin = 'USUARIO.CD_GRUPO'
      Required = True
    end
    object IBQConsUsuarioDireitosCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'USUARIO.CD_PESSOA_JU'
      Required = True
    end
  end
  object IBQFormNivel: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select fn.*, f.nm_formulario, null as tika from FORM_NIVEL fn'
      
        '        inner join FORMULARIO f on f.cd_formulario = fn.cd_formu' +
        'lario'
      '        where'
      '        fn.cd_nivel = :pnivel')
    Left = 696
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pnivel'
        ParamType = ptUnknown
      end>
    object IBQFormNivelCD_FORM_NIVEL: TIntegerField
      FieldName = 'CD_FORM_NIVEL'
      Origin = 'FORM_NIVEL.CD_FORM_NIVEL'
      Required = True
    end
    object IBQFormNivelCD_FORMULARIO: TIntegerField
      FieldName = 'CD_FORMULARIO'
      Origin = 'FORM_NIVEL.CD_FORMULARIO'
      Required = True
    end
    object IBQFormNivelCD_NIVEL: TIntegerField
      FieldName = 'CD_NIVEL'
      Origin = 'FORM_NIVEL.CD_NIVEL'
      Required = True
    end
    object IBQFormNivelLIBERADO: TIBStringField
      FieldName = 'LIBERADO'
      Origin = 'FORM_NIVEL.LIBERADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object IBQFormNivelNM_FORMULARIO: TIBStringField
      FieldName = 'NM_FORMULARIO'
      Origin = 'FORMULARIO.NM_FORMULARIO'
      Size = 100
    end
    object IBQFormNivelTIKA: TIBStringField
      FieldName = 'TIKA'
      FixedChar = True
      Size = 1
    end
  end
  object ProviderFormNivel: TDataSetProvider
    DataSet = IBQFormNivel
    Left = 696
    Top = 264
  end
  object ClienteFormNivel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderFormNivel'
    Left = 704
    Top = 312
    object ClienteFormNivelCD_FORM_NIVEL: TIntegerField
      FieldName = 'CD_FORM_NIVEL'
      Required = True
    end
    object ClienteFormNivelCD_FORMULARIO: TIntegerField
      FieldName = 'CD_FORMULARIO'
      Required = True
    end
    object ClienteFormNivelCD_NIVEL: TIntegerField
      FieldName = 'CD_NIVEL'
      Required = True
    end
    object ClienteFormNivelLIBERADO: TStringField
      FieldName = 'LIBERADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ClienteFormNivelNM_FORMULARIO: TStringField
      FieldName = 'NM_FORMULARIO'
      Size = 100
    end
    object ClienteFormNivelTIKA: TStringField
      FieldName = 'TIKA'
      FixedChar = True
      Size = 1
    end
  end
  object IBQDireitosUsuario: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select fn.*'
      '        from FORM_NIVEL fn'
      '        inner join USUARIO u on u.cd_nivel =  fn.cd_nivel'
      
        '        inner join FORMULARIO f on fn.cd_formulario = f.cd_formu' +
        'lario'
      '        where'
      '        u.cd_usuario = :pusuario and'
      '        f.nm_formulario = :pformulario')
    Left = 704
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pusuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pformulario'
        ParamType = ptUnknown
      end>
    object IBQDireitosUsuarioCD_FORM_NIVEL: TIntegerField
      FieldName = 'CD_FORM_NIVEL'
      Origin = 'FORM_NIVEL.CD_FORM_NIVEL'
      Required = True
    end
    object IBQDireitosUsuarioCD_FORMULARIO: TIntegerField
      FieldName = 'CD_FORMULARIO'
      Origin = 'FORM_NIVEL.CD_FORMULARIO'
      Required = True
    end
    object IBQDireitosUsuarioCD_NIVEL: TIntegerField
      FieldName = 'CD_NIVEL'
      Origin = 'FORM_NIVEL.CD_NIVEL'
      Required = True
    end
    object IBQDireitosUsuarioLIBERADO: TIBStringField
      FieldName = 'LIBERADO'
      Origin = 'FORM_NIVEL.LIBERADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object IBQApagaContEntSaida: TIBQuery
    Database = IBDBanco1
    Transaction = IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from CONTROLE_ENTRADA_SAIDA es'
      '    where'
      '      es.cd_mat_prima = :pmateria')
    Left = 504
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
  end
end
