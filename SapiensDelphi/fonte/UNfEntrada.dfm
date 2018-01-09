object FNfEntrada: TFNfEntrada
  Left = 0
  Top = 0
  Caption = 'FNfEntrada'
  ClientHeight = 416
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 792
    Height = 416
    ActivePage = TbGerais
    Align = alClient
    TabOrder = 0
    OnChange = PaginaControleChange
    object TbGerais: TTabSheet
      Caption = 'Dados Gerais'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 784
        Height = 388
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 111
          Top = 21
          Width = 27
          Height = 13
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 108
          Top = 46
          Width = 30
          Height = 13
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 71
          Top = 72
          Width = 67
          Height = 13
          Caption = 'Fornecedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 75
          Top = 98
          Width = 63
          Height = 13
          Caption = 'Nota Fiscal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 106
          Top = 124
          Width = 32
          Height = 13
          Caption = 'S'#233'rie:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 197
          Top = 19
          Width = 54
          Height = 13
          Caption = 'NF Entrada'
        end
        object Label7: TLabel
          Left = 14
          Top = 150
          Width = 124
          Height = 13
          Caption = 'Vlr L'#237'quido Informado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 91
          Top = 177
          Width = 47
          Height = 13
          Caption = 'Entrada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 89
          Top = 204
          Width = 49
          Height = 13
          Caption = 'Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 72
          Top = 231
          Width = 67
          Height = 13
          Caption = 'Trans.Prod.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 72
          Top = 258
          Width = 67
          Height = 13
          Caption = 'Trans.Serv.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 89
          Top = 285
          Width = 49
          Height = 13
          Caption = 'C.Pagto.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LDsCodFor: TLabel
          Left = 239
          Top = 72
          Width = 3
          Height = 13
        end
        object LDsCodSnf: TLabel
          Left = 228
          Top = 123
          Width = 3
          Height = 13
        end
        object LDsTnsPro: TLabel
          Left = 229
          Top = 231
          Width = 3
          Height = 13
        end
        object LDsTnsSer: TLabel
          Left = 230
          Top = 258
          Width = 3
          Height = 13
        end
        object LDsCodCpg: TLabel
          Left = 229
          Top = 285
          Width = 3
          Height = 13
        end
        object EdCnpj: TMaskEdit
          Left = 143
          Top = 38
          Width = 110
          Height = 21
          EditMask = '99.999.999/9999-99;0;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 18
          ParentFont = False
          TabOrder = 0
          OnExit = EdCnpjExit
        end
        object EdCodFor: TEdit
          Left = 143
          Top = 64
          Width = 90
          Height = 21
          TabOrder = 1
          OnExit = EdCodForExit
          OnKeyDown = EdCodForKeyDown
        end
        object EdNumNfc: TEdit
          Left = 143
          Top = 90
          Width = 90
          Height = 21
          TabOrder = 2
        end
        object EdCodSnf: TEdit
          Left = 143
          Top = 116
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          OnExit = EdCodSnfExit
          OnKeyDown = EdCodSnfKeyDown
        end
        object EdTipNfc: TComboBox
          Left = 144
          Top = 11
          Width = 47
          Height = 22
          Style = csOwnerDrawFixed
          ItemIndex = 0
          TabOrder = 10
          TabStop = False
          Text = '1'
          Items.Strings = (
            '1')
        end
        object BCodFor: TBitBtn
          Left = 213
          Top = 65
          Width = 19
          Height = 19
          Caption = '...'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 11
          TabStop = False
          OnClick = BCodForClick
        end
        object BCodSnf: TBitBtn
          Left = 203
          Top = 117
          Width = 19
          Height = 19
          Caption = '...'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 12
          TabStop = False
          OnClick = BCodSnfClick
        end
        object EdVlrInf: TCurrencyEdit
          Left = 144
          Top = 142
          Width = 100
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 4
        end
        object EdDatEnt: TDateEdit
          Left = 144
          Top = 169
          Width = 90
          Height = 21
          NumGlyphs = 2
          TabOrder = 5
        end
        object EdDatEmi: TDateEdit
          Left = 144
          Top = 196
          Width = 90
          Height = 21
          NumGlyphs = 2
          TabOrder = 6
          OnExit = EdDatEmiExit
        end
        object EdTnsPro: TEdit
          Left = 144
          Top = 223
          Width = 80
          Height = 21
          TabOrder = 7
          OnExit = EdTnsProExit
          OnKeyDown = EdTnsProKeyDown
        end
        object EdTnsSer: TEdit
          Left = 144
          Top = 250
          Width = 80
          Height = 21
          TabOrder = 8
          OnExit = EdTnsSerExit
          OnKeyDown = EdTnsSerKeyDown
        end
        object EdCodCpg: TEdit
          Left = 143
          Top = 277
          Width = 80
          Height = 21
          TabOrder = 9
          OnExit = EdCodCpgExit
          OnKeyDown = EdCodCpgKeyDown
        end
        object BCodCpg: TBitBtn
          Left = 203
          Top = 278
          Width = 19
          Height = 19
          Caption = '...'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 13
          TabStop = False
          OnClick = BCodCpgClick
        end
        object BTnsPro: TBitBtn
          Left = 204
          Top = 224
          Width = 19
          Height = 19
          Caption = '...'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 14
          TabStop = False
          OnClick = BTnsProClick
        end
        object BTnsSer: TBitBtn
          Left = 204
          Top = 251
          Width = 19
          Height = 19
          Caption = '...'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 15
          TabStop = False
          OnClick = BTnsSerClick
        end
        object Panel1: TPanel
          Left = 681
          Top = 0
          Width = 103
          Height = 388
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 16
          object CategoryPanelGroup1: TCategoryPanelGroup
            Left = 0
            Top = 0
            Width = 103
            Height = 200
            VertScrollBar.Tracking = True
            Align = alTop
            ChevronHotColor = clWhite
            Color = clWhite
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            TabOrder = 0
            object CategoryPanel1: TCategoryPanel
              Top = 0
              Height = 198
              Caption = 'Op'#231#245'es'
              Color = clWhite
              TabOrder = 0
              object BProcessar: TBitBtn
                Left = 0
                Top = 2
                Width = 100
                Height = 25
                Caption = 'Processar'
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
                TabOrder = 0
                TabStop = False
                OnClick = BProcessarClick
              end
              object Bprodutos: TBitBtn
                Left = 0
                Top = 26
                Width = 100
                Height = 25
                Caption = 'Produtos'
                DoubleBuffered = True
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  AF9E7FAC9A7BAA9777A69373A4906EA08E6A9E8A669C876398835E96805AFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  AF9E7FAC9A7BAA9777A69373A4906EA08E6A9E8A669C876398835E96805AFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFF10568A10568ABFD2E0FFFFFFFFFFFFAF9E7EAB9978A69573A38F6C9F8A
                  679A866097815BFFFFFFFFFFFF10568A004B82004B821465B3004B827FA5C0FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004B82
                  6DB9F878C1FC4CA1FB1666C2004B82FFFFFFAF9E7EAB9978A69573A38F6C9F8A
                  679A866097815BFFFFFFFFFFFF10568A004B82004B82267ABC004B82709AB9FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFF10568A10568AAFC7D8FFFFFFFFFFFFAF9E7EAB9978A69573A38F6C9F8A
                  679A866097815BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  AF9E7FAC9A7BAA9777A69373A4906EA08E6A9E8A669C876398835E96805AFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  AF9E7FAC9A7BAA9777A69373A4906EA08E6A9E8A669C876398835E96805AFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                ParentDoubleBuffered = False
                TabOrder = 1
                OnClick = BprodutosClick
              end
              object BCanSaldo: TBitBtn
                Left = 0
                Top = 50
                Width = 100
                Height = 25
                Caption = 'Canc.Saldo OC'
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 2
                OnClick = BCanSaldoClick
              end
            end
          end
        end
      end
    end
    object TbProdutos: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 1
      OnShow = TbProdutosShow
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 784
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object LDsFornecedor: TLabel
          Left = 6
          Top = 8
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 34
        Width = 784
        Height = 304
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 784
          Height = 304
          Align = alClient
          DataSource = DsClientE440Ipc
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'CODPRO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DsCodPro'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDREC'
              Title.Alignment = taCenter
              Title.Caption = 'Qtd. Recebido'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PREUNI'
              Title.Alignment = taCenter
              Title.Caption = 'Pre'#231'o Unit.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMOCP'
              Title.Alignment = taCenter
              Title.Caption = 'Ordem Compra'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TNSPRO'
              Title.Alignment = taCenter
              Title.Caption = 'Transa'#231#227'o'
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PERICM'
              Title.Alignment = taCenter
              Title.Caption = '% ICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODDEP'
              Title.Alignment = taCenter
              Title.Caption = 'Dep'#243'sito'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SEQIPO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODFAM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODCLF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODSTR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODTIC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODTRD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODTST'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODSTP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODSTC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LAUTEC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USULAU'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATLAU'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORLAU'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODLOT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNINFC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDAJB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDDEV'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIMED'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDEST'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRFUM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDFRE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FORFRE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESBRU'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESLIQ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODTPR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PREEST'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PREBAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERDSC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERDS3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERDS4'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERDS5'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERIPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERFUN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALCAN'
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRFRE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRSEG'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLREMB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRENC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLROUT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDAR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRFRD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLROUD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBRU'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDSC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDS1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDS2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDS3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDS4'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDS5'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDZF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBFU'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRFUN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBIP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRIPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRIPD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBIC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRICM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDFA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBSI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRICS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBSD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRISD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBSP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRSTP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBSC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRSTC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRIIP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRIIC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLROIP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLROIC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRLPR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRLOU'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRLIQ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRFIN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACRFIN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMPNFV'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FILNFV'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SNFNFV'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMNFV'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SEQIPV'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODFAB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUGER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATGER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORGER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMEPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATVLT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRPIS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FILCTR'
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SEQCCP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INTPAT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOTFOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOTPRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROFAB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SEQISC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBCR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRCOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERIIM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBII'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRIIM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRRIS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODBEM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERPIT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBPT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRPIT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERCRT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBCT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRCRT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERCSL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBCL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRCSL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PEROUR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLROUR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERIRF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBIR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRIRF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERDS1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERDS2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BECIPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VECIPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BECICM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VECICM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROFOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRFEI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRSEI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLROUI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCOIMP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COFIMP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BPIIMP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PISIMP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FILPED'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMPED'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SEQIPD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDM1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDM2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDM3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDM4'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDM5'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDM6'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BEMPRI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBPF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERPIF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRPIF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBCF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERCFF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRCFF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CSTIPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CSTPIS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CSTCOF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODDFS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRAJS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SEQEVE'
              Visible = True
            end>
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 338
        Width = 784
        Height = 50
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object Label13: TLabel
          Left = 35
          Top = 10
          Width = 46
          Height = 14
          Caption = 'Vlr.ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 146
          Top = 10
          Width = 48
          Height = 14
          Caption = 'Vlr.Bruto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BExcluir: TBitBtn
          Left = 583
          Top = 23
          Width = 100
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
          TabOrder = 0
          OnClick = BExcluirClick
        end
        object BAdicionar: TBitBtn
          Left = 583
          Top = -1
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
          TabOrder = 1
          OnClick = BAdicionarClick
        end
        object BConfirma: TBitBtn
          Left = 683
          Top = -1
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
          TabOrder = 2
          OnClick = BConfirmaClick
        end
        object BCancela: TBitBtn
          Left = 683
          Top = 23
          Width = 100
          Height = 25
          Caption = 'Cancelar'
          DoubleBuffered = True
          Glyph.Data = {
            3E020000424D3E0200000000000036000000280000000D0000000D0000000100
            18000000000008020000120B0000120B00000000000000000000ECECF16666BB
            1B1B9EBABADBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADADCB0000684B4B94EBEB
            ED006E6EC41717B90D0DBC2727B0C3C3E2FFFFFFFFFFFFFFFFFFB5B5D205057E
            00009000007F4A4A94003030B91414CF0707C80E0EC72E2EBCBEBEE3FFFFFFB2
            B2D40E0E8D00009100009100009100006800C1C1E73C3CCD1616DB0A0AD40D0D
            CE3F3FC77878C22A2AAB0000A200009600008E010176ADADC800FFFFFFC9C9EB
            4848DA1818E40B0BDB1414D22020C60B0BB90303AB00009C09097EAEAEC9FFFF
            FF00FFFFFFFFFFFFC8C8EE5555E11C1CE40F0FDB0C0CCE0909C10808B11D1D99
            ACACCDFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF9F9FDB4545E31313E50E0ED80A
            0AC90D0DAE6F6FAFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFCECEEB7C7CDC5656
            EC3838EC2121E31010D10909BB1D1D9DABABCDFFFFFFFFFFFF00FFFFFFD4D4EA
            8282D77070EF6161F35959EA4E4ED53B3BD72A2AD01515B714148EB1B1CFFFFF
            FF00D4D4EB8F8FD48D8DF17F7FF77272ED7272D28787C75757C14141D13939CA
            2A2AB621218DB3B3D0008A8AC0A4A4F29898FB8F8FEF7777CCC8C8E5FFFFFFBE
            BEDC4646B04242C63535BD2C2CAE19198200A4A4CC9E9ED6A5A5F18585CACFCF
            E6FFFFFFFFFFFFFFFFFFC1C1DC3F3FA83B3BBB2C2CA26161A700EBEBF9A6A6CC
            8A8ABDD1D1E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCDA3030966767ABE8E8
            EE00}
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = BCancelaClick
        end
        object EdTotBru: TCurrencyEdit
          Left = 118
          Top = 24
          Width = 100
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DisplayFormat = ' ,0.00;- ,0.00'
          ReadOnly = True
          TabOrder = 4
        end
        object EdTotIcm: TCurrencyEdit
          Left = 6
          Top = 24
          Width = 100
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DisplayFormat = ' ,0.00;- ,0.00'
          ReadOnly = True
          TabOrder = 5
        end
      end
    end
    object TbServicos: TTabSheet
      Caption = 'Servi'#231'os'
      ImageIndex = 2
      TabVisible = False
    end
  end
  object ConsE095For: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cgccpf'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'codfor'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e095for where cgccpf = :cgccpf and'
      '                                              codfor = :codfor')
    Left = 48
    Top = 312
    object ConsE095ForCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsE095ForNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
    object ConsE095ForAPEFOR: TStringField
      FieldName = 'APEFOR'
      Size = 50
    end
    object ConsE095ForCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
    object ConsE095ForSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
  end
  object ConsE020Snf: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codsnf'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e020snf where codsnf = :codsnf')
    Left = 120
    Top = 312
    object ConsE020SnfCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE020SnfCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE020SnfCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object ConsE020SnfDESSNF: TStringField
      FieldName = 'DESSNF'
      Size = 30
    end
    object ConsE020SnfABRSNF: TStringField
      FieldName = 'ABRSNF'
      Size = 10
    end
    object ConsE020SnfULTNUM: TIntegerField
      FieldName = 'ULTNUM'
    end
    object ConsE020SnfULTDAT: TDateTimeField
      FieldName = 'ULTDAT'
    end
    object ConsE020SnfNUMNFD: TIntegerField
      FieldName = 'NUMNFD'
    end
    object ConsE020SnfNUMNFA: TIntegerField
      FieldName = 'NUMNFA'
    end
    object ConsE020SnfQTDITP: TIntegerField
      FieldName = 'QTDITP'
    end
    object ConsE020SnfQTDITS: TIntegerField
      FieldName = 'QTDITS'
    end
    object ConsE020SnfQTDPAR: TIntegerField
      FieldName = 'QTDPAR'
    end
    object ConsE020SnfAPLSNF: TStringField
      FieldName = 'APLSNF'
      Size = 1
    end
    object ConsE020SnfULTPRE: TIntegerField
      FieldName = 'ULTPRE'
    end
    object ConsE020SnfMODREL: TStringField
      FieldName = 'MODREL'
      Size = 12
    end
    object ConsE020SnfMODDUP: TStringField
      FieldName = 'MODDUP'
      Size = 12
    end
    object ConsE020SnfULTDUP: TBCDField
      FieldName = 'ULTDUP'
      Precision = 10
      Size = 0
    end
    object ConsE020SnfCODEDC: TStringField
      FieldName = 'CODEDC'
      Size = 3
    end
    object ConsE020SnfVENDBS: TDateTimeField
      FieldName = 'VENDBS'
    end
    object ConsE020SnfVENDBV: TDateTimeField
      FieldName = 'VENDBV'
    end
    object ConsE020SnfCODSEL: TStringField
      FieldName = 'CODSEL'
      Size = 3
    end
    object ConsE020SnfCODSSL: TStringField
      FieldName = 'CODSSL'
      Size = 2
    end
    object ConsE020SnfUTIIMP: TStringField
      FieldName = 'UTIIMP'
      Size = 1
    end
    object ConsE020SnfCODEQU: TIntegerField
      FieldName = 'CODEQU'
    end
    object ConsE020SnfINDNMA: TStringField
      FieldName = 'INDNMA'
      Size = 1
    end
    object ConsE020SnfDISAUT: TIntegerField
      FieldName = 'DISAUT'
    end
    object ConsE020SnfDIRNEL: TStringField
      FieldName = 'DIRNEL'
      Size = 250
    end
    object ConsE020SnfQTDPOS: TIntegerField
      FieldName = 'QTDPOS'
    end
    object ConsE020SnfDIRCTE: TStringField
      FieldName = 'DIRCTE'
      Size = 250
    end
    object ConsE020SnfDIRNES: TStringField
      FieldName = 'DIRNES'
      Size = 250
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
      'select * from e001tns where lismod = '#39'COF'#39' and'
      '                            codtns = :codtns')
    Left = 195
    Top = 312
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
    Left = 272
    Top = 312
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
  object SapSid: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 456
    Top = 472
  end
  object ConsE440Ipc: TADOQuery
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
        Name = 'codfor'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numnfc'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codsnf'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e440ipc where codemp = :codemp and'
      '                            codfil = :codfil and'
      '                            codfor = :codfor and'
      '                            numnfc = :numnfc and'
      '                            codsnf = :codsnf')
    Left = 328
    Top = 88
    object ConsE440IpcCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE440IpcCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE440IpcCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsE440IpcNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsE440IpcCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object ConsE440IpcSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ConsE440IpcTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE440IpcNOPPRO: TStringField
      FieldName = 'NOPPRO'
      Size = 5
    end
    object ConsE440IpcFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object ConsE440IpcNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsE440IpcSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object ConsE440IpcCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE440IpcCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE440IpcCPLIPC: TStringField
      FieldName = 'CPLIPC'
      Size = 250
    end
    object ConsE440IpcCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE440IpcCODCLF: TStringField
      FieldName = 'CODCLF'
      Size = 3
    end
    object ConsE440IpcCODSTR: TStringField
      FieldName = 'CODSTR'
      Size = 3
    end
    object ConsE440IpcCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ConsE440IpcCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ConsE440IpcCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ConsE440IpcCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ConsE440IpcCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ConsE440IpcLAUTEC: TStringField
      FieldName = 'LAUTEC'
      Size = 250
    end
    object ConsE440IpcUSULAU: TBCDField
      FieldName = 'USULAU'
      Precision = 10
      Size = 0
    end
    object ConsE440IpcDATLAU: TDateTimeField
      FieldName = 'DATLAU'
    end
    object ConsE440IpcHORLAU: TIntegerField
      FieldName = 'HORLAU'
    end
    object ConsE440IpcCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE440IpcCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object ConsE440IpcQTDREC: TFMTBCDField
      FieldName = 'QTDREC'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcUNINFC: TStringField
      FieldName = 'UNINFC'
      Size = 3
    end
    object ConsE440IpcQTDAJB: TFMTBCDField
      FieldName = 'QTDAJB'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcQTDDEV: TFMTBCDField
      FieldName = 'QTDDEV'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE440IpcQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcVLRFUM: TBCDField
      FieldName = 'VLRFUM'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcQTDFRE: TFMTBCDField
      FieldName = 'QTDFRE'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcFORFRE: TIntegerField
      FieldName = 'FORFRE'
    end
    object ConsE440IpcPESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcPESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE440IpcPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcPREEST: TFMTBCDField
      FieldName = 'PREEST'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcPREBAS: TFMTBCDField
      FieldName = 'PREBAS'
      Precision = 15
      Size = 6
    end
    object ConsE440IpcPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE440IpcPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE440IpcPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE440IpcPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConsE440IpcPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ConsE440IpcPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ConsE440IpcPERFUN: TBCDField
      FieldName = 'PERFUN'
      Precision = 4
      Size = 2
    end
    object ConsE440IpcSALCAN: TStringField
      FieldName = 'SALCAN'
      Size = 1
    end
    object ConsE440IpcNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object ConsE440IpcCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object ConsE440IpcCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ConsE440IpcCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConsE440IpcCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ConsE440IpcVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRBFU: TBCDField
      FieldName = 'VLRBFU'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRFUN: TBCDField
      FieldName = 'VLRFUN'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRBID: TBCDField
      FieldName = 'VLRBID'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRIPD: TBCDField
      FieldName = 'VLRIPD'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRDFA: TBCDField
      FieldName = 'VLRDFA'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRBSD: TBCDField
      FieldName = 'VLRBSD'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRISD: TBCDField
      FieldName = 'VLRISD'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRIIP: TBCDField
      FieldName = 'VLRIIP'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRIIC: TBCDField
      FieldName = 'VLRIIC'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLROIP: TBCDField
      FieldName = 'VLROIP'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLROIC: TBCDField
      FieldName = 'VLROIC'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcACRFIN: TBCDField
      FieldName = 'ACRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcEMPNFV: TIntegerField
      FieldName = 'EMPNFV'
    end
    object ConsE440IpcFILNFV: TIntegerField
      FieldName = 'FILNFV'
    end
    object ConsE440IpcSNFNFV: TStringField
      FieldName = 'SNFNFV'
      Size = 3
    end
    object ConsE440IpcNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object ConsE440IpcSEQIPV: TIntegerField
      FieldName = 'SEQIPV'
    end
    object ConsE440IpcCODFAB: TStringField
      FieldName = 'CODFAB'
      Size = 10
    end
    object ConsE440IpcUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE440IpcDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE440IpcHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE440IpcNUMEPI: TIntegerField
      FieldName = 'NUMEPI'
    end
    object ConsE440IpcDATVLT: TDateTimeField
      FieldName = 'DATVLT'
    end
    object ConsE440IpcVLRBPI: TBCDField
      FieldName = 'VLRBPI'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object ConsE440IpcNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object ConsE440IpcDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object ConsE440IpcSEQCCP: TIntegerField
      FieldName = 'SEQCCP'
    end
    object ConsE440IpcINTPAT: TStringField
      FieldName = 'INTPAT'
      Size = 1
    end
    object ConsE440IpcNOTFOR: TBCDField
      FieldName = 'NOTFOR'
      Precision = 5
      Size = 2
    end
    object ConsE440IpcNOTPRO: TBCDField
      FieldName = 'NOTPRO'
      Precision = 5
      Size = 2
    end
    object ConsE440IpcPROFAB: TStringField
      FieldName = 'PROFAB'
      Size = 21
    end
    object ConsE440IpcSEQISC: TIntegerField
      FieldName = 'SEQISC'
    end
    object ConsE440IpcVLRBCR: TBCDField
      FieldName = 'VLRBCR'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRCOR: TBCDField
      FieldName = 'VLRCOR'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcPERIIM: TBCDField
      FieldName = 'PERIIM'
      Precision = 5
      Size = 2
    end
    object ConsE440IpcVLRBII: TBCDField
      FieldName = 'VLRBII'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRIIM: TBCDField
      FieldName = 'VLRIIM'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcCODBEM: TStringField
      FieldName = 'CODBEM'
    end
    object ConsE440IpcPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object ConsE440IpcVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object ConsE440IpcVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ConsE440IpcVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ConsE440IpcVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ConsE440IpcVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE440IpcPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE440IpcBECIPI: TBCDField
      FieldName = 'BECIPI'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVECIPI: TBCDField
      FieldName = 'VECIPI'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcBECICM: TBCDField
      FieldName = 'BECICM'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVECICM: TBCDField
      FieldName = 'VECICM'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcPROFOR: TStringField
      FieldName = 'PROFOR'
      Size = 30
    end
    object ConsE440IpcVLRFEI: TBCDField
      FieldName = 'VLRFEI'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRSEI: TBCDField
      FieldName = 'VLRSEI'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLROUI: TBCDField
      FieldName = 'VLROUI'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcBCOIMP: TBCDField
      FieldName = 'BCOIMP'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcCOFIMP: TBCDField
      FieldName = 'COFIMP'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcBPIIMP: TBCDField
      FieldName = 'BPIIMP'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcPISIMP: TBCDField
      FieldName = 'PISIMP'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcFILPED: TIntegerField
      FieldName = 'FILPED'
    end
    object ConsE440IpcNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE440IpcSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsE440IpcVLRDM1: TFMTBCDField
      FieldName = 'VLRDM1'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcVLRDM2: TFMTBCDField
      FieldName = 'VLRDM2'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcVLRDM3: TFMTBCDField
      FieldName = 'VLRDM3'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcVLRDM4: TFMTBCDField
      FieldName = 'VLRDM4'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcVLRDM5: TFMTBCDField
      FieldName = 'VLRDM5'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcVLRDM6: TFMTBCDField
      FieldName = 'VLRDM6'
      Precision = 14
      Size = 5
    end
    object ConsE440IpcBEMPRI: TStringField
      FieldName = 'BEMPRI'
    end
    object ConsE440IpcVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 5
      Size = 2
    end
    object ConsE440IpcVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 5
      Size = 2
    end
    object ConsE440IpcVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object ConsE440IpcCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object ConsE440IpcCSTCOF: TStringField
      FieldName = 'CSTCOF'
      Size = 2
    end
    object ConsE440IpcCODDFS: TIntegerField
      FieldName = 'CODDFS'
    end
    object ConsE440IpcVLRAJS: TBCDField
      FieldName = 'VLRAJS'
      Precision = 15
      Size = 2
    end
    object ConsE440IpcSEQEVE: TIntegerField
      FieldName = 'SEQEVE'
    end
  end
  object ProviderE440Ipc: TDataSetProvider
    DataSet = ConsE440Ipc
    Left = 328
    Top = 136
  end
  object ClientE440Ipc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderE440Ipc'
    OnCalcFields = ClientE440IpcCalcFields
    Left = 331
    Top = 184
    object ClientE440IpcCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ClientE440IpcCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ClientE440IpcCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ClientE440IpcNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ClientE440IpcCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object ClientE440IpcSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ClientE440IpcTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ClientE440IpcNOPPRO: TStringField
      FieldName = 'NOPPRO'
      Size = 5
    end
    object ClientE440IpcFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object ClientE440IpcNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ClientE440IpcSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object ClientE440IpcCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ClientE440IpcCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ClientE440IpcCPLIPC: TStringField
      FieldName = 'CPLIPC'
      Size = 250
    end
    object ClientE440IpcCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ClientE440IpcCODCLF: TStringField
      FieldName = 'CODCLF'
      Size = 3
    end
    object ClientE440IpcCODSTR: TStringField
      FieldName = 'CODSTR'
      Size = 3
    end
    object ClientE440IpcCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ClientE440IpcCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ClientE440IpcCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ClientE440IpcCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ClientE440IpcCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ClientE440IpcLAUTEC: TStringField
      FieldName = 'LAUTEC'
      Size = 250
    end
    object ClientE440IpcUSULAU: TBCDField
      FieldName = 'USULAU'
      Precision = 10
      Size = 0
    end
    object ClientE440IpcDATLAU: TDateTimeField
      FieldName = 'DATLAU'
    end
    object ClientE440IpcHORLAU: TIntegerField
      FieldName = 'HORLAU'
    end
    object ClientE440IpcCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ClientE440IpcCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object ClientE440IpcQTDREC: TFMTBCDField
      FieldName = 'QTDREC'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcUNINFC: TStringField
      FieldName = 'UNINFC'
      Size = 3
    end
    object ClientE440IpcQTDAJB: TFMTBCDField
      FieldName = 'QTDAJB'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcQTDDEV: TFMTBCDField
      FieldName = 'QTDDEV'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ClientE440IpcQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcVLRFUM: TBCDField
      FieldName = 'VLRFUM'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcQTDFRE: TFMTBCDField
      FieldName = 'QTDFRE'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcFORFRE: TIntegerField
      FieldName = 'FORFRE'
    end
    object ClientE440IpcPESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcPESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ClientE440IpcPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcPREEST: TFMTBCDField
      FieldName = 'PREEST'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcPREBAS: TFMTBCDField
      FieldName = 'PREBAS'
      Precision = 15
      Size = 6
    end
    object ClientE440IpcPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ClientE440IpcPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ClientE440IpcPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ClientE440IpcPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ClientE440IpcPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ClientE440IpcPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ClientE440IpcPERFUN: TBCDField
      FieldName = 'PERFUN'
      Precision = 4
      Size = 2
    end
    object ClientE440IpcSALCAN: TStringField
      FieldName = 'SALCAN'
      Size = 1
    end
    object ClientE440IpcNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object ClientE440IpcCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object ClientE440IpcCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ClientE440IpcCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ClientE440IpcCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ClientE440IpcVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRBFU: TBCDField
      FieldName = 'VLRBFU'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRFUN: TBCDField
      FieldName = 'VLRFUN'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRBID: TBCDField
      FieldName = 'VLRBID'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRIPD: TBCDField
      FieldName = 'VLRIPD'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRDFA: TBCDField
      FieldName = 'VLRDFA'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRBSD: TBCDField
      FieldName = 'VLRBSD'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRISD: TBCDField
      FieldName = 'VLRISD'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRIIP: TBCDField
      FieldName = 'VLRIIP'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRIIC: TBCDField
      FieldName = 'VLRIIC'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLROIP: TBCDField
      FieldName = 'VLROIP'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLROIC: TBCDField
      FieldName = 'VLROIC'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcACRFIN: TBCDField
      FieldName = 'ACRFIN'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcEMPNFV: TIntegerField
      FieldName = 'EMPNFV'
    end
    object ClientE440IpcFILNFV: TIntegerField
      FieldName = 'FILNFV'
    end
    object ClientE440IpcSNFNFV: TStringField
      FieldName = 'SNFNFV'
      Size = 3
    end
    object ClientE440IpcNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object ClientE440IpcSEQIPV: TIntegerField
      FieldName = 'SEQIPV'
    end
    object ClientE440IpcCODFAB: TStringField
      FieldName = 'CODFAB'
      Size = 10
    end
    object ClientE440IpcUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ClientE440IpcDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ClientE440IpcHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ClientE440IpcNUMEPI: TIntegerField
      FieldName = 'NUMEPI'
    end
    object ClientE440IpcDATVLT: TDateTimeField
      FieldName = 'DATVLT'
    end
    object ClientE440IpcVLRBPI: TBCDField
      FieldName = 'VLRBPI'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object ClientE440IpcNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object ClientE440IpcDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object ClientE440IpcSEQCCP: TIntegerField
      FieldName = 'SEQCCP'
    end
    object ClientE440IpcINTPAT: TStringField
      FieldName = 'INTPAT'
      Size = 1
    end
    object ClientE440IpcNOTFOR: TBCDField
      FieldName = 'NOTFOR'
      Precision = 5
      Size = 2
    end
    object ClientE440IpcNOTPRO: TBCDField
      FieldName = 'NOTPRO'
      Precision = 5
      Size = 2
    end
    object ClientE440IpcPROFAB: TStringField
      FieldName = 'PROFAB'
      Size = 21
    end
    object ClientE440IpcSEQISC: TIntegerField
      FieldName = 'SEQISC'
    end
    object ClientE440IpcVLRBCR: TBCDField
      FieldName = 'VLRBCR'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRCOR: TBCDField
      FieldName = 'VLRCOR'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcPERIIM: TBCDField
      FieldName = 'PERIIM'
      Precision = 5
      Size = 2
    end
    object ClientE440IpcVLRBII: TBCDField
      FieldName = 'VLRBII'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRIIM: TBCDField
      FieldName = 'VLRIIM'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcCODBEM: TStringField
      FieldName = 'CODBEM'
    end
    object ClientE440IpcPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object ClientE440IpcVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object ClientE440IpcVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ClientE440IpcVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ClientE440IpcVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ClientE440IpcVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ClientE440IpcPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ClientE440IpcBECIPI: TBCDField
      FieldName = 'BECIPI'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVECIPI: TBCDField
      FieldName = 'VECIPI'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcBECICM: TBCDField
      FieldName = 'BECICM'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVECICM: TBCDField
      FieldName = 'VECICM'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcPROFOR: TStringField
      FieldName = 'PROFOR'
      Size = 30
    end
    object ClientE440IpcVLRFEI: TBCDField
      FieldName = 'VLRFEI'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRSEI: TBCDField
      FieldName = 'VLRSEI'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLROUI: TBCDField
      FieldName = 'VLROUI'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcBCOIMP: TBCDField
      FieldName = 'BCOIMP'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcCOFIMP: TBCDField
      FieldName = 'COFIMP'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcBPIIMP: TBCDField
      FieldName = 'BPIIMP'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcPISIMP: TBCDField
      FieldName = 'PISIMP'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcFILPED: TIntegerField
      FieldName = 'FILPED'
    end
    object ClientE440IpcNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ClientE440IpcSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ClientE440IpcVLRDM1: TFMTBCDField
      FieldName = 'VLRDM1'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcVLRDM2: TFMTBCDField
      FieldName = 'VLRDM2'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcVLRDM3: TFMTBCDField
      FieldName = 'VLRDM3'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcVLRDM4: TFMTBCDField
      FieldName = 'VLRDM4'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcVLRDM5: TFMTBCDField
      FieldName = 'VLRDM5'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcVLRDM6: TFMTBCDField
      FieldName = 'VLRDM6'
      Precision = 14
      Size = 5
    end
    object ClientE440IpcBEMPRI: TStringField
      FieldName = 'BEMPRI'
    end
    object ClientE440IpcVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 5
      Size = 2
    end
    object ClientE440IpcVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 5
      Size = 2
    end
    object ClientE440IpcVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object ClientE440IpcCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object ClientE440IpcCSTCOF: TStringField
      FieldName = 'CSTCOF'
      Size = 2
    end
    object ClientE440IpcCODDFS: TIntegerField
      FieldName = 'CODDFS'
    end
    object ClientE440IpcVLRAJS: TBCDField
      FieldName = 'VLRAJS'
      Precision = 15
      Size = 2
    end
    object ClientE440IpcSEQEVE: TIntegerField
      FieldName = 'SEQEVE'
    end
    object ClientE440IpcDsCodPro: TStringField
      FieldKind = fkCalculated
      FieldName = 'DsCodPro'
      Size = 300
      Calculated = True
    end
  end
  object DsClientE440Ipc: TDataSource
    DataSet = ClientE440Ipc
    Left = 328
    Top = 40
  end
  object ConsE075Pro: TADOQuery
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
      'select * from e075pro where codpro = :codpro')
    Left = 376
    Top = 313
    object ConsE075ProCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE075ProDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object ConsE440Nfc: TADOQuery
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
        Name = 'codfor'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numnfc'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codsnf'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e440nfc where codemp = :codemp and'
      '                            codfil = :codfil and'
      '                            codfor = :codfor and'
      '                            numnfc = :numnfc and'
      '                            codsnf = :codsnf')
    Left = 480
    Top = 312
    object ConsE440NfcCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE440NfcCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE440NfcCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsE440NfcNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsE440NfcCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object ConsE440NfcTIPNFE: TIntegerField
      FieldName = 'TIPNFE'
    end
  end
  object CadUsu_TCanSal: TADOQuery
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
        Name = 'numocp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tcansal where'
      '                          usu_codemp = :codemp and'
      '                          usu_codfil = :codfil and'
      '                          usu_numocp = :numocp and'
      '                          usu_seqipo = :seqipo')
    Left = 80
    Top = 128
    object CadUsu_TCanSalUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUsu_TCanSalUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadUsu_TCanSalUSU_NUMOCP: TIntegerField
      FieldName = 'USU_NUMOCP'
    end
    object CadUsu_TCanSalUSU_SEQIPO: TIntegerField
      FieldName = 'USU_SEQIPO'
    end
    object CadUsu_TCanSalUSU_DATCAN: TDateTimeField
      FieldName = 'USU_DATCAN'
    end
    object CadUsu_TCanSalUSU_SALCAN: TStringField
      FieldName = 'USU_SALCAN'
      Size = 1
    end
    object CadUsu_TCanSalUSU_USUCAN: TBCDField
      FieldName = 'USU_USUCAN'
      Precision = 10
      Size = 0
    end
  end
end
