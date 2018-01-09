object FCadUsuSysRepWeb: TFCadUsuSysRepWeb
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu'#225'rios SysRep Base Web'
  ClientHeight = 428
  ClientWidth = 509
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
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 509
    Height = 428
    ActivePage = tsCadastro
    Align = alClient
    TabOrder = 0
    object tsCadastro: TTabSheet
      Caption = '     Cadastro     '
      object lbl10: TLabel
        Left = 18
        Top = 195
        Width = 140
        Height = 13
        Caption = 'N'#186' Controle Final Externo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl14: TLabel
        Left = 14
        Top = 221
        Width = 144
        Height = 13
        Caption = 'N'#186' Controle Atual Externo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl16: TLabel
        Left = 19
        Top = 289
        Width = 139
        Height = 13
        Caption = 'N'#186' Controle Final Interno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl17: TLabel
        Left = 15
        Top = 315
        Width = 143
        Height = 13
        Caption = 'N'#186' Controle Atual Interno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 65
        Top = 67
        Width = 30
        Height = 13
        Caption = 'Login'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 275
        Top = 67
        Width = 35
        Height = 13
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 10
        Top = 168
        Width = 148
        Height = 13
        Caption = 'N'#186' Controle Inicial Externo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 46
        Top = 340
        Width = 49
        Height = 13
        Caption = 'Situa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl7: TLabel
        Left = 63
        Top = 40
        Width = 32
        Height = 13
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl8: TLabel
        Left = 10
        Top = 134
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
      object lbl9: TLabel
        Left = 170
        Top = 134
        Width = 35
        Height = 13
        Caption = 'Raz'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl11: TLabel
        Left = 52
        Top = 13
        Width = 43
        Height = 13
        Caption = 'Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl18: TLabel
        Left = 14
        Top = 262
        Width = 147
        Height = 13
        Caption = 'N'#186' Controle Inicial Interno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl25: TLabel
        Left = 60
        Top = 94
        Width = 35
        Height = 13
        Caption = 'Chave'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbedtCODUSU: TDBEdit
        Left = 102
        Top = 10
        Width = 100
        Height = 21
        DataField = 'CODUSU'
        DataSource = dsClientCadE100Usu
        TabOrder = 0
      end
      object dbedtNOMUSU: TDBEdit
        Left = 102
        Top = 37
        Width = 363
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMUSU'
        DataSource = dsClientCadE100Usu
        TabOrder = 1
      end
      object dbedtLOGUSU: TDBEdit
        Left = 102
        Top = 64
        Width = 160
        Height = 21
        CharCase = ecUpperCase
        DataField = 'LOGUSU'
        DataSource = dsClientCadE100Usu
        TabOrder = 2
      end
      object dbedtSENUSU: TDBEdit
        Left = 315
        Top = 64
        Width = 150
        Height = 21
        DataField = 'SENUSU'
        DataSource = dsClientCadE100Usu
        TabOrder = 3
      end
      object dbedtCHAVE: TDBEdit
        Left = 102
        Top = 91
        Width = 160
        Height = 21
        DataField = 'CHAVE'
        DataSource = dsClientCadE100Usu
        TabOrder = 4
      end
      object dbedtCODREP: TDBEdit
        Left = 102
        Top = 131
        Width = 59
        Height = 21
        DataField = 'CODREP'
        DataSource = dsClientCadE100Usu
        TabOrder = 5
      end
      object dbedtNOMREP: TDBEdit
        Left = 211
        Top = 131
        Width = 254
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMREP'
        DataSource = dsClientCadE100Usu
        TabOrder = 6
      end
      object dbedtNCIE: TDBEdit
        Left = 164
        Top = 165
        Width = 100
        Height = 21
        DataField = 'NCIE'
        DataSource = dsClientCadE100Usu
        TabOrder = 7
      end
      object dbedtNCFE: TDBEdit
        Left = 164
        Top = 192
        Width = 100
        Height = 21
        DataField = 'NCFE'
        DataSource = dsClientCadE100Usu
        TabOrder = 8
      end
      object dbedtNCAE: TDBEdit
        Left = 164
        Top = 218
        Width = 100
        Height = 21
        DataField = 'NCAE'
        DataSource = dsClientCadE100Usu
        TabOrder = 9
      end
      object dbedtNCII: TDBEdit
        Left = 164
        Top = 259
        Width = 100
        Height = 21
        DataField = 'NCII'
        DataSource = dsClientCadE100Usu
        TabOrder = 10
      end
      object dbedtNCFI: TDBEdit
        Left = 164
        Top = 286
        Width = 100
        Height = 21
        DataField = 'NCFI'
        DataSource = dsClientCadE100Usu
        TabOrder = 11
      end
      object dbedtNCAI: TDBEdit
        Left = 164
        Top = 312
        Width = 100
        Height = 21
        DataField = 'NCAI'
        DataSource = dsClientCadE100Usu
        TabOrder = 12
      end
      object btnNovo: TBitBtn
        Left = 25
        Top = 371
        Width = 85
        Height = 25
        Caption = 'Novo'
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
        TabOrder = 13
        TabStop = False
        OnClick = btnNovoClick
      end
      object btnAlterar: TBitBtn
        Left = 117
        Top = 371
        Width = 85
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
        TabOrder = 14
        TabStop = False
        OnClick = btnAlterarClick
      end
      object btnExcluir: TBitBtn
        Left = 209
        Top = 371
        Width = 85
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
        TabOrder = 15
        TabStop = False
      end
      object btnCancelar: TBitBtn
        Left = 301
        Top = 371
        Width = 85
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
        TabOrder = 16
        TabStop = False
        OnClick = btnCancelarClick
      end
      object btnConfirmar: TBitBtn
        Left = 392
        Top = 371
        Width = 85
        Height = 25
        Caption = 'Confirmar'
        DoubleBuffered = True
        Glyph.Data = {
          06020000424D0602000000000000760000002800000028000000140000000100
          0400000000009001000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          33333333333333333333333333333FFFFFFFFFFFF33333380000000000008333
          33338888888888883F333330CC08CCF770CC03333338F38F333338F38F333330
          CC08CCF770CC03333338F38F333338F38F333330CC07887770CC03333338F38F
          FFFFF8338F333330CC60000006CC03333338F338888883338F333330CCCCCCCC
          CCCC03333338F33FFFFFFFF38F333330C6000000006C03333338F3888888883F
          8F333330C0FFFFFFFF0C03333338F8F33333338F8F333330C0FFFFFFFF0C0333
          3338F8F33333338F8F333330C0FFFFFFFF0C03333338F8F33333338F8F333330
          C0FFFFFFFF0C03333338F8F33333338F8F33333000FFFFFFFF0003333338F8F3
          3333338F8F333330C0FFFFFFFF0C03333338F8FFFFFFFF8F8333333800000000
          0000833333338888888888883333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          33333333333333333333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 17
        OnClick = btnConfirmarClick
      end
      object dbcbbSITUSU: TDBComboBox
        Left = 102
        Top = 337
        Width = 40
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'SITUSU'
        DataSource = dsClientCadE100Usu
        Items.Strings = (
          'A'
          'I')
        TabOrder = 18
      end
    end
    object tsConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      OnShow = tsConsultaShow
      object dbg1: TDBGrid
        Left = 0
        Top = 0
        Width = 501
        Height = 400
        Align = alClient
        DataSource = dsClientConsE100Usu
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
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
            FieldName = 'CODUSU'
            Title.Alignment = taCenter
            Title.Caption = 'Usu'#225'rio'
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODREP'
            Title.Alignment = taCenter
            Title.Caption = 'Repres.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'LOGUSU'
            Title.Alignment = taCenter
            Title.Caption = 'Login'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMUSU'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SENUSU'
            Title.Alignment = taCenter
            Title.Caption = 'Senha'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SITUSU'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CHAVE'
            Title.Alignment = taCenter
            Title.Caption = 'Chave'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMREP'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Representante'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCIE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Con.Ini.Exter'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCFE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Con.Fim.Exter'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCAE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Con.Atu.Exter'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCII'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Con.Ini.Int'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCFI'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Con.Fim.Int'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCAI'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Con.Atu.Int'
            Width = 90
            Visible = True
          end>
      end
    end
  end
  object dsClientCadE100Usu: TDataSource
    AutoEdit = False
    DataSet = DmMySql.ClientCadE100Usu
    OnStateChange = dsClientCadE100UsuStateChange
    Left = 440
    Top = 168
  end
  object dsClientConsE100Usu: TDataSource
    DataSet = DmMySql.ClientConsE100Usu
    Left = 432
    Top = 216
  end
end
