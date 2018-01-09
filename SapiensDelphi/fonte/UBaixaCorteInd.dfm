object FBaixaCorteInd: TFBaixaCorteInd
  Left = 227
  Top = 153
  Caption = 'Baixa de Produtos Cortados - Individual'
  ClientHeight = 510
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 5
    Top = 7
    Width = 716
    Height = 87
    BevelOuter = bvLowered
    Color = 13882323
    TabOrder = 0
    object LNumAne: TLabel
      Left = 94
      Top = 4
      Width = 55
      Height = 13
      Caption = 'LNumAne'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LCodPro: TLabel
      Left = 94
      Top = 25
      Width = 49
      Height = 13
      Caption = 'LCodPro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LCodDer: TLabel
      Left = 94
      Top = 45
      Width = 50
      Height = 13
      Caption = 'LCodDer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LDesPro: TLabel
      Left = 196
      Top = 25
      Width = 49
      Height = 13
      Caption = 'LDesPro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 42
      Top = 2
      Width = 46
      Height = 13
      Caption = 'Carga..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 30
      Top = 23
      Width = 57
      Height = 13
      Caption = 'Produto..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 12
      Top = 44
      Width = 71
      Height = 13
      Caption = 'Deriva'#231#227'o..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 173
      Top = 26
      Width = 5
      Height = 13
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 194
      Top = 64
      Width = 74
      Height = 13
      Caption = 'Qtd.Aberto..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LQtdAbe: TLabel
      Left = 278
      Top = 64
      Width = 50
      Height = 13
      Caption = 'LQtdAbe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 6
      Top = 64
      Width = 76
      Height = 13
      Caption = 'Qtd.Pedida..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LQtdPedida: TLabel
      Left = 94
      Top = 65
      Width = 67
      Height = 13
      Caption = 'LQtdPedida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 5
    Top = 99
    Width = 716
    Height = 377
    BevelOuter = bvLowered
    TabOrder = 1
    object Label6: TLabel
      Left = 62
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Cor 01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 161
      Top = 9
      Width = 38
      Height = 13
      Caption = 'Cor 02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 253
      Top = 9
      Width = 47
      Height = 13
      Caption = 'Qtd.Abe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 341
      Top = 9
      Width = 55
      Height = 13
      Caption = 'Qtd.Prod.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 557
      Top = 9
      Width = 60
      Height = 13
      Caption = 'Sal. Cor01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 626
      Top = 9
      Width = 60
      Height = 13
      Caption = 'Sal. Cor02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 418
      Top = 9
      Width = 54
      Height = 13
      Caption = 'Dif.Cor01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 487
      Top = 9
      Width = 54
      Height = 13
      Caption = 'Dif.Cor02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BMarcaTodos: TSpeedButton
      Left = 8
      Top = 4
      Width = 20
      Height = 18
      Caption = #252
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Wingdings'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BMarcaTodosClick
    end
    object DBGeral: TDBCtrlGrid
      Left = 5
      Top = 24
      Width = 704
      Height = 345
      AllowInsert = False
      DataSource = DsCoresBaixaCorteInd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      PanelBorder = gbNone
      PanelHeight = 23
      PanelWidth = 687
      ParentFont = False
      TabOrder = 0
      RowCount = 15
      OnEnter = DBGeralEnter
      OnExit = DBGeralExit
      OnKeyDown = DBGeralKeyDown
      OnKeyPress = DBGeralKeyPress
      OnStartDrag = DBGeralStartDrag
      object DBECor01: TDBEdit
        Left = 26
        Top = 1
        Width = 100
        Height = 21
        TabStop = False
        BevelOuter = bvRaised
        BiDiMode = bdLeftToRight
        Color = 13882323
        Ctl3D = True
        DataField = 'USU_CODCOR1'
        DataSource = DsCoresBaixaCorteInd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBECor02: TDBEdit
        Left = 126
        Top = 1
        Width = 100
        Height = 21
        TabStop = False
        BiDiMode = bdLeftToRight
        Color = 13882323
        Ctl3D = True
        DataField = 'USU_CODCOR2'
        DataSource = DsCoresBaixaCorteInd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEQtdAbe: TDBEdit
        Left = 226
        Top = 1
        Width = 90
        Height = 21
        TabStop = False
        Color = 13882323
        Ctl3D = True
        DataField = 'USU_QTDABE'
        DataSource = DsCoresBaixaCorteInd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEQtdProd: TDBEdit
        Left = 315
        Top = 1
        Width = 90
        Height = 21
        Ctl3D = True
        DataField = 'USU_QTDPRO'
        DataSource = DsCoresBaixaCorteInd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnExit = DBEQtdProdExit
        OnKeyPress = DBEQtdProdKeyPress
      end
      object DBEQtdCor01: TDBEdit
        Left = 405
        Top = 1
        Width = 70
        Height = 21
        TabStop = False
        Color = 15329769
        DataField = 'USU_QTDCOR1'
        DataSource = DsCoresBaixaCorteInd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBEQtdCor02: TDBEdit
        Left = 475
        Top = 1
        Width = 70
        Height = 21
        TabStop = False
        Color = 15329769
        DataField = 'USU_QTDCOR2'
        DataSource = DsCoresBaixaCorteInd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object DBESelIte: TDBEdit
        Left = 3
        Top = 1
        Width = 21
        Height = 23
        TabStop = False
        DataField = 'USU_SELITE'
        DataSource = DsCoresBaixaCorteInd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Wingdings'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        OnClick = DBESelIteClick
      end
      object DBESalAbe1: TDBEdit
        Left = 545
        Top = 1
        Width = 70
        Height = 21
        TabStop = False
        Color = 13882323
        DataField = 'USU_SALABE1'
        DataSource = DsCoresBaixaCorteInd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBESalAbe2: TDBEdit
        Left = 616
        Top = 1
        Width = 70
        Height = 21
        TabStop = False
        Color = 13882323
        DataField = 'USU_SALABE2'
        DataSource = DsCoresBaixaCorteInd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
    end
  end
  object BConfirma: TBitBtn
    Left = 565
    Top = 482
    Width = 75
    Height = 25
    Caption = 'Confirma'
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
    TabOrder = 2
    OnClick = BConfirmaClick
  end
  object BCancela: TBitBtn
    Left = 646
    Top = 481
    Width = 75
    Height = 25
    Caption = 'Cancela'
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
    TabOrder = 3
    TabStop = False
    OnClick = BCancelaClick
  end
  object DsCoresBaixaCorteInd: TDataSource
    DataSet = Dm1.ClientCoresBaixaCorteInd
    Left = 456
    Top = 16
  end
end
