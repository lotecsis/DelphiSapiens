object FFechamentoConvenio: TFFechamentoConvenio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Atualizar Fechamento do Conv'#234'nio'
  ClientHeight = 182
  ClientWidth = 537
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
  object Label1: TLabel
    Left = 122
    Top = 24
    Width = 284
    Height = 19
    Caption = 'Atualizar Fechamento do Conv'#234'nio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 117
    Top = 67
    Width = 23
    Height = 13
    Caption = 'M'#234's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 303
    Top = 67
    Width = 22
    Height = 13
    Caption = 'Ano'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LStatus: TLabel
    Left = 176
    Top = 161
    Width = 3
    Height = 13
  end
  object BProcessar: TBitBtn
    Left = 176
    Top = 112
    Width = 177
    Height = 41
    Caption = 'Processar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BProcessarClick
  end
  object CbMes: TComboBox
    Left = 145
    Top = 64
    Width = 145
    Height = 21
    TabOrder = 1
    Items.Strings = (
      'Todos'
      'Janeiro'
      'Fevereiro'
      'Mar'#231'o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
  object EdAno: TEdit
    Left = 328
    Top = 64
    Width = 78
    Height = 21
    TabOrder = 2
  end
  object ConsFuncionariosAtivos: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT USU_TRHFUN.* FROM USU_TRHFUN'
      '                         WHERE'
      
        '                         USU_TRHFUN.USU_TIPCOL = '#39'FUNCIONARIO'#39' A' +
        'ND'
      '                         USU_TRHFUN.USU_SITAFA <> 7'
      '                         ORDER BY USU_TRHFUN.USU_NUMCAD')
    Left = 464
    Top = 16
    object ConsFuncionariosAtivosUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object ConsFuncionariosAtivosUSU_NOMFUN: TStringField
      FieldName = 'USU_NOMFUN'
      Size = 40
    end
    object ConsFuncionariosAtivosUSU_APEFUN: TStringField
      FieldName = 'USU_APEFUN'
      Size = 40
    end
    object ConsFuncionariosAtivosUSU_DATADM: TDateTimeField
      FieldName = 'USU_DATADM'
    end
    object ConsFuncionariosAtivosUSU_NUMCPF: TBCDField
      FieldName = 'USU_NUMCPF'
      Precision = 11
      Size = 0
    end
    object ConsFuncionariosAtivosUSU_TIPCOL: TStringField
      FieldName = 'USU_TIPCOL'
    end
    object ConsFuncionariosAtivosUSU_CODDEP: TIntegerField
      FieldName = 'USU_CODDEP'
    end
    object ConsFuncionariosAtivosUSU_SITAFA: TIntegerField
      FieldName = 'USU_SITAFA'
    end
    object ConsFuncionariosAtivosUSU_DESSIT: TStringField
      FieldName = 'USU_DESSIT'
      Size = 40
    end
    object ConsFuncionariosAtivosUSU_SITDEP: TStringField
      FieldName = 'USU_SITDEP'
      Size = 10
    end
    object ConsFuncionariosAtivosUSU_GRAPAR: TIntegerField
      FieldName = 'USU_GRAPAR'
    end
    object ConsFuncionariosAtivosUSU_DESPAR: TStringField
      FieldName = 'USU_DESPAR'
      Size = 40
    end
  end
  object ConsSerMov: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MESSER'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ANOSER'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMCAD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODSER'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TRHSERMOV.* FROM USU_TRHSERMOV'
      '                     WHERE'
      '                     USU_TRHSERMOV.USU_MESSER = :MESSER AND'
      '                     USU_TRHSERMOV.USU_ANOSER = :ANOSER AND'
      '                     USU_TRHSERMOV.USU_NUMCAD = :NUMCAD AND'
      '                     USU_TRHSERMOV.USU_CODSER = :CODSER'
      '                     ORDER BY USU_TRHSERMOV.USU_DATSER')
    Left = 456
    Top = 80
    object ConsSerMovUSU_SEQSER: TIntegerField
      FieldName = 'USU_SEQSER'
    end
    object ConsSerMovUSU_CODSER: TStringField
      FieldName = 'USU_CODSER'
      Size = 40
    end
    object ConsSerMovUSU_NUMCAD: TIntegerField
      FieldName = 'USU_NUMCAD'
    end
    object ConsSerMovUSU_CODDEP: TIntegerField
      FieldName = 'USU_CODDEP'
    end
    object ConsSerMovUSU_QTDSER: TIntegerField
      FieldName = 'USU_QTDSER'
    end
    object ConsSerMovUSU_PREUNI: TBCDField
      FieldName = 'USU_PREUNI'
      Precision = 11
      Size = 2
    end
    object ConsSerMovUSU_DATSER: TDateTimeField
      FieldName = 'USU_DATSER'
    end
    object ConsSerMovUSU_MESSER: TIntegerField
      FieldName = 'USU_MESSER'
    end
    object ConsSerMovUSU_ANOSER: TIntegerField
      FieldName = 'USU_ANOSER'
    end
    object ConsSerMovUSU_NOMFUN: TStringField
      FieldName = 'USU_NOMFUN'
      Size = 40
    end
    object ConsSerMovUSU_OBSSER: TStringField
      FieldName = 'USU_OBSSER'
      Size = 200
    end
    object ConsSerMovUSU_INADT: TStringField
      FieldName = 'USU_INADT'
      Size = 1
    end
    object ConsSerMovUSU_VLRCOB: TBCDField
      FieldName = 'USU_VLRCOB'
      Precision = 11
      Size = 2
    end
  end
end
