object FTotalizadorDescontos: TFTotalizadorDescontos
  Left = 0
  Top = 0
  Caption = 'Totalizador de Descontos'
  ClientHeight = 155
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object edtDesc1: TCurrencyEdit
    Left = 20
    Top = 15
    Width = 100
    Height = 32
    Margins.Left = 6
    Margins.Top = 1
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnExit = edtDesc1Exit
  end
  object edtDesc2: TCurrencyEdit
    Left = 155
    Top = 15
    Width = 100
    Height = 32
    Margins.Left = 6
    Margins.Top = 1
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnExit = edtDesc2Exit
  end
  object edtDesc3: TCurrencyEdit
    Left = 290
    Top = 15
    Width = 100
    Height = 32
    Margins.Left = 6
    Margins.Top = 1
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnExit = edtDesc3Exit
  end
  object edtDesc4: TCurrencyEdit
    Left = 20
    Top = 51
    Width = 100
    Height = 32
    Margins.Left = 6
    Margins.Top = 1
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnExit = edtDesc4Exit
  end
  object edtDesc5: TCurrencyEdit
    Left = 155
    Top = 51
    Width = 100
    Height = 32
    Margins.Left = 6
    Margins.Top = 1
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnExit = edtDesc5Exit
  end
  object edtDesc6: TCurrencyEdit
    Left = 290
    Top = 51
    Width = 100
    Height = 32
    Margins.Left = 6
    Margins.Top = 1
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnChange = edtDesc6Change
  end
  object edtTotDesc: TCurrencyEdit
    Left = 228
    Top = 110
    Width = 100
    Height = 32
    Margins.Left = 6
    Margins.Top = 1
    Alignment = taCenter
    Color = 14671807
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object edtTotGeral: TCurrencyEdit
    Left = 84
    Top = 110
    Width = 100
    Height = 32
    Margins.Left = 6
    Margins.Top = 1
    TabStop = False
    Alignment = taCenter
    Color = 14671807
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
end
