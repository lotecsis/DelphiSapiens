object FFormNivel: TFFormNivel
  Left = 192
  Top = 129
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Direito de Acessos '
  ClientHeight = 642
  ClientWidth = 929
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 929
    Height = 642
    ActivePage = TbNivAceUsu
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 115
    ExplicitHeight = 0
    object TbFormNivel: TTabSheet
      Caption = 'N'#237'vel Acesso x Formul'#225'rios'
      object DBGrid1: TDBGrid
        Left = 19
        Top = 33
        Width = 400
        Height = 540
        Align = alLeft
        DataSource = DsConsNivel
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
            Expanded = False
            FieldName = 'USU_CODNIV'
            Title.Caption = 'C'#243'digo'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_DESNIV'
            Title.Caption = 'Descri'#231#227'o'
            Width = 300
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 921
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Panel6: TPanel
          Left = 480
          Top = 0
          Width = 441
          Height = 33
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object Label2: TLabel
            Left = 194
            Top = 18
            Width = 65
            Height = 13
            Caption = 'Formul'#225'rios'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 417
          Height = 33
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            Left = 167
            Top = 17
            Width = 101
            Height = 13
            Caption = 'N'#237'veis de Acesso'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 33
        Width = 19
        Height = 540
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
      end
      object Panel2: TPanel
        Left = 0
        Top = 573
        Width = 921
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        object BMostrarNiv: TBitBtn
          Left = 20
          Top = 5
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
          TabOrder = 0
          OnClick = BMostrarNivClick
        end
        object Panel8: TPanel
          Left = 480
          Top = 0
          Width = 441
          Height = 41
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object BAdiciona: TBitBtn
            Left = 345
            Top = 6
            Width = 75
            Height = 25
            Caption = 'Adicionar'
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
            TabOrder = 0
            OnClick = BAdicionaClick
          end
          object BExclui: TBitBtn
            Left = 258
            Top = 6
            Width = 75
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
            TabOrder = 1
            OnClick = BExcluiClick
          end
        end
      end
      object Panel5: TPanel
        Left = 419
        Top = 33
        Width = 60
        Height = 540
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 4
      end
      object DBGrid2: TDBGrid
        Left = 479
        Top = 33
        Width = 421
        Height = 540
        Align = alRight
        DataSource = DsForNiv
        ReadOnly = True
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'USU_DESFOR'
            Title.Caption = 'Descri'#231#227'o'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_NOMFOR'
            Title.Caption = 'Nome'
            Width = 200
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 900
        Top = 33
        Width = 21
        Height = 540
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 6
      end
    end
    object TbNivAceUsu: TTabSheet
      Caption = 'N'#237'vel Acesso x Usu'#225'rios'
      ImageIndex = 1
      ExplicitWidth = 107
      ExplicitHeight = 506
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 921
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 107
        object Panel10: TPanel
          Left = 480
          Top = 0
          Width = 441
          Height = 33
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = -334
          object Label4: TLabel
            Left = 199
            Top = 18
            Width = 50
            Height = 13
            Caption = 'Usu'#225'rios'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 417
          Height = 33
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label3: TLabel
            Left = 167
            Top = 17
            Width = 101
            Height = 13
            Caption = 'N'#237'veis de Acesso'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object Panel12: TPanel
        Left = 900
        Top = 33
        Width = 21
        Height = 540
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 86
        ExplicitHeight = 432
      end
      object Panel13: TPanel
        Left = 19
        Top = 33
        Width = 881
        Height = 540
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitWidth = 67
        ExplicitHeight = 432
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 400
          Height = 540
          Align = alLeft
          DataSource = DsConsNivel
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'USU_CODNIV'
              Title.Caption = 'C'#243'digo'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_DESNIV'
              Title.Caption = 'Descri'#231#227'o'
              Width = 290
              Visible = True
            end>
        end
        object DBGrid4: TDBGrid
          Left = 460
          Top = 0
          Width = 421
          Height = 540
          Align = alRight
          DataSource = DsUsuNiv
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'USU_CODUSU'
              Title.Caption = 'C'#243'digo'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_NOMUSU'
              Title.Caption = 'Nome'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_LOGUSU'
              Title.Caption = 'Login'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_SITUSU'
              Title.Caption = 'Situa'#231#227'o'
              Visible = True
            end>
        end
        object Panel17: TPanel
          Left = 400
          Top = 0
          Width = 60
          Height = 540
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitWidth = 283
          ExplicitHeight = 432
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 573
        Width = 921
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        ExplicitTop = 465
        ExplicitWidth = 107
        object Panel15: TPanel
          Left = 480
          Top = 0
          Width = 441
          Height = 41
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = -334
          object BAddUsu: TBitBtn
            Left = 345
            Top = 6
            Width = 75
            Height = 25
            Caption = 'Adicionar'
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
            TabOrder = 0
            OnClick = BAddUsuClick
          end
        end
      end
      object Panel16: TPanel
        Left = 0
        Top = 33
        Width = 19
        Height = 540
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 4
        ExplicitHeight = 432
      end
    end
  end
  object DsConsNivel: TDataSource
    DataSet = Dm.ConsUsu_TNivAce2
    Left = 420
  end
  object DsForNiv: TDataSource
    DataSet = Dm.ConsUsu_TForNiv
    Left = 312
  end
  object DsUsuNiv: TDataSource
    DataSet = Dm.ConsUsu_TR999usuNiv
    Left = 384
  end
end
