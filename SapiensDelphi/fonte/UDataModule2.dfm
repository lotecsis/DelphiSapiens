object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 251
  Top = 156
  Height = 579
  Width = 692
  object IBDFone: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDFoneBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FONE'
      'where'
      '  CD_FONE = :OLD_CD_FONE and'
      '  CD_PESSOA = :OLD_CD_PESSOA')
    InsertSQL.Strings = (
      'insert into FONE'
      '  (CD_FONE, NUM_FONE, DDD, DS_FONE, CD_PESSOA)'
      'values'
      '  (:CD_FONE, :NUM_FONE, :DDD, :DS_FONE, :CD_PESSOA)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_FONE,'
      '  NUM_FONE,'
      '  DDD,'
      '  DS_FONE,'
      '  CD_PESSOA'
      'from FONE '
      'where'
      '  CD_FONE = :CD_FONE and'
      '  CD_PESSOA = :CD_PESSOA')
    SelectSQL.Strings = (
      'select * from FONE where'
      'cd_pessoa = :ppessoa')
    ModifySQL.Strings = (
      'update FONE'
      'set'
      '  CD_FONE = :CD_FONE,'
      '  NUM_FONE = :NUM_FONE,'
      '  DDD = :DDD,'
      '  DS_FONE = :DS_FONE,'
      '  CD_PESSOA = :CD_PESSOA'
      'where'
      '  CD_FONE = :OLD_CD_FONE and'
      '  CD_PESSOA = :OLD_CD_PESSOA')
    Left = 32
    Top = 48
    object IBDFoneCD_FONE: TIntegerField
      FieldName = 'CD_FONE'
      Origin = 'FONE.CD_FONE'
      Required = True
    end
    object IBDFoneNUM_FONE: TIBStringField
      FieldName = 'NUM_FONE'
      Origin = 'FONE.NUM_FONE'
      EditMask = '####-####;1;'
      Size = 30
    end
    object IBDFoneDDD: TIBStringField
      FieldName = 'DDD'
      Origin = 'FONE.DDD'
      Size = 10
    end
    object IBDFoneDS_FONE: TIBStringField
      FieldName = 'DS_FONE'
      Origin = 'FONE.DS_FONE'
      Size = 100
    end
    object IBDFoneCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'FONE.CD_PESSOA'
      Required = True
    end
  end
  object IBQUltimoFone: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_fone)+1 as ultimo from FONE')
    Left = 120
    Top = 48
    object IBQUltimoFoneULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBDEmail: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDEmailBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from EMAIL'
      'where'
      '  CD_EMAIL = :OLD_CD_EMAIL and'
      '  CD_PESSOA = :OLD_CD_PESSOA')
    InsertSQL.Strings = (
      'insert into EMAIL'
      '  (CD_EMAIL, CD_PESSOA, EMAIL, DS_EMAIL)'
      'values'
      '  (:CD_EMAIL, :CD_PESSOA, :EMAIL, :DS_EMAIL)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_EMAIL,'
      '  CD_PESSOA,'
      '  EMAIL,'
      '  DS_EMAIL'
      'from EMAIL '
      'where'
      '  CD_EMAIL = :CD_EMAIL and'
      '  CD_PESSOA = :CD_PESSOA')
    SelectSQL.Strings = (
      'select * from EMAIL where'
      'cd_pessoa = :ppessoa')
    ModifySQL.Strings = (
      'update EMAIL'
      'set'
      '  CD_EMAIL = :CD_EMAIL,'
      '  CD_PESSOA = :CD_PESSOA,'
      '  EMAIL = :EMAIL,'
      '  DS_EMAIL = :DS_EMAIL'
      'where'
      '  CD_EMAIL = :OLD_CD_EMAIL and'
      '  CD_PESSOA = :OLD_CD_PESSOA')
    Left = 32
    Top = 112
    object IBDEmailCD_EMAIL: TIntegerField
      FieldName = 'CD_EMAIL'
      Origin = 'EMAIL.CD_EMAIL'
      Required = True
    end
    object IBDEmailCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'EMAIL.CD_PESSOA'
      Required = True
    end
    object IBDEmailEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL.EMAIL'
      Size = 100
    end
    object IBDEmailDS_EMAIL: TIBStringField
      FieldName = 'DS_EMAIL'
      Origin = 'EMAIL.DS_EMAIL'
      Size = 100
    end
  end
  object IBQUltimoEmail: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_email)+1 as ultimo from EMAIL')
    Left = 120
    Top = 112
    object IBQUltimoEmailULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBDContatos: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDContatosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CONTATOS'
      'where'
      '  CD_CONTATO = :OLD_CD_CONTATO and'
      '  CD_PESSOA = :OLD_CD_PESSOA')
    InsertSQL.Strings = (
      'insert into CONTATOS'
      '  (CD_CONTATO, CD_PESSOA, DS_CONTATO, TEL, CARGO)'
      'values'
      '  (:CD_CONTATO, :CD_PESSOA, :DS_CONTATO, :TEL, :CARGO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_CONTATO,'
      '  CD_PESSOA,'
      '  DS_CONTATO,'
      '  TEL,'
      '  CARGO'
      'from CONTATOS '
      'where'
      '  CD_CONTATO = :CD_CONTATO and'
      '  CD_PESSOA = :CD_PESSOA')
    SelectSQL.Strings = (
      'select * from CONTATOS where'
      'cd_pessoa = :ppessoa')
    ModifySQL.Strings = (
      'update CONTATOS'
      'set'
      '  CD_CONTATO = :CD_CONTATO,'
      '  CD_PESSOA = :CD_PESSOA,'
      '  DS_CONTATO = :DS_CONTATO,'
      '  TEL = :TEL,'
      '  CARGO = :CARGO'
      'where'
      '  CD_CONTATO = :OLD_CD_CONTATO and'
      '  CD_PESSOA = :OLD_CD_PESSOA')
    Left = 32
    Top = 184
    object IBDContatosCD_CONTATO: TIntegerField
      FieldName = 'CD_CONTATO'
      Origin = 'CONTATOS.CD_CONTATO'
      Required = True
    end
    object IBDContatosCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'CONTATOS.CD_PESSOA'
      Required = True
    end
    object IBDContatosDS_CONTATO: TIBStringField
      FieldName = 'DS_CONTATO'
      Origin = 'CONTATOS.DS_CONTATO'
      Size = 100
    end
    object IBDContatosTEL: TIBStringField
      FieldName = 'TEL'
      Origin = 'CONTATOS.TEL'
      EditMask = '(##) ####-####;1;'
      Size = 100
    end
    object IBDContatosCARGO: TIBStringField
      FieldName = 'CARGO'
      Origin = 'CONTATOS.CARGO'
      Size = 100
    end
  end
  object IBQUltimoContato: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_contato)+1 as ultimo from CONTATOS')
    Left = 120
    Top = 184
    object IBQUltimoContatoULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBDPessoa: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDPessoaBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PESSOA'
      'where'
      '  CD_PESSOA = :OLD_CD_PESSOA')
    InsertSQL.Strings = (
      'insert into PESSOA'
      
        '  (CD_PESSOA, CD_CIDADE, RUA, BAIRRO, CEP, COMPLEMENTO, HOME_PAG' +
        'E, '
      'DT_CADASTRO, '
      '   SITUACAO, OBSERVACOES, USUARIO)'
      'values'
      '  (:CD_PESSOA, :CD_CIDADE, :RUA, :BAIRRO, :CEP, :COMPLEMENTO, '
      ':HOME_PAGE, '
      '   :DT_CADASTRO, :SITUACAO, :OBSERVACOES, :USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_PESSOA,'
      '  CD_CIDADE,'
      '  RUA,'
      '  BAIRRO,'
      '  CEP,'
      '  COMPLEMENTO,'
      '  HOME_PAGE,'
      '  DT_CADASTRO,'
      '  SITUACAO,'
      '  OBSERVACOES,'
      '  USUARIO'
      'from PESSOA '
      'where'
      '  CD_PESSOA = :CD_PESSOA')
    SelectSQL.Strings = (
      'select * from PESSOA where cd_pessoa = :ppessoa')
    ModifySQL.Strings = (
      'update PESSOA'
      'set'
      '  CD_PESSOA = :CD_PESSOA,'
      '  CD_CIDADE = :CD_CIDADE,'
      '  RUA = :RUA,'
      '  BAIRRO = :BAIRRO,'
      '  CEP = :CEP,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  HOME_PAGE = :HOME_PAGE,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  SITUACAO = :SITUACAO,'
      '  OBSERVACOES = :OBSERVACOES,'
      '  USUARIO = :USUARIO'
      'where'
      '  CD_PESSOA = :OLD_CD_PESSOA')
    Left = 24
    Top = 312
    object IBDPessoaCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'PESSOA.CD_PESSOA'
      Required = True
    end
    object IBDPessoaCD_CIDADE: TIntegerField
      FieldName = 'CD_CIDADE'
      Origin = 'PESSOA.CD_CIDADE'
      Required = True
    end
    object IBDPessoaRUA: TIBStringField
      FieldName = 'RUA'
      Origin = 'PESSOA.RUA'
      Required = True
      Size = 100
    end
    object IBDPessoaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'PESSOA.BAIRRO'
      Size = 100
    end
    object IBDPessoaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'PESSOA.CEP'
      EditMask = '#####-###;0;'
      Size = 15
    end
    object IBDPessoaCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'PESSOA.COMPLEMENTO'
      Size = 100
    end
    object IBDPessoaHOME_PAGE: TIBStringField
      FieldName = 'HOME_PAGE'
      Origin = 'PESSOA.HOME_PAGE'
      Size = 50
    end
    object IBDPessoaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'PESSOA.DT_CADASTRO'
      Required = True
    end
    object IBDPessoaSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'PESSOA.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBDPessoaOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'PESSOA.OBSERVACOES'
      Size = 300
    end
    object IBDPessoaUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = 'PESSOA.USUARIO'
      Size = 100
    end
  end
  object IBDPessoaJu: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDPessoaJuBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PESSOA_JURIDICA'
      'where'
      '  CD_PESSOA_JU = :OLD_CD_PESSOA_JU')
    InsertSQL.Strings = (
      'insert into PESSOA_JURIDICA'
      '  (CD_PESSOA_JU, CD_PESSOA, CGC, INSC_ESTADUAL, RZ_SOCIAL, '
      'NM_FANTAZIA, '
      '   CLI_FOR, BLOQUEADO, RM_ATIVIDADE, CD_REGIAO)'
      'values'
      '  (:CD_PESSOA_JU, :CD_PESSOA, :CGC, :INSC_ESTADUAL, :RZ_SOCIAL, '
      ':NM_FANTAZIA, '
      '   :CLI_FOR, :BLOQUEADO, :RM_ATIVIDADE, :CD_REGIAO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_PESSOA_JU,'
      '  CD_PESSOA,'
      '  CGC,'
      '  INSC_ESTADUAL,'
      '  RZ_SOCIAL,'
      '  NM_FANTAZIA,'
      '  CLI_FOR,'
      '  BLOQUEADO,'
      '  RM_ATIVIDADE,'
      '  CD_REGIAO'
      'from PESSOA_JURIDICA '
      'where'
      '  CD_PESSOA_JU = :CD_PESSOA_JU')
    SelectSQL.Strings = (
      'select * from  PESSOA_JURIDICA where cd_pessoa_ju = :ppessoa')
    ModifySQL.Strings = (
      'update PESSOA_JURIDICA'
      'set'
      '  CD_PESSOA_JU = :CD_PESSOA_JU,'
      '  CD_PESSOA = :CD_PESSOA,'
      '  CGC = :CGC,'
      '  INSC_ESTADUAL = :INSC_ESTADUAL,'
      '  RZ_SOCIAL = :RZ_SOCIAL,'
      '  NM_FANTAZIA = :NM_FANTAZIA,'
      '  CLI_FOR = :CLI_FOR,'
      '  BLOQUEADO = :BLOQUEADO,'
      '  RM_ATIVIDADE = :RM_ATIVIDADE,'
      '  CD_REGIAO = :CD_REGIAO'
      'where'
      '  CD_PESSOA_JU = :OLD_CD_PESSOA_JU')
    Left = 24
    Top = 376
    object IBDPessoaJuCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA_JU'
      Required = True
    end
    object IBDPessoaJuCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA'
      Required = True
    end
    object IBDPessoaJuCGC: TIBStringField
      FieldName = 'CGC'
      Origin = 'PESSOA_JURIDICA.CGC'
      EditMask = '##.###.###/####-##;0;'
      Size = 15
    end
    object IBDPessoaJuINSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
      Origin = 'PESSOA_JURIDICA.INSC_ESTADUAL'
      Size = 15
    end
    object IBDPessoaJuRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBDPessoaJuNM_FANTAZIA: TIBStringField
      FieldName = 'NM_FANTAZIA'
      Origin = 'PESSOA_JURIDICA.NM_FANTAZIA'
      Required = True
      Size = 100
    end
    object IBDPessoaJuCLI_FOR: TIBStringField
      FieldName = 'CLI_FOR'
      Origin = 'PESSOA_JURIDICA.CLI_FOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object IBDPessoaJuBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = 'PESSOA_JURIDICA.BLOQUEADO'
      FixedChar = True
      Size = 1
    end
    object IBDPessoaJuRM_ATIVIDADE: TIBStringField
      FieldName = 'RM_ATIVIDADE'
      Origin = 'PESSOA_JURIDICA.RM_ATIVIDADE'
      Size = 100
    end
    object IBDPessoaJuCD_REGIAO: TIntegerField
      FieldName = 'CD_REGIAO'
      Origin = 'PESSOA_JURIDICA.CD_REGIAO'
      Required = True
    end
  end
  object IBQUltimaPessoa: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_pessoa)+1 as ultimo from PESSOA')
    Left = 112
    Top = 312
    object IBQUltimaPessoaULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQUltimaPessoaJu: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_pessoa_ju)+1 as ultimo from PESSOA_JURIDICA')
    Left = 128
    Top = 376
    object IBQUltimaPessoaJuULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsGeralPessoa: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select p.*,c.nm_cidade, c.sigla_uf, pf.* from PESSOA p, PESSOA_J' +
        'URIDICA pf, CIDADE c'
      'where'
      'p.cd_pessoa = pf.cd_pessoa and'
      'p.cd_cidade = c.cd_cidade')
    Left = 256
    Top = 360
    object IBQConsGeralPessoaCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'PESSOA.CD_PESSOA'
      Required = True
    end
    object IBQConsGeralPessoaSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'PESSOA.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBQConsGeralPessoaNM_CIDADE: TIBStringField
      FieldName = 'NM_CIDADE'
      Origin = 'CIDADE.NM_CIDADE'
      Required = True
      Size = 100
    end
    object IBQConsGeralPessoaSIGLA_UF: TIBStringField
      FieldName = 'SIGLA_UF'
      Origin = 'CIDADE.SIGLA_UF'
      Size = 100
    end
    object IBQConsGeralPessoaCGC: TIBStringField
      FieldName = 'CGC'
      Origin = 'PESSOA_JURIDICA.CGC'
      EditMask = '##.###.###/####-##;0;'
      Size = 15
    end
    object IBQConsGeralPessoaINSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
      Origin = 'PESSOA_JURIDICA.INSC_ESTADUAL'
      EditMask = '###.#####-##;0;'
      Size = 15
    end
    object IBQConsGeralPessoaRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQConsGeralPessoaNM_FANTAZIA: TIBStringField
      FieldName = 'NM_FANTAZIA'
      Origin = 'PESSOA_JURIDICA.NM_FANTAZIA'
      Required = True
      Size = 100
    end
    object IBQConsGeralPessoaCLI_FOR: TIBStringField
      FieldName = 'CLI_FOR'
      Origin = 'PESSOA_JURIDICA.CLI_FOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object IBQConsGeralPessoaBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = 'PESSOA_JURIDICA.BLOQUEADO'
      FixedChar = True
      Size = 1
    end
    object IBQConsGeralPessoaRM_ATIVIDADE: TIBStringField
      FieldName = 'RM_ATIVIDADE'
      Origin = 'PESSOA_JURIDICA.RM_ATIVIDADE'
      Size = 100
    end
    object IBQConsGeralPessoaCD_REGIAO: TIntegerField
      FieldName = 'CD_REGIAO'
      Origin = 'PESSOA_JURIDICA.CD_REGIAO'
      Required = True
    end
    object IBQConsGeralPessoaCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA_JU'
      Required = True
    end
  end
  object IBQApagaFone: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from FONE where'
      ' cd_pessoa = :ppessoa')
    Left = 216
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppessoa'
        ParamType = ptUnknown
      end>
  end
  object IBQApagaEmail: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from EMAIL where'
      ' cd_pessoa = :ppessoa')
    Left = 216
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppessoa'
        ParamType = ptUnknown
      end>
  end
  object IBQApagaContato: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from CONTATOS where'
      ' cd_pessoa = :ppessoa')
    Left = 224
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppessoa'
        ParamType = ptUnknown
      end>
  end
  object IBDAlertaPessoa: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDAlertaPessoaBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ALERTA_PESSOA'
      'where'
      '  CD_ALERTA = :OLD_CD_ALERTA and'
      '  CD_PESSOA = :OLD_CD_PESSOA')
    InsertSQL.Strings = (
      'insert into ALERTA_PESSOA'
      '  (CD_ALERTA, CD_PESSOA, DS_ALERTA, USUARIOO, DT_ALERTA, '
      'HR_ALERTA)'
      'values'
      '  (:CD_ALERTA, :CD_PESSOA, :DS_ALERTA, :USUARIOO, :DT_ALERTA, '
      ':HR_ALERTA)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_ALERTA,'
      '  CD_PESSOA,'
      '  DS_ALERTA,'
      '  USUARIOO,'
      '  DT_ALERTA,'
      '  HR_ALERTA'
      'from ALERTA_PESSOA '
      'where'
      '  CD_ALERTA = :CD_ALERTA and'
      '  CD_PESSOA = :CD_PESSOA')
    SelectSQL.Strings = (
      'select * from ALERTA_PESSOA'
      'where cd_pessoa = :ppessoa')
    ModifySQL.Strings = (
      'update ALERTA_PESSOA'
      'set'
      '  CD_ALERTA = :CD_ALERTA,'
      '  CD_PESSOA = :CD_PESSOA,'
      '  DS_ALERTA = :DS_ALERTA,'
      '  USUARIOO = :USUARIOO,'
      '  DT_ALERTA = :DT_ALERTA,'
      '  HR_ALERTA = :HR_ALERTA'
      'where'
      '  CD_ALERTA = :OLD_CD_ALERTA and'
      '  CD_PESSOA = :OLD_CD_PESSOA')
    Left = 40
    Top = 248
    object IBDAlertaPessoaCD_ALERTA: TIntegerField
      FieldName = 'CD_ALERTA'
      Origin = 'ALERTA_PESSOA.CD_ALERTA'
      Required = True
    end
    object IBDAlertaPessoaCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'ALERTA_PESSOA.CD_PESSOA'
      Required = True
    end
    object IBDAlertaPessoaDS_ALERTA: TIBStringField
      FieldName = 'DS_ALERTA'
      Origin = 'ALERTA_PESSOA.DS_ALERTA'
      Required = True
      Size = 300
    end
    object IBDAlertaPessoaUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'ALERTA_PESSOA.USUARIOO'
      Size = 100
    end
    object IBDAlertaPessoaDT_ALERTA: TDateField
      FieldName = 'DT_ALERTA'
      Origin = 'ALERTA_PESSOA.DT_ALERTA'
    end
    object IBDAlertaPessoaHR_ALERTA: TTimeField
      FieldName = 'HR_ALERTA'
      Origin = 'ALERTA_PESSOA.HR_ALERTA'
    end
  end
  object IBQUltimoAlerta: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_alerta)+1 as ultimo from ALERTA_PESSOA')
    Left = 128
    Top = 248
    object IBQUltimoAlertaULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQApagaAlerta: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from ALERTA_PESSOA where'
      ' cd_pessoa = :ppessoa')
    Left = 224
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppessoa'
        ParamType = ptUnknown
      end>
  end
  object IBQExisteAlerta: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ALERTA_PESSOA where cd_pessoa = :ppessoa')
    Left = 320
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppessoa'
        ParamType = ptUnknown
      end>
    object IBQExisteAlertaCD_ALERTA: TIntegerField
      FieldName = 'CD_ALERTA'
      Origin = 'ALERTA_PESSOA.CD_ALERTA'
      Required = True
    end
    object IBQExisteAlertaCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'ALERTA_PESSOA.CD_PESSOA'
      Required = True
    end
    object IBQExisteAlertaDS_ALERTA: TIBStringField
      FieldName = 'DS_ALERTA'
      Origin = 'ALERTA_PESSOA.DS_ALERTA'
      Required = True
      Size = 300
    end
    object IBQExisteAlertaUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'ALERTA_PESSOA.USUARIOO'
      Size = 100
    end
    object IBQExisteAlertaDT_ALERTA: TDateField
      FieldName = 'DT_ALERTA'
      Origin = 'ALERTA_PESSOA.DT_ALERTA'
    end
    object IBQExisteAlertaHR_ALERTA: TTimeField
      FieldName = 'HR_ALERTA'
      Origin = 'ALERTA_PESSOA.HR_ALERTA'
    end
  end
  object IBQUltimaPessoaFi: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_pessoa_fi)+1 as ultimo from PESSOA_FISICA')
    Left = 136
    Top = 440
    object IBQUltimaPessoaFiULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBDPessoaFi: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PESSOA_FISICA'
      'where'
      '  CD_PESSOA_FI = :OLD_CD_PESSOA_FI')
    InsertSQL.Strings = (
      'insert into PESSOA_FISICA'
      '  (CD_PESSOA_FI, CD_PESSOA, RG, CPF, DT_NASCIMENTO, SEXO, '
      'NM_PESSOA)'
      'values'
      '  (:CD_PESSOA_FI, :CD_PESSOA, :RG, :CPF, :DT_NASCIMENTO, :SEXO, '
      ':NM_PESSOA)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_PESSOA_FI,'
      '  CD_PESSOA,'
      '  RG,'
      '  CPF,'
      '  DT_NASCIMENTO,'
      '  SEXO,'
      '  NM_PESSOA'
      'from PESSOA_FISICA '
      'where'
      '  CD_PESSOA_FI = :CD_PESSOA_FI')
    SelectSQL.Strings = (
      'select * from PESSOA_FISICA where'
      'cd_pessoa_fi = :ppessoa')
    ModifySQL.Strings = (
      'update PESSOA_FISICA'
      'set'
      '  CD_PESSOA_FI = :CD_PESSOA_FI,'
      '  CD_PESSOA = :CD_PESSOA,'
      '  RG = :RG,'
      '  CPF = :CPF,'
      '  DT_NASCIMENTO = :DT_NASCIMENTO,'
      '  SEXO = :SEXO,'
      '  NM_PESSOA = :NM_PESSOA'
      'where'
      '  CD_PESSOA_FI = :OLD_CD_PESSOA_FI')
    Left = 40
    Top = 440
    object IBDPessoaFiCD_PESSOA_FI: TIntegerField
      FieldName = 'CD_PESSOA_FI'
      Origin = 'PESSOA_FISICA.CD_PESSOA_FI'
      Required = True
    end
    object IBDPessoaFiCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'PESSOA_FISICA.CD_PESSOA'
      Required = True
    end
    object IBDPessoaFiRG: TIBStringField
      FieldName = 'RG'
      Origin = 'PESSOA_FISICA.RG'
      Size = 15
    end
    object IBDPessoaFiCPF: TIBStringField
      FieldName = 'CPF'
      Origin = 'PESSOA_FISICA.CPF'
      EditMask = '###.###.###-##;0;'
      Size = 15
    end
    object IBDPessoaFiDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
      Origin = 'PESSOA_FISICA.DT_NASCIMENTO'
      Required = True
    end
    object IBDPessoaFiSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'PESSOA_FISICA.SEXO'
      FixedChar = True
      Size = 1
    end
    object IBDPessoaFiNM_PESSOA: TIBStringField
      FieldName = 'NM_PESSOA'
      Origin = 'PESSOA_FISICA.NM_PESSOA'
      Size = 100
    end
  end
  object IBQConsPesFi: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select p.*,c.nm_cidade, c.sigla_uf, pff.*'
      '    from PESSOA p, PESSOA_FISICA pff, CIDADE c'
      '    where p.cd_pessoa = pff.cd_pessoa and'
      '    p.cd_cidade = c.cd_cidade')
    Left = 256
    Top = 440
    object IBQConsPesFiCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'PESSOA.CD_PESSOA'
      Required = True
    end
    object IBQConsPesFiCD_CIDADE: TIntegerField
      FieldName = 'CD_CIDADE'
      Origin = 'PESSOA.CD_CIDADE'
      Required = True
    end
    object IBQConsPesFiRUA: TIBStringField
      FieldName = 'RUA'
      Origin = 'PESSOA.RUA'
      Required = True
      Size = 100
    end
    object IBQConsPesFiBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'PESSOA.BAIRRO'
      Size = 100
    end
    object IBQConsPesFiCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'PESSOA.CEP'
      Size = 15
    end
    object IBQConsPesFiCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'PESSOA.COMPLEMENTO'
      Size = 100
    end
    object IBQConsPesFiHOME_PAGE: TIBStringField
      FieldName = 'HOME_PAGE'
      Origin = 'PESSOA.HOME_PAGE'
      Size = 50
    end
    object IBQConsPesFiDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'PESSOA.DT_CADASTRO'
      Required = True
    end
    object IBQConsPesFiSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'PESSOA.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBQConsPesFiOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'PESSOA.OBSERVACOES'
      Size = 300
    end
    object IBQConsPesFiUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = 'PESSOA.USUARIO'
      Size = 100
    end
    object IBQConsPesFiNM_CIDADE: TIBStringField
      FieldName = 'NM_CIDADE'
      Origin = 'CIDADE.NM_CIDADE'
      Required = True
      Size = 100
    end
    object IBQConsPesFiSIGLA_UF: TIBStringField
      FieldName = 'SIGLA_UF'
      Origin = 'CIDADE.SIGLA_UF'
      Size = 100
    end
    object IBQConsPesFiCD_PESSOA_FI: TIntegerField
      FieldName = 'CD_PESSOA_FI'
      Origin = 'PESSOA_FISICA.CD_PESSOA_FI'
      Required = True
    end
    object IBQConsPesFiCD_PESSOA1: TIntegerField
      FieldName = 'CD_PESSOA1'
      Origin = 'PESSOA_FISICA.CD_PESSOA'
      Required = True
    end
    object IBQConsPesFiRG: TIBStringField
      FieldName = 'RG'
      Origin = 'PESSOA_FISICA.RG'
      Size = 15
    end
    object IBQConsPesFiCPF: TIBStringField
      FieldName = 'CPF'
      Origin = 'PESSOA_FISICA.CPF'
      Size = 15
    end
    object IBQConsPesFiDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
      Origin = 'PESSOA_FISICA.DT_NASCIMENTO'
      Required = True
    end
    object IBQConsPesFiSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'PESSOA_FISICA.SEXO'
      FixedChar = True
      Size = 1
    end
    object IBQConsPesFiNM_PESSOA: TIBStringField
      FieldName = 'NM_PESSOA'
      Origin = 'PESSOA_FISICA.NM_PESSOA'
      Size = 100
    end
  end
  object IBDRegiao: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDRegiaoBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from REGIAO'
      'where'
      '  CD_REGIAO = :OLD_CD_REGIAO')
    InsertSQL.Strings = (
      'insert into REGIAO'
      
        '  (CD_REGIAO, CD_TABELA_PRECO, DS_REGIAO, POPULACAO, OBSERVACOES' +
        ', '
      'DT_CAD, '
      '   USUARIOO)'
      'values'
      '  (:CD_REGIAO, :CD_TABELA_PRECO, :DS_REGIAO, :POPULACAO, '
      ':OBSERVACOES, '
      '   :DT_CAD, :USUARIOO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_REGIAO,'
      '  CD_TABELA_PRECO,'
      '  DS_REGIAO,'
      '  POPULACAO,'
      '  OBSERVACOES,'
      '  DT_CAD,'
      '  USUARIOO'
      'from REGIAO '
      'where'
      '  CD_REGIAO = :CD_REGIAO')
    SelectSQL.Strings = (
      'select * from REGIAO where cd_regiao = :pregiao')
    ModifySQL.Strings = (
      'update REGIAO'
      'set'
      '  CD_REGIAO = :CD_REGIAO,'
      '  CD_TABELA_PRECO = :CD_TABELA_PRECO,'
      '  DS_REGIAO = :DS_REGIAO,'
      '  POPULACAO = :POPULACAO,'
      '  OBSERVACOES = :OBSERVACOES,'
      '  DT_CAD = :DT_CAD,'
      '  USUARIOO = :USUARIOO'
      'where'
      '  CD_REGIAO = :OLD_CD_REGIAO')
    Left = 32
    Top = 504
    object IBDRegiaoCD_REGIAO: TIntegerField
      FieldName = 'CD_REGIAO'
      Origin = 'REGIAO.CD_REGIAO'
      Required = True
    end
    object IBDRegiaoCD_TABELA_PRECO: TIntegerField
      FieldName = 'CD_TABELA_PRECO'
      Origin = 'REGIAO.CD_TABELA_PRECO'
      Required = True
    end
    object IBDRegiaoDS_REGIAO: TIBStringField
      FieldName = 'DS_REGIAO'
      Origin = 'REGIAO.DS_REGIAO'
      Size = 100
    end
    object IBDRegiaoPOPULACAO: TLargeintField
      FieldName = 'POPULACAO'
      Origin = 'REGIAO.POPULACAO'
    end
    object IBDRegiaoOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'REGIAO.OBSERVACOES'
      Size = 300
    end
    object IBDRegiaoDT_CAD: TDateField
      FieldName = 'DT_CAD'
      Origin = 'REGIAO.DT_CAD'
    end
    object IBDRegiaoUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'REGIAO.USUARIOO'
      Size = 100
    end
  end
  object IBQUltimaRegiao: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_regiao)+1 as ultimo from REGIAO')
    Left = 112
    Top = 504
    object IBQUltimaRegiaoULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsRegiao: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      ' SELECT rg.*, tb_p.ds_tabela from'
      'REGIAO rg, TABELA_PRECO tb_p'
      'where rg.cd_tabela_preco = tb_p.cd_tabela')
    Left = 208
    Top = 504
    object IBQConsRegiaoCD_REGIAO: TIntegerField
      FieldName = 'CD_REGIAO'
      Origin = 'REGIAO.CD_REGIAO'
      Required = True
    end
    object IBQConsRegiaoCD_TABELA_PRECO: TIntegerField
      FieldName = 'CD_TABELA_PRECO'
      Origin = 'REGIAO.CD_TABELA_PRECO'
      Required = True
    end
    object IBQConsRegiaoDS_REGIAO: TIBStringField
      FieldName = 'DS_REGIAO'
      Origin = 'REGIAO.DS_REGIAO'
      Size = 100
    end
    object IBQConsRegiaoPOPULACAO: TLargeintField
      FieldName = 'POPULACAO'
      Origin = 'REGIAO.POPULACAO'
    end
    object IBQConsRegiaoOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'REGIAO.OBSERVACOES'
      Size = 300
    end
    object IBQConsRegiaoDT_CAD: TDateField
      FieldName = 'DT_CAD'
      Origin = 'REGIAO.DT_CAD'
    end
    object IBQConsRegiaoUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'REGIAO.USUARIOO'
      Size = 100
    end
    object IBQConsRegiaoDS_TABELA: TIBStringField
      FieldName = 'DS_TABELA'
      Origin = 'TABELA_PRECO.DS_TABELA'
      Required = True
      Size = 100
    end
  end
  object IBQExistCliForRep: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select pj.cd_pessoa_ju from PESSOA_JURIDICA pj'
      '    inner join PESSOA p on p.cd_pessoa = pj.cd_pessoa'
      '    where'
      '    p.cd_pessoa = :ppessoa and'
      '    pj.cli_for = '#39'C'#39)
    Left = 360
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppessoa'
        ParamType = ptUnknown
      end>
    object IBQExistCliForRepCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA_JU'
      Required = True
    end
  end
  object IBQValidaPessoaCnpj: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select pj.cd_pessoa_ju, pj.cgc'
      '    from PESSOA_JURIDICA pj'
      '    where'
      '    pj.cgc = :pcgc')
    Left = 368
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcgc'
        ParamType = ptUnknown
      end>
    object IBQValidaPessoaCnpjCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA_JU'
      Required = True
    end
    object IBQValidaPessoaCnpjCGC: TIBStringField
      FieldName = 'CGC'
      Origin = 'PESSOA_JURIDICA.CGC'
      Size = 15
    end
  end
  object IBQValidaPessoaCpf: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select pf.cd_pessoa_fi, pf.cpf'
      '    from pessoa_fisica pf'
      '    where'
      '    pf.cpf = :pcpf')
    Left = 384
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcpf'
        ParamType = ptUnknown
      end>
    object IBQValidaPessoaCpfCD_PESSOA_FI: TIntegerField
      FieldName = 'CD_PESSOA_FI'
      Origin = 'PESSOA_FISICA.CD_PESSOA_FI'
      Required = True
    end
    object IBQValidaPessoaCpfCPF: TIBStringField
      FieldName = 'CPF'
      Origin = 'PESSOA_FISICA.CPF'
      Size = 15
    end
  end
end
