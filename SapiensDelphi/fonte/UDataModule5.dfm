object DataModule5: TDataModule5
  OldCreateOrder = False
  Left = 207
  Top = 104
  Height = 612
  Width = 503
  object IBQRelCompra: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt.cd_mat_prima, mt.ds_mat_prima, mt.qtde_estoque,'
      '      un.sigla_unidade'
      '      from'
      '      MATERIA_PRIMA mt'
      
        '      inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_m' +
        'edida'
      '      where'
      '      mt.qtde_estoque < mt.estoque_minimo')
    Left = 40
    Top = 16
    object IBQRelCompraCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQRelCompraDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.DS_MAT_PRIMA'
      Size = 100
    end
    object IBQRelCompraQTDE_ESTOQUE: TIBBCDField
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'MATERIA_PRIMA.QTDE_ESTOQUE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 9
      Size = 2
    end
    object IBQRelCompraSIGLA_UNIDADE: TIBStringField
      FieldName = 'SIGLA_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.SIGLA_UNIDADE'
      Size = 2
    end
  end
  object IBQConsEtiqProd: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ETIQUETAS_PROD')
    Left = 40
    Top = 96
    object IBQConsEtiqProdCD_CONTROLE: TIntegerField
      FieldName = 'CD_CONTROLE'
      Origin = 'ETIQUETAS_PROD.CD_CONTROLE'
      Required = True
    end
    object IBQConsEtiqProdCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'ETIQUETAS_PROD.CD_PRODUTO'
    end
    object IBQConsEtiqProdDS_PRODUTO: TIBStringField
      FieldName = 'DS_PRODUTO'
      Origin = 'ETIQUETAS_PROD.DS_PRODUTO'
      Size = 100
    end
  end
  object ProviderEtiquetasProd: TDataSetProvider
    DataSet = IBQConsEtiqProd
    Left = 152
    Top = 96
  end
  object ClienteEtiquetasProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderEtiquetasProd'
    Left = 264
    Top = 96
    object ClienteEtiquetasProdCD_CONTROLE: TIntegerField
      FieldName = 'CD_CONTROLE'
      Required = True
    end
    object ClienteEtiquetasProdCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
    end
    object ClienteEtiquetasProdDS_PRODUTO: TStringField
      FieldName = 'DS_PRODUTO'
      Size = 100
    end
  end
  object IBQConsClasse: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select cl.cd_classe,cl.ds_classe,'
      '        sum(mt.qtde_estoque * mt_nf.vl_max) as vl_classe,'
      '        count(distinct(mt.cd_mat_prima)) as qtde_mt'
      '        from CLASSE_MAT_PRIMA cl'
      
        '        inner join MATERIA_PRIMA mt on mt.cd_classe = cl.cd_clas' +
        'se'
      
        '        left join MT_PRIMA_NF mt_nf on mt_nf.cd_mat_prima = mt.c' +
        'd_mat_prima and mt_nf.importancia = '#39'P'#39
      '        group by cl.cd_classe,cl.ds_classe'
      '        order by cl.ds_classe, cl.cd_classe')
    Left = 48
    Top = 160
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
    object IBQConsClasseVL_CLASSE: TIBBCDField
      FieldName = 'VL_CLASSE'
      DisplayFormat = '00.00'
      EditFormat = '00.00'
      Precision = 18
      Size = 4
    end
    object IBQConsClasseQTDE_MT: TIntegerField
      FieldName = 'QTDE_MT'
      Required = True
    end
  end
  object DsClasse: TDataSource
    DataSet = IBQConsClasse
    Left = 120
    Top = 160
  end
  object IBQConsMatPrima: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DsClasse
    SQL.Strings = (
      'select mt.cd_mat_prima, mt.ds_mat_prima, mt.qtde_estoque,'
      '       un.sigla_unidade,'
      '       pj.nm_fantazia,'
      '       mt_nf.vl_max,'
      '       sum(mt.qtde_estoque * mt_nf.vl_max) as vl_tot'
      '       from'
      '       MATERIA_PRIMA mt'
      
        '       inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_' +
        'medida'
      
        '       left join MT_PRIMA_NF mt_nf on mt_nf.cd_mat_prima = mt.cd' +
        '_mat_prima and mt_nf.importancia = '#39'P'#39
      
        '       left join PESSOA_JURIDICA pj on pj.cd_pessoa_ju = mt_nf.c' +
        'd_fornecedor'
      '       where'
      '       mt.cd_classe = :cd_classe'
      '       group by'
      '       mt.cd_mat_prima, mt.ds_mat_prima, mt.qtde_estoque,'
      '       un.sigla_unidade,'
      '       pj.nm_fantazia,'
      '       mt_nf.vl_max'
      '       order by mt.ds_mat_prima')
    Left = 200
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cd_classe'
        ParamType = ptUnknown
      end>
    object IBQConsMatPrimaCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsMatPrimaDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.DS_MAT_PRIMA'
      Size = 100
    end
    object IBQConsMatPrimaQTDE_ESTOQUE: TIBBCDField
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'MATERIA_PRIMA.QTDE_ESTOQUE'
      Precision = 9
      Size = 2
    end
    object IBQConsMatPrimaSIGLA_UNIDADE: TIBStringField
      FieldName = 'SIGLA_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.SIGLA_UNIDADE'
      Size = 2
    end
    object IBQConsMatPrimaNM_FANTAZIA: TIBStringField
      FieldName = 'NM_FANTAZIA'
      Origin = 'PESSOA_JURIDICA.NM_FANTAZIA'
      Size = 100
    end
    object IBQConsMatPrimaVL_MAX: TIBBCDField
      FieldName = 'VL_MAX'
      Origin = 'MT_PRIMA_NF.VL_MAX'
      DisplayFormat = '00.00'
      EditFormat = '00.00'
      Precision = 9
      Size = 2
    end
    object IBQConsMatPrimaVL_TOT: TIBBCDField
      FieldName = 'VL_TOT'
      DisplayFormat = '00.00'
      EditFormat = '00.00'
      Precision = 18
      Size = 4
    end
  end
  object IBQConsMtEs: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mt.cd_mat_prima,mt.ds_mat_prima,'
      '        sum(e_s.qtde) as total'
      '        from MATERIA_PRIMA mt'
      
        '        inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prim' +
        'a = mt.cd_mat_prima'
      
        '        inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e' +
        '_s.cd_movimento'
      '        where'
      '        e_s.dt_movimento between :pdata1 and :pdata2 and'
      '        mov.tipo_movimento = '#39'E'#39' and'
      '        mt.fora_linha = '#39'N'#39
      '        group by mt.cd_mat_prima,mt.ds_mat_prima')
    Left = 40
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pdata1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pdata2'
        ParamType = ptUnknown
      end>
    object IBQConsMtEsCD_MAT_PRIMA: TIntegerField
      FieldName = 'CD_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.CD_MAT_PRIMA'
      Required = True
    end
    object IBQConsMtEsDS_MAT_PRIMA: TIBStringField
      FieldName = 'DS_MAT_PRIMA'
      Origin = 'MATERIA_PRIMA.DS_MAT_PRIMA'
      Size = 100
    end
    object IBQConsMtEsTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object DsEntSai: TDataSource
    DataSet = IBQConsMtEs
    Left = 120
    Top = 224
  end
  object IBQConsEntSai: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DsEntSai
    SQL.Strings = (
      'select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,'
      '        mov.ds_movimento,un.sigla_unidade'
      '        from CONTROLE_ENTRADA_SAIDA e_s'
      
        '        inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = ' +
        'e_s.cd_movimento'
      
        '        inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_' +
        'mat_prima'
      
        '        inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un' +
        '_medida'
      '        where'
      '        e_s.cd_mat_prima = :cd_mat_prima and'
      '        e_s.dt_movimento between :pdata1 and :pdata2 and'
      '        mov.tipo_movimento = '#39'E'#39)
    Left = 192
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cd_mat_prima'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pdata1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pdata2'
        ParamType = ptUnknown
      end>
    object IBQConsEntSaiDT_MOVIMENTO: TDateField
      FieldName = 'DT_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.DT_MOVIMENTO'
    end
    object IBQConsEntSaiHR_MOVIMENTO: TTimeField
      FieldName = 'HR_MOVIMENTO'
      Origin = 'CONTROLE_ENTRADA_SAIDA.HR_MOVIMENTO'
    end
    object IBQConsEntSaiQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'CONTROLE_ENTRADA_SAIDA.QTDE'
      Precision = 9
      Size = 2
    end
    object IBQConsEntSaiDS_MOVIMENTO: TIBStringField
      FieldName = 'DS_MOVIMENTO'
      Origin = 'MOVIMENTO_ESTOQUE.DS_MOVIMENTO'
      Size = 100
    end
    object IBQConsEntSaiSIGLA_UNIDADE: TIBStringField
      FieldName = 'SIGLA_UNIDADE'
      Origin = 'UNIDADE_MEDIDA.SIGLA_UNIDADE'
      Size = 2
    end
  end
  object IBQConsGrupoProd: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GRUPO_PRODUTO')
    Left = 40
    Top = 288
    object IBQConsGrupoProdCD_GRUPO: TIntegerField
      FieldName = 'CD_GRUPO'
      Origin = 'GRUPO_PRODUTO.CD_GRUPO'
      Required = True
    end
    object IBQConsGrupoProdDS_GRUPO: TIBStringField
      FieldName = 'DS_GRUPO'
      Origin = 'GRUPO_PRODUTO.DS_GRUPO'
      Size = 100
    end
    object IBQConsGrupoProdDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'GRUPO_PRODUTO.DT_CADASTRO'
    end
    object IBQConsGrupoProdUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'GRUPO_PRODUTO.USUARIOO'
      Size = 100
    end
  end
  object DsTabPreco: TDataSource
    DataSet = IBQConsGrupoProd
    Left = 136
    Top = 288
  end
  object IBQConsProdTabela: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DsTabPreco
    SQL.Strings = (
      
        'select pd.ds_produto,pd.cubico, pd_t.* from PRODUTO pd, PRODUTOS' +
        '_TABELA pd_t'
      'where'
      'pd_t.cd_produto = pd.cd_produto and'
      'pd_t.cd_tabela = :ptabela and'
      'pd.cd_grupo_prod = :cd_grupo'
      'order by pd.ds_produto')
    Left = 232
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptabela'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cd_grupo'
        ParamType = ptUnknown
      end>
    object IBQConsProdTabelaDS_PRODUTO: TIBStringField
      FieldName = 'DS_PRODUTO'
      Origin = 'PRODUTO.DS_PRODUTO'
      Size = 100
    end
    object IBQConsProdTabelaCUBICO: TIBBCDField
      FieldName = 'CUBICO'
      Origin = 'PRODUTO.CUBICO'
      DisplayFormat = ' ,0.00;- ,0.00'
      EditFormat = ' ,0.00;- ,0.00'
      Precision = 9
      Size = 2
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
      DisplayFormat = ' ,0.00;- ,0.00'
      EditFormat = ' ,0.00;- ,0.00'
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
  end
  object IBQGrupoProdCombo: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GRUPO_PRODUTO order by cd_grupo')
    Left = 344
    Top = 288
    object IBQGrupoProdComboCD_GRUPO: TIntegerField
      FieldName = 'CD_GRUPO'
      Origin = 'GRUPO_PRODUTO.CD_GRUPO'
      Required = True
    end
    object IBQGrupoProdComboDS_GRUPO: TIBStringField
      FieldName = 'DS_GRUPO'
      Origin = 'GRUPO_PRODUTO.DS_GRUPO'
      Size = 100
    end
  end
  object IBQConsPedido: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select ped.cd_pedido as cd_pedido, ped.cd_pessoa_ju as cd_client' +
        'e, ped.dt_pedido,ped.observacoes,'
      
        '    ped.situacao, ped.modelo, ped.cd_pessoa_usu as cd_usuario_ju' +
        ',ped.dt_sistema,ped.hr_pedido,'
      '    pes.rua, pes.bairro, pes.cep, pes.complemento,'
      '    pj.rz_social,pj.nm_fantazia, pj.cgc,'
      '    cid.nm_cidade, cid.sigla_uf,'
      '    pgto.ds_cond_pgto,'
      '    tp_cob.ds_tipo_cobranca,'
      '    sum(pd_p.qtde_produto * pd_p.valor_prod) as tot_bruto,'
      '    sum(pd_p.qtde_produto * pd_p.vl_prod_venda) as tot_liquido,'
      
        '    sum(pd_p.qtde_produto * pd_p.valor_prod) - sum(pd_p.qtde_pro' +
        'duto * pd_p.vl_prod_venda) as tot_desconto'
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
        'pessoa_usu'
      
        '    inner join PRODUTOS_PEDIDO pd_p on pd_p.cd_pedido = ped.cd_p' +
        'edido'
      '    where'
      '    ped.cd_pedido = :ppedido'
      '    group by'
      
        '    ped.cd_pedido , ped.cd_pessoa_ju , ped.dt_pedido,ped.observa' +
        'coes,'
      
        '    ped.situacao, ped.modelo, ped.cd_pessoa_usu ,ped.dt_sistema,' +
        'ped.hr_pedido,'
      '    pes.rua, pes.bairro, pes.cep, pes.complemento,'
      '    pj.rz_social,pj.nm_fantazia, pj.cgc,'
      '    cid.nm_cidade, cid.sigla_uf,'
      '    pgto.ds_cond_pgto,'
      '    tp_cob.ds_tipo_cobranca')
    Left = 40
    Top = 344
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
    object IBQConsPedidoCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
      Origin = 'PEDIDO.CD_PESSOA_JU'
      Required = True
    end
    object IBQConsPedidoDT_PEDIDO: TDateField
      FieldName = 'DT_PEDIDO'
      Origin = 'PEDIDO.DT_PEDIDO'
    end
    object IBQConsPedidoSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'PEDIDO.SITUACAO'
    end
    object IBQConsPedidoMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = 'PEDIDO.MODELO'
      FixedChar = True
      Size = 1
    end
    object IBQConsPedidoCD_USUARIO_JU: TIntegerField
      FieldName = 'CD_USUARIO_JU'
      Origin = 'PEDIDO.CD_PESSOA_USU'
    end
    object IBQConsPedidoDT_SISTEMA: TDateField
      FieldName = 'DT_SISTEMA'
      Origin = 'PEDIDO.DT_SISTEMA'
    end
    object IBQConsPedidoHR_PEDIDO: TTimeField
      FieldName = 'HR_PEDIDO'
      Origin = 'PEDIDO.HR_PEDIDO'
    end
    object IBQConsPedidoRUA: TIBStringField
      FieldName = 'RUA'
      Origin = 'PESSOA.RUA'
      Required = True
      Size = 100
    end
    object IBQConsPedidoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'PESSOA.BAIRRO'
      Size = 100
    end
    object IBQConsPedidoCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'PESSOA.CEP'
      Size = 15
    end
    object IBQConsPedidoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'PESSOA.COMPLEMENTO'
      Size = 100
    end
    object IBQConsPedidoRZ_SOCIAL: TIBStringField
      FieldName = 'RZ_SOCIAL'
      Origin = 'PESSOA_JURIDICA.RZ_SOCIAL'
      Required = True
      Size = 100
    end
    object IBQConsPedidoCGC: TIBStringField
      FieldName = 'CGC'
      Origin = 'PESSOA_JURIDICA.CGC'
      Size = 15
    end
    object IBQConsPedidoNM_CIDADE: TIBStringField
      FieldName = 'NM_CIDADE'
      Origin = 'CIDADE.NM_CIDADE'
      Required = True
      Size = 100
    end
    object IBQConsPedidoSIGLA_UF: TIBStringField
      FieldName = 'SIGLA_UF'
      Origin = 'CIDADE.SIGLA_UF'
      Size = 100
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
    object IBQConsPedidoNM_FANTAZIA: TIBStringField
      FieldName = 'NM_FANTAZIA'
      Origin = 'PESSOA_JURIDICA.NM_FANTAZIA'
      Required = True
      Size = 100
    end
    object IBQConsPedidoTOT_BRUTO: TIBBCDField
      FieldName = 'TOT_BRUTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object IBQConsPedidoTOT_LIQUIDO: TIBBCDField
      FieldName = 'TOT_LIQUIDO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object IBQConsPedidoTOT_DESCONTO: TIBBCDField
      FieldName = 'TOT_DESCONTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object IBQConsPedidoOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = 'PEDIDO.OBSERVACOES'
      Size = 500
    end
  end
  object DsPedido: TDataSource
    DataSet = IBQConsPedido
    Left = 128
    Top = 344
  end
  object IBQConsProdPedido: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DsPedido
    SQL.Strings = (
      ' select pd_p.*, prod.ds_produto,'
      '        pd_p.qtde_produto * pd_p.vl_prod_venda as total'
      '        from PRODUTOS_PEDIDO pd_p'
      
        '        inner join PRODUTO prod on prod.cd_produto = pd_p.cd_pro' +
        'duto'
      '        where'
      '        pd_p.cd_pedido = :cd_pedido')
    Left = 216
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cd_pedido'
        ParamType = ptUnknown
      end>
    object IBQConsProdPedidoCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'PRODUTOS_PEDIDO.CD_PRODUTO'
      Required = True
    end
    object IBQConsProdPedidoCD_PEDIDO: TIntegerField
      FieldName = 'CD_PEDIDO'
      Origin = 'PRODUTOS_PEDIDO.CD_PEDIDO'
      Required = True
    end
    object IBQConsProdPedidoQTDE_PRODUTO: TIBBCDField
      FieldName = 'QTDE_PRODUTO'
      Origin = 'PRODUTOS_PEDIDO.QTDE_PRODUTO'
      Precision = 9
      Size = 2
    end
    object IBQConsProdPedidoPERC_DESCONTO: TIBBCDField
      FieldName = 'PERC_DESCONTO'
      Origin = 'PRODUTOS_PEDIDO.PERC_DESCONTO'
      Precision = 9
      Size = 2
    end
    object IBQConsProdPedidoVALOR_PROD: TIBBCDField
      FieldName = 'VALOR_PROD'
      Origin = 'PRODUTOS_PEDIDO.VALOR_PROD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 9
      Size = 2
    end
    object IBQConsProdPedidoVL_PROD_VENDA: TIBBCDField
      FieldName = 'VL_PROD_VENDA'
      Origin = 'PRODUTOS_PEDIDO.VL_PROD_VENDA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 9
      Size = 2
    end
    object IBQConsProdPedidoDS_PRODUTO: TIBStringField
      FieldName = 'DS_PRODUTO'
      Origin = 'PRODUTO.DS_PRODUTO'
      Size = 100
    end
    object IBQConsProdPedidoTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 18
      Size = 4
    end
  end
  object DsCoresProd: TDataSource
    DataSet = IBQConsProdPedido
    Left = 312
    Top = 344
  end
  object IBQConsCoresProd: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DsCoresProd
    SQL.Strings = (
      'select cores.cd_pedido, cores.cd_produto,'
      '       cores.cd_desempate,cores.qtde,cores.cor'
      '       from CORES_PROD_PED cores'
      '       where'
      '       cores.cd_pedido = :cd_pedido and'
      '       cores.cd_produto = :cd_produto')
    Left = 400
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cd_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cd_produto'
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
  object IBQSaidaProdData: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(sp.dt_saida),'
      '    count(sp.cd_saida) as qtde_saida'
      '    from saida_prod_acabado sp'
      '    where'
      '    sp.dt_saida between :pdata1 and :pdata2'
      '    group by sp.dt_saida')
    Left = 40
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pdata1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pdata2'
        ParamType = ptUnknown
      end>
    object IBQSaidaProdDataDT_SAIDA: TDateField
      FieldName = 'DT_SAIDA'
      Origin = 'SAIDA_PROD_ACABADO.DT_SAIDA'
    end
    object IBQSaidaProdDataQTDE_SAIDA: TIntegerField
      FieldName = 'QTDE_SAIDA'
      Required = True
    end
  end
  object DsSaidaProdData: TDataSource
    DataSet = IBQSaidaProdData
    Left = 136
    Top = 400
  end
  object IBQSaidaProduto: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DsSaidaProdData
    SQL.Strings = (
      'select sp.*, prod.ds_produto'
      '     from SAIDA_PROD_ACABADO sp'
      '     inner join PRODUTO prod on prod.cd_produto = sp.cd_produto'
      '    where'
      '    sp.dt_saida = :dt_saida')
    Left = 224
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt_saida'
        ParamType = ptUnknown
      end>
    object IBQSaidaProdutoCD_SAIDA: TIntegerField
      FieldName = 'CD_SAIDA'
      Origin = 'SAIDA_PROD_ACABADO.CD_SAIDA'
      Required = True
    end
    object IBQSaidaProdutoCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'SAIDA_PROD_ACABADO.CD_PRODUTO'
      Required = True
    end
    object IBQSaidaProdutoCD_COR: TIntegerField
      FieldName = 'CD_COR'
      Origin = 'SAIDA_PROD_ACABADO.CD_COR'
      Required = True
    end
    object IBQSaidaProdutoQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'SAIDA_PROD_ACABADO.QTDE'
      Required = True
    end
    object IBQSaidaProdutoDT_SAIDA: TDateField
      FieldName = 'DT_SAIDA'
      Origin = 'SAIDA_PROD_ACABADO.DT_SAIDA'
    end
    object IBQSaidaProdutoHR_SAIDA: TTimeField
      FieldName = 'HR_SAIDA'
      Origin = 'SAIDA_PROD_ACABADO.HR_SAIDA'
    end
    object IBQSaidaProdutoUSUARIOO: TIBStringField
      FieldName = 'USUARIOO'
      Origin = 'SAIDA_PROD_ACABADO.USUARIOO'
      Size = 100
    end
    object IBQSaidaProdutoDS_PRODUTO: TIBStringField
      FieldName = 'DS_PRODUTO'
      Origin = 'PRODUTO.DS_PRODUTO'
      Size = 100
    end
  end
  object IBQSeExiste: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    Left = 24
    Top = 448
  end
  object IBQLogInsert: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select logs.*, usuario.nm_usuario'
      '    from logs'
      '    inner join usuario on usuario.cd_usuario = logs.cd_usuario')
    Left = 24
    Top = 520
    object IBQLogInsertCD_LOG: TIntegerField
      FieldName = 'CD_LOG'
      Origin = 'LOGS.CD_LOG'
      Required = True
    end
    object IBQLogInsertTABELA: TIBStringField
      FieldName = 'TABELA'
      Origin = 'LOGS.TABELA'
      Required = True
      Size = 100
    end
    object IBQLogInsertOPERACAO: TIBStringField
      FieldName = 'OPERACAO'
      Origin = 'LOGS.OPERACAO'
      FixedChar = True
      Size = 1
    end
    object IBQLogInsertSQL_SCRIPT: TBlobField
      FieldName = 'SQL_SCRIPT'
      Origin = 'LOGS.SQL_SCRIPT'
      Size = 8
    end
    object IBQLogInsertCD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
      Origin = 'LOGS.CD_USUARIO'
    end
    object IBQLogInsertDATA: TDateField
      FieldName = 'DATA'
      Origin = 'LOGS.DATA'
    end
    object IBQLogInsertHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'LOGS.HORA'
    end
    object IBQLogInsertNM_USUARIO: TIBStringField
      FieldName = 'NM_USUARIO'
      Origin = 'USUARIO.NM_USUARIO'
      Required = True
      Size = 100
    end
  end
  object IBQLogUpdate: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select logs.*, usuario.nm_usuario'
      '    from logs'
      '    inner join usuario on usuario.cd_usuario = logs.cd_usuario')
    Left = 96
    Top = 520
    object IBQLogUpdateCD_LOG: TIntegerField
      FieldName = 'CD_LOG'
      Origin = 'LOGS.CD_LOG'
      Required = True
    end
    object IBQLogUpdateTABELA: TIBStringField
      FieldName = 'TABELA'
      Origin = 'LOGS.TABELA'
      Required = True
      Size = 100
    end
    object IBQLogUpdateOPERACAO: TIBStringField
      FieldName = 'OPERACAO'
      Origin = 'LOGS.OPERACAO'
      FixedChar = True
      Size = 1
    end
    object IBQLogUpdateSQL_SCRIPT: TBlobField
      FieldName = 'SQL_SCRIPT'
      Origin = 'LOGS.SQL_SCRIPT'
      Size = 8
    end
    object IBQLogUpdateCD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
      Origin = 'LOGS.CD_USUARIO'
    end
    object IBQLogUpdateDATA: TDateField
      FieldName = 'DATA'
      Origin = 'LOGS.DATA'
    end
    object IBQLogUpdateHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'LOGS.HORA'
    end
    object IBQLogUpdateNM_USUARIO: TIBStringField
      FieldName = 'NM_USUARIO'
      Origin = 'USUARIO.NM_USUARIO'
      Required = True
      Size = 100
    end
  end
  object IBQLogDelete: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select logs.*, usuario.nm_usuario'
      '    from logs'
      '    inner join usuario on usuario.cd_usuario = logs.cd_usuario')
    Left = 168
    Top = 520
    object IBQLogDeleteCD_LOG: TIntegerField
      FieldName = 'CD_LOG'
      Origin = 'LOGS.CD_LOG'
      Required = True
    end
    object IBQLogDeleteTABELA: TIBStringField
      FieldName = 'TABELA'
      Origin = 'LOGS.TABELA'
      Required = True
      Size = 100
    end
    object IBQLogDeleteOPERACAO: TIBStringField
      FieldName = 'OPERACAO'
      Origin = 'LOGS.OPERACAO'
      FixedChar = True
      Size = 1
    end
    object IBQLogDeleteSQL_SCRIPT: TBlobField
      FieldName = 'SQL_SCRIPT'
      Origin = 'LOGS.SQL_SCRIPT'
      Size = 8
    end
    object IBQLogDeleteCD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
      Origin = 'LOGS.CD_USUARIO'
    end
    object IBQLogDeleteDATA: TDateField
      FieldName = 'DATA'
      Origin = 'LOGS.DATA'
    end
    object IBQLogDeleteHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'LOGS.HORA'
    end
    object IBQLogDeleteNM_USUARIO: TIBStringField
      FieldName = 'NM_USUARIO'
      Origin = 'USUARIO.NM_USUARIO'
      Required = True
      Size = 100
    end
  end
  object DsRelacaoCompra: TDataSource
    DataSet = IBQRelCompra
    Left = 136
    Top = 16
  end
  object IBQRelCompraConsumo: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DsRelacaoCompra
    SQL.Strings = (
      'select sum(es.qtde) as consumo'
      '    from CONTROLE_ENTRADA_SAIDA es'
      
        '    inner join MATERIA_PRIMA mt on mt.cd_mat_prima = es.cd_mat_p' +
        'rima'
      
        '    inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = es.cd' +
        '_movimento'
      '    where'
      '    mov.tipo_movimento = '#39'S'#39' and'
      '    mt.cd_mat_prima = :cd_mat_prima and'
      '    es.dt_movimento between :pdata1 and :pdata2')
    Left = 248
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cd_mat_prima'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pdata1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pdata2'
        ParamType = ptUnknown
      end>
    object IBQRelCompraConsumoCONSUMO: TIBBCDField
      FieldName = 'CONSUMO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object IBQRelCompraQtdePedido: TIBQuery
    Database = DataModule1.IBDBanco1
    Transaction = DataModule1.IBTTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DsRelacaoCompra
    SQL.Strings = (
      'select sum(mt_comp.qtde) as qtde_pedido,'
      '       min(comp.dt_compra + comp.prazo_entrega)as prev_entrega'
      '       from'
      '       MT_PRIMA_COMPRA mt_comp'
      
        '       inner join MATERIA_PRIMA mt on mt.cd_mat_prima = mt_comp.' +
        'cd_mat_prima'
      
        '       inner join COMPRA comp on comp.cd_pedido = mt_comp.cd_ped' +
        'ido'
      '       where'
      '       mt.cd_mat_prima = :cd_mat_prima and'
      '       mt_comp.chegou <> '#39'S'#39)
    Left = 376
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cd_mat_prima'
        ParamType = ptUnknown
      end>
    object IBQRelCompraQtdePedidoQTDE_PEDIDO: TIBBCDField
      FieldName = 'QTDE_PEDIDO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IBQRelCompraQtdePedidoPREV_ENTREGA: TDateField
      FieldName = 'PREV_ENTREGA'
    end
  end
end
