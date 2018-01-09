object FControleConexaoTelas: TFControleConexaoTelas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de Conexao de Telas'
  ClientHeight = 444
  ClientWidth = 865
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 640
    Top = 16
    Width = 38
    Height = 13
    Caption = 'Espera'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 184
    Top = 16
    Width = 47
    Height = 13
    Caption = 'Logados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 392
    Width = 87
    Height = 13
    Caption = 'Limite Usu'#225'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 56
    Top = 419
    Width = 47
    Height = 13
    Caption = 'Logados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 36
    Width = 425
    Height = 345
    DataSource = dsClientLogados
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'APPUSR'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMNAM'
        Title.Alignment = taCenter
        Title.Caption = 'Computador'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USRNAM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APPNAM'
        Visible = True
      end>
  end
  object dbg2: TDBGrid
    Left = 440
    Top = 36
    Width = 425
    Height = 345
    DataSource = dsEspera
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'APPUSR'
        Title.Alignment = taCenter
        Title.Caption = 'Espera'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMNAM'
        Title.Alignment = taCenter
        Title.Caption = 'Computador'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMSEC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USRNAM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APPNAM'
        Visible = True
      end>
  end
  object edtLimite: TCurrencyEdit
    Left = 108
    Top = 389
    Width = 80
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    TabStop = False
    Alignment = taCenter
    DisplayFormat = '0'
    TabOrder = 2
  end
  object btnAtualizar: TBitBtn
    Left = 196
    Top = 387
    Width = 75
    Height = 51
    Caption = 'Atualizar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnAtualizarClick
  end
  object edtQtdLogado: TCurrencyEdit
    Left = 108
    Top = 416
    Width = 80
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    TabStop = False
    Alignment = taCenter
    DisplayFormat = '0'
    ReadOnly = True
    TabOrder = 4
  end
  object btnLiberar: TBitBtn
    Left = 277
    Top = 387
    Width = 145
    Height = 25
    Caption = 'Liberar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btnLiberarClick
  end
  object btnBloquear: TBitBtn
    Left = 279
    Top = 413
    Width = 145
    Height = 25
    Caption = 'Bloquear'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = btnBloquearClick
  end
  object Logados: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select r911sec.*, r911mod.* from r911sec'
      'inner join r911mod on r911mod.numsec = r911sec.numsec'
      'where'
      'r911mod.modnam = '#39'All'#39
      'order by r911sec.numsec')
    Left = 168
    Top = 96
    object LogadosNUMSEC: TBCDField
      FieldName = 'NUMSEC'
      Precision = 14
      Size = 0
    end
    object LogadosDATTIM: TFMTBCDField
      FieldName = 'DATTIM'
      Precision = 14
      Size = 6
    end
    object LogadosCOMNAM: TStringField
      FieldName = 'COMNAM'
      Size = 30
    end
    object LogadosUSRNAM: TStringField
      FieldName = 'USRNAM'
      Size = 30
    end
    object LogadosAPPNAM: TStringField
      FieldName = 'APPNAM'
      Size = 255
    end
    object LogadosAPPUSR: TStringField
      FieldName = 'APPUSR'
      Size = 30
    end
    object LogadosIDINST: TIntegerField
      FieldName = 'IDINST'
    end
    object LogadosNUMSEC_1: TBCDField
      FieldName = 'NUMSEC_1'
      Precision = 14
      Size = 0
    end
    object LogadosMODNAM: TStringField
      FieldName = 'MODNAM'
      Size = 30
    end
  end
  object Espera: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select r911sec.*, r911mod.* from r911sec'
      'inner join r911mod on r911mod.numsec = r911sec.numsec'
      'where'
      'r911mod.modnam = '#39'A'#39
      'order by r911sec.numsec')
    Left = 608
    Top = 144
    object EsperaNUMSEC: TBCDField
      FieldName = 'NUMSEC'
      Precision = 14
      Size = 0
    end
    object EsperaDATTIM: TFMTBCDField
      FieldName = 'DATTIM'
      Precision = 14
      Size = 6
    end
    object EsperaCOMNAM: TStringField
      FieldName = 'COMNAM'
      Size = 30
    end
    object EsperaUSRNAM: TStringField
      FieldName = 'USRNAM'
      Size = 30
    end
    object EsperaAPPNAM: TStringField
      FieldName = 'APPNAM'
      Size = 255
    end
    object EsperaAPPUSR: TStringField
      FieldName = 'APPUSR'
      Size = 30
    end
    object EsperaIDINST: TIntegerField
      FieldName = 'IDINST'
    end
    object EsperaNUMSEC_1: TBCDField
      FieldName = 'NUMSEC_1'
      Precision = 14
      Size = 0
    end
    object EsperaMODNAM: TStringField
      FieldName = 'MODNAM'
      Size = 30
    end
  end
  object CadR911Mod: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numsec'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from r911mod where numsec = :numsec')
    Left = 608
    Top = 392
    object CadR911ModNUMSEC: TBCDField
      FieldName = 'NUMSEC'
      Precision = 14
      Size = 0
    end
    object CadR911ModMODNAM: TStringField
      FieldName = 'MODNAM'
      Size = 30
    end
  end
  object ClientLogados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderLogados'
    Left = 168
    Top = 216
    object ClientLogadosNUMSEC: TBCDField
      FieldName = 'NUMSEC'
      Precision = 14
      Size = 0
    end
    object ClientLogadosDATTIM: TFMTBCDField
      FieldName = 'DATTIM'
      Precision = 14
      Size = 6
    end
    object ClientLogadosCOMNAM: TStringField
      FieldName = 'COMNAM'
      Size = 30
    end
    object ClientLogadosUSRNAM: TStringField
      FieldName = 'USRNAM'
      Size = 30
    end
    object ClientLogadosAPPNAM: TStringField
      FieldName = 'APPNAM'
      Size = 255
    end
    object ClientLogadosAPPUSR: TStringField
      FieldName = 'APPUSR'
      Size = 30
    end
    object ClientLogadosIDINST: TIntegerField
      FieldName = 'IDINST'
    end
    object ClientLogadosNUMSEC_1: TBCDField
      FieldName = 'NUMSEC_1'
      Precision = 14
      Size = 0
    end
    object ClientLogadosMODNAM: TStringField
      FieldName = 'MODNAM'
      Size = 30
    end
  end
  object ProviderLogados: TDataSetProvider
    DataSet = Logados
    Left = 168
    Top = 152
  end
  object dsClientLogados: TDataSource
    DataSet = ClientLogados
    Left = 168
    Top = 272
  end
  object dsEspera: TDataSource
    DataSet = Espera
    Left = 608
    Top = 192
  end
end
