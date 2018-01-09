object FAddProdPred: TFAddProdPred
  Left = 256
  Top = 169
  Caption = 'Adiciona Produtos'
  ClientHeight = 437
  ClientWidth = 995
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 36
    Top = 22
    Width = 49
    Height = 13
    Caption = 'Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 44
    Width = 69
    Height = 13
    Caption = 'Deriva'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 21
    Top = 151
    Width = 64
    Height = 13
    Caption = 'Tab.Pre'#231'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 10
    Top = 181
    Width = 72
    Height = 13
    Caption = '% Desconto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BPesqProd: TSpeedButton
    Left = 193
    Top = 15
    Width = 23
    Height = 20
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BPesqProdClick
  end
  object BPesqTabPreco: TSpeedButton
    Left = 192
    Top = 146
    Width = 23
    Height = 20
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BDesconto: TSpeedButton
    Left = 191
    Top = 174
    Width = 23
    Height = 20
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BDescontoClick
  end
  object LDsCodPro: TLabel
    Left = 220
    Top = 22
    Width = 3
    Height = 13
  end
  object BGeraItens: TBitBtn
    Left = 92
    Top = 202
    Width = 122
    Height = 25
    Caption = 'Gerar Itens'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
      FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
      00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
      F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
      00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
      F033777777777337F73309999990FFF0033377777777FFF77333099999000000
      3333777777777777333333399033333333333337773333333333333903333333
      3333333773333333333333303333333333333337333333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BGeraItensClick
  end
  object EdCodPro: TEdit
    Left = 92
    Top = 14
    Width = 100
    Height = 21
    TabOrder = 0
    OnExit = EdCodProExit
    OnKeyDown = EdCodProKeyDown
  end
  object EdTabPre: TEdit
    Left = 92
    Top = 146
    Width = 100
    Height = 21
    AutoSelect = False
    TabOrder = 2
    Text = '1000'
    OnExit = EdTabPreExit
  end
  object edDesPro: TCurrencyEdit
    Left = 92
    Top = 174
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taLeftJustify
    AutoSize = False
    DisplayFormat = ' ,0.00;- ,0.00'
    ReadOnly = True
    TabOrder = 3
    OnExit = edDesProExit
  end
  object BProcessar: TBitBtn
    Left = 773
    Top = 407
    Width = 100
    Height = 25
    Caption = 'Processar'
    DoubleBuffered = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
      A7DDFF40B5FF14A4FF14A4FF14A4FFA9A5A0A9A5A0A9A5A0A9A5A0A9A5A0A9A5
      A0A9A5A0A9A5A0A9A5A0FFFFFFFFFFFF23AAFF15A1FF1FABFF49C7FF5CD1FFA9
      A5A0FEFCFBFCFAF6E7CCBCB06641F2E2D7F8EFE6F8EEE2A9A5A0FFFFFFFFFFFF
      14A4FF35B8FF49C7FF87E1FFA5EBFFA9A5A0FCFAF6FCF7F2B66B41B55E29C081
      5FF8EEE2F7EBDEA9A5A0FFFFFFFFFFFF14A4FF58CAFF46C6FF82DEFFA1EAFFA9
      A5A0FCF7F2E2C5B4C6763BC57335AC501CEFDCCCF6E9D9A9A5A0FFFFFFFFFFFF
      14A4FF73D4FF43C6FF7EDDFF9CE7FFA9A5A0FBF4EED5A78BC47E50BF7E5AC26A
      2ABF7F5AF4E6D5A9A5A0FFFFFFFFFFFF14A4FF8FDDFF3FC5FF78DCFF96E3FFA9
      A5A0FAF2EAF8EFE6F8EEE2F7EBDEC17745A34516EBD5C0A9A5A0FFFFFFFFFFFF
      14A4FFACE6FF43C7FF73DAFF90E3FFA9A5A0F8EFE6F8EEE2F7EBDEF6E9D9CB97
      77A34719B87552A9A5A0FFFFFFFFFFFF1DA8FF7FD5FFB1E7FFC5F0FFC9F2FFA9
      A5A0F8EEE2F7EBDEF6E9D9F4E6D5F3E3D1AC5F3BB26B46A9A5A0FFFFFFFFFFFF
      1EA8FF12A0FF1BABFF31BCFF3EC6FFA9A5A0A9A5A0A9A5A0A9A5A0A9A5A0A9A5
      A0A9A5A0A9A5A0A9A5A0FFFFFFFFFFFF14A4FF2EB4FF47C6FF86E1FFA6EBFF90
      E9FF75E6FF79EAFF76E7FF56D9FF1EB2FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
      14A4FF55C9FF45C6FF82DEFFA3EAFF89E6FF69E0FF6BE2FF68E1FF4DD4FF1DB0
      FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF6ED1FF42C5FF7EDDFF9DE7FF81
      E2FF5CD9FF5BDAFF59D9FF43CEFF1AACFF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
      14A4FF8ADCFF3FC5FF78DAFF97E5FF77DDFF4ED3FF4DD3FF4CD3FF39C6FF16A7
      FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FFA7E5FF3AC5FF73DAFF91E2FF6E
      D9FF41CBFF40CBFF3ECBFF2FC0FF23AFFF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
      23AAFF97DEFFB6EBFFB0EBFFBCEFFFB0EBFF9FE6FF9EE6FF9DE6FFABE9FF89DC
      FF26ACFFFFFFFFFFFFFFFFFFFFFFFFFFA7DDFF40B5FF14A4FF14A4FF14A4FF14
      A4FF14A4FF14A4FF14A4FF14A4FF31AFFFA7DDFFFFFFFFFFFFFF}
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = BProcessarClick
  end
  object BCancelar: TBitBtn
    Left = 881
    Top = 406
    Width = 100
    Height = 25
    Caption = 'Cancelar'
    DoubleBuffered = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFAAAAD5
      4444BC4E4EB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C1C
      8604048D9898C1FFFFFFADADD95151C52222C83030C85959BCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF2727910505A10101A204048D9898C15A5ACA2929D2
      1717D01616CE3838D16161C3FFFFFFFFFFFFFFFFFFFFFFFF36369D0E0EA70101
      A60101A60101A204048D6565C84444DD1C1CDB1B1BD91A1AD53F3FD86767C8FF
      FFFFFFFFFF4747AB1A1AB30202A80101A60101A602029F1B1B85FFFFFF7070D2
      4C4CE62121E31F1FDF1C1CDA4242DC6666C85959BC2A2AC40A0AB60505AE0101
      A70505A01C1C88FFFFFFFFFFFFFFFFFF7C7CDB5656ED2424E82121E31D1DDD3F
      3FDA3838D31111C50D0DBC0808B40F0FA925258CFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF8383DF5959EF2626EA2121E41D1DDC1919D41414CB1010C21C1CB73333
      9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8383DD5757EC2626EA21
      21E31C1CDA1717D02828C54040A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9191DB7676EE3636ED2424E81E1EDE1919D52929C74040A8FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999DB8D8DED6E6EF26363F14F
      4FEE3636E52121D91616CD1F1FBD33339DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      9E9ED99E9EEB8787F57D7DF47272F37777E66D6DE15555E34646D93434CE2B2B
      B837379AFFFFFFFFFFFFFFFFFFA2A2D7ACACEA9C9CF79494F68A8AF58B8BE780
      80CE7474C76C6CDA5B5BDE5252D54848CC4141B841419AFFFFFFA2A2D3B4B4E7
      AEAEF8A7A7F89F9FF79B9BE68A8ACFFFFFFFFFFFFF6E6EBD6B6BD25D5DD75151
      CE4747C54141B443439CA9A9C7B8B8EFB5B5F9AFAFF8A8A8E59090CFFFFFFFFF
      FFFFFFFFFFFFFFFF6565B66565CB5555CE4B4BC54545BB4444A4C5C5EBAAAAC6
      BABAEEB1B1E49696CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6262B35C5C
      C54F4FC14E4EAAA2A2CBFFFFFFC4C4EAACACC69E9ED1FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF5C5CAF5959AFA3A3CDFFFFFF}
    ParentDoubleBuffered = False
    TabOrder = 6
    TabStop = False
    OnClick = BCancelarClick
  end
  object ScrollBox1: TScrollBox
    Left = -1
    Top = 234
    Width = 996
    Height = 168
    TabOrder = 7
    object DBE120Ipd: TDBCtrlGrid
      Left = 0
      Top = 24
      Width = 992
      Height = 120
      DataSource = DsE120Ipd
      PanelHeight = 30
      PanelWidth = 975
      TabOrder = 0
      RowCount = 4
      object DBCODPRO: TDBEdit
        Left = 7
        Top = 5
        Width = 100
        Height = 19
        BevelOuter = bvRaised
        Color = cl3DLight
        Ctl3D = False
        DataField = 'CODPRO'
        DataSource = DsE120Ipd
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 0
      end
      object DBCODDER: TDBEdit
        Left = 115
        Top = 5
        Width = 100
        Height = 19
        Color = cl3DLight
        Ctl3D = False
        DataField = 'CODDER'
        DataSource = DsE120Ipd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 1
      end
      object DBCPLIPD: TDBEdit
        Left = 223
        Top = 5
        Width = 100
        Height = 19
        Color = cl3DLight
        Ctl3D = False
        DataField = 'CPLIPD'
        DataSource = DsE120Ipd
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 2
      end
      object DBTNSPRO: TDBEdit
        Left = 440
        Top = 5
        Width = 100
        Height = 19
        Hint = 'Transa'#231#227'o'
        Ctl3D = False
        DataField = 'TNSPRO'
        DataSource = DsE120Ipd
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 3
      end
      object DBQTDPED: TDBEdit
        Left = 548
        Top = 5
        Width = 100
        Height = 19
        Hint = 'Quantidade Pedida'
        Ctl3D = False
        DataField = 'QTDPED'
        DataSource = DsE120Ipd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 4
      end
      object DBCODTPR: TDBEdit
        Left = 656
        Top = 5
        Width = 100
        Height = 19
        Color = cl3DLight
        Ctl3D = False
        DataField = 'CODTPR'
        DataSource = DsE120Ipd
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 5
      end
      object DBPREUNI: TDBEdit
        Left = 764
        Top = 5
        Width = 100
        Height = 19
        Color = cl3DLight
        Ctl3D = False
        DataField = 'PREUNI'
        DataSource = DsE120Ipd
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 6
      end
      object DBUSU_TOTDSC: TDBEdit
        Left = 873
        Top = 5
        Width = 100
        Height = 19
        Color = cl3DLight
        Ctl3D = False
        DataField = 'USU_TOTDSC'
        DataSource = DsE120Ipd
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 7
      end
      object DBCODDEP: TDBEdit
        Left = 331
        Top = 5
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CODDEP'
        DataSource = DsE120Ipd
        ParentCtl3D = False
        TabOrder = 8
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 992
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      Color = 13619151
      TabOrder = 1
      object Label6: TLabel
        Left = 29
        Top = 5
        Width = 57
        Height = 13
        Caption = 'Cod.Prod.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 140
        Top = 5
        Width = 51
        Height = 13
        Caption = 'Cod.Der.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 245
        Top = 5
        Width = 57
        Height = 13
        Caption = 'Des.Prod.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 354
        Top = 5
        Width = 54
        Height = 13
        Caption = 'Cod.Dep.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 469
        Top = 5
        Width = 37
        Height = 13
        Caption = 'Trans.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 570
        Top = 5
        Width = 51
        Height = 13
        Caption = 'Qtd.Ped.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 671
        Top = 5
        Width = 60
        Height = 13
        Caption = 'Tab.Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 780
        Top = 5
        Width = 65
        Height = 13
        Caption = 'Pre'#231'o Unit.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 890
        Top = 5
        Width = 66
        Height = 13
        Caption = 'Tot.Desc.%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Progresso: TProgressBar
    Left = 617
    Top = 410
    Width = 150
    Height = 17
    TabOrder = 8
  end
  object dbgDerivacoes: TDBGrid
    Left = 92
    Top = 41
    Width = 155
    Height = 97
    DataSource = DsDerivacoes
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEditButtonClick = dbgDerivacoesEditButtonClick
    OnExit = dbgDerivacoesExit
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Color = 13690576
        Expanded = False
        FieldName = 'CODDER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = ' '
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 13690576
        Expanded = False
        FieldName = 'QTDEMB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = ' '
        Width = 60
        Visible = True
      end>
  end
  object Derivacoes: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from e075der where codpro = 99999999')
    Left = 824
    Top = 31
    object DerivacoesCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object DerivacoesCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object DerivacoesCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object DerivacoesDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
    object DerivacoesDESCPL: TStringField
      FieldName = 'DESCPL'
      Size = 90
    end
    object DerivacoesCODBAR: TBCDField
      FieldName = 'CODBAR'
      Precision = 13
      Size = 0
    end
    object DerivacoesCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object DerivacoesCODAGT: TStringField
      FieldName = 'CODAGT'
      Size = 5
    end
    object DerivacoesSEQCMD: TIntegerField
      FieldName = 'SEQCMD'
    end
    object DerivacoesDATVAL: TDateTimeField
      FieldName = 'DATVAL'
    end
    object DerivacoesDIAVLT: TIntegerField
      FieldName = 'DIAVLT'
    end
    object DerivacoesTIPCN2: TStringField
      FieldName = 'TIPCN2'
      Size = 1
    end
    object DerivacoesVLRCN2: TBCDField
      FieldName = 'VLRCN2'
      Precision = 13
      Size = 6
    end
    object DerivacoesTIPCN3: TStringField
      FieldName = 'TIPCN3'
      Size = 1
    end
    object DerivacoesVLRCN3: TBCDField
      FieldName = 'VLRCN3'
      Precision = 13
      Size = 6
    end
    object DerivacoesPRECUS: TBCDField
      FieldName = 'PRECUS'
      Precision = 15
      Size = 6
    end
    object DerivacoesDATCUS: TDateTimeField
      FieldName = 'DATCUS'
    end
    object DerivacoesPREMED: TBCDField
      FieldName = 'PREMED'
      Precision = 15
      Size = 6
    end
    object DerivacoesDATMED: TDateTimeField
      FieldName = 'DATMED'
    end
    object DerivacoesPREUEN: TBCDField
      FieldName = 'PREUEN'
      Precision = 15
      Size = 6
    end
    object DerivacoesDATUEN: TDateTimeField
      FieldName = 'DATUEN'
    end
    object DerivacoesPREREP: TBCDField
      FieldName = 'PREREP'
      Precision = 15
      Size = 6
    end
    object DerivacoesDATREP: TDateTimeField
      FieldName = 'DATREP'
    end
    object DerivacoesDIAREP: TIntegerField
      FieldName = 'DIAREP'
    end
    object DerivacoesPESBRU: TBCDField
      FieldName = 'PESBRU'
      Precision = 11
      Size = 5
    end
    object DerivacoesPESLIQ: TBCDField
      FieldName = 'PESLIQ'
      Precision = 11
      Size = 5
    end
    object DerivacoesTOLPES: TBCDField
      FieldName = 'TOLPES'
      Precision = 5
      Size = 3
    end
    object DerivacoesVOLDER: TBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object DerivacoesPERPRD: TBCDField
      FieldName = 'PERPRD'
      Precision = 4
      Size = 2
    end
    object DerivacoesQTDIQL: TBCDField
      FieldName = 'QTDIQL'
      Precision = 14
      Size = 5
    end
    object DerivacoesQTDCIC: TBCDField
      FieldName = 'QTDCIC'
      Precision = 14
      Size = 5
    end
    object DerivacoesQTDPRD: TBCDField
      FieldName = 'QTDPRD'
      Precision = 14
      Size = 5
    end
    object DerivacoesPREUIS: TBCDField
      FieldName = 'PREUIS'
      Precision = 17
      Size = 8
    end
    object DerivacoesPERICS: TBCDField
      FieldName = 'PERICS'
      Precision = 5
      Size = 2
    end
    object DerivacoesCODEMB: TIntegerField
      FieldName = 'CODEMB'
    end
    object DerivacoesCODROT: TStringField
      FieldName = 'CODROT'
      Size = 14
    end
    object DerivacoesCODROY: TIntegerField
      FieldName = 'CODROY'
    end
    object DerivacoesBXAORP: TStringField
      FieldName = 'BXAORP'
      Size = 1
    end
    object DerivacoesSERCCL: TStringField
      FieldName = 'SERCCL'
      Size = 3
    end
    object DerivacoesNUMCCL: TStringField
      FieldName = 'NUMCCL'
      Size = 12
    end
    object DerivacoesCURABC: TStringField
      FieldName = 'CURABC'
      Size = 1
    end
    object DerivacoesCURAB2: TStringField
      FieldName = 'CURAB2'
      Size = 1
    end
    object DerivacoesCURAB3: TStringField
      FieldName = 'CURAB3'
      Size = 1
    end
    object DerivacoesCURAB4: TStringField
      FieldName = 'CURAB4'
      Size = 1
    end
    object DerivacoesCODREG: TIntegerField
      FieldName = 'CODREG'
    end
    object DerivacoesSITDER: TStringField
      FieldName = 'SITDER'
      Size = 1
    end
    object DerivacoesCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object DerivacoesCTRLOT: TStringField
      FieldName = 'CTRLOT'
      Size = 1
    end
    object DerivacoesCTRSEP: TStringField
      FieldName = 'CTRSEP'
      Size = 1
    end
    object DerivacoesCTRVLD: TStringField
      FieldName = 'CTRVLD'
      Size = 1
    end
    object DerivacoesDEPPAD: TStringField
      FieldName = 'DEPPAD'
      Size = 10
    end
    object DerivacoesDEPPAA: TStringField
      FieldName = 'DEPPAA'
      Size = 10
    end
    object DerivacoesINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object DerivacoesINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object DerivacoesINDKAN: TStringField
      FieldName = 'INDKAN'
      Size = 1
    end
    object DerivacoesCODREF: TStringField
      FieldName = 'CODREF'
    end
    object DerivacoesCODPIN: TStringField
      FieldName = 'CODPIN'
    end
    object DerivacoesNOTFOR: TBCDField
      FieldName = 'NOTFOR'
      Precision = 5
      Size = 2
    end
    object DerivacoesORICUS: TStringField
      FieldName = 'ORICUS'
      Size = 1
    end
    object DerivacoesINFCUS: TStringField
      FieldName = 'INFCUS'
      Size = 1
    end
    object DerivacoesHORCUS: TIntegerField
      FieldName = 'HORCUS'
    end
    object DerivacoesUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object DerivacoesHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object DerivacoesDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object DerivacoesUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object DerivacoesHORALT: TIntegerField
      FieldName = 'HORALT'
    end
    object DerivacoesDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object DerivacoesCODAGE: TStringField
      FieldName = 'CODAGE'
      Size = 10
    end
    object DerivacoesCODBA2: TStringField
      FieldName = 'CODBA2'
      Size = 30
    end
    object DerivacoesINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object DerivacoesDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object DerivacoesHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object DerivacoesEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object DerivacoesSERMVP: TStringField
      FieldName = 'SERMVP'
      Size = 14
    end
    object DerivacoesAPRDFT: TStringField
      FieldName = 'APRDFT'
      Size = 1
    end
    object DerivacoesCODAEM: TStringField
      FieldName = 'CODAEM'
      Size = 10
    end
    object DerivacoesCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object DerivacoesINDGEN: TStringField
      FieldName = 'INDGEN'
      Size = 1
    end
    object DerivacoesQTDMLT: TBCDField
      FieldName = 'QTDMLT'
      Precision = 12
      Size = 5
    end
    object DerivacoesQTDMIN: TBCDField
      FieldName = 'QTDMIN'
      Precision = 12
      Size = 5
    end
    object DerivacoesQTDMAX: TBCDField
      FieldName = 'QTDMAX'
      Precision = 12
      Size = 5
    end
    object DerivacoesCODEND: TStringField
      FieldName = 'CODEND'
      Size = 10
    end
    object DerivacoesROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object DerivacoesNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object DerivacoesINDPCQ: TStringField
      FieldName = 'INDPCQ'
      Size = 1
    end
    object DerivacoesVLRCID: TBCDField
      FieldName = 'VLRCID'
      Precision = 15
      Size = 2
    end
    object DerivacoesUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object DerivacoesUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object DerivacoesUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object DerivacoesUSU_CMP2BB: TBCDField
      FieldName = 'USU_CMP2BB'
      Precision = 8
      Size = 2
    end
    object DerivacoesUSU_CMP2EN: TBCDField
      FieldName = 'USU_CMP2EN'
      Precision = 8
      Size = 2
    end
    object DerivacoesUSU_MEDESP: TStringField
      FieldName = 'USU_MEDESP'
      Size = 1
    end
    object DerivacoesUSU_FATOR: TBCDField
      FieldName = 'USU_FATOR'
      Precision = 9
      Size = 3
    end
    object DerivacoesQTDEMB: TFMTBCDField
      FieldName = 'QTDEMB'
      Precision = 12
      Size = 5
    end
  end
  object ProviderDerivacoes: TDataSetProvider
    DataSet = Derivacoes
    Left = 824
    Top = 63
  end
  object ClientDerivacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderDerivacoes'
    AfterInsert = ClientDerivacoesAfterInsert
    Left = 824
    Top = 95
    object ClientDerivacoesCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ClientDerivacoesCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ClientDerivacoesCODDER: TStringField
      Alignment = taCenter
      FieldName = 'CODDER'
      Size = 7
    end
    object ClientDerivacoesDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
    object ClientDerivacoesDESCPL: TStringField
      FieldName = 'DESCPL'
      Size = 90
    end
    object ClientDerivacoesCODBAR: TBCDField
      FieldName = 'CODBAR'
      Precision = 13
      Size = 0
    end
    object ClientDerivacoesCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ClientDerivacoesCODAGT: TStringField
      FieldName = 'CODAGT'
      Size = 5
    end
    object ClientDerivacoesSEQCMD: TIntegerField
      FieldName = 'SEQCMD'
    end
    object ClientDerivacoesDATVAL: TDateTimeField
      FieldName = 'DATVAL'
    end
    object ClientDerivacoesDIAVLT: TIntegerField
      FieldName = 'DIAVLT'
    end
    object ClientDerivacoesTIPCN2: TStringField
      FieldName = 'TIPCN2'
      Size = 1
    end
    object ClientDerivacoesVLRCN2: TBCDField
      FieldName = 'VLRCN2'
      Precision = 13
      Size = 6
    end
    object ClientDerivacoesTIPCN3: TStringField
      FieldName = 'TIPCN3'
      Size = 1
    end
    object ClientDerivacoesVLRCN3: TBCDField
      FieldName = 'VLRCN3'
      Precision = 13
      Size = 6
    end
    object ClientDerivacoesPRECUS: TBCDField
      FieldName = 'PRECUS'
      Precision = 15
      Size = 6
    end
    object ClientDerivacoesDATCUS: TDateTimeField
      FieldName = 'DATCUS'
    end
    object ClientDerivacoesPREMED: TBCDField
      FieldName = 'PREMED'
      Precision = 15
      Size = 6
    end
    object ClientDerivacoesDATMED: TDateTimeField
      FieldName = 'DATMED'
    end
    object ClientDerivacoesPREUEN: TBCDField
      FieldName = 'PREUEN'
      Precision = 15
      Size = 6
    end
    object ClientDerivacoesDATUEN: TDateTimeField
      FieldName = 'DATUEN'
    end
    object ClientDerivacoesPREREP: TBCDField
      FieldName = 'PREREP'
      Precision = 15
      Size = 6
    end
    object ClientDerivacoesDATREP: TDateTimeField
      FieldName = 'DATREP'
    end
    object ClientDerivacoesDIAREP: TIntegerField
      FieldName = 'DIAREP'
    end
    object ClientDerivacoesPESBRU: TBCDField
      FieldName = 'PESBRU'
      Precision = 11
      Size = 5
    end
    object ClientDerivacoesPESLIQ: TBCDField
      FieldName = 'PESLIQ'
      Precision = 11
      Size = 5
    end
    object ClientDerivacoesTOLPES: TBCDField
      FieldName = 'TOLPES'
      Precision = 5
      Size = 3
    end
    object ClientDerivacoesVOLDER: TBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object ClientDerivacoesPERPRD: TBCDField
      FieldName = 'PERPRD'
      Precision = 4
      Size = 2
    end
    object ClientDerivacoesQTDIQL: TBCDField
      FieldName = 'QTDIQL'
      Precision = 14
      Size = 5
    end
    object ClientDerivacoesQTDCIC: TBCDField
      FieldName = 'QTDCIC'
      Precision = 14
      Size = 5
    end
    object ClientDerivacoesQTDPRD: TBCDField
      FieldName = 'QTDPRD'
      Precision = 14
      Size = 5
    end
    object ClientDerivacoesPREUIS: TBCDField
      FieldName = 'PREUIS'
      Precision = 17
      Size = 8
    end
    object ClientDerivacoesPERICS: TBCDField
      FieldName = 'PERICS'
      Precision = 5
      Size = 2
    end
    object ClientDerivacoesCODEMB: TIntegerField
      Alignment = taCenter
      FieldName = 'CODEMB'
    end
    object ClientDerivacoesCODROT: TStringField
      FieldName = 'CODROT'
      Size = 14
    end
    object ClientDerivacoesCODROY: TIntegerField
      FieldName = 'CODROY'
    end
    object ClientDerivacoesBXAORP: TStringField
      FieldName = 'BXAORP'
      Size = 1
    end
    object ClientDerivacoesSERCCL: TStringField
      FieldName = 'SERCCL'
      Size = 3
    end
    object ClientDerivacoesNUMCCL: TStringField
      FieldName = 'NUMCCL'
      Size = 12
    end
    object ClientDerivacoesCURABC: TStringField
      FieldName = 'CURABC'
      Size = 1
    end
    object ClientDerivacoesCURAB2: TStringField
      FieldName = 'CURAB2'
      Size = 1
    end
    object ClientDerivacoesCURAB3: TStringField
      FieldName = 'CURAB3'
      Size = 1
    end
    object ClientDerivacoesCURAB4: TStringField
      FieldName = 'CURAB4'
      Size = 1
    end
    object ClientDerivacoesCODREG: TIntegerField
      FieldName = 'CODREG'
    end
    object ClientDerivacoesSITDER: TStringField
      FieldName = 'SITDER'
      Size = 1
    end
    object ClientDerivacoesCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ClientDerivacoesCTRLOT: TStringField
      FieldName = 'CTRLOT'
      Size = 1
    end
    object ClientDerivacoesCTRSEP: TStringField
      FieldName = 'CTRSEP'
      Size = 1
    end
    object ClientDerivacoesCTRVLD: TStringField
      FieldName = 'CTRVLD'
      Size = 1
    end
    object ClientDerivacoesDEPPAD: TStringField
      FieldName = 'DEPPAD'
      Size = 10
    end
    object ClientDerivacoesDEPPAA: TStringField
      FieldName = 'DEPPAA'
      Size = 10
    end
    object ClientDerivacoesINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ClientDerivacoesINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ClientDerivacoesINDKAN: TStringField
      FieldName = 'INDKAN'
      Size = 1
    end
    object ClientDerivacoesCODREF: TStringField
      FieldName = 'CODREF'
    end
    object ClientDerivacoesCODPIN: TStringField
      FieldName = 'CODPIN'
    end
    object ClientDerivacoesNOTFOR: TBCDField
      FieldName = 'NOTFOR'
      Precision = 5
      Size = 2
    end
    object ClientDerivacoesORICUS: TStringField
      FieldName = 'ORICUS'
      Size = 1
    end
    object ClientDerivacoesINFCUS: TStringField
      FieldName = 'INFCUS'
      Size = 1
    end
    object ClientDerivacoesHORCUS: TIntegerField
      FieldName = 'HORCUS'
    end
    object ClientDerivacoesUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ClientDerivacoesHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ClientDerivacoesDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ClientDerivacoesUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object ClientDerivacoesHORALT: TIntegerField
      FieldName = 'HORALT'
    end
    object ClientDerivacoesDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ClientDerivacoesCODAGE: TStringField
      FieldName = 'CODAGE'
      Size = 10
    end
    object ClientDerivacoesCODBA2: TStringField
      FieldName = 'CODBA2'
      Size = 30
    end
    object ClientDerivacoesINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ClientDerivacoesDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ClientDerivacoesHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ClientDerivacoesEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object ClientDerivacoesSERMVP: TStringField
      FieldName = 'SERMVP'
      Size = 14
    end
    object ClientDerivacoesAPRDFT: TStringField
      FieldName = 'APRDFT'
      Size = 1
    end
    object ClientDerivacoesCODAEM: TStringField
      FieldName = 'CODAEM'
      Size = 10
    end
    object ClientDerivacoesCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object ClientDerivacoesINDGEN: TStringField
      FieldName = 'INDGEN'
      Size = 1
    end
    object ClientDerivacoesQTDMLT: TBCDField
      FieldName = 'QTDMLT'
      Precision = 12
      Size = 5
    end
    object ClientDerivacoesQTDMIN: TBCDField
      FieldName = 'QTDMIN'
      Precision = 12
      Size = 5
    end
    object ClientDerivacoesQTDMAX: TBCDField
      FieldName = 'QTDMAX'
      Precision = 12
      Size = 5
    end
    object ClientDerivacoesCODEND: TStringField
      FieldName = 'CODEND'
      Size = 10
    end
    object ClientDerivacoesROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object ClientDerivacoesNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object ClientDerivacoesINDPCQ: TStringField
      FieldName = 'INDPCQ'
      Size = 1
    end
    object ClientDerivacoesVLRCID: TBCDField
      FieldName = 'VLRCID'
      Precision = 15
      Size = 2
    end
    object ClientDerivacoesUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object ClientDerivacoesUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object ClientDerivacoesUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object ClientDerivacoesUSU_CMP2BB: TBCDField
      FieldName = 'USU_CMP2BB'
      Precision = 8
      Size = 2
    end
    object ClientDerivacoesUSU_CMP2EN: TBCDField
      FieldName = 'USU_CMP2EN'
      Precision = 8
      Size = 2
    end
    object ClientDerivacoesUSU_MEDESP: TStringField
      FieldName = 'USU_MEDESP'
      Size = 1
    end
    object ClientDerivacoesUSU_FATOR: TBCDField
      FieldName = 'USU_FATOR'
      Precision = 9
      Size = 3
    end
    object ClientDerivacoesQTDEMB: TFMTBCDField
      FieldName = 'QTDEMB'
      Precision = 12
      Size = 5
    end
  end
  object DsDerivacoes: TDataSource
    DataSet = ClientDerivacoes
    OnStateChange = DsDerivacoesStateChange
    Left = 824
    Top = 127
  end
  object ValidaProduto: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select codpro,despro,codfam,codagp, codagc from e075pro where co' +
        'demp = :codemp and'
      '                                 codpro = :codpro')
    Left = 728
    Top = 71
    object ValidaProdutoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ValidaProdutoDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ValidaProdutoCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ValidaProdutoCODAGP: TStringField
      FieldName = 'CODAGP'
      Size = 5
    end
    object ValidaProdutoCODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
  end
  object ValidaTabPreco: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codtpr'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e081tab where'
      '                      codemp = :codemp and'
      '                      codtpr = :codtpr')
    Left = 304
    Top = 8
    object ValidaTabPrecoCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ValidaTabPrecoCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ValidaTabPrecoDESTPR: TStringField
      FieldName = 'DESTPR'
      Size = 30
    end
    object ValidaTabPrecoABRTPR: TStringField
      FieldName = 'ABRTPR'
      Size = 10
    end
    object ValidaTabPrecoCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ValidaTabPrecoESPCLI: TStringField
      FieldName = 'ESPCLI'
      Size = 1
    end
    object ValidaTabPrecoAPLTPV: TIntegerField
      FieldName = 'APLTPV'
    end
    object ValidaTabPrecoSITREG: TStringField
      FieldName = 'SITREG'
      Size = 1
    end
    object ValidaTabPrecoINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ValidaTabPrecoDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ValidaTabPrecoHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ValidaTabPrecoUTIPME: TStringField
      FieldName = 'UTIPME'
      Size = 1
    end
    object ValidaTabPrecoCODPDV: TBCDField
      FieldName = 'CODPDV'
      Precision = 10
      Size = 0
    end
    object ValidaTabPrecoCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ValidaTabPrecoCODTPB: TStringField
      FieldName = 'CODTPB'
      Size = 4
    end
  end
  object E120Ipd: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e120ipd where codemp = :codemp and'
      
        '                                             codfil = :codfil an' +
        'd'
      
        '                                             numped = :numped an' +
        'd'
      '                                             seqipd = :seqipd')
    Left = 912
    Top = 30
    object E120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object E120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object E120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object E120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object E120IpdTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object E120IpdPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object E120IpdSEQPCL: TStringField
      FieldName = 'SEQPCL'
      Size = 10
    end
    object E120IpdPEDPRV: TStringField
      FieldName = 'PEDPRV'
      Size = 1
    end
    object E120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object E120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object E120IpdCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object E120IpdCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object E120IpdCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object E120IpdCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object E120IpdCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object E120IpdCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object E120IpdCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object E120IpdCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object E120IpdCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object E120IpdCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object E120IpdRESEST: TStringField
      FieldName = 'RESEST'
      Size = 1
    end
    object E120IpdQTDPED: TBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object E120IpdQTDAEN: TBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object E120IpdQTDPOC: TBCDField
      FieldName = 'QTDPOC'
      Precision = 14
      Size = 5
    end
    object E120IpdQTDFAT: TBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object E120IpdQTDCAN: TBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object E120IpdQTDABE: TBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object E120IpdQTDRAE: TBCDField
      FieldName = 'QTDRAE'
      Precision = 14
      Size = 5
    end
    object E120IpdQTDNLP: TBCDField
      FieldName = 'QTDNLP'
      Precision = 14
      Size = 5
    end
    object E120IpdQTDRES: TBCDField
      FieldName = 'QTDRES'
      Precision = 14
      Size = 5
    end
    object E120IpdUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object E120IpdCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object E120IpdDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object E120IpdCOTMFP: TBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object E120IpdDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object E120IpdCOTMOE: TBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object E120IpdFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object E120IpdCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object E120IpdPREUNI: TBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object E120IpdCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object E120IpdPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object E120IpdPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object E120IpdPEROFE: TBCDField
      FieldName = 'PEROFE'
      Precision = 5
      Size = 2
    end
    object E120IpdPERACR: TBCDField
      FieldName = 'PERACR'
      Precision = 5
      Size = 2
    end
    object E120IpdPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object E120IpdPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object E120IpdPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object E120IpdDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object E120IpdDATANE: TDateTimeField
      FieldName = 'DATANE'
    end
    object E120IpdDATPOC: TDateTimeField
      FieldName = 'DATPOC'
    end
    object E120IpdCODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object E120IpdNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object E120IpdCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object E120IpdCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object E120IpdCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object E120IpdCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object E120IpdVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object E120IpdVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object E120IpdVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object E120IpdVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object E120IpdVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object E120IpdSITIPD: TIntegerField
      FieldName = 'SITIPD'
    end
    object E120IpdCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object E120IpdOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object E120IpdGERNEC: TIntegerField
      FieldName = 'GERNEC'
    end
    object E120IpdGERCGA: TStringField
      FieldName = 'GERCGA'
      Size = 1
    end
    object E120IpdRESMAN: TStringField
      FieldName = 'RESMAN'
      Size = 1
    end
    object E120IpdINDAED: TStringField
      FieldName = 'INDAED'
      Size = 1
    end
    object E120IpdNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object E120IpdDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object E120IpdSEQCVP: TIntegerField
      FieldName = 'SEQCVP'
    end
    object E120IpdUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object E120IpdDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object E120IpdHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object E120IpdQTDPPF: TBCDField
      FieldName = 'QTDPPF'
      Precision = 14
      Size = 5
    end
    object E120IpdCMPKIT: TStringField
      FieldName = 'CMPKIT'
      Size = 1
    end
    object E120IpdFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object E120IpdNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object E120IpdSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object E120IpdUNIVEN: TStringField
      FieldName = 'UNIVEN'
      Size = 3
    end
    object E120IpdQTDVEN: TBCDField
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object E120IpdPREVEN: TBCDField
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object E120IpdPREBRU: TBCDField
      FieldName = 'PREBRU'
      Precision = 14
      Size = 5
    end
    object E120IpdFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object E120IpdCTRCVS: TIntegerField
      FieldName = 'CTRCVS'
    end
    object E120IpdCPTCVS: TDateTimeField
      FieldName = 'CPTCVS'
    end
    object E120IpdSEQCVS: TIntegerField
      FieldName = 'SEQCVS'
    end
    object E120IpdCODAVC: TIntegerField
      FieldName = 'CODAVC'
    end
    object E120IpdCODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object E120IpdCODPGR: TStringField
      FieldName = 'CODPGR'
      Size = 5
    end
    object E120IpdIDXGRD: TIntegerField
      FieldName = 'IDXGRD'
    end
    object E120IpdCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object E120IpdCODCLC: TStringField
      FieldName = 'CODCLC'
      Size = 10
    end
    object E120IpdPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object E120IpdPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object E120IpdPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object E120IpdPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object E120IpdFILPRD: TIntegerField
      FieldName = 'FILPRD'
    end
    object E120IpdVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object E120IpdINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object E120IpdINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object E120IpdPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object E120IpdVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object E120IpdPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object E120IpdVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object E120IpdPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object E120IpdVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object E120IpdPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object E120IpdVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object E120IpdVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object E120IpdPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object E120IpdVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object E120IpdFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object E120IpdFORNFC: TIntegerField
      FieldName = 'FORNFC'
    end
    object E120IpdNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object E120IpdSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object E120IpdSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object E120IpdNCTLCL: TStringField
      FieldName = 'NCTLCL'
    end
    object E120IpdNRECLI: TStringField
      FieldName = 'NRECLI'
    end
    object E120IpdNOSICL: TBCDField
      FieldName = 'NOSICL'
      Precision = 10
      Size = 0
    end
    object E120IpdNOSFCL: TBCDField
      FieldName = 'NOSFCL'
      Precision = 10
      Size = 0
    end
    object E120IpdNOCCL1: TStringField
      FieldName = 'NOCCL1'
    end
    object E120IpdNOCCL2: TStringField
      FieldName = 'NOCCL2'
    end
    object E120IpdNOCCL3: TStringField
      FieldName = 'NOCCL3'
    end
    object E120IpdCODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
    object E120IpdCTRCVP: TIntegerField
      FieldName = 'CTRCVP'
    end
    object E120IpdCPTCVP: TDateTimeField
      FieldName = 'CPTCVP'
    end
    object E120IpdSEQCTR: TIntegerField
      FieldName = 'SEQCTR'
    end
    object E120IpdINDAPE: TIntegerField
      FieldName = 'INDAPE'
    end
    object E120IpdOBSIPD: TStringField
      FieldName = 'OBSIPD'
      Size = 999
    end
    object E120IpdSEQISP: TIntegerField
      FieldName = 'SEQISP'
    end
    object E120IpdEMPOCP: TIntegerField
      FieldName = 'EMPOCP'
    end
    object E120IpdVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object E120IpdPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 5
      Size = 2
    end
    object E120IpdVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object E120IpdVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object E120IpdPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 5
      Size = 2
    end
    object E120IpdVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object E120IpdPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object E120IpdVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object E120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object E120IpdUSU_CODTEC1: TStringField
      FieldName = 'USU_CODTEC1'
      Size = 14
    end
    object E120IpdUSU_CODTEC2: TStringField
      FieldName = 'USU_CODTEC2'
      Size = 14
    end
    object E120IpdUSU_QTDREP: TIntegerField
      FieldName = 'USU_QTDREP'
    end
    object E120IpdUSU_QTDDIV: TBCDField
      FieldName = 'USU_QTDDIV'
      Precision = 11
      Size = 2
    end
    object E120IpdUSU_MEDLAR: TBCDField
      FieldName = 'USU_MEDLAR'
      Precision = 8
      Size = 2
    end
    object E120IpdUSU_MEDCOM: TBCDField
      FieldName = 'USU_MEDCOM'
      Precision = 8
      Size = 2
    end
    object E120IpdUSU_MEDALT: TBCDField
      FieldName = 'USU_MEDALT'
      Precision = 8
      Size = 2
    end
    object E120IpdUSU_PERDESC1: TBCDField
      FieldName = 'USU_PERDESC1'
      Precision = 5
      Size = 2
    end
    object E120IpdUSU_PERDESC2: TBCDField
      FieldName = 'USU_PERDESC2'
      Precision = 5
      Size = 2
    end
    object E120IpdUSU_PERDESC3: TBCDField
      FieldName = 'USU_PERDESC3'
      Precision = 5
      Size = 2
    end
    object E120IpdUSU_PERDESC4: TBCDField
      FieldName = 'USU_PERDESC4'
      Precision = 5
      Size = 2
    end
    object E120IpdUSU_PERDESC5: TBCDField
      FieldName = 'USU_PERDESC5'
      Precision = 5
      Size = 2
    end
    object E120IpdUSU_PERDESC6: TBCDField
      FieldName = 'USU_PERDESC6'
      Precision = 5
      Size = 2
    end
    object E120IpdUSU_CANAPR: TBCDField
      FieldName = 'USU_CANAPR'
      Precision = 14
      Size = 5
    end
    object E120IpdUSU_TOTDSC: TBCDField
      FieldName = 'USU_TOTDSC'
      Precision = 5
      Size = 2
    end
    object E120IpdUSU_TOTDSCORI: TBCDField
      FieldName = 'USU_TOTDSCORI'
      Precision = 5
      Size = 2
    end
    object E120IpdORIRES: TStringField
      FieldName = 'ORIRES'
      Size = 1
    end
    object E120IpdUSU_VLRORI: TBCDField
      FieldName = 'USU_VLRORI'
      Precision = 14
      Size = 2
    end
  end
  object ProviderE120Ipd: TDataSetProvider
    DataSet = E120Ipd
    Left = 912
    Top = 63
  end
  object ClientE120Ipd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderE120Ipd'
    AfterScroll = ClientE120IpdAfterScroll
    Left = 912
    Top = 95
    object ClientE120IpdCODEMP: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODEMP'
    end
    object ClientE120IpdCODFIL: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODFIL'
    end
    object ClientE120IpdNUMPED: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'NUMPED'
    end
    object ClientE120IpdSEQIPD: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'SEQIPD'
    end
    object ClientE120IpdTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ClientE120IpdPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object ClientE120IpdSEQPCL: TStringField
      FieldName = 'SEQPCL'
      Size = 10
    end
    object ClientE120IpdPEDPRV: TStringField
      FieldName = 'PEDPRV'
      Size = 1
    end
    object ClientE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ClientE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ClientE120IpdCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object ClientE120IpdCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ClientE120IpdCODAGR: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODAGR'
    end
    object ClientE120IpdCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ClientE120IpdCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ClientE120IpdCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ClientE120IpdCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ClientE120IpdCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ClientE120IpdCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ClientE120IpdCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object ClientE120IpdRESEST: TStringField
      FieldName = 'RESEST'
      Size = 1
    end
    object ClientE120IpdQTDPED: TBCDField
      Alignment = taCenter
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdQTDAEN: TBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdQTDPOC: TBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDPOC'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdQTDFAT: TBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdQTDCAN: TBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdQTDABE: TBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdQTDRAE: TBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDRAE'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdQTDNLP: TBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDNLP'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdQTDRES: TBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDRES'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ClientE120IpdCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object ClientE120IpdDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object ClientE120IpdCOTMFP: TBCDField
      Alignment = taLeftJustify
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object ClientE120IpdDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ClientE120IpdCOTMOE: TBCDField
      Alignment = taLeftJustify
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ClientE120IpdFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ClientE120IpdCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ClientE120IpdPREUNI: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ClientE120IpdPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object ClientE120IpdPERDSC: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdPEROFE: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PEROFE'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdPERACR: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERACR'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdPERIPI: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdPERICM: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdPERCOM: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ClientE120IpdDATANE: TDateTimeField
      FieldName = 'DATANE'
    end
    object ClientE120IpdDATPOC: TDateTimeField
      FieldName = 'DATPOC'
    end
    object ClientE120IpdCODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object ClientE120IpdNUMPRJ: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'NUMPRJ'
    end
    object ClientE120IpdCODFPJ: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODFPJ'
    end
    object ClientE120IpdCTAFIN: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CTAFIN'
    end
    object ClientE120IpdCTARED: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CTARED'
    end
    object ClientE120IpdCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ClientE120IpdVLRFRE: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRSEG: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLREMB: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRENC: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLROUT: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRDAR: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRFRD: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLROUD: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRBRU: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRDSC: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRDS1: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRDS2: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRDS3: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRDS4: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLROFE: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRDZF: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRBIP: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRIPI: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRBIC: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRICM: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRBSI: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRICS: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRBSP: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRSTP: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRBSC: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRSTC: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRBCO: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRCOM: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRLPR: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRLOU: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRLIQ: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRFIN: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdSITIPD: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'SITIPD'
    end
    object ClientE120IpdCODMOT: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODMOT'
    end
    object ClientE120IpdOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ClientE120IpdGERNEC: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'GERNEC'
    end
    object ClientE120IpdGERCGA: TStringField
      FieldName = 'GERCGA'
      Size = 1
    end
    object ClientE120IpdRESMAN: TStringField
      FieldName = 'RESMAN'
      Size = 1
    end
    object ClientE120IpdINDAED: TStringField
      FieldName = 'INDAED'
      Size = 1
    end
    object ClientE120IpdNUMCTR: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'NUMCTR'
    end
    object ClientE120IpdDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object ClientE120IpdSEQCVP: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'SEQCVP'
    end
    object ClientE120IpdUSUGER: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ClientE120IpdDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ClientE120IpdHORGER: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'HORGER'
    end
    object ClientE120IpdQTDPPF: TBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDPPF'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdCMPKIT: TStringField
      FieldName = 'CMPKIT'
      Size = 1
    end
    object ClientE120IpdFILOCP: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FILOCP'
    end
    object ClientE120IpdNUMOCP: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'NUMOCP'
    end
    object ClientE120IpdSEQIPO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'SEQIPO'
    end
    object ClientE120IpdUNIVEN: TStringField
      FieldName = 'UNIVEN'
      Size = 3
    end
    object ClientE120IpdQTDVEN: TBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdPREVEN: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdPREBRU: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PREBRU'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdFILCTR: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FILCTR'
    end
    object ClientE120IpdCTRCVS: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CTRCVS'
    end
    object ClientE120IpdCPTCVS: TDateTimeField
      FieldName = 'CPTCVS'
    end
    object ClientE120IpdSEQCVS: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'SEQCVS'
    end
    object ClientE120IpdCODAVC: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODAVC'
    end
    object ClientE120IpdCODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object ClientE120IpdCODPGR: TStringField
      FieldName = 'CODPGR'
      Size = 5
    end
    object ClientE120IpdIDXGRD: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'IDXGRD'
    end
    object ClientE120IpdCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ClientE120IpdCODCLC: TStringField
      FieldName = 'CODCLC'
      Size = 10
    end
    object ClientE120IpdPERDS1: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdPERDS2: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdPERDS3: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdPERDS4: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdFILPRD: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FILPRD'
    end
    object ClientE120IpdVLRRIS: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ClientE120IpdINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ClientE120IpdPERPIT: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object ClientE120IpdVLRBPT: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRPIT: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdPERCRT: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object ClientE120IpdVLRBCT: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRCRT: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdPERCSL: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ClientE120IpdVLRBCL: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRCSL: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdPEROUR: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ClientE120IpdVLRBOR: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLROUR: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdPERIRF: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ClientE120IpdVLRBIR: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRIRF: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdFILNFC: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FILNFC'
    end
    object ClientE120IpdFORNFC: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FORNFC'
    end
    object ClientE120IpdNUMNFC: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'NUMNFC'
    end
    object ClientE120IpdSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object ClientE120IpdSEQIPC: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'SEQIPC'
    end
    object ClientE120IpdNCTLCL: TStringField
      FieldName = 'NCTLCL'
    end
    object ClientE120IpdNRECLI: TStringField
      FieldName = 'NRECLI'
    end
    object ClientE120IpdNOSICL: TBCDField
      Alignment = taLeftJustify
      FieldName = 'NOSICL'
      Precision = 10
      Size = 0
    end
    object ClientE120IpdNOSFCL: TBCDField
      Alignment = taLeftJustify
      FieldName = 'NOSFCL'
      Precision = 10
      Size = 0
    end
    object ClientE120IpdNOCCL1: TStringField
      FieldName = 'NOCCL1'
    end
    object ClientE120IpdNOCCL2: TStringField
      FieldName = 'NOCCL2'
    end
    object ClientE120IpdNOCCL3: TStringField
      FieldName = 'NOCCL3'
    end
    object ClientE120IpdCODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
    object ClientE120IpdCTRCVP: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CTRCVP'
    end
    object ClientE120IpdCPTCVP: TDateTimeField
      FieldName = 'CPTCVP'
    end
    object ClientE120IpdSEQCTR: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'SEQCTR'
    end
    object ClientE120IpdINDAPE: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'INDAPE'
    end
    object ClientE120IpdOBSIPD: TStringField
      FieldName = 'OBSIPD'
      Size = 999
    end
    object ClientE120IpdSEQISP: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'SEQISP'
    end
    object ClientE120IpdEMPOCP: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'EMPOCP'
    end
    object ClientE120IpdVLRBPF: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdPERPIF: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERPIF'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdVLRPIF: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdVLRBCF: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdPERCFF: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERCFF'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdVLRCFF: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdPERDS5: TBCDField
      Alignment = taLeftJustify
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdVLRDS5: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ClientE120IpdUSU_TIPCMB: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'USU_TIPCMB'
    end
    object ClientE120IpdUSU_CODTEC1: TStringField
      FieldName = 'USU_CODTEC1'
      Size = 14
    end
    object ClientE120IpdUSU_CODTEC2: TStringField
      FieldName = 'USU_CODTEC2'
      Size = 14
    end
    object ClientE120IpdUSU_QTDREP: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'USU_QTDREP'
    end
    object ClientE120IpdUSU_QTDDIV: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USU_QTDDIV'
      Precision = 11
      Size = 2
    end
    object ClientE120IpdUSU_MEDLAR: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USU_MEDLAR'
      Precision = 8
      Size = 2
    end
    object ClientE120IpdUSU_MEDCOM: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USU_MEDCOM'
      Precision = 8
      Size = 2
    end
    object ClientE120IpdUSU_MEDALT: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USU_MEDALT'
      Precision = 8
      Size = 2
    end
    object ClientE120IpdUSU_PERDESC1: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USU_PERDESC1'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdUSU_PERDESC2: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USU_PERDESC2'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdUSU_PERDESC3: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USU_PERDESC3'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdUSU_PERDESC4: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USU_PERDESC4'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdUSU_PERDESC5: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USU_PERDESC5'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdUSU_PERDESC6: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USU_PERDESC6'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdUSU_CANAPR: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USU_CANAPR'
      Precision = 14
      Size = 5
    end
    object ClientE120IpdUSU_TOTDSC: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USU_TOTDSC'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdUSU_TOTDSCORI: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USU_TOTDSCORI'
      Precision = 5
      Size = 2
    end
    object ClientE120IpdORIRES: TStringField
      FieldName = 'ORIRES'
      Size = 1
    end
    object ClientE120IpdUSU_VLRORI: TBCDField
      Alignment = taLeftJustify
      FieldName = 'USU_VLRORI'
      Precision = 14
      Size = 2
    end
  end
  object DsE120Ipd: TDataSource
    DataSet = ClientE120Ipd
    Left = 912
    Top = 127
  end
  object ValidaDerivacao: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e075der where codemp = :codemp and'
      '                            codpro = :codpro and'
      '                            codder = :codder')
    Left = 576
    Top = 64
    object ValidaDerivacaoCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ValidaDerivacaoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ValidaDerivacaoCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ValidaDerivacaoDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
    object ValidaDerivacaoDESCPL: TStringField
      FieldName = 'DESCPL'
      Size = 90
    end
    object ValidaDerivacaoCODBAR: TBCDField
      FieldName = 'CODBAR'
      Precision = 13
      Size = 0
    end
    object ValidaDerivacaoCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ValidaDerivacaoCODAGT: TStringField
      FieldName = 'CODAGT'
      Size = 5
    end
    object ValidaDerivacaoSEQCMD: TIntegerField
      FieldName = 'SEQCMD'
    end
    object ValidaDerivacaoDATVAL: TDateTimeField
      FieldName = 'DATVAL'
    end
    object ValidaDerivacaoDIAVLT: TIntegerField
      FieldName = 'DIAVLT'
    end
    object ValidaDerivacaoTIPCN2: TStringField
      FieldName = 'TIPCN2'
      Size = 1
    end
    object ValidaDerivacaoVLRCN2: TBCDField
      FieldName = 'VLRCN2'
      Precision = 13
      Size = 6
    end
    object ValidaDerivacaoTIPCN3: TStringField
      FieldName = 'TIPCN3'
      Size = 1
    end
    object ValidaDerivacaoVLRCN3: TBCDField
      FieldName = 'VLRCN3'
      Precision = 13
      Size = 6
    end
    object ValidaDerivacaoPRECUS: TBCDField
      FieldName = 'PRECUS'
      Precision = 15
      Size = 6
    end
    object ValidaDerivacaoDATCUS: TDateTimeField
      FieldName = 'DATCUS'
    end
    object ValidaDerivacaoPREMED: TBCDField
      FieldName = 'PREMED'
      Precision = 15
      Size = 6
    end
    object ValidaDerivacaoDATMED: TDateTimeField
      FieldName = 'DATMED'
    end
    object ValidaDerivacaoPREUEN: TBCDField
      FieldName = 'PREUEN'
      Precision = 15
      Size = 6
    end
    object ValidaDerivacaoDATUEN: TDateTimeField
      FieldName = 'DATUEN'
    end
    object ValidaDerivacaoPREREP: TBCDField
      FieldName = 'PREREP'
      Precision = 15
      Size = 6
    end
    object ValidaDerivacaoDATREP: TDateTimeField
      FieldName = 'DATREP'
    end
    object ValidaDerivacaoDIAREP: TIntegerField
      FieldName = 'DIAREP'
    end
    object ValidaDerivacaoPESBRU: TBCDField
      FieldName = 'PESBRU'
      Precision = 11
      Size = 5
    end
    object ValidaDerivacaoPESLIQ: TBCDField
      FieldName = 'PESLIQ'
      Precision = 11
      Size = 5
    end
    object ValidaDerivacaoTOLPES: TBCDField
      FieldName = 'TOLPES'
      Precision = 5
      Size = 3
    end
    object ValidaDerivacaoVOLDER: TBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object ValidaDerivacaoPERPRD: TBCDField
      FieldName = 'PERPRD'
      Precision = 4
      Size = 2
    end
    object ValidaDerivacaoQTDIQL: TBCDField
      FieldName = 'QTDIQL'
      Precision = 14
      Size = 5
    end
    object ValidaDerivacaoQTDCIC: TBCDField
      FieldName = 'QTDCIC'
      Precision = 14
      Size = 5
    end
    object ValidaDerivacaoQTDPRD: TBCDField
      FieldName = 'QTDPRD'
      Precision = 14
      Size = 5
    end
    object ValidaDerivacaoPREUIS: TBCDField
      FieldName = 'PREUIS'
      Precision = 17
      Size = 8
    end
    object ValidaDerivacaoPERICS: TBCDField
      FieldName = 'PERICS'
      Precision = 5
      Size = 2
    end
    object ValidaDerivacaoCODEMB: TIntegerField
      FieldName = 'CODEMB'
    end
    object ValidaDerivacaoCODROT: TStringField
      FieldName = 'CODROT'
      Size = 14
    end
    object ValidaDerivacaoCODROY: TIntegerField
      FieldName = 'CODROY'
    end
    object ValidaDerivacaoBXAORP: TStringField
      FieldName = 'BXAORP'
      Size = 1
    end
    object ValidaDerivacaoSERCCL: TStringField
      FieldName = 'SERCCL'
      Size = 3
    end
    object ValidaDerivacaoNUMCCL: TStringField
      FieldName = 'NUMCCL'
      Size = 12
    end
    object ValidaDerivacaoCURABC: TStringField
      FieldName = 'CURABC'
      Size = 1
    end
    object ValidaDerivacaoCURAB2: TStringField
      FieldName = 'CURAB2'
      Size = 1
    end
    object ValidaDerivacaoCURAB3: TStringField
      FieldName = 'CURAB3'
      Size = 1
    end
    object ValidaDerivacaoCURAB4: TStringField
      FieldName = 'CURAB4'
      Size = 1
    end
    object ValidaDerivacaoCODREG: TIntegerField
      FieldName = 'CODREG'
    end
    object ValidaDerivacaoSITDER: TStringField
      FieldName = 'SITDER'
      Size = 1
    end
    object ValidaDerivacaoCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ValidaDerivacaoCTRLOT: TStringField
      FieldName = 'CTRLOT'
      Size = 1
    end
    object ValidaDerivacaoCTRSEP: TStringField
      FieldName = 'CTRSEP'
      Size = 1
    end
    object ValidaDerivacaoCTRVLD: TStringField
      FieldName = 'CTRVLD'
      Size = 1
    end
    object ValidaDerivacaoDEPPAD: TStringField
      FieldName = 'DEPPAD'
      Size = 10
    end
    object ValidaDerivacaoDEPPAA: TStringField
      FieldName = 'DEPPAA'
      Size = 10
    end
    object ValidaDerivacaoINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ValidaDerivacaoINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ValidaDerivacaoINDKAN: TStringField
      FieldName = 'INDKAN'
      Size = 1
    end
    object ValidaDerivacaoCODREF: TStringField
      FieldName = 'CODREF'
    end
    object ValidaDerivacaoCODPIN: TStringField
      FieldName = 'CODPIN'
    end
    object ValidaDerivacaoNOTFOR: TBCDField
      FieldName = 'NOTFOR'
      Precision = 5
      Size = 2
    end
    object ValidaDerivacaoORICUS: TStringField
      FieldName = 'ORICUS'
      Size = 1
    end
    object ValidaDerivacaoINFCUS: TStringField
      FieldName = 'INFCUS'
      Size = 1
    end
    object ValidaDerivacaoHORCUS: TIntegerField
      FieldName = 'HORCUS'
    end
    object ValidaDerivacaoUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ValidaDerivacaoHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ValidaDerivacaoDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ValidaDerivacaoUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object ValidaDerivacaoHORALT: TIntegerField
      FieldName = 'HORALT'
    end
    object ValidaDerivacaoDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ValidaDerivacaoCODAGE: TStringField
      FieldName = 'CODAGE'
      Size = 10
    end
    object ValidaDerivacaoCODBA2: TStringField
      FieldName = 'CODBA2'
      Size = 30
    end
    object ValidaDerivacaoINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ValidaDerivacaoDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ValidaDerivacaoHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ValidaDerivacaoEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object ValidaDerivacaoSERMVP: TStringField
      FieldName = 'SERMVP'
      Size = 14
    end
    object ValidaDerivacaoAPRDFT: TStringField
      FieldName = 'APRDFT'
      Size = 1
    end
    object ValidaDerivacaoCODAEM: TStringField
      FieldName = 'CODAEM'
      Size = 10
    end
    object ValidaDerivacaoCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object ValidaDerivacaoINDGEN: TStringField
      FieldName = 'INDGEN'
      Size = 1
    end
    object ValidaDerivacaoQTDMLT: TBCDField
      FieldName = 'QTDMLT'
      Precision = 12
      Size = 5
    end
    object ValidaDerivacaoQTDMIN: TBCDField
      FieldName = 'QTDMIN'
      Precision = 12
      Size = 5
    end
    object ValidaDerivacaoQTDMAX: TBCDField
      FieldName = 'QTDMAX'
      Precision = 12
      Size = 5
    end
    object ValidaDerivacaoCODEND: TStringField
      FieldName = 'CODEND'
      Size = 10
    end
    object ValidaDerivacaoROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object ValidaDerivacaoNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object ValidaDerivacaoINDPCQ: TStringField
      FieldName = 'INDPCQ'
      Size = 1
    end
    object ValidaDerivacaoVLRCID: TBCDField
      FieldName = 'VLRCID'
      Precision = 15
      Size = 2
    end
    object ValidaDerivacaoUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object ValidaDerivacaoUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object ValidaDerivacaoUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object ValidaDerivacaoUSU_CMP2BB: TBCDField
      FieldName = 'USU_CMP2BB'
      Precision = 8
      Size = 2
    end
    object ValidaDerivacaoUSU_CMP2EN: TBCDField
      FieldName = 'USU_CMP2EN'
      Precision = 8
      Size = 2
    end
    object ValidaDerivacaoUSU_MEDESP: TStringField
      FieldName = 'USU_MEDESP'
      Size = 1
    end
    object ValidaDerivacaoUSU_FATOR: TBCDField
      FieldName = 'USU_FATOR'
      Precision = 9
      Size = 3
    end
    object ValidaDerivacaoQTDEMB: TFMTBCDField
      FieldName = 'QTDEMB'
      Precision = 12
      Size = 5
    end
  end
  object E081Itp: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codtpr'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e081itp where codemp = :codemp and'
      '                            codtpr = :codtpr and'
      '                            codpro = :codpro and'
      '                            codder = :codder')
    Left = 304
    Top = 64
    object E081ItpCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object E081ItpCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object E081ItpDATINI: TDateTimeField
      FieldName = 'DATINI'
    end
    object E081ItpCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object E081ItpCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object E081ItpQTDMAX: TBCDField
      FieldName = 'QTDMAX'
      Precision = 11
      Size = 2
    end
    object E081ItpPREBAS: TBCDField
      FieldName = 'PREBAS'
      Precision = 14
      Size = 5
    end
    object E081ItpPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object E081ItpPERLIM: TBCDField
      FieldName = 'PERLIM'
      Precision = 5
      Size = 2
    end
    object E081ItpPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object E081ItpTOLMAI: TBCDField
      FieldName = 'TOLMAI'
      Precision = 5
      Size = 2
    end
    object E081ItpTOLMEN: TBCDField
      FieldName = 'TOLMEN'
      Precision = 5
      Size = 2
    end
    object E081ItpSITREG: TStringField
      FieldName = 'SITREG'
      Size = 1
    end
    object E081ItpINDEXC: TStringField
      FieldName = 'INDEXC'
      Size = 1
    end
    object E081ItpINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object E081ItpDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object E081ItpHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object E081ItpDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object E081ItpHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object E081ItpUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object E081ItpDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object E081ItpHORALT: TIntegerField
      FieldName = 'HORALT'
    end
    object E081ItpUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object E081ItpPROEXT: TStringField
      FieldName = 'PROEXT'
      Size = 30
    end
    object E081ItpPREMT2: TBCDField
      FieldName = 'PREMT2'
      Precision = 14
      Size = 5
    end
    object E081ItpVLRCMO: TBCDField
      FieldName = 'VLRCMO'
      Precision = 14
      Size = 5
    end
    object E081ItpVLRCTE: TBCDField
      FieldName = 'VLRCTE'
      Precision = 14
      Size = 5
    end
    object E081ItpVLRCPR: TBCDField
      FieldName = 'VLRCPR'
      Precision = 14
      Size = 5
    end
    object E081ItpPREORC: TBCDField
      FieldName = 'PREORC'
      Precision = 14
      Size = 5
    end
    object E081ItpDATORC: TDateTimeField
      FieldName = 'DATORC'
    end
    object E081ItpCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object E081ItpCODPRB: TStringField
      FieldName = 'CODPRB'
      Size = 14
    end
    object E081ItpVLTMAI: TBCDField
      FieldName = 'VLTMAI'
      Precision = 14
      Size = 5
    end
    object E081ItpVLTMEN: TBCDField
      FieldName = 'VLTMEN'
      Precision = 14
      Size = 5
    end
    object E081ItpOBSITP: TStringField
      FieldName = 'OBSITP'
      Size = 99
    end
  end
  object DsConsUsu_T120Ipd: TDataSource
    DataSet = Dm2.ConsUsu_T120Ipd
    Left = 296
    Top = 112
  end
  object SeqIpd: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select seqipd from e120ipd where codemp = :codemp and'
      '                            codfil = :codfil and'
      '                            numped = :numped'
      '                            order by seqipd desc')
    Left = 576
    Top = 112
    object SeqIpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
  end
  object SapSid: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 296
    Top = 168
  end
  object ConsUsu_TCarPro: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tcarpro where usu_numane = :numane')
    Left = 352
    Top = 184
    object ConsUsu_TCarProUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TCarProUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object ConsUsu_TCarProUSU_HORIMP: TIntegerField
      FieldName = 'USU_HORIMP'
    end
    object ConsUsu_TCarProUSU_USUIMP: TIntegerField
      FieldName = 'USU_USUIMP'
    end
    object ConsUsu_TCarProUSU_CARPRO: TStringField
      FieldName = 'USU_CARPRO'
      Size = 1
    end
  end
  object ConsE075Der: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e075der where codpro = :codpro and'
      '                            codder = :codder')
    Left = 464
    Top = 312
    object ConsE075DerCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE075DerCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE075DerCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE075DerDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
    object ConsE075DerDESCPL: TStringField
      FieldName = 'DESCPL'
      Size = 90
    end
    object ConsE075DerCODBAR: TBCDField
      FieldName = 'CODBAR'
      Precision = 13
      Size = 0
    end
    object ConsE075DerCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ConsE075DerCODAGT: TStringField
      FieldName = 'CODAGT'
      Size = 5
    end
    object ConsE075DerSEQCMD: TIntegerField
      FieldName = 'SEQCMD'
    end
    object ConsE075DerDATVAL: TDateTimeField
      FieldName = 'DATVAL'
    end
    object ConsE075DerDIAVLT: TIntegerField
      FieldName = 'DIAVLT'
    end
    object ConsE075DerTIPCN2: TStringField
      FieldName = 'TIPCN2'
      Size = 1
    end
    object ConsE075DerVLRCN2: TFMTBCDField
      FieldName = 'VLRCN2'
      Precision = 13
      Size = 6
    end
    object ConsE075DerTIPCN3: TStringField
      FieldName = 'TIPCN3'
      Size = 1
    end
    object ConsE075DerVLRCN3: TFMTBCDField
      FieldName = 'VLRCN3'
      Precision = 13
      Size = 6
    end
    object ConsE075DerPRECUS: TFMTBCDField
      FieldName = 'PRECUS'
      Precision = 15
      Size = 6
    end
    object ConsE075DerDATCUS: TDateTimeField
      FieldName = 'DATCUS'
    end
    object ConsE075DerPREMED: TFMTBCDField
      FieldName = 'PREMED'
      Precision = 15
      Size = 6
    end
    object ConsE075DerDATMED: TDateTimeField
      FieldName = 'DATMED'
    end
    object ConsE075DerPREUEN: TFMTBCDField
      FieldName = 'PREUEN'
      Precision = 15
      Size = 6
    end
    object ConsE075DerDATUEN: TDateTimeField
      FieldName = 'DATUEN'
    end
    object ConsE075DerPREREP: TFMTBCDField
      FieldName = 'PREREP'
      Precision = 15
      Size = 6
    end
    object ConsE075DerDATREP: TDateTimeField
      FieldName = 'DATREP'
    end
    object ConsE075DerDIAREP: TIntegerField
      FieldName = 'DIAREP'
    end
    object ConsE075DerPESBRU: TFMTBCDField
      FieldName = 'PESBRU'
      Precision = 11
      Size = 5
    end
    object ConsE075DerPESLIQ: TFMTBCDField
      FieldName = 'PESLIQ'
      Precision = 11
      Size = 5
    end
    object ConsE075DerTOLPES: TBCDField
      FieldName = 'TOLPES'
      Precision = 5
      Size = 3
    end
    object ConsE075DerVOLDER: TFMTBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object ConsE075DerPERPRD: TBCDField
      FieldName = 'PERPRD'
      Precision = 4
      Size = 2
    end
    object ConsE075DerQTDIQL: TFMTBCDField
      FieldName = 'QTDIQL'
      Precision = 14
      Size = 5
    end
    object ConsE075DerQTDCIC: TFMTBCDField
      FieldName = 'QTDCIC'
      Precision = 14
      Size = 5
    end
    object ConsE075DerQTDPRD: TFMTBCDField
      FieldName = 'QTDPRD'
      Precision = 14
      Size = 5
    end
    object ConsE075DerPREUIS: TFMTBCDField
      FieldName = 'PREUIS'
      Precision = 17
    end
    object ConsE075DerPERICS: TBCDField
      FieldName = 'PERICS'
      Precision = 5
      Size = 2
    end
    object ConsE075DerCODEMB: TIntegerField
      FieldName = 'CODEMB'
    end
    object ConsE075DerCODROT: TStringField
      FieldName = 'CODROT'
      Size = 14
    end
    object ConsE075DerCODROY: TIntegerField
      FieldName = 'CODROY'
    end
    object ConsE075DerBXAORP: TStringField
      FieldName = 'BXAORP'
      Size = 1
    end
    object ConsE075DerSERCCL: TStringField
      FieldName = 'SERCCL'
      Size = 3
    end
    object ConsE075DerNUMCCL: TStringField
      FieldName = 'NUMCCL'
      Size = 12
    end
    object ConsE075DerCURABC: TStringField
      FieldName = 'CURABC'
      Size = 1
    end
    object ConsE075DerCURAB2: TStringField
      FieldName = 'CURAB2'
      Size = 1
    end
    object ConsE075DerCURAB3: TStringField
      FieldName = 'CURAB3'
      Size = 1
    end
    object ConsE075DerCURAB4: TStringField
      FieldName = 'CURAB4'
      Size = 1
    end
    object ConsE075DerCODREG: TIntegerField
      FieldName = 'CODREG'
    end
    object ConsE075DerSITDER: TStringField
      FieldName = 'SITDER'
      Size = 1
    end
    object ConsE075DerCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE075DerCTRLOT: TStringField
      FieldName = 'CTRLOT'
      Size = 1
    end
    object ConsE075DerCTRSEP: TStringField
      FieldName = 'CTRSEP'
      Size = 1
    end
    object ConsE075DerCTRVLD: TStringField
      FieldName = 'CTRVLD'
      Size = 1
    end
    object ConsE075DerDEPPAD: TStringField
      FieldName = 'DEPPAD'
      Size = 10
    end
    object ConsE075DerDEPPAA: TStringField
      FieldName = 'DEPPAA'
      Size = 10
    end
    object ConsE075DerINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ConsE075DerINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ConsE075DerINDKAN: TStringField
      FieldName = 'INDKAN'
      Size = 1
    end
    object ConsE075DerCODREF: TStringField
      FieldName = 'CODREF'
    end
    object ConsE075DerCODPIN: TStringField
      FieldName = 'CODPIN'
    end
    object ConsE075DerNOTFOR: TBCDField
      FieldName = 'NOTFOR'
      Precision = 5
      Size = 2
    end
    object ConsE075DerORICUS: TStringField
      FieldName = 'ORICUS'
      Size = 1
    end
    object ConsE075DerINFCUS: TStringField
      FieldName = 'INFCUS'
      Size = 1
    end
    object ConsE075DerHORCUS: TIntegerField
      FieldName = 'HORCUS'
    end
    object ConsE075DerUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE075DerHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE075DerDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE075DerUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object ConsE075DerHORALT: TIntegerField
      FieldName = 'HORALT'
    end
    object ConsE075DerDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ConsE075DerCODAGE: TStringField
      FieldName = 'CODAGE'
      Size = 10
    end
    object ConsE075DerCODBA2: TStringField
      FieldName = 'CODBA2'
      Size = 30
    end
    object ConsE075DerINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsE075DerDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsE075DerHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsE075DerEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object ConsE075DerSERMVP: TStringField
      FieldName = 'SERMVP'
      Size = 14
    end
    object ConsE075DerAPRDFT: TStringField
      FieldName = 'APRDFT'
      Size = 1
    end
    object ConsE075DerCODAEM: TStringField
      FieldName = 'CODAEM'
      Size = 10
    end
    object ConsE075DerCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object ConsE075DerINDGEN: TStringField
      FieldName = 'INDGEN'
      Size = 1
    end
    object ConsE075DerQTDMLT: TFMTBCDField
      FieldName = 'QTDMLT'
      Precision = 12
      Size = 5
    end
    object ConsE075DerQTDMIN: TFMTBCDField
      FieldName = 'QTDMIN'
      Precision = 12
      Size = 5
    end
    object ConsE075DerQTDMAX: TFMTBCDField
      FieldName = 'QTDMAX'
      Precision = 12
      Size = 5
    end
    object ConsE075DerCODEND: TStringField
      FieldName = 'CODEND'
      Size = 10
    end
    object ConsE075DerROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object ConsE075DerNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object ConsE075DerINDPCQ: TStringField
      FieldName = 'INDPCQ'
      Size = 1
    end
    object ConsE075DerVLRCID: TBCDField
      FieldName = 'VLRCID'
      Precision = 15
      Size = 2
    end
    object ConsE075DerQTDCUS: TFMTBCDField
      FieldName = 'QTDCUS'
      Precision = 12
      Size = 5
    end
    object ConsE075DerUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object ConsE075DerUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object ConsE075DerUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object ConsE075DerUSU_CMP2BB: TBCDField
      FieldName = 'USU_CMP2BB'
      Precision = 8
      Size = 2
    end
    object ConsE075DerUSU_CMP2EN: TBCDField
      FieldName = 'USU_CMP2EN'
      Precision = 8
      Size = 2
    end
    object ConsE075DerUSU_MEDESP: TStringField
      FieldName = 'USU_MEDESP'
      Size = 1
    end
    object ConsE075DerUSU_FATOR: TBCDField
      FieldName = 'USU_FATOR'
      Precision = 9
      Size = 3
    end
    object ConsE075DerQTDEMB: TFMTBCDField
      FieldName = 'QTDEMB'
      Precision = 12
      Size = 5
    end
  end
end
