object FAddItePreCarga: TFAddItePreCarga
  Left = 217
  Top = 194
  Caption = 'Adiciona Pedidos em Pr'#233'-Carga '
  ClientHeight = 152
  ClientWidth = 575
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 33
    Top = 16
    Width = 61
    Height = 13
    Caption = 'Pr'#233'-Carga:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 63
    Top = 42
    Width = 31
    Height = 13
    Caption = 'Filial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 50
    Top = 69
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
  object Label4: TLabel
    Left = 6
    Top = 96
    Width = 88
    Height = 13
    Caption = 'Representante:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LDscliente: TLabel
    Left = 225
    Top = 69
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LDsRepresentante: TLabel
    Left = 224
    Top = 96
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdPreCar: TEdit
    Left = 97
    Top = 8
    Width = 121
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 0
  end
  object EdFilial: TEdit
    Left = 97
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
    OnExit = EdFilialExit
  end
  object EdPedido: TEdit
    Left = 97
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 2
    OnExit = EdPedidoExit
  end
  object EdCodRep: TEdit
    Left = 97
    Top = 90
    Width = 121
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 3
  end
  object BProcessa: TBitBtn
    Left = 384
    Top = 123
    Width = 85
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
  object BCancela: TBitBtn
    Left = 483
    Top = 123
    Width = 85
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
    TabOrder = 5
    TabStop = False
    OnClick = BCancelaClick
  end
  object ValidaFilial: TADOQuery
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
      end>
    SQL.Strings = (
      'select * from e070fil where codemp = :codemp and'
      '                            codfil = :codfil')
    Left = 512
    object ValidaFilialCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ValidaFilialCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ValidaFilialNOMFIL: TStringField
      FieldName = 'NOMFIL'
      Size = 100
    end
    object ValidaFilialSIGFIL: TStringField
      FieldName = 'SIGFIL'
      Size = 30
    end
    object ValidaFilialINSEST: TStringField
      FieldName = 'INSEST'
      Size = 25
    end
    object ValidaFilialINSMUN: TStringField
      FieldName = 'INSMUN'
      Size = 16
    end
    object ValidaFilialNUMCGC: TBCDField
      FieldName = 'NUMCGC'
      Precision = 15
      Size = 0
    end
    object ValidaFilialENDFIL: TStringField
      FieldName = 'ENDFIL'
      Size = 100
    end
    object ValidaFilialNUMEND: TIntegerField
      FieldName = 'NUMEND'
    end
    object ValidaFilialCPLEND: TStringField
      FieldName = 'CPLEND'
    end
    object ValidaFilialCEPFIL: TIntegerField
      FieldName = 'CEPFIL'
    end
    object ValidaFilialCEPINI: TIntegerField
      FieldName = 'CEPINI'
    end
    object ValidaFilialCODRAI: TIntegerField
      FieldName = 'CODRAI'
    end
    object ValidaFilialBAIFIL: TStringField
      FieldName = 'BAIFIL'
      Size = 75
    end
    object ValidaFilialCIDFIL: TStringField
      FieldName = 'CIDFIL'
      Size = 60
    end
    object ValidaFilialSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ValidaFilialENDENT: TStringField
      FieldName = 'ENDENT'
      Size = 100
    end
    object ValidaFilialCPLENT: TStringField
      FieldName = 'CPLENT'
    end
    object ValidaFilialCEPENT: TIntegerField
      FieldName = 'CEPENT'
    end
    object ValidaFilialCIDENT: TStringField
      FieldName = 'CIDENT'
      Size = 60
    end
    object ValidaFilialESTENT: TStringField
      FieldName = 'ESTENT'
      Size = 2
    end
    object ValidaFilialENDCOB: TStringField
      FieldName = 'ENDCOB'
      Size = 100
    end
    object ValidaFilialCPLCOB: TStringField
      FieldName = 'CPLCOB'
    end
    object ValidaFilialCEPCOB: TIntegerField
      FieldName = 'CEPCOB'
    end
    object ValidaFilialCIDCOB: TStringField
      FieldName = 'CIDCOB'
      Size = 60
    end
    object ValidaFilialESTCOB: TStringField
      FieldName = 'ESTCOB'
      Size = 2
    end
    object ValidaFilialNUMFON: TStringField
      FieldName = 'NUMFON'
      Size = 14
    end
    object ValidaFilialNUMFAX: TStringField
      FieldName = 'NUMFAX'
      Size = 14
    end
    object ValidaFilialCXAPST: TIntegerField
      FieldName = 'CXAPST'
    end
    object ValidaFilialINTNET: TStringField
      FieldName = 'INTNET'
      Size = 100
    end
    object ValidaFilialTIPEMP: TIntegerField
      FieldName = 'TIPEMP'
    end
    object ValidaFilialFILCLI: TIntegerField
      FieldName = 'FILCLI'
    end
    object ValidaFilialFILFOR: TIntegerField
      FieldName = 'FILFOR'
    end
    object ValidaFilialPEDINI: TIntegerField
      FieldName = 'PEDINI'
    end
    object ValidaFilialZONFRA: TIntegerField
      FieldName = 'ZONFRA'
    end
    object ValidaFilialCODSUF: TStringField
      FieldName = 'CODSUF'
      Size = 10
    end
    object ValidaFilialDIFALI: TStringField
      FieldName = 'DIFALI'
      Size = 1
    end
    object ValidaFilialCRIFED: TIntegerField
      FieldName = 'CRIFED'
    end
    object ValidaFilialQTDDLB: TIntegerField
      FieldName = 'QTDDLB'
    end
    object ValidaFilialVENPDI: TDateTimeField
      FieldName = 'VENPDI'
    end
    object ValidaFilialVENPDF: TDateTimeField
      FieldName = 'VENPDF'
    end
    object ValidaFilialVENCAE: TIntegerField
      FieldName = 'VENCAE'
    end
    object ValidaFilialVENQDF: TIntegerField
      FieldName = 'VENQDF'
    end
    object ValidaFilialVENTCC: TStringField
      FieldName = 'VENTCC'
      Size = 5
    end
    object ValidaFilialVENTPP: TStringField
      FieldName = 'VENTPP'
      Size = 5
    end
    object ValidaFilialVENTPS: TStringField
      FieldName = 'VENTPS'
      Size = 5
    end
    object ValidaFilialVENDSU: TBCDField
      FieldName = 'VENDSU'
      Precision = 5
      Size = 2
    end
    object ValidaFilialVENVMP: TBCDField
      FieldName = 'VENVMP'
      Precision = 15
      Size = 2
    end
    object ValidaFilialVENLEP: TIntegerField
      FieldName = 'VENLEP'
    end
    object ValidaFilialVENTCV: TStringField
      FieldName = 'VENTCV'
      Size = 2
    end
    object ValidaFilialVENCEP: TStringField
      FieldName = 'VENCEP'
      Size = 1
    end
    object ValidaFilialVENPVP: TStringField
      FieldName = 'VENPVP'
      Size = 1
    end
    object ValidaFilialVENNPA: TStringField
      FieldName = 'VENNPA'
      Size = 1
    end
    object ValidaFilialVENCFI: TStringField
      FieldName = 'VENCFI'
      Size = 1
    end
    object ValidaFilialVENNTR: TStringField
      FieldName = 'VENNTR'
      Size = 1
    end
    object ValidaFilialVENSNR: TStringField
      FieldName = 'VENSNR'
      Size = 3
    end
    object ValidaFilialVENQIP: TIntegerField
      FieldName = 'VENQIP'
    end
    object ValidaFilialVENSNP: TStringField
      FieldName = 'VENSNP'
      Size = 3
    end
    object ValidaFilialVENQDP: TIntegerField
      FieldName = 'VENQDP'
    end
    object ValidaFilialVENRPD: TIntegerField
      FieldName = 'VENRPD'
    end
    object ValidaFilialVENCCC: TStringField
      FieldName = 'VENCCC'
      Size = 1
    end
    object ValidaFilialVENCCR: TStringField
      FieldName = 'VENCCR'
      Size = 1
    end
    object ValidaFilialVENCRR: TStringField
      FieldName = 'VENCRR'
      Size = 1
    end
    object ValidaFilialVENPSE: TStringField
      FieldName = 'VENPSE'
      Size = 1
    end
    object ValidaFilialVENPAM: TIntegerField
      FieldName = 'VENPAM'
    end
    object ValidaFilialVENPMA: TIntegerField
      FieldName = 'VENPMA'
    end
    object ValidaFilialVENPPC: TIntegerField
      FieldName = 'VENPPC'
    end
    object ValidaFilialVENPTA: TIntegerField
      FieldName = 'VENPTA'
    end
    object ValidaFilialVENPDT: TIntegerField
      FieldName = 'VENPDT'
    end
    object ValidaFilialVENPCS: TIntegerField
      FieldName = 'VENPCS'
    end
    object ValidaFilialVENPLC: TStringField
      FieldName = 'VENPLC'
      Size = 1
    end
    object ValidaFilialVENFAM: TIntegerField
      FieldName = 'VENFAM'
    end
    object ValidaFilialVENFMA: TIntegerField
      FieldName = 'VENFMA'
    end
    object ValidaFilialVENFPC: TIntegerField
      FieldName = 'VENFPC'
    end
    object ValidaFilialVENFTA: TIntegerField
      FieldName = 'VENFTA'
    end
    object ValidaFilialVENFDT: TIntegerField
      FieldName = 'VENFDT'
    end
    object ValidaFilialVENFCS: TIntegerField
      FieldName = 'VENFCS'
    end
    object ValidaFilialVENFLC: TStringField
      FieldName = 'VENFLC'
      Size = 1
    end
    object ValidaFilialVENISS: TBCDField
      FieldName = 'VENISS'
      Precision = 5
      Size = 2
    end
    object ValidaFilialVENIPD: TIntegerField
      FieldName = 'VENIPD'
    end
    object ValidaFilialVENAPC: TIntegerField
      FieldName = 'VENAPC'
    end
    object ValidaFilialVENLVP: TBCDField
      FieldName = 'VENLVP'
      Precision = 4
      Size = 2
    end
    object ValidaFilialESTPDI: TDateTimeField
      FieldName = 'ESTPDI'
    end
    object ValidaFilialESTPDF: TDateTimeField
      FieldName = 'ESTPDF'
    end
    object ValidaFilialESTPAI: TDateTimeField
      FieldName = 'ESTPAI'
    end
    object ValidaFilialESTPAF: TDateTimeField
      FieldName = 'ESTPAF'
    end
    object ValidaFilialESTTEI: TStringField
      FieldName = 'ESTTEI'
      Size = 5
    end
    object ValidaFilialESTTSI: TStringField
      FieldName = 'ESTTSI'
      Size = 5
    end
    object ValidaFilialESTTPR: TStringField
      FieldName = 'ESTTPR'
      Size = 5
    end
    object ValidaFilialESTUNM: TStringField
      FieldName = 'ESTUNM'
      Size = 1
    end
    object ValidaFilialESTDPF: TStringField
      FieldName = 'ESTDPF'
      Size = 1
    end
    object ValidaFilialRECPDI: TDateTimeField
      FieldName = 'RECPDI'
    end
    object ValidaFilialRECPDF: TDateTimeField
      FieldName = 'RECPDF'
    end
    object ValidaFilialRECPOR: TStringField
      FieldName = 'RECPOR'
      Size = 4
    end
    object ValidaFilialRECCRT: TStringField
      FieldName = 'RECCRT'
      Size = 2
    end
    object ValidaFilialRECOCR: TStringField
      FieldName = 'RECOCR'
      Size = 3
    end
    object ValidaFilialRECINS: TStringField
      FieldName = 'RECINS'
      Size = 3
    end
    object ValidaFilialRECVMT: TBCDField
      FieldName = 'RECVMT'
      Precision = 15
      Size = 2
    end
    object ValidaFilialRECDPR: TIntegerField
      FieldName = 'RECDPR'
    end
    object ValidaFilialRECMOE: TStringField
      FieldName = 'RECMOE'
      Size = 3
    end
    object ValidaFilialRECJMM: TBCDField
      FieldName = 'RECJMM'
      Precision = 5
      Size = 2
    end
    object ValidaFilialRECTJR: TStringField
      FieldName = 'RECTJR'
      Size = 1
    end
    object ValidaFilialRECDTJ: TIntegerField
      FieldName = 'RECDTJ'
    end
    object ValidaFilialRECMUL: TBCDField
      FieldName = 'RECMUL'
      Precision = 5
      Size = 2
    end
    object ValidaFilialRECDTM: TIntegerField
      FieldName = 'RECDTM'
    end
    object ValidaFilialRECVJM: TBCDField
      FieldName = 'RECVJM'
      Precision = 9
      Size = 2
    end
    object ValidaFilialRECVDM: TBCDField
      FieldName = 'RECVDM'
      Precision = 9
      Size = 2
    end
    object ValidaFilialRECVMM: TBCDField
      FieldName = 'RECVMM'
      Precision = 9
      Size = 2
    end
    object ValidaFilialRECAVS: TStringField
      FieldName = 'RECAVS'
      Size = 1
    end
    object ValidaFilialRECADC: TStringField
      FieldName = 'RECADC'
      Size = 1
    end
    object ValidaFilialRECAOC: TStringField
      FieldName = 'RECAOC'
      Size = 1
    end
    object ValidaFilialRECPCJ: TStringField
      FieldName = 'RECPCJ'
      Size = 1
    end
    object ValidaFilialRECPCM: TStringField
      FieldName = 'RECPCM'
      Size = 1
    end
    object ValidaFilialRECPCE: TStringField
      FieldName = 'RECPCE'
      Size = 1
    end
    object ValidaFilialRECPCC: TStringField
      FieldName = 'RECPCC'
      Size = 1
    end
    object ValidaFilialRECPCO: TStringField
      FieldName = 'RECPCO'
      Size = 1
    end
    object ValidaFilialRECTPM: TStringField
      FieldName = 'RECTPM'
      Size = 5
    end
    object ValidaFilialRECTAC: TStringField
      FieldName = 'RECTAC'
      Size = 5
    end
    object ValidaFilialRECTES: TStringField
      FieldName = 'RECTES'
      Size = 5
    end
    object ValidaFilialRECTBP: TStringField
      FieldName = 'RECTBP'
      Size = 5
    end
    object ValidaFilialRECTBA: TStringField
      FieldName = 'RECTBA'
      Size = 5
    end
    object ValidaFilialRECTBS: TStringField
      FieldName = 'RECTBS'
      Size = 5
    end
    object ValidaFilialRECTBC: TStringField
      FieldName = 'RECTBC'
      Size = 5
    end
    object ValidaFilialRECTPC: TStringField
      FieldName = 'RECTPC'
      Size = 5
    end
    object ValidaFilialRECTCC: TStringField
      FieldName = 'RECTCC'
      Size = 5
    end
    object ValidaFilialCPRPDI: TDateTimeField
      FieldName = 'CPRPDI'
    end
    object ValidaFilialCPRPDF: TDateTimeField
      FieldName = 'CPRPDF'
    end
    object ValidaFilialCPRQMC: TIntegerField
      FieldName = 'CPRQMC'
    end
    object ValidaFilialCPRAVO: TStringField
      FieldName = 'CPRAVO'
      Size = 1
    end
    object ValidaFilialCPRDNF: TBCDField
      FieldName = 'CPRDNF'
      Precision = 8
      Size = 2
    end
    object ValidaFilialCPRTOP: TStringField
      FieldName = 'CPRTOP'
      Size = 5
    end
    object ValidaFilialCPRTOM: TStringField
      FieldName = 'CPRTOM'
      Size = 5
    end
    object ValidaFilialCPRTOS: TStringField
      FieldName = 'CPRTOS'
      Size = 5
    end
    object ValidaFilialCPRTFP: TStringField
      FieldName = 'CPRTFP'
      Size = 5
    end
    object ValidaFilialCPRTFS: TStringField
      FieldName = 'CPRTFS'
      Size = 5
    end
    object ValidaFilialCPRTEA: TStringField
      FieldName = 'CPRTEA'
      Size = 5
    end
    object ValidaFilialCPRTSA: TStringField
      FieldName = 'CPRTSA'
      Size = 5
    end
    object ValidaFilialCPRSNP: TStringField
      FieldName = 'CPRSNP'
      Size = 3
    end
    object ValidaFilialCPRCCF: TStringField
      FieldName = 'CPRCCF'
      Size = 1
    end
    object ValidaFilialCPRCFR: TStringField
      FieldName = 'CPRCFR'
      Size = 1
    end
    object ValidaFilialCPRFSS: TIntegerField
      FieldName = 'CPRFSS'
    end
    object ValidaFilialPAGPDI: TDateTimeField
      FieldName = 'PAGPDI'
    end
    object ValidaFilialPAGPDF: TDateTimeField
      FieldName = 'PAGPDF'
    end
    object ValidaFilialPAGAPR: TStringField
      FieldName = 'PAGAPR'
      Size = 1
    end
    object ValidaFilialPAGDPR: TIntegerField
      FieldName = 'PAGDPR'
    end
    object ValidaFilialPAGMOE: TStringField
      FieldName = 'PAGMOE'
      Size = 3
    end
    object ValidaFilialPAGJMM: TBCDField
      FieldName = 'PAGJMM'
      Precision = 5
      Size = 2
    end
    object ValidaFilialPAGTJR: TStringField
      FieldName = 'PAGTJR'
      Size = 1
    end
    object ValidaFilialPAGDTJ: TIntegerField
      FieldName = 'PAGDTJ'
    end
    object ValidaFilialPAGMUL: TBCDField
      FieldName = 'PAGMUL'
      Precision = 5
      Size = 2
    end
    object ValidaFilialPAGDTM: TIntegerField
      FieldName = 'PAGDTM'
    end
    object ValidaFilialPAGTPM: TStringField
      FieldName = 'PAGTPM'
      Size = 5
    end
    object ValidaFilialPAGTPF: TStringField
      FieldName = 'PAGTPF'
      Size = 5
    end
    object ValidaFilialPAGTAF: TStringField
      FieldName = 'PAGTAF'
      Size = 5
    end
    object ValidaFilialPAGTBP: TStringField
      FieldName = 'PAGTBP'
      Size = 5
    end
    object ValidaFilialPAGTBC: TStringField
      FieldName = 'PAGTBC'
      Size = 5
    end
    object ValidaFilialPAGTBS: TStringField
      FieldName = 'PAGTBS'
      Size = 5
    end
    object ValidaFilialPAGTPC: TStringField
      FieldName = 'PAGTPC'
      Size = 5
    end
    object ValidaFilialPAGTCC: TStringField
      FieldName = 'PAGTCC'
      Size = 5
    end
    object ValidaFilialPAGVJM: TBCDField
      FieldName = 'PAGVJM'
      Precision = 9
      Size = 2
    end
    object ValidaFilialPAGVDM: TBCDField
      FieldName = 'PAGVDM'
      Precision = 9
      Size = 2
    end
    object ValidaFilialPAGVMM: TBCDField
      FieldName = 'PAGVMM'
      Precision = 9
      Size = 2
    end
    object ValidaFilialPAGTCM: TStringField
      FieldName = 'PAGTCM'
      Size = 5
    end
    object ValidaFilialPAGTDC: TStringField
      FieldName = 'PAGTDC'
      Size = 5
    end
    object ValidaFilialPAGTDI: TStringField
      FieldName = 'PAGTDI'
      Size = 5
    end
    object ValidaFilialPAGLIR: TBCDField
      FieldName = 'PAGLIR'
      Precision = 8
      Size = 2
    end
    object ValidaFilialPAGEEV: TIntegerField
      FieldName = 'PAGEEV'
    end
    object ValidaFilialCXBPDI: TDateTimeField
      FieldName = 'CXBPDI'
    end
    object ValidaFilialCXBPDF: TDateTimeField
      FieldName = 'CXBPDF'
    end
    object ValidaFilialCXBTCA: TStringField
      FieldName = 'CXBTCA'
      Size = 5
    end
    object ValidaFilialCXBTDC: TStringField
      FieldName = 'CXBTDC'
      Size = 5
    end
    object ValidaFilialCXBTDE: TStringField
      FieldName = 'CXBTDE'
      Size = 5
    end
    object ValidaFilialCXBTDT: TStringField
      FieldName = 'CXBTDT'
      Size = 5
    end
    object ValidaFilialCXBDEC: TIntegerField
      FieldName = 'CXBDEC'
    end
    object ValidaFilialCTBEXI: TDateTimeField
      FieldName = 'CTBEXI'
    end
    object ValidaFilialCTBEXF: TDateTimeField
      FieldName = 'CTBEXF'
    end
    object ValidaFilialCTBPEI: TDateTimeField
      FieldName = 'CTBPEI'
    end
    object ValidaFilialCTBPEF: TDateTimeField
      FieldName = 'CTBPEF'
    end
    object ValidaFilialCTBQDL: TIntegerField
      FieldName = 'CTBQDL'
    end
    object ValidaFilialCTBMOE: TStringField
      FieldName = 'CTBMOE'
      Size = 3
    end
    object ValidaFilialCTBLOG: TStringField
      FieldName = 'CTBLOG'
      Size = 1
    end
    object ValidaFilialCTBALI: TStringField
      FieldName = 'CTBALI'
      Size = 1
    end
    object ValidaFilialCTBDIA: TDateTimeField
      FieldName = 'CTBDIA'
    end
    object ValidaFilialCTBOBS: TStringField
      FieldName = 'CTBOBS'
      Size = 119
    end
    object ValidaFilialCTBNRJ: TStringField
      FieldName = 'CTBNRJ'
      Size = 15
    end
    object ValidaFilialCTBDRJ: TDateTimeField
      FieldName = 'CTBDRJ'
    end
    object ValidaFilialCTBNSR: TStringField
      FieldName = 'CTBNSR'
      Size = 100
    end
    object ValidaFilialCTBFSR: TStringField
      FieldName = 'CTBFSR'
    end
    object ValidaFilialCTBCSR: TBCDField
      FieldName = 'CTBCSR'
      Precision = 12
      Size = 0
    end
    object ValidaFilialCTBNCR: TStringField
      FieldName = 'CTBNCR'
      Size = 30
    end
    object ValidaFilialCTBFCR: TStringField
      FieldName = 'CTBFCR'
      Size = 1
    end
    object ValidaFilialCTBCRC: TStringField
      FieldName = 'CTBCRC'
      Size = 15
    end
    object ValidaFilialCTBCCR: TBCDField
      FieldName = 'CTBCCR'
      Precision = 12
      Size = 0
    end
    object ValidaFilialCTBCFM: TIntegerField
      FieldName = 'CTBCFM'
    end
    object ValidaFilialCTBCAE: TStringField
      FieldName = 'CTBCAE'
      Size = 10
    end
    object ValidaFilialCTBCAF: TIntegerField
      FieldName = 'CTBCAF'
    end
    object ValidaFilialCTBFEC: TStringField
      FieldName = 'CTBFEC'
      Size = 1
    end
    object ValidaFilialCTBSDT: TStringField
      FieldName = 'CTBSDT'
      Size = 1
    end
    object ValidaFilialCTBSDE: TStringField
      FieldName = 'CTBSDE'
      Size = 1
    end
    object ValidaFilialCTBSCR: TStringField
      FieldName = 'CTBSCR'
      Size = 1
    end
    object ValidaFilialCTBSVL: TStringField
      FieldName = 'CTBSVL'
      Size = 1
    end
    object ValidaFilialCTBSHP: TStringField
      FieldName = 'CTBSHP'
      Size = 1
    end
    object ValidaFilialCTBHAB: TStringField
      FieldName = 'CTBHAB'
      Size = 1
    end
    object ValidaFilialEFIPDI: TDateTimeField
      FieldName = 'EFIPDI'
    end
    object ValidaFilialEFIPDF: TDateTimeField
      FieldName = 'EFIPDF'
    end
    object ValidaFilialEFIFTR: TStringField
      FieldName = 'EFIFTR'
      Size = 1
    end
    object ValidaFilialEFIAPI: TBCDField
      FieldName = 'EFIAPI'
      Precision = 5
      Size = 2
    end
    object ValidaFilialEFISTR: TStringField
      FieldName = 'EFISTR'
      Size = 1
    end
    object ValidaFilialEFIREG: TIntegerField
      FieldName = 'EFIREG'
    end
    object ValidaFilialEFIQCI: TIntegerField
      FieldName = 'EFIQCI'
    end
    object ValidaFilialPRDTEP: TStringField
      FieldName = 'PRDTEP'
      Size = 5
    end
    object ValidaFilialPRDTSP: TStringField
      FieldName = 'PRDTSP'
      Size = 5
    end
    object ValidaFilialPRDQDD: TIntegerField
      FieldName = 'PRDQDD'
    end
    object ValidaFilialPRDTPP: TStringField
      FieldName = 'PRDTPP'
      Size = 5
    end
    object ValidaFilialPRDCPP: TIntegerField
      FieldName = 'PRDCPP'
    end
    object ValidaFilialPRDRPP: TIntegerField
      FieldName = 'PRDRPP'
    end
    object ValidaFilialPRDPPP: TStringField
      FieldName = 'PRDPPP'
      Size = 6
    end
    object ValidaFilialPRDTEE: TStringField
      FieldName = 'PRDTEE'
      Size = 5
    end
    object ValidaFilialPRDTNR: TStringField
      FieldName = 'PRDTNR'
      Size = 5
    end
    object ValidaFilialPRDEFI: TBCDField
      FieldName = 'PRDEFI'
      Precision = 5
      Size = 2
    end
    object ValidaFilialPEDBLO: TStringField
      FieldName = 'PEDBLO'
      Size = 1
    end
    object ValidaFilialCOMPRZ: TStringField
      FieldName = 'COMPRZ'
      Size = 1
    end
    object ValidaFilialPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 4
      Size = 2
    end
    object ValidaFilialTIPSEP: TStringField
      FieldName = 'TIPSEP'
      Size = 3
    end
    object ValidaFilialINDROE: TStringField
      FieldName = 'INDROE'
      Size = 1
    end
    object ValidaFilialCPRIEF: TStringField
      FieldName = 'CPRIEF'
      Size = 1
    end
    object ValidaFilialVENIEC: TStringField
      FieldName = 'VENIEC'
      Size = 1
    end
    object ValidaFilialRECTIA: TStringField
      FieldName = 'RECTIA'
      Size = 1
    end
    object ValidaFilialESTFPR: TStringField
      FieldName = 'ESTFPR'
      Size = 5
    end
    object ValidaFilialINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ValidaFilialDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ValidaFilialHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ValidaFilialCODAFI: TIntegerField
      FieldName = 'CODAFI'
    end
    object ValidaFilialEENFIL: TStringField
      FieldName = 'EENFIL'
      Size = 18
    end
    object ValidaFilialEENENT: TStringField
      FieldName = 'EENENT'
      Size = 18
    end
    object ValidaFilialEENCOB: TStringField
      FieldName = 'EENCOB'
      Size = 18
    end
    object ValidaFilialBAIENT: TStringField
      FieldName = 'BAIENT'
      Size = 75
    end
    object ValidaFilialBAICOB: TStringField
      FieldName = 'BAICOB'
      Size = 75
    end
    object ValidaFilialNENFIL: TStringField
      FieldName = 'NENFIL'
      Size = 60
    end
    object ValidaFilialFILMAT: TStringField
      FieldName = 'FILMAT'
      Size = 1
    end
  end
  object ValidaPedido: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e120ped.codemp,e120ped.codfil,e120ped.numped,e120ped.codc' +
        'li,e120ped.sitped,e120ped.pedblo,e120ped.usu_precar,'
      '       e085cli.nomcli,e085cli.cidcli,e085cli.sigufs,'
      '       e085hcl.codrep,'
      '       e090rep.nomrep from e120ped'
      'inner join e085cli on e085cli.codcli = e120ped.codcli'
      'inner join e085hcl on e085hcl.codemp = e120ped.codemp and'
      '                      e085hcl.codfil = e120ped.codfil and'
      '                      e085hcl.codcli = e120ped.codcli'
      'inner join e090rep on e090rep.codrep = e085hcl.codrep'
      '                      where'
      '                         e120ped.numped = :numped')
    Left = 480
    object ValidaPedidoCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ValidaPedidoCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ValidaPedidoNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ValidaPedidoCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ValidaPedidoSITPED: TIntegerField
      FieldName = 'SITPED'
    end
    object ValidaPedidoCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ValidaPedidoSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ValidaPedidoCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ValidaPedidoNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ValidaPedidoNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ValidaPedidoPEDBLO: TStringField
      FieldName = 'PEDBLO'
      Size = 1
    end
    object ValidaPedidoUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
  end
  object ConsVolPro: TADOQuery
    Connection = Dm.ADOBanco
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
      
        'select codpro,codder,volder  from e075der where codpro = :codpro' +
        ' and'
      '                            codder = :codder')
    Left = 512
    Top = 40
    object ConsVolProCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsVolProCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsVolProVOLDER: TBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
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
    Left = 433
    Top = 8
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
    Left = 329
    Top = 8
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
