object FAjustaICMS: TFAjustaICMS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ajustar ICMS'
  ClientHeight = 458
  ClientWidth = 787
  Color = clBtnFace
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
    Left = 16
    Top = 16
    Width = 13
    Height = 13
    Caption = 'NF'
  end
  object dbg1: TDBGrid
    Left = 0
    Top = 47
    Width = 787
    Height = 412
    DataSource = dsConsE140IPV
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SEQIPV'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPRO'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODDER'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPLIPV'
        ReadOnly = True
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PREUNI'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBRU'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRICM'
        Visible = True
      end>
  end
  object edtNumNfv: TCurrencyEdit
    Left = 36
    Top = 13
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 1
  end
  object btnMostrar: TBitBtn
    Left = 694
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnMostrarClick
  end
  object ConsE140IPV: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numnfv'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e140ipv where numnfv = :numnfv'
      'order by seqipv')
    Left = 480
    Top = 64
    object ConsE140IPVCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE140IPVCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE140IPVCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object ConsE140IPVNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object ConsE140IPVSEQIPV: TIntegerField
      FieldName = 'SEQIPV'
    end
    object ConsE140IPVTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE140IPVNOPPRO: TStringField
      FieldName = 'NOPPRO'
      Size = 5
    end
    object ConsE140IPVFILPED: TIntegerField
      FieldName = 'FILPED'
    end
    object ConsE140IPVNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE140IPVSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsE140IPVFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object ConsE140IPVNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object ConsE140IPVDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object ConsE140IPVSEQCVP: TIntegerField
      FieldName = 'SEQCVP'
    end
    object ConsE140IPVCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE140IPVCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE140IPVCPLIPV: TStringField
      FieldName = 'CPLIPV'
      Size = 250
    end
    object ConsE140IPVCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE140IPVCODCLF: TStringField
      FieldName = 'CODCLF'
      Size = 3
    end
    object ConsE140IPVCODSTR: TStringField
      FieldName = 'CODSTR'
      Size = 3
    end
    object ConsE140IPVCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ConsE140IPVCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ConsE140IPVCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ConsE140IPVCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ConsE140IPVCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ConsE140IPVCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE140IPVCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 50
    end
    object ConsE140IPVQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ConsE140IPVQTDDEV: TFMTBCDField
      FieldName = 'QTDDEV'
      Precision = 14
      Size = 5
    end
    object ConsE140IPVUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE140IPVUNIEMI: TStringField
      FieldName = 'UNIEMI'
      Size = 3
    end
    object ConsE140IPVVLRFUM: TBCDField
      FieldName = 'VLRFUM'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVQTDFRE: TFMTBCDField
      FieldName = 'QTDFRE'
      Precision = 14
      Size = 5
    end
    object ConsE140IPVFORFRE: TIntegerField
      FieldName = 'FORFRE'
    end
    object ConsE140IPVPESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 14
      Size = 5
    end
    object ConsE140IPVPESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 14
      Size = 5
    end
    object ConsE140IPVCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE140IPVPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsE140IPVPREBAS: TFMTBCDField
      FieldName = 'PREBAS'
      Precision = 15
      Size = 6
    end
    object ConsE140IPVPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVPEROFE: TBCDField
      FieldName = 'PEROFE'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVPERACR: TBCDField
      FieldName = 'PERACR'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVPERFUN: TBCDField
      FieldName = 'PERFUN'
      Precision = 4
      Size = 2
    end
    object ConsE140IPVPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVSALCAN: TStringField
      FieldName = 'SALCAN'
      Size = 1
    end
    object ConsE140IPVNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object ConsE140IPVCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object ConsE140IPVCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ConsE140IPVCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConsE140IPVCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ConsE140IPVVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRBFU: TBCDField
      FieldName = 'VLRBFU'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRFUN: TBCDField
      FieldName = 'VLRFUN'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRBID: TBCDField
      FieldName = 'VLRBID'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRIPD: TBCDField
      FieldName = 'VLRIPD'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRICM: TBCDField
      FieldName = 'VLRICM'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRDFA: TBCDField
      FieldName = 'VLRDFA'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRBSD: TBCDField
      FieldName = 'VLRBSD'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRISD: TBCDField
      FieldName = 'VLRISD'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRIIP: TBCDField
      FieldName = 'VLRIIP'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRIIC: TBCDField
      FieldName = 'VLRIIC'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLROIP: TBCDField
      FieldName = 'VLROIP'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLROIC: TBCDField
      FieldName = 'VLROIC'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVSEQNFI: TIntegerField
      FieldName = 'SEQNFI'
    end
    object ConsE140IPVFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object ConsE140IPVCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsE140IPVNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsE140IPVSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object ConsE140IPVSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ConsE140IPVNUMFCC: TIntegerField
      FieldName = 'NUMFCC'
    end
    object ConsE140IPVUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE140IPVDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE140IPVHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE140IPVSERCCL: TStringField
      FieldName = 'SERCCL'
      Size = 3
    end
    object ConsE140IPVNUMCCL: TStringField
      FieldName = 'NUMCCL'
      Size = 12
    end
    object ConsE140IPVUNIVEN: TStringField
      FieldName = 'UNIVEN'
      Size = 3
    end
    object ConsE140IPVQTDVEN: TFMTBCDField
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object ConsE140IPVPREVEN: TFMTBCDField
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object ConsE140IPVVLRBPI: TBCDField
      FieldName = 'VLRBPI'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPREBRU: TFMTBCDField
      FieldName = 'PREBRU'
      Precision = 14
      Size = 5
    end
    object ConsE140IPVVLRBCR: TBCDField
      FieldName = 'VLRBCR'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRCOR: TBCDField
      FieldName = 'VLRCOR'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPERIIM: TBCDField
      FieldName = 'PERIIM'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVVLRBII: TBCDField
      FieldName = 'VLRBII'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRIIM: TBCDField
      FieldName = 'VLRIIM'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ConsE140IPVPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVCODBEM: TStringField
      FieldName = 'CODBEM'
    end
    object ConsE140IPVPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object ConsE140IPVVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object ConsE140IPVVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ConsE140IPVVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ConsE140IPVVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ConsE140IPVVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVDESIMP: TStringField
      FieldName = 'DESIMP'
      Size = 250
    end
    object ConsE140IPVCPTFAT: TDateTimeField
      FieldName = 'CPTFAT'
    end
    object ConsE140IPVVLRFEI: TBCDField
      FieldName = 'VLRFEI'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRSEI: TBCDField
      FieldName = 'VLRSEI'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLROUI: TBCDField
      FieldName = 'VLROUI'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVBCOIMP: TBCDField
      FieldName = 'BCOIMP'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVCOFIMP: TBCDField
      FieldName = 'COFIMP'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVBPIIMP: TBCDField
      FieldName = 'BPIIMP'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPISIMP: TBCDField
      FieldName = 'PISIMP'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPEDCPE: TIntegerField
      FieldName = 'PEDCPE'
    end
    object ConsE140IPVIPDCPE: TIntegerField
      FieldName = 'IPDCPE'
    end
    object ConsE140IPVOBSIPV: TStringField
      FieldName = 'OBSIPV'
      Size = 999
    end
    object ConsE140IPVVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 7
    end
    object ConsE140IPVVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 7
    end
    object ConsE140IPVVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRBSF: TBCDField
      FieldName = 'VLRBSF'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRSIF: TBCDField
      FieldName = 'VLRSIF'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object ConsE140IPVCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object ConsE140IPVCSTCOF: TStringField
      FieldName = 'CSTCOF'
      Size = 2
    end
    object ConsE140IPVPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVCODDFS: TIntegerField
      FieldName = 'CODDFS'
    end
    object ConsE140IPVVLRAJS: TBCDField
      FieldName = 'VLRAJS'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPREREP: TFMTBCDField
      FieldName = 'PREREP'
      Precision = 14
      Size = 5
    end
    object ConsE140IPVVLRCID: TBCDField
      FieldName = 'VLRCID'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVTOTCID: TBCDField
      FieldName = 'TOTCID'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVCODMS1: TIntegerField
      FieldName = 'CODMS1'
    end
    object ConsE140IPVCODMS2: TIntegerField
      FieldName = 'CODMS2'
    end
    object ConsE140IPVCODMS3: TIntegerField
      FieldName = 'CODMS3'
    end
    object ConsE140IPVCODMS4: TIntegerField
      FieldName = 'CODMS4'
    end
    object ConsE140IPVQTDBPI: TBCDField
      FieldName = 'QTDBPI'
      Precision = 15
      Size = 3
    end
    object ConsE140IPVALIPIS: TBCDField
      FieldName = 'ALIPIS'
      Precision = 15
    end
    object ConsE140IPVQTDBCO: TBCDField
      FieldName = 'QTDBCO'
      Precision = 15
      Size = 3
    end
    object ConsE140IPVALICOF: TBCDField
      FieldName = 'ALICOF'
      Precision = 15
    end
    object ConsE140IPVQTDBIP: TBCDField
      FieldName = 'QTDBIP'
      Precision = 15
      Size = 3
    end
    object ConsE140IPVALIIPI: TBCDField
      FieldName = 'ALIIPI'
      Precision = 15
    end
    object ConsE140IPVQTDBPF: TBCDField
      FieldName = 'QTDBPF'
      Precision = 15
      Size = 3
    end
    object ConsE140IPVALIPIF: TBCDField
      FieldName = 'ALIPIF'
      Precision = 15
    end
    object ConsE140IPVQTDBCF: TBCDField
      FieldName = 'QTDBCF'
      Precision = 15
      Size = 3
    end
    object ConsE140IPVALICFF: TBCDField
      FieldName = 'ALICFF'
      Precision = 15
    end
    object ConsE140IPVVLRSUB: TBCDField
      FieldName = 'VLRSUB'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVNATPIS: TIntegerField
      FieldName = 'NATPIS'
    end
    object ConsE140IPVNATCOF: TIntegerField
      FieldName = 'NATCOF'
    end
    object ConsE140IPVORIMER: TStringField
      FieldName = 'ORIMER'
      Size = 1
    end
    object ConsE140IPVCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE140IPVNUMCUR: TStringField
      FieldName = 'NUMCUR'
      Size = 40
    end
    object ConsE140IPVPROMON: TStringField
      FieldName = 'PROMON'
      Size = 1
    end
    object ConsE140IPVPROENT: TStringField
      FieldName = 'PROENT'
      Size = 1
    end
    object ConsE140IPVPERMGC: TFMTBCDField
      FieldName = 'PERMGC'
      Precision = 14
      Size = 5
    end
    object ConsE140IPVVARSER: TStringField
      FieldName = 'VARSER'
      Size = 1
    end
    object ConsE140IPVRETMAT: TStringField
      FieldName = 'RETMAT'
      Size = 1
    end
    object ConsE140IPVTIPCUR: TIntegerField
      FieldName = 'TIPCUR'
    end
    object ConsE140IPVEMPCTO: TIntegerField
      FieldName = 'EMPCTO'
    end
    object ConsE140IPVCODPCO: TIntegerField
      FieldName = 'CODPCO'
    end
    object ConsE140IPVFILCTO: TIntegerField
      FieldName = 'FILCTO'
    end
    object ConsE140IPVCPTPCO: TDateTimeField
      FieldName = 'CPTPCO'
    end
    object ConsE140IPVCODFIN: TIntegerField
      FieldName = 'CODFIN'
    end
    object ConsE140IPVMOTDES: TIntegerField
      FieldName = 'MOTDES'
    end
    object ConsE140IPVVLRICD: TBCDField
      FieldName = 'VLRICD'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPERSEN: TBCDField
      FieldName = 'PERSEN'
      Precision = 4
      Size = 2
    end
    object ConsE140IPVVLRBSN: TBCDField
      FieldName = 'VLRBSN'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRSEN: TBCDField
      FieldName = 'VLRSEN'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVCODFCI: TStringField
      FieldName = 'CODFCI'
      Size = 36
    end
    object ConsE140IPVCODBIC: TStringField
      FieldName = 'CODBIC'
      Size = 3
    end
    object ConsE140IPVVLRIBS: TBCDField
      FieldName = 'VLRIBS'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVVLRISN: TBCDField
      FieldName = 'VLRISN'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPERISN: TBCDField
      FieldName = 'PERISN'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVNROSEV: TStringField
      FieldName = 'NROSEV'
      Size = 40
    end
    object ConsE140IPVNUMDRB: TStringField
      FieldName = 'NUMDRB'
      Size = 11
    end
    object ConsE140IPVNUMRDE: TStringField
      FieldName = 'NUMRDE'
      Size = 12
    end
    object ConsE140IPVNATEXP: TStringField
      FieldName = 'NATEXP'
      Size = 1
    end
    object ConsE140IPVCHVNEX: TStringField
      FieldName = 'CHVNEX'
      Size = 50
    end
    object ConsE140IPVDTIGAR: TDateTimeField
      FieldName = 'DTIGAR'
    end
    object ConsE140IPVDTFGAR: TDateTimeField
      FieldName = 'DTFGAR'
    end
    object ConsE140IPVVLRAIP: TBCDField
      FieldName = 'VLRAIP'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPERAIP: TBCDField
      FieldName = 'PERAIP'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVNUMLAN: TIntegerField
      FieldName = 'NUMLAN'
    end
    object ConsE140IPVVLRIDV: TBCDField
      FieldName = 'VLRIDV'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVCODCNV: TIntegerField
      FieldName = 'CODCNV'
    end
    object ConsE140IPVVLRPMC: TBCDField
      FieldName = 'VLRPMC'
      Precision = 11
      Size = 2
    end
    object ConsE140IPVPERDCN: TBCDField
      FieldName = 'PERDCN'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVVLRDCN: TBCDField
      FieldName = 'VLRDCN'
      Precision = 11
      Size = 2
    end
    object ConsE140IPVPERDIF: TBCDField
      FieldName = 'PERDIF'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVBASIDF: TBCDField
      FieldName = 'BASIDF'
      Precision = 15
      Size = 2
    end
    object ConsE140IPVPERIDF: TBCDField
      FieldName = 'PERIDF'
      Precision = 5
      Size = 2
    end
    object ConsE140IPVVLRIDF: TBCDField
      FieldName = 'VLRIDF'
      Precision = 15
      Size = 2
    end
  end
  object dsConsE140IPV: TDataSource
    DataSet = ConsE140IPV
    Left = 568
    Top = 136
  end
end
