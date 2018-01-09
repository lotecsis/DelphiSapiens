object FObsPedAst: TFObsPedAst
  Left = 0
  Top = 0
  Caption = 'Observa'#231#227'o para NF'
  ClientHeight = 147
  ClientWidth = 657
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object DBMemo1: TDBMemo
    Left = 8
    Top = 16
    Width = 641
    Height = 89
    DataField = 'OBSPED'
    DataSource = DsConsE120PedA
    TabOrder = 0
  end
  object BGravar: TBitBtn
    Left = 574
    Top = 114
    Width = 75
    Height = 25
    Caption = 'Gravar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BGravarClick
  end
  object DsConsE120PedA: TDataSource
    DataSet = Dm2.ConsE120PedA
    OnStateChange = DsConsE120PedAStateChange
    Left = 568
    Top = 56
  end
end
