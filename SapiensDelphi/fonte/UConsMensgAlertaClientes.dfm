object FConsMensgAlertaClientes: TFConsMensgAlertaClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Observa'#231#245'es de Clientes'
  ClientHeight = 638
  ClientWidth = 919
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
  object DBText1: TDBText
    Left = 176
    Top = 444
    Width = 329
    Height = 17
    DataField = 'NOMCLI'
    DataSource = DsConsUSU_T085MAC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 526
    Top = 444
    Width = 298
    Height = 17
    DataField = 'APECLI'
    DataSource = DsConsUSU_T085MAC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 104
    Top = 490
    Width = 89
    Height = 17
    DataField = 'USU_DATCAD'
    DataSource = DsConsUSU_T085MAC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText4: TDBText
    Left = 104
    Top = 467
    Width = 289
    Height = 17
    DataField = 'CIDCLI'
    DataSource = DsConsUSU_T085MAC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText5: TDBText
    Left = 416
    Top = 467
    Width = 33
    Height = 17
    DataField = 'SIGUFS'
    DataSource = DsConsUSU_T085MAC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText6: TDBText
    Left = 465
    Top = 467
    Width = 176
    Height = 17
    DataField = 'FONCLI'
    DataSource = DsConsUSU_T085MAC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 50
    Top = 444
    Width = 48
    Height = 13
    Caption = 'Cliente..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 519
    Width = 42
    Height = 13
    Caption = 'Texto..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 490
    Width = 90
    Height = 13
    Caption = 'Data Cadastro..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText7: TDBText
    Left = 104
    Top = 444
    Width = 65
    Height = 17
    DataField = 'USU_CODCLI'
    DataSource = DsConsUSU_T085MAC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 216
    Top = 490
    Width = 74
    Height = 13
    Caption = 'Data Alerta..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText8: TDBText
    Left = 296
    Top = 490
    Width = 93
    Height = 17
    DataField = 'USU_DATALE'
    DataSource = DsConsUSU_T085MAC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 595
    Top = 490
    Width = 52
    Height = 13
    Caption = 'Usu'#225'rio..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText9: TDBText
    Left = 653
    Top = 490
    Width = 140
    Height = 17
    DataField = 'USU_NOMUSU'
    DataSource = DsConsUSU_T085MAC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 429
    Top = 490
    Width = 61
    Height = 13
    Caption = 'Resolvido?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText10: TDBText
    Left = 496
    Top = 490
    Width = 33
    Height = 17
    DataField = 'USU_MENRES'
    DataSource = DsConsUSU_T085MAC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 10
    Width = 905
    Height = 423
    TabStop = False
    DataSource = DsConsUSU_T085MAC
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_DATCAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Data Cad.'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnQtdDia'
        Title.Alignment = taCenter
        Title.Caption = 'Dias'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_NOMUSU'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_CODCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Raz'#227'o Social'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SIGUFS'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_MENRES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Resolvido?'
        Width = 65
        Visible = True
      end>
  end
  object DBMemo1: TDBMemo
    Left = 104
    Top = 513
    Width = 809
    Height = 119
    TabStop = False
    Color = clInfoBk
    DataField = 'USU_MENSAG'
    DataSource = DsConsUSU_T085MAC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object ConsUSU_T085MAC: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    OnCalcFields = ConsUSU_T085MACCalcFields
    Parameters = <>
    SQL.Strings = (
      'select usu_t085mac.*,usu_tr999usu.usu_nomusu,'
      
        '       e085cli.nomcli,e085cli.apecli,e085cli.cidcli,e085cli.sigu' +
        'fs,e085cli.foncli'
      '       from usu_t085mac'
      
        'inner join usu_tr999usu on usu_tr999usu.usu_codusu = usu_t085mac' +
        '.usu_usucad'
      'inner join e085cli on e085cli.codcli = usu_t085mac.usu_codcli'
      
        '                                                      order by u' +
        'su_t085mac.usu_datcad desc')
    Left = 784
    Top = 479
    object ConsUSU_T085MACUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object ConsUSU_T085MACUSU_NUMMEN: TIntegerField
      FieldName = 'USU_NUMMEN'
    end
    object ConsUSU_T085MACUSU_MENSAG: TStringField
      FieldName = 'USU_MENSAG'
      Size = 600
    end
    object ConsUSU_T085MACUSU_DATCAD: TDateTimeField
      FieldName = 'USU_DATCAD'
    end
    object ConsUSU_T085MACUSU_HORMEN: TIntegerField
      FieldName = 'USU_HORMEN'
    end
    object ConsUSU_T085MACUSU_USUCAD: TIntegerField
      FieldName = 'USU_USUCAD'
    end
    object ConsUSU_T085MACUSU_DATALE: TDateTimeField
      FieldName = 'USU_DATALE'
    end
    object ConsUSU_T085MACUSU_MENRES: TStringField
      FieldName = 'USU_MENRES'
      Size = 1
    end
    object ConsUSU_T085MACUSU_NOMUSU: TStringField
      FieldName = 'USU_NOMUSU'
      Size = 50
    end
    object ConsUSU_T085MACNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsUSU_T085MACAPECLI: TStringField
      FieldName = 'APECLI'
      Size = 50
    end
    object ConsUSU_T085MACCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsUSU_T085MACSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsUSU_T085MACFONCLI: TStringField
      FieldName = 'FONCLI'
    end
    object ConsUSU_T085MACvnQtdDia: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'vnQtdDia'
      Calculated = True
    end
  end
  object DsConsUSU_T085MAC: TDataSource
    DataSet = ConsUSU_T085MAC
    Left = 872
    Top = 479
  end
end
