object FComparaSaidaTecido: TFComparaSaidaTecido
  Left = 0
  Top = 0
  Caption = 'Campara'#231#227'o de Consumo x Baixa de Tecido'
  ClientHeight = 716
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
  PixelsPerInch = 96
  TextHeight = 13
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 538
    Height = 716
    ActivePage = TbConsulta
    Align = alClient
    TabOrder = 0
    object TbConsulta: TTabSheet
      Caption = 'Consulta Sa'#237'das'
      object Panel1: TPanel
        Left = 0
        Top = 654
        Width = 530
        Height = 34
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          Left = 394
          Top = 10
          Width = 35
          Height = 13
          Caption = 'Total: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LDsGeral: TLabel
          Left = 5
          Top = 12
          Width = 3
          Height = 13
        end
        object EdTotDif: TCurrencyEdit
          Left = 433
          Top = 3
          Width = 96
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          TabStop = False
          DisplayFormat = ' ,0.00;- ,0.00'
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 530
        Height = 97
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 5
          Top = 10
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
          Left = 198
          Top = 8
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
          Left = 15
          Top = 33
          Width = 36
          Height = 13
          Caption = 'Carga:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdDatFim: TDateEdit
          Left = 224
          Top = 2
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
        object EdDatIni: TDateEdit
          Left = 62
          Top = 2
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
        object Panel4: TPanel
          Left = 401
          Top = 1
          Width = 128
          Height = 95
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 2
          object BMostrar: TBitBtn
            Left = 4
            Top = 24
            Width = 119
            Height = 25
            Caption = 'Mostrar'
            DoubleBuffered = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
              A7DDFF40B5FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF40B5
              FF82929A9E9E9EC5C5C5FFFFFFFFFFFF23AAFF15A1FF1FABFF49C7FF5CD1FF53
              D1FF46D3FF4CD8FF49D5FF2CC1FF4196BEABACAC7B7D7DC9C9C9FFFFFFFFFFFF
              14A4FF35B8FF49C7FF87E1FFA5EBFF8FE9FF73E6FF77E9FF74E7FF5AC4E38E98
              9D8182829D9E9EFFFFFFFFFFFFFFFFFF14A4FF58CAFF46C6FF82DEFFA1EAFF87
              E5FF66E0FF68E1FF67D8F679939A8989896D8E9EF6F6F6FFFFFFFFFFFFFFFFFF
              14A4FF73D4FF43C6FF7DD7F688A6B06970736A707377888C70929C8889896887
              9619A0F6FFFFFFFFFFFFFFFFFFFFFFFF14A4FF8FDDFF41C0F66E797D999897DC
              DAD9D0CFCEC4C1C1959395777B7F1AA3F614A4FFFFFFFFFFFFFFFFFFFFFFFFFF
              14A4FFACE6FF648F9E96908AEAE3DCDDD8D1CFCAC4CEC9C4CCC9C29996974EA7
              D314A4FFFFFFFFFFFFFFFFFFFFFFFFFF1DA8FF7FD5FF727373FFF3E7FEF3E6FE
              F3E7FCF3E6FCF3E7FEF3E7E1D7D18C9CA31EA8FFFFFFFFFFFFFFFFFFFFFFFFFF
              1EA8FF12A0FF6D7372DEC4A6D9CAB7DACBBADCCCBBE0D0C0DCCEBDCEC1B27A8C
              951DA8FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF2EB4FF6A7375FFE6CAFFEDD9FF
              EAD1FBE5CCFCE9D1F7E5D0D9CBBD778F9915A9FFFFFFFFFFFFFFFFFFFFFFFFFF
              14A4FF55C9FF648692CFBBA5FFEDD8FAE7D1F2E0CAF4E2CCF2E0CBABA4A04299
              C415A9FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF6ED1FF48BAED727778D3C7BAF4
              E3D0EAD9C6E9D9C6BDB6B0788F961AACFF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
              14A4FF8ADCFF3FC5FF77C6E3818F93868C8F939A9E8891936D9EAD3DC1F616A7
              FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FFA7E5FF3AC5FF73DAFF91E2FF6E
              D9FF41CBFF40CBFF3ECBFF2FC0FF23AFFF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
              23AAFF97DEFFB6EBFFB0EBFFBCEFFFB0EBFF9FE6FF9EE6FF9DE6FFABE9FF89DC
              FF26ACFFFFFFFFFFFFFFFFFFFFFFFFFFA7DDFF40B5FF14A4FF14A4FF14A4FF14
              A4FF14A4FF14A4FF14A4FF14A4FF31AFFFA7DDFFFFFFFFFFFFFF}
            ParentDoubleBuffered = False
            TabOrder = 0
            OnClick = BMostrarClick
          end
        end
        object MeNumAne: TMemo
          Left = 62
          Top = 31
          Width = 283
          Height = 61
          Lines.Strings = (
            '')
          TabOrder = 3
          OnExit = MeNumAneExit
          OnKeyPress = MeNumAneKeyPress
        end
        object BCarregar: TBitBtn
          Left = 405
          Top = 0
          Width = 119
          Height = 25
          Caption = 'Carregar Cargas'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFF686868
            6868686868686767676767676767676767676767676666666666666666666666
            66666666FFFFFFFFFFFFFFFFFF767676FCFCFCF7F7F7F7F7F7F7F7F7F7F7F7DA
            D4CFF7F7F7F6F6F6F6F6F6F6F6F6FCFCFC747474FFFFFFFFFFFFFFFFFF818181
            F7F7F7E0E0E0E1E1E1D4D0CEB47B39AB4F29E0E0E0E0E0E0DEDEDEDDDDDDF6F6
            F67F7F7FFFFFFFFFFFFFFFFFFF8B8B8BF8F8F8E3E3E3CCC2B1C7A12EEB9D0FCF
            7611AF6938BBA69CE1E1E1E0E0E0F7F7F78A8A8AFFFFFFFFFFFFFFFFFF959595
            F8F8F8E7E7E7B6A584E7BF1CF0B816EB970DD85F0AB42905B7968BE3E3E3F8F8
            F8929292FFFFFFFFFFFFFFFFFF9A9A9AFAFAFAEAEAEAEBEBEBC6B78AD8AD1DC5
            8025BF8255A92D0C8F2313E6E6E6F8F8F8999999FFFFFFFFFFFFFFFFFFA1A1A1
            FBFBFBEDEDEDD3CBC7E0DDDAD3CAB7AB8E70EEEEEED1CBC6842012EAEAEAFAFA
            FAA0A0A0FFFFFFFFFFFFFFFFFFA5A5A5FBFBFBEFEFEFBBA36BC9AA46E3E1DEF0
            F0F09E6839E1DEDCE0DDDAEDEDEDFAFAFAA5A5A5FFFFFFFFFFFFFFFFFFA9A9A9
            FBFBFBF2F2F2D8CEBCE7C018C99216C79057BD5506A92D0BD0BDB6EEEEEEFBFB
            FBA7A7A7FFFFFFFFFFFFFFFFFFABABABFCFCFCF4F4F4F6F6F6C2A760E6AA11EA
            980FE0690AC54107811602F0F0F0FBFBFBABABABFFFFFFFFFFFFFFFFFFACACAC
            FCFCFCF6F6F6F7F7F7F7F7F7D9C6ABC77E49C24F07B12804AA8072F2F2F2FBFB
            FBACACACFFFFFFFFFFFFFFFFFFADADADFCFCFCF7F7F7F8F8F8F8F8F8FAFAFAF8
            F8F88A390CCAB2A9F6F6F6F3F3F3FCFCFCADADADFFFFFFFFFFFFFFFFFFAFAFAF
            FEFEFEF8F8F8FAFAFAFAFAFAFAFAFAFAFAFAF8F8F8F7F7F7AFAFAFBCBCBCD0D0
            D0B2B2B2FFFFFFFFFFFFFFFFFFAFAFAFFEFEFEFAFAFAFAFAFAFBFBFBFBFBFBFB
            FBFBFAFAFAF8F8F8BCBCBCD9D9D9B4B4B4F0F0F0FFFFFFFFFFFFFFFFFFAFAFAF
            FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF8F8F8D0D0D0B4B4B4F0F0
            F0FFFFFFFFFFFFFFFFFFFFFFFFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF
            AFAFAFAFAFAFAFAFB4B4B4F0F0F0FFFFFFFFFFFFFFFFFFFFFFFF}
          ParentDoubleBuffered = False
          TabOrder = 4
          OnClick = BCarregarClick
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 97
        Width = 530
        Height = 557
        Align = alClient
        TabOrder = 2
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 528
          Height = 555
          Align = alClient
          DataSource = DsConsUsu_TComTec
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'USU_CODPRO'
              Title.Alignment = taCenter
              Title.Caption = 'Tecido'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_QTDSAI'
              Title.Alignment = taCenter
              Title.Caption = 'Qtd. Sa'#237'da por Consumo'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_QTDBAX'
              Title.Alignment = taCenter
              Title.Caption = 'Qtd. Sa'#237'da por Baixa'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vnDiferenca'
              Title.Alignment = taCenter
              Title.Caption = 'Diferen'#231'a'
              Width = 115
              Visible = True
            end>
        end
      end
    end
  end
  object ConsE075Der: TADOQuery
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
    Left = 464
    Top = 480
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
    object ConsE075DerQTDEMB: TIntegerField
      FieldName = 'QTDEMB'
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
    object ConsE075DerQTDCUS: TFMTBCDField
      FieldName = 'QTDCUS'
      Precision = 12
      Size = 5
    end
  end
  object CadUsu_TComTec: TADOQuery
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
      'select * from usu_tcomtec where usu_codpro = :codpro')
    Left = 464
    Top = 416
    object CadUsu_TComTecUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TComTecUSU_QTDSAI: TBCDField
      FieldName = 'USU_QTDSAI'
      Precision = 11
      Size = 2
    end
    object CadUsu_TComTecUSU_QTDBAX: TBCDField
      FieldName = 'USU_QTDBAX'
      Precision = 11
      Size = 2
    end
  end
  object ConsUsu_TCorCar: TADOQuery
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
      'select usu_tcorcar.* from usu_tcorcar where usu_numane = :numane')
    Left = 464
    Top = 352
    object ConsUsu_TCorCarUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TCorCarUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TCorCarUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TCorCarUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object ConsUsu_TCorCarUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object ConsUsu_TCorCarUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ConsUsu_TCorCarUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_TCorCarUSU_SALABE1: TBCDField
      FieldName = 'USU_SALABE1'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCorCarUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object ConsUsu_TCorCarUSU_SALABE2: TBCDField
      FieldName = 'USU_SALABE2'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCorCarUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object ConsUsu_TCorCarUSU_CORCOR: TStringField
      FieldName = 'USU_CORCOR'
      Size = 1
    end
    object ConsUsu_TCorCarUSU_SELITE: TStringField
      FieldName = 'USU_SELITE'
      Size = 1
    end
    object ConsUsu_TCorCarUSU_QTDCOR1: TBCDField
      FieldName = 'USU_QTDCOR1'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCorCarUSU_QTDCOR2: TBCDField
      FieldName = 'USU_QTDCOR2'
      Precision = 11
      Size = 2
    end
  end
  object ConsUsu_TMovBax: TADOQuery
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
      'select usu_tmovbax.* from usu_tmovbax'
      '                               where usu_numane = :numane and'
      '                                     usu_sitmov = '#39'A'#39)
    Left = 463
    Top = 294
    object ConsUsu_TMovBaxUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
    object ConsUsu_TMovBaxUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TMovBaxUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TMovBaxUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TMovBaxUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object ConsUsu_TMovBaxUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object ConsUsu_TMovBaxUSU_QTDMOV: TIntegerField
      FieldName = 'USU_QTDMOV'
    end
    object ConsUsu_TMovBaxUSU_QTDMT1: TBCDField
      FieldName = 'USU_QTDMT1'
      Precision = 8
      Size = 2
    end
    object ConsUsu_TMovBaxUSU_QTDMT2: TBCDField
      FieldName = 'USU_QTDMT2'
      Precision = 8
      Size = 2
    end
    object ConsUsu_TMovBaxUSU_DATMOV: TDateTimeField
      FieldName = 'USU_DATMOV'
    end
    object ConsUsu_TMovBaxUSU_HORMOV: TIntegerField
      FieldName = 'USU_HORMOV'
    end
    object ConsUsu_TMovBaxUSU_USUMOV: TIntegerField
      FieldName = 'USU_USUMOV'
    end
    object ConsUsu_TMovBaxUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object ConsUsu_TMovBaxUSU_SITMOV: TStringField
      FieldName = 'USU_SITMOV'
      Size = 1
    end
  end
  object ConsUsu_TDifTec: TADOQuery
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
      'select usu_tdiftec.* from usu_tdiftec'
      '                          where usu_numane = :numane and'
      
        '                                     usu_motmov = '#39'PERCA PROCESS' +
        'O DE PRODUCAO'#39)
    Left = 464
    Top = 216
    object ConsUsu_TDifTecUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_TDifTecUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUsu_TDifTecUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TDifTecUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
    object ConsUsu_TDifTecUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TDifTecUSU_QTDMOV: TBCDField
      FieldName = 'USU_QTDMOV'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TDifTecUSU_DATMOV: TDateTimeField
      FieldName = 'USU_DATMOV'
    end
    object ConsUsu_TDifTecUSU_SEQLOG: TIntegerField
      FieldName = 'USU_SEQLOG'
    end
    object ConsUsu_TDifTecUSU_CODPROLOG: TStringField
      FieldName = 'USU_CODPROLOG'
      Size = 14
    end
  end
  object ConsUsu_TComTec: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    OnCalcFields = ConsUsu_TComTecCalcFields
    Parameters = <>
    SQL.Strings = (
      'select * from usu_tcomtec order by usu_codpro')
    Left = 464
    Top = 160
    object ConsUsu_TComTecUSU_CODPRO: TStringField
      Alignment = taCenter
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TComTecUSU_QTDSAI: TBCDField
      Alignment = taCenter
      FieldName = 'USU_QTDSAI'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TComTecUSU_QTDBAX: TBCDField
      Alignment = taCenter
      FieldName = 'USU_QTDBAX'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TComTecvnDiferenca: TFloatField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'vnDiferenca'
      Calculated = True
    end
  end
  object DsConsUsu_TComTec: TDataSource
    DataSet = ConsUsu_TComTec
    Left = 320
    Top = 184
  end
  object ConsUsu_TCarPro: TADOQuery
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
      end>
    SQL.Strings = (
      'select * from usu_tcarpro where'
      
        '                          usu_datimp between :datini and :datfim' +
        ' and'
      '                          usu_carpro = '#39'S'#39
      '                          order by usu_numane asc')
    Left = 336
    Top = 416
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
  object ValidaCarPro: TADOQuery
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
      'select * from usu_tcarpro where usu_numane = :numane and'
      '                                usu_carpro = '#39'S'#39)
    Left = 336
    Top = 360
    object ValidaCarProUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ValidaCarProUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object ValidaCarProUSU_HORIMP: TIntegerField
      FieldName = 'USU_HORIMP'
    end
    object ValidaCarProUSU_USUIMP: TIntegerField
      FieldName = 'USU_USUIMP'
    end
    object ValidaCarProUSU_CARPRO: TStringField
      FieldName = 'USU_CARPRO'
      Size = 1
    end
  end
  object TempCarPro: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usu_tcarpro where usu_numane = 999999 and'
      '                                usu_carpro = '#39'S'#39)
    Left = 176
    Top = 352
    object TempCarProUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object TempCarProUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object TempCarProUSU_HORIMP: TIntegerField
      FieldName = 'USU_HORIMP'
    end
    object TempCarProUSU_USUIMP: TIntegerField
      FieldName = 'USU_USUIMP'
    end
    object TempCarProUSU_CARPRO: TStringField
      FieldName = 'USU_CARPRO'
      Size = 1
    end
  end
  object ProviderTempCarPro: TDataSetProvider
    DataSet = TempCarPro
    Left = 176
    Top = 408
  end
  object ClientTempCarPro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderTempCarPro'
    Left = 176
    Top = 464
    object ClientTempCarProUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ClientTempCarProUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object ClientTempCarProUSU_HORIMP: TIntegerField
      FieldName = 'USU_HORIMP'
    end
    object ClientTempCarProUSU_USUIMP: TIntegerField
      FieldName = 'USU_USUIMP'
    end
    object ClientTempCarProUSU_CARPRO: TStringField
      FieldName = 'USU_CARPRO'
      Size = 1
    end
  end
end
