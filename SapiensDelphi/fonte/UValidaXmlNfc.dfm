object FValidaXmlNfc: TFValidaXmlNfc
  Left = 0
  Top = 0
  Caption = 'Valida XML'
  ClientHeight = 641
  ClientWidth = 657
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 273
    Height = 18
    Caption = 'Confirmar o XML da(s) seguinte(s)  NF-e:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 573
    Width = 38
    Height = 13
    Caption = 'Total..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LTotal: TLabel
    Left = 52
    Top = 573
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LQtdArq: TLabel
    Left = 594
    Top = 573
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object BImprimir: TSpeedButton
    Left = 536
    Top = 570
    Width = 113
    Height = 31
    Caption = 'Imprimir'
    Glyph.Data = {
      0E030000424D0E030000000000003600000028000000110000000E0000000100
      180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
      BFBFBF0000000000000000000000000000000000000000000000000000000000
      00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
      000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
      BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
      00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
      BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
      000000000000000000000000000000FFFFFF000000000000000000000000BFBF
      BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
      0000000000000000000000BFBFBFBFBFBF00}
    OnClick = BImprimirClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 40
    Width = 641
    Height = 529
    DataSource = DsConsE440Nfc
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODFIL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODFOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMFOR'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMNFC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATENT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPNFE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODSNF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODEDC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODTRI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TNSPRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TNSSER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOPPRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOPSER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATEMI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UFSCIC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCPG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODFPG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODMOE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATMOE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COTMOE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECMOE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODFCR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATFCR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODTRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODRED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDEMB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODEMB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMEMB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODMS1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODMS2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODMS3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODMS4'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSNFC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESBRU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESLIQ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERDS1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERDS2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERFIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRDZF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRFRE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIFFOB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRSEG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLREMB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRENC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLROUT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRDAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRFRD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLROUD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBPR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRDPR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBSE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRDSE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRDS1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRDS2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBFU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRFUN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBIP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRIPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRIPD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBIC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRICM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBSI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRSIC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBSD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRISD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBSP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRSTP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBSC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRSTC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRISS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBIR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRIRF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRINS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRLPR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRLSE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRLOU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRLIQ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRINF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRFIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITNFC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODMOT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VERCAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INTIMP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMLOT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORISS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INDSIG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUGER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATGER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORGER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERFRE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERSEG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEREMB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERENC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEROUT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEQORM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRPIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXPWMS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INDSIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRCNFC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBCR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRCOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBCL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRCSL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBPT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRPIT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBCT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRCRT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLROUR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBII'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRIIM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMDOI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATDOI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INTPAT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRRIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLROCL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLROPT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLROCT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLROOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODSEL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODSSL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERDS3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERDS4'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERDS5'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRDS3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRDS4'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRDS5'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BECIPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VECIPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BECICM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VECICM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBIE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRIEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRFEI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRSEI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLROUI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BCOIMP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COFIMP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BPIIMP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PISIMP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMCNT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDENFC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMCTR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ROTNAP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FILAPR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMAPR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITAPR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERICF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMFRE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIRCB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRPIF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBCF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRCFF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ROTANX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMANX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLAVEI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODVIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHVNEL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOMFRE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UFSVEI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMINT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FILFIX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMFIX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FILOCP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMOCP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_PLAVEI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODEQU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMCFI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPNDI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCDES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATDES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UFSDES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODEXP'
        Visible = True
      end>
  end
  object BValida: TBitBtn
    Left = 288
    Top = 575
    Width = 33
    Height = 15
    Caption = 'Validar'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
      55555575555555775F55509999999901055557F55555557F75F5001111111101
      105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
      01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
      8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
      0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
      0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
      05555555575FF777755555555500055555555555557775555555}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    Visible = False
    OnClick = BValidaClick
  end
  object BPesquisar: TBitBtn
    Left = 8
    Top = 601
    Width = 129
    Height = 40
    Caption = 'Pesquisar'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
      333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
      C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
      F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
      F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
      00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
      3333333373FF7333333333333000333333333333377733333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BPesquisarClick
  end
  object BValidar: TBitBtn
    Left = 266
    Top = 596
    Width = 383
    Height = 40
    Caption = 'Validar'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333FF3FF3333333333CC30003333333333773777333333333C33
      3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
      33003377333337F33377333333333C333300333F333337F33377339333333C33
      3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
      330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
      330077F377F337F33377993399333C33330077FF773337F33377399993333C33
      33333777733337F333FF333333333C33300033333333373FF7773333333333CC
      3000333333333377377733333333333333333333333333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BValidarClick
  end
  object BLog: TBitBtn
    Left = 137
    Top = 601
    Width = 129
    Height = 40
    Caption = 'Log'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
      B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
      B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
      0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
      55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
      55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
      55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
      5555575FFF755555555557000075555555555577775555555555}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BLogClick
  end
  object DsConsE440Nfc: TDataSource
    DataSet = DmOra.ConsE440Nfc
    Left = 224
    Top = 112
  end
  object ClientDadosGerais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XmlProvider'
    Left = 400
    Top = 208
  end
  object XmlProvider: TXMLTransformProvider
    TransformRead.TransformationFile = '\\senior\DelphiSapiens\SapiensDelphi\MapaXml\DadosGerais.xtr'
    XMLDataFile = 
      '\\senior\Senior\Sapiens\XML_NFE\Temp\351010553641110001795500100' +
      '00000831087544342.xml'
    Left = 504
    Top = 208
  end
  object CadE440Nfc: TADOQuery
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
        Name = 'codfil'
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
        Name = 'numnfc'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codsnf'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e440nfc.* from e440nfc where'
      '                              codemp = :codemp and'
      '                              codfil = :codfil and'
      '                              codfor = :codfor and'
      '                              numnfc = :numnfc and'
      '                              codsnf = :codsnf')
    Left = 144
    Top = 168
    object CadE440NfcCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE440NfcCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE440NfcCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object CadE440NfcNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object CadE440NfcCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object CadE440NfcTIPNFE: TIntegerField
      FieldName = 'TIPNFE'
    end
    object CadE440NfcCODEDC: TStringField
      FieldName = 'CODEDC'
      Size = 3
    end
    object CadE440NfcCODTRI: TStringField
      FieldName = 'CODTRI'
      Size = 5
    end
    object CadE440NfcDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object CadE440NfcTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object CadE440NfcTNSSER: TStringField
      FieldName = 'TNSSER'
      Size = 5
    end
    object CadE440NfcNOPPRO: TStringField
      FieldName = 'NOPPRO'
      Size = 5
    end
    object CadE440NfcNOPSER: TStringField
      FieldName = 'NOPSER'
      Size = 5
    end
    object CadE440NfcDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object CadE440NfcUFSCIC: TStringField
      FieldName = 'UFSCIC'
      Size = 2
    end
    object CadE440NfcCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object CadE440NfcCODFPG: TIntegerField
      FieldName = 'CODFPG'
    end
    object CadE440NfcCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object CadE440NfcDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object CadE440NfcCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object CadE440NfcFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object CadE440NfcCODFCR: TStringField
      FieldName = 'CODFCR'
      Size = 3
    end
    object CadE440NfcDATFCR: TDateTimeField
      FieldName = 'DATFCR'
    end
    object CadE440NfcCODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object CadE440NfcCODRED: TIntegerField
      FieldName = 'CODRED'
    end
    object CadE440NfcQTDEMB: TIntegerField
      FieldName = 'QTDEMB'
    end
    object CadE440NfcCODEMB: TIntegerField
      FieldName = 'CODEMB'
    end
    object CadE440NfcNUMEMB: TStringField
      FieldName = 'NUMEMB'
      Size = 30
    end
    object CadE440NfcCODMS1: TIntegerField
      FieldName = 'CODMS1'
    end
    object CadE440NfcCODMS2: TIntegerField
      FieldName = 'CODMS2'
    end
    object CadE440NfcCODMS3: TIntegerField
      FieldName = 'CODMS3'
    end
    object CadE440NfcCODMS4: TIntegerField
      FieldName = 'CODMS4'
    end
    object CadE440NfcOBSNFC: TStringField
      FieldName = 'OBSNFC'
      Size = 1000
    end
    object CadE440NfcPESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 14
      Size = 5
    end
    object CadE440NfcPESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 14
      Size = 5
    end
    object CadE440NfcPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object CadE440NfcPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object CadE440NfcPERFIN: TBCDField
      FieldName = 'PERFIN'
      Precision = 4
      Size = 2
    end
    object CadE440NfcVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object CadE440NfcCIFFOB: TStringField
      FieldName = 'CIFFOB'
      Size = 1
    end
    object CadE440NfcVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBPR: TBCDField
      FieldName = 'VLRBPR'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRDPR: TBCDField
      FieldName = 'VLRDPR'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBSE: TBCDField
      FieldName = 'VLRBSE'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRDSE: TBCDField
      FieldName = 'VLRDSE'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBFU: TBCDField
      FieldName = 'VLRBFU'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRFUN: TBCDField
      FieldName = 'VLRFUN'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBID: TBCDField
      FieldName = 'VLRBID'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRIPD: TBCDField
      FieldName = 'VLRIPD'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRSIC: TBCDField
      FieldName = 'VLRSIC'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBSD: TBCDField
      FieldName = 'VLRBSD'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRISD: TBCDField
      FieldName = 'VLRISD'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBIS: TBCDField
      FieldName = 'VLRBIS'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBIN: TBCDField
      FieldName = 'VLRBIN'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRINS: TBCDField
      FieldName = 'VLRINS'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRLSE: TBCDField
      FieldName = 'VLRLSE'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRINF: TBCDField
      FieldName = 'VLRINF'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object CadE440NfcSITNFC: TStringField
      FieldName = 'SITNFC'
      Size = 1
    end
    object CadE440NfcCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object CadE440NfcVERCAL: TIntegerField
      FieldName = 'VERCAL'
    end
    object CadE440NfcINTIMP: TStringField
      FieldName = 'INTIMP'
      Size = 1
    end
    object CadE440NfcNUMLOT: TIntegerField
      FieldName = 'NUMLOT'
    end
    object CadE440NfcFORISS: TIntegerField
      FieldName = 'FORISS'
    end
    object CadE440NfcINDSIG: TStringField
      FieldName = 'INDSIG'
      Size = 1
    end
    object CadE440NfcUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object CadE440NfcDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object CadE440NfcHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object CadE440NfcPERFRE: TBCDField
      FieldName = 'PERFRE'
      Precision = 5
      Size = 2
    end
    object CadE440NfcPERSEG: TBCDField
      FieldName = 'PERSEG'
      Precision = 5
      Size = 2
    end
    object CadE440NfcPEREMB: TBCDField
      FieldName = 'PEREMB'
      Precision = 5
      Size = 2
    end
    object CadE440NfcPERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
    object CadE440NfcPEROUT: TBCDField
      FieldName = 'PEROUT'
      Precision = 5
      Size = 2
    end
    object CadE440NfcSEQORM: TIntegerField
      FieldName = 'SEQORM'
    end
    object CadE440NfcVLRBPI: TBCDField
      FieldName = 'VLRBPI'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 15
      Size = 2
    end
    object CadE440NfcEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object CadE440NfcINDSIN: TStringField
      FieldName = 'INDSIN'
      Size = 1
    end
    object CadE440NfcPRCNFC: TIntegerField
      FieldName = 'PRCNFC'
    end
    object CadE440NfcVLRBCR: TBCDField
      FieldName = 'VLRBCR'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRCOR: TBCDField
      FieldName = 'VLRCOR'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBII: TBCDField
      FieldName = 'VLRBII'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRIIM: TBCDField
      FieldName = 'VLRIIM'
      Precision = 15
      Size = 2
    end
    object CadE440NfcNUMDOI: TStringField
      FieldName = 'NUMDOI'
    end
    object CadE440NfcDATDOI: TDateTimeField
      FieldName = 'DATDOI'
    end
    object CadE440NfcINTPAT: TStringField
      FieldName = 'INTPAT'
      Size = 1
    end
    object CadE440NfcVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLROCL: TBCDField
      FieldName = 'VLROCL'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLROPT: TBCDField
      FieldName = 'VLROPT'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLROCT: TBCDField
      FieldName = 'VLROCT'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLROOR: TBCDField
      FieldName = 'VLROOR'
      Precision = 15
      Size = 2
    end
    object CadE440NfcCODSEL: TStringField
      FieldName = 'CODSEL'
      Size = 3
    end
    object CadE440NfcCODSSL: TStringField
      FieldName = 'CODSSL'
      Size = 2
    end
    object CadE440NfcPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object CadE440NfcPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object CadE440NfcPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object CadE440NfcVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object CadE440NfcBECIPI: TBCDField
      FieldName = 'BECIPI'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVECIPI: TBCDField
      FieldName = 'VECIPI'
      Precision = 15
      Size = 2
    end
    object CadE440NfcBECICM: TBCDField
      FieldName = 'BECICM'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVECICM: TBCDField
      FieldName = 'VECICM'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBIE: TBCDField
      FieldName = 'VLRBIE'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRIEM: TBCDField
      FieldName = 'VLRIEM'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRFEI: TBCDField
      FieldName = 'VLRFEI'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRSEI: TBCDField
      FieldName = 'VLRSEI'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLROUI: TBCDField
      FieldName = 'VLROUI'
      Precision = 15
      Size = 2
    end
    object CadE440NfcBCOIMP: TBCDField
      FieldName = 'BCOIMP'
      Precision = 15
      Size = 2
    end
    object CadE440NfcCOFIMP: TBCDField
      FieldName = 'COFIMP'
      Precision = 15
      Size = 2
    end
    object CadE440NfcBPIIMP: TBCDField
      FieldName = 'BPIIMP'
      Precision = 15
      Size = 2
    end
    object CadE440NfcPISIMP: TBCDField
      FieldName = 'PISIMP'
      Precision = 15
      Size = 2
    end
    object CadE440NfcNUMCNT: TIntegerField
      FieldName = 'NUMCNT'
    end
    object CadE440NfcIDENFC: TStringField
      FieldName = 'IDENFC'
      Size = 30
    end
    object CadE440NfcNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object CadE440NfcROTNAP: TIntegerField
      FieldName = 'ROTNAP'
    end
    object CadE440NfcFILAPR: TIntegerField
      FieldName = 'FILAPR'
    end
    object CadE440NfcNUMAPR: TBCDField
      FieldName = 'NUMAPR'
      Precision = 10
      Size = 0
    end
    object CadE440NfcSITAPR: TStringField
      FieldName = 'SITAPR'
      Size = 3
    end
    object CadE440NfcPERICF: TBCDField
      FieldName = 'PERICF'
      Precision = 5
      Size = 2
    end
    object CadE440NfcICMFRE: TBCDField
      FieldName = 'ICMFRE'
      Precision = 15
      Size = 2
    end
    object CadE440NfcCLIRCB: TIntegerField
      FieldName = 'CLIRCB'
    end
    object CadE440NfcVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object CadE440NfcVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object CadE440NfcROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object CadE440NfcNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object CadE440NfcPLAVEI: TStringField
      FieldName = 'PLAVEI'
      Size = 10
    end
    object CadE440NfcCODVIA: TStringField
      FieldName = 'CODVIA'
      Size = 3
    end
    object CadE440NfcCHVNEL: TStringField
      FieldName = 'CHVNEL'
      Size = 50
    end
    object CadE440NfcSOMFRE: TStringField
      FieldName = 'SOMFRE'
      Size = 1
    end
    object CadE440NfcUFSVEI: TStringField
      FieldName = 'UFSVEI'
      Size = 2
    end
    object CadE440NfcNUMINT: TStringField
      FieldName = 'NUMINT'
    end
    object CadE440NfcFILFIX: TIntegerField
      FieldName = 'FILFIX'
    end
    object CadE440NfcNUMFIX: TIntegerField
      FieldName = 'NUMFIX'
    end
    object CadE440NfcFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object CadE440NfcNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object CadE440NfcUSU_PLAVEI: TStringField
      FieldName = 'USU_PLAVEI'
      Size = 8
    end
    object CadE440NfcCODEQU: TIntegerField
      FieldName = 'CODEQU'
    end
    object CadE440NfcNUMCFI: TIntegerField
      FieldName = 'NUMCFI'
    end
    object CadE440NfcTIPNDI: TStringField
      FieldName = 'TIPNDI'
      Size = 1
    end
    object CadE440NfcLOCDES: TStringField
      FieldName = 'LOCDES'
      Size = 60
    end
    object CadE440NfcDATDES: TDateTimeField
      FieldName = 'DATDES'
    end
    object CadE440NfcUFSDES: TStringField
      FieldName = 'UFSDES'
      Size = 2
    end
    object CadE440NfcCODEXP: TIntegerField
      FieldName = 'CODEXP'
    end
  end
  object ContaReg: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select count(e440nfc.numnfc) as total'
      '                           from e440nfc'
      '                           where e440nfc.CHVNEL = '#39' '#39' and'
      '                                 e440nfc.codsnf = '#39'NFE'#39' and'
      '                                 e440nfc.tipnfe not in (3,7)  ')
    Left = 144
    Top = 224
    object ContaRegTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object BuscaE440Nfc: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numnfc'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'cgccpf'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e440nfc.*,e095for.nomfor,e095for.cgccpf'
      '                           from e440nfc'
      'inner join e095for on e095for.codfor = e440nfc.codfor'
      '                           where e440nfc.CHVNEL = '#39' '#39' and'
      '                                 e440nfc.codsnf = '#39'NFE'#39' and '
      '                                 e440nfc.numnfc = :numnfc and'
      '                                  e095for.cgccpf = :cgccpf'
      
        '                                 order by e095for.codfor,e440nfc' +
        '.datent')
    Left = 144
    Top = 304
    object BuscaE440NfcCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object BuscaE440NfcCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object BuscaE440NfcCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object BuscaE440NfcNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object BuscaE440NfcCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object BuscaE440NfcTIPNFE: TIntegerField
      FieldName = 'TIPNFE'
    end
    object BuscaE440NfcCODEDC: TStringField
      FieldName = 'CODEDC'
      Size = 3
    end
    object BuscaE440NfcCODTRI: TStringField
      FieldName = 'CODTRI'
      Size = 5
    end
    object BuscaE440NfcDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object BuscaE440NfcTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object BuscaE440NfcTNSSER: TStringField
      FieldName = 'TNSSER'
      Size = 5
    end
    object BuscaE440NfcNOPPRO: TStringField
      FieldName = 'NOPPRO'
      Size = 5
    end
    object BuscaE440NfcNOPSER: TStringField
      FieldName = 'NOPSER'
      Size = 5
    end
    object BuscaE440NfcDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object BuscaE440NfcUFSCIC: TStringField
      FieldName = 'UFSCIC'
      Size = 2
    end
    object BuscaE440NfcCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object BuscaE440NfcCODFPG: TIntegerField
      FieldName = 'CODFPG'
    end
    object BuscaE440NfcCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object BuscaE440NfcDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object BuscaE440NfcCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object BuscaE440NfcFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object BuscaE440NfcCODFCR: TStringField
      FieldName = 'CODFCR'
      Size = 3
    end
    object BuscaE440NfcDATFCR: TDateTimeField
      FieldName = 'DATFCR'
    end
    object BuscaE440NfcCODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object BuscaE440NfcCODRED: TIntegerField
      FieldName = 'CODRED'
    end
    object BuscaE440NfcQTDEMB: TIntegerField
      FieldName = 'QTDEMB'
    end
    object BuscaE440NfcCODEMB: TIntegerField
      FieldName = 'CODEMB'
    end
    object BuscaE440NfcNUMEMB: TStringField
      FieldName = 'NUMEMB'
      Size = 30
    end
    object BuscaE440NfcCODMS1: TIntegerField
      FieldName = 'CODMS1'
    end
    object BuscaE440NfcCODMS2: TIntegerField
      FieldName = 'CODMS2'
    end
    object BuscaE440NfcCODMS3: TIntegerField
      FieldName = 'CODMS3'
    end
    object BuscaE440NfcCODMS4: TIntegerField
      FieldName = 'CODMS4'
    end
    object BuscaE440NfcOBSNFC: TStringField
      FieldName = 'OBSNFC'
      Size = 1000
    end
    object BuscaE440NfcPESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 14
      Size = 5
    end
    object BuscaE440NfcPESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 14
      Size = 5
    end
    object BuscaE440NfcPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object BuscaE440NfcPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object BuscaE440NfcPERFIN: TBCDField
      FieldName = 'PERFIN'
      Precision = 4
      Size = 2
    end
    object BuscaE440NfcVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcCIFFOB: TStringField
      FieldName = 'CIFFOB'
      Size = 1
    end
    object BuscaE440NfcVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBPR: TBCDField
      FieldName = 'VLRBPR'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRDPR: TBCDField
      FieldName = 'VLRDPR'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBSE: TBCDField
      FieldName = 'VLRBSE'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRDSE: TBCDField
      FieldName = 'VLRDSE'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBFU: TBCDField
      FieldName = 'VLRBFU'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRFUN: TBCDField
      FieldName = 'VLRFUN'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBID: TBCDField
      FieldName = 'VLRBID'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRIPD: TBCDField
      FieldName = 'VLRIPD'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRSIC: TBCDField
      FieldName = 'VLRSIC'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBSD: TBCDField
      FieldName = 'VLRBSD'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRISD: TBCDField
      FieldName = 'VLRISD'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBIS: TBCDField
      FieldName = 'VLRBIS'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBIN: TBCDField
      FieldName = 'VLRBIN'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRINS: TBCDField
      FieldName = 'VLRINS'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRLSE: TBCDField
      FieldName = 'VLRLSE'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRINF: TBCDField
      FieldName = 'VLRINF'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcSITNFC: TStringField
      FieldName = 'SITNFC'
      Size = 1
    end
    object BuscaE440NfcCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object BuscaE440NfcVERCAL: TIntegerField
      FieldName = 'VERCAL'
    end
    object BuscaE440NfcINTIMP: TStringField
      FieldName = 'INTIMP'
      Size = 1
    end
    object BuscaE440NfcNUMLOT: TIntegerField
      FieldName = 'NUMLOT'
    end
    object BuscaE440NfcFORISS: TIntegerField
      FieldName = 'FORISS'
    end
    object BuscaE440NfcINDSIG: TStringField
      FieldName = 'INDSIG'
      Size = 1
    end
    object BuscaE440NfcUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object BuscaE440NfcDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object BuscaE440NfcHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object BuscaE440NfcPERFRE: TBCDField
      FieldName = 'PERFRE'
      Precision = 5
      Size = 2
    end
    object BuscaE440NfcPERSEG: TBCDField
      FieldName = 'PERSEG'
      Precision = 5
      Size = 2
    end
    object BuscaE440NfcPEREMB: TBCDField
      FieldName = 'PEREMB'
      Precision = 5
      Size = 2
    end
    object BuscaE440NfcPERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
    object BuscaE440NfcPEROUT: TBCDField
      FieldName = 'PEROUT'
      Precision = 5
      Size = 2
    end
    object BuscaE440NfcSEQORM: TIntegerField
      FieldName = 'SEQORM'
    end
    object BuscaE440NfcVLRBPI: TBCDField
      FieldName = 'VLRBPI'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object BuscaE440NfcINDSIN: TStringField
      FieldName = 'INDSIN'
      Size = 1
    end
    object BuscaE440NfcPRCNFC: TIntegerField
      FieldName = 'PRCNFC'
    end
    object BuscaE440NfcVLRBCR: TBCDField
      FieldName = 'VLRBCR'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRCOR: TBCDField
      FieldName = 'VLRCOR'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBII: TBCDField
      FieldName = 'VLRBII'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRIIM: TBCDField
      FieldName = 'VLRIIM'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcNUMDOI: TStringField
      FieldName = 'NUMDOI'
    end
    object BuscaE440NfcDATDOI: TDateTimeField
      FieldName = 'DATDOI'
    end
    object BuscaE440NfcINTPAT: TStringField
      FieldName = 'INTPAT'
      Size = 1
    end
    object BuscaE440NfcVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLROCL: TBCDField
      FieldName = 'VLROCL'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLROPT: TBCDField
      FieldName = 'VLROPT'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLROCT: TBCDField
      FieldName = 'VLROCT'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLROOR: TBCDField
      FieldName = 'VLROOR'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcCODSEL: TStringField
      FieldName = 'CODSEL'
      Size = 3
    end
    object BuscaE440NfcCODSSL: TStringField
      FieldName = 'CODSSL'
      Size = 2
    end
    object BuscaE440NfcPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object BuscaE440NfcPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object BuscaE440NfcPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object BuscaE440NfcVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcBECIPI: TBCDField
      FieldName = 'BECIPI'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVECIPI: TBCDField
      FieldName = 'VECIPI'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcBECICM: TBCDField
      FieldName = 'BECICM'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVECICM: TBCDField
      FieldName = 'VECICM'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBIE: TBCDField
      FieldName = 'VLRBIE'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRIEM: TBCDField
      FieldName = 'VLRIEM'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRFEI: TBCDField
      FieldName = 'VLRFEI'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRSEI: TBCDField
      FieldName = 'VLRSEI'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLROUI: TBCDField
      FieldName = 'VLROUI'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcBCOIMP: TBCDField
      FieldName = 'BCOIMP'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcCOFIMP: TBCDField
      FieldName = 'COFIMP'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcBPIIMP: TBCDField
      FieldName = 'BPIIMP'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcPISIMP: TBCDField
      FieldName = 'PISIMP'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcNUMCNT: TIntegerField
      FieldName = 'NUMCNT'
    end
    object BuscaE440NfcIDENFC: TStringField
      FieldName = 'IDENFC'
      Size = 30
    end
    object BuscaE440NfcNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object BuscaE440NfcROTNAP: TIntegerField
      FieldName = 'ROTNAP'
    end
    object BuscaE440NfcFILAPR: TIntegerField
      FieldName = 'FILAPR'
    end
    object BuscaE440NfcNUMAPR: TBCDField
      FieldName = 'NUMAPR'
      Precision = 10
      Size = 0
    end
    object BuscaE440NfcSITAPR: TStringField
      FieldName = 'SITAPR'
      Size = 3
    end
    object BuscaE440NfcPERICF: TBCDField
      FieldName = 'PERICF'
      Precision = 5
      Size = 2
    end
    object BuscaE440NfcICMFRE: TBCDField
      FieldName = 'ICMFRE'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcCLIRCB: TIntegerField
      FieldName = 'CLIRCB'
    end
    object BuscaE440NfcVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object BuscaE440NfcROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object BuscaE440NfcNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object BuscaE440NfcPLAVEI: TStringField
      FieldName = 'PLAVEI'
      Size = 10
    end
    object BuscaE440NfcCODVIA: TStringField
      FieldName = 'CODVIA'
      Size = 3
    end
    object BuscaE440NfcCHVNEL: TStringField
      FieldName = 'CHVNEL'
      Size = 50
    end
    object BuscaE440NfcSOMFRE: TStringField
      FieldName = 'SOMFRE'
      Size = 1
    end
    object BuscaE440NfcUFSVEI: TStringField
      FieldName = 'UFSVEI'
      Size = 2
    end
    object BuscaE440NfcNUMINT: TStringField
      FieldName = 'NUMINT'
    end
    object BuscaE440NfcFILFIX: TIntegerField
      FieldName = 'FILFIX'
    end
    object BuscaE440NfcNUMFIX: TIntegerField
      FieldName = 'NUMFIX'
    end
    object BuscaE440NfcFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object BuscaE440NfcNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object BuscaE440NfcUSU_PLAVEI: TStringField
      FieldName = 'USU_PLAVEI'
      Size = 8
    end
    object BuscaE440NfcCODEQU: TIntegerField
      FieldName = 'CODEQU'
    end
    object BuscaE440NfcNUMCFI: TIntegerField
      FieldName = 'NUMCFI'
    end
    object BuscaE440NfcTIPNDI: TStringField
      FieldName = 'TIPNDI'
      Size = 1
    end
    object BuscaE440NfcLOCDES: TStringField
      FieldName = 'LOCDES'
      Size = 60
    end
    object BuscaE440NfcDATDES: TDateTimeField
      FieldName = 'DATDES'
    end
    object BuscaE440NfcUFSDES: TStringField
      FieldName = 'UFSDES'
      Size = 2
    end
    object BuscaE440NfcCODEXP: TIntegerField
      FieldName = 'CODEXP'
    end
    object BuscaE440NfcNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
    object BuscaE440NfcCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
  end
  object BuscaE440Nfc2: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numnfc'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'cgccpf'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e440nfc.*,e095for.nomfor,e095for.cgccpf'
      '                           from e440nfc'
      'inner join e095for on e095for.codfor = e440nfc.codfor'
      '                           where e440nfc.CHVNEL <> '#39' '#39' and'
      '                                 e440nfc.codsnf = '#39'NFE'#39' and'
      '                                 e440nfc.numnfc = :numnfc and'
      '                                  e095for.cgccpf = :cgccpf'
      
        '                                 order by e095for.codfor,e440nfc' +
        '.datent')
    Left = 144
    Top = 352
    object BuscaE440Nfc2CODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object BuscaE440Nfc2CODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object BuscaE440Nfc2CODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object BuscaE440Nfc2NUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object BuscaE440Nfc2CODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object BuscaE440Nfc2TIPNFE: TIntegerField
      FieldName = 'TIPNFE'
    end
    object BuscaE440Nfc2CODEDC: TStringField
      FieldName = 'CODEDC'
      Size = 3
    end
    object BuscaE440Nfc2CODTRI: TStringField
      FieldName = 'CODTRI'
      Size = 5
    end
    object BuscaE440Nfc2DATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object BuscaE440Nfc2TNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object BuscaE440Nfc2TNSSER: TStringField
      FieldName = 'TNSSER'
      Size = 5
    end
    object BuscaE440Nfc2NOPPRO: TStringField
      FieldName = 'NOPPRO'
      Size = 5
    end
    object BuscaE440Nfc2NOPSER: TStringField
      FieldName = 'NOPSER'
      Size = 5
    end
    object BuscaE440Nfc2DATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object BuscaE440Nfc2UFSCIC: TStringField
      FieldName = 'UFSCIC'
      Size = 2
    end
    object BuscaE440Nfc2CODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object BuscaE440Nfc2CODFPG: TIntegerField
      FieldName = 'CODFPG'
    end
    object BuscaE440Nfc2CODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object BuscaE440Nfc2DATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object BuscaE440Nfc2COTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object BuscaE440Nfc2FECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object BuscaE440Nfc2CODFCR: TStringField
      FieldName = 'CODFCR'
      Size = 3
    end
    object BuscaE440Nfc2DATFCR: TDateTimeField
      FieldName = 'DATFCR'
    end
    object BuscaE440Nfc2CODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object BuscaE440Nfc2CODRED: TIntegerField
      FieldName = 'CODRED'
    end
    object BuscaE440Nfc2QTDEMB: TIntegerField
      FieldName = 'QTDEMB'
    end
    object BuscaE440Nfc2CODEMB: TIntegerField
      FieldName = 'CODEMB'
    end
    object BuscaE440Nfc2NUMEMB: TStringField
      FieldName = 'NUMEMB'
      Size = 30
    end
    object BuscaE440Nfc2CODMS1: TIntegerField
      FieldName = 'CODMS1'
    end
    object BuscaE440Nfc2CODMS2: TIntegerField
      FieldName = 'CODMS2'
    end
    object BuscaE440Nfc2CODMS3: TIntegerField
      FieldName = 'CODMS3'
    end
    object BuscaE440Nfc2CODMS4: TIntegerField
      FieldName = 'CODMS4'
    end
    object BuscaE440Nfc2OBSNFC: TStringField
      FieldName = 'OBSNFC'
      Size = 1000
    end
    object BuscaE440Nfc2PESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 14
      Size = 5
    end
    object BuscaE440Nfc2PESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 14
      Size = 5
    end
    object BuscaE440Nfc2PERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object BuscaE440Nfc2PERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object BuscaE440Nfc2PERFIN: TBCDField
      FieldName = 'PERFIN'
      Precision = 4
      Size = 2
    end
    object BuscaE440Nfc2VLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2CIFFOB: TStringField
      FieldName = 'CIFFOB'
      Size = 1
    end
    object BuscaE440Nfc2VLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBPR: TBCDField
      FieldName = 'VLRBPR'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRDPR: TBCDField
      FieldName = 'VLRDPR'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBSE: TBCDField
      FieldName = 'VLRBSE'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRDSE: TBCDField
      FieldName = 'VLRDSE'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBFU: TBCDField
      FieldName = 'VLRBFU'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRFUN: TBCDField
      FieldName = 'VLRFUN'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBID: TBCDField
      FieldName = 'VLRBID'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRIPD: TBCDField
      FieldName = 'VLRIPD'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRSIC: TBCDField
      FieldName = 'VLRSIC'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBSD: TBCDField
      FieldName = 'VLRBSD'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRISD: TBCDField
      FieldName = 'VLRISD'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBIS: TBCDField
      FieldName = 'VLRBIS'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBIN: TBCDField
      FieldName = 'VLRBIN'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRINS: TBCDField
      FieldName = 'VLRINS'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRLSE: TBCDField
      FieldName = 'VLRLSE'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRINF: TBCDField
      FieldName = 'VLRINF'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2SITNFC: TStringField
      FieldName = 'SITNFC'
      Size = 1
    end
    object BuscaE440Nfc2CODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object BuscaE440Nfc2VERCAL: TIntegerField
      FieldName = 'VERCAL'
    end
    object BuscaE440Nfc2INTIMP: TStringField
      FieldName = 'INTIMP'
      Size = 1
    end
    object BuscaE440Nfc2NUMLOT: TIntegerField
      FieldName = 'NUMLOT'
    end
    object BuscaE440Nfc2FORISS: TIntegerField
      FieldName = 'FORISS'
    end
    object BuscaE440Nfc2INDSIG: TStringField
      FieldName = 'INDSIG'
      Size = 1
    end
    object BuscaE440Nfc2USUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object BuscaE440Nfc2DATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object BuscaE440Nfc2HORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object BuscaE440Nfc2PERFRE: TBCDField
      FieldName = 'PERFRE'
      Precision = 5
      Size = 2
    end
    object BuscaE440Nfc2PERSEG: TBCDField
      FieldName = 'PERSEG'
      Precision = 5
      Size = 2
    end
    object BuscaE440Nfc2PEREMB: TBCDField
      FieldName = 'PEREMB'
      Precision = 5
      Size = 2
    end
    object BuscaE440Nfc2PERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
    object BuscaE440Nfc2PEROUT: TBCDField
      FieldName = 'PEROUT'
      Precision = 5
      Size = 2
    end
    object BuscaE440Nfc2SEQORM: TIntegerField
      FieldName = 'SEQORM'
    end
    object BuscaE440Nfc2VLRBPI: TBCDField
      FieldName = 'VLRBPI'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2EXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object BuscaE440Nfc2INDSIN: TStringField
      FieldName = 'INDSIN'
      Size = 1
    end
    object BuscaE440Nfc2PRCNFC: TIntegerField
      FieldName = 'PRCNFC'
    end
    object BuscaE440Nfc2VLRBCR: TBCDField
      FieldName = 'VLRBCR'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRCOR: TBCDField
      FieldName = 'VLRCOR'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBII: TBCDField
      FieldName = 'VLRBII'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRIIM: TBCDField
      FieldName = 'VLRIIM'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2NUMDOI: TStringField
      FieldName = 'NUMDOI'
    end
    object BuscaE440Nfc2DATDOI: TDateTimeField
      FieldName = 'DATDOI'
    end
    object BuscaE440Nfc2INTPAT: TStringField
      FieldName = 'INTPAT'
      Size = 1
    end
    object BuscaE440Nfc2VLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLROCL: TBCDField
      FieldName = 'VLROCL'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLROPT: TBCDField
      FieldName = 'VLROPT'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLROCT: TBCDField
      FieldName = 'VLROCT'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLROOR: TBCDField
      FieldName = 'VLROOR'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2CODSEL: TStringField
      FieldName = 'CODSEL'
      Size = 3
    end
    object BuscaE440Nfc2CODSSL: TStringField
      FieldName = 'CODSSL'
      Size = 2
    end
    object BuscaE440Nfc2PERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object BuscaE440Nfc2PERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object BuscaE440Nfc2PERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object BuscaE440Nfc2VLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2BECIPI: TBCDField
      FieldName = 'BECIPI'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VECIPI: TBCDField
      FieldName = 'VECIPI'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2BECICM: TBCDField
      FieldName = 'BECICM'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VECICM: TBCDField
      FieldName = 'VECICM'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBIE: TBCDField
      FieldName = 'VLRBIE'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRIEM: TBCDField
      FieldName = 'VLRIEM'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRFEI: TBCDField
      FieldName = 'VLRFEI'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRSEI: TBCDField
      FieldName = 'VLRSEI'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLROUI: TBCDField
      FieldName = 'VLROUI'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2BCOIMP: TBCDField
      FieldName = 'BCOIMP'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2COFIMP: TBCDField
      FieldName = 'COFIMP'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2BPIIMP: TBCDField
      FieldName = 'BPIIMP'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2PISIMP: TBCDField
      FieldName = 'PISIMP'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2NUMCNT: TIntegerField
      FieldName = 'NUMCNT'
    end
    object BuscaE440Nfc2IDENFC: TStringField
      FieldName = 'IDENFC'
      Size = 30
    end
    object BuscaE440Nfc2NUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object BuscaE440Nfc2ROTNAP: TIntegerField
      FieldName = 'ROTNAP'
    end
    object BuscaE440Nfc2FILAPR: TIntegerField
      FieldName = 'FILAPR'
    end
    object BuscaE440Nfc2NUMAPR: TBCDField
      FieldName = 'NUMAPR'
      Precision = 10
      Size = 0
    end
    object BuscaE440Nfc2SITAPR: TStringField
      FieldName = 'SITAPR'
      Size = 3
    end
    object BuscaE440Nfc2PERICF: TBCDField
      FieldName = 'PERICF'
      Precision = 5
      Size = 2
    end
    object BuscaE440Nfc2ICMFRE: TBCDField
      FieldName = 'ICMFRE'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2CLIRCB: TIntegerField
      FieldName = 'CLIRCB'
    end
    object BuscaE440Nfc2VLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2VLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object BuscaE440Nfc2ROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object BuscaE440Nfc2NUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object BuscaE440Nfc2PLAVEI: TStringField
      FieldName = 'PLAVEI'
      Size = 10
    end
    object BuscaE440Nfc2CODVIA: TStringField
      FieldName = 'CODVIA'
      Size = 3
    end
    object BuscaE440Nfc2CHVNEL: TStringField
      FieldName = 'CHVNEL'
      Size = 50
    end
    object BuscaE440Nfc2SOMFRE: TStringField
      FieldName = 'SOMFRE'
      Size = 1
    end
    object BuscaE440Nfc2UFSVEI: TStringField
      FieldName = 'UFSVEI'
      Size = 2
    end
    object BuscaE440Nfc2NUMINT: TStringField
      FieldName = 'NUMINT'
    end
    object BuscaE440Nfc2FILFIX: TIntegerField
      FieldName = 'FILFIX'
    end
    object BuscaE440Nfc2NUMFIX: TIntegerField
      FieldName = 'NUMFIX'
    end
    object BuscaE440Nfc2FILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object BuscaE440Nfc2NUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object BuscaE440Nfc2USU_PLAVEI: TStringField
      FieldName = 'USU_PLAVEI'
      Size = 8
    end
    object BuscaE440Nfc2CODEQU: TIntegerField
      FieldName = 'CODEQU'
    end
    object BuscaE440Nfc2NUMCFI: TIntegerField
      FieldName = 'NUMCFI'
    end
    object BuscaE440Nfc2TIPNDI: TStringField
      FieldName = 'TIPNDI'
      Size = 1
    end
    object BuscaE440Nfc2LOCDES: TStringField
      FieldName = 'LOCDES'
      Size = 60
    end
    object BuscaE440Nfc2DATDES: TDateTimeField
      FieldName = 'DATDES'
    end
    object BuscaE440Nfc2UFSDES: TStringField
      FieldName = 'UFSDES'
      Size = 2
    end
    object BuscaE440Nfc2CODEXP: TIntegerField
      FieldName = 'CODEXP'
    end
    object BuscaE440Nfc2NOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
    object BuscaE440Nfc2CGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
  end
end
