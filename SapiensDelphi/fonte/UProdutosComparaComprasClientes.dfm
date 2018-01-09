object FProdutosComparaComprasClientes: TFProdutosComparaComprasClientes
  Left = 0
  Top = 0
  Caption = 'Listagem de Produtos'
  ClientHeight = 447
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 590
    Height = 433
    DataSource = DsProdComparativoComprasCli
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'PRODUTO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPRO'
        Title.Alignment = taCenter
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDFAT'
        Title.Alignment = taCenter
        Title.Caption = 'QUANTIDADE'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRBRU'
        Title.Alignment = taCenter
        Title.Caption = 'VALOR'
        Width = 100
        Visible = True
      end>
  end
  object DsProdComparativoComprasCli: TDataSource
    DataSet = DmOra.ProdComparativoComprasCli
    Left = 384
    Top = 168
  end
end
