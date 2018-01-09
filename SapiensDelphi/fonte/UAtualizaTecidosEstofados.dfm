object FAtualizaTecidosEstofados: TFAtualizaTecidosEstofados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Atualizar Consumo de Tecido'
  ClientHeight = 407
  ClientWidth = 768
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
    Width = 768
    Height = 407
    ActivePage = tbConsulta
    Align = alClient
    TabOrder = 0
    object tbCadastro: TTabSheet
      Caption = 'Cadastro'
      object lbl1: TLabel
        Left = 8
        Top = 35
        Width = 45
        Height = 13
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 8
        Top = 91
        Width = 53
        Height = 13
        Caption = 'Cor '#218'nica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 210
        Top = 91
        Width = 22
        Height = 13
        Caption = 'Liso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 380
        Top = 91
        Width = 31
        Height = 13
        Caption = 'Floral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbeCODPRO: TDBEdit
        Left = 58
        Top = 32
        Width = 121
        Height = 21
        TabStop = False
        DataField = 'CODPRO'
        DataSource = dsConsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEDESPRO: TDBEdit
        Left = 185
        Top = 32
        Width = 354
        Height = 21
        TabStop = False
        DataField = 'DESPRO'
        DataSource = dsConsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object dbg1: TDBGrid
        Left = -2
        Top = 139
        Width = 764
        Height = 241
        DataSource = dsConsDerivacoes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 6
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
            Title.Caption = 'PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESPRO'
            Title.Alignment = taCenter
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 230
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODDER'
            Title.Alignment = taCenter
            Title.Caption = 'DERIVA'#199#195'O'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CORUNI'
            Title.Alignment = taCenter
            Title.Caption = 'COR UNICA'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CMP1BB'
            Title.Alignment = taCenter
            Title.Caption = 'LISO'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CMP1AE'
            Title.Alignment = taCenter
            Title.Caption = 'FLORAL'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_DATATU'
            Title.Alignment = taCenter
            Title.Caption = 'ATUALIZADO'
            Width = 80
            Visible = True
          end>
      end
      object edtLiso: TCurrencyEdit
        Left = 239
        Top = 88
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DisplayFormat = ' ,0.00;- ,0.00'
        TabOrder = 3
      end
      object edtFlorido: TCurrencyEdit
        Left = 418
        Top = 88
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DisplayFormat = ' ,0.00;- ,0.00'
        TabOrder = 4
      end
      object edtUnica: TCurrencyEdit
        Left = 68
        Top = 88
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DisplayFormat = ' ,0.00;- ,0.00'
        TabOrder = 2
      end
      object btnAtualizar: TBitBtn
        Left = 552
        Top = 86
        Width = 75
        Height = 25
        Caption = 'Atualizar'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 5
        TabStop = False
        OnClick = btnAtualizarClick
      end
    end
    object tbConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object Label1: TLabel
        Left = 11
        Top = 19
        Width = 50
        Height = 13
        Caption = 'Pesquisa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtPesquisa: TEdit
        Left = 67
        Top = 14
        Width = 513
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnChange = edtPesquisaChange
      end
      object DBGrid1: TDBGrid
        Left = -3
        Top = 52
        Width = 764
        Height = 293
        DataSource = dsConsProdutos
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODPRO'
            Title.Alignment = taCenter
            Title.Caption = 'PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESPRO'
            Title.Alignment = taCenter
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 220
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODDER'
            Title.Alignment = taCenter
            Title.Caption = 'DERIVA'#199#195'O'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CORUNI'
            Title.Alignment = taCenter
            Title.Caption = 'COR UNICA'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CMP1BB'
            Title.Alignment = taCenter
            Title.Caption = 'LISO'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CMP1AE'
            Title.Alignment = taCenter
            Title.Caption = 'FLORAL'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_DATATU'
            Title.Alignment = taCenter
            Title.Caption = 'ATUALIZADO'
            Width = 100
            Visible = True
          end>
      end
      object btnSelecionar: TBitBtn
        Left = 682
        Top = 351
        Width = 75
        Height = 25
        Caption = 'Selecioar'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = btnSelecionarClick
      end
    end
  end
  object ConsProdutos: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsProdutosAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT e075der.codpro,e075pro.despro,e075der.codder,'
      
        'e075der.usu_coruni,e075der.usu_cmp1bb,e075der.usu_cmp1ae,e075pro' +
        '.usu_datatu'
      'FROM E075DER'
      'INNER JOIN E075PRO ON E075PRO.CODEMP = E075DER.CODEMP AND'
      '                      E075PRO.CODPRO = E075DER.CODPRO'
      'WHERE'
      'E075PRO.CODORI = 01 AND'
      'E075PRO.CODAGP = '#39'ESTOF'#39
      'order by e075pro.codpro,e075der.codder')
    Left = 304
    Top = 144
    object ConsProdutosCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsProdutosDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsProdutosCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsProdutosUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object ConsProdutosUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object ConsProdutosUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object ConsProdutosUSU_DATATU: TDateTimeField
      FieldName = 'USU_DATATU'
    end
  end
  object dsConsProdutos: TDataSource
    DataSet = ConsProdutos
    Left = 440
    Top = 192
  end
  object ConsDerivacoes: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT e075der.codpro,e075pro.despro,e075der.codder,'
      
        'e075der.usu_coruni,e075der.usu_cmp1bb,e075der.usu_cmp1ae,e075pro' +
        '.usu_datatu'
      'FROM E075DER'
      'INNER JOIN E075PRO ON E075PRO.CODEMP = E075DER.CODEMP AND'
      '                      E075PRO.CODPRO = E075DER.CODPRO'
      'WHERE'
      'E075PRO.CODEMP = 1 AND'
      'E075PRO.CODORI = 01 AND'
      'E075PRO.CODAGP = '#39'ESTOF'#39' AND'
      'E075PRO.CODPRO = :CODPRO'
      'order by e075pro.codpro,e075der.codder')
    Left = 224
    Top = 168
    object ConsDerivacoesCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsDerivacoesDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsDerivacoesCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsDerivacoesUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object ConsDerivacoesUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object ConsDerivacoesUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object ConsDerivacoesUSU_DATATU: TDateTimeField
      FieldName = 'USU_DATATU'
    end
  end
  object dsConsDerivacoes: TDataSource
    DataSet = ConsDerivacoes
    Left = 352
    Top = 192
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 184
    Top = 232
  end
end
