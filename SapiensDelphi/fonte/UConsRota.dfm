object FConsRota: TFConsRota
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Rota'
  ClientHeight = 510
  ClientWidth = 774
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
    Left = 14
    Top = 16
    Width = 27
    Height = 13
    Caption = 'Rota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 41
    Width = 776
    Height = 432
    DataSource = dsConsRotManGer
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbg1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_ID_ROTA'
        Title.Alignment = taCenter
        Title.Caption = 'Id Rota'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_DESROT'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 665
        Visible = True
      end>
  end
  object edtRota: TEdit
    Left = 51
    Top = 13
    Width = 715
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
    OnChange = edtRotaChange
  end
  object btnSelecionar: TBitBtn
    Left = 668
    Top = 479
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
    TabOrder = 2
  end
  object dsConsRotManGer: TDataSource
    DataSet = DmOra.ConsRotManGer
    OnDataChange = dsConsRotManGerDataChange
    Left = 416
    Top = 128
  end
end
