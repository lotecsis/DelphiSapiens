object FConsFaturamento: TFConsFaturamento
  Left = 0
  Top = 0
  Caption = 'Consulta Faturamento'
  ClientHeight = 637
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 145
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 272
      Top = 16
      Width = 59
      Height = 13
      Caption = 'Ano Inicio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 283
      Top = 44
      Width = 48
      Height = 13
      Caption = 'Ano Fim:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 288
      Top = 98
      Width = 42
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 302
      Top = 124
      Width = 28
      Height = 13
      Caption = 'Rep.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 302
      Top = 72
      Width = 28
      Height = 13
      Caption = 'Filial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbAnoInicio: TComboBox
      Left = 334
      Top = 8
      Width = 67
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 0
      Items.Strings = (
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object cbAnoFim: TComboBox
      Left = 334
      Top = 36
      Width = 67
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 1
      Items.Strings = (
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object DBGrid1: TDBGrid
      Left = 5
      Top = 4
      Width = 228
      Height = 136
      DataSource = DsClientDatas
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DatIni'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Inicio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 95
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DatFim'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Fim'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 95
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 236
      Top = 6
      Width = 25
      Height = 47
      DoubleBuffered = True
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888888800008888FFFFFFFFFFFFF88800008887
        404040404040F88800008887040408840404F88800008887404089984040F888
        00008887040899998404F88800008887408999999840F8880000888777778998
        7777888800008888888889988888888800008888FFFF8998FFFFF88800008887
        BFBF8998BFBFF88800008887FBFB8998FBFBF88800008887BFBF8888BFBFF888
        00008887FBFBFBFBFBFBF88800008887BFBFBFBFBFBFF88800008887FBFBFBFB
        FBFBF88800008887777777777777888800008888888888888888888800008888
        88888888888888880000}
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object EdCodCli: TEdit
      Left = 334
      Top = 89
      Width = 90
      Height = 21
      TabOrder = 4
    end
    object EdCodRep: TEdit
      Left = 334
      Top = 116
      Width = 90
      Height = 21
      TabOrder = 5
    end
    object EdCodFil: TEdit
      Left = 334
      Top = 63
      Width = 90
      Height = 21
      TabOrder = 6
    end
    object BMostrar: TBitBtn
      Left = 843
      Top = 6
      Width = 90
      Height = 25
      Caption = 'Mostrar'
      DoubleBuffered = True
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333300003333333333333333333300003333333330033003300300003333
        3333300330033003000033303333333333333333000033000333333333333333
        000030F000333333333333330000330F000333333333333300003330F0000000
        73333333000033330F0078887033333300003333300788FF8703333300003333
        30788888F877333300003333308888888F80333300003333307888888F803333
        000033333078FF8888803333000033333777FF88887733330000333333077888
        8703333300003333333077777033333300003333333370007333333300003333
        33333333333333330000}
      ParentDoubleBuffered = False
      TabOrder = 7
      OnClick = BMostrarClick
    end
    object BCodCli: TBitBtn
      Left = 404
      Top = 90
      Width = 19
      Height = 19
      Caption = '...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 8
      OnClick = BCodCliClick
    end
    object BCodRep: TBitBtn
      Left = 404
      Top = 117
      Width = 19
      Height = 19
      Caption = '...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 9
      OnClick = BCodRepClick
    end
    object BImprimir: TBitBtn
      Left = 843
      Top = 33
      Width = 90
      Height = 25
      Caption = 'Imprimir'
      DoubleBuffered = True
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDDD7777777777DDDDD0000DDDD
        000000000007DDDD0000DDD07878787870707DDD0000DD0000000000000707DD
        0000DD0F8F8F8AAA8F0007DD0000DD08F8F8F999F80707DD0000DD0000000000
        0008707D0000DD08F8F8F8F8F080807D0000DDD0000000000F08007D0000DDDD
        0BFFFBFFF0F080DD0000DDDDD0F00000F0000DDD0000DDDDD0FBFFFBFF0DDDDD
        0000DDDDDD0F00000F0DDDDD0000DDDDDD0FFBFFFBF0DDDD0000DDDDDDD00000
        0000DDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDD
        DDDDDDDDDDDDDDDD0000}
      ParentDoubleBuffered = False
      TabOrder = 10
      OnClick = BImprimirClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 145
    Width = 934
    Height = 451
    Align = alClient
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 932
      Height = 449
      Align = alClient
      DataSource = DsClientResultado
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid2DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'DatIni'
          Title.Alignment = taCenter
          Title.Caption = 'DATA INICIO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DatFim'
          Title.Alignment = taCenter
          Title.Caption = 'DATA FIM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotEstof'
          Title.Alignment = taCenter
          Title.Caption = 'ESTOFADOS'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotColch'
          Title.Alignment = taCenter
          Title.Caption = 'COLCHOES'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotDiver'
          Title.Alignment = taCenter
          Title.Caption = 'DIVERSOS'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotBruto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'TOT.S/IMP'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotLiq'
          Title.Alignment = taCenter
          Title.Caption = 'TOT.C/IMP'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotOutros'
          ReadOnly = False
          Title.Caption = 'IMOB/OUTROS'
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdFun'
          Title.Alignment = taCenter
          Title.Caption = 'QTD. FUNC.'
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MedVlrQtdFun'
          Title.Alignment = taCenter
          Title.Caption = 'MEDIA P/FUNC.'
          Width = 110
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DiasTrab'
          Title.Alignment = taCenter
          Title.Caption = 'DIAS TRAB.'
          Width = 90
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MedVlrDiasTrab'
          Title.Alignment = taCenter
          Title.Caption = 'MED. P/DIAS TRAB.'
          Width = 130
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 596
    Width = 934
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Label6: TLabel
      Left = 227
      Top = 3
      Width = 31
      Height = 13
      Caption = 'Estof.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 344
      Top = 3
      Width = 33
      Height = 13
      Caption = 'Colch.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 461
      Top = 3
      Width = 33
      Height = 13
      Caption = 'Diver.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 578
      Top = 3
      Width = 61
      Height = 13
      Caption = 'Tot S/Imp '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 695
      Top = 3
      Width = 64
      Height = 13
      Caption = 'Tot. C/Imp '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 812
      Top = 3
      Width = 102
      Height = 13
      Caption = 'Tot. Imob/Outros '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object EdEstof: TCurrencyEdit
      Left = 227
      Top = 18
      Width = 100
      Height = 19
      Margins.Left = 5
      Margins.Top = 2
      Ctl3D = False
      DisplayFormat = ' ,0.00;- ,0.00'
      ParentCtl3D = False
      TabOrder = 0
    end
    object EdColch: TCurrencyEdit
      Left = 344
      Top = 18
      Width = 100
      Height = 19
      Margins.Left = 5
      Margins.Top = 2
      Ctl3D = False
      DisplayFormat = ' ,0.00;- ,0.00'
      ParentCtl3D = False
      TabOrder = 1
    end
    object EdDiver: TCurrencyEdit
      Left = 461
      Top = 18
      Width = 100
      Height = 19
      Margins.Left = 5
      Margins.Top = 2
      Ctl3D = False
      DisplayFormat = ' ,0.00;- ,0.00'
      ParentCtl3D = False
      TabOrder = 2
    end
    object EdTotBru: TCurrencyEdit
      Left = 578
      Top = 18
      Width = 100
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      Ctl3D = False
      DisplayFormat = ' ,0.00;- ,0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object EdTotLiq: TCurrencyEdit
      Left = 695
      Top = 18
      Width = 100
      Height = 19
      Margins.Left = 5
      Margins.Top = 2
      Ctl3D = False
      DisplayFormat = ' ,0.00;- ,0.00'
      ParentCtl3D = False
      TabOrder = 4
    end
    object EdTotImob: TCurrencyEdit
      Left = 812
      Top = 18
      Width = 100
      Height = 19
      Margins.Left = 5
      Margins.Top = 2
      Ctl3D = False
      DisplayFormat = ' ,0.00;- ,0.00'
      ParentCtl3D = False
      TabOrder = 5
    end
  end
  object ClientDatas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 80
    Data = {
      380000009619E0BD010000001800000002000000000003000000380006446174
      496E6904000600000000000644617446696D04000600000000000000}
    object ClientDatasDatIni: TDateField
      FieldName = 'DatIni'
    end
    object ClientDatasDatFim: TDateField
      FieldName = 'DatFim'
    end
  end
  object DsClientDatas: TDataSource
    DataSet = ClientDatas
    Left = 696
    Top = 24
  end
  object DsClientResultado: TDataSource
    DataSet = DmOra.ClientResultado
    Left = 592
    Top = 24
  end
  object ConsFaturamento: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'DatIni'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatFim'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'CodAgp'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CodRep'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CodFil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT SUM(E140IPV.VLRBRU) AS TOTAL, SUM(E140IPV.VLRLIQ) AS TOTA' +
        'L_LIQ FROM E140IPV'
      'INNER JOIN E140NFV ON E140NFV.CODEMP = E140IPV.CODEMP AND'
      '                      E140NFV.CODFIL = E140IPV.CODFIL AND'
      '                      E140NFV.NUMNFV = E140IPV.NUMNFV AND'
      '                      E140NFV.CODSNF = E140IPV.CODSNF'
      'INNER JOIN E075PRO ON E075PRO.CODEMP = E140IPV.CODEMP AND'
      '                      E075PRO.CODPRO = E140IPV.CODPRO'
      'INNER JOIN E085CLI ON E085CLI.CODCLI = E140NFV.CODCLI'
      'INNER JOIN E085HCL ON E085HCL.CODCLI = E085CLI.CODCLI AND'
      '                      E085HCL.CODFIL = 1'
      '                      WHERE'
      
        '                      E140NFV.DATEMI BETWEEN :DatIni AND :DatFim' +
        ' AND'
      '                      E140NFV.TIPNFS IN (10,1) AND'
      '                      E075PRO.CODORI = '#39'01'#39' AND'
      '                      E140NFV.SITNFV = 2 AND'
      
        '                      (SELECT E001TNS.VENFAT FROM E001TNS WHERE ' +
        'E001TNS.CODEMP = E140IPV.CODEMP AND'
      
        '                                                               E' +
        '001TNS.CODTNS = E140IPV.TNSPRO) = '#39'S'#39' AND'
      '                      E075PRO.CODAGP = :CodAgp AND'
      '                      E085HCL.CODREP = :CodRep AND'
      '                      E140NFV.CODFIL = :CodFil'
      '                     GROUP BY 1')
    Left = 496
    Top = 16
    object ConsFaturamentoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsFaturamentoTOTAL_LIQ: TFMTBCDField
      FieldName = 'TOTAL_LIQ'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
end
