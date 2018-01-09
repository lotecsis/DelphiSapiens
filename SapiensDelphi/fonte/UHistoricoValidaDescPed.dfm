object FHistoricoValidaDescPed: TFHistoricoValidaDescPed
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hist'#243'rico de Valida'#231#227'o de Descontos de Pedidos'
  ClientHeight = 623
  ClientWidth = 994
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
    Left = 11
    Top = 12
    Width = 71
    Height = 13
    Caption = 'Data Valida'#231#227'o'
  end
  object dbg1: TDBGrid
    Left = -2
    Top = 88
    Width = 996
    Height = 497
    DataSource = dsClientConsUSU_TDescRepH
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbg1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'USU_OBSDES'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o Diferen'#231'a'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODFIL'
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NUMPED'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'Deriv.'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_PREUNI'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Unit.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_PRETAB'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Tabela'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_DESAPL'
        Title.Alignment = taCenter
        Title.Caption = 'Desc Aplic.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_DESLIB'
        Title.Alignment = taCenter
        Title.Caption = 'Desc Lib.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODCPG'
        Title.Alignment = taCenter
        Title.Caption = 'Cond.Pgto'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCPG'
        Title.Alignment = taCenter
        Title.Caption = 'Desc. Pgto.'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_QTDPED'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Ped.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_QTDCAN'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Can.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_QTDFAT'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Fat.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_QTDABE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Abe.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODTPR'
        Title.Alignment = taCenter
        Title.Caption = 'Tab. Pre'#231'o'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SIGUFS'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODREP'
        Title.Alignment = taCenter
        Title.Caption = 'Rep.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APEREP'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Rep.'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_REGAPL'
        Title.Alignment = taCenter
        Title.Caption = 'Regra Aplicada'
        Width = 200
        Visible = True
      end>
  end
  object edtDatVal: TMaskEdit
    Left = 88
    Top = 8
    Width = 100
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
    OnExit = edtDatValExit
  end
  object dbg2: TDBGrid
    Left = 339
    Top = 0
    Width = 129
    Height = 89
    TabStop = False
    DataSource = dsCargas
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbg2DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'USU_PRECAR'
        Title.Alignment = taCenter
        Title.Caption = 'Pr'#233'-Carga'
        Width = 90
        Visible = True
      end>
  end
  object btnMostrar: TBitBtn
    Left = 194
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    TabStop = False
    OnClick = btnMostrarClick
  end
  object dbg3: TDBGrid
    Left = 472
    Top = 0
    Width = 76
    Height = 89
    TabStop = False
    DataSource = dsConsSeqVal
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbg3DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'USU_SEQVAL'
        Title.Alignment = taCenter
        Title.Caption = 'Valida'#231#227'o'
        Width = 50
        Visible = True
      end>
  end
  object edtQtdDif: TEdit
    Left = 554
    Top = 63
    Width = 121
    Height = 19
    TabStop = False
    Alignment = taCenter
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object dbmmoUSU_JUSOBS: TDBMemo
    Left = -1
    Top = 584
    Width = 995
    Height = 39
    TabStop = False
    Color = 11599871
    DataField = 'USU_JUSOBS'
    DataSource = dsCadUsu_TDescRepH
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object dsClientConsUSU_TDescRepH: TDataSource
    DataSet = Dm.ClientConsUSU_TDescRepH
    Left = 536
    Top = 176
  end
  object Cargas: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    AfterScroll = CargasAfterScroll
    Parameters = <
      item
        Name = 'DATVAL'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT(USU_TDESCREPH.USU_PRECAR)'
      '   FROM USU_TDESCREPH'
      '   WHERE'
      '    USU_TDESCREPH.USU_DATVAL = :DATVAL'
      '    ORDER BY USU_TDESCREPH.USU_PRECAR')
    Left = 280
    Top = 168
    object CargasUSU_PRECAR: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_PRECAR'
      ReadOnly = True
    end
  end
  object dsCargas: TDataSource
    DataSet = Cargas
    Left = 224
    Top = 168
  end
  object ConsSeqVal: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsSeqValAfterScroll
    Parameters = <
      item
        Name = 'PRECAR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT(USU_TDESCREPH.USU_SEQVAL)'
      '   FROM USU_TDESCREPH'
      '   WHERE'
      '    USU_TDESCREPH.USU_PRECAR = :PRECAR'
      '    ORDER BY USU_TDESCREPH.USU_SEQVAL')
    Left = 288
    Top = 248
    object ConsSeqValUSU_SEQVAL: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_SEQVAL'
      ReadOnly = True
    end
  end
  object dsConsSeqVal: TDataSource
    DataSet = ConsSeqVal
    Left = 224
    Top = 248
  end
  object dsCadUsu_TDescRepH: TDataSource
    DataSet = Dm.CadUsu_TDescRepH
    Left = 496
    Top = 336
  end
end
