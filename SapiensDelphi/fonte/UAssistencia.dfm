object FAssistencia: TFAssistencia
  Left = 0
  Top = 0
  ActiveControl = EdDatPer
  Caption = 'Assist'#234'ncia'
  ClientHeight = 599
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 826
    Height = 104
    Align = alTop
    TabOrder = 0
    object Label10: TLabel
      Left = 30
      Top = 13
      Width = 36
      Height = 13
      Caption = 'Filial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 18
      Top = 36
      Width = 48
      Height = 13
      Caption = 'Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 59
      Width = 58
      Height = 13
      Caption = 'Emiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 205
      Top = 13
      Width = 49
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 205
      Top = 36
      Width = 49
      Height = 13
      Caption = 'Repres:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 194
      Top = 59
      Width = 60
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 21
      Top = 83
      Width = 45
      Height = 13
      Caption = 'Trans.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LDsCodCli: TLabel
      Left = 356
      Top = 9
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
      Left = 356
      Top = 34
      Width = 4
      Height = 13
    end
    object LDsCodCpg: TLabel
      Left = 295
      Top = 59
      Width = 4
      Height = 13
    end
    object LDsTnsPro: TLabel
      Left = 165
      Top = 81
      Width = 4
      Height = 13
    end
    object LDsSitPed: TLabel
      Left = 296
      Top = 58
      Width = 4
      Height = 13
    end
    object Panel4: TPanel
      Left = 608
      Top = 1
      Width = 217
      Height = 102
      Align = alRight
      BevelOuter = bvLowered
      TabOrder = 6
      object BSair: TBitBtn
        Left = 114
        Top = 76
        Width = 100
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
        Left = 114
        Top = 27
        Width = 100
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
        Left = 114
        Top = 2
        Width = 100
        Height = 25
        Caption = 'Inserir'
        DoubleBuffered = True
        Enabled = False
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
      object BExcluir: TBitBtn
        Left = 114
        Top = 52
        Width = 100
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
        TabOrder = 3
        TabStop = False
      end
      object BFechar: TBitBtn
        Left = 8
        Top = 2
        Width = 100
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
        TabOrder = 4
        TabStop = False
        OnClick = BFecharClick
      end
      object BObsNf: TBitBtn
        Left = 8
        Top = 28
        Width = 100
        Height = 25
        Caption = 'Obs. NF'
        DoubleBuffered = True
        Glyph.Data = {
          5A030000424D5A030000000000005A0200002800000010000000100000000100
          08000000000000010000120B0000120B0000890000008900000000000000FFFF
          FF009F9EA1009E9CA000A19EA300FF00FF00A39FA300A39EA100A0989C00A09A
          9D009E8A87009E8B8700E1D1CE0099888400AA260300A7250300A72A0600AD2C
          0700AD2D0800AC2D0800AA2D0900AC310D00CEBFBB00AB2E0900AC320D00AD33
          0E00B0350F00B0370F00AF360F00AD340F00AD350F00AF371000AD3610009F8C
          8600CFBCB600F2E2DD00B43B1000B6411700B8421A00B5411A00B05E4000C297
          8700C99E8E00B4968B00C1A39800B1958B00A08E8800E0CFC900BB471800B845
          1900BB4A1C00B1624300B1654800CE876A00D58F7200CA886D00B47F6A00B483
          7000C2917E00D7A79300D8AA9700D5AA9800E0BAAA00F2E1DA00E9DCD700EADE
          D900C0542200C67D5D00DD9E8100DD9F8200D79A7F00D7A69100D5A79300D8AA
          9600C79E8B00D7AA9700C69D8B00C79E8C00D8AD9900BDA39800F0D4C700F0D5
          C900F2D8CC00EED9D000EFDDD500F2E1D900F4E5DE00F3E6E000C0542100C65D
          2700C65D2800E1A68800D8AF9A00F2DACE00EED9CF00EEDAD000D0794800E1A4
          8200F3DCCF00F6E3D800F4E1D700F6E5DC00EEDDD400F0E2DA00EFE1D900C964
          2800CC692F00D37B4600E7BA9F00CE6F3100D3763600D8895500F2D4BF00F7E0
          D000D57D3B00D57E3E00F3D9C500DC8A4500F6DECB00E0924A00EBBC9300EAB0
          7900EFCBA700FAEADA00F3D4B200F6D7B600F6E0C600F0C58F00F6DCBB00FAEA
          D300FEFFFF00F0FEFF00F2FEFF00DAE1E500B7BBC000DADDE100B8BBC0000505
          050505053D4F2B2A05050505050505050505053C168603213C05050505050505
          05055C0C873A39092E4D050505050505053C4184430F0E34060A3C0505050505
          3C6882352745442628040B4C0505053C23013610206564201333070A3C05493F
          015B241A1C525019151228080D4A3E01745942322562511D181E1138022D3E01
          766E6A5A42635D1F18181729882C4955017A726D6B706C311B1437852248053C
          54017C75736F60583046832F3C0505053B66017D777B71696182404B05050505
          053C5F01807F797801673C05050505050505475301817E01564E050505050505
          0505053C5E0101573C0505050505050505050505493E3E49050505050505}
        ParentDoubleBuffered = False
        TabOrder = 5
        OnClick = BObsNfClick
      end
      object BObsPed: TBitBtn
        Left = 8
        Top = 53
        Width = 100
        Height = 25
        Caption = 'Obs. Ped.'
        DoubleBuffered = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000FF00FF003636
          3600373837003737380037383800393939003E3E3E0046453E00434343004848
          48004C4C4C00514F4400535348005754490059564A005A594D005F5B4F005959
          59005C5C5C0067626100646464006E6668006F6F6F00726F6B00746C6D00706A
          7B00727272007B717500797979007F7C7B00000095000F0C9700040298000002
          9D0011119400201D900037328C00222296003A3A96000000A5000504A7000C07
          A0000807A6000008A7000001AB000002AC000004AE000F06AB000009AA00100F
          A8001C0FAF001615A6000009B9000009BC001707B3001C06BD000010B8001913
          B4001D11BA002926A7003838AF005D588B004F4996004C469900585295005652
          9D00625986006C6B9700676798007B7295006461A0007670A6006A71BD00000D
          C3001E07C2001C08C2001C0CC8000913C6000F1FC0000010C9000012CD00011A
          CB000C18CC001716C2001E1BC1001D15CA00131DCB000016D500011ED300001A
          DC000721DF000D21DE00223DDF000018E100001DE300001EE5000126E3000D28
          E2000020E900062BEA00012AEC001330E4001E3DE7001139EC000025F000002A
          F5000029F800002CFB00002EFD000233FA000030FF000236FF00063EFF000A38
          F9000A38FC000C3DFE000A41FF001442FB001246FF001B47F9001248FF00174C
          FF001848FF001D55FF003756EE002B4EF000254FFE002251FE002255FF002659
          FF002E59FE00375CF9003363FF003666FF003963FF003F6EFF00727DDE005F6F
          E000426DFF004F74FC005076FE00517AFF00587EFE00727FE2005681FE005985
          FD005F85FE007282E6007284EB006A83F600638CFF006A89FF006D8EFF007288
          F2007191FF007097FD007997FD007698FD007AA1FD0082808600878787009393
          95008D8AA600AFAFAF008DA9FF0094ADFF0092B1FE009FB5FF00A2B9FF00A2C0
          FD00ACC0FF00B4C7FF0000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000606060606060600000000000000060601
          0101020204060606000000000001070C0F0F0F0E0C0B07020000000000179F43
          46413F3E403D19130000000000A23C332A27272727313B450000000000005D5D
          625D5950492C2C000000000000006A6F6F6F6A5D57492C000000000000007379
          76736F6F6250340000000000000080858580796F6A5949000000000000008D9B
          918780706A5D500000000000000091A99E9081746F625000000000000000009C
          A6967B706A5D000000000000000000008E7E736A620000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentDoubleBuffered = False
        TabOrder = 6
        OnClick = BObsPedClick
      end
    end
    object EdNumPed: TEdit
      Left = 70
      Top = 29
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
      Left = 69
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
      Left = 69
      Top = 75
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
    end
    object EdCodFil: TEdit
      Left = 70
      Top = 6
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
    end
    object BNumPed: TBitBtn
      Left = 137
      Top = 30
      Width = 22
      Height = 18
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
      Left = 136
      Top = 76
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
    end
    object EdCodCli: TEdit
      Left = 260
      Top = 6
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
    end
    object EdCodRep: TEdit
      Left = 260
      Top = 29
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
    end
    object BCodCli: TBitBtn
      Left = 326
      Top = 7
      Width = 22
      Height = 18
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
      Top = 30
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
    end
    object EdSitPed: TEdit
      Left = 260
      Top = 52
      Width = 30
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnExit = EdSitPedExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 104
    Width = 826
    Height = 454
    Align = alClient
    TabOrder = 1
    object Label6: TLabel
      Left = 29
      Top = 198
      Width = 63
      Height = 13
      Caption = 'Produto..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 14
      Top = 225
      Width = 78
      Height = 13
      Caption = 'Deriva'#231#227'o..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 43
      Top = 252
      Width = 49
      Height = 13
      Caption = 'Trans..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 30
      Top = 280
      Width = 62
      Height = 13
      Caption = 'Dat.Fab..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 34
      Top = 307
      Width = 58
      Height = 13
      Caption = 'Dat.Sol..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 32
      Top = 334
      Width = 60
      Height = 13
      Caption = 'Dat.Per..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 214
      Top = 294
      Width = 57
      Height = 13
      Caption = 'Per'#237'cia..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 210
      Top = 412
      Width = 61
      Height = 13
      Caption = 'Mat.Util..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 212
      Top = 225
      Width = 59
      Height = 13
      Caption = 'Arg.Sol..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 653
      Top = 225
      Width = 57
      Height = 13
      Caption = 'Devida..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 26
      Top = 360
      Width = 64
      Height = 13
      Caption = 'Vlr.Prod..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LDsCodPro: TLabel
      Left = 203
      Top = 196
      Width = 4
      Height = 13
    end
    object Label11: TLabel
      Left = 655
      Top = 253
      Width = 55
      Height = 13
      Caption = 'Vlr.Ast..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 824
      Height = 21
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 12
      object LEndCli: TLabel
        Left = 16
        Top = 3
        Width = 4
        Height = 13
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 22
      Width = 824
      Height = 162
      TabStop = False
      Align = alTop
      DataSource = DsConsE120IpdA
      ReadOnly = True
      TabOrder = 13
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SEQIPD'
          Title.Alignment = taCenter
          Title.Caption = 'Seq.'
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TNSPRO'
          Title.Alignment = taCenter
          Title.Caption = 'TnsPro'
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODPRO'
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESPRO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 240
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODDER'
          Title.Alignment = taCenter
          Title.Caption = 'Der.'
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODDEP'
          Title.Alignment = taCenter
          Title.Caption = 'Dep.'
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDPED'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Ped.'
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDFAT'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Fat.'
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDABE'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Abe.'
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDCAN'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Can.'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODTPR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREUNI'
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
          FieldName = 'VLRBRU'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRLIQ'
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
          FieldName = 'SITIPD'
          Width = 64
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
          FieldName = 'USU_TOTDSC'
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
          FieldName = 'USU_VLRORI'
          Width = 64
          Visible = True
        end>
    end
    object EdCodPro: TEdit
      Left = 97
      Top = 190
      Width = 100
      Height = 21
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnExit = EdCodProExit
      OnKeyDown = EdCodProKeyDown
    end
    object EdCodDer: TEdit
      Left = 97
      Top = 217
      Width = 100
      Height = 21
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnKeyDown = EdCodDerKeyDown
    end
    object EdTnsProI: TEdit
      Left = 98
      Top = 244
      Width = 100
      Height = 21
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnExit = EdTnsProIExit
    end
    object EdDatFab: TDateEdit
      Left = 98
      Top = 272
      Width = 100
      Height = 21
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object EdDatSol: TDateEdit
      Left = 98
      Top = 299
      Width = 100
      Height = 21
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object EdDatPer: TDateEdit
      Left = 97
      Top = 326
      Width = 100
      Height = 21
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object MDesPer: TMemo
      Left = 277
      Top = 295
      Width = 364
      Height = 106
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Lines.Strings = (
        'MEMO1')
      MaxLength = 285
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
    end
    object MMatUti: TMemo
      Left = 277
      Top = 409
      Width = 364
      Height = 40
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Lines.Strings = (
        'MEMO2')
      MaxLength = 160
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
    end
    object EdInDev: TComboBox
      Left = 714
      Top = 218
      Width = 100
      Height = 22
      Style = csOwnerDrawFixed
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
      Items.Strings = (
        ''
        'DEVIDA'
        'INDEVIDA')
    end
    object MArgSol: TMemo
      Left = 277
      Top = 220
      Width = 364
      Height = 68
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Lines.Strings = (
        'MEMO3')
      MaxLength = 235
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object EdVlrPro: TCurrencyEdit
      Left = 97
      Top = 352
      Width = 100
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      Ctl3D = True
      DisplayFormat = ' ,0.00;- ,0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object EdVlrAst: TCurrencyEdit
      Left = 714
      Top = 245
      Width = 100
      Height = 21
      Margins.Left = 5
      Margins.Top = 1
      Ctl3D = True
      DisplayFormat = ' ,0.00;- ,0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
    end
    object BConsCodPro: TBitBtn
      Left = 178
      Top = 191
      Width = 17
      Height = 18
      Caption = '...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 14
      TabStop = False
      OnClick = BConsCodProClick
    end
    object BConsDerivacao: TBitBtn
      Left = 178
      Top = 219
      Width = 17
      Height = 18
      Caption = '...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 15
      TabStop = False
      OnClick = BConsDerivacaoClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 558
    Width = 826
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Label22: TLabel
      Left = 8
      Top = 3
      Width = 60
      Height = 13
      Caption = 'Tot.Bruto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 122
      Top = 3
      Width = 72
      Height = 13
      Caption = 'Tot.L'#237'quido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BExcProd: TBitBtn
      Left = 717
      Top = 6
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
      TabStop = False
      OnClick = BExcProdClick
    end
    object BCancProd: TBitBtn
      Left = 663
      Top = 7
      Width = 50
      Height = 25
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      TabStop = False
      OnClick = BCancProdClick
    end
    object BAltProd: TBitBtn
      Left = 609
      Top = 6
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
      TabStop = False
      OnClick = BAltProdClick
    end
    object BConfProd: TBitBtn
      Left = 772
      Top = 6
      Width = 50
      Height = 25
      DoubleBuffered = True
      Glyph.Data = {
        46050000424D460500000000000036040000280000000D000000110000000100
        08000000000010010000C30E0000C30E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
        60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
        B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
        1D007666280000450000013E450013286A006A39850085324A00040404000808
        08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
        5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
        840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
        0000000039009B00000000250000000049003B111100002F000000005D004517
        1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
        00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
        2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
        A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
        2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
        89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
        AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
        0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
        0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
        42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
        890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
        C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
        FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
        F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
        FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
        CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
        8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
        7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
        BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
        88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
        A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
        0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
        00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
        001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
        11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
        110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
        11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
        110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
        110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
        0F0F0F0F0F0F0F000000}
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BConfProdClick
    end
    object BInserirProd: TBitBtn
      Left = 555
      Top = 6
      Width = 50
      Height = 25
      DoubleBuffered = True
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        700077777777777770007777700077777000777770C077777000777770C07777
        7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
        7000777770C07777700077777000777770007777777777777000777777777777
        7000}
      ParentDoubleBuffered = False
      TabOrder = 4
      TabStop = False
      OnClick = BInserirProdClick
    end
    object edTotBru: TCurrencyEdit
      Left = 8
      Top = 18
      Width = 100
      Height = 19
      Margins.Left = 6
      Margins.Top = 2
      Ctl3D = False
      DisplayFormat = ' ,0.00;- ,0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object edTotLiq: TCurrencyEdit
      Left = 122
      Top = 18
      Width = 100
      Height = 19
      Margins.Left = 6
      Margins.Top = 2
      Ctl3D = False
      DisplayFormat = ' ,0.00;- ,0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
  end
  object DsConsE120IpdA: TDataSource
    DataSet = Dm2.ConsE120IpdA
    Left = 496
    Top = 56
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
    Left = 360
    Top = 56
  end
  object DsCadE120IpdA: TDataSource
    DataSet = Dm2.CadE120IpdA
    OnStateChange = DsCadE120IpdAStateChange
    Left = 696
    Top = 368
  end
end
