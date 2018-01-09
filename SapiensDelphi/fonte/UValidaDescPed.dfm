object FValidaDescPed: TFValidaDescPed
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Validar Descontos de Pedidos'
  ClientHeight = 638
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
    Top = 20
    Width = 29
    Height = 13
    Caption = 'Carga'
  end
  object posicao: TGauge
    Left = 181
    Top = 8
    Width = 592
    Height = 42
    BackColor = clBtnFace
    ForeColor = clLime
    Progress = 0
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 56
    Width = 996
    Height = 543
    DataSource = dsClientConsUSU_TDescRepH
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbg1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'USU_OBSDES'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o Diferen'#231'a'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODFIL'
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NUMPED'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODCPG'
        Title.Alignment = taCenter
        Title.Caption = 'Cond.Pgto.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCPG'
        Title.Alignment = taCenter
        Title.Caption = 'Desc. Pgto.'
        Width = 170
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
        FieldName = 'USU_CODCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_PREUNI'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Unit.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_PRETAB'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Tabela'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_DESAPL'
        Title.Alignment = taCenter
        Title.Caption = 'Desc Aplic.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_DESLIB'
        Title.Alignment = taCenter
        Title.Caption = 'Desc Lib.'
        Width = 70
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
        FieldName = 'USU_CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'Deriv.'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_QTDPED'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Ped.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_QTDCAN'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Can.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_QTDFAT'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Fat.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_QTDABE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Abe.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODTPR'
        Title.Alignment = taCenter
        Title.Caption = 'Tab. Pre'#231'o'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SIGUFS'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODREP'
        Title.Alignment = taCenter
        Title.Caption = 'Rep.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APEREP'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Rep.'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_REGAPL'
        Title.Alignment = taCenter
        Title.Caption = 'Regra Aplicada'
        Width = 250
        Visible = True
      end>
  end
  object edtPreCar: TEdit
    Left = 51
    Top = 17
    Width = 121
    Height = 21
    TabOrder = 0
    OnExit = edtPreCarExit
    OnKeyPress = edtPreCarKeyPress
  end
  object btnValidar: TBitBtn
    Left = 781
    Top = 8
    Width = 100
    Height = 42
    Caption = 'Validar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnValidarClick
  end
  object btnLiberar: TBitBtn
    Left = 887
    Top = 8
    Width = 100
    Height = 42
    Caption = 'Liberar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    TabStop = False
    OnClick = btnLiberarClick
  end
  object dbmmoUSU_JUSOBS: TDBMemo
    Left = 0
    Top = 598
    Width = 995
    Height = 39
    TabStop = False
    Color = 11599871
    DataField = 'USU_JUSOBS'
    DataSource = dsCadUsu_TDescRepH
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnExit = dbmmoUSU_JUSOBSExit
    OnKeyPress = dbmmoUSU_JUSOBSKeyPress
  end
  object dsClientConsUSU_TDescRepH: TDataSource
    DataSet = Dm.ClientConsUSU_TDescRepH
    Left = 536
    Top = 176
  end
  object dsCadUsu_TDescRepH: TDataSource
    DataSet = Dm.CadUsu_TDescRepH
    Left = 472
    Top = 272
  end
end
