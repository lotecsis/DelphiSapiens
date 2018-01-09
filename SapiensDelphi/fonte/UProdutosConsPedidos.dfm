object FProdutosConsPedidos: TFProdutosConsPedidos
  Left = 0
  Top = 0
  Caption = 'Produtos '
  ClientHeight = 618
  ClientWidth = 848
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
  object Panel1: TPanel
    Left = 0
    Top = 569
    Width = 848
    Height = 49
    Align = alBottom
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 608
      Height = 47
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitHeight = 96
      object Label1: TLabel
        Left = 8
        Top = 4
        Width = 70
        Height = 13
        Caption = 'Qtd.  Pedida:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 149
        Top = 4
        Width = 87
        Height = 13
        Caption = 'Qtd. Cancelada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 290
        Top = 4
        Width = 80
        Height = 13
        Caption = 'Qtd. Faturada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 431
        Top = 4
        Width = 68
        Height = 13
        Caption = 'Qtd. Aberto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdTotAbe: TCurrencyEdit
        Left = 431
        Top = 21
        Width = 100
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabStop = False
        DisplayFormat = '0;- 0'
        ReadOnly = True
        TabOrder = 0
      end
      object EdTotPed: TCurrencyEdit
        Left = 8
        Top = 21
        Width = 100
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabStop = False
        DisplayFormat = '0;- 0'
        ReadOnly = True
        TabOrder = 1
      end
      object EdTotCan: TCurrencyEdit
        Left = 149
        Top = 21
        Width = 100
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabStop = False
        DisplayFormat = '0;- 0'
        ReadOnly = True
        TabOrder = 2
      end
      object EdTotFat: TCurrencyEdit
        Left = 290
        Top = 21
        Width = 100
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabStop = False
        DisplayFormat = '0;- 0'
        ReadOnly = True
        TabOrder = 3
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 848
    Height = 569
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 96
    ExplicitTop = 256
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 846
      Height = 567
      Align = alClient
      DataSource = DsConsDistintaProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
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
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODPRO'
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESPRO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESDER'
          Title.Alignment = taCenter
          Title.Caption = 'Deriva'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 130
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDPED'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Pedida'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDCAN'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Cancelada'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDFAT'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Faturada'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDABE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Aberto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end>
    end
  end
  object DsConsDistintaProdutos: TDataSource
    DataSet = Dm2.ConsDistintaProdutos
    Left = 520
    Top = 256
  end
end
