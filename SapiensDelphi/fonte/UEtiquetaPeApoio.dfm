object FEtiquetaPeApoio: TFEtiquetaPeApoio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Etoqieta P'#233' de Apoio'
  ClientHeight = 268
  ClientWidth = 527
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
    Left = 9
    Top = 33
    Width = 509
    Height = 19
    Caption = 'O sistema esta configurado para imprimir 10 etiquetas por vez'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 232
    Width = 45
    Height = 13
    Caption = 'Contador'
  end
  object btn1: TBitBtn
    Left = 176
    Top = 112
    Width = 185
    Height = 97
    Caption = 'Imprimir'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btn1Click
  end
  object edtQtdClick: TCurrencyEdit
    Left = 65
    Top = 229
    Width = 64
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    ReadOnly = True
    TabOrder = 1
  end
end
