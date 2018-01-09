object FConsMateriaPrima: TFConsMateriaPrima
  Left = 0
  Top = 0
  Caption = 'Consulta de Mat'#233'ria Prima'
  ClientHeight = 659
  ClientWidth = 887
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 887
    Height = 74
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 53
      Width = 57
      Height = 13
      Caption = 'Produto...:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 14
      Top = 20
      Width = 55
      Height = 13
      Caption = 'Per'#237'odo...:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 212
      Top = 20
      Width = 7
      Height = 13
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LDsCodPro: TLabel
      Left = 648
      Top = 50
      Width = 4
      Height = 18
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object LQtdDias: TLabel
      Left = 370
      Top = 20
      Width = 3
      Height = 13
    end
    object EdCodPro: TEdit
      Left = 78
      Top = 45
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyDown = EdCodProKeyDown
    end
    object BConsProduto: TBitBtn
      Left = 176
      Top = 46
      Width = 22
      Height = 19
      Caption = '...'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = BConsProdutoClick
    end
    object EdDatIni: TDateEdit
      Left = 78
      Top = 12
      Width = 121
      Height = 21
      TabStop = False
      NumGlyphs = 2
      TabOrder = 2
    end
    object EdDatFim: TDateEdit
      Left = 233
      Top = 12
      Width = 121
      Height = 21
      TabStop = False
      NumGlyphs = 2
      TabOrder = 3
    end
    object Panel10: TPanel
      Left = 784
      Top = 1
      Width = 102
      Height = 72
      Align = alRight
      TabOrder = 4
      object BProximo: TSpeedButton
        Left = 50
        Top = 47
        Width = 50
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
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
        OnClick = BProximoClick
      end
      object BAnterior: TSpeedButton
        Left = 2
        Top = 47
        Width = 50
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
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
        OnClick = BAnteriorClick
      end
      object BMostrar: TBitBtn
        Left = 2
        Top = 0
        Width = 100
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
        OnClick = BMostrarClick
      end
    end
    object edtDsCodPro: TEdit
      Left = 204
      Top = 45
      Width = 438
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 74
    Width = 887
    Height = 559
    Align = alClient
    TabOrder = 1
    object PaginaControle: TPageControl
      Left = 1
      Top = 1
      Width = 885
      Height = 557
      ActivePage = TbDadosGerais
      Align = alClient
      TabOrder = 0
      object TbDadosGerais: TTabSheet
        Caption = 'Dados Gerais'
        object Panel5: TPanel
          Left = 0
          Top = 86
          Width = 877
          Height = 163
          Align = alTop
          TabOrder = 0
          object Panel8: TPanel
            Left = 1
            Top = 133
            Width = 875
            Height = 29
            Align = alBottom
            TabOrder = 0
            object Label10: TLabel
              Left = 293
              Top = 6
              Width = 72
              Height = 13
              Caption = 'Saldo Total..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LSalTot: TLabel
              Left = 371
              Top = 6
              Width = 3
              Height = 13
            end
            object Label13: TLabel
              Left = 502
              Top = 6
              Width = 70
              Height = 13
              Caption = 'Valor Total..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LVlrTot: TLabel
              Left = 583
              Top = 6
              Width = 3
              Height = 13
            end
            object Label18: TLabel
              Left = 680
              Top = 6
              Width = 93
              Height = 13
              Caption = 'Consumo Total..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LConTot: TLabel
              Left = 781
              Top = 6
              Width = 3
              Height = 13
            end
          end
          object DBGrid1: TDBGrid
            Left = 1
            Top = 19
            Width = 875
            Height = 114
            Align = alClient
            DataSource = DsConsE210Est
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODDEP'
                Title.Alignment = taCenter
                Title.Caption = 'Dep'#243'sito'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 140
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'QTDEST'
                Title.Alignment = taCenter
                Title.Caption = 'Saldo Atual'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 140
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'UNIMED'
                Title.Alignment = taCenter
                Title.Caption = 'U.M'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VLREST'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 140
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CONSUMO'
                Title.Alignment = taCenter
                Title.Caption = 'Consumo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 140
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ESTMIN'
                Title.Alignment = taCenter
                Title.Caption = 'Est.M'#237'nimo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 140
                Visible = True
              end>
          end
          object Panel9: TPanel
            Left = 1
            Top = 1
            Width = 875
            Height = 18
            Align = alTop
            TabOrder = 2
            object Label2: TLabel
              Left = 6
              Top = 1
              Width = 56
              Height = 13
              Caption = 'Dep'#243'sitos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 877
          Height = 86
          Align = alTop
          TabOrder = 1
          object Label6: TLabel
            Left = 7
            Top = 35
            Width = 49
            Height = 13
            Caption = 'Familia..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LDsCodFam: TLabel
            Left = 61
            Top = 35
            Width = 3
            Height = 13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object LDsCodOri: TLabel
            Left = 61
            Top = 8
            Width = 3
            Height = 13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 5
            Top = 8
            Width = 50
            Height = 13
            Caption = 'Origem..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 361
            Top = 8
            Width = 48
            Height = 13
            Caption = '% I.P.I..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 334
            Top = 63
            Width = 75
            Height = 13
            Caption = 'Vlr. M'#225'ximo..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 622
            Top = 63
            Width = 58
            Height = 13
            Caption = 'Situa'#231#227'o..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 26
            Top = 63
            Width = 30
            Height = 13
            Caption = 'U.M..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 621
            Top = 35
            Width = 59
            Height = 13
            Caption = 'Qtd. Emb..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 343
            Top = 35
            Width = 66
            Height = 13
            Caption = 'Tem ICMS..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LDsUm: TLabel
            Left = 61
            Top = 63
            Width = 3
            Height = 13
          end
          object LDsSitPro: TLabel
            Left = 687
            Top = 63
            Width = 3
            Height = 13
          end
          object LDsVlrMax: TLabel
            Left = 417
            Top = 63
            Width = 3
            Height = 13
          end
          object LDsPerIpi: TLabel
            Left = 417
            Top = 8
            Width = 3
            Height = 13
          end
          object LDsTemIcm: TLabel
            Left = 417
            Top = 35
            Width = 3
            Height = 13
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 249
          Width = 877
          Height = 111
          Align = alTop
          TabOrder = 2
          object Panel7: TPanel
            Left = 1
            Top = 1
            Width = 875
            Height = 18
            Align = alTop
            TabOrder = 0
            object Label3: TLabel
              Left = 6
              Top = 0
              Width = 77
              Height = 13
              Caption = 'Fornecedores'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object DBGrid2: TDBGrid
            Left = 1
            Top = 19
            Width = 875
            Height = 91
            Align = alClient
            DataSource = DsConsE403Fpr
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODFOR'
                Title.Alignment = taCenter
                Title.Caption = 'Fornecedor'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMFOR'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o'
                Width = 280
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PROFOR'
                Title.Alignment = taCenter
                Title.Caption = 'Produto'
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESFOR'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o'
                Width = 290
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'UNIMED'
                Title.Alignment = taCenter
                Title.Caption = 'U.M'
                Width = 50
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PRZENT'
                Title.Alignment = taCenter
                Title.Caption = 'Pz.Entrega'
                Width = 70
                Visible = True
              end>
          end
        end
        object PaginaControleFor: TPageControl
          Left = 0
          Top = 360
          Width = 877
          Height = 169
          ActivePage = TbDadoGerais
          Align = alClient
          TabOrder = 3
          object TbDadoGerais: TTabSheet
            Caption = 'Dados Gerais'
            object Label12: TLabel
              Left = 20
              Top = 5
              Width = 44
              Height = 13
              Caption = 'Raz'#227'o..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 298
              Top = 5
              Width = 57
              Height = 13
              Caption = 'Fantasia..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 28
              Top = 24
              Width = 36
              Height = 13
              Caption = 'CNPJ..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 3
              Top = 43
              Width = 61
              Height = 13
              Caption = 'Endere'#231'o..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 21
              Top = 63
              Width = 43
              Height = 13
              Caption = 'Bairro..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 17
              Top = 82
              Width = 47
              Height = 13
              Caption = 'Cidade..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 298
              Top = 63
              Width = 29
              Height = 13
              Caption = 'CEP..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 28
              Top = 101
              Width = 36
              Height = 13
              Caption = 'Fone..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label25: TLabel
              Left = 159
              Top = 101
              Width = 29
              Height = 13
              Caption = 'Fax..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label26: TLabel
              Left = 243
              Top = 24
              Width = 84
              Height = 13
              Caption = 'Insc.Estadual..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 4
              Top = 121
              Width = 60
              Height = 13
              Caption = 'Data Cad..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 284
              Top = 101
              Width = 43
              Height = 13
              Caption = 'E-Mail..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label29: TLabel
              Left = 269
              Top = 121
              Width = 58
              Height = 13
              Caption = 'Situa'#231#227'o..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBNomFor: TDBText
              Left = 69
              Top = 5
              Width = 223
              Height = 17
              DataField = 'NOMFOR'
              DataSource = DsConsE095For
            end
            object DBApeFor: TDBText
              Left = 358
              Top = 5
              Width = 137
              Height = 17
              DataField = 'APEFOR'
              DataSource = DsConsE095For
            end
            object DBCgcCpf: TDBText
              Left = 70
              Top = 24
              Width = 119
              Height = 17
              DataField = 'CGCCPF'
              DataSource = DsConsE095For
            end
            object DBEndFor: TDBText
              Left = 70
              Top = 43
              Width = 220
              Height = 17
              DataField = 'ENDFOR'
              DataSource = DsConsE095For
            end
            object DBBaiFor: TDBText
              Left = 69
              Top = 63
              Width = 212
              Height = 17
              DataField = 'BAIFOR'
              DataSource = DsConsE095For
            end
            object DBCidFor: TDBText
              Left = 70
              Top = 82
              Width = 222
              Height = 17
              DataField = 'CIDFOR'
              DataSource = DsConsE095For
            end
            object DBFonFor: TDBText
              Left = 70
              Top = 101
              Width = 86
              Height = 17
              DataField = 'FONFOR'
              DataSource = DsConsE095For
            end
            object DBDatCad: TDBText
              Left = 70
              Top = 120
              Width = 82
              Height = 17
              DataField = 'DATCAD'
              DataSource = DsConsE095For
            end
            object DBInsEst: TDBText
              Left = 331
              Top = 24
              Width = 118
              Height = 17
              DataField = 'INSEST'
              DataSource = DsConsE095For
            end
            object DBCepFor: TDBText
              Left = 331
              Top = 63
              Width = 65
              Height = 17
              DataField = 'CEPFOR'
              DataSource = DsConsE095For
            end
            object DBFaxFor: TDBText
              Left = 192
              Top = 101
              Width = 84
              Height = 17
              DataField = 'FAXFOR'
              DataSource = DsConsE095For
            end
            object DBIntNet: TDBText
              Left = 330
              Top = 101
              Width = 199
              Height = 17
              DataField = 'INTNET'
              DataSource = DsConsE095For
            end
            object DBSitFor: TDBText
              Left = 331
              Top = 120
              Width = 46
              Height = 17
              DataField = 'SITFOR'
              DataSource = DsConsE095For
            end
            object Label30: TLabel
              Left = 304
              Top = 82
              Width = 23
              Height = 13
              Caption = 'UF..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBSigUfs: TDBText
              Left = 330
              Top = 82
              Width = 25
              Height = 17
              DataField = 'SIGUFS'
              DataSource = DsConsE095For
            end
            object Label31: TLabel
              Left = 305
              Top = 43
              Width = 22
              Height = 13
              Caption = 'N'#186'..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Panel11: TPanel
              Left = 499
              Top = 0
              Width = 370
              Height = 141
              Align = alRight
              BevelOuter = bvLowered
              TabOrder = 0
              object Label32: TLabel
                Left = 32
                Top = 19
                Width = 62
                Height = 13
                Caption = 'Ultima NF..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label33: TLabel
                Left = 231
                Top = 19
                Width = 38
                Height = 13
                Caption = 'S'#233'rie..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label34: TLabel
                Left = 39
                Top = 37
                Width = 55
                Height = 13
                Caption = 'Emiss'#227'o..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label35: TLabel
                Left = 10
                Top = 55
                Width = 84
                Height = 13
                Caption = 'Qtd.Recebida..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label36: TLabel
                Left = 202
                Top = 55
                Width = 67
                Height = 13
                Caption = 'Pre'#231'o Unit..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label37: TLabel
                Left = 36
                Top = 109
                Width = 58
                Height = 13
                Caption = 'Vlr.Bruto..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label38: TLabel
                Left = 52
                Top = 91
                Width = 42
                Height = 13
                Caption = '% IPI..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label39: TLabel
                Left = 215
                Top = 91
                Width = 54
                Height = 13
                Caption = '% ICMS..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label40: TLabel
                Left = 202
                Top = 109
                Width = 67
                Height = 13
                Caption = 'Vlr.L'#237'quido..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label41: TLabel
                Left = 67
                Top = 127
                Width = 27
                Height = 13
                Caption = 'O.C..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label42: TLabel
                Left = 203
                Top = 127
                Width = 66
                Height = 13
                Caption = 'Cond.Pgto..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LNumNfc: TLabel
                Left = 99
                Top = 19
                Width = 3
                Height = 13
              end
              object LDatEmi: TLabel
                Left = 99
                Top = 37
                Width = 3
                Height = 13
              end
              object LQtdRec: TLabel
                Left = 99
                Top = 55
                Width = 3
                Height = 13
              end
              object LPerIpi: TLabel
                Left = 99
                Top = 91
                Width = 3
                Height = 13
              end
              object LVlrBru: TLabel
                Left = 99
                Top = 109
                Width = 3
                Height = 13
              end
              object LNumOcp: TLabel
                Left = 99
                Top = 127
                Width = 3
                Height = 13
              end
              object LCodSnf: TLabel
                Left = 272
                Top = 19
                Width = 3
                Height = 13
              end
              object LPreUni: TLabel
                Left = 272
                Top = 55
                Width = 3
                Height = 13
              end
              object LPerIcm: TLabel
                Left = 272
                Top = 91
                Width = 3
                Height = 13
              end
              object LVlrLiq: TLabel
                Left = 272
                Top = 108
                Width = 3
                Height = 13
              end
              object LCodCpg: TLabel
                Left = 272
                Top = 127
                Width = 3
                Height = 13
              end
              object Label43: TLabel
                Left = 216
                Top = 37
                Width = 53
                Height = 13
                Caption = 'Entrada..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label44: TLabel
                Left = 208
                Top = 73
                Width = 61
                Height = 13
                Caption = 'Pre'#231'o Est..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LPreEst: TLabel
                Left = 272
                Top = 73
                Width = 3
                Height = 13
              end
              object LDatEnt: TLabel
                Left = 272
                Top = 37
                Width = 3
                Height = 13
              end
              object Label45: TLabel
                Left = 17
                Top = 73
                Width = 77
                Height = 13
                Caption = 'Qtd.Estoque..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LQtdEst: TLabel
                Left = 99
                Top = 73
                Width = 3
                Height = 13
              end
              object Label46: TLabel
                Left = 21
                Top = 2
                Width = 73
                Height = 13
                Caption = 'Fornecedor..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LFornecedor: TLabel
                Left = 99
                Top = 2
                Width = 3
                Height = 13
              end
            end
          end
          object TbDadosCadlll: TTabSheet
            Caption = 'Ordens de Compra'
            ImageIndex = 1
            object DBGrid3: TDBGrid
              Left = 0
              Top = 0
              Width = 869
              Height = 141
              Align = alClient
              DataSource = DsConsE420Ipo
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'NUMOCP'
                  Title.Alignment = taCenter
                  Title.Caption = 'O.C'
                  Width = 85
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'DATEMI'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data Emiss'#227'o'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOMFOR'
                  Title.Alignment = taCenter
                  Title.Caption = 'Fornecedor'
                  Width = 260
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'QTDPED'
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtd. Pedida'
                  Width = 100
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'QTDREC'
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtd. Recebida'
                  Width = 100
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'QTDABE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtd. Aberta'
                  Width = 100
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'DATENT'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data Prev.'
                  Width = 90
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 633
    Width = 887
    Height = 26
    Align = alBottom
    TabOrder = 2
    object btnObsPro: TBitBtn
      Left = 784
      Top = 1
      Width = 101
      Height = 23
      Caption = 'Observa'#231#227'o'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnObsProClick
    end
  end
  object DsConsE210Est: TDataSource
    DataSet = Dm3.ConsE210Est
    Left = 720
    Top = 104
  end
  object DsConsE403Fpr: TDataSource
    DataSet = Dm3.ConsE403Fpr
    Left = 816
    Top = 104
  end
  object DsConsE095For: TDataSource
    DataSet = Dm3.ConsE095For
    Left = 552
    Top = 104
  end
  object DsConsUltimaNfEnt: TDataSource
    DataSet = Dm3.ConsUltimaNfEnt
    Left = 456
    Top = 104
  end
  object DsConsE420Ipo: TDataSource
    DataSet = Dm3.ConsE420Ipo
    Left = 280
    Top = 104
  end
end
