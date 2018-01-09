object FConsultaTecido: TFConsultaTecido
  Left = 0
  Top = 0
  Caption = 'Consulta Tecido'
  ClientHeight = 672
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 877
    Height = 82
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 178
      Height = 13
      Caption = 'Per'#237'odo p/calculo de consumo..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 340
      Top = 24
      Width = 7
      Height = 13
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 528
      Top = 24
      Width = 58
      Height = 13
      Caption = 'Situa'#231#227'o..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel7: TPanel
      Left = 1
      Top = 51
      Width = 875
      Height = 30
      Align = alBottom
      BevelOuter = bvLowered
      TabOrder = 0
      ExplicitTop = 91
      object Ch100: TCheckBox
        Left = 520
        Top = 4
        Width = 40
        Height = 22
        Caption = '100'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object Ch200: TCheckBox
        Left = 582
        Top = 4
        Width = 40
        Height = 22
        Caption = '200'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object Ch300: TCheckBox
        Left = 644
        Top = 4
        Width = 40
        Height = 22
        Caption = '300'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object Ch400: TCheckBox
        Left = 706
        Top = 4
        Width = 40
        Height = 22
        Caption = '400'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object Ch600: TCheckBox
        Left = 768
        Top = 4
        Width = 40
        Height = 22
        Caption = '600'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object Ch700: TCheckBox
        Left = 830
        Top = 4
        Width = 40
        Height = 22
        Caption = '700'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
    end
    object EdDatIni: TDateEdit
      Left = 202
      Top = 16
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object EdDatFim: TDateEdit
      Left = 368
      Top = 16
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 592
      Top = 16
      Width = 93
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 3
      Text = 'Ativo'
      Items.Strings = (
        'Ativo'
        'Inativo'
        'Todos')
    end
    object Panel8: TPanel
      Left = 772
      Top = 1
      Width = 104
      Height = 50
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitLeft = 771
      object BMostrar: TBitBtn
        Left = 2
        Top = 1
        Width = 100
        Height = 25
        Caption = 'Mostrar'
        DoubleBuffered = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
          FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
          FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
          FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
          FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
          FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
          C8807FF7777777777FF700000000000000007777777777777777333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 82
    Width = 877
    Height = 202
    Align = alTop
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 875
      Height = 200
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 284
    Width = 877
    Height = 136
    Align = alTop
    TabOrder = 2
    ExplicitTop = 233
  end
  object Panel4: TPanel
    Left = 0
    Top = 420
    Width = 877
    Height = 160
    Align = alTop
    TabOrder = 3
    ExplicitTop = 369
  end
  object Panel5: TPanel
    Left = 0
    Top = 580
    Width = 877
    Height = 96
    Align = alTop
    TabOrder = 4
    ExplicitTop = 529
  end
  object Panel6: TPanel
    Left = 0
    Top = 676
    Width = 877
    Height = 0
    Align = alClient
    TabOrder = 5
    ExplicitLeft = 360
    ExplicitTop = 640
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
end
