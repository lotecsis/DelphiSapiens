object FConsClientes: TFConsClientes
  Left = 0
  Top = 0
  Caption = 'Consulta Clientes'
  ClientHeight = 632
  ClientWidth = 879
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 879
    Height = 92
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Codigo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 154
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 543
      Top = 16
      Width = 30
      Height = 13
      Caption = 'CNPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 25
      Top = 43
      Width = 26
      Height = 13
      Caption = 'End.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 303
      Top = 43
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
    object Label6: TLabel
      Left = 673
      Top = 43
      Width = 17
      Height = 13
      Caption = 'UF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 23
      Top = 70
      Width = 28
      Height = 13
      Caption = 'Rep.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 458
      Top = 70
      Width = 53
      Height = 13
      Caption = 'Ape.Rep.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 98
      Top = 70
      Width = 35
      Height = 13
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdCodCli: TEdit
      Left = 55
      Top = 10
      Width = 82
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object EdNomCli: TEdit
      Left = 195
      Top = 10
      Width = 332
      Height = 19
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object EdCgcCpf: TEdit
      Left = 578
      Top = 10
      Width = 141
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object EdEndCli: TEdit
      Left = 55
      Top = 37
      Width = 234
      Height = 19
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object EdCidCli: TEdit
      Left = 350
      Top = 37
      Width = 311
      Height = 19
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object EdSigUfs: TEdit
      Left = 693
      Top = 37
      Width = 26
      Height = 19
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object EdCodRep: TEdit
      Left = 55
      Top = 64
      Width = 28
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object EdApeRep: TEdit
      Left = 516
      Top = 64
      Width = 203
      Height = 19
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object EdNomRep: TEdit
      Left = 137
      Top = 64
      Width = 315
      Height = 19
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object BMostrar: TBitBtn
      Left = 744
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Mostrar'
      DoubleBuffered = True
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333300003333333333333333333300003333333330033003300300003333
        3333300330033003000033303333333333333333000033000333333333333333
        000030F000333333333333330000330F000333333333333300003330F0000000
        73333333000033330F0078887033333300003333300788FF8703333300003333
        30788888F877333300003333308888888F80333300003333307888888F803333
        000033333078FF8888803333000033333777FF88887733330000333333077888
        8703333300003333333077777033333300003333333370007333333300003333
        33333333333333330000}
      ParentDoubleBuffered = False
      TabOrder = 9
      OnClick = BMostrarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 92
    Width = 879
    Height = 540
    Align = alClient
    TabOrder = 1
    ExplicitTop = 140
    ExplicitHeight = 498
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 877
      Height = 538
      Align = alClient
      DataSource = DsConsE085Cli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODCLI'
          Title.Alignment = taCenter
          Title.Caption = 'CLIENTE'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMCLI'
          Title.Alignment = taCenter
          Title.Caption = 'NOME'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CGCCPF'
          Title.Alignment = taCenter
          Title.Caption = 'CNPJ'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDCLI'
          Title.Alignment = taCenter
          Title.Caption = 'CIDADE'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIGUFS'
          Title.Alignment = taCenter
          Title.Caption = 'UF'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITCLI'
          Title.Alignment = taCenter
          Title.Caption = 'SIT.'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODREP'
          Title.Alignment = taCenter
          Title.Caption = 'REP.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMREP'
          Title.Alignment = taCenter
          Title.Caption = 'NOME REP.'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APEREP'
          Title.Alignment = taCenter
          Title.Caption = 'APE. REP.'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDCLI'
          Title.Alignment = taCenter
          Title.Caption = 'END.'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NENCLI'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAICLI'
          Title.Alignment = taCenter
          Title.Caption = 'BAIRRO'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEPCLI'
          Title.Alignment = taCenter
          Title.Caption = 'CEP'
          Width = 80
          Visible = True
        end>
    end
  end
  object ConsE085Cli: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codrep'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codcli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'cgccpf'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.inse' +
        'st,e085cli.cgccpf,e085cli.endcli,e085cli.nencli,'
      
        'e085cli.cplend,e085cli.cepcli,e085cli.baicli,e085cli.cidcli,e085' +
        'cli.sigufs,e085cli.sitcli,e085hcl.codrep,e090rep.nomrep,'
      'e090rep.aperep'
      
        '                                                        from e08' +
        '5cli'
      'inner join e085hcl on e085hcl.codcli = e085cli.codcli'
      'inner join e090rep on e090rep.codrep = e085hcl.codrep'
      
        '                                          where e085hcl.codemp =' +
        ' 1 and'
      
        '                                                e085hcl.codfil =' +
        ' 1 and'
      
        '                                                e085hcl.codrep =' +
        ' :codrep and'
      
        '                                                e085cli.codcli =' +
        ' :codcli and'
      
        '                                                e085cli.cgccpf =' +
        ' :cgccpf'
      '                                                order by codcli')
    Left = 632
    Top = 192
    object ConsE085CliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE085CliNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsE085CliAPECLI: TStringField
      FieldName = 'APECLI'
      Size = 50
    end
    object ConsE085CliINSEST: TStringField
      FieldName = 'INSEST'
      Size = 25
    end
    object ConsE085CliCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
    object ConsE085CliENDCLI: TStringField
      FieldName = 'ENDCLI'
      Size = 100
    end
    object ConsE085CliNENCLI: TStringField
      FieldName = 'NENCLI'
      Size = 60
    end
    object ConsE085CliCPLEND: TStringField
      FieldName = 'CPLEND'
      Size = 60
    end
    object ConsE085CliCEPCLI: TIntegerField
      FieldName = 'CEPCLI'
    end
    object ConsE085CliBAICLI: TStringField
      FieldName = 'BAICLI'
      Size = 75
    end
    object ConsE085CliCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsE085CliSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsE085CliSITCLI: TStringField
      FieldName = 'SITCLI'
      Size = 1
    end
    object ConsE085CliCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE085CliNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ConsE085CliAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
  end
  object DsConsE085Cli: TDataSource
    DataSet = ConsE085Cli
    Left = 632
    Top = 248
  end
end
