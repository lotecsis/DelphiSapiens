object FImprimirEtiqMM: TFImprimirEtiqMM
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Imprimir Etiquetas Mercado M'#243'veis'
  ClientHeight = 627
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 383
    Top = 368
    Width = 36
    Height = 13
    Caption = 'TOTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 10
    Width = 170
    Height = 16
    Caption = 'Etiquetas Mercado M'#243'veis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 28
    Top = 300
    Width = 45
    Height = 13
    Caption = 'Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 184
    Top = 300
    Width = 57
    Height = 13
    Caption = 'Deriva'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 8
    Top = 326
    Width = 65
    Height = 13
    Caption = 'Quantidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 8
    Top = 38
    Width = 57
    Height = 13
    Caption = 'Pr'#233'-Carga'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BCarregar: TBitBtn
    Left = 540
    Top = 8
    Width = 75
    Height = 30
    Caption = 'Carregar'
    DoubleBuffered = True
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      04000000000078000000130B0000130B00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      88888888888888888888888888800000000088088880FFFFFFF088008880F00F
      00F000000880FFFFFFF000000080F00F00F000000880FFFFFFF088008884C4C4
      C4C48808888CF4CF4CFC88888884C4C4C44C8888888888888888888888888888
      888888888888888888888888888888888888}
    ParentDoubleBuffered = False
    TabOrder = 4
    Visible = False
    OnClick = BCarregarClick
  end
  object DBGrid3: TDBGrid
    Left = -2
    Top = 347
    Width = 754
    Height = 281
    TabStop = False
    DataSource = DsClientEtiqPesBox
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Campo1'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Campo2'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.Volme'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Campo3'
        Title.Alignment = taCenter
        Title.Caption = 'Volume'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Campo4'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo Barras'
        Width = 200
        Visible = True
      end>
  end
  object BImprimir: TBitBtn
    Left = 671
    Top = 5
    Width = 75
    Height = 30
    Caption = 'Imprimir'
    DoubleBuffered = True
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDDD7777777777DDDDD0000DDDD
      000000000007DDDD0000DDD07878787870707DDD0000DD0000000000000707DD
      0000DD0F8F8F8AAA8F0007DD0000DD08F8F8F999F80707DD0000DD0000000000
      0008707D0000DD08F8F8F8F8F080807D0000DDD0000000000F08007D0000DDDD
      0BFFFBFFF0F080DD0000DDDDD0F00000F0000DDD0000DDDDD0FBFFFBFF0DDDDD
      0000DDDDDD0F00000F0DDDDD0000DDDDDD0FFBFFFBF0DDDD0000DDDDDDD00000
      0000DDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDD
      DDDDDDDDDDDDDDDD0000}
    ParentDoubleBuffered = False
    TabOrder = 6
    TabStop = False
    OnClick = BImprimirClick
  end
  object edtCodPro: TEdit
    Left = 77
    Top = 297
    Width = 100
    Height = 21
    TabStop = False
    TabOrder = 7
  end
  object btnAdicionar: TBitBtn
    Left = 674
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    DoubleBuffered = True
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888800008888888888888888888800008888777777778888888800008800
      00000000788888880000880BFFFBFFF0777777880000880F444444F000000078
      0000880FFBFFFBF0FBFFF0780000880F444444F04444F0780000880BFFFBFFF0
      FFFBF0780000880F444444F04444F0780000880FFBFFFBF0FBFFF0780000880F
      44F000004477F0780000880BFFF0FFF0FF0007780000880F44F0FB00F70A0778
      0000880FFBF0F0FF000A00080000880000000F470AAAAA080000888888880FFB
      000A00080000888888880000770A088800008888888888888800088800008888
      88888888888888880000}
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnAdicionarClick
  end
  object edtQtdPed: TCurrencyEdit
    Left = 77
    Top = 323
    Width = 100
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    TabStop = False
    DisplayFormat = '0'
    TabOrder = 8
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 64
    Width = 753
    Height = 226
    DataSource = dsClientConsE120Ipd
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDPED'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'Deriva'#231#227'o'
        Width = 100
        Visible = True
      end>
  end
  object edtPreCar: TCurrencyEdit
    Left = 70
    Top = 35
    Width = 100
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    TabStop = False
    DisplayFormat = '0'
    TabOrder = 0
    OnExit = edtPreCarExit
  end
  object dblkcbbDerivacoes: TDBLookupComboBox
    Left = 247
    Top = 297
    Width = 145
    Height = 21
    KeyField = 'USU_CODBARRAS'
    ListField = 'USU_CODDER'
    ListSource = dsDerivacoes
    TabOrder = 2
  end
  object ConsPreCargaLib: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select usu_tprecar.usu_precar,usu_tprecar.usu_datlib, r999usu.no' +
        'musu from usu_tprecar'
      'inner join r999usu on r999usu.codusu = usu_tprecar.usu_usulib'
      '                                    where'
      
        '                                    usu_tprecar.usu_carlib = '#39'S'#39 +
        ' AND'
      '                                    USU_TPRECAR.USU_ETIPBI = '#39'N'#39
      
        '                                    order by usu_tprecar.usu_pre' +
        'car')
    Left = 296
    Top = 56
    object ConsPreCargaLibUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsPreCargaLibUSU_DATLIB: TDateTimeField
      FieldName = 'USU_DATLIB'
    end
    object ConsPreCargaLibNOMUSU: TStringField
      FieldName = 'NOMUSU'
      Size = 255
    end
  end
  object DsConsPreCargaLib: TDataSource
    DataSet = ConsPreCargaLib
    Left = 480
    Top = 56
  end
  object DsClientEtiqPesBox: TDataSource
    DataSet = DmOra.ClientEtiqPesBox
    Left = 201
    Top = 51
  end
  object ConsE120Ped: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PRECAR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DISTINCT(E120PED.CODCLI),E085CLI.NOMCLI,E085CLI.CIDCLI,E0' +
        '85CLI.SIGUFS'
      '      FROM E120PED'
      'INNER JOIN E085CLI ON E085CLI.CODCLI = E120PED.CODCLI'
      '      WHERE E120PED.USU_PRECAR = :PRECAR')
    Left = 633
    Top = 99
    object ConsE120PedCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ReadOnly = True
    end
    object ConsE120PedNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsE120PedCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsE120PedSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
  end
  object ConsE120Ipd: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PRECAR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT SUM(E120IPD.QTDPED - E120IPD.QTDCAN) AS QTDPED,'
      '       E120IPD.CODPRO,E120IPD.CODDER,E075PRO.DESPRO'
      '            FROM E120IPD'
      'INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND'
      '                      E120PED.CODFIL = E120IPD.CODFIL AND'
      '                      E120PED.NUMPED = E120IPD.NUMPED'
      'INNER JOIN E075PRO ON E075PRO.CODEMP = E120IPD.CODEMP AND'
      '                      E075PRO.CODPRO = E120IPD.CODPRO'
      '            WHERE E120PED.USU_PRECAR = :PRECAR'
      
        '            GROUP BY E120IPD.CODPRO,E120IPD.CODDER,E075PRO.DESPR' +
        'O'
      '           order by e120ipd.codpro,e120ipd.codder')
    Left = 56
    Top = 106
    object ConsE120IpdQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE120IpdDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object ConsTotais: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PRECAR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT SUM(E120IPD.QTDPED - E120IPD.QTDCAN) AS QTDPED,E075PRO.DE' +
        'SPRO,E075DER.DESDER'
      '            FROM E120IPD'
      'INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND'
      '                      E120PED.CODFIL = E120IPD.CODFIL AND'
      '                      E120PED.NUMPED = E120IPD.NUMPED'
      'INNER JOIN E075PRO ON E075PRO.CODEMP = E120IPD.CODEMP AND'
      '                      E075PRO.CODPRO = E120IPD.CODPRO'
      'INNER JOIN E075DER ON E075DER.CODEMP = E120IPD.CODEMP AND'
      '                      E075DER.CODPRO = E120IPD.CODPRO AND'
      '                      E075DER.CODDER = E120IPD.CODDER'
      '            WHERE E120PED.USU_PRECAR = :PRECAR AND'
      '                  E075PRO.CODFAM IN (01007,01008,01009,01041)'
      '                  GROUP BY E075PRO.DESPRO,E075DER.DESDER')
    Left = 104
    Top = 48
    object ConsTotaisQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsTotaisDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsTotaisDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
  end
  object ClientTotal: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 129
    Top = 483
    Data = {
      860000009619E0BD01000000180000000400000000000300000086000643616D
      706F3101004900000001000557494454480200020064000643616D706F320100
      4900000001000557494454480200020064000643616D706F3301004900000001
      000557494454480200020064000643616D706F34010049000000010005574944
      54480200020064000000}
    object ClientTotalCampo1: TStringField
      FieldName = 'Campo1'
      Size = 100
    end
    object ClientTotalCampo2: TStringField
      FieldName = 'Campo2'
      Size = 100
    end
    object ClientTotalCampo3: TStringField
      FieldName = 'Campo3'
      Size = 100
    end
    object ClientTotalCampo4: TStringField
      FieldName = 'Campo4'
      Size = 100
    end
  end
  object DsClientTotal: TDataSource
    DataSet = ClientTotal
    Left = 496
    Top = 482
  end
  object CadUsu_TPreCar: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tprecar where usu_precar = :precar')
    Left = 696
    Top = 88
    object CadUsu_TPreCarUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object CadUsu_TPreCarUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object CadUsu_TPreCarUSU_HORGER: TIntegerField
      FieldName = 'USU_HORGER'
    end
    object CadUsu_TPreCarUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object CadUsu_TPreCarUSU_CARLIB: TStringField
      FieldName = 'USU_CARLIB'
      Size = 1
    end
    object CadUsu_TPreCarUSU_DATLIB: TDateTimeField
      FieldName = 'USU_DATLIB'
    end
    object CadUsu_TPreCarUSU_HORLIB: TIntegerField
      FieldName = 'USU_HORLIB'
    end
    object CadUsu_TPreCarUSU_USULIB: TIntegerField
      FieldName = 'USU_USULIB'
    end
    object CadUsu_TPreCarUSU_CARIMP: TStringField
      FieldName = 'USU_CARIMP'
      Size = 1
    end
    object CadUsu_TPreCarUSU_ETIPBI: TStringField
      FieldName = 'USU_ETIPBI'
      Size = 1
    end
  end
  object dsConsE120Ipd: TDataSource
    DataSet = ConsE120Ipd
    Left = 200
    Top = 136
  end
  object ClientConsE120Ipd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderConsE120Ipd'
    AfterScroll = ClientConsE120IpdAfterScroll
    Left = 48
    Top = 200
    object ClientConsE120IpdQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ClientConsE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ClientConsE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ClientConsE120IpdDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object ProviderConsE120Ipd: TDataSetProvider
    DataSet = ConsE120Ipd
    Left = 48
    Top = 152
  end
  object dsClientConsE120Ipd: TDataSource
    DataSet = ClientConsE120Ipd
    Left = 184
    Top = 192
  end
  object Derivacoes: TADOQuery
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
      'SELECT * FROM USU_TCODBARRAS'
      'WHERE'
      'USU_CODPRO = :CODPRO')
    Left = 424
    Top = 200
    object DerivacoesUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object DerivacoesUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object DerivacoesUSU_CODBARRAS: TStringField
      FieldName = 'USU_CODBARRAS'
      Size = 15
    end
    object DerivacoesUSU_DATA: TDateTimeField
      FieldName = 'USU_DATA'
    end
    object DerivacoesUSU_NMPRODMM: TStringField
      FieldName = 'USU_NMPRODMM'
      Size = 50
    end
    object DerivacoesUSU_QTDEVOL: TIntegerField
      FieldName = 'USU_QTDEVOL'
    end
    object DerivacoesUSU_VOLUME: TIntegerField
      FieldName = 'USU_VOLUME'
    end
    object DerivacoesUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
  end
  object dsDerivacoes: TDataSource
    DataSet = Derivacoes
    Left = 416
    Top = 160
  end
  object ConsEtiquetas: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODDER'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_TCODBARRAS'
      'WHERE'
      'USU_CODPRO = :CODPRO AND'
      'USU_CODDER = :CODDER'
      'ORDER BY USU_CODBARRAS')
    Left = 552
    Top = 208
    object ConsEtiquetasUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsEtiquetasUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsEtiquetasUSU_CODBARRAS: TStringField
      FieldName = 'USU_CODBARRAS'
      Size = 15
    end
    object ConsEtiquetasUSU_DATA: TDateTimeField
      FieldName = 'USU_DATA'
    end
    object ConsEtiquetasUSU_NMPRODMM: TStringField
      FieldName = 'USU_NMPRODMM'
      Size = 50
    end
    object ConsEtiquetasUSU_QTDEVOL: TIntegerField
      FieldName = 'USU_QTDEVOL'
    end
    object ConsEtiquetasUSU_VOLUME: TIntegerField
      FieldName = 'USU_VOLUME'
    end
    object ConsEtiquetasUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
  end
  object ConsPes: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODDER'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_TCODBARRAS'
      'WHERE'
      'USU_CODPRO = :CODPRO AND'
      'USU_CODDER = :CODDER'
      'ORDER BY USU_CODBARRAS'
      '')
    Left = 296
    Top = 136
    object ConsPesUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsPesUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsPesUSU_CODBARRAS: TStringField
      FieldName = 'USU_CODBARRAS'
      Size = 15
    end
    object ConsPesUSU_DATA: TDateTimeField
      FieldName = 'USU_DATA'
    end
    object ConsPesUSU_NMPRODMM: TStringField
      FieldName = 'USU_NMPRODMM'
      Size = 50
    end
    object ConsPesUSU_QTDEVOL: TIntegerField
      FieldName = 'USU_QTDEVOL'
    end
    object ConsPesUSU_VOLUME: TIntegerField
      FieldName = 'USU_VOLUME'
    end
    object ConsPesUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
  end
end
