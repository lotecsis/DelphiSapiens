object FLogBaxaCorte: TFLogBaxaCorte
  Left = 324
  Top = 130
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Movimentos no Dep'#243'sito 1001.1'
  ClientHeight = 565
  ClientWidth = 623
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
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 623
    Height = 565
    ActivePage = TbHistorico
    Align = alClient
    TabOrder = 0
    object TbBaxaMov: TTabSheet
      Caption = '&Movimentos'
      OnShow = TbBaxaMovShow
      object DBGrid: TDBGrid
        Left = 0
        Top = 8
        Width = 610
        Height = 495
        DataSource = DsConUsu_TLogBaxBAx
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODPRO'
            Title.Alignment = taCenter
            Title.Caption = 'Cor'
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDMOV'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Mov'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_TIPMOV'
            Title.Alignment = taCenter
            Title.Caption = 'E/S'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_MOTMOV'
            Title.Alignment = taCenter
            Title.Caption = 'Motivo'
            Width = 300
            Visible = True
          end>
      end
      object BExportaBaxas: TBitBtn
        Left = 517
        Top = 503
        Width = 85
        Height = 31
        Caption = '&Exporta'
        DoubleBuffered = True
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
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BExportaBaxasClick
      end
    end
    object TbBaixasPen: TTabSheet
      Caption = 'Baixar do 1001.1'
      ImageIndex = 1
      OnShow = TbBaixasPenShow
      object DBGrid1: TDBGrid
        Left = 0
        Top = 8
        Width = 610
        Height = 495
        DataSource = DsConsUsu_TLogBaxPen
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODPRO'
            Title.Alignment = taCenter
            Title.Caption = 'Cor'
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDMOV'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Mov'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_TIPMOV'
            Title.Alignment = taCenter
            Title.Caption = 'E/S'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_MOTMOV'
            Title.Alignment = taCenter
            Title.Caption = 'Motivo'
            Width = 300
            Visible = True
          end>
      end
      object BConfirma: TBitBtn
        Left = 510
        Top = 508
        Width = 100
        Height = 25
        Caption = '&Confirmar'
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
        TabOrder = 1
        OnClick = BConfirmaClick
      end
      object BConfTodos: TBitBtn
        Left = 387
        Top = 508
        Width = 118
        Height = 25
        Caption = 'Confirmar &Todos'
        DoubleBuffered = True
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000F8F8F8C5C5C5BEBDBDBFBFBFC8C8
          C8CDCDCDCDCDCDCBCBCBC8C8C8C8C8C8C9C9C9C8C8C8BABAB9BABAB9BAB9B9CD
          CDCDFFFFFFFFFFFF0000C8C8C82D2A280F09070D0705696867717070524F4E6B
          69698383837F7F7F808080808080201A180F0806110A082E2A28FDFDFDFFFFFF
          0000ABA9A9231C1A211A181F1715858383635F5E140C085A54549F9DA0999899
          979797979797332D2A201916251D1B413B39FDFDFDFFFFFF0000ABAAA927201E
          27201D251D1A8C8B8A6D6968221615424A3D5D83609B9B9CA4A1A49E9E9D3932
          30261F1B28211E453F3DFDFDFDFFFFFF0000ABABAA2D25222D25222A221F9998
          97787172262A1E3E773F328035388740A8AAA9ACA8AC4039362C242129211E46
          3F3DFDFDFDFFFFFF0000ACABAB322A27332B273028249D979972797037723842
          89442F913303A6134FB959AAACAA453A3A2D26222C24214A4441FDFDFDFFFFFF
          0000ACABAB37302C362E2A3329274047393C7F403583383791392EB3352BD13B
          45F2565EB96537302C31272538302C4D4744FDFDFDFFFFFF0000ADACAC3B322E
          4A403C685C5B5C7D59528E5050905032AA362FCA3950D9607EE78495DD976D7B
          675B4F4C3F3532524A47FDFDFDFFFFFF0000ADACAC39302D877B74E7DED5DED3
          CDE4D2D1B4C6A926B92E2DDD3C78E282DDCBCADCD0CAE3D9D1C9BFB7463C3954
          4C4BFDFDFDFFFFFF0000AEADAC3D34318E837DE8DFD8E1D7D1E8D8D7B5CCAC1F
          C82B2DE83E8DEE94E1D5D0E1D7D1E3DAD4CDC4BD4D433F58504DFDFDFDFFFFFF
          0000AEADAD413835938883EFE7E1E7E0DAEEE1E0BAD5B319D1272AEC3C96F09D
          E6DED9E8E0DAEAE3DDD3CAC45247445B5351FDFDFDFFFFFF0000AEAEAD453C39
          978D88F4EEEAECE7E3F3E9E9BDDBBA12D22120EA328CF195ECE5E3EDE7E3EFEB
          E7D8D1CC574D485F5854FDFDFDFFFFFF0000AFAEAE4A413D9C928DF9F4F2F2ED
          EBFAEFF2C1DEBF0BCA1913DD247CEE87FBEDF2F8EEF0F8F1F1DDD7D35C524D62
          5756FDFDFDFFFFFF0000AFAEAE4D4341A09893FEFBF9F6F4F2FEF7F9C3E0C303
          B70E08C51663D072D4ECD4DBF2DAEBF7E9DEDDD760545167615DFDFEFDFFFFFF
          0000AFAEAE504643A39B96FFFFFFFFFFFFFFFFFFC9E5CB00970503A20A2FC440
          44DC556CF07AB5FFBDDDE5DA695359707767FBFEFBFFFFFF0000C9C8C887817F
          B4AFACEAEAE8E6E5E4EDE9EBBBD0BC027505016F0301930606AB0D23BD2C72D5
          79ACD5AB7C917588A483FCFEFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFD4DDD4206E271E75262085281E99283AB1438DD492EBF7ECFFFFFFFF
          FFFFFDFEFDFEFEFE0000}
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = BConfTodosClick
      end
    end
    object TbBax1001: TTabSheet
      Caption = 'Baixar do 1001'
      ImageIndex = 5
      OnShow = TbBax1001Show
      object DBGrid5: TDBGrid
        Left = 0
        Top = 8
        Width = 610
        Height = 495
        DataSource = DsConsUsu_TLogBaxPerca
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
            Title.Caption = 'Cor'
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDMOV'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Mov'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_TIPMOV'
            Title.Alignment = taCenter
            Title.Caption = 'E/S'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_MOTMOV'
            Title.Alignment = taCenter
            Title.Caption = 'Motivo'
            Width = 300
            Visible = True
          end>
      end
      object BConfTodosPerca: TBitBtn
        Left = 510
        Top = 508
        Width = 100
        Height = 25
        Caption = 'Confirmar'
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
        TabOrder = 1
        OnClick = BConfTodosPercaClick
      end
    end
    object TbTrans1001_1: TTabSheet
      Caption = 'Transferir 1001  --> 1001.1'
      ImageIndex = 2
      OnShow = TbTrans1001_1Show
      object DBGrid3: TDBGrid
        Left = 0
        Top = 8
        Width = 610
        Height = 495
        DataSource = DsConsUsu_TLogBax1001
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
            Title.Caption = 'Cor'
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDMOV'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Mov'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_TIPMOV'
            Title.Alignment = taCenter
            Title.Caption = 'E/S'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_MOTMOV'
            Title.Alignment = taCenter
            Title.Caption = 'Motivo'
            Width = 300
            Visible = True
          end>
      end
      object BConfTodos1001: TBitBtn
        Left = 510
        Top = 508
        Width = 100
        Height = 25
        Caption = 'Confirmar'
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
        TabOrder = 1
        OnClick = BConfTodos1001Click
      end
    end
    object TbTrans1001: TTabSheet
      Caption = 'Transferir 1001.1  --> 1001'
      ImageIndex = 3
      OnShow = TbTrans1001Show
      object DBGrid4: TDBGrid
        Left = 0
        Top = 8
        Width = 610
        Height = 495
        DataSource = DsConsUsu_TLogBax1001_1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
            Title.Caption = 'Cor'
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDMOV'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Mov'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_TIPMOV'
            Title.Alignment = taCenter
            Title.Caption = 'E/S'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_MOTMOV'
            Title.Alignment = taCenter
            Title.Caption = 'Motivo'
            Width = 300
            Visible = True
          end>
      end
      object BConfTodos1001_1: TBitBtn
        Left = 510
        Top = 508
        Width = 100
        Height = 25
        Caption = 'Confirmar'
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
        TabOrder = 1
        OnClick = BConfTodos1001_1Click
      end
    end
    object TbHistorico: TTabSheet
      Caption = 'Historico'
      ImageIndex = 4
      object Panel1: TPanel
        Left = 1
        Top = 3
        Width = 609
        Height = 69
        BevelOuter = bvLowered
        TabOrder = 0
        object BMostrar: TSpeedButton
          Left = 510
          Top = 40
          Width = 81
          Height = 25
          Caption = 'Mostrar'
          OnClick = BMostrarClick
        end
        object Label1: TLabel
          Left = 53
          Top = 15
          Width = 40
          Height = 13
          Caption = 'Tecido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 5
          Top = 48
          Width = 88
          Height = 13
          Caption = 'Tip. Movimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 264
          Top = 15
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
        object EdTecido: TEdit
          Left = 99
          Top = 8
          Width = 121
          Height = 21
          TabOrder = 0
          OnExit = EdTecidoExit
        end
        object EdTipoMov: TComboBox
          Left = 99
          Top = 40
          Width = 65
          Height = 22
          Style = csOwnerDrawFixed
          ItemIndex = 0
          TabOrder = 1
          Text = 'Todos'
          Items.Strings = (
            'Todos'
            'Sa'#237'da'
            'Entrada')
        end
        object EdData1: TDateEdit
          Left = 317
          Top = 8
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
        end
        object EdData2: TDateEdit
          Left = 472
          Top = 8
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 3
        end
      end
      object DBGrid2: TDBGrid
        Left = 8
        Top = 80
        Width = 593
        Height = 420
        DataSource = DsConsHistUsu_TLogBax
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
            FieldName = 'USU_SEQLOG'
            Title.Alignment = taCenter
            Title.Caption = 'Seq.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODPRO'
            Title.Alignment = taCenter
            Title.Caption = 'Tecido'
            Width = 90
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
            FieldName = 'USU_TIPMOV'
            Title.Alignment = taCenter
            Title.Caption = 'E/S'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_DATFEC'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_USUFEC'
            Title.Alignment = taCenter
            Title.Caption = 'Usu'#225'rio'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_NOMUSU'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_MOTMOV'
            Title.Alignment = taCenter
            Title.Caption = 'Motivo'
            Width = 300
            Visible = True
          end>
      end
    end
  end
  object DsConsUsu_TLogBaxBax: TDataSource
    DataSet = Dm1.ConsUsu_TLogBaxBax
    Left = 728
    Top = 16
  end
  object DsConUsu_TLogBaxBAx: TDataSource
    DataSet = Dm1.ConsUsu_TLogBaxBax
    Left = 124
    Top = 160
  end
  object DsConsUsu_TLogBaxPen: TDataSource
    DataSet = Dm1.ConsUsu_TLogBaxPen
    Left = 212
    Top = 120
  end
  object DsConsHistUsu_TLogBax: TDataSource
    DataSet = Dm1.ConsHistUsu_TLogBax
    Left = 268
    Top = 192
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
    Left = 340
    Top = 136
    object ValidaCorCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
  end
  object ConsUsu_TLogBax1001: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select usu_tlogbax.*  from usu_tlogbax'
      '                                   where usu_sitlog = '#39'T'#39' and'
      
        '                                              usu_motmov = '#39'TRAN' +
        'SFERIR 1001 --> 1001.1 '#39
      
        '                                   order by usu_codpro,usu_tipmo' +
        'v')
    Left = 312
    Top = 312
    object ConsUsu_TLogBax1001USU_SEQLOG: TIntegerField
      FieldName = 'USU_SEQLOG'
    end
    object ConsUsu_TLogBax1001USU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TLogBax1001USU_QTDMOV: TBCDField
      FieldName = 'USU_QTDMOV'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TLogBax1001USU_SITLOG: TStringField
      FieldName = 'USU_SITLOG'
      Size = 1
    end
    object ConsUsu_TLogBax1001USU_DATFEC: TDateTimeField
      FieldName = 'USU_DATFEC'
    end
    object ConsUsu_TLogBax1001USU_HORFEC: TIntegerField
      FieldName = 'USU_HORFEC'
    end
    object ConsUsu_TLogBax1001USU_USUFEC: TIntegerField
      FieldName = 'USU_USUFEC'
    end
    object ConsUsu_TLogBax1001USU_TIPMOV: TStringField
      FieldName = 'USU_TIPMOV'
      Size = 1
    end
    object ConsUsu_TLogBax1001USU_MOTMOV: TStringField
      FieldName = 'USU_MOTMOV'
      Size = 100
    end
  end
  object DsConsUsu_TLogBax1001: TDataSource
    DataSet = ConsUsu_TLogBax1001
    Left = 312
    Top = 360
  end
  object DsConsUsu_TLogBax1001_1: TDataSource
    DataSet = ConsUsu_TLogBax1001_1
    Left = 448
    Top = 360
  end
  object ConsUsu_TLogBax1001_1: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select usu_tlogbax.*  from usu_tlogbax'
      '                                   where usu_sitlog = '#39'T'#39' and'
      
        '                                              usu_motmov = '#39'TRAN' +
        'SFERIR 1001.1 --> 1001 '#39
      
        '                                   order by usu_codpro,usu_tipmo' +
        'v')
    Left = 448
    Top = 312
    object ConsUsu_TLogBax1001_1USU_SEQLOG: TIntegerField
      FieldName = 'USU_SEQLOG'
    end
    object ConsUsu_TLogBax1001_1USU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TLogBax1001_1USU_QTDMOV: TBCDField
      FieldName = 'USU_QTDMOV'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TLogBax1001_1USU_SITLOG: TStringField
      FieldName = 'USU_SITLOG'
      Size = 1
    end
    object ConsUsu_TLogBax1001_1USU_DATFEC: TDateTimeField
      FieldName = 'USU_DATFEC'
    end
    object ConsUsu_TLogBax1001_1USU_HORFEC: TIntegerField
      FieldName = 'USU_HORFEC'
    end
    object ConsUsu_TLogBax1001_1USU_USUFEC: TIntegerField
      FieldName = 'USU_USUFEC'
    end
    object ConsUsu_TLogBax1001_1USU_TIPMOV: TStringField
      FieldName = 'USU_TIPMOV'
      Size = 1
    end
    object ConsUsu_TLogBax1001_1USU_MOTMOV: TStringField
      FieldName = 'USU_MOTMOV'
      Size = 100
    end
  end
  object ConsUsu_TLogBaxPerca: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select usu_tlogbax.*  from usu_tlogbax'
      '                                   where usu_sitlog = '#39'T'#39' and'
      
        '                                             ( usu_motmov = '#39'PER' +
        'CA PROCESSO DE PRODUCAO'#39' or'
      
        '                                                usu_motmov ='#39'ASS' +
        'ISTENCIA TECNICA'#39' or'
      
        '                                                usu_motmov = '#39'PR' +
        'ODUCAO REGIAO'#39' or '
      
        '                                                usu_motmov ='#39'PRO' +
        'TOTIPOS'#39')'
      
        '                                       order by usu_codpro,usu_t' +
        'ipmov'
      ''
      ''
      ''
      ''
      '')
    Left = 176
    Top = 320
    object ConsUsu_TLogBaxPercaUSU_SEQLOG: TIntegerField
      FieldName = 'USU_SEQLOG'
    end
    object ConsUsu_TLogBaxPercaUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TLogBaxPercaUSU_QTDMOV: TBCDField
      FieldName = 'USU_QTDMOV'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TLogBaxPercaUSU_SITLOG: TStringField
      FieldName = 'USU_SITLOG'
      Size = 1
    end
    object ConsUsu_TLogBaxPercaUSU_DATFEC: TDateTimeField
      FieldName = 'USU_DATFEC'
    end
    object ConsUsu_TLogBaxPercaUSU_HORFEC: TIntegerField
      FieldName = 'USU_HORFEC'
    end
    object ConsUsu_TLogBaxPercaUSU_USUFEC: TIntegerField
      FieldName = 'USU_USUFEC'
    end
    object ConsUsu_TLogBaxPercaUSU_TIPMOV: TStringField
      FieldName = 'USU_TIPMOV'
      Size = 1
    end
    object ConsUsu_TLogBaxPercaUSU_MOTMOV: TStringField
      FieldName = 'USU_MOTMOV'
      Size = 100
    end
  end
  object DsConsUsu_TLogBaxPerca: TDataSource
    DataSet = ConsUsu_TLogBaxPerca
    Left = 160
    Top = 368
  end
end
