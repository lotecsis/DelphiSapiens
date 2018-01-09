object FAcertoViagem: TFAcertoViagem
  Left = 0
  Top = 0
  Caption = 'Acerto de Viagem'
  ClientHeight = 654
  ClientWidth = 906
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 906
    Height = 79
    Align = alTop
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 25
      Top = 56
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
    object Label2: TLabel
      Left = 33
      Top = 32
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
    object Label3: TLabel
      Left = 9
      Top = 8
      Width = 52
      Height = 13
      Caption = 'Empresa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 201
      Top = 8
      Width = 58
      Height = 13
      Caption = 'Motorista:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LCodMtr: TLabel
      Left = 265
      Top = 8
      Width = 3
      Height = 13
    end
    object Label5: TLabel
      Left = 216
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Ve'#237'culo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LPlaVei: TLabel
      Left = 265
      Top = 32
      Width = 3
      Height = 13
    end
    object Label6: TLabel
      Left = 210
      Top = 56
      Width = 49
      Height = 13
      Caption = 'Dat.Ger.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LDatGer: TLabel
      Left = 265
      Top = 56
      Width = 3
      Height = 13
    end
    object EdNumAne: TEdit
      Left = 67
      Top = 53
      Width = 100
      Height = 21
      TabOrder = 2
      OnExit = EdNumAneExit
    end
    object EdCodEmp: TEdit
      Left = 67
      Top = 5
      Width = 100
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object EdCodFil: TEdit
      Left = 66
      Top = 29
      Width = 100
      Height = 21
      TabOrder = 1
      Text = '1'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 79
    Width = 906
    Height = 534
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 904
      Height = 160
      Align = alTop
      TabOrder = 0
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 902
        Height = 19
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 12
          Top = 2
          Width = 99
          Height = 13
          Caption = 'ADIANTAMENTOS '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 138
        Width = 902
        Height = 21
        Align = alBottom
        TabOrder = 1
        object Panel8: TPanel
          Left = 750
          Top = 1
          Width = 151
          Height = 19
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object Label8: TLabel
            Left = 5
            Top = 1
            Width = 42
            Height = 13
            Caption = 'TOTAL: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdTotAdt: TCurrencyEdit
            Left = 48
            Top = 0
            Width = 95
            Height = 19
            Margins.Left = 2
            Margins.Top = 2
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DisplayFormat = ' ,0.00;- ,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object Panel7: TPanel
        Left = 1
        Top = 20
        Width = 902
        Height = 118
        Align = alClient
        TabOrder = 2
        object Panel21: TPanel
          Left = 803
          Top = 1
          Width = 98
          Height = 116
          Align = alRight
          TabOrder = 0
          object BMovTesouraria: TBitBtn
            Left = 2
            Top = 3
            Width = 93
            Height = 25
            Caption = 'Tesouraria'
            DoubleBuffered = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555500000
              55555555000BB3B30555555030BB3303305555030BB0B3B3330555033BBBB333
              330550B3B3BB3BB3B33050B3B33BBBBB333050B3B33BBBBB3B3050B3B333BB0B
              33B050B33333BBB3B3B050BB33333333BB05550B33B3333BB305550BB33330BB
              B0555550BB33B3BB0555555500B3333055555555550000055555}
            ParentDoubleBuffered = False
            TabOrder = 0
            OnClick = BMovTesourariaClick
          end
        end
        object DBGAdiantamentos: TDBGrid
          Left = 1
          Top = 1
          Width = 802
          Height = 116
          Align = alClient
          DataSource = DsCadUsu_TAdvAdt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGAdiantamentosCellClick
          OnColExit = DBGAdiantamentosColExit
          OnDrawColumnCell = DBGAdiantamentosDrawColumnCell
          OnEnter = DBGAdiantamentosEnter
          OnExit = DBGAdiantamentosExit
          OnKeyDown = DBGAdiantamentosKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'IteSel'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Title.Caption = '  '
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_NUMADT'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Adt.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_CODFIL'
              Title.Alignment = taCenter
              Title.Caption = 'Filial'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_TIPADT'
              Title.Alignment = taCenter
              Title.Caption = 'Tip.Adt.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_DESADT'
              Title.Alignment = taCenter
              Title.Caption = 'Desc.Adt.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 260
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_VLRADT'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Adint.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_VLRSAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Sado na Conta'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_NUMCCO'
              Title.Alignment = taCenter
              Title.Caption = 'Cco Interna'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_NUMCCD'
              Title.Alignment = taCenter
              Title.Caption = 'Cco Despesa'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_DATADT'
              Title.Alignment = taCenter
              Title.Caption = 'Data Adt.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_SEQMDT'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Seq. Adt.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_VLRGST'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Gasto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_VLRRST'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Rest.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_DATACT'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Data Acerto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_SEQMCT'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Seq. Acerto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_SITADT'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Sit. Adt.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_USUADT'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Usuario Adt.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_USUACT'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Usuario Acerto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Visible = True
            end>
        end
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 352
      Width = 904
      Height = 181
      Align = alBottom
      TabOrder = 1
      object Panel15: TPanel
        Left = 1
        Top = 1
        Width = 520
        Height = 179
        Align = alLeft
        TabOrder = 0
        object Panel17: TPanel
          Left = 1
          Top = 1
          Width = 518
          Height = 19
          Align = alTop
          TabOrder = 0
          object Label11: TLabel
            Left = 228
            Top = 2
            Width = 83
            Height = 13
            Caption = 'TOTAL ACERTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel23: TPanel
          Left = 1
          Top = 158
          Width = 518
          Height = 20
          Align = alBottom
          TabOrder = 1
          object Label13: TLabel
            Left = 319
            Top = 2
            Width = 98
            Height = 13
            Caption = 'TOTAL RESTANTE:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdTotRst: TCurrencyEdit
            Left = 422
            Top = 1
            Width = 95
            Height = 19
            Margins.Left = 2
            Margins.Top = 2
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DisplayFormat = ' ,0.00;- ,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object DBGTotalAcerto: TDBGrid
          Left = 1
          Top = 20
          Width = 518
          Height = 138
          Align = alClient
          DataSource = DsConsTotalAcerto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGTotalAcertoDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'USU_NUMADT'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Adt.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_CODFIL'
              Title.Alignment = taCenter
              Title.Caption = 'Filial'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_VLRADT'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Adiant.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTDES'
              Title.Alignment = taCenter
              Title.Caption = 'Tot. Gasto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTRES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Restante'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end>
        end
      end
      object Panel16: TPanel
        Left = 521
        Top = 1
        Width = 382
        Height = 179
        Align = alClient
        TabOrder = 1
        object Panel18: TPanel
          Left = 1
          Top = 1
          Width = 380
          Height = 19
          Align = alTop
          TabOrder = 0
          object Panel20: TPanel
            Left = 1
            Top = 1
            Width = 185
            Height = 17
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label12: TLabel
              Left = 10
              Top = 2
              Width = 48
              Height = 13
              Caption = 'T'#205'TULOS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object Panel19: TPanel
          Left = 1
          Top = 20
          Width = 380
          Height = 158
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object DBGrid4: TDBGrid
            Left = 0
            Top = 0
            Width = 380
            Height = 158
            Align = alClient
            DataSource = DsConsE501Tcp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
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
                FieldName = 'CODFIL'
                Title.Alignment = taCenter
                Title.Caption = 'Filial'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMTIT'
                Title.Alignment = taCenter
                Title.Caption = 'Titulo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODFOR'
                Title.Alignment = taCenter
                Title.Caption = 'Fornecedor'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODTNS'
                Title.Alignment = taCenter
                Title.Caption = 'Tns'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATEMI'
                Title.Alignment = taCenter
                Title.Caption = 'Emiss'#227'o'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SITTIT'
                Title.Alignment = taCenter
                Title.Caption = 'Sit'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VCTORI'
                Title.Alignment = taCenter
                Title.Caption = 'Vencimento'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRORI'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRABE'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Ab.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTAFIN'
                Title.Alignment = taCenter
                Title.Caption = 'Conta Fin.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTARED'
                Title.Alignment = taCenter
                Title.Caption = 'Conta Red.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODCCU'
                Title.Alignment = taCenter
                Title.Caption = 'Centro Custo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Visible = True
              end>
          end
        end
      end
    end
    object Panel10: TPanel
      Left = 1
      Top = 161
      Width = 904
      Height = 191
      Align = alClient
      TabOrder = 2
      object Panel11: TPanel
        Left = 1
        Top = 1
        Width = 902
        Height = 19
        Align = alTop
        TabOrder = 0
        object Label9: TLabel
          Left = 12
          Top = 3
          Width = 56
          Height = 13
          Caption = 'DESPESAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel12: TPanel
        Left = 1
        Top = 20
        Width = 902
        Height = 149
        Align = alClient
        TabOrder = 1
        object Panel22: TPanel
          Left = 888
          Top = 1
          Width = 13
          Height = 147
          Align = alRight
          TabOrder = 0
        end
        object DBGDespesas: TDBGrid
          Left = 1
          Top = 1
          Width = 887
          Height = 147
          Align = alClient
          DataSource = DsCadUsu_TAdvDsp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnColExit = DBGDespesasColExit
          OnDrawColumnCell = DBGDespesasDrawColumnCell
          OnEditButtonClick = DBGDespesasEditButtonClick
          OnEnter = DBGDespesasEnter
          OnExit = DBGDespesasExit
          OnKeyDown = DBGDespesasKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'USU_NUMADT'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Adt.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_CODFIL'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Filial'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 50
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'USU_CODDES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Despesa'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_DESDES'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Desc. Despesa'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 260
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_VLRDES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Desp.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_CTAFIN'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Cta.Fin.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_CTARED'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Cta.Red.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_CODCCU'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'C.Custo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_DATDES'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_USUDES'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Usu'#225'rio'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Visible = True
            end>
        end
      end
      object Panel13: TPanel
        Left = 1
        Top = 169
        Width = 902
        Height = 21
        Align = alBottom
        TabOrder = 2
        object Panel14: TPanel
          Left = 750
          Top = 1
          Width = 151
          Height = 19
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object Label10: TLabel
            Left = 5
            Top = 1
            Width = 42
            Height = 13
            Caption = 'TOTAL: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdTotDsp: TCurrencyEdit
            Left = 48
            Top = 0
            Width = 95
            Height = 19
            Margins.Left = 2
            Margins.Top = 2
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DisplayFormat = ' ,0.00;- ,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 613
    Width = 906
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Panel24: TPanel
      Left = 201
      Top = 1
      Width = 704
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object LStatus: TLabel
        Left = 6
        Top = 14
        Width = 4
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object BFecharAcerto: TBitBtn
        Left = 569
        Top = 7
        Width = 129
        Height = 25
        Caption = 'Processar Acerto'
        DoubleBuffered = True
        Glyph.Data = {
          46050000424D460500000000000036040000280000000D000000110000000100
          08000000000010010000C30E0000C30E00000001000000000000000000008080
          8000000080000080800000800000808000008000000080008000408080004040
          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
          1D007666280000450000013E450013286A006A39850085324A00040404000808
          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
          0000000039009B00000000250000000049003B111100002F000000005D004517
          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
          0F0F0F0F0F0F0F000000}
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = BFecharAcertoClick
      end
      object BImprimirAcerto: TBitBtn
        Left = 434
        Top = 5
        Width = 129
        Height = 25
        Caption = 'Imprimir'
        DoubleBuffered = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDDD7777777777DDDDD0000DDDD
          000000000007DDDD0000DDD07878787870707DDD0000DD0000000000000707DD
          0000DD0F8F8F8AAA8F0007DD0000DD08F8F8F999F80707DD0000DD0000000000
          0008707D0000DD08F8F8F8F8F080807D0000DDD0000000000F08007D0000DDDD
          0BFFFBFFF0F080DD0000DDDDD0F00000F0000DDD0000DDDDD0FBFFFBFF0DDDDD
          0000DDDDDD0F00000F0DDDDD0000DDDDDD0FFBFFFBF0DDDD0000DDDDDDD00000
          0000DDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDD
          DDDDDDDDDDDDDDDD0000}
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BImprimirAcertoClick
      end
    end
  end
  object ConsE135Ane: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODFIL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DISTINCT(E135PFA.CODEMP),E135PFA.CODFIL,E135PFA.NUMANE,E1' +
        '35PFA.CODMTR,E135PFA.PLAVEI,'
      '       E073MOT.NOMMOT,E073MOT.USU_CODFOR,E135ANE.DATGER'
      'FROM E135PFA'
      'INNER JOIN E073MOT ON E073MOT.CODTRA = E135PFA.CODTRA AND'
      '                      E073MOT.CODMTR = E135PFA.CODMTR'
      'INNER JOIN E135ANE ON E135ANE.CODEMP = E135PFA.CODEMP AND'
      '                      E135ANE.CODFIL = E135PFA.CODFIL AND'
      '                      E135ANE.NUMANE = E135PFA.NUMANE'
      'WHERE'
      'E135PFA.CODEMP = :CODEMP AND'
      'E135PFA.CODFIL = :CODFIL AND'
      'E135PFA.NUMANE = :NUMANE')
    Left = 616
    Top = 8
    object ConsE135AneCODEMP: TIntegerField
      FieldName = 'CODEMP'
      ReadOnly = True
    end
    object ConsE135AneCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE135AneNUMANE: TBCDField
      FieldName = 'NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsE135AneCODMTR: TIntegerField
      FieldName = 'CODMTR'
    end
    object ConsE135AnePLAVEI: TStringField
      FieldName = 'PLAVEI'
      Size = 10
    end
    object ConsE135AneNOMMOT: TStringField
      FieldName = 'NOMMOT'
      Size = 100
    end
    object ConsE135AneUSU_CODFOR: TIntegerField
      FieldName = 'USU_CODFOR'
    end
    object ConsE135AneDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
  end
  object DsCadUsu_TAdvAdt: TDataSource
    DataSet = CadUsu_TAdvAdt
    OnStateChange = DsCadUsu_TAdvAdtStateChange
    Left = 720
    Top = 8
  end
  object CadUsu_TAdvAdt: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    AfterInsert = CadUsu_TAdvAdtAfterInsert
    BeforePost = CadUsu_TAdvAdtBeforePost
    AfterPost = CadUsu_TAdvAdtAfterPost
    BeforeDelete = CadUsu_TAdvAdtBeforeDelete
    AfterDelete = CadUsu_TAdvAdtAfterDelete
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_TADVADT'
      'WHERE'
      'USU_CODEMP = :CODEMP AND'
      'USU_NUMANE = :NUMANE'
      'ORDER BY USU_NUMADT ')
    Left = 408
    Top = 8
    object CadUsu_TAdvAdtUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUsu_TAdvAdtUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadUsu_TAdvAdtUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 13
      Size = 0
    end
    object CadUsu_TAdvAdtUSU_NUMADT: TIntegerField
      FieldName = 'USU_NUMADT'
    end
    object CadUsu_TAdvAdtUSU_TIPADT: TStringField
      FieldName = 'USU_TIPADT'
      Size = 3
    end
    object CadUsu_TAdvAdtUSU_DESADT: TStringField
      FieldName = 'USU_DESADT'
      Size = 50
    end
    object CadUsu_TAdvAdtUSU_NUMCCO: TStringField
      FieldName = 'USU_NUMCCO'
      Size = 14
    end
    object CadUsu_TAdvAdtUSU_NUMCCD: TStringField
      FieldName = 'USU_NUMCCD'
      Size = 14
    end
    object CadUsu_TAdvAdtUSU_VLRADT: TBCDField
      FieldName = 'USU_VLRADT'
      DisplayFormat = ' ,0.00;-,0.00'
      EditFormat = ' ,0.00;-,0.00'
      Precision = 11
      Size = 2
    end
    object CadUsu_TAdvAdtUSU_DATADT: TDateTimeField
      FieldName = 'USU_DATADT'
      EditMask = '00/00/0000;1;_'
    end
    object CadUsu_TAdvAdtUSU_USUADT: TIntegerField
      FieldName = 'USU_USUADT'
    end
    object CadUsu_TAdvAdtUSU_SEQMDT: TIntegerField
      FieldName = 'USU_SEQMDT'
    end
    object CadUsu_TAdvAdtUSU_VLRGST: TBCDField
      FieldName = 'USU_VLRGST'
      DisplayFormat = ' ,0.00;-,0.00'
      EditFormat = ' ,0.00;-,0.00'
      Precision = 11
      Size = 2
    end
    object CadUsu_TAdvAdtUSU_VLRRST: TBCDField
      FieldName = 'USU_VLRRST'
      DisplayFormat = ' ,0.00;-,0.00'
      EditFormat = ' ,0.00;-,0.00'
      Precision = 11
      Size = 2
    end
    object CadUsu_TAdvAdtUSU_DATACT: TDateTimeField
      FieldName = 'USU_DATACT'
    end
    object CadUsu_TAdvAdtUSU_USUACT: TIntegerField
      FieldName = 'USU_USUACT'
    end
    object CadUsu_TAdvAdtUSU_SEQMCT: TIntegerField
      FieldName = 'USU_SEQMCT'
    end
    object CadUsu_TAdvAdtUSU_SITADT: TStringField
      FieldName = 'USU_SITADT'
      Size = 2
    end
    object CadUsu_TAdvAdtUSU_ITESEL: TStringField
      FieldName = 'USU_ITESEL'
      Size = 1
    end
    object CadUsu_TAdvAdtIteSel: TStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'IteSel'
      ReadOnly = True
      Size = 1
      Calculated = True
    end
    object CadUsu_TAdvAdtUSU_VLRSAL: TBCDField
      FieldName = 'USU_VLRSAL'
      DisplayFormat = ' ,0.00;-,0.00'
      EditFormat = ' ,0.00;-,0.00'
      Precision = 11
      Size = 2
    end
  end
  object ExecutaSql: TADOCommand
    Connection = DmOra.ADOBanco
    Parameters = <>
    Left = 824
    Top = 16
  end
  object CadUsu_TAdvDsp: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    BeforeInsert = CadUsu_TAdvDspBeforeInsert
    AfterInsert = CadUsu_TAdvDspAfterInsert
    AfterEdit = CadUsu_TAdvDspAfterEdit
    BeforePost = CadUsu_TAdvDspBeforePost
    AfterPost = CadUsu_TAdvDspAfterPost
    BeforeDelete = CadUsu_TAdvDspBeforeDelete
    AfterDelete = CadUsu_TAdvDspAfterDelete
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_TADVDSP'
      '                    WHERE'
      '                    USU_CODEMP = :CODEMP AND'
      '                    USU_NUMANE = :NUMANE')
    Left = 344
    Top = 128
    object CadUsu_TAdvDspUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUsu_TAdvDspUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadUsu_TAdvDspUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object CadUsu_TAdvDspUSU_NUMADT: TIntegerField
      FieldName = 'USU_NUMADT'
    end
    object CadUsu_TAdvDspUSU_SEQDES: TIntegerField
      FieldName = 'USU_SEQDES'
    end
    object CadUsu_TAdvDspUSU_CODDES: TIntegerField
      FieldName = 'USU_CODDES'
    end
    object CadUsu_TAdvDspUSU_DESDES: TStringField
      FieldName = 'USU_DESDES'
      Size = 50
    end
    object CadUsu_TAdvDspUSU_VLRDES: TBCDField
      FieldName = 'USU_VLRDES'
      DisplayFormat = ' ,0.00;-,0.00'
      EditFormat = ' ,0.00;-,0.00'
      Precision = 11
      Size = 2
    end
    object CadUsu_TAdvDspUSU_DATDES: TDateTimeField
      FieldName = 'USU_DATDES'
    end
    object CadUsu_TAdvDspUSU_USUDES: TIntegerField
      FieldName = 'USU_USUDES'
    end
    object CadUsu_TAdvDspUSU_CTAFIN: TIntegerField
      FieldName = 'USU_CTAFIN'
    end
    object CadUsu_TAdvDspUSU_CTARED: TIntegerField
      FieldName = 'USU_CTARED'
    end
    object CadUsu_TAdvDspUSU_CODCCU: TStringField
      FieldName = 'USU_CODCCU'
      Size = 9
    end
  end
  object DsCadUsu_TAdvDsp: TDataSource
    DataSet = CadUsu_TAdvDsp
    OnStateChange = DsCadUsu_TAdvDspStateChange
    Left = 688
    Top = 160
  end
  object ConsTotalAcerto: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT USU_TADVADT.USU_CODEMP,USU_TADVADT.USU_CODFIL,USU_TADVADT' +
        '.USU_NUMANE,'
      
        '             USU_TADVADT.USU_NUMADT,USU_TADVADT.USU_VLRADT,USU_T' +
        'ADVADT.USU_DATADT,'
      '       (SELECT SUM(USU_TADVDSP.USU_VLRDES)'
      '                   FROM USU_TADVDSP'
      '                   WHERE'
      
        '                   USU_TADVDSP.USU_CODEMP = USU_TADVADT.USU_CODE' +
        'MP AND'
      
        '                   USU_TADVDSP.USU_CODFIL = USU_TADVADT.USU_CODF' +
        'IL AND'
      
        '                   USU_TADVDSP.USU_NUMANE = USU_TADVADT.USU_NUMA' +
        'NE AND'
      
        '                   USU_TADVDSP.USU_NUMADT = USU_TADVADT.USU_NUMA' +
        'DT) AS TOTDES,'
      
        '        (USU_TADVADT.USU_VLRADT - (SELECT SUM(USU_TADVDSP.USU_VL' +
        'RDES)'
      '                                              FROM USU_TADVDSP'
      '                                              WHERE'
      
        '                                              USU_TADVDSP.USU_CO' +
        'DEMP = USU_TADVADT.USU_CODEMP AND'
      
        '                                              USU_TADVDSP.USU_CO' +
        'DFIL = USU_TADVADT.USU_CODFIL AND'
      
        '                                              USU_TADVDSP.USU_NU' +
        'MANE = USU_TADVADT.USU_NUMANE AND'
      
        '                                              USU_TADVDSP.USU_NU' +
        'MADT = USU_TADVADT.USU_NUMADT)) AS TOTRES'
      '               FROM USU_TADVADT'
      '               WHERE'
      '                   USU_TADVADT.USU_CODEMP = :CODEMP AND'
      '                   USU_TADVADT.USU_NUMANE = :NUMANE'
      '               ORDER BY USU_TADVADT.USU_NUMADT')
    Left = 200
    Top = 488
    object ConsTotalAcertoUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsTotalAcertoUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsTotalAcertoUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 13
      Size = 0
    end
    object ConsTotalAcertoUSU_NUMADT: TIntegerField
      FieldName = 'USU_NUMADT'
    end
    object ConsTotalAcertoUSU_VLRADT: TBCDField
      FieldName = 'USU_VLRADT'
      DisplayFormat = ' ,0.00;-,0.00'
      EditFormat = ' ,0.00;-,0.00'
      Precision = 11
      Size = 2
    end
    object ConsTotalAcertoUSU_DATADT: TDateTimeField
      FieldName = 'USU_DATADT'
    end
    object ConsTotalAcertoTOTDES: TFMTBCDField
      FieldName = 'TOTDES'
      ReadOnly = True
      DisplayFormat = ' ,0.00;-,0.00'
      EditFormat = ' ,0.00;-,0.00'
      Precision = 38
      Size = 0
    end
    object ConsTotalAcertoTOTRES: TFMTBCDField
      FieldName = 'TOTRES'
      DisplayFormat = ' ,0.00;-,0.00'
      EditFormat = ' ,0.00;-,0.00'
      Precision = 38
      Size = 0
    end
  end
  object DsConsTotalAcerto: TDataSource
    DataSet = ConsTotalAcerto
    Left = 296
    Top = 472
  end
  object SapSid: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 512
    Top = 32
  end
  object ConsTotalGasto: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODFIL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMADT'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TADVADT.*,'
      '       (SELECT SUM(USU_TADVDSP.USU_VLRDES)'
      '                   FROM USU_TADVDSP'
      '                   WHERE'
      
        '                   USU_TADVDSP.USU_CODEMP = USU_TADVADT.USU_CODE' +
        'MP AND'
      
        '                   USU_TADVDSP.USU_CODFIL = USU_TADVADT.USU_CODF' +
        'IL AND'
      
        '                   USU_TADVDSP.USU_NUMANE = USU_TADVADT.USU_NUMA' +
        'NE AND'
      
        '                   USU_TADVDSP.USU_NUMADT = USU_TADVADT.USU_NUMA' +
        'DT) AS TOTDES,'
      
        '        (USU_TADVADT.USU_VLRADT - (SELECT SUM(USU_TADVDSP.USU_VL' +
        'RDES)'
      '                                              FROM USU_TADVDSP'
      '                                              WHERE'
      
        '                                              USU_TADVDSP.USU_CO' +
        'DEMP = USU_TADVADT.USU_CODEMP AND'
      
        '                                              USU_TADVDSP.USU_CO' +
        'DFIL = USU_TADVADT.USU_CODFIL AND'
      
        '                                              USU_TADVDSP.USU_NU' +
        'MANE = USU_TADVADT.USU_NUMANE AND'
      
        '                                              USU_TADVDSP.USU_NU' +
        'MADT = USU_TADVADT.USU_NUMADT)) AS TOTRES'
      '               FROM USU_TADVADT'
      '               WHERE'
      '                   USU_TADVADT.USU_CODEMP = :CODEMP AND'
      '                   USU_TADVADT.USU_CODFIL = :CODFIL AND'
      '                   USU_TADVADT.USU_NUMANE = :NUMANE AND'
      '                   USU_TADVADT.USU_NUMADT = :NUMADT'
      '               ORDER BY USU_TADVADT.USU_NUMADT')
    Left = 488
    Top = 328
    object ConsTotalGastoUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsTotalGastoUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsTotalGastoUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 13
      Size = 0
    end
    object ConsTotalGastoUSU_NUMADT: TIntegerField
      FieldName = 'USU_NUMADT'
    end
    object ConsTotalGastoUSU_TIPADT: TStringField
      FieldName = 'USU_TIPADT'
      Size = 3
    end
    object ConsTotalGastoUSU_DESADT: TStringField
      FieldName = 'USU_DESADT'
      Size = 50
    end
    object ConsTotalGastoUSU_NUMCCO: TStringField
      FieldName = 'USU_NUMCCO'
      Size = 14
    end
    object ConsTotalGastoUSU_NUMCCD: TStringField
      FieldName = 'USU_NUMCCD'
      Size = 14
    end
    object ConsTotalGastoUSU_VLRADT: TBCDField
      FieldName = 'USU_VLRADT'
      Precision = 11
      Size = 2
    end
    object ConsTotalGastoUSU_DATADT: TDateTimeField
      FieldName = 'USU_DATADT'
    end
    object ConsTotalGastoUSU_USUADT: TIntegerField
      FieldName = 'USU_USUADT'
    end
    object ConsTotalGastoUSU_SEQMDT: TIntegerField
      FieldName = 'USU_SEQMDT'
    end
    object ConsTotalGastoUSU_VLRGST: TBCDField
      FieldName = 'USU_VLRGST'
      Precision = 11
      Size = 2
    end
    object ConsTotalGastoUSU_VLRRST: TBCDField
      FieldName = 'USU_VLRRST'
      Precision = 11
      Size = 2
    end
    object ConsTotalGastoUSU_DATACT: TDateTimeField
      FieldName = 'USU_DATACT'
    end
    object ConsTotalGastoUSU_USUACT: TIntegerField
      FieldName = 'USU_USUACT'
    end
    object ConsTotalGastoUSU_SEQMCT: TIntegerField
      FieldName = 'USU_SEQMCT'
    end
    object ConsTotalGastoUSU_SITADT: TStringField
      FieldName = 'USU_SITADT'
      Size = 2
    end
    object ConsTotalGastoUSU_ITESEL: TStringField
      FieldName = 'USU_ITESEL'
      Size = 1
    end
    object ConsTotalGastoTOTDES: TFMTBCDField
      FieldName = 'TOTDES'
      Precision = 38
      Size = 0
    end
    object ConsTotalGastoTOTRES: TFMTBCDField
      FieldName = 'TOTRES'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object ConsDspAdt: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODFIL'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMADT'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TADVDSP.* FROM USU_TADVDSP'
      '                              WHERE'
      
        '                              USU_TADVDSP.USU_CODEMP = :CODEMP A' +
        'ND'
      
        '                              USU_TADVDSP.USU_CODFIL = :CODFIL A' +
        'ND'
      
        '                              USU_TADVDSP.USU_NUMANE = :NUMANE A' +
        'ND'
      '                              USU_TADVDSP.USU_NUMADT = :NUMADT')
    Left = 608
    Top = 328
    object ConsDspAdtUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsDspAdtUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsDspAdtUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsDspAdtUSU_NUMADT: TIntegerField
      FieldName = 'USU_NUMADT'
    end
    object ConsDspAdtUSU_SEQDES: TIntegerField
      FieldName = 'USU_SEQDES'
    end
    object ConsDspAdtUSU_CODDES: TIntegerField
      FieldName = 'USU_CODDES'
    end
    object ConsDspAdtUSU_DESDES: TStringField
      FieldName = 'USU_DESDES'
      Size = 50
    end
    object ConsDspAdtUSU_VLRDES: TBCDField
      FieldName = 'USU_VLRDES'
      Precision = 11
      Size = 2
    end
    object ConsDspAdtUSU_DATDES: TDateTimeField
      FieldName = 'USU_DATDES'
    end
    object ConsDspAdtUSU_USUDES: TIntegerField
      FieldName = 'USU_USUDES'
    end
    object ConsDspAdtUSU_CTAFIN: TIntegerField
      FieldName = 'USU_CTAFIN'
    end
    object ConsDspAdtUSU_CTARED: TIntegerField
      FieldName = 'USU_CTARED'
    end
    object ConsDspAdtUSU_CODCCU: TStringField
      FieldName = 'USU_CODCCU'
      Size = 9
    end
  end
  object ConsE501Tcp: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E501TCP.CODEMP,E501TCP.CODFIL,E501TCP.NUMTIT,E501TCP.CODF' +
        'OR,E501TCP.CODTNS,E501TCP.SITTIT,E501TCP.DATEMI,E501TCP.VCTORI,'
      
        '       E501TCP.VCTPRO,E501TCP.VLRORI,E501TCP.VLRABE,E501TCP.CTAF' +
        'IN,E501TCP.CTARED,E501TCP.CODCCU,E501TCP.USU_NUMANE'
      '       FROM E501TCP'
      '       WHERE E501TCP.CODEMP = :CODEMP AND'
      '             E501TCP.USU_NUMANE = :NUMANE'
      'ORDER BY E501TCP.NUMTIT')
    Left = 664
    Top = 472
    object ConsE501TcpCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE501TcpCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE501TcpNUMTIT: TStringField
      FieldName = 'NUMTIT'
      Size = 15
    end
    object ConsE501TcpCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ConsE501TcpCODTNS: TStringField
      FieldName = 'CODTNS'
      Size = 5
    end
    object ConsE501TcpSITTIT: TStringField
      FieldName = 'SITTIT'
      Size = 2
    end
    object ConsE501TcpDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE501TcpVCTORI: TDateTimeField
      FieldName = 'VCTORI'
    end
    object ConsE501TcpVCTPRO: TDateTimeField
      FieldName = 'VCTPRO'
    end
    object ConsE501TcpVLRORI: TBCDField
      FieldName = 'VLRORI'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsE501TcpVLRABE: TBCDField
      FieldName = 'VLRABE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsE501TcpCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ConsE501TcpCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConsE501TcpCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ConsE501TcpUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
  end
  object DsConsE501Tcp: TDataSource
    DataSet = ConsE501Tcp
    Left = 752
    Top = 488
  end
end
