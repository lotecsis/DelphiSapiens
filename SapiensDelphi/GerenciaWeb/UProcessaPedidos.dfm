object FProcessaPedidos: TFProcessaPedidos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Processa Pedidos Web'
  ClientHeight = 619
  ClientWidth = 740
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
  object LQtdArq: TLabel
    Left = 62
    Top = 32
    Width = 67
    Height = 19
    Alignment = taCenter
    Caption = 'LQtdArq'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 9
    Top = 5
    Width = 119
    Height = 13
    Caption = 'Pedidos na Base Web'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 590
    Top = 570
    Width = 30
    Height = 13
    Caption = 'Qtde.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 570
    Top = 599
    Width = 50
    Height = 13
    Caption = 'Vlr. Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnProcessar: TBitBtn
    Left = 20
    Top = 74
    Width = 100
    Height = 25
    Caption = 'Processar'
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
    TabOrder = 0
    OnClick = btnProcessarClick
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 105
    Width = 742
    Height = 456
    DataSource = dsDmConsE120PedChegou
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Imagem'
        Title.Caption = ' '
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMPED'
        Title.Alignment = taCenter
        Title.Caption = 'PEDIDO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODREP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'REPRES.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMCON'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' CONTROLE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCLI'
        Title.Alignment = taCenter
        Title.Caption = 'CLIENTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATEMI'
        Title.Alignment = taCenter
        Title.Caption = 'EMISS'#195'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USUGER'
        Title.Alignment = taCenter
        Title.Caption = 'USU'#193'RIO GER.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATENV'
        Title.Alignment = taCenter
        Title.Caption = 'DATA ENVIO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end>
  end
  object EdQtdPed: TCurrencyEdit
    Left = 624
    Top = 568
    Width = 111
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object EdTotal: TCurrencyEdit
    Left = 624
    Top = 593
    Width = 111
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    DisplayFormat = ',0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object mmo: TMemo
    Left = 142
    Top = 0
    Width = 598
    Height = 106
    Lines.Strings = (
      'mmo')
    TabOrder = 4
  end
  object btnAtualizar: TBitBtn
    Left = 5
    Top = 592
    Width = 100
    Height = 25
    Caption = 'Atualizar'
    DoubleBuffered = True
    Glyph.Data = {
      7E030000424D7E030000000000003600000028000000120000000F0000000100
      1800000000004803000000000000000000000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BF3F3700BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFCF6760CF67
      60CF6760CF6760000000BFBFBFBFBFBFBFBFBFBFBFBF000000000000BFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBF007F00007F00007F00007F00007F0000
      0000BFBFBFBFBFBFBFBFBF000000A0983F000000BFBFBFBFBFBFBFBFBFBFBFBF
      0000BFBFBFA0983FA0983FA0983FA0983F007F00000000BFBFBFBFBFBFBFBFBF
      3F3700A0983F00FF007F7F003F37003F3700BFBFBFBFBFBF0000BFBFBFA0983F
      00FF00A0983F007F00000000BFBFBFBFBFBFBFBFBF3F3700A0983F00FF00A098
      3FA0983F007F003F3700007F00BFBFBF0000BFBFBFA0983F00FF00A0983F0000
      00BFBFBFBFBFBFBFBFBFA0983FA0983F00FF00A0983F00FF00A0983F007F0000
      7F003F3700BFBFBF0000BFBFBFA0983F90FF2FA0983F007F003F3700BFBFBFBF
      BFBF90FF2FFFFFFFA0983F90FF2FA0983FA0983F007F003F37003F3700BFBFBF
      0000BFBFBFA0983F90FF2FA0983FA0983F007F003F3700BFBFBFBFBFBF90FF2F
      FFFFFFA0983F90FF2FA0983F007F00007F003F3700BFBFBF0000BFBFBFA0983F
      90FF2FFFFFFF90FF2F90FF2F007F003F370000000000000090FF2FFFFFFFA098
      3FA0983F007F003F37003F3700BFBFBF0000BFBFBFA0983FFFFFFFA0983F0000
      0000000000000000000000000000000000000000FF00FFFFFF00000090FF2F00
      7F003F3700BFBFBF0000BFBFBFA0983F90FF2F0000000000003F37000000003F
      37000000003F370000000000000000FF0000000000000090FF2F3F3700BFBFBF
      0000BFBFBFA0983F90FF2FA0983F3F370000000060302F00000060302F000000
      000000000000000000000000000000A0983F007F00BFBFBF0000BFBFBFBFBFBF
      A0983F90FF2FCF67603F37003F37003F37000000003F37000000000000000000
      00000000007F00007F00BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFA0983FA098
      3FA0983F007F00007F00007F00007F00007F00007F00007F00007F00007F00BF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      0000}
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btnAtualizarClick
  end
  object btnBDescartar: TBitBtn
    Left = 5
    Top = 564
    Width = 100
    Height = 25
    Caption = 'Descartar'
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
    TabOrder = 6
    OnClick = btnBDescartarClick
  end
  object dsDsLivre: TDataSource
    Left = 624
    Top = 280
  end
  object dsDmConsE120PedChegou: TDataSource
    DataSet = DmFire.ConsE120PedChegou
    Left = 472
    Top = 352
  end
end
