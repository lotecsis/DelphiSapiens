object FImpressoraPadrao: TFImpressoraPadrao
  Left = 0
  Top = 0
  Caption = 'Impressoras'
  ClientHeight = 243
  ClientWidth = 584
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
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 24
    Height = 13
    Caption = 'Local'
  end
  object Label2: TLabel
    Left = 328
    Top = 16
    Width = 25
    Height = 13
    Caption = 'Rede'
  end
  object ListBoxLocal: TListBox
    Left = 8
    Top = 32
    Width = 257
    Height = 161
    ItemHeight = 13
    TabOrder = 0
  end
  object ListBoxRede: TListBox
    Left = 326
    Top = 32
    Width = 252
    Height = 161
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBoxRedeClick
  end
  object btnListar: TBitBtn
    Left = 501
    Top = 210
    Width = 75
    Height = 25
    Caption = 'Listar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnListarClick
  end
  object btnDefinirPadrao: TBitBtn
    Left = 8
    Top = 210
    Width = 97
    Height = 25
    Caption = 'Definir Padr'#227'o'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnDefinirPadraoClick
  end
end
