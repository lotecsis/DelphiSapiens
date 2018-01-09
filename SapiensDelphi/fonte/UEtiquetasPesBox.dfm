object FEtiquetasPesBox: TFEtiquetasPesBox
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Rela'#231#227'o de Etiquetas P/P'#233's de Box'
  ClientHeight = 649
  ClientWidth = 581
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
    Left = 8
    Top = 27
    Width = 36
    Height = 13
    Caption = 'Carga:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 67
    Width = 565
    Height = 574
    DataSource = DsClientRelacaoPesBox
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Campo1'
        Title.Caption = ' '
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Campo2'
        Title.Caption = ' '
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Campo3'
        Title.Caption = ' '
        Width = 130
        Visible = True
      end>
  end
  object BMostrar: TBitBtn
    Left = 475
    Top = 7
    Width = 100
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BMostrarClick
  end
  object EdNumAne: TCurrencyEdit
    Left = 51
    Top = 24
    Width = 100
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 2
  end
  object ConsE135Pfa: TADOQuery
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
      'SELECT DISTINCT(E120PED.CODCLI),E085CLI.NOMCLI'
      '      FROM E120PED'
      'INNER JOIN E085CLI ON E085CLI.CODCLI = E120PED.CODCLI'
      '      WHERE E120PED.USU_PRECAR = :PRECAR')
    Left = 336
    Top = 8
    object ConsE135PfaCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ReadOnly = True
    end
    object ConsE135PfaNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
  end
  object DsClientRelacaoPesBox: TDataSource
    AutoEdit = False
    DataSet = DmOra.ClientRelacaoPesBox
    Left = 160
    Top = 16
  end
  object ConsE135Pes: TADOQuery
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
    Left = 264
    Top = 16
    object ConsE135PesQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsE135PesDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsE135PesDESDER: TStringField
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
    Left = 400
    Top = 16
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
end
