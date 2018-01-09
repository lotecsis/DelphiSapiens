object FConsCoresPorProdutos: TFConsCoresPorProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Rela'#231#227'o de Produtos x Cores'
  ClientHeight = 647
  ClientWidth = 696
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
  object Label8: TLabel
    Left = 524
    Top = 624
    Width = 37
    Height = 15
    Caption = 'TOTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 679
    Height = 174
    BevelKind = bkFlat
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Ctl3D = True
    ParentBiDiMode = False
    ParentCtl3D = False
    TabOrder = 0
    object Label2: TLabel
      Left = 72
      Top = 48
      Width = 44
      Height = 14
      Caption = 'Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 71
      Top = 10
      Width = 43
      Height = 14
      Caption = 'Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 252
      Top = 10
      Width = 6
      Height = 14
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 146
      Width = 105
      Height = 14
      Caption = 'Quantidade M'#237'nima'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 22
      Top = 111
      Width = 94
      Height = 14
      Caption = 'Indiferente 01, 02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 81
      Top = 84
      Width = 35
      Height = 14
      Caption = 'Cor 01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 255
      Top = 84
      Width = 35
      Height = 14
      Caption = 'Cor 02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BconsProduto: TSpeedButton
      Left = 241
      Top = 45
      Width = 23
      Height = 22
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BconsProdutoClick
    end
    object LDsProd: TLabel
      Left = 268
      Top = 49
      Width = 3
      Height = 13
    end
    object EdCodPro: TEdit
      Left = 120
      Top = 45
      Width = 121
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = EdCodProExit
    end
    object EdCor001: TEdit
      Left = 120
      Top = 81
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object EdCor002: TEdit
      Left = 296
      Top = 81
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object EdCorAmbos: TEdit
      Left = 120
      Top = 108
      Width = 121
      Height = 21
      TabOrder = 5
      OnChange = EdCorAmbosChange
    end
    object EdDatIni: TDateEdit
      Left = 120
      Top = 7
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object EdDatFim: TDateEdit
      Left = 271
      Top = 7
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object EdQtdMinima: TCurrencyEdit
      Left = 120
      Top = 143
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0'
      TabOrder = 6
    end
    object BMostrar: TBitBtn
      Left = 579
      Top = 5
      Width = 91
      Height = 25
      Caption = 'Mostrar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 7
      OnClick = BMostrarClick
    end
    object Panel2: TPanel
      Left = 438
      Top = 108
      Width = 229
      Height = 58
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 8
      object ChTodos: TCheckBox
        Left = 8
        Top = 2
        Width = 241
        Height = 17
        Caption = 'Todos ordenados pela quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object RbEstofados: TRadioButton
        Left = 24
        Top = 26
        Width = 89
        Height = 17
        Caption = 'Estofados'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = True
      end
      object RbColchoes: TRadioButton
        Left = 136
        Top = 26
        Width = 89
        Height = 17
        Caption = 'Colch'#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object BImprimir: TBitBtn
      Left = 579
      Top = 32
      Width = 91
      Height = 25
      Caption = 'Imprimir'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 9
      OnClick = BImprimirClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 191
    Width = 679
    Height = 426
    DataSource = DsConsCoresPorProduto
    ReadOnly = True
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
        FieldName = 'USU_CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 280
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_COR001'
        Title.Alignment = taCenter
        Title.Caption = 'COR 01'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_COR002'
        Title.Alignment = taCenter
        Title.Caption = 'COR 02'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDCOR'
        Title.Alignment = taCenter
        Title.Caption = 'QUANTIDADE'
        Width = 90
        Visible = True
      end>
  end
  object EdTotal: TCurrencyEdit
    Left = 566
    Top = 621
    Width = 121
    Height = 22
    Margins.Left = 2
    Margins.Top = 2
    TabStop = False
    Ctl3D = False
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object DsConsCoresPorProduto: TDataSource
    DataSet = DmOra.ConsCoresPorProduto
    Left = 424
    Top = 360
  end
  object DsAux: TDataSource
    Left = 520
    Top = 400
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
    Left = 416
    Top = 295
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
end
