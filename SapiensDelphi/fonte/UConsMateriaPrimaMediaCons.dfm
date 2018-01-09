object FConsMateriaPrimaMediaCons: TFConsMateriaPrimaMediaCons
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de Mat'#233'ria Prima'
  ClientHeight = 712
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel
    Left = 51
    Top = 558
    Width = 44
    Height = 13
    Caption = 'Raz'#227'o..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 327
    Top = 558
    Width = 57
    Height = 13
    Caption = 'Fantasia..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label19: TLabel
    Left = 59
    Top = 577
    Width = 36
    Height = 13
    Caption = 'CNPJ..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label20: TLabel
    Left = 34
    Top = 596
    Width = 61
    Height = 13
    Caption = 'Endere'#231'o..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 52
    Top = 616
    Width = 43
    Height = 13
    Caption = 'Bairro..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label22: TLabel
    Left = 48
    Top = 635
    Width = 47
    Height = 13
    Caption = 'Cidade..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label23: TLabel
    Left = 329
    Top = 616
    Width = 29
    Height = 13
    Caption = 'CEP..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label24: TLabel
    Left = 59
    Top = 654
    Width = 36
    Height = 13
    Caption = 'Fone..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label25: TLabel
    Left = 190
    Top = 654
    Width = 29
    Height = 13
    Caption = 'Fax..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label26: TLabel
    Left = 274
    Top = 577
    Width = 84
    Height = 13
    Caption = 'Insc.Estadual..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label27: TLabel
    Left = 35
    Top = 674
    Width = 60
    Height = 13
    Caption = 'Data Cad..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label28: TLabel
    Left = 315
    Top = 654
    Width = 43
    Height = 13
    Caption = 'E-Mail..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label29: TLabel
    Left = 300
    Top = 674
    Width = 58
    Height = 13
    Caption = 'Situa'#231#227'o..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbtxtNOMFOR: TDBText
    Left = 100
    Top = 558
    Width = 223
    Height = 17
    DataField = 'NOMFOR'
    DataSource = dsDsConsE095For
  end
  object dbtxtAPEFOR: TDBText
    Left = 389
    Top = 558
    Width = 137
    Height = 17
    DataField = 'APEFOR'
    DataSource = dsDsConsE095For
  end
  object dbtxtCGCCPF: TDBText
    Left = 101
    Top = 577
    Width = 119
    Height = 17
    DataField = 'CGCCPF'
    DataSource = dsDsConsE095For
  end
  object dbtxtENDFOR: TDBText
    Left = 101
    Top = 596
    Width = 220
    Height = 17
    DataField = 'ENDFOR'
    DataSource = dsDsConsE095For
  end
  object dbtxtBAIFOR: TDBText
    Left = 100
    Top = 616
    Width = 212
    Height = 17
    DataField = 'BAIFOR'
    DataSource = dsDsConsE095For
  end
  object dbtxtCIDFOR: TDBText
    Left = 101
    Top = 635
    Width = 222
    Height = 17
    DataField = 'CIDFOR'
    DataSource = dsDsConsE095For
  end
  object dbtxtFONFOR: TDBText
    Left = 101
    Top = 654
    Width = 86
    Height = 17
    DataField = 'FONFOR'
    DataSource = dsDsConsE095For
  end
  object dbtxtDATCAD: TDBText
    Left = 101
    Top = 673
    Width = 82
    Height = 17
    DataField = 'DATCAD'
    DataSource = dsDsConsE095For
  end
  object dbtxtINSEST: TDBText
    Left = 362
    Top = 577
    Width = 118
    Height = 17
    DataField = 'INSEST'
    DataSource = dsDsConsE095For
  end
  object dbtxtCEPFOR: TDBText
    Left = 362
    Top = 616
    Width = 65
    Height = 17
    DataField = 'CEPFOR'
    DataSource = dsDsConsE095For
  end
  object dbtxtFAXFOR: TDBText
    Left = 223
    Top = 654
    Width = 84
    Height = 17
    DataField = 'FAXFOR'
    DataSource = dsDsConsE095For
  end
  object dbtxtINTNET: TDBText
    Left = 361
    Top = 654
    Width = 199
    Height = 17
    DataField = 'INTNET'
    DataSource = dsDsConsE095For
  end
  object dbtxtSITFOR: TDBText
    Left = 362
    Top = 673
    Width = 46
    Height = 17
    DataField = 'SITFOR'
    DataSource = dsDsConsE095For
  end
  object Label30: TLabel
    Left = 335
    Top = 635
    Width = 23
    Height = 13
    Caption = 'UF..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbtxtSIGUFS: TDBText
    Left = 361
    Top = 635
    Width = 25
    Height = 17
    DataField = 'SIGUFS'
    DataSource = dsDsConsE095For
  end
  object Label31: TLabel
    Left = 336
    Top = 596
    Width = 22
    Height = 13
    Caption = 'N'#186'..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnl1: TPanel
    Left = 0
    Top = -7
    Width = 984
    Height = 96
    TabOrder = 0
    object lblProduto: TLabel
      Left = 12
      Top = 44
      Width = 57
      Height = 13
      Caption = 'Produto...:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 14
      Top = 16
      Width = 55
      Height = 13
      Caption = 'Per'#237'odo...:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 212
      Top = 21
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
    object LDsCodPro: TLabel
      Left = 212
      Top = 44
      Width = 4
      Height = 18
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 398
      Top = 44
      Width = 58
      Height = 13
      Caption = 'Com O.C ?:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 397
      Top = 15
      Width = 59
      Height = 13
      Caption = 'Filtrar Por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblFamilia: TLabel
      Left = 17
      Top = 71
      Width = 52
      Height = 13
      Caption = 'Familia...:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 385
      Top = 71
      Width = 71
      Height = 13
      Caption = 'Ordenar Por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDesFam: TLabel
      Left = 205
      Top = 72
      Width = 3
      Height = 13
    end
    object Label6: TLabel
      Left = 628
      Top = 15
      Width = 103
      Height = 13
      Caption = 'Mostrar Tecidos? :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodPro: TEdit
      Left = 78
      Top = 41
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyDown = edtCodProKeyDown
    end
    object btnConsProduto: TBitBtn
      Left = 176
      Top = 42
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
      TabStop = False
      OnClick = btnConsProdutoClick
    end
    object EdDatIni: TDateEdit
      Left = 78
      Top = 13
      Width = 121
      Height = 21
      TabStop = False
      NumGlyphs = 2
      TabOrder = 2
    end
    object EdDatFim: TDateEdit
      Left = 233
      Top = 13
      Width = 121
      Height = 21
      TabStop = False
      NumGlyphs = 2
      TabOrder = 3
    end
    object cbbOC: TComboBox
      Left = 462
      Top = 41
      Width = 81
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 2
      TabOrder = 4
      Text = 'TODOS'
      Items.Strings = (
        'SIM'
        'NAO'
        'TODOS')
    end
    object btnBMostrar: TBitBtn
      Left = 877
      Top = 10
      Width = 100
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
      TabOrder = 5
      OnClick = btnBMostrarClick
    end
    object cbbFiltro: TComboBox
      Left = 462
      Top = 13
      Width = 140
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 6
      Text = 'MEDIA CONSUMO'
      Items.Strings = (
        'MEDIA CONSUMO'
        'ESTOQUE MINIMO'
        'PRODUTO'
        'FAMILIA - CONSUMO'
        'FAMILIA - TODOS')
    end
    object edtCodFam: TEdit
      Left = 78
      Top = 68
      Width = 121
      Height = 21
      TabOrder = 7
      OnExit = edtCodFamExit
      OnKeyDown = edtCodFamKeyDown
    end
    object btnConsFamilia: TBitBtn
      Left = 175
      Top = 69
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
      TabOrder = 8
      OnClick = btnConsFamiliaClick
    end
    object cbbOrdem: TComboBox
      Left = 462
      Top = 68
      Width = 140
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 1
      TabOrder = 9
      Text = 'DESCRICAO'
      Items.Strings = (
        'CODIGO'
        'DESCRICAO'
        'FAMILIA')
    end
    object btnAtuEstMin: TBitBtn
      Left = 877
      Top = 64
      Width = 100
      Height = 25
      Caption = 'Atualiza Est.Min.'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 10
      OnClick = btnAtuEstMinClick
    end
    object cbbMostrarTecido: TComboBox
      Left = 737
      Top = 12
      Width = 80
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 11
      Text = 'NAO'
      Items.Strings = (
        'NAO'
        'SIM')
    end
  end
  object dbgProdutos: TDBGrid
    Left = 0
    Top = 88
    Width = 983
    Height = 241
    DataSource = dsClientMateriaPrimaMeiaCons
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgProdutosCellClick
    OnDrawColumnCell = dbgProdutosDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 380
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODFAM'
        Title.Alignment = taCenter
        Title.Caption = 'Familia'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UNIMED'
        Title.Alignment = taCenter
        Title.Caption = 'U.M.'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDEST'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.Est.'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTMIN'
        Title.Alignment = taCenter
        Title.Caption = 'Est.M'#237'nimo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONSUMO'
        Title.Alignment = taCenter
        Title.Caption = 'Consumo'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'OC'
        Title.Alignment = taCenter
        Title.Caption = 'O.C'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Img1'
        Title.Caption = ' '
        Width = 30
        Visible = True
      end>
  end
  object pnl2: TPanel
    Left = 591
    Top = 554
    Width = 385
    Height = 152
    BevelOuter = bvLowered
    TabOrder = 2
    object Label32: TLabel
      Left = 32
      Top = 22
      Width = 62
      Height = 13
      Caption = 'Ultima NF..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label33: TLabel
      Left = 231
      Top = 22
      Width = 38
      Height = 13
      Caption = 'S'#233'rie..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label34: TLabel
      Left = 39
      Top = 40
      Width = 55
      Height = 13
      Caption = 'Emiss'#227'o..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label35: TLabel
      Left = 10
      Top = 58
      Width = 84
      Height = 13
      Caption = 'Qtd.Recebida..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label36: TLabel
      Left = 202
      Top = 58
      Width = 67
      Height = 13
      Caption = 'Pre'#231'o Unit..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label37: TLabel
      Left = 36
      Top = 112
      Width = 58
      Height = 13
      Caption = 'Vlr.Bruto..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label38: TLabel
      Left = 52
      Top = 94
      Width = 42
      Height = 13
      Caption = '% IPI..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label39: TLabel
      Left = 215
      Top = 94
      Width = 54
      Height = 13
      Caption = '% ICMS..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label40: TLabel
      Left = 202
      Top = 112
      Width = 67
      Height = 13
      Caption = 'Vlr.L'#237'quido..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label41: TLabel
      Left = 67
      Top = 130
      Width = 27
      Height = 13
      Caption = 'O.C..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label42: TLabel
      Left = 203
      Top = 130
      Width = 66
      Height = 13
      Caption = 'Cond.Pgto..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label43: TLabel
      Left = 216
      Top = 40
      Width = 53
      Height = 13
      Caption = 'Entrada..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label44: TLabel
      Left = 208
      Top = 76
      Width = 61
      Height = 13
      Caption = 'Pre'#231'o Est..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label45: TLabel
      Left = 17
      Top = 76
      Width = 77
      Height = 13
      Caption = 'Qtd.Estoque..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label46: TLabel
      Left = 21
      Top = 5
      Width = 73
      Height = 13
      Caption = 'Fornecedor..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbtxt1: TDBText
      Left = 100
      Top = 5
      Width = 279
      Height = 17
      DataField = 'NOMFOR'
      DataSource = dsConsUltimaNfEntMC
    end
    object dbtxt2: TDBText
      Left = 100
      Top = 22
      Width = 65
      Height = 17
      DataField = 'NUMNFC'
      DataSource = dsConsUltimaNfEntMC
    end
    object dbtxt3: TDBText
      Left = 100
      Top = 40
      Width = 65
      Height = 17
      DataField = 'DATEMI'
      DataSource = dsConsUltimaNfEntMC
    end
    object dbtxt4: TDBText
      Left = 100
      Top = 58
      Width = 65
      Height = 17
      DataField = 'QTDREC'
      DataSource = dsConsUltimaNfEntMC
    end
    object dbtxt5: TDBText
      Left = 100
      Top = 76
      Width = 65
      Height = 17
      DataField = 'QTDEST'
      DataSource = dsConsUltimaNfEntMC
    end
    object dbtxt6: TDBText
      Left = 100
      Top = 94
      Width = 65
      Height = 17
      DataField = 'PERIPI'
      DataSource = dsConsUltimaNfEntMC
    end
    object dbtxt7: TDBText
      Left = 100
      Top = 112
      Width = 65
      Height = 17
      DataField = 'VLRBRU'
      DataSource = dsConsUltimaNfEntMC
    end
    object dbtxt8: TDBText
      Left = 100
      Top = 128
      Width = 65
      Height = 17
      DataField = 'NUMOCP'
      DataSource = dsConsUltimaNfEntMC
    end
    object dbtxt9: TDBText
      Left = 273
      Top = 22
      Width = 65
      Height = 17
      DataField = 'CODSNF'
      DataSource = dsConsUltimaNfEntMC
    end
    object dbtxt10: TDBText
      Left = 273
      Top = 40
      Width = 65
      Height = 17
      DataField = 'DATENT'
      DataSource = dsConsUltimaNfEntMC
    end
    object dbtxt11: TDBText
      Left = 273
      Top = 58
      Width = 65
      Height = 17
      DataField = 'PREUNI'
      DataSource = dsConsUltimaNfEntMC
    end
    object dbtxt12: TDBText
      Left = 273
      Top = 76
      Width = 65
      Height = 17
      DataField = 'PREEST'
      DataSource = dsConsUltimaNfEntMC
    end
    object dbtxt13: TDBText
      Left = 273
      Top = 94
      Width = 65
      Height = 17
      DataField = 'PERICM'
      DataSource = dsConsUltimaNfEntMC
    end
    object dbtxt14: TDBText
      Left = 273
      Top = 112
      Width = 65
      Height = 17
      DataField = 'VLRLIQ'
      DataSource = dsConsUltimaNfEntMC
    end
    object dbtxt15: TDBText
      Left = 273
      Top = 130
      Width = 65
      Height = 17
      DataField = 'DESCPG'
      DataSource = dsConsUltimaNfEntMC
    end
  end
  object dbgOC: TDBGrid
    Left = 0
    Top = 336
    Width = 984
    Height = 115
    DataSource = dsDsConsE420Ipo
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgOCCellClick
    OnDrawColumnCell = dbgOCDrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMOCP'
        Title.Alignment = taCenter
        Title.Caption = 'O.C'
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATEMI'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMFOR'
        Title.Alignment = taCenter
        Title.Caption = 'Fornecedor'
        Width = 260
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDPED'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pedida'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDREC'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Recebida'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDABE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Aberta'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATENT'
        Title.Alignment = taCenter
        Title.Caption = 'Data Prev.'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Img1'
        Title.Caption = ' '
        Width = 30
        Visible = True
      end>
  end
  object dbgFornecedores: TDBGrid
    Left = 0
    Top = 458
    Width = 984
    Height = 91
    DataSource = dsConsE403FprMC
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgFornecedoresCellClick
    OnDrawColumnCell = dbgFornecedoresDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'CODFOR'
        Title.Alignment = taCenter
        Title.Caption = 'Fornecedor'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMFOR'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 255
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PROFOR'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESFOR'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 240
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UNIMED'
        Title.Alignment = taCenter
        Title.Caption = 'U.M'
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRZENT'
        Title.Alignment = taCenter
        Title.Caption = 'Pz.Ent.'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'OBSMOT'
        Title.Alignment = taCenter
        Title.Caption = 'Max.Cot.'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATMOT'
        Title.Alignment = taCenter
        Title.Caption = 'Ult.Cot.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Img1'
        Title.Caption = ' '
        Width = 25
        Visible = True
      end>
  end
  object btnContatosFornecedores: TBitBtn
    Left = 485
    Top = 683
    Width = 100
    Height = 25
    Caption = 'Contatos'
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
    TabOrder = 5
    OnClick = btnContatosFornecedoresClick
  end
  object dsClientMateriaPrimaMeiaCons: TDataSource
    DataSet = Dm3.ClientMateriaPrimaMeiaCons
    Left = 200
    Top = 192
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 792
    Top = 160
  end
  object dsDsConsE420Ipo: TDataSource
    DataSet = Dm3.ConsE420Ipo
    Left = 328
    Top = 192
  end
  object dsConsE403FprMC: TDataSource
    DataSet = Dm3.ConsE403FprMC
    Left = 432
    Top = 192
  end
  object dsDsConsE095For: TDataSource
    DataSet = Dm3.ConsE095For
    Left = 528
    Top = 192
  end
  object dsConsUltimaNfEntMC: TDataSource
    DataSet = Dm3.ConsUltimaNfEntMC
    Left = 648
    Top = 192
  end
  object ImageList1: TImageList
    Left = 544
    Top = 384
    Bitmap = {
      494C01011000A001A00210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      000000000000000000000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000080808000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00000000007F7F7F000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000000000007F7F7F007F7F
      7F0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF00000000008080800080808000000000008080
      80000000FF000000FF000000FF008080800000FFFF0000FFFF0000FFFF008080
      8000FF000000FF000000FF000000808080000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF00000000007F7F7F000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000080808000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008080800080808000000000008080
      8000000000000000000000000000808080008080800080808000808080008080
      8000FF000000FF000000FF000000808080000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000000000FFFF
      FF00C0C0C000C0C0C000C0C0C000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000008080800080808000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C2C0FC00716EF700403CF4002925F3002925F300403CF400716EF700C2C0
      FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00E7E7FE006461
      F6001510F2001510F2001510F2001510F2001510F2001510F2001510F2001510
      F2006461F600E7E7FE00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00E5E5FE00403CF4001510
      F2001510F2001510F2001510F2001510F2001510F2001510F2001510F2001510
      F2001510F200403CF400E5E5FE00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      000080808000000000000000000000000000FAFAFF005552F6001510F2001510
      F2001510F2001510F2001510F2001510F2001510F2001510F2001510F2001510
      F2001510F2001510F2005552F600FAFAFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000B2B0FB001510F2001510F2001510
      F2001510F2001510F2001510F2001510F2001510F2001510F2001510F2001510
      F2001510F2001510F2001510F200B2B0FB000000000012129700121297001212
      9700121297001212970012129700121297001212970012129700121297001212
      970012129700121297001212970000000000000000002EBE32002EBE32002EBE
      32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE
      32002EBE32002EBE32002EBE3200000000000000000000000000000000000000
      0000000000000000000080808000FFFF0000FFFF0000C0C0C000C0C0C000C0C0
      C000C0C0C0008080800000000000000000005C58F6001510F2001510F2001510
      F2001510F2001510F2001510F2001510F2001510F2001510F2001510F2001510
      F2001510F2001510F2001510F2005C58F6000000000012129700121297001212
      9700121297001212970012129700121297001212970012129700121297001212
      970012129700121297001212970000000000000000002EBE32002EBE32002EBE
      32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE
      32002EBE32002EBE32002EBE3200000000000000000000000000000000000000
      00008080800000000000C0C0C000FFFF0000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000080808000322EF400140FF200140FF200140F
      F200140FF200140FF200140FF200140FF200140FF200140FF200140FF200140F
      F200140FF200140FF200140FF200322EF4000000000012129700121297001212
      9700121297001212970012129700121297001212970012129700121297001212
      970012129700121297001212970000000000000000002EBE32002EBE32002EBE
      32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE
      32002EBE32002EBE32002EBE3200000000000000000000000000000000000000
      000000000000C0C0C000FFFF0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000002D28F2001D18F1001D18F1001D18
      F1001D18F1001D18F1001D18F1001D18F1001D18F1001D18F1001D18F1001D18
      F1001D18F1001D18F1001D18F1002D28F2000000000012129700121297001212
      9700121297001212970012129700121297001212970012129700121297001212
      970012129700121297001212970000000000000000002EBE32002EBE32002EBE
      32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE
      32002EBE32002EBE32002EBE3200000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000004C48F200332FF000332FF000332F
      F000332FF000332FF000332FF000332FF000332FF000332FF000332FF000332F
      F000332FF000332FF000332FF0004C48F2000000000012129700121297001212
      9700121297001212970012129700121297001212970012129700121297001212
      970012129700121297001212970000000000000000002EBE32002EBE32002EBE
      32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE
      32002EBE32002EBE32002EBE3200000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFF0000C0C0C000000000007E7CF400504DEE004F4CEF004F4C
      EF004F4CEF004F4CEF004F4CEF004F4CEF004F4CEF004F4CEF004F4CEF004F4C
      EF004F4CEF004F4CEF00504DEE007E7CF4000000000012129700121297001212
      9700121297001212970012129700121297001212970012129700121297001212
      970012129700121297001212970000000000000000002EBE32002EBE32002EBE
      32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE32002EBE
      32002EBE32002EBE32002EBE3200000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFF0000C0C0C00000000000C3C2F900716FED006F6DED006F6D
      ED006F6DED006F6DED006F6DED006F6DED006F6DED006F6DED006F6DED006F6D
      ED006F6DED006F6DED00716FED00C3C2F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFF0000FFFF00000000000080808000FAFAFE009E9DF0009393EB00908F
      EB00908EEB00908EEB008F8EEB008F8EEB00908EEB00908EEB00908FEB00908E
      EB00908EEB009393EB009E9DF000FAFAFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C000C0C0C000FFFF0000FFFF
      0000FFFF0000808080000000000000000000FFFFFF00EAE9FC00ADABEE00B5B5
      EA00B0B0EA00AFAEEA00AFAFEA00AFAFEA00AFAFEA00AFAFEA00AFAFEA00B0B0
      EA00B4B4EA00ADABEE00EAEAFC00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000FFFFFF00FFFFFF00ECECFC00C1C0
      F000CBCBE900D1D0E900CFCEE900CCCCE900CCCCE900CFCFE900D1D1E900CBCB
      E900C2C1F000ECECFC00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      000080808000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FEFE
      FF00DCDCF900CFCEF100D1D0EC00DDDDEA00DDDDEA00D1D0EC00CFCDF100DCDC
      F800FEFEFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C2ECC50071D3780041C34A002ABC34002ABC340041C34A0071D37800C2EC
      C500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00E7F8E80065CF
      6C0016B6210016B6210016B6210016B6210016B6210016B6210016B6210016B6
      210065CF6C00E7F8E800FFFFFF00FFFFFF0000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000007F7F7F00000000007F7F7F00000000000000FF000000
      FF000000FF00000000000000000000000000FFFFFF00E5F7E70041C34A0016B6
      210016B6210016B6210016B6210016B6210016B6210016B6210016B6210016B6
      210016B6210041C34A00E5F7E700FFFFFF00000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000000000000000FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000000000000000FAFEFB0056CA5E0016B6210016B6
      210016B6210016B6210016B6210016B6210016B6210016B6210016B6210016B6
      210016B6210016B6210056CA5E00FAFEFB00000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF00000000000000000000000000BFBFBF00FFFFFF00BFBF
      BF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBF
      BF00FFFFFF000000FF00FFFFFF0000000000000000000000FF000000FF000000
      000000000000000000007F7F7F00000000007F7F7F0000000000000000000000
      00000000FF000000FF000000000000000000B2E7B60016B6210016B6210016B6
      210016B6210016B6210016B6210016B6210016B6210016B6210016B6210016B6
      210016B6210016B6210016B62100B2E7B6000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000005CCC640016B6210016B6210016B6
      210016B6210016B6210016B6210016B6210016B6210016B6210016B6210016B6
      210016B6210016B6210016B621005CCC64000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000000033BF3D0015B6200015B6200015B6
      200015B6200015B6200015B6200015B6200015B6200015B6200015B6200015B6
      200015B6200015B6200015B6200033BF3D000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000007F7F7F00000000007F7F7F0000000000000000000000
      00000000000000000000000000000000000029BC330019B7240019B7240019B7
      240019B7240019B7240019B7240019B7240019B7240019B7240019B7240019B7
      240019B7240019B7240019B7240029BC33000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000008000000000000000800000000000000000000000
      00000000000000000000000000000000000046C34E002CBB36002CBB36002CBB
      36002CBB36002CBB36002CBB36002CBB36002CBB36002CBB36002CBB36002CBB
      36002CBB36002CBB36002CBB360046C34E000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000007AD3810049C1520048C1520048C1
      520048C1520049C1520049C1520048C1520049C1520049C1520048C1520048C1
      520048C1520048C1520049C153007AD38100000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF0000000000C2EAC5006AC9730069C9710069C9
      710069C9710069C9710069C9710069C9710069C9710069C9710069C9710069C9
      710069C9710069C971006AC97300C2EAC500000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000FAFDFA009BD9A2008FD195008BD0
      92008BD092008BD092008BD092008BD092008BD092008BD192008CD092008BD0
      92008BD092008FD195009BD9A200FAFDFA0000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00FFFFFF0000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000007F7F7F00000000007F7F7F00000000000000FF000000
      FF000000FF000000FF000000FF0000000000FFFFFF00E9F7EA00AADAAF00B2D9
      B700ADD8B300ACD8B200ACD8B200ACD8B200ACD8B200ACD8B200ACD8B100ADD8
      B300B1D9B700AAD9AF00E9F7EB00FFFFFF000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000FF0000000000FFFFFF00FFFFFF00ECF8ED00C0E2
      C500CADECE00CFE0D400CDDFD200CADECF00CADFCF00CEDFD200CFE0D300CADE
      CE00C0E2C500ECF8ED00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FEFF
      FE00DCF0DE00CFE6D200D1E3D500DDE4E100DDE4E100D1E3D500CFE6D200DCF0
      DE00FEFFFE00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F000000000000000000FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F
      7F0000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000BFBFBF00BFBFBF007F7F7F007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF00BFBFBF007F7F7F007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF00BFBFBF007F7F7F007F7F7F007F7F7F00000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      000000000000FFFFFF007F7F7F007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFF
      FF007F7F7F0000000000FFFFFF0000000000000000000000000000000000BFBF
      BF00BFBFBF007F7F7F000000000000000000000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF007F7F7F000000000000000000000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF007F7F7F000000000000000000000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000007F7F7F00FFFFFF000000
      00007F7F7F007F7F7F000000000000000000000000007F7F7F007F7F7F00FFFF
      FF00FFFFFF007F7F7F00FFFFFF00000000000000000000000000BFBFBF00BFBF
      BF0000000000FFFFFF0000FF0000FFFFFF0000FF0000FFFFFF00000000007F7F
      7F007F7F7F000000000000000000000000000000000000000000BFBFBF00BFBF
      BF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000007F7F
      7F007F7F7F000000000000000000000000000000000000000000BFBFBF00BFBF
      BF0000000000FFFFFF000000FF00FFFFFF000000FF00FFFFFF00000000007F7F
      7F007F7F7F00000000000000000000000000000000007F7F7F00000000007F7F
      7F0000000000000000007F7F7F007F7F7F007F7F7F0000000000000000007F7F
      7F00FFFFFF007F7F7F0000000000FFFFFF000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00007F7F7F000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00007F7F7F000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00007F7F7F000000000000000000000000007F7F7F00FFFFFF00000000007F7F
      7F00000000007F7F7F000000000000000000000000007F7F7F00000000007F7F
      7F00FFFFFF00FFFFFF007F7F7F00FFFFFF0000000000BFBFBF007F7F7F00FFFF
      FF00000000000000000000FF000000800000008000000000000000000000FFFF
      FF007F7F7F007F7F7F00000000000000000000000000BFBFBF007F7F7F00FFFF
      FF00000000000000000000FFFF0000808000008080000000000000000000FFFF
      FF007F7F7F007F7F7F00000000000000000000000000BFBFBF007F7F7F00FFFF
      FF0000000000000000000000FF0000008000000080000000000000000000FFFF
      FF007F7F7F007F7F7F0000000000000000007F7F7F00FFFFFF007F7F7F000000
      00007F7F7F00FFFFFF00000000000000000000000000000000007F7F7F000000
      00007F7F7F00FFFFFF007F7F7F00FFFFFF0000000000BFBFBF000000000000FF
      00000000000000FF00000080000000FF000000800000008000000000000000FF
      0000000000007F7F7F00000000000000000000000000BFBFBF000000000000FF
      FF000000000000FFFF000080800000FFFF0000808000008080000000000000FF
      FF00000000007F7F7F00000000000000000000000000BFBFBF00000000000000
      FF00000000000000FF00000080000000FF000000800000008000000000000000
      FF00000000007F7F7F0000000000000000007F7F7F00FFFFFF007F7F7F000000
      00007F7F7F00FFFFFF00000000000000000000000000000000007F7F7F000000
      00007F7F7F00FFFFFF007F7F7F00FFFFFF0000000000FFFFFF0000000000FFFF
      FF000000000000FF000000FF000000FF000000FF00000080000000000000FFFF
      FF00000000007F7F7F00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF000080800000000000FFFF
      FF00000000007F7F7F00000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000FF000000FF000000FF000000FF000000800000000000FFFF
      FF00000000007F7F7F0000000000000000007F7F7F00FFFFFF007F7F7F000000
      00007F7F7F00FFFFFF00FFFFFF000000000000000000000000007F7F7F000000
      00007F7F7F00000000007F7F7F00FFFFFF0000000000FFFFFF000000000000FF
      000000000000FFFFFF0000FF000000FF00000080000000FF00000000000000FF
      000000000000BFBFBF00000000000000000000000000FFFFFF000000000000FF
      FF0000000000FFFFFF0000FFFF0000FFFF000080800000FFFF000000000000FF
      FF0000000000BFBFBF00000000000000000000000000FFFFFF00000000000000
      FF0000000000FFFFFF000000FF000000FF00000080000000FF00000000000000
      FF0000000000BFBFBF0000000000000000007F7F7F0000000000FFFFFF007F7F
      7F00000000007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F00000000007F7F
      7F00FFFFFF00000000007F7F7F000000000000000000FFFFFF007F7F7F00FFFF
      FF000000000000000000FFFFFF00FFFFFF0000FF00000000000000000000FFFF
      FF007F7F7F00BFBFBF00000000000000000000000000FFFFFF007F7F7F00FFFF
      FF000000000000000000FFFFFF00FFFFFF0000FFFF000000000000000000FFFF
      FF007F7F7F00BFBFBF00000000000000000000000000FFFFFF007F7F7F00FFFF
      FF000000000000000000FFFFFF00FFFFFF000000FF000000000000000000FFFF
      FF007F7F7F00BFBFBF000000000000000000000000007F7F7F00FFFFFF007F7F
      7F0000000000000000007F7F7F007F7F7F007F7F7F0000000000000000007F7F
      7F00000000007F7F7F00FFFFFF00000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000BFBFBF000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000BFBFBF000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000BFBFBF00000000000000000000000000000000007F7F7F0000000000FFFF
      FF007F7F7F007F7F7F000000000000000000000000007F7F7F007F7F7F000000
      0000000000007F7F7F0000000000000000000000000000000000FFFFFF00BFBF
      BF0000000000FFFFFF0000FF0000FFFFFF0000FF0000FFFFFF0000000000BFBF
      BF00BFBFBF000000000000000000000000000000000000000000FFFFFF00BFBF
      BF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000BFBF
      BF00BFBFBF000000000000000000000000000000000000000000FFFFFF00BFBF
      BF0000000000FFFFFF000000FF00FFFFFF000000FF00FFFFFF0000000000BFBF
      BF00BFBFBF0000000000000000000000000000000000000000007F7F7F000000
      0000FFFFFF00FFFFFF007F7F7F007F7F7F007F7F7F000000000000000000FFFF
      FF007F7F7F00000000000000000000000000000000000000000000000000FFFF
      FF00BFBFBF007F7F7F000000000000000000000000007F7F7F00BFBFBF00BFBF
      BF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00BFBFBF007F7F7F000000000000000000000000007F7F7F00BFBFBF00BFBF
      BF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00BFBFBF007F7F7F000000000000000000000000007F7F7F00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00BFBFBF00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00BFBFBF00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00BFBFBF00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E00FFC00F111FFDFE00FFC00FFFFFF8F
      E00F20000000FF07E00F0000D111FE03E00F00009111FC01E00F0000D111F800
      E00F00000000F001A00B0000D111E003C007000091F1E003E00F0000D1F1E001
      E00FE0000000E001C007F800DFF1E030C007F0009FF1E070C007E001DFFFDFF8
      F83FC4030000BFF8F83FEC07FFFFFFFCFFFFFFFFFFFF9FFF0000FFFFFFFF8FFF
      0000FFFFFFFFC7FF0000FFFFFFFFE2070000FFFFFFFFF003000080018001F801
      000080018001F000000080018001F000000080018001F000000080018001F000
      000080018001F0000000FFFFFFFFF0000000FFFFFFFFF8010000FFFFFFFFFC03
      0000FFFFFFFFFE070000FFFFFFFFFFFFFFFF8001FFFFFFFFF83F0000F83F0000
      E00F0000E00F0000CFC70000C447000087E300008C630000A3F300009C730000
      31F900003FF9000038F900003EF900003C79E0073C7F00003E39E0073C7F0000
      3F19E0073C4100009F8BE0079C6100008FC3E00F8C710000C7E7E01FC4410000
      E00FE03FE00D0000F83FE07FF83F0000FC1FFFFFFFFFFFFFF027F83FF83FF83F
      E60BE00FE00FE00FD805C007C007C0079381800380038003AC62800380038003
      2BA000010001000113D000010001000113D000010001000111D4000100010001
      48250001000100018C69800380038003A39B800380038003D067C007C007C007
      E40FE00FE00FE00FF83FF83FF83FF83F00000000000000000000000000000000
      000000000000}
  end
end
