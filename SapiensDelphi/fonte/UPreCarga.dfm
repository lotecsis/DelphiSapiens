object FPreCarga: TFPreCarga
  Left = 112
  Top = 181
  Caption = 'Montagem de Pr'#233'-Carga'
  ClientHeight = 597
  ClientWidth = 1009
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 1009
    Height = 597
    ActivePage = TbCadastro
    Align = alClient
    TabOrder = 0
    object TbCadastro: TTabSheet
      Caption = 'Cadastro'
      object BSobi: TSpeedButton
        Left = 904
        Top = 240
        Width = 30
        Height = 30
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
          3333333333777F33333333333309033333333333337F7F333333333333090333
          33333333337F7F33333333333309033333333333337F7F333333333333090333
          33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
          3333333777737777F333333099999990333333373F3333373333333309999903
          333333337F33337F33333333099999033333333373F333733333333330999033
          3333333337F337F3333333333099903333333333373F37333333333333090333
          33333333337F7F33333333333309033333333333337373333333333333303333
          333333333337F333333333333330333333333333333733333333}
        NumGlyphs = 2
        OnClick = BSobiClick
      end
      object BDece: TSpeedButton
        Left = 904
        Top = 272
        Width = 30
        Height = 30
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333337F33333333333333033333333333333373F333333333333090333
          33333333337F7F33333333333309033333333333337373F33333333330999033
          3333333337F337F33333333330999033333333333733373F3333333309999903
          333333337F33337F33333333099999033333333373333373F333333099999990
          33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
          33333333337F7F33333333333309033333333333337F7F333333333333090333
          33333333337F7F33333333333309033333333333337F7F333333333333090333
          33333333337F7F33333333333300033333333333337773333333}
        NumGlyphs = 2
        OnClick = BDeceClick
      end
      object SpeedButton1: TSpeedButton
        Left = 954
        Top = 152
        Width = 30
        Height = 30
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 922
        Top = 152
        Width = 30
        Height = 30
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = SpeedButton2Click
      end
      object DBGrid1: TDBGrid
        Left = -10
        Top = 44
        Width = 908
        Height = 488
        DataSource = DsConsUsu_TIteCar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_SEQITE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Seq.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'USU_NUMPED'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Pedido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMCLI'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDCLI'
            Title.Alignment = taCenter
            Title.Caption = 'Cidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 250
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODREP'
            Title.Alignment = taCenter
            Title.Caption = 'Rep.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMREP'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Rep.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 250
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = -3
        Width = 937
        Height = 41
        BevelOuter = bvLowered
        TabOrder = 1
        object Label1: TLabel
          Left = 9
          Top = 17
          Width = 70
          Height = 13
          Caption = 'Pr'#233'-Carga:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 212
          Top = 17
          Width = 336
          Height = 13
          Caption = '<-- Digite 0 (zero) para incluir uma nova pr'#233'-carga'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LLiberado: TLabel
          Left = 848
          Top = 14
          Width = 4
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 784
          Top = 16
          Width = 61
          Height = 13
          Caption = 'Liberado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object EdPreCarga: TEdit
        Left = 84
        Top = 8
        Width = 121
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnExit = EdPreCargaExit
      end
      object BExcluir: TBitBtn
        Left = 907
        Top = 55
        Width = 90
        Height = 25
        Caption = 'Excluir'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          A7DDFF40B5FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF40B5
          FFA7DDFFFFFFFFFFFFFFFFFFFFFFFFFF23AAFF15A1FF1FABFF49C7FF5CD1FF53
          D1FF46D3FF4CD8FF49D5FF2CC1FF1FB1FF23AAFFFFFFFFFFFFFFFFFFFFFFFFFF
          14A4FF35B8FF49C7FF87E1FFA5EBFF8FE9FF73E6FF77E9FF74E7FF55D8FF1EB1
          FF14A4FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF58CAFF46C6FF82DEFFA1EAFF87
          E5FF101F9600007A00007A00007A00007A00007A00007A303093FFFFFFFFFFFF
          14A4FF73D4FF43C6FF7EDDFF9CE7FF7FE1FF0303805757EF5A5AF05151F02727
          DA0A0AB501019500007AFFFFFFFFFFFF14A4FF8FDDFF3FC5FF78DCFF96E3FF75
          DCFF0D1D96030380030380030380030380030380030380303093FFFFFFFFFFFF
          14A4FFACE6FF43C7FF73DAFF90E3FF6BD8FF3FCBFF3ECAFF3CCAFF2DBFFF33B8
          FF14A4FFFFFFFFFFFFFFFFFFFFFFFFFF1DA8FF7FD5FFB1E7FFC5F0FFC9F2FFC7
          F2FFC5F0FFC5F0FFC5F0FFC0EDFF79D3FF1EA8FFFFFFFFFFFFFFFFFFFFFFFFFF
          1EA8FF12A0FF1BABFF31BCFF3EC6FF3CC9FF37CCFF3DD1FF3ACFFF2AC0FF1AAE
          FF1DA8FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF2EB4FF47C6FF86E1FFA6EBFF90
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
        TabOrder = 3
        TabStop = False
        OnClick = BExcluirClick
      end
      object BAdiciona: TBitBtn
        Left = 774
        Top = 538
        Width = 60
        Height = 25
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          A7DDFF40B5FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF0083060081000384
          08A7DDFFFFFFFFFFFFFFFFFFFFFFFFFF23AAFF15A1FF1FABFF49C7FF5CD1FF53
          D1FF46D3FF4CD8FF008100139E1600810023AAFFFFFFFFFFFFFFFFFFFFFFFFFF
          14A4FF35B8FF49C7FF87E1FFA5EBFF8FE9FF73E6FF77E9FF0081002CAF2D0081
          0014A4FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF58CAFF46C6FF82DEFFA1EAFF03
          870600810000810000810046C047008100008100008100108910FFFFFFFFFFFF
          14A4FF73D4FF43C6FF7EDDFF9CE7FF00810095E69698E99889E78866DD6546C2
          4521A3210B900B008100FFFFFFFFFFFF14A4FF8FDDFF3FC5FF78DCFF96E3FF03
          870600810000810000810087E588008100008100008100108910FFFFFFFFFFFF
          14A4FFACE6FF43C7FF73DAFF90E3FF6BD8FF3FCBFF3ECAFF00810090E5900081
          0014A4FFFFFFFFFFFFFFFFFFFFFFFFFF1DA8FF7FD5FFB1E7FFC5F0FFC9F2FFC7
          F2FFC5F0FFC5F0FF00810084E0870081001EA8FFFFFFFFFFFFFFFFFFFFFFFFFF
          1EA8FF12A0FF1BABFF31BCFF3EC6FF3CC9FF37CCFF3DD1FF0186060081000183
          061DA8FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF2EB4FF47C6FF86E1FFA6EBFF90
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
        TabOrder = 4
        OnClick = BAdicionaClick
      end
      object BRemove: TBitBtn
        Left = 840
        Top = 538
        Width = 60
        Height = 25
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          A7DDFF40B5FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF40B5
          FFA7DDFFFFFFFFFFFFFFFFFFFFFFFFFF23AAFF15A1FF1FABFF49C7FF5CD1FF53
          D1FF46D3FF4CD8FF49D5FF2CC1FF1FB1FF23AAFFFFFFFFFFFFFFFFFFFFFFFFFF
          14A4FF35B8FF49C7FF87E1FFA5EBFF8FE9FF73E6FF77E9FF74E7FF55D8FF1EB1
          FF14A4FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF58CAFF46C6FF82DEFFA1EAFF87
          E5FF101F9600007A00007A00007A00007A00007A00007A303093FFFFFFFFFFFF
          14A4FF73D4FF43C6FF7EDDFF9CE7FF7FE1FF0303805757EF5A5AF05151F02727
          DA0A0AB501019500007AFFFFFFFFFFFF14A4FF8FDDFF3FC5FF78DCFF96E3FF75
          DCFF0D1D96030380030380030380030380030380030380303093FFFFFFFFFFFF
          14A4FFACE6FF43C7FF73DAFF90E3FF6BD8FF3FCBFF3ECAFF3CCAFF2DBFFF33B8
          FF14A4FFFFFFFFFFFFFFFFFFFFFFFFFF1DA8FF7FD5FFB1E7FFC5F0FFC9F2FFC7
          F2FFC5F0FFC5F0FFC5F0FFC0EDFF79D3FF1EA8FFFFFFFFFFFFFFFFFFFFFFFFFF
          1EA8FF12A0FF1BABFF31BCFF3EC6FF3CC9FF37CCFF3DD1FF3ACFFF2AC0FF1AAE
          FF1DA8FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF2EB4FF47C6FF86E1FFA6EBFF90
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
        TabOrder = 5
        OnClick = BRemoveClick
      end
      object Panel2: TPanel
        Left = 0
        Top = 537
        Width = 763
        Height = 29
        BevelOuter = bvLowered
        TabOrder = 6
        object Label3: TLabel
          Left = 16
          Top = 12
          Width = 48
          Height = 13
          Caption = 'Volume'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 272
          Top = 12
          Width = 34
          Height = 13
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdVolProd: TCurrencyEdit
          Left = 67
          Top = 6
          Width = 121
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DisplayFormat = ' ,0.00;- ,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EdVlrTot: TCurrencyEdit
          Left = 310
          Top = 6
          Width = 121
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DisplayFormat = ' ,0.00;- ,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object BLiberar: TBitBtn
        Left = 907
        Top = 0
        Width = 90
        Height = 25
        Caption = 'Liberar'
        DoubleBuffered = True
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEEBB3B9
          F6BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0DFA554C65B66DF6DC3F5C7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFF96D59B3DC0466CFF7B75FF8350DE5AB0F1B5FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF97CF9C30B6
          3A51F36068F57665F8725CFC6C3ED748A5E9AAFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF97C49B21AA2E45DE5375E7808BED9481
          EE8B5AEB674FF15F39CE449EDEA4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFAACDAE32A43D4ACF578ADF9293E49B7DDA857FDE877BE5854DDF5B
          41E4512FB23892CF97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000BBDABE61B168
          72CF7BA0DEA69CDEA27ED68762CB6C7FD68775D97E75DC7E42D25032D64224A0
          2D91C095FFFFFFFFFFFFFFFFFFFFFFFF0000E9F4EA83C689ABD9B0B2DAB688CF
          8E59C363F6FCF7F8FDF963CB6D6DD0766ED37734C54122C7311D8D2793B496FF
          FFFFFFFFFFFFFFFF0000FFFFFFF2F9F25EC2689BD3A15EC267F4FBF5FFFFFFFF
          FFFFF4FBF55BC36465C66E66C96F26B73310B72015862193B096FFFFFFFFFFFF
          0000FFFFFFFFFFFFEEF9EF96D89BEFF9F0FFFFFFFFFFFFFFFFFFFFFFFFF5FBF6
          5ABB6366BA6E63BC6C1AA42701A10C1D8928A4BDA7FEFEFE0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FBF55ABA6269B1
          7066AC6D1A8A2401870C317C38C1D1C30000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FAF35BBC636CAD7369A56F25
          822E5E9963F2F6F20000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FBF55CBC6479B67E83BC88FCFDFCFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF0F9F1A4D6A9F8FBF8FFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000}
        ParentDoubleBuffered = False
        TabOrder = 7
        OnClick = BLiberarClick
      end
      object BSair: TBitBtn
        Left = 908
        Top = 120
        Width = 90
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
        TabOrder = 8
        OnClick = BSairClick
      end
      object BitBtn1: TBitBtn
        Left = 907
        Top = 28
        Width = 90
        Height = 25
        Caption = 'Bloquear'
        DoubleBuffered = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
          993337777F777F3377F3393999707333993337F77737333337FF993399933333
          399377F3777FF333377F993339903333399377F33737FF33377F993333707333
          399377F333377FF3377F993333101933399377F333777FFF377F993333000993
          399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
          99333773FF777F777733339993707339933333773FF7FFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 9
        OnClick = BitBtn1Click
      end
      object BPendencias: TBitBtn
        Left = 908
        Top = 93
        Width = 90
        Height = 25
        Caption = 'Pend'#234'ncias'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000001FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF43414143414143414143414143414143
          4141434141434141434141434141434141434141FF00FFFF00FFFF00FF4D4A4A
          6D67677367677766667D66648164648664648A64628C64628C64628C64628C64
          628C6462434141FF00FFFF00FF4D4A4A878484898181908181987F7FA0807DA7
          7E7DB07B7BB77B79BB7B79BB7B79BB7B798C6462434141FF00FFFF00FF4D4A4A
          8C8C8C888686FFFFFFFFFFFFFFFFFFFFFFFFE8DEDEAF7B7BB67B7ABB7B79BB7B
          798C6462434141FF00FFFF00FF4D4A4A9A9A9A909090898888E1DFDFFFFFFFB4
          A4A49E7E7EA57E7DAD7B7BB57B7ABB7B798C6462434141FF00FFFF00FF4D4A4A
          ADADAD9D9D9D929191E1E1E1FFFFFFAEA4A49680809D7F7FA47E7DAC7B7AB47B
          7A8C6462434141FF00FFFF00FF4D4A4AC1C0C0ABAAAA9C9C9CE3E3E3FFFFFFFF
          FFFFFFFFFFFFFFFFD8CDCDA37F7DAB7E7D876463434141FF00FFFF00FF4D4A4A
          CECECEB7B6B6A5A5A5E5E5E5FFFFFFA9A9A9A9A5A5FFFFFFFFFFFFC7B9B9A17F
          7D826564434141FF00FFFF00FF4D4A4AD7D5D5C0C0C0B1AFAFE8E8E8FFFFFFB0
          B0B0898989E0E0E0FFFFFFD4CECE987F7F7B6664434141FF00FFFF00FF4D4A4A
          DCDADACAC9C9BDBDBDECEBEBFFFFFFB9B8B8B3B3B3FFFFFFFFFFFFBEBABA9081
          81766666434141FF00FFFF00FF4D4A4AE0E0E0D1D0D0FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFD2D2D2878787888181706766434141FF00FFFF00FF4D4A4A
          E1E1E1DEDEDED8D7D7D3D1D1CACACABFBFBFB4B4B4A4A4A49797978E8E8E8787
          876B6767434141FF00FFFF00FF4D4A4AD8D7D7E1E1E1E2E2E2E0E0E0DADADAD0
          CFCFC0BFBFB0ADAD9F9F9F9695958E8E8E6B6B6B434141FF00FFFF00FFFF00FF
          5B5A5A6A69696C6B6B6C6B6B6867676362625B5A5A5353534F4E4E4E4D4D4D4C
          4C4D4C4CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentDoubleBuffered = False
        TabOrder = 10
        OnClick = BPendenciasClick
      end
      object btnCopy: TBitBtn
        Left = 907
        Top = 188
        Width = 90
        Height = 25
        Caption = 'Copy'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 11
        OnClick = btnCopyClick
      end
    end
    object TbConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      OnShow = TbConsultaShow
      object Label6: TLabel
        Left = 83
        Top = 5
        Width = 148
        Height = 13
        Caption = 'Pr'#233'-Cargas para libera'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 23
        Width = 320
        Height = 543
        DataSource = DsConsUsuTPreCarNLib
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_PRECAR'
            Title.Alignment = taCenter
            Title.Caption = 'Carga'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_DATGER'
            Title.Alignment = taCenter
            Title.Caption = 'Dat.Ger.'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOMUSU'
            Title.Alignment = taCenter
            Title.Caption = 'Usu'#225'rio'
            Width = 110
            Visible = True
          end>
      end
    end
  end
  object DsPreCarga: TDataSource
    AutoEdit = False
    DataSet = Dm1.CadUsu_TPreCar
    Left = 949
    Top = 349
  end
  object DsConsUsu_TIteCar: TDataSource
    DataSet = Dm1.ConsUsu_TIteCar
    Left = 949
    Top = 317
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
      
        'select codpro,codder,volder  from e075der where codpro = :codpro' +
        ' and'
      '                            codder = :codder')
    Left = 950
    Top = 285
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
  end
  object UltimoUsu_SeqIte: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from usu_titecar where usu_precar = :precar order by us' +
        'u_seqite desc')
    Left = 949
    Top = 253
    object UltimoUsu_SeqIteUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object UltimoUsu_SeqIteUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object UltimoUsu_SeqIteUSU_FILPED: TIntegerField
      FieldName = 'USU_FILPED'
    end
    object UltimoUsu_SeqIteUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object UltimoUsu_SeqIteUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object UltimoUsu_SeqIteUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object UltimoUsu_SeqIteUSU_HORGER: TIntegerField
      FieldName = 'USU_HORGER'
    end
    object UltimoUsu_SeqIteUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
  end
  object SeExisteUsu_TCorCar: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'numane'
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
      end
      item
        Name = 'codcor1'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codcor2'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tcorcar.* from usu_tcorcar'
      '                     where'
      '                     usu_numane = :numane and'
      '                     usu_codpro = :codpro and'
      '                     usu_codder = :codder and'
      '                     usu_codcor1 = :codcor1 and'
      '                     usu_codcor2 = :codcor2')
    Left = 955
    Top = 509
    object SeExisteUsu_TCorCarUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object SeExisteUsu_TCorCarUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object SeExisteUsu_TCorCarUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object SeExisteUsu_TCorCarUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object SeExisteUsu_TCorCarUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object SeExisteUsu_TCorCarUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object SeExisteUsu_TCorCarUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object SeExisteUsu_TCorCarUSU_SALABE1: TBCDField
      FieldName = 'USU_SALABE1'
      Precision = 11
      Size = 2
    end
    object SeExisteUsu_TCorCarUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object SeExisteUsu_TCorCarUSU_SALABE2: TBCDField
      FieldName = 'USU_SALABE2'
      Precision = 11
      Size = 2
    end
    object SeExisteUsu_TCorCarUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object SeExisteUsu_TCorCarUSU_CORCOR: TStringField
      FieldName = 'USU_CORCOR'
      Size = 1
    end
    object SeExisteUsu_TCorCarUSU_SELITE: TStringField
      FieldName = 'USU_SELITE'
      Size = 1
    end
    object SeExisteUsu_TCorCarUSU_QTDCOR1: TBCDField
      FieldName = 'USU_QTDCOR1'
      Precision = 11
      Size = 2
    end
    object SeExisteUsu_TCorCarUSU_QTDCOR2: TBCDField
      FieldName = 'USU_QTDCOR2'
      Precision = 11
      Size = 2
    end
  end
  object ConsUsuTPreCarNLib: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <>
    SQL.Strings = (
      'select usu_tprecar.*, r999usu.nomusu from usu_tprecar'
      'inner join r999usu on r999usu.codusu = usu_tprecar.usu_codusu'
      '                                    where'
      
        '                                    usu_tprecar.usu_carlib = '#39'N'#39 +
        ' and'
      
        '                                    usu_tprecar.usu_carimp = '#39'N'#39 +
        ' '
      
        '                                    order by usu_tprecar.usu_pre' +
        'car desc')
    Left = 949
    Top = 421
    object ConsUsuTPreCarNLibUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsUsuTPreCarNLibUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object ConsUsuTPreCarNLibUSU_HORGER: TIntegerField
      FieldName = 'USU_HORGER'
    end
    object ConsUsuTPreCarNLibUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object ConsUsuTPreCarNLibUSU_CARLIB: TStringField
      FieldName = 'USU_CARLIB'
      Size = 1
    end
    object ConsUsuTPreCarNLibUSU_DATLIB: TDateTimeField
      FieldName = 'USU_DATLIB'
    end
    object ConsUsuTPreCarNLibUSU_HORLIB: TIntegerField
      FieldName = 'USU_HORLIB'
    end
    object ConsUsuTPreCarNLibUSU_USULIB: TIntegerField
      FieldName = 'USU_USULIB'
    end
    object ConsUsuTPreCarNLibUSU_CARIMP: TStringField
      FieldName = 'USU_CARIMP'
      Size = 1
    end
    object ConsUsuTPreCarNLibNOMUSU: TStringField
      FieldName = 'NOMUSU'
      Size = 255
    end
  end
  object DsConsUsuTPreCarNLib: TDataSource
    DataSet = ConsUsuTPreCarNLib
    Left = 949
    Top = 381
  end
  object ValidaPreCarga: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tprecar where usu_precar = :precar')
    Left = 949
    Top = 461
    object ValidaPreCargaUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ValidaPreCargaUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object ValidaPreCargaUSU_HORGER: TIntegerField
      FieldName = 'USU_HORGER'
    end
    object ValidaPreCargaUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object ValidaPreCargaUSU_CARLIB: TStringField
      FieldName = 'USU_CARLIB'
      Size = 1
    end
    object ValidaPreCargaUSU_DATLIB: TDateTimeField
      FieldName = 'USU_DATLIB'
    end
    object ValidaPreCargaUSU_HORLIB: TIntegerField
      FieldName = 'USU_HORLIB'
    end
    object ValidaPreCargaUSU_USULIB: TIntegerField
      FieldName = 'USU_USULIB'
    end
    object ValidaPreCargaUSU_CARIMP: TStringField
      FieldName = 'USU_CARIMP'
      Size = 1
    end
  end
  object DsReserva: TDataSource
    Left = 928
    Top = 504
  end
end
