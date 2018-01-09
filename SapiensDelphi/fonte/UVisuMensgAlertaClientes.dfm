object FVisuMensgAlertaClientes: TFVisuMensgAlertaClientes
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Mensagens de Alerta'
  ClientHeight = 537
  ClientWidth = 701
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 684
    Height = 233
    DataSource = DsConsUsu_T085Mac
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
        FieldName = 'USU_CODCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APECLI'
        Title.Alignment = taCenter
        Title.Caption = 'Apelido'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_DATALE'
        Title.Alignment = taCenter
        Title.Caption = 'Data Alerta'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 247
    Width = 684
    Height = 250
    BevelOuter = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 42
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Cliente..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 161
      Top = 16
      Width = 283
      Height = 17
      DataField = 'NOMCLI'
      DataSource = DsConsUsu_T085Mac
    end
    object DBText2: TDBText
      Left = 464
      Top = 16
      Width = 305
      Height = 17
      DataField = 'APECLI'
      DataSource = DsConsUsu_T085Mac
    end
    object DBText3: TDBText
      Left = 96
      Top = 39
      Width = 283
      Height = 17
      DataField = 'CIDCLI'
      DataSource = DsConsUsu_T085Mac
    end
    object DBText4: TDBText
      Left = 394
      Top = 39
      Width = 25
      Height = 17
      DataField = 'SIGUFS'
      DataSource = DsConsUsu_T085Mac
    end
    object DBText5: TDBText
      Left = 498
      Top = 39
      Width = 95
      Height = 17
      DataField = 'FONCLI'
      DataSource = DsConsUsu_T085Mac
    end
    object Label2: TLabel
      Left = 48
      Top = 91
      Width = 42
      Height = 13
      Caption = 'Texto..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 226
      Width = 74
      Height = 13
      Caption = 'Cadastrado..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 96
      Top = 226
      Width = 65
      Height = 17
      DataField = 'USU_DATCAD'
      DataSource = DsConsUsu_T085Mac
    end
    object Label4: TLabel
      Left = 16
      Top = 63
      Width = 74
      Height = 13
      Caption = 'Data Alerta..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 96
      Top = 63
      Width = 65
      Height = 17
      DataField = 'USU_DATALE'
      DataSource = DsConsUsu_T085Mac
    end
    object DBText8: TDBText
      Left = 166
      Top = 226
      Width = 219
      Height = 17
      DataField = 'USU_NOMUSU'
      DataSource = DsConsUsu_T085Mac
    end
    object DBText9: TDBText
      Left = 96
      Top = 16
      Width = 55
      Height = 17
      DataField = 'USU_CODCLI'
      DataSource = DsConsUsu_T085Mac
    end
    object DBMemo1: TDBMemo
      Left = 96
      Top = 91
      Width = 577
      Height = 121
      Color = clInfoBk
      DataField = 'USU_MENSAG'
      DataSource = DsConsUsu_T085Mac
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object BResolvido: TBitBtn
    Left = 572
    Top = 505
    Width = 121
    Height = 30
    Caption = 'Resolvido'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BResolvidoClick
  end
  object BProrrogar: TBitBtn
    Left = 443
    Top = 505
    Width = 123
    Height = 30
    Caption = 'Prorrogar'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300130000031
      00333773F77777FF7733331000909000133333377737F777FF33330098F0F890
      0333337733F733F77F33370980FFF08907333373373F373373F33099FFFFFFF9
      903337F3F373F33FF7F33090F000FF00903337F73337F37737F3B099FFF0FFF9
      90B3373F33F7F3F33733070980F0F0890703337FF737F7337F33BB0098F0F890
      0BB33F77FF3733377FFF000009999900000377777FFFFF77777F088700000008
      77037F3377777773337F088887707888870373F3337773F33373B078800B0088
      70B3373FF733373FF73303700BBBBB007303337773F3F3777F33330BB0B0B0BB
      033333733737F73F73F330BB03B0B30BB0333733733733733733}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BProrrogarClick
  end
  object DsConsUsu_T085Mac: TDataSource
    DataSet = Dm3.ConsUsu_T085Mac
    Left = 240
    Top = 120
  end
end
