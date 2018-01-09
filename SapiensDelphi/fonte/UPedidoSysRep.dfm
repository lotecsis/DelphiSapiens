object FPedidoSysRep: TFPedidoSysRep
  Left = 0
  Top = 0
  Caption = 'Dados do Pedido'
  ClientHeight = 560
  ClientWidth = 984
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 130
    Align = alTop
    TabOrder = 0
    object Panel4: TPanel
      Left = 834
      Top = 1
      Width = 149
      Height = 128
      Align = alRight
      BevelOuter = bvLowered
      TabOrder = 0
      object btnDadosGerais: TBitBtn
        Left = 9
        Top = 5
        Width = 131
        Height = 25
        Caption = 'Alterar Dados Gerais'
        DoubleBuffered = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
          00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
          00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
          F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
          FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
          0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
          0033333337FFFFFF773333333000000003333333377777777333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = btnDadosGeraisClick
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 833
      Height = 128
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object LCodRep: TLabel
        Left = 11
        Top = 108
        Width = 43
        Height = 13
        Caption = 'LCodRep'
      end
      object LNomRep: TLabel
        Left = 51
        Top = 108
        Width = 45
        Height = 13
        Caption = 'LNomRep'
      end
      object LApeRep: TLabel
        Left = 332
        Top = 108
        Width = 43
        Height = 13
        Caption = 'LApeRep'
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 833
        Height = 50
        Align = alTop
        BevelOuter = bvLowered
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label4: TLabel
          Left = 11
          Top = 8
          Width = 73
          Height = 13
          Caption = 'N'#186' Controle..:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 187
          Top = 8
          Width = 48
          Height = 13
          Caption = 'C. Pgto..:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 468
          Top = 8
          Width = 55
          Height = 13
          Caption = 'Emiss'#227'o..:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 28
          Top = 30
          Width = 56
          Height = 13
          Caption = 'Vlr Total..:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LNumCon: TLabel
          Left = 89
          Top = 8
          Width = 45
          Height = 13
          Caption = 'LNumCon'
        end
        object LDesCpg: TLabel
          Left = 241
          Top = 8
          Width = 42
          Height = 13
          Caption = 'LDesCpg'
        end
        object LDatEmi: TLabel
          Left = 528
          Top = 8
          Width = 38
          Height = 13
          Caption = 'LDatEmi'
        end
        object LVlrTot: TLabel
          Left = 90
          Top = 30
          Width = 40
          Height = 13
          Caption = 'LVlrTot'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 50
        Width = 833
        Height = 50
        Align = alTop
        BevelOuter = bvLowered
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object LDsCli1: TLabel
          Left = 12
          Top = 8
          Width = 3
          Height = 13
        end
        object LDsCli2: TLabel
          Left = 12
          Top = 29
          Width = 3
          Height = 13
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 130
    Width = 984
    Height = 366
    Align = alClient
    TabOrder = 1
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 982
      Height = 37
      Align = alTop
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 22
        Top = 3
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
      object Label8: TLabel
        Left = 8
        Top = 19
        Width = 63
        Height = 13
        Caption = 'Deriva'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBDesPro: TDBText
        Left = 75
        Top = 3
        Width = 300
        Height = 17
        DataField = 'DESPRO'
        DataSource = DsConsE120Ipd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBCodDer: TDBText
        Left = 75
        Top = 19
        Width = 102
        Height = 17
        DataField = 'CODDER'
        DataSource = DsConsE120Ipd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel10: TPanel
      Left = 1
      Top = 38
      Width = 982
      Height = 327
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 678
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 982
        Height = 327
        Align = alClient
        DataSource = DsConsE120Ipd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Times New Roman'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SEQIPD'
            Title.Alignment = taCenter
            Title.Caption = 'SEQ.'
            Width = 45
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TNSPRO'
            Title.Alignment = taCenter
            Title.Caption = 'TRANS.'
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODPRO'
            Title.Alignment = taCenter
            Title.Caption = 'PRODUTO'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODDER'
            Title.Alignment = taCenter
            Title.Caption = 'DERIVA'#199#195'O'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDPED'
            Title.Alignment = taCenter
            Title.Caption = 'QTD. PEDIDA'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODTPR'
            Title.Alignment = taCenter
            Title.Caption = 'TAB. PRE'#199'O'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PREUNI'
            Title.Alignment = taCenter
            Title.Caption = 'PRE'#199'O UNIT.'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TOTDESC'
            Title.Alignment = taCenter
            Title.Caption = 'TOT. DESC. %'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VLRBRU'
            Title.Alignment = taCenter
            Title.Caption = 'VLR. BRUTO'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VLRORI'
            Title.Alignment = taCenter
            Title.Caption = 'VLR. ORI'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DESCAPR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'DESC. APROV.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Times New Roman'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 496
    Width = 984
    Height = 64
    Align = alBottom
    TabOrder = 2
    object Panel11: TPanel
      Left = 1
      Top = 1
      Width = 982
      Height = 35
      Align = alTop
      TabOrder = 0
      object Panel12: TPanel
        Left = 709
        Top = 1
        Width = 272
        Height = 33
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 406
        object BExcProd: TBitBtn
          Left = 198
          Top = 3
          Width = 30
          Height = 25
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            A7DDFF40B5FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF40B5
            FFA7DDFFFFFFFFFFFFFFFFFFFFFFFFFF23AAFF15A1FF1FABFF49C7FF5CD1FF53
            D1FF46D3FF4CD8FF49D5FF2CC1FF1FB1FF23AAFFFFFFFFFFFFFFFFFFFFFFFFFF
            14A4FF35B8FF49C7FF87E1FFA5EBFF8FE9FF73E6FF77E9FF74E7FF55D8FF1EB1
            FF14A4FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF58CAFF46C6FF82DEFFA1EAFF87
            E5FF101F9600007A00007A00007A00007A00007A00007A303093FFFFFFFFFFFF
            14A4FF73D4FF43C6FF7EDDFF9CE7FF7FE1FF0303805757EF5A5AF05151F02727
            DA0A0AB501019500007AFFFFFFFFFFFF14A4FF8FDDFF3FC5FF78DCFF96E3FF75
            DCFF0D1D96030380030380030380030380030380030380303093FFFFFFFFFFFF
            14A4FFACE6FF43C7FF73DAFF90E3FF6BD8FF3FCBFF3ECAFF3CCAFF2DBFFF33B8
            FF14A4FFFFFFFFFFFFFFFFFFFFFFFFFF1DA8FF7FD5FFB1E7FFC5F0FFC9F2FFC7
            F2FFC5F0FFC5F0FFC5F0FFC0EDFF79D3FF1EA8FFFFFFFFFFFFFFFFFFFFFFFFFF
            1EA8FF12A0FF1BABFF31BCFF3EC6FF3CC9FF37CCFF3DD1FF3ACFFF2AC0FF1AAE
            FF1DA8FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF2EB4FF47C6FF86E1FFA6EBFF90
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
          TabOrder = 0
          OnClick = BExcProdClick
        end
        object BAltProd: TBitBtn
          Left = 166
          Top = 3
          Width = 30
          Height = 25
          DoubleBuffered = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333FF3FFFF3FFF33FF003000030003
            300077377773777F377703330033370337037FFF77F3377FF77F700007333300
            0003777777333377777F303003333330370337F77F333337377F303073333333
            070337F77F333333777F3700733333333003377773333333377F330033333333
            30033377F3333333377F33073333333333033377333333333373333333333333
            33333333FF3333333FF3333973333333793333377FF3333377F3333999333339
            993333377733333777F33339933333339933333773FF333377F3333939733379
            39333337377FFF77373333333399999333333333337777733333}
          NumGlyphs = 2
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = BAltProdClick
        end
        object BAddProd: TBitBtn
          Left = 134
          Top = 3
          Width = 30
          Height = 25
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            ADE4FF4FC5FF26B7FF26B7FF26B7FF26B7FF26B7FF26B7FF029B10009900059C
            10ADE4FFFFFFFFFFFFFFFFFFFFFFFFFF34BCFF25B5FF34BDFF64D4FF77DCFF6E
            DCFF61DDFF67E1FF00990025B22800990034BCFFFFFFFFFFFFFFFFFFFFFFFFFF
            26B7FF4EC8FF64D4FF9EE8FFB8F0FFA5EEFF8CECFF90EEFF00990044C0460099
            0026B7FFFFFFFFFFFFFFFFFFFFFFFFFF26B7FF73D6FF61D3FF9AE6FFB5EFFF0A
            9E1000990000990000990061CE62009900009900009900109F10FFFFFFFFFFFF
            26B7FF8CDEFF5ED3FF96E5FFB0EDFF009900AAECABADEEADA0ED9F80E57F61D0
            6037B63718A618009900FFFFFFFFFFFF26B7FFA5E5FF59D2FF91E4FFABEAFF09
            9E100099000099000099009EEB9F009900009900009900109F10FFFFFFFFFFFF
            26B7FFBEECFF5ED4FF8CE3FFA6EAFF85E1FF59D7FF58D6FF009900A6EBA60099
            0026B7FFFFFFFFFFFFFFFFFFFFFFFFFF2FBAFF96DEFFC2EDFFD2F4FFD5F5FFD4
            F5FFD2F4FFD2F4FF0099009CE79E0099002FBAFFFFFFFFFFFFFFFFFFFFFFFFFF
            2FBAFF22B4FF2FBDFF4ACBFF58D3FF56D5FF51D8FF57DCFF059D10009900039B
            102FBAFFFFFFFFFFFFFFFFFFFFFFFFFF26B7FF47C4FF62D3FF9DE8FFB9F0FFA6
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
          TabOrder = 2
          OnClick = BAddProdClick
        end
      end
      object btnLiberarDesc: TBitBtn
        Left = 8
        Top = 4
        Width = 115
        Height = 25
        Caption = 'Liberar Desconto'
        DoubleBuffered = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
          333333333F777773FF333333008888800333333377333F3773F3333077870787
          7033333733337F33373F3308888707888803337F33337F33337F330777880887
          7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
          7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
          0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
          03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
          033333337F73FF737F33B33B778000877333333373F777337333333B30888880
          33333333373FFFF73333333B3300000333333333337777733333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = btnLiberarDescClick
      end
    end
  end
  object DsConsE120Ipd: TDataSource
    DataSet = DmFire.ConsE120Ipd
    Left = 472
    Top = 216
  end
  object DsLivre: TDataSource
    Left = 504
    Top = 264
  end
end
