object FConsComposicaoMpProdutos: TFConsComposicaoMpProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Produtos / Composi'#231#227'o Cadastrada'
  ClientHeight = 572
  ClientWidth = 870
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
  object Label1: TLabel
    Left = 235
    Top = 11
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
    Left = 416
    Top = 11
    Width = 6
    Height = 13
    Caption = 'a'
  end
  object Label3: TLabel
    Left = 233
    Top = 38
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
  object Label4: TLabel
    Left = 210
    Top = 64
    Width = 68
    Height = 13
    Caption = 'Ordenar Por'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 90
    Width = 873
    Height = 484
    DataSource = dsConsProdutosComposicao
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbg1DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'Deriva'#231#227'o'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTD_FATURADO'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde. Faturado'
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTD_MP_CAD'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde. Mat.Prima Cad.'
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTD_MP_CAD_FALTANDO'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde. Mat.Prima Cad. = 0'
        Width = 140
        Visible = True
      end>
  end
  object btnMostrar: TBitBtn
    Left = 791
    Top = 4
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
    TabOrder = 1
    OnClick = btnMostrarClick
  end
  object edtDatIni: TDateEdit
    Left = 284
    Top = 8
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object edtDatFim: TDateEdit
    Left = 434
    Top = 8
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object edtProduto: TEdit
    Left = 284
    Top = 35
    Width = 271
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 100
    TabOrder = 4
  end
  object cbbOrdenar: TComboBox
    Left = 284
    Top = 62
    Width = 170
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 0
    TabOrder = 5
    Text = 'QUANTIDADE FATURADA'
    Items.Strings = (
      'QUANTIDADE FATURADA'
      'PRODUTO / DERIVA'#199#195'O')
  end
  object dsConsProdutosComposicao: TDataSource
    DataSet = DmOra.ConsProdutosComposicao
    Left = 640
    Top = 136
  end
end
