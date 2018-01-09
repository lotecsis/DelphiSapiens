object FCorteTecCarga: TFCorteTecCarga
  Left = 241
  Top = 143
  Caption = 'Controle de Corte'
  ClientHeight = 693
  ClientWidth = 1180
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 1180
    Height = 693
    ActivePage = TbCargas
    Align = alClient
    TabOrder = 0
    object TbCargas: TTabSheet
      Caption = 'Cargas - Cortar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnShow = TbCargasShow
      object Label1: TLabel
        Left = 266
        Top = 7
        Width = 171
        Height = 13
        Caption = 'Cargas Liberadas P/Produ'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 761
        Top = 6
        Width = 118
        Height = 13
        Caption = 'Cargas em Produ'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 538
        Top = 61
        Width = 89
        Height = 41
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFAFBF8060A64D209933009933009933
          00993300A64D20BF8060E5CCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5CCBFA64D20B35D23DFAE72F3D8A2
          FEF3C3FFFACEFFFBD1FEF5C6F3DAA5DFAF74B35D25B36640E5CCBFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC68D70A94B11E5AE67FB
          DB99FCDF9CFBE195FCE696FDEEA3FDEFA4FCE99AFCE399FCE1A0FBDD9CE6B06B
          AA4B12CC997FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8060B55B
          1DF2BA65F8C876F8C05BF8C55AF9CF6AFBD978FCDF81FCE082FBDB7BFAD26EF8
          C85EF8C360F9CC7BF4BD6AB65D1FBF8060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          C68D70AF5318ECAA57F2AE4CF4A934F6B23FF7BC4DF8C55AF9CC64C3762CB15B
          1BC3762CF9C75DF7BF50F6B542F5AC38F4B14FEEAE5AB15519CC997FFFFFFFFF
          FFFFFFFFFFE5CCBFA13D08D78A3EE2963DE99222F29F26F5A932F6B23DF6BA48
          B15715D5A991ECD9CFD7AD93A14211F6B440F5AB35F3A229EC9623E69A3FDA8E
          42A13F08E5CCBFFFFFFFFFFFFFA64D20BA5F21D28036D77D20E1881FEB9420F2
          9E24F4A62EF5AD36B36640FFFFFFDBDBDBFBFBFBDBB5A1A14211F3A126ED9720
          E38B1FDA8021D58538BC6324B36640FFFFFFDFBFAF9D3905BB6123C4691ECD70
          1AD87C1BE1871CEA911DF19A1FF4A024B15715FFFFFFDBDBDBD1D1D1FBFBFBDB
          B5A0A14211E48A1DDA7F1BD0741BC86C1FBF67269F3A05E5CCBFBF8060A03D0B
          B05217BA5A15C46517CE7018D67A18DE831AE58B1BEA911BD97D15BF8060FFFF
          FFDBDBDBD1D1D1FBFBFBDAB4A0A14211D07318C66817BD5D16B4561AA23F0BC6
          8D70A64D209B390CA54411B04F12A23D05B36640B36640B36640B36640B36640
          B36640B36640D9B29FFFFFFFD5D5D5D3D3D3FCFCFCDAB49FA14211BC5C14B252
          13A847119D3B0CAC5930993300912F0B9B390DA23D05ECD9CFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE2E2E2D7D7D7DFDFDFFDFDFD
          D9B39FA14211A7460F9E3C0E93320C9933009933008C2908912E099A370BFFFF
          FFF1F1F1EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
          EFEFEFEFEFF5F5F5FFFFFFA23E0A9C390B93310A8D2A09993300993300E2BEA9
          D9AB8BA23D05ECD9D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFEFEFEFEFEFEFEFEFFFFFFD9B3A0A14211BF794ED8A98BE1BDA999
          3300993300EFD6C4D9AA8CC789619E3D0AAC5930B36640B36640B36640B36640
          B36640B36640D9B29FFFFFFFFEFEFEFEFEFEFFFFFFD9B4A1A14211C0794CC98C
          66D9AC90F0D8C8993300A64D20E8C8B5DAAD93C98C67C48259C17C50BF7647BE
          7240BD6F3ABD6C35B66029C18262FFFFFFFEFEFEFEFEFEFFFFFFD9B4A1A14211
          C07A4FC68760CB9170DCB399E9CAB9AC5930BF8060D8AA90DFBBA5CD9676C88B
          67C5855EC38056C17B4FC0784ABF7545AA5428FFFFFFFEFEFEFEFEFEFFFFFFDA
          B4A1A14211C07C53C78964C98F6DCF9C7EE1BFABD9AB92C68D70DFBFAFB76A43
          EBD0C1D5A88ECB9576C98F6DC78A66C58660C4835AC38056B36640FFFFFFFEFE
          FEFFFFFFDAB4A1A14211C3825BC88D6ACB9372CD997CD7AC94ECD3C5B76B44E5
          CCBFFFFFFFA64D20E2BEABE2C2B0D2A48BCD9A7DCB9576CA9170C98E6BC88B67
          A5491AD4A892E5CCBFCE9C83A14211C58865CB9373CD987ACF9D82D4A890E4C5
          B4E2BFACB36640FFFFFFFFFFFFE5CCBFA85124EDD5C8DFBEACD3A791D0A086CE
          9C81CD997CCC9779C88D6DA95225A64C1EAC582DC98F70CE9B7FCF9E84D1A28A
          D5AA96E1C1B1EDD6CAA85124E5CCBFFFFFFFFFFFFFFFFFFFC68D70BD7955F0DC
          D2E1C3B3D7AF9CD3A791D2A48DD1A28AD0A188D0A187D0A187D1A289D1A38CD2
          A68FD4A994D8B29FE2C4B6F0DED4BE7955CC997FFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBF8060BE7955EED9CFE7CDC3DDBDAED7B2A1D6AE9BD5AC99D5AC99D5AC
          99D5AD9AD6AF9DD9B4A3DEBFB0E7CFC4EEDBD1BE7956BF8060FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFC68D70A85125E4C5B5F0DFD7E8D1C7E2C6BB
          DFC0B4DDBEB1DDBEB1DFC1B5E2C7BCE9D2C8F0DFD8E4C5B6A95125CC997FFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5CCBFA64D20B2
          633BD6A992E7CDC0F2E4DEF0E1DBF0E1DBF2E4DEE8CDC0D6AA93B2633CB36640
          E5CCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFDFBFAFBF8060A64D20993300993300993300993300A64D20BF
          8060E5CCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = SpeedButton1Click
      end
      object BAltResolucao: TSpeedButton
        Left = 524
        Top = 3
        Width = 110
        Height = 22
        Caption = 'Mudar Resolu'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BAltResolucaoClick
      end
      object DBGrid1: TDBGrid
        Left = 193
        Top = 23
        Width = 311
        Height = 120
        DataSource = DsConsUsu_TPreCarLib
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
            FieldName = 'USU_PRECAR'
            Title.Alignment = taCenter
            Title.Caption = 'Carga'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_DATLIB'
            Title.Alignment = taCenter
            Title.Caption = 'Dat.Lib'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOMUSU'
            Title.Alignment = taCenter
            Title.Caption = 'Usu'#225'rio'
            Width = 100
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 663
        Top = 22
        Width = 310
        Height = 120
        DataSource = DsConsUsu_TCarPro
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopCargaEmProd
        ReadOnly = True
        TabOrder = 1
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
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_DATIMP'
            Title.Alignment = taCenter
            Title.Caption = 'Dat.Imp'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOMUSU'
            Title.Alignment = taCenter
            Title.Caption = 'Usu'#225'rio'
            Width = 100
            Visible = True
          end>
      end
      object DBGrid3: TDBGrid
        Left = -1
        Top = 171
        Width = 733
        Height = 460
        DataSource = DsConsUsu_TProCar
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopProdEmProd
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid3DblClick
        OnKeyPress = DBGrid3KeyPress
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_NUMANE'
            Title.Alignment = taCenter
            Title.Caption = 'Carga'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODPRO'
            Title.Alignment = taCenter
            Title.Caption = 'Cod.Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESPRO'
            Title.Alignment = taCenter
            Title.Caption = 'Desc.Produto'
            Width = 250
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODDER'
            Title.Alignment = taCenter
            Title.Caption = 'Deriva'#231#227'o'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDABE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Aberto'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDPED'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Pedida'
            Width = 90
            Visible = True
          end>
      end
      object DBGrid4: TDBGrid
        Left = 735
        Top = 171
        Width = 438
        Height = 460
        DataSource = DsConsUsu_TCorCar1
        PopupMenu = PopCoresEmProd
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODCOR1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Cor 01'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODCOR2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Cor 02'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDABE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Aberto'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDPED'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Pedida'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDPRO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Produzida'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_SALABE1'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo Cor 01'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_SALABE2'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo Cor 02'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_TIPCOM'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_ABRTIP'
            Title.Alignment = taCenter
            Title.Caption = 'Desc.Tipo'
            Width = 110
            Visible = True
          end>
      end
      object BarraProgresso: TProgressBar
        Left = 517
        Top = 104
        Width = 137
        Height = 17
        Smooth = True
        TabOrder = 4
        Visible = False
      end
      object EdPesquisa: TEdit
        Left = 4
        Top = 148
        Width = 1165
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
        OnChange = EdPesquisaChange
      end
      object BBaixa: TBitBtn
        Left = 510
        Top = 637
        Width = 75
        Height = 25
        Caption = '&Baixa'
        DoubleBuffered = True
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEBDCEBDD1DFD1CADACAC2D7C2E1EC
          E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF7498758FB18F84AE8475A875A6CAA6F9FBF9FFFFFFFF
          FFFFFFFFFFFFFFFF57FFFFFFFFFFFFFFFFFFFFFCF7F0F9ECDDFFFFFFFFFFFFFF
          FFFFA0B8A05F945F77AB7864A4637AB579E0EFE0FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFCFAE8B67BE19B41F3D9B7FFFFFFFFFFFFD5DFD5277729
          5FA25E4E9F4D4BA34CBBE0BDFFFFFFFFFFFFFFFFFFFFFFFFAAFFFFFFFFFFFFFF
          EEC9A0EA9E22DF8915DC8E2DF1CD9DFFFFFEFDFDFC267928329031379B392F9F
          398FCE98FFFFFFFFFFFFFFFFFFFFFFFF46FFFFFFFFF2DBC6F2AE33F2A719DD88
          13D88113E08F1EF3C280FFFCFA5D9B5806840F2B9C3423A83C41C469F2F8F2FF
          FFFFFFFFFFFFFFFF73FFF6E7DAEFB143FFC521F4A918E18C16D88011DE8913E5
          9518F2B963C3C99776B1737ABD8377B97F7ABB86E8E4DBFFF9FAFCFAFAFFFFFF
          FFFFE5B78FECA32AECA931EEA62CE59418DA8214DE841EE5972AEB9E27F7B66F
          FAF8F2F7FBF8DFE4DAA4514BA9514CBF796BCC9586FCF6F4FFFFFCF6F2F9F1EA
          FAF3EDECC392EA9A1ADD8817E0973EF7E1C5FDF6ECFEF5E9FFFFFFFFFFFFF9F6
          F6A553539A200AB14C21C1632FF7E4DD3EFFFFFFFFFFFFFFFFFFFFF3DCC2E99E
          26E08A13DD8F2CF4DAB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC18986AD2C01C4
          530CDF7513E9C1A6FBFFFFFFFFFFFFFFFFFFFFFAEDDDE7A544E38F12DB8B24EE
          C58DFEFDFBFFFFFFE6EEE7CBD4CCDFE2DFC5ADA2B8683BC07444CA7E43E0B799
          26FFFFFFFFFFFFFFFFFFFFFCF9F6F3B86DE69313DB891FE9B46CFEFAF6FFFFFF
          95BD95159F1C2EAC3E80D593A4E1B4E3EBE2FFFFFFFFFFFFF2FFFFFFFFFFFFFF
          FFFFFFFFFFFFF8E3C6FEBE66F5B161F7C691FFFFFFFFFFFFDCEADD0F9B26089E
          2A40B9607DD396CEF8DEFFFFFFFFFFFF0AFFFFFFFFFFFFFFFFFFFFD6D9D3AAB5
          88C0B374C0B273C4BB81D9D7B3D8EDD7A8DFB22AAD4C1CB74D2DC3635BD188B2
          EBC8FBFFFDFFFFFFF2FFFFFFFFFFFFFFFFFFFFA7B0A70049000554070E660D0F
          770F0F891912982825AD4626BA562BC86830D37842DC8A89E7B6EFFCF4FFFFFF
          13FFFFFFFFFFFFFFFFFFFFCCD0CC1F5C1F00570000650000750000840205991F
          14AF4226C76532DB823DEB9A44F5AA59F6B5DAFAE5FFFFFF33FFFFFFFFFFFFFF
          FFFFFFF1F2F1577A570052000E670E167916258D2C35A24842B1604BC37550D2
          8654E19952EBA346E79FB8F5CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6CC
          C69AAD9AA3B6A3A6BAA6AABFAAADC5AEAFC9B1B0CCB2AFD0B2AEDEB4ADE6B4A5
          E4B0DAEBDDFFFFFF39FF}
        ParentDoubleBuffered = False
        TabOrder = 6
        OnClick = BBaixaClick
      end
      object BMovimentos: TBitBtn
        Left = 710
        Top = 637
        Width = 99
        Height = 25
        Caption = 'Movimentos'
        DoubleBuffered = True
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF8E9A8FA5AEA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF97A4
          953E874096B098FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF99B5BE41813C3B853D99BA9BFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFF96ADAF44823F3E853F37893953AB5862BD695FC4675DC867
          5CC9655AC66356BE5F57B45D57A75C529657A5BDA8FFFFFF0000FFFFFF99B2B5
          4782414588453A913C32A9352EBC3329C93221D62E1BDE2914DE240ED81D07C8
          1303B00A0388050C6F0F6B9F70FFFFFF0000FFFFFF93B2B7377E3025892927AC
          2F2EC3383BDB4842EA5148F15848F4593DF24E2EE93F20D63012BB1D02940707
          6E0B6AA671FFFFFF0000FFFFFFEBF3FA76AFB6089C111DC22B41E15167D57786
          EB9192EF9C97F1A091F19686F18977DA7F52C76616B92205890A6AB071FFFFFF
          0000FFFFFFC0D8EDB3D6FC79C4C73FD94362FB70ACEBB2FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF7CE6832BCE39069D0C6DBD75FFFFFF0000FFFFFF9BC1E3
          74B7F4A1D0FF85D6BC81FA84B7F3BCFFFFFFFFFFFFFFFFFFFFFFFF9BC4FFB6DE
          EBB0F6B56FE67946BE4C96D59CFFFFFF0000FFFFFF6EA4D33797EB5AADFFAAD7
          F8AEE7BEBFF3BCFFFFFFFFFFFFFFFFFFFFFFFF96CBFF72B3FC9EE4C9C3F9C49C
          DE9FC8EACBFFFFFF0000FFFFFF4385C00076DC178BF87DBAFDFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF87BEF754ABFF228DE4AAE2C0EEF9EEEEF9EFFFFFFF
          0000FFFFFF3E7CB70271D60678E0378EEA68AEFA77B9FF85C1FF8AC4FF83C1FE
          7BB9F7519CF11388FD0067D70F559AB0D5BBFFFFFFFFFFFF0000FFFFFF4D82B5
          2B82DF1F83DD1A92F32FA6FF57B6FF6EC0FF71C1FF60B9FF3DAAFF1191FD0077
          E40061BE0047980B468DB0CEBDFFFFFF0000FFFFFF6790B878B7FF69B3F862BD
          FE5AC2FF60C7FF64C7FF59C2FF44B7FF35A9FD2A96EE2180D61B6CC01964BC1B
          5396B5D0BFFFFFFF0000FFFFFF9CACBB87A5C286A8C884ACCE82AFD380B1D77C
          AED779ADD777AAD477A5CE699CCE609CDE5F9AE14C7CB1BDD1C2FFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF8AA1BAAAD3FF7B9AC7BDDAC3FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99A7B3B0C2
          D4BDC0C5FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF989DA0B6B6B8FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000}
        ParentDoubleBuffered = False
        TabOrder = 7
        OnClick = BMovimentosClick
      end
      object BAlteraProdutos: TBitBtn
        Left = 591
        Top = 637
        Width = 113
        Height = 25
        Caption = 'Alterar Produtos '
        DoubleBuffered = True
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000120B0000120B00000000000000000000ECE8EACDCACB
          9F908DA9A1A0BDBBBDB0ADAFACA9AAA8A5A7A8A5A7A8A5A7A8A5A7A8A5A7A8A5
          A7AAA7A8AEABACBDBABAB2AFB49B98AACECBCDE6E2E4E8E3E5986044D97F39C4
          6F359F857AE1DDDFD2CFD1D1CED0D2CED0D2CED0D2CED0D2CED0D2CED0D3D0D1
          E1DEE0ABA8B52D2C8E3030C4908FC1E6E2E5DFCEC8BD561CE5C7B7E39A60C65E
          1ECAAEA3EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBA6A3C21E
          1DA42121AF6C6CDF6060E1A2A0DAEDE9EBC9885FCA6726C56328D2712DC2652B
          D9C0B7EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB8E8CBD1A1AA52323AF7878
          E44D4DD01616A4B6B3DEEDE9EBE6DBD9C77E48A9410FAF3B03D77933BE6E3DE5
          DAD8EDE9EBEDE9EBEDE9EBEDE9EBA9A6CA17179E2525B08282E65454D212129F
          8684CDEDE9EBEDE9EBEDE9EBE2D3CDC0733D9C3307B9480AD97E38C07B52EBE6
          E7EDE9EBEDE9EBD5D1E02C2CA42323AF8383E65454D211109E5D5DBBECE8EBED
          E9EBEDE9EBEDE9EBEDE9EBDECAC1BF76419A3006C05111D9803BC99170EDE9EB
          EDE9EB5D5DB32020AD7B7BE55252D211109D5455B6E6E3EAEDE9EBEDE9EBEDE9
          EBEDE9EBEDE9EBEDE9EBDBC6BBBE794C9C3204C9601CDD7E30D0AFA2908DC620
          21B07070E34E4ED01313A06766BCE2DEE9EDE9EBEDE9EBEDE9EBEDE9EBEDE9EB
          EDE9EBEDE9EBEDE9EBDAC4B7B96F41A43300A956375845982021AD5656D74A4A
          D12A2AABA4A1D2EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBED
          E9EBEDE9EBEDE9EBDBC3B5AD5D31271B8F2027BF8787EB4041CA4346B9DBD7E6
          EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9
          EBEDE9EBEDE9EBD8C1B58871A56C73F1494BD24C49BDDBD3DEEDE9EBEDE9EBED
          E9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB
          EDE9EBD6D1D3BAB0ABA294C7272BBF7F486AD2997AEDE9EBEDE9EBEDE9EBEDE9
          EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBCBC8CBAF
          B0B5D0CED0DBC6BE9E503EC35A16AE826BAAACB0DBD8DAEDE9EBEDE9EBEDE9EB
          EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBCBC8CBAEADB0CFCDD0EDE9
          EBEDE9EBD2B9ADAD8F7EB8BDC29E9D9FB5B4B5D4D3D4D8D6D8EDE9EBEDE9EBED
          E9EBEDE9EBEDE9EBEDE9EBEDE9EBCECBCDB1B1B4CFCDCFEDE9EBEDE9EBEDE9EB
          EDE9EBBFBFC2C9C8CA6D6C6E89888ADFDFE0CDCBCDEDE9EBEDE9EBEDE9EBEDE9
          EBEDE9EBEDE9EBCAC6CAB1B0B3D0CED0EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBCF
          CCCEFFFFFFD0CFD0C1C1C2C2C2C3B5B6B7CDCBCDEDE9EBEDE9EBEDE9EBEDE9EB
          CAC7CAB4B3B6D1CFD2EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBD4D0D2FFFF
          FFEDEDEDBEBEBFA9A8AABEBDBEACACADE7E3E5EDE9EBEDE9EBB8B5B8EAEAEAC8
          C6C8EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBE3DFE1E2E2E3C5C5C6
          B2B2B3CBC8CAEDE9EBBCBABCE0DDDFEDE9EBC7C4C6F8F8F8B2B0B2DCD9DBEDE9
          EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBC7C4C6C1C1C2D1D1D2B3
          B1B3C8C6C7ECE8EAEDE9EBEDE9EBD9D6D8C4C2C3E2DEE1EDE9EBEDE9EBEDE9EB
          EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBD8D5D7CCCACBD6D5D6D6D4
          D6E9E6E8EDE9EBEDE9EB}
        ParentDoubleBuffered = False
        TabOrder = 8
        OnClick = BAlteraProdutosClick
      end
      object BDiferencaTecido: TBitBtn
        Left = 369
        Top = 637
        Width = 135
        Height = 25
        Caption = 'Lan'#231'amento Manual'
        DoubleBuffered = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 9
        OnClick = BDiferencaTecidoClick
      end
    end
    object TbCargasHistorico: TTabSheet
      Caption = 'Cargas - Cortado'
      ImageIndex = 1
      object Label3: TLabel
        Left = 32
        Top = 6
        Width = 248
        Height = 13
        Caption = 'Cargas em Produ'#231#227'o - Produtos j'#225' Cortados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid5: TDBGrid
        Left = 4
        Top = 171
        Width = 785
        Height = 327
        DataSource = DsConsUsu_TProCar1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopProdJaProd
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
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODPRO'
            Title.Alignment = taCenter
            Title.Caption = 'Cod.Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESPRO'
            Title.Alignment = taCenter
            Title.Caption = 'Desc.Produto'
            Width = 300
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODDER'
            Title.Alignment = taCenter
            Title.Caption = 'Deriva'#231#227'o'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDPED'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Pedida'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDPRO'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Produzido'
            Width = 90
            Visible = True
          end>
      end
      object DBGrid7: TDBGrid
        Left = 4
        Top = 503
        Width = 785
        Height = 152
        DataSource = DsConUsu_TCorCar2
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODCOR1'
            Title.Alignment = taCenter
            Title.Caption = 'Cor 01'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODCOR2'
            Title.Alignment = taCenter
            Title.Caption = 'Cor 02'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDPED'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Pedida'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDPRO'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Produzida'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_SALABE1'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo cor 01'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_SALABE2'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo Cor 02'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_TIPCOM'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_ABRTIP'
            Title.Alignment = taCenter
            Title.Caption = 'Desc.Tipo'
            Width = 170
            Visible = True
          end>
      end
      object DBGrid6: TDBGrid
        Left = 4
        Top = 23
        Width = 311
        Height = 120
        DataSource = DsConsUsu_TCarPro
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 2
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
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_DATIMP'
            Title.Alignment = taCenter
            Title.Caption = 'Dat.Imp'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOMUSU'
            Title.Alignment = taCenter
            Title.Caption = 'Usu'#225'rio'
            Width = 100
            Visible = True
          end>
      end
      object EdPesquisa1: TEdit
        Left = 4
        Top = 148
        Width = 785
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
        OnChange = EdPesquisa1Change
      end
    end
    object TbSaldoGeral: TTabSheet
      Caption = 'Saldo Geral'
      ImageIndex = 2
      OnShow = TbSaldoGeralShow
      object DBGrid8: TDBGrid
        Left = 1
        Top = 32
        Width = 529
        Height = 617
        DataSource = DsConsUsu_TSalPro
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
            FieldName = 'USU_CODPRO'
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
            Width = 250
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODDER'
            Title.Alignment = taCenter
            Title.Caption = 'Deriva'#231#227'o'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDABE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Aberto'
            Width = 80
            Visible = True
          end>
      end
      object DBGrid9: TDBGrid
        Left = 536
        Top = 32
        Width = 248
        Height = 617
        DataSource = DsConsUsu_TCorSal
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODCOR1'
            Title.Alignment = taCenter
            Title.Caption = 'Cor 01'
            Width = 75
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODCOR2'
            Title.Alignment = taCenter
            Title.Caption = 'Cor 02'
            Width = 75
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDABE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Aberta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_ABRTIP'
            Visible = True
          end>
      end
      object EdPesquisa2: TEdit
        Left = 2
        Top = 10
        Width = 528
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = EdPesquisa2Change
      end
    end
  end
  object DsConsUsu_TPreCarLib: TDataSource
    AutoEdit = False
    DataSet = Dm1.ConsUsu_TPreCarLib
    Left = 756
  end
  object DsConsUsu_TCarPro: TDataSource
    AutoEdit = False
    DataSet = Dm1.ConsUsu_TCarPro
    Left = 732
  end
  object DsConsUsu_TProCar: TDataSource
    AutoEdit = False
    DataSet = Dm1.ConsUsu_TProCar
    Left = 704
  end
  object DsConsUsu_TCorCar1: TDataSource
    AutoEdit = False
    DataSet = Dm1.ConsUsu_tCorCar1
    Left = 674
  end
  object DsConsUsu_TProCar1: TDataSource
    AutoEdit = False
    DataSet = Dm1.ConsUsu_TProCar1
    Left = 644
  end
  object DsConUsu_TCorCar2: TDataSource
    AutoEdit = False
    DataSet = Dm1.ConsUsu_TCorCar2
    Left = 615
    Top = 1
  end
  object DsConsUsu_TSalPro: TDataSource
    DataSet = Dm1.ConsUsu_TSalPro
    Left = 580
  end
  object DsConsUsu_TCorSal: TDataSource
    DataSet = Dm1.ConsUsu_TCorSal
    Left = 540
    Top = 2
  end
  object PopCargaEmProd: TPopupMenu
    Left = 383
    Top = 320
    object Movimentos1: TMenuItem
      Caption = 'Movimentos'
      OnClick = Movimentos1Click
    end
  end
  object PopProdEmProd: TPopupMenu
    Images = ImageList1
    Left = 383
    Top = 272
    object Movimentos2: TMenuItem
      Caption = 'Movimentos'
      OnClick = Movimentos2Click
    end
    object PopAdicionaProd: TMenuItem
      Caption = 'Adicionar'
      ImageIndex = 4
      OnClick = PopAdicionaProdClick
    end
    object PopExcluiProd: TMenuItem
      Caption = 'Excluir'
      ImageIndex = 2
      OnClick = PopExcluiProdClick
    end
  end
  object PopProdJaProd: TPopupMenu
    Left = 391
    Top = 232
    object Movimentos3: TMenuItem
      Caption = 'Movimentos'
      OnClick = Movimentos3Click
    end
  end
  object PopCoresEmProd: TPopupMenu
    Images = ImageList1
    Left = 520
    Top = 328
    object PopAdicionar: TMenuItem
      Caption = 'Adicionar'
      ImageIndex = 4
      OnClick = PopAdicionarClick
    end
    object PopExcluir: TMenuItem
      Caption = 'Excluir'
      ImageIndex = 2
      OnClick = PopExcluirClick
    end
  end
  object ImageList1: TImageList
    Left = 528
    Top = 288
    Bitmap = {
      494C010106000A00180010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF007F7F
      7F007F7F7F00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00000000000000000000000000000000000000
      000000000000000000007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000000000007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F00FFFFFF00FFFFFF00000000000000
      000000000000000000007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFF
      FF007F7F7F007F7F7F00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F000000
      00007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F007F7F7F0000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000015A5FF6014A4
      FFCF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4
      FFFF14A4FFCF15A5FF600000000000000000000000000000000015A5FF6014A4
      FFCF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF008306FF0081
      00FF008305FC15A5FF6000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00000000000000000014A4FFEF11A0
      FFFB1FABFFFF49C7FFFF5CD1FFFF53D1FFFF46D3FFFF4CD8FFFF49D5FFFF2CC1
      FFFF1BB0FFFB14A4FFEF0000000000000000000000000000000014A4FFEF11A0
      FFFB1FABFFFF49C7FFFF5CD1FFFF53D1FFFF46D3FFFF4CD8FFFF008100FF139E
      16FF008100FF14A4FFEF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F00000000000000000014A4FFFF35B8
      FFFF49C7FFFF87E1FFFFA5EBFFFF8FE9FFFF73E6FFFF77E9FFFF74E7FFFF55D8
      FFFF1EB1FFFF14A4FFFF0000000000000000000000000000000014A4FFFF35B8
      FFFF49C7FFFF87E1FFFFA5EBFFFF8FE9FFFF73E6FFFF77E9FFFF008100FF2CAF
      2DFF008100FF14A4FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F00000000000000000014A4FFFF58CA
      FFFF46C6FFFF82DEFFFFA1EAFFFF87E5FFFF101F96FF00007AFF00007AFF0000
      7AFF00007AFF00007AFF00007AFF00007ACF000000000000000014A4FFFF58CA
      FFFF46C6FFFF82DEFFFFA1EAFFFF038706FF008100FF008100FF008100FF46C0
      47FF008100FF008100FF008100FF008100EF000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000014A4FFFF73D4
      FFFF43C6FFFF7EDDFFFF9CE7FFFF7FE1FFFF030380FF5757EFFF5A5AF0FF5151
      F0FF2727DAFF0A0AB5FF010195FF00007AFF000000000000000014A4FFFF73D4
      FFFF43C6FFFF7EDDFFFF9CE7FFFF008100FF95E696FF98E998FF89E788FF66DD
      65FF46C245FF21A321FF0B900BFF008100FF000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00000000000000000000000000000000000000
      000000000000000000007F7F7F007F7F7F00000000000000000014A4FFFF8FDD
      FFFF3FC5FFFF78DCFFFF96E3FFFF75DCFFFF0D1D96FF030380FF030380FF0303
      80FF030380FF030380FF030380FF00007ACF000000000000000014A4FFFF8FDD
      FFFF3FC5FFFF78DCFFFF96E3FFFF038706FF008100FF008100FF008100FF87E5
      88FF008100FF008100FF008100FF008100EF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F007F7F7F00000000000000000014A4FFFFACE6
      FFFF43C7FFFF73DAFFFF90E3FFFF6BD8FFFF3FCBFFFF3ECAFFFF3CCAFFFF2DBF
      FFFF33B8FFFF14A4FFFF0000000000000000000000000000000014A4FFFFACE6
      FFFF43C7FFFF73DAFFFF90E3FFFF6BD8FFFF3FCBFFFF3ECAFFFF008100FF90E5
      90FF008100FF14A4FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000014A4FFF57DD5
      FFFCB1E7FFFFC5F0FFFFC9F2FFFFC7F2FFFFC5F0FFFFC5F0FFFFC5F0FFFFC0ED
      FFFF78D3FFFD14A4FFF40000000000000000000000000000000014A4FFF57DD5
      FFFCB1E7FFFFC5F0FFFFC9F2FFFFC7F2FFFFC5F0FFFFC5F0FFFF008100FF84E0
      87FF008100FF14A4FFF400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007F7F7F007F7F7F00000000000000000014A4FFF4109F
      FFFD1BABFFFF31BCFFFF3EC6FFFF3CC9FFFF37CCFFFF3DD1FFFF3ACFFFFF2AC0
      FFFF18ADFFFD14A4FFF50000000000000000000000000000000014A4FFF4109F
      FFFD1BABFFFF31BCFFFF3EC6FFFF3CC9FFFF37CCFFFF3DD1FFFF018606FF0081
      00FF018306FF14A4FFF500000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007F7F7F007F7F7F00000000000000000014A4FFFF2EB4
      FFFF47C6FFFF86E1FFFFA6EBFFFF90E9FFFF75E6FFFF79EAFFFF76E7FFFF56D9
      FFFF1EB2FFFF15A9FFFF0000000000000000000000000000000014A4FFFF2EB4
      FFFF47C6FFFF86E1FFFFA6EBFFFF90E9FFFF75E6FFFF79EAFFFF76E7FFFF56D9
      FFFF1EB2FFFF15A9FFFF0000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF007F7F
      7F007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000000000000000000014A4FFFF55C9
      FFFF45C6FFFF82DEFFFFA3EAFFFF89E6FFFF69E0FFFF6BE2FFFF68E1FFFF4DD4
      FFFF1DB0FFFF15A9FFFF0000000000000000000000000000000014A4FFFF55C9
      FFFF45C6FFFF82DEFFFFA3EAFFFF89E6FFFF69E0FFFF6BE2FFFF68E1FFFF4DD4
      FFFF1DB0FFFF15A9FFFF000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFF
      FF007F7F7F007F7F7F00FFFFFF0000000000000000000000000014A4FFFF6ED1
      FFFF42C5FFFF7EDDFFFF9DE7FFFF81E2FFFF5CD9FFFF5BDAFFFF59D9FFFF43CE
      FFFF1AACFFFF15A9FFFF0000000000000000000000000000000014A4FFFF6ED1
      FFFF42C5FFFF7EDDFFFF9DE7FFFF81E2FFFF5CD9FFFF5BDAFFFF59D9FFFF43CE
      FFFF1AACFFFF15A9FFFF000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F000000
      00007F7F7F007F7F7F000000000000000000000000000000000014A4FFFF8ADC
      FFFF3FC5FFFF78DAFFFF97E5FFFF77DDFFFF4ED3FFFF4DD3FFFF4CD3FFFF39C6
      FFFF16A7FFFF15A9FFFF0000000000000000000000000000000014A4FFFF8ADC
      FFFF3FC5FFFF78DAFFFF97E5FFFF77DDFFFF4ED3FFFF4DD3FFFF4CD3FFFF39C6
      FFFF16A7FFFF15A9FFFF0000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00000000000000000014A4FFFFA7E5
      FFFF3AC5FFFF73DAFFFF91E2FFFF6ED9FFFF41CBFFFF40CBFFFF3ECBFFFF2FC0
      FFFF23AFFFFF15A9FFFF0000000000000000000000000000000014A4FFFFA7E5
      FFFF3AC5FFFF73DAFFFF91E2FFFF6ED9FFFF41CBFFFF40CBFFFF3ECBFFFF2FC0
      FFFF23AFFFFF15A9FFFF00000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F00000000000000000014A4FFEF95DD
      FFFBB6EBFFFFB0EBFFFFBCEFFFFFB0EBFFFF9FE6FFFF9EE6FFFF9DE6FFFFABE9
      FFFF88DCFFFC18A7FFF00000000000000000000000000000000014A4FFEF95DD
      FFFBB6EBFFFFB0EBFFFFBCEFFFFFB0EBFFFF9FE6FFFF9EE6FFFF9DE6FFFFABE9
      FFFF88DCFFFC18A7FFF000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F00000000000000000015A5FF6014A4
      FFCF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4
      FFFF13A4FFDF15A5FF600000000000000000000000000000000015A5FF6014A4
      FFCF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4
      FFFF13A4FFDF15A5FF6000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFF3FC00000000E7F8E3F800000000
      E7F8C0F80000000081FF80FE0000000081FC81FC00000000E7FCE3FC00000000
      E7FFE7FE00000000FFFCFF7C00000000FEFCFE3C00000000FE7FC00900000000
      80138001000000008013801300000000FE7FFE7C00000000FEF8FEF800000000
      FFF8FFF800000000FFFFFFFF0000000000000000FFFFFFFC00000000FFF8FFF8
      00000000FFF8C0F80000000081FF80FE0000000081FC81FC00000000FFFCFFFC
      00000000FFFFFFFE00000000FFFCFBFC00000000F7FCF3FC00000000E7FFC009
      0000000080138001000000008013801300000000E7FFE3FC00000000F7F8F7F8
      00000000FFF8FFF800000000FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
