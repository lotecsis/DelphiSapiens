object FDescontosPorRep: TFDescontosPorRep
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Descontos Por Representante'
  ClientHeight = 531
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
    Left = 16
    Top = 16
    Width = 72
    Height = 13
    Caption = 'Representante'
  end
  object Label2: TLabel
    Left = 28
    Top = 340
    Width = 96
    Height = 13
    Caption = 'Desconto Estofados'
  end
  object Label3: TLabel
    Left = 33
    Top = 372
    Width = 91
    Height = 13
    Caption = 'Desconto Colch'#245'es'
  end
  object Label4: TLabel
    Left = 91
    Top = 435
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object Label5: TLabel
    Left = 86
    Top = 467
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object Label6: TLabel
    Left = 84
    Top = 500
    Width = 40
    Height = 13
    Caption = 'Validade'
  end
  object Label7: TLabel
    Left = 8
    Top = 403
    Width = 116
    Height = 13
    Caption = 'Condi'#231#227'o de Pagamento'
  end
  object lblAjuda: TLabel
    Left = 955
    Top = 510
    Width = 28
    Height = 13
    Cursor = crHandPoint
    Caption = 'Ajuda'
    OnClick = lblAjudaClick
  end
  object edtCodRep: TEdit
    Left = 94
    Top = 13
    Width = 100
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnExit = edtCodRepExit
  end
  object btnConsRep: TBitBtn
    Left = 170
    Top = 14
    Width = 22
    Height = 18
    Caption = '...'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 3
    TabStop = False
    OnClick = btnConsRepClick
  end
  object edtNomRep: TEdit
    Left = 196
    Top = 13
    Width = 373
    Height = 19
    TabStop = False
    CharCase = ecUpperCase
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object edtApeRep: TEdit
    Left = 575
    Top = 12
    Width = 186
    Height = 19
    TabStop = False
    CharCase = ecUpperCase
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 48
    Width = 996
    Height = 275
    DataSource = dsConsUSU_DescRep
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbg1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'USU_ESTOF'
        Title.Alignment = taCenter
        Title.Caption = 'Desc Estofado'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_COLCH'
        Title.Alignment = taCenter
        Title.Caption = 'Desc Colch'#227'o'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODCLI'
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
        Expanded = False
        FieldName = 'USU_CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODCPG'
        Title.Alignment = taCenter
        Title.Caption = 'Cond. Pgto.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCPG'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_DATVAL'
        Title.Alignment = taCenter
        Title.Caption = 'Validade'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_DATCAD'
        Title.Alignment = taCenter
        Title.Caption = 'Data Cad.'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODUSU'
        Title.Alignment = taCenter
        Title.Caption = 'Usuario Cad.'
        Width = 80
        Visible = True
      end>
  end
  object edtDescEstof: TMaskEdit
    Left = 130
    Top = 337
    Width = 119
    Height = 21
    TabOrder = 5
    OnExit = edtDescEstofExit
    OnKeyPress = edtDescEstofKeyPress
  end
  object edtDescColch: TEdit
    Left = 130
    Top = 369
    Width = 119
    Height = 21
    TabOrder = 6
    OnExit = edtDescColchExit
    OnKeyPress = edtDescColchKeyPress
  end
  object edtCodCli: TEdit
    Left = 130
    Top = 432
    Width = 119
    Height = 21
    TabOrder = 8
    OnExit = edtCodCliExit
    OnKeyPress = edtCodCliKeyPress
  end
  object edtCodPro: TEdit
    Left = 130
    Top = 464
    Width = 119
    Height = 21
    TabOrder = 9
    OnExit = edtCodProExit
    OnKeyPress = edtCodProKeyPress
  end
  object edtDatVal: TMaskEdit
    Left = 130
    Top = 497
    Width = 118
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 10
    Text = '  /  /    '
    OnExit = edtDatValExit
  end
  object btnConfirmar: TBitBtn
    Left = 887
    Top = 363
    Width = 100
    Height = 25
    Caption = 'Confirmar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 15
    OnClick = btnConfirmarClick
  end
  object edtNomCli: TEdit
    Left = 251
    Top = 432
    Width = 280
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 11
  end
  object edtDesPro: TEdit
    Left = 251
    Top = 464
    Width = 280
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 13
  end
  object btnConsCli: TBitBtn
    Left = 225
    Top = 434
    Width = 22
    Height = 16
    Caption = '...'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 12
    TabStop = False
    OnClick = btnConsCliClick
  end
  object btnConsProd: TBitBtn
    Left = 225
    Top = 466
    Width = 22
    Height = 16
    Caption = '...'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 14
    TabStop = False
    OnClick = btnConsProdClick
  end
  object btnExcluir: TBitBtn
    Left = 887
    Top = 332
    Width = 100
    Height = 25
    Caption = 'Excluir'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 16
    TabStop = False
    OnClick = btnExcluirClick
  end
  object edtCodCpg: TEdit
    Left = 130
    Top = 400
    Width = 119
    Height = 21
    TabOrder = 7
    OnExit = edtCodCpgExit
  end
  object edtDesCpg: TEdit
    Left = 251
    Top = 401
    Width = 280
    Height = 19
    TabStop = False
    CharCase = ecUpperCase
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 17
  end
  object btnConsCodCpg: TBitBtn
    Left = 225
    Top = 402
    Width = 22
    Height = 16
    Caption = '...'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 18
    TabStop = False
    OnClick = btnConsCodCpgClick
  end
  object dsConsUSU_DescRep: TDataSource
    DataSet = Dm.ConsUSU_TDescRep
    Left = 464
    Top = 200
  end
end
