object FAjustaConsumoMateriaPrima: TFAjustaConsumoMateriaPrima
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ajustar Consumo de Mat'#233'ria Prima'
  ClientHeight = 568
  ClientWidth = 816
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
  object pgcPaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 816
    Height = 568
    ActivePage = tsComAjuste
    Align = alClient
    TabOrder = 0
    object tsComAjuste: TTabSheet
      Caption = '     Mat'#233'ria Prima Com Ajuste     '
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 38
        Height = 13
        Caption = 'Produto'
      end
      object Label2: TLabel
        Left = 8
        Top = 515
        Width = 38
        Height = 13
        Caption = 'Produto'
      end
      object Label3: TLabel
        Left = 524
        Top = 515
        Width = 11
        Height = 13
        Caption = '%'
      end
      object dbg1: TDBGrid
        Left = -10
        Top = 47
        Width = 819
        Height = 454
        DataSource = dsConsUSU_T700Inf
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbg1DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODPRO'
            Title.Alignment = taCenter
            Title.Caption = 'Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESPRO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 400
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_PERINF'
            Title.Alignment = taCenter
            Title.Caption = '% Reajuste'
            Visible = True
          end>
      end
      object edtDesPro: TEdit
        Left = 52
        Top = 14
        Width = 397
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnChange = edtDesProChange
      end
      object edtCodPro: TEdit
        Left = 52
        Top = 512
        Width = 121
        Height = 21
        TabOrder = 2
        OnExit = edtCodProExit
      end
      object btnConsProduto: TBitBtn
        Left = 151
        Top = 514
        Width = 20
        Height = 16
        Caption = '...'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 3
        TabStop = False
        OnClick = btnConsProdutoClick
      end
      object edtDesPro1: TEdit
        Left = 174
        Top = 512
        Width = 342
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 4
      end
      object edtPerInf: TCurrencyEdit
        Left = 537
        Top = 511
        Width = 121
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        Alignment = taCenter
        Color = 14281433
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object btnAplicar: TBitBtn
        Left = 697
        Top = 508
        Width = 75
        Height = 25
        Caption = 'Aplicar'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 6
        OnClick = btnAplicarClick
      end
    end
    object tsSemAjuste: TTabSheet
      Caption = '     Componente Sem Ajuste     '
      ImageIndex = 1
      OnShow = tsSemAjusteShow
      object dbg2: TDBGrid
        Left = -1
        Top = -1
        Width = 813
        Height = 507
        DataSource = dsConsE700CtmSemAju
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODCMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESPRO'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODMOD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESMOD'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODDER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDUTI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIME2'
            Visible = True
          end>
      end
      object btnProcessarSemAju: TBitBtn
        Left = 730
        Top = 512
        Width = 75
        Height = 25
        Caption = 'Processar'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = btnProcessarSemAjuClick
      end
    end
    object tsComponentes: TTabSheet
      Caption = '     Componentes     '
      ImageIndex = 2
      object Label4: TLabel
        Left = 39
        Top = 7
        Width = 34
        Height = 13
        Caption = 'Modelo'
      end
      object Label5: TLabel
        Left = 8
        Top = 31
        Width = 65
        Height = 13
        Caption = 'Mat'#233'ria Prima'
      end
      object Label6: TLabel
        Left = 25
        Top = 55
        Width = 48
        Height = 13
        Caption = 'Deriva'#231#227'o'
      end
      object Label7: TLabel
        Left = 15
        Top = 513
        Width = 69
        Height = 13
        Caption = 'Qtd. Consumo'
        FocusControl = dbedtUSU_QTDUTI
      end
      object Label8: TLabel
        Left = 475
        Top = 513
        Width = 115
        Height = 13
        Caption = 'Qtd. Consumo Ajustado'
        FocusControl = dbedtUSU_QTDINF
      end
      object Label9: TLabel
        Left = 261
        Top = 513
        Width = 45
        Height = 13
        Caption = '% Ajuste'
        FocusControl = dbedtUSU_PERINF
      end
      object Label10: TLabel
        Left = 15
        Top = 485
        Width = 34
        Height = 13
        Caption = 'Modelo'
      end
      object Label11: TLabel
        Left = 401
        Top = 485
        Width = 61
        Height = 13
        Caption = 'Componente'
      end
      object dbg3: TDBGrid
        Left = -2
        Top = 82
        Width = 811
        Height = 392
        DataSource = dsConsE700CtmAju
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
            FieldName = 'CODMOD'
            Title.Alignment = taCenter
            Title.Caption = 'Modelo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESMOD'
            Title.Alignment = taCenter
            Title.Caption = 'Desc. Modelo'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODDER'
            Title.Alignment = taCenter
            Title.Caption = 'Der. Modelo'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODCMP'
            Title.Alignment = taCenter
            Title.Caption = 'Componente'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESPRO'
            Title.Alignment = taCenter
            Title.Caption = 'Desc. Componente'
            Width = 230
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_QTDUTI'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Utiliza'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_PERINF'
            Title.Alignment = taCenter
            Title.Caption = '% Ajuste'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDUTI'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Utiliza Aju.'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODETG'
            Title.Alignment = taCenter
            Title.Caption = 'Est'#225'gio'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SEQMOD'
            Title.Alignment = taCenter
            Title.Caption = 'Seq. Mod.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DERCMP'
            Title.Alignment = taCenter
            Title.Caption = 'Der. Comp.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UNIME2'
            Title.Alignment = taCenter
            Title.Caption = 'UN'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATGER'
            Title.Alignment = taCenter
            Title.Caption = 'Dat. Ger.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATALT'
            Title.Alignment = taCenter
            Title.Caption = 'Dat. Alt.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_INAJU'
            Title.Alignment = taCenter
            Title.Caption = 'Ind. Ajus.'
            Visible = True
          end>
      end
      object edtComponentesModelo: TEdit
        Left = 79
        Top = 5
        Width = 354
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnChange = edtComponentesModeloChange
      end
      object edtComponentesMateriaPrima: TEdit
        Left = 79
        Top = 29
        Width = 354
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnChange = edtComponentesMateriaPrimaChange
      end
      object edtComponentesDerivacao: TEdit
        Left = 79
        Top = 53
        Width = 82
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnChange = edtComponentesDerivacaoChange
      end
      object btnTSComponentesEditar: TBitBtn
        Left = 723
        Top = 508
        Width = 75
        Height = 25
        Caption = 'Editar'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 6
        OnClick = btnTSComponentesEditarClick
      end
      object dbedtUSU_QTDUTI: TDBEdit
        Left = 90
        Top = 510
        Width = 100
        Height = 21
        Color = clInfoBk
        DataField = 'USU_QTDUTI'
        DataSource = dsCadUSU_T700Ctm
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object dbedtUSU_QTDINF: TDBEdit
        Left = 595
        Top = 510
        Width = 100
        Height = 21
        DataField = 'USU_QTDINF'
        DataSource = dsCadUSU_T700Ctm
        ReadOnly = True
        TabOrder = 5
      end
      object dbedtUSU_PERINF: TDBEdit
        Left = 312
        Top = 510
        Width = 100
        Height = 21
        TabStop = False
        DataField = 'USU_PERINF'
        DataSource = dsCadUSU_T700Ctm
        ReadOnly = True
        TabOrder = 7
      end
      object edtTSComponentes_Modelo: TEdit
        Left = 55
        Top = 483
        Width = 330
        Height = 19
        TabStop = False
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
      end
      object edtTSComponentes_Componente: TEdit
        Left = 468
        Top = 483
        Width = 330
        Height = 19
        TabStop = False
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
      end
    end
  end
  object dsConsUSU_T700Inf: TDataSource
    DataSet = DmOra.ConsUSU_T700Inf
    Left = 448
    Top = 192
  end
  object dsConsE700CtmSemAju: TDataSource
    DataSet = DmOra.ConsE700CtmSemAju
    Left = 328
    Top = 216
  end
  object dsConsE700CtmAju: TDataSource
    DataSet = DmOra.ConsE700CtmAju
    Left = 448
    Top = 264
  end
  object dsCadUSU_T700Ctm: TDataSource
    DataSet = DmOra.CadUSU_T700Ctm
    OnStateChange = dsCadUSU_T700CtmStateChange
    Left = 528
    Top = 312
  end
end
