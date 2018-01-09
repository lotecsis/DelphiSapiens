object FImportaExcelCidades: TFImportaExcelCidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FImportaExcelCidades'
  ClientHeight = 518
  ClientWidth = 673
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
  object btnCarregarXml: TBitBtn
    Left = 2
    Top = 4
    Width = 121
    Height = 81
    Caption = 'Carregar XML'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btnCarregarXmlClick
  end
  object dbg1: TDBGrid
    Left = -2
    Top = 89
    Width = 675
    Height = 430
    DataSource = dsClientCidadesIBGE
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'A'
        Title.Caption = 'Municipio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B'
        Title.Caption = 'C'#243'digo'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C'
        Title.Caption = 'Gentilico'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D'
        Title.Caption = 'Popula'#231'ao'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'E'
        Title.Caption = 'Area Territorial'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F'
        Title.Caption = 'PIB'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G'
        Title.Caption = 'UF'
        Width = 64
        Visible = True
      end>
  end
  object btnProcessar: TBitBtn
    Left = 544
    Top = 4
    Width = 121
    Height = 81
    Caption = 'Processar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnProcessarClick
  end
  object dsClientCidadesIBGE: TDataSource
    DataSet = DmOra.ClientCidadesIBGE
    Left = 328
    Top = 32
  end
  object dlgOpen: TOpenDialog
    Left = 200
    Top = 24
  end
end
