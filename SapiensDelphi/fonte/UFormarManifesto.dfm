object FFormarManifesto: TFFormarManifesto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Forma'#231#227'o de Manifesto'
  ClientHeight = 575
  ClientWidth = 846
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
  object Label1: TLabel
    Left = 17
    Top = 17
    Width = 27
    Height = 13
    Caption = 'Rota'
    FocusControl = dbedtUSU_DESROT
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 11
    Top = 45
    Width = 33
    Height = 13
    Caption = 'Carga'
    FocusControl = dbedtUSU_DESROT
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbedtUSU_DESROT: TDBEdit
    Left = 47
    Top = 14
    Width = 677
    Height = 19
    TabStop = False
    Color = clInfoBk
    Ctl3D = False
    DataField = 'USU_DESROT'
    DataSource = dsCadusu_tRotManGer
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
  object btnConsRota: TBitBtn
    Left = 718
    Top = 14
    Width = 30
    Height = 19
    Caption = '...'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    TabStop = False
    OnClick = btnConsRotaClick
  end
  object edtNumAne: TCurrencyEdit
    Left = 47
    Top = 42
    Width = 121
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
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
    TabOrder = 2
  end
  object btnMostrar: TBitBtn
    Left = 738
    Top = 39
    Width = 100
    Height = 25
    Caption = 'Gerar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    TabStop = False
    OnClick = btnMostrarClick
  end
  object PaginaControle: TPageControl
    Left = -1
    Top = 71
    Width = 850
    Height = 506
    ActivePage = tsRota
    TabOrder = 4
    object tsDadosGerais: TTabSheet
      Caption = '     Dados Gerais     '
      object Label4: TLabel
        Left = 46
        Top = 75
        Width = 75
        Height = 13
        Caption = 'Transportadora'
      end
      object Label5: TLabel
        Left = 50
        Top = 102
        Width = 71
        Height = 13
        Caption = 'Tipo Embarque'
      end
      object Label6: TLabel
        Left = 60
        Top = 129
        Width = 61
        Height = 13
        Caption = 'Placa Ve'#237'culo'
      end
      object Label7: TLabel
        Left = 40
        Top = 156
        Width = 81
        Height = 13
        Caption = 'C'#243'digo Motorista'
      end
      object Label8: TLabel
        Left = 46
        Top = 183
        Width = 75
        Height = 13
        Caption = 'Nome Motorista'
      end
      object Label9: TLabel
        Left = 14
        Top = 210
        Width = 107
        Height = 13
        Caption = 'Documentos Motorista'
      end
      object Label10: TLabel
        Left = 50
        Top = 237
        Width = 71
        Height = 13
        Caption = 'Fones Contato'
      end
      object Label11: TLabel
        Left = 34
        Top = 262
        Width = 87
        Height = 13
        Caption = 'Destino Embarque'
      end
      object Label13: TLabel
        Left = 42
        Top = 291
        Width = 79
        Height = 13
        Caption = 'Data/Hora Sa'#237'da'
      end
      object Label14: TLabel
        Left = 57
        Top = 318
        Width = 64
        Height = 13
        Caption = 'Data Entrega'
      end
      object Label15: TLabel
        Left = 60
        Top = 21
        Width = 57
        Height = 13
        Caption = 'Embarque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 414
        Top = 16
        Width = 56
        Height = 13
        Caption = 'Manifesto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 454
        Top = 48
        Width = 24
        Height = 13
        Caption = 'S'#233'rie'
      end
      object Label18: TLabel
        Left = 416
        Top = 75
        Width = 62
        Height = 13
        Caption = 'N'#186' Manifesto'
      end
      object Label19: TLabel
        Left = 428
        Top = 102
        Width = 50
        Height = 13
        Caption = 'Transa'#231#227'o'
      end
      object Label20: TLabel
        Left = 418
        Top = 129
        Width = 60
        Height = 13
        Caption = 'Valor L'#237'quido'
      end
      object Label21: TLabel
        Left = 419
        Top = 156
        Width = 59
        Height = 13
        Caption = 'Peso L'#237'quido'
      end
      object Label22: TLabel
        Left = 426
        Top = 183
        Width = 52
        Height = 13
        Caption = 'Peso Bruto'
      end
      object Label23: TLabel
        Left = 420
        Top = 210
        Width = 58
        Height = 13
        Caption = 'Cond. Pgto.'
      end
      object Label24: TLabel
        Left = 402
        Top = 237
        Width = 76
        Height = 13
        Caption = 'Unidade Medida'
      end
      object Label25: TLabel
        Left = 414
        Top = 264
        Width = 64
        Height = 13
        Caption = 'Data Emiss'#227'o'
      end
      object Label27: TLabel
        Left = 437
        Top = 291
        Width = 41
        Height = 13
        Caption = 'Situa'#231#227'o'
      end
      object Label3: TLabel
        Left = 58
        Top = 48
        Width = 63
        Height = 13
        Caption = 'N'#186' Embraque'
      end
      object dbedtNUMEBQ: TDBEdit
        Left = 127
        Top = 17
        Width = 134
        Height = 21
        DataField = 'NUMEBQ'
        DataSource = dsCadE145Ebq
        TabOrder = 0
        Visible = False
      end
      object dbedtCODTRA: TDBEdit
        Left = 127
        Top = 72
        Width = 134
        Height = 21
        DataField = 'CODTRA'
        DataSource = dsCadE145Ebq
        TabOrder = 1
      end
      object dbedtPLAVEI: TDBEdit
        Left = 127
        Top = 126
        Width = 134
        Height = 21
        DataField = 'PLAVEI'
        DataSource = dsCadE145Ebq
        TabOrder = 2
      end
      object dbedtCODMTR: TDBEdit
        Left = 127
        Top = 153
        Width = 134
        Height = 21
        DataField = 'CODMTR'
        DataSource = dsCadE145Ebq
        TabOrder = 3
      end
      object dbedtNOMMOT: TDBEdit
        Left = 127
        Top = 180
        Width = 250
        Height = 21
        DataField = 'NOMMOT'
        DataSource = dsCadE145Ebq
        TabOrder = 4
      end
      object dbedtDOCMOT: TDBEdit
        Left = 127
        Top = 207
        Width = 134
        Height = 21
        DataField = 'DOCMOT'
        DataSource = dsCadE145Ebq
        TabOrder = 5
      end
      object dbedtFONEBQ: TDBEdit
        Left = 127
        Top = 234
        Width = 134
        Height = 21
        DataField = 'FONEBQ'
        DataSource = dsCadE145Ebq
        TabOrder = 6
      end
      object dbedtDSNEBQ: TDBEdit
        Left = 127
        Top = 261
        Width = 250
        Height = 21
        DataField = 'DSNEBQ'
        DataSource = dsCadE145Ebq
        TabOrder = 7
      end
      object dbedtDATSAI: TDBEdit
        Left = 127
        Top = 288
        Width = 134
        Height = 21
        DataField = 'DATSAI'
        DataSource = dsCadE145Ebq
        TabOrder = 8
      end
      object dbedtDATETG: TDBEdit
        Left = 127
        Top = 315
        Width = 134
        Height = 21
        DataField = 'DATETG'
        DataSource = dsCadE145Ebq
        TabOrder = 9
      end
      object dbedtTIPEBQ: TDBEdit
        Left = 127
        Top = 99
        Width = 17
        Height = 21
        DataField = 'TIPEBQ'
        DataSource = dsCadE145Ebq
        TabOrder = 10
      end
      object dbedtCODSMA: TDBEdit
        Left = 484
        Top = 45
        Width = 43
        Height = 21
        DataField = 'CODSMA'
        DataSource = dsCadE145Ebq
        TabOrder = 11
      end
      object dbedtNUMMAN: TDBEdit
        Left = 484
        Top = 72
        Width = 121
        Height = 21
        DataField = 'NUMMAN'
        DataSource = dsCadE145Ebq
        TabOrder = 12
      end
      object dbedtCODTNS: TDBEdit
        Left = 484
        Top = 99
        Width = 69
        Height = 21
        DataField = 'CODTNS'
        DataSource = dsCadE145Ebq
        TabOrder = 13
      end
      object dbedtVLRLIQ: TDBEdit
        Left = 484
        Top = 126
        Width = 121
        Height = 21
        DataField = 'VLRLIQ'
        DataSource = dsCadE145Ebq
        TabOrder = 14
      end
      object dbedtPESLIQ: TDBEdit
        Left = 484
        Top = 153
        Width = 121
        Height = 21
        DataField = 'PESLIQ'
        DataSource = dsCadE145Ebq
        TabOrder = 15
      end
      object dbedtPESBRU: TDBEdit
        Left = 484
        Top = 180
        Width = 121
        Height = 21
        DataField = 'PESBRU'
        DataSource = dsCadE145Ebq
        TabOrder = 16
      end
      object dbedtCODCPG: TDBEdit
        Left = 484
        Top = 207
        Width = 82
        Height = 21
        DataField = 'CODCPG'
        DataSource = dsCadE145Ebq
        TabOrder = 17
      end
      object dbedtUNIMED: TDBEdit
        Left = 484
        Top = 234
        Width = 43
        Height = 21
        DataField = 'UNIMED'
        DataSource = dsCadE145Ebq
        TabOrder = 18
      end
      object dbedtDATEMM: TDBEdit
        Left = 484
        Top = 261
        Width = 82
        Height = 21
        DataField = 'DATEMM'
        DataSource = dsCadE145Ebq
        TabOrder = 19
      end
      object dbedtSITMAN: TDBEdit
        Left = 484
        Top = 288
        Width = 121
        Height = 21
        DataField = 'SITMAN'
        DataSource = dsCadE145Ebq
        TabOrder = 20
      end
      object edtNumEbq: TCurrencyEdit
        Left = 127
        Top = 45
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DisplayFormat = '0'
        TabOrder = 21
      end
    end
    object tsComposicao: TTabSheet
      Caption = '     Composi'#231#227'o     '
      ImageIndex = 1
      object dbg1: TDBGrid
        Left = -2
        Top = -1
        Width = 845
        Height = 480
        DataSource = dsConsE145Nfv
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
            FieldName = 'SEQEBQ'
            Title.Alignment = taCenter
            Title.Caption = 'Seq'
            Width = 40
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FILNFV'
            Title.Alignment = taCenter
            Title.Caption = 'Filial Nota'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SNFNFV'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMNFV'
            Title.Alignment = taCenter
            Title.Caption = 'Nota Fiscal'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDEMB'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Emb.'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMCLI'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Cliente'
            Width = 270
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATEMI'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATSAI'
            Title.Alignment = taCenter
            Title.Caption = 'Data Sa'#237'da'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPNFS'
            Title.Alignment = taCenter
            Title.Caption = 'Tip.Doc.'
            Visible = True
          end>
      end
    end
    object tsRota: TTabSheet
      Caption = '     Rota    '
      ImageIndex = 2
      object dbg2: TDBGrid
        Left = -1
        Top = 0
        Width = 418
        Height = 201
        DataSource = dsConsE145ccd
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
            FieldName = 'SEQMOV'
            Title.Alignment = taCenter
            Title.Caption = 'Seq. Mov.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vaTipMov'
            Title.Alignment = taCenter
            Title.Caption = 'Desc. Tipo Mov.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPMOV'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Mov.'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CEPCID'
            Title.Alignment = taCenter
            Title.Caption = 'CEP'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UFSPAS'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Width = 40
            Visible = True
          end>
      end
      object dbg3: TDBGrid
        Left = -2
        Top = 209
        Width = 339
        Height = 270
        DataSource = dsConsE145Cld
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
            FieldName = 'SEQEBQ'
            Title.Alignment = taCenter
            Title.Caption = 'Seq. Nota Fiscal'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FILNFV'
            Title.Alignment = taCenter
            Title.Caption = 'Filial Nota'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SNFNFV'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMNFV'
            Title.Alignment = taCenter
            Title.Caption = 'Nota Fiscal'
            Width = 80
            Visible = True
          end>
      end
    end
  end
  object btnGravarAlteracoes: TBitBtn
    Left = 738
    Top = 64
    Width = 100
    Height = 25
    Caption = 'Gravar Altera'#231#245'es'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
    TabStop = False
    OnClick = btnGravarAlteracoesClick
  end
  object dsCadusu_tRotManGer: TDataSource
    DataSet = DmOra.Cadusu_tRotManGer
    Left = 716
    Top = 146
  end
  object dsCadE145Ebq: TDataSource
    DataSet = DmOra.CadE145Ebq
    OnStateChange = dsCadE145EbqStateChange
    Left = 720
    Top = 232
  end
  object dsConsE145Nfv: TDataSource
    DataSet = DmOra.ConsE145Nfv
    Left = 736
    Top = 280
  end
  object ConsE145ccd: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsE145ccdAfterScroll
    OnCalcFields = ConsE145ccdCalcFields
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODFIL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMEBQ'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e145ccd'
      'where codemp = :CODEMP and'
      '      codfil = :CODFIL and'
      '      numebq = :NUMEBQ'
      'order by seqmov')
    Left = 744
    Top = 344
    object ConsE145ccdCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE145ccdCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE145ccdNUMEBQ: TIntegerField
      FieldName = 'NUMEBQ'
    end
    object ConsE145ccdSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object ConsE145ccdTIPMOV: TStringField
      FieldName = 'TIPMOV'
      Size = 1
    end
    object ConsE145ccdUFSPAS: TStringField
      FieldName = 'UFSPAS'
      Size = 2
    end
    object ConsE145ccdCEPCID: TIntegerField
      FieldName = 'CEPCID'
    end
    object ConsE145ccdvaTipMov: TStringField
      FieldKind = fkCalculated
      FieldName = 'vaTipMov'
      Calculated = True
    end
  end
  object dsConsE145ccd: TDataSource
    DataSet = ConsE145ccd
    Left = 744
    Top = 392
  end
  object ConsE145Nfv_Rota: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODFIL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMEBQ'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CEPINI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e145nfv.*,'
      '       e140nfv.codcli,'
      '       e085cli.cepini'
      'from e145nfv'
      'inner join e140nfv on e140nfv.codemp = e145nfv.codemp and'
      '                      e140nfv.codfil = e145nfv.codfil and'
      '                      e140nfv.codsnf = e145nfv.snfnfv and'
      '                      e140nfv.numnfv = e145nfv.numnfv'
      'inner join e085cli on e085cli.codcli = e140nfv.codcli'
      'where'
      'e145nfv.codemp = :CODEMP and'
      'e145nfv.codfil = :CODFIL and'
      'e145nfv.numebq = :NUMEBQ and'
      'e085cli.cepini = :CEPINI'
      'order by e145nfv.seqebq')
    Left = 656
    Top = 472
    object ConsE145Nfv_RotaCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE145Nfv_RotaCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE145Nfv_RotaNUMEBQ: TIntegerField
      FieldName = 'NUMEBQ'
    end
    object ConsE145Nfv_RotaSEQEBQ: TIntegerField
      FieldName = 'SEQEBQ'
    end
    object ConsE145Nfv_RotaFILNFV: TIntegerField
      FieldName = 'FILNFV'
    end
    object ConsE145Nfv_RotaSNFNFV: TStringField
      FieldName = 'SNFNFV'
      Size = 3
    end
    object ConsE145Nfv_RotaNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object ConsE145Nfv_RotaNUMCFI: TIntegerField
      FieldName = 'NUMCFI'
    end
    object ConsE145Nfv_RotaSEQIPV: TIntegerField
      FieldName = 'SEQIPV'
    end
    object ConsE145Nfv_RotaCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE145Nfv_RotaCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE145Nfv_RotaCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 50
    end
    object ConsE145Nfv_RotaQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ConsE145Nfv_RotaTIPDOC: TIntegerField
      FieldName = 'TIPDOC'
    end
    object ConsE145Nfv_RotaQTDETG: TFMTBCDField
      FieldName = 'QTDETG'
      Precision = 14
      Size = 5
    end
    object ConsE145Nfv_RotaCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE145Nfv_RotaCEPINI: TIntegerField
      FieldName = 'CEPINI'
    end
  end
  object dsConsE145Cld: TDataSource
    DataSet = DmOra.ConsE145Cld
    Left = 680
    Top = 312
  end
end
