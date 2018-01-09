object FComposicaoMpProdutos: TFComposicaoMpProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Composi'#231#227'o de Produtos (Mat'#233'ria -Prima)'
  ClientHeight = 582
  ClientWidth = 587
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
    Left = 20
    Top = 13
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
  object Label2: TLabel
    Left = 8
    Top = 41
    Width = 57
    Height = 13
    Caption = 'Deriva'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbtxtDESPRO: TDBText
    Left = 197
    Top = 13
    Width = 278
    Height = 17
    DataField = 'DESPRO'
    DataSource = dsConsProdutos
  end
  object Label3: TLabel
    Left = 8
    Top = 556
    Width = 177
    Height = 13
    Caption = 'Quantidade de Mat'#233'rias Pr'#237'mas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCodPro: TEdit
    Left = 71
    Top = 10
    Width = 121
    Height = 21
    TabOrder = 0
    OnExit = edtCodProExit
    OnKeyDown = edtCodProKeyDown
  end
  object edtCodDer: TEdit
    Left = 71
    Top = 38
    Width = 121
    Height = 21
    TabOrder = 1
    OnExit = edtCodDerExit
    OnKeyDown = edtCodDerKeyDown
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 70
    Width = 588
    Height = 475
    DataSource = dsCadProComp
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbg1DrawColumnCell
    OnEnter = dbg1Enter
    OnExit = dbg1Exit
    OnKeyDown = dbg1KeyDown
    OnKeyPress = dbg1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'DesMp'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 450
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_QTDMIN'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Width = 100
        Visible = True
      end>
  end
  object btnConsProduto: TBitBtn
    Left = 168
    Top = 11
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
    TabOrder = 3
    TabStop = False
    OnClick = btnConsProdutoClick
  end
  object btnConsDer: TBitBtn
    Left = 168
    Top = 39
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
    TabOrder = 4
    TabStop = False
    OnClick = btnConsDerClick
  end
  object edtQtdMp: TCurrencyEdit
    Left = 191
    Top = 554
    Width = 100
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    TabStop = False
    Alignment = taCenter
    Ctl3D = False
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object btnDuplicar: TBitBtn
    Left = 507
    Top = 4
    Width = 75
    Height = 25
    Caption = 'Duplicar'
    DoubleBuffered = True
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888800008888888888888888888800008888777777778888888800008800
      00000000788888880000880BFFFBFFF0777777880000880F444444F000000078
      0000880FFBFFFBF0FBFFF0780000880F444444F04444F0780000880BFFFBFFF0
      FFFBF0780000880F444444F04444F0780000880FFBFFFBF0FBFFF0780000880F
      44F000004477F0780000880BFFF0FFF0FF0007780000880F44F0FB00F70A0778
      0000880FFBF0F0FF000A00080000880000000F470AAAAA080000888888880FFB
      000A00080000888888880000770A088800008888888888888800088800008888
      88888888888888880000}
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = btnDuplicarClick
  end
  object dsCadProComp: TDataSource
    DataSet = DmOra.CadProComp
    Left = 520
    Top = 360
  end
  object ConsProdutos: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select codpro,despro from e075pro where codpro = :codpro and'
      
        '                                                                ' +
        '    e075pro.codori = 01 and'
      
        '                                                                ' +
        '    e075pro.sitpro = '#39'A'#39)
    Left = 376
    Top = 184
    object ConsProdutosCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsProdutosDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object dsConsProdutos: TDataSource
    DataSet = ConsProdutos
    Left = 456
    Top = 184
  end
  object ConsDerivacoes: TADOQuery
    Connection = DmOra.ADOBanco
    Parameters = <
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
      
        'select codder,desder from e075der where codpro = :codpro and cod' +
        'der = :codder')
    Left = 280
    Top = 184
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 224
    Top = 312
  end
end
