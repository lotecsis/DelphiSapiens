object FMoniCliente: TFMoniCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Monitoramento de Clientes'
  ClientHeight = 652
  ClientWidth = 994
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
    Width = 994
    Height = 652
    ActivePage = tsMonitoramento
    Align = alClient
    TabOrder = 0
    object tsMonitoramento: TTabSheet
      Caption = '     Monitoramento     '
      object lblCliente: TLabel
        Left = 54
        Top = 8
        Width = 33
        Height = 13
        Caption = 'Cliente'
      end
      object lblCidade: TLabel
        Left = 54
        Top = 32
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object lblNomCid: TLabel
        Left = 54
        Top = 55
        Width = 63
        Height = 13
        Caption = 'Nome Cidade'
      end
      object lblUF: TLabel
        Left = 60
        Top = 81
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object lblInicio: TLabel
        Left = 58
        Top = 107
        Width = 25
        Height = 13
        Caption = 'In'#237'cio'
      end
      object Label6: TLabel
        Left = 208
        Top = 107
        Width = 6
        Height = 13
        Caption = #224
      end
      object lblDiasMonitoramento: TLabel
        Left = 58
        Top = 132
        Width = 110
        Height = 13
        Caption = 'Dias de Monitoramento'
      end
      object lblComCompra: TLabel
        Left = 449
        Top = 8
        Width = 61
        Height = 13
        Caption = 'Com Compra'
      end
      object lblDiasSerasa: TLabel
        Left = 449
        Top = 32
        Width = 62
        Height = 13
        Caption = 'Dias SERASA'
      end
      object lblSitSerasa: TLabel
        Left = 449
        Top = 55
        Width = 58
        Height = 13
        Caption = 'Sit. SERASA'
      end
      object lblSitMon: TLabel
        Left = 449
        Top = 81
        Width = 91
        Height = 13
        Caption = 'Sit. Monitoramento'
      end
      object lblRepresentante: TLabel
        Left = 449
        Top = 107
        Width = 72
        Height = 13
        Caption = 'Representante'
      end
      object Label1: TLabel
        Left = 6
        Top = 576
        Width = 78
        Height = 13
        Caption = 'Qtde. Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 142
        Top = 576
        Width = 87
        Height = 13
        Caption = 'Vlr. Ped. Aberto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 278
        Top = 576
        Width = 99
        Height = 13
        Caption = 'Vlr. Ped. Faturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 419
        Top = 576
        Width = 77
        Height = 13
        Caption = 'Vlr. Ped. Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblOriSerasa: TLabel
        Left = 449
        Top = 132
        Width = 76
        Height = 13
        Caption = 'Origem SERASA'
      end
      object dbg1: TDBGrid
        Left = -4
        Top = 160
        Width = 990
        Height = 406
        DataSource = dsClientMoniCliente
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
            FieldName = 'USU_CODCLI'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMCLI'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 190
            Visible = True
          end
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
            FieldName = 'USU_DATINI'
            Title.Alignment = taCenter
            Title.Caption = 'In'#237'cio Mon.'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'vnQtdDiasMon'
            Title.Alignment = taCenter
            Title.Caption = 'Dias Mon.'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VLR_PED_ABE'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Ped. Abe.'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VLR_PED_FAT'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Ped. Fat.'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'vnTotalCompra'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CLISERA'
            Title.Alignment = taCenter
            Title.Caption = 'Ori. SERASA'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vnLimiteDisponivel'
            Title.Alignment = taCenter
            Title.Caption = 'Limite Dispon'#237'vel'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TIT_ABE'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Tit. Aberto'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VLRLIM'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Limite'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATLIM'
            Title.Alignment = taCenter
            Title.Caption = 'Data Limite'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_DATSER'
            Title.Alignment = taCenter
            Title.Caption = #218'ltimo SERASA'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'vnQtdDiasSerasa'
            Title.Alignment = taCenter
            Title.Caption = 'Dias'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_SITSER'
            Title.Alignment = taCenter
            Title.Caption = 'Sit. SERASA'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_USUSER'
            Title.Alignment = taCenter
            Title.Caption = 'Usu. SERASA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APEREP'
            Title.Alignment = taCenter
            Title.Caption = 'Representante'
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_DATFIM'
            Title.Alignment = taCenter
            Title.Caption = 'Fim Mon.'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_MOTFIM'
            Title.Alignment = taCenter
            Title.Caption = 'Motivo Fim'
            Width = 300
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_SALFIM'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo Fim Mon.'
            Visible = True
          end>
      end
      object btnMostrar: TBitBtn
        Left = 908
        Top = 3
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
        TabOrder = 1
        OnClick = btnMostrarClick
      end
      object edtCodCli: TCurrencyEdit
        Left = 97
        Top = 6
        Width = 100
        Height = 19
        Margins.Left = 5
        Margins.Top = 2
        Alignment = taLeftJustify
        Ctl3D = False
        DisplayFormat = '0'
        ParentCtl3D = False
        TabOrder = 2
        OnExit = edtCodCliExit
      end
      object btnConsCli: TBitBtn
        Left = 176
        Top = 7
        Width = 19
        Height = 17
        Caption = '...'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 3
        TabStop = False
        OnClick = btnConsCliClick
      end
      object edtNomCli: TEdit
        Left = 197
        Top = 6
        Width = 216
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object chkCliente: TCheckBox
        Left = 37
        Top = 7
        Width = 15
        Height = 17
        Color = clBtnFace
        Ctl3D = True
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 5
        OnClick = chkClienteClick
      end
      object chkCidade: TCheckBox
        Left = 37
        Top = 31
        Width = 15
        Height = 17
        TabOrder = 6
        OnClick = chkCidadeClick
      end
      object btnFiltrar: TBitBtn
        Left = 908
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Filtrar'
        DoubleBuffered = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDDDD0000DDDDDDDDDDD77D77D77D0000DDD707DDDD007007007D0000DD73
          307DDD00D00D00DD0000DD7F3307DDDDDDDDDDDD0000DDD3F3307DDDDDDDDDDD
          0000DDDD3F330777777DDDDD0000DDDDD3F330000077DDDD0000DDDDDD3F3378
          88707DDD0000DDDDDDD037F8F88707DD0000DDDDDDD07FCCCCC8777D0000DDDD
          D4D0F8C8F8C8804D0000DDDDD4408FCCCCCF80DD0000DDDDD4D0F8CFFCF880DD
          0000DDDDDD477FCCCC8F774D0000DDDDDDDD07F8F8F70DDD0000DDDDDDDDD07F
          8F70DDDD0000DDDDDDDDDD70007DDDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDD
          DDDDDDDDDDDDDDDD0000}
        ParentDoubleBuffered = False
        TabOrder = 7
        OnClick = btnFiltrarClick
      end
      object edtNomCid1: TEdit
        Left = 121
        Top = 54
        Width = 292
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
      end
      object chkNomCid: TCheckBox
        Left = 37
        Top = 54
        Width = 15
        Height = 17
        TabOrder = 9
        OnClick = chkNomCidClick
      end
      object chkUF: TCheckBox
        Left = 37
        Top = 80
        Width = 19
        Height = 17
        TabOrder = 10
        OnClick = chkUFClick
      end
      object edtUF: TEdit
        Left = 78
        Top = 79
        Width = 23
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        MaxLength = 2
        ParentCtl3D = False
        TabOrder = 11
      end
      object edtDatIni: TDateEdit
        Left = 93
        Top = 104
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 12
      end
      object edtDatFim: TDateEdit
        Left = 228
        Top = 104
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 13
      end
      object chkInicio: TCheckBox
        Left = 37
        Top = 106
        Width = 18
        Height = 17
        TabOrder = 14
        OnClick = chkInicioClick
      end
      object chkDiasMonitoramento: TCheckBox
        Left = 37
        Top = 131
        Width = 18
        Height = 17
        TabOrder = 15
        OnClick = chkDiasMonitoramentoClick
      end
      object edtDiasMonitoramento: TCurrencyEdit
        Left = 218
        Top = 130
        Width = 40
        Height = 19
        Margins.Left = 5
        Margins.Top = 2
        Ctl3D = False
        DisplayFormat = '0'
        ParentCtl3D = False
        TabOrder = 16
      end
      object cbbDiasMonitoramento: TComboBox
        Left = 172
        Top = 129
        Width = 41
        Height = 22
        Style = csOwnerDrawFixed
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 17
        Items.Strings = (
          '='
          '<='
          '>='
          '<'
          '>')
      end
      object chkComCompra: TCheckBox
        Left = 429
        Top = 7
        Width = 18
        Height = 17
        TabOrder = 18
        OnClick = chkComCompraClick
      end
      object cbbComCompra: TComboBox
        Left = 515
        Top = 5
        Width = 63
        Height = 22
        Style = csOwnerDrawFixed
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 19
        Items.Strings = (
          'SIM'
          'NAO')
      end
      object chkDiasSerasa: TCheckBox
        Left = 429
        Top = 31
        Width = 18
        Height = 17
        TabOrder = 20
        OnClick = chkDiasSerasaClick
      end
      object edtDiasSerasa: TCurrencyEdit
        Left = 560
        Top = 31
        Width = 40
        Height = 19
        Margins.Left = 5
        Margins.Top = 2
        Ctl3D = False
        DisplayFormat = '0'
        ParentCtl3D = False
        TabOrder = 21
      end
      object cbbDiasSerasa: TComboBox
        Left = 517
        Top = 29
        Width = 41
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 22
        Items.Strings = (
          '='
          '<='
          '>='
          '<'
          '>')
      end
      object chkSitSerasa: TCheckBox
        Left = 429
        Top = 54
        Width = 18
        Height = 17
        TabOrder = 23
        OnClick = chkSitSerasaClick
      end
      object cbbSitSerasa: TComboBox
        Left = 517
        Top = 54
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 24
        Items.Strings = (
          'RUIM'
          'MEDIO'
          'BOM'
          'OTIMO'
          'INDEFINIDO')
      end
      object chkSitMon: TCheckBox
        Left = 429
        Top = 80
        Width = 18
        Height = 17
        TabOrder = 25
        OnClick = chkSitMonClick
      end
      object cbbSitMon: TComboBox
        Left = 550
        Top = 78
        Width = 112
        Height = 22
        Style = csOwnerDrawFixed
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 26
        Items.Strings = (
          'ATIVO'
          'FINALIZADO'
          'TODOS')
      end
      object edtNomRep: TEdit
        Left = 626
        Top = 104
        Width = 216
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 27
      end
      object chkRepresentante: TCheckBox
        Left = 429
        Top = 106
        Width = 17
        Height = 17
        TabOrder = 28
        OnClick = chkRepresentanteClick
      end
      object edtCodRep: TCurrencyEdit
        Left = 526
        Top = 104
        Width = 100
        Height = 19
        Margins.Left = 5
        Margins.Top = 2
        Alignment = taLeftJustify
        Ctl3D = False
        DisplayFormat = '0'
        ParentCtl3D = False
        TabOrder = 29
        OnExit = edtCodRepExit
      end
      object btnConsRep: TBitBtn
        Left = 606
        Top = 105
        Width = 19
        Height = 17
        Caption = '...'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 30
        TabStop = False
        OnClick = btnConsRepClick
      end
      object dbedtvnQtdCli: TDBEdit
        Left = 6
        Top = 591
        Width = 121
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'vnQtdCli'
        DataSource = dsClientMoniCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 31
      end
      object dbedtvnVlrPedAbe: TDBEdit
        Left = 143
        Top = 591
        Width = 121
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'vnVlrPedAbe'
        DataSource = dsClientMoniCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 32
      end
      object dbedtvnVlrPedFat: TDBEdit
        Left = 281
        Top = 591
        Width = 121
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'vnVlrPedFat'
        DataSource = dsClientMoniCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 33
      end
      object dbedtvnVlrPedTot: TDBEdit
        Left = 419
        Top = 591
        Width = 121
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'vnVlrPedTot'
        DataSource = dsClientMoniCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 34
      end
      object btnAddCliente: TBitBtn
        Left = 832
        Top = 569
        Width = 151
        Height = 25
        Caption = 'Adicionar Cliente'
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
        TabOrder = 35
        TabStop = False
        OnClick = btnAddClienteClick
      end
      object chkOriSerasa: TCheckBox
        Left = 429
        Top = 131
        Width = 17
        Height = 17
        TabOrder = 36
        OnClick = chkOriSerasaClick
      end
      object cbbOriSerasa: TComboBox
        Left = 530
        Top = 129
        Width = 48
        Height = 22
        Style = csOwnerDrawFixed
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 37
        Items.Strings = (
          'SIM'
          'NAO')
      end
      object btnFinalizarMon: TBitBtn
        Left = 832
        Top = 596
        Width = 151
        Height = 25
        Caption = 'Finalizar Monitoramento'
        DoubleBuffered = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400000099FF0404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000FFFF0404040004040400040404003333
          CCFF0000FFFF000099FF04040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404003333
          CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
          040004040400040404000000FFFF040404000404040004040400040404000404
          04003333CCFF0066FFFF0000CCFF040404000404040004040400040404000404
          0400040404000000FFFF04040400040404000404040004040400040404000404
          0400040404000000CCFF0000FFFF000099FF0404040004040400040404000404
          04000000FFFF000099FF04040400040404000404040004040400040404000404
          040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
          FFFF000099FF0404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0000FFFF000099FF0000FFFF0000
          99FF040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000000CCFF0000FFFF000099FF0404
          0400040404000404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0000FFFF000099FF0000CCFF0000
          99FF040404000404040004040400040404000404040004040400040404000404
          040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
          CCFF000099FF0404040004040400040404000404040004040400040404000404
          04000000CCFF0000FFFF0000FFFF000099FF0404040004040400040404000404
          04000000CCFF000099FF04040400040404000404040004040400040404000000
          CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
          0400040404000000CCFF000099FF040404000404040004040400040404006666
          99FF0000CCFF666699FF04040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400}
        ParentDoubleBuffered = False
        TabOrder = 38
        OnClick = btnFinalizarMonClick
      end
    end
  end
  object edtCodRaiz: TCurrencyEdit
    Left = 101
    Top = 54
    Width = 100
    Height = 19
    Margins.Left = 5
    Margins.Top = 2
    Alignment = taLeftJustify
    Ctl3D = False
    DisplayFormat = '0'
    ParentCtl3D = False
    TabOrder = 1
    OnExit = edtCodRaizExit
  end
  object btnConsCid: TBitBtn
    Left = 180
    Top = 55
    Width = 19
    Height = 17
    Caption = '...'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    TabStop = False
    OnClick = btnConsCidClick
  end
  object edtNomCid: TEdit
    Left = 201
    Top = 54
    Width = 216
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object dsClientMoniCliente: TDataSource
    DataSet = DmOra.ClientMoniCliente
    Left = 656
    Top = 256
  end
  object ConsCli: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODCLI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT E085CLI.CODCLI,E085CLI.NOMCLI,E085CLI.SITCLI,'
      '       E008CEP.CODRAI,'
      '       E085HCL.CODREP'
      'FROM E085CLI'
      'INNER JOIN E008CEP ON E008CEP.CEPINI = E085CLI.CEPINI'
      'INNER JOIN E085HCL ON E085HCL.CODCLI = E085CLI.CODCLI AND'
      '                      E085HCL.CODFIL = 1'
      'WHERE'
      'E085CLI.CODCLI = :CODCLI')
    Left = 768
    Top = 48
    object ConsCliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsCliNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsCliCODRAI: TIntegerField
      FieldName = 'CODRAI'
    end
    object ConsCliCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsCliSITCLI: TStringField
      FieldName = 'SITCLI'
      Size = 1
    end
  end
  object ConsCid: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODRAI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E008RAI.CODRAI,E008RAI.NOMCID,E008RAI.SIGUFS,E008RAI.USU_' +
        'CODREP'
      ' FROM E008RAI'
      ' WHERE'
      ' CODRAI = :CODRAI')
    Left = 824
    Top = 48
    object ConsCidCODRAI: TIntegerField
      FieldName = 'CODRAI'
    end
    object ConsCidNOMCID: TStringField
      FieldName = 'NOMCID'
      Size = 60
    end
    object ConsCidSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsCidUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
  end
  object ConsRep: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODREP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT NOMREP,APEREP,CIDREP FROM E090REP'
      'WHERE SITREP = '#39'A'#39' AND'
      '      CODREP = :CODREP')
    Left = 872
    Top = 96
    object ConsRepNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ConsRepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ConsRepCIDREP: TStringField
      FieldName = 'CIDREP'
      Size = 60
    end
  end
  object ConsCliListaOn: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT E085CLI.CODCLI,E085CLI.NOMCLI,E085CLI.SITCLI,'
      '       E008CEP.CODRAI,'
      '       E085HCL.CODREP'
      '    FROM E085CLI'
      '    INNER JOIN E008CEP ON E008CEP.CEPINI = E085CLI.CEPINI'
      '    INNER JOIN E085HCL ON E085HCL.CODCLI = E085CLI.CODCLI AND'
      '                      E085HCL.CODFIL = 1'
      
        '    INNER JOIN USU_TE085SERA ON USU_TE085SERA.USU_CGCCPF = E085C' +
        'LI.CGCCPF'
      '     WHERE'
      
        '       USU_TE085SERA.USU_CODCLI NOT IN (SELECT USU_TE085MONI.USU' +
        '_CODCLI FROM USU_TE085MONI)')
    Left = 688
    Top = 32
    object ConsCliListaOnCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsCliListaOnNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsCliListaOnSITCLI: TStringField
      FieldName = 'SITCLI'
      Size = 1
    end
    object ConsCliListaOnCODRAI: TIntegerField
      FieldName = 'CODRAI'
    end
    object ConsCliListaOnCODREP: TIntegerField
      FieldName = 'CODREP'
    end
  end
end
