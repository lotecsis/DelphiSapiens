object Dm: TDm
  OldCreateOrder = False
  Height = 741
  Width = 948
  object ADOBanco: TADOConnection
    ConnectionString = 
      'Provider=MSDAORA.1;Password=saplider;User ID=saplider;Data Sourc' +
      'e=liderlar;Persist Security Info=True'
    LoginPrompt = False
    Provider = 'MSDAORA.1'
    Left = 24
    Top = 16
  end
  object CadFormulario: TADOQuery
    Connection = ADOBanco
    BeforePost = CadFormularioBeforePost
    Parameters = <
      item
        Name = 'pcodfor'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tformul where usu_codfor = :pcodfor')
    Left = 32
    Top = 88
    object CadFormularioUSU_CODFOR: TIntegerField
      FieldName = 'USU_CODFOR'
    end
    object CadFormularioUSU_NOMFOR: TStringField
      FieldName = 'USU_NOMFOR'
      Size = 50
    end
    object CadFormularioUSU_DESFOR: TStringField
      FieldName = 'USU_DESFOR'
      Size = 100
    end
  end
  object ConsFormulario: TADOQuery
    Connection = ADOBanco
    Parameters = <
      item
        Name = 'codfor'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tformul where usu_codfor = :codfor')
    Left = 112
    Top = 88
    object ConsFormularioUSU_CODFOR: TIntegerField
      FieldName = 'USU_CODFOR'
    end
    object ConsFormularioUSU_NOMFOR: TStringField
      FieldName = 'USU_NOMFOR'
      Size = 50
    end
    object ConsFormularioUSU_DESFOR: TStringField
      FieldName = 'USU_DESFOR'
      Size = 100
    end
  end
  object ConsUltimoFormulario: TADOQuery
    Connection = ADOBanco
    Parameters = <>
    SQL.Strings = (
      'select max(usu_codfor)+1 as ultimo from usu_tformul')
    Left = 208
    Top = 88
    object ConsUltimoFormularioULTIMO: TBCDField
      FieldName = 'ULTIMO'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object CadUsu_TNivAce: TADOQuery
    Connection = ADOBanco
    BeforePost = CadUsu_TNivAceBeforePost
    Parameters = <
      item
        Name = 'codniv'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tnivace where usu_codniv = :codniv')
    Left = 36
    Top = 152
    object CadUsu_TNivAceUSU_CODNIV: TIntegerField
      FieldName = 'USU_CODNIV'
    end
    object CadUsu_TNivAceUSU_DESNIV: TStringField
      FieldName = 'USU_DESNIV'
      Size = 100
    end
  end
  object ConsUltimoNivAce: TADOQuery
    Connection = ADOBanco
    Parameters = <>
    SQL.Strings = (
      'select max(usu_codniv)+1 as ultimo from usu_tnivace')
    Left = 224
    Top = 152
    object ConsUltimoNivAceULTIMO: TBCDField
      FieldName = 'ULTIMO'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object ConsUsu_TNivAce: TADOQuery
    Connection = ADOBanco
    Parameters = <
      item
        Name = 'codniv'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tnivace where usu_codniv = :codniv')
    Left = 130
    Top = 152
    object ConsUsu_TNivAceUSU_CODNIV: TIntegerField
      FieldName = 'USU_CODNIV'
    end
    object ConsUsu_TNivAceUSU_DESNIV: TStringField
      FieldName = 'USU_DESNIV'
      Size = 100
    end
  end
  object CadUsu_ForNiv: TADOQuery
    Connection = ADOBanco
    BeforePost = CadUsu_ForNivBeforePost
    Parameters = <
      item
        Name = 'codcom'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tforniv where usu_codcom = :codcom')
    Left = 36
    Top = 213
    object CadUsu_ForNivUSU_CODCOM: TIntegerField
      FieldName = 'USU_CODCOM'
    end
    object CadUsu_ForNivUSU_CODNIV: TIntegerField
      FieldName = 'USU_CODNIV'
    end
    object CadUsu_ForNivUSU_CODFOR: TIntegerField
      FieldName = 'USU_CODFOR'
    end
    object CadUsu_ForNivUSU_FORLIB: TStringField
      FieldName = 'USU_FORLIB'
      Size = 1
    end
  end
  object ConsUltimoForNiv: TADOQuery
    Connection = ADOBanco
    Parameters = <>
    SQL.Strings = (
      'select max(usu_codcom)+1 as ultimo from usu_tforniv')
    Left = 224
    Top = 208
    object ConsUltimoForNivULTIMO: TBCDField
      FieldName = 'ULTIMO'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object ApagaUsu_TForNiv: TADOQuery
    Connection = ADOBanco
    Parameters = <
      item
        Name = 'codfor'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codniv'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tforniv where usu_codfor = :codfor and'
      
        '                                                 usu_codniv = :c' +
        'odniv')
    Left = 328
    Top = 208
    object ApagaUsu_TForNivUSU_CODCOM: TIntegerField
      FieldName = 'USU_CODCOM'
    end
    object ApagaUsu_TForNivUSU_CODNIV: TIntegerField
      FieldName = 'USU_CODNIV'
    end
    object ApagaUsu_TForNivUSU_CODFOR: TIntegerField
      FieldName = 'USU_CODFOR'
    end
    object ApagaUsu_TForNivUSU_FORLIB: TStringField
      FieldName = 'USU_FORLIB'
      Size = 1
    end
  end
  object CadUsu_TR999Usu: TADOQuery
    Connection = ADOBanco
    Parameters = <
      item
        Name = 'codusu'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tr999usu where usu_codusu = :codusu')
    Left = 40
    Top = 272
    object CadUsu_TR999UsuUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object CadUsu_TR999UsuUSU_NOMUSU: TStringField
      FieldName = 'USU_NOMUSU'
      Size = 50
    end
    object CadUsu_TR999UsuUSU_SENUSU: TStringField
      FieldName = 'USU_SENUSU'
      Size = 30
    end
    object CadUsu_TR999UsuUSU_SITUSU: TStringField
      FieldName = 'USU_SITUSU'
      Size = 1
    end
    object CadUsu_TR999UsuUSU_LOGUSU: TStringField
      FieldName = 'USU_LOGUSU'
      Size = 30
    end
    object CadUsu_TR999UsuUSU_CODNIV: TIntegerField
      FieldName = 'USU_CODNIV'
    end
  end
  object ConsR999Usu: TADOQuery
    Connection = ADOBanco
    Parameters = <>
    SQL.Strings = (
      'select * from r999usu order by codusu asc')
    Left = 200
    Top = 271
    object ConsR999UsuCODUSU: TBCDField
      FieldName = 'CODUSU'
      Precision = 10
      Size = 0
    end
    object ConsR999UsuNOMUSU: TStringField
      FieldName = 'NOMUSU'
      Size = 255
    end
    object ConsR999UsuTIPCOL: TStringField
      FieldName = 'TIPCOL'
      Size = 10
    end
    object ConsR999UsuNUMEMP: TStringField
      FieldName = 'NUMEMP'
      Size = 255
    end
    object ConsR999UsuCODFIL: TStringField
      FieldName = 'CODFIL'
      Size = 50
    end
    object ConsR999UsuCODLOC: TStringField
      FieldName = 'CODLOC'
      Size = 200
    end
    object ConsR999UsuNUMCAD: TStringField
      FieldName = 'NUMCAD'
      Size = 50
    end
  end
  object ConsUsu_TR999Usu: TADOQuery
    Connection = ADOBanco
    Parameters = <
      item
        Name = 'codusu'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tr999usu where usu_codusu = :codusu')
    Left = 296
    Top = 272
    object ConsUsu_TR999UsuUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object ConsUsu_TR999UsuUSU_NOMUSU: TStringField
      FieldName = 'USU_NOMUSU'
      Size = 50
    end
    object ConsUsu_TR999UsuUSU_SENUSU: TStringField
      FieldName = 'USU_SENUSU'
      Size = 30
    end
    object ConsUsu_TR999UsuUSU_SITUSU: TStringField
      FieldName = 'USU_SITUSU'
      Size = 1
    end
    object ConsUsu_TR999UsuUSU_LOGUSU: TStringField
      FieldName = 'USU_LOGUSU'
      Size = 30
    end
    object ConsUsu_TR999UsuUSU_CODNIV: TIntegerField
      FieldName = 'USU_CODNIV'
    end
  end
  object Provider_R999Usu: TDataSetProvider
    DataSet = ConsR999Usu
    Left = 200
    Top = 320
  end
  object Client_R999Usu: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider_R999Usu'
    Left = 200
    Top = 368
    object Client_R999UsuCODUSU: TBCDField
      FieldName = 'CODUSU'
      Precision = 10
      Size = 0
    end
    object Client_R999UsuNOMUSU: TStringField
      FieldName = 'NOMUSU'
      Size = 255
    end
    object Client_R999UsuTIPCOL: TStringField
      FieldName = 'TIPCOL'
      Size = 10
    end
    object Client_R999UsuNUMEMP: TStringField
      FieldName = 'NUMEMP'
      Size = 255
    end
    object Client_R999UsuCODFIL: TStringField
      FieldName = 'CODFIL'
      Size = 50
    end
    object Client_R999UsuCODLOC: TStringField
      FieldName = 'CODLOC'
      Size = 200
    end
    object Client_R999UsuNUMCAD: TStringField
      FieldName = 'NUMCAD'
      Size = 50
    end
  end
  object ConsUsu_TNivAce2: TADOQuery
    Connection = ADOBanco
    AfterScroll = ConsUsu_TNivAce2AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from usu_tnivace')
    Left = 40
    Top = 424
    object ConsUsu_TNivAce2USU_CODNIV: TIntegerField
      FieldName = 'USU_CODNIV'
    end
    object ConsUsu_TNivAce2USU_DESNIV: TStringField
      FieldName = 'USU_DESNIV'
      Size = 100
    end
  end
  object ConsUsu_TForNiv: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codniv'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tforniv.*, usu_tformul.*'
      '                                        from usu_tforniv'
      
        'inner join usu_tformul on usu_tformul.usu_codfor = usu_tforniv.u' +
        'su_codfor'
      
        '                                        where usu_tforniv.usu_co' +
        'dniv = :codniv and'
      
        '                                                   usu_tforniv.u' +
        'su_forlib = '#39'S'#39' '
      
        '                                                   order by  usu' +
        '_tformul.usu_desfor asc')
    Left = 144
    Top = 424
    object ConsUsu_TForNivUSU_CODCOM: TIntegerField
      FieldName = 'USU_CODCOM'
    end
    object ConsUsu_TForNivUSU_CODNIV: TIntegerField
      FieldName = 'USU_CODNIV'
    end
    object ConsUsu_TForNivUSU_CODFOR: TIntegerField
      FieldName = 'USU_CODFOR'
    end
    object ConsUsu_TForNivUSU_FORLIB: TStringField
      FieldName = 'USU_FORLIB'
      Size = 1
    end
    object ConsUsu_TForNivUSU_CODFOR_1: TIntegerField
      FieldName = 'USU_CODFOR_1'
    end
    object ConsUsu_TForNivUSU_NOMFOR: TStringField
      FieldName = 'USU_NOMFOR'
      Size = 50
    end
    object ConsUsu_TForNivUSU_DESFOR: TStringField
      FieldName = 'USU_DESFOR'
      Size = 100
    end
  end
  object ConsUsu_TForNiv2: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codniv'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tforniv.*, usu_tformul.*'
      '                                        from usu_tforniv'
      
        'inner join usu_tformul on usu_tformul.usu_codfor = usu_tforniv.u' +
        'su_codfor'
      
        '                                        where usu_tforniv.usu_fo' +
        'rlib = '#39'N'#39' and'
      
        '                                                   usu_tforniv.u' +
        'su_codniv = :codniv'
      '                                                   ')
    Left = 248
    Top = 424
    object ConsUsu_TForNiv2USU_CODCOM: TIntegerField
      FieldName = 'USU_CODCOM'
    end
    object ConsUsu_TForNiv2USU_CODNIV: TIntegerField
      FieldName = 'USU_CODNIV'
    end
    object ConsUsu_TForNiv2USU_CODFOR: TIntegerField
      FieldName = 'USU_CODFOR'
    end
    object ConsUsu_TForNiv2USU_FORLIB: TStringField
      FieldName = 'USU_FORLIB'
      Size = 1
    end
    object ConsUsu_TForNiv2USU_CODFOR_1: TIntegerField
      FieldName = 'USU_CODFOR_1'
    end
    object ConsUsu_TForNiv2USU_NOMFOR: TStringField
      FieldName = 'USU_NOMFOR'
      Size = 50
    end
    object ConsUsu_TForNiv2USU_DESFOR: TStringField
      FieldName = 'USU_DESFOR'
      Size = 100
    end
  end
  object ProviderUsu_TForNiv2: TDataSetProvider
    DataSet = ConsUsu_TForNiv2
    Left = 355
    Top = 424
  end
  object ClientUsu_TForNiv2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderUsu_TForNiv2'
    Left = 464
    Top = 424
    object ClientUsu_TForNiv2USU_CODCOM: TIntegerField
      FieldName = 'USU_CODCOM'
    end
    object ClientUsu_TForNiv2USU_CODNIV: TIntegerField
      FieldName = 'USU_CODNIV'
    end
    object ClientUsu_TForNiv2USU_CODFOR: TIntegerField
      FieldName = 'USU_CODFOR'
    end
    object ClientUsu_TForNiv2USU_FORLIB: TStringField
      FieldName = 'USU_FORLIB'
      Size = 1
    end
    object ClientUsu_TForNiv2USU_CODFOR_1: TIntegerField
      FieldName = 'USU_CODFOR_1'
    end
    object ClientUsu_TForNiv2USU_NOMFOR: TStringField
      FieldName = 'USU_NOMFOR'
      Size = 50
    end
    object ClientUsu_TForNiv2USU_DESFOR: TStringField
      FieldName = 'USU_DESFOR'
      Size = 100
    end
  end
  object ConsUsu_TR999usuNiv: TADOQuery
    Connection = ADOBanco
    Parameters = <
      item
        Name = 'codniv'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tr999usu where usu_codniv = :codniv'
      'order by usu_nomusu'
      '')
    Left = 376
    Top = 368
    object ConsUsu_TR999usuNivUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object ConsUsu_TR999usuNivUSU_NOMUSU: TStringField
      FieldName = 'USU_NOMUSU'
      Size = 50
    end
    object ConsUsu_TR999usuNivUSU_SENUSU: TStringField
      FieldName = 'USU_SENUSU'
      Size = 30
    end
    object ConsUsu_TR999usuNivUSU_SITUSU: TStringField
      FieldName = 'USU_SITUSU'
      Size = 1
    end
    object ConsUsu_TR999usuNivUSU_LOGUSU: TStringField
      FieldName = 'USU_LOGUSU'
      Size = 30
    end
    object ConsUsu_TR999usuNivUSU_CODNIV: TIntegerField
      FieldName = 'USU_CODNIV'
    end
  end
  object ProviderUsu_TR999Usu: TDataSetProvider
    DataSet = ConsUsu_TR999Usu
    Left = 424
    Top = 272
  end
  object ClientConsUsu_TR999Usu: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderUsu_TR999Usu'
    Left = 568
    Top = 272
    object ClientConsUsu_TR999UsuUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object ClientConsUsu_TR999UsuUSU_NOMUSU: TStringField
      FieldName = 'USU_NOMUSU'
      Size = 50
    end
    object ClientConsUsu_TR999UsuUSU_SENUSU: TStringField
      FieldName = 'USU_SENUSU'
      Size = 30
    end
    object ClientConsUsu_TR999UsuUSU_SITUSU: TStringField
      FieldName = 'USU_SITUSU'
      Size = 1
    end
    object ClientConsUsu_TR999UsuUSU_LOGUSU: TStringField
      FieldName = 'USU_LOGUSU'
      Size = 30
    end
    object ClientConsUsu_TR999UsuUSU_CODNIV: TIntegerField
      FieldName = 'USU_CODNIV'
    end
  end
  object ConsUsuarioLogin: TADOQuery
    Connection = ADOBanco
    Parameters = <
      item
        Name = 'logusu'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'senusu'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tr999usu.* from usu_tr999usu'
      '                      where'
      '                      usu_logusu = :logusu and'
      '                      usu_senusu = :senusu')
    Left = 697
    Top = 272
    object ConsUsuarioLoginUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object ConsUsuarioLoginUSU_NOMUSU: TStringField
      FieldName = 'USU_NOMUSU'
      Size = 50
    end
    object ConsUsuarioLoginUSU_SENUSU: TStringField
      FieldName = 'USU_SENUSU'
      Size = 30
    end
    object ConsUsuarioLoginUSU_SITUSU: TStringField
      FieldName = 'USU_SITUSU'
      Size = 1
    end
    object ConsUsuarioLoginUSU_LOGUSU: TStringField
      FieldName = 'USU_LOGUSU'
      Size = 30
    end
    object ConsUsuarioLoginUSU_CODNIV: TIntegerField
      FieldName = 'USU_CODNIV'
    end
  end
  object ConsValidaMenu: TADOQuery
    Connection = ADOBanco
    Parameters = <
      item
        Name = 'codusu'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'nomfor'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tforniv.usu_forlib from usu_tforniv'
      
        'inner join usu_tr999usu on usu_tr999usu.usu_codniv = usu_tforniv' +
        '.usu_codniv'
      
        'inner join usu_tformul on usu_tformul.usu_codfor = usu_tforniv.u' +
        'su_codfor'
      '                                where'
      
        '                                usu_tr999usu.usu_codusu = :codus' +
        'u and'
      '                                usu_tformul.usu_nomfor = :nomfor')
    Left = 581
    Top = 424
    object ConsValidaMenuUSU_FORLIB: TStringField
      FieldName = 'USU_FORLIB'
      Size = 1
    end
  end
  object ClientCargasTempMed3: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    AfterScroll = ClientCargasTempMed3AfterScroll
    Left = 416
    Top = 88
    object ClientCargasTempMed3NUMANE: TIntegerField
      FieldName = 'NUMANE'
    end
    object ClientCargasTempMed3QTDPED: TIntegerField
      FieldName = 'QTDPED'
    end
    object ClientCargasTempMed3TEMPMED: TIntegerField
      FieldName = 'TEMPMED'
    end
    object ClientCargasTempMed3vnTotalPedidos: TAggregateField
      FieldName = 'vnTotalPedidos'
      Active = True
      Expression = 'SUM(TEMPMED / QTDPED)'
    end
  end
  object PedidosTempMedio: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DISTINCT(E135PES.NUMPED), E120PED.DATEMI AS DATA_EMISSAO,' +
        'E140NFV.DATEMI AS DATA_FAT,'
      '       E120PED.CODCLI,'
      '       E085CLI.NOMCLI,E085CLI.CIDCLI,E085CLI.SIGUFS,'
      '       E090REP.APEREP'
      'FROM E135PES'
      'INNER JOIN E120PED ON E120PED.CODEMP = E135PES.CODEMP AND'
      '                      E120PED.CODFIL = E135PES.CODFIL AND'
      '                      E120PED.NUMPED = E135PES.NUMPED'
      'INNER JOIN E140NFV ON E140NFV.CODEMP = E135PES.CODEMP AND'
      '                      E140NFV.CODFIL = E135PES.CODFIL AND'
      '                      E140NFV.CODSNF = E135PES.SNFNFV AND'
      '                      E140NFV.NUMNFV = E135PES.NUMNFV'
      'INNER JOIN E085CLI ON E085CLI.CODCLI = E120PED.CODCLI'
      'INNER JOIN E090REP ON E090REP.CODREP = E120PED.CODREP'
      'WHERE'
      'E135PES.NUMANE = :NUMANE AND'
      'E120PED.CODFIL = 1 AND'
      'E120PED.CODEMP = 1')
    Left = 536
    Top = 88
  end
  object ConsSql: TADOQuery
    Connection = ADOBanco
    Parameters = <>
    Left = 120
    Top = 24
  end
  object ClientPedidosTempMedio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderPedidosTempMedio'
    OnCalcFields = ClientPedidosTempMedioCalcFields
    Left = 536
    Top = 185
    object ClientPedidosTempMedioNUMPED: TIntegerField
      FieldName = 'NUMPED'
      ReadOnly = True
    end
    object ClientPedidosTempMedioDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object ClientPedidosTempMedioDATA_FAT: TDateTimeField
      FieldName = 'DATA_FAT'
    end
    object ClientPedidosTempMedioCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ClientPedidosTempMedioNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ClientPedidosTempMedioCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ClientPedidosTempMedioSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ClientPedidosTempMedioAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ClientPedidosTempMediovnQtdDias: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vnQtdDias'
    end
  end
  object ProviderPedidosTempMedio: TDataSetProvider
    DataSet = PedidosTempMedio
    Left = 536
    Top = 136
  end
  object PedidosQtdDias: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DISTINCT(E135PES.NUMPED), E120PED.DATEMI AS DATA_EMISSAO,' +
        'E140NFV.DATEMI AS DATA_FAT'
      'FROM E135PES'
      'INNER JOIN E120PED ON E120PED.CODEMP = E135PES.CODEMP AND'
      '                      E120PED.CODFIL = E135PES.CODFIL AND'
      '                      E120PED.NUMPED = E135PES.NUMPED'
      'INNER JOIN E140NFV ON E140NFV.CODEMP = E135PES.CODEMP AND'
      '                      E140NFV.CODFIL = E135PES.CODFIL AND'
      '                      E140NFV.CODSNF = E135PES.SNFNFV AND'
      '                      E140NFV.NUMNFV = E135PES.NUMNFV'
      'WHERE'
      'E135PES.NUMANE = :NUMANE AND'
      'E135PES.CODEMP = 1 AND'
      'E120PED.CODFIL = 1')
    Left = 632
    Top = 88
    object PedidosQtdDiasNUMPED: TIntegerField
      FieldName = 'NUMPED'
      ReadOnly = True
    end
    object PedidosQtdDiasDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object PedidosQtdDiasDATA_FAT: TDateTimeField
      FieldName = 'DATA_FAT'
    end
  end
  object ClientCargasTempMed: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    AfterScroll = ClientCargasTempMedAfterScroll
    Left = 416
    Top = 40
    Data = {
      580000009619E0BD0100000018000000040000000000030000005800064E554D
      414E4504000100000000000651544450454404000100000000000754454D504D
      45440400010000000000075154444449415304000100000000000000}
    object ClientCargasTempMedNUMANE: TIntegerField
      FieldName = 'NUMANE'
    end
    object ClientCargasTempMedQTDPED: TIntegerField
      FieldName = 'QTDPED'
    end
    object ClientCargasTempMedTEMPMED: TIntegerField
      FieldName = 'TEMPMED'
    end
    object ClientCargasTempMedQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
    object ClientCargasTempMedvnTotalDias: TAggregateField
      FieldName = 'vnTotalDias'
      Active = True
      Expression = 'SUM(QTDDIAS)'
    end
    object ClientCargasTempMedvnTotalPedidos: TAggregateField
      FieldName = 'vnTotalPedidos'
      Active = True
      Expression = 'SUM(QTDPED)'
    end
  end
  object CadUSU_TDescRep: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'SEQDES'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_TDESCREP WHERE USU_SEQDES = :SEQDES')
    Left = 688
    Top = 464
    object CadUSU_TDescRepUSU_SEQDES: TIntegerField
      FieldName = 'USU_SEQDES'
    end
    object CadUSU_TDescRepUSU_ESTOF: TBCDField
      FieldName = 'USU_ESTOF'
      Precision = 8
      Size = 2
    end
    object CadUSU_TDescRepUSU_COLCH: TBCDField
      FieldName = 'USU_COLCH'
      Precision = 8
      Size = 2
    end
    object CadUSU_TDescRepUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object CadUSU_TDescRepUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object CadUSU_TDescRepUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUSU_TDescRepUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUSU_TDescRepUSU_DATCAD: TDateTimeField
      FieldName = 'USU_DATCAD'
    end
    object CadUSU_TDescRepUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object CadUSU_TDescRepUSU_DATVAL: TDateTimeField
      FieldName = 'USU_DATVAL'
    end
    object CadUSU_TDescRepUSU_CODCPG: TStringField
      FieldName = 'USU_CODCPG'
      Size = 6
    end
  end
  object ConsUSU_TDescRep: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODREP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TDESCREP.*,'
      '       E085CLI.NOMCLI,'
      '       E075PRO.DESPRO,'
      '       E028CPG.DESCPG'
      '   FROM USU_TDESCREP'
      
        '    LEFT JOIN E085CLI ON E085CLI.CODCLI = USU_TDESCREP.USU_CODCL' +
        'I'
      
        '    LEFT JOIN E075PRO ON E075PRO.CODEMP = USU_TDESCREP.USU_CODEM' +
        'P AND'
      
        '                         E075PRO.CODPRO = USU_TDESCREP.USU_CODPR' +
        'O'
      
        '    LEFT JOIN E028CPG ON E028CPG.CODEMP = USU_TDESCREP.USU_CODEM' +
        'P AND'
      
        '                         E028CPG.CODCPG = USU_TDESCREP.USU_CODCP' +
        'G'
      '   WHERE'
      '     USU_TDESCREP.USU_CODREP = :CODREP'
      '   ORDER BY USU_TDESCREP.USU_SEQDES')
    Left = 688
    Top = 512
    object ConsUSU_TDescRepUSU_SEQDES: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_SEQDES'
    end
    object ConsUSU_TDescRepUSU_ESTOF: TBCDField
      Alignment = taCenter
      FieldName = 'USU_ESTOF'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 8
      Size = 2
    end
    object ConsUSU_TDescRepUSU_COLCH: TBCDField
      Alignment = taCenter
      FieldName = 'USU_COLCH'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 8
      Size = 2
    end
    object ConsUSU_TDescRepUSU_CODREP: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODREP'
    end
    object ConsUSU_TDescRepUSU_CODCLI: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODCLI'
    end
    object ConsUSU_TDescRepUSU_CODPRO: TStringField
      Alignment = taCenter
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUSU_TDescRepUSU_CODEMP: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODEMP'
    end
    object ConsUSU_TDescRepUSU_DATCAD: TDateTimeField
      Alignment = taCenter
      FieldName = 'USU_DATCAD'
    end
    object ConsUSU_TDescRepUSU_CODUSU: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODUSU'
    end
    object ConsUSU_TDescRepUSU_DATVAL: TDateTimeField
      Alignment = taCenter
      FieldName = 'USU_DATVAL'
    end
    object ConsUSU_TDescRepNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsUSU_TDescRepDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsUSU_TDescRepUSU_CODCPG: TStringField
      Alignment = taCenter
      FieldName = 'USU_CODCPG'
      Size = 6
    end
    object ConsUSU_TDescRepDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
  end
  object ValidaDescRep: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PRECAR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e120ipd.codemp,e120ipd.codfil,e120ipd.numped,e120ipd.codp' +
        'ro,e120ipd.codder,e120ipd.codfam,e120ipd.tnspro,'
      
        '       e120ipd.qtdped, e120ipd.qtdcan,e120ipd.qtdabe,e120ipd.qtd' +
        'fat,e120ipd.codtpr,e120ipd.preuni,e120ipd.vlrbru,e120ipd.vlrliq,' +
        'e120ipd.usu_gernpd,'
      
        '       e120ped.codrep,e120ped.usu_precar,e120ped.codcli,e120ped.' +
        'codcpg,'
      '       e085cli.nomcli,e085cli.cidcli,e085cli.sigufs,'
      '       e090rep.nomrep,e090rep.aperep,'
      '       e075pro.codagp,'
      '       e028cpg.descpg,'
      '       (SELECT e081itp.prebas from e081itp'
      '          where e081itp.codtpr = e120ipd.codtpr and'
      '                e081itp.codpro = e120ipd.codpro and'
      '                e081itp.codder = e120ipd.codder) as pretab'
      '   from e120ipd'
      '   inner join e120ped on e120ped.codemp = e120ipd.codemp and'
      '                         e120ped.codfil = e120ipd.codfil and'
      '                         e120ped.numped = e120ipd.numped'
      '   inner join e075pro on e075pro.codemp = e120ipd.codemp and'
      '                         e075pro.codpro = e120ipd.codpro'
      '   inner join e085cli on e085cli.codcli = e120ped.codcli'
      '   inner join e090rep on e090rep.codrep = e120ped.codrep'
      '   inner join e028cpg on e028cpg.codemp = e120ped.codemp and'
      '                         e028cpg.codcpg = e120ped.codcpg'
      '   where e120ped.usu_precar = :PRECAR and'
      '              (e120ipd.qtdped - e120ipd.qtdcan) > 0'
      '   order by e120ipd.numped,e120ipd.codfil,e120ipd.seqipd')
    Left = 688
    Top = 560
    object ValidaDescRepCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ValidaDescRepCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ValidaDescRepNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ValidaDescRepCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ValidaDescRepCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ValidaDescRepCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ValidaDescRepTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ValidaDescRepQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ValidaDescRepQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ValidaDescRepQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ValidaDescRepQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ValidaDescRepCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ValidaDescRepPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ValidaDescRepVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ValidaDescRepVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ValidaDescRepCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ValidaDescRepUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ValidaDescRepNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ValidaDescRepCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ValidaDescRepSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ValidaDescRepNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ValidaDescRepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ValidaDescRepPRETAB: TFMTBCDField
      FieldName = 'PRETAB'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ValidaDescRepCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ValidaDescRepCODAGP: TStringField
      FieldName = 'CODAGP'
      Size = 5
    end
    object ValidaDescRepCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ValidaDescRepDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ValidaDescRepUSU_GERNPD: TStringField
      FieldName = 'USU_GERNPD'
      Size = 1
    end
  end
  object CadUsu_TDescRepH: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'seqval'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqmov'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tdescreph.*'
      '  from usu_tdescreph'
      '  where'
      '    usu_tdescreph.usu_seqval = :seqval and'
      '    usu_tdescreph.usu_seqmov = :seqmov and'
      '    usu_tdescreph.usu_precar = :precar')
    Left = 816
    Top = 464
    object CadUsu_TDescRepHUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUsu_TDescRepHUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadUsu_TDescRepHUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object CadUsu_TDescRepHUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TDescRepHUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu_TDescRepHUSU_QTDPED: TFMTBCDField
      FieldName = 'USU_QTDPED'
      Precision = 14
      Size = 5
    end
    object CadUsu_TDescRepHUSU_QTDFAT: TFMTBCDField
      FieldName = 'USU_QTDFAT'
      Precision = 14
      Size = 5
    end
    object CadUsu_TDescRepHUSU_QTDCAN: TFMTBCDField
      FieldName = 'USU_QTDCAN'
      Precision = 14
      Size = 5
    end
    object CadUsu_TDescRepHUSU_QTDABE: TFMTBCDField
      FieldName = 'USU_QTDABE'
      Precision = 14
      Size = 5
    end
    object CadUsu_TDescRepHUSU_CODTPR: TStringField
      FieldName = 'USU_CODTPR'
      Size = 4
    end
    object CadUsu_TDescRepHUSU_PREUNI: TFMTBCDField
      FieldName = 'USU_PREUNI'
      Precision = 14
      Size = 5
    end
    object CadUsu_TDescRepHUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object CadUsu_TDescRepHUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object CadUsu_TDescRepHUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object CadUsu_TDescRepHUSU_PRETAB: TFMTBCDField
      FieldName = 'USU_PRETAB'
      Precision = 14
      Size = 5
    end
    object CadUsu_TDescRepHUSU_SEQVAL: TIntegerField
      FieldName = 'USU_SEQVAL'
    end
    object CadUsu_TDescRepHUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
    object CadUsu_TDescRepHUSU_DESLIB: TBCDField
      FieldName = 'USU_DESLIB'
      Precision = 9
      Size = 3
    end
    object CadUsu_TDescRepHUSU_DESAPL: TBCDField
      FieldName = 'USU_DESAPL'
      Precision = 9
      Size = 3
    end
    object CadUsu_TDescRepHUSU_OBSDES: TStringField
      FieldName = 'USU_OBSDES'
      Size = 300
    end
    object CadUsu_TDescRepHUSU_DATVAL: TDateTimeField
      FieldName = 'USU_DATVAL'
    end
    object CadUsu_TDescRepHUSU_JUSOBS: TStringField
      FieldName = 'USU_JUSOBS'
      Size = 200
    end
    object CadUsu_TDescRepHUSU_CODCPG: TStringField
      FieldName = 'USU_CODCPG'
      Size = 6
    end
    object CadUsu_TDescRepHUSU_REGAPL: TStringField
      FieldName = 'USU_REGAPL'
      Size = 100
    end
  end
  object ConsUSU_TDescRepH: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PRECAR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SEQVAL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select USU_TDESCREPH.*,'
      '       E085CLI.NOMCLI,E085CLI.CIDCLI,E085CLI.SIGUFS,'
      '       E090REP.NOMREP,E090REP.APEREP,'
      '       E075PRO.DESPRO,'
      '       E028CPG.DESCPG'
      '  from USU_TDESCREPH'
      
        '  INNER JOIN E085CLI ON E085CLI.CODCLI = USU_TDESCREPH.USU_CODCL' +
        'I'
      
        '  INNER JOIN E090REP ON E090REP.CODREP = USU_TDESCREPH.USU_CODRE' +
        'P'
      
        '  INNER JOIN E075PRO ON E075PRO.CODEMP = USU_TDESCREPH.USU_CODEM' +
        'P AND'
      
        '                        E075PRO.CODPRO = USU_TDESCREPH.USU_CODPR' +
        'O'
      
        '  INNER JOIN E028CPG ON E028CPG.CODEMP = USU_TDESCREPH.USU_CODEM' +
        'P AND'
      
        '                        E028CPG.CODCPG = USU_TDESCREPH.USU_CODCP' +
        'G'
      '       WHERE'
      '         USU_TDESCREPH.USU_PRECAR = :PRECAR AND'
      '         USU_TDESCREPH.USU_SEQVAL = :SEQVAL')
    Left = 816
    Top = 520
    object ConsUSU_TDescRepHUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUSU_TDescRepHUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUSU_TDescRepHUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsUSU_TDescRepHUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUSU_TDescRepHUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUSU_TDescRepHUSU_QTDPED: TFMTBCDField
      FieldName = 'USU_QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsUSU_TDescRepHUSU_QTDFAT: TFMTBCDField
      FieldName = 'USU_QTDFAT'
      Precision = 14
      Size = 5
    end
    object ConsUSU_TDescRepHUSU_QTDCAN: TFMTBCDField
      FieldName = 'USU_QTDCAN'
      Precision = 14
      Size = 5
    end
    object ConsUSU_TDescRepHUSU_QTDABE: TFMTBCDField
      FieldName = 'USU_QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsUSU_TDescRepHUSU_CODTPR: TStringField
      FieldName = 'USU_CODTPR'
      Size = 4
    end
    object ConsUSU_TDescRepHUSU_PREUNI: TFMTBCDField
      FieldName = 'USU_PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsUSU_TDescRepHUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object ConsUSU_TDescRepHUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsUSU_TDescRepHUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object ConsUSU_TDescRepHUSU_PRETAB: TFMTBCDField
      FieldName = 'USU_PRETAB'
      Precision = 14
      Size = 5
    end
    object ConsUSU_TDescRepHUSU_SEQVAL: TIntegerField
      FieldName = 'USU_SEQVAL'
    end
    object ConsUSU_TDescRepHUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
    object ConsUSU_TDescRepHUSU_DESLIB: TBCDField
      FieldName = 'USU_DESLIB'
      Precision = 9
      Size = 3
    end
    object ConsUSU_TDescRepHUSU_DESAPL: TBCDField
      FieldName = 'USU_DESAPL'
      Precision = 9
      Size = 3
    end
    object ConsUSU_TDescRepHUSU_OBSDES: TStringField
      FieldName = 'USU_OBSDES'
      Size = 300
    end
    object ConsUSU_TDescRepHUSU_DATVAL: TDateTimeField
      FieldName = 'USU_DATVAL'
    end
    object ConsUSU_TDescRepHNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsUSU_TDescRepHCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsUSU_TDescRepHSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsUSU_TDescRepHNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ConsUSU_TDescRepHAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ConsUSU_TDescRepHDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsUSU_TDescRepHUSU_JUSOBS: TStringField
      FieldName = 'USU_JUSOBS'
      Size = 200
    end
    object ConsUSU_TDescRepHUSU_CODCPG: TStringField
      FieldName = 'USU_CODCPG'
      Size = 6
    end
    object ConsUSU_TDescRepHDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ConsUSU_TDescRepHUSU_REGAPL: TStringField
      FieldName = 'USU_REGAPL'
      Size = 100
    end
  end
  object ProviderConsUSU_TDescRepH: TDataSetProvider
    DataSet = ConsUSU_TDescRepH
    Left = 816
    Top = 576
  end
  object ClientConsUSU_TDescRepH: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderConsUSU_TDescRepH'
    AfterScroll = ClientConsUSU_TDescRepHAfterScroll
    Left = 824
    Top = 632
    object ClientConsUSU_TDescRepHUSU_CODEMP: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODEMP'
    end
    object ClientConsUSU_TDescRepHUSU_CODFIL: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODFIL'
    end
    object ClientConsUSU_TDescRepHUSU_NUMPED: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_NUMPED'
    end
    object ClientConsUSU_TDescRepHUSU_CODPRO: TStringField
      Alignment = taCenter
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ClientConsUSU_TDescRepHUSU_CODDER: TStringField
      Alignment = taCenter
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ClientConsUSU_TDescRepHUSU_QTDPED: TFMTBCDField
      Alignment = taCenter
      FieldName = 'USU_QTDPED'
      Precision = 14
      Size = 5
    end
    object ClientConsUSU_TDescRepHUSU_QTDFAT: TFMTBCDField
      Alignment = taCenter
      FieldName = 'USU_QTDFAT'
      Precision = 14
      Size = 5
    end
    object ClientConsUSU_TDescRepHUSU_QTDCAN: TFMTBCDField
      Alignment = taCenter
      FieldName = 'USU_QTDCAN'
      Precision = 14
      Size = 5
    end
    object ClientConsUSU_TDescRepHUSU_QTDABE: TFMTBCDField
      Alignment = taCenter
      FieldName = 'USU_QTDABE'
      Precision = 14
      Size = 5
    end
    object ClientConsUSU_TDescRepHUSU_CODTPR: TStringField
      Alignment = taCenter
      FieldName = 'USU_CODTPR'
      Size = 4
    end
    object ClientConsUSU_TDescRepHUSU_PREUNI: TFMTBCDField
      Alignment = taCenter
      FieldName = 'USU_PREUNI'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ClientConsUSU_TDescRepHUSU_CODREP: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODREP'
    end
    object ClientConsUSU_TDescRepHUSU_PRECAR: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_PRECAR'
    end
    object ClientConsUSU_TDescRepHUSU_CODCLI: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODCLI'
    end
    object ClientConsUSU_TDescRepHUSU_PRETAB: TFMTBCDField
      Alignment = taCenter
      FieldName = 'USU_PRETAB'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ClientConsUSU_TDescRepHUSU_SEQVAL: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_SEQVAL'
    end
    object ClientConsUSU_TDescRepHUSU_SEQMOV: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_SEQMOV'
    end
    object ClientConsUSU_TDescRepHUSU_DESLIB: TBCDField
      Alignment = taCenter
      FieldName = 'USU_DESLIB'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 9
      Size = 3
    end
    object ClientConsUSU_TDescRepHUSU_DESAPL: TBCDField
      Alignment = taCenter
      FieldName = 'USU_DESAPL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 9
      Size = 3
    end
    object ClientConsUSU_TDescRepHUSU_OBSDES: TStringField
      FieldName = 'USU_OBSDES'
      Size = 300
    end
    object ClientConsUSU_TDescRepHUSU_DATVAL: TDateTimeField
      Alignment = taCenter
      FieldName = 'USU_DATVAL'
    end
    object ClientConsUSU_TDescRepHNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ClientConsUSU_TDescRepHCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ClientConsUSU_TDescRepHSIGUFS: TStringField
      Alignment = taCenter
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ClientConsUSU_TDescRepHNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ClientConsUSU_TDescRepHAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ClientConsUSU_TDescRepHDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ClientConsUSU_TDescRepHUSU_JUSOBS: TStringField
      FieldName = 'USU_JUSOBS'
      Size = 200
    end
    object ClientConsUSU_TDescRepHUSU_CODCPG: TStringField
      Alignment = taCenter
      FieldName = 'USU_CODCPG'
      Size = 6
    end
    object ClientConsUSU_TDescRepHDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ClientConsUSU_TDescRepHUSU_REGAPL: TStringField
      FieldName = 'USU_REGAPL'
      Size = 100
    end
  end
end
