object FConsPedido: TFConsPedido
  Left = 0
  Top = 0
  Caption = 'Consulta Pedido'
  ClientHeight = 566
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid: TDBGrid
    Left = 0
    Top = 225
    Width = 884
    Height = 296
    Align = alClient
    DataSource = DsConsE120ped
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGridDblClick
    OnEnter = DBGridEnter
    OnExit = DBGridExit
    OnKeyPress = DBGridKeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODFIL'
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMPED'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SITPED'
        Title.Alignment = taCenter
        Title.Caption = 'Sit.'
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DsCitPed'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATEMI'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APECLI'
        Title.Alignment = taCenter
        Title.Caption = 'Fantasia'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODREP'
        Title.Alignment = taCenter
        Title.Caption = 'Rep.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMREP'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'APEREP'
        Title.Alignment = taCenter
        Title.Caption = 'Apelido'
        Width = 130
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRLIQ'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. L'#237'quido'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CIDCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SIGUFS'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 25
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USUGER'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMUSU'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vnVlrBru'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 225
    Align = alTop
    Alignment = taLeftJustify
    TabOrder = 1
    object Label1: TLabel
      Left = 54
      Top = 18
      Width = 42
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 40
      Width = 88
      Height = 13
      Caption = 'Representante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 68
      Top = 64
      Width = 28
      Height = 13
      Caption = 'Filial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 355
      Top = 88
      Width = 49
      Height = 13
      Caption = 'Emiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 517
      Top = 88
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
    object Label8: TLabel
      Left = 344
      Top = 40
      Width = 60
      Height = 13
      Caption = 'Pr'#233'-Carga:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 368
      Top = 64
      Width = 36
      Height = 13
      Caption = 'Carga:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 363
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdCodCli: TEdit
      Left = 102
      Top = 8
      Width = 180
      Height = 21
      TabOrder = 0
      OnExit = EdCodCliExit
      OnKeyDown = EdCodCliKeyDown
      OnKeyPress = EdCodCliKeyPress
    end
    object EdCodRep: TEdit
      Left = 102
      Top = 32
      Width = 180
      Height = 21
      TabOrder = 1
      OnExit = EdCodRepExit
      OnKeyDown = EdCodRepKeyDown
      OnKeyPress = EdCodRepKeyPress
    end
    object EdCodFil: TEdit
      Left = 102
      Top = 56
      Width = 100
      Height = 21
      TabOrder = 2
      OnExit = EdCodFilExit
      OnKeyDown = EdCodFilKeyDown
      OnKeyPress = EdCodFilKeyPress
    end
    object EdDatIni: TDateEdit
      Left = 410
      Top = 80
      Width = 100
      Height = 21
      DialogTitle = 'Data Inicial'
      NumGlyphs = 2
      TabOrder = 6
    end
    object EdDatFim: TDateEdit
      Left = 532
      Top = 80
      Width = 100
      Height = 21
      DialogTitle = 'Data Final'
      NumGlyphs = 2
      TabOrder = 7
    end
    object BCodCli: TBitBtn
      Left = 259
      Top = 9
      Width = 22
      Height = 19
      Caption = '...'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 8
      TabStop = False
      OnClick = BCodCliClick
    end
    object BCodRep: TBitBtn
      Left = 259
      Top = 33
      Width = 22
      Height = 19
      Caption = '...'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 9
      TabStop = False
      OnClick = BCodRepClick
    end
    object BCodFil: TBitBtn
      Left = 179
      Top = 57
      Width = 22
      Height = 19
      Caption = '...'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 10
      TabStop = False
      OnClick = BCodFilClick
    end
    object EdPreCar: TEdit
      Left = 410
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 4
      OnExit = EdPreCarExit
      OnKeyDown = EdPreCarKeyDown
      OnKeyPress = EdPreCarKeyPress
    end
    object EdNumAne: TEdit
      Left = 410
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 5
      OnExit = EdNumAneExit
      OnKeyDown = EdNumAneKeyDown
      OnKeyPress = EdNumAneKeyPress
    end
    object BPreCar: TBitBtn
      Left = 508
      Top = 33
      Width = 22
      Height = 19
      Caption = '...'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 11
      TabStop = False
      OnClick = BPreCarClick
    end
    object BNumAne: TBitBtn
      Left = 508
      Top = 57
      Width = 22
      Height = 19
      Caption = '...'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 12
      TabStop = False
      OnClick = BNumAneClick
    end
    object Panel2: TPanel
      Left = 8
      Top = 106
      Width = 114
      Height = 114
      BevelOuter = bvLowered
      TabOrder = 13
      object Label6: TLabel
        Left = 6
        Top = 2
        Width = 103
        Height = 13
        Caption = 'Situa'#231#227'o do Peido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ChAbertoParcial: TCheckBox
        Left = 7
        Top = 32
        Width = 97
        Height = 17
        Caption = 'Aberto Parcial'
        TabOrder = 0
      end
      object ChSuspenso: TCheckBox
        Left = 7
        Top = 47
        Width = 97
        Height = 17
        Caption = 'Suspenso'
        TabOrder = 1
      end
      object ChAbertoTotal: TCheckBox
        Left = 7
        Top = 17
        Width = 97
        Height = 17
        Caption = 'Aberto Total'
        TabOrder = 2
      end
      object ChLiquidado: TCheckBox
        Left = 7
        Top = 62
        Width = 97
        Height = 17
        Caption = 'Liquidado'
        TabOrder = 3
      end
      object ChCancelado: TCheckBox
        Left = 7
        Top = 77
        Width = 97
        Height = 17
        Caption = 'Cancelado'
        TabOrder = 4
      end
      object ChNaoFechado: TCheckBox
        Left = 7
        Top = 92
        Width = 97
        Height = 17
        Caption = 'N'#227'o Fechado'
        TabOrder = 5
      end
    end
    object Panel3: TPanel
      Left = 126
      Top = 107
      Width = 282
      Height = 113
      BevelOuter = bvLowered
      TabOrder = 14
      object Label7: TLabel
        Left = 5
        Top = 2
        Width = 139
        Height = 13
        Caption = 'Condi'#231#245'es Pr'#233'-Definidas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 5
        Top = 96
        Width = 182
        Height = 13
        Caption = 'Dias em que o pedido est'#225' em aberto:'
      end
      object ChComTecTrans: TCheckBox
        Left = 5
        Top = 53
        Width = 332
        Height = 17
        Caption = 'Aberto Total/Parcial C/Tecido transferido de dep'#243'sito'
        TabOrder = 0
      end
      object ChSemTecTrans: TCheckBox
        Left = 5
        Top = 71
        Width = 277
        Height = 17
        Caption = 'Aberto Total/Parcial S/Tecido transferido de dep'#243'sito'
        TabOrder = 1
      end
      object ChComPreCar: TCheckBox
        Left = 5
        Top = 34
        Width = 301
        Height = 17
        Caption = 'Aberto Total/Parcial que est'#225' em pr'#233'-carga '
        TabOrder = 2
      end
      object ChSemPreCar: TCheckBox
        Left = 5
        Top = 16
        Width = 260
        Height = 17
        Caption = 'Aberto Total/Parcial que n'#227'o est'#225' em pr'#233'-carga '
        TabOrder = 3
      end
      object EdDiasAberto: TEdit
        Left = 193
        Top = 88
        Width = 82
        Height = 21
        TabOrder = 4
        OnKeyPress = EdDiasAbertoKeyPress
      end
    end
    object Panel4: TPanel
      Left = 771
      Top = 1
      Width = 112
      Height = 223
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 15
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 112
        Height = 100
        Align = alTop
        TabOrder = 0
        object BMostrar: TBitBtn
          Left = 5
          Top = 5
          Width = 100
          Height = 25
          Caption = 'Mostrar'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = BMostrarClick
        end
      end
    end
    object Panel6: TPanel
      Left = 564
      Top = 107
      Width = 223
      Height = 113
      BevelOuter = bvLowered
      TabOrder = 16
      object Label11: TLabel
        Left = 5
        Top = 2
        Width = 76
        Height = 13
        Caption = 'Ordernar por:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 101
        Top = 40
        Width = 23
        Height = 22
        Caption = '<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 101
        Top = 64
        Width = 23
        Height = 22
        Caption = '>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object Image1: TImage
        Left = 191
        Top = 2
        Width = 15
        Height = 15
        Picture.Data = {
          07544269746D617006030000424D060300000000000036000000280000000F00
          00000F0000000100180000000000D0020000120B0000120B0000000000000000
          0000EDE9EBEDE9EBE7E4E6E5E1E3CFCBCDA59B9AA19593A19694A19593A29694
          BFBABBE6E2E4E8E5E6EEEAECEEEAEC000000EDE9EBECE8EAE6E2E4EAE6E8BCB5
          B6975337A756309D4F2CA1522DA6552F9E8781ECE8EAE7E4E5ECE8EAEDEAEC00
          0000EEEAECEDE9EBEDE9EBEDE9EBD8C8C5B46D4A9F4A26954020994322AD5B33
          C8A397EDE9EBEDE9EBEDE9EBEEEAEC000000EEEAECEDE9EBEDE9EBEDE9EBE1CC
          C7B6704E9F4A259A401F9D4220AC5B34D0A899EDE9EBEDE9EBEDE9EBEEEAEC00
          0000EEEAECEDE9EBEDE9EBEDE9EBDECBC6BC7754AA562DA44D25A64F27B4673B
          D0AA9AEDE9EBEDE9EBEDE9EBEEEAEC000000EEEAECEDE9EBEDE9EBEDE9EBE0CD
          C8C07E59AF5B32A95229AA562AB96E41D3AE9DEDE9EBEDE9EBEDE9EBEEEAEC00
          0000EDE8E9ECE7E9EDE9EBEDE9EBE3D2CEC5845EBA6A39B45F2FB66332C07848
          D3AFA0EDE9EBEDE9EBEDE9EBEDE7E8000000E4D2CCDCC1B6D2A893D7B4A2D1A7
          91CD9064C67A42C07038C1733ACB8754CD9C7ED7B5A5D3AA95D7B4A5E5D4CF00
          0000E9DFDEE3D1CBCC9371DAA478D19263CF8D5AC57B45C47842C47841CA8551
          CF905ED79F71D0956AD7B5A5EAE2E1000000EEEAECEDE9EBE3D1CAD5A17DD79E
          72C77C44C67C46C87E49C87D48C5773FCF8D5CD8A279D9B59FECE7E8EEEAEC00
          0000EEEAECEDE9EBEDE9EBE1CBBFD9A987DAA57ECB824CCC8550CA814BD29261
          DEAF8CD8B097EDE8E9EDE9EBEEEAEC000000EEEAECEDE9EBEDE9EBEDE9EBE0C7
          B8DEB498DEAE8ACD864BD49868E4BCA0D9B095EBE3E2EDE9EBEDE9EBEEEAEC00
          0000EEEAECEDE9EBEDE9EBEDE9EBEDE9EBE0C5B5E5BEA8E4BC9FE7C4ACDCB299
          EAE0DEEDE9EBEDE9EBEDE9EBEEEAEC000000EDEAECEDE9EBEDE9EBEDE9EBEDE9
          EBEDE9EBDFC0ADEBCFC4E0BBA4E8DCD7EDE9EBEDE9EBEDE9EBEDE9EBEDEAEC00
          0000EEEAECEEEAECEEEAECEEEAECEEEAECEEEAECECE4E3E0C0ABE6D3C9EEEAEC
          EEEAECEEEAECEEEAECEEEAECEEEAEC000000}
      end
      object Image2: TImage
        Left = 156
        Top = 3
        Width = 15
        Height = 15
        Picture.Data = {
          07544269746D617006030000424D060300000000000036000000280000000F00
          00000F0000000100180000000000D0020000120B0000120B0000000000000000
          0000EEEAECEEEAECEEEAECEEEAECEEEAECEEEAECE6D3C9E0C0ABECE4E3EEEAEC
          EEEAECEEEAECEEEAECEEEAECEEEAEC000000EDEAECEDE9EBEDE9EBEDE9EBEDE9
          EBE8DCD7E0BBA4EBCFC4DFC0ADEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDEAEC00
          0000EEEAECEDE9EBEDE9EBEDE9EBEAE0DEDCB299E7C4ACE4BC9FE5BEA8E0C5B5
          EDE9EBEDE9EBEDE9EBEDE9EBEEEAEC000000EEEAECEDE9EBEDE9EBEBE3E2D9B0
          95E4BCA0D49868CD864BDEAE8ADEB498E0C7B8EDE9EBEDE9EBEDE9EBEEEAEC00
          0000EEEAECEDE9EBEDE8E9D8B097DEAF8CD29261CA814BCC8550CB824CDAA57E
          D9A987E1CBBFEDE9EBEDE9EBEEEAEC000000EEEAECECE7E8D9B59FD8A279CF8D
          5CC5773FC87D48C87E49C67C46C77C44D79E72D5A17DE3D1CAEDE9EBEEEAEC00
          0000EAE2E1D7B5A5D0956AD79F71CF905ECA8551C47841C47842C57B45CF8D5A
          D19263DAA478CC9371E3D1CBE9DFDE000000E5D4CFD7B4A5D3AA95D7B5A5CD9C
          7ECB8754C1733AC07038C67A42CD9064D1A791D7B4A2D2A893DCC1B6E4D2CC00
          0000EDE7E8EDE9EBEDE9EBEDE9EBD3AFA0C07848B66332B45F2FBA6A39C5845E
          E3D2CEEDE9EBEDE9EBECE7E9EDE8E9000000EEEAECEDE9EBEDE9EBEDE9EBD3AE
          9DB96E41AA562AA95229AF5B32C07E59E0CDC8EDE9EBEDE9EBEDE9EBEEEAEC00
          0000EEEAECEDE9EBEDE9EBEDE9EBD0AA9AB4673BA64F27A44D25AA562DBC7754
          DECBC6EDE9EBEDE9EBEDE9EBEEEAEC000000EEEAECEDE9EBEDE9EBEDE9EBD0A8
          99AC5B349D42209A401F9F4A25B6704EE1CCC7EDE9EBEDE9EBEDE9EBEEEAEC00
          0000EEEAECEDE9EBEDE9EBEDE9EBC8A397AD5B339943229540209F4A26B46D4A
          D8C8C5EDE9EBEDE9EBEDE9EBEEEAEC000000EDEAECECE8EAE7E4E5ECE8EA9E87
          81A6552FA1522D9D4F2CA75630975337BCB5B6EAE6E8E6E2E4ECE8EAEDE9EB00
          0000EEEAECEEEAECE8E5E6E6E2E4BFBABBA29694A19593A19694A19593A59B9A
          CFCBCDE5E1E3E7E4E6EDE9EBEDE9EB000000}
      end
      object EdOrdemOps: TListBox
        Left = 125
        Top = 19
        Width = 95
        Height = 87
        ItemHeight = 13
        Items.Strings = (
          'Pedido'
          'Cliente'
          'Data Emiss'#227'o'
          'Representante'
          'Situa'#231#227'o'
          'Filial')
        TabOrder = 0
      end
      object EdOrdem: TListBox
        Left = 5
        Top = 19
        Width = 95
        Height = 87
        ItemHeight = 13
        TabOrder = 1
      end
      object RbAsc: TRadioButton
        Left = 141
        Top = 1
        Width = 17
        Height = 17
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object RbDesc: TRadioButton
        Left = 177
        Top = 1
        Width = 17
        Height = 17
        TabOrder = 3
      end
    end
    object EdCidCli: TEdit
      Left = 410
      Top = 8
      Width = 263
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnExit = EdCidCliExit
      OnKeyDown = EdCidCliKeyDown
    end
    object BCidCli: TBitBtn
      Left = 650
      Top = 9
      Width = 22
      Height = 19
      Caption = '...'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 17
      TabStop = False
      OnClick = BCidCliClick
    end
    object Panel8: TPanel
      Left = 411
      Top = 107
      Width = 149
      Height = 113
      BevelOuter = bvLowered
      TabOrder = 18
      object Label13: TLabel
        Left = 5
        Top = 2
        Width = 48
        Height = 13
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 10
        Top = 90
        Width = 35
        Height = 13
        Caption = 'Tecido:'
      end
      object Label16: TLabel
        Left = 3
        Top = 34
        Width = 42
        Height = 13
        Caption = 'Produto:'
      end
      object Label19: TLabel
        Left = 16
        Top = 62
        Width = 29
        Height = 13
        Caption = 'Deriv:'
      end
      object EdCorTec: TEdit
        Left = 46
        Top = 83
        Width = 100
        Height = 21
        TabOrder = 0
        OnExit = EdCorTecExit
        OnKeyPress = EdCorTecKeyPress
      end
      object EdCodPro: TEdit
        Left = 46
        Top = 26
        Width = 100
        Height = 21
        ImeMode = imKata
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnExit = EdCodProExit
        OnKeyDown = EdCodProKeyDown
        OnKeyPress = EdCodProKeyPress
      end
      object EdCodDer: TEdit
        Left = 46
        Top = 55
        Width = 100
        Height = 21
        TabOrder = 2
        OnExit = EdCodDerExit
        OnKeyPress = EdCodDerKeyPress
      end
      object BCodPro: TBitBtn
        Left = 123
        Top = 27
        Width = 22
        Height = 19
        Caption = '...'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 3
        OnClick = BCodProClick
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 521
    Width = 884
    Height = 45
    Align = alBottom
    TabOrder = 2
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 457
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label15: TLabel
        Left = 16
        Top = 2
        Width = 70
        Height = 13
        Caption = 'Qtd. Pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 125
        Top = 2
        Width = 52
        Height = 13
        Caption = 'Vlr. Bruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 234
        Top = 2
        Width = 61
        Height = 13
        Caption = 'Vlr. L'#237'quido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 343
        Top = 2
        Width = 61
        Height = 13
        Caption = 'Volume M'#179
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdQtdPedidos: TCurrencyEdit
        Left = 16
        Top = 16
        Width = 90
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabStop = False
        DisplayFormat = ' ,0;- ,0'
        ReadOnly = True
        TabOrder = 0
      end
      object EdVlrBru: TCurrencyEdit
        Left = 125
        Top = 16
        Width = 90
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabStop = False
        DisplayFormat = ' ,0.00;- ,0.00'
        ReadOnly = True
        TabOrder = 1
      end
      object EdVlrLiq: TCurrencyEdit
        Left = 234
        Top = 16
        Width = 90
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabStop = False
        DisplayFormat = ' ,0.00;- ,0.00'
        ReadOnly = True
        TabOrder = 2
      end
      object EdVolDer: TCurrencyEdit
        Left = 344
        Top = 16
        Width = 90
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabStop = False
        DisplayFormat = ' ,0.00;- ,0.00'
        ReadOnly = True
        TabOrder = 3
      end
    end
    object Panel10: TPanel
      Left = 458
      Top = 1
      Width = 425
      Height = 43
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 1
      object BProdutosConsulta: TBitBtn
        Left = 4
        Top = 11
        Width = 93
        Height = 25
        Caption = 'Produtos'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = BProdutosConsultaClick
      end
      object BConsumoTecido: TBitBtn
        Left = 103
        Top = 10
        Width = 100
        Height = 25
        Caption = 'Tecidos'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BConsumoTecidoClick
      end
    end
  end
  object ValidaCliente: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codcli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select codcli,nomcli from e085cli where codcli = :codcli')
    Left = 104
    Top = 324
    object ValidaClienteCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ValidaClienteNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
  end
  object ValidaRepresentante: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codrep'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select codrep,nomrep,aperep from e090rep where codrep = :codrep')
    Left = 48
    Top = 260
    object ValidaRepresentanteCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ValidaRepresentanteNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ValidaRepresentanteAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
  end
  object ValidaFilial: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select codemp,codfil,nomfil from e070fil where codfil = :codfil')
    Left = 48
    Top = 308
    object ValidaFilialCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ValidaFilialCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ValidaFilialNOMFIL: TStringField
      FieldName = 'NOMFIL'
      Size = 100
    end
  end
  object ValidaUsu_TPreCar: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tprecar where usu_precar = :precar')
    Left = 48
    Top = 356
    object ValidaUsu_TPreCarUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ValidaUsu_TPreCarUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object ValidaUsu_TPreCarUSU_HORGER: TIntegerField
      FieldName = 'USU_HORGER'
    end
    object ValidaUsu_TPreCarUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object ValidaUsu_TPreCarUSU_CARLIB: TStringField
      FieldName = 'USU_CARLIB'
      Size = 1
    end
    object ValidaUsu_TPreCarUSU_DATLIB: TDateTimeField
      FieldName = 'USU_DATLIB'
    end
    object ValidaUsu_TPreCarUSU_HORLIB: TIntegerField
      FieldName = 'USU_HORLIB'
    end
    object ValidaUsu_TPreCarUSU_USULIB: TIntegerField
      FieldName = 'USU_USULIB'
    end
    object ValidaUsu_TPreCarUSU_CARIMP: TStringField
      FieldName = 'USU_CARIMP'
      Size = 1
    end
  end
  object ValidaCarga: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e135ane where codemp = :codemp and'
      '                            codfil = :codfil and'
      '                            numane = :numane')
    Left = 48
    Top = 408
    object ValidaCargaCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ValidaCargaCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ValidaCargaNUMANE: TBCDField
      FieldName = 'NUMANE'
      Precision = 12
      Size = 0
    end
  end
  object ValidaCor: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select codpro,despro,codfam from e075pro where codfam in ('#39'1001'#39 +
        ','#39'1002'#39','#39'1003'#39','#39'1004'#39','#39'1006'#39','#39'1007'#39') and'
      '                                               codpro = :codpro'
      '                                               ')
    Left = 48
    Top = 456
    object ValidaCorCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ValidaCorDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ValidaCorCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
  end
  object ConsE120ped: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    OnCalcFields = ConsE120pedCalcFields
    Parameters = <
      item
        Name = 'datini'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'datfim'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e120ped.codemp,e120ped.codfil,e120ped.numped,e120ped.sitp' +
        'ed,'
      
        '       e120ped.datemi,e120ped.codcli,e120ped.codrep,e120ped.vlrl' +
        'iq,'
      '       e120ped.vlrori, e120ped.usuger,r999usu.nomusu,'
      
        '       e085cli.nomcli,e085cli.apecli,e085cli.cidcli,e085cli.sigu' +
        'fs,'
      '       e090rep.nomrep,e090rep.aperep'
      '       from e120ped'
      'inner join e085cli on e085cli.codcli = e120ped.codcli'
      'inner join e090rep on e090rep.codrep = e120ped.codrep'
      'inner join r999usu on r999usu.codusu = e120ped.usuger'
      '      where '
      '     e120ped.datemi between :datini and :datfim')
    Left = 208
    Top = 256
    object ConsE120pedCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120pedCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120pedNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120pedSITPED: TIntegerField
      FieldName = 'SITPED'
    end
    object ConsE120pedDsCitPed: TStringField
      FieldKind = fkCalculated
      FieldName = 'DsCitPed'
      Calculated = True
    end
    object ConsE120pedDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE120pedCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE120pedCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE120pedVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE120pedUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE120pedNOMUSU: TStringField
      FieldName = 'NOMUSU'
      Size = 255
    end
    object ConsE120pedNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsE120pedAPECLI: TStringField
      FieldName = 'APECLI'
      Size = 50
    end
    object ConsE120pedCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsE120pedSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsE120pedNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ConsE120pedAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ConsE120pedVLRORI: TBCDField
      FieldName = 'VLRORI'
      Precision = 15
      Size = 2
    end
    object ConsE120pedvnVlrBru: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'vnVlrBru'
      Calculated = True
    end
    object ConsE120pedvnVlrLiq: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'vnVlrLiq'
      Calculated = True
    end
    object ConsE120pedvnVolPed: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'vnVolPed'
      Calculated = True
    end
  end
  object DsConsE120ped: TDataSource
    AutoEdit = False
    DataSet = ConsE120ped
    Left = 208
    Top = 312
  end
  object Conse135pes: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select distinct numped from e135pes where numane = :numane order' +
        ' by numped')
    Left = 208
    Top = 368
    object Conse135pesNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
  end
  object ConsPedTec: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cor001'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'cor002'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'datini'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select distinct(usu_numped)'
      '                      from usu_t120ipd'
      
        'inner join e120ped on e120ped.codemp = usu_t120ipd.usu_codemp an' +
        'd'
      
        '                      e120ped.codfil = usu_t120ipd.usu_codfil an' +
        'd'
      '                      e120ped.numped = usu_t120ipd.usu_numped'
      '                      where'
      
        '                      ((usu_t120ipd.usu_cor001 = :cor001) or (us' +
        'u_t120ipd.usu_cor002 = :cor002)) and'
      '                      e120ped.datemi = :datini ')
    Left = 320
    Top = 272
    object ConsPedTecUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
      ReadOnly = True
    end
  end
  object DsReserva: TDataSource
    Left = 432
    Top = 256
  end
  object ConsE120Ipd: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e120ipd'
      '                     where'
      '                     codemp = :codemp and'
      '                     codfil = :codfil and'
      '                     numped = :numped')
    Left = 312
    Top = 344
    object ConsE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsE120IpdTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE120IpdPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object ConsE120IpdSEQPCL: TStringField
      FieldName = 'SEQPCL'
      Size = 10
    end
    object ConsE120IpdPEDPRV: TStringField
      FieldName = 'PEDPRV'
      Size = 1
    end
    object ConsE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE120IpdCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object ConsE120IpdCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE120IpdCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ConsE120IpdCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ConsE120IpdCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ConsE120IpdCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ConsE120IpdCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ConsE120IpdCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ConsE120IpdCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE120IpdCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object ConsE120IpdRESEST: TStringField
      FieldName = 'RESEST'
      Size = 1
    end
    object ConsE120IpdQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDAEN: TFMTBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDPOC: TFMTBCDField
      FieldName = 'QTDPOC'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDFAT: TFMTBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDRAE: TFMTBCDField
      FieldName = 'QTDRAE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDNLP: TFMTBCDField
      FieldName = 'QTDNLP'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDRES: TFMTBCDField
      FieldName = 'QTDRES'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE120IpdCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object ConsE120IpdDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object ConsE120IpdCOTMFP: TFMTBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object ConsE120IpdDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ConsE120IpdCOTMOE: TFMTBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ConsE120IpdFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ConsE120IpdCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE120IpdPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ConsE120IpdPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object ConsE120IpdPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPEROFE: TBCDField
      FieldName = 'PEROFE'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERACR: TBCDField
      FieldName = 'PERACR'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ConsE120IpdDATANE: TDateTimeField
      FieldName = 'DATANE'
    end
    object ConsE120IpdDATPOC: TDateTimeField
      FieldName = 'DATPOC'
    end
    object ConsE120IpdCODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object ConsE120IpdNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object ConsE120IpdCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object ConsE120IpdCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ConsE120IpdCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConsE120IpdCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ConsE120IpdVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdSITIPD: TIntegerField
      FieldName = 'SITIPD'
    end
    object ConsE120IpdCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE120IpdOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsE120IpdGERNEC: TIntegerField
      FieldName = 'GERNEC'
    end
    object ConsE120IpdGERCGA: TStringField
      FieldName = 'GERCGA'
      Size = 1
    end
    object ConsE120IpdRESMAN: TStringField
      FieldName = 'RESMAN'
      Size = 1
    end
    object ConsE120IpdINDAED: TStringField
      FieldName = 'INDAED'
      Size = 1
    end
    object ConsE120IpdNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object ConsE120IpdDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object ConsE120IpdSEQCVP: TIntegerField
      FieldName = 'SEQCVP'
    end
    object ConsE120IpdUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE120IpdHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE120IpdQTDPPF: TFMTBCDField
      FieldName = 'QTDPPF'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdCMPKIT: TStringField
      FieldName = 'CMPKIT'
      Size = 1
    end
    object ConsE120IpdFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object ConsE120IpdNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsE120IpdSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object ConsE120IpdUNIVEN: TStringField
      FieldName = 'UNIVEN'
      Size = 3
    end
    object ConsE120IpdQTDVEN: TFMTBCDField
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdPREVEN: TFMTBCDField
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdPREBRU: TFMTBCDField
      FieldName = 'PREBRU'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object ConsE120IpdCTRCVS: TIntegerField
      FieldName = 'CTRCVS'
    end
    object ConsE120IpdCPTCVS: TDateTimeField
      FieldName = 'CPTCVS'
    end
    object ConsE120IpdSEQCVS: TIntegerField
      FieldName = 'SEQCVS'
    end
    object ConsE120IpdCODAVC: TIntegerField
      FieldName = 'CODAVC'
    end
    object ConsE120IpdCODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object ConsE120IpdCODPGR: TStringField
      FieldName = 'CODPGR'
      Size = 5
    end
    object ConsE120IpdIDXGRD: TIntegerField
      FieldName = 'IDXGRD'
    end
    object ConsE120IpdCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ConsE120IpdCODCLC: TStringField
      FieldName = 'CODCLC'
      Size = 10
    end
    object ConsE120IpdPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdFILPRD: TIntegerField
      FieldName = 'FILPRD'
    end
    object ConsE120IpdVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ConsE120IpdINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ConsE120IpdPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object ConsE120IpdFORNFC: TIntegerField
      FieldName = 'FORNFC'
    end
    object ConsE120IpdNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsE120IpdSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object ConsE120IpdSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ConsE120IpdNCTLCL: TStringField
      FieldName = 'NCTLCL'
    end
    object ConsE120IpdNRECLI: TStringField
      FieldName = 'NRECLI'
    end
    object ConsE120IpdNOSICL: TBCDField
      FieldName = 'NOSICL'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdNOSFCL: TBCDField
      FieldName = 'NOSFCL'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdNOCCL1: TStringField
      FieldName = 'NOCCL1'
    end
    object ConsE120IpdNOCCL2: TStringField
      FieldName = 'NOCCL2'
    end
    object ConsE120IpdNOCCL3: TStringField
      FieldName = 'NOCCL3'
    end
    object ConsE120IpdCODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
    object ConsE120IpdCTRCVP: TIntegerField
      FieldName = 'CTRCVP'
    end
    object ConsE120IpdCPTCVP: TDateTimeField
      FieldName = 'CPTCVP'
    end
    object ConsE120IpdSEQCTR: TIntegerField
      FieldName = 'SEQCTR'
    end
    object ConsE120IpdINDAPE: TIntegerField
      FieldName = 'INDAPE'
    end
    object ConsE120IpdOBSIPD: TStringField
      FieldName = 'OBSIPD'
      Size = 999
    end
    object ConsE120IpdSEQISP: TIntegerField
      FieldName = 'SEQISP'
    end
    object ConsE120IpdEMPOCP: TIntegerField
      FieldName = 'EMPOCP'
    end
    object ConsE120IpdVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdAGRNEC: TStringField
      FieldName = 'AGRNEC'
      Size = 25
    end
    object ConsE120IpdAGRPAI: TStringField
      FieldName = 'AGRPAI'
      Size = 25
    end
    object ConsE120IpdORIRES: TStringField
      FieldName = 'ORIRES'
      Size = 1
    end
    object ConsE120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsE120IpdUSU_CODTEC1: TStringField
      FieldName = 'USU_CODTEC1'
      Size = 14
    end
    object ConsE120IpdUSU_CODTEC2: TStringField
      FieldName = 'USU_CODTEC2'
      Size = 14
    end
    object ConsE120IpdUSU_QTDREP: TIntegerField
      FieldName = 'USU_QTDREP'
    end
    object ConsE120IpdUSU_QTDDIV: TBCDField
      FieldName = 'USU_QTDDIV'
      Precision = 11
      Size = 2
    end
    object ConsE120IpdUSU_MEDLAR: TBCDField
      FieldName = 'USU_MEDLAR'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_MEDCOM: TBCDField
      FieldName = 'USU_MEDCOM'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_MEDALT: TBCDField
      FieldName = 'USU_MEDALT'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC1: TBCDField
      FieldName = 'USU_PERDESC1'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC2: TBCDField
      FieldName = 'USU_PERDESC2'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC3: TBCDField
      FieldName = 'USU_PERDESC3'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC4: TBCDField
      FieldName = 'USU_PERDESC4'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC5: TBCDField
      FieldName = 'USU_PERDESC5'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC6: TBCDField
      FieldName = 'USU_PERDESC6'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_CANAPR: TFMTBCDField
      FieldName = 'USU_CANAPR'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdUSU_TOTDSC: TBCDField
      FieldName = 'USU_TOTDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_TOTDSCORI: TBCDField
      FieldName = 'USU_TOTDSCORI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_VLRORI: TBCDField
      FieldName = 'USU_VLRORI'
      Precision = 14
      Size = 2
    end
    object ConsE120IpdUSU_DESESP: TStringField
      FieldName = 'USU_DESESP'
      Size = 30
    end
  end
  object ConsCalculos: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'datini'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'datfim'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select count(distinct(e120ipd.numped)) as qtdped,sum(e120ipd.vlr' +
        'bru) vlrbru,'
      '       sum(e120ipd.vlrliq) as vlrliq'
      '                                                from e120ipd'
      'inner join e120ped on e120ped.codemp = e120ipd.codemp and'
      '                      e120ped.codfil = e120ipd.codfil and'
      '                      e120ped.numped = e120ipd.numped'
      'inner join e085cli on e085cli.codcli = e120ped.codcli'
      '                      where'
      '                      e120ped.datemi between :datini and :datfim')
    Left = 416
    Top = 456
    object ConsCalculosQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsCalculosVLRBRU: TFMTBCDField
      FieldName = 'VLRBRU'
      Precision = 38
      Size = 0
    end
    object ConsCalculosVLRLIQ: TFMTBCDField
      FieldName = 'VLRLIQ'
      Precision = 38
      Size = 0
    end
  end
  object Conse075der: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select codpro,codder,volder,usu_coruni,usu_cmp1bb,usu_cmp1ae,usu' +
        '_cmp2bb,usu_cmp2en from e075der'
      '              where codpro = :codpro and'
      '                    codder = :codder')
    Left = 592
    Top = 328
    object Conse075derCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object Conse075derCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object Conse075derVOLDER: TFMTBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object Conse075derUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object Conse075derUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object Conse075derUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object Conse075derUSU_CMP2BB: TBCDField
      FieldName = 'USU_CMP2BB'
      Precision = 8
      Size = 2
    end
    object Conse075derUSU_CMP2EN: TBCDField
      FieldName = 'USU_CMP2EN'
      Precision = 8
      Size = 2
    end
  end
  object ValidaProduto: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e075der.codpro,e075der.codder,e075pro.despro from e075der'
      'inner join e075pro on e075pro.codpro = e075der.codpro'
      '         where e075pro.codpro = :codpro'
      '         and e075pro.codori = 01')
    Left = 120
    Top = 424
    object ValidaProdutoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ValidaProdutoCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ValidaProdutoDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object ConsUsu_t120ipd: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t120ipd'
      
        'inner join e075pro on e075pro.codemp = usu_t120ipd.usu_codemp an' +
        'd'
      '                      e075pro.codpro = usu_t120ipd.usu_codpro'
      '                        where'
      '                         usu_t120ipd.usu_codemp = :codemp and'
      '                         usu_t120ipd.usu_codfil = :codfil and'
      '                         usu_t120ipd.usu_numped = :numped and'
      
        '                         e075pro.codfam in ('#39'01001'#39','#39'01027'#39','#39'010' +
        '29'#39','#39'01030'#39','#39'01037'#39','#39'01046'#39')')
    Left = 592
    Top = 384
    object ConsUsu_t120ipdUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_t120ipdUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUsu_t120ipdUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsUsu_t120ipdUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsUsu_t120ipdUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object ConsUsu_t120ipdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsUsu_t120ipdUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ConsUsu_t120ipdUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ConsUsu_t120ipdUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ConsUsu_t120ipdUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_t120ipdUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_t120ipdUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object ConsUsu_t120ipdUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_t120ipdUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object ConsUsu_t120ipdUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsUsu_t120ipdUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
  end
  object ConsE210Est: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'coddep'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select codpro,coddep,qtdest from e210est where'
      '                      codpro = :codpro and'
      '                      coddep = :coddep')
    Left = 592
    Top = 440
    object ConsE210EstCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE210EstCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE210EstQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
  end
end
