object frmPercentual: TfrmPercentual
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' '
  ClientHeight = 386
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 19
    Width = 36
    Height = 13
    Caption = 'Per'#237'odo'
  end
  object lbl2: TLabel
    Left = 184
    Top = 19
    Width = 6
    Height = 13
    Caption = #224
  end
  object lblPer1: TLabel
    Left = 156
    Top = 104
    Width = 81
    Height = 33
    Alignment = taRightJustify
    Caption = 'lblPer1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = lblPer1Click
  end
  object lblPer101: TLabel
    Left = 278
    Top = 104
    Width = 111
    Height = 33
    Alignment = taRightJustify
    Caption = 'lblPer101'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = lblPer101Click
  end
  object lbl3: TLabel
    Left = 75
    Top = 111
    Width = 46
    Height = 24
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 44
    Top = 197
    Width = 77
    Height = 24
    Caption = 'Estofado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPerEstof1: TLabel
    Left = 96
    Top = 190
    Width = 141
    Height = 33
    Alignment = taRightJustify
    Caption = 'lblPerEstof1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPerEstof101: TLabel
    Left = 218
    Top = 190
    Width = 171
    Height = 33
    Alignment = taRightJustify
    Caption = 'lblPerEstof101'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 51
    Top = 291
    Width = 70
    Height = 24
    Caption = 'Colch'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPerColch1: TLabel
    Left = 92
    Top = 284
    Width = 145
    Height = 33
    Alignment = taRightJustify
    Caption = 'lblPerColch1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPerColch101: TLabel
    Left = 214
    Top = 284
    Width = 175
    Height = 33
    Alignment = taRightJustify
    Caption = 'lblPerColch101'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnMostrar: TBitBtn
    Left = 352
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btnMostrarClick
  end
  object edtDatIni: TDateEdit
    Left = 66
    Top = 16
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object edtDatFim: TDateEdit
    Left = 207
    Top = 16
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object edtPer1: TEdit
    Left = 137
    Top = 136
    Width = 100
    Height = 21
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 3
    Visible = False
  end
  object edtPer101: TEdit
    Left = 289
    Top = 136
    Width = 100
    Height = 21
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 4
    Visible = False
  end
  object edtPerEstof1: TEdit
    Left = 137
    Top = 223
    Width = 100
    Height = 21
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 5
    Visible = False
  end
  object edtPerEstof101: TEdit
    Left = 289
    Top = 223
    Width = 100
    Height = 21
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 6
    Visible = False
  end
  object edtPerColch1: TEdit
    Left = 137
    Top = 317
    Width = 100
    Height = 21
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 7
    Visible = False
  end
  object edtPerColch101: TEdit
    Left = 289
    Top = 317
    Width = 100
    Height = 21
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 8
    Visible = False
  end
  object Estof101: TADOQuery
    Connection = DmOra.ADOBanco
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
      'select sum(e140ipv.vlrbru) as valor'
      '  from e140ipv'
      '  inner join e075pro on e075pro.codemp = e140ipv.codemp and'
      
        '                                     e075pro.codpro = e140ipv.co' +
        'dpro'
      '  inner join e001tns on e001tns.codemp = e140ipv.codemp and'
      
        '                                     e001tns.codtns = e140ipv.tn' +
        'spro'
      '  inner join e140nfv on E140NFV.CODFIL = E140IPV.CODFIL AND'
      
        '                                     E140NFV.NUMNFV = E140IPV.NU' +
        'MNFV AND'
      
        '                                     E140NFV.CODSNF = E140IPV.CO' +
        'DSNF'
      '    where'
      '      e140ipv.datger between :datini and :datfim and'
      '      e140ipv.codfil = 101 and'
      '      e075pro.codagc = '#39'ESTOF'#39' and'
      '      e001tns.venfat = '#39'S'#39
      'group by 1')
    Left = 176
    Top = 44
    object Estof101VALOR: TFMTBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object Estof1: TADOQuery
    Connection = DmOra.ADOBanco
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
      'select sum(e140ipv.vlrbru) as valor'
      '  from e140ipv'
      '  inner join e075pro on e075pro.codemp = e140ipv.codemp and'
      
        '                                     e075pro.codpro = e140ipv.co' +
        'dpro'
      '  inner join e001tns on e001tns.codemp = e140ipv.codemp and'
      
        '                                     e001tns.codtns = e140ipv.tn' +
        'spro'
      '  inner join e140nfv on E140NFV.CODFIL = E140IPV.CODFIL AND'
      
        '                                     E140NFV.NUMNFV = E140IPV.NU' +
        'MNFV AND'
      
        '                                     E140NFV.CODSNF = E140IPV.CO' +
        'DSNF'
      '    where'
      '      e140ipv.datger between :datini and :datfim and'
      '      e140ipv.codfil = 1 and'
      '      e075pro.codagc = '#39'ESTOF'#39' and'
      '      e001tns.venfat = '#39'S'#39' and'
      '      E140NFV.SITNFV = 2 and'
      '      E140NFV.TIPNFS IN (10,1)'
      'group by 1')
    Left = 312
    Top = 50
    object Estof1VALOR: TFMTBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object Colch101: TADOQuery
    Connection = DmOra.ADOBanco
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
      'select sum(e140ipv.vlrbru) as valor'
      '  from e140ipv'
      '  inner join e075pro on e075pro.codemp = e140ipv.codemp and'
      
        '                                     e075pro.codpro = e140ipv.co' +
        'dpro'
      '  inner join e001tns on e001tns.codemp = e140ipv.codemp and'
      
        '                                     e001tns.codtns = e140ipv.tn' +
        'spro'
      '  inner join e140nfv on E140NFV.CODFIL = E140IPV.CODFIL AND'
      
        '                                     E140NFV.NUMNFV = E140IPV.NU' +
        'MNFV AND'
      
        '                                     E140NFV.CODSNF = E140IPV.CO' +
        'DSNF'
      '    where'
      '      e140ipv.datger between :datini and :datfim and'
      '      e140ipv.codfil = 101 and'
      '      e075pro.codagc = '#39'COLCH'#39' and'
      '      e001tns.venfat = '#39'S'#39
      'group by 1')
    Left = 232
    Top = 44
    object Colch101VALOR: TFMTBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object Colch1: TADOQuery
    Connection = DmOra.ADOBanco
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
      'select sum(e140ipv.vlrbru) as valor'
      '  from e140ipv'
      '  inner join e075pro on e075pro.codemp = e140ipv.codemp and'
      
        '                                     e075pro.codpro = e140ipv.co' +
        'dpro'
      '  inner join e001tns on e001tns.codemp = e140ipv.codemp and'
      
        '                                     e001tns.codtns = e140ipv.tn' +
        'spro'
      '  inner join e140nfv on E140NFV.CODFIL = E140IPV.CODFIL AND'
      
        '                                     E140NFV.NUMNFV = E140IPV.NU' +
        'MNFV AND'
      
        '                                     E140NFV.CODSNF = E140IPV.CO' +
        'DSNF'
      '    where'
      '      e140ipv.datger between :datini and :datfim and'
      '      e140ipv.codfil = 1 and'
      '      e075pro.codagc = '#39'COLCH'#39' and'
      '      e001tns.venfat = '#39'S'#39' and'
      '      E140NFV.SITNFV = 2 and'
      '      E140NFV.TIPNFS IN (10,1)'
      'group by 1')
    Left = 368
    Top = 50
    object Colch1VALOR: TFMTBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object Total1: TADOQuery
    Connection = DmOra.ADOBanco
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
      'select sum(e140ipv.vlrbru) as valor'
      '  from e140ipv'
      '  inner join e075pro on e075pro.codemp = e140ipv.codemp and'
      
        '                                     e075pro.codpro = e140ipv.co' +
        'dpro'
      '  inner join e001tns on e001tns.codemp = e140ipv.codemp and'
      
        '                                     e001tns.codtns = e140ipv.tn' +
        'spro'
      '  inner join e140nfv on E140NFV.CODFIL = E140IPV.CODFIL AND'
      
        '                                     E140NFV.NUMNFV = E140IPV.NU' +
        'MNFV AND'
      
        '                                     E140NFV.CODSNF = E140IPV.CO' +
        'DSNF'
      '    where'
      '      e140ipv.datger between :datini and :datfim and'
      '      e140ipv.codfil = 1 and'
      '      e001tns.venfat = '#39'S'#39' and'
      '      E140NFV.SITNFV = 2 and'
      '      E140NFV.TIPNFS IN (10,1)'
      'group by 1')
    Left = 32
    Top = 46
    object Total1VALOR: TFMTBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object Total101: TADOQuery
    Connection = DmOra.ADOBanco
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
      'select sum(e140ipv.vlrbru) as valor'
      '  from e140ipv'
      '  inner join e075pro on e075pro.codemp = e140ipv.codemp and'
      
        '                                     e075pro.codpro = e140ipv.co' +
        'dpro'
      '  inner join e001tns on e001tns.codemp = e140ipv.codemp and'
      
        '                                     e001tns.codtns = e140ipv.tn' +
        'spro'
      '    where'
      '      e140ipv.datger between :datini and :datfim and'
      '      e140ipv.codfil = 101'
      'group by 1')
    Left = 88
    Top = 46
    object Total101VALOR: TFMTBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 72
    Top = 149
  end
end
