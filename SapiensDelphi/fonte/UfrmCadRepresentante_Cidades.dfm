object frmCadRepresentante_Cidades: TfrmCadRepresentante_Cidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Representante X Cidades de Venda'
  ClientHeight = 611
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
    Left = 9
    Top = 11
    Width = 85
    Height = 13
    Caption = 'Representante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 5
    Top = 48
    Width = 111
    Height = 13
    Caption = 'Cidades Dispon'#237'veis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 543
    Top = 48
    Width = 149
    Height = 13
    Caption = 'Cidades do Representante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCodRep: TCurrencyEdit
    Left = 96
    Top = 8
    Width = 100
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Alignment = taCenter
    Color = clInfoBk
    Ctl3D = False
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnExit = edtCodRepExit
  end
  object btnConsRep: TBitBtn
    Left = 172
    Top = 9
    Width = 22
    Height = 17
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
    TabStop = False
    OnClick = btnConsRepClick
  end
  object edtDesRep: TEdit
    Left = 200
    Top = 8
    Width = 232
    Height = 19
    TabStop = False
    Color = clInfoBk
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object dbgrdCidDisponiveis: TDBGrid
    Left = 0
    Top = 88
    Width = 450
    Height = 492
    DataSource = dsClientConsCidadesDisp
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMCID'
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
        FieldName = 'USU_POPULACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Popula'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODRAI'
        Title.Alignment = taCenter
        Title.Caption = 'Cod. Raiz'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APEREP'
        Title.Alignment = taCenter
        Title.Caption = 'Representante'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_GENTILICO'
        Title.Alignment = taCenter
        Title.Caption = 'Gent'#237'lico'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_PIB'
        Title.Alignment = taCenter
        Title.Caption = 'PIB'
        Width = 80
        Visible = True
      end>
  end
  object dbgrdCidRep: TDBGrid
    Left = 543
    Top = 88
    Width = 450
    Height = 492
    DataSource = dsClientConsCidadesRep
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMCID'
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
        FieldName = 'USU_POPULACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Popula'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODRAI'
        Title.Alignment = taCenter
        Title.Caption = 'Cod. Raiz'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_GENTILICO'
        Title.Alignment = taCenter
        Title.Caption = 'Gent'#237'lico'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_PIB'
        Title.Alignment = taCenter
        Title.Caption = 'PIB'
        Width = 80
        Visible = True
      end>
  end
  object btnLimpar: TBitBtn
    Left = 912
    Top = 60
    Width = 75
    Height = 25
    Caption = 'Limpar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btnLimparClick
  end
  object edtCidDisponivel: TEdit
    Left = 2
    Top = 64
    Width = 264
    Height = 21
    TabOrder = 6
    OnChange = edtCidDisponivelChange
  end
  object edtCidRep: TEdit
    Left = 543
    Top = 64
    Width = 264
    Height = 21
    TabOrder = 7
    OnChange = edtCidRepChange
  end
  object btn1: TBitBtn
    Left = 459
    Top = 280
    Width = 75
    Height = 25
    Caption = '-->'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 460
    Top = 317
    Width = 75
    Height = 25
    Caption = '<--'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 9
    OnClick = btn2Click
  end
  object cbbUfDisponivel: TComboBox
    Left = 271
    Top = 64
    Width = 49
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 0
    TabOrder = 10
    Text = '..'
    OnChange = cbbUfDisponivelChange
    Items.Strings = (
      '..'
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
  end
  object cbbUfRep: TComboBox
    Left = 811
    Top = 64
    Width = 52
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 0
    TabOrder = 11
    Text = '..'
    OnChange = cbbUfRepChange
    Items.Strings = (
      '..'
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
  end
  object dbedtTQtdCid: TDBEdit
    Left = 885
    Top = 586
    Width = 100
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'TQtdCid'
    DataSource = dsClientConsCidadesRep
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 12
  end
  object dbedtTQtdCidDisp: TDBEdit
    Left = 8
    Top = 586
    Width = 100
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'TQtdCid'
    DataSource = dsClientConsCidadesDisp
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 13
  end
  object ConsCidadesDisp: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select e008rai.*,'
      '       e090rep.aperep'
      '  from e008rai'
      '  left join e090rep on e090rep.codrep = e008rai.usu_codrep')
    Left = 144
    Top = 192
    object ConsCidadesDispCODRAI: TIntegerField
      FieldName = 'CODRAI'
    end
    object ConsCidadesDispNOMCID: TStringField
      FieldName = 'NOMCID'
      Size = 60
    end
    object ConsCidadesDispSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsCidadesDispPOPCID: TIntegerField
      FieldName = 'POPCID'
    end
    object ConsCidadesDispPOTALF: TBCDField
      FieldName = 'POTALF'
      Precision = 5
      Size = 3
    end
    object ConsCidadesDispLOCGEO: TStringField
      FieldName = 'LOCGEO'
      Size = 6
    end
    object ConsCidadesDispINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsCidadesDispDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsCidadesDispHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsCidadesDispNUMFEB: TIntegerField
      FieldName = 'NUMFEB'
    end
    object ConsCidadesDispUSU_GENTILICO: TStringField
      FieldName = 'USU_GENTILICO'
    end
    object ConsCidadesDispUSU_POPULACAO: TIntegerField
      FieldName = 'USU_POPULACAO'
    end
    object ConsCidadesDispUSU_PIB: TBCDField
      FieldName = 'USU_PIB'
      Precision = 11
      Size = 2
    end
    object ConsCidadesDispUSU_AREAT: TIntegerField
      FieldName = 'USU_AREAT'
    end
    object ConsCidadesDispUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object ConsCidadesDispIMGLGT: TStringField
      FieldName = 'IMGLGT'
      Size = 250
    end
    object ConsCidadesDispAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
  end
  object ProviderConsCidadesDisp: TDataSetProvider
    DataSet = ConsCidadesDisp
    Left = 144
    Top = 240
  end
  object ClientConsCidadesDisp: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsCidadesDisp'
    Left = 144
    Top = 288
    object ClientConsCidadesDispCODRAI: TIntegerField
      Alignment = taCenter
      FieldName = 'CODRAI'
    end
    object ClientConsCidadesDispNOMCID: TStringField
      FieldName = 'NOMCID'
      Size = 60
    end
    object ClientConsCidadesDispSIGUFS: TStringField
      Alignment = taCenter
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ClientConsCidadesDispPOPCID: TIntegerField
      Alignment = taCenter
      FieldName = 'POPCID'
    end
    object ClientConsCidadesDispPOTALF: TBCDField
      Alignment = taCenter
      FieldName = 'POTALF'
      Precision = 5
      Size = 3
    end
    object ClientConsCidadesDispLOCGEO: TStringField
      Alignment = taCenter
      FieldName = 'LOCGEO'
      Size = 6
    end
    object ClientConsCidadesDispINDEXP: TIntegerField
      Alignment = taCenter
      FieldName = 'INDEXP'
    end
    object ClientConsCidadesDispDATPAL: TDateTimeField
      Alignment = taCenter
      FieldName = 'DATPAL'
    end
    object ClientConsCidadesDispHORPAL: TIntegerField
      Alignment = taCenter
      FieldName = 'HORPAL'
    end
    object ClientConsCidadesDispNUMFEB: TIntegerField
      Alignment = taCenter
      FieldName = 'NUMFEB'
    end
    object ClientConsCidadesDispUSU_GENTILICO: TStringField
      FieldName = 'USU_GENTILICO'
    end
    object ClientConsCidadesDispUSU_POPULACAO: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_POPULACAO'
      DisplayFormat = ',0.'
    end
    object ClientConsCidadesDispUSU_PIB: TBCDField
      Alignment = taCenter
      FieldName = 'USU_PIB'
      DisplayFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ClientConsCidadesDispUSU_AREAT: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_AREAT'
    end
    object ClientConsCidadesDispUSU_CODREP: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODREP'
    end
    object ClientConsCidadesDispIMGLGT: TStringField
      Alignment = taCenter
      FieldName = 'IMGLGT'
      Size = 250
    end
    object ClientConsCidadesDispAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ClientConsCidadesDispTQtdCid: TAggregateField
      Alignment = taCenter
      FieldName = 'TQtdCid'
      Active = True
      Expression = 'count(codrai)'
    end
  end
  object dsClientConsCidadesDisp: TDataSource
    DataSet = ClientConsCidadesDisp
    Left = 144
    Top = 344
  end
  object ConsCidadesRep: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select e008rai.* from e008rai')
    Left = 712
    Top = 184
    object ConsCidadesRepCODRAI: TIntegerField
      FieldName = 'CODRAI'
    end
    object ConsCidadesRepNOMCID: TStringField
      FieldName = 'NOMCID'
      Size = 60
    end
    object ConsCidadesRepSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsCidadesRepPOPCID: TIntegerField
      FieldName = 'POPCID'
    end
    object ConsCidadesRepPOTALF: TBCDField
      FieldName = 'POTALF'
      Precision = 5
      Size = 3
    end
    object ConsCidadesRepLOCGEO: TStringField
      FieldName = 'LOCGEO'
      Size = 6
    end
    object ConsCidadesRepINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsCidadesRepDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsCidadesRepHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsCidadesRepNUMFEB: TIntegerField
      FieldName = 'NUMFEB'
    end
    object ConsCidadesRepUSU_GENTILICO: TStringField
      FieldName = 'USU_GENTILICO'
    end
    object ConsCidadesRepUSU_POPULACAO: TIntegerField
      FieldName = 'USU_POPULACAO'
    end
    object ConsCidadesRepUSU_PIB: TBCDField
      FieldName = 'USU_PIB'
      Precision = 11
      Size = 2
    end
    object ConsCidadesRepUSU_AREAT: TIntegerField
      FieldName = 'USU_AREAT'
    end
    object ConsCidadesRepUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object ConsCidadesRepIMGLGT: TStringField
      FieldName = 'IMGLGT'
      Size = 250
    end
  end
  object ProviderConsCidadesRep: TDataSetProvider
    DataSet = ConsCidadesRep
    Left = 712
    Top = 232
  end
  object ClientConsCidadesRep: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsCidadesRep'
    Left = 712
    Top = 280
    object ClientConsCidadesRepCODRAI: TIntegerField
      Alignment = taCenter
      FieldName = 'CODRAI'
    end
    object ClientConsCidadesRepNOMCID: TStringField
      FieldName = 'NOMCID'
      Size = 60
    end
    object ClientConsCidadesRepSIGUFS: TStringField
      Alignment = taCenter
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ClientConsCidadesRepPOPCID: TIntegerField
      Alignment = taCenter
      FieldName = 'POPCID'
    end
    object ClientConsCidadesRepPOTALF: TBCDField
      Alignment = taCenter
      FieldName = 'POTALF'
      Precision = 5
      Size = 3
    end
    object ClientConsCidadesRepLOCGEO: TStringField
      Alignment = taCenter
      FieldName = 'LOCGEO'
      Size = 6
    end
    object ClientConsCidadesRepINDEXP: TIntegerField
      Alignment = taCenter
      FieldName = 'INDEXP'
    end
    object ClientConsCidadesRepDATPAL: TDateTimeField
      Alignment = taCenter
      FieldName = 'DATPAL'
    end
    object ClientConsCidadesRepHORPAL: TIntegerField
      Alignment = taCenter
      FieldName = 'HORPAL'
    end
    object ClientConsCidadesRepNUMFEB: TIntegerField
      Alignment = taCenter
      FieldName = 'NUMFEB'
    end
    object ClientConsCidadesRepUSU_GENTILICO: TStringField
      FieldName = 'USU_GENTILICO'
    end
    object ClientConsCidadesRepUSU_POPULACAO: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_POPULACAO'
      DisplayFormat = ',0.'
    end
    object ClientConsCidadesRepUSU_PIB: TBCDField
      Alignment = taCenter
      FieldName = 'USU_PIB'
      DisplayFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ClientConsCidadesRepUSU_AREAT: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_AREAT'
    end
    object ClientConsCidadesRepUSU_CODREP: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODREP'
    end
    object ClientConsCidadesRepIMGLGT: TStringField
      Alignment = taCenter
      FieldName = 'IMGLGT'
      Size = 250
    end
    object ClientConsCidadesRepTQtdCid: TAggregateField
      Alignment = taCenter
      FieldName = 'TQtdCid'
      Active = True
      Expression = 'count(codrai)'
    end
  end
  object dsClientConsCidadesRep: TDataSource
    DataSet = ClientConsCidadesRep
    Left = 720
    Top = 328
  end
end
