object FAnaliseConsumoMPProduzir: TFAnaliseConsumoMPProduzir
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 
    'Analise de Consumo de Mat'#233'ria Prima para Produ'#231#227'o de Pedidos em ' +
    'Aberto'
  ClientHeight = 660
  ClientWidth = 1006
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 14
    Top = 19
    Width = 36
    Height = 13
    Caption = 'Per'#237'odo'
  end
  object Label2: TLabel
    Left = 6
    Top = 49
    Width = 44
    Height = 13
    Caption = '- Pedidos'
  end
  object Label3: TLabel
    Left = 21
    Top = 76
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object Label4: TLabel
    Left = 546
    Top = 80
    Width = 96
    Height = 13
    Caption = 'Filtrar por Descri'#231#227'o'
  end
  object dbgItensPedido: TDBGrid
    Left = -2
    Top = 104
    Width = 513
    Height = 557
    DataSource = dsConsE120Ipd
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
        FieldName = 'CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPLIPD'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'Deriva'#231#227'o'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDABE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde. Aberto'
        Width = 100
        Visible = True
      end>
  end
  object edtDatIni: TDateEdit
    Left = 56
    Top = 16
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object edtDatFim: TDateEdit
    Left = 176
    Top = 16
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object btnMostrar: TBitBtn
    Left = 354
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnMostrarClick
  end
  object edtPedidos: TEdit
    Left = 56
    Top = 46
    Width = 455
    Height = 21
    TabOrder = 4
  end
  object cbbAgrupamento: TComboBox
    Left = 56
    Top = 73
    Width = 100
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 0
    TabOrder = 5
    Text = 'TODOS'
    Items.Strings = (
      'TODOS'
      'ESTOF'
      'COLCH')
  end
  object dbgMateriasPrimas: TDBGrid
    Left = 512
    Top = 104
    Width = 494
    Height = 558
    DataSource = dsClientConsumoMP
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = dbgMateriasPrimasTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CodPro'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DesPro'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 235
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UniMed'
        Title.Alignment = taCenter
        Title.Caption = 'Uni.Med.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QtdUti'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
        Width = 80
        Visible = True
      end>
  end
  object btnCalcular: TBitBtn
    Left = 435
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Calcular'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = btnCalcularClick
  end
  object edtDesPro: TEdit
    Left = 648
    Top = 77
    Width = 241
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
  end
  object chkFiltrar: TCheckBox
    Left = 896
    Top = 80
    Width = 57
    Height = 17
    Caption = 'Filtrar'
    TabOrder = 9
    OnClick = chkFiltrarClick
  end
  object btnExportar: TBitBtn
    Left = 923
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Exportar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 10
    OnClick = btnExportarClick
  end
  object ConsE120Ipd: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E120IPD.CODPRO,E120IPD.CPLIPD, E120IPD.CODDER,SUM(E120IPD' +
        '.QTDABE) AS QTDABE'
      '   FROM'
      '    E120IPD'
      '    INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND'
      '                          E120PED.CODFIL = E120IPD.CODFIL AND'
      '                          E120PED.NUMPED = E120IPD.NUMPED'
      '   INNER JOIN E075PRO ON E075PRO.CODEMP = E120IPD.CODEMP AND'
      '                          E075PRO.CODPRO = E120IPD.CODPRO'
      '   WHERE'
      '    E120IPD.TNSPRO IN ('#39'90100'#39','#39'90106'#39') AND'
      '    E120IPD.CODEMP = 1 AND'
      '    E120IPD.CODFIL = 1 AND'
      '    E120IPD.SITIPD IN (1,3) AND'
      '    E120PED.DATEMI BETWEEN :DATINI AND :DATFIM'
      '    GROUP BY E120IPD.CODPRO,E120IPD.CPLIPD, E120IPD.CODDER'
      '    ORDER BY QTDABE DESC')
    Left = 48
    Top = 184
    object ConsE120IpdCODPRO: TStringField
      Alignment = taCenter
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE120IpdCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object ConsE120IpdCODDER: TStringField
      Alignment = taCenter
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE120IpdQTDABE: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QTDABE'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object dsConsE120Ipd: TDataSource
    DataSet = ConsE120Ipd
    Left = 48
    Top = 248
  end
  object dsClientConsumoMP: TDataSource
    DataSet = DmOra.ClientConsumoMP
    OnDataChange = dsClientConsumoMPDataChange
    Left = 624
    Top = 152
  end
  object ConsUSU_T700CTM_P: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODMOD'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DERMOD'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_T700CTM_P.*, E075PRO.DESPRO'
      '   FROM USU_T700CTM_P'
      
        '   INNER JOIN E075PRO ON E075PRO.CODEMP = USU_T700CTM_P.USU_CODE' +
        'MP AND'
      
        '                         E075PRO.CODPRO = USU_T700CTM_P.USU_CODC' +
        'MP'
      '    WHERE'
      '      USU_T700CTM_P.USU_CODMOD = :CODMOD AND'
      '      USU_T700CTM_P.USU_DERMOD = :DERMOD')
    Left = 616
    Top = 248
    object ConsUSU_T700CTM_PUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUSU_T700CTM_PUSU_CODMOD: TStringField
      FieldName = 'USU_CODMOD'
      Size = 14
    end
    object ConsUSU_T700CTM_PUSU_SEQMOD: TIntegerField
      FieldName = 'USU_SEQMOD'
    end
    object ConsUSU_T700CTM_PUSU_CODCMP: TStringField
      FieldName = 'USU_CODCMP'
      Size = 14
    end
    object ConsUSU_T700CTM_PUSU_DERCMP: TStringField
      FieldName = 'USU_DERCMP'
      Size = 7
    end
    object ConsUSU_T700CTM_PUSU_QTDUTI: TFMTBCDField
      FieldName = 'USU_QTDUTI'
      Precision = 14
      Size = 5
    end
    object ConsUSU_T700CTM_PUSU_UNIME2: TStringField
      FieldName = 'USU_UNIME2'
      Size = 3
    end
    object ConsUSU_T700CTM_PUSU_DATALT: TDateTimeField
      FieldName = 'USU_DATALT'
    end
    object ConsUSU_T700CTM_PUSU_DERMOD: TStringField
      FieldName = 'USU_DERMOD'
      Size = 7
    end
    object ConsUSU_T700CTM_PDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
end
