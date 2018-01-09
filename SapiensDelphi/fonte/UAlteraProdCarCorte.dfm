object FAlteraProdCarCorte: TFAlteraProdCarCorte
  Left = 267
  Top = 209
  Caption = 'Altera Produtos '
  ClientHeight = 234
  ClientWidth = 556
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 556
    Height = 234
    ActivePage = TbMovimento
    Align = alClient
    TabOrder = 0
    object TbMovimento: TTabSheet
      Caption = 'Movimento'
      object Label1: TLabel
        Left = 40
        Top = 17
        Width = 34
        Height = 13
        Caption = 'Carga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 29
        Top = 49
        Width = 45
        Height = 13
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 15
        Top = 81
        Width = 59
        Height = 13
        Caption = 'Deriva'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 113
        Width = 66
        Height = 13
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 145
        Width = 58
        Height = 13
        Caption = 'Tip.Comb.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 36
        Top = 177
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
      object Label7: TLabel
        Left = 242
        Top = 180
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
      object LDsProduto: TLabel
        Left = 212
        Top = 50
        Width = 5
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LDsTipComb: TLabel
        Left = 160
        Top = 146
        Width = 72
        Height = 13
        Caption = 'LDsTipComb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdCarga: TEdit
        Left = 82
        Top = 12
        Width = 121
        Height = 21
        TabOrder = 0
        OnExit = EdCargaExit
      end
      object EdProduto: TEdit
        Left = 82
        Top = 44
        Width = 121
        Height = 21
        TabOrder = 1
        OnExit = EdProdutoExit
      end
      object EdDerivacao: TEdit
        Left = 82
        Top = 76
        Width = 121
        Height = 21
        TabOrder = 2
        OnExit = EdDerivacaoExit
      end
      object EdQuantidade: TEdit
        Left = 82
        Top = 108
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object EdTipComb: TComboBox
        Left = 82
        Top = 140
        Width = 71
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 4
        Text = '1'
        OnChange = EdTipCombChange
        OnExit = EdTipCombExit
        Items.Strings = (
          '1'
          '2'
          '3')
      end
      object EdCor01: TEdit
        Left = 82
        Top = 172
        Width = 121
        Height = 21
        TabOrder = 5
        OnExit = EdCor01Exit
      end
      object EdCor02: TEdit
        Left = 290
        Top = 174
        Width = 121
        Height = 21
        TabOrder = 6
        OnExit = EdCor02Exit
      end
      object Processa: TBitBtn
        Left = 458
        Top = 176
        Width = 83
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
        OnClick = ProcessaClick
      end
      object RadioGroup1: TRadioGroup
        Left = 445
        Top = 3
        Width = 97
        Height = 79
        Caption = 'Op'#231#245'es'
        TabOrder = 8
      end
      object RInserir: TRadioButton
        Left = 458
        Top = 24
        Width = 73
        Height = 17
        Caption = 'Inserir'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        TabStop = True
      end
      object RExcluir: TRadioButton
        Left = 458
        Top = 51
        Width = 73
        Height = 17
        Caption = 'Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object BConsProd: TBitBtn
        Left = 185
        Top = 45
        Width = 19
        Height = 19
        Caption = '...'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 11
        OnClick = BConsProdClick
      end
    end
  end
  object ValidaCarga: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tcarpro where usu_numane = :numane')
    Left = 337
    Top = 65532
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
  object ValidaProduto: TADOQuery
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
      
        'select e075pro.codpro,e075pro.despro from e075pro where codpro =' +
        ' :codpro and'
      'codfam = '#39'01001'#39)
    Left = 369
    Top = 65532
    object ValidaProdutoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ValidaProdutoDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object ValidaDerivacao: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e084cmd where codder = :codder')
    Left = 409
    Top = 65532
    object ValidaDerivacaoCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ValidaDerivacaoCODMDP: TStringField
      FieldName = 'CODMDP'
      Size = 8
    end
    object ValidaDerivacaoCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ValidaDerivacaoSEQCMD: TIntegerField
      FieldName = 'SEQCMD'
    end
    object ValidaDerivacaoDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
    object ValidaDerivacaoABRDER: TStringField
      FieldName = 'ABRDER'
      Size = 40
    end
    object ValidaDerivacaoCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ValidaDerivacaoSITCMD: TStringField
      FieldName = 'SITCMD'
      Size = 1
    end
    object ValidaDerivacaoUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ValidaDerivacaoDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ValidaDerivacaoHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ValidaDerivacaoUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object ValidaDerivacaoDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ValidaDerivacaoHORALT: TIntegerField
      FieldName = 'HORALT'
    end
  end
  object ValidaCor: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select codpro from e075pro where codpro = :codpro')
    Left = 441
    Top = 65532
    object ValidaCorCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
  end
  object SeExisteUsu_TCarPro: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tcarpro where usu_numane = :numane')
    Left = 265
    object SeExisteUsu_TCarProUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object SeExisteUsu_TCarProUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object SeExisteUsu_TCarProUSU_HORIMP: TIntegerField
      FieldName = 'USU_HORIMP'
    end
    object SeExisteUsu_TCarProUSU_USUIMP: TIntegerField
      FieldName = 'USU_USUIMP'
    end
    object SeExisteUsu_TCarProUSU_CARPRO: TStringField
      FieldName = 'USU_CARPRO'
      Size = 1
    end
  end
  object SeExisteUsu_TProCar: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'numane'
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
      'select * from usu_tprocar where usu_numane = :numane and'
      '                                usu_codpro = :codpro and'
      '                                usu_codder = :codder')
    Left = 297
    object SeExisteUsu_TProCarUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object SeExisteUsu_TProCarUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object SeExisteUsu_TProCarUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object SeExisteUsu_TProCarUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object SeExisteUsu_TProCarUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object SeExisteUsu_TProCarUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object SeExisteUsu_TProCarUSU_PROCOR: TStringField
      FieldName = 'USU_PROCOR'
      Size = 1
    end
  end
  object SeExisteUsu_TCorCar: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'numane'
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
        Name = 'codcor1'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codcor2'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tcorcar.* from usu_tcorcar'
      '                     where'
      '                     usu_numane = :numane and'
      '                     usu_codpro = :codpro and'
      '                     usu_codder = :codder and'
      '                     usu_codcor1 = :codcor1 and'
      '                     usu_codcor2 = :codcor2')
    Left = 369
    Top = 64
    object SeExisteUsu_TCorCarUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object SeExisteUsu_TCorCarUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object SeExisteUsu_TCorCarUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object SeExisteUsu_TCorCarUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object SeExisteUsu_TCorCarUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object SeExisteUsu_TCorCarUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object SeExisteUsu_TCorCarUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object SeExisteUsu_TCorCarUSU_SALABE1: TBCDField
      FieldName = 'USU_SALABE1'
      Precision = 11
      Size = 2
    end
    object SeExisteUsu_TCorCarUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object SeExisteUsu_TCorCarUSU_SALABE2: TBCDField
      FieldName = 'USU_SALABE2'
      Precision = 11
      Size = 2
    end
    object SeExisteUsu_TCorCarUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object SeExisteUsu_TCorCarUSU_CORCOR: TStringField
      FieldName = 'USU_CORCOR'
      Size = 1
    end
    object SeExisteUsu_TCorCarUSU_SELITE: TStringField
      FieldName = 'USU_SELITE'
      Size = 1
    end
    object SeExisteUsu_TCorCarUSU_QTDCOR1: TBCDField
      FieldName = 'USU_QTDCOR1'
      Precision = 11
      Size = 2
    end
    object SeExisteUsu_TCorCarUSU_QTDCOR2: TBCDField
      FieldName = 'USU_QTDCOR2'
      Precision = 11
      Size = 2
    end
  end
end
