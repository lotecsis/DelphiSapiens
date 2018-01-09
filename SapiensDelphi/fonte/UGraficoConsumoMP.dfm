object FGraficoConsumoMP: TFGraficoConsumoMP
  Left = 0
  Top = 0
  Caption = 'Gr'#225'fico Consumo de Mat'#233'ria Prima'
  ClientHeight = 536
  ClientWidth = 923
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 698
    Top = 15
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object btnMostrar: TBitBtn
    Left = 840
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btnMostrarClick
  end
  object dbcht1: TDBChart
    Left = 0
    Top = 42
    Width = 923
    Height = 494
    PrintProportional = False
    Title.Text.Strings = (
      'Hist'#243'rico de Consumo')
    View3D = False
    TabOrder = 1
    PrintMargins = (
      10
      15
      10
      15)
    object Series1: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      DataSource = Client
      SeriesColor = clBlue
      XLabelsSource = 'Mes'
      LinePen.Color = clBlue
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'Ordem'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'Qtd'
    end
  end
  object edtData: TDateEdit
    Left = 727
    Top = 12
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object Client: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 32
    Data = {
      4C0000009619E0BD0100000018000000030000000000030000004C00034D6573
      0100490000000100055749445448020002003200035174640800040000000000
      054F7264656D04000100000000000000}
    object ClientMes: TStringField
      FieldName = 'Mes'
      Size = 50
    end
    object ClientQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientOrdem: TIntegerField
      FieldName = 'Ordem'
    end
  end
  object dsClient: TDataSource
    DataSet = Client
    Left = 368
    Top = 40
  end
  object dlgPntPrint: TPrintDialog
    Left = 448
    Top = 168
  end
end
