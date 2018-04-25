object frmControleFaixa: TfrmControleFaixa
  Left = 0
  Top = 0
  Caption = 'Controle de Faixas Bordadas'
  ClientHeight = 618
  ClientWidth = 984
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
  object lblProduto: TLabel
    Left = 23
    Top = 14
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object Label1: TLabel
    Left = 260
    Top = 577
    Width = 60
    Height = 13
    Caption = 'N'#227'o Enviado'
  end
  object Label2: TLabel
    Left = 385
    Top = 577
    Width = 38
    Height = 13
    Caption = 'Enviado'
  end
  object Label3: TLabel
    Left = 509
    Top = 577
    Width = 40
    Height = 13
    Caption = 'Bordado'
  end
  object Label4: TLabel
    Left = 632
    Top = 577
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object lblCarga: TLabel
    Left = 352
    Top = 14
    Width = 29
    Height = 13
    Caption = 'Carga'
  end
  object dbgrd1: TDBGrid
    Left = 0
    Top = 43
    Width = 983
    Height = 526
    DataSource = dsClientConsE120Ipd
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    PopupMenu = pm1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbgrd1DrawColumnCell
    OnDblClick = dbgrd1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMPED'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATEMI'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Width = 70
        Visible = True
      end
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
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'Deriva'#231#227'o'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDPED'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pedido'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDABE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Aberto'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vaSitFai'
        Title.Alignment = taCenter
        Title.Caption = 'Faixa'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_PRECAR'
        Title.Alignment = taCenter
        Title.Caption = 'Carga'
        Width = 75
        Visible = True
      end>
  end
  object edtFiltro: TEdit
    Left = 839
    Top = 8
    Width = 41
    Height = 21
    TabOrder = 3
    Visible = False
    OnChange = edtFiltroChange
  end
  object btnAtualizar: TBitBtn
    Left = 898
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnAtualizarClick
  end
  object edtDesPro: TEdit
    Left = 64
    Top = 11
    Width = 273
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 1
    OnChange = edtDesProChange
  end
  object rgGrupo: TRadioGroup
    Left = 519
    Top = 4
    Width = 302
    Height = 37
    TabOrder = 4
  end
  object rbTodos: TRadioButton
    Left = 764
    Top = 16
    Width = 49
    Height = 17
    Caption = 'Todos'
    Checked = True
    TabOrder = 5
    TabStop = True
    OnClick = rbTodosClick
  end
  object rbEnviado: TRadioButton
    Left = 625
    Top = 16
    Width = 58
    Height = 17
    Caption = 'Enviado'
    TabOrder = 6
    OnClick = rbEnviadoClick
  end
  object rbBordado: TRadioButton
    Left = 694
    Top = 16
    Width = 60
    Height = 17
    Caption = 'Bordado'
    TabOrder = 7
    OnClick = rbBordadoClick
  end
  object dbedtTQtdNaoEnv: TDBEdit
    Left = 260
    Top = 591
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'TQtdNaoEnv'
    DataSource = dsClientConsE120Ipd
    ReadOnly = True
    TabOrder = 8
  end
  object dbedtTQtdEnv: TDBEdit
    Left = 385
    Top = 591
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'TQtdEnv'
    DataSource = dsClientConsE120Ipd
    ReadOnly = True
    TabOrder = 9
  end
  object dbedtTQtdBord: TDBEdit
    Left = 509
    Top = 591
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'TQtdBord'
    DataSource = dsClientConsE120Ipd
    ReadOnly = True
    TabOrder = 10
  end
  object dbedtTQtdTotal: TDBEdit
    Left = 632
    Top = 591
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'TQtdTotal'
    DataSource = dsClientConsE120Ipd
    ReadOnly = True
    TabOrder = 11
  end
  object rbNaoEnv: TRadioButton
    Left = 533
    Top = 16
    Width = 79
    Height = 17
    Caption = 'N'#227'o Enviado'
    TabOrder = 12
    OnClick = rbNaoEnvClick
  end
  object edtPreCar: TEdit
    Left = 386
    Top = 11
    Width = 110
    Height = 21
    TabOrder = 13
    OnChange = edtPreCarChange
    OnKeyPress = edtPreCarKeyPress
  end
  object ConsE120Ipd: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT E120IPD.CODEMP, E120IPD.CODFIL, E120IPD.SEQIPD,'
      
        '       E120IPD.CODPRO, E120IPD.CODDER, E120IPD.QTDPED, E120IPD.Q' +
        'TDABE, E120IPD.SITIPD, E120IPD.USU_SITFAI, E120IPD.USU_DATSITFAI' +
        ','
      
        '       E120PED.NUMPED, E120PED.CODCLI, E120PED.DATEMI, E120PED.U' +
        'SU_PRECAR,'
      '       E085CLI.NOMCLI,'
      '       E075PRO.DESPRO'
      '  FROM E120IPD'
      '    INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND'
      '                          E120PED.CODFIL = E120IPD.CODFIL AND'
      '                          E120PED.NUMPED = E120IPD.NUMPED'
      '    INNER JOIN E085CLI ON E085CLI.CODCLI =  E120PED.CODCLI'
      '    INNER JOIN E075PRO ON E075PRO.CODEMP = E120IPD.CODEMP AND'
      '                          E075PRO.CODPRO = E120IPD.CODPRO'
      '   WHERE'
      '        E120IPD.SITIPD IN (1,2)'
      'AND E075PRO.USU_INFAIBOR = '#39'SIM'#39
      
        '   ORDER BY E120IPD.DATGER DESC, E120IPD.NUMPED DESC, E120IPD.QT' +
        'DABE DESC')
    Left = 376
    Top = 168
    object ConsE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE120IpdQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdSITIPD: TIntegerField
      FieldName = 'SITIPD'
    end
    object ConsE120IpdUSU_SITFAI: TStringField
      FieldName = 'USU_SITFAI'
      Size = 30
    end
    object ConsE120IpdUSU_DATSITFAI: TStringField
      FieldName = 'USU_DATSITFAI'
      Size = 30
    end
    object ConsE120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ConsE120IpdCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE120IpdDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE120IpdNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsE120IpdDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ConsE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ConsE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ConsE120IpdUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
  end
  object dsClientConsE120Ipd: TDataSource
    DataSet = ClientConsE120Ipd
    Left = 496
    Top = 160
  end
  object ProviderConsE120Ipd: TDataSetProvider
    DataSet = ConsE120Ipd
    Left = 376
    Top = 224
  end
  object ClientConsE120Ipd: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsE120Ipd'
    OnCalcFields = ClientConsE120IpdCalcFields
    Left = 376
    Top = 280
    object ClientConsE120IpdCODPRO: TStringField
      Alignment = taCenter
      FieldName = 'CODPRO'
      Size = 14
    end
    object ClientConsE120IpdCODDER: TStringField
      Alignment = taCenter
      FieldName = 'CODDER'
      Size = 7
    end
    object ClientConsE120IpdQTDPED: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdQTDABE: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdSITIPD: TIntegerField
      Alignment = taCenter
      FieldName = 'SITIPD'
    end
    object ClientConsE120IpdUSU_SITFAI: TStringField
      Alignment = taCenter
      FieldName = 'USU_SITFAI'
      Size = 30
    end
    object ClientConsE120IpdUSU_DATSITFAI: TStringField
      Alignment = taCenter
      FieldName = 'USU_DATSITFAI'
      Size = 30
    end
    object ClientConsE120IpdNUMPED: TIntegerField
      Alignment = taCenter
      FieldName = 'NUMPED'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ClientConsE120IpdCODCLI: TIntegerField
      Alignment = taCenter
      FieldName = 'CODCLI'
    end
    object ClientConsE120IpdDATEMI: TDateTimeField
      Alignment = taCenter
      FieldName = 'DATEMI'
    end
    object ClientConsE120IpdNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ClientConsE120IpdDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ClientConsE120IpdvaSitFai: TStringField
      FieldKind = fkCalculated
      FieldName = 'vaSitFai'
      Size = 100
      Calculated = True
    end
    object ClientConsE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ClientConsE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ClientConsE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ClientConsE120IpdvnQtdNaoEnv: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnQtdNaoEnv'
    end
    object ClientConsE120IpdvnQtdEnv: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnQtdEnv'
    end
    object ClientConsE120IpdvnQtdBord: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnQtdBord'
    end
    object ClientConsE120IpdUSU_PRECAR: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_PRECAR'
    end
    object ClientConsE120IpdTQtdNaoEnv: TAggregateField
      Alignment = taCenter
      FieldName = 'TQtdNaoEnv'
      Active = True
      Expression = 'sum(vnQtdNaoEnv)'
    end
    object ClientConsE120IpdTQtdEnv: TAggregateField
      Alignment = taCenter
      FieldName = 'TQtdEnv'
      Active = True
      Expression = 'sum(vnQtdEnv)'
    end
    object ClientConsE120IpdTQtdBord: TAggregateField
      Alignment = taCenter
      FieldName = 'TQtdBord'
      Active = True
      Expression = 'sum(vnQtdBord)'
    end
    object ClientConsE120IpdTQtdTotal: TAggregateField
      Alignment = taCenter
      FieldName = 'TQtdTotal'
      Active = True
      Expression = 'sum(QTDABE)'
    end
  end
  object CadE120Ipd: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODFIL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMPED'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SEQIPD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CODEMP, CODFIL, NUMPED, SEQIPD, USU_SITFAI, USU_DATSITFAI'
      '  FROM E120IPD'
      '  WHERE'
      'CODEMP = :CODEMP AND'
      'CODFIL = :CODFIL AND'
      'NUMPED = :NUMPED AND'
      'SEQIPD = :SEQIPD')
    Left = 504
    Top = 232
    object CadE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object CadE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object CadE120IpdUSU_SITFAI: TStringField
      FieldName = 'USU_SITFAI'
      Size = 30
    end
    object CadE120IpdUSU_DATSITFAI: TStringField
      FieldName = 'USU_DATSITFAI'
      Size = 30
    end
  end
  object pm1: TPopupMenu
    Left = 648
    Top = 184
    object mnuFiltrar: TMenuItem
      Caption = 'Filtrar por este'
      OnClick = mnuFiltrarClick
    end
    object mnuResetar: TMenuItem
      Caption = 'Limpar Lan'#231'amento'
      OnClick = mnuResetarClick
    end
  end
end
