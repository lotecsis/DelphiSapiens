object FAddProPedSysRep: TFAddProPedSysRep
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 296
  ClientWidth = 519
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
  object Label1: TLabel
    Left = 36
    Top = 18
    Width = 54
    Height = 13
    Caption = 'Produto..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 46
    Width = 66
    Height = 13
    Caption = 'Deriva'#231#227'o..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 74
    Width = 80
    Height = 13
    Caption = 'Qtde. Pedida..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 25
    Top = 103
    Width = 65
    Height = 13
    Caption = 'Tab.Pre'#231'o..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 12
    Top = 135
    Width = 78
    Height = 13
    Caption = '% Desconto..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LDsCodPro: TLabel
    Left = 212
    Top = 17
    Width = 3
    Height = 13
  end
  object LDsCodDer: TLabel
    Left = 212
    Top = 45
    Width = 3
    Height = 13
  end
  object Label5: TLabel
    Left = 45
    Top = 238
    Width = 82
    Height = 13
    Caption = 'Pre'#231'o Tabela..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 17
    Top = 263
    Width = 110
    Height = 13
    Caption = 'Pre'#231'o C/Desconto..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdCodPro: TEdit
    Left = 96
    Top = 11
    Width = 110
    Height = 21
    TabOrder = 0
    OnExit = EdCodProExit
    OnKeyDown = EdCodProKeyDown
  end
  object BCodPro: TBitBtn
    Left = 184
    Top = 12
    Width = 20
    Height = 19
    Caption = '...'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 5
    TabStop = False
    OnClick = BCodProClick
  end
  object EdCodDer: TEdit
    Left = 96
    Top = 38
    Width = 110
    Height = 21
    TabOrder = 1
    OnExit = EdCodDerExit
    OnKeyDown = EdCodDerKeyDown
  end
  object EdQtdPed: TEdit
    Left = 96
    Top = 67
    Width = 110
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object BCodDer: TBitBtn
    Left = 184
    Top = 39
    Width = 20
    Height = 19
    Caption = '...'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 6
    TabStop = False
    OnClick = BCodDerClick
  end
  object EdCodTpr: TEdit
    Left = 96
    Top = 96
    Width = 110
    Height = 21
    TabOrder = 3
    OnExit = EdCodTprExit
  end
  object Panel1: TPanel
    Left = 96
    Top = 127
    Width = 142
    Height = 76
    BevelOuter = bvLowered
    TabOrder = 4
    object Desc2: TCurrencyEdit
      Left = 51
      Top = 3
      Width = 40
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 1
      OnExit = Desc2Exit
    end
    object Desc6: TCurrencyEdit
      Left = 98
      Top = 28
      Width = 40
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 5
      OnExit = Desc6Exit
    end
    object Desc1: TCurrencyEdit
      Left = 4
      Top = 3
      Width = 40
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 0
      OnExit = Desc1Exit
    end
    object Desc5: TCurrencyEdit
      Left = 51
      Top = 28
      Width = 40
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 4
      OnExit = Desc5Exit
    end
    object Desc4: TCurrencyEdit
      Left = 4
      Top = 27
      Width = 40
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 3
      OnExit = Desc4Exit
    end
    object Desc3: TCurrencyEdit
      Left = 98
      Top = 3
      Width = 40
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 2
      OnExit = Desc3Exit
    end
    object EdTotDesc: TCurrencyEdit
      Left = 35
      Top = 52
      Width = 74
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabStop = False
      Alignment = taCenter
      Color = 14671807
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 6
    end
  end
  object EdVlrOri: TCurrencyEdit
    Left = 131
    Top = 235
    Width = 100
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    TabStop = False
    Ctl3D = False
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object EdPreUni: TCurrencyEdit
    Left = 131
    Top = 260
    Width = 100
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    TabStop = False
    Ctl3D = False
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object BProcessar: TBitBtn
    Left = 408
    Top = 263
    Width = 103
    Height = 25
    Caption = 'Processar'
    DoubleBuffered = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
      A7DDFF40B5FF14A4FF14A4FF14A4FFA9A5A0A9A5A0A9A5A0A9A5A0A9A5A0A9A5
      A0A9A5A0A9A5A0A9A5A0FFFFFFFFFFFF23AAFF15A1FF1FABFF49C7FF5CD1FFA9
      A5A0FEFCFBFCFAF6E7CCBCB06641F2E2D7F8EFE6F8EEE2A9A5A0FFFFFFFFFFFF
      14A4FF35B8FF49C7FF87E1FFA5EBFFA9A5A0FCFAF6FCF7F2B66B41B55E29C081
      5FF8EEE2F7EBDEA9A5A0FFFFFFFFFFFF14A4FF58CAFF46C6FF82DEFFA1EAFFA9
      A5A0FCF7F2E2C5B4C6763BC57335AC501CEFDCCCF6E9D9A9A5A0FFFFFFFFFFFF
      14A4FF73D4FF43C6FF7EDDFF9CE7FFA9A5A0FBF4EED5A78BC47E50BF7E5AC26A
      2ABF7F5AF4E6D5A9A5A0FFFFFFFFFFFF14A4FF8FDDFF3FC5FF78DCFF96E3FFA9
      A5A0FAF2EAF8EFE6F8EEE2F7EBDEC17745A34516EBD5C0A9A5A0FFFFFFFFFFFF
      14A4FFACE6FF43C7FF73DAFF90E3FFA9A5A0F8EFE6F8EEE2F7EBDEF6E9D9CB97
      77A34719B87552A9A5A0FFFFFFFFFFFF1DA8FF7FD5FFB1E7FFC5F0FFC9F2FFA9
      A5A0F8EEE2F7EBDEF6E9D9F4E6D5F3E3D1AC5F3BB26B46A9A5A0FFFFFFFFFFFF
      1EA8FF12A0FF1BABFF31BCFF3EC6FFA9A5A0A9A5A0A9A5A0A9A5A0A9A5A0A9A5
      A0A9A5A0A9A5A0A9A5A0FFFFFFFFFFFF14A4FF2EB4FF47C6FF86E1FFA6EBFF90
      E9FF75E6FF79EAFF76E7FF56D9FF1EB2FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
      14A4FF55C9FF45C6FF82DEFFA3EAFF89E6FF69E0FF6BE2FF68E1FF4DD4FF1DB0
      FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF6ED1FF42C5FF7EDDFF9DE7FF81
      E2FF5CD9FF5BDAFF59D9FF43CEFF1AACFF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
      14A4FF8ADCFF3FC5FF78DAFF97E5FF77DDFF4ED3FF4DD3FF4CD3FF39C6FF16A7
      FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FFA7E5FF3AC5FF73DAFF91E2FF6E
      D9FF41CBFF40CBFF3ECBFF2FC0FF23AFFF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
      23AAFF97DEFFB6EBFFB0EBFFBCEFFFB0EBFF9FE6FF9EE6FF9DE6FFABE9FF89DC
      FF26ACFFFFFFFFFFFFFFFFFFFFFFFFFFA7DDFF40B5FF14A4FF14A4FF14A4FF14
      A4FF14A4FF14A4FF14A4FF14A4FF31AFFFA7DDFFFFFFFFFFFFFF}
    ParentDoubleBuffered = False
    TabOrder = 9
    OnClick = BProcessarClick
  end
  object ValidaProduto: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select codpro,despro,codfam,codagp from e075pro where codemp = :' +
        'codemp and'
      '                                 codpro = :codpro')
    Left = 360
    Top = 7
    object ValidaProdutoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ValidaProdutoDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ValidaProdutoCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ValidaProdutoCODAGP: TStringField
      FieldName = 'CODAGP'
      Size = 5
    end
  end
  object ConsE081Itp: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codtpr'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'datini'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e081itp.* from e081itp'
      '                       where'
      '                       e081itp.codemp = :codemp and'
      '                       e081itp.codtpr = :codtpr and'
      '                       e081itp.datini = :datini and'
      '                       e081itp.codpro = :codpro and'
      '                       e081itp.codder = :codder')
    Left = 288
    Top = 16
    object ConsE081ItpCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE081ItpCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE081ItpDATINI: TDateTimeField
      FieldName = 'DATINI'
    end
    object ConsE081ItpCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE081ItpCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE081ItpQTDMAX: TBCDField
      FieldName = 'QTDMAX'
      Precision = 11
      Size = 2
    end
    object ConsE081ItpPREBAS: TFMTBCDField
      FieldName = 'PREBAS'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE081ItpPERLIM: TBCDField
      FieldName = 'PERLIM'
      Precision = 5
      Size = 2
    end
    object ConsE081ItpPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE081ItpTOLMAI: TBCDField
      FieldName = 'TOLMAI'
      Precision = 5
      Size = 2
    end
    object ConsE081ItpTOLMEN: TBCDField
      FieldName = 'TOLMEN'
      Precision = 5
      Size = 2
    end
    object ConsE081ItpSITREG: TStringField
      FieldName = 'SITREG'
      Size = 1
    end
    object ConsE081ItpINDEXC: TStringField
      FieldName = 'INDEXC'
      Size = 1
    end
    object ConsE081ItpINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsE081ItpDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsE081ItpHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsE081ItpDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE081ItpHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE081ItpUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE081ItpDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ConsE081ItpHORALT: TIntegerField
      FieldName = 'HORALT'
    end
    object ConsE081ItpUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object ConsE081ItpPROEXT: TStringField
      FieldName = 'PROEXT'
      Size = 30
    end
    object ConsE081ItpPREMT2: TFMTBCDField
      FieldName = 'PREMT2'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpVLRCMO: TFMTBCDField
      FieldName = 'VLRCMO'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpVLRCTE: TFMTBCDField
      FieldName = 'VLRCTE'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpVLRCPR: TFMTBCDField
      FieldName = 'VLRCPR'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpPREORC: TFMTBCDField
      FieldName = 'PREORC'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpDATORC: TDateTimeField
      FieldName = 'DATORC'
    end
    object ConsE081ItpCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE081ItpCODPRB: TStringField
      FieldName = 'CODPRB'
      Size = 14
    end
    object ConsE081ItpVLTMAI: TFMTBCDField
      FieldName = 'VLTMAI'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpVLTMEN: TFMTBCDField
      FieldName = 'VLTMEN'
      Precision = 14
      Size = 5
    end
    object ConsE081ItpOBSITP: TStringField
      FieldName = 'OBSITP'
      Size = 99
    end
    object ConsE081ItpUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
  end
  object E120IpdSeqIpd: TIBQuery
    Database = DmFire.IBDBanco
    Transaction = DmFire.IBTransacao
    SQL.Strings = (
      'select max(e120ipd.seqipd) as ultimo from e120ipd'
      '                                     where'
      
        '                                     e120ipd.codemp = :codemp an' +
        'd'
      
        '                                     e120ipd.codfil = :codfil an' +
        'd'
      
        '                                     e120ipd.numcon = :numcon an' +
        'd'
      '                                     e120ipd.codrep = :codrep'
      '')
    Left = 392
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codfil'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numcon'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codrep'
        ParamType = ptUnknown
      end>
    object E120IpdSeqIpdULTIMO: TIntegerField
      FieldName = 'ULTIMO'
      ProviderFlags = []
    end
  end
end
