object FImprimirEtiqPesBox: TFImprimirEtiqPesBox
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Imprimir Etiquetas'
  ClientHeight = 599
  ClientWidth = 943
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 383
    Top = 328
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
    Top = 14
    Width = 238
    Height = 13
    Caption = 'RELA'#199#195'O DE ETIQUETAS  PARA P'#201'S DE BOX '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 40
    Width = 288
    Height = 529
    DataSource = DsConsPreCargaLib
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        FieldName = 'USU_PRECAR'
        Title.Alignment = taCenter
        Title.Caption = 'Pr'#233'-Carga'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_DATLIB'
        Title.Alignment = taCenter
        Title.Caption = 'Dat. Libera'#231#227'o'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOMUSU'
        Title.Alignment = taCenter
        Title.Caption = 'Usuario'
        Width = 100
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 383
    Top = 40
    Width = 552
    Height = 281
    DataSource = DsClientEtiqPesBox
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Campo1'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Campo3'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Campo4'
        Title.Alignment = taCenter
        Title.Caption = 'Deriva'#231#227'o'
        Width = 100
        Visible = True
      end>
  end
  object BCarregar: TBitBtn
    Left = 302
    Top = 40
    Width = 75
    Height = 40
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
    TabOrder = 2
    OnClick = BCarregarClick
  end
  object DBGrid3: TDBGrid
    Left = 383
    Top = 344
    Width = 552
    Height = 225
    DataSource = DsClientTotal
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 3
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
        Title.Caption = 'Quantidade'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Campo2'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Campo3'
        Title.Alignment = taCenter
        Title.Caption = 'Deriva'#231#227'o'
        Width = 180
        Visible = True
      end>
  end
  object BImprimir: TBitBtn
    Left = 302
    Top = 96
    Width = 75
    Height = 40
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
    TabOrder = 4
    OnClick = BImprimirClick
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
    Left = 112
    Top = 176
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
    Left = 104
    Top = 240
  end
  object DsClientEtiqPesBox: TDataSource
    DataSet = DmOra.ClientEtiqPesBox
    Left = 472
    Top = 120
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
    Left = 520
    Top = 192
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
      end
      item
        Name = 'CODCLI'
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
      
        '                  E075PRO.CODFAM IN (01007,01008,01009,01041) AN' +
        'D'
      '                  E120PED.CODCLI = :CODCLI'
      '            GROUP BY E075PRO.DESPRO,E075DER.DESDER')
    Left = 600
    Top = 192
    object ConsE120IpdQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsE120IpdDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsE120IpdDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
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
    Left = 336
    Top = 264
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
    Left = 504
    Top = 440
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
    Left = 656
    Top = 408
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
    Left = 432
    Top = 272
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
end
