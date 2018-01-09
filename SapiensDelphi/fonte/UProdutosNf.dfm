object FProdutosNf: TFProdutosNf
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Produtos NF'
  ClientHeight = 401
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dbg1: TDBGrid
    Left = -1
    Top = 0
    Width = 822
    Height = 401
    DataSource = dsClientConsProdutosNF
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPLIPV'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'Deriva'#231#227'o'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODTPR'
        Title.Alignment = taCenter
        Title.Caption = 'Tab.Pre'#231'o'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PREUNI'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Unit.'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VALOR_TABELA'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Tabela'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PERCOM'
        Title.Alignment = taCenter
        Title.Caption = '% Comiss'#227'o'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnPerDesc'
        Title.Alignment = taCenter
        Title.Caption = '% Desconto'
        Width = 70
        Visible = True
      end>
  end
  object dsClientConsProdutosNF: TDataSource
    DataSet = DmOra.ClientConsProdutosNF
    Left = 736
    Top = 96
  end
end
