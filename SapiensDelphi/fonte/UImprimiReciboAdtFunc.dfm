object FImprimiReciboAdtFunc: TFImprimiReciboAdtFunc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Imprimir Recibo'
  ClientHeight = 97
  ClientWidth = 464
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
    Left = 36
    Top = 24
    Width = 65
    Height = 13
    Caption = 'Funcion'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 20
    Top = 63
    Width = 81
    Height = 13
    Caption = 'Adiantamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdNumCad: TCurrencyEdit
    Left = 111
    Top = 21
    Width = 100
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 0
  end
  object EdNumAdt: TCurrencyEdit
    Left = 111
    Top = 60
    Width = 100
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 1
  end
  object BImprimir: TBitBtn
    Left = 352
    Top = 8
    Width = 104
    Height = 25
    Caption = 'Imprimir'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BImprimirClick
  end
end
