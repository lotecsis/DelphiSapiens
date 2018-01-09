object FAltDadosGeraisPedSysRep: TFAltDadosGeraisPedSysRep
  Left = 0
  Top = 0
  Caption = 'Alterar Dados Gerais do Pedido'
  ClientHeight = 83
  ClientWidth = 478
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
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 145
    Height = 13
    Caption = 'Condi'#231#227'o de Pagamento..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LDsCodCpg: TLabel
    Left = 266
    Top = 15
    Width = 55
    Height = 13
    Caption = 'LDsCodCpg'
  end
  object Label2: TLabel
    Left = 98
    Top = 55
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
  object BProcessar: TBitBtn
    Left = 352
    Top = 50
    Width = 118
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
    TabOrder = 0
    OnClick = BProcessarClick
  end
  object EdCodCpg: TEdit
    Left = 159
    Top = 8
    Width = 101
    Height = 21
    TabOrder = 1
    OnExit = EdCodCpgExit
    OnKeyDown = EdCodCpgKeyDown
  end
  object BConsCodCpg: TBitBtn
    Left = 240
    Top = 9
    Width = 19
    Height = 19
    Caption = '...'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 2
    TabStop = False
    OnClick = BConsCodCpgClick
  end
  object edtDatEmi: TDateEdit
    Left = 159
    Top = 52
    Width = 101
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object ValidaCodCpg3: TIBQuery
    Database = DmFire.IBDBanco
    Transaction = DmFire.IBTransacao
    SQL.Strings = (
      'select e028cpg.codcpg,e028cpg.descpg from e028cpg'
      '                           where'
      '                           codemp = :codemp and'
      '                           codcpg = :codcpg and'
      '                           codusu = :codusu')
    Left = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codcpg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codusu'
        ParamType = ptUnknown
      end>
    object ValidaCodCpg3CODCPG: TIBStringField
      FieldName = 'CODCPG'
      Origin = '"E028CPG"."CODCPG"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object ValidaCodCpg3DESCPG: TIBStringField
      FieldName = 'DESCPG'
      Origin = '"E028CPG"."DESCPG"'
      Size = 50
    end
  end
  object ValidaCodCpg: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EMPCPG'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODCPG'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODREP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e090rcp.*,e028cpg.descpg from e090rcp'
      'inner join e028cpg on e028cpg.codemp = e090rcp.empcpg and'
      '                      e028cpg.codcpg = e090rcp.codcpg'
      '   where'
      '   e090rcp.empcpg = :EMPCPG  and'
      '   e090rcp.codcpg = :CODCPG  and'
      '   e090rcp.codrep = :CODREP')
    Left = 424
    Top = 8
    object ValidaCodCpgCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ValidaCodCpgCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ValidaCodCpgEMPCPG: TIntegerField
      FieldName = 'EMPCPG'
    end
    object ValidaCodCpgCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object ValidaCodCpgSITLRC: TStringField
      FieldName = 'SITLRC'
      Size = 1
    end
    object ValidaCodCpgUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ValidaCodCpgDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ValidaCodCpgHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ValidaCodCpgUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object ValidaCodCpgDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ValidaCodCpgHORALT: TIntegerField
      FieldName = 'HORALT'
    end
    object ValidaCodCpgDESCPG: TStringField
      FieldName = 'DESCPG'
      Size = 50
    end
  end
end
