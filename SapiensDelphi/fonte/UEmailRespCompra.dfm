object FEmailRespCompra: TFEmailRespCompra
  Left = 224
  Top = 122
  Width = 540
  Height = 594
  BorderIcons = [biSystemMenu]
  Caption = 'Email de Retorno'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBEEmail: TDBMemo
    Left = 0
    Top = 8
    Width = 529
    Height = 545
    DataField = 'EMAIL_RESPOSTA'
    DataSource = DSCompra
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object DSCompra: TDataSource
    AutoEdit = False
    DataSet = DataModule4.IBDCompraMt
    Left = 424
    Top = 40
  end
end
