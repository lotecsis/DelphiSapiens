object FGraficosVendas: TFGraficosVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gr'#225'ficos de Vendas '
  ClientHeight = 644
  ClientWidth = 1059
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
    Width = 1059
    Height = 644
    ActivePage = tsTodosRep
    Align = alClient
    TabOrder = 0
    object tsTodosRep: TTabSheet
      Caption = '          Geral Representantes          '
      object dbcht1: TDBChart
        Left = 0
        Top = 33
        Width = 1051
        Height = 563
        MarginLeft = 2
        MarginRight = 2
        PrintProportional = False
        Title.Text.Strings = (
          'Geral Representantes')
        Align = alClient
        TabOrder = 0
        PrintMargins = (
          2
          2
          2
          2)
        object Series1: TBarSeries
          BarPen.Color = clRed
          ColorEachPoint = True
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = True
          DataSource = DmOra.ClientGraficoGeralRep
          SeriesColor = clBlue
          XLabelsSource = 'APEREP'
          Gradient.Direction = gdTopBottom
          Shadow.Color = 8750469
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'PEDIDOS'
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 1051
        Height = 33
        Align = alTop
        TabOrder = 1
        object EdtDataIni: TDateEdit
          Left = 583
          Top = 5
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
        object EdtDataFim: TDateEdit
          Left = 727
          Top = 5
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
        object btnMostrar: TBitBtn
          Left = 863
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Mostrar'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 2
          OnClick = btnMostrarClick
        end
        object btnImprimir: TBitBtn
          Left = 943
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = btnImprimirClick
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 596
        Width = 1051
        Height = 20
        Align = alBottom
        TabOrder = 2
      end
    end
    object tsMensalRep: TTabSheet
      Caption = '                    Mensal                    '
      ImageIndex = 1
      object dbg1: TDBGrid
        Left = -3
        Top = 32
        Width = 214
        Height = 545
        DataSource = dsConsRep
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
            FieldName = 'CODREP'
            Title.Alignment = taCenter
            Title.Caption = 'REP'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APEREP'
            Title.Alignment = taCenter
            Title.Caption = 'NOME'
            Width = 130
            Visible = True
          end>
      end
      object dbcht2: TDBChart
        Left = 211
        Top = 32
        Width = 841
        Height = 545
        PrintProportional = False
        Title.Text.Strings = (
          'Mensal')
        View3D = False
        TabOrder = 1
        PrintMargins = (
          2
          2
          2
          2)
        object Series2: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          DataSource = DmOra.ClientGraficoMesalRep
          SeriesColor = clBlue
          XLabelsSource = 'MESEMI'
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = 'PEDIDOS'
        end
      end
      object edtAnoMensal: TCurrencyEdit
        Left = 593
        Top = 2
        Width = 121
        Height = 24
        Margins.Left = 1
        Margins.Top = 1
        Alignment = taCenter
        DisplayFormat = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object btnImprimirMensal: TBitBtn
        Left = 720
        Top = 1
        Width = 75
        Height = 25
        Caption = 'Imprimir'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = btnImprimirMensalClick
      end
    end
    object tsTrimestralRep: TTabSheet
      Caption = '                 Trimestral                 '
      ImageIndex = 2
      object dbg2: TDBGrid
        Left = -1
        Top = 32
        Width = 214
        Height = 545
        DataSource = dsConsRep
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
            FieldName = 'CODREP'
            Title.Alignment = taCenter
            Title.Caption = 'REP'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APEREP'
            Title.Alignment = taCenter
            Title.Caption = 'NOME'
            Width = 130
            Visible = True
          end>
      end
      object dbcht3: TDBChart
        Left = 219
        Top = 32
        Width = 840
        Height = 545
        PrintProportional = False
        Title.Text.Strings = (
          'Trimestral')
        TabOrder = 1
        PrintMargins = (
          2
          2
          2
          2)
        object Series3: TFastLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          DataSource = DmOra.ClientGraficoTrimestreRep
          SeriesColor = clGreen
          XLabelsSource = 'DESTRIMESTRE'
          LinePen.Color = clGreen
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = 'PEDIDOS'
        end
      end
      object edtAnoTrimestral: TCurrencyEdit
        Left = 593
        Top = 2
        Width = 121
        Height = 24
        Margins.Left = 1
        Margins.Top = 1
        Alignment = taCenter
        DisplayFormat = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object btnImprimirTrimestralRep: TBitBtn
        Left = 720
        Top = 1
        Width = 75
        Height = 25
        Caption = 'Imprimir'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = btnImprimirTrimestralRepClick
      end
    end
    object tsRegioesGeral: TTabSheet
      Caption = '               Regi'#245'es Geral              '
      ImageIndex = 3
      object pnl3: TPanel
        Left = 0
        Top = 0
        Width = 1051
        Height = 41
        Align = alTop
        TabOrder = 0
        object edtDatIni: TDateEdit
          Left = 583
          Top = 5
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
        object edtDatFim: TDateEdit
          Left = 727
          Top = 5
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
        object btnMostrarRegioesGeral: TBitBtn
          Left = 863
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Mostrar'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 2
          OnClick = btnMostrarRegioesGeralClick
        end
        object btnImprimirRegioesGeral: TBitBtn
          Left = 941
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = btnImprimirRegioesGeralClick
        end
      end
      object pnl4: TPanel
        Left = 0
        Top = 596
        Width = 1051
        Height = 20
        Align = alBottom
        TabOrder = 1
      end
      object pgcPaginaControleRegioes: TPageControl
        Left = 0
        Top = 41
        Width = 1051
        Height = 555
        ActivePage = tsRegioesValor
        Align = alClient
        OwnerDraw = True
        TabOrder = 2
        OnDrawTab = pgcPaginaControleRegioesDrawTab
        object tsRegioesValor: TTabSheet
          Caption = '               Valor               '
          object dbcht4: TDBChart
            Left = 0
            Top = 0
            Width = 1043
            Height = 527
            PrintProportional = False
            Title.Text.Strings = (
              'Regi'#245'es Valor'
              '')
            DepthAxis.Automatic = False
            DepthAxis.AutomaticMaximum = False
            DepthAxis.AutomaticMinimum = False
            DepthAxis.Maximum = -0.500000000000000000
            DepthAxis.Minimum = -0.500000000000000000
            DepthTopAxis.Automatic = False
            DepthTopAxis.AutomaticMaximum = False
            DepthTopAxis.AutomaticMinimum = False
            DepthTopAxis.Maximum = -0.500000000000000000
            DepthTopAxis.Minimum = -0.500000000000000000
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMaximum = False
            LeftAxis.AutomaticMinimum = False
            Legend.Gradient.Direction = gdTopBottom
            Legend.Gradient.EndColor = clGray
            Legend.Gradient.MidColor = clWhite
            RightAxis.Automatic = False
            RightAxis.AutomaticMaximum = False
            RightAxis.AutomaticMinimum = False
            View3DOptions.Elevation = 315
            View3DOptions.Orthogonal = False
            View3DOptions.Perspective = 0
            View3DOptions.Rotation = 360
            Align = alClient
            TabOrder = 0
            PrintMargins = (
              3
              3
              3
              3)
            object Series4: TPieSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Visible = True
              DataSource = DmOra.ClientGraficoRegioesGeral
              SeriesColor = clYellow
              XLabelsSource = 'SIGUFS'
              Gradient.Direction = gdRadial
              OtherSlice.Legend.Visible = False
              PieValues.Name = 'Pie'
              PieValues.Order = loNone
              PieValues.ValueSource = 'PEDIDOS'
            end
          end
        end
        object tsRegioesPercentual: TTabSheet
          Caption = '          % Percentual          '
          ImageIndex = 1
          object dbcht5: TDBChart
            Left = 0
            Top = 0
            Width = 1043
            Height = 527
            PrintProportional = False
            Title.Text.Strings = (
              '% Regi'#245'es ')
            Legend.TextStyle = ltsLeftPercent
            View3DOptions.Elevation = 315
            View3DOptions.Orthogonal = False
            View3DOptions.Perspective = 0
            View3DOptions.Rotation = 360
            Align = alClient
            TabOrder = 0
            PrintMargins = (
              2
              2
              2
              2)
            object Series5: TPieSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Visible = True
              DataSource = DmOra.ClientGraficoRegioesGeral
              XLabelsSource = 'SIGUFS'
              Gradient.Direction = gdRadial
              OtherSlice.Legend.Visible = False
              PieValues.Name = 'Pie'
              PieValues.Order = loNone
              PieValues.ValueSource = 'PEDIDOS'
            end
          end
        end
      end
    end
  end
  object dlgPntPrint: TPrintDialog
    Left = 448
    Top = 168
  end
  object ConsRep: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsRepAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT E090REP.CODREP,E090REP.NOMREP,E090REP.APEREP,E090REP.SITR' +
        'EP'
      'FROM E090REP'
      'WHERE'
      '    E090REP.SITREP = '#39'A'#39
      'ORDER BY E090REP.CODREP')
    Left = 480
    Top = 288
    object ConsRepCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsRepNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ConsRepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ConsRepSITREP: TStringField
      FieldName = 'SITREP'
      Size = 1
    end
  end
  object dsConsRep: TDataSource
    DataSet = ConsRep
    Left = 480
    Top = 352
  end
end
