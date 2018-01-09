object FAltCoresProdPed: TFAltCoresProdPed
  Left = 398
  Top = 216
  Caption = 'Cores'
  ClientHeight = 299
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 65
    Top = 124
    Width = 30
    Height = 13
    Caption = 'Tipo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 53
    Top = 154
    Width = 42
    Height = 13
    Caption = 'Cor 01:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 53
    Top = 182
    Width = 42
    Height = 13
    Caption = 'Cor 02:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 27
    Top = 95
    Width = 68
    Height = 13
    Caption = 'Qtd.Pedida:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 6
    Top = 211
    Width = 89
    Height = 13
    Caption = 'Qtd.Cancelada:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 29
    Top = 239
    Width = 66
    Height = 13
    Caption = 'Qtd.Aberto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BPesCor01: TSpeedButton
    Left = 200
    Top = 148
    Width = 23
    Height = 20
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BPesCor01Click
  end
  object BPesCor02: TSpeedButton
    Left = 201
    Top = 175
    Width = 23
    Height = 20
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BPesCor02Click
  end
  object LDsTipCmb: TLabel
    Left = 211
    Top = 123
    Width = 3
    Height = 13
  end
  object EdTipCmb: TCurrencyEdit
    Left = 102
    Top = 117
    Width = 99
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taLeftJustify
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 1
    OnExit = EdTipCmbExit
  end
  object EdCor001: TCurrencyEdit
    Left = 102
    Top = 147
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taLeftJustify
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 2
    OnExit = EdCor001Exit
    OnKeyDown = EdCor001KeyDown
  end
  object EdCor002: TCurrencyEdit
    Left = 102
    Top = 175
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taLeftJustify
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 3
    OnExit = EdCor002Exit
  end
  object EdQtdPed: TCurrencyEdit
    Left = 102
    Top = 88
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taLeftJustify
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 0
    OnExit = EdQtdPedExit
  end
  object EdQtdCan: TCurrencyEdit
    Left = 102
    Top = 204
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taLeftJustify
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 4
    OnExit = EdQtdCanExit
  end
  object EdQtdAbe: TCurrencyEdit
    Left = 102
    Top = 232
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    Alignment = taLeftJustify
    AutoSize = False
    DisplayFormat = '0'
    ReadOnly = True
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 399
    Height = 77
    BevelOuter = bvLowered
    TabOrder = 6
    object Label7: TLabel
      Left = 28
      Top = 8
      Width = 44
      Height = 13
      Caption = 'Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 24
      Top = 29
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
    object Label10: TLabel
      Left = 6
      Top = 52
      Width = 68
      Height = 13
      Caption = 'Qtd.Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 139
      Top = 53
      Width = 66
      Height = 13
      Caption = 'Qtd.Aberto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LNumPed: TLabel
      Left = 79
      Top = 8
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LCodPro: TLabel
      Left = 79
      Top = 29
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LQtdPed: TLabel
      Left = 79
      Top = 53
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LQtdAbe: TLabel
      Left = 211
      Top = 53
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object BProcessa: TBitBtn
    Left = 185
    Top = 268
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
    TabOrder = 7
    OnClick = BProcessaClick
  end
  object BCancela: TBitBtn
    Left = 293
    Top = 268
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
    TabOrder = 8
    TabStop = False
    OnClick = BCancelaClick
  end
  object UltimoSeqIte: TADOQuery
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
      'select usu_seqite from usu_t120ipd where'
      '                          usu_codemp = :codemp and'
      '                          usu_codfil = :codfil and'
      '                          usu_numped = :numped and'
      '                          usu_seqipd = :seqipd'
      '                          order by usu_seqite desc')
    Left = 344
    Top = 96
    object UltimoSeqIteUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
  end
  object ValidaCor: TADOQuery
    Connection = Dm.ADOBanco
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
      end
      item
        Name = 'codtec'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tdercor where'
      '                          usu_codemp = :codemp and'
      '                          usu_codpro = :codpro and'
      '                          usu_codder = :codder and'
      '                          usu_codtec = :codtec and'
      '                          usu_sittec = '#39'A'#39)
    Left = 336
    Top = 216
    object ValidaCorUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ValidaCorUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ValidaCorUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ValidaCorUSU_CODTEC: TStringField
      FieldName = 'USU_CODTEC'
      Size = 14
    end
    object ValidaCorUSU_SITTEC: TStringField
      FieldName = 'USU_SITTEC'
      Size = 1
    end
    object ValidaCorUSU_DESTEC: TStringField
      FieldName = 'USU_DESTEC'
      Size = 50
    end
  end
  object ValidaTipCmb: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codtip'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_ttipcmb where usu_codtip = :codtip')
    Left = 344
    Top = 152
    object ValidaTipCmbUSU_CODTIP: TIntegerField
      FieldName = 'USU_CODTIP'
    end
    object ValidaTipCmbUSU_DESTIP: TStringField
      FieldName = 'USU_DESTIP'
      Size = 100
    end
    object ValidaTipCmbUSU_ABRTIP: TStringField
      FieldName = 'USU_ABRTIP'
      Size = 15
    end
  end
end
