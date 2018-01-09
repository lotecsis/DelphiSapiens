object FPreCargas: TFPreCargas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pr'#233'-Cargas'
  ClientHeight = 526
  ClientWidth = 401
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
  object lblPreCarga: TLabel
    Left = 8
    Top = 9
    Width = 49
    Height = 13
    Caption = 'Pr'#233'-Carga'
  end
  object dbg1: TDBGrid
    Left = -2
    Top = 37
    Width = 403
    Height = 490
    DataSource = dsPreCargas
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'USU_PRECAR'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Pr'#233'-Carga'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_DATGER'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Data Ger.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CARLIB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        PickList.Strings = (
          'S'
          'N'
          'F')
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_DATLIB'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Data Sit.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_INPEDDIV'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Pedidos Div.'
        Width = 70
        Visible = True
      end>
  end
  object btnMostrar: TBitBtn
    Left = 320
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnMostrarClick
  end
  object edtPreCarga: TCurrencyEdit
    Left = 64
    Top = 6
    Width = 100
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 2
  end
  object dsPreCargas: TDataSource
    DataSet = DmOra.PreCargas
    Left = 280
    Top = 168
  end
end
