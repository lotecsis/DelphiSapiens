object FAjustaComissoes: TFAjustaComissoes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ajusta Comiss'#245'es'
  ClientHeight = 573
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 69
    Top = 13
    Width = 43
    Height = 13
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 231
    Top = 13
    Width = 7
    Height = 13
    Caption = #224
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 792
    Top = 546
    Width = 86
    Height = 13
    Caption = 'Total Diferen'#231'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtDatIni: TDateEdit
    Left = 119
    Top = 10
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object edtDatFim: TDateEdit
    Left = 249
    Top = 10
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object dbgItens: TDBGrid
    Left = -1
    Top = 71
    Width = 995
    Height = 460
    DataSource = dsClientAjustaE504Cap
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbgItensDrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODFIL'
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMTIT'
        Title.Alignment = taCenter
        Title.Caption = 'T'#237'tulo'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRBCO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Base'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRCOM'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Comiss'#227'o'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnPerComissaoNF'
        Title.Alignment = taCenter
        Title.Caption = '% NF'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PERCOM'
        Title.Alignment = taCenter
        Title.Caption = '% Cond.Pgto.'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnComissao_Real'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Real'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnDiferenca'
        Title.Alignment = taCenter
        Title.Caption = 'Diferen'#231'a'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCPG'
        Title.Alignment = taCenter
        Title.Caption = 'Cond.Pgto.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCPG'
        Title.Alignment = taCenter
        Title.Caption = 'Desc.Pgto.'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRZMED'
        Title.Alignment = taCenter
        Title.Caption = 'Prazo Medio'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODREP'
        Title.Alignment = taCenter
        Title.Caption = 'Representante'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APEREP'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end>
  end
  object btnMostrar: TBitBtn
    Left = 911
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
      C8807FF7777777777FF700000000000000007777777777777777333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnMostrarClick
  end
  object dbedtvnTotalDiferenca: TDBEdit
    Left = 884
    Top = 543
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'vnTotalDiferenca'
    DataSource = dsClientAjustaE504Cap
    ReadOnly = True
    TabOrder = 4
  end
  object btnProdutosNF: TBitBtn
    Left = 8
    Top = 537
    Width = 75
    Height = 25
    Caption = 'Produtos'
    DoubleBuffered = True
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888800008888888888888888888800008888888888888888888800008888
      88888888777777780000888888888880000000780000888888888840FBFBF078
      0000888888888480000000880000888888884888888888880000887777748888
      77777778000080000007777000000078000080FFFF044440FBFBF07800008000
      0008788000000088000088888884878888888888000088888888487877777778
      0000888888888480000000780000888888888840FBFBF0780000888888888880
      0000008800008888888888888888888800008888888888888888888800008888
      88888888888888880000}
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btnProdutosNFClick
  end
  object btnAjustar: TBitBtn
    Left = 89
    Top = 537
    Width = 75
    Height = 25
    Caption = 'Ajustar'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = btnAjustarClick
  end
  object btnExportar: TBitBtn
    Left = 911
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Exportar'
    DoubleBuffered = True
    Glyph.Data = {
      4E010000424D4E01000000000000760000002800000012000000120000000100
      040000000000D800000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777770000007777777777777777770000007777777777770007770000007444
      4400000006007700000074FFFF08880600080700000074F008000060EE070700
      000074FFFFF8060EE0047700000074F0088060EE00F47700000074FFFF060EE0
      00747700000074F00800EE0EE0047700000074FFFF0EE0F0EE047700000074F0
      080000F000047700000074FFFFFFFFFFFFF47700000074444444444444447700
      000074F444F444F444F477000000744444444444444477000000777777777777
      777777000000777777777777777777000000}
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = btnExportarClick
  end
  object btn1: TBitBtn
    Left = 672
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Diminuir'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 8
    Visible = False
    OnClick = btn1Click
  end
  object dsClientAjustaE504Cap: TDataSource
    DataSet = DmOra.ClientAjustaE504Cap
    Left = 552
    Top = 168
  end
  object ConsRep: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codrep'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e090rep where codrep = :codrep')
    Left = 488
    Top = 16
    object ConsRepCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsRepNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ConsRepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ConsRepSENREP: TStringField
      FieldName = 'SENREP'
    end
    object ConsRepTIPREP: TStringField
      FieldName = 'TIPREP'
      Size = 1
    end
    object ConsRepINSEST: TStringField
      FieldName = 'INSEST'
      Size = 25
    end
    object ConsRepINSMUN: TStringField
      FieldName = 'INSMUN'
      Size = 16
    end
    object ConsRepCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
    object ConsRepENDREP: TStringField
      FieldName = 'ENDREP'
      Size = 100
    end
    object ConsRepCPLEND: TStringField
      FieldName = 'CPLEND'
      Size = 200
    end
    object ConsRepZIPCOD: TStringField
      FieldName = 'ZIPCOD'
      Size = 14
    end
    object ConsRepCEPREP: TIntegerField
      FieldName = 'CEPREP'
    end
    object ConsRepBAIREP: TStringField
      FieldName = 'BAIREP'
      Size = 75
    end
    object ConsRepCIDREP: TStringField
      FieldName = 'CIDREP'
      Size = 60
    end
    object ConsRepSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsRepFONREP: TStringField
      FieldName = 'FONREP'
    end
    object ConsRepFONRE2: TStringField
      FieldName = 'FONRE2'
    end
    object ConsRepFONRE3: TStringField
      FieldName = 'FONRE3'
    end
    object ConsRepFAXREP: TStringField
      FieldName = 'FAXREP'
    end
    object ConsRepCXAPST: TIntegerField
      FieldName = 'CXAPST'
    end
    object ConsRepINTNET: TStringField
      FieldName = 'INTNET'
      Size = 100
    end
    object ConsRepDATCAD: TDateTimeField
      FieldName = 'DATCAD'
    end
    object ConsRepDATATU: TDateTimeField
      FieldName = 'DATATU'
    end
    object ConsRepSITREP: TStringField
      FieldName = 'SITREP'
      Size = 1
    end
    object ConsRepQTDDEP: TIntegerField
      FieldName = 'QTDDEP'
    end
    object ConsRepCALIRF: TStringField
      FieldName = 'CALIRF'
      Size = 1
    end
    object ConsRepCALISS: TStringField
      FieldName = 'CALISS'
      Size = 1
    end
    object ConsRepCALINS: TStringField
      FieldName = 'CALINS'
      Size = 1
    end
    object ConsRepFIRIND: TStringField
      FieldName = 'FIRIND'
      Size = 1
    end
    object ConsRepGERTIT: TStringField
      FieldName = 'GERTIT'
      Size = 1
    end
    object ConsRepCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsRepOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsRepUSUMOT: TBCDField
      FieldName = 'USUMOT'
      Precision = 10
      Size = 0
    end
    object ConsRepDATMOT: TDateTimeField
      FieldName = 'DATMOT'
    end
    object ConsRepHORMOT: TIntegerField
      FieldName = 'HORMOT'
    end
    object ConsRepDATNAS: TDateTimeField
      FieldName = 'DATNAS'
    end
    object ConsRepNUMRGE: TStringField
      FieldName = 'NUMRGE'
      Size = 13
    end
    object ConsRepORGRGE: TStringField
      FieldName = 'ORGRGE'
      Size = 6
    end
    object ConsRepDATRGE: TDateTimeField
      FieldName = 'DATRGE'
    end
    object ConsRepREPCLI: TIntegerField
      FieldName = 'REPCLI'
    end
    object ConsRepREPFOR: TIntegerField
      FieldName = 'REPFOR'
    end
    object ConsRepINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsRepDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsRepHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsRepCODCDI: TIntegerField
      FieldName = 'CODCDI'
    end
    object ConsRepEENREP: TStringField
      FieldName = 'EENREP'
      Size = 18
    end
    object ConsRepHORATU: TIntegerField
      FieldName = 'HORATU'
    end
    object ConsRepNENREP: TStringField
      FieldName = 'NENREP'
      Size = 60
    end
    object ConsRepUSUCAD: TBCDField
      FieldName = 'USUCAD'
      Precision = 10
      Size = 0
    end
    object ConsRepHORCAD: TIntegerField
      FieldName = 'HORCAD'
    end
    object ConsRepUSUATU: TBCDField
      FieldName = 'USUATU'
      Precision = 10
      Size = 0
    end
    object ConsRepUSU_UM12A: TStringField
      FieldName = 'USU_UM12A'
      Size = 1
    end
  end
  object Diminuir: TADOQuery
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
      
        'select e504cap.codemp,e504cap.codfil,e504cap.codrep,e504cap.seqc' +
        'om,e504cap.datbas,e504cap.datlib,'
      
        '       e504cap.codtns,e504cap.vlrcom,e504cap.numtit,e504cap.codt' +
        'pt,e504cap.codfor,e504cap.seqmov,'
      '       e301tcr.codcli,e301tcr.vctpro,e301tcr.vlrabe,'
      '       e301mcr.vlrbco,e301mcr.datmov,'
      '       e085cli.nomcli,'
      '       e140nfv.codcpg,'
      
        '       e028cpg.descpg,e028cpg.przmed,e028cpg.percom,e028cpg.usu_' +
        'perapl,'
      '       e090rep.aperep'
      'from e504cap'
      'inner join e301tcr on e301tcr.codemp = e504cap.codemp and'
      '                      e301tcr.codfil = e504cap.codfil and'
      '                      e301tcr.numtit = e504cap.numtit and'
      '                      e301tcr.codtpt = e504cap.codtpt'
      'inner join e301mcr on e301mcr.codemp = e504cap.codemp and'
      '                      e301mcr.codfil = e504cap.codfil and'
      '                      e301mcr.numtit = e504cap.numtit and'
      '                      e301mcr.codtpt = e504cap.codtpt and'
      '                      e301mcr.seqmov = e504cap.seqmov'
      'inner join e085cli on e085cli.codcli = e301tcr.codcli'
      'inner join e140nfv on e140nfv.codemp = e301tcr.codemp and'
      '                      e140nfv.codfil = e301tcr.filnfv and'
      '                      e140nfv.codsnf = e301tcr.codsnf and'
      '                      e140nfv.numnfv = e301tcr.numnfv'
      'inner join e028cpg on e028cpg.codemp = e140nfv.codemp and'
      '                      e028cpg.codcpg = e140nfv.codcpg'
      'inner join e090rep on e090rep.codrep = e504cap.codrep'
      'where datbas between :DATINI and :DATFIM and'
      
        '       not (e504cap.codtns in ('#39'90590'#39','#39'90599'#39','#39'90581'#39','#39'90591'#39'))' +
        ' and'
      '      e504cap.vlrcom > 0 and'
      '      e028cpg.przmed > 80'
      'order by e504cap.codfil, e504cap.numtit')
    Left = 608
    Top = 280
    object DiminuirCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object DiminuirCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object DiminuirCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object DiminuirSEQCOM: TIntegerField
      FieldName = 'SEQCOM'
    end
    object DiminuirDATBAS: TDateTimeField
      FieldName = 'DATBAS'
    end
    object DiminuirDATLIB: TDateTimeField
      FieldName = 'DATLIB'
    end
    object DiminuirCODTNS: TStringField
      FieldName = 'CODTNS'
      Size = 5
    end
    object DiminuirVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object DiminuirNUMTIT: TStringField
      FieldName = 'NUMTIT'
      Size = 15
    end
    object DiminuirCODTPT: TStringField
      FieldName = 'CODTPT'
      Size = 3
    end
    object DiminuirCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object DiminuirSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object DiminuirCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object DiminuirVCTPRO: TDateTimeField
      FieldName = 'VCTPRO'
    end
    object DiminuirVLRABE: TBCDField
      FieldName = 'VLRABE'
      Precision = 15
      Size = 2
    end
    object DiminuirVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object DiminuirDATMOV: TDateTimeField
      FieldName = 'DATMOV'
    end
    object DiminuirNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object DiminuirCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object DiminuirDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object DiminuirPRZMED: TIntegerField
      FieldName = 'PRZMED'
    end
    object DiminuirPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object DiminuirUSU_PERAPL: TBCDField
      FieldName = 'USU_PERAPL'
      Precision = 5
      Size = 2
    end
    object DiminuirAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
  end
  object cmdAtualizaE504Cap: TADOCommand
    CommandText = 'update e504cap set vlrcom = :vlrcom where numtit = :numtit'
    Connection = DmOra.ADOBanco
    Parameters = <
      item
        Name = 'vlrcom'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'numtit'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 248
    Top = 144
  end
  object cmdAtualizaE301Mcr: TADOCommand
    CommandText = 
      'update e301mcr set vlrcom = :vlrcom where numtit = :numtit and'#13#10 +
      '                                          vlrcom > 0'
    Connection = DmOra.ADOBanco
    Parameters = <
      item
        Name = 'vlrcom'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'numtit'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 352
    Top = 144
  end
end
