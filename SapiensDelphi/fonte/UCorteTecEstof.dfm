object FCorteTecEstof: TFCorteTecEstof
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Corte de Tecidos de Estofados'
  ClientHeight = 662
  ClientWidth = 1234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 1234
    Height = 662
    ActivePage = tbEmCorte
    Align = alClient
    TabOrder = 0
    object tbEmCorte: TTabSheet
      Caption = 'Cargas em Corte'
      OnShow = tbEmCorteShow
      object pnl1: TPanel
        Left = 0
        Top = -1
        Width = 1230
        Height = 198
        BevelKind = bkTile
        BevelOuter = bvNone
        TabOrder = 0
        object lbl1: TLabel
          Left = 77
          Top = 3
          Width = 167
          Height = 16
          Caption = 'LIBERADAS P/PRODU'#199#195'O '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 511
          Top = 3
          Width = 92
          Height = 16
          Caption = 'EM PRODU'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnTransferir: TSpeedButton
          Left = 341
          Top = 88
          Width = 36
          Height = 57
          Glyph.Data = {
            76030000424D7603000000000000360000002800000011000000100000000100
            18000000000040030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF000000BFBFBFBFBFBFBFBFBFBFBF
            BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBF0000FF0000FF000000BFBFBFBFBFBFBFBFBF00BFBFBF00000000000000
            00000000000000000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF
            000000BFBFBFBFBFBF00BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
            00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF000000BFBFBF00BFBF
            BF000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000FF0000FF0000FF0000FF00
            00FF0000FF0000FF0000FF0000FF00000000BFBFBF000000FFFFFF0000000000
            00FFFFFF0000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
            0000BFBFBF00BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000FF0000
            FF0000FF0000FF0000FF0000FF0000FF000000BFBFBFBFBFBF00BFBFBF000000
            FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FF0000
            FF000000BFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0000000000FF000000BFBFBFBFBFBFBFBFBFBFBF
            BF00BFBFBF000000FFFFFF000000000000FFFFFF000000000000000000000000
            000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFFFF
            FFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF000000BFBFBFFFFFFF000000FF
            FFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBF
            BF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF0000000000000000000000
            00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00}
          OnClick = btnTransferirClick
        end
        object dbgCargasLiberadas: TDBGrid
          Left = -1
          Top = 21
          Width = 338
          Height = 174
          DataSource = dsConsUsu_TPreCarLib
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
              FieldName = 'USU_PRECAR'
              Title.Alignment = taCenter
              Title.Caption = 'CARGA'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'USU_DATLIB'
              Title.Alignment = taCenter
              Title.Caption = 'LIBERADO'
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NOMUSU'
              Title.Alignment = taCenter
              Title.Caption = 'USUARIO'
              Width = 120
              Visible = True
            end>
        end
        object dbgCargasEmProducao: TDBGrid
          Left = 381
          Top = 21
          Width = 347
          Height = 174
          DataSource = dsConsUsu_TCarPro
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = pmCarga
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = dbgCargasEmProducaoDrawColumnCell
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'USU_NUMANE'
              Title.Alignment = taCenter
              Title.Caption = 'CARGA'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'USU_DATIMP'
              Title.Alignment = taCenter
              Title.Caption = 'IMPORTA'#199#195'O'
              Width = 110
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NOMUSU'
              Title.Alignment = taCenter
              Title.Caption = 'USUARIO'
              Width = 120
              Visible = True
            end>
        end
        object dbgObservacoes: TDBGrid
          Left = 734
          Top = 0
          Width = 490
          Height = 196
          DataSource = dsCadUsu_TCarProObs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = dbgObservacoesCellClick
          OnDrawColumnCell = dbgObservacoesDrawColumnCell
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Check'
              Width = 30
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ImgTipMov'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_DESOBS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 395
              Visible = True
            end>
        end
      end
      object dbgProdutosEmCorte: TDBGrid
        Left = -2
        Top = 256
        Width = 730
        Height = 337
        DataSource = dsConsUsu_TProCar
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgProdutosEmCorteDrawColumnCell
        OnDblClick = dbgProdutosEmCorteDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_NUMANE'
            Title.Alignment = taCenter
            Title.Caption = 'CARGA'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODPRO'
            Title.Alignment = taCenter
            Title.Caption = 'PRODUTO'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESPRO'
            Title.Alignment = taCenter
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 240
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODDER'
            Title.Alignment = taCenter
            Title.Caption = 'DERIV.'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 15722204
            Expanded = False
            FieldName = 'USU_QTDPED'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'PEDIDO'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 14286809
            Expanded = False
            FieldName = 'USU_QTDPRO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'PRODUZIDO'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 12320767
            Expanded = False
            FieldName = 'USU_QTDABE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'ABERTO'
            Width = 70
            Visible = True
          end>
      end
      object dbgCoresEmCorte: TDBGrid
        Left = 734
        Top = 256
        Width = 495
        Height = 337
        DataSource = dsConsUsu_tCorCar
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = pmCores
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODCOR1'
            Title.Alignment = taCenter
            Title.Caption = 'COR 01'
            Width = 105
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODCOR2'
            Title.Alignment = taCenter
            Title.Caption = 'COR 02'
            Width = 105
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 15722204
            Expanded = False
            FieldName = 'USU_QTDPED'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'PEDIDO'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 14286809
            Expanded = False
            FieldName = 'USU_QTDPRO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'PRODUZIDO'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 12320767
            Expanded = False
            FieldName = 'USU_QTDABE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'ABERTO'
            Width = 80
            Visible = True
          end>
      end
      object edtDesPro: TEdit
        Left = 251
        Top = 226
        Width = 477
        Height = 27
        CharCase = ecUpperCase
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnChange = edtDesProChange
      end
      object rbTodos: TRadioButton
        Left = 186
        Top = 231
        Width = 58
        Height = 17
        Caption = 'Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = rbTodosClick
      end
      object rbFinalizado: TRadioButton
        Left = 97
        Top = 231
        Width = 76
        Height = 17
        Caption = 'Finalizado'
        Color = 16772031
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        OnClick = rbFinalizadoClick
      end
      object rbEmAberto: TRadioButton
        Left = 6
        Top = 231
        Width = 78
        Height = 17
        Caption = 'Em Aberto'
        Checked = True
        Color = clBtnFace
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14024661
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        TabStop = True
        OnClick = rbEmAbertoClick
      end
      object btnBaixaProduto: TBitBtn
        Left = 472
        Top = 599
        Width = 100
        Height = 30
        Caption = 'Baixar'
        DoubleBuffered = True
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777000000
          0000000000007777770788888888800000007888870F77777777800000008FFF
          F80F77700777800000008F11F80F70000007800000008F11F80F777777778000
          00008FFFF80FFFFFFFFF7000000078888F0000000070000000008FFFF8FFFF87
          7717770000008F33F8F22F877111770000008F33F8F22F877717770000008FFF
          F8FFFF8777177700000078888F8888777717770000008FFFF8FFFF8777177700
          00008FDDF8FCCF111117770000008FDDF8FCCF877777770000008FFFF8FFFF87
          777777000000788887888877777777000000}
        ParentDoubleBuffered = False
        TabOrder = 7
        OnClick = btnBaixaProdutoClick
      end
      object btnEstornoLancamento: TBitBtn
        Left = 575
        Top = 599
        Width = 100
        Height = 30
        Caption = 'Estornar'
        DoubleBuffered = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000012000000120000000100
          08000000000068010000120B0000120B00001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
          070708080808070808080807000007070707070707080F0F0F0F080F0F0F0F08
          000007070707070707080F0C0C0F080F0D0D0F08000007070701010101010F0C
          0C0F080F0D0D0F08000007070701070707080F0F0F0F080F0F0F0F0800000707
          070107070707080808080F0808080807000007070701070707080F0F0F0F080F
          0F0F0F08000007070701070707080F02020F080F03030F080000070701010107
          07080F02020F080F03030F08000007070701070707080F0F0F0F080F0F0F0F08
          00000000000700000000000000000F0808080807000000070F0F0F0F0F0F0F0F
          0F00080F0F0F0F080000000807070707070707070F00080F01010F0800000008
          07000000000000070F00080F01010F080000000807070700000707070F00080F
          0F0F0F080000000807070707070707070F000708080808070000000808080808
          0808080807000707070707070000000000000000000000000000070707070707
          0000}
        ParentDoubleBuffered = False
        TabOrder = 8
        OnClick = btnEstornoLancamentoClick
      end
      object btnAlteraProdutos: TBitBtn
        Left = 678
        Top = 599
        Width = 100
        Height = 30
        Caption = 'Alterar'
        DoubleBuffered = True
        Glyph.Data = {
          B6030000424DB603000000000000360000002800000012000000100000000100
          1800000000008003000000000000000000000000000000000000C0C0C0000000
          000000000000000000000000000000000000000000000000000000000000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0000000FFFFFFFFFFFFFFFFFF00000000000000
          0000000000000000FFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0800000C0C0C0
          0000C0C0C0000000FFFFFF000000808000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C0C0C0C0C0C0C0800000800000C0C0C00000C0C0C0000000
          FFFFFF000000808000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C0C0C0C0800000800000800000C0C0C00000C0C0C0000000FFFFFFFFFFFFFFFF
          FF0000FF0000FF0000FF0000FF0000FFFFFFFF000000C0C0C080000080000080
          0000800000C0C0C00000C0C0C0000000FFFFFF0000008080000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0800000800000800000C0C0C0
          0000C0C0C0000000FFFFFF000000808000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C0C0C0C0C0C0C0800000800000C0C0C00000C0C0C0000000
          FFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFF000000C0C0
          C0C0C0C0C0C0C0C0C0C0800000C0C0C00000C0C0C0000000FFFFFF0000008080
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0000000FFFFFF000000808000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          0000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0800000
          800000800000800000800000800000800000800000800000800000800000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0800000FFFFFFFFFFFF8000
          00800000800000800000800000800000800000800000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C080000080000080000080000080000080000080
          0000800000800000800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000}
        ParentDoubleBuffered = False
        TabOrder = 9
        OnClick = btnAlteraProdutosClick
      end
      object btnInverterCores: TBitBtn
        Left = 944
        Top = 599
        Width = 113
        Height = 30
        Caption = 'Inverter Cores'
        DoubleBuffered = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888800008888888878888000008800008888888807888008888800008888
          8777007888008888000088887000000788800888000088870FFF00F888880088
          00008870F8880F8880000088000088078888F888888888880000880788888888
          88888888000088F077777777777778880000888F000000000000078800008888
          FFFFFFFFFFFFF078000088888888888888888708000080088800888878888708
          0000800888008887088887080000880000088870077770880000880080088F00
          0000088800008880008888F00FFFF888000088870788888F0888888800008888
          88888888888888880000}
        ParentDoubleBuffered = False
        TabOrder = 10
        OnClick = btnInverterCoresClick
      end
      object btnValidar: TBitBtn
        Left = 0
        Top = 198
        Width = 75
        Height = 20
        Caption = 'Validar'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 11
        OnClick = btnValidarClick
      end
    end
    object tbResumo: TTabSheet
      Caption = 'Resumo '
      ImageIndex = 1
      OnShow = tbResumoShow
      object pnl2: TPanel
        Left = -1
        Top = -5
        Width = 1229
        Height = 194
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 0
        object lbl4: TLabel
          Left = 552
          Top = 7
          Width = 153
          Height = 16
          Caption = 'CARGAS EM PRODU'#199#195'O '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnMarcaCargasResumo: TSpeedButton
          Left = 445
          Top = 10
          Width = 19
          Height = 19
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDE9D9D9D9D
            9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9DDEDEDE
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF9D9D9DDADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF9D9D9DE0E0E0F4F4F4F4F4F4F4F4F4909090424242DADA
            DAF4F4F4F4F4F4F4F4F4FFFFFF9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DE0E0E0F4F4F4DDDDDDA4A4A4
            1212120000008A8A8AF4F4F4F4F4F4F4F4F4FFFFFF9D9D9DFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DE0E0E0F4
            F4F4676767121212000000000000444444F4F4F4F4F4F4F4F4F4FFFFFF9D9D9D
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF9D9D9DE0E0E07D7D7D000000000000A4A4A44242421E1E1EBEBEBEF4F4F4F4
            F4F4FFFFFF9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF9D9D9DE0E0E0F4F4F46C6C6C909090F4F4F4C8C8C80000
            00737373F4F4F4F4F4F4FFFFFF9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DE0E0E0F4F4F4F4F4F4F4F4F4
            F4F4F4F4F4F4737373000000B2B2B2F4F4F4FFFFFF9D9D9DFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DE0E0E0F4
            F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4737373424242C1C1C1FFFFFF9D9D9D
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF9D9D9DE0E0E0F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F481818142
            4242FFFFFF9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF9D9D9DE0E0E0F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
            F4F4F4F4F4F4F4DBDBDBFFFFFF9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DE0E0E0E0E0E0E0E0E0E0E0E0
            E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DADADA9D9D9DFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDE9D9D9D9D
            9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9DD1D1D1
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = btnMarcaCargasResumoClick
        end
        object btnDesmarcaCargasResumo: TSpeedButton
          Left = 426
          Top = 10
          Width = 19
          Height = 19
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080
            8080808080808080808080808080808080808080808080808080808080808080
            80808080FFFFFFFFFFFFFFFFFF808080E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8808080FFFFFFFFFFFFFFFFFF808080
            EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EA808080FFFFFFFFFFFFFFFFFF808080EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED
            EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED808080FFFFFFFFFFFFFFFFFF808080
            EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
            EF808080FFFFFFFFFFFFFFFFFF808080F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
            F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1808080FFFFFFFFFFFFFFFFFF808080
            F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
            F4808080FFFFFFFFFFFFFFFFFF808080F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
            F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6808080FFFFFFFFFFFFFFFFFF808080
            F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
            F8808080FFFFFFFFFFFFFFFFFF808080FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
            FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA808080FFFFFFFFFFFFFFFFFF808080
            FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
            FD808080FFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFF808080
            8080808080808080808080808080808080808080808080808080808080808080
            80808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = btnDesmarcaCargasResumoClick
        end
        object dbgCargasProdResumo: TDBGrid
          Left = 426
          Top = 29
          Width = 395
          Height = 163
          DataSource = dsConsUsu_TCarProResumo
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = dbgCargasProdResumoCellClick
          OnDrawColumnCell = dbgCargasProdResumoDrawColumnCell
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ITESEL'
              Title.Alignment = taCenter
              Title.Caption = ' '
              Width = 30
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'USU_NUMANE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'CARGA'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'USU_DATIMP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'IMPORTA'#199#195'O'
              Width = 110
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NOMUSU'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'USUARIO'
              Width = 130
              Visible = True
            end>
        end
      end
      object edtDesProResumo: TEdit
        Left = 366
        Top = 193
        Width = 513
        Height = 27
        CharCase = ecUpperCase
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnChange = edtDesProResumoChange
      end
      object dbg2: TDBGrid
        Left = -2
        Top = 224
        Width = 730
        Height = 411
        DataSource = dsConsUsu_TProCarResumo
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODPRO'
            Title.Alignment = taCenter
            Title.Caption = 'PRODUTO'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DESPRO'
            Title.Alignment = taCenter
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 300
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODDER'
            Title.Alignment = taCenter
            Title.Caption = 'DERIV.'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 15722204
            Expanded = False
            FieldName = 'QTDPED'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'PEDIDO'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 14286809
            Expanded = False
            FieldName = 'QTDPRO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'PRODUZIDO'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 12320767
            Expanded = False
            FieldName = 'QTDABE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'ABERTO'
            Width = 80
            Visible = True
          end>
      end
      object dbg3: TDBGrid
        Left = 734
        Top = 224
        Width = 493
        Height = 411
        DataSource = dsConsUsu_TCorCarResumo
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODCOR1'
            Title.Alignment = taCenter
            Title.Caption = 'COR 01'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODCOR2'
            Title.Alignment = taCenter
            Title.Caption = 'COR 02'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 15722204
            Expanded = False
            FieldName = 'QTDPED'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'PEDIDO'
            Width = 85
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 14286809
            Expanded = False
            FieldName = 'QTDPRO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'PRODUZIDO'
            Width = 85
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 12320767
            Expanded = False
            FieldName = 'QTDABE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'ABERTO'
            Width = 85
            Visible = True
          end>
      end
    end
  end
  object dsConsUsu_TPreCarLib: TDataSource
    DataSet = Dm1.ConsUsu_TPreCarLib
    Left = 64
    Top = 328
  end
  object dsConsUsu_TCarPro: TDataSource
    DataSet = ConsUsu_TCarPro
    Left = 168
    Top = 368
  end
  object dsConsUsu_TProCar: TDataSource
    DataSet = ConsUsu_TProCar
    Left = 168
    Top = 424
  end
  object dsConsUsu_tCorCar: TDataSource
    DataSet = ConsUsu_TCorCar
    Left = 168
    Top = 488
  end
  object ConsUsu_TCorCar: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
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
      end>
    SQL.Strings = (
      
        'select usu_tcorcar.*,procor1.usu_teclisflo as LisFlo1,procor2.us' +
        'u_teclisflo as LisFlo2'
      '                                         from usu_tcorcar'
      'left join e075pro procor1 on procor1.codpro = usu_codcor1'
      'left join e075pro procor2 on procor2.codpro = usu_codcor2'
      '                                         where'
      
        '                                         usu_numane = :numane an' +
        'd'
      
        '                                         usu_codpro = :codpro an' +
        'd'
      '                                         usu_codder = :codder '
      
        '                                         ORDER BY USU_TCORCAR.US' +
        'U_CODCOR1')
    Left = 296
    Top = 488
    object ConsUsu_TCorCarUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TCorCarUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TCorCarUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TCorCarUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object ConsUsu_TCorCarUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object ConsUsu_TCorCarUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ConsUsu_TCorCarUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_TCorCarUSU_SALABE1: TBCDField
      FieldName = 'USU_SALABE1'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCorCarUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object ConsUsu_TCorCarUSU_SALABE2: TBCDField
      FieldName = 'USU_SALABE2'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCorCarUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object ConsUsu_TCorCarUSU_CORCOR: TStringField
      FieldName = 'USU_CORCOR'
      Size = 1
    end
    object ConsUsu_TCorCarUSU_SELITE: TStringField
      FieldName = 'USU_SELITE'
      Size = 1
    end
    object ConsUsu_TCorCarUSU_QTDCOR1: TBCDField
      FieldName = 'USU_QTDCOR1'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCorCarUSU_QTDCOR2: TBCDField
      FieldName = 'USU_QTDCOR2'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCorCarLISFLO1: TStringField
      FieldName = 'LISFLO1'
      Size = 1
    end
    object ConsUsu_TCorCarLISFLO2: TStringField
      FieldName = 'LISFLO2'
      Size = 1
    end
  end
  object ConsUsu_TProCar: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsUsu_TProCarAfterScroll
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
      end>
    SQL.Strings = (
      'select usu_tprocar.*, e075pro.despro from usu_tprocar'
      'inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro'
      ' where usu_tprocar.usu_numane = :numane and'
      '                       usu_tprocar.usu_codpro = :codpro ')
    Left = 296
    Top = 440
    object ConsUsu_TProCarUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TProCarUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TProCarUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TProCarUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object ConsUsu_TProCarUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ConsUsu_TProCarUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_TProCarUSU_PROCOR: TStringField
      FieldName = 'USU_PROCOR'
      Size = 1
    end
    object ConsUsu_TProCarDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object ConsUsu_TCarPro: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsUsu_TCarProAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select usu_tcarpro.*, r999usu.nomusu from usu_tcarpro'
      'inner join r999usu on r999usu.codusu = usu_tcarpro.usu_usuimp'
      '                            where usu_tcarpro.usu_carpro = '#39'N'#39
      '                            order by usu_tcarpro.usu_numane')
    Left = 296
    Top = 376
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
    object ConsUsu_TCarProNOMUSU: TStringField
      FieldName = 'NOMUSU'
      Size = 255
    end
    object ConsUsu_TCarProUSU_ITESEL: TStringField
      FieldName = 'USU_ITESEL'
      Size = 1
    end
    object ConsUsu_TCarProUSU_OBSCAR: TStringField
      FieldName = 'USU_OBSCAR'
      Size = 500
    end
  end
  object ConsUsu_TCarProResumo: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    AfterPost = ConsUsu_TCarProResumoAfterPost
    Parameters = <>
    SQL.Strings = (
      'select usu_tcarpro.*, r999usu.nomusu from usu_tcarpro'
      'inner join r999usu on r999usu.codusu = usu_tcarpro.usu_usuimp'
      '                            where usu_tcarpro.usu_carpro = '#39'N'#39
      '                            order by usu_tcarpro.usu_numane')
    Left = 456
    Top = 376
    object ConsUsu_TCarProResumoUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TCarProResumoUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object ConsUsu_TCarProResumoUSU_HORIMP: TIntegerField
      FieldName = 'USU_HORIMP'
    end
    object ConsUsu_TCarProResumoUSU_USUIMP: TIntegerField
      FieldName = 'USU_USUIMP'
    end
    object ConsUsu_TCarProResumoUSU_CARPRO: TStringField
      FieldName = 'USU_CARPRO'
      Size = 1
    end
    object ConsUsu_TCarProResumoUSU_ITESEL: TStringField
      FieldName = 'USU_ITESEL'
      Size = 1
    end
    object ConsUsu_TCarProResumoNOMUSU: TStringField
      FieldName = 'NOMUSU'
      Size = 255
    end
    object ConsUsu_TCarProResumoITESEL: TStringField
      FieldKind = fkCalculated
      FieldName = 'ITESEL'
      Size = 10
      Calculated = True
    end
  end
  object dsConsUsu_TCarProResumo: TDataSource
    AutoEdit = False
    DataSet = ConsUsu_TCarProResumo
    Left = 176
    Top = 272
  end
  object ConsUsu_TProCarResumo: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsUsu_TProCarResumoAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT USU_TCORCAR.USU_CODPRO, USU_TCORCAR.USU_CODDER,E075PRO.DE' +
        'SPRO,'
      '       SUM(USU_TCORCAR.USU_QTDPED) AS QTDPED,'
      '       SUM(USU_TCORCAR.USU_QTDPRO) AS QTDPRO,'
      '       SUM(USU_TCORCAR.USU_QTDABE) AS QTDABE'
      '                    FROM USU_TCORCAR'
      
        'INNER JOIN USU_TCARPRO ON USU_TCARPRO.USU_NUMANE = USU_TCORCAR.U' +
        'SU_NUMANE'
      'INNER JOIN E075PRO ON E075PRO.CODPRO = USU_TCORCAR.USU_CODPRO'
      '                    WHERE USU_TCARPRO.USU_ITESEL = '#39'S'#39
      
        '                    GROUP BY USU_TCORCAR.USU_CODPRO,USU_TCORCAR.' +
        'USU_CODDER,E075PRO.DESPRO'
      '                    ORDER BY USU_TCORCAR.USU_CODPRO, QTDABE')
    Left = 456
    Top = 440
    object ConsUsu_TProCarResumoUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TProCarResumoUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TProCarResumoDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsUsu_TProCarResumoQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsUsu_TProCarResumoQTDPRO: TFMTBCDField
      FieldName = 'QTDPRO'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsUsu_TProCarResumoQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object dsConsUsu_TProCarResumo: TDataSource
    DataSet = ConsUsu_TProCarResumo
    Left = 464
    Top = 272
  end
  object ConsUsu_TCorCarResumo: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODDER'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TCORCAR.USU_CODCOR1,USU_TCORCAR.USU_CODCOR2,'
      '       SUM(USU_TCORCAR.USU_QTDPED) AS QTDPED,'
      '       SUM(USU_TCORCAR.USU_QTDPRO) AS QTDPRO,'
      '       SUM(USU_TCORCAR.USU_QTDABE) AS QTDABE'
      '                    FROM USU_TCORCAR'
      
        'INNER JOIN USU_TCARPRO ON USU_TCARPRO.USU_NUMANE = USU_TCORCAR.U' +
        'SU_NUMANE'
      '                    WHERE USU_TCARPRO.USU_ITESEL = '#39'S'#39' AND'
      '                          USU_TCORCAR.USU_CODPRO = :CODPRO AND'
      '                          USU_TCORCAR.USU_CODDER = :CODDER'
      
        '                    GROUP BY USU_TCORCAR.USU_CODCOR1,USU_TCORCAR' +
        '.USU_CODCOR2'
      '                    ORDER BY USU_TCORCAR.USU_CODCOR1')
    Left = 464
    Top = 496
    object ConsUsu_TCorCarResumoUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object ConsUsu_TCorCarResumoUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object ConsUsu_TCorCarResumoQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsUsu_TCorCarResumoQTDPRO: TFMTBCDField
      FieldName = 'QTDPRO'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsUsu_TCorCarResumoQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object dsConsUsu_TCorCarResumo: TDataSource
    DataSet = ConsUsu_TCorCarResumo
    Left = 584
    Top = 288
  end
  object dsReserva: TDataSource
    Left = 640
    Top = 352
  end
  object dsCadUsu_TCarProObs: TDataSource
    DataSet = Dm1.CadUsu_TCarProObs
    Left = 168
    Top = 544
  end
  object ImageList1: TImageList
    Left = 624
    Top = 424
    Bitmap = {
      494C01010900A001A00110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000016161600FF660000CC660000CC66
      0000CC3300009933000099330000993300009933000099330000993300009933
      0000993300006633000066330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000022222200FF663300FF660000CC66
      0000CC660000CC330000CC330000CC3300009933000099330000993300009933
      0000993300006633000066330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029292900FF663300FF663300FF66
      0000CC660000CC660000CC660000CC660000CC33000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000033333300FF993300FF663300FF66
      3300FF660000FF660000CC660000D7D7D700C0C0C00099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000033333300FF993300FF993300FF66
      3300FF663300FF660000FF660000D7D7D700B2B2B20099330000CC3300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039393900FF993300FF993300FF66
      3300FF660000FF660000FF660000D7D7D700B2B2B20099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039393900FF993300FF993300FF66
      3300F8F8F800E3E3E300E3E3E300D7D7D700B2B2B200B2B2B200B2B2B200C0C0
      C000CC3300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039393900FF993300FF993300FF99
      3300FFFFFF00F8F8F800F8F8F800EAEAEA00D7D7D700D7D7D700D7D7D700D7D7
      D700CC6600009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042424200FF996600FF996600FF99
      6600FF996600FF996600FF996600F8F8F800E3E3E300FF660000FF660000CC66
      0000CC660000CC33000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042424200FF996600FF996600FF99
      6600FF996600FF993300FF996600F8F8F800E3E3E300FF660000FF660000FF66
      0000CC660000CC33000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D4D4D00FF996600FF996600FF99
      6600FF996600FF996600FF996600FFFFFF00F8F8F800FF660000FF663300FF66
      0000CC660000CC660000CC330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000055555500FF996600FF996600FF99
      6600FF996600FF996600FF996600FF993300FF993300FF663300FF663300FF66
      3300FF660000CC660000CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066666600FFCC9900FF996600FF99
      6600FF996600FF996600FF996600FF993300FF993300FF993300FF993300FF66
      3300FF663300FF660000CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066666600FFCC9900FFCC9900FF99
      6600FF996600FF996600FF996600FF996600FF993300FF993300FF993300FF99
      3300FF993300FF663300FF660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005555550066666600666666005555
      55004D4D4D004242420042424200424242003939390039393900393939003333
      3300292929002222220016161600000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000161616000000CC00000099000000
      9900000099000000990000008000000080000000800000008000000080000000
      6600000066000000660000006600000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000000000000000222222003333CC000000CC000000
      CC00000099000000990000009900000099000000990000008000000080000000
      66000000660000006600000066000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000007F7F7F00000000007F7F7F00000000000000FF000000
      FF000000FF00000000000000000000000000292929003333CC003333CC000000
      CC000000CC000000990000009900000099000000990000009900000080000000
      800000006600000066000000660000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000000000000000FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000000000000000333333003333CC003333CC000000
      CC000000CC000000CC0000009900000099000000990000009900000099000000
      800000008000000080000000660000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF00000000000000000000000000BFBFBF00FFFFFF00BFBF
      BF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBF
      BF00FFFFFF000000FF00FFFFFF0000000000000000000000FF000000FF000000
      000000000000000000007F7F7F00000000007F7F7F0000000000000000000000
      00000000FF000000FF000000000000000000333333003333CC003333CC003333
      CC000000CC000000CC000000CC00000099000000990000008000000099000000
      9900000080000000800000008000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000393939003333CC003333CC003333
      CC000000CC000000990000009900000099000000990000009900000099000000
      9900000080000000800000008000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000393939003333CC003333CC003333
      CC00F1F1F100DDDDDD00D7D7D700D7D7D700CCCCCC00C0C0C000C0C0C000C0C0
      C000000099000000990000008000000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000007F7F7F00000000007F7F7F0000000000000000000000
      000000000000000000000000000000000000393939003333CC003333CC003333
      CC00F8F8F800F1F1F100F1F1F100E3E3E300E3E3E300E3E3E300DDDDDD00DDDD
      DD00000099000000990000008000000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000008000000000000000800000000000000000000000
      000000000000000000000000000000000000424242006666CC006666CC006666
      CC006666CC006666CC003333CC003333CC003333CC003333CC003333CC000000
      CC000000CC000000990000008000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF0000000000424242006666CC006666CC006666
      CC006666CC003333CC003333CC003333CC003333CC000000CC000000CC000000
      CC0000009900000099000000990000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF00000000004D4D4D006666CC006666CC006666
      CC006666CC006666CC003333CC003333CC003333CC003333CC000000CC000000
      CC000000CC00000099000000990000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000555555006666CC006666CC006666
      CC006666CC006666CC003333CC003333CC003333CC003333CC003333CC000000
      CC000000CC000000CC00000099000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00FFFFFF0000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000007F7F7F00000000007F7F7F00000000000000FF000000
      FF000000FF000000FF000000FF000000000066666600807CFF00807CFF006666
      CC006666CC006666CC006666CC003333CC003333CC003333CC003333CC003333
      CC003333CC000000CC0000009900000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000FF0000000000666666009999FF00807CFF006666
      CC006666CC006666CC006666CC006666CC003333CC003333CC003333CC003333
      CC003333CC003333CC000000CC00000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000005555550066666600666666005555
      55004D4D4D004242420042424200424242003939390039393900393939003333
      3300292929002222220016161600000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F000000000000000000FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F
      7F0000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000BFBFBF00BFBFBF007F7F7F007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF00BFBFBF007F7F7F007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF00BFBFBF007F7F7F007F7F7F007F7F7F00000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      000000000000FFFFFF007F7F7F007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFF
      FF007F7F7F0000000000FFFFFF0000000000000000000000000000000000BFBF
      BF00BFBFBF007F7F7F000000000000000000000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF007F7F7F000000000000000000000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF007F7F7F000000000000000000000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000007F7F7F00FFFFFF000000
      00007F7F7F007F7F7F000000000000000000000000007F7F7F007F7F7F00FFFF
      FF00FFFFFF007F7F7F00FFFFFF00000000000000000000000000BFBFBF00BFBF
      BF0000000000FFFFFF0000FF0000FFFFFF0000FF0000FFFFFF00000000007F7F
      7F007F7F7F000000000000000000000000000000000000000000BFBFBF00BFBF
      BF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000007F7F
      7F007F7F7F000000000000000000000000000000000000000000BFBFBF00BFBF
      BF0000000000FFFFFF000000FF00FFFFFF000000FF00FFFFFF00000000007F7F
      7F007F7F7F00000000000000000000000000000000007F7F7F00000000007F7F
      7F0000000000000000007F7F7F007F7F7F007F7F7F0000000000000000007F7F
      7F00FFFFFF007F7F7F0000000000FFFFFF000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00007F7F7F000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00007F7F7F000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00007F7F7F000000000000000000000000007F7F7F00FFFFFF00000000007F7F
      7F00000000007F7F7F000000000000000000000000007F7F7F00000000007F7F
      7F00FFFFFF00FFFFFF007F7F7F00FFFFFF0000000000BFBFBF007F7F7F00FFFF
      FF00000000000000000000FF000000800000008000000000000000000000FFFF
      FF007F7F7F007F7F7F00000000000000000000000000BFBFBF007F7F7F00FFFF
      FF00000000000000000000FFFF0000808000008080000000000000000000FFFF
      FF007F7F7F007F7F7F00000000000000000000000000BFBFBF007F7F7F00FFFF
      FF0000000000000000000000FF0000008000000080000000000000000000FFFF
      FF007F7F7F007F7F7F0000000000000000007F7F7F00FFFFFF007F7F7F000000
      00007F7F7F00FFFFFF00000000000000000000000000000000007F7F7F000000
      00007F7F7F00FFFFFF007F7F7F00FFFFFF0000000000BFBFBF000000000000FF
      00000000000000FF00000080000000FF000000800000008000000000000000FF
      0000000000007F7F7F00000000000000000000000000BFBFBF000000000000FF
      FF000000000000FFFF000080800000FFFF0000808000008080000000000000FF
      FF00000000007F7F7F00000000000000000000000000BFBFBF00000000000000
      FF00000000000000FF00000080000000FF000000800000008000000000000000
      FF00000000007F7F7F0000000000000000007F7F7F00FFFFFF007F7F7F000000
      00007F7F7F00FFFFFF00000000000000000000000000000000007F7F7F000000
      00007F7F7F00FFFFFF007F7F7F00FFFFFF0000000000FFFFFF0000000000FFFF
      FF000000000000FF000000FF000000FF000000FF00000080000000000000FFFF
      FF00000000007F7F7F00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF000080800000000000FFFF
      FF00000000007F7F7F00000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000FF000000FF000000FF000000FF000000800000000000FFFF
      FF00000000007F7F7F0000000000000000007F7F7F00FFFFFF007F7F7F000000
      00007F7F7F00FFFFFF00FFFFFF000000000000000000000000007F7F7F000000
      00007F7F7F00000000007F7F7F00FFFFFF0000000000FFFFFF000000000000FF
      000000000000FFFFFF0000FF000000FF00000080000000FF00000000000000FF
      000000000000BFBFBF00000000000000000000000000FFFFFF000000000000FF
      FF0000000000FFFFFF0000FFFF0000FFFF000080800000FFFF000000000000FF
      FF0000000000BFBFBF00000000000000000000000000FFFFFF00000000000000
      FF0000000000FFFFFF000000FF000000FF00000080000000FF00000000000000
      FF0000000000BFBFBF0000000000000000007F7F7F0000000000FFFFFF007F7F
      7F00000000007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F00000000007F7F
      7F00FFFFFF00000000007F7F7F000000000000000000FFFFFF007F7F7F00FFFF
      FF000000000000000000FFFFFF00FFFFFF0000FF00000000000000000000FFFF
      FF007F7F7F00BFBFBF00000000000000000000000000FFFFFF007F7F7F00FFFF
      FF000000000000000000FFFFFF00FFFFFF0000FFFF000000000000000000FFFF
      FF007F7F7F00BFBFBF00000000000000000000000000FFFFFF007F7F7F00FFFF
      FF000000000000000000FFFFFF00FFFFFF000000FF000000000000000000FFFF
      FF007F7F7F00BFBFBF000000000000000000000000007F7F7F00FFFFFF007F7F
      7F0000000000000000007F7F7F007F7F7F007F7F7F0000000000000000007F7F
      7F00000000007F7F7F00FFFFFF00000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000BFBFBF000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000BFBFBF000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000BFBFBF00000000000000000000000000000000007F7F7F0000000000FFFF
      FF007F7F7F007F7F7F000000000000000000000000007F7F7F007F7F7F000000
      0000000000007F7F7F0000000000000000000000000000000000FFFFFF00BFBF
      BF0000000000FFFFFF0000FF0000FFFFFF0000FF0000FFFFFF0000000000BFBF
      BF00BFBFBF000000000000000000000000000000000000000000FFFFFF00BFBF
      BF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000BFBF
      BF00BFBFBF000000000000000000000000000000000000000000FFFFFF00BFBF
      BF0000000000FFFFFF000000FF00FFFFFF000000FF00FFFFFF0000000000BFBF
      BF00BFBFBF0000000000000000000000000000000000000000007F7F7F000000
      0000FFFFFF00FFFFFF007F7F7F007F7F7F007F7F7F000000000000000000FFFF
      FF007F7F7F00000000000000000000000000000000000000000000000000FFFF
      FF00BFBFBF007F7F7F000000000000000000000000007F7F7F00BFBFBF00BFBF
      BF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00BFBFBF007F7F7F000000000000000000000000007F7F7F00BFBFBF00BFBF
      BF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00BFBFBF007F7F7F000000000000000000000000007F7F7F00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00BFBFBF00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00BFBFBF00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00BFBFBF00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      00010000000000000001000000000000FFFF8001FFFFFFFFF83F0000F83F0001
      E00F0000E00F0001CFC70000C447000187E300008C630001A3F300009C730001
      31F900003FF9000138F900003EF900013C79E0073C7F00013E39E0073C7F0001
      3F19E0073C4100019F8BE0079C6100018FC3E00F8C710001C7E7E01FC4410001
      E00FE03FE00D0001F83FE07FF83F0001FC1FFFFFFFFFFFFFF027F83FF83FF83F
      E60BE00FE00FE00FD805C007C007C0079381800380038003AC62800380038003
      2BA000010001000113D000010001000113D000010001000111D4000100010001
      48250001000100018C69800380038003A39B800380038003D067C007C007C007
      E40FE00FE00FE00FF83FF83FF83FF83F00000000000000000000000000000000
      000000000000}
  end
  object pmCarga: TPopupMenu
    Left = 472
    Top = 152
    object mnuAddProd: TMenuItem
      Caption = 'Adicionar Produto'
      OnClick = mnuAddProdClick
    end
  end
  object pmCores: TPopupMenu
    Left = 552
    Top = 104
    object mnuAddCor: TMenuItem
      Caption = 'Adicionar'
      OnClick = mnuAddCorClick
    end
    object mnuExcluir: TMenuItem
      Caption = 'Excluir'
      OnClick = mnuExcluirClick
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 752
    Top = 344
  end
  object ValidaProdutos: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PRECAR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_titecar.*,'
      '(SELECT SUM(E120IPD.QTDABE) FROM E120IPD'
      'INNER JOIN E075PRO ON E075PRO.CODEMP = E120IPD.CODEMP AND'
      '                      E075PRO.CODPRO = E120IPD.CODPRO'
      '                           WHERE'
      '                           E075PRO.CODAGC = '#39'ESTOF'#39' AND'
      
        '                           E120IPD.NUMPED = usu_titecar.USU_NUMP' +
        'ED) AS QTD_ESTOF'
      ' from usu_titecar'
      'inner join e120ped on e120ped.numped = usu_titecar.usu_numped'
      '                   where usu_titecar.usu_precar = :PRECAR'
      '                   order by usu_titecar.usu_seqite')
    Left = 584
    Top = 504
    object ValidaProdutosUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ValidaProdutosUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ValidaProdutosUSU_FILPED: TIntegerField
      FieldName = 'USU_FILPED'
    end
    object ValidaProdutosUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ValidaProdutosUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object ValidaProdutosUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object ValidaProdutosUSU_HORGER: TIntegerField
      FieldName = 'USU_HORGER'
    end
    object ValidaProdutosUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object ValidaProdutosQTD_ESTOF: TFMTBCDField
      FieldName = 'QTD_ESTOF'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
end
