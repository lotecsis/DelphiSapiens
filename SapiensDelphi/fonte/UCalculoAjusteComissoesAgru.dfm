object FCalculoAjusteComissoesAgru: TFCalculoAjusteComissoesAgru
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Calcula o Ajuste de Comiss'#245'es - Agrupado'
  ClientHeight = 588
  ClientWidth = 994
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
    Left = 57
    Top = 13
    Width = 43
    Height = 13
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 219
    Top = 13
    Width = 7
    Height = 13
    Caption = #224
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 15
    Top = 44
    Width = 85
    Height = 13
    Caption = 'Representante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 778
    Top = 556
    Width = 86
    Height = 13
    Caption = 'Total Comiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDesRep: TLabel
    Left = 213
    Top = 44
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 75
    Top = 77
    Width = 25
    Height = 13
    Caption = 'Filial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 208
    Top = 556
    Width = 86
    Height = 13
    Caption = 'Valor Comiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 415
    Top = 556
    Width = 69
    Height = 13
    Caption = 'Total Ajuste'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 23
    Top = 556
    Width = 59
    Height = 13
    Caption = 'Total Base'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 601
    Top = 555
    Width = 58
    Height = 13
    Caption = '1/12 Avos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 237
    Top = 77
    Width = 14
    Height = 13
    Caption = 'UF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtDatIni: TDateEdit
    Left = 107
    Top = 10
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object edtDatFim: TDateEdit
    Left = 237
    Top = 10
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object edtCodRep: TCurrencyEdit
    Left = 107
    Top = 41
    Width = 100
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 2
    OnExit = edtCodRepExit
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 96
    Width = 995
    Height = 447
    DataSource = dsConsE504CapAgru
    TabOrder = 6
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
        FieldName = 'CODFIL'
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMNFV'
        Title.Alignment = taCenter
        Title.Caption = 'NFE'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TOTAL_BASE'
        Title.Alignment = taCenter
        Title.Caption = 'Total Base'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TOTAL_COMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Comiss'#227'o'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PERCOM'
        Title.Alignment = taCenter
        Title.Caption = '% Cond.Pgto.'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_PERAPL'
        Title.Alignment = taCenter
        Title.Caption = '% Reajuste'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnVlrReajuste'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Reajuste'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnDezeAvos'
        Title.Alignment = taCenter
        Title.Caption = '1/12 Avos'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnTotalComissao'
        Title.Alignment = taCenter
        Title.Caption = 'Total Comiss'#227'o'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCPG'
        Title.Alignment = taCenter
        Title.Caption = 'Cond.Pgto.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCPG'
        Title.Alignment = taCenter
        Title.Caption = 'Desc.Pgto.'
        Width = 180
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRZMED'
        Title.Alignment = taCenter
        Title.Caption = 'Prazo M'#233'dio'
        Width = 70
        Visible = True
      end>
  end
  object btnMostrar: TBitBtn
    Left = 911
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
      C8807FF7777777777FF700000000000000007777777777777777333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btnMostrarClick
  end
  object btnImprimir: TBitBtn
    Left = 911
    Top = 40
    Width = 75
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
    TabOrder = 7
    TabStop = False
    OnClick = btnImprimirClick
  end
  object edtTotalComissao: TCurrencyEdit
    Left = 866
    Top = 552
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    Alignment = taCenter
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object edtCodFil: TCurrencyEdit
    Left = 107
    Top = 69
    Width = 100
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 3
  end
  object edtTotalBase: TCurrencyEdit
    Left = 87
    Top = 552
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    Alignment = taCenter
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object edtVlrComissao: TCurrencyEdit
    Left = 299
    Top = 552
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    Alignment = taCenter
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object edtTotalAjuste: TCurrencyEdit
    Left = 488
    Top = 552
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    Alignment = taCenter
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object edtDozeAvos: TCurrencyEdit
    Left = 663
    Top = 552
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    Alignment = taCenter
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
  end
  object chkAjustar: TCheckBox
    Left = 926
    Top = 73
    Width = 59
    Height = 17
    Caption = 'Ajustar'
    Checked = True
    State = cbChecked
    TabOrder = 13
  end
  object edtUF: TEdit
    Left = 256
    Top = 69
    Width = 38
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 2
    TabOrder = 4
  end
  object edtTotalAjuste1_101: TCurrencyEdit
    Left = 585
    Top = 10
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    TabStop = False
    DisplayFormat = ',0.00'
    ReadOnly = True
    TabOrder = 14
  end
  object btn1: TBitBtn
    Left = 400
    Top = 8
    Width = 185
    Height = 25
    Caption = 'Calcular Total de Ajuste 1+101'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 15
    TabStop = False
    OnClick = btn1Click
  end
  object dsConsE504CapAgru: TDataSource
    DataSet = DmOra.ConsE504CapAgru
    Left = 552
    Top = 168
  end
  object ConsRep: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codrep'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e090rep where codrep = :codrep')
    Left = 608
    Top = 48
    object ConsRepCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsRepNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ConsRepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ConsRepSENREP: TStringField
      FieldName = 'SENREP'
    end
    object ConsRepTIPREP: TStringField
      FieldName = 'TIPREP'
      Size = 1
    end
    object ConsRepINSEST: TStringField
      FieldName = 'INSEST'
      Size = 25
    end
    object ConsRepINSMUN: TStringField
      FieldName = 'INSMUN'
      Size = 16
    end
    object ConsRepCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
    object ConsRepENDREP: TStringField
      FieldName = 'ENDREP'
      Size = 100
    end
    object ConsRepCPLEND: TStringField
      FieldName = 'CPLEND'
      Size = 200
    end
    object ConsRepZIPCOD: TStringField
      FieldName = 'ZIPCOD'
      Size = 14
    end
    object ConsRepCEPREP: TIntegerField
      FieldName = 'CEPREP'
    end
    object ConsRepBAIREP: TStringField
      FieldName = 'BAIREP'
      Size = 75
    end
    object ConsRepCIDREP: TStringField
      FieldName = 'CIDREP'
      Size = 60
    end
    object ConsRepSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsRepFONREP: TStringField
      FieldName = 'FONREP'
    end
    object ConsRepFONRE2: TStringField
      FieldName = 'FONRE2'
    end
    object ConsRepFONRE3: TStringField
      FieldName = 'FONRE3'
    end
    object ConsRepFAXREP: TStringField
      FieldName = 'FAXREP'
    end
    object ConsRepCXAPST: TIntegerField
      FieldName = 'CXAPST'
    end
    object ConsRepINTNET: TStringField
      FieldName = 'INTNET'
      Size = 100
    end
    object ConsRepDATCAD: TDateTimeField
      FieldName = 'DATCAD'
    end
    object ConsRepDATATU: TDateTimeField
      FieldName = 'DATATU'
    end
    object ConsRepSITREP: TStringField
      FieldName = 'SITREP'
      Size = 1
    end
    object ConsRepQTDDEP: TIntegerField
      FieldName = 'QTDDEP'
    end
    object ConsRepCALIRF: TStringField
      FieldName = 'CALIRF'
      Size = 1
    end
    object ConsRepCALISS: TStringField
      FieldName = 'CALISS'
      Size = 1
    end
    object ConsRepCALINS: TStringField
      FieldName = 'CALINS'
      Size = 1
    end
    object ConsRepFIRIND: TStringField
      FieldName = 'FIRIND'
      Size = 1
    end
    object ConsRepGERTIT: TStringField
      FieldName = 'GERTIT'
      Size = 1
    end
    object ConsRepCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsRepOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsRepUSUMOT: TBCDField
      FieldName = 'USUMOT'
      Precision = 10
      Size = 0
    end
    object ConsRepDATMOT: TDateTimeField
      FieldName = 'DATMOT'
    end
    object ConsRepHORMOT: TIntegerField
      FieldName = 'HORMOT'
    end
    object ConsRepDATNAS: TDateTimeField
      FieldName = 'DATNAS'
    end
    object ConsRepNUMRGE: TStringField
      FieldName = 'NUMRGE'
      Size = 13
    end
    object ConsRepORGRGE: TStringField
      FieldName = 'ORGRGE'
      Size = 6
    end
    object ConsRepDATRGE: TDateTimeField
      FieldName = 'DATRGE'
    end
    object ConsRepREPCLI: TIntegerField
      FieldName = 'REPCLI'
    end
    object ConsRepREPFOR: TIntegerField
      FieldName = 'REPFOR'
    end
    object ConsRepINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsRepDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsRepHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsRepCODCDI: TIntegerField
      FieldName = 'CODCDI'
    end
    object ConsRepEENREP: TStringField
      FieldName = 'EENREP'
      Size = 18
    end
    object ConsRepHORATU: TIntegerField
      FieldName = 'HORATU'
    end
    object ConsRepNENREP: TStringField
      FieldName = 'NENREP'
      Size = 60
    end
    object ConsRepUSUCAD: TBCDField
      FieldName = 'USUCAD'
      Precision = 10
      Size = 0
    end
    object ConsRepHORCAD: TIntegerField
      FieldName = 'HORCAD'
    end
    object ConsRepUSUATU: TBCDField
      FieldName = 'USUATU'
      Precision = 10
      Size = 0
    end
    object ConsRepUSU_UM12A: TStringField
      FieldName = 'USU_UM12A'
      Size = 1
    end
  end
end
