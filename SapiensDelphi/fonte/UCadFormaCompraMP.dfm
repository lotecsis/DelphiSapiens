object FCadFormaCompraMP: TFCadFormaCompraMP
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Forma de Compra MP'
  ClientHeight = 600
  ClientWidth = 914
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
  object Label9: TLabel
    Left = 16
    Top = 19
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 49
    Width = 916
    Height = 409
    DataSource = dsConsUSU_T210Per
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
        FieldName = 'USU_CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 240
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 13303754
        Expanded = False
        FieldName = 'USU_VLR001'
        Title.Alignment = taCenter
        Title.Caption = 'Valor 001'
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 13421823
        Expanded = False
        FieldName = 'USU_VLR101'
        Title.Alignment = taCenter
        Title.Caption = 'Valor 101'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_VLRTOT'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Total'
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 13303754
        Expanded = False
        FieldName = 'USU_PER001'
        Title.Alignment = taCenter
        Title.Caption = '% 001'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 13421823
        Expanded = False
        FieldName = 'USU_PER101'
        Title.Alignment = taCenter
        Title.Caption = '% 101'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_QTD001'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde. 001'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_QTD101'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde. 101'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UNIMED'
        Title.Alignment = taCenter
        Title.Caption = 'Uni. Med'
        Width = 60
        Visible = True
      end>
  end
  object pnl1: TPanel
    Left = 8
    Top = 464
    Width = 898
    Height = 129
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 44
      Top = 11
      Width = 38
      Height = 13
      Caption = 'Produto'
      FocusControl = dbedtUSU_CODPRO
    end
    object Label2: TLabel
      Left = 37
      Top = 43
      Width = 45
      Height = 13
      Caption = 'Valor 001'
      FocusControl = dbedtUSU_VLR001
    end
    object Label3: TLabel
      Left = 215
      Top = 43
      Width = 45
      Height = 13
      Caption = 'Valor 101'
      FocusControl = dbedtUSU_VLR101
    end
    object Label4: TLabel
      Left = 397
      Top = 43
      Width = 51
      Height = 13
      Caption = 'Valor Total'
      FocusControl = dbedtUSU_VLRTOT
    end
    object Label5: TLabel
      Left = 50
      Top = 70
      Width = 32
      Height = 13
      Caption = '% 001'
      FocusControl = dbedtUSU_PER001
    end
    object Label6: TLabel
      Left = 228
      Top = 70
      Width = 32
      Height = 13
      Caption = '% 101'
      FocusControl = dbedtUSU_PER101
    end
    object Label7: TLabel
      Left = 33
      Top = 97
      Width = 49
      Height = 13
      Caption = 'Qtde. 001'
      FocusControl = dbedtUSU_QTD001
    end
    object Label8: TLabel
      Left = 211
      Top = 97
      Width = 49
      Height = 13
      Caption = 'Qtde. 101'
      FocusControl = dbedtUSU_QTD101
    end
    object dbedtUSU_CODPRO: TDBEdit
      Left = 85
      Top = 8
      Width = 100
      Height = 21
      DataField = 'USU_CODPRO'
      DataSource = dsCadUSU_T210Per
      TabOrder = 0
      OnExit = dbedtUSU_CODPROExit
    end
    object dbedtUSU_VLR001: TDBEdit
      Left = 85
      Top = 40
      Width = 100
      Height = 21
      Color = 13303754
      DataField = 'USU_VLR001'
      DataSource = dsCadUSU_T210Per
      TabOrder = 1
      OnExit = dbedtUSU_VLR001Exit
    end
    object dbedtUSU_VLR101: TDBEdit
      Left = 262
      Top = 40
      Width = 100
      Height = 21
      Color = 13421823
      DataField = 'USU_VLR101'
      DataSource = dsCadUSU_T210Per
      TabOrder = 2
      OnExit = dbedtUSU_VLR101Exit
    end
    object dbedtUSU_VLRTOT: TDBEdit
      Left = 454
      Top = 40
      Width = 100
      Height = 21
      DataField = 'USU_VLRTOT'
      DataSource = dsCadUSU_T210Per
      ReadOnly = True
      TabOrder = 3
    end
    object dbedtUSU_PER001: TDBEdit
      Left = 85
      Top = 67
      Width = 100
      Height = 21
      Color = 13303754
      DataField = 'USU_PER001'
      DataSource = dsCadUSU_T210Per
      ReadOnly = True
      TabOrder = 4
    end
    object dbedtUSU_PER101: TDBEdit
      Left = 262
      Top = 67
      Width = 100
      Height = 21
      Color = 13421823
      DataField = 'USU_PER101'
      DataSource = dsCadUSU_T210Per
      ReadOnly = True
      TabOrder = 5
    end
    object dbedtUSU_QTD001: TDBEdit
      Left = 85
      Top = 94
      Width = 100
      Height = 21
      Color = 13303754
      DataField = 'USU_QTD001'
      DataSource = dsCadUSU_T210Per
      TabOrder = 6
    end
    object dbedtUSU_QTD101: TDBEdit
      Left = 262
      Top = 94
      Width = 100
      Height = 21
      Color = 13421823
      DataField = 'USU_QTD101'
      DataSource = dsCadUSU_T210Per
      TabOrder = 7
    end
    object edtDesPro: TEdit
      Left = 186
      Top = 8
      Width = 368
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 8
    end
    object btnNovo: TBitBtn
      Left = 411
      Top = 93
      Width = 90
      Height = 25
      Caption = 'Novo(F1)'
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
      TabOrder = 9
      OnClick = btnNovoClick
    end
    object btnAlterar: TBitBtn
      Left = 507
      Top = 93
      Width = 90
      Height = 25
      Caption = 'Alterar'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 10
      TabStop = False
      OnClick = btnAlterarClick
    end
    object btnCancelar: TBitBtn
      Left = 699
      Top = 93
      Width = 90
      Height = 25
      Caption = 'Cancelar'
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
      TabOrder = 11
      TabStop = False
      OnClick = btnCancelarClick
    end
    object btnConfirmar: TBitBtn
      Left = 795
      Top = 93
      Width = 90
      Height = 25
      Caption = 'Confirmar'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 12
      OnClick = btnConfirmarClick
    end
    object btnExcluir: TBitBtn
      Left = 603
      Top = 93
      Width = 90
      Height = 25
      Caption = 'Excluir'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 13
      TabStop = False
      OnClick = btnExcluirClick
    end
    object btnConsProduto: TBitBtn
      Left = 163
      Top = 10
      Width = 20
      Height = 16
      Caption = '...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 14
      TabStop = False
      OnClick = btnConsProdutoClick
    end
  end
  object edtDesProPesq: TEdit
    Left = 60
    Top = 16
    Width = 357
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    MaxLength = 100
    ParentCtl3D = False
    TabOrder = 2
    OnChange = edtDesProPesqChange
  end
  object dsCadUSU_T210Per: TDataSource
    AutoEdit = False
    DataSet = DmOra.CadUSU_T210Per
    OnStateChange = dsCadUSU_T210PerStateChange
    Left = 440
    Top = 304
  end
  object dsConsUSU_T210Per: TDataSource
    DataSet = DmOra.ConsUSU_T210Per
    Left = 552
    Top = 296
  end
end
