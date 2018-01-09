object FGerenciamentoCidades: TFGerenciamentoCidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerenciamento de Cidades'
  ClientHeight = 672
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 11
    Width = 85
    Height = 13
    Caption = 'Representante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 151
    Top = 37
    Width = 43
    Height = 13
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PaginaControle: TPageControl
    Left = 0
    Top = 64
    Width = 994
    Height = 609
    ActivePage = tsCidades_compra
    TabOrder = 0
    object tsCidades_compra: TTabSheet
      Caption = '     Cidades Com Compra (F1)    '
      object Label3: TLabel
        Left = 3
        Top = 542
        Width = 77
        Height = 13
        Caption = 'Qtde. Cidades'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 124
        Top = 542
        Width = 94
        Height = 13
        Caption = 'Total Habitantes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 246
        Top = 542
        Width = 67
        Height = 13
        Caption = 'Total Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 368
        Top = 542
        Width = 101
        Height = 13
        Caption = 'Valor P/Habitante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 475
        Top = 4
        Width = 130
        Height = 13
        Caption = 'CLIENTES COM COMPRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 474
        Top = 269
        Width = 128
        Height = 13
        Caption = 'CLIENTES SEM COMPRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 798
        Top = 224
        Width = 75
        Height = 13
        Caption = 'Qtde.Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 798
        Top = 489
        Width = 75
        Height = 13
        Caption = 'Qtde.Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 474
        Top = 488
        Width = 64
        Height = 13
        Caption = 'Filtrar Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbg1: TDBGrid
        Left = -1
        Top = -1
        Width = 469
        Height = 537
        DataSource = dsClientConsCidadesComCompra
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = dbg1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NOMCID'
            Title.Alignment = taCenter
            Title.Caption = 'Cidade'
            Width = 140
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SIGUFS'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Width = 30
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_POPULACAO'
            Title.Alignment = taCenter
            Title.Caption = 'Popula'#231#227'o'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VLRBRU'
            Title.Alignment = taCenter
            Title.Caption = 'Total Venda'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'vnVlrPorHab'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. P/Habitante'
            Width = 85
            Visible = True
          end>
      end
      object dbg2: TDBGrid
        Left = 475
        Top = 19
        Width = 511
        Height = 200
        DataSource = dsClientCliComCompra
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = pmCliComCom
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = dbg2TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODCLI'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMCLI'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_CLI'
            Title.Alignment = taCenter
            Title.Caption = 'Total Compra'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DAT_ULT_NF'
            Title.Alignment = taCenter
            Title.Caption = #218'ltima NF'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_ULT_NF'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.'#218'ltima NF'
            Width = 80
            Visible = True
          end>
      end
      object dbedtvnQtdCidades: TDBEdit
        Left = 3
        Top = 557
        Width = 100
        Height = 19
        TabStop = False
        Color = 15138790
        Ctl3D = False
        DataField = 'vnQtdCidades'
        DataSource = dsClientConsCidadesComCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object dbedtvnTotalPopulacao: TDBEdit
        Left = 124
        Top = 557
        Width = 100
        Height = 19
        TabStop = False
        Color = 15138790
        Ctl3D = False
        DataField = 'vnTotalPopulacao'
        DataSource = dsClientConsCidadesComCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object dbedtvnTotalVenda: TDBEdit
        Left = 246
        Top = 557
        Width = 100
        Height = 19
        TabStop = False
        Color = 15138790
        Ctl3D = False
        DataField = 'vnTotalVenda'
        DataSource = dsClientConsCidadesComCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object dbedtvnTotalPHab: TDBEdit
        Left = 368
        Top = 557
        Width = 100
        Height = 19
        TabStop = False
        Color = 15138790
        Ctl3D = False
        DataField = 'vnTotalPHab'
        DataSource = dsClientConsCidadesComCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object dbg3: TDBGrid
        Left = 475
        Top = 284
        Width = 511
        Height = 200
        DataSource = dsClientCliSemCompra
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = pmCliSemCom
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = dbg3TitleClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODCLI'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMCLI'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DAT_ULT_NF'
            Title.Alignment = taCenter
            Title.Caption = #218'ltima NF'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VLR_ULT_NF'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.'#218'ltima NF'
            Width = 100
            Visible = True
          end>
      end
      object dbedtvnQtdCli: TDBEdit
        Left = 878
        Top = 222
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'vnQtdCli'
        DataSource = dsClientCliComCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
      object dbedtvnQtdCli1: TDBEdit
        Left = 878
        Top = 487
        Width = 100
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'vnQtdCli'
        DataSource = dsClientCliSemCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object btnMostrarCidadeSemCompra: TBitBtn
        Left = 784
        Top = 536
        Width = 113
        Height = 25
        Caption = 'btnMostrarCidadeSemCompra'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 9
        Visible = False
        OnClick = btnMostrarCidadeSemCompraClick
      end
      object edtCidComCom: TEdit
        Left = 474
        Top = 503
        Width = 225
        Height = 21
        TabOrder = 10
      end
      object chkCidCiComCom: TCheckBox
        Left = 702
        Top = 505
        Width = 51
        Height = 17
        Caption = 'Filtrar'
        TabOrder = 11
        OnClick = chkCidCiComComClick
      end
    end
    object tsCidades_SemCompra: TTabSheet
      Caption = '     Cidades Sem Compra (F1)     '
      ImageIndex = 1
      object Label11: TLabel
        Left = 4
        Top = 542
        Width = 77
        Height = 13
        Caption = 'Qtde. Cidades'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 131
        Top = 542
        Width = 94
        Height = 13
        Caption = 'Total Habitantes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 384
        Top = 2
        Width = 51
        Height = 13
        Caption = 'CLIENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 700
        Top = 240
        Width = 75
        Height = 13
        Caption = 'Qtde.Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 384
        Top = 245
        Width = 64
        Height = 13
        Caption = 'Filtrar Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbg4: TDBGrid
        Left = 0
        Top = -1
        Width = 378
        Height = 537
        DataSource = dsClientConsCidadesSemCompra
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = dbg4TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NOMCID'
            Title.Alignment = taCenter
            Title.Caption = 'Cidade'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SIGUFS'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Width = 40
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_POPULACAO'
            Title.Alignment = taCenter
            Title.Caption = 'Popula'#231#227'o'
            Width = 100
            Visible = True
          end>
      end
      object dbedtvnQtdCid: TDBEdit
        Left = 4
        Top = 556
        Width = 100
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'vnQtdCid'
        DataSource = dsClientConsCidadesSemCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object dbedtvnTotPopulacao: TDBEdit
        Left = 131
        Top = 556
        Width = 100
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'vnTotPopulacao'
        DataSource = dsClientConsCidadesSemCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object dbg5: TDBGrid
        Left = 384
        Top = 18
        Width = 497
        Height = 215
        DataSource = dsClientCliSemCompra2
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = pmCliSemCom2
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = dbg5TitleClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODCLI'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMCLI'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 185
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DAT_ULT_NF'
            Title.Alignment = taCenter
            Title.Caption = #218'ltima NF'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VLR_ULT_NF'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.'#218'ltima NF'
            Width = 100
            Visible = True
          end>
      end
      object dbedtvnQtdCli2: TDBEdit
        Left = 781
        Top = 238
        Width = 100
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'vnQtdCli'
        DataSource = dsClientCliSemCompra2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object edtCidSemCom: TEdit
        Left = 384
        Top = 260
        Width = 225
        Height = 21
        TabOrder = 5
      end
      object chkCidCiSemCom: TCheckBox
        Left = 611
        Top = 261
        Width = 54
        Height = 17
        Caption = 'Filtrar'
        TabOrder = 6
        OnClick = chkCidCiSemComClick
      end
    end
    object tsResumoRep: TTabSheet
      Caption = '     Resumo Por Representante (F2)    '
      ImageIndex = 2
      object Label23: TLabel
        Left = 64
        Top = 503
        Width = 80
        Height = 13
        Caption = 'Total de Cidades'
      end
      object Label24: TLabel
        Left = 192
        Top = 503
        Width = 89
        Height = 13
        Caption = 'Cidades C/Compra'
      end
      object Label25: TLabel
        Left = 320
        Top = 503
        Width = 88
        Height = 13
        Caption = 'Cidades S/Compra'
      end
      object Label27: TLabel
        Left = 64
        Top = 543
        Width = 76
        Height = 13
        Caption = 'Total Popula'#231#227'o'
      end
      object Label28: TLabel
        Left = 192
        Top = 543
        Width = 100
        Height = 13
        Caption = 'Popula'#231#227'o C/Compra'
      end
      object Label29: TLabel
        Left = 320
        Top = 543
        Width = 99
        Height = 13
        Caption = 'Popula'#231#227'o S/Compra'
      end
      object Label30: TLabel
        Left = 468
        Top = 543
        Width = 93
        Height = 13
        Caption = 'Valor Por Habitante'
      end
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 0
        Top = 0
        Width = 985
        Height = 496
        AllowInsert = False
        DataSource = dsClientResumoCidRep
        PanelHeight = 124
        PanelWidth = 968
        TabOrder = 0
        RowCount = 4
        SelectedColor = clGradientInactiveCaption
        object Label15: TLabel
          Left = 64
          Top = 31
          Width = 80
          Height = 13
          Caption = 'Total de Cidades'
        end
        object Label16: TLabel
          Left = 192
          Top = 31
          Width = 89
          Height = 13
          Caption = 'Cidades C/Compra'
        end
        object Label17: TLabel
          Left = 320
          Top = 31
          Width = 88
          Height = 13
          Caption = 'Cidades S/Compra'
        end
        object Label18: TLabel
          Left = 64
          Top = 72
          Width = 76
          Height = 13
          Caption = 'Total Popula'#231#227'o'
        end
        object Label19: TLabel
          Left = 192
          Top = 72
          Width = 100
          Height = 13
          Caption = 'Popula'#231#227'o C/Compra'
        end
        object Label20: TLabel
          Left = 320
          Top = 72
          Width = 99
          Height = 13
          Caption = 'Popula'#231#227'o S/Compra'
        end
        object Label21: TLabel
          Left = 468
          Top = 72
          Width = 93
          Height = 13
          Caption = 'Valor Por Habitante'
        end
        object Label22: TLabel
          Left = 468
          Top = 31
          Width = 71
          Height = 13
          Caption = 'Valor Faturado'
        end
        object dbedtCODREP: TDBEdit
          Left = 6
          Top = 6
          Width = 100
          Height = 19
          TabStop = False
          Color = clInfoBk
          Ctl3D = False
          DataField = 'CODREP'
          DataSource = dsClientResumoCidRep
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object dbedtNOMREP: TDBEdit
          Left = 109
          Top = 6
          Width = 373
          Height = 19
          TabStop = False
          Color = clInfoBk
          Ctl3D = False
          DataField = 'NOMREP'
          DataSource = dsClientResumoCidRep
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object dbedtAPEREP: TDBEdit
          Left = 485
          Top = 6
          Width = 174
          Height = 19
          TabStop = False
          Color = clInfoBk
          Ctl3D = False
          DataField = 'APEREP'
          DataSource = dsClientResumoCidRep
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object dbedtQTDCIDADE: TDBEdit
          Left = 64
          Top = 47
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'QTDCIDADE'
          DataSource = dsClientResumoCidRep
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object dbedtQTD_CID_COM: TDBEdit
          Left = 192
          Top = 47
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'QTD_CID_COM'
          DataSource = dsClientResumoCidRep
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object dbedtQTD_CID_SEMCOM: TDBEdit
          Left = 320
          Top = 47
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'QTD_CID_SEMCOM'
          DataSource = dsClientResumoCidRep
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object dbedtTOTAL_POP: TDBEdit
          Left = 64
          Top = 88
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'TOTAL_POP'
          DataSource = dsClientResumoCidRep
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
        end
        object dbedtPOP_COM_COMPRA: TDBEdit
          Left = 192
          Top = 88
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'POP_COM_COMPRA'
          DataSource = dsClientResumoCidRep
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object dbedtPOP_SEM_COMPRA: TDBEdit
          Left = 320
          Top = 88
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'POP_SEM_COMPRA'
          DataSource = dsClientResumoCidRep
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
        end
        object dbedtVLR_FATURADO: TDBEdit
          Left = 468
          Top = 47
          Width = 121
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'VLR_FATURADO'
          DataSource = dsClientResumoCidRep
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object dbedtVLR_POR_HAB: TDBEdit
          Left = 468
          Top = 86
          Width = 121
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'VLR_POR_HAB'
          DataSource = dsClientResumoCidRep
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
      end
      object btnMostrarResumoRep: TBitBtn
        Left = 896
        Top = 472
        Width = 75
        Height = 25
        Caption = 'btnMostrarResumoRep'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        Visible = False
        OnClick = btnMostrarResumoRepClick
      end
      object dbedtvnTotalCid: TDBEdit
        Left = 64
        Top = 518
        Width = 100
        Height = 19
        TabStop = False
        Color = 16772573
        Ctl3D = False
        DataField = 'vnTotalCid'
        DataSource = dsClientResumoCidRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object dbedtvnTotalPop: TDBEdit
        Left = 64
        Top = 559
        Width = 100
        Height = 19
        TabStop = False
        Color = 16772573
        Ctl3D = False
        DataField = 'vnTotalPop'
        DataSource = dsClientResumoCidRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object dbedtvnTotalCidSCom: TDBEdit
        Left = 320
        Top = 518
        Width = 100
        Height = 19
        TabStop = False
        Color = 16772573
        Ctl3D = False
        DataField = 'vnTotalCidSCom'
        DataSource = dsClientResumoCidRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object dbedtvnTotalCidCCom: TDBEdit
        Left = 192
        Top = 518
        Width = 100
        Height = 19
        TabStop = False
        Color = 16772573
        Ctl3D = False
        DataField = 'vnTotalCidCCom'
        DataSource = dsClientResumoCidRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object dbedtvnTotalPopCCom: TDBEdit
        Left = 192
        Top = 559
        Width = 100
        Height = 19
        TabStop = False
        Color = 16772573
        Ctl3D = False
        DataField = 'vnTotalPopCCom'
        DataSource = dsClientResumoCidRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object dbedtvnTotalPopSCom: TDBEdit
        Left = 320
        Top = 559
        Width = 100
        Height = 19
        TabStop = False
        Color = 16772573
        Ctl3D = False
        DataField = 'vnTotalPopSCom'
        DataSource = dsClientResumoCidRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object dbedtvnVlrPHab: TDBEdit
        Left = 468
        Top = 559
        Width = 100
        Height = 19
        TabStop = False
        Color = 16772573
        Ctl3D = False
        DataField = 'vnVlrPHab'
        DataSource = dsClientResumoCidRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
    end
  end
  object edtCodRep: TCurrencyEdit
    Left = 96
    Top = 8
    Width = 100
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Alignment = taCenter
    Color = clInfoBk
    Ctl3D = False
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnExit = edtCodRepExit
  end
  object btnConsRep: TBitBtn
    Left = 172
    Top = 9
    Width = 22
    Height = 17
    Caption = '...'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 2
    TabStop = False
    OnClick = btnConsRepClick
  end
  object edtDesRep: TEdit
    Left = 200
    Top = 8
    Width = 232
    Height = 19
    TabStop = False
    Color = clInfoBk
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object edtDatIni: TDateEdit
    Left = 200
    Top = 34
    Width = 98
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
    Text = '01/10/2014'
  end
  object edtDatFim: TDateEdit
    Left = 332
    Top = 34
    Width = 99
    Height = 21
    NumGlyphs = 2
    TabOrder = 5
    Text = '31/10/2014'
  end
  object dsClientConsCidadesComCompra: TDataSource
    AutoEdit = False
    DataSet = DmOra.ClientConsCidadesComCompra
    Left = 432
    Top = 224
  end
  object dsClientCliComCompra: TDataSource
    AutoEdit = False
    DataSet = DmOra.ClientCliComCompra
    Left = 608
    Top = 208
  end
  object dsClientCliSemCompra: TDataSource
    AutoEdit = False
    DataSet = DmOra.ClientCliSemCompra
    Left = 568
    Top = 408
  end
  object dsClientConsCidadesSemCompra: TDataSource
    DataSet = DmOra.ClientConsCidadesSemCompra
    Left = 744
    Top = 264
  end
  object dsClientCliSemCompra2: TDataSource
    DataSet = DmOra.ClientCliSemCompra2
    Left = 784
    Top = 192
  end
  object dsClientResumoCidRep: TDataSource
    AutoEdit = False
    DataSet = DmOra.ClientResumoCidRep
    Left = 344
    Top = 264
  end
  object pmCliSemCom2: TPopupMenu
    Left = 688
    Top = 424
    object mnuAdicionarMon2: TMenuItem
      Caption = 'Adicionar ao Monitoramento'
      OnClick = mnuAdicionarMon2Click
    end
  end
  object pmCliSemCom: TPopupMenu
    Left = 784
    Top = 424
    object mnuAdicionarMon: TMenuItem
      Caption = 'Adicionar ao Monitoramento'
      OnClick = mnuAdicionarMonClick
    end
  end
  object pmCliComCom: TPopupMenu
    Left = 864
    Top = 424
    object mnuAddMon: TMenuItem
      Caption = 'Adicionar ao Monitoramento'
      OnClick = mnuAddMonClick
    end
  end
end
