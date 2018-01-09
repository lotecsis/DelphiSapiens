object FAnalizaConsumoMpPorFilial: TFAnalizaConsumoMpPorFilial
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Analiza consumo de mat'#233'ria prima por filial'
  ClientHeight = 622
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 14
    Width = 49
    Height = 13
    Caption = 'Analise N'#186
  end
  object Label2: TLabel
    Left = 171
    Top = 14
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object Label3: TLabel
    Left = 349
    Top = 14
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object dbg1: TDBGrid
    Left = -2
    Top = 42
    Width = 997
    Height = 541
    DataSource = dsClientConsUsu_T700Ana
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = dbg1TitleClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_CODANA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Analise'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
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
        Title.Caption = 'Descri'#231#227'o'
        Width = 240
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_QTD001'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde. 001'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_QTD101'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde. 101'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnQtdTot'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde. Total'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UNIMED'
        Title.Alignment = taCenter
        Title.Caption = 'UN'
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnPer001'
        Title.Alignment = taCenter
        Title.Caption = '% 001'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnPer101'
        Title.Alignment = taCenter
        Title.Caption = '% 101'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_PERINI'
        Title.Alignment = taCenter
        Title.Caption = 'Data Ini'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_PERFIN'
        Title.Alignment = taCenter
        Title.Caption = 'Data Fim'
        Width = 80
        Visible = True
      end>
  end
  object btnMostrar: TBitBtn
    Left = 911
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    TabStop = False
    OnClick = btnMostrarClick
  end
  object edtCodAna: TCurrencyEdit
    Left = 61
    Top = 11
    Width = 93
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 2
  end
  object edtDatIni: TDateEdit
    Left = 226
    Top = 11
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object edtDatFim: TDateEdit
    Left = 401
    Top = 11
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object dsClientConsUsu_T700Ana: TDataSource
    DataSet = DmOra.ClientConsUsu_T700Ana
    Left = 432
    Top = 192
  end
end
