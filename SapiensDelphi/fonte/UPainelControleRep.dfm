object FPainelControleRep: TFPainelControleRep
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Painel de Vendas'
  ClientHeight = 572
  ClientWidth = 994
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
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 994
    Height = 572
    ActivePage = ts1
    Align = alClient
    TabOrder = 0
    object ts1: TTabSheet
      Caption = 'ts1'
      object Label5: TLabel
        Left = 16
        Top = 469
        Width = 3
        Height = 13
      end
      object btn1: TBitBtn
        Left = 860
        Top = 70
        Width = 75
        Height = 25
        Caption = 'btn1'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = btn1Click
      end
      object btn2: TBitBtn
        Left = 860
        Top = 101
        Width = 75
        Height = 25
        Caption = 'btn2'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = btn2Click
      end
      object btn3: TBitBtn
        Left = 860
        Top = 132
        Width = 75
        Height = 25
        Caption = 'btn3'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = btn3Click
      end
      object btn4: TBitBtn
        Left = 860
        Top = 163
        Width = 75
        Height = 25
        Caption = 'btn4'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = btn4Click
      end
      object edtDatAtu: TDateEdit
        Left = 3
        Top = 3
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 4
      end
      object edtDatFim: TDateEdit
        Left = 215
        Top = 3
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 5
      end
      object btn5: TBitBtn
        Left = 321
        Top = 1
        Width = 75
        Height = 25
        Caption = 'btn5'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 6
        OnClick = btn5Click
      end
      object edtDatIni: TDateEdit
        Left = 109
        Top = 3
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 7
      end
      object dbg1: TDBGrid
        Left = -2
        Top = 60
        Width = 989
        Height = 323
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnl1: TPanel
        Left = 0
        Top = 387
        Width = 355
        Height = 156
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 15329779
        ParentBackground = False
        TabOrder = 9
        object Label1: TLabel
          Left = 14
          Top = 39
          Width = 106
          Height = 13
          Caption = 'Qtde Pedidos Emitidos'
        end
        object Label2: TLabel
          Left = 14
          Top = 20
          Width = 106
          Height = 13
          Caption = 'Valor Pedidos Emitidos'
        end
        object Label3: TLabel
          Left = 4
          Top = 86
          Width = 116
          Height = 13
          Caption = 'Qtde Pedidos Faturados'
        end
        object Label4: TLabel
          Left = 4
          Top = 67
          Width = 116
          Height = 13
          Caption = 'Valor Pedidos Faturados'
        end
        object Label8: TLabel
          Left = 20
          Top = 134
          Width = 100
          Height = 13
          Caption = 'Qtde Pedidos Aberto'
        end
        object Label9: TLabel
          Left = 20
          Top = 115
          Width = 100
          Height = 13
          Caption = 'Valor Pedidos Aberto'
        end
        object Label6: TLabel
          Left = 202
          Top = 3
          Width = 51
          Height = 13
          Caption = ' Estofados'
        end
        object Label7: TLabel
          Left = 295
          Top = 3
          Width = 43
          Height = 13
          Caption = 'Colch'#245'es'
        end
      end
      object pnl2: TPanel
        Left = 360
        Top = 387
        Width = 269
        Height = 38
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 14680063
        ParentBackground = False
        TabOrder = 10
        object Label10: TLabel
          Left = 1
          Top = 8
          Width = 71
          Height = 13
          Caption = 'Total Faturado'
        end
      end
      object pnl3: TPanel
        Left = 360
        Top = 431
        Width = 269
        Height = 112
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 15724510
        ParentBackground = False
        TabOrder = 11
        object Label11: TLabel
          Left = 16
          Top = 0
          Width = 13
          Height = 13
          Caption = 'M'#179
        end
        object Label12: TLabel
          Left = 23
          Top = 18
          Width = 89
          Height = 13
          Caption = 'Gerado no Per'#237'odo'
        end
        object Label13: TLabel
          Left = 8
          Top = 36
          Width = 104
          Height = 13
          Caption = 'Em Aberto do Per'#237'odo'
        end
        object Label14: TLabel
          Left = 35
          Top = 72
          Width = 77
          Height = 13
          Caption = 'Total em Aberto'
        end
      end
      object pnl4: TPanel
        Left = 635
        Top = 387
        Width = 222
        Height = 156
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 12
        object Label15: TLabel
          Left = 16
          Top = 8
          Width = 93
          Height = 13
          Caption = 'Cidades com Venda'
        end
        object Label16: TLabel
          Left = 16
          Top = 40
          Width = 93
          Height = 13
          Caption = 'Cidades sem Venda'
        end
        object Label17: TLabel
          Left = 16
          Top = 72
          Width = 37
          Height = 13
          Caption = 'Label17'
        end
      end
    end
    object ts2: TTabSheet
      Caption = 'ts2'
      ImageIndex = 1
      object wb1: TWebBrowser
        Left = 0
        Top = 0
        Width = 986
        Height = 544
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 56
        ExplicitTop = 104
        ExplicitWidth = 732
        ExplicitHeight = 150
        ControlData = {
          4C000000E8650000393800000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
end
