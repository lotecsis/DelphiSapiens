object FAddCorProdPedSysRep: TFAddCorProdPedSysRep
  Left = 0
  Top = 0
  Caption = 'Adicionar Cores'
  ClientHeight = 163
  ClientWidth = 209
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
    Left = 49
    Top = 48
    Width = 30
    Height = 13
    Caption = 'Tipo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 37
    Top = 74
    Width = 42
    Height = 13
    Caption = 'Cor 01:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 37
    Top = 100
    Width = 42
    Height = 13
    Caption = 'Cor 02:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 11
    Top = 23
    Width = 68
    Height = 13
    Caption = 'Qtd.Pedida:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdTipCmb: TCurrencyEdit
    Left = 86
    Top = 41
    Width = 99
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    Alignment = taLeftJustify
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 1
  end
  object EdCor001: TCurrencyEdit
    Left = 86
    Top = 67
    Width = 100
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    Alignment = taLeftJustify
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 2
    OnExit = EdCor001Exit
  end
  object EdCor002: TCurrencyEdit
    Left = 86
    Top = 92
    Width = 100
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    Alignment = taLeftJustify
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 3
    OnExit = EdCor002Exit
  end
  object EdQtdPed: TCurrencyEdit
    Left = 86
    Top = 16
    Width = 100
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    Alignment = taLeftJustify
    AutoSize = False
    DisplayFormat = '0'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
  object BConfirma: TBitBtn
    Left = 37
    Top = 130
    Width = 137
    Height = 25
    Caption = 'Confirmar'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
      7700333333337777777733333333008088003333333377F73377333333330088
      88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
      000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
      FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
      99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BConfirmaClick
  end
  object Usu120IpdSeqIte: TIBQuery
    Database = DmFire.IBDBanco
    Transaction = DmFire.IBTransacao
    SQL.Strings = (
      'select seqite from usu120ipd'
      '                   where'
      '                   codemp = :codemp and'
      '                   codfil = :codfil and'
      '                   numcon = :numcon and'
      '                   codrep = :codrep and'
      '                   seqipd = :seqipd'
      '                   order by seqite desc')
    Left = 16
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codfil'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numcon'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codrep'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seqipd'
        ParamType = ptUnknown
      end>
    object Usu120IpdSeqIteSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = '"USU120IPD"."SEQITE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object ValidaCor: TADOQuery
    Connection = DmOra.ADOBanco
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
      end>
    SQL.Strings = (
      'select codpro from e075pro'
      '                   where'
      '                   codemp = :codemp and'
      '                   codpro = :codpro')
    Left = 40
    Top = 8
    object ValidaCorCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
  end
end
