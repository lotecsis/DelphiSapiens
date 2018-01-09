object FAlteraPerTolTabPreco: TFAlteraPerTolTabPreco
  Left = 0
  Top = 0
  ClientHeight = 203
  ClientWidth = 433
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 437
    object Label1: TLabel
      Left = 27
      Top = 16
      Width = 54
      Height = 13
      Caption = 'Produto..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 15
      Top = 37
      Width = 66
      Height = 13
      Caption = 'Deriva'#231#227'o..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LProduto: TLabel
      Left = 88
      Top = 16
      Width = 3
      Height = 13
    end
    object LDerivacao: TLabel
      Left = 88
      Top = 37
      Width = 3
      Height = 13
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 433
    Height = 138
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 176
    ExplicitTop = 120
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label4: TLabel
      Left = 6
      Top = 44
      Width = 85
      Height = 13
      Caption = '% Tol. Menos..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 17
      Top = 73
      Width = 74
      Height = 13
      Caption = '% Tol. Mais..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 218
      Top = 44
      Width = 38
      Height = 13
      Caption = 'Valor..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 218
      Top = 73
      Width = 38
      Height = 13
      Caption = 'Valor..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 20
      Top = 15
      Width = 71
      Height = 13
      Caption = 'Pre'#231'o Base..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdPerTolMen: TCurrencyEdit
      Left = 98
      Top = 36
      Width = 70
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 1
      OnExit = EdPerTolMenExit
    end
    object EdPerTolMai: TCurrencyEdit
      Left = 98
      Top = 65
      Width = 70
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 2
      OnExit = EdPerTolMaiExit
    end
    object EdVlrMen: TCurrencyEdit
      Left = 263
      Top = 36
      Width = 80
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabStop = False
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 3
    end
    object EdVlrMai: TCurrencyEdit
      Left = 263
      Top = 65
      Width = 80
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabStop = False
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 4
    end
    object BCancelar: TBitBtn
      Left = 268
      Top = 108
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
      TabStop = False
      OnClick = BCancelarClick
    end
    object BConfirma: TBitBtn
      Left = 349
      Top = 108
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 6
      OnClick = BConfirmaClick
    end
    object EdPrecoBase: TCurrencyEdit
      Left = 98
      Top = 7
      Width = 70
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 0
    end
  end
end
