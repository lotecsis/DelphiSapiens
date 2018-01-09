object FVisuAlertaClientes: TFVisuAlertaClientes
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Alertas'
  ClientHeight = 361
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 639
    Height = 153
    DataSource = DsConsUsu_E085Mac
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
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
        FieldName = 'USU_NUMMEN'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' CONTROLE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_MENSAG'
        Title.Alignment = taCenter
        Title.Caption = 'MENSAGEM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_DATCAD'
        Title.Alignment = taCenter
        Title.Caption = 'DATA CADASTRO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_USUCAD'
        Title.Alignment = taCenter
        Title.Caption = 'USU'#193'RIO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_DATALE'
        Title.Alignment = taCenter
        Title.Caption = 'DATA ALERTA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_MENRES'
        Title.Alignment = taCenter
        Title.Caption = 'RESOLVIDA?'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 167
    Width = 639
    Height = 186
    BevelOuter = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 73
      Height = 13
      Caption = 'N'#186' Controle..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 176
      Top = 11
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
    object Label3: TLabel
      Left = 392
      Top = 11
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
    object Label4: TLabel
      Left = 192
      Top = 38
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
    object Label5: TLabel
      Left = 374
      Top = 38
      Width = 70
      Height = 13
      Caption = 'Resolvido?..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 10
      Top = 68
      Width = 71
      Height = 13
      Caption = 'Mensagem..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 87
      Top = 11
      Width = 65
      Height = 17
      DataField = 'USU_NUMMEN'
      DataSource = DsConsUsu_E085Mac
    end
    object DBText2: TDBText
      Left = 272
      Top = 11
      Width = 81
      Height = 17
      DataField = 'USU_DATCAD'
      DataSource = DsConsUsu_E085Mac
    end
    object DBText3: TDBText
      Left = 450
      Top = 11
      Width = 151
      Height = 17
      DataField = 'NOMUSU'
      DataSource = DsConsUsu_E085Mac
    end
    object DBText4: TDBText
      Left = 272
      Top = 38
      Width = 81
      Height = 17
      DataField = 'USU_DATALE'
      DataSource = DsConsUsu_E085Mac
    end
    object DBText5: TDBText
      Left = 450
      Top = 38
      Width = 65
      Height = 17
      DataField = 'USU_MENRES'
      DataSource = DsConsUsu_E085Mac
    end
    object DBMemo1: TDBMemo
      Left = 87
      Top = 68
      Width = 538
      Height = 109
      Ctl3D = False
      DataField = 'USU_MENSAG'
      DataSource = DsConsUsu_E085Mac
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object DsConsUsu_E085Mac: TDataSource
    DataSet = DmOra.ConsUsu_E085Mac
    Left = 584
    Top = 80
  end
end
