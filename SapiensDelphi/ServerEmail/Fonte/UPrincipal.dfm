object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'ServerMail'
  ClientHeight = 621
  ClientWidth = 786
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
  object Label1: TLabel
    Left = 79
    Top = 41
    Width = 27
    Height = 13
    Caption = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 444
    Top = 41
    Width = 133
    Height = 13
    Caption = 'Dias para t'#237'tulo vencido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 232
    Top = 41
    Width = 81
    Height = 13
    Caption = 'E-Mail Enviado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 26
    Top = 12
    Width = 153
    Height = 13
    Caption = 'Email - Destinat'#225'rio(Gmail)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 426
    Top = 12
    Width = 35
    Height = 13
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgLista: TDBGrid
    Left = 0
    Top = 66
    Width = 786
    Height = 392
    DataSource = dsListaEnvio
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgListaCellClick
    OnDrawColumnCell = dbgListaDrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IteSel'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = ' '
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCli'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomCli'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 260
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EmaCli'
        Title.Alignment = taCenter
        Title.Caption = 'E-Mail'
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Saldo'
        Title.Alignment = taCenter
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'In_enviado'
        Title.Alignment = taCenter
        Title.Caption = 'Enviado'
        Width = 50
        Visible = True
      end>
  end
  object edtData: TDateEdit
    Left = 108
    Top = 38
    Width = 100
    Height = 21
    TabStop = False
    NumGlyphs = 2
    TabOrder = 1
  end
  object btnMostrar: TBitBtn
    Left = 705
    Top = 5
    Width = 75
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
    TabOrder = 2
    OnClick = btnMostrarClick
  end
  object cbbAvisoVencimento: TComboBox
    Left = 649
    Top = 5
    Width = 50
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 1
    TabOrder = 3
    Text = 'NAO'
    Visible = False
    Items.Strings = (
      'SIM'
      'NAO')
  end
  object edtDiasAvisoVencimento: TCurrencyEdit
    Left = 649
    Top = 31
    Width = 50
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 4
    Visible = False
  end
  object edtDiasTituloVencido: TCurrencyEdit
    Left = 581
    Top = 38
    Width = 50
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 5
  end
  object cbbEmailEnviado: TComboBox
    Left = 317
    Top = 38
    Width = 100
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 2
    TabOrder = 6
    Text = 'TODOS'
    Items.Strings = (
      'NAO'
      'SIM'
      'TODOS')
  end
  object dbg2: TDBGrid
    Left = 0
    Top = 462
    Width = 786
    Height = 160
    DataSource = dsConsTitulos
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMTIT'
        Title.Alignment = taCenter
        Title.Caption = 'T'#237'tulo'
        Width = 110
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODTPT'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SITTIT'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATEMI'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VCTPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Vencimento'
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnQtdDias'
        Title.Alignment = taCenter
        Title.Caption = 'Dias'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRABE'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Aberto'
        Width = 120
        Visible = True
      end>
  end
  object btnEnviar: TBitBtn
    Left = 705
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Enviar'
    DoubleBuffered = True
    Glyph.Data = {
      F6000000424DF60000000000000056000000280000000E0000000A0000000100
      080000000000A000000000000000000000000800000000000000FFFFFF00BFFB
      FA0097EBEA000CC5C40000A4A300007E7D00004A490000000000060707070707
      07070707070707070D0006030404040404040404040404070D00060104020202
      02020202020404070D0006000204020205050202040204070D00060002020405
      02020504020204070D0006000202050202020205020204070D00060002050202
      02020202050204070D0006000502020202020202020504070D00060400000000
      00000000000003070D0006060606060606060606060606060D00}
    ParentDoubleBuffered = False
    TabOrder = 8
    OnClick = btnEnviarClick
  end
  object edtEmailDestinatario: TEdit
    Left = 184
    Top = 9
    Width = 228
    Height = 21
    TabStop = False
    MaxLength = 100
    TabOrder = 9
    Text = 'liderlar.cobranca2@gmail.com'
  end
  object edtSenhaEmailDestinatario: TEdit
    Left = 468
    Top = 9
    Width = 121
    Height = 21
    TabStop = False
    MaxLength = 50
    PasswordChar = '*'
    TabOrder = 10
    Text = 'liderlar123'
  end
  object dsListaEnvio: TDataSource
    DataSet = DmOra.ListaEnvio
    Left = 512
    Top = 144
  end
  object dsConsTitulos: TDataSource
    DataSet = DmOra.ConsTitulos
    Left = 496
    Top = 256
  end
end
