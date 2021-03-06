object FMovBaixaCorte: TFMovBaixaCorte
  Left = 187
  Top = 112
  Caption = 'Movimentos de Baixa do Corte de Tecido'
  ClientHeight = 616
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid: TDBGrid
    Left = 5
    Top = 111
    Width = 972
    Height = 469
    DataSource = DsConsUsu_TMovBax
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_NUMANE'
        Title.Alignment = taCenter
        Title.Caption = 'Carga'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Cod.Prod'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Des.Prod'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'Deriva'#231#227'o'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_CODCOR1'
        Title.Alignment = taCenter
        Title.Caption = 'Cor 01'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_CODCOR2'
        Title.Alignment = taCenter
        Title.Caption = 'Cor 02'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_QTDMOV'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Mov'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_QTDMT1'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.MT Cor 01'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_QTDMT2'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.MT Cor 02'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_DATMOV'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_SITMOV'
        Title.Alignment = taCenter
        Title.Caption = 'Sit.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_NOMUSU'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Width = 150
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 5
    Top = 4
    Width = 972
    Height = 103
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 33
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Carga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 22
      Top = 39
      Width = 45
      Height = 13
      Caption = 'Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 47
      Top = 86
      Width = 20
      Height = 13
      Caption = 'Cor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 353
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 195
      Top = 31
      Width = 23
      Height = 22
      OnClick = SpeedButton1Click
    end
    object Label5: TLabel
      Left = 8
      Top = 62
      Width = 59
      Height = 13
      Caption = 'Deriva'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 545
      Top = 15
      Width = 8
      Height = 13
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LDsProduto: TLabel
      Left = 232
      Top = 37
      Width = 67
      Height = 13
      Caption = 'LDsProduto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdData2: TDateEdit
      Left = 573
      Top = 8
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 6
    end
    object EdData1: TDateEdit
      Left = 411
      Top = 8
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
    end
    object EdProduto: TEdit
      Left = 73
      Top = 31
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnExit = EdProdutoExit
    end
    object EdCor: TEdit
      Left = 73
      Top = 78
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnExit = EdCorExit
    end
    object EdCarga: TEdit
      Left = 73
      Top = 8
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnExit = EdCargaExit
    end
    object BPesquisa: TBitBtn
      Left = 888
      Top = 75
      Width = 75
      Height = 25
      Caption = 'Mostrar'
      DoubleBuffered = True
      Glyph.Data = {
        76060000424D7606000000000000360000002800000014000000140000000100
        20000000000040060000C30E0000C30E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000060F10102D1D1E1E451B1C1B42191A
        1A42171818411818184118181840181818401818184018181840181818401818
        184017181840191B1A401B1D1C411B1D1C3F0708081600000000000000000D0D
        0E22767A78C59DA29FF8979C99F59DA3A0F5ABAFADF4A9ADABF4A9ADABF3A9AD
        ABF3A9ADABF3A9ADABF3A9ADABF3A9ADABF3ABB0AEF39BA19EF39BA09DF4979D
        99F2494B4A810000000200000000181A193AC2C5C3F1CDD0CEFFBABDBCFFD9DC
        DBFFE4E7E6FFE1E4E3FFE1E4E3FFE1E4E3FFE1E4E3FFE1E4E3FFE1E4E3FFE1E4
        E3FFE3E7E6FFD6D9D8FFBDBFBEFFD5D8D6FF797D7BAF00000007000000001314
        1430979C9BDECDCFCFFFCBCDCDFFC6C7C7FFC0C2C2FFC0C3C2FFC0C3C2FFC0C3
        C2FFC0C3C2FFC0C3C2FFC0C3C2FFC0C3C2FFC0C3C2FFC9CBCBFFCACCCBFFC4C8
        C6FE646765A201010109010101000F0F0F0C444642B2C8C9C9FFBDBFBFF6C8CA
        C9FCDFE0E1FFDCDDDEFFDCDDDDFFDCDDDEFFDCDEDEFFDCDEDEFFDDDEDEFFDDDF
        DFFFDADCDBFFBCBEBEF8CBCECCFCB0B2B0F1191B1A4600000000020202063F42
        428A5F615DFB6C6B68FC4B4F4DB3999C9CE6F4F4F4FFECEBEBFFECECECFFECEB
        EBFFEAEAEAFFE9E9E9FFE8E9E9FFEEEDEDFFE7E8E7FF5C615FBF7C7F7ED7C0C3
        C2F01415153800000000020202023E403F767A7E7CFB5B5D5AFE4C4D49EAB9BA
        BBF8FBFBFBFFEDEDEDFFE4E4E5FFE8E8E8FFF5F5F5FFFCFCFCFFF8F8F8FFFAFA
        FAFFF5F4F4FFBFC2C1F0D2D4D3F5BFC1C0EF1516163B00000000000000001211
        12015153539A737876FF5F605DFF797A78FFB0B3B2FFA1A5A4FF9A9E9DFF9B9F
        9DFFA8AAA9FFCFD1D1FFE5E6E6FFE4E5E5FFDEDFDEFF8A8D8CE0A2A5A4EFBCBE
        BDF01617163B00000000000000000000000047494885A9ACABFF696C6AFF7578
        75FFC9CECCFFE9EDEBFFF5F7F7FFEAEBEBFFB5B8B7FF919494FFD9D9DAFFF4F4
        F4FFECEDEDFF7E8281C79A9E9DDAC0C4C3F11517163B00000000000000000000
        00004C4E4D87E7E9E8FFABAFADFFCED3D0FFF0F4F3FFF4F5F5FFF2F3F3FFF2F2
        F3FFF7F9F9FFBCC0BFFFA6A8A8FFF1F0F1FFE8E9E9FFC6C9C8FFD7DAD9FFBCC0
        BFED1417153B0000000000000000000000004D504F87D0D2D0FFBABFBCFFDFE3
        E1FFF2F2F2FFF6F6F6FFF4F4F4FFECECECFFE6E7E7FFE7EBEAFF999C9AFFCCCE
        CEFFE1E4E3FF606362B9818483D0C1C4C3F11617163B00000000000000000000
        00004E514F87CBCECDFFBEC1C0FFE5E8E7FFFEFEFEFFFEFEFEFFFDFDFDFFFBFC
        FCFFF5F7F7FFF2F3F3FFA3A6A5FFCCCDCDFFF5F7F6FFB9BDBCFFCED1D0FFBFC2
        C1EE1516163B0000000000000000000000004E515087CCCFCEFFBCC0BEFFE0E3
        E1FFFCFCFDFFFEFEFEFFFCFCFCFFF9F9F9FFEDEDEDFFE5E8E7FFA0A2A2FFBEC1
        C0FFE0E2E3FF898D8CD6A6AAA9E3C1C4C3F01516163B00000000000000000000
        00004D4F4F87D9DBDBFFB1B6B5FFDADEDCFFF3F5F4FFFFFFFFFFFFFFFFFFFDFC
        FCFFF0F1F1FFD1D5D3FF9EA1A0FFE5E6E7FFE6E8E8FF787D7BD2969A98E3C3C5
        C5F01516163B0000000000000000000000004B4E4D86E3E4E4FFA1A6A5FAB9BD
        BCFDE1E6E3FFE9EDEBFFEBEEEDFFEDEFEFFFDCE1DFFF999C9AFFBBBDBDFFECEE
        EEFFDFE1E1FFC0C4C3FFD4D7D6FFC0C2C1ED1516153A00000000000000000000
        00004F515182E0E1E1FF8C908EBD8C908EE0B1B5B4FFC4C8C6FFC8CCCAFFBABF
        BDFF9DA09EFFB7BAB8FFE5E6E6FFE3E4E4FFCDCECEFF808583BFB1B3B3DDC4C6
        C6EC1717173800000000000000000000000052545460F3F5F4FFD8DBDAFFD7D9
        D8FFE9ECEBFFCDD0CFFFC1C4C3FFCBCFCDFFF3F5F4FFFFFFFFFFFFFFFFFFFFFF
        FFFFF6F7F7FFCACDCCFFF2F4F4FFCACCCBDD1A1C1B1F00000000000000000000
        000032353316757876987F8180B07E807FAD7B7D7CAC7E807FAC7F8180AC7E80
        7FAC7A7C7BAC767877AC767877AC767877AC787A7AAC808281AE7E8180AF666A
        676D1515150100000000000000000000000002020200000000060000000A0000
        000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
        000A0000000A0000000A0000000B000100010201010000000000}
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BPesquisaClick
    end
    object EdDsProduto: TEdit
      Left = 409
      Top = 78
      Width = 281
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnChange = EdDsProdutoChange
    end
    object EdDerivacao: TEdit
      Left = 73
      Top = 54
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnExit = EdDerivacaoExit
    end
  end
  object BCancelar: TBitBtn
    Left = 896
    Top = 585
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    DoubleBuffered = True
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFBFBFBE4E4EF4448AA4246BF4549CB4045
      C5373CC24046CC4047CB3F42C35559B30000FFFFFFFFFFFFFFFFFFF9F9FAD9D8
      D8BDBDBCC0BFBFC4C3BC8A89A10000900910B51C22BE252BBB2C32A131369032
      378E3A3F8B3133710000FFFFFFFFFFFFDEDEDE92919093908FCCCBCAD9D9D8D8
      D7D4B7B7C65C5FBF6D70D28084E16D71D35458B6696DB09799D09F9FCC9B9BB8
      0000FEFEFED6D6D59F9C9BB4B3B2BDBDBCA9A9A8A4A4A3A2A2A0A2A09EAAA8A1
      A7A6A2ACABA7BDBDB8B1B0ADA4A2A1DFDEDFFFFFFFFFFFFF0000E2E2E1A09E9D
      BFBEBE93929183817FB3B2B1D8D6D6D2D1CFCDCBCAD3D2D0D7D6D4B2B0AE8583
      80979694C0BFBEA2A1A0E6E6E6FFFFFF0000AFAFAEC1C1C09694939C9A99BFBE
      BDBCBCBBB0B0AFABAAAAA9A9A8ACACABB2B2B1BDBCBBBCBCBB979493989694C0
      BFBEB5B5B5FFFFFF0000AEAEADB0AEADBAB9B8A7A7A68B89889E9C9BC0BFBEC1
      BFBEBBB9B7C2C0BFBFBEBD9F9D9C8F8D8CA9A8A7B7B6B5B4B2B0B0AFAFFFFFFF
      0000ACABABC4C3C1989796898685A2A09FBEBEBDBEBEBDC2C1C0C3C3C2C2C2C1
      BEBEBDBDBCBB9E9D9C8784829C9A99C7C5C4AEADADFFFFFF0000AEAEAEADABAA
      AAA8A7A7A6A6B3B2B1BDBCBBC5C5C3CCCBC9CECECCCECDCBC9C8C6C1C0BFB5B5
      B4A5A4A3A7A5A4B0AFAEB1B1B1FFFFFF0000ABABAAB8B6B5A5A4A3B2B1AFBEBD
      BCC1BFBEC3C2C0C5C4C2C6C5C3C6C5C4C5C5C3C5C4C2C4C2C0B7B6B5A6A6A5BA
      B9B7ADADADFFFFFF0000AEAEAEB2B0AFA9A8A7B4B2B1B7B5B3BAB9B7BCBBBABE
      BDBCBFBFBDBFBFBCBFBEBCBDBCBABAB9B8B9B8B6AEADABB6B5B4B1B1B1FFFFFF
      0000ACACABAFAEADB6B5B3B7B6B4BAB9B8BDBCBABFBEBDC1C0BEC2C1BFC2C1BF
      C1C0BEC0BFBDBEBDBBBBBAB8BBBAB8B2B1AFAFAFAFFFFFFF0000A8A8A7C0BFBE
      C0BFBEC2C1BFC4C4C2C6C5C4C8C7C6C9C8C7C9C9C7CAC9C7C9C8C7C8C8C6C7C6
      C4C5C4C3C4C4C2C1C0BFAAA9A9FFFFFF0000D3D3D3C3C2C1CFCECDCECDCCD0CF
      CED1D0CFD2D2D0D3D2D1D3D3D1D3D3D2D3D2D1D2D2D1D1D1D0D0CFCED1D0CFC2
      C2C0D9D9D9FFFFFF0000FFFFFFD8D7D7D4D3D3DEDEDDDDDCDBDEDDDCDEDEDDDF
      DEDDDFDEDEDFDEDEDFDEDEDEDEDDDEDDDCDFDFDED4D3D2DBDAD9FFFFFFFFFFFF
      0000FFFFFFFDFDFDDFDFDEE2E2E1EFEFEEF0EFEFEFEFEEEEEEEEEEEEEDEFEEEE
      EFEFEEF0F0EFF0EFEFE1E1E0E0DFDEFDFDFDFFFFFFFFFFFF0000FFFFFFFFFFFF
      FFFFFFF3F3F3E9E9E8F0F0F0F6F6F6FBFBFBFFFFFFFBFBFBF6F6F6EFEFEFE8E8
      E8F3F3F2FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEF9F9F9F3F3F3EAEAEAE2E2E2EBEAEAF2F2F2F9F9F8FEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000}
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BCancelarClick
  end
  object DsConsUsu_TMovBax: TDataSource
    DataSet = Dm1.ConsUsu_TMovBax
    Left = 56
    Top = 512
  end
  object ValidaCarga: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tcarpro where usu_numane = :numane')
    Left = 725
    Top = 12
    object ValidaCargaUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ValidaCargaUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object ValidaCargaUSU_HORIMP: TIntegerField
      FieldName = 'USU_HORIMP'
    end
    object ValidaCargaUSU_USUIMP: TIntegerField
      FieldName = 'USU_USUIMP'
    end
    object ValidaCargaUSU_CARPRO: TStringField
      FieldName = 'USU_CARPRO'
      Size = 1
    end
  end
  object ValidaProduto: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e075pro.codpro,e075pro.despro from e075pro where codpro =' +
        ' :codpro and'
      'codfam = '#39'01001'#39)
    Left = 757
    Top = 12
    object ValidaProdutoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ValidaProdutoDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object ValidaDerivacao: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e084cmd where codder = :codder')
    Left = 797
    Top = 12
    object ValidaDerivacaoCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ValidaDerivacaoCODMDP: TStringField
      FieldName = 'CODMDP'
      Size = 8
    end
    object ValidaDerivacaoCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ValidaDerivacaoSEQCMD: TIntegerField
      FieldName = 'SEQCMD'
    end
    object ValidaDerivacaoDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
    object ValidaDerivacaoABRDER: TStringField
      FieldName = 'ABRDER'
      Size = 40
    end
    object ValidaDerivacaoCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ValidaDerivacaoSITCMD: TStringField
      FieldName = 'SITCMD'
      Size = 1
    end
    object ValidaDerivacaoUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ValidaDerivacaoDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ValidaDerivacaoHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ValidaDerivacaoUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object ValidaDerivacaoDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ValidaDerivacaoHORALT: TIntegerField
      FieldName = 'HORALT'
    end
  end
  object ValidaCor: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select codpro from e075pro where codpro = :codpro')
    Left = 829
    Top = 12
    object ValidaCorCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
  end
  object ImageList1: TImageList
    Left = 733
    Top = 60
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      0000000000000000000000000000F6FFF2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000178F2A0018742500C6C9C70000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000358F4E00009607000087050058A56B0000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000088B79D001483330000840100008C0700078A230000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000088B7
      9D0014833300008401000000000045AD58000074070077AF8400000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002163
      320014712C00000000000000000000000000238B2C002B713C00000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000088060040A756000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000148F2F001C7E32008FCD
      9F00000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000148F2F001C7E
      32008FCD9F000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000148F
      2F001C7E32008FCD9F0000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000148F2F001C7E32008FCD9F00000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000166E2C0019802F00000000000000000099A8AC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C8A2600000000000000000099A8AC0099A8AC0099A8
      AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8
      AC0099A8AC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D7B22000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FEFFC00300000000FC7F800300000000F87F800300000000F07F800300000000
      E23F800300000000E73F800300000000FF9F800300000000FF8F800300000000
      FFC7800300000000FFE3800300000000FFF1800300000000FFF9800300000000
      FFFD800700000000FFFEFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
