object FValidarPedidos: TFValidarPedidos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Validar Pedidos'
  ClientHeight = 613
  ClientWidth = 777
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
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 11
    Width = 66
    Height = 13
    Caption = 'Pr'#233'-Carga..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 43
    Top = 40
    Width = 47
    Height = 13
    Caption = 'Pedido..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtPrecarga: TCurrencyEdit
    Left = 94
    Top = 8
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 0
    OnKeyPress = edtPrecargaKeyPress
  end
  object edtPedido: TCurrencyEdit
    Left = 94
    Top = 37
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 1
    OnKeyPress = edtPedidoKeyPress
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 240
    Width = 779
    Height = 374
    TabStop = False
    DataSource = dsClientConsE120Ipd
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbg1DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Imagem'
        Title.Alignment = taCenter
        Title.Caption = ' '
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODFIL'
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMPED'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SEQIPD'
        Title.Alignment = taCenter
        Title.Caption = 'Seq.'
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'Deriv.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPLIPD'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 230
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PREUNI'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Unit.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_TOTDSC'
        Title.Alignment = taCenter
        Title.Caption = '% Desc.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PREBAS'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Tabela'
        Visible = True
      end>
  end
  object btnValidar: TBitBtn
    Left = 669
    Top = 34
    Width = 100
    Height = 25
    Caption = 'Validar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnValidarClick
  end
  object btnMostrar: TBitBtn
    Left = 669
    Top = 6
    Width = 100
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnMostrarClick
  end
  object dbg2: TDBGrid
    Left = -1
    Top = 66
    Width = 779
    Height = 162
    TabStop = False
    DataSource = dsClientConsE120Ped
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODFIL'
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMPED'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATEMI'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SITPED'
        Title.Alignment = taCenter
        Title.Caption = 'Sit.'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 220
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SIGUFS'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 40
        Visible = True
      end>
  end
  object btnLiberarSemDesc: TBitBtn
    Left = 460
    Top = 6
    Width = 137
    Height = 25
    Caption = 'Liberar Sem Desconto'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = btnLiberarSemDescClick
  end
  object btnLiberarDescMaior: TBitBtn
    Left = 310
    Top = 6
    Width = 137
    Height = 25
    Caption = 'Liberar Maior Desconto'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = btnLiberarDescMaiorClick
  end
  object ConsE120Ipd: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMPED'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E120IPD.*,E081ITP.PREBAS,E081ITP.TOLMEN,E081ITP.TOLMAI,E0' +
        '81ITP.VLTMAI,E081ITP.VLTMEN'
      'FROM E120IPD'
      'INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND'
      '                      E120PED.CODFIL = E120IPD.CODFIL AND'
      '                      E120PED.NUMPED = E120IPD.NUMPED'
      'INNER JOIN E081ITP ON E081ITP.CODEMP = E120PED.CODEMP AND'
      '                      E081ITP.CODTPR = '#39'0001'#39' AND'
      '                      E081ITP.DATINI = '#39'01/07/2009'#39' AND'
      '                      E081ITP.CODPRO = E120IPD.CODPRO AND'
      '                      E081ITP.CODDER = E120IPD.CODDER'
      'WHERE'
      'E120PED.CODEMP = 1 AND'
      'E120PED.NUMPED = :NUMPED AND'
      'E120IPD.SITIPD IN (1,2)'
      'ORDER BY E120PED.NUMPED,E120IPD.SEQIPD')
    Left = 160
    Top = 160
    object ConsE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsE120IpdTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE120IpdPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object ConsE120IpdSEQPCL: TStringField
      FieldName = 'SEQPCL'
      Size = 10
    end
    object ConsE120IpdPEDPRV: TStringField
      FieldName = 'PEDPRV'
      Size = 1
    end
    object ConsE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE120IpdCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object ConsE120IpdCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE120IpdCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ConsE120IpdCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ConsE120IpdCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ConsE120IpdCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ConsE120IpdCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ConsE120IpdCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ConsE120IpdCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE120IpdCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object ConsE120IpdRESEST: TStringField
      FieldName = 'RESEST'
      Size = 1
    end
    object ConsE120IpdQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDAEN: TFMTBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDPOC: TFMTBCDField
      FieldName = 'QTDPOC'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDRAE: TFMTBCDField
      FieldName = 'QTDRAE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDNLP: TFMTBCDField
      FieldName = 'QTDNLP'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDRES: TFMTBCDField
      FieldName = 'QTDRES'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE120IpdCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object ConsE120IpdDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object ConsE120IpdCOTMFP: TFMTBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object ConsE120IpdDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ConsE120IpdCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ConsE120IpdFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ConsE120IpdCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE120IpdPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ConsE120IpdPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object ConsE120IpdPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPEROFE: TBCDField
      FieldName = 'PEROFE'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERACR: TBCDField
      FieldName = 'PERACR'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ConsE120IpdDATANE: TDateTimeField
      FieldName = 'DATANE'
    end
    object ConsE120IpdDATPOC: TDateTimeField
      FieldName = 'DATPOC'
    end
    object ConsE120IpdCODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object ConsE120IpdNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object ConsE120IpdCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object ConsE120IpdCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ConsE120IpdCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConsE120IpdCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ConsE120IpdVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdSITIPD: TIntegerField
      FieldName = 'SITIPD'
    end
    object ConsE120IpdCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE120IpdOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsE120IpdGERNEC: TIntegerField
      FieldName = 'GERNEC'
    end
    object ConsE120IpdGERCGA: TStringField
      FieldName = 'GERCGA'
      Size = 1
    end
    object ConsE120IpdRESMAN: TStringField
      FieldName = 'RESMAN'
      Size = 1
    end
    object ConsE120IpdINDAED: TStringField
      FieldName = 'INDAED'
      Size = 1
    end
    object ConsE120IpdNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object ConsE120IpdDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object ConsE120IpdSEQCVP: TIntegerField
      FieldName = 'SEQCVP'
    end
    object ConsE120IpdUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE120IpdHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE120IpdQTDPPF: TFMTBCDField
      FieldName = 'QTDPPF'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdCMPKIT: TStringField
      FieldName = 'CMPKIT'
      Size = 1
    end
    object ConsE120IpdFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object ConsE120IpdNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsE120IpdSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object ConsE120IpdUNIVEN: TStringField
      FieldName = 'UNIVEN'
      Size = 3
    end
    object ConsE120IpdQTDVEN: TFMTBCDField
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdPREVEN: TFMTBCDField
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdPREBRU: TFMTBCDField
      FieldName = 'PREBRU'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object ConsE120IpdCTRCVS: TIntegerField
      FieldName = 'CTRCVS'
    end
    object ConsE120IpdCPTCVS: TDateTimeField
      FieldName = 'CPTCVS'
    end
    object ConsE120IpdSEQCVS: TIntegerField
      FieldName = 'SEQCVS'
    end
    object ConsE120IpdCODAVC: TIntegerField
      FieldName = 'CODAVC'
    end
    object ConsE120IpdCODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object ConsE120IpdCODPGR: TStringField
      FieldName = 'CODPGR'
      Size = 5
    end
    object ConsE120IpdIDXGRD: TIntegerField
      FieldName = 'IDXGRD'
    end
    object ConsE120IpdCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ConsE120IpdCODCLC: TStringField
      FieldName = 'CODCLC'
      Size = 10
    end
    object ConsE120IpdPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdFILPRD: TIntegerField
      FieldName = 'FILPRD'
    end
    object ConsE120IpdVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ConsE120IpdINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ConsE120IpdPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object ConsE120IpdFORNFC: TIntegerField
      FieldName = 'FORNFC'
    end
    object ConsE120IpdNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsE120IpdSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object ConsE120IpdSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ConsE120IpdNCTLCL: TStringField
      FieldName = 'NCTLCL'
    end
    object ConsE120IpdNRECLI: TStringField
      FieldName = 'NRECLI'
    end
    object ConsE120IpdNOSICL: TBCDField
      FieldName = 'NOSICL'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdNOSFCL: TBCDField
      FieldName = 'NOSFCL'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdNOCCL1: TStringField
      FieldName = 'NOCCL1'
    end
    object ConsE120IpdNOCCL2: TStringField
      FieldName = 'NOCCL2'
    end
    object ConsE120IpdNOCCL3: TStringField
      FieldName = 'NOCCL3'
    end
    object ConsE120IpdCODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
    object ConsE120IpdCTRCVP: TIntegerField
      FieldName = 'CTRCVP'
    end
    object ConsE120IpdCPTCVP: TDateTimeField
      FieldName = 'CPTCVP'
    end
    object ConsE120IpdSEQCTR: TIntegerField
      FieldName = 'SEQCTR'
    end
    object ConsE120IpdINDAPE: TIntegerField
      FieldName = 'INDAPE'
    end
    object ConsE120IpdOBSIPD: TStringField
      FieldName = 'OBSIPD'
      Size = 999
    end
    object ConsE120IpdSEQISP: TIntegerField
      FieldName = 'SEQISP'
    end
    object ConsE120IpdEMPOCP: TIntegerField
      FieldName = 'EMPOCP'
    end
    object ConsE120IpdVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 7
    end
    object ConsE120IpdVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 7
    end
    object ConsE120IpdVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAGRNEC: TStringField
      FieldName = 'AGRNEC'
      Size = 25
    end
    object ConsE120IpdAGRPAI: TStringField
      FieldName = 'AGRPAI'
      Size = 25
    end
    object ConsE120IpdORIRES: TStringField
      FieldName = 'ORIRES'
      Size = 1
    end
    object ConsE120IpdQTDBPF: TBCDField
      FieldName = 'QTDBPF'
      Precision = 15
      Size = 3
    end
    object ConsE120IpdALIPIF: TBCDField
      FieldName = 'ALIPIF'
      Precision = 15
    end
    object ConsE120IpdQTDBCF: TBCDField
      FieldName = 'QTDBCF'
      Precision = 15
      Size = 3
    end
    object ConsE120IpdALICFF: TBCDField
      FieldName = 'ALICFF'
      Precision = 15
    end
    object ConsE120IpdQTDBIP: TBCDField
      FieldName = 'QTDBIP'
      Precision = 15
      Size = 3
    end
    object ConsE120IpdALIIPI: TBCDField
      FieldName = 'ALIIPI'
      Precision = 15
    end
    object ConsE120IpdINDIPM: TStringField
      FieldName = 'INDIPM'
      Size = 1
    end
    object ConsE120IpdFILREM: TIntegerField
      FieldName = 'FILREM'
    end
    object ConsE120IpdSNFREM: TStringField
      FieldName = 'SNFREM'
      Size = 3
    end
    object ConsE120IpdNFVREM: TIntegerField
      FieldName = 'NFVREM'
    end
    object ConsE120IpdIPVREM: TIntegerField
      FieldName = 'IPVREM'
    end
    object ConsE120IpdCODCNV: TIntegerField
      FieldName = 'CODCNV'
    end
    object ConsE120IpdCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsE120IpdUSU_CODTEC1: TStringField
      FieldName = 'USU_CODTEC1'
      Size = 14
    end
    object ConsE120IpdUSU_CODTEC2: TStringField
      FieldName = 'USU_CODTEC2'
      Size = 14
    end
    object ConsE120IpdUSU_QTDREP: TIntegerField
      FieldName = 'USU_QTDREP'
    end
    object ConsE120IpdUSU_QTDDIV: TBCDField
      FieldName = 'USU_QTDDIV'
      Precision = 11
      Size = 2
    end
    object ConsE120IpdUSU_MEDLAR: TBCDField
      FieldName = 'USU_MEDLAR'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_MEDCOM: TBCDField
      FieldName = 'USU_MEDCOM'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_MEDALT: TBCDField
      FieldName = 'USU_MEDALT'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC1: TBCDField
      FieldName = 'USU_PERDESC1'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC2: TBCDField
      FieldName = 'USU_PERDESC2'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC3: TBCDField
      FieldName = 'USU_PERDESC3'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC4: TBCDField
      FieldName = 'USU_PERDESC4'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC5: TBCDField
      FieldName = 'USU_PERDESC5'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC6: TBCDField
      FieldName = 'USU_PERDESC6'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_CANAPR: TFMTBCDField
      FieldName = 'USU_CANAPR'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdUSU_TOTDSC: TBCDField
      FieldName = 'USU_TOTDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_TOTDSCORI: TBCDField
      FieldName = 'USU_TOTDSCORI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_VLRORI: TBCDField
      FieldName = 'USU_VLRORI'
      Precision = 14
      Size = 2
    end
    object ConsE120IpdUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
    object ConsE120IpdPREBAS: TFMTBCDField
      FieldName = 'PREBAS'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdTOLMEN: TBCDField
      FieldName = 'TOLMEN'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdTOLMAI: TBCDField
      FieldName = 'TOLMAI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLTMAI: TFMTBCDField
      FieldName = 'VLTMAI'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdVLTMEN: TFMTBCDField
      FieldName = 'VLTMEN'
      Precision = 14
      Size = 5
    end
  end
  object dsClientConsE120Ipd: TDataSource
    DataSet = ClientConsE120Ipd
    Left = 152
    Top = 336
  end
  object ClientConsE120Ipd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderConsE120Ipd'
    Left = 160
    Top = 272
    object ClientConsE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ClientConsE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ClientConsE120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ClientConsE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ClientConsE120IpdTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ClientConsE120IpdPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object ClientConsE120IpdSEQPCL: TStringField
      FieldName = 'SEQPCL'
      Size = 10
    end
    object ClientConsE120IpdPEDPRV: TStringField
      FieldName = 'PEDPRV'
      Size = 1
    end
    object ClientConsE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ClientConsE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ClientConsE120IpdCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object ClientConsE120IpdCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ClientConsE120IpdCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ClientConsE120IpdCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ClientConsE120IpdCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ClientConsE120IpdCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ClientConsE120IpdCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ClientConsE120IpdCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ClientConsE120IpdCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ClientConsE120IpdCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object ClientConsE120IpdRESEST: TStringField
      FieldName = 'RESEST'
      Size = 1
    end
    object ClientConsE120IpdQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdQTDAEN: TFMTBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdQTDPOC: TFMTBCDField
      FieldName = 'QTDPOC'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdQTDRAE: TFMTBCDField
      FieldName = 'QTDRAE'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdQTDNLP: TFMTBCDField
      FieldName = 'QTDNLP'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdQTDRES: TFMTBCDField
      FieldName = 'QTDRES'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ClientConsE120IpdCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object ClientConsE120IpdDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object ClientConsE120IpdCOTMFP: TFMTBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object ClientConsE120IpdDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ClientConsE120IpdCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ClientConsE120IpdFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ClientConsE120IpdCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ClientConsE120IpdPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ClientConsE120IpdPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object ClientConsE120IpdPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdPEROFE: TBCDField
      FieldName = 'PEROFE'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdPERACR: TBCDField
      FieldName = 'PERACR'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ClientConsE120IpdDATANE: TDateTimeField
      FieldName = 'DATANE'
    end
    object ClientConsE120IpdDATPOC: TDateTimeField
      FieldName = 'DATPOC'
    end
    object ClientConsE120IpdCODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object ClientConsE120IpdNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object ClientConsE120IpdCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object ClientConsE120IpdCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ClientConsE120IpdCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ClientConsE120IpdCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ClientConsE120IpdVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdSITIPD: TIntegerField
      FieldName = 'SITIPD'
    end
    object ClientConsE120IpdCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ClientConsE120IpdOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ClientConsE120IpdGERNEC: TIntegerField
      FieldName = 'GERNEC'
    end
    object ClientConsE120IpdGERCGA: TStringField
      FieldName = 'GERCGA'
      Size = 1
    end
    object ClientConsE120IpdRESMAN: TStringField
      FieldName = 'RESMAN'
      Size = 1
    end
    object ClientConsE120IpdINDAED: TStringField
      FieldName = 'INDAED'
      Size = 1
    end
    object ClientConsE120IpdNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object ClientConsE120IpdDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object ClientConsE120IpdSEQCVP: TIntegerField
      FieldName = 'SEQCVP'
    end
    object ClientConsE120IpdUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ClientConsE120IpdDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ClientConsE120IpdHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ClientConsE120IpdQTDPPF: TFMTBCDField
      FieldName = 'QTDPPF'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdCMPKIT: TStringField
      FieldName = 'CMPKIT'
      Size = 1
    end
    object ClientConsE120IpdFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object ClientConsE120IpdNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ClientConsE120IpdSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object ClientConsE120IpdUNIVEN: TStringField
      FieldName = 'UNIVEN'
      Size = 3
    end
    object ClientConsE120IpdQTDVEN: TFMTBCDField
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdPREVEN: TFMTBCDField
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdPREBRU: TFMTBCDField
      FieldName = 'PREBRU'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object ClientConsE120IpdCTRCVS: TIntegerField
      FieldName = 'CTRCVS'
    end
    object ClientConsE120IpdCPTCVS: TDateTimeField
      FieldName = 'CPTCVS'
    end
    object ClientConsE120IpdSEQCVS: TIntegerField
      FieldName = 'SEQCVS'
    end
    object ClientConsE120IpdCODAVC: TIntegerField
      FieldName = 'CODAVC'
    end
    object ClientConsE120IpdCODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object ClientConsE120IpdCODPGR: TStringField
      FieldName = 'CODPGR'
      Size = 5
    end
    object ClientConsE120IpdIDXGRD: TIntegerField
      FieldName = 'IDXGRD'
    end
    object ClientConsE120IpdCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ClientConsE120IpdCODCLC: TStringField
      FieldName = 'CODCLC'
      Size = 10
    end
    object ClientConsE120IpdPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdFILPRD: TIntegerField
      FieldName = 'FILPRD'
    end
    object ClientConsE120IpdVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ClientConsE120IpdINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ClientConsE120IpdPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object ClientConsE120IpdVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object ClientConsE120IpdVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ClientConsE120IpdVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ClientConsE120IpdVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ClientConsE120IpdVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object ClientConsE120IpdFORNFC: TIntegerField
      FieldName = 'FORNFC'
    end
    object ClientConsE120IpdNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ClientConsE120IpdSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object ClientConsE120IpdSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ClientConsE120IpdNCTLCL: TStringField
      FieldName = 'NCTLCL'
    end
    object ClientConsE120IpdNRECLI: TStringField
      FieldName = 'NRECLI'
    end
    object ClientConsE120IpdNOSICL: TBCDField
      FieldName = 'NOSICL'
      Precision = 10
      Size = 0
    end
    object ClientConsE120IpdNOSFCL: TBCDField
      FieldName = 'NOSFCL'
      Precision = 10
      Size = 0
    end
    object ClientConsE120IpdNOCCL1: TStringField
      FieldName = 'NOCCL1'
    end
    object ClientConsE120IpdNOCCL2: TStringField
      FieldName = 'NOCCL2'
    end
    object ClientConsE120IpdNOCCL3: TStringField
      FieldName = 'NOCCL3'
    end
    object ClientConsE120IpdCODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
    object ClientConsE120IpdCTRCVP: TIntegerField
      FieldName = 'CTRCVP'
    end
    object ClientConsE120IpdCPTCVP: TDateTimeField
      FieldName = 'CPTCVP'
    end
    object ClientConsE120IpdSEQCTR: TIntegerField
      FieldName = 'SEQCTR'
    end
    object ClientConsE120IpdINDAPE: TIntegerField
      FieldName = 'INDAPE'
    end
    object ClientConsE120IpdOBSIPD: TStringField
      FieldName = 'OBSIPD'
      Size = 999
    end
    object ClientConsE120IpdSEQISP: TIntegerField
      FieldName = 'SEQISP'
    end
    object ClientConsE120IpdEMPOCP: TIntegerField
      FieldName = 'EMPOCP'
    end
    object ClientConsE120IpdVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 7
    end
    object ClientConsE120IpdVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 7
    end
    object ClientConsE120IpdVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ClientConsE120IpdAGRNEC: TStringField
      FieldName = 'AGRNEC'
      Size = 25
    end
    object ClientConsE120IpdAGRPAI: TStringField
      FieldName = 'AGRPAI'
      Size = 25
    end
    object ClientConsE120IpdORIRES: TStringField
      FieldName = 'ORIRES'
      Size = 1
    end
    object ClientConsE120IpdQTDBPF: TBCDField
      FieldName = 'QTDBPF'
      Precision = 15
      Size = 3
    end
    object ClientConsE120IpdALIPIF: TBCDField
      FieldName = 'ALIPIF'
      Precision = 15
    end
    object ClientConsE120IpdQTDBCF: TBCDField
      FieldName = 'QTDBCF'
      Precision = 15
      Size = 3
    end
    object ClientConsE120IpdALICFF: TBCDField
      FieldName = 'ALICFF'
      Precision = 15
    end
    object ClientConsE120IpdQTDBIP: TBCDField
      FieldName = 'QTDBIP'
      Precision = 15
      Size = 3
    end
    object ClientConsE120IpdALIIPI: TBCDField
      FieldName = 'ALIIPI'
      Precision = 15
    end
    object ClientConsE120IpdINDIPM: TStringField
      FieldName = 'INDIPM'
      Size = 1
    end
    object ClientConsE120IpdFILREM: TIntegerField
      FieldName = 'FILREM'
    end
    object ClientConsE120IpdSNFREM: TStringField
      FieldName = 'SNFREM'
      Size = 3
    end
    object ClientConsE120IpdNFVREM: TIntegerField
      FieldName = 'NFVREM'
    end
    object ClientConsE120IpdIPVREM: TIntegerField
      FieldName = 'IPVREM'
    end
    object ClientConsE120IpdCODCNV: TIntegerField
      FieldName = 'CODCNV'
    end
    object ClientConsE120IpdCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ClientConsE120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ClientConsE120IpdUSU_CODTEC1: TStringField
      FieldName = 'USU_CODTEC1'
      Size = 14
    end
    object ClientConsE120IpdUSU_CODTEC2: TStringField
      FieldName = 'USU_CODTEC2'
      Size = 14
    end
    object ClientConsE120IpdUSU_QTDREP: TIntegerField
      FieldName = 'USU_QTDREP'
    end
    object ClientConsE120IpdUSU_QTDDIV: TBCDField
      FieldName = 'USU_QTDDIV'
      Precision = 11
      Size = 2
    end
    object ClientConsE120IpdUSU_MEDLAR: TBCDField
      FieldName = 'USU_MEDLAR'
      Precision = 8
      Size = 2
    end
    object ClientConsE120IpdUSU_MEDCOM: TBCDField
      FieldName = 'USU_MEDCOM'
      Precision = 8
      Size = 2
    end
    object ClientConsE120IpdUSU_MEDALT: TBCDField
      FieldName = 'USU_MEDALT'
      Precision = 8
      Size = 2
    end
    object ClientConsE120IpdUSU_PERDESC1: TBCDField
      FieldName = 'USU_PERDESC1'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdUSU_PERDESC2: TBCDField
      FieldName = 'USU_PERDESC2'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdUSU_PERDESC3: TBCDField
      FieldName = 'USU_PERDESC3'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdUSU_PERDESC4: TBCDField
      FieldName = 'USU_PERDESC4'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdUSU_PERDESC5: TBCDField
      FieldName = 'USU_PERDESC5'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdUSU_PERDESC6: TBCDField
      FieldName = 'USU_PERDESC6'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdUSU_CANAPR: TFMTBCDField
      FieldName = 'USU_CANAPR'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdUSU_TOTDSC: TBCDField
      FieldName = 'USU_TOTDSC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdUSU_TOTDSCORI: TBCDField
      FieldName = 'USU_TOTDSCORI'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdUSU_VLRORI: TBCDField
      FieldName = 'USU_VLRORI'
      Precision = 14
      Size = 2
    end
    object ClientConsE120IpdUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
    object ClientConsE120IpdPREBAS: TFMTBCDField
      FieldName = 'PREBAS'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdTOLMEN: TBCDField
      FieldName = 'TOLMEN'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdTOLMAI: TBCDField
      FieldName = 'TOLMAI'
      Precision = 5
      Size = 2
    end
    object ClientConsE120IpdVLTMAI: TFMTBCDField
      FieldName = 'VLTMAI'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdVLTMEN: TFMTBCDField
      FieldName = 'VLTMEN'
      Precision = 14
      Size = 5
    end
    object ClientConsE120IpdImagem: TStringField
      FieldKind = fkCalculated
      FieldName = 'Imagem'
      Calculated = True
    end
  end
  object ProviderConsE120Ipd: TDataSetProvider
    DataSet = ConsE120Ipd
    Left = 160
    Top = 216
  end
  object ConsE120Ped: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PRECAR'
        DataType = ftInterface
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMPED'
        DataType = ftInterface
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E120PED.CODEMP,E120PED.CODFIL,E120PED.NUMPED,E120PED.DATE' +
        'MI,E120PED.SITPED,E120PED.CODREP,'
      '             E085CLI.NOMCLI,E085CLI.CIDCLI,E085CLI.SIGUFS'
      'FROM E120PED'
      'INNER JOIN E085CLI ON E085CLI.CODCLI = E120PED.CODCLI'
      'WHERE'
      'E120PED.CODEMP = 1 AND'
      'E120PED.SITPED IN (1,2) AND'
      'E120PED.USU_PRECAR = :PRECAR AND'
      'E120PED.NUMPED = :NUMPED AND'
      
        'E120PED.TNSPRO IN ('#39'90100'#39','#39'90106'#39','#39'90111'#39','#39'90121'#39','#39'90171'#39','#39'9015' +
        '6'#39','#39'90150'#39')'
      'ORDER BY E120PED.NUMPED')
    Left = 320
    Top = 160
    object ConsE120PedCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120PedCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120PedNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120PedDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE120PedSITPED: TIntegerField
      FieldName = 'SITPED'
    end
    object ConsE120PedNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsE120PedCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsE120PedSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsE120PedCODREP: TIntegerField
      FieldName = 'CODREP'
    end
  end
  object ProviderConsE120Ped: TDataSetProvider
    DataSet = ConsE120Ped
    Left = 312
    Top = 224
  end
  object ClientConsE120Ped: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderConsE120Ped'
    AfterScroll = ClientConsE120PedAfterScroll
    Left = 312
    Top = 280
    object ClientConsE120PedCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ClientConsE120PedCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ClientConsE120PedNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ClientConsE120PedDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ClientConsE120PedSITPED: TIntegerField
      FieldName = 'SITPED'
    end
    object ClientConsE120PedNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ClientConsE120PedCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ClientConsE120PedSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ClientConsE120PedCODREP: TIntegerField
      FieldName = 'CODREP'
    end
  end
  object dsClientConsE120Ped: TDataSource
    DataSet = ClientConsE120Ped
    Left = 312
    Top = 332
  end
  object ImageList1: TImageList
    Left = 632
    Top = 344
    Bitmap = {
      494C01010700A001700110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000007F7F7F00000000007F7F7F00000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000000000000000FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF00000000000000000000000000BFBFBF00FFFFFF00BFBF
      BF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBF
      BF00FFFFFF000000FF00FFFFFF0000000000000000000000FF000000FF000000
      000000000000000000007F7F7F00000000007F7F7F0000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000007F7F7F00000000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000008000000000000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00FFFFFF0000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000007F7F7F00000000007F7F7F00000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F000000000000000000FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F
      7F0000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000BFBFBF00BFBFBF007F7F7F007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF00BFBFBF007F7F7F007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF00BFBFBF007F7F7F007F7F7F007F7F7F00000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      000000000000FFFFFF007F7F7F007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFF
      FF007F7F7F0000000000FFFFFF0000000000000000000000000000000000BFBF
      BF00BFBFBF007F7F7F000000000000000000000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF007F7F7F000000000000000000000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF007F7F7F000000000000000000000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000007F7F7F00FFFFFF000000
      00007F7F7F007F7F7F000000000000000000000000007F7F7F007F7F7F00FFFF
      FF00FFFFFF007F7F7F00FFFFFF00000000000000000000000000BFBFBF00BFBF
      BF0000000000FFFFFF0000FF0000FFFFFF0000FF0000FFFFFF00000000007F7F
      7F007F7F7F000000000000000000000000000000000000000000BFBFBF00BFBF
      BF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000007F7F
      7F007F7F7F000000000000000000000000000000000000000000BFBFBF00BFBF
      BF0000000000FFFFFF000000FF00FFFFFF000000FF00FFFFFF00000000007F7F
      7F007F7F7F00000000000000000000000000000000007F7F7F00000000007F7F
      7F0000000000000000007F7F7F007F7F7F007F7F7F0000000000000000007F7F
      7F00FFFFFF007F7F7F0000000000FFFFFF000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00007F7F7F000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00007F7F7F000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00007F7F7F000000000000000000000000007F7F7F00FFFFFF00000000007F7F
      7F00000000007F7F7F000000000000000000000000007F7F7F00000000007F7F
      7F00FFFFFF00FFFFFF007F7F7F00FFFFFF0000000000BFBFBF007F7F7F00FFFF
      FF00000000000000000000FF000000800000008000000000000000000000FFFF
      FF007F7F7F007F7F7F00000000000000000000000000BFBFBF007F7F7F00FFFF
      FF00000000000000000000FFFF0000808000008080000000000000000000FFFF
      FF007F7F7F007F7F7F00000000000000000000000000BFBFBF007F7F7F00FFFF
      FF0000000000000000000000FF0000008000000080000000000000000000FFFF
      FF007F7F7F007F7F7F0000000000000000007F7F7F00FFFFFF007F7F7F000000
      00007F7F7F00FFFFFF00000000000000000000000000000000007F7F7F000000
      00007F7F7F00FFFFFF007F7F7F00FFFFFF0000000000BFBFBF000000000000FF
      00000000000000FF00000080000000FF000000800000008000000000000000FF
      0000000000007F7F7F00000000000000000000000000BFBFBF000000000000FF
      FF000000000000FFFF000080800000FFFF0000808000008080000000000000FF
      FF00000000007F7F7F00000000000000000000000000BFBFBF00000000000000
      FF00000000000000FF00000080000000FF000000800000008000000000000000
      FF00000000007F7F7F0000000000000000007F7F7F00FFFFFF007F7F7F000000
      00007F7F7F00FFFFFF00000000000000000000000000000000007F7F7F000000
      00007F7F7F00FFFFFF007F7F7F00FFFFFF0000000000FFFFFF0000000000FFFF
      FF000000000000FF000000FF000000FF000000FF00000080000000000000FFFF
      FF00000000007F7F7F00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF000080800000000000FFFF
      FF00000000007F7F7F00000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000FF000000FF000000FF000000FF000000800000000000FFFF
      FF00000000007F7F7F0000000000000000007F7F7F00FFFFFF007F7F7F000000
      00007F7F7F00FFFFFF00FFFFFF000000000000000000000000007F7F7F000000
      00007F7F7F00000000007F7F7F00FFFFFF0000000000FFFFFF000000000000FF
      000000000000FFFFFF0000FF000000FF00000080000000FF00000000000000FF
      000000000000BFBFBF00000000000000000000000000FFFFFF000000000000FF
      FF0000000000FFFFFF0000FFFF0000FFFF000080800000FFFF000000000000FF
      FF0000000000BFBFBF00000000000000000000000000FFFFFF00000000000000
      FF0000000000FFFFFF000000FF000000FF00000080000000FF00000000000000
      FF0000000000BFBFBF0000000000000000007F7F7F0000000000FFFFFF007F7F
      7F00000000007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F00000000007F7F
      7F00FFFFFF00000000007F7F7F000000000000000000FFFFFF007F7F7F00FFFF
      FF000000000000000000FFFFFF00FFFFFF0000FF00000000000000000000FFFF
      FF007F7F7F00BFBFBF00000000000000000000000000FFFFFF007F7F7F00FFFF
      FF000000000000000000FFFFFF00FFFFFF0000FFFF000000000000000000FFFF
      FF007F7F7F00BFBFBF00000000000000000000000000FFFFFF007F7F7F00FFFF
      FF000000000000000000FFFFFF00FFFFFF000000FF000000000000000000FFFF
      FF007F7F7F00BFBFBF000000000000000000000000007F7F7F00FFFFFF007F7F
      7F0000000000000000007F7F7F007F7F7F007F7F7F0000000000000000007F7F
      7F00000000007F7F7F00FFFFFF00000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000BFBFBF000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000BFBFBF000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000BFBFBF00000000000000000000000000000000007F7F7F0000000000FFFF
      FF007F7F7F007F7F7F000000000000000000000000007F7F7F007F7F7F000000
      0000000000007F7F7F0000000000000000000000000000000000FFFFFF00BFBF
      BF0000000000FFFFFF0000FF0000FFFFFF0000FF0000FFFFFF0000000000BFBF
      BF00BFBFBF000000000000000000000000000000000000000000FFFFFF00BFBF
      BF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000BFBF
      BF00BFBFBF000000000000000000000000000000000000000000FFFFFF00BFBF
      BF0000000000FFFFFF000000FF00FFFFFF000000FF00FFFFFF0000000000BFBF
      BF00BFBFBF0000000000000000000000000000000000000000007F7F7F000000
      0000FFFFFF00FFFFFF007F7F7F007F7F7F007F7F7F000000000000000000FFFF
      FF007F7F7F00000000000000000000000000000000000000000000000000FFFF
      FF00BFBFBF007F7F7F000000000000000000000000007F7F7F00BFBFBF00BFBF
      BF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00BFBFBF007F7F7F000000000000000000000000007F7F7F00BFBFBF00BFBF
      BF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00BFBFBF007F7F7F000000000000000000000000007F7F7F00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00BFBFBF00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00BFBFBF00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00BFBFBF00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF8001FFFF0000F83F0000F83F0000
      E00F0000E00F0000CFC70000C447000087E300008C630000A3F300009C730000
      31F900003FF9000038F900003EF900003C79E0073C7F00003E39E0073C7F0000
      3F19E0073C4100009F8BE0079C6100008FC3E00F8C710000C7E7E01FC4410000
      E00FE03FE00D0000F83FE07FF83F0000FC1FFFFFFFFFFFFFF027F83FF83FF83F
      E60BE00FE00FE00FD805C007C007C0079381800380038003AC62800380038003
      2BA000010001000113D000010001000113D000010001000111D4000100010001
      48250001000100018C69800380038003A39B800380038003D067C007C007C007
      E40FE00FE00FE00FF83FF83FF83FF83F00000000000000000000000000000000
      000000000000}
  end
end
