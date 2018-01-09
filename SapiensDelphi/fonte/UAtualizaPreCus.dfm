object FAtualizaPreCus: TFAtualizaPreCus
  Left = 198
  Top = 130
  Caption = 'Atualiza Pre'#231'o de Custo'
  ClientHeight = 583
  ClientWidth = 807
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid: TDBGrid
    Left = 8
    Top = 77
    Width = 689
    Height = 504
    DataSource = ClientProdSemCus
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridDblClick
    OnKeyPress = DBGridKeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DESDER'
        Title.Alignment = taCenter
        Title.Caption = 'Deriva'#231#227'o'
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRECUS'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Custo'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 689
    Height = 65
    BevelOuter = bvLowered
    TabOrder = 1
    object RbProdSCus: TRadioButton
      Left = 8
      Top = 11
      Width = 217
      Height = 17
      Caption = 'Produtos sem pre'#231'o de custo'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = RbProdSCusClick
    end
    object RbProdCCus: TRadioButton
      Left = 8
      Top = 34
      Width = 265
      Height = 17
      Caption = 'Produtos para atualizar pre'#231'o de custo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object BMostrar: TBitBtn
    Left = 704
    Top = 8
    Width = 105
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    Glyph.Data = {
      46050000424D4605000000000000360000002800000012000000120000000100
      20000000000010050000C30E0000C30E00000000000000000000000000000000
      0000000000000000000100000001000000010000000100000000000000000000
      0000000000000000000000000000000000000000000100000001000000000000
      0000000000000606061326272755343634682F312F632E313062303130623030
      3061303030613030306130303061303030612F3131612E3030612F3331623235
      3366161817330001010200000000282A294AA9AEABF6B1B6B3FFAEB4B2FFC4C9
      C7FFC8CCCBFFC6CAC8FFC6CAC8FFC6CAC8FFC6CAC8FFC6CAC8FFC9CDCBFFC0C6
      C3FFAEB3B1FFB7BCB9FF6F7371AF0607070D000000003538375ED3D7D5FFCDD0
      CFFFCDCECFFFDADCDBFFD8DBDAFFD7DAD9FFD7DAD9FFD7DAD9FFD7DAD9FFD7DA
      D9FFD7DAD9FFDADDDDFFCBCCCCFFD7D9D8FF919593C9090A0917000000001617
      172D8C908EDFDEE0E0FFCDCECFFFC9CACAFFCACBCCFFC9CBCBFFC9CBCBFFC9CC
      CBFFC9CCCCFFCACCCCFFC9CCCAFFC8CACBFFD3D6D5FFC9CBCAFF5355548E0304
      030B0505050A2F31307063635FEC888A88E7858989D3D8DADAFBEFEFEFFFE9E9
      E9FFE9E8E9FFE6E7E7FFE4E6E6FFE6E8E8FFF1F1F1FFAAACABE67A7E7DD5BCBF
      BDFA2F313058000000000707070D525554A8747773FF41423EEA6F7170DDEDED
      EEFCFEFDFCFFEEEDEEFFF0EFEFFFF9F9F8FFF9FAFAFFF7F7F7FFFFFFFFFFC7C9
      C7EEA5A8A7E2CCCFCEFC3435355C00000000010101012625262C656968CD6367
      63FF696A67FEADAFAEFFB6B9B8FFA4A8A7FFA5A9A8FFB9BAB9FFDEDFDFFFEBEC
      ECFFECEDEDFFBBBDBCF19EA2A1EBC7C9C8FE3536355D00000000000000000708
      080E6C6E6DB1979B99FF616461FFA4A9A6FFDDE2E1FFEAECECFFE1E3E3FFB0B3
      B2FF9FA2A2FFE6E5E6FFFBFCFCFFB1B4B3E3848887CFC4C8C7FA3639385E0000
      00000000000005060612818382B3D9DCDBFFB3B8B5FFE5E9E7FFF6F7F7FFF4F4
      F4FFF3F3F4FFEFF1F1FFB4B8B7FFB8BABAFFF7F6F7FFCCCFCEF9C1C4C3F5CED2
      D1FE3235345C000000000000000007070712797C7AB3D0D3D1FFCAD0CDFFF0F1
      F0FFF8F8F8FFF6F6F6FFEFF0F0FFECEDEDFFDADDDCFFA0A3A1FFE5E7E7FFAAAD
      ACE1737574C9C1C4C3F83839385E000000000000000007080712787B79B3CED1
      D0FFCED1D0FFF8F9F9FFFFFFFFFFFDFDFDFFFBFCFCFFF6F7F7FFE1E3E2FFA4A6
      A5FFDEE1E0FFD4D7D6FCBDC0BFF9D0D4D2FE3335345C00000000000000000708
      08127A7D7CB3D0D3D3FFC8CCCAFFF3F4F4FFFFFFFFFFFFFFFFFFFCFBFBFFF1F0
      F1FFD2D6D4FFA3A5A5FFE2E4E5FFABAFAEE47C817FD1C5C8C8FA3738385E0000
      000000000000050606127F8181B3D6D8D8FFB3B8B7FFE4E8E5FFF8FAF9FFF9FA
      FAFFFBFBFBFFE7EBEAFFA9ACABFFBBBDBDFFF7F8F9FFC0C3C3F6A7ACA9F0CDCF
      CFFE3536355D000000000000000006070712838584B7CDCECFF3838786D4ACB0
      AEF9CDD1D0FFD5D9D7FFCBCFCEFFAAAEABFFA7ABA9FFDFE0E1FFE3E4E4FFAEB1
      B0E8AAADADDDD0D2D2FB3636355D00000000000000000606070C8C8E8DA4F4F7
      F5FFBFC2C0F0D6D8D7FFD4D8D7FFC6C9C8FFC7CCCAFFE0E2E1FFFAFBFAFFFFFF
      FFFFFFFFFFFFCED0D0F9CFD2D2F1E7E9E9FD3A3B3B4B00000000000000000506
      06015659574B9B9E9CC2979998C7969897C0929493C08E908FC0909391C0989A
      99C0959796C0939594C0949595C0949696C29B9D9CCA8C908D9F282928180000
      000000000000000101000707070408080815090A0A1708090916090909160A0A
      0A160A0A0A160808081607070716070707160707071609090917090909190709
      070D0404040000000000}
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BMostrarClick
  end
  object BAtualizar: TBitBtn
    Left = 704
    Top = 40
    Width = 105
    Height = 25
    Caption = 'Atualizar'
    DoubleBuffered = True
    Glyph.Data = {
      E6040000424DE604000000000000360000002800000014000000140000000100
      180000000000B0040000120B0000120B00000000000000000000EDE9EBEDE9EB
      EDE9EBE9E5E7E6E3E5E3DFE1E0DCDEDCD9DAE3DFE1E3DFE1DAD7D9DEDADCE1DD
      DFE4E0E2E8E4E6EBE7E9ECE8EAEDE9EBEDE9EBEDE9EBEAE6E8E9E5E7E3DFE1D9
      D6D8CFCCCEC5C2C3BBB8B9B5B2B47D8995999CA2B8B5B6B4B1B3BFBBBDC7C4C5
      D2CFD0DCD9DAE6E2E4EBE7E9EDE9EBEDE9EBEBE7E9EBE7E9E8E4E6E4E0E2DFDB
      DDD9D5D7D3CFD1D9D5D7718EA5518DB5CCC9CBD6D2D4D4D0D2DAD7D9E0DCDEE6
      E2E4E8E4E6ECE8EAEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB
      EDE9EBEDE9EBC3CCD83BA9EDA1B6CCEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9
      EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBED
      E9EBDADCE454A8E348A6E9D0D8E4EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB
      EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBE6E5
      EA6FABDC39A2F473ADDDECE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBED
      E9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB98BDE0
      2F96F53BA4F5A5C3E1EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9
      EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBBED0E543A3F32B
      95FD5AB1EECFDAE8EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB
      EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBDBE0EA67B4ED2D97FA38A1
      FA7CB8E8EBE8EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBED
      E9EBEDE9EBE5E5EBACCBEA9FC7EBA8CBEBA6C9EB6DBCEF369FFA2B97FB4DB0F6
      ACCCEBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9
      EBE4E5EB78BFF14CB3F941A8F944ABF943AAF8329DF92998F937A3FA66B8F3D6
      DEEBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB
      90C3F141A8F92A98FA2C9AFA2C9BF937A2FA3FA9FA3CA7FA5ABCFA87C1F1EBE8
      EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBB2CFEF52
      B2F8319FF934A2FA30A0FA4EB3FA75C1F887C0F38EC6F483BEF4D5DEEDEDE9EB
      EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBDFE3EC76C4F840B4
      FB41B5FB42B7FC46BBFC76C7F9CAD9EEEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBED
      E9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB8CC9F55BCCFD4AC4FD
      4FC7FD4CC9FD64D3FD92C8F5EBE8EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9
      EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB99C7F269D2FC4BCBFD53CFFE52
      D0FE58D6FE83D8FCBDD4EEEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB
      EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBC3D7EE75D3FC52D4FE59D4FE5AD5FD57D4
      FD72DEFD93CBF6E3E4ECEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBED
      E9EBEDE9EBEDE9EBEDE9EBE6E6EB92D4F95DD8FD56D3FD5BD4FD5BD4FC5DD7FB
      86DCFCB5D2F0EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9
      EBEDE9EBEDE9EBEBE8EB97CDF692E9FC78DEFC80E1FC82E1FC7DDFFC92E9FC9F
      D5F7E2E4ECEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB
      EDE9EBEDE9EBABCFF08FCCF892CEF795CEF895CEF894CDF893CEF78BCAF7B5D3
      EFEDE9EBEDE9EBEDE9EB}
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BAtualizarClick
  end
  object BImprimir: TBitBtn
    Left = 703
    Top = 72
    Width = 105
    Height = 25
    Caption = 'Imprimir'
    DoubleBuffered = True
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF72706E7F7F7FBDBDBDEAEA
      EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFB3B3B29C9792F2EFECC0BEB98C88845F5D5B727373B8B8B8EA
      EAEAFFFFFFFFFFFF0000FFFFFFFFFFFFAEAEAD6A6A69919190C2C2C2ADADAD67
      655CF4F3EEFDFFFAFFFFFFFFFFFFFAF9F4CBC8C39A9895706F6DA5A5A5E9E9E9
      0000FFFFFFE6E6E63B3A313230272D2C2426241E2E2D28B2B8B3DDE7E5E5EFEE
      EAF3EFEBF0ECE9ECE6F8FAF5FFFFFFFFFFFECDCDCBD6D6D60000FFFFFF9FA09D
      6E6B606C6A5F6A685D5F5C5239352F61615A7B7F78969D97A8B0ABBAC2BED3DF
      DCE0E7E5EBEFEBCBCCC7D4D5D4FFFFFF0000F0F0F06668618C8B7E8482778684
      7A9192863938331E22213237364448435458536C716D88918CA8B3B0A7B1AD62
      6561C2C2C2FEFEFE0000B8B9B9737367BDBFB0C1C6BAA9ABA0A0A1966B6C6245
      443C2F2E281B1B19181A1A1A1F1F0D0E0D1A1B181E1F1A474942424540C5C5C5
      0000A0A3A1919184DBE0D3E9F1E7EAF1E8E5ECE2DAE0D5DEE3D9C3C7BDA6A8A1
      898A835A59542E2D291714111B1B16878B837C80779696950000939590ABAC9C
      E8EEE2E6EBE1EAEFE6E6ECE1ECF1E7E5EAE0C1C6BADAE0D7D6DBD4D8DCD0DDE3
      DDB8BCB88F928B92968EA5ACA28D8F8D0000898982CED0C1EFF4E8EEF3E6F0F5
      E9E8ECDFF2F6EBCBCEC2BCC0B4CFCFBDC5BEA9D2CBB8DFE4E4E4EAF3F9FFF9E5
      ECE4DCE3D9A2A4A200009597918F8F7DA7AA99B7BBAABCBFB3C3C6BBE5E9DDE3
      E6DBEBF0E6D1D1BDBDBDA2DFE1D5DADFD6EFF4ECF1F6F0F5FAF3D6DBD5DCDDDC
      0000F2F3F2B7BBB693988E797C6F43433649463A5D594A7674668E90839F9D8F
      C1C4B8CBCFC4D9DDD4F1F7F0F6FDF5F7FEF6B8B9B8FFFFFF0000FFFFFFFFFFFF
      FFFFFFDADADA6A6758565242271F13292216282216312C213B382B58574A4747
      3E8A8E82B0B6ABB5B7B5FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF8A8C896363
      554D4B3C484335443F31403C2F3C392D3834296261548F908CCCCDCCDDDEDDFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF4F4F46B726A737E76697066676C616C
      73666D74686F776F757D756C716BF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFFC5C6C557574B6166595C6155595D5162685D626960697168
      6D72687B7D7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
      E0E1DF8D91857070665251444541344845374B473B545144524E4290908EFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFBFB
      FBE5E5E4D1D3D1C3C5C2C1C3C0C7C7C5C3C7C2E8E8E8FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000}
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BImprimirClick
  end
  object BSair: TBitBtn
    Left = 704
    Top = 104
    Width = 105
    Height = 25
    Caption = 'Sair'
    DoubleBuffered = True
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFD1D1CE4C48402D34293040313241333341333442343442343441
      3434423434413434413434423436372F0000FFFFFFFFFFFFFFFFFFFFFFFFC0BE
      C871687B85A4904E8F6926784B257A4B297E4E2C81512E81522E82522D81532D
      81522E85553441340000FFFFFFFFFFFFFFFFFFFFFFFFB9B8E13F3CA9ABA4D0D7
      CDC87D9284537663256541296A442E734A347650357651357752337D53364034
      0000FFFFFFFFFFFFFFFFFFFFFFFFD4D4ED1818B11A18B0A9A8CDEEE8E0C1BEC0
      73877D42685321613D2D6C4730704B31734D2F7C503440340000C8C7E8C4C4DE
      C4C3DEC8C8E19D9CC41D1DBF0000E71514BA9694B7DCDDD0D5CFD3AEACAF5C6B
      63255A3C276C442F6E492E7A4F34403400002221B01E1EC91E1ECD2222CE1818
      C50404DD0101FA0000F1110FBE807EA4CED0C2DBD7DC8E8C8E1F51342469412D
      6C472C774C34403300000000B10000F60000E50000E50000E70101EA0000DB00
      00E50000F70E0DC57975A0D8D5CA888D8B204E3324613D2B65422B7149343F32
      00000F0DB71010FF0101E50101E50101E50000E50000E30000E30000F30A0AF9
      100FC58984B5949787204B32235B3A2A5C3E2A6946343E320000100FB51B1CFF
      0101FB0202FA0303FB0202FB0000FA0101FC1213FE0202EC312FA8B8B3BD8D92
      8C1D452F21563728573B276641343E3200000907B01D1DF01D1DED1D1DEE2121
      ED2525F61313FF1515FF0A09E5403EAA706F725F5D5C888D8B1E402C1B492E22
      4B33235D3D343C3200005B59C14D4EBF4E4EBF5050C03939AD1818C52324FA11
      0FDD544FAEC1C1BF9A9C9B4C4A4B545655284435143A241E3E2B205436333C31
      0000FFFFFFFFFFFFFFFFFFFFFFFFD5D5E82020C10703C86D69B6D1D3CBC3C6C4
      A8AAA9C4C4C59A9C9D0E261811301E1732231B4C31323B300000FFFFFFFFFFFF
      FFFFFFFFFFFFBFBEE62723A57B74B4E6E8DCD4D7D3BFC1C2BDBFBFD1D3D38285
      8512291C0C2A19132C1E19472D323A300000FFFFFFFFFFFFFFFFFFFFFFFFBAB7
      C7706B89E6E8E2E9ECE8CDCFCFBFC1C1B8BABACECED08387860C22150825150F
      261915422932392E0000FFFFFFFFFFFFFFFFFFFFFFFFBBBAB5848478E5E8E5E2
      E5E6CCCECEBFC2C2BDBFBFCACACB68696A02150A0925150B2015123E2531392E
      0000FFFFFFFFFFFFFFFFFFFFFFFFBBBAB77E7D78E4E6E6E7EAEBD5D7D7C9CCCC
      AEB1B0A3A3A35053520010050C27180B2014123E2531392E0000FFFFFFFFFFFF
      FFFFFFFFFFFFBCBBB97D7C78D4D6D5C9CDCEAAAEAE8A8E8E72757688888A4F52
      520011040A2716091F12103E2531392E0000FFFFFFFFFFFFFFFFFFFFFFFFD0CF
      CD4B4A4542403B4A4A4443423D3D3C373B393542403C3A39332D2E282E322A2E
      302A30352D36342E0000}
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = BSairClick
  end
  object ClientProdSemCus: TDataSource
    DataSet = Dm1.ConsProdSemCus
    Left = 769
    Top = 520
  end
  object CadE075Der: TADOQuery
    Connection = Dm.ADOBanco
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
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e075der.* from e075der where codemp = :codemp and'
      '                                    codpro = :codpro and'
      '                                    codder = :codder')
    Left = 729
    Top = 336
    object CadE075DerCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE075DerCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object CadE075DerCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object CadE075DerDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
    object CadE075DerDESCPL: TStringField
      FieldName = 'DESCPL'
      Size = 90
    end
    object CadE075DerCODBAR: TBCDField
      FieldName = 'CODBAR'
      Precision = 13
      Size = 0
    end
    object CadE075DerCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object CadE075DerCODAGT: TStringField
      FieldName = 'CODAGT'
      Size = 5
    end
    object CadE075DerSEQCMD: TIntegerField
      FieldName = 'SEQCMD'
    end
    object CadE075DerDATVAL: TDateTimeField
      FieldName = 'DATVAL'
    end
    object CadE075DerDIAVLT: TIntegerField
      FieldName = 'DIAVLT'
    end
    object CadE075DerTIPCN2: TStringField
      FieldName = 'TIPCN2'
      Size = 1
    end
    object CadE075DerVLRCN2: TBCDField
      FieldName = 'VLRCN2'
      Precision = 13
      Size = 6
    end
    object CadE075DerTIPCN3: TStringField
      FieldName = 'TIPCN3'
      Size = 1
    end
    object CadE075DerVLRCN3: TBCDField
      FieldName = 'VLRCN3'
      Precision = 13
      Size = 6
    end
    object CadE075DerPRECUS: TBCDField
      FieldName = 'PRECUS'
      Precision = 15
      Size = 6
    end
    object CadE075DerDATCUS: TDateTimeField
      FieldName = 'DATCUS'
    end
    object CadE075DerPREMED: TBCDField
      FieldName = 'PREMED'
      Precision = 15
      Size = 6
    end
    object CadE075DerDATMED: TDateTimeField
      FieldName = 'DATMED'
    end
    object CadE075DerPREUEN: TBCDField
      FieldName = 'PREUEN'
      Precision = 15
      Size = 6
    end
    object CadE075DerDATUEN: TDateTimeField
      FieldName = 'DATUEN'
    end
    object CadE075DerPREREP: TBCDField
      FieldName = 'PREREP'
      Precision = 15
      Size = 6
    end
    object CadE075DerDATREP: TDateTimeField
      FieldName = 'DATREP'
    end
    object CadE075DerDIAREP: TIntegerField
      FieldName = 'DIAREP'
    end
    object CadE075DerPESBRU: TBCDField
      FieldName = 'PESBRU'
      Precision = 11
      Size = 5
    end
    object CadE075DerPESLIQ: TBCDField
      FieldName = 'PESLIQ'
      Precision = 11
      Size = 5
    end
    object CadE075DerTOLPES: TBCDField
      FieldName = 'TOLPES'
      Precision = 5
      Size = 3
    end
    object CadE075DerVOLDER: TBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object CadE075DerPERPRD: TBCDField
      FieldName = 'PERPRD'
      Precision = 4
      Size = 2
    end
    object CadE075DerQTDIQL: TBCDField
      FieldName = 'QTDIQL'
      Precision = 14
      Size = 5
    end
    object CadE075DerQTDCIC: TBCDField
      FieldName = 'QTDCIC'
      Precision = 14
      Size = 5
    end
    object CadE075DerQTDPRD: TBCDField
      FieldName = 'QTDPRD'
      Precision = 14
      Size = 5
    end
    object CadE075DerPREUIS: TBCDField
      FieldName = 'PREUIS'
      Precision = 17
      Size = 8
    end
    object CadE075DerPERICS: TBCDField
      FieldName = 'PERICS'
      Precision = 5
      Size = 2
    end
    object CadE075DerCODEMB: TIntegerField
      FieldName = 'CODEMB'
    end
    object CadE075DerQTDEMB: TIntegerField
      FieldName = 'QTDEMB'
    end
    object CadE075DerCODROT: TStringField
      FieldName = 'CODROT'
      Size = 14
    end
    object CadE075DerCODROY: TIntegerField
      FieldName = 'CODROY'
    end
    object CadE075DerBXAORP: TStringField
      FieldName = 'BXAORP'
      Size = 1
    end
    object CadE075DerSERCCL: TStringField
      FieldName = 'SERCCL'
      Size = 3
    end
    object CadE075DerNUMCCL: TStringField
      FieldName = 'NUMCCL'
      Size = 12
    end
    object CadE075DerCURABC: TStringField
      FieldName = 'CURABC'
      Size = 1
    end
    object CadE075DerCURAB2: TStringField
      FieldName = 'CURAB2'
      Size = 1
    end
    object CadE075DerCURAB3: TStringField
      FieldName = 'CURAB3'
      Size = 1
    end
    object CadE075DerCURAB4: TStringField
      FieldName = 'CURAB4'
      Size = 1
    end
    object CadE075DerCODREG: TIntegerField
      FieldName = 'CODREG'
    end
    object CadE075DerSITDER: TStringField
      FieldName = 'SITDER'
      Size = 1
    end
    object CadE075DerCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object CadE075DerCTRLOT: TStringField
      FieldName = 'CTRLOT'
      Size = 1
    end
    object CadE075DerCTRSEP: TStringField
      FieldName = 'CTRSEP'
      Size = 1
    end
    object CadE075DerCTRVLD: TStringField
      FieldName = 'CTRVLD'
      Size = 1
    end
    object CadE075DerDEPPAD: TStringField
      FieldName = 'DEPPAD'
      Size = 10
    end
    object CadE075DerDEPPAA: TStringField
      FieldName = 'DEPPAA'
      Size = 10
    end
    object CadE075DerINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object CadE075DerINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object CadE075DerINDKAN: TStringField
      FieldName = 'INDKAN'
      Size = 1
    end
    object CadE075DerCODREF: TStringField
      FieldName = 'CODREF'
    end
    object CadE075DerCODPIN: TStringField
      FieldName = 'CODPIN'
    end
    object CadE075DerNOTFOR: TBCDField
      FieldName = 'NOTFOR'
      Precision = 5
      Size = 2
    end
    object CadE075DerORICUS: TStringField
      FieldName = 'ORICUS'
      Size = 1
    end
    object CadE075DerINFCUS: TStringField
      FieldName = 'INFCUS'
      Size = 1
    end
    object CadE075DerHORCUS: TIntegerField
      FieldName = 'HORCUS'
    end
    object CadE075DerUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object CadE075DerHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object CadE075DerDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object CadE075DerUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object CadE075DerHORALT: TIntegerField
      FieldName = 'HORALT'
    end
    object CadE075DerDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object CadE075DerCODAGE: TStringField
      FieldName = 'CODAGE'
      Size = 10
    end
    object CadE075DerCODBA2: TStringField
      FieldName = 'CODBA2'
      Size = 30
    end
    object CadE075DerINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object CadE075DerDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object CadE075DerHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object CadE075DerEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object CadE075DerSERMVP: TStringField
      FieldName = 'SERMVP'
      Size = 14
    end
    object CadE075DerAPRDFT: TStringField
      FieldName = 'APRDFT'
      Size = 1
    end
    object CadE075DerCODAEM: TStringField
      FieldName = 'CODAEM'
      Size = 10
    end
    object CadE075DerCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object CadE075DerINDGEN: TStringField
      FieldName = 'INDGEN'
      Size = 1
    end
    object CadE075DerQTDMLT: TBCDField
      FieldName = 'QTDMLT'
      Precision = 12
      Size = 5
    end
    object CadE075DerQTDMIN: TBCDField
      FieldName = 'QTDMIN'
      Precision = 12
      Size = 5
    end
    object CadE075DerQTDMAX: TBCDField
      FieldName = 'QTDMAX'
      Precision = 12
      Size = 5
    end
    object CadE075DerCODEND: TStringField
      FieldName = 'CODEND'
      Size = 10
    end
    object CadE075DerROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object CadE075DerNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object CadE075DerINDPCQ: TStringField
      FieldName = 'INDPCQ'
      Size = 1
    end
    object CadE075DerVLRCID: TBCDField
      FieldName = 'VLRCID'
      Precision = 15
      Size = 2
    end
    object CadE075DerUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object CadE075DerUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object CadE075DerUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object CadE075DerUSU_CMP2BB: TBCDField
      FieldName = 'USU_CMP2BB'
      Precision = 8
      Size = 2
    end
    object CadE075DerUSU_CMP2EN: TBCDField
      FieldName = 'USU_CMP2EN'
      Precision = 8
      Size = 2
    end
    object CadE075DerUSU_MEDESP: TStringField
      FieldName = 'USU_MEDESP'
      Size = 1
    end
  end
end
