object FListaOnlineSERASA: TFListaOnlineSERASA
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'ListaOnline SERASA'
  ClientHeight = 623
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 10
    Width = 37
    Height = 13
    Caption = 'Arquivo'
  end
  object Label2: TLabel
    Left = 6
    Top = 41
    Width = 24
    Height = 13
    Caption = 'Filtro'
  end
  object dbg1: TDBGrid
    Left = -2
    Top = 98
    Width = 997
    Height = 526
    DataSource = dsClientConsUSU_TE085SERA
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = dbg1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'USU_IDCLI'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CODCLI'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo Sapiens'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CIDCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_SIGUFS'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_ENDCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Endere'#231'o'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CEPCLI'
        Title.Alignment = taCenter
        Title.Caption = 'CEP Inicial'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CEPINI'
        Title.Alignment = taCenter
        Title.Caption = 'CEP Final'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_BAICLI'
        Title.Alignment = taCenter
        Title.Caption = 'Bairro'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_FONCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Fone'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_FONCL2'
        Title.Alignment = taCenter
        Title.Caption = 'Fone'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_FONCL3'
        Title.Alignment = taCenter
        Title.Caption = 'Fone'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_DATCAD'
        Title.Alignment = taCenter
        Title.Caption = 'Data Cad.'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_DATIMP'
        Title.Alignment = taCenter
        Title.Caption = 'Data Importa'#231#227'o'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CGCCPF'
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_EMANFE'
        Title.Alignment = taCenter
        Title.Caption = 'Email'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_CNAI'
        Title.Alignment = taCenter
        Title.Caption = 'CNAI'
        Width = 100
        Visible = True
      end>
  end
  object btnImportar: TBitBtn
    Left = 911
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Importar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnImportarClick
  end
  object edtArquivo: TEdit
    Left = 46
    Top = 7
    Width = 366
    Height = 21
    TabOrder = 2
  end
  object btnBuscarArq: TBitBtn
    Left = 412
    Top = 7
    Width = 21
    Height = 21
    Caption = '...'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    TabStop = False
    OnClick = btnBuscarArqClick
  end
  object pnl1: TPanel
    Left = 6
    Top = 56
    Width = 983
    Height = 36
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 4
    object Label3: TLabel
      Left = 16
      Top = 9
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object btnFiltrar: TBitBtn
      Left = 901
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      TabStop = False
      OnClick = btnFiltrarClick
    end
    object edtCidade: TEdit
      Left = 54
      Top = 6
      Width = 243
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnChange = edtCidadeChange
    end
  end
  object dsClientConsUSU_TE085SERA: TDataSource
    DataSet = DmOra.ClientConsUSU_TE085SERA
    Left = 472
    Top = 192
  end
  object dlgOpen: TOpenDialog
    Left = 448
    Top = 8
  end
end
