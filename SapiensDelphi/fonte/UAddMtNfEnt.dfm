object FAddMtNfEnt: TFAddMtNfEnt
  Left = 0
  Top = 0
  Caption = 'FAddMtNfEnt'
  ClientHeight = 216
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 32
    Width = 48
    Height = 13
    Caption = 'Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 59
    Width = 89
    Height = 13
    Caption = 'Prod.Forncedor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 86
    Width = 88
    Height = 13
    Caption = 'Ordem Compra:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 113
    Width = 64
    Height = 13
    Caption = 'Qtd.Ordem:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 26
    Top = 140
    Width = 78
    Height = 13
    Caption = 'Qtd.Recebido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 168
    Width = 64
    Height = 13
    Caption = 'Pre'#231'o Unit.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LDsCodPro: TLabel
    Left = 226
    Top = 32
    Width = 3
    Height = 13
  end
  object LDsProFor: TLabel
    Left = 224
    Top = 58
    Width = 3
    Height = 13
  end
  object Label7: TLabel
    Left = 56
    Top = 196
    Width = 48
    Height = 13
    Caption = '% ICMS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdCodPro: TEdit
    Left = 110
    Top = 26
    Width = 110
    Height = 21
    TabOrder = 0
    OnExit = EdCodProExit
    OnKeyDown = EdCodProKeyDown
  end
  object EdProFor: TEdit
    Left = 110
    Top = 53
    Width = 110
    Height = 21
    TabOrder = 1
    OnExit = EdProForExit
    OnKeyDown = EdProForKeyDown
  end
  object EdNumOcp: TEdit
    Left = 110
    Top = 79
    Width = 110
    Height = 21
    ReadOnly = True
    TabOrder = 2
    OnExit = EdNumOcpExit
    OnKeyDown = EdNumOcpKeyDown
  end
  object EdQtdOcp: TCurrencyEdit
    Left = 111
    Top = 109
    Width = 110
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = ' ,0.00;- ,0.00'
    TabOrder = 3
  end
  object EdQtdRec: TCurrencyEdit
    Left = 110
    Top = 134
    Width = 110
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = ' ,0.00;- ,0.00'
    TabOrder = 4
    OnExit = EdQtdRecExit
  end
  object BCodPro: TBitBtn
    Left = 200
    Top = 27
    Width = 19
    Height = 19
    Caption = '...'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 8
    TabStop = False
    OnClick = BCodProClick
  end
  object BProFor: TBitBtn
    Left = 200
    Top = 54
    Width = 19
    Height = 19
    Caption = '...'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 9
    TabStop = False
    OnClick = BProForClick
  end
  object BNumOcp: TBitBtn
    Left = 200
    Top = 81
    Width = 19
    Height = 19
    Caption = '...'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 10
    TabStop = False
    OnClick = BNumOcpClick
  end
  object EdPreUni: TCurrencyEdit
    Left = 111
    Top = 159
    Width = 110
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = ' ,0.00;- ,0.00'
    TabOrder = 5
  end
  object BProcessa: TBitBtn
    Left = 488
    Top = 184
    Width = 94
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
    TabOrder = 7
    OnClick = BProcessaClick
  end
  object EdPerIcm: TCurrencyEdit
    Left = 110
    Top = 189
    Width = 110
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = ' ,0.00;- ,0.00'
    TabOrder = 6
  end
  object ChSaldoRestante: TCheckBox
    Left = 332
    Top = 191
    Width = 139
    Height = 17
    Caption = 'Cancelar saldo restante?'
    TabOrder = 11
  end
  object ValidaProduto: TADOQuery
    Connection = Dm.ADOBanco
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
      
        'select codpro,despro,codfam from e075pro where codemp = :codemp ' +
        'and'
      '                                 codpro = :codpro')
    Left = 376
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
  end
  object ConsE403Fpr: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfor'
        DataType = ftInteger
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
        Name = 'profor'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e403fpr where codemp = :codemp and'
      '                            codfor = :codfor and'
      '                            codpro = :codpro and'
      '                            profor = :profor')
    Left = 440
    Top = 32
    object ConsE403FprCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE403FprCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsE403FprCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE403FprCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE403FprPROFOR: TStringField
      FieldName = 'PROFOR'
      Size = 30
    end
    object ConsE403FprDESFOR: TStringField
      FieldName = 'DESFOR'
      Size = 250
    end
    object ConsE403FprUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE403FprPRZENT: TIntegerField
      FieldName = 'PRZENT'
    end
    object ConsE403FprCODBAR: TBCDField
      FieldName = 'CODBAR'
      Precision = 14
      Size = 0
    end
    object ConsE403FprPREBST: TFMTBCDField
      FieldName = 'PREBST'
      Precision = 14
      Size = 5
    end
    object ConsE403FprPTOQLD: TIntegerField
      FieldName = 'PTOQLD'
    end
    object ConsE403FprPTOPRZ: TIntegerField
      FieldName = 'PTOPRZ'
    end
    object ConsE403FprPTOCND: TIntegerField
      FieldName = 'PTOCND'
    end
    object ConsE403FprBLOFPR: TStringField
      FieldName = 'BLOFPR'
      Size = 1
    end
    object ConsE403FprCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE403FprOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsE403FprUSUMOT: TBCDField
      FieldName = 'USUMOT'
      Precision = 10
      Size = 0
    end
    object ConsE403FprDATMOT: TDateTimeField
      FieldName = 'DATMOT'
    end
    object ConsE403FprHORMOT: TIntegerField
      FieldName = 'HORMOT'
    end
    object ConsE403FprCODCLF: TStringField
      FieldName = 'CODCLF'
      Size = 3
    end
    object ConsE403FprPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 4
      Size = 2
    end
    object ConsE403FprRECIPI: TStringField
      FieldName = 'RECIPI'
      Size = 1
    end
    object ConsE403FprCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ConsE403FprCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ConsE403FprCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ConsE403FprCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ConsE403FprCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ConsE403FprRECICM: TStringField
      FieldName = 'RECICM'
      Size = 1
    end
    object ConsE403FprNOTFOR: TBCDField
      FieldName = 'NOTFOR'
      Precision = 5
      Size = 2
    end
    object ConsE403FprINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsE403FprDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsE403FprHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsE403FprNOTPRO: TBCDField
      FieldName = 'NOTPRO'
      Precision = 5
      Size = 2
    end
    object ConsE403FprRECPIS: TStringField
      FieldName = 'RECPIS'
      Size = 1
    end
    object ConsE403FprCODSTR: TStringField
      FieldName = 'CODSTR'
      Size = 3
    end
    object ConsE403FprPERSCO: TBCDField
      FieldName = 'PERSCO'
      Precision = 5
      Size = 2
    end
    object ConsE403FprRECCOF: TStringField
      FieldName = 'RECCOF'
      Size = 1
    end
    object ConsE403FprIPIPDO: TStringField
      FieldName = 'IPIPDO'
      Size = 1
    end
    object ConsE403FprQTDMLT: TFMTBCDField
      FieldName = 'QTDMLT'
      Precision = 12
      Size = 5
    end
    object ConsE403FprQTDMIN: TFMTBCDField
      FieldName = 'QTDMIN'
      Precision = 12
      Size = 5
    end
    object ConsE403FprQTDMAX: TFMTBCDField
      FieldName = 'QTDMAX'
      Precision = 12
      Size = 5
    end
    object ConsE403FprCODPIN: TStringField
      FieldName = 'CODPIN'
    end
    object ConsE403FprSOMIIM: TStringField
      FieldName = 'SOMIIM'
      Size = 1
    end
    object ConsE403FprSOMIIL: TStringField
      FieldName = 'SOMIIL'
      Size = 1
    end
    object ConsE403FprSOMIPS: TStringField
      FieldName = 'SOMIPS'
      Size = 1
    end
    object ConsE403FprSOMIPL: TStringField
      FieldName = 'SOMIPL'
      Size = 1
    end
    object ConsE403FprSOMICO: TStringField
      FieldName = 'SOMICO'
      Size = 1
    end
    object ConsE403FprSOMICL: TStringField
      FieldName = 'SOMICL'
      Size = 1
    end
    object ConsE403FprTEMICM: TStringField
      FieldName = 'TEMICM'
      Size = 1
    end
    object ConsE403FprTRIPIS: TStringField
      FieldName = 'TRIPIS'
      Size = 1
    end
    object ConsE403FprTRICOF: TStringField
      FieldName = 'TRICOF'
      Size = 1
    end
    object ConsE403FprPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ConsE403FprPERPIS: TBCDField
      FieldName = 'PERPIS'
      Precision = 4
      Size = 2
    end
    object ConsE403FprPERCOF: TBCDField
      FieldName = 'PERCOF'
      Precision = 4
      Size = 2
    end
    object ConsE403FprPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ConsE403FprPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ConsE403FprPERFUN: TBCDField
      FieldName = 'PERFUN'
      Precision = 4
      Size = 2
    end
    object ConsE403FprUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE403FprDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE403FprHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE403FprUSUATU: TBCDField
      FieldName = 'USUATU'
      Precision = 10
      Size = 0
    end
    object ConsE403FprDATATU: TDateTimeField
      FieldName = 'DATATU'
    end
    object ConsE403FprHORATU: TIntegerField
      FieldName = 'HORATU'
    end
  end
  object ConsE009Ppe: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'sigufs'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e009ppe where codemp = :codemp and'
      '                            sigufs = :sigufs and'
      '                            codfil = :codfil')
    Left = 392
    Top = 104
    object ConsE009PpeCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE009PpeSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsE009PpeCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE009PpeINSEST: TStringField
      FieldName = 'INSEST'
      Size = 25
    end
    object ConsE009PpePERREP: TBCDField
      FieldName = 'PERREP'
      Precision = 6
    end
    object ConsE009PpeLIMICM: TBCDField
      FieldName = 'LIMICM'
      Precision = 15
      Size = 2
    end
    object ConsE009PpeICMSCO: TBCDField
      FieldName = 'ICMSCO'
      Precision = 4
      Size = 2
    end
    object ConsE009PpeICMSNC: TBCDField
      FieldName = 'ICMSNC'
      Precision = 4
      Size = 2
    end
    object ConsE009PpeICMECO: TBCDField
      FieldName = 'ICMECO'
      Precision = 4
      Size = 2
    end
    object ConsE009PpeICMENC: TBCDField
      FieldName = 'ICMENC'
      Precision = 4
      Size = 2
    end
    object ConsE009PpeVENTFP: TStringField
      FieldName = 'VENTFP'
      Size = 5
    end
    object ConsE009PpeVENTFN: TStringField
      FieldName = 'VENTFN'
      Size = 5
    end
    object ConsE009PpeVENTPA: TStringField
      FieldName = 'VENTPA'
      Size = 5
    end
    object ConsE009PpeVENTPN: TStringField
      FieldName = 'VENTPN'
      Size = 5
    end
    object ConsE009PpeVENTFS: TStringField
      FieldName = 'VENTFS'
      Size = 5
    end
    object ConsE009PpeVENTDP: TStringField
      FieldName = 'VENTDP'
      Size = 5
    end
    object ConsE009PpeVENTDS: TStringField
      FieldName = 'VENTDS'
      Size = 5
    end
    object ConsE009PpeTNSREM: TStringField
      FieldName = 'TNSREM'
      Size = 5
    end
    object ConsE009PpeCPRTNP: TStringField
      FieldName = 'CPRTNP'
      Size = 5
    end
    object ConsE009PpeCPRTNS: TStringField
      FieldName = 'CPRTNS'
      Size = 5
    end
    object ConsE009PpeCPRTDP: TStringField
      FieldName = 'CPRTDP'
      Size = 5
    end
    object ConsE009PpeCPRTDS: TStringField
      FieldName = 'CPRTDS'
      Size = 5
    end
    object ConsE009PpeTNSRET: TStringField
      FieldName = 'TNSRET'
      Size = 5
    end
    object ConsE009PpeVENDSC: TBCDField
      FieldName = 'VENDSC'
      Precision = 5
      Size = 2
    end
    object ConsE009PpePERDZF: TBCDField
      FieldName = 'PERDZF'
      Precision = 5
      Size = 2
    end
    object ConsE009PpeFORRSU: TIntegerField
      FieldName = 'FORRSU'
    end
    object ConsE009PpeTPTRSU: TStringField
      FieldName = 'TPTRSU'
      Size = 3
    end
    object ConsE009PpeTNSRSU: TStringField
      FieldName = 'TNSRSU'
      Size = 5
    end
    object ConsE009PpeIMPRSU: TStringField
      FieldName = 'IMPRSU'
      Size = 3
    end
  end
end
