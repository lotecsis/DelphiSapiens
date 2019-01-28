object FConsGeralNfEnt: TFConsGeralNfEnt
  Left = 0
  Top = 0
  Caption = 'FConsGeralNfEnt'
  ClientHeight = 555
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 734
    Height = 83
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 14
      Width = 113
      Height = 13
      Caption = 'Campo para o Filtro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 96
      Top = 54
      Width = 32
      Height = 13
      Caption = 'Valor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdFiltro: TEdit
      Left = 134
      Top = 11
      Width = 476
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object EdValor: TEdit
      Left = 134
      Top = 51
      Width = 476
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = EdValorChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 83
    Width = 734
    Height = 421
    Align = alClient
    TabOrder = 1
    object DBGrid: TDBGrid
      Left = 1
      Top = 1
      Width = 732
      Height = 419
      Align = alClient
      DataSource = DsConsGeral
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGridDblClick
      OnKeyPress = DBGridKeyPress
      OnTitleClick = DBGridTitleClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 504
    Width = 734
    Height = 51
    Align = alBottom
    TabOrder = 2
  end
  object DsConsGeral: TDataSource
    DataSet = Dm2.ConsGeral
    Left = 40
    Top = 512
  end
end
