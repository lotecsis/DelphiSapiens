object FCadUsuarios: TFCadUsuarios
  Left = 0
  Top = 0
  Caption = 'Cadastro de Usuarios'
  ClientHeight = 690
  ClientWidth = 625
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
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 625
    Height = 690
    ActivePage = TbCadastro
    Align = alClient
    TabOrder = 0
    object TbCadastro: TTabSheet
      Caption = 'Cadastro'
      object Label1: TLabel
        Left = 69
        Top = 23
        Width = 41
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = DBECodUsu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 77
        Top = 83
        Width = 33
        Height = 13
        Caption = 'Login:'
        FocusControl = DBELogUsu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 72
        Top = 113
        Width = 38
        Height = 13
        Caption = 'Senha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 33
        Top = 280
        Width = 77
        Height = 13
        Caption = 'Dat.Cadastro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 58
        Top = 243
        Width = 52
        Height = 13
        Caption = 'Situa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 72
        Top = 177
        Width = 38
        Height = 13
        Caption = 'Chave:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 75
        Top = 53
        Width = 35
        Height = 13
        Caption = 'Nome:'
        FocusControl = DBENomUsu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 22
        Top = 144
        Width = 88
        Height = 13
        Caption = 'Representante:'
        FocusControl = DBECodRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 3
        Top = 212
        Width = 107
        Height = 13
        Caption = 'Gerar Atualiza'#231#227'o?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBECodUsu: TDBEdit
        Left = 119
        Top = 20
        Width = 134
        Height = 21
        DataField = 'CODUSU'
        DataSource = DsCadE100Usu
        TabOrder = 0
      end
      object DBELogUsu: TDBEdit
        Left = 119
        Top = 80
        Width = 219
        Height = 21
        CharCase = ecUpperCase
        DataField = 'LOGUSU'
        DataSource = DsCadE100Usu
        TabOrder = 2
      end
      object DBENomUsu: TDBEdit
        Left = 119
        Top = 50
        Width = 411
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMUSU'
        DataSource = DsCadE100Usu
        TabOrder = 1
      end
      object DBECodRep: TDBEdit
        Left = 119
        Top = 141
        Width = 36
        Height = 21
        DataField = 'CODREP'
        DataSource = DsCadE100Usu
        TabOrder = 4
      end
      object DBENomRep: TDBEdit
        Left = 161
        Top = 141
        Width = 369
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMREP'
        DataSource = DsCadE100Usu
        TabOrder = 5
      end
      object EdSenUsu: TEdit
        Left = 119
        Top = 110
        Width = 219
        Height = 21
        TabOrder = 3
      end
      object EdChave: TEdit
        Left = 119
        Top = 172
        Width = 219
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 6
      end
      object EdAtuUsu: TComboBox
        Left = 119
        Top = 203
        Width = 114
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 7
        Text = 'Sim'
        Items.Strings = (
          'Sim'
          'Nao')
      end
      object EdSitUsu: TComboBox
        Left = 119
        Top = 238
        Width = 114
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 8
        Text = 'Ativo'
        Items.Strings = (
          'Ativo'
          'Inativo')
      end
      object EdDatCad: TEdit
        Left = 118
        Top = 270
        Width = 115
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 9
      end
      object BGeraCodigo: TBitBtn
        Left = 344
        Top = 172
        Width = 89
        Height = 21
        Caption = 'Gerar Chave'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 10
        OnClick = BGeraCodigoClick
      end
      object Panel3: TPanel
        Left = 97
        Top = 629
        Width = 433
        Height = 32
        BevelOuter = bvLowered
        TabOrder = 11
        object BNovo: TBitBtn
          Left = 8
          Top = 3
          Width = 100
          Height = 25
          Caption = 'Novo'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = BNovoClick
        end
        object BAltera: TBitBtn
          Left = 114
          Top = 3
          Width = 100
          Height = 25
          Caption = 'Alterar'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 1
          TabStop = False
          OnClick = BAlteraClick
        end
        object BCancelar: TBitBtn
          Left = 220
          Top = 3
          Width = 100
          Height = 25
          Caption = 'Cancelar'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 2
          TabStop = False
          OnClick = BCancelarClick
        end
        object BConfirmar: TBitBtn
          Left = 326
          Top = 3
          Width = 100
          Height = 25
          Caption = 'Confirmar'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = BConfirmarClick
        end
      end
      object PaginaControle2: TPageControl
        Left = 3
        Top = 323
        Width = 611
        Height = 303
        ActivePage = TbCondPgto
        TabOrder = 12
        object TbCondPgto: TTabSheet
          Caption = 'Cond. Pgto.'
          object DBCtrlGrid1: TDBCtrlGrid
            Left = 0
            Top = 0
            Width = 603
            Height = 275
            Align = alClient
            DataSource = DsConsE028Cpg
            PanelBorder = gbNone
            PanelHeight = 27
            PanelWidth = 586
            TabOrder = 0
            RowCount = 10
            SelectedColor = 13690576
            OnKeyPress = DBCtrlGrid1KeyPress
            ExplicitTop = -4
            ExplicitWidth = 331
            object DBCODCPG: TDBText
              Left = 8
              Top = 6
              Width = 44
              Height = 17
              DataField = 'CODCPG'
              DataSource = DsConsE028Cpg
            end
            object DBDESCPG: TDBText
              Left = 80
              Top = 6
              Width = 188
              Height = 17
              DataField = 'DESCPG'
              DataSource = DsConsE028Cpg
            end
            object DBCPGLIB: TDBEdit
              Left = 288
              Top = 2
              Width = 18
              Height = 21
              DataField = 'CPGLIB'
              DataSource = DsConsE028Cpg
              TabOrder = 0
              OnExit = DBCPGLIBExit
              OnKeyPress = DBCPGLIBKeyPress
            end
          end
        end
      end
    end
    object TbConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 617
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label9: TLabel
          Left = 11
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
        object EdPesquisa: TEdit
          Left = 54
          Top = 12
          Width = 548
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnChange = EdPesquisaChange
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 41
        Width = 617
        Height = 621
        Align = alClient
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 615
          Height = 619
          Align = alClient
          DataSource = DsConsE100Usu
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGrid1DblClick
          OnEnter = DBGrid1Enter
          OnExit = DBGrid1Exit
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CODUSU'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMUSU'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOGUSU'
              Title.Alignment = taCenter
              Title.Caption = 'Login'
              Width = 200
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SENUSU'
              Title.Alignment = taCenter
              Title.Caption = 'Senha'
              Width = 200
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CODREP'
              Title.Caption = 'Rep.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMREP'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Rep.'
              Width = 250
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SITUSU'
              Title.Caption = 'Sit.'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATCAD'
              Title.Alignment = taCenter
              Title.Caption = 'Dat.Cadastro'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CHAVE'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUADM'
              Title.Alignment = taCenter
              Title.Caption = 'Usu ADM?'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ATUUSU'
              Title.Alignment = taCenter
              Title.Caption = 'Atu. Usu?'
              Visible = True
            end>
        end
      end
    end
  end
  object DsCadE100Usu: TDataSource
    DataSet = DmFire.CadE100Usu
    OnStateChange = DsCadE100UsuStateChange
    Left = 520
    Top = 208
  end
  object ValidaE100Usu: TIBQuery
    Database = DmFire.IBDBanco
    Transaction = DmFire.IBTransacao
    SQL.Strings = (
      'select * from E100USU where codusu = :codusu')
    Left = 520
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codusu'
        ParamType = ptUnknown
      end>
    object ValidaE100UsuCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E100USU"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ValidaE100UsuLOGUSU: TIBStringField
      FieldName = 'LOGUSU'
      Origin = '"E100USU"."LOGUSU"'
      Size = 40
    end
    object ValidaE100UsuSENUSU: TIBStringField
      FieldName = 'SENUSU'
      Origin = '"E100USU"."SENUSU"'
      Size = 40
    end
    object ValidaE100UsuDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"E100USU"."DATCAD"'
    end
    object ValidaE100UsuSITUSU: TIBStringField
      FieldName = 'SITUSU'
      Origin = '"E100USU"."SITUSU"'
      FixedChar = True
      Size = 1
    end
    object ValidaE100UsuCHAVE: TIBStringField
      FieldName = 'CHAVE'
      Origin = '"E100USU"."CHAVE"'
    end
    object ValidaE100UsuNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"E100USU"."NOMUSU"'
      Size = 50
    end
    object ValidaE100UsuCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E100USU"."CODREP"'
    end
    object ValidaE100UsuNOMREP: TIBStringField
      FieldName = 'NOMREP'
      Origin = '"E100USU"."NOMREP"'
      Size = 60
    end
    object ValidaE100UsuUSUADM: TIBStringField
      FieldName = 'USUADM'
      Origin = '"E100USU"."USUADM"'
      FixedChar = True
      Size = 1
    end
    object ValidaE100UsuATUUSU: TIBStringField
      FieldName = 'ATUUSU'
      Origin = '"E100USU"."ATUUSU"'
      FixedChar = True
      Size = 1
    end
  end
  object ConsE100Usu: TIBQuery
    Database = DmFire.IBDBanco
    Transaction = DmFire.IBTransacao
    SQL.Strings = (
      'select * from E100USU')
    Left = 512
    Top = 136
    object ConsE100UsuCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E100USU"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE100UsuLOGUSU: TIBStringField
      FieldName = 'LOGUSU'
      Origin = '"E100USU"."LOGUSU"'
      Size = 40
    end
    object ConsE100UsuSENUSU: TIBStringField
      FieldName = 'SENUSU'
      Origin = '"E100USU"."SENUSU"'
      Size = 40
    end
    object ConsE100UsuDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"E100USU"."DATCAD"'
    end
    object ConsE100UsuSITUSU: TIBStringField
      FieldName = 'SITUSU'
      Origin = '"E100USU"."SITUSU"'
      FixedChar = True
      Size = 1
    end
    object ConsE100UsuCHAVE: TIBStringField
      FieldName = 'CHAVE'
      Origin = '"E100USU"."CHAVE"'
    end
    object ConsE100UsuNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"E100USU"."NOMUSU"'
      Size = 50
    end
    object ConsE100UsuCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E100USU"."CODREP"'
    end
    object ConsE100UsuNOMREP: TIBStringField
      FieldName = 'NOMREP'
      Origin = '"E100USU"."NOMREP"'
      Size = 60
    end
    object ConsE100UsuUSUADM: TIBStringField
      FieldName = 'USUADM'
      Origin = '"E100USU"."USUADM"'
      FixedChar = True
      Size = 1
    end
    object ConsE100UsuATUUSU: TIBStringField
      FieldName = 'ATUUSU'
      Origin = '"E100USU"."ATUUSU"'
      FixedChar = True
      Size = 1
    end
  end
  object DsConsE100Usu: TDataSource
    DataSet = ConsE100Usu
    Left = 368
    Top = 112
  end
  object DsConsE028Cpg: TDataSource
    DataSet = CadE028Cpg
    Left = 344
    Top = 232
  end
  object CadE028Cpg: TIBDataSet
    Database = DmFire.IBDBanco
    Transaction = DmFire.IBTransacao
    BeforePost = CadE028CpgBeforePost
    DeleteSQL.Strings = (
      'delete from E028CPG'
      'where'
      '  CODCPG = :OLD_CODCPG and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODUSU = :OLD_CODUSU')
    InsertSQL.Strings = (
      'insert into E028CPG'
      
        '  (ABRCPG, CODCPG, CODEMP, CODUSU, CPGLIB, DESCPG, PRZMED, QTDPA' +
        'R, SITCPG)'
      'values'
      
        '  (:ABRCPG, :CODCPG, :CODEMP, :CODUSU, :CPGLIB, :DESCPG, :PRZMED' +
        ', :QTDPAR, '
      '   :SITCPG)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODCPG,'
      '  CODUSU,'
      '  DESCPG,'
      '  ABRCPG,'
      '  PRZMED,'
      '  QTDPAR,'
      '  SITCPG,'
      '  CPGLIB'
      'from E028CPG '
      'where'
      '  CODCPG = :CODCPG and'
      '  CODEMP = :CODEMP and'
      '  CODUSU = :CODUSU')
    SelectSQL.Strings = (
      'select * from E028CPG where codusu = :codusu')
    ModifySQL.Strings = (
      'update E028CPG'
      'set'
      '  ABRCPG = :ABRCPG,'
      '  CODCPG = :CODCPG,'
      '  CODEMP = :CODEMP,'
      '  CODUSU = :CODUSU,'
      '  CPGLIB = :CPGLIB,'
      '  DESCPG = :DESCPG,'
      '  PRZMED = :PRZMED,'
      '  QTDPAR = :QTDPAR,'
      '  SITCPG = :SITCPG'
      'where'
      '  CODCPG = :OLD_CODCPG and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODUSU = :OLD_CODUSU')
    Left = 336
    Top = 288
    object CadE028CpgCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E028CPG"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE028CpgCODCPG: TIBStringField
      FieldName = 'CODCPG'
      Origin = '"E028CPG"."CODCPG"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CadE028CpgCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E028CPG"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadE028CpgDESCPG: TIBStringField
      FieldName = 'DESCPG'
      Origin = '"E028CPG"."DESCPG"'
      Size = 50
    end
    object CadE028CpgABRCPG: TIBStringField
      FieldName = 'ABRCPG'
      Origin = '"E028CPG"."ABRCPG"'
      Size = 10
    end
    object CadE028CpgPRZMED: TIntegerField
      FieldName = 'PRZMED'
      Origin = '"E028CPG"."PRZMED"'
    end
    object CadE028CpgQTDPAR: TIntegerField
      FieldName = 'QTDPAR'
      Origin = '"E028CPG"."QTDPAR"'
    end
    object CadE028CpgSITCPG: TIBStringField
      FieldName = 'SITCPG'
      Origin = '"E028CPG"."SITCPG"'
      FixedChar = True
      Size = 1
    end
    object CadE028CpgCPGLIB: TIBStringField
      FieldName = 'CPGLIB'
      KeyFields = '1'
      Origin = '"E028CPG"."CPGLIB"'
      FixedChar = True
      Size = 1
    end
  end
  object ConsE028Cpg: TIBQuery
    Database = DmFire.IBDBanco
    Transaction = DmFire.IBTransacao
    SQL.Strings = (
      'select * from E028CPG where codusu = :codusu')
    Left = 416
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codusu'
        ParamType = ptUnknown
      end>
    object ConsE028CpgCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E028CPG"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE028CpgCODCPG: TIBStringField
      FieldName = 'CODCPG'
      Origin = '"E028CPG"."CODCPG"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object ConsE028CpgCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"E028CPG"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsE028CpgDESCPG: TIBStringField
      FieldName = 'DESCPG'
      Origin = '"E028CPG"."DESCPG"'
      Size = 50
    end
    object ConsE028CpgABRCPG: TIBStringField
      FieldName = 'ABRCPG'
      Origin = '"E028CPG"."ABRCPG"'
      Size = 10
    end
    object ConsE028CpgPRZMED: TIntegerField
      FieldName = 'PRZMED'
      Origin = '"E028CPG"."PRZMED"'
    end
    object ConsE028CpgQTDPAR: TIntegerField
      FieldName = 'QTDPAR'
      Origin = '"E028CPG"."QTDPAR"'
    end
    object ConsE028CpgSITCPG: TIBStringField
      FieldName = 'SITCPG'
      Origin = '"E028CPG"."SITCPG"'
      FixedChar = True
      Size = 1
    end
    object ConsE028CpgCPGLIB: TIBStringField
      FieldName = 'CPGLIB'
      Origin = '"E028CPG"."CPGLIB"'
      FixedChar = True
      Size = 1
    end
  end
end
