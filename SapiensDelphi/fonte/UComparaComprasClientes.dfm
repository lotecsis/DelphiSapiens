object FComparaComprasClientes: TFComparaComprasClientes
  Left = 0
  Top = 0
  Caption = 'Comparativo de Vendas'
  ClientHeight = 644
  ClientWidth = 933
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 933
    Height = 644
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 933
      Height = 99
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 21
        Width = 54
        Height = 13
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 13
        Top = 48
        Width = 49
        Height = 13
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 30
        Top = 75
        Width = 32
        Height = 13
        Caption = 'Rep.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdDatIniAtu: TDateEdit
        Left = 69
        Top = 13
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object EdDatFimAtu: TDateEdit
        Left = 182
        Top = 13
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
      object EdCodCli: TEdit
        Left = 68
        Top = 40
        Width = 100
        Height = 21
        TabOrder = 2
      end
      object EdCodRep: TEdit
        Left = 68
        Top = 67
        Width = 100
        Height = 21
        TabOrder = 3
      end
      object RbAbaixo: TRadioButton
        Left = 401
        Top = 15
        Width = 68
        Height = 17
        Caption = 'Abaixo'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 4
        TabStop = True
      end
      object RbAcima: TRadioButton
        Left = 401
        Top = 40
        Width = 65
        Height = 17
        Caption = 'Acima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 5
      end
      object RbTodos: TRadioButton
        Left = 401
        Top = 65
        Width = 65
        Height = 17
        Caption = 'Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 6
      end
      object BitBtn1: TBitBtn
        Left = 519
        Top = 11
        Width = 75
        Height = 25
        Caption = 'Mostrar'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 7
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 149
        Top = 40
        Width = 19
        Height = 18
        Caption = '...'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 8
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 149
        Top = 68
        Width = 19
        Height = 18
        Caption = '...'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 9
        OnClick = BitBtn3Click
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 99
      Width = 401
      Height = 545
      Align = alLeft
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 399
        Height = 543
        Align = alClient
        DataSource = DsComparativoComprasCli
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'Imagem'
            Title.Caption = ' '
            Width = 30
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODCLI'
            Title.Alignment = taCenter
            Title.Caption = 'CLIENTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMCLI'
            Title.Alignment = taCenter
            Title.Caption = 'NOME'
            Width = 300
            Visible = True
          end>
      end
    end
    object Panel4: TPanel
      Left = 401
      Top = 99
      Width = 532
      Height = 545
      Align = alClient
      TabOrder = 2
      object Label27: TLabel
        Left = 5
        Top = 84
        Width = 188
        Height = 13
        Caption = 'TOTAL FATURADO NO PER'#205'ODO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object LDatIni: TLabel
        Left = 215
        Top = 84
        Width = 4
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LDatFim: TLabel
        Left = 325
        Top = 84
        Width = 4
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 306
        Top = 84
        Width = 8
        Height = 13
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 5
        Top = 203
        Width = 115
        Height = 13
        Caption = 'HIST'#211'RICO ANUAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 5
        Top = 386
        Width = 115
        Height = 13
        Caption = 'HIST'#211'RICO GERAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 6
        Top = 7
        Width = 60
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CODCLI'
        DataSource = DsComparativoComprasCli
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 72
        Top = 7
        Width = 259
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'NOMCLI'
        DataSource = DsComparativoComprasCli
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 337
        Top = 7
        Width = 180
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'APECLI'
        DataSource = DsComparativoComprasCli
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 6
        Top = 30
        Width = 187
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CIDCLI'
        DataSource = DsComparativoComprasCli
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 199
        Top = 30
        Width = 34
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'SIGUFS'
        DataSource = DsComparativoComprasCli
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 239
        Top = 30
        Width = 106
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'FONCLI'
        DataSource = DsComparativoComprasCli
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 351
        Top = 30
        Width = 166
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'EMANFE'
        DataSource = DsComparativoComprasCli
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 6
      end
      object Panel5: TPanel
        Left = 5
        Top = 99
        Width = 156
        Height = 98
        BevelOuter = bvLowered
        TabOrder = 7
        object Label4: TLabel
          Left = 10
          Top = 4
          Width = 57
          Height = 13
          Caption = 'PASSADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 15
          Top = 78
          Width = 33
          Height = 13
          Caption = 'Total:'
        end
        object Label10: TLabel
          Left = 7
          Top = 28
          Width = 41
          Height = 13
          Cursor = crHandPoint
          Caption = 'Estof.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = Label10Click
        end
        object Label11: TLabel
          Left = 3
          Top = 54
          Width = 43
          Height = 13
          Cursor = crHandPoint
          Caption = 'Colch.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = Label11Click
        end
        object EdTotFatAnt: TCurrencyEdit
          Left = 51
          Top = 72
          Width = 90
          Height = 19
          Margins.Left = 6
          Margins.Top = 2
          TabStop = False
          Color = clMoneyGreen
          Ctl3D = False
          DisplayFormat = ' ,0.00;- ,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBE_TOTESTOFANT: TDBEdit
          Left = 51
          Top = 23
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTESTOFANT'
          DataSource = DsComparativoComprasCli
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBE_TOTCOLCHANT: TDBEdit
          Left = 51
          Top = 48
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTCOLCHANT'
          DataSource = DsComparativoComprasCli
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object Panel6: TPanel
        Left = 163
        Top = 99
        Width = 354
        Height = 98
        BevelOuter = bvLowered
        TabOrder = 8
        object Label5: TLabel
          Left = 10
          Top = 4
          Width = 37
          Height = 13
          Caption = 'ATUAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 167
          Top = 29
          Width = 78
          Height = 13
          Caption = 'Ped. Abertos:'
        end
        object Label8: TLabel
          Left = 190
          Top = 54
          Width = 55
          Height = 13
          Caption = 'Faturado:'
        end
        object Label9: TLabel
          Left = 15
          Top = 78
          Width = 33
          Height = 13
          Caption = 'Total:'
        end
        object Label12: TLabel
          Left = 7
          Top = 28
          Width = 41
          Height = 13
          Cursor = crHandPoint
          Caption = 'Estof.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = Label12Click
        end
        object Label13: TLabel
          Left = 3
          Top = 54
          Width = 43
          Height = 13
          Cursor = crHandPoint
          Caption = 'Colch.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = Label13Click
        end
        object Label14: TLabel
          Left = 185
          Top = 78
          Width = 60
          Height = 13
          Caption = 'Diferen'#231'a:'
        end
        object EdTotFatAtu: TCurrencyEdit
          Left = 248
          Top = 48
          Width = 90
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          TabStop = False
          Ctl3D = False
          DisplayFormat = ' ,0.00;- ,0.00'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object EdTotFatPed: TCurrencyEdit
          Left = 51
          Top = 72
          Width = 90
          Height = 19
          Margins.Left = 6
          Margins.Top = 2
          TabStop = False
          Color = clMoneyGreen
          Ctl3D = False
          DisplayFormat = ' ,0.00;- ,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EdDifTotal: TCurrencyEdit
          Left = 248
          Top = 72
          Width = 90
          Height = 19
          Margins.Left = 6
          Margins.Top = 2
          TabStop = False
          Color = clWhite
          Ctl3D = False
          DisplayFormat = ' ,0.00;- ,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          OnChange = EdDifTotalChange
        end
        object EdTotEstofAtu: TCurrencyEdit
          Left = 51
          Top = 23
          Width = 90
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          TabStop = False
          Ctl3D = False
          DisplayFormat = ' ,0.00;- ,0.00'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EdTotColchAtu: TCurrencyEdit
          Left = 51
          Top = 48
          Width = 90
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          TabStop = False
          Ctl3D = False
          DisplayFormat = ' ,0.00;- ,0.00'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object EdTotPedAbeAtu: TCurrencyEdit
          Left = 248
          Top = 23
          Width = 90
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          TabStop = False
          Ctl3D = False
          DisplayFormat = ' ,0.00;- ,0.00'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
      end
      object Panel7: TPanel
        Left = 5
        Top = 218
        Width = 521
        Height = 163
        BevelOuter = bvLowered
        TabOrder = 9
        object Label15: TLabel
          Left = 18
          Top = 10
          Width = 46
          Height = 13
          Caption = 'Janeiro:'
        end
        object Label16: TLabel
          Left = 5
          Top = 35
          Width = 59
          Height = 13
          Caption = 'Fevereiro:'
        end
        object Label17: TLabel
          Left = 25
          Top = 61
          Width = 39
          Height = 13
          Caption = 'Mar'#231'o:'
        end
        object Label18: TLabel
          Left = 33
          Top = 86
          Width = 31
          Height = 13
          Caption = 'Abril:'
        end
        object Label19: TLabel
          Left = 33
          Top = 112
          Width = 31
          Height = 13
          Caption = 'Maio:'
        end
        object Label20: TLabel
          Left = 26
          Top = 138
          Width = 38
          Height = 13
          Caption = 'Junho:'
        end
        object Label21: TLabel
          Left = 291
          Top = 10
          Width = 34
          Height = 13
          Caption = 'Julho:'
        end
        object Label22: TLabel
          Left = 281
          Top = 35
          Width = 44
          Height = 13
          Caption = 'Agosto:'
        end
        object Label23: TLabel
          Left = 264
          Top = 61
          Width = 61
          Height = 13
          Caption = 'Setembro:'
        end
        object Label24: TLabel
          Left = 274
          Top = 86
          Width = 51
          Height = 13
          Caption = 'Outubro:'
        end
        object Label25: TLabel
          Left = 261
          Top = 112
          Width = 64
          Height = 13
          Caption = 'Novembro:'
        end
        object Label26: TLabel
          Left = 261
          Top = 138
          Width = 64
          Height = 13
          Caption = 'Dezembro:'
        end
        object DBE_TOTJANEIROANT: TDBEdit
          Left = 67
          Top = 8
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTJANEIROANT'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBE_TOTFEVEREIROANT: TDBEdit
          Left = 66
          Top = 33
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTFEVEREIROANT'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBE_TOTMARCOANT: TDBEdit
          Left = 67
          Top = 59
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTMARCOANT'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBE_TOTABRILANT: TDBEdit
          Left = 67
          Top = 84
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTABRILANT'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBE_TOTMAIOANT: TDBEdit
          Left = 67
          Top = 110
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTMAIOANT'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBE_TOTJUNHOANT: TDBEdit
          Left = 67
          Top = 136
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTJUNHOANT'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBE_TOTJANEIROATU: TDBEdit
          Left = 161
          Top = 8
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTJANEIROATU'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBE_TOTFEVEREIROATU: TDBEdit
          Left = 161
          Top = 33
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTFEVEREIROATU'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          TabOrder = 7
        end
        object DBE_TOTMARCOATU: TDBEdit
          Left = 162
          Top = 59
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTMARCOATU'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          TabOrder = 8
        end
        object DBE_TOTABRILATU: TDBEdit
          Left = 161
          Top = 84
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTABRILATU'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          TabOrder = 9
        end
        object DBE_TOTMAIOATU: TDBEdit
          Left = 161
          Top = 110
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTMAIOATU'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          TabOrder = 10
        end
        object DBE_TOTJUNHOATU: TDBEdit
          Left = 161
          Top = 136
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTJUNHOATU'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          TabOrder = 11
        end
        object DBE_TOTJULHOANT: TDBEdit
          Left = 327
          Top = 8
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTJULHOANT'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBE_TOTAGOSTOANT: TDBEdit
          Left = 327
          Top = 33
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTAGOSTOANT'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 13
        end
        object DBE_TOTSETEMBROANT: TDBEdit
          Left = 327
          Top = 59
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTSETEMBROANT'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 14
        end
        object DBE_TOTOUTUBROANT: TDBEdit
          Left = 327
          Top = 84
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTOUTUBROANT'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 15
        end
        object DBE_TOTNOVEMBROANT: TDBEdit
          Left = 327
          Top = 110
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTNOVEMBROANT'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 16
        end
        object DBE_TOTDEZEMBROANT: TDBEdit
          Left = 327
          Top = 136
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTDEZEMBROANT'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 17
        end
        object DBE_TOTJULHOATU: TDBEdit
          Left = 420
          Top = 8
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTJULHOATU'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 18
        end
        object DBE_TOTAGOSTOATU: TDBEdit
          Left = 420
          Top = 33
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTAGOSTOATU'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 19
        end
        object DBE_TOTSETEMBROATU: TDBEdit
          Left = 420
          Top = 59
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTSETEMBROATU'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 20
        end
        object DBE_TOTOUTUBROATU: TDBEdit
          Left = 420
          Top = 84
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTOUTUBROATU'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 21
        end
        object DBE_TOTNOVEMBROATU: TDBEdit
          Left = 420
          Top = 110
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTNOVEMBROATU'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 22
        end
        object DBE_TOTDEZEMBROATU: TDBEdit
          Left = 420
          Top = 136
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TOTDEZEMBROATU'
          DataSource = DsComparativoComprasCliMes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 23
        end
      end
      object DBEdit8: TDBEdit
        Left = 6
        Top = 53
        Width = 59
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CODREP'
        DataSource = DsComparativoComprasCli
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 10
      end
      object DBEdit9: TDBEdit
        Left = 71
        Top = 53
        Width = 245
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'APEREP'
        DataSource = DsComparativoComprasCli
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 11
      end
      object Panel8: TPanel
        Left = 5
        Top = 401
        Width = 521
        Height = 139
        BevelOuter = bvLowered
        TabOrder = 12
        object Label31: TLabel
          Left = 11
          Top = 13
          Width = 126
          Height = 13
          Caption = 'T'#205'TULOS EM ABERTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 148
          Top = 13
          Width = 64
          Height = 13
          Caption = #192' VENCER:'
        end
        object Label33: TLabel
          Left = 336
          Top = 13
          Width = 60
          Height = 13
          Caption = 'VENCIDO:'
        end
        object Label34: TLabel
          Left = 38
          Top = 40
          Width = 99
          Height = 13
          Caption = #218'LTIMO PEDIDO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 40
          Top = 65
          Width = 97
          Height = 13
          Caption = #218'LTIMA FATURA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 12
          Top = 90
          Width = 125
          Height = 13
          Caption = #218'LTIMO PAGAMENTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 41
          Top = 116
          Width = 96
          Height = 13
          Caption = 'MAIOR ATRAZO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 199
          Top = 114
          Width = 30
          Height = 13
          Caption = 'DIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object DBE_VLRAVEN: TDBEdit
          Left = 215
          Top = 7
          Width = 100
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'VLRAVEN'
          DataSource = DsConsE301Tcr
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBE_VLRVEN: TDBEdit
          Left = 399
          Top = 7
          Width = 100
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'VLRVEN'
          DataSource = DsConsE301Tcr
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EdVlrUpe: TCurrencyEdit
          Left = 241
          Top = 34
          Width = 90
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          TabStop = False
          Ctl3D = False
          DisplayFormat = ' ,0.00;- ,0.00'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object EdDatUpe: TDateEdit
          Left = 143
          Top = 34
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EdVlrUfa: TCurrencyEdit
          Left = 241
          Top = 59
          Width = 90
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          TabStop = False
          Ctl3D = False
          DisplayFormat = ' ,0.00;- ,0.00'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object EdDatUfa: TDateEdit
          Left = 143
          Top = 59
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object EdUltNfv: TEdit
          Left = 337
          Top = 59
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object EdUltSnf: TEdit
          Left = 433
          Top = 59
          Width = 53
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object EdDatUpg: TDateEdit
          Left = 143
          Top = 84
          Width = 90
          Height = 19
          TabStop = False
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
        end
        object EdVlrUpg: TCurrencyEdit
          Left = 241
          Top = 84
          Width = 90
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          TabStop = False
          Ctl3D = False
          DisplayFormat = ' ,0.00;- ,0.00'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object EdMaiAtr: TCurrencyEdit
          Left = 144
          Top = 108
          Width = 54
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          TabStop = False
          Ctl3D = False
          DisplayFormat = '0'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 10
        end
        object EdVlrAtr: TCurrencyEdit
          Left = 241
          Top = 108
          Width = 90
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          TabStop = False
          Ctl3D = False
          DisplayFormat = ',0.00'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
        end
      end
    end
  end
  object DsComparativoComprasCli: TDataSource
    AutoEdit = False
    DataSet = DmOra.ComparativoComprasCli
    Left = 744
    Top = 16
  end
  object ImageList1: TImageList
    Left = 840
    Top = 48
    Bitmap = {
      494C010101001400480010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000BF0080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BF000000BF000000BF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000BF0080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000BF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000BF0080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BF000000BF000000BF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BF000000BF000000BF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BF000000BF000000BF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BF000000BF000000BF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BF000000BF000000BF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BF000000BF000000BF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000BF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FE3F000000000000
      FE3F000000000000FE3F000000000000FFFF000000000000FF7F000000000000
      FE3F000000000000FE3F000000000000FE3F000000000000FE3F000000000000
      FE3F000000000000FE3F000000000000FE3F000000000000FF7F000000000000
      FFFF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object DsComparativoComprasCliMes: TDataSource
    DataSet = DmOra.ComparativoComprasCliMes
    Left = 616
    Top = 48
  end
  object DsConsE301Tcr: TDataSource
    DataSet = DmOra.ConsE301Tcr
    Left = 648
    Top = 8
  end
end
