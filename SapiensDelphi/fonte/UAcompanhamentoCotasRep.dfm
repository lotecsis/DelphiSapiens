object FAcompanhamentoCotasRep: TFAcompanhamentoCotasRep
  Left = 0
  Top = 0
  Caption = 'Resumo de Vendas'
  ClientHeight = 596
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 60
    Height = 18
    Caption = 'Trimestre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 56
    Width = 217
    Height = 361
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = []
  end
  object Ch1: TCheckBox
    Left = 8
    Top = 32
    Width = 33
    Height = 17
    Caption = '  1'#186
    TabOrder = 1
  end
  object Ch2: TCheckBox
    Left = 56
    Top = 32
    Width = 33
    Height = 17
    Caption = '  2'#186
    TabOrder = 2
  end
  object Ch3: TCheckBox
    Left = 104
    Top = 32
    Width = 41
    Height = 17
    Caption = '  3'#186
    TabOrder = 3
  end
  object Ch4: TCheckBox
    Left = 151
    Top = 32
    Width = 41
    Height = 17
    Caption = '  4'#186
    TabOrder = 4
  end
end
