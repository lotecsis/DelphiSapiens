object FGerenciaFuncionario: TFGerenciaFuncionario
  Left = 0
  Top = 0
  Caption = 'Ger'#234'nciamento de Funcion'#225'rios'
  ClientHeight = 648
  ClientWidth = 946
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaginaControle: TPageControl
    Left = 0
    Top = 49
    Width = 946
    Height = 599
    ActivePage = TbGeral
    Align = alClient
    TabOrder = 0
    object TbGeral: TTabSheet
      Caption = '  Geral  '
      object Label1: TLabel
        Left = 31
        Top = 19
        Width = 45
        Height = 13
        Caption = 'Apelido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 18
        Top = 46
        Width = 58
        Height = 13
        Caption = 'Admiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 53
        Top = 73
        Width = 23
        Height = 13
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 24
        Top = 100
        Width = 52
        Height = 13
        Caption = 'Situa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 7
        Top = 129
        Width = 75
        Height = 13
        Caption = 'Dependentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl1: TLabel
        Left = 334
        Top = 19
        Width = 127
        Height = 13
        Caption = 'Mercado Sexta Basica:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBE_USU_APEFUN: TDBEdit
        Left = 81
        Top = 16
        Width = 225
        Height = 21
        CharCase = ecUpperCase
        DataField = 'USU_APEFUN'
        DataSource = DsConsUsu_TRhFun
        TabOrder = 0
      end
      object DBE_USU_DATADM: TDBEdit
        Left = 81
        Top = 43
        Width = 103
        Height = 21
        DataField = 'USU_DATADM'
        DataSource = DsConsUsu_TRhFun
        ReadOnly = True
        TabOrder = 1
      end
      object DBE_USU_SITAFA: TDBEdit
        Left = 81
        Top = 97
        Width = 49
        Height = 21
        DataField = 'USU_SITAFA'
        DataSource = DsConsUsu_TRhFun
        ReadOnly = True
        TabOrder = 2
      end
      object DBE_USU_DESSIT: TDBEdit
        Left = 136
        Top = 97
        Width = 258
        Height = 21
        DataField = 'USU_DESSIT'
        DataSource = DsConsUsu_TRhFun
        ReadOnly = True
        TabOrder = 3
      end
      object DBE_USU_NUMCPF: TDBEdit
        Left = 81
        Top = 70
        Width = 103
        Height = 21
        DataField = 'USU_NUMCPF'
        DataSource = DsConsUsu_TRhFun
        TabOrder = 4
      end
      object DBGrid3: TDBGrid
        Left = -1
        Top = 145
        Width = 940
        Height = 427
        DataSource = DsConsUsu_TRhFunDep
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODDEP'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_NOMFUN'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_DESPAR'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Grau Parentesco'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_NUMCPF'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'CPF'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_SITDEP'
            PickList.Strings = (
              'ATIVO'
              'INATIVO')
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Width = 80
            Visible = True
          end>
      end
      object DBC_USU_MERSEX: TDBComboBox
        Left = 465
        Top = 16
        Width = 216
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'USU_MERSEX'
        DataSource = DsConsUsu_TRhFun
        Items.Strings = (
          'VALE SUPERMERCADO FAMA'
          'VALE SUP. S'#195'O PAULO'
          'CESTA DE ALIMENTOS'
          'CESTA DE MATERIAL LIMPEZA')
        TabOrder = 6
      end
      object btnGravar: TBitBtn
        Left = 845
        Top = 116
        Width = 90
        Height = 25
        Caption = 'Gravar'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F00000000000000000000000000000000
          00000000000000000000000000000000000000007F7F7FBFBFBFBFBFBF000000
          FF0000FF00000000007F7F7FFF0000FF0000FFFFFFBFBFBFBFBFBF000000FF00
          00FF0000000000BFBFBFBFBFBF000000FF0000FF00000000007F7F7FFF0000FF
          0000FFFFFFBFBFBFBFBFBF000000FF0000FF0000000000BFBFBFBFBFBF000000
          FF0000FF0000000000BFBFBF7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF000000FF00
          00FF0000000000BFBFBFBFBFBF000000FF0000FF00007F7F0000000000000000
          00000000000000000000007F7F00FF0000FF0000000000BFBFBFBFBFBF000000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000000000BFBFBFBFBFBF000000FF00007F7F0000000000000000000000
          00000000000000000000000000007F7F00FF0000000000BFBFBFBFBFBF000000
          FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00FF0000000000BFBFBFBFBFBF000000FF0000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000000000BFBFBFBFBFBF000000
          FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00FF0000000000BFBFBFBFBFBF000000FF0000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000000000BFBFBFBFBFBF000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00000000000000BFBFBFBFBFBF000000FF0000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000000000BFBFBFBFBFBF7F7F7F
          0000000000000000000000000000000000000000000000000000000000000000
          000000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
        ParentDoubleBuffered = False
        TabOrder = 7
        OnClick = btnGravarClick
      end
    end
    object TbConvenio: TTabSheet
      Caption = '     Conv'#234'nio      '
      ImageIndex = 2
      object Label6: TLabel
        Left = 11
        Top = 24
        Width = 23
        Height = 13
        Caption = 'M'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 187
        Top = 24
        Width = 22
        Height = 13
        Caption = 'Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid4: TDBGrid
        Left = -1
        Top = 52
        Width = 940
        Height = 480
        DataSource = DsConsSerMov
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyPress = DBGrid4KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'USU_CODSER'
            Title.Alignment = taCenter
            Title.Caption = 'Servi'#231'o'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDSER'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_PREUNI'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Unit.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_NOMFUN'
            Title.Alignment = taCenter
            Title.Caption = 'Conv'#234'niado'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_INADT'
            Title.Alignment = taCenter
            Title.Caption = 'Adiantamento'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_ADTGER'
            Title.Alignment = taCenter
            Title.Caption = 'Adt. Gerado?'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_VLRCOB'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Cobrado'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_DATSER'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_OBSSER'
            Title.Alignment = taCenter
            Title.Caption = 'Observa'#231#245'es'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_DATGADT'
            Title.Alignment = taCenter
            Title.Caption = 'Data Ger.Adt.'
            Width = 120
            Visible = True
          end>
      end
      object CbMes: TComboBox
        Left = 41
        Top = 19
        Width = 128
        Height = 24
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnChange = CbMesChange
        Items.Strings = (
          'Todos'
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
      end
      object EdAno: TEdit
        Left = 215
        Top = 19
        Width = 67
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object BGerarAdiantamento: TBitBtn
        Left = 800
        Top = 540
        Width = 135
        Height = 25
        Caption = 'Gerar Adiantamento'
        DoubleBuffered = True
        Glyph.Data = {
          76030000424D7603000000000000360000002800000011000000100000000100
          18000000000040030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000000000000000000000
          0000000000000000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F0000
          BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F00007F0000BFBFBFBFBFBF000000
          FFFFFF7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF00000000BFBFBF7F00007F00007F
          00007F00007F00007F00007F0000BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F00007F0000BF
          BFBFBFBFBF000000FFFFFF7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF00000000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF7F0000BFBFBFBFBFBFBFBFBF000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF7F7F7F7F7F7F7F7F7F7F7F7FFF
          FFFF00000000BFBFBFBFBFBFBFBFBF000000000000000000000000000000BFBF
          BF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000BFBFBFBFBFBF
          BFBFBF000000FFFFFFFFFFFFFFFFFF000000BFBFBF0000000000000000000000
          0000000000000000000000000000BFBFBF000000000000000000000000000000
          FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BF00BFBFBF000000FFFFFFFFFFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF7F
          7F7FFFFFFF000000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF7F7F7FFFFFFF000000000000BF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBF
          BF000000FFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF0000000000000000000000
          00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00}
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = BGerarAdiantamentoClick
      end
    end
    object TbAdiantamentos: TTabSheet
      Caption = 'Adiantamentos'
      ImageIndex = 3
      object PaginaControleAdiantamentos: TPageControl
        Left = 0
        Top = 0
        Width = 938
        Height = 571
        ActivePage = TbEmAberto
        Align = alClient
        TabOrder = 0
        object TbEmAberto: TTabSheet
          Caption = '     Em Aberto     '
          object Label8: TLabel
            Left = 805
            Top = 503
            Width = 92
            Height = 13
            Caption = 'Total em Aberto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGrid5: TDBGrid
            Left = -2
            Top = -1
            Width = 933
            Height = 400
            DataSource = DsConsAdtAberto
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
                FieldName = 'USU_NUMADT'
                Title.Alignment = taCenter
                Title.Caption = 'Adiant.'
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_SEQADT'
                Title.Alignment = taCenter
                Title.Caption = 'Seq.'
                Width = 50
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_DATADT'
                Title.Alignment = taCenter
                Title.Caption = 'Data Adiant.'
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'QTDDIA'
                Title.Alignment = taCenter
                Title.Caption = 'Dias'
                Width = 50
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_DATVCT'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'Vencimento'
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_VLRADT'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Adiant.'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_VLRPAR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Parcela'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USU_VLRDSC'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Desc.'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_VLRPGT'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Pago'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_VLRABE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Aberto'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_DSCFLA'
                Title.Alignment = taCenter
                Title.Caption = 'Desc. Folha?'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_DATMOV'
                Title.Alignment = taCenter
                Title.Caption = 'Data Mov.'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_SEQMOV'
                Title.Alignment = taCenter
                Title.Caption = 'Seq. Mov'
                Width = 50
                Visible = True
              end>
          end
          object DBGrid6: TDBGrid
            Left = -2
            Top = 398
            Width = 406
            Height = 146
            TabStop = False
            DataSource = DsConsAdtPgtAberto
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
                FieldName = 'USU_SEQPGT'
                Title.Alignment = taCenter
                Title.Caption = 'Seq.'
                Width = 65
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_DATPGT'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_VLRPGT'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 100
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_CODUSU'
                Title.Alignment = taCenter
                Title.Caption = 'Usu'#225'rio'
                Width = 90
                Visible = True
              end>
          end
          object BLancarTitulo: TBitBtn
            Left = 771
            Top = 400
            Width = 75
            Height = 25
            Caption = 'Lan'#231'ar'
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
            TabOrder = 2
            OnClick = BLancarTituloClick
          end
          object BReceberAdt: TBitBtn
            Left = 690
            Top = 400
            Width = 75
            Height = 25
            Caption = 'Receber'
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
            OnClick = BReceberAdtClick
          end
          object BExtornarBaixaAberto: TBitBtn
            Left = 408
            Top = 515
            Width = 80
            Height = 25
            Caption = 'Extornar'
            DoubleBuffered = True
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7777700000007777777777777777700000007777747474747477700000007777
              7477777777777000000077774447777774777000000077777477777777777000
              00007777777777777477700000007770000007700000000000007000FBFB0000
              FBFB0000000070F0000000F000000000000070FFFFF070FFFFF07000000070F8
              88F070F888F07000000070FFFFF070FFFFF07000000070F888F070F888F07000
              000070FFFFF070FFFFF070000000700000007000000070000000777777777777
              777770000000}
            ParentDoubleBuffered = False
            TabOrder = 4
            OnClick = BExtornarBaixaAbertoClick
          end
          object BImprimirDuplicata: TBitBtn
            Left = 852
            Top = 400
            Width = 75
            Height = 25
            Caption = 'Imprimir'
            DoubleBuffered = True
            Glyph.Data = {
              0E030000424D0E030000000000003600000028000000110000000E0000000100
              180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
              BFBFBF0000000000000000000000000000000000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
              BF00BFBFBF000000000000000000000000000000000000000000000000000000
              000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
              000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
              BF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
              BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
              00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
              BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
              00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
              000000000000000000000000000000FFFFFF000000000000000000000000BFBF
              BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
              BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
              0000000000000000000000BFBFBFBFBFBF00}
            ParentDoubleBuffered = False
            TabOrder = 5
            OnClick = BImprimirDuplicataClick
          end
          object EdTotAberto: TCurrencyEdit
            Left = 805
            Top = 518
            Width = 121
            Height = 22
            Margins.Left = 2
            Margins.Top = 2
            TabStop = False
            Ctl3D = False
            DisplayFormat = ' ,0.00;- ,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
        end
        object TbPagos: TTabSheet
          Caption = '     Pagos     '
          ImageIndex = 1
          object DBGrid8: TDBGrid
            Left = -2
            Top = 397
            Width = 406
            Height = 147
            TabStop = False
            DataSource = DsConsAdtPgtPago
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
                FieldName = 'USU_SEQPGT'
                Title.Alignment = taCenter
                Title.Caption = 'Seq.'
                Width = 65
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_DATPGT'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_VLRPGT'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 100
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_CODUSU'
                Title.Alignment = taCenter
                Title.Caption = 'Usu'#225'rio'
                Width = 90
                Visible = True
              end>
          end
          object DBGrid7: TDBGrid
            Left = -1
            Top = -1
            Width = 932
            Height = 399
            DataSource = DsConsAdtPago
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
                FieldName = 'USU_NUMADT'
                Title.Alignment = taCenter
                Title.Caption = 'Adiant.'
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_SEQADT'
                Title.Alignment = taCenter
                Title.Caption = 'Seq.'
                Width = 50
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_DATADT'
                Title.Alignment = taCenter
                Title.Caption = 'Data Adiant.'
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_DATVCT'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'Vencimento'
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_VLRADT'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Adiant.'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_VLRPAR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Parcela'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_VLRDSC'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Desc.'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_VLRPGT'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Pago'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_VLRABE'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Aberto'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_DSCFLA'
                Title.Alignment = taCenter
                Title.Caption = 'Desc. Folha?'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_DATMOV'
                Title.Alignment = taCenter
                Title.Caption = 'Data Mov.'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USU_SEQMOV'
                Title.Alignment = taCenter
                Title.Caption = 'Seq. Mov'
                Width = 50
                Visible = True
              end>
          end
          object BExtornarBaixaPago: TBitBtn
            Left = 408
            Top = 515
            Width = 80
            Height = 25
            Caption = 'Extornar'
            DoubleBuffered = True
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7777700000007777777777777777700000007777747474747477700000007777
              7477777777777000000077774447777774777000000077777477777777777000
              00007777777777777477700000007770000007700000000000007000FBFB0000
              FBFB0000000070F0000000F000000000000070FFFFF070FFFFF07000000070F8
              88F070F888F07000000070FFFFF070FFFFF07000000070F888F070F888F07000
              000070FFFFF070FFFFF070000000700000007000000070000000777777777777
              777770000000}
            ParentDoubleBuffered = False
            TabOrder = 2
            OnClick = BExtornarBaixaPagoClick
          end
        end
      end
    end
    object TbImportacao: TTabSheet
      Caption = 'Importa'#231#227'o'
      ImageIndex = 1
      OnShow = TbImportacaoShow
      object DBGrid1: TDBGrid
        Left = -1
        Top = -1
        Width = 940
        Height = 350
        DataSource = DsConsR034FunImp
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
            FieldName = 'USU_NUMCAD'
            Title.Alignment = taCenter
            Title.Caption = 'NUMERO'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_NOMFUN'
            Title.Alignment = taCenter
            Title.Caption = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_APEFUN'
            Title.Alignment = taCenter
            Title.Caption = 'APELIDO'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_SITAFA'
            Title.Alignment = taCenter
            Title.Caption = 'SIT.'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_DESSIT'
            Title.Alignment = taCenter
            Title.Caption = 'DESCRI'#199#195'O SIT.'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_DATADM'
            Title.Alignment = taCenter
            Title.Caption = 'DATA ADMIS.'
            Visible = True
          end>
      end
      object BImportar: TBitBtn
        Left = 835
        Top = 539
        Width = 100
        Height = 25
        Caption = 'Importar'
        DoubleBuffered = True
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777770000000770000000777777770FFFFF07700000007777
          77770FCCCF0770000000777777770FFFFF0770000000777000000FCCCF077000
          0000777077770FFFFF077000000070007CCC0FCCCF0770000000706077770FFF
          FF077000000070607CCC00000007700000007060777770777777700000007060
          7CCC707777747000000070607777707777444000000070600000007777747000
          0000706666607774777470000000700000007777444770000000777777777777
          777770000000}
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BImportarClick
      end
      object DBGrid2: TDBGrid
        Left = -1
        Top = 369
        Width = 940
        Height = 160
        DataSource = DsConsR034DepImp
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'USU_NOMFUN'
            Title.Alignment = taCenter
            Title.Caption = 'NOME'
            Width = 300
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_SITDEP'
            Title.Alignment = taCenter
            Title.Caption = 'SITUA'#199#195'O'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_GRAPAR'
            Title.Alignment = taCenter
            Title.Caption = 'GRAU PARENT.'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_DESPAR'
            Title.Alignment = taCenter
            Title.Caption = 'DESCRI'#199#195'O'
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 946
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object BConsFuncionario: TSpeedButton
      Left = 88
      Top = 15
      Width = 23
      Height = 22
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BConsFuncionarioClick
    end
    object EdNumCad: TEdit
      Left = 15
      Top = 15
      Width = 74
      Height = 22
      Color = clInfoBk
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnExit = EdNumCadExit
      OnKeyDown = EdNumCadKeyDown
    end
    object DBE_USU_NOMFUN: TDBEdit
      Left = 116
      Top = 15
      Width = 365
      Height = 22
      TabStop = False
      Color = clInfoBk
      Ctl3D = False
      DataField = 'USU_NOMFUN'
      DataSource = DsConsUsu_TRhFun
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object ConsR034FunImp: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsR034FunImpAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT USU_TRHFUN.*'
      '                               FROM USU_TRHFUN     '
      
        '                               WHERE USU_TRHFUN.USU_TIPCOL = '#39'FU' +
        'NCIONARIO'#39'          '
      '                               ORDER BY USU_NUMCAD')
    Left = 736
    Top = 151
    object ConsR034FunImpUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object ConsR034FunImpUSU_NOMFUN: TStringField
      FieldName = 'USU_NOMFUN'
      Size = 40
    end
    object ConsR034FunImpUSU_APEFUN: TStringField
      FieldName = 'USU_APEFUN'
      Size = 40
    end
    object ConsR034FunImpUSU_DATADM: TDateTimeField
      FieldName = 'USU_DATADM'
    end
    object ConsR034FunImpUSU_NUMCPF: TBCDField
      FieldName = 'USU_NUMCPF'
      Precision = 11
      Size = 0
    end
    object ConsR034FunImpUSU_TIPCOL: TStringField
      FieldName = 'USU_TIPCOL'
    end
    object ConsR034FunImpUSU_CODDEP: TIntegerField
      FieldName = 'USU_CODDEP'
    end
    object ConsR034FunImpUSU_SITAFA: TIntegerField
      FieldName = 'USU_SITAFA'
    end
    object ConsR034FunImpUSU_DESSIT: TStringField
      FieldName = 'USU_DESSIT'
      Size = 40
    end
    object ConsR034FunImpUSU_SITDEP: TStringField
      FieldName = 'USU_SITDEP'
      Size = 10
    end
  end
  object DsConsR034FunImp: TDataSource
    DataSet = ConsR034FunImp
    Left = 656
    Top = 103
  end
  object ConsR034DepImp: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMCAD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TRHFUN.*'
      '                               FROM USU_TRHFUN     '
      
        '                               WHERE USU_TRHFUN.USU_TIPCOL = '#39'DE' +
        'PENDENTE'#39' AND'
      
        '                                            USU_TRHFUN.USU_NUMCA' +
        'D = :NUMCAD          '
      '                               ORDER BY USU_NUMCAD')
    Left = 768
    Top = 79
    object ConsR034DepImpUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object ConsR034DepImpUSU_NOMFUN: TStringField
      FieldName = 'USU_NOMFUN'
      Size = 40
    end
    object ConsR034DepImpUSU_APEFUN: TStringField
      FieldName = 'USU_APEFUN'
      Size = 40
    end
    object ConsR034DepImpUSU_DATADM: TDateTimeField
      FieldName = 'USU_DATADM'
    end
    object ConsR034DepImpUSU_NUMCPF: TBCDField
      FieldName = 'USU_NUMCPF'
      Precision = 11
      Size = 0
    end
    object ConsR034DepImpUSU_TIPCOL: TStringField
      FieldName = 'USU_TIPCOL'
    end
    object ConsR034DepImpUSU_CODDEP: TIntegerField
      FieldName = 'USU_CODDEP'
    end
    object ConsR034DepImpUSU_SITAFA: TIntegerField
      FieldName = 'USU_SITAFA'
    end
    object ConsR034DepImpUSU_DESSIT: TStringField
      FieldName = 'USU_DESSIT'
      Size = 40
    end
    object ConsR034DepImpUSU_SITDEP: TStringField
      FieldName = 'USU_SITDEP'
      Size = 10
    end
    object ConsR034DepImpUSU_GRAPAR: TIntegerField
      FieldName = 'USU_GRAPAR'
    end
    object ConsR034DepImpUSU_DESPAR: TStringField
      FieldName = 'USU_DESPAR'
      Size = 40
    end
  end
  object DsConsR034DepImp: TDataSource
    DataSet = ConsR034DepImp
    Left = 656
    Top = 159
  end
  object ConsUsu_TRhFun: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMCAD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_TRHFUN WHERE USU_NUMCAD = :NUMCAD AND'
      '                               USU_TIPCOL = '#39'FUNCIONARIO'#39)
    Left = 768
    Top = 207
    object ConsUsu_TRhFunUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object ConsUsu_TRhFunUSU_NOMFUN: TStringField
      FieldName = 'USU_NOMFUN'
      Size = 40
    end
    object ConsUsu_TRhFunUSU_APEFUN: TStringField
      FieldName = 'USU_APEFUN'
      Size = 40
    end
    object ConsUsu_TRhFunUSU_DATADM: TDateTimeField
      FieldName = 'USU_DATADM'
    end
    object ConsUsu_TRhFunUSU_NUMCPF: TBCDField
      FieldName = 'USU_NUMCPF'
      Precision = 11
      Size = 0
    end
    object ConsUsu_TRhFunUSU_TIPCOL: TStringField
      FieldName = 'USU_TIPCOL'
    end
    object ConsUsu_TRhFunUSU_CODDEP: TIntegerField
      FieldName = 'USU_CODDEP'
    end
    object ConsUsu_TRhFunUSU_SITAFA: TIntegerField
      FieldName = 'USU_SITAFA'
    end
    object ConsUsu_TRhFunUSU_DESSIT: TStringField
      FieldName = 'USU_DESSIT'
      Size = 40
    end
    object ConsUsu_TRhFunUSU_SITDEP: TStringField
      FieldName = 'USU_SITDEP'
      Size = 10
    end
    object ConsUsu_TRhFunUSU_GRAPAR: TIntegerField
      FieldName = 'USU_GRAPAR'
    end
    object ConsUsu_TRhFunUSU_DESPAR: TStringField
      FieldName = 'USU_DESPAR'
      Size = 40
    end
    object ConsUsu_TRhFunUSU_MERSEX: TStringField
      FieldName = 'USU_MERSEX'
      Size = 100
    end
  end
  object DsConsUsu_TRhFun: TDataSource
    DataSet = ConsUsu_TRhFun
    OnStateChange = DsConsUsu_TRhFunStateChange
    Left = 656
    Top = 215
  end
  object ConsUsu_TRhFunDep: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMCAD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_TRHFUN WHERE USU_NUMCAD = :NUMCAD AND'
      '                               USU_TIPCOL = '#39'DEPENDENTE'#39)
    Left = 776
    Top = 271
    object ConsUsu_TRhFunDepUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object ConsUsu_TRhFunDepUSU_NOMFUN: TStringField
      FieldName = 'USU_NOMFUN'
      Size = 40
    end
    object ConsUsu_TRhFunDepUSU_APEFUN: TStringField
      FieldName = 'USU_APEFUN'
      Size = 40
    end
    object ConsUsu_TRhFunDepUSU_DATADM: TDateTimeField
      FieldName = 'USU_DATADM'
    end
    object ConsUsu_TRhFunDepUSU_NUMCPF: TBCDField
      FieldName = 'USU_NUMCPF'
      Precision = 11
      Size = 0
    end
    object ConsUsu_TRhFunDepUSU_TIPCOL: TStringField
      FieldName = 'USU_TIPCOL'
    end
    object ConsUsu_TRhFunDepUSU_CODDEP: TIntegerField
      FieldName = 'USU_CODDEP'
    end
    object ConsUsu_TRhFunDepUSU_SITAFA: TIntegerField
      FieldName = 'USU_SITAFA'
    end
    object ConsUsu_TRhFunDepUSU_DESSIT: TStringField
      FieldName = 'USU_DESSIT'
      Size = 40
    end
    object ConsUsu_TRhFunDepUSU_SITDEP: TStringField
      FieldName = 'USU_SITDEP'
      Size = 10
    end
    object ConsUsu_TRhFunDepUSU_GRAPAR: TIntegerField
      FieldName = 'USU_GRAPAR'
    end
    object ConsUsu_TRhFunDepUSU_DESPAR: TStringField
      FieldName = 'USU_DESPAR'
      Size = 40
    end
  end
  object DsConsUsu_TRhFunDep: TDataSource
    DataSet = ConsUsu_TRhFunDep
    Left = 656
    Top = 271
  end
  object ConsSerMov: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MESSER'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANOSER'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMCAD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TRHSERMOV.* FROM USU_TRHSERMOV'
      '                       WHERE'
      '                       USU_TRHSERMOV.USU_MESSER = :MESSER AND'
      '                       USU_TRHSERMOV.USU_ANOSER = :ANOSER AND'
      '                       USU_TRHSERMOV.USU_NUMCAD = :NUMCAD'
      '                       ORDER BY  USU_TRHSERMOV.USU_DATSER')
    Left = 776
    Top = 319
    object ConsSerMovUSU_SEQSER: TIntegerField
      FieldName = 'USU_SEQSER'
    end
    object ConsSerMovUSU_CODSER: TStringField
      FieldName = 'USU_CODSER'
      Size = 40
    end
    object ConsSerMovUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object ConsSerMovUSU_CODDEP: TIntegerField
      FieldName = 'USU_CODDEP'
    end
    object ConsSerMovUSU_QTDSER: TIntegerField
      FieldName = 'USU_QTDSER'
    end
    object ConsSerMovUSU_PREUNI: TBCDField
      FieldName = 'USU_PREUNI'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsSerMovUSU_DATSER: TDateTimeField
      FieldName = 'USU_DATSER'
    end
    object ConsSerMovUSU_MESSER: TIntegerField
      FieldName = 'USU_MESSER'
    end
    object ConsSerMovUSU_ANOSER: TIntegerField
      FieldName = 'USU_ANOSER'
    end
    object ConsSerMovUSU_NOMFUN: TStringField
      FieldName = 'USU_NOMFUN'
      Size = 40
    end
    object ConsSerMovUSU_OBSSER: TStringField
      FieldName = 'USU_OBSSER'
      Size = 200
    end
    object ConsSerMovUSU_INADT: TStringField
      FieldName = 'USU_INADT'
      Size = 1
    end
    object ConsSerMovUSU_VLRCOB: TBCDField
      FieldName = 'USU_VLRCOB'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsSerMovUSU_ADTGER: TStringField
      Alignment = taCenter
      FieldName = 'USU_ADTGER'
      Size = 1
    end
    object ConsSerMovUSU_DATGADT: TDateTimeField
      Alignment = taCenter
      FieldName = 'USU_DATGADT'
    end
  end
  object DsConsSerMov: TDataSource
    DataSet = ConsSerMov
    Left = 656
    Top = 319
  end
  object ConsAdtAberto: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsAdtAbertoAfterScroll
    OnCalcFields = ConsAdtAbertoCalcFields
    Parameters = <
      item
        Name = 'NUMCAD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TRHADTFUN.* FROM USU_TRHADTFUN'
      '                       WHERE'
      '                       USU_TRHADTFUN.USU_NUMCAD = :NUMCAD AND'
      '                       USU_TRHADTFUN.USU_SITADT = '#39'A'#39
      
        '                       ORDER BY USU_TRHADTFUN.USU_NUMADT,USU_TRH' +
        'ADTFUN.USU_SEQADT')
    Left = 656
    Top = 392
    object ConsAdtAbertoUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object ConsAdtAbertoUSU_NUMADT: TIntegerField
      FieldName = 'USU_NUMADT'
    end
    object ConsAdtAbertoUSU_DATADT: TDateTimeField
      FieldName = 'USU_DATADT'
    end
    object ConsAdtAbertoUSU_VLRADT: TBCDField
      FieldName = 'USU_VLRADT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsAdtAbertoUSU_VLRPAR: TBCDField
      FieldName = 'USU_VLRPAR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsAdtAbertoUSU_VLRPGT: TBCDField
      FieldName = 'USU_VLRPGT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsAdtAbertoUSU_VLRABE: TBCDField
      FieldName = 'USU_VLRABE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsAdtAbertoUSU_DATVCT: TDateTimeField
      FieldName = 'USU_DATVCT'
    end
    object ConsAdtAbertoUSU_SITADT: TStringField
      FieldName = 'USU_SITADT'
      Size = 1
    end
    object ConsAdtAbertoUSU_DSCFLA: TStringField
      FieldName = 'USU_DSCFLA'
      Size = 1
    end
    object ConsAdtAbertoUSU_DATMOV: TDateTimeField
      FieldName = 'USU_DATMOV'
    end
    object ConsAdtAbertoUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
    object ConsAdtAbertoUSU_SEQADT: TIntegerField
      FieldName = 'USU_SEQADT'
    end
    object ConsAdtAbertoQTDDIA: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'QTDDIA'
      Calculated = True
    end
    object ConsAdtAbertoUSU_VLRDSC: TBCDField
      Alignment = taCenter
      FieldName = 'USU_VLRDSC'
      Precision = 11
      Size = 2
    end
  end
  object DsConsAdtAberto: TDataSource
    DataSet = ConsAdtAberto
    Left = 496
    Top = 136
  end
  object ConsAdtPago: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsAdtPagoAfterScroll
    Parameters = <
      item
        Name = 'NUMCAD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TRHADTFUN.* FROM USU_TRHADTFUN'
      '                       WHERE'
      '                       USU_TRHADTFUN.USU_NUMCAD = :NUMCAD AND'
      '                       USU_TRHADTFUN.USU_SITADT = '#39'P'#39
      
        '                       ORDER BY USU_TRHADTFUN.USU_NUMADT,USU_TRH' +
        'ADTFUN.USU_SEQADT')
    Left = 752
    Top = 392
    object ConsAdtPagoUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object ConsAdtPagoUSU_NUMADT: TIntegerField
      FieldName = 'USU_NUMADT'
    end
    object ConsAdtPagoUSU_DATADT: TDateTimeField
      FieldName = 'USU_DATADT'
    end
    object ConsAdtPagoUSU_VLRADT: TBCDField
      FieldName = 'USU_VLRADT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsAdtPagoUSU_VLRPAR: TBCDField
      FieldName = 'USU_VLRPAR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsAdtPagoUSU_VLRPGT: TBCDField
      FieldName = 'USU_VLRPGT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsAdtPagoUSU_VLRABE: TBCDField
      FieldName = 'USU_VLRABE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsAdtPagoUSU_DATVCT: TDateTimeField
      FieldName = 'USU_DATVCT'
    end
    object ConsAdtPagoUSU_SITADT: TStringField
      FieldName = 'USU_SITADT'
      Size = 1
    end
    object ConsAdtPagoUSU_DSCFLA: TStringField
      FieldName = 'USU_DSCFLA'
      Size = 1
    end
    object ConsAdtPagoUSU_DATMOV: TDateTimeField
      FieldName = 'USU_DATMOV'
    end
    object ConsAdtPagoUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
    object ConsAdtPagoUSU_SEQADT: TIntegerField
      FieldName = 'USU_SEQADT'
    end
    object ConsAdtPagoUSU_VLRDSC: TBCDField
      FieldName = 'USU_VLRDSC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
  end
  object DsConsAdtPago: TDataSource
    DataSet = ConsAdtPago
    Left = 496
    Top = 184
  end
  object ConsAdtPgtAberto: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMCAD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMADT'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SEQADT'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TRHADTPGT.* FROM USU_TRHADTPGT'
      '                       WHERE'
      '                       USU_TRHADTPGT.USU_NUMCAD = :NUMCAD AND'
      '                       USU_TRHADTPGT.USU_NUMADT = :NUMADT AND'
      '                       USU_TRHADTPGT.USU_SEQADT = :SEQADT '
      '                       ORDER BY USU_TRHADTPGT.USU_SEQPGT ')
    Left = 736
    Top = 512
    object ConsAdtPgtAbertoUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object ConsAdtPgtAbertoUSU_NUMADT: TIntegerField
      FieldName = 'USU_NUMADT'
    end
    object ConsAdtPgtAbertoUSU_SEQADT: TIntegerField
      FieldName = 'USU_SEQADT'
    end
    object ConsAdtPgtAbertoUSU_DATPGT: TDateTimeField
      FieldName = 'USU_DATPGT'
    end
    object ConsAdtPgtAbertoUSU_VLRPGT: TBCDField
      FieldName = 'USU_VLRPGT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsAdtPgtAbertoUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object ConsAdtPgtAbertoUSU_SEQPGT: TIntegerField
      FieldName = 'USU_SEQPGT'
    end
  end
  object DsConsAdtPgtAberto: TDataSource
    DataSet = ConsAdtPgtAberto
    Left = 624
    Top = 512
  end
  object ConsAdtPgtPago: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMCAD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMADT'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SEQADT'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TRHADTPGT.* FROM USU_TRHADTPGT'
      '                       WHERE'
      '                       USU_TRHADTPGT.USU_NUMCAD = :NUMCAD AND'
      '                       USU_TRHADTPGT.USU_NUMADT = :NUMADT AND'
      '                       USU_TRHADTPGT.USU_SEQADT = :SEQADT '
      '                       ORDER BY USU_TRHADTPGT.USU_SEQPGT ')
    Left = 744
    Top = 560
    object ConsAdtPgtPagoUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object ConsAdtPgtPagoUSU_NUMADT: TIntegerField
      FieldName = 'USU_NUMADT'
    end
    object ConsAdtPgtPagoUSU_SEQADT: TIntegerField
      FieldName = 'USU_SEQADT'
    end
    object ConsAdtPgtPagoUSU_DATPGT: TDateTimeField
      FieldName = 'USU_DATPGT'
    end
    object ConsAdtPgtPagoUSU_VLRPGT: TBCDField
      FieldName = 'USU_VLRPGT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ConsAdtPgtPagoUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object ConsAdtPgtPagoUSU_SEQPGT: TIntegerField
      FieldName = 'USU_SEQPGT'
    end
  end
  object DsConsAdtPgtPago: TDataSource
    DataSet = ConsAdtPgtPago
    Left = 632
    Top = 568
  end
end
