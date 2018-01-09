object FLigProdutos_Cores: TFLigProdutos_Cores
  Left = 0
  Top = 0
  Caption = 'Liga'#231#227'o de Produtos x Cores'
  ClientHeight = 626
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 694
    Height = 626
    ActivePage = TbConsulta
    Align = alClient
    TabOrder = 0
    object TbLigacoes: TTabSheet
      Caption = 'Liga'#231#245'es'
      object Label1: TLabel
        Left = 12
        Top = 21
        Width = 30
        Height = 15
        Caption = 'Cor..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdCodCor1: TEdit
        Left = 48
        Top = 13
        Width = 106
        Height = 23
        TabOrder = 0
        OnExit = EdCodCor1Exit
      end
      object Panel1: TPanel
        Left = 528
        Top = 44
        Width = 136
        Height = 111
        BevelOuter = bvLowered
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 10
          Width = 104
          Height = 15
          Caption = 'Tirar Cor de Linha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdCodCor2: TEdit
          Left = 8
          Top = 40
          Width = 121
          Height = 23
          TabOrder = 0
        end
        object BTiraDeLinha: TBitBtn
          Left = 19
          Top = 69
          Width = 100
          Height = 25
          Caption = 'Processar'
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
          OnClick = BTiraDeLinhaClick
        end
      end
      object BAddLig: TBitBtn
        Left = 307
        Top = 568
        Width = 100
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
        TabOrder = 2
        OnClick = BAddLigClick
      end
      object BExcLig: TBitBtn
        Left = 413
        Top = 568
        Width = 100
        Height = 25
        Caption = 'Excluir'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          ADE4FF4FC5FF26B7FF26B7FF26B7FF26B7FF26B7FF26B7FF26B7FF26B7FF4FC5
          FFADE4FFFFFFFFFFFFFFFFFFFFFFFFFF34BCFF25B5FF34BDFF64D4FF77DCFF6E
          DCFF61DDFF67E1FF64DFFF44CFFF32C2FF34BCFFFFFFFFFFFFFFFFFFFFFFFFFF
          26B7FF4EC8FF64D4FF9EE8FFB8F0FFA5EEFF8CECFF90EEFF8DEDFF70E1FF33C2
          FF26B7FFFFFFFFFFFFFFFFFFFFFFFFFF26B7FF73D6FF61D3FF9AE6FFB5EFFF9E
          EBFF2034AB0202930202930202930202930202930202933232A7FFFFFFFFFFFF
          26B7FF8CDEFF5ED3FF96E5FFB0EDFF97E8FF0A0A987272F37575F46C6CF43E3E
          E31616C50303AA020293FFFFFFFFFFFF26B7FFA5E5FF59D2FF91E4FFABEAFF8E
          E4FF1C32AB0A0A980A0A980A0A980A0A980A0A980A0A983232A7FFFFFFFFFFFF
          26B7FFBEECFF5ED4FF8CE3FFA6EAFF85E1FF59D7FF58D6FF56D6FF46CDFF4CC8
          FF26B7FFFFFFFFFFFFFFFFFFFFFFFFFF2FBAFF96DEFFC2EDFFD2F4FFD5F5FFD4
          F5FFD2F4FFD2F4FFD2F4FFCEF1FF92DDFF2FBAFFFFFFFFFFFFFFFFFFFFFFFFFF
          2FBAFF22B4FF2FBDFF4ACBFF58D3FF56D5FF51D8FF57DCFF54DAFF42CEFF2DC0
          FF2FBAFFFFFFFFFFFFFFFFFFFFFFFFFF26B7FF47C4FF62D3FF9DE8FFB9F0FFA6
          EEFF8EECFF92EFFF8FEDFF71E2FF33C3FF27BBFFFFFFFFFFFFFFFFFFFFFFFFFF
          26B7FF70D5FF60D3FF9AE6FFB6EFFFA0ECFF83E7FF85E9FF82E8FF68DEFF32C1
          FF27BBFFFFFFFFFFFFFFFFFFFFFFFFFF26B7FF88DCFF5DD2FF96E5FFB1EDFF99
          E9FF77E2FF76E3FF74E2FF5ED9FF2EBEFF27BBFFFFFFFFFFFFFFFFFFFFFFFFFF
          26B7FFA1E4FF59D2FF91E3FFACEBFF90E5FF69DDFF68DDFF67DDFF53D3FF29BA
          FF27BBFFFFFFFFFFFFFFFFFFFFFFFFFF26B7FFBAEBFF54D2FF8CE3FFA7E9FF88
          E2FF5CD7FF5AD7FF58D7FF48CEFF39C0FF27BBFFFFFFFFFFFFFFFFFFFFFFFFFF
          34BCFFABE5FFC6F0FFC1F0FFCBF3FFC1F0FFB3ECFFB2ECFFB1ECFFBDEEFFA0E4
          FF37BEFFFFFFFFFFFFFFFFFFFFFFFFFFADE4FF4FC5FF26B7FF26B7FF26B7FF26
          B7FF26B7FF26B7FF26B7FF26B7FF41C0FFADE4FFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = BExcLigClick
      end
      object dbg1: TDBGrid
        Left = 48
        Top = 42
        Width = 464
        Height = 492
        DataSource = DsClientProdutos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Times New Roman'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CodPro'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Produto'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DesPro'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodDer'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Deriva'#231#227'o'
            Width = 88
            Visible = True
          end>
      end
      object edtCodPro: TEdit
        Left = 48
        Top = 541
        Width = 114
        Height = 23
        Alignment = taCenter
        TabOrder = 5
        OnExit = edtCodProExit
      end
      object edtDesPro: TEdit
        Left = 163
        Top = 541
        Width = 349
        Height = 23
        TabStop = False
        ReadOnly = True
        TabOrder = 6
      end
      object btnAddClientProduto: TBitBtn
        Left = 513
        Top = 540
        Width = 144
        Height = 25
        Caption = '+'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 7
        OnClick = btnAddClientProdutoClick
      end
      object btnConsPro: TBitBtn
        Left = 140
        Top = 542
        Width = 19
        Height = 21
        Caption = '...'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 8
        OnClick = btnConsProClick
      end
      object dbgDerivacoes: TDBGrid
        Left = 512
        Top = 336
        Width = 145
        Height = 198
        DataSource = dsClientDerivacoes
        Options = [dgIndicator, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Times New Roman'
        TitleFont.Style = []
        OnCellClick = dbgDerivacoesCellClick
        OnDrawColumnCell = dbgDerivacoesDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'vaImg'
            Title.Caption = ' '
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodDer'
            Width = 85
            Visible = True
          end>
      end
    end
    object TbConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object Label3: TLabel
        Left = 241
        Top = 27
        Width = 53
        Height = 15
        Caption = 'Produto..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LDsCodPro: TLabel
        Left = 430
        Top = 22
        Width = 3
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 193
        Top = 237
        Width = 40
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
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
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 193
        Top = 273
        Width = 40
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
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
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object EdCodPro: TEdit
        Left = 300
        Top = 19
        Width = 121
        Height = 23
        TabOrder = 0
        OnExit = EdCodProExit
      end
      object DBGrid1: TDBGrid
        Left = 7
        Top = 48
        Width = 180
        Height = 540
        DataSource = DsConsTecLig
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Times New Roman'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'USU_CODTEC'
            Title.Alignment = taCenter
            Title.Caption = 'ATIVOS'
            Width = 140
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 241
        Top = 48
        Width = 180
        Height = 540
        DataSource = DsConsTecDes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Times New Roman'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODPRO'
            Title.Alignment = taCenter
            Title.Caption = 'INATIVOS'
            Width = 140
            Visible = True
          end>
      end
      object BMostrar: TBitBtn
        Left = 608
        Top = 1
        Width = 75
        Height = 25
        Caption = 'Mostrar'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BMostrarClick
      end
      object BPesqProd: TBitBtn
        Left = 400
        Top = 21
        Width = 19
        Height = 19
        Caption = '...'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 4
        TabStop = False
        OnClick = BPesqProdClick
      end
      object dbg2: TDBGrid
        Left = 420
        Top = 48
        Width = 117
        Height = 247
        DataSource = dsConsDer
        Options = [dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Times New Roman'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODDER'
            Title.Caption = ' '
            Width = 80
            Visible = True
          end>
      end
    end
  end
  object DsClientProdutos: TDataSource
    DataSet = DmOra.ClientProdutos
    Left = 632
    Top = 280
  end
  object DsLivre: TDataSource
    Left = 600
    Top = 168
  end
  object ConsTecLig: TADOQuery
    Connection = DmOra.ADOBanco
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
      
        'select usu_codtec from usu_tdercor where usu_codpro = :codpro an' +
        'd'
      '                                         usu_codder = :codder'
      '                                         order by usu_codtec')
    Left = 280
    Top = 280
    object ConsTecLigUSU_CODTEC: TStringField
      FieldName = 'USU_CODTEC'
      Size = 14
    end
  end
  object DsConsTecLig: TDataSource
    DataSet = ClientConsTecLig
    Left = 272
    Top = 472
  end
  object ConsTecDes: TADOQuery
    Connection = DmOra.ADOBanco
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
      'select e075pro.codpro from e075pro'
      '                           where'
      
        '                           e075pro.codfam in ('#39'1001'#39','#39'1002'#39','#39'100' +
        '3'#39','#39'1004'#39','#39'1005'#39','#39'1006'#39','#39'1007'#39') and'
      '                           e075pro.sitpro = '#39'A'#39' and'
      
        '                           e075pro.codpro not in (select usu_cod' +
        'tec from usu_tdercor where usu_codpro = :codpro and'
      
        '                                                  usu_codder = :' +
        'codder)'
      '                           order by e075pro.codpro')
    Left = 392
    Top = 280
    object ConsTecDesCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
  end
  object DsConsTecDes: TDataSource
    DataSet = ClientConsTecDes
    Left = 392
    Top = 480
  end
  object ClientDerivacoes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 560
    Top = 256
    Data = {
      500000009619E0BD010000001800000002000000000003000000500006436F64
      4465720100490000000100055749445448020002000E0006696E4368656B0100
      4900000001000557494454480200020003000000}
    object ClientDerivacoesCodDer: TStringField
      FieldName = 'CodDer'
      Size = 14
    end
    object ClientDerivacoesinChek: TStringField
      FieldName = 'inChek'
      Size = 3
    end
    object ClientDerivacoesvaImg: TStringField
      FieldKind = fkCalculated
      FieldName = 'vaImg'
      Size = 10
      Calculated = True
    end
  end
  object dsClientDerivacoes: TDataSource
    DataSet = ClientDerivacoes
    Left = 560
    Top = 304
  end
  object ConsDer: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsDerAfterScroll
    Parameters = <
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CODDER'
      '  FROM E075DER'
      '  WHERE'
      '    CODPRO = :CODPRO AND'
      '    SITDER = '#39'A'#39
      '    ORDER BY CODDER')
    Left = 448
    Top = 176
    object ConsDerCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
  end
  object dsConsDer: TDataSource
    DataSet = ConsDer
    Left = 448
    Top = 224
  end
  object ClientConsTecDes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderConsTecDes'
    Left = 392
    Top = 408
    object ClientConsTecDesCODPRO: TStringField
      Alignment = taCenter
      FieldName = 'CODPRO'
      Size = 14
    end
  end
  object ProviderConsTecDes: TDataSetProvider
    DataSet = ConsTecDes
    Left = 392
    Top = 344
  end
  object ProviderConsTecLig: TDataSetProvider
    DataSet = ConsTecLig
    Left = 280
    Top = 336
  end
  object ClientConsTecLig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderConsTecLig'
    Left = 280
    Top = 400
    object ClientConsTecLigUSU_CODTEC: TStringField
      Alignment = taCenter
      FieldName = 'USU_CODTEC'
      Size = 14
    end
  end
end
