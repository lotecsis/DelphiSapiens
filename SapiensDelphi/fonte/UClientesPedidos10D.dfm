object FClientesPedidos10D: TFClientesPedidos10D
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    'Rela'#231#227'o de Clientes P/Consulta de Pedidos com mais de 10 dias na' +
    ' empresa'
  ClientHeight = 619
  ClientWidth = 537
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 521
    Height = 601
    DataSource = DsCadUSU_T085TEP
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColExit = DBGrid1ColExit
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_CODCLI'
        Title.Alignment = taCenter
        Title.Caption = 'CODIGO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMCLI'
        Title.Alignment = taCenter
        Title.Caption = 'NOME'
        Width = 380
        Visible = True
      end>
  end
  object CadUSU_T085TEP: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    BeforePost = CadUSU_T085TEPBeforePost
    AfterPost = CadUSU_T085TEPAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM USU_T085TEP')
    Left = 336
    Top = 304
    object CadUSU_T085TEPUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object CadUSU_T085TEPUSU_NOMCLI: TStringField
      FieldName = 'USU_NOMCLI'
      Size = 100
    end
  end
  object DsCadUSU_T085TEP: TDataSource
    DataSet = CadUSU_T085TEP
    OnStateChange = DsCadUSU_T085TEPStateChange
    Left = 304
    Top = 176
  end
  object ConsE085Cli: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codcli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e085cli.nomcli from e085cli where codcli = :codcli')
    Left = 312
    Top = 384
    object ConsE085CliNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
  end
end
