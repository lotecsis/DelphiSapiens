object FConsCEP: TFConsCEP
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta CEP'
  ClientHeight = 582
  ClientWidth = 736
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
    Left = 8
    Top = 16
    Width = 38
    Height = 13
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 433
    Top = 16
    Width = 14
    Height = 13
    Caption = 'UF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 42
    Width = 738
    Height = 503
    DataSource = dsConsCEP
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbg1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMCID'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SIGUFS'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CEPINI'
        Title.Alignment = taCenter
        Title.Caption = 'CEP Inicial'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CEPFIM'
        Title.Alignment = taCenter
        Title.Caption = 'CEP Final'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODRAI'
        Title.Alignment = taCenter
        Title.Caption = 'Rais'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAICID'
        Title.Alignment = taCenter
        Title.Caption = 'Bairro'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDCID'
        Title.Alignment = taCenter
        Title.Caption = 'Endere'#231'o'
        Width = 200
        Visible = True
      end>
  end
  object edtCidade: TEdit
    Left = 51
    Top = 13
    Width = 370
    Height = 19
    CharCase = ecUpperCase
    Color = clInfoBk
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 100
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnChange = edtCidadeChange
  end
  object edtUF: TEdit
    Left = 450
    Top = 13
    Width = 41
    Height = 19
    CharCase = ecUpperCase
    Color = clInfoBk
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object btnSelecionar: TBitBtn
    Left = 631
    Top = 550
    Width = 100
    Height = 25
    Caption = 'Selecionar'
    DoubleBuffered = True
    Glyph.Data = {
      06020000424D0602000000000000760000002800000028000000140000000100
      0400000000009001000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      33333333388888888883333333333FFFFFFFFFF3333333330000000000833333
      33338888888888F3333333330FFFFFFFF083333333338F33333F38F333333333
      0FFFF00FF083333333338F33388FF8F3333333330FFF0000F083333333338F33
      8888F8F3333333330FF80000F083333333338F338888F8F3333333330F800000
      0083333333338F38888888F3333333330F000F000083333333338F88838888F3
      333333330F00FFF00083333333338F88333888F3333333330FFFFF0000833333
      33338F33338888FF333333330FFFFF0F0003333333338F33338F888F33333333
      0FFFFF003008333333338FFFFF88388F33333333000000033800333333338888
      88833388F333333333333333330083333333333333333388FF33333333333333
      3330033333333333333333388F33333333333333333303333333333333333333
      8333333333333333333333333333333333333333333333333333333333333333
      33333333333333333333}
    ModalResult = 1
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object dsConsCEP: TDataSource
    DataSet = DmOra.ConsCEP
    OnDataChange = dsConsCEPDataChange
    Left = 360
    Top = 168
  end
end
