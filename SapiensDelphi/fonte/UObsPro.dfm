object FObsPro: TFObsPro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Observa'#231#227'o'
  ClientHeight = 261
  ClientWidth = 564
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
  object memoObs: TMemo
    Left = 0
    Top = 0
    Width = 564
    Height = 225
    Lines.Strings = (
      'memoObs')
    MaxLength = 300
    TabOrder = 0
  end
  object btnAtualizar: TBitBtn
    Left = 481
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    TabStop = False
    OnClick = btnAtualizarClick
  end
end
