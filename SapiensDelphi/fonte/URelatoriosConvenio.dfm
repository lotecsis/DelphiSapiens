object FRelatoriosConvenio: TFRelatoriosConvenio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rios Conv'#234'nio / Adiantamentos'
  ClientHeight = 266
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 143
    Top = 11
    Width = 23
    Height = 13
    Caption = 'M'#234's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 329
    Top = 11
    Width = 22
    Height = 13
    Caption = 'Ano'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BDescontos: TSpeedButton
    Left = 26
    Top = 73
    Width = 201
    Height = 41
    Caption = 'Descontos'
    OnClick = BDescontosClick
  end
  object BAnalizar: TSpeedButton
    Left = 26
    Top = 137
    Width = 201
    Height = 41
    Caption = 'An'#225'lizes Pendentes'
    OnClick = BAnalizarClick
  end
  object BAdiantamentos: TSpeedButton
    Left = 26
    Top = 201
    Width = 201
    Height = 41
    Caption = 'Adiantamentos'
    OnClick = BAdiantamentosClick
  end
  object Label1: TLabel
    Left = 100
    Top = 50
    Width = 59
    Height = 16
    Caption = 'Conv'#234'nio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 404
    Top = 50
    Width = 99
    Height = 16
    Caption = 'Adiantamentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CbMes: TComboBox
    Left = 171
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Todos'
      'Janeiro'
      'Fevereiro'
      'Mar'#231'o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
  object EdAno: TEdit
    Left = 354
    Top = 8
    Width = 78
    Height = 21
    TabOrder = 1
  end
  object BAdtTrazerDinheiro: TBitBtn
    Left = 354
    Top = 73
    Width = 201
    Height = 41
    Caption = 'Trazer Dinheiro'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BAdtTrazerDinheiroClick
  end
  object BAdtDescFolha: TBitBtn
    Left = 354
    Top = 137
    Width = 201
    Height = 41
    Caption = 'Descontar em Folha'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BAdtDescFolhaClick
  end
end
