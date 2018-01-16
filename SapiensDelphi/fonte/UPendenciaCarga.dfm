object FPendenciaCarga: TFPendenciaCarga
  Left = 0
  Top = 0
  Caption = 'Pend'#234'ncias de Carga'
  ClientHeight = 481
  ClientWidth = 876
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 876
    Height = 115
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 49
      Top = 40
      Width = 49
      Height = 13
      Caption = 'Cliente:'
      FocusControl = DBUSU_CODCLI
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 15
      Width = 91
      Height = 13
      Caption = 'N'#186' Pend'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 66
      Top = 66
      Width = 32
      Height = 13
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 306
      Top = 15
      Width = 60
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 296
      Top = 66
      Width = 70
      Height = 13
      Caption = 'Pr'#233'-Carga:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 301
      Top = 95
      Width = 65
      Height = 13
      Caption = 'Data Ger.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 490
      Top = 95
      Width = 32
      Height = 13
      Caption = 'Usu.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LDsCodCli: TLabel
      Left = 228
      Top = 36
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EdNumPen: TEdit
      Left = 104
      Top = 6
      Width = 100
      Height = 21
      TabOrder = 0
      OnExit = EdNumPenExit
      OnKeyPress = EdNumPenKeyPress
    end
    object DBUSU_CODCLI: TDBEdit
      Left = 103
      Top = 33
      Width = 100
      Height = 21
      DataField = 'USU_CODCLI'
      DataSource = DsCadUsu_T097Pen
      TabOrder = 1
      OnExit = DBUSU_CODCLIExit
    end
    object CbTipPen: TComboBox
      Left = 104
      Top = 59
      Width = 180
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 2
      OnChange = CbTipPenChange
      Items.Strings = (
        ' '
        'RETIRA PARA CONSERTO'
        'RETIRA DE TROCA')
    end
    object CbSitPen: TComboBox
      Left = 369
      Top = 7
      Width = 103
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 3
      Text = 'ABERTO'
      OnChange = CbSitPenChange
      Items.Strings = (
        'ABERTO'
        'FINALIZADO')
    end
    object DBUSU_PRECAR: TDBEdit
      Left = 369
      Top = 60
      Width = 100
      Height = 21
      DataField = 'USU_PRECAR'
      DataSource = DsCadUsu_T097Pen
      TabOrder = 4
    end
    object DBUSU_OBSPEN: TDBMemo
      Left = 490
      Top = 8
      Width = 272
      Height = 73
      DataField = 'USU_OBSPEN'
      DataSource = DsCadUsu_T097Pen
      TabOrder = 5
    end
    object Panel5: TPanel
      Left = 768
      Top = 1
      Width = 107
      Height = 113
      Align = alRight
      BevelOuter = bvLowered
      TabOrder = 6
      object BConfirma: TBitBtn
        Left = 4
        Top = 3
        Width = 100
        Height = 25
        Caption = 'Confirmar'
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
        OnClick = BConfirmaClick
      end
      object BSair: TBitBtn
        Left = 4
        Top = 34
        Width = 100
        Height = 25
        Caption = 'Sair'
        DoubleBuffered = True
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFD1D1CE4C48402D34293040313241333341333442343442343441
          3434423434413434413434423436372F0000FFFFFFFFFFFFFFFFFFFFFFFFC0BE
          C871687B85A4904E8F6926784B257A4B297E4E2C81512E81522E82522D81532D
          81522E85553441340000FFFFFFFFFFFFFFFFFFFFFFFFB9B8E13F3CA9ABA4D0D7
          CDC87D9284537663256541296A442E734A347650357651357752337D53364034
          0000FFFFFFFFFFFFFFFFFFFFFFFFD4D4ED1818B11A18B0A9A8CDEEE8E0C1BEC0
          73877D42685321613D2D6C4730704B31734D2F7C503440340000C8C7E8C4C4DE
          C4C3DEC8C8E19D9CC41D1DBF0000E71514BA9694B7DCDDD0D5CFD3AEACAF5C6B
          63255A3C276C442F6E492E7A4F34403400002221B01E1EC91E1ECD2222CE1818
          C50404DD0101FA0000F1110FBE807EA4CED0C2DBD7DC8E8C8E1F51342469412D
          6C472C774C34403300000000B10000F60000E50000E50000E70101EA0000DB00
          00E50000F70E0DC57975A0D8D5CA888D8B204E3324613D2B65422B7149343F32
          00000F0DB71010FF0101E50101E50101E50000E50000E30000E30000F30A0AF9
          100FC58984B5949787204B32235B3A2A5C3E2A6946343E320000100FB51B1CFF
          0101FB0202FA0303FB0202FB0000FA0101FC1213FE0202EC312FA8B8B3BD8D92
          8C1D452F21563728573B276641343E3200000907B01D1DF01D1DED1D1DEE2121
          ED2525F61313FF1515FF0A09E5403EAA706F725F5D5C888D8B1E402C1B492E22
          4B33235D3D343C3200005B59C14D4EBF4E4EBF5050C03939AD1818C52324FA11
          0FDD544FAEC1C1BF9A9C9B4C4A4B545655284435143A241E3E2B205436333C31
          0000FFFFFFFFFFFFFFFFFFFFFFFFD5D5E82020C10703C86D69B6D1D3CBC3C6C4
          A8AAA9C4C4C59A9C9D0E261811301E1732231B4C31323B300000FFFFFFFFFFFF
          FFFFFFFFFFFFBFBEE62723A57B74B4E6E8DCD4D7D3BFC1C2BDBFBFD1D3D38285
          8512291C0C2A19132C1E19472D323A300000FFFFFFFFFFFFFFFFFFFFFFFFBAB7
          C7706B89E6E8E2E9ECE8CDCFCFBFC1C1B8BABACECED08387860C22150825150F
          261915422932392E0000FFFFFFFFFFFFFFFFFFFFFFFFBBBAB5848478E5E8E5E2
          E5E6CCCECEBFC2C2BDBFBFCACACB68696A02150A0925150B2015123E2531392E
          0000FFFFFFFFFFFFFFFFFFFFFFFFBBBAB77E7D78E4E6E6E7EAEBD5D7D7C9CCCC
          AEB1B0A3A3A35053520010050C27180B2014123E2531392E0000FFFFFFFFFFFF
          FFFFFFFFFFFFBCBBB97D7C78D4D6D5C9CDCEAAAEAE8A8E8E72757688888A4F52
          520011040A2716091F12103E2531392E0000FFFFFFFFFFFFFFFFFFFFFFFFD0CF
          CD4B4A4542403B4A4A4443423D3D3C373B393542403C3A39332D2E282E322A2E
          302A30352D36342E0000}
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BSairClick
      end
    end
    object DBUSU_DATGER: TDBEdit
      Left = 369
      Top = 87
      Width = 100
      Height = 21
      TabStop = False
      DataField = 'USU_DATGER'
      DataSource = DsCadUsu_T097Pen
      ReadOnly = True
      TabOrder = 7
    end
    object DBUSU_USUGER: TDBEdit
      Left = 526
      Top = 87
      Width = 31
      Height = 21
      TabStop = False
      DataField = 'USU_USUGER'
      DataSource = DsCadUsu_T097Pen
      ReadOnly = True
      TabOrder = 8
    end
    object BConsCliente: TBitBtn
      Left = 204
      Top = 33
      Width = 18
      Height = 20
      Caption = '...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 9
      OnClick = BConsClienteClick
    end
    object BConsPendencia: TBitBtn
      Left = 204
      Top = 6
      Width = 18
      Height = 21
      Caption = '...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 10
      OnClick = BConsPendenciaClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 115
    Width = 876
    Height = 337
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 874
      Height = 18
      Align = alTop
      TabOrder = 0
      object LEndCli: TLabel
        Left = 6
        Top = 2
        Width = 4
        Height = 13
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 19
      Width = 874
      Height = 317
      Align = alClient
      Ctl3D = True
      DataSource = DsCadUsu_T097Ppen
      ParentCtl3D = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnColExit = DBGrid1ColExit
      OnEditButtonClick = DBGrid1EditButtonClick
      OnEnter = DBGrid1Enter
      OnExit = DBGrid1Exit
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'USU_SEQIPD'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Seq.'
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'USU_CODPRO'
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Visible = True
        end
        item
          Alignment = taCenter
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'USU_CODDER'
          Title.Alignment = taCenter
          Title.Caption = 'Deriva'#231#227'o'
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'USU_VLRPRO'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Prod.'
          Width = 100
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
          FieldName = 'USU_SITIPD'
          PickList.Strings = (
            'ABERTO'
            'FECHADO')
          Title.Alignment = taCenter
          Title.Caption = 'Situa'#231#227'o'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USU_OBSPRO'
          Title.Alignment = taCenter
          Title.Caption = 'Obs.Produto'
          Width = 300
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'USU_DATGER'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Dat.Ger.'
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'USU_USUGER'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Usu.Ger.'
          Width = 80
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 452
    Width = 876
    Height = 29
    Align = alBottom
    TabOrder = 2
    object DBT_DESPRO: TDBText
      Left = 68
      Top = 8
      Width = 250
      Height = 17
      DataField = 'DESPRO'
      DataSource = DsConsDesPro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DsCadUsu_T097Pen: TDataSource
    DataSet = DmOra.CadUsu_T097Pen
    OnStateChange = DsCadUsu_T097PenStateChange
    Left = 800
    Top = 64
  end
  object DsCadUsu_T097Ppen: TDataSource
    DataSet = DmOra.CadUsu_T097Ppen
    OnStateChange = DsCadUsu_T097PpenStateChange
    Left = 688
    Top = 256
  end
  object DsConsDesPro: TDataSource
    DataSet = DmOra.ConsDesPro
    Left = 600
    Top = 216
  end
end
