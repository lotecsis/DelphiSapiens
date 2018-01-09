object FAdicionaPedidoEmPedido: TFAdicionaPedidoEmPedido
  Left = 0
  Top = 0
  Caption = 'Adicionar Pedido'
  ClientHeight = 603
  ClientWidth = 757
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 112
    Width = 757
    Height = 491
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 755
      Height = 129
      Align = alTop
      TabOrder = 0
      object Label10: TLabel
        Left = 5
        Top = 12
        Width = 128
        Height = 13
        Caption = 'Adicionar Pedido N'#186'.....:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 43
        Top = 39
        Width = 91
        Height = 13
        Caption = 'Data Emiss'#227'o....:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 77
        Top = 66
        Width = 57
        Height = 13
        Caption = 'Cliente.....:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 31
        Top = 104
        Width = 103
        Height = 13
        Caption = 'Representante.....:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 326
        Top = 12
        Width = 40
        Height = 13
        Caption = 'Filial....:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 302
        Top = 39
        Width = 64
        Height = 13
        Caption = 'Situa'#231#227'o....:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 312
        Top = 104
        Width = 54
        Height = 13
        Caption = 'C.Pgto.....:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 512
        Top = 12
        Width = 103
        Height = 13
        Caption = 'Tec.Transferido....:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 540
        Top = 39
        Width = 75
        Height = 13
        Caption = 'Pr'#233'-Carga.....:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LCodFilAdd: TLabel
        Left = 371
        Top = 12
        Width = 3
        Height = 13
      end
      object LTecTransAdd: TLabel
        Left = 619
        Top = 12
        Width = 3
        Height = 13
      end
      object LPreCarAdd: TLabel
        Left = 619
        Top = 39
        Width = 3
        Height = 13
      end
      object LSitPedAdd: TLabel
        Left = 371
        Top = 39
        Width = 3
        Height = 13
      end
      object LDatEmiAdd: TLabel
        Left = 139
        Top = 39
        Width = 3
        Height = 13
      end
      object LNomCliAdd: TLabel
        Left = 139
        Top = 66
        Width = 3
        Height = 13
      end
      object LNomRepAdd: TLabel
        Left = 138
        Top = 104
        Width = 3
        Height = 13
      end
      object LDsPgtoAdd: TLabel
        Left = 369
        Top = 104
        Width = 3
        Height = 13
      end
      object LEndCliAdd: TLabel
        Left = 139
        Top = 85
        Width = 3
        Height = 13
      end
      object EdNumPedAdd: TEdit
        Left = 139
        Top = 5
        Width = 120
        Height = 21
        TabOrder = 0
        OnExit = EdNumPedAddExit
      end
      object BNumPed: TBitBtn
        Left = 236
        Top = 6
        Width = 22
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
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 130
      Width = 755
      Height = 319
      Align = alClient
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 753
        Height = 317
        Align = alClient
        DataSource = DsConsE120IpdAdd
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
            FieldName = 'SEQIPD'
            Title.Alignment = taCenter
            Title.Caption = 'Seq.'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TNSPRO'
            Title.Alignment = taCenter
            Title.Caption = 'Trans.'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
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
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODDER'
            Title.Alignment = taCenter
            Title.Caption = 'Deriv.'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESDER'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDPED'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Pedida'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDABE'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Aberto'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDFAT'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Faturado'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDCAN'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Cancelado'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PREUNI'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o Unit.'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VLRBRU'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Bruto'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VLRLIQ'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.L'#237'quido'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SITIPD'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Visible = True
          end>
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 449
      Width = 755
      Height = 41
      Align = alBottom
      TabOrder = 2
      object BConfirmar: TBitBtn
        Left = 647
        Top = 8
        Width = 100
        Height = 25
        Caption = 'Confirmar'
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
        TabOrder = 0
        OnClick = BConfirmarClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 112
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 8
      Width = 123
      Height = 13
      Caption = 'Pedido Principal N'#186'.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LNumPedPrincipal: TLabel
      Left = 140
      Top = 8
      Width = 83
      Height = 13
      Caption = 'LNumPedPrincipal'
    end
    object Label2: TLabel
      Left = 77
      Top = 52
      Width = 57
      Height = 13
      Caption = 'Cliente.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LNomCli: TLabel
      Left = 140
      Top = 52
      Width = 37
      Height = 13
      Caption = 'LNomCli'
    end
    object Label3: TLabel
      Left = 302
      Top = 30
      Width = 64
      Height = 13
      Caption = 'Situa'#231#227'o....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LSitPed: TLabel
      Left = 372
      Top = 30
      Width = 35
      Height = 13
      Caption = 'LSitPed'
    end
    object LEndCli: TLabel
      Left = 140
      Top = 69
      Width = 34
      Height = 13
      Caption = 'LEndCli'
    end
    object Label4: TLabel
      Left = 326
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Filial....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LCodFil: TLabel
      Left = 370
      Top = 8
      Width = 34
      Height = 13
      Caption = 'LCodFil'
    end
    object Label5: TLabel
      Left = 43
      Top = 30
      Width = 91
      Height = 13
      Caption = 'Data Emiss'#227'o....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LDatEmi: TLabel
      Left = 139
      Top = 30
      Width = 38
      Height = 13
      Caption = 'LDatEmi'
    end
    object Label6: TLabel
      Left = 512
      Top = 8
      Width = 103
      Height = 13
      Caption = 'Tec.Transferido....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 540
      Top = 30
      Width = 75
      Height = 13
      Caption = 'Pr'#233'-Carga.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LTecTrans: TLabel
      Left = 620
      Top = 8
      Width = 49
      Height = 13
      Caption = 'LTecTrans'
    end
    object LPreCar: TLabel
      Left = 620
      Top = 30
      Width = 38
      Height = 13
      Caption = 'LPreCar'
    end
    object Label8: TLabel
      Left = 31
      Top = 88
      Width = 103
      Height = 13
      Caption = 'Representante.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LNomRep: TLabel
      Left = 139
      Top = 88
      Width = 45
      Height = 13
      Caption = 'LNomRep'
    end
    object Label9: TLabel
      Left = 312
      Top = 88
      Width = 54
      Height = 13
      Caption = 'C.Pgto.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LDsPgto: TLabel
      Left = 372
      Top = 88
      Width = 39
      Height = 13
      Caption = 'LDsPgto'
    end
  end
  object ConsE028Cpg: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codcpg'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e028cpg where codcpg = :codcpg')
    Left = 584
    Top = 192
    object ConsE028CpgCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE028CpgCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsE028CpgDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ConsE028CpgABRCPG: TStringField
      FieldName = 'ABRCPG'
      Size = 10
    end
    object ConsE028CpgAPLCPG: TStringField
      FieldName = 'APLCPG'
      Size = 1
    end
    object ConsE028CpgPGTANT: TStringField
      FieldName = 'PGTANT'
      Size = 1
    end
    object ConsE028CpgDIAESP: TStringField
      FieldName = 'DIAESP'
      Size = 1
    end
    object ConsE028CpgDIAME1: TIntegerField
      FieldName = 'DIAME1'
    end
    object ConsE028CpgDIAME2: TIntegerField
      FieldName = 'DIAME2'
    end
    object ConsE028CpgDIAME3: TIntegerField
      FieldName = 'DIAME3'
    end
    object ConsE028CpgDIASEM: TStringField
      FieldName = 'DIASEM'
      Size = 7
    end
    object ConsE028CpgDIAMES: TStringField
      FieldName = 'DIAMES'
      Size = 31
    end
    object ConsE028CpgPRZMED: TIntegerField
      FieldName = 'PRZMED'
    end
    object ConsE028CpgQTDPAR: TIntegerField
      FieldName = 'QTDPAR'
    end
    object ConsE028CpgIPIPAR: TStringField
      FieldName = 'IPIPAR'
      Size = 1
    end
    object ConsE028CpgICMPAR: TStringField
      FieldName = 'ICMPAR'
      Size = 1
    end
    object ConsE028CpgSUBPAR: TStringField
      FieldName = 'SUBPAR'
      Size = 1
    end
    object ConsE028CpgFREPAR: TStringField
      FieldName = 'FREPAR'
      Size = 1
    end
    object ConsE028CpgSEGPAR: TStringField
      FieldName = 'SEGPAR'
      Size = 1
    end
    object ConsE028CpgENCPAR: TStringField
      FieldName = 'ENCPAR'
      Size = 1
    end
    object ConsE028CpgEMBPAR: TStringField
      FieldName = 'EMBPAR'
      Size = 1
    end
    object ConsE028CpgOUTPAR: TStringField
      FieldName = 'OUTPAR'
      Size = 1
    end
    object ConsE028CpgDARPAR: TStringField
      FieldName = 'DARPAR'
      Size = 1
    end
    object ConsE028CpgACRFIN: TBCDField
      FieldName = 'ACRFIN'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgVENDSC: TBCDField
      FieldName = 'VENDSC'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgCPRDSC: TBCDField
      FieldName = 'CPRDSC'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgREDCOM: TBCDField
      FieldName = 'REDCOM'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgTIPPAR: TIntegerField
      FieldName = 'TIPPAR'
    end
    object ConsE028CpgSITCPG: TStringField
      FieldName = 'SITCPG'
      Size = 1
    end
    object ConsE028CpgCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE028CpgFVECPG: TStringField
      FieldName = 'FVECPG'
      Size = 10
    end
    object ConsE028CpgFVEDEC: TStringField
      FieldName = 'FVEDEC'
      Size = 1
    end
    object ConsE028CpgINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsE028CpgDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsE028CpgHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsE028CpgTIPINT: TIntegerField
      FieldName = 'TIPINT'
    end
    object ConsE028CpgCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object ConsE028CpgISSPAR: TStringField
      FieldName = 'ISSPAR'
      Size = 1
    end
    object ConsE028CpgDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE028CpgHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE028CpgUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE028CpgDATATU: TDateTimeField
      FieldName = 'DATATU'
    end
    object ConsE028CpgHORATU: TIntegerField
      FieldName = 'HORATU'
    end
    object ConsE028CpgUSUATU: TBCDField
      FieldName = 'USUATU'
      Precision = 10
      Size = 0
    end
    object ConsE028CpgPERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
  end
  object DsConsE120IpdAdd: TDataSource
    AutoEdit = False
    DataSet = Dm2.ConsE120IpdAdd
    Left = 608
    Top = 288
  end
  object ConsProdE120Ipd: TADOQuery
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
      
        'select codemp,codfil,numped,seqipd,tnspro,codpro,codder,preuni,q' +
        'tdped,qtdcan,qtdfat,qtdabe'
      '                     from e120ipd'
      '                      where'
      '                      codemp = :codemp and'
      '                      codfil = :codfil and'
      '                      numped = :numped and'
      '                      codpro = :codpro and'
      '                      codder = :codder')
    Left = 608
    Top = 352
    object ConsProdE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsProdE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsProdE120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsProdE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsProdE120IpdTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsProdE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsProdE120IpdPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsProdE120IpdQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsProdE120IpdQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ConsProdE120IpdQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ConsProdE120IpdQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsProdE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
  end
  object SapSID: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 648
    Top = 72
  end
  object ConsCorUsu_T120ipd: TADOQuery
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
      end
      item
        Name = 'tipcmb'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'cor001'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'cor002'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t120ipd where'
      '                           usu_codemp = :codemp and'
      '                           usu_codfil = :codfil and'
      '                           usu_numped = :numped and'
      '                           usu_seqipd = :seqipd and'
      '                           usu_tipcmb = :tipcmb and'
      '                           usu_cor001 = :cor001 and'
      '                           usu_cor002 = :cor002')
    Left = 608
    Top = 456
    object ConsCorUsu_T120ipdUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsCorUsu_T120ipdUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsCorUsu_T120ipdUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsCorUsu_T120ipdUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsCorUsu_T120ipdUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object ConsCorUsu_T120ipdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsCorUsu_T120ipdUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ConsCorUsu_T120ipdUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ConsCorUsu_T120ipdUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ConsCorUsu_T120ipdUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsCorUsu_T120ipdUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsCorUsu_T120ipdUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object ConsCorUsu_T120ipdUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsCorUsu_T120ipdUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object ConsCorUsu_T120ipdUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsCorUsu_T120ipdUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
  end
  object UltimoSeqIte: TADOQuery
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
    Left = 448
    Top = 440
    object UltimoSeqIteUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
  end
  object SeqIpd: TADOQuery
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
      end>
    SQL.Strings = (
      'select seqipd from e120ipd where codemp = :codemp and'
      '                            codfil = :codfil and'
      '                            numped = :numped'
      '                            order by seqipd desc')
    Left = 424
    Top = 360
    object SeqIpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
  end
  object DsReserva: TDataSource
    Left = 272
    Top = 416
  end
end
