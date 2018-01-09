object FAddCliMonitoramento: TFAddCliMonitoramento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Adicionar Cliente ao Monitoramento'
  ClientHeight = 88
  ClientWidth = 529
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
    Top = 22
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object edtCodCli: TCurrencyEdit
    Left = 45
    Top = 19
    Width = 100
    Height = 19
    Margins.Left = 5
    Margins.Top = 2
    Alignment = taLeftJustify
    Ctl3D = False
    DisplayFormat = '0'
    ParentCtl3D = False
    TabOrder = 0
    OnExit = edtCodCliExit
  end
  object btnConsCli: TBitBtn
    Left = 124
    Top = 20
    Width = 19
    Height = 17
    Caption = '...'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    TabStop = False
    OnClick = btnConsCliClick
  end
  object edtNomCli: TEdit
    Left = 145
    Top = 19
    Width = 376
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
  end
  object btnConfirmar: TBitBtn
    Left = 446
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnConfirmarClick
  end
  object ConsCli: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODCLI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT E085CLI.CODCLI,E085CLI.NOMCLI,E085CLI.SITCLI,'
      '       E008CEP.CODRAI,'
      '       E085HCL.CODREP'
      'FROM E085CLI'
      'INNER JOIN E008CEP ON E008CEP.CEPINI = E085CLI.CEPINI'
      'INNER JOIN E085HCL ON E085HCL.CODCLI = E085CLI.CODCLI AND'
      '                      E085HCL.CODFIL = 1'
      'WHERE'
      'E085CLI.CODCLI = :CODCLI')
    Left = 168
    Top = 40
    object ConsCliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsCliNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsCliCODRAI: TIntegerField
      FieldName = 'CODRAI'
    end
    object ConsCliCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsCliSITCLI: TStringField
      FieldName = 'SITCLI'
      Size = 1
    end
  end
end
