object frmAlteraTipoIso: TfrmAlteraTipoIso
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 145
  ClientWidth = 295
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
  object cbbTipo: TComboBox
    Left = 24
    Top = 43
    Width = 246
    Height = 22
    Style = csOwnerDrawFixed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Items.Strings = (
      'EPS 5CM'
      'EPS 10CM'
      'EPS 14CM'
      ' ')
  end
  object btnConfirmar: TBitBtn
    Left = 78
    Top = 104
    Width = 139
    Height = 25
    Caption = 'Confirmar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnConfirmarClick
  end
end
