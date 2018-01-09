object FAtualizaSaldoReservaTecidos: TFAtualizaSaldoReservaTecidos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Atualizar saldo reserva dos tecidos'
  ClientHeight = 594
  ClientWidth = 638
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 9
    Top = 25
    Width = 219
    Height = 19
    Caption = 'Atualizar saldo reservado  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 64
    Width = 640
    Height = 529
    TabStop = False
    DataSource = dsClientConsResultado
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'PRODUTO'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDEST'
        Title.Alignment = taCenter
        Title.Caption = 'ESTOQUE'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_SALFIL'
        Title.Alignment = taCenter
        Title.Caption = 'FILA'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 15722204
        Expanded = False
        FieldName = 'USU_SALRES'
        Title.Alignment = taCenter
        Title.Caption = 'RESERVADO'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12320767
        Expanded = False
        FieldName = 'RESERVA_REAL'
        Title.Alignment = taCenter
        Title.Caption = 'RESERVA REAL'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14540287
        Expanded = False
        FieldName = 'QtdDif'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'DIFEREN'#199'A'
        Width = 100
        Visible = True
      end>
  end
  object btnMostrar: TBitBtn
    Left = 533
    Top = 6
    Width = 100
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
      C8807FF7777777777FF700000000000000007777777777777777333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnMostrarClick
  end
  object btnProcessar: TBitBtn
    Left = 533
    Top = 34
    Width = 100
    Height = 25
    Caption = 'Processar'
    DoubleBuffered = True
    Glyph.Data = {
      46050000424D460500000000000036040000280000000D000000110000000100
      08000000000010010000C30E0000C30E00000001000000000000000000008080
      8000000080000080800000800000808000008000000080008000408080004040
      0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
      FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
      80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
      60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
      B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
      1D007666280000450000013E450013286A006A39850085324A00040404000808
      08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
      5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
      840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
      0000000039009B00000000250000000049003B111100002F000000005D004517
      1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
      00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
      2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
      A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
      2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
      89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
      AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
      0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
      0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
      42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
      890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
      C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
      FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
      F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
      FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
      CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
      8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
      7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
      BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
      88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
      A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
      0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
      00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
      001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
      11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
      110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
      11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
      110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
      110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
      0F0F0F0F0F0F0F000000}
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnProcessarClick
  end
  object ConsItePedidos: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT USU_T120IPD.*, E075PRO.DESPRO, E075DER.USU_CORUNI,E075DER' +
        '.USU_CMP1BB,E075DER.USU_CMP1AE,USU_TPRECAR.USU_CARIMP'
      '                    FROM USU_T120IPD'
      
        'INNER JOIN E120IPD ON E120IPD.CODEMP = USU_T120IPD.USU_CODEMP AN' +
        'D'
      
        '                      E120IPD.CODFIL = USU_T120IPD.USU_CODFIL AN' +
        'D'
      
        '                      E120IPD.NUMPED = USU_T120IPD.USU_NUMPED AN' +
        'D'
      '                      E120IPD.SEQIPD = USU_T120IPD.USU_SEQIPD'
      
        'INNER JOIN E120PED ON E120PED.CODEMP = USU_T120IPD.USU_CODEMP AN' +
        'D'
      
        '                      E120PED.CODFIL = USU_T120IPD.USU_CODFIL AN' +
        'D'
      '                      E120PED.NUMPED = USU_T120IPD.USU_NUMPED'
      
        'INNER JOIN E075PRO ON E075PRO.CODEMP = USU_T120IPD.USU_CODEMP AN' +
        'D'
      '                      E075PRO.CODPRO = USU_T120IPD.USU_CODPRO'
      
        'INNER JOIN E075DER ON E075DER.CODEMP = USU_T120IPD.USU_CODEMP AN' +
        'D'
      
        '                      E075DER.CODPRO = USU_T120IPD.USU_CODPRO AN' +
        'D'
      '                      E075DER.CODDER = USU_T120IPD.USU_CODDER'
      
        'LEFT JOIN USU_TPRECAR ON USU_TPRECAR.USU_PRECAR = E120PED.USU_PR' +
        'ECAR'
      '                      WHERE'
      '                      E075PRO.CODAGP = '#39'ESTOF'#39' AND'
      '                      USU_T120IPD.USU_CODFIL = 1 AND'
      '                      E120PED.USU_PEDTRA = '#39'S'#39' AND'
      '                      E120IPD.SITIPD IN (1,2) AND'
      '                      E120IPD.TNSPRO IN ('#39'90100'#39','#39'90111'#39') AND'
      '                      USU_T120IPD.USU_QTDABE > 0'
      '                      ORDER BY USU_T120IPD.USU_NUMPED')
    Left = 136
    Top = 216
    object ConsItePedidosUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsItePedidosUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsItePedidosUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsItePedidosUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsItePedidosUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object ConsItePedidosUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsItePedidosUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ConsItePedidosUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ConsItePedidosUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ConsItePedidosUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsItePedidosUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsItePedidosUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object ConsItePedidosUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsItePedidosUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object ConsItePedidosUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsItePedidosUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsItePedidosUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
    object ConsItePedidosDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsItePedidosUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object ConsItePedidosUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object ConsItePedidosUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object ConsItePedidosUSU_CARIMP: TStringField
      FieldName = 'USU_CARIMP'
      Size = 1
    end
  end
  object CadUsu_TTemp1001_1: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_TEMP1001_1 WHERE USU_CODPRO = :CODPRO')
    Left = 128
    Top = 272
    object CadUsu_TTemp1001_1USU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TTemp1001_1USU_QTDEST: TBCDField
      FieldName = 'USU_QTDEST'
      Precision = 11
      Size = 2
    end
  end
  object cmdApagaTemp1001_1: TADOCommand
    CommandText = 'DELETE FROM USU_TEMP1001_1'
    Connection = DmOra.ADOBanco
    Parameters = <>
    Left = 120
    Top = 328
  end
  object ConsResultado: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT E210EST.CODPRO,E210EST.CODDEP,E210EST.QTDEST,USU_TSALTEC.' +
        'USU_SALRES,USU_TSALTEC.USU_SALFIL,'
      '       USU_TEMP1001_1.USU_QTDEST AS RESERVA_REAL'
      '                                          FROM E210EST'
      'LEFT JOIN USU_TSALTEC ON USU_TSALTEC.USU_CODPRO = E210EST.CODPRO'
      
        'LEFT JOIN USU_TEMP1001_1 ON USU_TEMP1001_1.USU_CODPRO = E210EST.' +
        'CODPRO'
      '                                          WHERE'
      
        '                                                E210EST.CODEMP =' +
        ' 1 AND'
      
        '                                                E210EST.CODDEP =' +
        ' '#39'1001'#39' AND'
      
        '                                                E210EST.SITEST =' +
        ' '#39'A'#39' AND'
      
        '                                                (USU_TSALTEC.USU' +
        '_SALRES + USU_TSALTEC.USU_SALFIL ) <>  USU_TEMP1001_1.USU_QTDEST' +
        ' '
      
        '                                                ORDER BY E210EST' +
        '.CODPRO')
    Left = 384
    Top = 272
    object ConsResultadoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsResultadoCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsResultadoQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object ConsResultadoUSU_SALRES: TBCDField
      FieldName = 'USU_SALRES'
      Precision = 11
      Size = 2
    end
    object ConsResultadoUSU_SALFIL: TBCDField
      FieldName = 'USU_SALFIL'
      Precision = 11
      Size = 2
    end
    object ConsResultadoRESERVA_REAL: TBCDField
      FieldName = 'RESERVA_REAL'
      Precision = 11
      Size = 2
    end
  end
  object ClientConsResultado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderConsResultado'
    OnCalcFields = ClientConsResultadoCalcFields
    Left = 384
    Top = 376
    object ClientConsResultadoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ClientConsResultadoCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ClientConsResultadoQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object ClientConsResultadoUSU_SALRES: TBCDField
      FieldName = 'USU_SALRES'
      Precision = 11
      Size = 2
    end
    object ClientConsResultadoUSU_SALFIL: TBCDField
      FieldName = 'USU_SALFIL'
      Precision = 11
      Size = 2
    end
    object ClientConsResultadoRESERVA_REAL: TBCDField
      FieldName = 'RESERVA_REAL'
      Precision = 11
      Size = 2
    end
    object ClientConsResultadoQtdDif: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QtdDif'
      Calculated = True
    end
  end
  object ProviderConsResultado: TDataSetProvider
    DataSet = ConsResultado
    Left = 384
    Top = 320
  end
  object dsClientConsResultado: TDataSource
    DataSet = ClientConsResultado
    Left = 376
    Top = 224
  end
  object ConsIteCargas: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT USU_TCORCAR.*, E075DER.USU_CORUNI,E075DER.USU_CMP1BB,E075' +
        'DER.USU_CMP1AE'
      'FROM USU_TCORCAR'
      
        'INNER JOIN USU_TCARPRO ON USU_TCARPRO.USU_NUMANE = USU_TCORCAR.U' +
        'SU_NUMANE'
      
        'INNER JOIN E075DER ON E075DER.CODPRO = USU_TCORCAR.USU_CODPRO AN' +
        'D'
      '                      E075DER.CODDER = USU_TCORCAR.USU_CODDER'
      'WHERE'
      '   USU_TCORCAR.USU_QTDABE > 0 AND'
      '   USU_TCORCAR.USU_CORCOR IN ('#39'N'#39','#39'P'#39') AND'
      '   USU_TCARPRO.USU_CARPRO IN ('#39'N'#39')'
      ' ORDER BY USU_TCORCAR.USU_NUMANE')
    Left = 240
    Top = 184
    object ConsIteCargasUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsIteCargasUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsIteCargasUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsIteCargasUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object ConsIteCargasUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object ConsIteCargasUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ConsIteCargasUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsIteCargasUSU_SALABE1: TBCDField
      FieldName = 'USU_SALABE1'
      Precision = 11
      Size = 2
    end
    object ConsIteCargasUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object ConsIteCargasUSU_SALABE2: TBCDField
      FieldName = 'USU_SALABE2'
      Precision = 11
      Size = 2
    end
    object ConsIteCargasUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object ConsIteCargasUSU_CORCOR: TStringField
      FieldName = 'USU_CORCOR'
      Size = 1
    end
    object ConsIteCargasUSU_SELITE: TStringField
      FieldName = 'USU_SELITE'
      Size = 1
    end
    object ConsIteCargasUSU_QTDCOR1: TBCDField
      FieldName = 'USU_QTDCOR1'
      Precision = 11
      Size = 2
    end
    object ConsIteCargasUSU_QTDCOR2: TBCDField
      FieldName = 'USU_QTDCOR2'
      Precision = 11
      Size = 2
    end
    object ConsIteCargasUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object ConsIteCargasUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object ConsIteCargasUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
  end
end
