object FCancSaldoOc: TFCancSaldoOc
  Left = 0
  Top = 0
  Caption = 'Cancela Saldo de Ordens de Compra'
  ClientHeight = 481
  ClientWidth = 570
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
  object Label1: TLabel
    Left = 10
    Top = 7
    Width = 352
    Height = 13
    Caption = 'Cancelar saldo restante na ordem de compra dos itens abaixo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 28
    Width = 557
    Height = 415
    DataSource = DsClientUsu_TCanSal
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'USU_NUMOCP'
        Title.Alignment = taCenter
        Title.Caption = 'Ordem de Compra'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_SEQIPO'
        Title.Alignment = taCenter
        Title.Caption = 'Sequencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_QTDPED'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Pedido'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_QTDREC'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Recebido'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_QTDCAN'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'#224' Cancelar'
        Width = 100
        Visible = True
      end>
  end
  object BCancelaSaldo: TBitBtn
    Left = 452
    Top = 450
    Width = 113
    Height = 25
    Caption = 'Cancelar Saldo'
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
    TabOrder = 1
    OnClick = BCancelaSaldoClick
  end
  object ConsUsu_TCanSal: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usu_tcansal')
    Left = 312
    Top = 104
    object ConsUsu_TCanSalUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_TCanSalUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUsu_TCanSalUSU_NUMOCP: TIntegerField
      FieldName = 'USU_NUMOCP'
    end
    object ConsUsu_TCanSalUSU_SEQIPO: TIntegerField
      FieldName = 'USU_SEQIPO'
    end
    object ConsUsu_TCanSalUSU_DATCAN: TDateTimeField
      FieldName = 'USU_DATCAN'
    end
    object ConsUsu_TCanSalUSU_SALCAN: TStringField
      FieldName = 'USU_SALCAN'
      Size = 1
    end
    object ConsUsu_TCanSalUSU_USUCAN: TBCDField
      FieldName = 'USU_USUCAN'
      Precision = 10
      Size = 0
    end
    object ConsUsu_TCanSalUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TCanSalUSU_QTDPED: TBCDField
      FieldName = 'USU_QTDPED'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCanSalUSU_QTDREC: TBCDField
      FieldName = 'USU_QTDREC'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCanSalUSU_QTDCAN: TBCDField
      FieldName = 'USU_QTDCAN'
      Precision = 11
      Size = 2
    end
  end
  object ClientUsu_TCanSal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderUsu_TCanSal'
    Left = 312
    Top = 224
    object ClientUsu_TCanSalUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ClientUsu_TCanSalUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ClientUsu_TCanSalUSU_NUMOCP: TIntegerField
      FieldName = 'USU_NUMOCP'
    end
    object ClientUsu_TCanSalUSU_SEQIPO: TIntegerField
      FieldName = 'USU_SEQIPO'
    end
    object ClientUsu_TCanSalUSU_DATCAN: TDateTimeField
      FieldName = 'USU_DATCAN'
    end
    object ClientUsu_TCanSalUSU_SALCAN: TStringField
      FieldName = 'USU_SALCAN'
      Size = 1
    end
    object ClientUsu_TCanSalUSU_USUCAN: TBCDField
      FieldName = 'USU_USUCAN'
      Precision = 10
      Size = 0
    end
    object ClientUsu_TCanSalUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ClientUsu_TCanSalUSU_QTDPED: TBCDField
      FieldName = 'USU_QTDPED'
      Precision = 11
      Size = 2
    end
    object ClientUsu_TCanSalUSU_QTDREC: TBCDField
      FieldName = 'USU_QTDREC'
      Precision = 11
      Size = 2
    end
    object ClientUsu_TCanSalUSU_QTDCAN: TBCDField
      FieldName = 'USU_QTDCAN'
      Precision = 11
      Size = 2
    end
  end
  object ProviderUsu_TCanSal: TDataSetProvider
    DataSet = ConsUsu_TCanSal
    Left = 320
    Top = 176
  end
  object DsClientUsu_TCanSal: TDataSource
    DataSet = ClientUsu_TCanSal
    Left = 304
    Top = 280
  end
  object ConsUsu_TCanSal2: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usu_tcansal where usu_salcan = '#39'N'#39)
    Left = 424
    Top = 72
    object ConsUsu_TCanSal2USU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_TCanSal2USU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUsu_TCanSal2USU_NUMOCP: TIntegerField
      FieldName = 'USU_NUMOCP'
    end
    object ConsUsu_TCanSal2USU_SEQIPO: TIntegerField
      FieldName = 'USU_SEQIPO'
    end
    object ConsUsu_TCanSal2USU_DATCAN: TDateTimeField
      FieldName = 'USU_DATCAN'
    end
    object ConsUsu_TCanSal2USU_SALCAN: TStringField
      FieldName = 'USU_SALCAN'
      Size = 1
    end
    object ConsUsu_TCanSal2USU_USUCAN: TBCDField
      FieldName = 'USU_USUCAN'
      Precision = 10
      Size = 0
    end
    object ConsUsu_TCanSal2USU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TCanSal2USU_QTDPED: TBCDField
      FieldName = 'USU_QTDPED'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCanSal2USU_QTDREC: TBCDField
      FieldName = 'USU_QTDREC'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCanSal2USU_QTDCAN: TBCDField
      FieldName = 'USU_QTDCAN'
      Precision = 11
      Size = 2
    end
  end
  object ConsE420Ipo: TADOQuery
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
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numocp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e420ipo where codemp = :codemp and'
      '                            codfil = :codfil and'
      '                            numocp = :numocp and'
      '                            seqipo = :seqipo')
    Left = 440
    Top = 131
    object ConsE420IpoCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE420IpoCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE420IpoNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsE420IpoSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object ConsE420IpoTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE420IpoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE420IpoCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE420IpoCPLIPO: TStringField
      FieldName = 'CPLIPO'
      Size = 250
    end
    object ConsE420IpoPROFOR: TStringField
      FieldName = 'PROFOR'
      Size = 30
    end
    object ConsE420IpoDESFOR: TStringField
      FieldName = 'DESFOR'
      Size = 250
    end
    object ConsE420IpoUNIFOR: TStringField
      FieldName = 'UNIFOR'
      Size = 3
    end
    object ConsE420IpoCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE420IpoCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ConsE420IpoCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ConsE420IpoCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ConsE420IpoCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ConsE420IpoCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ConsE420IpoCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE420IpoCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object ConsE420IpoQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoQTDREC: TFMTBCDField
      FieldName = 'QTDREC'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE420IpoCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE420IpoPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object ConsE420IpoPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE420IpoPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE420IpoPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE420IpoPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConsE420IpoPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ConsE420IpoPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ConsE420IpoPERFUN: TBCDField
      FieldName = 'PERFUN'
      Precision = 4
      Size = 2
    end
    object ConsE420IpoDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ConsE420IpoCODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object ConsE420IpoNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object ConsE420IpoCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object ConsE420IpoCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ConsE420IpoCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConsE420IpoCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ConsE420IpoVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRBFU: TBCDField
      FieldName = 'VLRBFU'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRFUN: TBCDField
      FieldName = 'VLRFUN'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoACRFIN: TBCDField
      FieldName = 'ACRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoSITIPO: TIntegerField
      FieldName = 'SITIPO'
    end
    object ConsE420IpoCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE420IpoOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 1000
    end
    object ConsE420IpoSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsE420IpoFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object ConsE420IpoNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object ConsE420IpoDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object ConsE420IpoSEQCCP: TIntegerField
      FieldName = 'SEQCCP'
    end
    object ConsE420IpoINDEQI: TStringField
      FieldName = 'INDEQI'
      Size = 1
    end
    object ConsE420IpoUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE420IpoDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE420IpoHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE420IpoFILPED: TIntegerField
      FieldName = 'FILPED'
    end
    object ConsE420IpoNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE420IpoDATVLT: TDateTimeField
      FieldName = 'DATVLT'
    end
    object ConsE420IpoQTDFOR: TFMTBCDField
      FieldName = 'QTDFOR'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoPREFOR: TFMTBCDField
      FieldName = 'PREFOR'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ConsE420IpoDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ConsE420IpoCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ConsE420IpoFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ConsE420IpoPERIIM: TBCDField
      FieldName = 'PERIIM'
      Precision = 5
      Size = 2
    end
    object ConsE420IpoVLRBII: TBCDField
      FieldName = 'VLRBII'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRIIM: TBCDField
      FieldName = 'VLRIIM'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoSEQIOR: TIntegerField
      FieldName = 'SEQIOR'
    end
    object ConsE420IpoVLRBPI: TBCDField
      FieldName = 'VLRBPI'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRBCR: TBCDField
      FieldName = 'VLRBCR'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRCOR: TBCDField
      FieldName = 'VLRCOR'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoCODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object ConsE420IpoIDXGRD: TIntegerField
      FieldName = 'IDXGRD'
    end
    object ConsE420IpoPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object ConsE420IpoVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object ConsE420IpoVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ConsE420IpoVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ConsE420IpoVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ConsE420IpoVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoFILCES: TIntegerField
      FieldName = 'FILCES'
    end
    object ConsE420IpoDATCES: TDateTimeField
      FieldName = 'DATCES'
    end
    object ConsE420IpoSEQCES: TIntegerField
      FieldName = 'SEQCES'
    end
    object ConsE420IpoPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE420IpoPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE420IpoVLRORI: TBCDField
      FieldName = 'VLRORI'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoQTDORI: TFMTBCDField
      FieldName = 'QTDORI'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoVLRFEI: TBCDField
      FieldName = 'VLRFEI'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLRSEI: TBCDField
      FieldName = 'VLRSEI'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoVLROUI: TBCDField
      FieldName = 'VLROUI'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoBCOIMP: TBCDField
      FieldName = 'BCOIMP'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoCOFIMP: TBCDField
      FieldName = 'COFIMP'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoBPIIMP: TBCDField
      FieldName = 'BPIIMP'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoPISIMP: TBCDField
      FieldName = 'PISIMP'
      Precision = 15
      Size = 2
    end
    object ConsE420IpoSEQCPK: TIntegerField
      FieldName = 'SEQCPK'
    end
    object ConsE420IpoVLRDM1: TFMTBCDField
      FieldName = 'VLRDM1'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoVLRDM2: TFMTBCDField
      FieldName = 'VLRDM2'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoVLRDM3: TFMTBCDField
      FieldName = 'VLRDM3'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoVLRDM4: TFMTBCDField
      FieldName = 'VLRDM4'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoVLRDM5: TFMTBCDField
      FieldName = 'VLRDM5'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoVLRDM6: TFMTBCDField
      FieldName = 'VLRDM6'
      Precision = 14
      Size = 5
    end
    object ConsE420IpoBEMPRI: TStringField
      FieldName = 'BEMPRI'
    end
    object ConsE420IpoEMPPED: TIntegerField
      FieldName = 'EMPPED'
    end
    object ConsE420IpoEMPNFV: TIntegerField
      FieldName = 'EMPNFV'
    end
    object ConsE420IpoFILNFV: TIntegerField
      FieldName = 'FILNFV'
    end
    object ConsE420IpoSNFNFV: TStringField
      FieldName = 'SNFNFV'
      Size = 3
    end
    object ConsE420IpoNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object ConsE420IpoSEQIPV: TIntegerField
      FieldName = 'SEQIPV'
    end
    object ConsE420IpoCODTRG: TStringField
      FieldName = 'CODTRG'
      Size = 10
    end
    object ConsE420IpoPERBON: TBCDField
      FieldName = 'PERBON'
      Precision = 5
      Size = 2
    end
    object ConsE420IpoUSU_VLRMAX: TBCDField
      FieldName = 'USU_VLRMAX'
      Precision = 13
      Size = 2
    end
    object ConsE420IpoUSU_VLRMED: TBCDField
      FieldName = 'USU_VLRMED'
      Precision = 13
      Size = 2
    end
  end
  object CadE420Ipo: TADOQuery
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
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numocp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e420ipo where codemp = :codemp and'
      '                            codfil = :codfil and'
      '                            numocp = :numocp and'
      '                            seqipo = :seqipo')
    Left = 200
    Top = 104
    object CadE420IpoCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE420IpoCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE420IpoNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object CadE420IpoSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object CadE420IpoTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object CadE420IpoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object CadE420IpoCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object CadE420IpoCPLIPO: TStringField
      FieldName = 'CPLIPO'
      Size = 250
    end
    object CadE420IpoPROFOR: TStringField
      FieldName = 'PROFOR'
      Size = 30
    end
    object CadE420IpoDESFOR: TStringField
      FieldName = 'DESFOR'
      Size = 250
    end
    object CadE420IpoUNIFOR: TStringField
      FieldName = 'UNIFOR'
      Size = 3
    end
    object CadE420IpoCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object CadE420IpoCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object CadE420IpoCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object CadE420IpoCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object CadE420IpoCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object CadE420IpoCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object CadE420IpoCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object CadE420IpoCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object CadE420IpoQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object CadE420IpoQTDREC: TFMTBCDField
      FieldName = 'QTDREC'
      Precision = 14
      Size = 5
    end
    object CadE420IpoQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object CadE420IpoQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object CadE420IpoUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object CadE420IpoCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object CadE420IpoPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object CadE420IpoPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object CadE420IpoPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object CadE420IpoPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object CadE420IpoPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object CadE420IpoPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object CadE420IpoPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object CadE420IpoPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object CadE420IpoPERFUN: TBCDField
      FieldName = 'PERFUN'
      Precision = 4
      Size = 2
    end
    object CadE420IpoDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object CadE420IpoCODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object CadE420IpoNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object CadE420IpoCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object CadE420IpoCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object CadE420IpoCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object CadE420IpoCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object CadE420IpoVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBFU: TBCDField
      FieldName = 'VLRBFU'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRFUN: TBCDField
      FieldName = 'VLRFUN'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object CadE420IpoACRFIN: TBCDField
      FieldName = 'ACRFIN'
      Precision = 15
      Size = 2
    end
    object CadE420IpoSITIPO: TIntegerField
      FieldName = 'SITIPO'
    end
    object CadE420IpoCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object CadE420IpoOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 1000
    end
    object CadE420IpoSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object CadE420IpoFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object CadE420IpoNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object CadE420IpoDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object CadE420IpoSEQCCP: TIntegerField
      FieldName = 'SEQCCP'
    end
    object CadE420IpoINDEQI: TStringField
      FieldName = 'INDEQI'
      Size = 1
    end
    object CadE420IpoUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object CadE420IpoDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object CadE420IpoHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object CadE420IpoFILPED: TIntegerField
      FieldName = 'FILPED'
    end
    object CadE420IpoNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object CadE420IpoDATVLT: TDateTimeField
      FieldName = 'DATVLT'
    end
    object CadE420IpoQTDFOR: TFMTBCDField
      FieldName = 'QTDFOR'
      Precision = 14
      Size = 5
    end
    object CadE420IpoPREFOR: TFMTBCDField
      FieldName = 'PREFOR'
      Precision = 14
      Size = 5
    end
    object CadE420IpoCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object CadE420IpoDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object CadE420IpoCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object CadE420IpoFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object CadE420IpoPERIIM: TBCDField
      FieldName = 'PERIIM'
      Precision = 5
      Size = 2
    end
    object CadE420IpoVLRBII: TBCDField
      FieldName = 'VLRBII'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRIIM: TBCDField
      FieldName = 'VLRIIM'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object CadE420IpoSEQIOR: TIntegerField
      FieldName = 'SEQIOR'
    end
    object CadE420IpoVLRBPI: TBCDField
      FieldName = 'VLRBPI'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRBCR: TBCDField
      FieldName = 'VLRBCR'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRCOR: TBCDField
      FieldName = 'VLRCOR'
      Precision = 15
      Size = 2
    end
    object CadE420IpoCODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object CadE420IpoIDXGRD: TIntegerField
      FieldName = 'IDXGRD'
    end
    object CadE420IpoPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object CadE420IpoVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object CadE420IpoPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object CadE420IpoVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object CadE420IpoPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object CadE420IpoVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object CadE420IpoPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object CadE420IpoVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object CadE420IpoPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object CadE420IpoVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object CadE420IpoFILCES: TIntegerField
      FieldName = 'FILCES'
    end
    object CadE420IpoDATCES: TDateTimeField
      FieldName = 'DATCES'
    end
    object CadE420IpoSEQCES: TIntegerField
      FieldName = 'SEQCES'
    end
    object CadE420IpoPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object CadE420IpoPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object CadE420IpoVLRORI: TBCDField
      FieldName = 'VLRORI'
      Precision = 15
      Size = 2
    end
    object CadE420IpoQTDORI: TFMTBCDField
      FieldName = 'QTDORI'
      Precision = 14
      Size = 5
    end
    object CadE420IpoVLRFEI: TBCDField
      FieldName = 'VLRFEI'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLRSEI: TBCDField
      FieldName = 'VLRSEI'
      Precision = 15
      Size = 2
    end
    object CadE420IpoVLROUI: TBCDField
      FieldName = 'VLROUI'
      Precision = 15
      Size = 2
    end
    object CadE420IpoBCOIMP: TBCDField
      FieldName = 'BCOIMP'
      Precision = 15
      Size = 2
    end
    object CadE420IpoCOFIMP: TBCDField
      FieldName = 'COFIMP'
      Precision = 15
      Size = 2
    end
    object CadE420IpoBPIIMP: TBCDField
      FieldName = 'BPIIMP'
      Precision = 15
      Size = 2
    end
    object CadE420IpoPISIMP: TBCDField
      FieldName = 'PISIMP'
      Precision = 15
      Size = 2
    end
    object CadE420IpoSEQCPK: TIntegerField
      FieldName = 'SEQCPK'
    end
    object CadE420IpoVLRDM1: TFMTBCDField
      FieldName = 'VLRDM1'
      Precision = 14
      Size = 5
    end
    object CadE420IpoVLRDM2: TFMTBCDField
      FieldName = 'VLRDM2'
      Precision = 14
      Size = 5
    end
    object CadE420IpoVLRDM3: TFMTBCDField
      FieldName = 'VLRDM3'
      Precision = 14
      Size = 5
    end
    object CadE420IpoVLRDM4: TFMTBCDField
      FieldName = 'VLRDM4'
      Precision = 14
      Size = 5
    end
    object CadE420IpoVLRDM5: TFMTBCDField
      FieldName = 'VLRDM5'
      Precision = 14
      Size = 5
    end
    object CadE420IpoVLRDM6: TFMTBCDField
      FieldName = 'VLRDM6'
      Precision = 14
      Size = 5
    end
    object CadE420IpoBEMPRI: TStringField
      FieldName = 'BEMPRI'
    end
    object CadE420IpoEMPPED: TIntegerField
      FieldName = 'EMPPED'
    end
    object CadE420IpoEMPNFV: TIntegerField
      FieldName = 'EMPNFV'
    end
    object CadE420IpoFILNFV: TIntegerField
      FieldName = 'FILNFV'
    end
    object CadE420IpoSNFNFV: TStringField
      FieldName = 'SNFNFV'
      Size = 3
    end
    object CadE420IpoNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
    object CadE420IpoSEQIPV: TIntegerField
      FieldName = 'SEQIPV'
    end
    object CadE420IpoCODTRG: TStringField
      FieldName = 'CODTRG'
      Size = 10
    end
    object CadE420IpoPERBON: TBCDField
      FieldName = 'PERBON'
      Precision = 5
      Size = 2
    end
    object CadE420IpoUSU_VLRMAX: TBCDField
      FieldName = 'USU_VLRMAX'
      Precision = 13
      Size = 2
    end
    object CadE420IpoUSU_VLRMED: TBCDField
      FieldName = 'USU_VLRMED'
      Precision = 13
      Size = 2
    end
  end
  object CadE420Ocp: TADOQuery
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
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numocp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e420ocp where'
      '                      codemp = :codemp and'
      '                      codfil = :codfil and'
      '                      numocp = :numocp')
    Left = 112
    Top = 104
    object CadE420OcpCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE420OcpCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE420OcpNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object CadE420OcpTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object CadE420OcpTNSSER: TStringField
      FieldName = 'TNSSER'
      Size = 5
    end
    object CadE420OcpDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object CadE420OcpCODUSU: TBCDField
      FieldName = 'CODUSU'
      Precision = 10
      Size = 0
    end
    object CadE420OcpCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object CadE420OcpSEQCTO: TIntegerField
      FieldName = 'SEQCTO'
    end
    object CadE420OcpPEDFOR: TStringField
      FieldName = 'PEDFOR'
      Size = 12
    end
    object CadE420OcpOBSOCP: TStringField
      FieldName = 'OBSOCP'
      Size = 250
    end
    object CadE420OcpCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object CadE420OcpCODFPG: TIntegerField
      FieldName = 'CODFPG'
    end
    object CadE420OcpCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object CadE420OcpDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object CadE420OcpCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object CadE420OcpFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object CadE420OcpCODFCR: TStringField
      FieldName = 'CODFCR'
      Size = 3
    end
    object CadE420OcpDATFCR: TDateTimeField
      FieldName = 'DATFCR'
    end
    object CadE420OcpQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object CadE420OcpCODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object CadE420OcpCODRED: TIntegerField
      FieldName = 'CODRED'
    end
    object CadE420OcpVLRFUM: TBCDField
      FieldName = 'VLRFUM'
      Precision = 15
      Size = 2
    end
    object CadE420OcpQTDFRE: TFMTBCDField
      FieldName = 'QTDFRE'
      Precision = 14
      Size = 5
    end
    object CadE420OcpFORFRE: TIntegerField
      FieldName = 'FORFRE'
    end
    object CadE420OcpPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object CadE420OcpPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object CadE420OcpPERFIN: TBCDField
      FieldName = 'PERFIN'
      Precision = 4
      Size = 2
    end
    object CadE420OcpVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object CadE420OcpCIFFOB: TStringField
      FieldName = 'CIFFOB'
      Size = 1
    end
    object CadE420OcpVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBPR: TBCDField
      FieldName = 'VLRBPR'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRDPR: TBCDField
      FieldName = 'VLRDPR'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBSE: TBCDField
      FieldName = 'VLRBSE'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRDSE: TBCDField
      FieldName = 'VLRDSE'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBFU: TBCDField
      FieldName = 'VLRBFU'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRFUN: TBCDField
      FieldName = 'VLRFUN'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRSIC: TBCDField
      FieldName = 'VLRSIC'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBIS: TBCDField
      FieldName = 'VLRBIS'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBIN: TBCDField
      FieldName = 'VLRBIN'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRINS: TBCDField
      FieldName = 'VLRINS'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRLSE: TBCDField
      FieldName = 'VLRLSE'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object CadE420OcpTEMPAR: TStringField
      FieldName = 'TEMPAR'
      Size = 1
    end
    object CadE420OcpCODPOR: TStringField
      FieldName = 'CODPOR'
      Size = 4
    end
    object CadE420OcpCODCRT: TStringField
      FieldName = 'CODCRT'
      Size = 2
    end
    object CadE420OcpROTNAP: TIntegerField
      FieldName = 'ROTNAP'
    end
    object CadE420OcpFILAPR: TIntegerField
      FieldName = 'FILAPR'
    end
    object CadE420OcpNUMAPR: TBCDField
      FieldName = 'NUMAPR'
      Precision = 10
      Size = 0
    end
    object CadE420OcpSITAPR: TStringField
      FieldName = 'SITAPR'
      Size = 3
    end
    object CadE420OcpSITOCP: TIntegerField
      FieldName = 'SITOCP'
    end
    object CadE420OcpCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object CadE420OcpOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 1000
    end
    object CadE420OcpFILPED: TIntegerField
      FieldName = 'FILPED'
    end
    object CadE420OcpNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object CadE420OcpVERCAL: TIntegerField
      FieldName = 'VERCAL'
    end
    object CadE420OcpUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object CadE420OcpDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object CadE420OcpHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object CadE420OcpPRCOCP: TIntegerField
      FieldName = 'PRCOCP'
    end
    object CadE420OcpPERPRG: TIntegerField
      FieldName = 'PERPRG'
    end
    object CadE420OcpPERFRE: TBCDField
      FieldName = 'PERFRE'
      Precision = 5
      Size = 2
    end
    object CadE420OcpPERSEG: TBCDField
      FieldName = 'PERSEG'
      Precision = 5
      Size = 2
    end
    object CadE420OcpPEREMB: TBCDField
      FieldName = 'PEREMB'
      Precision = 5
      Size = 2
    end
    object CadE420OcpPERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
    object CadE420OcpPEROUT: TBCDField
      FieldName = 'PEROUT'
      Precision = 5
      Size = 2
    end
    object CadE420OcpSEQORM: TIntegerField
      FieldName = 'SEQORM'
    end
    object CadE420OcpUSUFEC: TBCDField
      FieldName = 'USUFEC'
      Precision = 10
      Size = 0
    end
    object CadE420OcpDATFEC: TDateTimeField
      FieldName = 'DATFEC'
    end
    object CadE420OcpHORFEC: TIntegerField
      FieldName = 'HORFEC'
    end
    object CadE420OcpTIPINT: TIntegerField
      FieldName = 'TIPINT'
    end
    object CadE420OcpVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object CadE420OcpCODMFR: TStringField
      FieldName = 'CODMFR'
      Size = 3
    end
    object CadE420OcpDATMFR: TDateTimeField
      FieldName = 'DATMFR'
    end
    object CadE420OcpCOTMFR: TFMTBCDField
      FieldName = 'COTMFR'
      Precision = 19
      Size = 10
    end
    object CadE420OcpVLRBII: TBCDField
      FieldName = 'VLRBII'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRIIM: TBCDField
      FieldName = 'VLRIIM'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBPI: TBCDField
      FieldName = 'VLRBPI'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRBCR: TBCDField
      FieldName = 'VLRBCR'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRCOR: TBCDField
      FieldName = 'VLRCOR'
      Precision = 15
      Size = 2
    end
    object CadE420OcpPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object CadE420OcpPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object CadE420OcpPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object CadE420OcpVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object CadE420OcpVLRORI: TBCDField
      FieldName = 'VLRORI'
      Precision = 15
      Size = 2
    end
    object CadE420OcpQTDORI: TFMTBCDField
      FieldName = 'QTDORI'
      Precision = 14
      Size = 5
    end
    object CadE420OcpVLRFEI: TBCDField
      FieldName = 'VLRFEI'
      Precision = 15
      Size = 2
    end
    object CadE420OcpMOEFEI: TStringField
      FieldName = 'MOEFEI'
      Size = 3
    end
    object CadE420OcpDATFEI: TDateTimeField
      FieldName = 'DATFEI'
    end
    object CadE420OcpCOTFEI: TFMTBCDField
      FieldName = 'COTFEI'
      Precision = 19
      Size = 10
    end
    object CadE420OcpVLRSEI: TBCDField
      FieldName = 'VLRSEI'
      Precision = 15
      Size = 2
    end
    object CadE420OcpMOESEI: TStringField
      FieldName = 'MOESEI'
      Size = 3
    end
    object CadE420OcpDATSEI: TDateTimeField
      FieldName = 'DATSEI'
    end
    object CadE420OcpCOTSEI: TFMTBCDField
      FieldName = 'COTSEI'
      Precision = 19
      Size = 10
    end
    object CadE420OcpVLROUI: TBCDField
      FieldName = 'VLROUI'
      Precision = 15
      Size = 2
    end
    object CadE420OcpMOEOUI: TStringField
      FieldName = 'MOEOUI'
      Size = 3
    end
    object CadE420OcpDATOUI: TDateTimeField
      FieldName = 'DATOUI'
    end
    object CadE420OcpCOTOUI: TFMTBCDField
      FieldName = 'COTOUI'
      Precision = 19
      Size = 10
    end
    object CadE420OcpBCOIMP: TBCDField
      FieldName = 'BCOIMP'
      Precision = 15
      Size = 2
    end
    object CadE420OcpCOFIMP: TBCDField
      FieldName = 'COFIMP'
      Precision = 15
      Size = 2
    end
    object CadE420OcpBPIIMP: TBCDField
      FieldName = 'BPIIMP'
      Precision = 15
      Size = 2
    end
    object CadE420OcpPISIMP: TBCDField
      FieldName = 'PISIMP'
      Precision = 15
      Size = 2
    end
    object CadE420OcpSOMFRE: TStringField
      FieldName = 'SOMFRE'
      Size = 1
    end
    object CadE420OcpCODSAF: TStringField
      FieldName = 'CODSAF'
      Size = 10
    end
    object CadE420OcpSALCAN: TStringField
      FieldName = 'SALCAN'
      Size = 1
    end
    object CadE420OcpOBRCTR: TStringField
      FieldName = 'OBRCTR'
      Size = 1
    end
  end
  object CadUsu_TCanSal: TADOQuery
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
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numocp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tcansal where'
      '                          usu_codemp = :codemp and'
      '                          usu_codfil = :codfil and'
      '                          usu_numocp = :numocp and'
      '                          usu_seqipo = :seqipo')
    Left = 80
    Top = 192
    object CadUsu_TCanSalUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUsu_TCanSalUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadUsu_TCanSalUSU_NUMOCP: TIntegerField
      FieldName = 'USU_NUMOCP'
    end
    object CadUsu_TCanSalUSU_SEQIPO: TIntegerField
      FieldName = 'USU_SEQIPO'
    end
    object CadUsu_TCanSalUSU_DATCAN: TDateTimeField
      FieldName = 'USU_DATCAN'
    end
    object CadUsu_TCanSalUSU_SALCAN: TStringField
      FieldName = 'USU_SALCAN'
      Size = 1
    end
    object CadUsu_TCanSalUSU_USUCAN: TBCDField
      FieldName = 'USU_USUCAN'
      Precision = 10
      Size = 0
    end
  end
end
