object FPendenciasPreCarga: TFPendenciasPreCarga
  Left = 0
  Top = 0
  Caption = 'Pend'#234'ncias'
  ClientHeight = 456
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 12
    Width = 140
    Height = 13
    Caption = 'Pend'#234'ncias em Carga'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 308
    Width = 62
    Height = 13
    Caption = 'Adicionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 31
    Width = 867
    Height = 159
    DataSource = DsConsUsu_T097Pen
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_NUMPEN'
        Title.Alignment = taCenter
        Title.Caption = 'Pend'#234'ncia'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_TIPPEN'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 200
        Visible = True
      end
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
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDCLI'
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
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_OBSPEN'
        Title.Alignment = taCenter
        Title.Caption = 'Obs'
        Width = 400
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_DATGER'
        Title.Alignment = taCenter
        Title.Caption = 'Dat.Gera'#231#227'o'
        Width = 70
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 196
    Width = 867
    Height = 101
    Color = clAqua
    DataSource = DsConsUsu_T097Ppen
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_SEQIPD'
        Title.Alignment = taCenter
        Title.Caption = 'Seq.'
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'Der.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_QTDPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_VLRPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Prod.'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_COR01'
        Title.Alignment = taCenter
        Title.Caption = 'Cor 01'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_COR02'
        Title.Alignment = taCenter
        Title.Caption = 'Cor 02'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_SITIPD'
        Title.Alignment = taCenter
        Title.Caption = 'Sit.'
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_DATGER'
        Title.Alignment = taCenter
        Title.Caption = 'Dat.Ger.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_USUGER'
        Title.Alignment = taCenter
        Title.Caption = 'Usu.Ger.'
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 327
    Width = 593
    Height = 120
    DataSource = DsAddPendencias
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    OnColExit = DBGrid3ColExit
    OnEditButtonClick = DBGrid3EditButtonClick
    OnEnter = DBGrid3Enter
    OnExit = DBGrid3Exit
    OnKeyDown = DBGrid3KeyDown
    Columns = <
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'NumPen'
        Title.Alignment = taCenter
        Title.Caption = 'Pend'#234'ncia'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCli'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomCli'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 400
        Visible = True
      end>
  end
  object BAddPen: TBitBtn
    Left = 604
    Top = 327
    Width = 35
    Height = 25
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
    TabOrder = 3
    OnClick = BAddPenClick
  end
  object BExcluiPen: TBitBtn
    Left = 877
    Top = 31
    Width = 32
    Height = 25
    DoubleBuffered = True
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      777770000000777777777777777770000000777777777777770F700000007777
      0F777777777770000000777000F7777770F770000000777000F777770F777000
      00007777000F77700F777000000077777000F700F7777000000077777700000F
      7777700000007777777000F777777000000077777700000F7777700000007777
      7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
      00007700F7777777700F70000000777777777777777770000000777777777777
      777770000000}
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BExcluiPenClick
  end
  object DsAddPendencias: TDataSource
    DataSet = AddPendencias
    OnStateChange = DsAddPendenciasStateChange
    Left = 808
    Top = 376
  end
  object AddPendencias: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    BeforePost = AddPendenciasBeforePost
    Left = 816
    Top = 320
    Data = {
      530000009619E0BD0100000018000000030000000000030000005300064E756D
      50656E040001000000000006436F64436C690400010000000000064E6F6D436C
      6901004900000001000557494454480200020028000000}
    object AddPendenciasNumPen: TIntegerField
      FieldName = 'NumPen'
    end
    object AddPendenciasCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object AddPendenciasNomCli: TStringField
      FieldName = 'NomCli'
      Size = 40
    end
  end
  object ConsUsu_T097Pen: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsUsu_T097PenAfterScroll
    Parameters = <
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select usu_t097pen.*,e085cli.nomcli,e085cli.cidcli,e085cli.siguf' +
        's'
      'from usu_t097pen'
      'inner join e085cli on e085cli.codcli = usu_t097pen.usu_codcli'
      'where usu_precar = :precar'
      'order by usu_t097pen.usu_numpen')
    Left = 680
    Top = 64
    object ConsUsu_T097PenUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_T097PenUSU_NUMPEN: TIntegerField
      FieldName = 'USU_NUMPEN'
    end
    object ConsUsu_T097PenUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object ConsUsu_T097PenUSU_TIPPEN: TStringField
      FieldName = 'USU_TIPPEN'
    end
    object ConsUsu_T097PenUSU_SITPEN: TStringField
      FieldName = 'USU_SITPEN'
      Size = 2
    end
    object ConsUsu_T097PenUSU_DESPEN: TStringField
      FieldName = 'USU_DESPEN'
      Size = 300
    end
    object ConsUsu_T097PenUSU_OBSPEN: TStringField
      FieldName = 'USU_OBSPEN'
      Size = 200
    end
    object ConsUsu_T097PenUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsUsu_T097PenUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object ConsUsu_T097PenUSU_USUGER: TIntegerField
      FieldName = 'USU_USUGER'
    end
    object ConsUsu_T097PenNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsUsu_T097PenCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsUsu_T097PenSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
  end
  object DsConsUsu_T097Pen: TDataSource
    AutoEdit = False
    DataSet = ConsUsu_T097Pen
    Left = 576
    Top = 72
  end
  object ConsUsu_T097Ppen: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numpen'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_t097ppen.*,e075pro.despro'
      'from usu_t097ppen'
      
        'inner join e075pro on e075pro.codemp = usu_t097ppen.usu_codemp a' +
        'nd'
      '                      e075pro.codpro = usu_t097ppen.usu_codpro'
      '                      where'
      '                      usu_t097ppen.usu_codemp = 1 and'
      '                      usu_t097ppen.usu_numpen = :numpen'
      'order by usu_t097ppen.usu_seqipd')
    Left = 680
    Top = 128
    object ConsUsu_T097PpenUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_T097PpenUSU_NUMPEN: TIntegerField
      FieldName = 'USU_NUMPEN'
    end
    object ConsUsu_T097PpenUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsUsu_T097PpenUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_T097PpenUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_T097PpenUSU_COR01: TStringField
      FieldName = 'USU_COR01'
      Size = 14
    end
    object ConsUsu_T097PpenUSU_COR02: TStringField
      FieldName = 'USU_COR02'
      Size = 14
    end
    object ConsUsu_T097PpenUSU_OBSPRO: TStringField
      FieldName = 'USU_OBSPRO'
      Size = 200
    end
    object ConsUsu_T097PpenUSU_SITIPD: TStringField
      FieldName = 'USU_SITIPD'
      Size = 2
    end
    object ConsUsu_T097PpenUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsUsu_T097PpenUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object ConsUsu_T097PpenUSU_USUGER: TIntegerField
      FieldName = 'USU_USUGER'
    end
    object ConsUsu_T097PpenUSU_VLRPRO: TBCDField
      FieldName = 'USU_VLRPRO'
      Precision = 11
      Size = 2
    end
    object ConsUsu_T097PpenUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ConsUsu_T097PpenDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object DsConsUsu_T097Ppen: TDataSource
    AutoEdit = False
    DataSet = ConsUsu_T097Ppen
    Left = 568
    Top = 128
  end
end
