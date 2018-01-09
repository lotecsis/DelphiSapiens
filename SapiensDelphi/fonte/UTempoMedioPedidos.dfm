object FTempoMedioPedidos: TFTempoMedioPedidos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tempo M'#233'dio para Produ'#231#227'o de Pedidos'
  ClientHeight = 654
  ClientWidth = 944
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
  object Label3: TLabel
    Left = 710
    Top = 616
    Width = 102
    Height = 13
    Caption = 'Prazo M'#233'dio Geral'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 62
    Width = 255
    Height = 537
    DataSource = dsClientCargasTempMed
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        FieldName = 'NUMANE'
        Title.Alignment = taCenter
        Title.Caption = 'Carga'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDPED'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.Pedidos'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TEMPMED'
        Title.Alignment = taCenter
        Title.Caption = 'Tempo M'#233'dio'
        Width = 80
        Visible = True
      end>
  end
  object dbg2: TDBGrid
    Left = 258
    Top = 62
    Width = 687
    Height = 537
    DataSource = dsClientPedidosTempMedio
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnQtdDias'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.Dias'
        Width = 80
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
        Expanded = False
        FieldName = 'CIDCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SIGUFS'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APEREP'
        Title.Alignment = taCenter
        Title.Caption = 'Representante'
        Width = 110
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMPED'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_EMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Emitido'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_FAT'
        Title.Alignment = taCenter
        Title.Caption = 'Faturado'
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
      end>
  end
  object edtTempoMedio: TCurrencyEdit
    Left = 817
    Top = 613
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    Alignment = taCenter
    DisplayFormat = ',0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 58
    Align = alTop
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 3
    object Label1: TLabel
      Left = 240
      Top = 22
      Width = 119
      Height = 13
      Caption = 'Per'#237'odo para An'#225'lise:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 474
      Top = 22
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
    object edtDatIni: TDateEdit
      Left = 364
      Top = 19
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object edtDatFim: TDateEdit
      Left = 491
      Top = 19
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object btnMostrar: TBitBtn
      Left = 632
      Top = 17
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
  end
  object dsClientCargasTempMed: TDataSource
    DataSet = Dm.ClientCargasTempMed
    Left = 536
    Top = 176
  end
  object dsClientPedidosTempMedio: TDataSource
    DataSet = Dm.ClientPedidosTempMedio
    Left = 432
    Top = 200
  end
end
