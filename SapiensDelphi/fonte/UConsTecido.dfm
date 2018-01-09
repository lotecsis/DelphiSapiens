object FConsTecido: TFConsTecido
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Tecidos'
  ClientHeight = 637
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 90
    Top = 16
    Width = 185
    Height = 13
    Caption = 'Per'#237'odo para calculo de consumo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 215
    Top = 35
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
  object lbl3: TLabel
    Left = 375
    Top = 16
    Width = 49
    Height = 13
    Caption = 'Situa'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 500
    Top = 16
    Width = 45
    Height = 13
    Caption = 'Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbtxtCODPRO: TDBText
    Left = 107
    Top = 323
    Width = 84
    Height = 17
    DataField = 'CODPRO'
    DataSource = dsConsEstoqueTecidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbtxtDESPRO: TDBText
    Left = 227
    Top = 323
    Width = 483
    Height = 17
    DataField = 'DESPRO'
    DataSource = dsConsEstoqueTecidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 209
    Top = 320
    Width = 8
    Height = 24
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 9
    Top = 345
    Width = 34
    Height = 13
    Caption = 'Saldo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 28
    Top = 367
    Width = 48
    Height = 13
    Caption = 'Estoque:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 182
    Top = 367
    Width = 50
    Height = 13
    Caption = 'Reserva:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 336
    Top = 367
    Width = 61
    Height = 13
    Caption = 'Dispon'#237'vel:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 490
    Top = 367
    Width = 55
    Height = 13
    Caption = 'Consumo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 645
    Top = 367
    Width = 22
    Height = 13
    Caption = 'Fila:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl12: TLabel
    Left = 3
    Top = 435
    Width = 107
    Height = 13
    Caption = 'Ordens de Compra:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl13: TLabel
    Left = 581
    Top = 542
    Width = 94
    Height = 13
    Caption = 'Total em aberto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl14: TLabel
    Left = 3
    Top = 560
    Width = 77
    Height = 13
    Caption = 'Fornecedores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = -2
    Top = 76
    Width = 796
    Height = 233
    DataSource = dsConsEstoqueTecidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
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
        Title.Caption = 'TECIDO'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PREMED'
        Title.Alignment = taCenter
        Title.Caption = 'VLR MEDIO'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_VLRMAX'
        Title.Alignment = taCenter
        Title.Caption = 'VLR MAXIMO'
        Width = 120
        Visible = True
      end>
  end
  object CheckLinhas: TRxCheckListBox
    Left = -2
    Top = 0
    Width = 71
    Height = 77
    Color = 15393241
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 18
    ParentFont = False
    TabOrder = 1
    InternalVersion = 202
    Strings = (
      '100'
      0
      True
      '200'
      0
      True
      '300'
      0
      True
      '400'
      0
      True)
  end
  object edDatIni: TDateEdit
    Left = 88
    Top = 33
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object edDatFim: TDateEdit
    Left = 229
    Top = 32
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object cbbSituacao: TComboBox
    Left = 375
    Top = 32
    Width = 97
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 0
    TabOrder = 4
    Text = 'ATIVO'
    Items.Strings = (
      'ATIVO'
      'INATIVO'
      'TODOS')
  end
  object btnMostrar: TBitBtn
    Left = 714
    Top = 4
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btnMostrarClick
  end
  object edtCodPro: TEdit
    Left = 500
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object dbedtQTDEST: TDBEdit
    Left = 27
    Top = 381
    Width = 121
    Height = 24
    TabStop = False
    Color = 14286809
    DataField = 'QTDEST'
    DataSource = dsConsEstoqueTecidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object dbedtUSU_SALRES: TDBEdit
    Left = 181
    Top = 381
    Width = 121
    Height = 24
    TabStop = False
    Color = clGradientInactiveCaption
    DataField = 'USU_SALRES'
    DataSource = dsConsEstoqueTecidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object dbedtSALDO_DISP: TDBEdit
    Left = 335
    Top = 381
    Width = 121
    Height = 24
    TabStop = False
    Color = 12320767
    DataField = 'SALDO_DISP'
    DataSource = dsConsEstoqueTecidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object dbedtQTDMOV: TDBEdit
    Left = 489
    Top = 381
    Width = 121
    Height = 24
    TabStop = False
    Color = 15588572
    DataField = 'QTDMOV'
    DataSource = dsConsEstoqueTecidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object dbedtUSU_SALFIL: TDBEdit
    Left = 644
    Top = 381
    Width = 121
    Height = 24
    TabStop = False
    Color = 13027071
    DataField = 'USU_SALFIL'
    DataSource = dsConsEstoqueTecidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object dbg2: TDBGrid
    Left = -1
    Top = 449
    Width = 795
    Height = 87
    TabStop = False
    DataSource = dsClientConsOCTecido
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMOCP'
        Title.Alignment = taCenter
        Title.Caption = 'O.C'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATEMI'
        Title.Alignment = taCenter
        Title.Caption = 'EMISS'#195'O'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMFOR'
        Title.Alignment = taCenter
        Title.Caption = 'FORNECEDOR'
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDPED'
        Title.Alignment = taCenter
        Title.Caption = 'PEDIDO'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDREC'
        Title.Alignment = taCenter
        Title.Caption = 'RECEBIDO'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDABE'
        Title.Alignment = taCenter
        Title.Caption = 'ABERTO'
        Width = 90
        Visible = True
      end>
  end
  object dbedtTOT_ABERTO: TDBEdit
    Left = 677
    Top = 537
    Width = 114
    Height = 21
    TabStop = False
    DataField = 'TOT_ABERTO'
    DataSource = dsClientConsOCTecido
    ReadOnly = True
    TabOrder = 13
  end
  object dbg3: TDBGrid
    Left = -2
    Top = 574
    Width = 796
    Height = 64
    TabStop = False
    DataSource = dsConsFornecedoresTecido
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODFOR'
        Title.Alignment = taCenter
        Title.Caption = 'CODIGO'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMFOR'
        Title.Alignment = taCenter
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 640
        Visible = True
      end>
  end
  object pnl1: TPanel
    Left = 546
    Top = 415
    Width = 248
    Height = 35
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 15
    object lbl15: TLabel
      Left = 2
      Top = 1
      Width = 55
      Height = 13
      Caption = 'NF Inicial..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl16: TLabel
      Left = 124
      Top = 1
      Width = 50
      Height = 13
      Caption = 'Emiss'#227'o..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl18: TLabel
      Left = 5
      Top = 17
      Width = 52
      Height = 13
      Caption = 'Qtd.Rec..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl19: TLabel
      Left = 127
      Top = 17
      Width = 47
      Height = 13
      Caption = 'Vlr.Unit..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbtxtNUMNFC: TDBText
      Left = 61
      Top = 1
      Width = 58
      Height = 17
      DataField = 'NUMNFC'
      DataSource = dsConsPrimeiraNfTecido
    end
    object dbtxtQTDREC: TDBText
      Left = 61
      Top = 17
      Width = 58
      Height = 17
      DataField = 'QTDREC'
      DataSource = dsConsPrimeiraNfTecido
    end
    object dbtxtDATEMI: TDBText
      Left = 177
      Top = 1
      Width = 65
      Height = 17
      DataField = 'DATEMI'
      DataSource = dsConsPrimeiraNfTecido
    end
    object dbtxtPREUNI: TDBText
      Left = 177
      Top = 17
      Width = 65
      Height = 17
      DataField = 'PREUNI'
      DataSource = dsConsPrimeiraNfTecido
    end
  end
  object dsConsEstoqueTecidos: TDataSource
    DataSet = Dm2.ConsEstoqueTecidos
    Left = 632
    Top = 200
  end
  object dsClientConsOCTecido: TDataSource
    DataSet = Dm2.ClientConsOCTecido
    Left = 568
    Top = 467
  end
  object dsConsFornecedoresTecido: TDataSource
    DataSet = Dm2.ConsFornecedoresTecido
    Left = 328
    Top = 592
  end
  object dsConsPrimeiraNfTecido: TDataSource
    DataSet = Dm2.ConsPrimeiraNfTecido
    Left = 456
    Top = 192
  end
end
