object FDiferencaCorteTecido: TFDiferencaCorteTecido
  Left = 0
  Top = 0
  Caption = 'Lan'#231'amentos de Corte Manual'
  ClientHeight = 229
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 538
    Height = 229
    ActivePage = TbCadastro
    Align = alClient
    TabOrder = 0
    object TbCadastro: TTabSheet
      Caption = 'Cadastro'
      object Label3: TLabel
        Left = 38
        Top = 22
        Width = 36
        Height = 13
        Caption = 'Carga:'
        FocusControl = EdNumAne
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 34
        Top = 54
        Width = 40
        Height = 13
        Caption = 'Tecido:'
        FocusControl = EdCodPro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 6
        Top = 86
        Width = 68
        Height = 13
        Caption = 'Quantidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 44
        Top = 147
        Width = 30
        Height = 13
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 32
        Top = 116
        Width = 42
        Height = 13
        Caption = 'Motivo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdNumAne: TDBEdit
        Left = 81
        Top = 16
        Width = 100
        Height = 21
        DataField = 'USU_NUMANE'
        DataSource = DsCadUsu_TDifTec
        TabOrder = 0
        OnExit = EdNumAneExit
      end
      object EdCodPro: TDBEdit
        Left = 81
        Top = 46
        Width = 100
        Height = 21
        DataField = 'USU_CODPRO'
        DataSource = DsCadUsu_TDifTec
        TabOrder = 1
        OnExit = EdCodProExit
      end
      object EdDatMov: TDBDateEdit
        Left = 81
        Top = 141
        Width = 100
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabStop = False
        DataField = 'USU_DATMOV'
        DataSource = DsCadUsu_TDifTec
        ReadOnly = True
        NumGlyphs = 2
        TabOrder = 6
      end
      object BProcessa: TBitBtn
        Left = 215
        Top = 173
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
        TabOrder = 4
        OnClick = BProcessaClick
      end
      object BExcluir: TBitBtn
        Left = 427
        Top = 173
        Width = 100
        Height = 25
        Caption = 'Excluir'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          ADE4FF4FC5FF26B7FF26B7FF26B7FF26B7FF26B7FF26B7FF26B7FF26B7FF4FC5
          FFADE4FFFFFFFFFFFFFFFFFFFFFFFFFF34BCFF25B5FF34BDFF64D4FF77DCFF6E
          DCFF61DDFF67E1FF64DFFF44CFFF32C2FF34BCFFFFFFFFFFFFFFFFFFFFFFFFFF
          26B7FF4EC8FF64D4FF9EE8FFB8F0FFA5EEFF8CECFF90EEFF8DEDFF70E1FF33C2
          FF26B7FFFFFFFFFFFFFFFFFFFFFFFFFF26B7FF73D6FF61D3FF9AE6FFB5EFFF9E
          EBFF2034AB0202930202930202930202930202930202933232A7FFFFFFFFFFFF
          26B7FF8CDEFF5ED3FF96E5FFB0EDFF97E8FF0A0A987272F37575F46C6CF43E3E
          E31616C50303AA020293FFFFFFFFFFFF26B7FFA5E5FF59D2FF91E4FFABEAFF8E
          E4FF1C32AB0A0A980A0A980A0A980A0A980A0A980A0A983232A7FFFFFFFFFFFF
          26B7FFBEECFF5ED4FF8CE3FFA6EAFF85E1FF59D7FF58D6FF56D6FF46CDFF4CC8
          FF26B7FFFFFFFFFFFFFFFFFFFFFFFFFF2FBAFF96DEFFC2EDFFD2F4FFD5F5FFD4
          F5FFD2F4FFD2F4FFD2F4FFCEF1FF92DDFF2FBAFFFFFFFFFFFFFFFFFFFFFFFFFF
          2FBAFF22B4FF2FBDFF4ACBFF58D3FF56D5FF51D8FF57DCFF54DAFF42CEFF2DC0
          FF2FBAFFFFFFFFFFFFFFFFFFFFFFFFFF26B7FF47C4FF62D3FF9DE8FFB9F0FFA6
          EEFF8EECFF92EFFF8FEDFF71E2FF33C3FF27BBFFFFFFFFFFFFFFFFFFFFFFFFFF
          26B7FF70D5FF60D3FF9AE6FFB6EFFFA0ECFF83E7FF85E9FF82E8FF68DEFF32C1
          FF27BBFFFFFFFFFFFFFFFFFFFFFFFFFF26B7FF88DCFF5DD2FF96E5FFB1EDFF99
          E9FF77E2FF76E3FF74E2FF5ED9FF2EBEFF27BBFFFFFFFFFFFFFFFFFFFFFFFFFF
          26B7FFA1E4FF59D2FF91E3FFACEBFF90E5FF69DDFF68DDFF67DDFF53D3FF29BA
          FF27BBFFFFFFFFFFFFFFFFFFFFFFFFFF26B7FFBAEBFF54D2FF8CE3FFA7E9FF88
          E2FF5CD7FF5AD7FF58D7FF48CEFF39C0FF27BBFFFFFFFFFFFFFFFFFFFFFFFFFF
          34BCFFABE5FFC6F0FFC1F0FFCBF3FFC1F0FFB3ECFFB2ECFFB1ECFFBDEEFFA0E4
          FF37BEFFFFFFFFFFFFFFFFFFFFFFFFFFADE4FF4FC5FF26B7FF26B7FF26B7FF26
          B7FF26B7FF26B7FF26B7FF26B7FF41C0FFADE4FFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 7
        TabStop = False
      end
      object BNovo: TBitBtn
        Left = 109
        Top = 173
        Width = 100
        Height = 25
        Caption = 'Novo'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFF6A6A6A6A6A6A6969696868686767676767676666666565656565
          65646464FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7AF7F7F798A9CBEF
          EFEFEFEFEFEFEFEFEEEEEEEEEEEEF6F6F6757575FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF8888887D7D7E98A9CBD9B08CD9B08CD9B08CD9B08CD9B08CD9B0
          8C838383FFFFFFFFFFFFFFFFFF6A6A6A6A6A6A636363939393F3F3F398A9CBE7
          E7E7E7E7E7E7E7E7E6E6E6E3E3E3F0F0F0909090FFFFFFFFFFFFFFFFFF7A7A7A
          F7F7F78E96AA9D9D9DD9B08C98A9CBD9B08CD9B08CD9B08CD9B08CD9B08CD9B0
          8C999999FFFFFFFFFFFFFFFFFF8888887D7D7E8E96AAA3A3A3F6F6F698A9CBEF
          EFEFEFEFEFEFEFEFEEEEEEEBEBEBF4F4F4A0A0A0FFFFFFFFFFFFFFFFFF939393
          F3F3F38E96AAA7A7A77D7D7E98A9CBD9B08CD9B08CD9B08CD9B08CD9B08CD9B0
          8CA6A6A6FFFFFFFFFFFFFFFFFF9D9D9DD9B08C8E96AAABABABFAFAFA98A9CBF6
          F6F6F6F6F6F4F4F4F3F3F3F2F2F2F7F7F7AAAAAAFFFFFFFFFFFFFFFFFFA3A3A3
          F6F6F68E96AAADADADD9B08C98A9CBD9B08CD9B08CD9B08CD9B08CD9B08CD9B0
          8CACACACFFFFFFFFFFFFFFFFFFA7A7A77D7D7E8E96AAADADADFBFBFB98A9CBFA
          FAFAFAFAFAF8F8F8A5A5A5A5A5A5BFBFBFADADADFFFFFFFFFFFFFFFFFFABABAB
          FAFAFA8E96AAAFAFAF7D7D7E98A9CBD9B08CD9B08CD9B08CA5A5A5F2F2F2C9C9
          C9BEBEBEFFFFFFFFFFFFFFFFFFADADADD9B08C8E96AAAFAFAFFEFEFE98A9CBFE
          FEFEFEFEFEFCFCFCBBBBBBBDBDBDBEBEBEFAFAFAFFFFFFFFFFFFFFFFFFADADAD
          FBFBFB8E96AAAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFBEBEBEFAFA
          FAFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7D7D7E8E96AAB5AAA0B5AAA0B5AAA0B5
          AAA0A5A5A5B8B8B8BEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF
          FEFEFE98A9CBFEFEFEFEFEFEFCFCFCFBFBFBBDBDBDBEBEBEFAFAFAFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF
          AFAFBEBEBEFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 5
        OnClick = BNovoClick
      end
      object BCancela: TBitBtn
        Left = 321
        Top = 173
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
      object EdQtdMov: TCurrencyEdit
        Left = 81
        Top = 78
        Width = 100
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DisplayFormat = ' ,0.00;- ,0.00'
        TabOrder = 2
      end
      object CbMotMov: TComboBox
        Left = 80
        Top = 110
        Width = 369
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 3
        Items.Strings = (
          'PERCA PROCESSO DE PRODUCAO'
          'ASSISTENCIA TECNICA'
          'PRODUCAO REGIAO'
          'PROTOTIPOS')
      end
    end
    object TbConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
    end
  end
  object CadUsu_TDifTec: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    BeforePost = CadUsu_TDifTecBeforePost
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqmov'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tdiftec where usu_numane = :numane and'
      '                                usu_seqmov = :seqmov')
    Left = 464
    Top = 32
    object CadUsu_TDifTecUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUsu_TDifTecUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadUsu_TDifTecUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object CadUsu_TDifTecUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
    object CadUsu_TDifTecUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TDifTecUSU_QTDMOV: TBCDField
      FieldName = 'USU_QTDMOV'
      Precision = 11
      Size = 2
    end
    object CadUsu_TDifTecUSU_DATMOV: TDateTimeField
      FieldName = 'USU_DATMOV'
    end
    object CadUsu_TDifTecUSU_SEQLOG: TIntegerField
      FieldName = 'USU_SEQLOG'
    end
    object CadUsu_TDifTecUSU_CODPROLOG: TStringField
      FieldName = 'USU_CODPROLOG'
      Size = 14
    end
    object CadUsu_TDifTecUSU_MOTMOV: TStringField
      FieldName = 'USU_MOTMOV'
      Size = 100
    end
  end
  object DsCadUsu_TDifTec: TDataSource
    AutoEdit = False
    DataSet = CadUsu_TDifTec
    OnStateChange = DsCadUsu_TDifTecStateChange
    Left = 360
    Top = 32
  end
  object ConsSeqUsu_TDiTec: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usu_tdiftec order by usu_seqmov desc')
    Left = 456
    Top = 88
    object ConsSeqUsu_TDiTecUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
  end
  object ValidaTecido: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e075pro where codpro = :codpro')
    Left = 344
    Top = 80
    object ValidaTecidoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ValidaTecidoSITPRO: TStringField
      FieldName = 'SITPRO'
      Size = 1
    end
  end
  object ValidaCarga: TADOQuery
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
    Left = 288
    Top = 40
    object ValidaCargaUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ValidaCargaUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object ValidaCargaUSU_HORIMP: TIntegerField
      FieldName = 'USU_HORIMP'
    end
    object ValidaCargaUSU_USUIMP: TIntegerField
      FieldName = 'USU_USUIMP'
    end
    object ValidaCargaUSU_CARPRO: TStringField
      FieldName = 'USU_CARPRO'
      Size = 1
    end
  end
end