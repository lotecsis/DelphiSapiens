object FEtiquetaCabeceira: TFEtiquetaCabeceira
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Etiqueta para Cabeceiras'
  ClientHeight = 253
  ClientWidth = 537
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
  object cbbNome: TComboBox
    Left = 90
    Top = 32
    Width = 337
    Height = 32
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    TabOrder = 0
    Items.Strings = (
      'LIS 0,92'
      'LIS 1,42'
      'LIS 1,62'
      'LIS 1,97'
      'AMARILIS 0,92'
      'AMARILIS 1,42'
      'AMARILIS 1,62'
      'AMARILIS 1,97'
      'GARDENIA 0,98'
      'GARDENIA 1,48'
      'GARDENIA 1,68'
      'GARDENIA 2,03'
      'PETUNIA 0,98'
      'PETUNIA 1,48'
      'PETUNIA 1,68'
      'PETUNIA 2,03')
  end
  object edtQuantidade: TCurrencyEdit
    Left = 192
    Top = 96
    Width = 121
    Height = 32
    Margins.Left = 6
    Margins.Top = 1
    Alignment = taCenter
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnImprimir: TBitBtn
    Left = 192
    Top = 160
    Width = 121
    Height = 41
    Caption = 'Imprimir'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnImprimirClick
  end
end
