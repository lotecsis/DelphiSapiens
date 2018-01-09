object FAtualizaSaldoTecidos: TFAtualizaSaldoTecidos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Atualizar saldos dos tecidos com fila'
  ClientHeight = 574
  ClientWidth = 515
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
  object dbg1: TDBGrid
    Left = -1
    Top = 0
    Width = 517
    Height = 514
    DataSource = dsClientConsSaldosFila
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
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
        FieldName = 'CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'TECIDO'
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14286809
        Expanded = False
        FieldName = 'QTDEST'
        Title.Alignment = taCenter
        Title.Caption = 'ESTOQUE'
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 15722204
        Expanded = False
        FieldName = 'USU_SALRES'
        Title.Alignment = taCenter
        Title.Caption = 'RESERVADO'
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12320767
        Expanded = False
        FieldName = 'USU_SALFIL'
        Title.Alignment = taCenter
        Title.Caption = 'FILA'
        Width = 120
        Visible = True
      end>
  end
  object btnProcessar: TBitBtn
    Left = 185
    Top = 522
    Width = 137
    Height = 46
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
    TabOrder = 1
    OnClick = btnProcessarClick
  end
  object dbedtTOT_FILA: TDBEdit
    Left = 392
    Top = 518
    Width = 120
    Height = 22
    Color = 12320767
    Ctl3D = False
    DataField = 'TOT_FILA'
    DataSource = dsClientConsSaldosFila
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object ConsSaldosFila: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT E210EST.CODPRO,E210EST.CODDEP,E210EST.QTDEST,USU_TSALTEC.' +
        'USU_SALRES,USU_TSALTEC.USU_SALFIL'
      '                                          FROM E210EST'
      'LEFT JOIN USU_TSALTEC ON USU_TSALTEC.USU_CODPRO = E210EST.CODPRO'
      '                                          WHERE'
      
        '                                                E210EST.CODEMP =' +
        ' 1 AND'
      
        '                                                E210EST.CODDEP =' +
        ' '#39'1001'#39' AND'
      
        '                                                USU_TSALTEC.USU_' +
        'SALFIL > 0'
      
        '                                                ORDER BY E210EST' +
        '.CODPRO')
    Left = 264
    Top = 152
    object ConsSaldosFilaCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsSaldosFilaCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsSaldosFilaQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object ConsSaldosFilaUSU_SALRES: TBCDField
      FieldName = 'USU_SALRES'
      Precision = 11
      Size = 2
    end
    object ConsSaldosFilaUSU_SALFIL: TBCDField
      FieldName = 'USU_SALFIL'
      Precision = 11
      Size = 2
    end
  end
  object ClientConsSaldosFila: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderSaldosFila'
    Left = 264
    Top = 264
    object ClientConsSaldosFilaCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ClientConsSaldosFilaCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ClientConsSaldosFilaQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ClientConsSaldosFilaUSU_SALRES: TBCDField
      FieldName = 'USU_SALRES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ClientConsSaldosFilaUSU_SALFIL: TBCDField
      FieldName = 'USU_SALFIL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 11
      Size = 2
    end
    object ClientConsSaldosFilaTOT_FILA: TAggregateField
      Alignment = taCenter
      FieldName = 'TOT_FILA'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(USU_SALFIL)'
    end
  end
  object dsClientConsSaldosFila: TDataSource
    DataSet = ClientConsSaldosFila
    Left = 264
    Top = 88
  end
  object ProviderSaldosFila: TDataSetProvider
    DataSet = ConsSaldosFila
    Left = 264
    Top = 208
  end
end
