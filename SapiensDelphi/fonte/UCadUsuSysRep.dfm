object FCadUsuSysRep: TFCadUsuSysRep
  Left = 0
  Top = 0
  Caption = 'Cadastro de Usuarios'
  ClientHeight = 690
  ClientWidth = 692
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
    Width = 692
    Height = 690
    ActivePage = TbCadastro
    Align = alClient
    TabOrder = 0
    object TbCadastro: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 62
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
        Left = 70
        Top = 73
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
        Left = 307
        Top = 73
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
        Left = 361
        Top = 155
        Width = 50
        Height = 13
        Caption = 'Dat.Cad.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 197
        Top = 155
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
        Left = 65
        Top = 125
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
        Left = 68
        Top = 48
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
        Left = 75
        Top = 97
        Width = 28
        Height = 13
        Caption = 'Rep.:'
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
        Top = 155
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
      object Label14: TLabel
        Left = 11
        Top = 180
        Width = 133
        Height = 13
        Caption = 'Qtd. dias p/atualiza'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 301
        Top = 180
        Width = 48
        Height = 13
        Caption = 'Ult. Atu.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 535
        Top = 180
        Width = 48
        Height = 13
        Caption = 'Vers'#227'o.: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBECodUsu: TDBEdit
        Left = 112
        Top = 20
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'CODUSU'
        DataSource = DsCadE100Usu
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBELogUsu: TDBEdit
        Left = 112
        Top = 70
        Width = 170
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'LOGUSU'
        DataSource = DsCadE100Usu
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBENomUsu: TDBEdit
        Left = 112
        Top = 45
        Width = 411
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'NOMUSU'
        DataSource = DsCadE100Usu
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBECodRep: TDBEdit
        Left = 112
        Top = 95
        Width = 36
        Height = 19
        Ctl3D = False
        DataField = 'CODREP'
        DataSource = DsCadE100Usu
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBENomRep: TDBEdit
        Left = 154
        Top = 95
        Width = 369
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'NOMREP'
        DataSource = DsCadE100Usu
        ParentCtl3D = False
        TabOrder = 5
      end
      object EdSenUsu: TEdit
        Left = 353
        Top = 70
        Width = 170
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
      end
      object EdChave: TEdit
        Left = 112
        Top = 120
        Width = 219
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
      end
      object EdAtuUsu: TComboBox
        Left = 119
        Top = 146
        Width = 50
        Height = 22
        Style = csOwnerDrawFixed
        Ctl3D = False
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 7
        Text = 'Sim'
        Items.Strings = (
          'Sim'
          'Nao')
      end
      object EdSitUsu: TComboBox
        Left = 258
        Top = 146
        Width = 75
        Height = 22
        Style = csOwnerDrawFixed
        Ctl3D = False
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 9
        Text = 'Ativo'
        Items.Strings = (
          'Ativo'
          'Inativo')
      end
      object EdDatCad: TEdit
        Left = 417
        Top = 149
        Width = 115
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 10
      end
      object BGeraCodigo: TBitBtn
        Left = 337
        Top = 118
        Width = 89
        Height = 21
        Caption = 'Gerar Chave'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 11
        OnClick = BGeraCodigoClick
      end
      object Panel3: TPanel
        Left = 97
        Top = 629
        Width = 433
        Height = 32
        BevelOuter = bvLowered
        TabOrder = 12
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
        Top = 200
        Width = 678
        Height = 426
        ActivePage = TbTabPreco
        TabOrder = 13
        object TbTabPreco: TTabSheet
          Caption = 'Tab. Pre'#231'o'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 670
            Height = 59
            Align = alTop
            TabOrder = 0
            object Label10: TLabel
              Left = 21
              Top = 21
              Width = 47
              Height = 13
              Caption = 'C'#243'digo..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EdCodTpr: TEdit
              Left = 74
              Top = 17
              Width = 96
              Height = 21
              TabOrder = 0
              Text = '0001'
              OnExit = EdCodTprExit
            end
            object Panel5: TPanel
              Left = 271
              Top = 1
              Width = 398
              Height = 57
              Align = alRight
              BevelOuter = bvLowered
              TabOrder = 1
              object Label12: TLabel
                Left = 7
                Top = 12
                Width = 63
                Height = 13
                Caption = 'Dat.In'#237'cio..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 213
                Top = 12
                Width = 52
                Height = 13
                Caption = 'Dat.Fim..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EdDatFim: TDateEdit
                Left = 271
                Top = 5
                Width = 121
                Height = 21
                NumGlyphs = 2
                TabOrder = 1
              end
              object EdDatIni: TDateEdit
                Left = 76
                Top = 5
                Width = 119
                Height = 21
                NumGlyphs = 2
                TabOrder = 0
                Text = '01/07/2009'
              end
              object BitBtn1: TBitBtn
                Left = 292
                Top = 32
                Width = 100
                Height = 25
                Caption = 'Atualizar'
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 3
                OnClick = BitBtn1Click
              end
              object EdTolDesc: TCurrencyEdit
                Left = 114
                Top = 33
                Width = 83
                Height = 21
                Margins.Left = 4
                Margins.Top = 1
                DisplayFormat = ' ,0.00;- ,0.00'
                TabOrder = 2
              end
              object ChTolDesc: TCheckBox
                Left = 7
                Top = 37
                Width = 97
                Height = 17
                Caption = '% Tol. Desc..:'
                Checked = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                State = cbChecked
                TabOrder = 4
              end
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 352
            Width = 670
            Height = 46
            Align = alBottom
            BevelOuter = bvLowered
            TabOrder = 1
            object Label15: TLabel
              Left = 13
              Top = 3
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
            end
            object Label16: TLabel
              Left = 147
              Top = 3
              Width = 46
              Height = 13
              Caption = 'Descri'#231#227'o'
            end
            object Label17: TLabel
              Left = 467
              Top = 3
              Width = 48
              Height = 13
              Caption = 'Deriva'#231#227'o'
            end
            object EdCodProPesq: TEdit
              Left = 10
              Top = 19
              Width = 121
              Height = 21
              TabOrder = 0
              OnChange = EdCodProPesqChange
            end
            object EdCodDerPesq: TEdit
              Left = 467
              Top = 19
              Width = 121
              Height = 21
              TabOrder = 1
              OnChange = EdCodDerPesqChange
            end
            object EdDesProPesq: TEdit
              Left = 147
              Top = 19
              Width = 302
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = EdDesProPesqChange
            end
          end
          object DBGrid2: TDBGrid
            Left = 0
            Top = 59
            Width = 670
            Height = 293
            TabStop = False
            Align = alClient
            DataSource = DsConsE081Itp
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid2DblClick
            OnEnter = DBGrid2Enter
            OnExit = DBGrid2Exit
            OnKeyPress = DBGrid2KeyPress
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODPRO'
                Title.Alignment = taCenter
                Title.Caption = 'Codigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESPRO'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o'
                Width = 200
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODDER'
                Title.Alignment = taCenter
                Title.Caption = 'Deriva'#231#227'o'
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PREBAS'
                Title.Alignment = taCenter
                Title.Caption = 'Pre'#231'o'
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TOLMEN'
                Title.Alignment = taCenter
                Title.Caption = '% Tol.Desc'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VLRMEN'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Tol.Desc'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TOLMAI'
                Title.Alignment = taCenter
                Title.Caption = '% Tol.Acre'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VLRMAI'
                Title.Caption = 'Vlr.Tol.Acre'
                Visible = True
              end>
          end
        end
        object TbCondPgto: TTabSheet
          Caption = 'Cond. Pgto.'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBCtrlGrid1: TDBCtrlGrid
            Left = 0
            Top = 0
            Width = 670
            Height = 384
            Align = alClient
            DataSource = DsConsE028Cpg
            PanelBorder = gbNone
            PanelHeight = 24
            PanelWidth = 653
            TabOrder = 0
            RowCount = 16
            SelectedColor = 13690576
            OnKeyPress = DBCtrlGrid1KeyPress
            ExplicitHeight = 398
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
        object TbComandosSql: TTabSheet
          Caption = 'Comandos SQL'
          ImageIndex = 2
          OnShow = TbComandosSqlShow
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBGrid3: TDBGrid
            Left = 5
            Top = 17
            Width = 662
            Height = 157
            DataSource = DsConsE100Sql
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CODUSU'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMCON'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATGER'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMSQL'
                Width = 1000
                Visible = True
              end>
          end
          object DBMComSql: TDBMemo
            Left = 3
            Top = 180
            Width = 664
            Height = 181
            DataField = 'COMSQL'
            DataSource = DsCadE100Sql
            TabOrder = 1
          end
          object BInserirSql: TBitBtn
            Left = 106
            Top = 367
            Width = 75
            Height = 25
            Caption = 'Inserir'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 2
            OnClick = BInserirSqlClick
          end
          object BAlterarSql: TBitBtn
            Left = 187
            Top = 367
            Width = 75
            Height = 25
            Caption = 'Alterar'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 3
            OnClick = BAlterarSqlClick
          end
          object BCancelarSql: TBitBtn
            Left = 343
            Top = 367
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 4
            OnClick = BCancelarSqlClick
          end
          object BExcluirSql: TBitBtn
            Left = 265
            Top = 367
            Width = 75
            Height = 25
            Caption = 'Excluir'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 5
            OnClick = BExcluirSqlClick
          end
          object BConfirmarSql: TBitBtn
            Left = 424
            Top = 367
            Width = 75
            Height = 25
            Caption = 'Confirmar'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 6
            OnClick = BConfirmarSqlClick
          end
        end
      end
      object DBEQTDDIA: TDBEdit
        Left = 150
        Top = 174
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'QTDDIA'
        DataSource = DsCadE100Usu
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBDatAtu: TDBDateEdit
        Left = 352
        Top = 174
        Width = 100
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabStop = False
        DataField = 'DATATU'
        DataSource = DsCadE100Usu
        NumGlyphs = 2
        TabOrder = 14
      end
      object DBEHorAtu: TDBEdit
        Left = 456
        Top = 174
        Width = 59
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'HORATU'
        DataSource = DsCadE100Usu
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 15
      end
      object BLimpaBancoSysRep: TBitBtn
        Left = 554
        Top = 3
        Width = 127
        Height = 25
        Caption = 'Limpar Banco SysRep'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 16
        OnClick = BLimpaBancoSysRepClick
      end
      object BZerarNControle: TBitBtn
        Left = 554
        Top = 29
        Width = 127
        Height = 25
        Caption = 'Zerar N'#186' Controle'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 17
        OnClick = BZerarNControleClick
      end
      object BApagaPedRecebidos: TBitBtn
        Left = 554
        Top = 55
        Width = 127
        Height = 25
        Caption = 'Apaga Ped. Recebidos'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 18
        OnClick = BApagaPedRecebidosClick
      end
      object DBEVerExe: TDBEdit
        Left = 583
        Top = 174
        Width = 88
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'VEREXE'
        DataSource = DsCadE100Usu
        ParentCtl3D = False
        TabOrder = 19
      end
      object BGeraSqlDelete: TBitBtn
        Left = 554
        Top = 80
        Width = 127
        Height = 25
        Caption = 'Gerar Sql Delete'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 20
        OnClick = BGeraSqlDeleteClick
      end
    end
    object TbConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 684
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
        Width = 684
        Height = 621
        Align = alClient
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 682
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
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMUSU'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOGUSU'
              Title.Alignment = taCenter
              Title.Caption = 'Login'
              Width = 150
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATATU'
              Title.Alignment = taCenter
              Title.Caption = 'Dt.Atualiza'#231#227'o'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'VEREXE'
              Title.Alignment = taCenter
              Title.Caption = 'Vers'#227'o'
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTDDIA'
              Title.Alignment = taCenter
              Title.Caption = 'Dias P/Atu'
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
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SENUSU'
              Title.Alignment = taCenter
              Title.Caption = 'Senha'
              Width = 150
              Visible = True
            end>
        end
      end
    end
  end
  object DsCadE100Usu: TDataSource
    DataSet = DmFire.CadE100Usu
    OnStateChange = DsCadE100UsuStateChange
    Left = 80
    Top = 368
  end
  object ValidaE100Usu: TIBQuery
    Database = DmFire.IBDBanco
    Transaction = DmFire.IBTransacao
    SQL.Strings = (
      'select * from E100USU where codusu = :codusu')
    Left = 272
    Top = 336
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
    Left = 208
    Top = 352
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
    object ConsE100UsuDATATU: TDateField
      FieldName = 'DATATU'
      Origin = '"E100USU"."DATATU"'
    end
    object ConsE100UsuQTDDIA: TIntegerField
      FieldName = 'QTDDIA'
      Origin = '"E100USU"."QTDDIA"'
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
    object ConsE100UsuHORATU: TIBStringField
      FieldName = 'HORATU'
      Origin = '"E100USU"."HORATU"'
      Size = 10
    end
    object ConsE100UsuVEREXE: TIBStringField
      FieldName = 'VEREXE'
      Origin = '"E100USU"."VEREXE"'
    end
  end
  object DsConsE100Usu: TDataSource
    DataSet = ConsE100Usu
    Left = 80
    Top = 416
  end
  object DsConsE028Cpg: TDataSource
    DataSet = CadE028Cpg
    Left = 336
    Top = 24
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
      
        '  (ABRCPG, CODCPG, CODEMP, CODUSU, CPGLIB, DESCPG, PERCOM, PRZME' +
        'D, QTDPAR, '
      '   SITCPG)'
      'values'
      
        '  (:ABRCPG, :CODCPG, :CODEMP, :CODUSU, :CPGLIB, :DESCPG, :PERCOM' +
        ', :PRZMED, '
      '   :QTDPAR, :SITCPG)')
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
      '  PERCOM,'
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
      '  PERCOM = :PERCOM,'
      '  PRZMED = :PRZMED,'
      '  QTDPAR = :QTDPAR,'
      '  SITCPG = :SITCPG'
      'where'
      '  CODCPG = :OLD_CODCPG and'
      '  CODEMP = :OLD_CODEMP and'
      '  CODUSU = :OLD_CODUSU')
    Left = 360
    Top = 408
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
    object CadE028CpgPERCOM: TFloatField
      FieldName = 'PERCOM'
      Origin = '"E028CPG"."PERCOM"'
    end
  end
  object ConsE028Cpg: TIBQuery
    Database = DmFire.IBDBanco
    Transaction = DmFire.IBTransacao
    SQL.Strings = (
      'select * from E028CPG where codusu = :codusu')
    Left = 136
    Top = 352
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
    object ConsE028CpgPERCOM: TFloatField
      FieldName = 'PERCOM'
      Origin = '"E028CPG"."PERCOM"'
    end
  end
  object DsConsE081Itp: TDataSource
    DataSet = DmFire.ConsE081Itp
    Left = 248
    Top = 16
  end
  object DsCadE100Sql: TDataSource
    DataSet = DmFire.CadE100Sql
    OnStateChange = DsCadE100SqlStateChange
    Left = 472
    Top = 480
  end
  object DsConsE100Sql: TDataSource
    DataSet = DmFire.ConsE100Sql
    Left = 344
    Top = 320
  end
end
