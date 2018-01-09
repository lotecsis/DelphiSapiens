object FAjustaVlrEstoque: TFAjustaVlrEstoque
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ajuste de Estoque'
  ClientHeight = 196
  ClientWidth = 258
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
    Left = 29
    Top = 24
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object Label2: TLabel
    Left = 44
    Top = 53
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object edtCodPro: TEdit
    Left = 77
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtData: TDateEdit
    Left = 77
    Top = 50
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object btnProcessar: TBitBtn
    Left = 85
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Processar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnProcessarClick
  end
  object pbProgresso: TProgressBar
    Left = 48
    Top = 104
    Width = 150
    Height = 17
    TabOrder = 3
  end
end
