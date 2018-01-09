object FPedido: TFPedido
  Left = 73
  Top = 126
  Caption = 'Pedidos de Venda'
  ClientHeight = 597
  ClientWidth = 976
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 976
    Height = 172
    Align = alTop
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 741
      Height = 170
      Align = alClient
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 102
        Width = 739
        Height = 30
        Align = alBottom
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
        object LEndCli: TLabel
          Left = 16
          Top = 8
          Width = 3
          Height = 13
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 852
        Height = 101
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          Left = 22
          Top = 33
          Width = 44
          Height = 13
          Caption = 'Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 15
          Top = 59
          Width = 51
          Height = 13
          Caption = 'Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 9
          Top = 84
          Width = 57
          Height = 13
          Caption = 'Trans.(P):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 210
          Top = 9
          Width = 44
          Height = 13
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 209
          Top = 35
          Width = 45
          Height = 13
          Caption = 'Repres:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 211
          Top = 60
          Width = 43
          Height = 13
          Caption = 'C.Pgto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 199
          Top = 84
          Width = 55
          Height = 13
          Caption = 'Situa'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LDsCodCli: TLabel
          Left = 360
          Top = 8
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LDsCodRep: TLabel
          Left = 360
          Top = 33
          Width = 3
          Height = 13
        end
        object LDsCodCpg: TLabel
          Left = 360
          Top = 59
          Width = 3
          Height = 13
        end
        object LDsSitPed: TLabel
          Left = 295
          Top = 84
          Width = 3
          Height = 13
        end
        object Label10: TLabel
          Left = 35
          Top = 9
          Width = 31
          Height = 13
          Caption = 'Filial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdNumPed: TEdit
          Left = 72
          Top = 25
          Width = 90
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 9
          ParentFont = False
          TabOrder = 0
          OnExit = EdNumPedExit
          OnKeyDown = EdNumPedKeyDown
          OnKeyPress = EdNumPedKeyPress
        end
        object EdDatEmi: TDateEdit
          Left = 71
          Top = 52
          Width = 90
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
          OnExit = EdDatEmiExit
        end
        object EdTnsPro: TEdit
          Left = 71
          Top = 78
          Width = 90
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 9
          ParentFont = False
          TabOrder = 2
          OnExit = EdTnsProExit
          OnKeyDown = EdTnsProKeyDown
        end
        object EdCodCli: TEdit
          Left = 259
          Top = 3
          Width = 89
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnExit = EdCodCliExit
          OnKeyDown = EdCodCliKeyDown
          OnKeyPress = EdCodCliKeyPress
        end
        object EdCodRep: TEdit
          Left = 259
          Top = 28
          Width = 90
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnExit = EdCodRepExit
          OnKeyDown = EdCodRepKeyDown
          OnKeyPress = EdCodRepKeyPress
        end
        object EdCodCpg: TEdit
          Left = 259
          Top = 53
          Width = 90
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnExit = EdCodCpgExit
          OnKeyDown = EdCodCpgKeyDown
        end
        object EdSitPed: TEdit
          Left = 259
          Top = 78
          Width = 30
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnExit = EdSitPedExit
          OnKeyPress = EdSitPedKeyPress
        end
        object EdCodFil: TEdit
          Left = 72
          Top = 2
          Width = 90
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnExit = EdCodFilExit
        end
        object BNumPed: TBitBtn
          Left = 137
          Top = 26
          Width = 22
          Height = 19
          Caption = '...'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 8
          TabStop = False
          OnClick = BNumPedClick
        end
        object BTnsPro: TBitBtn
          Left = 138
          Top = 79
          Width = 22
          Height = 19
          Caption = '...'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 9
          TabStop = False
          OnClick = BTnsProClick
        end
        object BCodCli: TBitBtn
          Left = 325
          Top = 4
          Width = 22
          Height = 19
          Caption = '...'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 10
          TabStop = False
          OnClick = BCodCliClick
        end
        object BCodRep: TBitBtn
          Left = 326
          Top = 29
          Width = 22
          Height = 19
          Caption = '...'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 11
          TabStop = False
          OnClick = BCodRepClick
        end
        object BCodCpg: TBitBtn
          Left = 325
          Top = 54
          Width = 23
          Height = 19
          Caption = '...'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 12
          TabStop = False
          OnClick = BCodCpgClick
        end
        object pnl1: TPanel
          Left = 497
          Top = 0
          Width = 355
          Height = 101
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 13
          object lblNumPedOri: TLabel
            Left = 35
            Top = 51
            Width = 101
            Height = 13
            Caption = 'N'#186' Pedido Origem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblPreCarOri: TLabel
            Left = 18
            Top = 78
            Width = 118
            Height = 13
            Caption = 'N'#186' Pr'#233'-Carga Origem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtNumPedOri: TCurrencyEdit
            Left = 138
            Top = 50
            Width = 100
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            Alignment = taCenter
            Color = clInfoBk
            DisplayFormat = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edtPreCarOri: TCurrencyEdit
            Left = 138
            Top = 75
            Width = 100
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            Alignment = taCenter
            Color = clInfoBk
            DisplayFormat = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      object Panel12: TPanel
        Left = 1
        Top = 132
        Width = 739
        Height = 37
        Align = alBottom
        BevelOuter = bvLowered
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object LDsProduto: TLabel
          Left = 74
          Top = 3
          Width = 3
          Height = 13
        end
        object LDsDerivacao: TLabel
          Left = 74
          Top = 20
          Width = 3
          Height = 13
        end
        object Label7: TLabel
          Left = 22
          Top = 3
          Width = 49
          Height = 13
          Caption = 'Produto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 9
          Top = 20
          Width = 63
          Height = 13
          Caption = 'Deriva'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBDesPro: TDBText
          Left = 77
          Top = 6
          Width = 277
          Height = 17
          DataField = 'DESPRO'
          DataSource = DsConsE120Ipd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBDesDer: TDBText
          Left = 77
          Top = 22
          Width = 277
          Height = 17
          DataField = 'DESDER'
          DataSource = DsConsE120Ipd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel17: TPanel
          Left = 341
          Top = 1
          Width = 397
          Height = 35
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object PPreCarga: TPanel
            Left = 107
            Top = 0
            Width = 110
            Height = 35
            Align = alRight
            BevelOuter = bvNone
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object PTecTransferido: TPanel
            Left = 27
            Top = 0
            Width = 80
            Height = 35
            Align = alRight
            BevelOuter = bvNone
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial Black'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
          end
          object PCorte: TPanel
            Left = 217
            Top = 0
            Width = 80
            Height = 35
            Align = alRight
            BevelOuter = bvNone
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
          end
          object PCarga: TPanel
            Left = 297
            Top = 0
            Width = 100
            Height = 35
            Align = alRight
            BevelOuter = bvNone
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 3
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 742
      Top = 1
      Width = 233
      Height = 170
      Align = alRight
      TabOrder = 1
      object BSair: TBitBtn
        Left = 119
        Top = 106
        Width = 110
        Height = 25
        Caption = 'Sair'
        DoubleBuffered = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 0
        TabStop = False
        OnClick = BSairClick
      end
      object BAlterar: TBitBtn
        Left = 119
        Top = 28
        Width = 110
        Height = 25
        Caption = 'Alterar'
        DoubleBuffered = True
        Enabled = False
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
        TabOrder = 1
        TabStop = False
        OnClick = BAlterarClick
      end
      object BInserir: TBitBtn
        Left = 118
        Top = 1
        Width = 110
        Height = 25
        Caption = 'Inserir'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          A7DDFF40B5FF14A4FF14A4FF14A4FFA9A5A0A9A5A0A9A5A0A9A5A0A9A5A0A9A5
          A0A9A5A0A9A5A0A9A5A0FFFFFFFFFFFF23AAFF15A1FF1FABFF49C7FF5CD1FFA9
          A5A0FEFCFBFCFAF6E7CCBCB06641F2E2D7F8EFE6F8EEE2A9A5A0FFFFFFFFFFFF
          14A4FF35B8FF49C7FF87E1FFA5EBFFA9A5A0FCFAF6FCF7F2B66B41B55E29C081
          5FF8EEE2F7EBDEA9A5A0FFFFFFFFFFFF14A4FF58CAFF46C6FF82DEFFA1EAFFA9
          A5A0FCF7F2E2C5B4C6763BC57335AC501CEFDCCCF6E9D9A9A5A0FFFFFFFFFFFF
          14A4FF73D4FF43C6FF7EDDFF9CE7FFA9A5A0FBF4EED5A78BC47E50BF7E5AC26A
          2ABF7F5AF4E6D5A9A5A0FFFFFFFFFFFF14A4FF8FDDFF3FC5FF78DCFF96E3FFA9
          A5A0FAF2EAF8EFE6F8EEE2F7EBDEC17745A34516EBD5C0A9A5A0FFFFFFFFFFFF
          14A4FFACE6FF43C7FF73DAFF90E3FFA9A5A0F8EFE6F8EEE2F7EBDEF6E9D9CB97
          77A34719B87552A9A5A0FFFFFFFFFFFF1DA8FF7FD5FFB1E7FFC5F0FFC9F2FFA9
          A5A0F8EEE2F7EBDEF6E9D9F4E6D5F3E3D1AC5F3BB26B46A9A5A0FFFFFFFFFFFF
          1EA8FF12A0FF1BABFF31BCFF3EC6FFA9A5A0A9A5A0A9A5A0A9A5A0A9A5A0A9A5
          A0A9A5A0A9A5A0A9A5A0FFFFFFFFFFFF14A4FF2EB4FF47C6FF86E1FFA6EBFF90
          E9FF75E6FF79EAFF76E7FF56D9FF1EB2FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
          14A4FF55C9FF45C6FF82DEFFA3EAFF89E6FF69E0FF6BE2FF68E1FF4DD4FF1DB0
          FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF6ED1FF42C5FF7EDDFF9DE7FF81
          E2FF5CD9FF5BDAFF59D9FF43CEFF1AACFF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
          14A4FF8ADCFF3FC5FF78DAFF97E5FF77DDFF4ED3FF4DD3FF4CD3FF39C6FF16A7
          FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FFA7E5FF3AC5FF73DAFF91E2FF6E
          D9FF41CBFF40CBFF3ECBFF2FC0FF23AFFF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
          23AAFF97DEFFB6EBFFB0EBFFBCEFFFB0EBFF9FE6FF9EE6FF9DE6FFABE9FF89DC
          FF26ACFFFFFFFFFFFFFFFFFFFFFFFFFFA7DDFF40B5FF14A4FF14A4FF14A4FF14
          A4FF14A4FF14A4FF14A4FF14A4FF31AFFFA7DDFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = BInserirClick
      end
      object BFechar: TBitBtn
        Left = 118
        Top = 80
        Width = 110
        Height = 25
        Caption = 'Fechar'
        DoubleBuffered = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
          333333333F777773FF333333008888800333333377333F3773F3333077870787
          7033333733337F33373F3308888707888803337F33337F33337F330777880887
          7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
          7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
          0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
          03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
          033333337F73FF737F33B33B778000877333333373F777337333333B30888880
          33333333373FFFF73333333B3300000333333333337777733333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 3
        TabStop = False
        OnClick = BFecharClick
      end
      object BExcluir: TBitBtn
        Left = 118
        Top = 54
        Width = 110
        Height = 25
        Caption = 'Excluir'
        DoubleBuffered = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
          333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
          03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
          33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
          0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
          3333333337FFF7F3333333333000003333333333377777333333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 4
        TabStop = False
        OnClick = BExcluirClick
      end
      object BCancelaPedido: TBitBtn
        Left = 6
        Top = 1
        Width = 110
        Height = 25
        Caption = 'Cancelar Pedido'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
          0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
          B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
          0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
          00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
          05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
          00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
          0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentDoubleBuffered = False
        TabOrder = 5
        OnClick = BCancelaPedidoClick
      end
      object BAddPedido: TBitBtn
        Left = 6
        Top = 28
        Width = 110
        Height = 25
        Caption = 'Adicionar Pedido'
        DoubleBuffered = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
          007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
          7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
          99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 6
        OnClick = BAddPedidoClick
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 515
    Width = 976
    Height = 82
    Align = alBottom
    TabOrder = 1
    object Panel14: TPanel
      Left = 1
      Top = 31
      Width = 974
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object Label11: TLabel
        Left = 31
        Top = 5
        Width = 53
        Height = 13
        Caption = 'Qtd.Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 134
        Top = 5
        Width = 62
        Height = 13
        Caption = 'Qtd.Aberto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 240
        Top = 5
        Width = 63
        Height = 13
        Caption = 'Peso Bruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 338
        Top = 5
        Width = 76
        Height = 13
        Caption = 'Peso L'#237'quido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 453
        Top = 5
        Width = 62
        Height = 13
        Caption = 'Vol.Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 559
        Top = 5
        Width = 60
        Height = 13
        Caption = 'Vol.Aberto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 663
        Top = 5
        Width = 64
        Height = 13
        Caption = 'Valor Bruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 764
        Top = 5
        Width = 77
        Height = 13
        Caption = 'Valor L'#237'quido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdVlrLiq: TCurrencyEdit
        Left = 757
        Top = 18
        Width = 90
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DisplayFormat = ' ,0.00;- ,0.00'
        ReadOnly = True
        TabOrder = 0
      end
      object EdVlrBru: TCurrencyEdit
        Left = 650
        Top = 18
        Width = 90
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DisplayFormat = ' ,0.00;- ,0.00'
        ReadOnly = True
        TabOrder = 1
      end
      object EdVolAberto: TCurrencyEdit
        Left = 544
        Top = 18
        Width = 90
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DisplayFormat = ' ,0.00;- ,0.00'
        ReadOnly = True
        TabOrder = 2
      end
      object EdVolPedido: TCurrencyEdit
        Left = 438
        Top = 18
        Width = 90
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DisplayFormat = ' ,0.00;- ,0.00'
        ReadOnly = True
        TabOrder = 3
      end
      object EdPesoLiquido: TCurrencyEdit
        Left = 332
        Top = 18
        Width = 90
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DisplayFormat = ' ,0.00;- ,0.00'
        ReadOnly = True
        TabOrder = 4
      end
      object EdPesoBruto: TCurrencyEdit
        Left = 226
        Top = 18
        Width = 90
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DisplayFormat = ' ,0.00;- ,0.00'
        ReadOnly = True
        TabOrder = 5
      end
      object EdQtdAberto: TCurrencyEdit
        Left = 120
        Top = 18
        Width = 90
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DisplayFormat = ' ,0.00;- ,0.00'
        ReadOnly = True
        TabOrder = 6
      end
      object EdQtdItens: TCurrencyEdit
        Left = 14
        Top = 18
        Width = 90
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DisplayFormat = ' ,0.00;- ,0.00'
        ReadOnly = True
        TabOrder = 7
      end
    end
    object Panel15: TPanel
      Left = 1
      Top = 1
      Width = 974
      Height = 30
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 1
      object Panel16: TPanel
        Left = 696
        Top = 1
        Width = 277
        Height = 28
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object BSaldoTecidos: TBitBtn
          Left = 177
          Top = 1
          Width = 98
          Height = 25
          Caption = 'Tecidos'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          Visible = False
          OnClick = BSaldoTecidosClick
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 172
    Width = 976
    Height = 343
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object PaginaControle: TPageControl
      Left = 0
      Top = 0
      Width = 976
      Height = 343
      ActivePage = TbProdutos
      Align = alClient
      TabOrder = 0
      object TbProdutos: TTabSheet
        Caption = 'Produtos'
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 968
          Height = 315
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 589
          object Panel10: TPanel
            Left = 0
            Top = 289
            Width = 968
            Height = 26
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitWidth = 589
            object Panel13: TPanel
              Left = 781
              Top = 0
              Width = 187
              Height = 26
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitLeft = 402
              object BRemoveProd: TBitBtn
                Left = 77
                Top = 1
                Width = 50
                Height = 25
                DoubleBuffered = True
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
                  3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
                  33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
                  33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
                  333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
                  03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
                  33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
                  0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
                  3333333337FFF7F3333333333000003333333333377777333333}
                NumGlyphs = 2
                ParentDoubleBuffered = False
                TabOrder = 0
                OnClick = BRemoveProdClick
              end
              object BAddProd: TBitBtn
                Left = 23
                Top = 1
                Width = 50
                Height = 25
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
                TabOrder = 1
                OnClick = BAddProdClick
              end
              object btnAddCor: TBitBtn
                Left = 131
                Top = 1
                Width = 50
                Height = 25
                DoubleBuffered = True
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
                  000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
                  00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
                  F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
                  0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
                  FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
                  FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
                  0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
                  00333377737FFFFF773333303300000003333337337777777333}
                NumGlyphs = 2
                ParentDoubleBuffered = False
                TabOrder = 2
                OnClick = btnAddCorClick
              end
            end
          end
          object DBGProdutos: TDBGrid
            Left = 0
            Top = 0
            Width = 968
            Height = 289
            Align = alClient
            DataSource = DsConsE120Ipd
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
                FieldName = 'SEQIPD'
                Title.Alignment = taCenter
                Title.Caption = 'Seq.'
                Width = 40
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TNSPRO'
                Title.Alignment = taCenter
                Title.Caption = 'Trans.'
                Width = 50
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODPRO'
                Title.Alignment = taCenter
                Title.Caption = 'Produto'
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESPRO'
                Title.Alignment = taCenter
                Title.Caption = 'Produto'
                Width = 230
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODDER'
                Title.Alignment = taCenter
                Title.Caption = 'Deriva'#231#227'o'
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODDEP'
                Title.Alignment = taCenter
                Title.Caption = 'Dep'#243'sito'
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 15722204
                Expanded = False
                FieldName = 'QTDPED'
                Title.Alignment = taCenter
                Title.Caption = 'Qtd.Pedida'
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 12320767
                Expanded = False
                FieldName = 'QTDABE'
                Title.Alignment = taCenter
                Title.Caption = 'Qtd.Aberto'
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODTPR'
                Title.Alignment = taCenter
                Title.Caption = 'Tab.Pre'#231'o'
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PREUNI'
                Title.Alignment = taCenter
                Title.Caption = 'Pre'#231'o Unit.'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_TOTDSC'
                Title.Alignment = taCenter
                Title.Caption = 'Tot.Desc. %'
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VLRBRU'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Bruto'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VLRLIQ'
                Title.Alignment = taCenter
                Title.Caption = 'L'#237'quido'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PERCOM'
                Title.Alignment = taCenter
                Title.Caption = '% Comiss'#227'o'
                Width = 65
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PERIPI'
                Title.Alignment = taCenter
                Title.Caption = '% IPI'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PERICM'
                Title.Alignment = taCenter
                Title.Caption = '% ICMS'
                Width = 50
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'QTDFAT'
                Title.Alignment = taCenter
                Title.Caption = 'Qtd.Faturado'
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 14540287
                Expanded = False
                FieldName = 'QTDCAN'
                Title.Alignment = taCenter
                Title.Caption = 'Qtd.Cancelado'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SITIPD'
                Title.Alignment = taCenter
                Title.Caption = 'Situa'#231#227'o'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VLRBIP'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Base IPI'
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VLRIPI'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. IPI'
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VLRBIC'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Base ICMS'
                Width = 64
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VLRICM'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. ICMS '
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VLRBSI'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Base ICMS Sub.'
                Width = 64
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VLRICS'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. ICMS Sub'
                Width = 64
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_VLRORI'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Tabela'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDRAE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDNLP'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDRES'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODLOT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDPOC'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UNIMED'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDAEN'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODMCP'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATMFP'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COTMFP'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATMOE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COTMOE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FECMOE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PREBRU'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODMOE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PREFIX'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERDSC'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PEROFE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERACR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATENT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATANE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATPOC'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODPVP'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMPRJ'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODFPJ'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTAFIN'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTARED'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODCCU'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRFRE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRSEG'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLREMB'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRENC'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLROUT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDAR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRFRD'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLROUD'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDSC'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDS1'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDS2'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDS3'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDS4'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLROFE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDZF'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRBSP'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRSTP'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRBSC'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRSTC'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRBCO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRCOM'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRLPR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRLOU'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRFIN'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODMOT'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSMOT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'GERNEC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'GERCGA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RESMAN'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDAED'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMCTR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATCPT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SEQCVP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUGER'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATGER'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORGER'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDPPF'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CMPKIT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FILOCP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMOCP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SEQIPO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UNIVEN'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDVEN'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PREVEN'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FILCTR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTRCVS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CPTCVS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SEQCVS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODAVC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODFXA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODPGR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDXGRD'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODMAR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODCLC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERDS1'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERDS2'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERDS3'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERDS4'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FILPRD'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRRIS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDPCE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDPCR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERPIT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRBPT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRPIT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERCRT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRBCT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRCRT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERCSL'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRBCL'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRCSL'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PEROUR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRBOR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLROUR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIRF'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRBIR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRIRF'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FILNFC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORNFC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMNFC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SNFNFC'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SEQIPC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NCTLCL'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NRECLI'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOSICL'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOSFCL'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOCCL1'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOCCL2'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOCCL3'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODAGC'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTRCVP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CPTCVP'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SEQCTR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDAPE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSIPD'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SEQISP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMPOCP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRBPF'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERPIF'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRPIF'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRBCF'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERCFF'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRCFF'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERDS5'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDS5'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_TIPCMB'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_CODTEC1'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_CODTEC2'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_QTDREP'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_QTDDIV'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_MEDLAR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_MEDCOM'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_MEDALT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_PERDESC1'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_PERDESC2'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_PERDESC3'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_PERDESC4'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_PERDESC5'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_PERDESC6'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_CANAPR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_TOTDSCORI'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ORIRES'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESDER'
                Width = 64
                Visible = True
              end>
          end
        end
      end
    end
  end
  object DsConsE120Ipd: TDataSource
    AutoEdit = False
    DataSet = Dm2.ConsE120Ipd
    Left = 544
    Top = 82
  end
  object DsConsUsu_T120Ipd: TDataSource
    AutoEdit = False
    DataSet = Dm2.ConsUsu_T120Ipd
    Left = 672
    Top = 98
  end
  object ConsVolPro: TADOQuery
    Connection = Dm.ADOBanco
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
      
        'select codpro,codder,volder,pesbru,pesliq  from e075der where co' +
        'dpro = :codpro and'
      '                            codder = :codder')
    Left = 429
    Top = 24
    object ConsVolProCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsVolProCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsVolProVOLDER: TBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object ConsVolProPESBRU: TBCDField
      FieldName = 'PESBRU'
      Precision = 11
      Size = 5
    end
    object ConsVolProPESLIQ: TBCDField
      FieldName = 'PESLIQ'
      Precision = 11
      Size = 5
    end
  end
  object SapSid: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 600
    Top = 120
  end
  object ConsUsu_T120Ipd: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t120ipd where usu_codemp = 1 and'
      '                                usu_codfil = :codfil and'
      '                                usu_numped = :numped and'
      '                                usu_seqipd = :seqipd')
    Left = 448
    Top = 96
    object ConsUsu_T120IpdUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_T120IpdUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUsu_T120IpdUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsUsu_T120IpdUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsUsu_T120IpdUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object ConsUsu_T120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsUsu_T120IpdUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ConsUsu_T120IpdUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ConsUsu_T120IpdUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ConsUsu_T120IpdUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_T120IpdUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_T120IpdUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object ConsUsu_T120IpdUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_T120IpdUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object ConsUsu_T120IpdUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsUsu_T120IpdUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
  end
  object ConsE001Tns: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codtns'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e001tns where lismod = '#39'VEP'#39' and'
      '                            codtns = :codtns')
    Left = 392
    Top = 80
    object ConsE001TnsCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE001TnsCODTNS: TStringField
      FieldName = 'CODTNS'
      Size = 5
    end
    object ConsE001TnsDESTNS: TStringField
      FieldName = 'DESTNS'
      Size = 40
    end
    object ConsE001TnsDETTNS: TStringField
      FieldName = 'DETTNS'
      Size = 70
    end
    object ConsE001TnsLISMOD: TStringField
      FieldName = 'LISMOD'
      Size = 3
    end
    object ConsE001TnsACEMAN: TStringField
      FieldName = 'ACEMAN'
      Size = 1
    end
    object ConsE001TnsTNSTEL: TStringField
      FieldName = 'TNSTEL'
      Size = 5
    end
    object ConsE001TnsCODFCT: TStringField
      FieldName = 'CODFCT'
      Size = 5
    end
    object ConsE001TnsFORRAT: TIntegerField
      FieldName = 'FORRAT'
    end
    object ConsE001TnsTNSAPJ: TStringField
      FieldName = 'TNSAPJ'
      Size = 1
    end
    object ConsE001TnsCRICTB: TStringField
      FieldName = 'CRICTB'
      Size = 1
    end
    object ConsE001TnsCODNTG: TIntegerField
      FieldName = 'CODNTG'
    end
    object ConsE001TnsCODREG: TIntegerField
      FieldName = 'CODREG'
    end
    object ConsE001TnsCRIRAT: TIntegerField
      FieldName = 'CRIRAT'
    end
    object ConsE001TnsCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConsE001TnsCTARCR: TIntegerField
      FieldName = 'CTARCR'
    end
    object ConsE001TnsCTAFDV: TIntegerField
      FieldName = 'CTAFDV'
    end
    object ConsE001TnsCTAFCR: TIntegerField
      FieldName = 'CTAFCR'
    end
    object ConsE001TnsCOMNOP: TStringField
      FieldName = 'COMNOP'
      Size = 5
    end
    object ConsE001TnsCOMDIR: TStringField
      FieldName = 'COMDIR'
      Size = 1
    end
    object ConsE001TnsCOMOIR: TStringField
      FieldName = 'COMOIR'
      Size = 1
    end
    object ConsE001TnsCOMEIR: TStringField
      FieldName = 'COMEIR'
      Size = 1
    end
    object ConsE001TnsCOMODR: TStringField
      FieldName = 'COMODR'
      Size = 1
    end
    object ConsE001TnsCOMDIN: TStringField
      FieldName = 'COMDIN'
      Size = 1
    end
    object ConsE001TnsCOMOIN: TStringField
      FieldName = 'COMOIN'
      Size = 1
    end
    object ConsE001TnsCOMEIN: TStringField
      FieldName = 'COMEIN'
      Size = 1
    end
    object ConsE001TnsCOMODN: TStringField
      FieldName = 'COMODN'
      Size = 1
    end
    object ConsE001TnsCOMDIS: TStringField
      FieldName = 'COMDIS'
      Size = 1
    end
    object ConsE001TnsCOMOIS: TStringField
      FieldName = 'COMOIS'
      Size = 1
    end
    object ConsE001TnsCOMEIS: TStringField
      FieldName = 'COMEIS'
      Size = 1
    end
    object ConsE001TnsCOMODS: TStringField
      FieldName = 'COMODS'
      Size = 1
    end
    object ConsE001TnsVENUPD: TStringField
      FieldName = 'VENUPD'
      Size = 1
    end
    object ConsE001TnsVENTCF: TStringField
      FieldName = 'VENTCF'
      Size = 1
    end
    object ConsE001TnsVENDEV: TStringField
      FieldName = 'VENDEV'
      Size = 1
    end
    object ConsE001TnsVENFAT: TStringField
      FieldName = 'VENFAT'
      Size = 1
    end
    object ConsE001TnsVENACP: TStringField
      FieldName = 'VENACP'
      Size = 1
    end
    object ConsE001TnsVENICM: TStringField
      FieldName = 'VENICM'
      Size = 1
    end
    object ConsE001TnsVENIBI: TStringField
      FieldName = 'VENIBI'
      Size = 1
    end
    object ConsE001TnsVENFRE: TStringField
      FieldName = 'VENFRE'
      Size = 1
    end
    object ConsE001TnsVENSEG: TStringField
      FieldName = 'VENSEG'
      Size = 1
    end
    object ConsE001TnsVENEMB: TStringField
      FieldName = 'VENEMB'
      Size = 1
    end
    object ConsE001TnsVENENC: TStringField
      FieldName = 'VENENC'
      Size = 1
    end
    object ConsE001TnsVENOUT: TStringField
      FieldName = 'VENOUT'
      Size = 1
    end
    object ConsE001TnsVENDAR: TStringField
      FieldName = 'VENDAR'
      Size = 1
    end
    object ConsE001TnsVENFRD: TStringField
      FieldName = 'VENFRD'
      Size = 1
    end
    object ConsE001TnsVENOUD: TStringField
      FieldName = 'VENOUD'
      Size = 1
    end
    object ConsE001TnsVENENT: TStringField
      FieldName = 'VENENT'
      Size = 1
    end
    object ConsE001TnsVENIPI: TStringField
      FieldName = 'VENIPI'
      Size = 1
    end
    object ConsE001TnsVENFRI: TStringField
      FieldName = 'VENFRI'
      Size = 1
    end
    object ConsE001TnsVENSEI: TStringField
      FieldName = 'VENSEI'
      Size = 1
    end
    object ConsE001TnsVENEMI: TStringField
      FieldName = 'VENEMI'
      Size = 1
    end
    object ConsE001TnsVENENI: TStringField
      FieldName = 'VENENI'
      Size = 1
    end
    object ConsE001TnsVENOUI: TStringField
      FieldName = 'VENOUI'
      Size = 1
    end
    object ConsE001TnsVENDAI: TStringField
      FieldName = 'VENDAI'
      Size = 1
    end
    object ConsE001TnsVENFDI: TStringField
      FieldName = 'VENFDI'
      Size = 1
    end
    object ConsE001TnsVENODI: TStringField
      FieldName = 'VENODI'
      Size = 1
    end
    object ConsE001TnsVENLIR: TBCDField
      FieldName = 'VENLIR'
      Precision = 9
      Size = 2
    end
    object ConsE001TnsVENIRF: TStringField
      FieldName = 'VENIRF'
      Size = 1
    end
    object ConsE001TnsVENIFU: TStringField
      FieldName = 'VENIFU'
      Size = 1
    end
    object ConsE001TnsVENISS: TStringField
      FieldName = 'VENISS'
      Size = 1
    end
    object ConsE001TnsVENDEP: TStringField
      FieldName = 'VENDEP'
      Size = 10
    end
    object ConsE001TnsVENEBP: TIntegerField
      FieldName = 'VENEBP'
    end
    object ConsE001TnsVENMS1: TIntegerField
      FieldName = 'VENMS1'
    end
    object ConsE001TnsVENMS2: TIntegerField
      FieldName = 'VENMS2'
    end
    object ConsE001TnsVENMS3: TIntegerField
      FieldName = 'VENMS3'
    end
    object ConsE001TnsVENMS4: TIntegerField
      FieldName = 'VENMS4'
    end
    object ConsE001TnsVENTPT: TStringField
      FieldName = 'VENTPT'
      Size = 3
    end
    object ConsE001TnsVENMOE: TStringField
      FieldName = 'VENMOE'
      Size = 3
    end
    object ConsE001TnsVENTNF: TStringField
      FieldName = 'VENTNF'
      Size = 1
    end
    object ConsE001TnsVENCTA: TStringField
      FieldName = 'VENCTA'
      Size = 5
    end
    object ConsE001TnsVENFIN: TIntegerField
      FieldName = 'VENFIN'
    end
    object ConsE001TnsVENRED: TIntegerField
      FieldName = 'VENRED'
    end
    object ConsE001TnsVENCCU: TStringField
      FieldName = 'VENCCU'
      Size = 9
    end
    object ConsE001TnsESTEOS: TStringField
      FieldName = 'ESTEOS'
      Size = 1
    end
    object ConsE001TnsESTMOV: TStringField
      FieldName = 'ESTMOV'
      Size = 2
    end
    object ConsE001TnsESTVMV: TStringField
      FieldName = 'ESTVMV'
      Size = 1
    end
    object ConsE001TnsESTCON: TStringField
      FieldName = 'ESTCON'
      Size = 1
    end
    object ConsE001TnsESTCOC: TStringField
      FieldName = 'ESTCOC'
      Size = 1
    end
    object ConsE001TnsESTCOF: TStringField
      FieldName = 'ESTCOF'
      Size = 1
    end
    object ConsE001TnsESTPRU: TStringField
      FieldName = 'ESTPRU'
      Size = 1
    end
    object ConsE001TnsESTPRR: TStringField
      FieldName = 'ESTPRR'
      Size = 1
    end
    object ConsE001TnsESTDEP: TStringField
      FieldName = 'ESTDEP'
      Size = 10
    end
    object ConsE001TnsESTTRF: TStringField
      FieldName = 'ESTTRF'
      Size = 5
    end
    object ConsE001TnsESTCTA: TStringField
      FieldName = 'ESTCTA'
      Size = 5
    end
    object ConsE001TnsESTFIN: TIntegerField
      FieldName = 'ESTFIN'
    end
    object ConsE001TnsESTRED: TIntegerField
      FieldName = 'ESTRED'
    end
    object ConsE001TnsESTCCU: TStringField
      FieldName = 'ESTCCU'
      Size = 9
    end
    object ConsE001TnsESTAPF: TStringField
      FieldName = 'ESTAPF'
      Size = 1
    end
    object ConsE001TnsRECDEC: TStringField
      FieldName = 'RECDEC'
      Size = 1
    end
    object ConsE001TnsRECADC: TStringField
      FieldName = 'RECADC'
      Size = 1
    end
    object ConsE001TnsRECTPB: TStringField
      FieldName = 'RECTPB'
      Size = 2
    end
    object ConsE001TnsRECASH: TStringField
      FieldName = 'RECASH'
      Size = 1
    end
    object ConsE001TnsRECHIS: TStringField
      FieldName = 'RECHIS'
      Size = 1
    end
    object ConsE001TnsRECCTA: TStringField
      FieldName = 'RECCTA'
      Size = 5
    end
    object ConsE001TnsRECFIN: TIntegerField
      FieldName = 'RECFIN'
    end
    object ConsE001TnsRECRED: TIntegerField
      FieldName = 'RECRED'
    end
    object ConsE001TnsRECCCU: TStringField
      FieldName = 'RECCCU'
      Size = 9
    end
    object ConsE001TnsCPRUOC: TStringField
      FieldName = 'CPRUOC'
      Size = 1
    end
    object ConsE001TnsCPRHEN: TStringField
      FieldName = 'CPRHEN'
      Size = 1
    end
    object ConsE001TnsCPRTCF: TStringField
      FieldName = 'CPRTCF'
      Size = 1
    end
    object ConsE001TnsCPRDEV: TStringField
      FieldName = 'CPRDEV'
      Size = 1
    end
    object ConsE001TnsCPRAOC: TStringField
      FieldName = 'CPRAOC'
      Size = 1
    end
    object ConsE001TnsCPRLIR: TBCDField
      FieldName = 'CPRLIR'
      Precision = 9
      Size = 2
    end
    object ConsE001TnsCPRIRF: TStringField
      FieldName = 'CPRIRF'
      Size = 1
    end
    object ConsE001TnsCPRIFU: TStringField
      FieldName = 'CPRIFU'
      Size = 1
    end
    object ConsE001TnsCPRISS: TStringField
      FieldName = 'CPRISS'
      Size = 1
    end
    object ConsE001TnsCPRDEP: TStringField
      FieldName = 'CPRDEP'
      Size = 10
    end
    object ConsE001TnsCPRMS1: TIntegerField
      FieldName = 'CPRMS1'
    end
    object ConsE001TnsCPRMS2: TIntegerField
      FieldName = 'CPRMS2'
    end
    object ConsE001TnsCPRMS3: TIntegerField
      FieldName = 'CPRMS3'
    end
    object ConsE001TnsCPRMS4: TIntegerField
      FieldName = 'CPRMS4'
    end
    object ConsE001TnsCPRTPT: TStringField
      FieldName = 'CPRTPT'
      Size = 3
    end
    object ConsE001TnsCPRMOE: TStringField
      FieldName = 'CPRMOE'
      Size = 3
    end
    object ConsE001TnsCPRIBI: TStringField
      FieldName = 'CPRIBI'
      Size = 1
    end
    object ConsE001TnsCPRFRE: TStringField
      FieldName = 'CPRFRE'
      Size = 1
    end
    object ConsE001TnsCPRSEG: TStringField
      FieldName = 'CPRSEG'
      Size = 1
    end
    object ConsE001TnsCPREMB: TStringField
      FieldName = 'CPREMB'
      Size = 1
    end
    object ConsE001TnsCPRENC: TStringField
      FieldName = 'CPRENC'
      Size = 1
    end
    object ConsE001TnsCPROUT: TStringField
      FieldName = 'CPROUT'
      Size = 1
    end
    object ConsE001TnsCPRDAR: TStringField
      FieldName = 'CPRDAR'
      Size = 1
    end
    object ConsE001TnsCPRFRD: TStringField
      FieldName = 'CPRFRD'
      Size = 1
    end
    object ConsE001TnsCPROUD: TStringField
      FieldName = 'CPROUD'
      Size = 1
    end
    object ConsE001TnsCPRRIC: TStringField
      FieldName = 'CPRRIC'
      Size = 1
    end
    object ConsE001TnsCPRCDA: TStringField
      FieldName = 'CPRCDA'
      Size = 1
    end
    object ConsE001TnsCPRENT: TStringField
      FieldName = 'CPRENT'
      Size = 1
    end
    object ConsE001TnsCPRFRI: TStringField
      FieldName = 'CPRFRI'
      Size = 1
    end
    object ConsE001TnsCPRSEI: TStringField
      FieldName = 'CPRSEI'
      Size = 1
    end
    object ConsE001TnsCPREMI: TStringField
      FieldName = 'CPREMI'
      Size = 1
    end
    object ConsE001TnsCPRENI: TStringField
      FieldName = 'CPRENI'
      Size = 1
    end
    object ConsE001TnsCPROUI: TStringField
      FieldName = 'CPROUI'
      Size = 1
    end
    object ConsE001TnsCPRDAI: TStringField
      FieldName = 'CPRDAI'
      Size = 1
    end
    object ConsE001TnsCPRFDI: TStringField
      FieldName = 'CPRFDI'
      Size = 1
    end
    object ConsE001TnsCPRODI: TStringField
      FieldName = 'CPRODI'
      Size = 1
    end
    object ConsE001TnsCPRRIP: TStringField
      FieldName = 'CPRRIP'
      Size = 1
    end
    object ConsE001TnsCPRTNF: TStringField
      FieldName = 'CPRTNF'
      Size = 1
    end
    object ConsE001TnsCPRCTA: TStringField
      FieldName = 'CPRCTA'
      Size = 5
    end
    object ConsE001TnsCPRFIN: TIntegerField
      FieldName = 'CPRFIN'
    end
    object ConsE001TnsCPRRED: TIntegerField
      FieldName = 'CPRRED'
    end
    object ConsE001TnsCPRCCU: TStringField
      FieldName = 'CPRCCU'
      Size = 9
    end
    object ConsE001TnsPAGDEC: TStringField
      FieldName = 'PAGDEC'
      Size = 1
    end
    object ConsE001TnsPAGADF: TStringField
      FieldName = 'PAGADF'
      Size = 1
    end
    object ConsE001TnsPAGTPB: TStringField
      FieldName = 'PAGTPB'
      Size = 2
    end
    object ConsE001TnsPAGASH: TStringField
      FieldName = 'PAGASH'
      Size = 1
    end
    object ConsE001TnsPAGHIS: TStringField
      FieldName = 'PAGHIS'
      Size = 1
    end
    object ConsE001TnsPAGVBC: TStringField
      FieldName = 'PAGVBC'
      Size = 1
    end
    object ConsE001TnsPAGTIR: TStringField
      FieldName = 'PAGTIR'
      Size = 1
    end
    object ConsE001TnsPAGCTA: TStringField
      FieldName = 'PAGCTA'
      Size = 5
    end
    object ConsE001TnsPAGFIN: TIntegerField
      FieldName = 'PAGFIN'
    end
    object ConsE001TnsPAGRED: TIntegerField
      FieldName = 'PAGRED'
    end
    object ConsE001TnsPAGCCU: TStringField
      FieldName = 'PAGCCU'
      Size = 9
    end
    object ConsE001TnsPAGTCO: TStringField
      FieldName = 'PAGTCO'
      Size = 1
    end
    object ConsE001TnsPAGGIR: TStringField
      FieldName = 'PAGGIR'
      Size = 1
    end
    object ConsE001TnsPAGITR: TStringField
      FieldName = 'PAGITR'
      Size = 1
    end
    object ConsE001TnsPAGVBS: TStringField
      FieldName = 'PAGVBS'
      Size = 1
    end
    object ConsE001TnsPAGDCC: TStringField
      FieldName = 'PAGDCC'
      Size = 1
    end
    object ConsE001TnsPAGTIS: TStringField
      FieldName = 'PAGTIS'
      Size = 1
    end
    object ConsE001TnsCXBDEC: TStringField
      FieldName = 'CXBDEC'
      Size = 1
    end
    object ConsE001TnsCXBTRF: TStringField
      FieldName = 'CXBTRF'
      Size = 5
    end
    object ConsE001TnsCXBCHE: TStringField
      FieldName = 'CXBCHE'
      Size = 1
    end
    object ConsE001TnsCXBCTA: TStringField
      FieldName = 'CXBCTA'
      Size = 5
    end
    object ConsE001TnsCXBFIN: TIntegerField
      FieldName = 'CXBFIN'
    end
    object ConsE001TnsCXBFDC: TIntegerField
      FieldName = 'CXBFDC'
    end
    object ConsE001TnsCXBRED: TIntegerField
      FieldName = 'CXBRED'
    end
    object ConsE001TnsCXBRDC: TIntegerField
      FieldName = 'CXBRDC'
    end
    object ConsE001TnsCXBCCU: TStringField
      FieldName = 'CXBCCU'
      Size = 9
    end
    object ConsE001TnsCXBCDC: TStringField
      FieldName = 'CXBCDC'
      Size = 9
    end
    object ConsE001TnsCXBTMF: TStringField
      FieldName = 'CXBTMF'
      Size = 1
    end
    object ConsE001TnsPRJCTA: TStringField
      FieldName = 'PRJCTA'
      Size = 5
    end
    object ConsE001TnsPRJFIN: TIntegerField
      FieldName = 'PRJFIN'
    end
    object ConsE001TnsPRJFDC: TIntegerField
      FieldName = 'PRJFDC'
    end
    object ConsE001TnsPRJCCU: TStringField
      FieldName = 'PRJCCU'
      Size = 9
    end
    object ConsE001TnsPRJCDC: TStringField
      FieldName = 'PRJCDC'
      Size = 9
    end
    object ConsE001TnsPRJDEC: TStringField
      FieldName = 'PRJDEC'
      Size = 1
    end
    object ConsE001TnsPATMOV: TIntegerField
      FieldName = 'PATMOV'
    end
    object ConsE001TnsPATTRF: TStringField
      FieldName = 'PATTRF'
      Size = 1
    end
    object ConsE001TnsPATDED: TStringField
      FieldName = 'PATDED'
      Size = 1
    end
    object ConsE001TnsPATBAI: TStringField
      FieldName = 'PATBAI'
      Size = 1
    end
    object ConsE001TnsPATCAL: TStringField
      FieldName = 'PATCAL'
      Size = 1
    end
    object ConsE001TnsPATRCA: TIntegerField
      FieldName = 'PATRCA'
    end
    object ConsE001TnsPATDAT: TStringField
      FieldName = 'PATDAT'
      Size = 1
    end
    object ConsE001TnsPATACR: TStringField
      FieldName = 'PATACR'
      Size = 1
    end
    object ConsE001TnsPATTPD: TStringField
      FieldName = 'PATTPD'
      Size = 1
    end
    object ConsE001TnsPATMOT: TIntegerField
      FieldName = 'PATMOT'
    end
    object ConsE001TnsSITTNS: TStringField
      FieldName = 'SITTNS'
      Size = 1
    end
    object ConsE001TnsUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE001TnsDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE001TnsHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE001TnsCOMIIR: TStringField
      FieldName = 'COMIIR'
      Size = 1
    end
    object ConsE001TnsCPRTIR: TStringField
      FieldName = 'CPRTIR'
      Size = 1
    end
    object ConsE001TnsCPRTIN: TStringField
      FieldName = 'CPRTIN'
      Size = 1
    end
    object ConsE001TnsCOMLIN: TBCDField
      FieldName = 'COMLIN'
      Precision = 9
      Size = 2
    end
    object ConsE001TnsFVETNS: TStringField
      FieldName = 'FVETNS'
      Size = 10
    end
    object ConsE001TnsFVEDEC: TStringField
      FieldName = 'FVEDEC'
      Size = 1
    end
    object ConsE001TnsVENLGT: TStringField
      FieldName = 'VENLGT'
      Size = 1
    end
    object ConsE001TnsCPRTIS: TStringField
      FieldName = 'CPRTIS'
      Size = 1
    end
    object ConsE001TnsVENTIP: TStringField
      FieldName = 'VENTIP'
      Size = 1
    end
    object ConsE001TnsCOMING: TStringField
      FieldName = 'COMING'
      Size = 1
    end
    object ConsE001TnsCPRRPI: TStringField
      FieldName = 'CPRRPI'
      Size = 1
    end
    object ConsE001TnsCPRIBP: TStringField
      FieldName = 'CPRIBP'
      Size = 1
    end
    object ConsE001TnsCPRFRP: TStringField
      FieldName = 'CPRFRP'
      Size = 1
    end
    object ConsE001TnsCPRSEP: TStringField
      FieldName = 'CPRSEP'
      Size = 1
    end
    object ConsE001TnsCPREMP: TStringField
      FieldName = 'CPREMP'
      Size = 1
    end
    object ConsE001TnsCPRENP: TStringField
      FieldName = 'CPRENP'
      Size = 1
    end
    object ConsE001TnsCPROUP: TStringField
      FieldName = 'CPROUP'
      Size = 1
    end
    object ConsE001TnsCPRDAP: TStringField
      FieldName = 'CPRDAP'
      Size = 1
    end
    object ConsE001TnsCPRFDP: TStringField
      FieldName = 'CPRFDP'
      Size = 1
    end
    object ConsE001TnsCPRODP: TStringField
      FieldName = 'CPRODP'
      Size = 1
    end
    object ConsE001TnsCOMNAT: TStringField
      FieldName = 'COMNAT'
      Size = 5
    end
    object ConsE001TnsINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsE001TnsDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsE001TnsHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsE001TnsCOMSTR: TStringField
      FieldName = 'COMSTR'
      Size = 3
    end
    object ConsE001TnsCOMTIC: TStringField
      FieldName = 'COMTIC'
      Size = 3
    end
    object ConsE001TnsCOMTRD: TStringField
      FieldName = 'COMTRD'
      Size = 3
    end
    object ConsE001TnsCOMTST: TStringField
      FieldName = 'COMTST'
      Size = 3
    end
    object ConsE001TnsCPRTIE: TStringField
      FieldName = 'CPRTIE'
      Size = 1
    end
    object ConsE001TnsCOMSIP: TIntegerField
      FieldName = 'COMSIP'
    end
    object ConsE001TnsESTCQM: TStringField
      FieldName = 'ESTCQM'
      Size = 1
    end
    object ConsE001TnsCOMCIM: TStringField
      FieldName = 'COMCIM'
      Size = 1
    end
    object ConsE001TnsCOMSSG: TStringField
      FieldName = 'COMSSG'
      Size = 1
    end
    object ConsE001TnsCPRCVE: TStringField
      FieldName = 'CPRCVE'
      Size = 1
    end
    object ConsE001TnsVENECO: TStringField
      FieldName = 'VENECO'
      Size = 1
    end
    object ConsE001TnsVENOUC: TStringField
      FieldName = 'VENOUC'
      Size = 1
    end
    object ConsE001TnsVENDAC: TStringField
      FieldName = 'VENDAC'
      Size = 1
    end
    object ConsE001TnsVENODC: TStringField
      FieldName = 'VENODC'
      Size = 1
    end
    object ConsE001TnsVENLCO: TBCDField
      FieldName = 'VENLCO'
      Precision = 9
      Size = 2
    end
    object ConsE001TnsVENCOF: TStringField
      FieldName = 'VENCOF'
      Size = 1
    end
    object ConsE001TnsVENENP: TStringField
      FieldName = 'VENENP'
      Size = 1
    end
    object ConsE001TnsVENOUP: TStringField
      FieldName = 'VENOUP'
      Size = 1
    end
    object ConsE001TnsVENDAP: TStringField
      FieldName = 'VENDAP'
      Size = 1
    end
    object ConsE001TnsVENODP: TStringField
      FieldName = 'VENODP'
      Size = 1
    end
    object ConsE001TnsVENLPI: TBCDField
      FieldName = 'VENLPI'
      Precision = 9
      Size = 2
    end
    object ConsE001TnsVENPIS: TStringField
      FieldName = 'VENPIS'
      Size = 1
    end
    object ConsE001TnsVENENL: TStringField
      FieldName = 'VENENL'
      Size = 1
    end
    object ConsE001TnsVENOUL: TStringField
      FieldName = 'VENOUL'
      Size = 1
    end
    object ConsE001TnsVENDAL: TStringField
      FieldName = 'VENDAL'
      Size = 1
    end
    object ConsE001TnsVENODL: TStringField
      FieldName = 'VENODL'
      Size = 1
    end
    object ConsE001TnsVENLCL: TBCDField
      FieldName = 'VENLCL'
      Precision = 9
      Size = 2
    end
    object ConsE001TnsVENCSL: TStringField
      FieldName = 'VENCSL'
      Size = 1
    end
    object ConsE001TnsVENENO: TStringField
      FieldName = 'VENENO'
      Size = 1
    end
    object ConsE001TnsVENOUO: TStringField
      FieldName = 'VENOUO'
      Size = 1
    end
    object ConsE001TnsVENDAO: TStringField
      FieldName = 'VENDAO'
      Size = 1
    end
    object ConsE001TnsVENODO: TStringField
      FieldName = 'VENODO'
      Size = 1
    end
    object ConsE001TnsVENLOR: TBCDField
      FieldName = 'VENLOR'
      Precision = 9
      Size = 2
    end
    object ConsE001TnsVENOUR: TStringField
      FieldName = 'VENOUR'
      Size = 1
    end
    object ConsE001TnsTNSCIP: TStringField
      FieldName = 'TNSCIP'
      Size = 1
    end
    object ConsE001TnsESTCAM: TStringField
      FieldName = 'ESTCAM'
      Size = 1
    end
    object ConsE001TnsESTWMS: TStringField
      FieldName = 'ESTWMS'
      Size = 1
    end
    object ConsE001TnsESTESV: TStringField
      FieldName = 'ESTESV'
      Size = 1
    end
    object ConsE001TnsSOMSUB: TIntegerField
      FieldName = 'SOMSUB'
    end
  end
  object ConsE028Cpg: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codcpg'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e028cpg where codcpg = :codcpg')
    Left = 376
    Top = 24
    object ConsE028CpgCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE028CpgCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ConsE028CpgDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
    object ConsE028CpgABRCPG: TStringField
      FieldName = 'ABRCPG'
      Size = 10
    end
    object ConsE028CpgAPLCPG: TStringField
      FieldName = 'APLCPG'
      Size = 1
    end
    object ConsE028CpgPGTANT: TStringField
      FieldName = 'PGTANT'
      Size = 1
    end
    object ConsE028CpgDIAESP: TStringField
      FieldName = 'DIAESP'
      Size = 1
    end
    object ConsE028CpgDIAME1: TIntegerField
      FieldName = 'DIAME1'
    end
    object ConsE028CpgDIAME2: TIntegerField
      FieldName = 'DIAME2'
    end
    object ConsE028CpgDIAME3: TIntegerField
      FieldName = 'DIAME3'
    end
    object ConsE028CpgDIASEM: TStringField
      FieldName = 'DIASEM'
      Size = 7
    end
    object ConsE028CpgDIAMES: TStringField
      FieldName = 'DIAMES'
      Size = 31
    end
    object ConsE028CpgPRZMED: TIntegerField
      FieldName = 'PRZMED'
    end
    object ConsE028CpgQTDPAR: TIntegerField
      FieldName = 'QTDPAR'
    end
    object ConsE028CpgIPIPAR: TStringField
      FieldName = 'IPIPAR'
      Size = 1
    end
    object ConsE028CpgICMPAR: TStringField
      FieldName = 'ICMPAR'
      Size = 1
    end
    object ConsE028CpgSUBPAR: TStringField
      FieldName = 'SUBPAR'
      Size = 1
    end
    object ConsE028CpgFREPAR: TStringField
      FieldName = 'FREPAR'
      Size = 1
    end
    object ConsE028CpgSEGPAR: TStringField
      FieldName = 'SEGPAR'
      Size = 1
    end
    object ConsE028CpgENCPAR: TStringField
      FieldName = 'ENCPAR'
      Size = 1
    end
    object ConsE028CpgEMBPAR: TStringField
      FieldName = 'EMBPAR'
      Size = 1
    end
    object ConsE028CpgOUTPAR: TStringField
      FieldName = 'OUTPAR'
      Size = 1
    end
    object ConsE028CpgDARPAR: TStringField
      FieldName = 'DARPAR'
      Size = 1
    end
    object ConsE028CpgACRFIN: TBCDField
      FieldName = 'ACRFIN'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgVENDSC: TBCDField
      FieldName = 'VENDSC'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgCPRDSC: TBCDField
      FieldName = 'CPRDSC'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgREDCOM: TBCDField
      FieldName = 'REDCOM'
      Precision = 5
      Size = 2
    end
    object ConsE028CpgTIPPAR: TIntegerField
      FieldName = 'TIPPAR'
    end
    object ConsE028CpgSITCPG: TStringField
      FieldName = 'SITCPG'
      Size = 1
    end
    object ConsE028CpgCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE028CpgFVECPG: TStringField
      FieldName = 'FVECPG'
      Size = 10
    end
    object ConsE028CpgFVEDEC: TStringField
      FieldName = 'FVEDEC'
      Size = 1
    end
    object ConsE028CpgINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsE028CpgDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsE028CpgHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsE028CpgTIPINT: TIntegerField
      FieldName = 'TIPINT'
    end
    object ConsE028CpgCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object ConsE028CpgISSPAR: TStringField
      FieldName = 'ISSPAR'
      Size = 1
    end
    object ConsE028CpgDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE028CpgHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE028CpgUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE028CpgDATATU: TDateTimeField
      FieldName = 'DATATU'
    end
    object ConsE028CpgHORATU: TIntegerField
      FieldName = 'HORATU'
    end
    object ConsE028CpgUSUATU: TBCDField
      FieldName = 'USUATU'
      Precision = 10
      Size = 0
    end
    object ConsE028CpgPERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
  end
  object CadUsu_T121Ipd: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t121ipd where usu_codfil = :codfil and'
      '                                usu_numped = :numped and'
      '                                usu_seqipd = :seqipd and'
      '                                usu_itecon = '#39'N'#39)
    Left = 448
    Top = 248
    object CadUsu_T121IpdUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadUsu_T121IpdUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object CadUsu_T121IpdUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object CadUsu_T121IpdUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_T121IpdUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu_T121IpdUSU_QTDPED: TBCDField
      FieldName = 'USU_QTDPED'
      Precision = 11
      Size = 2
    end
    object CadUsu_T121IpdUSU_QTDABE: TBCDField
      FieldName = 'USU_QTDABE'
      Precision = 11
      Size = 2
    end
    object CadUsu_T121IpdUSU_ITEMOD: TStringField
      FieldName = 'USU_ITEMOD'
      Size = 1
    end
    object CadUsu_T121IpdUSU_ITECON: TStringField
      FieldName = 'USU_ITECON'
      Size = 1
    end
    object CadUsu_T121IpdUSU_SEQALT: TIntegerField
      FieldName = 'USU_SEQALT'
    end
  end
  object SeqAltT121Ipd: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usu_t121ipd order by usu_seqalt desc')
    Left = 448
    Top = 296
    object SeqAltT121IpdUSU_SEQALT: TIntegerField
      FieldName = 'USU_SEQALT'
    end
  end
  object CadUsu_T121Cpp: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqite'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqalt'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t121cpp where usu_codfil = :codfil and'
      '                                usu_numped = :numped and'
      '                                usu_seqipd = :seqipd and'
      '                                usu_seqite = :seqite and'
      '                                usu_seqalt = :seqalt')
    Left = 448
    Top = 344
    object CadUsu_T121CppUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadUsu_T121CppUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object CadUsu_T121CppUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object CadUsu_T121CppUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object CadUsu_T121CppUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_T121CppUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu_T121CppUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object CadUsu_T121CppUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object CadUsu_T121CppUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object CadUsu_T121CppUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object CadUsu_T121CppUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object CadUsu_T121CppUSU_ITEMOD: TStringField
      FieldName = 'USU_ITEMOD'
      Size = 1
    end
    object CadUsu_T121CppUSU_ITECON: TStringField
      FieldName = 'USU_ITECON'
      Size = 1
    end
    object CadUsu_T121CppUSU_SEQALT: TIntegerField
      FieldName = 'USU_SEQALT'
    end
  end
  object ConsUsu_T121Ipd: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t121ipd where'
      '                              usu_codfil = :codfil and'
      '                              usu_numped = :numped and'
      '                              usu_itecon = '#39'N'#39
      '                             ')
    Left = 448
    Top = 400
    object ConsUsu_T121IpdUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUsu_T121IpdUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsUsu_T121IpdUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsUsu_T121IpdUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_T121IpdUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_T121IpdUSU_QTDPED: TBCDField
      FieldName = 'USU_QTDPED'
      Precision = 11
      Size = 2
    end
    object ConsUsu_T121IpdUSU_QTDABE: TBCDField
      FieldName = 'USU_QTDABE'
      Precision = 11
      Size = 2
    end
    object ConsUsu_T121IpdUSU_ITEMOD: TStringField
      FieldName = 'USU_ITEMOD'
      Size = 1
    end
    object ConsUsu_T121IpdUSU_ITECON: TStringField
      FieldName = 'USU_ITECON'
      Size = 1
    end
    object ConsUsu_T121IpdUSU_SEQALT: TIntegerField
      FieldName = 'USU_SEQALT'
    end
  end
  object ConsE120Ipd: TADOQuery
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
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e120ipd where codemp = :codemp and'
      '                            codfil = :codfil and'
      '                            numped = :numped and'
      '                            seqipd = :seqipd')
    Left = 688
    Top = 248
    object ConsE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsE120IpdTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE120IpdPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object ConsE120IpdSEQPCL: TStringField
      FieldName = 'SEQPCL'
      Size = 10
    end
    object ConsE120IpdPEDPRV: TStringField
      FieldName = 'PEDPRV'
      Size = 1
    end
    object ConsE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE120IpdCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object ConsE120IpdCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE120IpdCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ConsE120IpdCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ConsE120IpdCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ConsE120IpdCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ConsE120IpdCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ConsE120IpdCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ConsE120IpdCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE120IpdCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object ConsE120IpdRESEST: TStringField
      FieldName = 'RESEST'
      Size = 1
    end
    object ConsE120IpdQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDAEN: TFMTBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDPOC: TFMTBCDField
      FieldName = 'QTDPOC'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDRAE: TFMTBCDField
      FieldName = 'QTDRAE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDNLP: TFMTBCDField
      FieldName = 'QTDNLP'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDRES: TFMTBCDField
      FieldName = 'QTDRES'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE120IpdCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object ConsE120IpdDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object ConsE120IpdCOTMFP: TFMTBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object ConsE120IpdDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ConsE120IpdCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ConsE120IpdFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ConsE120IpdCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE120IpdPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ConsE120IpdPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object ConsE120IpdPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPEROFE: TBCDField
      FieldName = 'PEROFE'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERACR: TBCDField
      FieldName = 'PERACR'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ConsE120IpdDATANE: TDateTimeField
      FieldName = 'DATANE'
    end
    object ConsE120IpdDATPOC: TDateTimeField
      FieldName = 'DATPOC'
    end
    object ConsE120IpdCODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object ConsE120IpdNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object ConsE120IpdCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object ConsE120IpdCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ConsE120IpdCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConsE120IpdCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ConsE120IpdVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdSITIPD: TIntegerField
      FieldName = 'SITIPD'
    end
    object ConsE120IpdCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE120IpdOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsE120IpdGERNEC: TIntegerField
      FieldName = 'GERNEC'
    end
    object ConsE120IpdGERCGA: TStringField
      FieldName = 'GERCGA'
      Size = 1
    end
    object ConsE120IpdRESMAN: TStringField
      FieldName = 'RESMAN'
      Size = 1
    end
    object ConsE120IpdINDAED: TStringField
      FieldName = 'INDAED'
      Size = 1
    end
    object ConsE120IpdNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object ConsE120IpdDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object ConsE120IpdSEQCVP: TIntegerField
      FieldName = 'SEQCVP'
    end
    object ConsE120IpdUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE120IpdHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE120IpdQTDPPF: TFMTBCDField
      FieldName = 'QTDPPF'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdCMPKIT: TStringField
      FieldName = 'CMPKIT'
      Size = 1
    end
    object ConsE120IpdFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object ConsE120IpdNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsE120IpdSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object ConsE120IpdUNIVEN: TStringField
      FieldName = 'UNIVEN'
      Size = 3
    end
    object ConsE120IpdQTDVEN: TFMTBCDField
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdPREVEN: TFMTBCDField
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdPREBRU: TFMTBCDField
      FieldName = 'PREBRU'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object ConsE120IpdCTRCVS: TIntegerField
      FieldName = 'CTRCVS'
    end
    object ConsE120IpdCPTCVS: TDateTimeField
      FieldName = 'CPTCVS'
    end
    object ConsE120IpdSEQCVS: TIntegerField
      FieldName = 'SEQCVS'
    end
    object ConsE120IpdCODAVC: TIntegerField
      FieldName = 'CODAVC'
    end
    object ConsE120IpdCODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object ConsE120IpdCODPGR: TStringField
      FieldName = 'CODPGR'
      Size = 5
    end
    object ConsE120IpdIDXGRD: TIntegerField
      FieldName = 'IDXGRD'
    end
    object ConsE120IpdCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ConsE120IpdCODCLC: TStringField
      FieldName = 'CODCLC'
      Size = 10
    end
    object ConsE120IpdPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdFILPRD: TIntegerField
      FieldName = 'FILPRD'
    end
    object ConsE120IpdVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ConsE120IpdINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ConsE120IpdPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object ConsE120IpdFORNFC: TIntegerField
      FieldName = 'FORNFC'
    end
    object ConsE120IpdNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsE120IpdSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object ConsE120IpdSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ConsE120IpdNCTLCL: TStringField
      FieldName = 'NCTLCL'
    end
    object ConsE120IpdNRECLI: TStringField
      FieldName = 'NRECLI'
    end
    object ConsE120IpdNOSICL: TBCDField
      FieldName = 'NOSICL'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdNOSFCL: TBCDField
      FieldName = 'NOSFCL'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdNOCCL1: TStringField
      FieldName = 'NOCCL1'
    end
    object ConsE120IpdNOCCL2: TStringField
      FieldName = 'NOCCL2'
    end
    object ConsE120IpdNOCCL3: TStringField
      FieldName = 'NOCCL3'
    end
    object ConsE120IpdCODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
    object ConsE120IpdCTRCVP: TIntegerField
      FieldName = 'CTRCVP'
    end
    object ConsE120IpdCPTCVP: TDateTimeField
      FieldName = 'CPTCVP'
    end
    object ConsE120IpdSEQCTR: TIntegerField
      FieldName = 'SEQCTR'
    end
    object ConsE120IpdINDAPE: TIntegerField
      FieldName = 'INDAPE'
    end
    object ConsE120IpdOBSIPD: TStringField
      FieldName = 'OBSIPD'
      Size = 999
    end
    object ConsE120IpdSEQISP: TIntegerField
      FieldName = 'SEQISP'
    end
    object ConsE120IpdEMPOCP: TIntegerField
      FieldName = 'EMPOCP'
    end
    object ConsE120IpdVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAGRNEC: TStringField
      FieldName = 'AGRNEC'
      Size = 25
    end
    object ConsE120IpdAGRPAI: TStringField
      FieldName = 'AGRPAI'
      Size = 25
    end
    object ConsE120IpdORIRES: TStringField
      FieldName = 'ORIRES'
      Size = 1
    end
    object ConsE120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsE120IpdUSU_CODTEC1: TStringField
      FieldName = 'USU_CODTEC1'
      Size = 14
    end
    object ConsE120IpdUSU_CODTEC2: TStringField
      FieldName = 'USU_CODTEC2'
      Size = 14
    end
    object ConsE120IpdUSU_QTDREP: TIntegerField
      FieldName = 'USU_QTDREP'
    end
    object ConsE120IpdUSU_QTDDIV: TBCDField
      FieldName = 'USU_QTDDIV'
      Precision = 11
      Size = 2
    end
    object ConsE120IpdUSU_MEDLAR: TBCDField
      FieldName = 'USU_MEDLAR'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_MEDCOM: TBCDField
      FieldName = 'USU_MEDCOM'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_MEDALT: TBCDField
      FieldName = 'USU_MEDALT'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC1: TBCDField
      FieldName = 'USU_PERDESC1'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC2: TBCDField
      FieldName = 'USU_PERDESC2'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC3: TBCDField
      FieldName = 'USU_PERDESC3'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC4: TBCDField
      FieldName = 'USU_PERDESC4'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC5: TBCDField
      FieldName = 'USU_PERDESC5'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC6: TBCDField
      FieldName = 'USU_PERDESC6'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_CANAPR: TFMTBCDField
      FieldName = 'USU_CANAPR'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdUSU_TOTDSC: TBCDField
      FieldName = 'USU_TOTDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_TOTDSCORI: TBCDField
      FieldName = 'USU_TOTDSCORI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_VLRORI: TBCDField
      FieldName = 'USU_VLRORI'
      Precision = 14
      Size = 2
    end
  end
  object CadUsuT121Ipd: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqalt'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t121ipd where usu_codfil = :codfil and'
      '                                usu_numped = :numped and'
      '                                usu_seqipd = :seqipd and'
      '                                usu_seqalt = :seqalt')
    Left = 568
    Top = 248
    object CadUsuT121IpdUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadUsuT121IpdUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object CadUsuT121IpdUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object CadUsuT121IpdUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsuT121IpdUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsuT121IpdUSU_QTDPED: TBCDField
      FieldName = 'USU_QTDPED'
      Precision = 11
      Size = 2
    end
    object CadUsuT121IpdUSU_QTDABE: TBCDField
      FieldName = 'USU_QTDABE'
      Precision = 11
      Size = 2
    end
    object CadUsuT121IpdUSU_ITEMOD: TStringField
      FieldName = 'USU_ITEMOD'
      Size = 1
    end
    object CadUsuT121IpdUSU_ITECON: TStringField
      FieldName = 'USU_ITECON'
      Size = 1
    end
    object CadUsuT121IpdUSU_SEQALT: TIntegerField
      FieldName = 'USU_SEQALT'
    end
  end
  object ConsUsu_T121Cpp: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqalt'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t121cpp where usu_codfil = :codfil and'
      '                                usu_numped = :numped and'
      '                                usu_seqipd = :seqipd and'
      '                                usu_seqalt = :seqalt')
    Left = 687
    Top = 296
    object ConsUsu_T121CppUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUsu_T121CppUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsUsu_T121CppUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsUsu_T121CppUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ConsUsu_T121CppUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_T121CppUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_T121CppUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object ConsUsu_T121CppUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_T121CppUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ConsUsu_T121CppUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ConsUsu_T121CppUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsUsu_T121CppUSU_ITEMOD: TStringField
      FieldName = 'USU_ITEMOD'
      Size = 1
    end
    object ConsUsu_T121CppUSU_ITECON: TStringField
      FieldName = 'USU_ITECON'
      Size = 1
    end
    object ConsUsu_T121CppUSU_SEQALT: TIntegerField
      FieldName = 'USU_SEQALT'
    end
  end
  object ConsUsu_T120IpdIten: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqite'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t120ipd where usu_codemp = 1 and'
      '                                usu_codfil = :codfil and'
      '                                usu_numped = :numped and'
      '                                usu_seqipd = :seqipd and'
      '                                usu_seqite = :seqite')
    Left = 688
    Top = 344
    object ConsUsu_T120IpdItenUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_T120IpdItenUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUsu_T120IpdItenUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsUsu_T120IpdItenUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsUsu_T120IpdItenUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object ConsUsu_T120IpdItenUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsUsu_T120IpdItenUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ConsUsu_T120IpdItenUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ConsUsu_T120IpdItenUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ConsUsu_T120IpdItenUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_T120IpdItenUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_T120IpdItenUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object ConsUsu_T120IpdItenUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_T120IpdItenUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object ConsUsu_T120IpdItenUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsUsu_T120IpdItenUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
  end
  object Conse075Der: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
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
      'select * from e075der where codpro = :codpro and'
      '                            codder = :codder')
    Left = 832
    Top = 360
    object Conse075DerCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object Conse075DerCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object Conse075DerCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object Conse075DerDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
    object Conse075DerDESCPL: TStringField
      FieldName = 'DESCPL'
      Size = 90
    end
    object Conse075DerCODBAR: TBCDField
      FieldName = 'CODBAR'
      Precision = 13
      Size = 0
    end
    object Conse075DerCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object Conse075DerCODAGT: TStringField
      FieldName = 'CODAGT'
      Size = 5
    end
    object Conse075DerSEQCMD: TIntegerField
      FieldName = 'SEQCMD'
    end
    object Conse075DerDATVAL: TDateTimeField
      FieldName = 'DATVAL'
    end
    object Conse075DerDIAVLT: TIntegerField
      FieldName = 'DIAVLT'
    end
    object Conse075DerTIPCN2: TStringField
      FieldName = 'TIPCN2'
      Size = 1
    end
    object Conse075DerVLRCN2: TFMTBCDField
      FieldName = 'VLRCN2'
      Precision = 13
      Size = 6
    end
    object Conse075DerTIPCN3: TStringField
      FieldName = 'TIPCN3'
      Size = 1
    end
    object Conse075DerVLRCN3: TFMTBCDField
      FieldName = 'VLRCN3'
      Precision = 13
      Size = 6
    end
    object Conse075DerPRECUS: TFMTBCDField
      FieldName = 'PRECUS'
      Precision = 15
      Size = 6
    end
    object Conse075DerDATCUS: TDateTimeField
      FieldName = 'DATCUS'
    end
    object Conse075DerPREMED: TFMTBCDField
      FieldName = 'PREMED'
      Precision = 15
      Size = 6
    end
    object Conse075DerDATMED: TDateTimeField
      FieldName = 'DATMED'
    end
    object Conse075DerPREUEN: TFMTBCDField
      FieldName = 'PREUEN'
      Precision = 15
      Size = 6
    end
    object Conse075DerDATUEN: TDateTimeField
      FieldName = 'DATUEN'
    end
    object Conse075DerPREREP: TFMTBCDField
      FieldName = 'PREREP'
      Precision = 15
      Size = 6
    end
    object Conse075DerDATREP: TDateTimeField
      FieldName = 'DATREP'
    end
    object Conse075DerDIAREP: TIntegerField
      FieldName = 'DIAREP'
    end
    object Conse075DerPESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 11
      Size = 5
    end
    object Conse075DerPESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 11
      Size = 5
    end
    object Conse075DerTOLPES: TBCDField
      FieldName = 'TOLPES'
      Precision = 5
      Size = 3
    end
    object Conse075DerVOLDER: TFMTBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object Conse075DerPERPRD: TBCDField
      FieldName = 'PERPRD'
      Precision = 4
      Size = 2
    end
    object Conse075DerQTDIQL: TFMTBCDField
      FieldName = 'QTDIQL'
      Precision = 14
      Size = 5
    end
    object Conse075DerQTDCIC: TFMTBCDField
      FieldName = 'QTDCIC'
      Precision = 14
      Size = 5
    end
    object Conse075DerQTDPRD: TFMTBCDField
      FieldName = 'QTDPRD'
      Precision = 14
      Size = 5
    end
    object Conse075DerPREUIS: TFMTBCDField
      FieldName = 'PREUIS'
      Precision = 17
    end
    object Conse075DerPERICS: TBCDField
      FieldName = 'PERICS'
      Precision = 5
      Size = 2
    end
    object Conse075DerCODEMB: TIntegerField
      FieldName = 'CODEMB'
    end
    object Conse075DerCODROT: TStringField
      FieldName = 'CODROT'
      Size = 14
    end
    object Conse075DerCODROY: TIntegerField
      FieldName = 'CODROY'
    end
    object Conse075DerBXAORP: TStringField
      FieldName = 'BXAORP'
      Size = 1
    end
    object Conse075DerSERCCL: TStringField
      FieldName = 'SERCCL'
      Size = 3
    end
    object Conse075DerNUMCCL: TStringField
      FieldName = 'NUMCCL'
      Size = 12
    end
    object Conse075DerCURABC: TStringField
      FieldName = 'CURABC'
      Size = 1
    end
    object Conse075DerCURAB2: TStringField
      FieldName = 'CURAB2'
      Size = 1
    end
    object Conse075DerCURAB3: TStringField
      FieldName = 'CURAB3'
      Size = 1
    end
    object Conse075DerCURAB4: TStringField
      FieldName = 'CURAB4'
      Size = 1
    end
    object Conse075DerCODREG: TIntegerField
      FieldName = 'CODREG'
    end
    object Conse075DerSITDER: TStringField
      FieldName = 'SITDER'
      Size = 1
    end
    object Conse075DerCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object Conse075DerCTRLOT: TStringField
      FieldName = 'CTRLOT'
      Size = 1
    end
    object Conse075DerCTRSEP: TStringField
      FieldName = 'CTRSEP'
      Size = 1
    end
    object Conse075DerCTRVLD: TStringField
      FieldName = 'CTRVLD'
      Size = 1
    end
    object Conse075DerDEPPAD: TStringField
      FieldName = 'DEPPAD'
      Size = 10
    end
    object Conse075DerDEPPAA: TStringField
      FieldName = 'DEPPAA'
      Size = 10
    end
    object Conse075DerINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object Conse075DerINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object Conse075DerINDKAN: TStringField
      FieldName = 'INDKAN'
      Size = 1
    end
    object Conse075DerCODREF: TStringField
      FieldName = 'CODREF'
    end
    object Conse075DerCODPIN: TStringField
      FieldName = 'CODPIN'
    end
    object Conse075DerNOTFOR: TBCDField
      FieldName = 'NOTFOR'
      Precision = 5
      Size = 2
    end
    object Conse075DerORICUS: TStringField
      FieldName = 'ORICUS'
      Size = 1
    end
    object Conse075DerINFCUS: TStringField
      FieldName = 'INFCUS'
      Size = 1
    end
    object Conse075DerHORCUS: TIntegerField
      FieldName = 'HORCUS'
    end
    object Conse075DerUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object Conse075DerHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object Conse075DerDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object Conse075DerUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object Conse075DerHORALT: TIntegerField
      FieldName = 'HORALT'
    end
    object Conse075DerDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object Conse075DerCODAGE: TStringField
      FieldName = 'CODAGE'
      Size = 10
    end
    object Conse075DerCODBA2: TStringField
      FieldName = 'CODBA2'
      Size = 30
    end
    object Conse075DerINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object Conse075DerDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object Conse075DerHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object Conse075DerEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object Conse075DerSERMVP: TStringField
      FieldName = 'SERMVP'
      Size = 14
    end
    object Conse075DerAPRDFT: TStringField
      FieldName = 'APRDFT'
      Size = 1
    end
    object Conse075DerCODAEM: TStringField
      FieldName = 'CODAEM'
      Size = 10
    end
    object Conse075DerCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object Conse075DerINDGEN: TStringField
      FieldName = 'INDGEN'
      Size = 1
    end
    object Conse075DerQTDMLT: TFMTBCDField
      FieldName = 'QTDMLT'
      Precision = 12
      Size = 5
    end
    object Conse075DerQTDMIN: TFMTBCDField
      FieldName = 'QTDMIN'
      Precision = 12
      Size = 5
    end
    object Conse075DerQTDMAX: TFMTBCDField
      FieldName = 'QTDMAX'
      Precision = 12
      Size = 5
    end
    object Conse075DerCODEND: TStringField
      FieldName = 'CODEND'
      Size = 10
    end
    object Conse075DerROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object Conse075DerNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object Conse075DerINDPCQ: TStringField
      FieldName = 'INDPCQ'
      Size = 1
    end
    object Conse075DerVLRCID: TBCDField
      FieldName = 'VLRCID'
      Precision = 15
      Size = 2
    end
    object Conse075DerQTDCUS: TFMTBCDField
      FieldName = 'QTDCUS'
      Precision = 12
      Size = 5
    end
    object Conse075DerUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object Conse075DerUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object Conse075DerUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object Conse075DerUSU_CMP2BB: TBCDField
      FieldName = 'USU_CMP2BB'
      Precision = 8
      Size = 2
    end
    object Conse075DerUSU_CMP2EN: TBCDField
      FieldName = 'USU_CMP2EN'
      Precision = 8
      Size = 2
    end
    object Conse075DerUSU_MEDESP: TStringField
      FieldName = 'USU_MEDESP'
      Size = 1
    end
    object Conse075DerUSU_FATOR: TBCDField
      FieldName = 'USU_FATOR'
      Precision = 9
      Size = 3
    end
  end
  object ConsUsu_T121CppIten: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqite'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqalt'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t121cpp where usu_codfil = :codfil and'
      '                                usu_numped = :numped and'
      '                                usu_seqipd = :seqipd and'
      '                                usu_seqite = :seqite and'
      '                                usu_seqalt = :seqalt')
    Left = 688
    Top = 392
    object ConsUsu_T121CppItenUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUsu_T121CppItenUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsUsu_T121CppItenUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsUsu_T121CppItenUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ConsUsu_T121CppItenUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_T121CppItenUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_T121CppItenUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object ConsUsu_T121CppItenUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_T121CppItenUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ConsUsu_T121CppItenUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ConsUsu_T121CppItenUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsUsu_T121CppItenUSU_ITEMOD: TStringField
      FieldName = 'USU_ITEMOD'
      Size = 1
    end
    object ConsUsu_T121CppItenUSU_ITECON: TStringField
      FieldName = 'USU_ITECON'
      Size = 1
    end
    object ConsUsu_T121CppItenUSU_SEQALT: TIntegerField
      FieldName = 'USU_SEQALT'
    end
  end
  object ConsUsu_TCarPro: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tcarpro.* from usu_tcarpro'
      '                     where usu_numane = :numane')
    Left = 832
    Top = 296
    object ConsUsu_TCarProUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TCarProUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object ConsUsu_TCarProUSU_HORIMP: TIntegerField
      FieldName = 'USU_HORIMP'
    end
    object ConsUsu_TCarProUSU_USUIMP: TIntegerField
      FieldName = 'USU_USUIMP'
    end
    object ConsUsu_TCarProUSU_CARPRO: TStringField
      FieldName = 'USU_CARPRO'
      Size = 1
    end
  end
  object ConsUsu_TPreCar: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tprecar where usu_precar = :precar')
    Left = 336
    Top = 256
    object ConsUsu_TPreCarUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsUsu_TPreCarUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object ConsUsu_TPreCarUSU_HORGER: TIntegerField
      FieldName = 'USU_HORGER'
    end
    object ConsUsu_TPreCarUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object ConsUsu_TPreCarUSU_CARLIB: TStringField
      FieldName = 'USU_CARLIB'
      Size = 1
    end
    object ConsUsu_TPreCarUSU_DATLIB: TDateTimeField
      FieldName = 'USU_DATLIB'
    end
    object ConsUsu_TPreCarUSU_HORLIB: TIntegerField
      FieldName = 'USU_HORLIB'
    end
    object ConsUsu_TPreCarUSU_USULIB: TIntegerField
      FieldName = 'USU_USULIB'
    end
    object ConsUsu_TPreCarUSU_CARIMP: TStringField
      FieldName = 'USU_CARIMP'
      Size = 1
    end
  end
  object ConsE135Pes: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e135pes where numped = :numped')
    Left = 344
    Top = 344
    object ConsE135PesCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE135PesCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE135PesNUMANE: TBCDField
      FieldName = 'NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsE135PesNUMPFA: TIntegerField
      FieldName = 'NUMPFA'
    end
    object ConsE135PesSEQPES: TIntegerField
      FieldName = 'SEQPES'
    end
    object ConsE135PesFILPED: TIntegerField
      FieldName = 'FILPED'
    end
    object ConsE135PesNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE135PesSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsE135PesSEQISP: TIntegerField
      FieldName = 'SEQISP'
    end
    object ConsE135PesTNSIPD: TStringField
      FieldName = 'TNSIPD'
      Size = 5
    end
    object ConsE135PesTNSISP: TStringField
      FieldName = 'TNSISP'
      Size = 5
    end
    object ConsE135PesFILNFV: TIntegerField
      FieldName = 'FILNFV'
    end
    object ConsE135PesSNFNFV: TStringField
      FieldName = 'SNFNFV'
      Size = 3
    end
    object ConsE135PesNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object ConsE135PesSEQIPV: TIntegerField
      FieldName = 'SEQIPV'
    end
    object ConsE135PesSEQISV: TIntegerField
      FieldName = 'SEQISV'
    end
    object ConsE135PesTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE135PesTNSSER: TStringField
      FieldName = 'TNSSER'
      Size = 5
    end
    object ConsE135PesCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE135PesCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE135PesCODSER: TStringField
      FieldName = 'CODSER'
      Size = 14
    end
    object ConsE135PesPROSER: TStringField
      FieldName = 'PROSER'
      Size = 1
    end
    object ConsE135PesCPLPES: TStringField
      FieldName = 'CPLPES'
      Size = 250
    end
    object ConsE135PesCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE135PesCODTRI: TStringField
      FieldName = 'CODTRI'
      Size = 5
    end
    object ConsE135PesCODCLF: TStringField
      FieldName = 'CODCLF'
      Size = 3
    end
    object ConsE135PesCODSTR: TStringField
      FieldName = 'CODSTR'
      Size = 3
    end
    object ConsE135PesCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ConsE135PesCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ConsE135PesCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ConsE135PesCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ConsE135PesCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ConsE135PesCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE135PesCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object ConsE135PesQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object ConsE135PesQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsE135PesQTDPPF: TFMTBCDField
      FieldName = 'QTDPPF'
      Precision = 14
      Size = 5
    end
    object ConsE135PesUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE135PesSALCAN: TStringField
      FieldName = 'SALCAN'
      Size = 1
    end
    object ConsE135PesPESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 14
      Size = 5
    end
    object ConsE135PesPESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 14
      Size = 5
    end
    object ConsE135PesVOLPES: TBCDField
      FieldName = 'VOLPES'
      Precision = 11
      Size = 2
    end
    object ConsE135PesCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE135PesPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsE135PesPREBAS: TFMTBCDField
      FieldName = 'PREBAS'
      Precision = 15
      Size = 6
    end
    object ConsE135PesPEROFE: TBCDField
      FieldName = 'PEROFE'
      Precision = 5
      Size = 2
    end
    object ConsE135PesPERACR: TBCDField
      FieldName = 'PERACR'
      Precision = 5
      Size = 2
    end
    object ConsE135PesPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE135PesPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ConsE135PesPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ConsE135PesPERFUN: TBCDField
      FieldName = 'PERFUN'
      Precision = 4
      Size = 2
    end
    object ConsE135PesPERISS: TBCDField
      FieldName = 'PERISS'
      Precision = 4
      Size = 2
    end
    object ConsE135PesPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ConsE135PesPERINS: TBCDField
      FieldName = 'PERINS'
      Precision = 4
      Size = 2
    end
    object ConsE135PesPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE135PesNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object ConsE135PesCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object ConsE135PesCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ConsE135PesCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConsE135PesCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ConsE135PesVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE135PesVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE135PesVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE135PesVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE135PesVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE135PesVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE135PesVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE135PesVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE135PesVLRPES: TBCDField
      FieldName = 'VLRPES'
      Precision = 15
      Size = 2
    end
    object ConsE135PesVLRFAT: TFMTBCDField
      FieldName = 'VLRFAT'
      Precision = 18
      Size = 5
    end
    object ConsE135PesDATMOV: TDateTimeField
      FieldName = 'DATMOV'
    end
    object ConsE135PesSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object ConsE135PesFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object ConsE135PesFORNFC: TIntegerField
      FieldName = 'FORNFC'
    end
    object ConsE135PesNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsE135PesSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object ConsE135PesSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ConsE135PesSEQISC: TIntegerField
      FieldName = 'SEQISC'
    end
    object ConsE135PesUSUPRP: TBCDField
      FieldName = 'USUPRP'
      Precision = 10
      Size = 0
    end
    object ConsE135PesDATPRP: TDateTimeField
      FieldName = 'DATPRP'
    end
    object ConsE135PesHORPRP: TIntegerField
      FieldName = 'HORPRP'
    end
    object ConsE135PesSITPES: TIntegerField
      FieldName = 'SITPES'
    end
    object ConsE135PesOBSPES: TStringField
      FieldName = 'OBSPES'
      Size = 250
    end
    object ConsE135PesUSUAPR: TBCDField
      FieldName = 'USUAPR'
      Precision = 10
      Size = 0
    end
    object ConsE135PesDATAPR: TDateTimeField
      FieldName = 'DATAPR'
    end
    object ConsE135PesHORAPR: TIntegerField
      FieldName = 'HORAPR'
    end
    object ConsE135PesPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object ConsE135PesUNIVEN: TStringField
      FieldName = 'UNIVEN'
      Size = 3
    end
    object ConsE135PesQTDVEN: TFMTBCDField
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object ConsE135PesPREVEN: TFMTBCDField
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object ConsE135PesCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object ConsE135PesDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object ConsE135PesCOTMFP: TFMTBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object ConsE135PesCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ConsE135PesDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ConsE135PesCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ConsE135PesFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ConsE135PesPREBRU: TFMTBCDField
      FieldName = 'PREBRU'
      Precision = 14
      Size = 5
    end
    object ConsE135PesVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object ConsE135PesCMPKIT: TStringField
      FieldName = 'CMPKIT'
      Size = 1
    end
    object ConsE135PesSEQITC: TIntegerField
      FieldName = 'SEQITC'
    end
    object ConsE135PesVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE135PesVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE135PesPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object ConsE135PesVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE135PesVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE135PesPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object ConsE135PesVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE135PesVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE135PesPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ConsE135PesVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE135PesVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE135PesPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ConsE135PesCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ConsE135PesPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE135PesPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE135PesPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE135PesPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE135PesVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE135PesPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 5
      Size = 2
    end
    object ConsE135PesPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 5
      Size = 2
    end
    object ConsE135PesPESCNF: TIntegerField
      FieldName = 'PESCNF'
    end
    object ConsE135PesPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
  end
  object ConsUsu_T120IpdTecidos: TADOQuery
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
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t120ipd'
      
        'inner join e075pro on e075pro.codemp = usu_t120ipd.usu_codemp an' +
        'd'
      '                      e075pro.codpro = usu_t120ipd.usu_codpro'
      '                        where'
      '                         usu_t120ipd.usu_codemp = :codemp and'
      '                         usu_t120ipd.usu_codfil = :codfil and'
      '                         usu_t120ipd.usu_numped = :numped')
    Left = 128
    Top = 232
    object ConsUsu_T120IpdTecidosUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_T120IpdTecidosUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUsu_T120IpdTecidosUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsUsu_T120IpdTecidosUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsUsu_T120IpdTecidosUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object ConsUsu_T120IpdTecidosUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsUsu_T120IpdTecidosUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ConsUsu_T120IpdTecidosUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ConsUsu_T120IpdTecidosUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ConsUsu_T120IpdTecidosUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_T120IpdTecidosUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_T120IpdTecidosUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object ConsUsu_T120IpdTecidosUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_T120IpdTecidosUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object ConsUsu_T120IpdTecidosUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsUsu_T120IpdTecidosUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
  end
  object ConsE210Est: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'coddep'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select codpro,coddep,qtdest from e210est where'
      '                      codpro = :codpro and'
      '                      coddep = :coddep')
    Left = 120
    Top = 312
    object ConsE210EstCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE210EstCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE210EstQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
  end
  object DsReserva: TDataSource
    Left = 88
    Top = 376
  end
end
