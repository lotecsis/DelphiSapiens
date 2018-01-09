object FCoresPedido: TFCoresPedido
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cores do Produto'
  ClientHeight = 160
  ClientWidth = 741
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
  PixelsPerInch = 96
  TextHeight = 13
  object lbl4: TLabel
    Left = 10
    Top = 85
    Width = 53
    Height = 13
    Caption = 'Adicionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 206
    Top = 84
    Width = 49
    Height = 13
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = -2
    Top = 0
    Width = 744
    Height = 69
    TabStop = False
    DataSource = dsConsE120Ipd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
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
        FieldName = 'SEQIPD'
        Title.Alignment = taCenter
        Title.Caption = 'SEQ.'
        Width = 40
        Visible = True
      end
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
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'DERIV.'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDPED'
        Title.Alignment = taCenter
        Title.Caption = 'QTD. PEDIDO'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDCAN'
        Title.Alignment = taCenter
        Title.Caption = 'QTD.CANCEL.'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDABE'
        Title.Alignment = taCenter
        Title.Caption = 'QTD.ABERTO'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DESDER'
        Title.Alignment = taCenter
        Title.Caption = 'DESC.DERIV'
        Width = 100
        Visible = True
      end>
  end
  object edtAltCorAdd: TCurrencyEdit
    Left = 68
    Top = 80
    Width = 121
    Height = 24
    Margins.Left = 4
    Margins.Top = 1
    Color = 14286809
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnExit = edtAltCorAddExit
  end
  object edtAltCorCanc: TCurrencyEdit
    Left = 260
    Top = 80
    Width = 121
    Height = 24
    Margins.Left = 4
    Margins.Top = 1
    Color = 14540287
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnExit = edtAltCorCancExit
  end
  object btnAlteraCor: TBitBtn
    Left = 631
    Top = 127
    Width = 100
    Height = 25
    Caption = 'Confirmar'
    DoubleBuffered = True
    Glyph.Data = {
      06020000424D0602000000000000760000002800000028000000140000000100
      0400000000009001000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      33333333333333333333333333333FFFFFFFFFFFF33333380000000000008333
      33338888888888883F333330CC08CCF770CC03333338F38F333338F38F333330
      CC08CCF770CC03333338F38F333338F38F333330CC07887770CC03333338F38F
      FFFFF8338F333330CC60000006CC03333338F338888883338F333330CCCCCCCC
      CCCC03333338F33FFFFFFFF38F333330C6000000006C03333338F3888888883F
      8F333330C0FFFFFFFF0C03333338F8F33333338F8F333330C0FFFFFFFF0C0333
      3338F8F33333338F8F333330C0FFFFFFFF0C03333338F8F33333338F8F333330
      C0FFFFFFFF0C03333338F8F33333338F8F33333000FFFFFFFF0003333338F8F3
      3333338F8F333330C0FFFFFFFF0C03333338F8FFFFFFFF8F8333333800000000
      0000833333338888888888883333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      33333333333333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnAlteraCorClick
  end
  object dsConsE120Ipd: TDataSource
    DataSet = Dm2.ConsE120Ipd
    Left = 424
    Top = 32
  end
  object dsConsUsu_T120Ipd: TDataSource
    DataSet = Dm2.ConsUsu_T120Ipd
    Left = 512
    Top = 40
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
    Left = 240
    Top = 112
  end
  object qryUltimoSeqIte: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_seqite from usu_t120ipd where'
      '                          usu_codemp = :codemp and'
      '                          usu_codfil = :codfil and'
      '                          usu_numped = :numped and'
      '                          usu_seqipd = :seqipd'
      '                          order by usu_seqite desc')
    Left = 600
    Top = 72
    object qryUltimoSeqIteUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
  end
end
