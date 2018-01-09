object FZeraEst3000: TFZeraEst3000
  Left = 0
  Top = 0
  Caption = 'Zerar Estoque 3000'
  ClientHeight = 569
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dbg1: TDBGrid
    Left = 0
    Top = 42
    Width = 862
    Height = 485
    DataSource = dsConsEst
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODDEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIMED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDEST'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPRO'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDPRV'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODDER'
        Width = 64
        Visible = True
      end>
  end
  object btnProcessar: TBitBtn
    Left = 779
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Processar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnProcessarClick
  end
  object btnMostrar: TBitBtn
    Left = 694
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnMostrarClick
  end
  object btn1: TBitBtn
    Left = 600
    Top = 11
    Width = 75
    Height = 25
    Caption = 'btn1'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btn1Click
  end
  object ConsEst: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CODEMP,CODPRO,CODDER,CODDEP,QTDEST FROM E210EST'
      '  WHERE'
      '    QTDEST > 0 and'
      '     coddep = '#39'3000'#39)
    Left = 584
    Top = 96
    object ConsEstCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsEstCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsEstCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsEstCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsEstQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
  end
  object dsConsEst: TDataSource
    DataSet = ConsEst
    Left = 512
    Top = 200
  end
  object SapSid: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 328
    Top = 136
  end
  object ConsEstCopia: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  e210est.coddep, e210est.codpro,e210est.codder, e210est.u' +
        'nimed, e210est.qtdest,'
      '       e075pro.despro,'
      '       ( select  sum(e900cmo.qtdprv)'
      '          from e900cmo'
      '          where'
      '           e900cmo.qtdprv > 0 and'
      '           e900cmo.qtduti = 0 and'
      '           e900cmo.codder = '#39' '#39' and'
      '           e900cmo.codcmp = e210est.codpro) as qtdprv'
      '  from e210est'
      '  inner join e075pro on e075pro.codemp = e210est.codemp and'
      '                        e075pro.codpro = e210est.codpro'
      '  where'
      '   e210est.coddep = '#39'3000'#39' and'
      '   e210est.qtdest > 0'
      '   order by 7,5 desc')
    Left = 664
    Top = 152
    object StringField1: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object StringField3: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object StringField4: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'QTDPRV'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object StringField5: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
  end
end
