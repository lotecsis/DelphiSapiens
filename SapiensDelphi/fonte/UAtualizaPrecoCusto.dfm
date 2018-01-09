object FAtualizaPrecoCusto: TFAtualizaPrecoCusto
  Left = 0
  Top = 0
  Caption = 'Atualiza Pre'#231'o de Custo'
  ClientHeight = 564
  ClientWidth = 661
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
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 46
    Height = 13
    Caption = 'Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 179
    Top = 16
    Width = 7
    Height = 13
    Caption = #224
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 11
    Top = 37
    Width = 183
    Height = 13
    Caption = 'Produtos que foram atualizados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LDsAcao: TLabel
    Left = 11
    Top = 532
    Width = 3
    Height = 13
  end
  object LDsProduto: TLabel
    Left = 10
    Top = 546
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 344
    Top = 16
    Width = 67
    Height = 13
    Caption = 'Custo Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 56
    Width = 647
    Height = 475
    DataSource = DsConsUsu_TSalCus
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
        FieldName = 'USU_CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 260
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'Deriva'#231#227'o'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CUSATU'
        Title.Alignment = taCenter
        Title.Caption = 'Custo Atual'
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRECUS'
        Title.Alignment = taCenter
        Title.Caption = 'Custo Ajustado'
        Width = 95
        Visible = True
      end>
  end
  object BAtualiza: TBitBtn
    Left = 573
    Top = 534
    Width = 80
    Height = 25
    Caption = 'Atualizar'
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
    TabOrder = 1
    OnClick = BAtualizaClick
  end
  object EdDatIni: TDateEdit
    Left = 68
    Top = 8
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object EdDatFim: TDateEdit
    Left = 199
    Top = 8
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object EdCusTot: TCurrencyEdit
    Left = 418
    Top = 8
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = ' ,0.00;- ,0.00'
    TabOrder = 4
  end
  object ConsUsu_TSalCus: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select usu_tsalcus.*, e075pro.despro, e075der.precus'
      '                                        from usu_tsalcus'
      'inner join e075pro on e075pro.codpro = usu_tsalcus.usu_codpro'
      
        'inner join e075der on e075der.codpro = usu_tsalcus.usu_codpro an' +
        'd'
      '                      e075der.codder = usu_tsalcus.usu_codder'
      
        '                      order by usu_tsalcus.usu_codpro,usu_tsalcu' +
        's.usu_codder')
    Left = 584
    Top = 144
    object ConsUsu_TSalCusUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TSalCusUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TSalCusUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ConsUsu_TSalCusUSU_PREUNI: TBCDField
      FieldName = 'USU_PREUNI'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TSalCusUSU_PRETOT: TBCDField
      FieldName = 'USU_PRETOT'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TSalCusUSU_PERREP: TBCDField
      FieldName = 'USU_PERREP'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TSalCusDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsUsu_TSalCusPRECUS: TFMTBCDField
      FieldName = 'PRECUS'
      Precision = 15
      Size = 6
    end
    object ConsUsu_TSalCusUSU_CUSATU: TBCDField
      FieldName = 'USU_CUSATU'
      Precision = 11
      Size = 2
    end
  end
  object DsConsUsu_TSalCus: TDataSource
    DataSet = ConsUsu_TSalCus
    Left = 464
    Top = 134
  end
  object ApagaUsu_TSalCus: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usu_tsalcus')
    Left = 368
    Top = 456
    object ApagaUsu_TSalCusUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ApagaUsu_TSalCusUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ApagaUsu_TSalCusUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ApagaUsu_TSalCusUSU_PREUNI: TBCDField
      FieldName = 'USU_PREUNI'
      Precision = 11
      Size = 2
    end
    object ApagaUsu_TSalCusUSU_PRETOT: TBCDField
      FieldName = 'USU_PRETOT'
      Precision = 11
      Size = 2
    end
    object ApagaUsu_TSalCusUSU_PERREP: TBCDField
      FieldName = 'USU_PERREP'
      Precision = 11
      Size = 2
    end
    object ApagaUsu_TSalCusUSU_CUSATU: TBCDField
      FieldName = 'USU_CUSATU'
      Precision = 11
      Size = 2
    end
  end
  object ConsE140Ipv: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'datini'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'datfim'
        DataType = ftDateTime
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
      'select e140ipv.codpro,e140ipv.codder,e140ipv.preuni,'
      '       e140nfv.datemi,'
      '       e001tns.venfat'
      '       from e140ipv'
      'inner join e140nfv on e140nfv.codemp = e140ipv.codemp and'
      '                      e140nfv.codfil = e140ipv.codfil and'
      '                      e140nfv.codsnf = e140ipv.codsnf and'
      '                      e140nfv.numnfv = e140ipv.numnfv'
      'inner join e001tns on e001tns.codemp = e140ipv.codemp and'
      '                      e001tns.codtns = e140ipv.tnspro'
      '                                               where'
      
        '                                               e140nfv.datemi be' +
        'tween :datini and :datfim and'
      
        '                                               e140ipv.codpro = ' +
        ':codpro and'
      
        '                                               e140ipv.codder = ' +
        ':codder and'
      
        '                                               e001tns.venfat in' +
        ' ('#39'S'#39','#39'N'#39')'
      
        '                                               order by e140ipv.' +
        'preuni desc')
    Left = 248
    Top = 456
    object ConsE140IpvCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE140IpvCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE140IpvPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsE140IpvDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE140IpvVENFAT: TStringField
      FieldName = 'VENFAT'
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
      'select codpro,codder,precus from e075der where'
      '                        codpro = :codpro and'
      '                        codder = :codder')
    Left = 128
    Top = 464
    object ConsE075DerCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE075DerCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE075DerPRECUS: TFMTBCDField
      FieldName = 'PRECUS'
      Precision = 15
      Size = 6
    end
  end
end
