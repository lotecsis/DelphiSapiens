object frmDividirPedido: TfrmDividirPedido
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dividir Pedido'
  ClientHeight = 672
  ClientWidth = 994
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
  object lbl1: TLabel
    Left = 51
    Top = 17
    Width = 44
    Height = 13
    Caption = 'Pedido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 51
    Top = 133
    Width = 44
    Height = 13
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 44
    Top = 58
    Width = 51
    Height = 13
    Caption = 'Emiss'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 40
    Top = 83
    Width = 55
    Height = 13
    Caption = 'Situa'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 7
    Top = 108
    Width = 88
    Height = 13
    Caption = 'Representante:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 257
    Top = 633
    Width = 45
    Height = 13
    Caption = 'Total 101'
  end
  object lbl7: TLabel
    Left = 818
    Top = 633
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object lbl8: TLabel
    Left = 17
    Top = 633
    Width = 33
    Height = 13
    Caption = 'Total 1'
  end
  object lbl9: TLabel
    Left = 208
    Top = 633
    Width = 11
    Height = 13
    Caption = '%'
  end
  object lbl10: TLabel
    Left = 460
    Top = 633
    Width = 11
    Height = 13
    Caption = '%'
  end
  object lblStatus: TLabel
    Left = 8
    Top = 656
    Width = 57
    Height = 13
  end
  object edtNumPed: TEdit
    Left = 99
    Top = 14
    Width = 100
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 9
    ParentFont = False
    TabOrder = 0
    OnExit = edtNumPedExit
    OnKeyDown = edtNumPedKeyDown
    OnKeyPress = edtNumPedKeyPress
  end
  object btnNumPed: TBitBtn
    Left = 174
    Top = 15
    Width = 22
    Height = 19
    Caption = '...'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 5
    TabStop = False
    OnClick = btnNumPedClick
  end
  object dbedtvaDesCli: TDBEdit
    Left = 99
    Top = 131
    Width = 566
    Height = 19
    Ctl3D = False
    DataField = 'vaDesCli'
    DataSource = dsConsE120Ped
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object dbedtDATEMI: TDBEdit
    Left = 99
    Top = 56
    Width = 100
    Height = 19
    Ctl3D = False
    DataField = 'DATEMI'
    DataSource = dsConsE120Ped
    ParentCtl3D = False
    TabOrder = 1
  end
  object dbedtVA_SITPED: TDBEdit
    Left = 99
    Top = 81
    Width = 100
    Height = 19
    Ctl3D = False
    DataField = 'VA_SITPED'
    DataSource = dsConsE120Ped
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
  end
  object dbedtvaDesRep: TDBEdit
    Left = 99
    Top = 106
    Width = 364
    Height = 19
    Ctl3D = False
    DataField = 'vaDesRep'
    DataSource = dsConsE120Ped
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object dbgrdItens: TDBGrid
    Left = 0
    Top = 157
    Width = 993
    Height = 453
    DataSource = dsClientConsE120IPD
    TabOrder = 6
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
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPLIPD'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'Cor'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDPED'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pedido'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDABE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Aberto'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qtd101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = '101'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDFAT'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Fat.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDCAN'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Can.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODTPR'
        Title.Alignment = taCenter
        Title.Caption = 'Tab. Pre'#231'o'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PREUNI'
        Title.Alignment = taCenter
        Title.Caption = 'Pre. Unit'#225'rio'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBRU'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Bruto'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRLIQ'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. L'#237'quido'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VA_SITIPD'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TNSPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Transa'#231#227'o'
        Width = 70
        Visible = True
      end>
  end
  object dbedtTvnVlr101: TDBEdit
    Left = 308
    Top = 630
    Width = 100
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'TvnVlr101'
    DataSource = dsClientConsE120IPD
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    OnChange = dbedtTvnVlr101Change
  end
  object dbedtTVlrBru: TDBEdit
    Left = 848
    Top = 630
    Width = 100
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'TVlrBru'
    DataSource = dsClientConsE120IPD
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object dbedtTvnVlr1: TDBEdit
    Left = 56
    Top = 630
    Width = 100
    Height = 19
    TabStop = False
    Color = clWhite
    Ctl3D = False
    DataField = 'TvnVlr1'
    DataSource = dsClientConsE120IPD
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
    OnChange = dbedtTvnVlr1Change
  end
  object dbedtTPer1: TDBEdit
    Left = 156
    Top = 630
    Width = 50
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'TPer1'
    DataSource = dsClientConsE120IPD
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object dbedtTPer101: TDBEdit
    Left = 408
    Top = 630
    Width = 50
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'TPer101'
    DataSource = dsClientConsE120IPD
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object btnProcessar: TBitBtn
    Left = 886
    Top = 8
    Width = 100
    Height = 25
    Caption = 'Processar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 12
    OnClick = btnProcessarClick
  end
  object ConsE120Ped: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    OnCalcFields = ConsE120PedCalcFields
    Parameters = <
      item
        Name = 'NUMPED'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E120PED.CODEMP, E120PED.CODFIL, E120PED.NUMPED, E120PED.C' +
        'ODCLI, E120PED.DATEMI, E120PED.SITPED,'
      
        '             E120PED.CODREP, E120PED.CODCPG, E120PED.TNSPRO, E12' +
        '0PED.USU_PRECAR, E120PED.USU_NUMCOM,'
      '       E085CLI.NOMCLI, E085CLI.CIDCLI, E085CLI.SIGUFS,'
      '       E090REP.NOMREP, E090REP.APEREP,'
      '       DECODE(E120PED.SITPED,'
      '              1, '#39'Aberto Total'#39','
      '              2, '#39'Aberto Parcial'#39','
      '              3, '#39'Suspenso'#39','
      '              4, '#39'Liquidado'#39','
      '              5, '#39'Cancelado'#39','
      '              6, '#39'Aguardando Integra'#231#227'o WMS'#39','
      '              7, '#39'Em Transmiss'#227'o'#39','
      '              8, '#39'Prepara'#231#227'o An'#225'lise ou NF'#39','
      '              9, '#39'N'#227'o Fechado'#39','
      '              E120PED.SITPED) va_SITPED'
      '   FROM E120PED'
      '   INNER JOIN E085CLI ON E085CLI.CODCLI = E120PED.CODCLI'
      '   INNER JOIN E090REP ON E090REP.CODREP = E120PED.CODREP'
      '    WHERE'
      '      E120PED.CODEMP = 1 AND'
      '      E120PED.CODFIL = 1 AND'
      '      E120PED.NUMPED = :NUMPED')
    Left = 240
    Top = 16
    object ConsE120PedCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120PedCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120PedNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120PedCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE120PedDATEMI: TDateTimeField
      Alignment = taCenter
      FieldName = 'DATEMI'
    end
    object ConsE120PedSITPED: TIntegerField
      FieldName = 'SITPED'
    end
    object ConsE120PedCODREP: TIntegerField
      FieldName = 'CODREP'
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
    object ConsE120PedNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ConsE120PedAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ConsE120PedVA_SITPED: TStringField
      Alignment = taCenter
      FieldName = 'VA_SITPED'
      ReadOnly = True
      Size = 40
    end
    object ConsE120PedvaDesCli: TStringField
      FieldKind = fkCalculated
      FieldName = 'vaDesCli'
      Size = 150
      Calculated = True
    end
    object ConsE120PedvaDesRep: TStringField
      FieldKind = fkCalculated
      FieldName = 'vaDesRep'
      Size = 150
      Calculated = True
    end
    object ConsE120PedCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsE120PedTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE120PedUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsE120PedUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
  end
  object dsConsE120Ped: TDataSource
    DataSet = ConsE120Ped
    Left = 336
    Top = 8
  end
  object ConsE120IPD: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMPED'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E120IPD.CODEMP, E120IPD.CODFIL, E120IPD.NUMPED, E120IPD.S' +
        'EQIPD,'
      
        '       E120IPD.TNSPRO, E120IPD.CODPRO, E120IPD.CODDER, E120IPD.C' +
        'PLIPD,'
      
        '       E120IPD.CODFAM, E120IPD.QTDPED, E120IPD.QTDFAT, E120IPD.Q' +
        'TDCAN,'
      
        '       E120IPD.QTDABE, E120IPD.CODTPR, E120IPD.PREUNI, E120IPD.V' +
        'LRBRU,'
      
        '       E120IPD.VLRLIQ, E120IPD.SITIPD, E120IPD.CODDEP, E120IPD.U' +
        'SU_NUMCOM,'
      '       DECODE(E120IPD.SITIPD,'
      '              1, '#39'Aberto Total'#39','
      '              2, '#39'Aberto Parcial'#39','
      '              3, '#39'Suspenso'#39','
      '              4, '#39'Liquidado'#39','
      '              5, '#39'Cancelado'#39','
      '              6, '#39'Aguardando Integra'#231#227'o WMS'#39','
      '              7, '#39'Em Transmiss'#227'o'#39','
      '              8, '#39'Prepara'#231#227'o An'#225'lise ou NF'#39','
      '              9, '#39'N'#227'o Fechado'#39','
      '              E120IPD.SITIPD) va_SITIPD'
      '    FROM E120IPD'
      '     INNER JOIN E075PRO ON E075PRO.CODEMP = E120IPD.CODEMP AND'
      '                           E075PRO.CODPRO = E120IPD.CODPRO'
      '     WHERE'
      '       E120IPD.CODEMP = 1 AND'
      '       E120IPD.CODFIL = 1 AND'
      '       E120IPD.NUMPED = :NUMPED'
      '       ORDER BY E120IPD.SEQIPD')
    Left = 224
    Top = 248
    object ConsE120IPDCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120IPDCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120IPDNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120IPDSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsE120IPDTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE120IPDCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE120IPDCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE120IPDCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object ConsE120IPDCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE120IPDQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsE120IPDQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ConsE120IPDQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ConsE120IPDQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120IPDCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE120IPDPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 21
      Size = 10
    end
    object ConsE120IPDVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ConsE120IPDVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE120IPDSITIPD: TIntegerField
      FieldName = 'SITIPD'
    end
    object ConsE120IPDVA_SITIPD: TStringField
      FieldName = 'VA_SITIPD'
      ReadOnly = True
      Size = 40
    end
    object ConsE120IPDCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE120IPDUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
  end
  object ProviderConsE120IPD: TDataSetProvider
    DataSet = ConsE120IPD
    Left = 224
    Top = 296
  end
  object ClientConsE120IPD: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsE120IPD'
    BeforePost = ClientConsE120IPDBeforePost
    OnCalcFields = ClientConsE120IPDCalcFields
    Left = 224
    Top = 352
    object ClientConsE120IPDCODEMP: TIntegerField
      Alignment = taCenter
      FieldName = 'CODEMP'
    end
    object ClientConsE120IPDCODFIL: TIntegerField
      Alignment = taCenter
      FieldName = 'CODFIL'
    end
    object ClientConsE120IPDNUMPED: TIntegerField
      Alignment = taCenter
      FieldName = 'NUMPED'
    end
    object ClientConsE120IPDSEQIPD: TIntegerField
      Alignment = taCenter
      FieldName = 'SEQIPD'
    end
    object ClientConsE120IPDTNSPRO: TStringField
      Alignment = taCenter
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ClientConsE120IPDCODPRO: TStringField
      Alignment = taCenter
      FieldName = 'CODPRO'
      Size = 14
    end
    object ClientConsE120IPDCODDER: TStringField
      Alignment = taCenter
      FieldName = 'CODDER'
      Size = 7
    end
    object ClientConsE120IPDCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object ClientConsE120IPDCODFAM: TStringField
      Alignment = taCenter
      FieldName = 'CODFAM'
      Size = 6
    end
    object ClientConsE120IPDQTDPED: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IPDQTDFAT: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IPDQTDCAN: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IPDQTDABE: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IPDCODTPR: TStringField
      Alignment = taCenter
      FieldName = 'CODTPR'
      Size = 4
    end
    object ClientConsE120IPDPREUNI: TFMTBCDField
      Alignment = taCenter
      FieldName = 'PREUNI'
      DisplayFormat = ',0.00'
      Precision = 21
      Size = 10
    end
    object ClientConsE120IPDVLRBRU: TBCDField
      Alignment = taCenter
      FieldName = 'VLRBRU'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IPDVLRLIQ: TBCDField
      Alignment = taCenter
      FieldName = 'VLRLIQ'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IPDSITIPD: TIntegerField
      Alignment = taCenter
      FieldName = 'SITIPD'
    end
    object ClientConsE120IPDVA_SITIPD: TStringField
      Alignment = taCenter
      FieldName = 'VA_SITIPD'
      ReadOnly = True
      Size = 40
    end
    object ClientConsE120IPDQtd101: TIntegerField
      Alignment = taCenter
      FieldKind = fkInternalCalc
      FieldName = 'Qtd101'
    end
    object ClientConsE120IPDvnVlr101: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnVlr101'
    end
    object ClientConsE120IPDvnVlr1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnVlr1'
    end
    object ClientConsE120IPDCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ClientConsE120IPDUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
    object ClientConsE120IPDTvnVlr101: TAggregateField
      Alignment = taCenter
      FieldName = 'TvnVlr101'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(vnVlr101)'
    end
    object ClientConsE120IPDTVlrBru: TAggregateField
      Alignment = taCenter
      FieldName = 'TVlrBru'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(VLRBRU)'
    end
    object ClientConsE120IPDTvnVlr1: TAggregateField
      Alignment = taCenter
      FieldName = 'TvnVlr1'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(vnVlr1)'
    end
    object ClientConsE120IPDTPer1: TAggregateField
      Alignment = taCenter
      FieldName = 'TPer1'
      Active = True
      DisplayFormat = ',0.00'
      Expression = '(SUM(vnVlr1) * 100) / SUM(VLRBRU)'
    end
    object ClientConsE120IPDTPer101: TAggregateField
      Alignment = taCenter
      FieldName = 'TPer101'
      Active = True
      DisplayFormat = ',0.00'
      Expression = '(SUM(vnVlr101) * 100) / SUM(VLRBRU)'
    end
    object ClientConsE120IPDTQtd101: TAggregateField
      Alignment = taCenter
      FieldName = 'TQtd101'
      Active = True
      Expression = 'sum(Qtd101)'
    end
  end
  object dsClientConsE120IPD: TDataSource
    DataSet = ClientConsE120IPD
    Left = 224
    Top = 408
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
    Left = 432
    Top = 224
  end
  object ExistePed101: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMPED'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT NUMPED'
      '  FROM E120PED'
      '  WHERE'
      '    CODEMP = 1 AND'
      '    CODFIL = 101 AND'
      '    NUMPED = :NUMPED')
    Left = 480
    Top = 32
    object ExistePed101NUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
  end
end
