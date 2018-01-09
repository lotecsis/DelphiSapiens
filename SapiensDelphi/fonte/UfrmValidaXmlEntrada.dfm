object frmValidaXmlEntrada: TfrmValidaXmlEntrada
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Validar XML de Entrada'
  ClientHeight = 574
  ClientWidth = 756
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
  object btnSelecionarPasta: TBitBtn
    Left = 8
    Top = 11
    Width = 113
    Height = 25
    Caption = 'Selecionar Pasta'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btnSelecionarPastaClick
  end
  object edtCaminhoPasta: TEdit
    Left = 127
    Top = 12
    Width = 620
    Height = 22
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object btnValidar: TBitBtn
    Left = 672
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Validar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnValidarClick
  end
  object mmoHistorico: TMemo
    Left = -1
    Top = 72
    Width = 756
    Height = 433
    TabOrder = 3
  end
  object btnSalvar: TBitBtn
    Left = 672
    Top = 511
    Width = 75
    Height = 25
    Caption = 'Salvar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = btnSalvarClick
  end
  object XmlProvider: TXMLTransformProvider
    TransformRead.TransformationFile = '\\senior\DelphiSapiens\SapiensDelphi\MapaXml\DadosGerais.xtr'
    XMLDataFile = 
      'C:\Users\mvDelphi2010\Desktop\3517085387762700094955005000160775' +
      '1706642355.xml'
    Left = 496
    Top = 88
  end
  object ClientDadosGerais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XmlProvider'
    Left = 392
    Top = 88
  end
  object BuscaE440Nfc: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numnfc'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'cgccpf'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e440nfc.codemp, e440nfc.codfil, e440nfc.codfor, e440nfc.n' +
        'umnfc, e440nfc.codsnf,'
      
        '       e440nfc.tipnfe, e440nfc.datent, e440nfc.datemi, e440nfc.t' +
        'nspro,'
      '       e095for.nomfor, e095for.cgccpf'
      '                           from e440nfc'
      'inner join e095for on e095for.codfor = e440nfc.codfor'
      '                           where'
      '                             e440nfc.numnfc = :numnfc and'
      '                             e095for.cgccpf = :cgccpf'
      
        '                             order by e095for.codfor,e440nfc.dat' +
        'ent')
    Left = 240
    Top = 256
    object BuscaE440NfcCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object BuscaE440NfcCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object BuscaE440NfcCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object BuscaE440NfcNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object BuscaE440NfcCODSNF: TStringField
      FieldName = 'CODSNF'
      Size = 3
    end
    object BuscaE440NfcTIPNFE: TIntegerField
      FieldName = 'TIPNFE'
    end
    object BuscaE440NfcDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object BuscaE440NfcDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object BuscaE440NfcTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object BuscaE440NfcNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
    object BuscaE440NfcCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
  end
end
