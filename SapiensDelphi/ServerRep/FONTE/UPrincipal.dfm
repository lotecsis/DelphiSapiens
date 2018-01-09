object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'ServerRep'
  ClientHeight = 517
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LStatus: TLabel
    Left = 55
    Top = 266
    Width = 3
    Height = 13
  end
  object Label1: TLabel
    Left = 8
    Top = 242
    Width = 51
    Height = 13
    Caption = 'Servi'#231'os:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 266
    Width = 42
    Height = 13
    Caption = 'Clientes:'
  end
  object Label3: TLabel
    Left = 298
    Top = 428
    Width = 37
    Height = 13
    Caption = 'Pedidos'
    Visible = False
  end
  object Label4: TLabel
    Left = 312
    Top = 459
    Width = 23
    Height = 13
    Caption = 'Base'
  end
  object lbl1: TLabel
    Left = 8
    Top = 293
    Width = 142
    Height = 13
    Caption = 'Considerar para gera'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalTitulos: TLabel
    Left = 212
    Top = 416
    Width = 3
    Height = 13
  end
  object lblTotalClientes: TLabel
    Left = 212
    Top = 322
    Width = 3
    Height = 13
  end
  object lblTotalCondCpg: TLabel
    Left = 212
    Top = 346
    Width = 3
    Height = 13
  end
  object lblTotalTabPreco: TLabel
    Left = 212
    Top = 370
    Width = 3
    Height = 13
  end
  object lblTotalLogLigacaoProdutosCores: TLabel
    Left = 212
    Top = 392
    Width = 3
    Height = 13
  end
  object lblTotalProdutos: TLabel
    Left = 212
    Top = 436
    Width = 3
    Height = 13
  end
  object lblTotalDerivacoes: TLabel
    Left = 242
    Top = 436
    Width = 3
    Height = 13
  end
  object lblTotalCores: TLabel
    Left = 212
    Top = 459
    Width = 3
    Height = 13
  end
  object lblTotalLigProdutosCores: TLabel
    Left = 212
    Top = 486
    Width = 3
    Height = 13
  end
  object Label5: TLabel
    Left = 399
    Top = 498
    Width = 145
    Height = 13
    Caption = 'Vers'#227'o: 4.0    Em: 04/01/2018'
  end
  object lblTotalCondCpgLig: TLabel
    Left = 242
    Top = 346
    Width = 3
    Height = 13
  end
  object BIniciaServ: TBitBtn
    Left = 452
    Top = 454
    Width = 99
    Height = 25
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BIniciaServClick
  end
  object MemoStatus: TMemo
    Left = 0
    Top = 128
    Width = 554
    Height = 110
    Lines.Strings = (
      'MemoStatus')
    ReadOnly = True
    TabOrder = 1
  end
  object BAtualizaPedidos: TBitBtn
    Left = 452
    Top = 423
    Width = 99
    Height = 25
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    Visible = False
    OnClick = BAtualizaPedidosClick
  end
  object MemoStatusPed: TMemo
    Left = 0
    Top = 0
    Width = 554
    Height = 122
    Lines.Strings = (
      'MemoStatusPed')
    TabOrder = 3
  end
  object btnGerarBase3: TBitBtn
    Left = 494
    Top = 347
    Width = 52
    Height = 25
    Caption = 'Gerar Base'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    Visible = False
    OnClick = btnGerarBase3Click
  end
  object edtData: TDateEdit
    Left = 156
    Top = 290
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 5
  end
  object chkClientes: TCheckBox
    Left = 10
    Top = 320
    Width = 65
    Height = 17
    Caption = 'Clientes'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 6
  end
  object chkCondCpg: TCheckBox
    Left = 10
    Top = 343
    Width = 164
    Height = 17
    Caption = 'Condi'#231#245'es de Pagamento'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 7
  end
  object chkTabelaPreco: TCheckBox
    Left = 10
    Top = 366
    Width = 115
    Height = 17
    Caption = 'Tabela de Pre'#231'o'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 8
  end
  object chkTitulos: TCheckBox
    Left = 10
    Top = 404
    Width = 61
    Height = 17
    Caption = 'T'#237'tulos'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 9
  end
  object chkProdutos: TCheckBox
    Left = 8
    Top = 427
    Width = 74
    Height = 17
    Caption = 'Produtos'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 10
  end
  object btnGerarPedidos3: TBitBtn
    Left = 492
    Top = 316
    Width = 52
    Height = 25
    Caption = 'Gerar Pedidos'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 11
    Visible = False
    OnClick = btnGerarPedidos3Click
  end
  object btnGerarBase: TBitBtn
    Left = 341
    Top = 454
    Width = 100
    Height = 25
    Caption = 'Gerar Base'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 12
    OnClick = btnGerarBaseClick
  end
  object btnGerarPedidos: TBitBtn
    Left = 341
    Top = 423
    Width = 100
    Height = 25
    Caption = 'Gerar Pedidos'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 13
    Visible = False
    OnClick = btnGerarPedidosClick
  end
  object TGeraAtuClientes: TTimer
    Enabled = False
    Interval = 3600000
    OnTimer = TGeraAtuClientesTimer
    Left = 456
    Top = 250
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = AcCadUsuarios
            Caption = '&Cadastro Usuarios'
          end>
      end
      item
        Items = <
          item
            Action = AcCadUsuarios
            Caption = '&Cadastro de Usuarios'
          end>
      end>
    Left = 464
    Top = 346
    StyleName = 'Platform Default'
    object AcCadUsuarios: TAction
      Caption = 'Cadastro de Usuarios'
      OnExecute = AcCadUsuariosExecute
    end
  end
  object TProcessaPededidos: TTimer
    Enabled = False
    Interval = 900000
    OnTimer = TProcessaPededidosTimer
    Left = 360
    Top = 258
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 352
    Top = 170
  end
  object tmrBase: TTimer
    Enabled = False
    Interval = 900000
    OnTimer = tmrBaseTimer
    Left = 304
    Top = 314
  end
  object tmrPedidos: TTimer
    Enabled = False
    Interval = 8400000
    OnTimer = tmrPedidosTimer
    Left = 384
    Top = 314
  end
end
