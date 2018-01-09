object DataModule4: TDataModule4
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 65516
  Top = 110
  Height = 598
  Width = 798
  object IBDCompraMt: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from COMPRA'
      'where'
      '  CD_PEDIDO = :OLD_CD_PEDIDO')
    InsertSQL.Strings = (
      'insert into COMPRA'
      '  (CD_PEDIDO, CD_FORNECEDOR, LOCAL_RETIRA, DT_COMPRA, VENDEDOR, '
      'COND_PGTO, '
      '   PRAZO_ENTREGA, DT_CHEGADA, NUM_NOTA, SITUACAO, NUM_PEDIDO, '
      'MODALIDADE, '
      '   OBSERVACOES, USUARIOO, DT_PREVISTA, EMAIL_RESPOSTA)'
      'values'
      '  (:CD_PEDIDO, :CD_FORNECEDOR, :LOCAL_RETIRA, :DT_COMPRA, '
      ':VENDEDOR, :COND_PGTO, '
      
        '   :PRAZO_ENTREGA, :DT_CHEGADA, :NUM_NOTA, :SITUACAO, :NUM_PEDID' +
        'O, '
      ':MODALIDADE, '
      '   :OBSERVACOES, :USUARIOO, :DT_PREVISTA, :EMAIL_RESPOSTA)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_PEDIDO,'
      '  CD_FORNECEDOR,'
      '  LOCAL_RETIRA,'
      '  DT_COMPRA,'
      '  VENDEDOR,'
      '  COND_PGTO,'
      '  PRAZO_ENTREGA,'
      '  DT_CHEGADA,'
      '  NUM_NOTA,'
      '  SITUACAO,'
      '  NUM_PEDIDO,'
      '  MODALIDADE,'
      '  OBSERVACOES,'
      '  USUARIOO,'
      '  DT_PREVISTA,'
      '  EMAIL_RESPOSTA'
      'from COMPRA '
      'where'
      '  CD_PEDIDO = :CD_PEDIDO')
    SelectSQL.Strings = (
      'select * from COMPRA '
      'where'
      'cd_pedido = :ppedido')
    ModifySQL.Strings = (
      'update COMPRA'
      'set'
      '  CD_PEDIDO = :CD_PEDIDO,'
      '  CD_FORNECEDOR = :CD_FORNECEDOR,'
      '  LOCAL_RETIRA = :LOCAL_RETIRA,'
      '  DT_COMPRA = :DT_COMPRA,'
      '  VENDEDOR = :VENDEDOR,'
      '  COND_PGTO = :COND_PGTO,'
      '  PRAZO_ENTREGA = :PRAZO_ENTREGA,'
      '  DT_CHEGADA = :DT_CHEGADA,'
      '  NUM_NOTA = :NUM_NOTA,'
      '  SITUACAO = :SITUACAO,'
      '  NUM_PEDIDO = :NUM_PEDIDO,'
      '  MODALIDADE = :MODALIDADE,'
      '  OBSERVACOES = :OBSERVACOES,'
      '  USUARIOO = :USUARIOO,'
      '  DT_PREVISTA = :DT_PREVISTA,'
      '  EMAIL_RESPOSTA = :EMAIL_RESPOSTA'
      'where'
      '  CD_PEDIDO = :OLD_CD_PEDIDO')
    Left = 40
    Top = 8
    object IBDCompraMtCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'COMPRA.CD_PEDIDO'
      Required = True
    end
    object IBDCompraMtCD_FORNECEDOR: TIntegerField
      FieldName = 'CD_FORNECEDOR'
      Origin = 'COMPRA.CD_FORNECEDOR'
      Required = True
    end
    object IBDCompraMtLOCAL_RETIRA: TIBStringField
      FieldName = 'LOCAL_RETIRA'
      Origin = 'COMPRA.LOCAL_RETIRA'
      Size = 200
    end
    object IBDCompraMtDT_COMPRA: TDateField
      FieldName = 'DT_COMPRA'
      Origin = 'COMPRA.DT_COMPRA'
    end
    object IBDCompraMtVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = 'COMPRA.VENDEDOR'
      Size = 100
    end
    object IBDCompraMtCOND_PGTO: TIBStringField
      FieldName = 'COND_PGTO'
      Origin = 'COMPRA.COND_PGTO'
      Size = 50
    end
    object IBDCompraMtPRAZO_ENTREGA: TIntegerField
      FieldName = 'PRAZO_ENTREGA'
      Origin = 'COMPRA.PRAZO_ENTREGA'
    end
    object IBDCompraMtDT_CHEGADA: TDateField
      FieldName = 'DT_CHEGADA'
      Origin = 'COMPRA.DT_CHEGADA'
    end
    object IBDCompraMtNUM_NOTA: TIBStringField
      FieldName = 'NUM_NOTA'
      Origin = 'COMPRA.NUM_NOTA'
      Size = 40
    end
    object IBDCompraMtSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'COMPRA.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBDCompraMtNUM_PEDIDO: TIBStringField
      FieldName = 'NUM_PEDIDO'
      Origin = 'COMPRA.NUM_PEDIDO'
      Size = 10
    end
    object IBDCompraMtMODALIDADE: TIBStringField
      FieldName = 'MODALIDADE'
      Origin = 'COMPRA.MODALIDADE'
      Size = 50
    end
    object IBDCompraMtOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'COMPRA.OBSERVACOES'
      Size = 200
    end
    object IBDCompraMtUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'COMPRA.USUARIOO'
      Size = 100
    end
    object IBDCompraMtDT_PREVISTA: TDateField
      FieldName = 'DT_PREVISTA'
      Origin = 'COMPRA.DT_PREVISTA'
    end
    object IBDCompraMtEMAIL_RESPOSTA: TBlobField
      FieldName = 'EMAIL_RESPOSTA'
      Origin = 'COMPRA.EMAIL_RESPOSTA'
      Size = 8
    end
  end
  object IBQUltimaCompra: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_pedido)+1 as ultimo from COMPRA')
    Left = 128
    Top = 8
    object IBQUltimaCompraULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBDMtCompra: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MT_PRIMA_COMPRA'
      'where'
      '  CD_PEDIDO = :OLD_CD_PEDIDO and'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA')
    InsertSQL.Strings = (
      'insert into MT_PRIMA_COMPRA'
      '  (CD_PEDIDO, CD_MAT_PRIMA, QTDE, VALOR, CHEGOU, QTDE_CHEGADA)'
      'values'
      
        '  (:CD_PEDIDO, :CD_MAT_PRIMA, :QTDE, :VALOR, :CHEGOU, :QTDE_CHEG' +
        'ADA)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_PEDIDO,'
      '  CD_MAT_PRIMA,'
      '  QTDE,'
      '  VALOR,'
      '  CHEGOU,'
      '  QTDE_CHEGADA'
      'from MT_PRIMA_COMPRA '
      'where'
      '  CD_PEDIDO = :CD_PEDIDO and'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA')
    SelectSQL.Strings = (
      'select * from MT_PRIMA_COMPRA'
      'where'
      'cd_pedido = :ppedido and'
      'cd_mat_prima = :pmateria')
    ModifySQL.Strings = (
      'update MT_PRIMA_COMPRA'
      'set'
      '  CD_PEDIDO = :CD_PEDIDO,'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA,'
      '  QTDE = :QTDE,'
      '  VALOR = :VALOR,'
      '  CHEGOU = :CHEGOU,'
      '  QTDE_CHEGADA = :QTDE_CHEGADA'
      'where'
      '  CD_PEDIDO = :OLD_CD_PEDIDO and'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA')
    Left = 32
    Top = 56
    object IBDMtCompraCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'MT_PRIMA_COMPRA.CD_PEDIDO'
      Required = True
    end
    object IBDMtCompraCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MT_PRIMA_COMPRA.CD_MAT_PRIMA'
      Required = True
    end
    object IBDMtCompraQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'MT_PRIMA_COMPRA.QTDE'
      Precision = 9
      Size = 2
    end
    object IBDMtCompraVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'MT_PRIMA_COMPRA.VALOR'
      Precision = 9
      Size = 2
    end
    object IBDMtCompraCHEGOU: TIBStringField
      FieldName = 'CHEGOU'
      Origin = 'MT_PRIMA_COMPRA.CHEGOU'
      FixedChar = True
      Size = 1
    end
    object IBDMtCompraQTDE_CHEGADA: TIBBCDField
      FieldName = 'QTDE_CHEGADA'
      Origin = 'MT_PRIMA_COMPRA.QTDE_CHEGADA'
      Precision = 9
      Size = 2
    end
  end
  object IBQConsMtCompra: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt_c.*, mt.ds_mat_prima'
      'from'
      'MT_PRIMA_COMPRA mt_c, MATERIA_PRIMA mt'
      'where'
      'mt_c.cd_mat_prima = mt.cd_mat_prima and'
      'mt_c.cd_pedido = :ppedido')
    Left = 128
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end>
    object IBQConsMtCompraCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'MT_PRIMA_COMPRA.CD_PEDIDO'
      Required = True
    end
    object IBQConsMtCompraCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MT_PRIMA_COMPRA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsMtCompraQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'MT_PRIMA_COMPRA.QTDE'
      Precision = 9
      Size = 2
    end
    object IBQConsMtCompraVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'MT_PRIMA_COMPRA.VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object IBQConsMtCompraCHEGOU: TIBStringField
      FieldName = 'CHEGOU'
      Origin = 'MT_PRIMA_COMPRA.CHEGOU'
      FixedChar = True
      Size = 1
    end
    object IBQConsMtCompraDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.DS_MAT_PRIMA'
      Size = 100
    end
    object IBQConsMtCompraQTDE_CHEGADA: TIBBCDField
      FieldName = 'QTDE_CHEGADA'
      Origin = 'MT_PRIMA_COMPRA.QTDE_CHEGADA'
      Precision = 9
      Size = 2
    end
  end
  object IBQValorMt: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt_nf.vl_max from'
      'MT_PRIMA_NF mt_nf'
      'where'
      'mt_nf.importancia = :pimportancia and'
      'mt_nf.cd_mat_prima = :pmateria')
    Left = 216
    Top = 56
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
    object IBQValorMtVL_MAX: TIBBCDField
      FieldName = 'VL_MAX'
      Origin = 'MT_PRIMA_NF.VL_MAX'
      Precision = 9
      Size = 2
    end
  end
  object IBQApagaMt: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from MT_PRIMA_COMPRA'
      'where'
      'cd_pedido = :ppedido and'
      'cd_mat_prima = :pmateria')
    Left = 288
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
  end
  object IBQExisteMt: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select cd_mat_prima from'
      'MT_PRIMA_COMPRA'
      'where'
      'cd_mat_prima = :pmateria and'
      'cd_pedido = :ppedido')
    Left = 360
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end>
    object IBQExisteMtCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MT_PRIMA_COMPRA.CD_MAT_PRIMA'
      Required = True
    end
  end
  object IBQConsCompra: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    AfterScroll = IBQConsCompraAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select pj.cd_pessoa_ju, pj.rz_social,comp.*'
      'from'
      'PESSOA_JURIDICA pj, COMPRA comp'
      'where'
      'comp.cd_fornecedor = pj.cd_pessoa_ju')
    Left = 224
    Top = 8
    object IBQConsCompraCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA_JU'
      Required = True
    end
    object IBQConsCompraRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQConsCompraCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'COMPRA.CD_PEDIDO'
      Required = True
    end
    object IBQConsCompraCD_FORNECEDOR: TIntegerField
      FieldName = 'CD_FORNECEDOR'
      Origin = 'COMPRA.CD_FORNECEDOR'
      Required = True
    end
    object IBQConsCompraLOCAL_RETIRA: TIBStringField
      FieldName = 'LOCAL_RETIRA'
      Origin = 'COMPRA.LOCAL_RETIRA'
      Size = 200
    end
    object IBQConsCompraDT_COMPRA: TDateField
      FieldName = 'DT_COMPRA'
      Origin = 'COMPRA.DT_COMPRA'
    end
    object IBQConsCompraVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = 'COMPRA.VENDEDOR'
      Size = 100
    end
    object IBQConsCompraCOND_PGTO: TIBStringField
      FieldName = 'COND_PGTO'
      Origin = 'COMPRA.COND_PGTO'
      Size = 50
    end
    object IBQConsCompraPRAZO_ENTREGA: TIntegerField
      FieldName = 'PRAZO_ENTREGA'
      Origin = 'COMPRA.PRAZO_ENTREGA'
    end
    object IBQConsCompraDT_CHEGADA: TDateField
      FieldName = 'DT_CHEGADA'
      Origin = 'COMPRA.DT_CHEGADA'
    end
    object IBQConsCompraNUM_NOTA: TIBStringField
      FieldName = 'NUM_NOTA'
      Origin = 'COMPRA.NUM_NOTA'
      Size = 40
    end
    object IBQConsCompraSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'COMPRA.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBQConsCompraNUM_PEDIDO: TIBStringField
      FieldName = 'NUM_PEDIDO'
      Origin = 'COMPRA.NUM_PEDIDO'
      Size = 10
    end
    object IBQConsCompraMODALIDADE: TIBStringField
      FieldName = 'MODALIDADE'
      Origin = 'COMPRA.MODALIDADE'
      Size = 50
    end
    object IBQConsCompraOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'COMPRA.OBSERVACOES'
      Size = 200
    end
    object IBQConsCompraUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'COMPRA.USUARIOO'
      Size = 100
    end
  end
  object IBQConsMtCompra2: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt_c.*, mt.ds_mat_prima'
      'from'
      'MT_PRIMA_COMPRA mt_c, MATERIA_PRIMA mt'
      'where'
      'mt_c.cd_mat_prima = mt.cd_mat_prima and'
      'mt_c.cd_pedido = :ppedido')
    Left = 448
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end>
    object IBQConsMtCompra2CD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'MT_PRIMA_COMPRA.CD_PEDIDO'
      Required = True
    end
    object IBQConsMtCompra2CD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MT_PRIMA_COMPRA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsMtCompra2QTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'MT_PRIMA_COMPRA.QTDE'
      Precision = 9
      Size = 2
    end
    object IBQConsMtCompra2VALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'MT_PRIMA_COMPRA.VALOR'
      Precision = 9
      Size = 2
    end
    object IBQConsMtCompra2CHEGOU: TIBStringField
      FieldName = 'CHEGOU'
      Origin = 'MT_PRIMA_COMPRA.CHEGOU'
      FixedChar = True
      Size = 1
    end
    object IBQConsMtCompra2DS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.DS_MAT_PRIMA'
      Size = 100
    end
  end
  object IBQApagaMtGeral: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from MT_PRIMA_COMPRA'
      'where'
      'cd_pedido = :ppedido ')
    Left = 552
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end>
  end
  object IBDEntradaMt: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDEntradaMtBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CONTROLE_ENTRADA_SAIDA'
      'where'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA and'
      '  CD_CONTROLE = :OLD_CD_CONTROLE')
    InsertSQL.Strings = (
      'insert into CONTROLE_ENTRADA_SAIDA'
      '  (CD_MAT_PRIMA, CD_CONTROLE, CD_MOVIMENTO, DT_MOVIMENTO, '
      'HR_MOVIMENTO, '
      '   QTDE, VALOR_MT_PRIMA, USUARIOO, NUM_DOCUMENTO, PZ_PGTO, '
      'CD_FORNECEDOR, '
      '   CD_PEDIDO, CD_USUARIO)'
      'values'
      '  (:CD_MAT_PRIMA, :CD_CONTROLE, :CD_MOVIMENTO, :DT_MOVIMENTO, '
      ':HR_MOVIMENTO, '
      '   :QTDE, :VALOR_MT_PRIMA, :USUARIOO, :NUM_DOCUMENTO, :PZ_PGTO, '
      ':CD_FORNECEDOR, '
      '   :CD_PEDIDO, :CD_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_MAT_PRIMA,'
      '  CD_CONTROLE,'
      '  CD_MOVIMENTO,'
      '  DT_MOVIMENTO,'
      '  HR_MOVIMENTO,'
      '  QTDE,'
      '  VALOR_MT_PRIMA,'
      '  USUARIOO,'
      '  NUM_DOCUMENTO,'
      '  PZ_PGTO,'
      '  CD_FORNECEDOR,'
      '  CD_PEDIDO,'
      '  CD_USUARIO'
      'from CONTROLE_ENTRADA_SAIDA '
      'where'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA and'
      '  CD_CONTROLE = :CD_CONTROLE')
    SelectSQL.Strings = (
      'select * from CONTROLE_ENTRADA_SAIDA where'
      'cd_controle = :pcontrole and'
      'cd_mat_prima = :pmateria')
    ModifySQL.Strings = (
      'update CONTROLE_ENTRADA_SAIDA'
      'set'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA,'
      '  CD_CONTROLE = :CD_CONTROLE,'
      '  CD_MOVIMENTO = :CD_MOVIMENTO,'
      '  DT_MOVIMENTO = :DT_MOVIMENTO,'
      '  HR_MOVIMENTO = :HR_MOVIMENTO,'
      '  QTDE = :QTDE,'
      '  VALOR_MT_PRIMA = :VALOR_MT_PRIMA,'
      '  USUARIOO = :USUARIOO,'
      '  NUM_DOCUMENTO = :NUM_DOCUMENTO,'
      '  PZ_PGTO = :PZ_PGTO,'
      '  CD_FORNECEDOR = :CD_FORNECEDOR,'
      '  CD_PEDIDO = :CD_PEDIDO,'
      '  CD_USUARIO = :CD_USUARIO'
      'where'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA and'
      '  CD_CONTROLE = :OLD_CD_CONTROLE')
    Left = 32
    Top = 112
    object IBDEntradaMtCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_MAT_PRIMA'
      Required = True
    end
    object IBDEntradaMtCD_CONTROLE: TIntegerField
      FieldName = 'CD_CONTROLE'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_CONTROLE'
      Required = True
    end
    object IBDEntradaMtCD_MOVIMENTO: TIntegerField
      FieldName = 'CD_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_MOVIMENTO'
      Required = True
    end
    object IBDEntradaMtDT_MOVIMENTO: TDateField
      FieldName = 'DT_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.DT_MOVIMENTO'
    end
    object IBDEntradaMtHR_MOVIMENTO: TTimeField
      FieldName = 'HR_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.HR_MOVIMENTO'
    end
    object IBDEntradaMtQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'CONTROLE_ENTRADA_SAIDA.QTDE'
      Precision = 9
      Size = 2
    end
    object IBDEntradaMtVALOR_MT_PRIMA: TIBBCDField
      FieldName = 'VALOR_MT_PRIMA'
      Origin = 'CONTROLE_ENTRADA_SAIDA.VALOR_MT_PRIMA'
      Precision = 9
      Size = 2
    end
    object IBDEntradaMtUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.USUARIOO'
      Size = 100
    end
    object IBDEntradaMtNUM_DOCUMENTO: TIBStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.NUM_DOCUMENTO'
    end
    object IBDEntradaMtPZ_PGTO: TIntegerField
      FieldName = 'PZ_PGTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.PZ_PGTO'
    end
    object IBDEntradaMtCD_FORNECEDOR: TIntegerField
      FieldName = 'CD_FORNECEDOR'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_FORNECEDOR'
      Required = True
    end
    object IBDEntradaMtCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_PEDIDO'
    end
    object IBDEntradaMtCD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_USUARIO'
    end
  end
  object IBQUltimaEntrada: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_controle)+1 as ultimo from CONTROLE_ENTRADA_SAIDA')
    Left = 120
    Top = 112
    object IBQUltimaEntradaULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsMt: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt.*,'
      '       un.sigla_unidade'
      'from MATERIA_PRIMA mt, UNIDADE_MEDIDA un'
      'where mt.cd_un_medida = un.cd_unidade and'
      '    mt.cd_mat_prima = :pmateria')
    Left = 216
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
    object IBQConsMtCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsMtCD_SETOR: TIntegerField
      FieldName = 'CD_SETOR'
      Origin = 'MATERIA_PRIMA.CD_SETOR'
      Required = True
    end
    object IBQConsMtCD_CLASSE: TIntegerField
      FieldName = 'CD_CLASSE'
      Origin = 'MATERIA_PRIMA.CD_CLASSE'
      Required = True
    end
    object IBQConsMtCD_UN_MEDIDA: TIntegerField
      FieldName = 'CD_UN_MEDIDA'
      Origin = 'MATERIA_PRIMA.CD_UN_MEDIDA'
      Required = True
    end
    object IBQConsMtDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.DS_MAT_PRIMA'
      Size = 100
    end
    object IBQConsMtQTDE_EMBALAGEM: TIBBCDField
      FieldName = 'QTDE_EMBALAGEM'
      Origin = 'MATERIA_PRIMA.QTDE_EMBALAGEM'
      Precision = 9
      Size = 2
    end
    object IBQConsMtVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'MATERIA_PRIMA.VALOR'
      DisplayFormat = ' ,0.00;- ,0.00'
      Precision = 9
      Size = 2
    end
    object IBQConsMtESTOQUE_MINIMO: TIBBCDField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'MATERIA_PRIMA.ESTOQUE_MINIMO'
      Precision = 9
      Size = 2
    end
    object IBQConsMtPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = 'MATERIA_PRIMA.PESO'
      Precision = 9
      Size = 2
    end
    object IBQConsMtFORA_LINHA: TIBStringField
      FieldName = 'FORA_LINHA'
      Origin = 'MATERIA_PRIMA.FORA_LINHA'
      FixedChar = True
      Size = 1
    end
    object IBQConsMtIMAGEM: TIBStringField
      FieldName = 'IMAGEM'
      Origin = 'MATERIA_PRIMA.IMAGEM'
      Size = 500
    end
    object IBQConsMtQTDE_ESTOQUE: TIBBCDField
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'MATERIA_PRIMA.QTDE_ESTOQUE'
      Precision = 9
      Size = 2
    end
    object IBQConsMtOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'MATERIA_PRIMA.OBSERVACOES'
      Size = 300
    end
    object IBQConsMtDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'MATERIA_PRIMA.DT_CADASTRO'
    end
    object IBQConsMtUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'MATERIA_PRIMA.USUARIOO'
      Size = 100
    end
    object IBQConsMtCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'MATERIA_PRIMA.CODIGO_BARRAS'
    end
    object IBQConsMtSIGLA_UNIDADE: TIBStringField
      FieldName = 'SIGLA_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.SIGLA_UNIDADE'
      Size = 2
    end
  end
  object IBQConsMtNf: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt_nf.ds_prima_nf,'
      '       mt_nf.cd_prima_nf,'
      '       mt_nf.vl_max'
      'from MT_PRIMA_NF mt_nf'
      'where mt_nf.cd_mat_prima = :pmateria and'
      '      mt_nf.cd_fornecedor = :pfornecedor')
    Left = 296
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pfornecedor'
        ParamType = ptUnknown
      end>
    object IBQConsMtNfDS_PRIMA_NF: TIBStringField
      FieldName = 'DS_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.DS_PRIMA_NF'
      Size = 100
    end
    object IBQConsMtNfCD_PRIMA_NF: TIntegerField
      FieldName = 'CD_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.CD_PRIMA_NF'
      Required = True
    end
    object IBQConsMtNfVL_MAX: TIBBCDField
      FieldName = 'VL_MAX'
      Origin = 'MT_PRIMA_NF.VL_MAX'
      Precision = 9
      Size = 2
    end
  end
  object IBDMtNf: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDMtNfBeforePost
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
      'select * from MT_PRIMA_NF'
      'where'
      'cd_mat_prima = :pmateria and'
      'cd_fornecedor = :pfornecedor')
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
    Top = 160
    object IBDMtNfCD_PRIMA_NF: TIntegerField
      FieldName = 'CD_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.CD_PRIMA_NF'
      Required = True
    end
    object IBDMtNfCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MT_PRIMA_NF.CD_MAT_PRIMA'
      Required = True
    end
    object IBDMtNfCD_FORNECEDOR: TIntegerField
      FieldName = 'CD_FORNECEDOR'
      Origin = 'MT_PRIMA_NF.CD_FORNECEDOR'
      Required = True
    end
    object IBDMtNfDS_PRIMA_NF: TIBStringField
      FieldName = 'DS_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.DS_PRIMA_NF'
      Size = 100
    end
    object IBDMtNfDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'MT_PRIMA_NF.DT_CADASTRO'
    end
    object IBDMtNfUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'MT_PRIMA_NF.USUARIOO'
      Size = 100
    end
    object IBDMtNfSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'MT_PRIMA_NF.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBDMtNfVL_MAX: TIBBCDField
      FieldName = 'VL_MAX'
      Origin = 'MT_PRIMA_NF.VL_MAX'
      Precision = 9
      Size = 2
    end
    object IBDMtNfVL_MIN: TIBBCDField
      FieldName = 'VL_MIN'
      Origin = 'MT_PRIMA_NF.VL_MIN'
      Precision = 9
      Size = 2
    end
    object IBDMtNfIMPORTANCIA: TIBStringField
      FieldName = 'IMPORTANCIA'
      Origin = 'MT_PRIMA_NF.IMPORTANCIA'
      FixedChar = True
      Size = 1
    end
    object IBDMtNfCLASS_FISCAL: TIBStringField
      FieldName = 'CLASS_FISCAL'
      Origin = 'MT_PRIMA_NF.CLASS_FISCAL'
      EditMask = '####.##.##;0;_'
      Size = 15
    end
    object IBDMtNfIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = 'MT_PRIMA_NF.IPI'
      Precision = 9
      Size = 2
    end
    object IBDMtNfICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = 'MT_PRIMA_NF.ICMS'
      Precision = 9
      Size = 2
    end
    object IBDMtNfSUB_TRIBUTARIA: TIntegerField
      FieldName = 'SUB_TRIBUTARIA'
      Origin = 'MT_PRIMA_NF.SUB_TRIBUTARIA'
    end
  end
  object IBQConsMovimento: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MOVIMENTO_ESTOQUE where'
      'cd_movimento = :pmovimento and'
      'tipo_movimento = :ptipo')
    Left = 392
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmovimento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptipo'
        ParamType = ptUnknown
      end>
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
  object IBQSomaEnt: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(ct_ent.qtde) as tot_entrada'
      
        '            from CONTROLE_ENTRADA_SAIDA ct_ent, MOVIMENTO_ESTOQU' +
        'E mov'
      '            where'
      '            ct_ent.cd_movimento = mov.cd_movimento and'
      '            ct_ent.cd_mat_prima = :pmateria and'
      '            mov.tipo_movimento = :ptipo')
    Left = 488
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptipo'
        ParamType = ptUnknown
      end>
    object IBQSomaEntTOT_ENTRADA: TIBBCDField
      FieldName = 'TOT_ENTRADA'
      Precision = 18
      Size = 2
    end
  end
  object IBQSomaSaida: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(ct_ent.qtde) as tot_saida'
      
        '            from CONTROLE_ENTRADA_SAIDA ct_ent, MOVIMENTO_ESTOQU' +
        'E mov'
      '            where'
      '            ct_ent.cd_movimento = mov.cd_movimento and'
      '            ct_ent.cd_mat_prima = :pmateria and'
      '            mov.tipo_movimento = :ptipo')
    Left = 568
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptipo'
        ParamType = ptUnknown
      end>
    object IBQSomaSaidaTOT_SAIDA: TIBBCDField
      FieldName = 'TOT_SAIDA'
      Precision = 18
      Size = 2
    end
  end
  object IBQConsEntrada: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select ct_ent.*, mt.ds_mat_prima, pj.rz_social'
      '            from CONTROLE_ENTRADA_SAIDA ct_ent,'
      '                PESSOA_JURIDICA pj,'
      '                MOVIMENTO_ESTOQUE mov,'
      '                MATERIA_PRIMA mt'
      '          where ct_ent.cd_mat_prima = mt.cd_mat_prima and'
      '                ct_ent.cd_movimento = mov.cd_movimento and'
      '                ct_ent.cd_fornecedor = pj.cd_pessoa_ju')
    Left = 112
    Top = 160
    object IBQConsEntradaCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsEntradaCD_CONTROLE: TIntegerField
      FieldName = 'CD_CONTROLE'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_CONTROLE'
      Required = True
    end
    object IBQConsEntradaCD_MOVIMENTO: TIntegerField
      FieldName = 'CD_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_MOVIMENTO'
      Required = True
    end
    object IBQConsEntradaDT_MOVIMENTO: TDateField
      FieldName = 'DT_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.DT_MOVIMENTO'
    end
    object IBQConsEntradaHR_MOVIMENTO: TTimeField
      FieldName = 'HR_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.HR_MOVIMENTO'
    end
    object IBQConsEntradaQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'CONTROLE_ENTRADA_SAIDA.QTDE'
      Precision = 9
      Size = 2
    end
    object IBQConsEntradaVALOR_MT_PRIMA: TIBBCDField
      FieldName = 'VALOR_MT_PRIMA'
      Origin = 'CONTROLE_ENTRADA_SAIDA.VALOR_MT_PRIMA'
      Precision = 9
      Size = 2
    end
    object IBQConsEntradaUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.USUARIOO'
      Size = 100
    end
    object IBQConsEntradaNUM_DOCUMENTO: TIBStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.NUM_DOCUMENTO'
    end
    object IBQConsEntradaPZ_PGTO: TIntegerField
      FieldName = 'PZ_PGTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.PZ_PGTO'
    end
    object IBQConsEntradaCD_FORNECEDOR: TIntegerField
      FieldName = 'CD_FORNECEDOR'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_FORNECEDOR'
      Required = True
    end
    object IBQConsEntradaCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_PEDIDO'
    end
    object IBQConsEntradaDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.DS_MAT_PRIMA'
      Size = 100
    end
    object IBQConsEntradaRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
  end
  object IBQConsCompPendente: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select comp.*, mt_c.*,pj.rz_social'
      'from COMPRA comp, MT_PRIMA_COMPRA mt_c,PESSOA_JURIDICA pj'
      'where mt_c.cd_pedido = comp.cd_pedido and'
      '      comp.cd_fornecedor = pj.cd_pessoa_ju and'
      '      mt_c.cd_mat_prima = :pmateria and'
      '      comp.situacao <> :psituacao and'
      '      mt_c.chegou <> :pchegou and'
      '      pj.cd_pessoa_ju = :pfornecedor'
      '     order by comp.cd_pedido')
    Left = 224
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'psituacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pchegou'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pfornecedor'
        ParamType = ptUnknown
      end>
    object IBQConsCompPendenteCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'COMPRA.CD_PEDIDO'
      Required = True
    end
    object IBQConsCompPendenteCD_FORNECEDOR: TIntegerField
      FieldName = 'CD_FORNECEDOR'
      Origin = 'COMPRA.CD_FORNECEDOR'
      Required = True
    end
    object IBQConsCompPendenteLOCAL_RETIRA: TIBStringField
      FieldName = 'LOCAL_RETIRA'
      Origin = 'COMPRA.LOCAL_RETIRA'
      Size = 200
    end
    object IBQConsCompPendenteDT_COMPRA: TDateField
      FieldName = 'DT_COMPRA'
      Origin = 'COMPRA.DT_COMPRA'
    end
    object IBQConsCompPendenteVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = 'COMPRA.VENDEDOR'
      Size = 100
    end
    object IBQConsCompPendenteCOND_PGTO: TIBStringField
      FieldName = 'COND_PGTO'
      Origin = 'COMPRA.COND_PGTO'
      Size = 50
    end
    object IBQConsCompPendentePRAZO_ENTREGA: TIntegerField
      FieldName = 'PRAZO_ENTREGA'
      Origin = 'COMPRA.PRAZO_ENTREGA'
    end
    object IBQConsCompPendenteDT_CHEGADA: TDateField
      FieldName = 'DT_CHEGADA'
      Origin = 'COMPRA.DT_CHEGADA'
    end
    object IBQConsCompPendenteNUM_NOTA: TIBStringField
      FieldName = 'NUM_NOTA'
      Origin = 'COMPRA.NUM_NOTA'
      Size = 40
    end
    object IBQConsCompPendenteSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'COMPRA.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBQConsCompPendenteNUM_PEDIDO: TIBStringField
      FieldName = 'NUM_PEDIDO'
      Origin = 'COMPRA.NUM_PEDIDO'
      Size = 10
    end
    object IBQConsCompPendenteMODALIDADE: TIBStringField
      FieldName = 'MODALIDADE'
      Origin = 'COMPRA.MODALIDADE'
      Size = 50
    end
    object IBQConsCompPendenteOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'COMPRA.OBSERVACOES'
      Size = 200
    end
    object IBQConsCompPendenteUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'COMPRA.USUARIOO'
      Size = 100
    end
    object IBQConsCompPendenteDT_PREVISTA: TDateField
      FieldName = 'DT_PREVISTA'
      Origin = 'COMPRA.DT_PREVISTA'
    end
    object IBQConsCompPendenteCD_PEDIDO1: TIntegerField
      FieldName = 'CD_PEDIDO1'
      Origin = 'MT_PRIMA_COMPRA.CD_PEDIDO'
      Required = True
    end
    object IBQConsCompPendenteCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MT_PRIMA_COMPRA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsCompPendenteQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'MT_PRIMA_COMPRA.QTDE'
      Precision = 9
      Size = 2
    end
    object IBQConsCompPendenteVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'MT_PRIMA_COMPRA.VALOR'
      Precision = 9
      Size = 2
    end
    object IBQConsCompPendenteCHEGOU: TIBStringField
      FieldName = 'CHEGOU'
      Origin = 'MT_PRIMA_COMPRA.CHEGOU'
      FixedChar = True
      Size = 1
    end
    object IBQConsCompPendenteRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQConsCompPendenteQTDE_CHEGADA: TIBBCDField
      FieldName = 'QTDE_CHEGADA'
      Origin = 'MT_PRIMA_COMPRA.QTDE_CHEGADA'
      Precision = 9
      Size = 2
    end
  end
  object IBQQtdeComp: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt_c.* from MT_PRIMA_COMPRA mt_c'
      'where'
      'mt_c.cd_pedido = :ppedido and'
      'mt_c.cd_mat_prima = :pmateria')
    Left = 328
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
    object IBQQtdeCompCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'MT_PRIMA_COMPRA.CD_PEDIDO'
      Required = True
    end
    object IBQQtdeCompCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MT_PRIMA_COMPRA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQQtdeCompQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'MT_PRIMA_COMPRA.QTDE'
      Precision = 9
      Size = 2
    end
    object IBQQtdeCompVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'MT_PRIMA_COMPRA.VALOR'
      Precision = 9
      Size = 2
    end
    object IBQQtdeCompCHEGOU: TIBStringField
      FieldName = 'CHEGOU'
      Origin = 'MT_PRIMA_COMPRA.CHEGOU'
      FixedChar = True
      Size = 1
    end
    object IBQQtdeCompQTDE_CHEGADA: TIBBCDField
      FieldName = 'QTDE_CHEGADA'
      Origin = 'MT_PRIMA_COMPRA.QTDE_CHEGADA'
      Precision = 9
      Size = 2
    end
  end
  object IBDSaidaMt: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDSaidaMtBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CONTROLE_ENTRADA_SAIDA'
      'where'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA and'
      '  CD_CONTROLE = :OLD_CD_CONTROLE')
    InsertSQL.Strings = (
      'insert into CONTROLE_ENTRADA_SAIDA'
      '  (CD_MAT_PRIMA, CD_CONTROLE, CD_MOVIMENTO, DT_MOVIMENTO, '
      'HR_MOVIMENTO, '
      '   QTDE, VALOR_MT_PRIMA, USUARIOO, NUM_DOCUMENTO, PZ_PGTO, '
      'CD_FORNECEDOR, '
      '   CD_PEDIDO)'
      'values'
      '  (:CD_MAT_PRIMA, :CD_CONTROLE, :CD_MOVIMENTO, :DT_MOVIMENTO, '
      ':HR_MOVIMENTO, '
      '   :QTDE, :VALOR_MT_PRIMA, :USUARIOO, :NUM_DOCUMENTO, :PZ_PGTO, '
      ':CD_FORNECEDOR, '
      '   :CD_PEDIDO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_MAT_PRIMA,'
      '  CD_CONTROLE,'
      '  CD_MOVIMENTO,'
      '  DT_MOVIMENTO,'
      '  HR_MOVIMENTO,'
      '  QTDE,'
      '  VALOR_MT_PRIMA,'
      '  USUARIOO,'
      '  NUM_DOCUMENTO,'
      '  PZ_PGTO,'
      '  CD_FORNECEDOR,'
      '  CD_PEDIDO'
      'from CONTROLE_ENTRADA_SAIDA '
      'where'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA and'
      '  CD_CONTROLE = :CD_CONTROLE')
    SelectSQL.Strings = (
      'select * from CONTROLE_ENTRADA_SAIDA where'
      'cd_controle = :pcontrole and'
      'cd_mat_prima = :pmateria')
    ModifySQL.Strings = (
      'update CONTROLE_ENTRADA_SAIDA'
      'set'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA,'
      '  CD_CONTROLE = :CD_CONTROLE,'
      '  CD_MOVIMENTO = :CD_MOVIMENTO,'
      '  DT_MOVIMENTO = :DT_MOVIMENTO,'
      '  HR_MOVIMENTO = :HR_MOVIMENTO,'
      '  QTDE = :QTDE,'
      '  VALOR_MT_PRIMA = :VALOR_MT_PRIMA,'
      '  USUARIOO = :USUARIOO,'
      '  NUM_DOCUMENTO = :NUM_DOCUMENTO,'
      '  PZ_PGTO = :PZ_PGTO,'
      '  CD_FORNECEDOR = :CD_FORNECEDOR,'
      '  CD_PEDIDO = :CD_PEDIDO'
      'where'
      '  CD_MAT_PRIMA = :OLD_CD_MAT_PRIMA and'
      '  CD_CONTROLE = :OLD_CD_CONTROLE')
    Left = 32
    Top = 208
    object IBDSaidaMtCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_MAT_PRIMA'
      Required = True
    end
    object IBDSaidaMtCD_CONTROLE: TIntegerField
      FieldName = 'CD_CONTROLE'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_CONTROLE'
      Required = True
    end
    object IBDSaidaMtCD_MOVIMENTO: TIntegerField
      FieldName = 'CD_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_MOVIMENTO'
      Required = True
    end
    object IBDSaidaMtDT_MOVIMENTO: TDateField
      FieldName = 'DT_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.DT_MOVIMENTO'
    end
    object IBDSaidaMtHR_MOVIMENTO: TTimeField
      FieldName = 'HR_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.HR_MOVIMENTO'
    end
    object IBDSaidaMtQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'CONTROLE_ENTRADA_SAIDA.QTDE'
      Precision = 9
      Size = 2
    end
    object IBDSaidaMtVALOR_MT_PRIMA: TIBBCDField
      FieldName = 'VALOR_MT_PRIMA'
      Origin = 'CONTROLE_ENTRADA_SAIDA.VALOR_MT_PRIMA'
      Precision = 9
      Size = 2
    end
    object IBDSaidaMtUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.USUARIOO'
      Size = 100
    end
    object IBDSaidaMtNUM_DOCUMENTO: TIBStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.NUM_DOCUMENTO'
    end
    object IBDSaidaMtPZ_PGTO: TIntegerField
      FieldName = 'PZ_PGTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.PZ_PGTO'
    end
    object IBDSaidaMtCD_FORNECEDOR: TIntegerField
      FieldName = 'CD_FORNECEDOR'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_FORNECEDOR'
      Required = True
    end
    object IBDSaidaMtCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_PEDIDO'
    end
  end
  object IBQUltimaSaida: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_controle)+1 as ultimo from CONTROLE_ENTRADA_SAIDA')
    Left = 112
    Top = 208
    object IBQUltimaSaidaULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsMatNf: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt_nf.*, mt.*,un.ds_unidade,'
      '        un.sigla_unidade, cla.ds_classe,'
      '        pj.cd_pessoa_ju, pj.rz_social'
      'from MT_PRIMA_NF mt_nf'
      
        'inner join MATERIA_PRIMA  mt on mt.cd_mat_prima = mt_nf.cd_mat_p' +
        'rima'
      'inner join UNIDADE_MEDIDA un on mt.cd_un_medida = un.cd_unidade'
      'inner join CLASSE_MAT_PRIMA cla on mt.cd_classe = cla.cd_classe'
      
        'inner join PESSOA_JURIDICA pj on mt_nf.cd_fornecedor = pj.cd_pes' +
        'soa_ju')
    Left = 200
    Top = 208
    object IBQConsMatNfCD_PRIMA_NF: TIntegerField
      FieldName = 'CD_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.CD_PRIMA_NF'
      Required = True
    end
    object IBQConsMatNfCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MT_PRIMA_NF.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsMatNfCD_FORNECEDOR: TIntegerField
      FieldName = 'CD_FORNECEDOR'
      Origin = 'MT_PRIMA_NF.CD_FORNECEDOR'
      Required = True
    end
    object IBQConsMatNfDS_PRIMA_NF: TIBStringField
      FieldName = 'DS_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.DS_PRIMA_NF'
      Size = 100
    end
    object IBQConsMatNfDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'MT_PRIMA_NF.DT_CADASTRO'
    end
    object IBQConsMatNfUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'MT_PRIMA_NF.USUARIOO'
      Size = 100
    end
    object IBQConsMatNfSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'MT_PRIMA_NF.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBQConsMatNfVL_MAX: TIBBCDField
      FieldName = 'VL_MAX'
      Origin = 'MT_PRIMA_NF.VL_MAX'
      Precision = 9
      Size = 2
    end
    object IBQConsMatNfVL_MIN: TIBBCDField
      FieldName = 'VL_MIN'
      Origin = 'MT_PRIMA_NF.VL_MIN'
      Precision = 9
      Size = 2
    end
    object IBQConsMatNfIMPORTANCIA: TIBStringField
      FieldName = 'IMPORTANCIA'
      Origin = 'MT_PRIMA_NF.IMPORTANCIA'
      FixedChar = True
      Size = 1
    end
    object IBQConsMatNfCD_MAT_PRIMA1: TIntegerField
      FieldName = 'CD_MAT_PRIMA1'
      Origin = 'MATERIA_PRIMA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsMatNfCD_SETOR: TIntegerField
      FieldName = 'CD_SETOR'
      Origin = 'MATERIA_PRIMA.CD_SETOR'
      Required = True
    end
    object IBQConsMatNfCD_CLASSE: TIntegerField
      FieldName = 'CD_CLASSE'
      Origin = 'MATERIA_PRIMA.CD_CLASSE'
      Required = True
    end
    object IBQConsMatNfCD_UN_MEDIDA: TIntegerField
      FieldName = 'CD_UN_MEDIDA'
      Origin = 'MATERIA_PRIMA.CD_UN_MEDIDA'
      Required = True
    end
    object IBQConsMatNfDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.DS_MAT_PRIMA'
      Size = 100
    end
    object IBQConsMatNfQTDE_EMBALAGEM: TIBBCDField
      FieldName = 'QTDE_EMBALAGEM'
      Origin = 'MATERIA_PRIMA.QTDE_EMBALAGEM'
      Precision = 9
      Size = 2
    end
    object IBQConsMatNfVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'MATERIA_PRIMA.VALOR'
      Precision = 9
      Size = 2
    end
    object IBQConsMatNfESTOQUE_MINIMO: TIBBCDField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'MATERIA_PRIMA.ESTOQUE_MINIMO'
      Precision = 9
      Size = 2
    end
    object IBQConsMatNfPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = 'MATERIA_PRIMA.PESO'
      Precision = 9
      Size = 2
    end
    object IBQConsMatNfFORA_LINHA: TIBStringField
      FieldName = 'FORA_LINHA'
      Origin = 'MATERIA_PRIMA.FORA_LINHA'
      FixedChar = True
      Size = 1
    end
    object IBQConsMatNfIMAGEM: TIBStringField
      FieldName = 'IMAGEM'
      Origin = 'MATERIA_PRIMA.IMAGEM'
      Size = 500
    end
    object IBQConsMatNfQTDE_ESTOQUE: TIBBCDField
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'MATERIA_PRIMA.QTDE_ESTOQUE'
      Precision = 9
      Size = 2
    end
    object IBQConsMatNfOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'MATERIA_PRIMA.OBSERVACOES'
      Size = 300
    end
    object IBQConsMatNfDT_CADASTRO1: TDateField
      FieldName = 'DT_CADASTRO1'
      Origin = 'MATERIA_PRIMA.DT_CADASTRO'
    end
    object IBQConsMatNfUSUARIOO1: TIBStringField
      FieldName = 'USUARIOO1'
      Origin = 'MATERIA_PRIMA.USUARIOO'
      Size = 100
    end
    object IBQConsMatNfCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'MATERIA_PRIMA.CODIGO_BARRAS'
    end
    object IBQConsMatNfDS_UNIDADE: TIBStringField
      FieldName = 'DS_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.DS_UNIDADE'
      Size = 50
    end
    object IBQConsMatNfSIGLA_UNIDADE: TIBStringField
      FieldName = 'SIGLA_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.SIGLA_UNIDADE'
      Size = 2
    end
    object IBQConsMatNfDS_CLASSE: TIBStringField
      FieldName = 'DS_CLASSE'
      Origin = 'CLASSE_MAT_PRIMA.DS_CLASSE'
      Size = 100
    end
    object IBQConsMatNfCD_PESSOA_JU: TIntegerField
      FieldName = 'CD_PESSOA_JU'
      Origin = 'PESSOA_JURIDICA.CD_PESSOA_JU'
      Required = True
    end
    object IBQConsMatNfRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
  end
  object IBQCarPro: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt.qtde_estoque,'
      '       car.qtde as qtde_car,'
      '       pro.qtde as qtde_pro,'
      '       mt.qtde_estoque - sum(car.qtde) as disponivel'
      '       from'
      '       MATERIA_PRIMA mt'
      
        '       inner join MT_PRIMA_NF mt_nf on mt_nf.cd_mat_prima = mt.c' +
        'd_mat_prima'
      
        '       inner join CARTEIRA car on car.cd_mat_prima = mt.cd_mat_p' +
        'rima'
      
        '       inner join MT_PROCESSO pro on pro.cd_mat_prima = mt.cd_ma' +
        't_prima'
      '       where'
      '       mt_nf.cd_prima_nf = :pmateria'
      '       group by 1,2,3')
    Left = 288
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
    object IBQCarProQTDE_ESTOQUE: TIBBCDField
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'MATERIA_PRIMA.QTDE_ESTOQUE'
      Precision = 9
      Size = 2
    end
    object IBQCarProQTDE_CAR: TIBBCDField
      FieldName = 'QTDE_CAR'
      Precision = 9
      Size = 2
    end
    object IBQCarProQTDE_PRO: TIBBCDField
      FieldName = 'QTDE_PRO'
      Precision = 9
      Size = 2
    end
    object IBQCarProDISPONIVEL: TIBBCDField
      FieldName = 'DISPONIVEL'
      Precision = 18
      Size = 2
    end
  end
  object IBQQtdeEstoque: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt.qtde_estoque'
      '    from MATERIA_PRIMA mt'
      
        '    inner join MT_PRIMA_NF mt_nf on mt_nf.cd_mat_prima = mt.cd_m' +
        'at_prima'
      '    where'
      '    mt_nf.cd_prima_nf = :pmateria')
    Left = 368
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
    object IBQQtdeEstoqueQTDE_ESTOQUE: TIBBCDField
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'MATERIA_PRIMA.QTDE_ESTOQUE'
      Precision = 9
      Size = 2
    end
  end
  object IBQConsSaida: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  saida.*,'
      
        '        mt.cd_mat_prima,mt.ds_mat_prima,mt.qtde_embalagem,mt.qtd' +
        'e_estoque,'
      '        un.sigla_unidade,'
      '        mov.ds_movimento,'
      '        pj.rz_social, mt_nf.cd_prima_nf, mt_nf.ds_prima_nf'
      '        from CONTROLE_ENTRADA_SAIDA saida'
      
        '        inner join MATERIA_PRIMA mt on saida.cd_mat_prima = mt.c' +
        'd_mat_prima'
      
        '        inner join MT_PRIMA_NF mt_nf on mt_nf.cd_mat_prima = mt.' +
        'cd_mat_prima and mt_nf.cd_fornecedor = saida.cd_fornecedor'
      
        '        inner join PESSOA_JURIDICA pj on saida.cd_fornecedor = p' +
        'j.cd_pessoa_ju'
      
        '        inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = s' +
        'aida.cd_movimento'
      
        '        inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un' +
        '_medida'
      '        where'
      '        mov.tipo_movimento = :ptipo')
    Left = 456
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptipo'
        ParamType = ptUnknown
      end>
    object IBQConsSaidaDT_MOVIMENTO: TDateField
      FieldName = 'DT_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.DT_MOVIMENTO'
    end
    object IBQConsSaidaHR_MOVIMENTO: TTimeField
      FieldName = 'HR_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.HR_MOVIMENTO'
    end
    object IBQConsSaidaCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsSaidaDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.DS_MAT_PRIMA'
      Size = 100
    end
    object IBQConsSaidaQTDE_EMBALAGEM: TIBBCDField
      FieldName = 'QTDE_EMBALAGEM'
      Origin = 'MATERIA_PRIMA.QTDE_EMBALAGEM'
      Precision = 9
      Size = 2
    end
    object IBQConsSaidaQTDE_ESTOQUE: TIBBCDField
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'MATERIA_PRIMA.QTDE_ESTOQUE'
      Precision = 9
      Size = 2
    end
    object IBQConsSaidaSIGLA_UNIDADE: TIBStringField
      FieldName = 'SIGLA_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.SIGLA_UNIDADE'
      Size = 2
    end
    object IBQConsSaidaDS_MOVIMENTO: TIBStringField
      FieldName = 'DS_MOVIMENTO'
      Origin = 'MOVIMENTO_ESTOQUE.DS_MOVIMENTO'
      Size = 100
    end
    object IBQConsSaidaRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQConsSaidaQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'CONTROLE_ENTRADA_SAIDA.QTDE'
      Precision = 9
      Size = 2
    end
    object IBQConsSaidaCD_CONTROLE: TIntegerField
      FieldName = 'CD_CONTROLE'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_CONTROLE'
      Required = True
    end
    object IBQConsSaidaCD_MOVIMENTO: TIntegerField
      FieldName = 'CD_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_MOVIMENTO'
      Required = True
    end
    object IBQConsSaidaVALOR_MT_PRIMA: TIBBCDField
      FieldName = 'VALOR_MT_PRIMA'
      Origin = 'CONTROLE_ENTRADA_SAIDA.VALOR_MT_PRIMA'
      Precision = 9
      Size = 2
    end
    object IBQConsSaidaUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.USUARIOO'
      Size = 100
    end
    object IBQConsSaidaNUM_DOCUMENTO: TIBStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.NUM_DOCUMENTO'
    end
    object IBQConsSaidaPZ_PGTO: TIntegerField
      FieldName = 'PZ_PGTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.PZ_PGTO'
    end
    object IBQConsSaidaCD_FORNECEDOR: TIntegerField
      FieldName = 'CD_FORNECEDOR'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_FORNECEDOR'
      Required = True
    end
    object IBQConsSaidaCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.CD_PEDIDO'
    end
    object IBQConsSaidaCD_MAT_PRIMA1: TIntegerField
      FieldName = 'CD_MAT_PRIMA1'
      Origin = 'MATERIA_PRIMA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsSaidaCD_PRIMA_NF: TIntegerField
      FieldName = 'CD_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.CD_PRIMA_NF'
      Required = True
    end
    object IBQConsSaidaDS_PRIMA_NF: TIBStringField
      FieldName = 'DS_PRIMA_NF'
      Origin = 'MT_PRIMA_NF.DS_PRIMA_NF'
      Size = 100
    end
  end
  object IBQCarteiraProcesso: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt.qtde_estoque,'
      '       car.qtde as qtde_car,'
      '       pro.qtde as qtde_pro,'
      '       mt.qtde_estoque - sum(car.qtde) as disponivel'
      '       from'
      '       MATERIA_PRIMA mt'
      
        '       inner join CARTEIRA car on car.cd_mat_prima = mt.cd_mat_p' +
        'rima'
      
        '       inner join MT_PROCESSO pro on pro.cd_mat_prima = mt.cd_ma' +
        't_prima'
      '       where'
      '       mt.cd_mat_prima = :pmateria'
      '       group by 1,2,3')
    Left = 40
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
    object IBQCarteiraProcessoQTDE_ESTOQUE: TIBBCDField
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'MATERIA_PRIMA.QTDE_ESTOQUE'
      Precision = 9
      Size = 2
    end
    object IBQCarteiraProcessoQTDE_CAR: TIBBCDField
      FieldName = 'QTDE_CAR'
      Precision = 9
      Size = 2
    end
    object IBQCarteiraProcessoQTDE_PRO: TIBBCDField
      FieldName = 'QTDE_PRO'
      Precision = 9
      Size = 2
    end
    object IBQCarteiraProcessoDISPONIVEL: TIBBCDField
      FieldName = 'DISPONIVEL'
      Precision = 18
      Size = 2
    end
  end
  object IBQUltEntrada: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      ' select ent_sai.dt_movimento, ent_sai.qtde'
      '            from  CONTROLE_ENTRADA_SAIDA ent_sai'
      '            where'
      
        '            ent_sai.cd_controle = (select max(ent_sai.cd_control' +
        'e) from'
      
        '                                    CONTROLE_ENTRADA_SAIDA ent_s' +
        'ai'
      
        '                                    inner join MOVIMENTO_ESTOQUE' +
        ' mov on ent_sai.cd_movimento = mov.cd_movimento'
      '                                    where'
      
        '                                    mov.tipo_movimento = :ptipo ' +
        'and'
      
        '                                    ent_sai.cd_mat_prima = :pmat' +
        'eria)')
    Left = 144
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
    object IBQUltEntradaDT_MOVIMENTO: TDateField
      FieldName = 'DT_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.DT_MOVIMENTO'
    end
    object IBQUltEntradaQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'CONTROLE_ENTRADA_SAIDA.QTDE'
      Precision = 9
      Size = 2
    end
  end
  object IBQUltSaida: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      ' select ent_sai.dt_movimento, ent_sai.qtde'
      '            from  CONTROLE_ENTRADA_SAIDA ent_sai'
      '            where'
      
        '            ent_sai.cd_controle = (select max(ent_sai.cd_control' +
        'e) from'
      
        '                                    CONTROLE_ENTRADA_SAIDA ent_s' +
        'ai'
      
        '                                    inner join MOVIMENTO_ESTOQUE' +
        ' mov on ent_sai.cd_movimento = mov.cd_movimento'
      '                                    where'
      
        '                                    mov.tipo_movimento = :ptipo ' +
        'and'
      
        '                                    ent_sai.cd_mat_prima = :pmat' +
        'eria)')
    Left = 224
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end>
    object IBQUltSaidaDT_MOVIMENTO: TDateField
      FieldName = 'DT_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.DT_MOVIMENTO'
    end
    object IBQUltSaidaQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'CONTROLE_ENTRADA_SAIDA.QTDE'
      Precision = 9
      Size = 2
    end
  end
  object IBQTotEntSai: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(ent_sai.qtde)'
      '        from  CONTROLE_ENTRADA_SAIDA ent_sai'
      
        '        inner join MOVIMENTO_ESTOQUE mov on ent_sai.cd_movimento' +
        ' = mov.cd_movimento'
      '        where'
      '        ent_sai.cd_mat_prima = :pmateria and'
      '        mov.tipo_movimento = :ptipo')
    Left = 304
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmateria'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptipo'
        ParamType = ptUnknown
      end>
    object IBQTotEntSaiSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 2
    end
  end
  object IBQUltimoBarraMt: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_controle)+1 as ultimo from BARRAS_MT')
    Left = 112
    Top = 320
    object IBQUltimoBarraMtULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBDBarrasMt: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDBarrasMtBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BARRAS_MT'
      'where'
      '  CD_CONTROLE = :OLD_CD_CONTROLE')
    InsertSQL.Strings = (
      'insert into BARRAS_MT'
      '  (CD_CONTROLE, CD_MT_NF, CD_MAT_PRIMA, DS_MATERIA, IMPRESSO)'
      'values'
      
        '  (:CD_CONTROLE, :CD_MT_NF, :CD_MAT_PRIMA, :DS_MATERIA, :IMPRESS' +
        'O)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_CONTROLE,'
      '  CD_MT_NF,'
      '  CD_MAT_PRIMA,'
      '  DS_MATERIA,'
      '  IMPRESSO'
      'from BARRAS_MT '
      'where'
      '  CD_CONTROLE = :CD_CONTROLE')
    SelectSQL.Strings = (
      'select * from BARRAS_MT where'
      'cd_controle = :pcontrole')
    ModifySQL.Strings = (
      'update BARRAS_MT'
      'set'
      '  CD_CONTROLE = :CD_CONTROLE,'
      '  CD_MT_NF = :CD_MT_NF,'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA,'
      '  DS_MATERIA = :DS_MATERIA,'
      '  IMPRESSO = :IMPRESSO'
      'where'
      '  CD_CONTROLE = :OLD_CD_CONTROLE')
    Left = 32
    Top = 320
    object IBDBarrasMtCD_CONTROLE: TIntegerField
      FieldName = 'CD_CONTROLE'
      Origin = 'BARRAS_MT.CD_CONTROLE'
      Required = True
    end
    object IBDBarrasMtCD_MT_NF: TLargeintField
      FieldName = 'CD_MT_NF'
      Origin = 'BARRAS_MT.CD_MT_NF'
    end
    object IBDBarrasMtCD_MAT_PRIMA: TLargeintField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'BARRAS_MT.CD_MAT_PRIMA'
    end
    object IBDBarrasMtDS_MATERIA: TIBStringField
      FieldName = 'DS_MATERIA'
      Origin = 'BARRAS_MT.DS_MATERIA'
      Size = 100
    end
    object IBDBarrasMtIMPRESSO: TIBStringField
      FieldName = 'IMPRESSO'
      Origin = 'BARRAS_MT.IMPRESSO'
      FixedChar = True
      Size = 1
    end
  end
  object IBQConsBarrasMt: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BARRAS_MT barra'
      'where'
      'barra.impresso = :pimpresso')
    Left = 208
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pimpresso'
        ParamType = ptUnknown
      end>
    object IBQConsBarrasMtCD_CONTROLE: TIntegerField
      FieldName = 'CD_CONTROLE'
      Origin = 'BARRAS_MT.CD_CONTROLE'
      Required = True
    end
    object IBQConsBarrasMtCD_MT_NF: TLargeintField
      FieldName = 'CD_MT_NF'
      Origin = 'BARRAS_MT.CD_MT_NF'
    end
    object IBQConsBarrasMtCD_MAT_PRIMA: TLargeintField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'BARRAS_MT.CD_MAT_PRIMA'
    end
    object IBQConsBarrasMtDS_MATERIA: TIBStringField
      FieldName = 'DS_MATERIA'
      Origin = 'BARRAS_MT.DS_MATERIA'
      Size = 100
    end
    object IBQConsBarrasMtIMPRESSO: TIBStringField
      FieldName = 'IMPRESSO'
      Origin = 'BARRAS_MT.IMPRESSO'
      FixedChar = True
      Size = 1
    end
  end
  object IBQApagaBarrasMt: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from BARRAS_MT')
    Left = 312
    Top = 320
  end
  object IBDEtiquetasMt: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDEtiquetasMtBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ETIQUETAS_MT'
      'where'
      '  CD_CONTROLE = :OLD_CD_CONTROLE')
    InsertSQL.Strings = (
      'insert into ETIQUETAS_MT'
      '  (CD_CONTROLE, CD_MAT_PRIMA, CD_MAT_PRIMA_NF, DS_MAT_PRIMA, '
      'IMPRESSO, '
      '   QUANTIDADE, DT_IMPRESSA)'
      'values'
      
        '  (:CD_CONTROLE, :CD_MAT_PRIMA, :CD_MAT_PRIMA_NF, :DS_MAT_PRIMA,' +
        ' '
      ':IMPRESSO, '
      '   :QUANTIDADE, :DT_IMPRESSA)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_CONTROLE,'
      '  CD_MAT_PRIMA,'
      '  CD_MAT_PRIMA_NF,'
      '  DS_MAT_PRIMA,'
      '  IMPRESSO,'
      '  QUANTIDADE,'
      '  DT_IMPRESSA'
      'from ETIQUETAS_MT '
      'where'
      '  CD_CONTROLE = :CD_CONTROLE')
    SelectSQL.Strings = (
      'select * from ETIQUETAS_MT where cd_controle = :pcontrole')
    ModifySQL.Strings = (
      'update ETIQUETAS_MT'
      'set'
      '  CD_CONTROLE = :CD_CONTROLE,'
      '  CD_MAT_PRIMA = :CD_MAT_PRIMA,'
      '  CD_MAT_PRIMA_NF = :CD_MAT_PRIMA_NF,'
      '  DS_MAT_PRIMA = :DS_MAT_PRIMA,'
      '  IMPRESSO = :IMPRESSO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  DT_IMPRESSA = :DT_IMPRESSA'
      'where'
      '  CD_CONTROLE = :OLD_CD_CONTROLE')
    Left = 40
    Top = 376
    object IBDEtiquetasMtCD_CONTROLE: TIntegerField
      FieldName = 'CD_CONTROLE'
      Origin = 'ETIQUETAS_MT.CD_CONTROLE'
      Required = True
    end
    object IBDEtiquetasMtCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'ETIQUETAS_MT.CD_MAT_PRIMA'
    end
    object IBDEtiquetasMtCD_MAT_PRIMA_NF: TIntegerField
      FieldName = 'CD_MAT_PRIMA_NF'
      Origin = 'ETIQUETAS_MT.CD_MAT_PRIMA_NF'
    end
    object IBDEtiquetasMtDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'ETIQUETAS_MT.DS_MAT_PRIMA'
      Size = 100
    end
    object IBDEtiquetasMtIMPRESSO: TIBStringField
      FieldName = 'IMPRESSO'
      Origin = 'ETIQUETAS_MT.IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object IBDEtiquetasMtQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'ETIQUETAS_MT.QUANTIDADE'
    end
    object IBDEtiquetasMtDT_IMPRESSA: TDateField
      FieldName = 'DT_IMPRESSA'
      Origin = 'ETIQUETAS_MT.DT_IMPRESSA'
    end
  end
  object IBQUltimaEtiquetaMt: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_controle)+1 as ultimo from ETIQUETAS_MT')
    Left = 136
    Top = 376
    object IBQUltimaEtiquetaMtULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsEtiquetasMt: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from etiquetas_mt eti'
      'where eti.impresso = :pimpresso')
    Left = 264
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pimpresso'
        ParamType = ptUnknown
      end>
    object IBQConsEtiquetasMtCD_CONTROLE: TIntegerField
      FieldName = 'CD_CONTROLE'
      Origin = 'ETIQUETAS_MT.CD_CONTROLE'
      Required = True
    end
    object IBQConsEtiquetasMtCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'ETIQUETAS_MT.CD_MAT_PRIMA'
    end
    object IBQConsEtiquetasMtCD_MAT_PRIMA_NF: TIntegerField
      FieldName = 'CD_MAT_PRIMA_NF'
      Origin = 'ETIQUETAS_MT.CD_MAT_PRIMA_NF'
    end
    object IBQConsEtiquetasMtDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'ETIQUETAS_MT.DS_MAT_PRIMA'
      Size = 100
    end
    object IBQConsEtiquetasMtIMPRESSO: TIBStringField
      FieldName = 'IMPRESSO'
      Origin = 'ETIQUETAS_MT.IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object IBQConsEtiquetasMtQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'ETIQUETAS_MT.QUANTIDADE'
    end
    object IBQConsEtiquetasMtDT_IMPRESSA: TDateField
      FieldName = 'DT_IMPRESSA'
      Origin = 'ETIQUETAS_MT.DT_IMPRESSA'
    end
  end
  object IBDSaidaProdAcabado: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDSaidaProdAcabadoBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SAIDA_PROD_ACABADO'
      'where'
      '  CD_SAIDA = :OLD_CD_SAIDA')
    InsertSQL.Strings = (
      'insert into SAIDA_PROD_ACABADO'
      '  (CD_SAIDA, CD_PRODUTO, CD_COR, QTDE, DT_SAIDA, HR_SAIDA, '
      'USUARIOO)'
      'values'
      
        '  (:CD_SAIDA, :CD_PRODUTO, :CD_COR, :QTDE, :DT_SAIDA, :HR_SAIDA,' +
        ' '
      ':USUARIOO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_SAIDA,'
      '  CD_PRODUTO,'
      '  CD_COR,'
      '  QTDE,'
      '  DT_SAIDA,'
      '  HR_SAIDA,'
      '  USUARIOO'
      'from SAIDA_PROD_ACABADO '
      'where'
      '  CD_SAIDA = :CD_SAIDA')
    SelectSQL.Strings = (
      'select * from SAIDA_PROD_ACABADO where'
      'cd_saida = :psaida')
    ModifySQL.Strings = (
      'update SAIDA_PROD_ACABADO'
      'set'
      '  CD_SAIDA = :CD_SAIDA,'
      '  CD_PRODUTO = :CD_PRODUTO,'
      '  CD_COR = :CD_COR,'
      '  QTDE = :QTDE,'
      '  DT_SAIDA = :DT_SAIDA,'
      '  HR_SAIDA = :HR_SAIDA,'
      '  USUARIOO = :USUARIOO'
      'where'
      '  CD_SAIDA = :OLD_CD_SAIDA')
    Left = 40
    Top = 424
    object IBDSaidaProdAcabadoCD_SAIDA: TIntegerField
      FieldName = 'CD_SAIDA'
      Origin = 'SAIDA_PROD_ACABADO.CD_SAIDA'
      Required = True
    end
    object IBDSaidaProdAcabadoCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'SAIDA_PROD_ACABADO.CD_PRODUTO'
      Required = True
    end
    object IBDSaidaProdAcabadoCD_COR: TIntegerField
      FieldName = 'CD_COR'
      Origin = 'SAIDA_PROD_ACABADO.CD_COR'
      Required = True
    end
    object IBDSaidaProdAcabadoQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'SAIDA_PROD_ACABADO.QTDE'
      Required = True
    end
    object IBDSaidaProdAcabadoDT_SAIDA: TDateField
      FieldName = 'DT_SAIDA'
      Origin = 'SAIDA_PROD_ACABADO.DT_SAIDA'
    end
    object IBDSaidaProdAcabadoHR_SAIDA: TTimeField
      FieldName = 'HR_SAIDA'
      Origin = 'SAIDA_PROD_ACABADO.HR_SAIDA'
    end
    object IBDSaidaProdAcabadoUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'SAIDA_PROD_ACABADO.USUARIOO'
      Size = 100
    end
  end
  object IBQUltimaSaidaProd: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_saida)+1 as ultimo from SAIDA_PROD_ACABADO')
    Left = 152
    Top = 424
    object IBQUltimaSaidaProdULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBDSaidaProdEspera: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BeforePost = IBDSaidaProdEsperaBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SAIDA_PROD_ESPERA'
      'where'
      '  CD_SAIDA = :OLD_CD_SAIDA')
    InsertSQL.Strings = (
      'insert into SAIDA_PROD_ESPERA'
      '  (CD_SAIDA, CD_PRODUTO, COR, DT_SAIDA, HORA)'
      'values'
      '  (:CD_SAIDA, :CD_PRODUTO, :COR, :DT_SAIDA, :HORA)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_SAIDA,'
      '  CD_PRODUTO,'
      '  COR,'
      '  DT_SAIDA,'
      '  HORA'
      'from SAIDA_PROD_ESPERA '
      'where'
      '  CD_SAIDA = :CD_SAIDA')
    SelectSQL.Strings = (
      'select * from SAIDA_PROD_ESPERA where'
      'cd_saida = :psaida')
    ModifySQL.Strings = (
      'update SAIDA_PROD_ESPERA'
      'set'
      '  CD_SAIDA = :CD_SAIDA,'
      '  CD_PRODUTO = :CD_PRODUTO,'
      '  COR = :COR,'
      '  DT_SAIDA = :DT_SAIDA,'
      '  HORA = :HORA'
      'where'
      '  CD_SAIDA = :OLD_CD_SAIDA')
    Left = 56
    Top = 480
    object IBDSaidaProdEsperaCD_SAIDA: TIntegerField
      FieldName = 'CD_SAIDA'
      Origin = 'SAIDA_PROD_ESPERA.CD_SAIDA'
      Required = True
    end
    object IBDSaidaProdEsperaCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'SAIDA_PROD_ESPERA.CD_PRODUTO'
      Required = True
    end
    object IBDSaidaProdEsperaCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'SAIDA_PROD_ESPERA.COR'
      Required = True
    end
    object IBDSaidaProdEsperaDT_SAIDA: TDateField
      FieldName = 'DT_SAIDA'
      Origin = 'SAIDA_PROD_ESPERA.DT_SAIDA'
    end
    object IBDSaidaProdEsperaHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'SAIDA_PROD_ESPERA.HORA'
    end
  end
  object IBQUltimaSaidaEspera: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(cd_saida)+1 as ultimo from SAIDA_PROD_ESPERA')
    Left = 168
    Top = 480
    object IBQUltimaSaidaEsperaULTIMO: TLargeintField
      FieldName = 'ULTIMO'
    end
  end
  object IBQConsSaidaEspera: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    AfterScroll = IBQConsSaidaEsperaAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select p.ds_produto, s_e.* from'
      '    SAIDA_PROD_ESPERA s_e'
      '    inner join PRODUTO p on s_e.cd_produto = p.cd_produto')
    Left = 288
    Top = 480
    object IBQConsSaidaEsperaDS_PRODUTO: TIBStringField
      FieldName = 'DS_PRODUTO'
      Origin = 'PRODUTO.DS_PRODUTO'
      Size = 100
    end
    object IBQConsSaidaEsperaCD_SAIDA: TIntegerField
      FieldName = 'CD_SAIDA'
      Origin = 'SAIDA_PROD_ESPERA.CD_SAIDA'
      Required = True
    end
    object IBQConsSaidaEsperaCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'SAIDA_PROD_ESPERA.CD_PRODUTO'
      Required = True
    end
    object IBQConsSaidaEsperaCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'SAIDA_PROD_ESPERA.COR'
      Required = True
    end
    object IBQConsSaidaEsperaDT_SAIDA: TDateField
      FieldName = 'DT_SAIDA'
      Origin = 'SAIDA_PROD_ESPERA.DT_SAIDA'
    end
    object IBQConsSaidaEsperaHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'SAIDA_PROD_ESPERA.HORA'
    end
  end
  object IBQApagaSaidaProdEspera: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from SAIDA_PROD_ESPERA')
    Left = 424
    Top = 472
  end
  object IBQSaidaProdDiaria: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sa.*,p.ds_produto'
      '    from SAIDA_PROD_ACABADO sa'
      '    inner join PRODUTO p on p.cd_produto = sa.cd_produto'
      '    where'
      '    sa.dt_saida = :pdata')
    Left = 272
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pdata'
        ParamType = ptUnknown
      end>
    object IBQSaidaProdDiariaCD_SAIDA: TIntegerField
      FieldName = 'CD_SAIDA'
      Origin = 'SAIDA_PROD_ACABADO.CD_SAIDA'
      Required = True
    end
    object IBQSaidaProdDiariaCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'SAIDA_PROD_ACABADO.CD_PRODUTO'
      Required = True
    end
    object IBQSaidaProdDiariaCD_COR: TIntegerField
      FieldName = 'CD_COR'
      Origin = 'SAIDA_PROD_ACABADO.CD_COR'
      Required = True
    end
    object IBQSaidaProdDiariaQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'SAIDA_PROD_ACABADO.QTDE'
      Required = True
    end
    object IBQSaidaProdDiariaDT_SAIDA: TDateField
      FieldName = 'DT_SAIDA'
      Origin = 'SAIDA_PROD_ACABADO.DT_SAIDA'
    end
    object IBQSaidaProdDiariaHR_SAIDA: TTimeField
      FieldName = 'HR_SAIDA'
      Origin = 'SAIDA_PROD_ACABADO.HR_SAIDA'
    end
    object IBQSaidaProdDiariaUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'SAIDA_PROD_ACABADO.USUARIOO'
      Size = 100
    end
    object IBQSaidaProdDiariaDS_PRODUTO: TIBStringField
      FieldName = 'DS_PRODUTO'
      Origin = 'PRODUTO.DS_PRODUTO'
      Size = 100
    end
  end
  object IBQConsUsuarioMensagem: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select u.cd_usuario,u.nm_usuario, null as tika from'
      '    USUARIO u')
    Left = 512
    Top = 280
    object IBQConsUsuarioMensagemCD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
      Origin = 'USUARIO.CD_USUARIO'
      Required = True
    end
    object IBQConsUsuarioMensagemNM_USUARIO: TIBStringField
      FieldName = 'NM_USUARIO'
      Origin = 'USUARIO.NM_USUARIO'
      Required = True
      Size = 100
    end
    object IBQConsUsuarioMensagemTIKA: TIBStringField
      FieldName = 'TIKA'
      FixedChar = True
      Size = 1
    end
  end
  object ClienteUsuarioMensagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderUsuarioMensagem'
    Left = 648
    Top = 280
    object ClienteUsuarioMensagemCD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
      Origin = 'USUARIO.CD_USUARIO'
      Required = True
    end
    object ClienteUsuarioMensagemNM_USUARIO: TStringField
      FieldName = 'NM_USUARIO'
      Origin = 'USUARIO.NM_USUARIO'
      Required = True
      Size = 100
    end
    object ClienteUsuarioMensagemTIKA: TStringField
      FieldName = 'TIKA'
      FixedChar = True
      Size = 1
    end
  end
  object ProviderUsuarioMensagem: TDataSetProvider
    DataSet = IBQConsUsuarioMensagem
    Left = 616
    Top = 336
  end
  object IBDMensagens: TIBDataSet
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MENSAGENS'
      'where'
      '  CD_MENSAGEM = :OLD_CD_MENSAGEM')
    InsertSQL.Strings = (
      'insert into MENSAGENS'
      '  (CD_MENSAGEM, CD_USUARIO, MENSAGEM, DT_MENSAGEM, '
      'HR_MENSAGEM, SITUACAO, '
      '   CD_USUARIO_ENVIO)'
      'values'
      '  (:CD_MENSAGEM, :CD_USUARIO, :MENSAGEM, :DT_MENSAGEM, '
      ':HR_MENSAGEM, :SITUACAO, '
      '   :CD_USUARIO_ENVIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_MENSAGEM,'
      '  CD_USUARIO,'
      '  MENSAGEM,'
      '  DT_MENSAGEM,'
      '  HR_MENSAGEM,'
      '  SITUACAO,'
      '  CD_USUARIO_ENVIO'
      'from MENSAGENS '
      'where'
      '  CD_MENSAGEM = :CD_MENSAGEM')
    SelectSQL.Strings = (
      'select * from MENSAGENS where'
      'cd_mensagem = :pmensagem')
    ModifySQL.Strings = (
      'update MENSAGENS'
      'set'
      '  CD_MENSAGEM = :CD_MENSAGEM,'
      '  CD_USUARIO = :CD_USUARIO,'
      '  MENSAGEM = :MENSAGEM,'
      '  DT_MENSAGEM = :DT_MENSAGEM,'
      '  HR_MENSAGEM = :HR_MENSAGEM,'
      '  SITUACAO = :SITUACAO,'
      '  CD_USUARIO_ENVIO = :CD_USUARIO_ENVIO'
      'where'
      '  CD_MENSAGEM = :OLD_CD_MENSAGEM')
    Left = 480
    Top = 400
    object IBDMensagensCD_MENSAGEM: TIntegerField
      FieldName = 'CD_MENSAGEM'
      Origin = 'MENSAGENS.CD_MENSAGEM'
      Required = True
    end
    object IBDMensagensCD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
      Origin = 'MENSAGENS.CD_USUARIO'
      Required = True
    end
    object IBDMensagensMENSAGEM: TIBStringField
      FieldName = 'MENSAGEM'
      Origin = 'MENSAGENS.MENSAGEM'
      Size = 500
    end
    object IBDMensagensDT_MENSAGEM: TDateField
      FieldName = 'DT_MENSAGEM'
      Origin = 'MENSAGENS.DT_MENSAGEM'
    end
    object IBDMensagensHR_MENSAGEM: TTimeField
      FieldName = 'HR_MENSAGEM'
      Origin = 'MENSAGENS.HR_MENSAGEM'
    end
    object IBDMensagensSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'MENSAGENS.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBDMensagensCD_USUARIO_ENVIO: TIntegerField
      FieldName = 'CD_USUARIO_ENVIO'
      Origin = 'MENSAGENS.CD_USUARIO_ENVIO'
    end
  end
  object IBQConsMensagens: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select m.*, u.nm_usuario'
      '    from MENSAGENS m'
      '    inner join USUARIO u on u.cd_usuario = m.cd_usuario_envio'
      '    where'
      '    m.cd_usuario = :pusuario'
      '   order by m.cd_mensagem desc')
    Left = 576
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pusuario'
        ParamType = ptUnknown
      end>
    object IBQConsMensagensCD_MENSAGEM: TIntegerField
      FieldName = 'CD_MENSAGEM'
      Origin = 'MENSAGENS.CD_MENSAGEM'
      Required = True
    end
    object IBQConsMensagensCD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
      Origin = 'MENSAGENS.CD_USUARIO'
      Required = True
    end
    object IBQConsMensagensMENSAGEM: TIBStringField
      FieldName = 'MENSAGEM'
      Origin = 'MENSAGENS.MENSAGEM'
      Size = 500
    end
    object IBQConsMensagensDT_MENSAGEM: TDateField
      FieldName = 'DT_MENSAGEM'
      Origin = 'MENSAGENS.DT_MENSAGEM'
    end
    object IBQConsMensagensHR_MENSAGEM: TTimeField
      FieldName = 'HR_MENSAGEM'
      Origin = 'MENSAGENS.HR_MENSAGEM'
    end
    object IBQConsMensagensSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'MENSAGENS.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBQConsMensagensCD_USUARIO_ENVIO: TIntegerField
      FieldName = 'CD_USUARIO_ENVIO'
      Origin = 'MENSAGENS.CD_USUARIO_ENVIO'
    end
    object IBQConsMensagensNM_USUARIO: TIBStringField
      FieldName = 'NM_USUARIO'
      Origin = 'USUARIO.NM_USUARIO'
      Required = True
      Size = 100
    end
  end
  object IBQApagaMensagens: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from MENSAGENS m'
      '        where'
      '        m.cd_mensagem = :pmensagem')
    Left = 688
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmensagem'
        ParamType = ptUnknown
      end>
  end
  object IBQConsMensagenAberta: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select m.* from MENSAGENS m'
      '                where'
      '                m.cd_usuario = :pusuario and'
      '                m.situacao = :psituacao')
    Left = 456
    Top = 336
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
    object IBQConsMensagenAbertaCD_MENSAGEM: TIntegerField
      FieldName = 'CD_MENSAGEM'
      Origin = 'MENSAGENS.CD_MENSAGEM'
      Required = True
    end
    object IBQConsMensagenAbertaCD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
      Origin = 'MENSAGENS.CD_USUARIO'
      Required = True
    end
    object IBQConsMensagenAbertaMENSAGEM: TIBStringField
      FieldName = 'MENSAGEM'
      Origin = 'MENSAGENS.MENSAGEM'
      Size = 500
    end
    object IBQConsMensagenAbertaDT_MENSAGEM: TDateField
      FieldName = 'DT_MENSAGEM'
      Origin = 'MENSAGENS.DT_MENSAGEM'
    end
    object IBQConsMensagenAbertaHR_MENSAGEM: TTimeField
      FieldName = 'HR_MENSAGEM'
      Origin = 'MENSAGENS.HR_MENSAGEM'
    end
    object IBQConsMensagenAbertaSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'MENSAGENS.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object IBQConsMensagenAbertaCD_USUARIO_ENVIO: TIntegerField
      FieldName = 'CD_USUARIO_ENVIO'
      Origin = 'MENSAGENS.CD_USUARIO_ENVIO'
    end
  end
end
