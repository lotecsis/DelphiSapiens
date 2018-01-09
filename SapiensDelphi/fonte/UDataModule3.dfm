object DataModule3: TDataModule3
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 65511
  Top = 147
  Height = 612
  Width = 788
  object IBDMovimentoEstoque: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDMovimentoEstoqueBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MOVIMENTO_ESTOQUE'
      'where'
      '  CD_MOVIMENTO = :OLD_CD_MOVIMENTO')
    InsertSQL.Strings = (
      'insert into MOVIMENTO_ESTOQUE'
      '  (CD_MOVIMENTO, DS_MOVIMENTO, TIPO_MOVIMENTO, DT_CADASTRO, '
      'USUARIOO)'
      'values'
      '  (:CD_MOVIMENTO, :DS_MOVIMENTO, :TIPO_MOVIMENTO, :DT_CADASTRO, '
      ':USUARIOO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_MOVIMENTO,'
      '  DS_MOVIMENTO,'
      '  TIPO_MOVIMENTO,'
      '  DT_CADASTRO,'
      '  USUARIOO'
      'from MOVIMENTO_ESTOQUE '
      'where'
      '  CD_MOVIMENTO = :CD_MOVIMENTO')
    SelectSQL.Strings = (
      'select * from MOVIMENTO_ESTOQUE where cd_movimento = :pmovimento')
    ModifySQL.Strings = (
      'update MOVIMENTO_ESTOQUE'
      'set'
      '  CD_MOVIMENTO = :CD_MOVIMENTO,'
      '  DS_MOVIMENTO = :DS_MOVIMENTO,'
      '  TIPO_MOVIMENTO = :TIPO_MOVIMENTO,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  USUARIOO = :USUARIOO'
      'where'
      '  CD_MOVIMENTO = :OLD_CD_MOVIMENTO')
    Left = 64
    Top = 8
    object IBDMovimentoEstoqueCD_MOVIMENTO: TIntegerField
      FieldName = 'CD_MOVIMENTO'
      Origin = 'MOVIMENTO_ESTOQUE.CD_MOVIMENTO'
      Required = True
    end
    object IBDMovimentoEstoqueDS_MOVIMENTO: TIBStringField
      FieldName = 'DS_MOVIMENTO'
      Origin = 'MOVIMENTO_ESTOQUE.DS_MOVIMENTO'
      Size = 100
    end
    object IBDMovimentoEstoqueTIPO_MOVIMENTO: TIBStringField
      FieldName = 'TIPO_MOVIMENTO'
      Origin = 'MOVIMENTO_ESTOQUE.TIPO_MOVIMENTO'
      FixedChar = True
      Size = 1
    end
    object IBDMovimentoEstoqueDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'MOVIMENTO_ESTOQUE.DT_CADASTRO'
    end
    object IBDMovimentoEstoqueUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'MOVIMENTO_ESTOQUE.USUARIOO'
      Size = 100
    end
  end
  object IBQUltimoMovimento: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_movimento)+1 as ultimo from MOVIMENTO_ESTOQUE')
    Left = 184
    Top = 8
    object IBQUltimoMovimentoULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsMovimento: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MOVIMENTO_ESTOQUE ')
    Left = 296
    Top = 8
    object IBQConsMovimentoCD_MOVIMENTO: TIntegerField
      FieldName = 'CD_MOVIMENTO'
      Origin = 'MOVIMENTO_ESTOQUE.CD_MOVIMENTO'
      Required = True
    end
    object IBQConsMovimentoDS_MOVIMENTO: TIBStringField
      FieldName = 'DS_MOVIMENTO'
      Origin = 'MOVIMENTO_ESTOQUE.DS_MOVIMENTO'
      Size = 100
    end
    object IBQConsMovimentoTIPO_MOVIMENTO: TIBStringField
      FieldName = 'TIPO_MOVIMENTO'
      Origin = 'MOVIMENTO_ESTOQUE.TIPO_MOVIMENTO'
      FixedChar = True
      Size = 1
    end
    object IBQConsMovimentoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'MOVIMENTO_ESTOQUE.DT_CADASTRO'
    end
    object IBQConsMovimentoUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'MOVIMENTO_ESTOQUE.USUARIOO'
      Size = 100
    end
  end
  object IBDGrupoProdutos: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDGrupoProdutosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from GRUPO_PRODUTO'
      'where'
      '  CD_GRUPO = :OLD_CD_GRUPO')
    InsertSQL.Strings = (
      'insert into GRUPO_PRODUTO'
      '  (CD_GRUPO, DS_GRUPO, DT_CADASTRO, USUARIOO)'
      'values'
      '  (:CD_GRUPO, :DS_GRUPO, :DT_CADASTRO, :USUARIOO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_GRUPO,'
      '  DS_GRUPO,'
      '  DT_CADASTRO,'
      '  USUARIOO'
      'from GRUPO_PRODUTO '
      'where'
      '  CD_GRUPO = :CD_GRUPO')
    SelectSQL.Strings = (
      'select * from GRUPO_PRODUTO where cd_grupo = :pgrupo')
    ModifySQL.Strings = (
      'update GRUPO_PRODUTO'
      'set'
      '  CD_GRUPO = :CD_GRUPO,'
      '  DS_GRUPO = :DS_GRUPO,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  USUARIOO = :USUARIOO'
      'where'
      '  CD_GRUPO = :OLD_CD_GRUPO')
    Left = 72
    Top = 56
    object IBDGrupoProdutosCD_GRUPO: TIntegerField
      FieldName = 'CD_GRUPO'
      Origin = 'GRUPO_PRODUTO.CD_GRUPO'
      Required = True
    end
    object IBDGrupoProdutosDS_GRUPO: TIBStringField
      FieldName = 'DS_GRUPO'
      Origin = 'GRUPO_PRODUTO.DS_GRUPO'
      Size = 100
    end
    object IBDGrupoProdutosDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'GRUPO_PRODUTO.DT_CADASTRO'
    end
    object IBDGrupoProdutosUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'GRUPO_PRODUTO.USUARIOO'
      Size = 100
    end
  end
  object IBQUltimoGrupo: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_grupo)+1 as ultimo from GRUPO_PRODUTO')
    Left = 176
    Top = 56
    object IBQUltimoGrupoULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsGrupoProdutos: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GRUPO_PRODUTO')
    Left = 288
    Top = 56
    object IBQConsGrupoProdutosCD_GRUPO: TIntegerField
      FieldName = 'CD_GRUPO'
      Origin = 'GRUPO_PRODUTO.CD_GRUPO'
      Required = True
    end
    object IBQConsGrupoProdutosDS_GRUPO: TIBStringField
      FieldName = 'DS_GRUPO'
      Origin = 'GRUPO_PRODUTO.DS_GRUPO'
      Size = 100
    end
    object IBQConsGrupoProdutosDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'GRUPO_PRODUTO.DT_CADASTRO'
    end
    object IBQConsGrupoProdutosUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'GRUPO_PRODUTO.USUARIOO'
      Size = 100
    end
  end
  object IBDSitTributaria: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDSitTributariaBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SITU_TRIBUTARIA'
      'where'
      '  CD_SITUACAO = :OLD_CD_SITUACAO')
    InsertSQL.Strings = (
      'insert into SITU_TRIBUTARIA'
      
        '  (CD_SITUACAO, DS_SITUACAO, SIGLA, ISENTO_ICMS, ICMS_SUBSTITUID' +
        'O, '
      'REDU_BC_ICMS)'
      'values'
      
        '  (:CD_SITUACAO, :DS_SITUACAO, :SIGLA, :ISENTO_ICMS, :ICMS_SUBST' +
        'ITUIDO, '
      '   :REDU_BC_ICMS)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_SITUACAO,'
      '  DS_SITUACAO,'
      '  SIGLA,'
      '  ISENTO_ICMS,'
      '  ICMS_SUBSTITUIDO,'
      '  REDU_BC_ICMS'
      'from SITU_TRIBUTARIA '
      'where'
      '  CD_SITUACAO = :CD_SITUACAO')
    SelectSQL.Strings = (
      'select * from SITU_TRIBUTARIA where cd_situacao = :psituacao')
    ModifySQL.Strings = (
      'update SITU_TRIBUTARIA'
      'set'
      '  CD_SITUACAO = :CD_SITUACAO,'
      '  DS_SITUACAO = :DS_SITUACAO,'
      '  SIGLA = :SIGLA,'
      '  ISENTO_ICMS = :ISENTO_ICMS,'
      '  ICMS_SUBSTITUIDO = :ICMS_SUBSTITUIDO,'
      '  REDU_BC_ICMS = :REDU_BC_ICMS'
      'where'
      '  CD_SITUACAO = :OLD_CD_SITUACAO')
    Left = 80
    Top = 104
    object IBDSitTributariaCD_SITUACAO: TIntegerField
      FieldName = 'CD_SITUACAO'
      Origin = 'SITU_TRIBUTARIA.CD_SITUACAO'
      Required = True
    end
    object IBDSitTributariaDS_SITUACAO: TIBStringField
      FieldName = 'DS_SITUACAO'
      Origin = 'SITU_TRIBUTARIA.DS_SITUACAO'
      Size = 200
    end
    object IBDSitTributariaSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = 'SITU_TRIBUTARIA.SIGLA'
      Size = 100
    end
    object IBDSitTributariaISENTO_ICMS: TIBStringField
      FieldName = 'ISENTO_ICMS'
      Origin = 'SITU_TRIBUTARIA.ISENTO_ICMS'
      FixedChar = True
      Size = 1
    end
    object IBDSitTributariaICMS_SUBSTITUIDO: TIBStringField
      FieldName = 'ICMS_SUBSTITUIDO'
      Origin = 'SITU_TRIBUTARIA.ICMS_SUBSTITUIDO'
      FixedChar = True
      Size = 1
    end
    object IBDSitTributariaREDU_BC_ICMS: TIBStringField
      FieldName = 'REDU_BC_ICMS'
      Origin = 'SITU_TRIBUTARIA.REDU_BC_ICMS'
      FixedChar = True
      Size = 1
    end
  end
  object IBQUltimoSitTribu: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_situacao)+1 as ultimo from SITU_TRIBUTARIA')
    Left = 176
    Top = 104
    object IBQUltimoSitTribuULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsSitTribu: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SITU_TRIBUTARIA')
    Left = 264
    Top = 104
    object IBQConsSitTribuCD_SITUACAO: TIntegerField
      FieldName = 'CD_SITUACAO'
      Origin = 'SITU_TRIBUTARIA.CD_SITUACAO'
      Required = True
    end
    object IBQConsSitTribuDS_SITUACAO: TIBStringField
      FieldName = 'DS_SITUACAO'
      Origin = 'SITU_TRIBUTARIA.DS_SITUACAO'
      Size = 200
    end
    object IBQConsSitTribuSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = 'SITU_TRIBUTARIA.SIGLA'
      Size = 100
    end
    object IBQConsSitTribuISENTO_ICMS: TIBStringField
      FieldName = 'ISENTO_ICMS'
      Origin = 'SITU_TRIBUTARIA.ISENTO_ICMS'
      FixedChar = True
      Size = 1
    end
    object IBQConsSitTribuICMS_SUBSTITUIDO: TIBStringField
      FieldName = 'ICMS_SUBSTITUIDO'
      Origin = 'SITU_TRIBUTARIA.ICMS_SUBSTITUIDO'
      FixedChar = True
      Size = 1
    end
    object IBQConsSitTribuREDU_BC_ICMS: TIBStringField
      FieldName = 'REDU_BC_ICMS'
      Origin = 'SITU_TRIBUTARIA.REDU_BC_ICMS'
      FixedChar = True
      Size = 1
    end
  end
  object IBDProduto: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDProdutoBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTO'
      'where'
      '  CD_PRODUTO = :OLD_CD_PRODUTO')
    InsertSQL.Strings = (
      'insert into PRODUTO'
      '  (CD_PRODUTO, CD_SITU_TRIBU, CD_UN_MEDIDA, CD_GRUPO_PROD, '
      'DS_PRODUTO, '
      '   SITUACAO, PRECO_VENDA, CUBICO, CODIGO_BARRAS, VEND_SUSPENSA, '
      'PERC_MIN, '
      '   PERC_MAX, PESO, IMAGEM, DT_CADASTRO, USUARIOO)'
      'values'
      '  (:CD_PRODUTO, :CD_SITU_TRIBU, :CD_UN_MEDIDA, :CD_GRUPO_PROD, '
      ':DS_PRODUTO, '
      '   :SITUACAO, :PRECO_VENDA, :CUBICO, :CODIGO_BARRAS, '
      ':VEND_SUSPENSA, :PERC_MIN, '
      '   :PERC_MAX, :PESO, :IMAGEM, :DT_CADASTRO, :USUARIOO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_PRODUTO,'
      '  CD_SITU_TRIBU,'
      '  CD_UN_MEDIDA,'
      '  CD_GRUPO_PROD,'
      '  DS_PRODUTO,'
      '  SITUACAO,'
      '  PRECO_VENDA,'
      '  CUBICO,'
      '  CODIGO_BARRAS,'
      '  VEND_SUSPENSA,'
      '  PERC_MIN,'
      '  PERC_MAX,'
      '  PESO,'
      '  IMAGEM,'
      '  DT_CADASTRO,'
      '  USUARIOO'
      'from PRODUTO '
      'where'
      '  CD_PRODUTO = :CD_PRODUTO')
    SelectSQL.Strings = (
      'select * from  PRODUTO where cd_produto = :pproduto')
    ModifySQL.Strings = (
      'update PRODUTO'
      'set'
      '  CD_PRODUTO = :CD_PRODUTO,'
      '  CD_SITU_TRIBU = :CD_SITU_TRIBU,'
      '  CD_UN_MEDIDA = :CD_UN_MEDIDA,'
      '  CD_GRUPO_PROD = :CD_GRUPO_PROD,'
      '  DS_PRODUTO = :DS_PRODUTO,'
      '  SITUACAO = :SITUACAO,'
      '  PRECO_VENDA = :PRECO_VENDA,'
      '  CUBICO = :CUBICO,'
      '  CODIGO_BARRAS = :CODIGO_BARRAS,'
      '  VEND_SUSPENSA = :VEND_SUSPENSA,'
      '  PERC_MIN = :PERC_MIN,'
      '  PERC_MAX = :PERC_MAX,'
      '  PESO = :PESO,'
      '  IMAGEM = :IMAGEM,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  USUARIOO = :USUARIOO'
      'where'
      '  CD_PRODUTO = :OLD_CD_PRODUTO')
    Left = 40
    Top = 152
    object IBDProdutoCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'PRODUTO.CD_PRODUTO'
      Required = True
    end
    object IBDProdutoCD_SITU_TRIBU: TIntegerField
      FieldName = 'CD_SITU_TRIBU'
      Origin = 'PRODUTO.CD_SITU_TRIBU'
      Required = True
    end
    object IBDProdutoCD_UN_MEDIDA: TIntegerField
      FieldName = 'CD_UN_MEDIDA'
      Origin = 'PRODUTO.CD_UN_MEDIDA'
      Required = True
    end
    object IBDProdutoCD_GRUPO_PROD: TIntegerField
      FieldName = 'CD_GRUPO_PROD'
      Origin = 'PRODUTO.CD_GRUPO_PROD'
      Required = True
    end
    object IBDProdutoDS_PRODUTO: TIBStringField
      FieldName = 'DS_PRODUTO'
      Origin = 'PRODUTO.DS_PRODUTO'
      Size = 100
    end
    object IBDProdutoSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'PRODUTO.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBDProdutoPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRODUTO.PRECO_VENDA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object IBDProdutoCUBICO: TIBBCDField
      FieldName = 'CUBICO'
      Origin = 'PRODUTO.CUBICO'
      Precision = 9
      Size = 2
    end
    object IBDProdutoCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'PRODUTO.CODIGO_BARRAS'
    end
    object IBDProdutoVEND_SUSPENSA: TIBStringField
      FieldName = 'VEND_SUSPENSA'
      Origin = 'PRODUTO.VEND_SUSPENSA'
      FixedChar = True
      Size = 1
    end
    object IBDProdutoPERC_MIN: TIBBCDField
      FieldName = 'PERC_MIN'
      Origin = 'PRODUTO.PERC_MIN'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object IBDProdutoPERC_MAX: TIBBCDField
      FieldName = 'PERC_MAX'
      Origin = 'PRODUTO.PERC_MAX'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object IBDProdutoPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = 'PRODUTO.PESO'
      Precision = 9
      Size = 2
    end
    object IBDProdutoIMAGEM: TIBStringField
      FieldName = 'IMAGEM'
      Origin = 'PRODUTO.IMAGEM'
      Size = 500
    end
    object IBDProdutoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'PRODUTO.DT_CADASTRO'
    end
    object IBDProdutoUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'PRODUTO.USUARIOO'
      Size = 100
    end
  end
  object IBQUltimoProduto: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_produto)+1 as ultimo from PRODUTO')
    Left = 136
    Top = 152
    object IBQUltimoProdutoULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsTabsProd: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select gp.ds_grupo, gp.cd_grupo, un.ds_unidade, un.cd_unidade,'
      'un.sigla_unidade, str.ds_situacao, str.cd_situacao'
      
        'from GRUPO_PRODUTO gp, UNIDADE_MEDIDA un, SITU_TRIBUTARIA str, P' +
        'RODUTO pd'
      'where'
      'pd.cd_grupo_prod = gp.cd_grupo and'
      'pd.cd_un_medida = un.cd_unidade and'
      'pd.cd_situ_tribu = str.cd_situacao and'
      'pd.cd_produto = :pproduto')
    Left = 232
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end>
    object IBQConsTabsProdDS_GRUPO: TIBStringField
      FieldName = 'DS_GRUPO'
      Origin = 'GRUPO_PRODUTO.DS_GRUPO'
      Size = 100
    end
    object IBQConsTabsProdCD_GRUPO: TIntegerField
      FieldName = 'CD_GRUPO'
      Origin = 'GRUPO_PRODUTO.CD_GRUPO'
      Required = True
    end
    object IBQConsTabsProdDS_UNIDADE: TIBStringField
      FieldName = 'DS_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.DS_UNIDADE'
      Size = 50
    end
    object IBQConsTabsProdCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.CD_UNIDADE'
      Required = True
    end
    object IBQConsTabsProdSIGLA_UNIDADE: TIBStringField
      FieldName = 'SIGLA_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.SIGLA_UNIDADE'
      Size = 2
    end
    object IBQConsTabsProdDS_SITUACAO: TIBStringField
      FieldName = 'DS_SITUACAO'
      Origin = 'SITU_TRIBUTARIA.DS_SITUACAO'
      Size = 200
    end
    object IBQConsTabsProdCD_SITUACAO: TIntegerField
      FieldName = 'CD_SITUACAO'
      Origin = 'SITU_TRIBUTARIA.CD_SITUACAO'
      Required = True
    end
  end
  object IBDCompProduto: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from COMPOSICAO_PRODUTO'
      'where'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA and'
      '  CD_PRODUTO = :OLD_CD_PRODUTO')
    InsertSQL.Strings = (
      'insert into COMPOSICAO_PRODUTO'
      '  (CD_MAT_PRIMA, CD_PRODUTO, QTDE_MAT_PRIMA)'
      'values'
      '  (:CD_MAT_PRIMA, :CD_PRODUTO, :QTDE_MAT_PRIMA)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_MAT_PRIMA,'
      '  CD_PRODUTO,'
      '  QTDE_MAT_PRIMA'
      'from COMPOSICAO_PRODUTO '
      'where'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA and'
      '  CD_PRODUTO = :CD_PRODUTO')
    SelectSQL.Strings = (
      'select * from COMPOSICAO_PRODUTO where '
      'cd_produto = :pproduto and'
      'cd_mat_prima = :pmateria')
    ModifySQL.Strings = (
      'update COMPOSICAO_PRODUTO'
      'set'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA,'
      '  CD_PRODUTO = :CD_PRODUTO,'
      '  QTDE_MAT_PRIMA = :QTDE_MAT_PRIMA'
      'where'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA and'
      '  CD_PRODUTO = :OLD_CD_PRODUTO')
    Left = 32
    Top = 200
    object IBDCompProdutoCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'COMPOSICAO_PRODUTO.CD_MAT_PRIMA'
      Required = True
    end
    object IBDCompProdutoCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'COMPOSICAO_PRODUTO.CD_PRODUTO'
      Required = True
    end
    object IBDCompProdutoQTDE_MAT_PRIMA: TIBBCDField
      FieldName = 'QTDE_MAT_PRIMA'
      Origin = 'COMPOSICAO_PRODUTO.QTDE_MAT_PRIMA'
      Precision = 9
      Size = 2
    end
  end
  object IBQConsComp: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select mt.cd_mat_prima, mt.ds_mat_prima, un.ds_unidade, cm.qtde_' +
        'mat_prima'
      'from MATERIA_PRIMA mt, UNIDADE_MEDIDA un,  COMPOSICAO_PRODUTO cm'
      'where'
      'cm.cd_mat_prima = mt.cd_mat_prima and'
      'mt.cd_un_medida = un.cd_unidade and'
      'cm.cd_produto = :pproduto')
    Left = 128
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end>
    object IBQConsCompCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsCompDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.DS_MAT_PRIMA'
      Size = 100
    end
    object IBQConsCompDS_UNIDADE: TIBStringField
      FieldName = 'DS_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.DS_UNIDADE'
      Size = 50
    end
    object IBQConsCompQTDE_MAT_PRIMA: TIBBCDField
      FieldName = 'QTDE_MAT_PRIMA'
      Origin = 'COMPOSICAO_PRODUTO.QTDE_MAT_PRIMA'
      Precision = 9
      Size = 2
    end
  end
  object IBQExisteMat: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from COMPOSICAO_PRODUTO'
      'where'
      'cd_produto = :pproduto and'
      'cd_mat_prima = :pmateria')
    Left = 224
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
    object IBQExisteMatCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'COMPOSICAO_PRODUTO.CD_MAT_PRIMA'
      Required = True
    end
    object IBQExisteMatCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'COMPOSICAO_PRODUTO.CD_PRODUTO'
      Required = True
    end
    object IBQExisteMatQTDE_MAT_PRIMA: TIBBCDField
      FieldName = 'QTDE_MAT_PRIMA'
      Origin = 'COMPOSICAO_PRODUTO.QTDE_MAT_PRIMA'
      Precision = 9
      Size = 2
    end
  end
  object IBQApagaComposicao: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from composicao_produto'
      'where'
      'cd_produto = :pproduto')
    Left = 328
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end>
  end
  object IBDTabPreco: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TABELA_PRECO'
      'where'
      '  CD_TABELA = :OLD_CD_TABELA')
    InsertSQL.Strings = (
      'insert into TABELA_PRECO'
      '  (CD_TABELA, DS_TABELA, SIGLA_TABELA, DT_CADASTRO, USUARIO)'
      'values'
      
        '  (:CD_TABELA, :DS_TABELA, :SIGLA_TABELA, :DT_CADASTRO, :USUARIO' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  CD_TABELA,'
      '  DS_TABELA,'
      '  SIGLA_TABELA,'
      '  DT_CADASTRO,'
      '  USUARIO'
      'from TABELA_PRECO '
      'where'
      '  CD_TABELA = :CD_TABELA')
    SelectSQL.Strings = (
      'select * from TABELA_PRECO where cd_tabela = :ptabela')
    ModifySQL.Strings = (
      'update TABELA_PRECO'
      'set'
      '  CD_TABELA = :CD_TABELA,'
      '  DS_TABELA = :DS_TABELA,'
      '  SIGLA_TABELA = :SIGLA_TABELA,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  USUARIO = :USUARIO'
      'where'
      '  CD_TABELA = :OLD_CD_TABELA')
    Left = 24
    Top = 256
    object IBDTabPrecoCD_TABELA: TIntegerField
      FieldName = 'CD_TABELA'
      Origin = 'TABELA_PRECO.CD_TABELA'
      Required = True
    end
    object IBDTabPrecoDS_TABELA: TIBStringField
      FieldName = 'DS_TABELA'
      Origin = 'TABELA_PRECO.DS_TABELA'
      Required = True
      Size = 100
    end
    object IBDTabPrecoUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = 'TABELA_PRECO.USUARIO'
      Size = 100
    end
    object IBDTabPrecoSIGLA_TABELA: TIBStringField
      FieldName = 'SIGLA_TABELA'
      Origin = 'TABELA_PRECO.SIGLA_TABELA'
    end
    object IBDTabPrecoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'TABELA_PRECO.DT_CADASTRO'
      Required = True
    end
  end
  object IBQUltimaTabela: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_tabela)+1 as ultimo from TABELA_PRECO')
    Left = 112
    Top = 256
    object IBQUltimaTabelaULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsTabPreco: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TABELA_PRECO order by cd_tabela asc')
    Left = 224
    Top = 256
    object IBQConsTabPrecoCD_TABELA: TIntegerField
      FieldName = 'CD_TABELA'
      Origin = 'TABELA_PRECO.CD_TABELA'
      Required = True
    end
    object IBQConsTabPrecoDS_TABELA: TIBStringField
      FieldName = 'DS_TABELA'
      Origin = 'TABELA_PRECO.DS_TABELA'
      Required = True
      Size = 100
    end
    object IBQConsTabPrecoSIGLA_TABELA: TIBStringField
      FieldName = 'SIGLA_TABELA'
      Origin = 'TABELA_PRECO.SIGLA_TABELA'
    end
    object IBQConsTabPrecoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'TABELA_PRECO.DT_CADASTRO'
      Required = True
    end
    object IBQConsTabPrecoUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = 'TABELA_PRECO.USUARIO'
      Size = 100
    end
  end
  object IBDProdTabela: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTOS_TABELA'
      'where'
      '  CD_PRODUTO = :OLD_CD_PRODUTO and'
      '  CD_TABELA = :OLD_CD_TABELA')
    InsertSQL.Strings = (
      'insert into PRODUTOS_TABELA'
      '  (CD_PRODUTO, CD_TABELA, PRECO_VENDA, DT_CAD, USUARIOO)'
      'values'
      '  (:CD_PRODUTO, :CD_TABELA, :PRECO_VENDA, :DT_CAD, :USUARIOO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_PRODUTO,'
      '  CD_TABELA,'
      '  PRECO_VENDA,'
      '  DT_CAD,'
      '  USUARIOO'
      'from PRODUTOS_TABELA '
      'where'
      '  CD_PRODUTO = :CD_PRODUTO and'
      '  CD_TABELA = :CD_TABELA')
    SelectSQL.Strings = (
      'select * from PRODUTOS_TABELA where cd_produto = :pproduto and'
      'cd_tabela = :ptabela')
    ModifySQL.Strings = (
      'update PRODUTOS_TABELA'
      'set'
      '  CD_PRODUTO = :CD_PRODUTO,'
      '  CD_TABELA = :CD_TABELA,'
      '  PRECO_VENDA = :PRECO_VENDA,'
      '  DT_CAD = :DT_CAD,'
      '  USUARIOO = :USUARIOO'
      'where'
      '  CD_PRODUTO = :OLD_CD_PRODUTO and'
      '  CD_TABELA = :OLD_CD_TABELA')
    Left = 32
    Top = 312
    object IBDProdTabelaCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'PRODUTOS_TABELA.CD_PRODUTO'
      Required = True
    end
    object IBDProdTabelaCD_TABELA: TIntegerField
      FieldName = 'CD_TABELA'
      Origin = 'PRODUTOS_TABELA.CD_TABELA'
      Required = True
    end
    object IBDProdTabelaPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRODUTOS_TABELA.PRECO_VENDA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object IBDProdTabelaDT_CAD: TDateField
      FieldName = 'DT_CAD'
      Origin = 'PRODUTOS_TABELA.DT_CAD'
    end
    object IBDProdTabelaUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'PRODUTOS_TABELA.USUARIOO'
      Size = 100
    end
  end
  object IBQConsProdTabela: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select pd.ds_produto,pd.cubico, pd_t.* from PRODUTO pd, PRODUTOS' +
        '_TABELA pd_t'
      'where'
      'pd_t.cd_produto = pd.cd_produto and'
      'pd_t.cd_tabela = :ptabela')
    Left = 136
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptabela'
        ParamType = ptUnknown
      end>
    object IBQConsProdTabelaDS_PRODUTO: TIBStringField
      FieldName = 'DS_PRODUTO'
      Origin = 'PRODUTO.DS_PRODUTO'
      Size = 100
    end
    object IBQConsProdTabelaCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'PRODUTOS_TABELA.CD_PRODUTO'
      Required = True
    end
    object IBQConsProdTabelaCD_TABELA: TIntegerField
      FieldName = 'CD_TABELA'
      Origin = 'PRODUTOS_TABELA.CD_TABELA'
      Required = True
    end
    object IBQConsProdTabelaPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRODUTOS_TABELA.PRECO_VENDA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object IBQConsProdTabelaDT_CAD: TDateField
      FieldName = 'DT_CAD'
      Origin = 'PRODUTOS_TABELA.DT_CAD'
    end
    object IBQConsProdTabelaUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'PRODUTOS_TABELA.USUARIOO'
      Size = 100
    end
    object IBQConsProdTabelaCUBICO: TIBBCDField
      FieldName = 'CUBICO'
      Origin = 'PRODUTO.CUBICO'
      Precision = 9
      Size = 2
    end
  end
  object IBQConsProduto: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select pd.*, str.ds_situacao, un.ds_unidade, gp.ds_grupo'
      
        'from PRODUTO pd, UNIDADE_MEDIDA un, SITU_TRIBUTARIA str, GRUPO_P' +
        'RODUTO gp'
      'where'
      'pd.cd_situ_tribu = str.cd_situacao and'
      'pd.cd_un_medida = un.cd_unidade and'
      'pd.cd_grupo_prod = gp.cd_grupo and'
      'pd.cd_produto = :pproduto')
    Left = 328
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end>
    object IBQConsProdutoCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'PRODUTO.CD_PRODUTO'
      Required = True
    end
    object IBQConsProdutoCD_SITU_TRIBU: TIntegerField
      FieldName = 'CD_SITU_TRIBU'
      Origin = 'PRODUTO.CD_SITU_TRIBU'
      Required = True
    end
    object IBQConsProdutoCD_UN_MEDIDA: TIntegerField
      FieldName = 'CD_UN_MEDIDA'
      Origin = 'PRODUTO.CD_UN_MEDIDA'
      Required = True
    end
    object IBQConsProdutoCD_GRUPO_PROD: TIntegerField
      FieldName = 'CD_GRUPO_PROD'
      Origin = 'PRODUTO.CD_GRUPO_PROD'
      Required = True
    end
    object IBQConsProdutoDS_PRODUTO: TIBStringField
      FieldName = 'DS_PRODUTO'
      Origin = 'PRODUTO.DS_PRODUTO'
      Size = 100
    end
    object IBQConsProdutoSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'PRODUTO.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBQConsProdutoPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRODUTO.PRECO_VENDA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object IBQConsProdutoCUBICO: TIBBCDField
      FieldName = 'CUBICO'
      Origin = 'PRODUTO.CUBICO'
      Precision = 9
      Size = 2
    end
    object IBQConsProdutoCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'PRODUTO.CODIGO_BARRAS'
    end
    object IBQConsProdutoVEND_SUSPENSA: TIBStringField
      FieldName = 'VEND_SUSPENSA'
      Origin = 'PRODUTO.VEND_SUSPENSA'
      FixedChar = True
      Size = 1
    end
    object IBQConsProdutoPERC_MIN: TIBBCDField
      FieldName = 'PERC_MIN'
      Origin = 'PRODUTO.PERC_MIN'
      Precision = 9
      Size = 2
    end
    object IBQConsProdutoPERC_MAX: TIBBCDField
      FieldName = 'PERC_MAX'
      Origin = 'PRODUTO.PERC_MAX'
      Precision = 9
      Size = 2
    end
    object IBQConsProdutoPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = 'PRODUTO.PESO'
      Precision = 9
      Size = 2
    end
    object IBQConsProdutoIMAGEM: TIBStringField
      FieldName = 'IMAGEM'
      Origin = 'PRODUTO.IMAGEM'
      Size = 500
    end
    object IBQConsProdutoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'PRODUTO.DT_CADASTRO'
    end
    object IBQConsProdutoUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'PRODUTO.USUARIOO'
      Size = 100
    end
    object IBQConsProdutoDS_SITUACAO: TIBStringField
      FieldName = 'DS_SITUACAO'
      Origin = 'SITU_TRIBUTARIA.DS_SITUACAO'
      Size = 200
    end
    object IBQConsProdutoDS_UNIDADE: TIBStringField
      FieldName = 'DS_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.DS_UNIDADE'
      Size = 50
    end
    object IBQConsProdutoDS_GRUPO: TIBStringField
      FieldName = 'DS_GRUPO'
      Origin = 'GRUPO_PRODUTO.DS_GRUPO'
      Size = 100
    end
  end
  object IBQPrecoProduto: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select pd.preco_venda from PRODUTO pd'
      'where'
      'pd.cd_produto = :pproduto')
    Left = 256
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end>
    object IBQPrecoProdutoPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRODUTO.PRECO_VENDA'
      Precision = 9
      Size = 2
    end
  end
  object IBQExisteProduto: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      ' select pd_t.cd_produto from PRODUTOS_TABELA pd_t'
      ' where'
      ' pd_t.cd_produto = :pproduto and'
      ' pd_t.cd_tabela = :ptabela')
    Left = 360
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptabela'
        ParamType = ptUnknown
      end>
    object IBQExisteProdutoCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'PRODUTO.CD_PRODUTO'
      Required = True
    end
  end
  object IBQApagaProdTab: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from PRODUTOS_TABELA'
      'where cd_tabela = :ptabela')
    Left = 336
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptabela'
        ParamType = ptUnknown
      end>
  end
  object IBQConsSimpTabPreco: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TABELA_PRECO')
    Left = 448
    Top = 256
    object IBQConsSimpTabPrecoCD_TABELA: TIntegerField
      FieldName = 'CD_TABELA'
      Origin = 'TABELA_PRECO.CD_TABELA'
      Required = True
    end
    object IBQConsSimpTabPrecoDS_TABELA: TIBStringField
      FieldName = 'DS_TABELA'
      Origin = 'TABELA_PRECO.DS_TABELA'
      Required = True
      Size = 100
    end
    object IBQConsSimpTabPrecoSIGLA_TABELA: TIBStringField
      FieldName = 'SIGLA_TABELA'
      Origin = 'TABELA_PRECO.SIGLA_TABELA'
    end
    object IBQConsSimpTabPrecoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'TABELA_PRECO.DT_CADASTRO'
      Required = True
    end
    object IBQConsSimpTabPrecoUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = 'TABELA_PRECO.USUARIO'
      Size = 100
    end
  end
  object IBDCarteira: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CARTEIRA'
      'where'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA')
    InsertSQL.Strings = (
      'insert into CARTEIRA'
      '  (CD_MAT_PRIMA, QTDE)'
      'values'
      '  (:CD_MAT_PRIMA, :QTDE)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_MAT_PRIMA,'
      '  QTDE'
      'from CARTEIRA '
      'where'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA')
    SelectSQL.Strings = (
      'select * from CARTEIRA where cd_mat_prima = :pmateria')
    ModifySQL.Strings = (
      'update CARTEIRA'
      'set'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA,'
      '  QTDE = :QTDE'
      'where'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA')
    Left = 32
    Top = 368
    object IBDCarteiraCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'CARTEIRA.CD_MAT_PRIMA'
      Required = True
    end
    object IBDCarteiraQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'CARTEIRA.QTDE'
      Precision = 9
      Size = 2
    end
  end
  object IBDProcesso: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MT_PROCESSO'
      'where'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA')
    InsertSQL.Strings = (
      'insert into MT_PROCESSO'
      '  (CD_MAT_PRIMA, QTDE)'
      'values'
      '  (:CD_MAT_PRIMA, :QTDE)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_MAT_PRIMA,'
      '  QTDE'
      'from MT_PROCESSO '
      'where'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA')
    SelectSQL.Strings = (
      'select * from MT_PROCESSO where cd_mat_prima = :pmateria')
    ModifySQL.Strings = (
      'update MT_PROCESSO'
      'set'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA,'
      '  QTDE = :QTDE'
      'where'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA')
    Left = 120
    Top = 368
    object IBDProcessoCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MT_PROCESSO.CD_MAT_PRIMA'
      Required = True
    end
    object IBDProcessoQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'MT_PROCESSO.QTDE'
      Precision = 9
      Size = 2
    end
  end
  object IBDPedido: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDPedidoBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PEDIDO'
      'where'
      '  CD_PEDIDO = :OLD_CD_PEDIDO')
    InsertSQL.Strings = (
      'insert into PEDIDO'
      '  (CD_PEDIDO, CD_COND_PGTO, CD_PESSOA_JU, CD_TIPO_COBRANCA, '
      'DT_PEDIDO, '
      
        '   DT_SISTEMA, HR_PEDIDO, SITUACAO, OBSERVACOES, USUARIOO, MODEL' +
        'O, '
      'TRANSPORTADOR, '
      '   CD_PESSOA_USU)'
      'values'
      '  (:CD_PEDIDO, :CD_COND_PGTO, :CD_PESSOA_JU, :CD_TIPO_COBRANCA, '
      ':DT_PEDIDO, '
      '   :DT_SISTEMA, :HR_PEDIDO, :SITUACAO, :OBSERVACOES, :USUARIOO, '
      ':MODELO, '
      '   :TRANSPORTADOR, :CD_PESSOA_USU)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_PEDIDO,'
      '  CD_COND_PGTO,'
      '  CD_PESSOA_JU,'
      '  CD_TIPO_COBRANCA,'
      '  DT_PEDIDO,'
      '  DT_SISTEMA,'
      '  HR_PEDIDO,'
      '  SITUACAO,'
      '  OBSERVACOES,'
      '  USUARIOO,'
      '  MODELO,'
      '  TRANSPORTADOR,'
      '  CD_PESSOA_USU'
      'from PEDIDO '
      'where'
      '  CD_PEDIDO = :CD_PEDIDO')
    SelectSQL.Strings = (
      'select * from PEDIDO where'
      'cd_pedido = :ppedido')
    ModifySQL.Strings = (
      'update PEDIDO'
      'set'
      '  CD_PEDIDO = :CD_PEDIDO,'
      '  CD_COND_PGTO = :CD_COND_PGTO,'
      '  CD_PESSOA_JU = :CD_PESSOA_JU,'
      '  CD_TIPO_COBRANCA = :CD_TIPO_COBRANCA,'
      '  DT_PEDIDO = :DT_PEDIDO,'
      '  DT_SISTEMA = :DT_SISTEMA,'
      '  HR_PEDIDO = :HR_PEDIDO,'
      '  SITUACAO = :SITUACAO,'
      '  OBSERVACOES = :OBSERVACOES,'
      '  USUARIOO = :USUARIOO,'
      '  MODELO = :MODELO,'
      '  TRANSPORTADOR = :TRANSPORTADOR,'
      '  CD_PESSOA_USU = :CD_PESSOA_USU'
      'where'
      '  CD_PEDIDO = :OLD_CD_PEDIDO')
    Left = 24
    Top = 424
    object IBDPedidoCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'PEDIDO.CD_PEDIDO'
      Required = True
    end
    object IBDPedidoCD_COND_PGTO: TIntegerField
      FieldName = 'CD_COND_PGTO'
      Origin = 'PEDIDO.CD_COND_PGTO'
      Required = True
    end
    object IBDPedidoCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'PEDIDO.CD_PESSOA_JU'
      Required = True
    end
    object IBDPedidoCD_TIPO_COBRANCA: TIntegerField
      FieldName = 'CD_TIPO_COBRANCA'
      Origin = 'PEDIDO.CD_TIPO_COBRANCA'
      Required = True
    end
    object IBDPedidoDT_PEDIDO: TDateField
      FieldName = 'DT_PEDIDO'
      Origin = 'PEDIDO.DT_PEDIDO'
    end
    object IBDPedidoDT_SISTEMA: TDateField
      FieldName = 'DT_SISTEMA'
      Origin = 'PEDIDO.DT_SISTEMA'
    end
    object IBDPedidoHR_PEDIDO: TTimeField
      FieldName = 'HR_PEDIDO'
      Origin = 'PEDIDO.HR_PEDIDO'
    end
    object IBDPedidoSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'PEDIDO.SITUACAO'
    end
    object IBDPedidoOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'PEDIDO.OBSERVACOES'
      Size = 500
    end
    object IBDPedidoUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'PEDIDO.USUARIOO'
      Size = 100
    end
    object IBDPedidoMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = 'PEDIDO.MODELO'
      FixedChar = True
      Size = 1
    end
    object IBDPedidoTRANSPORTADOR: TIBStringField
      FieldName = 'TRANSPORTADOR'
      Origin = 'PEDIDO.TRANSPORTADOR'
      Size = 200
    end
    object IBDPedidoCD_PESSOA_USU: TIntegerField
      FieldName = 'CD_PESSOA_USU'
      Origin = 'PEDIDO.CD_PESSOA_USU'
    end
  end
  object IBQUltimoPedido: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_pedido)+1 as ultimo from PEDIDO')
    Left = 632
    Top = 432
    object IBQUltimoPedidoULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQGeralPessoa: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select p.*, pj.*, c.nm_cidade'
      'from'
      'PESSOA p, PESSOA_JURIDICA pj, CIDADE c'
      'where'
      'pj.cd_pessoa = p.cd_pessoa and'
      'p.cd_cidade = c.cd_cidade ')
    Left = 720
    Top = 432
    object IBQGeralPessoaCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'PESSOA.CD_PESSOA'
      Required = True
    end
    object IBQGeralPessoaCD_CIDADE: TIntegerField
      FieldName = 'CD_CIDADE'
      Origin = 'PESSOA.CD_CIDADE'
      Required = True
    end
    object IBQGeralPessoaRUA: TIBStringField
      FieldName = 'RUA'
      Origin = 'PESSOA.RUA'
      Required = True
      Size = 100
    end
    object IBQGeralPessoaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'PESSOA.BAIRRO'
      Size = 100
    end
    object IBQGeralPessoaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'PESSOA.CEP'
      EditMask = '#####-###;0;_'
      Size = 15
    end
    object IBQGeralPessoaCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'PESSOA.COMPLEMENTO'
      Size = 100
    end
    object IBQGeralPessoaHOME_PAGE: TIBStringField
      FieldName = 'HOME_PAGE'
      Origin = 'PESSOA.HOME_PAGE'
      Size = 50
    end
    object IBQGeralPessoaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'PESSOA.DT_CADASTRO'
      Required = True
    end
    object IBQGeralPessoaSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'PESSOA.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBQGeralPessoaOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'PESSOA.OBSERVACOES'
      Size = 300
    end
    object IBQGeralPessoaUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = 'PESSOA.USUARIO'
      Size = 100
    end
    object IBQGeralPessoaCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA_JU'
      Required = True
    end
    object IBQGeralPessoaCD_PESSOA1: TIntegerField
      FieldName = 'CD_PESSOA1'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA'
      Required = True
    end
    object IBQGeralPessoaCGC: TIBStringField
      FieldName = 'CGC'
      Origin = 'PESSOA_JURIDICA.CGC'
      Size = 15
    end
    object IBQGeralPessoaINSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
      Origin = 'PESSOA_JURIDICA.INSC_ESTADUAL'
      Size = 15
    end
    object IBQGeralPessoaRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQGeralPessoaNM_FANTAZIA: TIBStringField
      FieldName = 'NM_FANTAZIA'
      Origin = 'PESSOA_JURIDICA.NM_FANTAZIA'
      Required = True
      Size = 100
    end
    object IBQGeralPessoaCLI_FOR: TIBStringField
      FieldName = 'CLI_FOR'
      Origin = 'PESSOA_JURIDICA.CLI_FOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object IBQGeralPessoaBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = 'PESSOA_JURIDICA.BLOQUEADO'
      FixedChar = True
      Size = 1
    end
    object IBQGeralPessoaRM_ATIVIDADE: TIBStringField
      FieldName = 'RM_ATIVIDADE'
      Origin = 'PESSOA_JURIDICA.RM_ATIVIDADE'
      Size = 100
    end
    object IBQGeralPessoaCD_REGIAO: TIntegerField
      FieldName = 'CD_REGIAO'
      Origin = 'PESSOA_JURIDICA.CD_REGIAO'
      Required = True
    end
    object IBQGeralPessoaNM_CIDADE: TIBStringField
      FieldName = 'NM_CIDADE'
      Origin = 'CIDADE.NM_CIDADE'
      Required = True
      Size = 100
    end
  end
  object IBDProdPedido: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTOS_PEDIDO'
      'where'
      '  CD_PRODUTO = :OLD_CD_PRODUTO and'
      '  CD_PEDIDO = :OLD_CD_PEDIDO')
    InsertSQL.Strings = (
      'insert into PRODUTOS_PEDIDO'
      '  (CD_PRODUTO, CD_PEDIDO, QTDE_PRODUTO, PERC_DESCONTO, '
      'VALOR_PROD, VL_PROD_VENDA)'
      'values'
      '  (:CD_PRODUTO, :CD_PEDIDO, :QTDE_PRODUTO, :PERC_DESCONTO, '
      ':VALOR_PROD, '
      '   :VL_PROD_VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_PRODUTO,'
      '  CD_PEDIDO,'
      '  QTDE_PRODUTO,'
      '  PERC_DESCONTO,'
      '  VALOR_PROD,'
      '  VL_PROD_VENDA'
      'from PRODUTOS_PEDIDO '
      'where'
      '  CD_PRODUTO = :CD_PRODUTO and'
      '  CD_PEDIDO = :CD_PEDIDO')
    SelectSQL.Strings = (
      'select * from PRODUTOS_PEDIDO'
      'where'
      'cd_pedido = :ppedido')
    ModifySQL.Strings = (
      'update PRODUTOS_PEDIDO'
      'set'
      '  CD_PRODUTO = :CD_PRODUTO,'
      '  CD_PEDIDO = :CD_PEDIDO,'
      '  QTDE_PRODUTO = :QTDE_PRODUTO,'
      '  PERC_DESCONTO = :PERC_DESCONTO,'
      '  VALOR_PROD = :VALOR_PROD,'
      '  VL_PROD_VENDA = :VL_PROD_VENDA'
      'where'
      '  CD_PRODUTO = :OLD_CD_PRODUTO and'
      '  CD_PEDIDO = :OLD_CD_PEDIDO')
    Left = 96
    Top = 424
    object IBDProdPedidoCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'PRODUTOS_PEDIDO.CD_PRODUTO'
      Required = True
    end
    object IBDProdPedidoCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'PRODUTOS_PEDIDO.CD_PEDIDO'
      Required = True
    end
    object IBDProdPedidoQTDE_PRODUTO: TIBBCDField
      FieldName = 'QTDE_PRODUTO'
      Origin = 'PRODUTOS_PEDIDO.QTDE_PRODUTO'
      Precision = 9
      Size = 2
    end
    object IBDProdPedidoPERC_DESCONTO: TIBBCDField
      FieldName = 'PERC_DESCONTO'
      Origin = 'PRODUTOS_PEDIDO.PERC_DESCONTO'
      Precision = 9
      Size = 2
    end
    object IBDProdPedidoVALOR_PROD: TIBBCDField
      FieldName = 'VALOR_PROD'
      Origin = 'PRODUTOS_PEDIDO.VALOR_PROD'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object IBDProdPedidoVL_PROD_VENDA: TIBBCDField
      FieldName = 'VL_PROD_VENDA'
      Origin = 'PRODUTOS_PEDIDO.VL_PROD_VENDA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 9
      Size = 2
    end
  end
  object IBQConsProdutoPedido: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    AfterScroll = IBQConsProdutoPedidoAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select pd_ped.*, pd.ds_produto, pd.cubico from'
      'PRODUTOS_PEDIDO pd_ped, PRODUTO pd'
      'where'
      'pd_ped.cd_produto = pd.cd_produto and'
      'pd_ped.cd_pedido = :ppedido')
    Left = 424
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end>
    object IBQConsProdutoPedidoCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'PRODUTOS_PEDIDO.CD_PRODUTO'
      Required = True
    end
    object IBQConsProdutoPedidoCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'PRODUTOS_PEDIDO.CD_PEDIDO'
      Required = True
    end
    object IBQConsProdutoPedidoQTDE_PRODUTO: TIBBCDField
      FieldName = 'QTDE_PRODUTO'
      Origin = 'PRODUTOS_PEDIDO.QTDE_PRODUTO'
      Precision = 9
      Size = 2
    end
    object IBQConsProdutoPedidoPERC_DESCONTO: TIBBCDField
      FieldName = 'PERC_DESCONTO'
      Origin = 'PRODUTOS_PEDIDO.PERC_DESCONTO'
      Precision = 9
      Size = 2
    end
    object IBQConsProdutoPedidoVALOR_PROD: TIBBCDField
      FieldName = 'VALOR_PROD'
      Origin = 'PRODUTOS_PEDIDO.VALOR_PROD'
      Precision = 9
      Size = 2
    end
    object IBQConsProdutoPedidoVL_PROD_VENDA: TIBBCDField
      FieldName = 'VL_PROD_VENDA'
      Origin = 'PRODUTOS_PEDIDO.VL_PROD_VENDA'
      Precision = 9
      Size = 2
    end
    object IBQConsProdutoPedidoDS_PRODUTO: TIBStringField
      FieldName = 'DS_PRODUTO'
      Origin = 'PRODUTO.DS_PRODUTO'
      Size = 100
    end
    object IBQConsProdutoPedidoCUBICO: TIBBCDField
      FieldName = 'CUBICO'
      Origin = 'PRODUTO.CUBICO'
      Precision = 9
      Size = 2
    end
  end
  object IBQApagaProdPed: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from PRODUTOS_PEDIDO '
      'where'
      'cd_pedido = :ppedido and'
      'cd_produto = :pproduto')
    Left = 528
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end>
  end
  object IBQConsPedido: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select ped.*, cp.ds_cond_pgto, tc.ds_tipo_cobranca'
      'from'
      'PEDIDO ped, CONDICAO_PGTO cp, TIPO_COBRANCA tc'
      'where'
      'ped.cd_cond_pgto = cp.cd_cond_pgto and'
      'ped.cd_tipo_cobranca = tc.cd_tipo_cobranca and'
      'ped.cd_pedido = :ppedido')
    Left = 704
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end>
    object IBQConsPedidoCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'PEDIDO.CD_PEDIDO'
      Required = True
    end
    object IBQConsPedidoCD_COND_PGTO: TIntegerField
      FieldName = 'CD_COND_PGTO'
      Origin = 'PEDIDO.CD_COND_PGTO'
      Required = True
    end
    object IBQConsPedidoCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'PEDIDO.CD_PESSOA_JU'
      Required = True
    end
    object IBQConsPedidoCD_TIPO_COBRANCA: TIntegerField
      FieldName = 'CD_TIPO_COBRANCA'
      Origin = 'PEDIDO.CD_TIPO_COBRANCA'
      Required = True
    end
    object IBQConsPedidoDT_PEDIDO: TDateField
      FieldName = 'DT_PEDIDO'
      Origin = 'PEDIDO.DT_PEDIDO'
    end
    object IBQConsPedidoDT_SISTEMA: TDateField
      FieldName = 'DT_SISTEMA'
      Origin = 'PEDIDO.DT_SISTEMA'
    end
    object IBQConsPedidoHR_PEDIDO: TTimeField
      FieldName = 'HR_PEDIDO'
      Origin = 'PEDIDO.HR_PEDIDO'
    end
    object IBQConsPedidoSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'PEDIDO.SITUACAO'
    end
    object IBQConsPedidoOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'PEDIDO.OBSERVACOES'
      Size = 500
    end
    object IBQConsPedidoUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'PEDIDO.USUARIOO'
      Size = 100
    end
    object IBQConsPedidoMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = 'PEDIDO.MODELO'
      FixedChar = True
      Size = 1
    end
    object IBQConsPedidoTRANSPORTADOR: TIBStringField
      FieldName = 'TRANSPORTADOR'
      Origin = 'PEDIDO.TRANSPORTADOR'
      Size = 200
    end
    object IBQConsPedidoDS_COND_PGTO: TIBStringField
      FieldName = 'DS_COND_PGTO'
      Origin = 'CONDICAO_PGTO.DS_COND_PGTO'
      Size = 100
    end
    object IBQConsPedidoDS_TIPO_COBRANCA: TIBStringField
      FieldName = 'DS_TIPO_COBRANCA'
      Origin = 'TIPO_COBRANCA.DS_TIPO_COBRANCA'
      Size = 100
    end
  end
  object IBDCorProd: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDCorProdBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CORES_PROD_PED'
      'where'
      '  CD_PEDIDO = :OLD_CD_PEDIDO and'
      '  CD_PRODUTO = :OLD_CD_PRODUTO and'
      '  CD_DESEMPATE = :OLD_CD_DESEMPATE')
    InsertSQL.Strings = (
      'insert into CORES_PROD_PED'
      '  (CD_PEDIDO, CD_PRODUTO, CD_DESEMPATE, QTDE, COR)'
      'values'
      '  (:CD_PEDIDO, :CD_PRODUTO, :CD_DESEMPATE, :QTDE, :COR)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_PEDIDO,'
      '  CD_PRODUTO,'
      '  CD_DESEMPATE,'
      '  QTDE,'
      '  COR'
      'from CORES_PROD_PED '
      'where'
      '  CD_PEDIDO = :CD_PEDIDO and'
      '  CD_PRODUTO = :CD_PRODUTO and'
      '  CD_DESEMPATE = :CD_DESEMPATE')
    SelectSQL.Strings = (
      'select * from CORES_PROD_PED where'
      'cd_pedido = :ppedido and'
      'cd_produto = :pproduto')
    ModifySQL.Strings = (
      'update CORES_PROD_PED'
      'set'
      '  CD_PEDIDO = :CD_PEDIDO,'
      '  CD_PRODUTO = :CD_PRODUTO,'
      '  CD_DESEMPATE = :CD_DESEMPATE,'
      '  QTDE = :QTDE,'
      '  COR = :COR'
      'where'
      '  CD_PEDIDO = :OLD_CD_PEDIDO and'
      '  CD_PRODUTO = :OLD_CD_PRODUTO and'
      '  CD_DESEMPATE = :OLD_CD_DESEMPATE')
    Left = 176
    Top = 424
    object IBDCorProdCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'CORES_PROD_PED.CD_PEDIDO'
      Required = True
    end
    object IBDCorProdCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'CORES_PROD_PED.CD_PRODUTO'
      Required = True
    end
    object IBDCorProdQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'CORES_PROD_PED.QTDE'
    end
    object IBDCorProdCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'CORES_PROD_PED.COR'
      Required = True
    end
    object IBDCorProdCD_DESEMPATE: TIntegerField
      FieldName = 'CD_DESEMPATE'
      Origin = 'CORES_PROD_PED.CD_DESEMPATE'
      Required = True
    end
  end
  object IBQSomaQtdeCor: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(qtde) as soma_qtde from CORES_PROD_PED'
      'where'
      'cd_pedido =:ppedido and'
      'cd_produto = :pproduto')
    Left = 32
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end>
    object IBQSomaQtdeCorSOMA_QTDE: TLargeintField
      FieldName = 'SOMA_QTDE'
    end
  end
  object IBQUltimaCorProd: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_desempate)+1 as ultimo from CORES_PROD_PED')
    Left = 128
    Top = 472
    object IBQUltimaCorProdULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsCoresProd: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CORES_PROD_PED'
      'where cd_pedido = :ppedido and'
      'cd_produto = :pproduto')
    Left = 224
    Top = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end>
    object IBQConsCoresProdCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'CORES_PROD_PED.CD_PEDIDO'
      Required = True
    end
    object IBQConsCoresProdCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'CORES_PROD_PED.CD_PRODUTO'
      Required = True
    end
    object IBQConsCoresProdCD_DESEMPATE: TIntegerField
      FieldName = 'CD_DESEMPATE'
      Origin = 'CORES_PROD_PED.CD_DESEMPATE'
      Required = True
    end
    object IBQConsCoresProdQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'CORES_PROD_PED.QTDE'
    end
    object IBQConsCoresProdCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'CORES_PROD_PED.COR'
      Required = True
    end
  end
  object IBQApagaCoresProd: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from CORES_PROD_PED'
      'where cd_pedido = :ppedido and'
      'cd_produto = :pproduto')
    Left = 328
    Top = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end>
  end
  object IBQApagaCorProd: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from CORES_PROD_PED'
      'where cd_pedido = :ppedido and'
      'cd_produto = :pproduto and'
      'cd_desempate = :pdesempate')
    Left = 408
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pdesempate'
        ParamType = ptUnknown
      end>
  end
  object IBQApagaCorProdGeral: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from CORES_PROD_PED'
      'where cd_pedido = :ppedido and'
      'cd_produto = :pproduto ')
    Left = 448
    Top = 477
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end>
  end
  object IBQExisteCor: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select crs.cor'
      'from CORES_PROD_PED crs, MATERIA_PRIMA mt'
      'where'
      'crs.cor = mt.cd_mat_prima and'
      'crs.cd_pedido = :ppedido and'
      'crs.cd_produto = :pproduto and'
      'crs.cor = :pcor ')
    Left = 552
    Top = 482
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pcor'
        ParamType = ptUnknown
      end>
    object IBQExisteCorCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'CORES_PROD_PED.COR'
      Required = True
    end
  end
  object IBQExisteCorP: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt.cd_mat_prima,mt.fora_linha'
      'from MATERIA_PRIMA mt'
      'where'
      'mt.cd_mat_prima = :pmateria')
    Left = 624
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
    object IBQExisteCorPCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQExisteCorPFORA_LINHA: TIBStringField
      FieldName = 'FORA_LINHA'
      Origin = 'MATERIA_PRIMA.FORA_LINHA'
      FixedChar = True
      Size = 1
    end
  end
  object IBQExisteProd: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select pd_ped.cd_produto'
      'from'
      'PRODUTOS_PEDIDO pd_ped'
      'where'
      'pd_ped.cd_pedido = :ppedido and'
      'pd_ped.cd_produto = :pproduto')
    Left = 32
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pproduto'
        ParamType = ptUnknown
      end>
    object IBQExisteProdCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'PRODUTOS_PEDIDO.CD_PRODUTO'
      Required = True
    end
  end
  object IBDLocalEntrega: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from LOCAL_ENT_PEDI'
      'where'
      '  CD_PEDIDO = :OLD_CD_PEDIDO')
    InsertSQL.Strings = (
      'insert into LOCAL_ENT_PEDI'
      '  (CD_PEDIDO, CD_CIDADE, ENDERECO, CEP, BAIRRO)'
      'values'
      '  (:CD_PEDIDO, :CD_CIDADE, :ENDERECO, :CEP, :BAIRRO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_PEDIDO,'
      '  CD_CIDADE,'
      '  ENDERECO,'
      '  CEP,'
      '  BAIRRO'
      'from LOCAL_ENT_PEDI '
      'where'
      '  CD_PEDIDO = :CD_PEDIDO')
    SelectSQL.Strings = (
      'select * from LOCAL_ENT_PEDI where'
      'cd_pedido = :ppedido')
    ModifySQL.Strings = (
      'update LOCAL_ENT_PEDI'
      'set'
      '  CD_PEDIDO = :CD_PEDIDO,'
      '  CD_CIDADE = :CD_CIDADE,'
      '  ENDERECO = :ENDERECO,'
      '  CEP = :CEP,'
      '  BAIRRO = :BAIRRO'
      'where'
      '  CD_PEDIDO = :OLD_CD_PEDIDO')
    Left = 256
    Top = 424
    object IBDLocalEntregaCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'LOCAL_ENT_PEDI.CD_PEDIDO'
      Required = True
    end
    object IBDLocalEntregaCD_CIDADE: TIntegerField
      FieldName = 'CD_CIDADE'
      Origin = 'LOCAL_ENT_PEDI.CD_CIDADE'
      Required = True
    end
    object IBDLocalEntregaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'LOCAL_ENT_PEDI.ENDERECO'
      Size = 100
    end
    object IBDLocalEntregaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'LOCAL_ENT_PEDI.CEP'
      EditMask = '#####-###;1;_'
      Size = 15
    end
    object IBDLocalEntregaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'LOCAL_ENT_PEDI.BAIRRO'
      Size = 100
    end
  end
  object IBQApagaGeral: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from CORES_PROD_PED where'
      'cd_pedido = :ppedido')
    Left = 152
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end>
  end
  object IBQConsSimpPedido: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select ped.cd_pedido as cd_pedido, ped.cd_pessoa_ju as cd_client' +
        'e, ped.dt_pedido, ped.dt_sistema,ped.hr_pedido,'
      
        '    ped.situacao, ped.modelo, ped.cd_pessoa_usu as cd_usuario_ju' +
        ','
      '    pes.rua, pes.bairro, pes.cep, pes.complemento,'
      '    pj.rz_social, pj.cgc,'
      '    cid.nm_cidade, cid.sigla_uf,'
      '    pgto.ds_cond_pgto,'
      '    tp_cob.ds_tipo_cobranca'
      '    from PEDIDO ped'
      
        '    inner join PESSOA_JURIDICA pj on ped.cd_pessoa_ju = pj.cd_pe' +
        'ssoa_ju'
      '    inner join PESSOA pes on pj.cd_pessoa = pes.cd_pessoa'
      '    inner join CIDADE cid on pes.cd_cidade = cid.cd_cidade'
      
        '    inner join CONDICAO_PGTO pgto on ped.cd_cond_pgto = pgto.cd_' +
        'cond_pgto'
      
        '    inner join TIPO_COBRANCA tp_cob on tp_cob.cd_tipo_cobranca =' +
        ' ped.cd_tipo_cobranca'
      
        '    inner join PESSOA_JURIDICA pju on pju.cd_pessoa_ju = ped.cd_' +
        'pessoa_usu')
    Left = 344
    Top = 416
    object IBQConsSimpPedidoCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'PEDIDO.CD_PEDIDO'
      Required = True
    end
    object IBQConsSimpPedidoCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
      Origin = 'PEDIDO.CD_PESSOA_JU'
      Required = True
    end
    object IBQConsSimpPedidoDT_PEDIDO: TDateField
      FieldName = 'DT_PEDIDO'
      Origin = 'PEDIDO.DT_PEDIDO'
    end
    object IBQConsSimpPedidoDT_SISTEMA: TDateField
      FieldName = 'DT_SISTEMA'
      Origin = 'PEDIDO.DT_SISTEMA'
    end
    object IBQConsSimpPedidoHR_PEDIDO: TTimeField
      FieldName = 'HR_PEDIDO'
      Origin = 'PEDIDO.HR_PEDIDO'
    end
    object IBQConsSimpPedidoSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'PEDIDO.SITUACAO'
    end
    object IBQConsSimpPedidoMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = 'PEDIDO.MODELO'
      FixedChar = True
      Size = 1
    end
    object IBQConsSimpPedidoCD_USUARIO_JU: TIntegerField
      FieldName = 'CD_USUARIO_JU'
      Origin = 'PEDIDO.CD_PESSOA_USU'
    end
    object IBQConsSimpPedidoRUA: TIBStringField
      FieldName = 'RUA'
      Origin = 'PESSOA.RUA'
      Required = True
      Size = 100
    end
    object IBQConsSimpPedidoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'PESSOA.BAIRRO'
      Size = 100
    end
    object IBQConsSimpPedidoCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'PESSOA.CEP'
      Size = 15
    end
    object IBQConsSimpPedidoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'PESSOA.COMPLEMENTO'
      Size = 100
    end
    object IBQConsSimpPedidoRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQConsSimpPedidoCGC: TIBStringField
      FieldName = 'CGC'
      Origin = 'PESSOA_JURIDICA.CGC'
      Size = 15
    end
    object IBQConsSimpPedidoNM_CIDADE: TIBStringField
      FieldName = 'NM_CIDADE'
      Origin = 'CIDADE.NM_CIDADE'
      Required = True
      Size = 100
    end
    object IBQConsSimpPedidoSIGLA_UF: TIBStringField
      FieldName = 'SIGLA_UF'
      Origin = 'CIDADE.SIGLA_UF'
      Size = 100
    end
    object IBQConsSimpPedidoDS_COND_PGTO: TIBStringField
      FieldName = 'DS_COND_PGTO'
      Origin = 'CONDICAO_PGTO.DS_COND_PGTO'
      Size = 100
    end
    object IBQConsSimpPedidoDS_TIPO_COBRANCA: TIBStringField
      FieldName = 'DS_TIPO_COBRANCA'
      Origin = 'TIPO_COBRANCA.DS_TIPO_COBRANCA'
      Size = 100
    end
  end
end
