object FAtuzlia_E075Pro_ServerRep: TFAtuzlia_E075Pro_ServerRep
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Atualiza Tabela de Produtos do ServerRep'
  ClientHeight = 363
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -27
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 33
  object BAtualiza: TBitBtn
    Left = 8
    Top = 46
    Width = 350
    Height = 145
    Caption = 'Atualizar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BAtualizaClick
  end
  object BAtualizaCidades: TBitBtn
    Left = 112
    Top = 240
    Width = 121
    Height = 25
    Caption = 'Atualizar Cidades'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
    OnClick = BAtualizaCidadesClick
  end
  object ConsE075Pro: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select e075pro.codemp,e075pro.codpro,e075pro.despro from e075pro'
      '                          where'
      '                          e075pro.codori in ('#39'1'#39','#39'2'#39') and'
      '                          e075pro.sitpro = '#39'A'#39
      '                          order by e075pro.codpro')
    Left = 304
    Top = 8
    object ConsE075ProCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE075ProCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE075ProDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object E075pro: TIBDataSet
    Database = DmFire.IBDBanco
    Transaction = DmFire.IBTransacao
    DeleteSQL.Strings = (
      'delete from e075pro'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO')
    InsertSQL.Strings = (
      'insert into e075pro'
      '  (CODEMP, CODPRO, DESPRO)'
      'values'
      '  (:CODEMP, :CODPRO, :DESPRO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODEMP,'
      '  CODPRO,'
      '  DESPRO'
      'from e075pro '
      'where'
      '  CODEMP = :CODEMP and'
      '  CODPRO = :CODPRO')
    SelectSQL.Strings = (
      'select e075pro.* from e075pro'
      '                      where'
      '                      e075pro.codemp = :codemp and'
      '                      e075pro.codpro = :codpro')
    ModifySQL.Strings = (
      'update e075pro'
      'set'
      '  CODEMP = :CODEMP,'
      '  CODPRO = :CODPRO,'
      '  DESPRO = :DESPRO'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODPRO = :OLD_CODPRO')
    Left = 160
    Top = 24
    object E075proCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = '"E075PRO"."CODEMP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object E075proCODPRO: TIBStringField
      FieldName = 'CODPRO'
      Origin = '"E075PRO"."CODPRO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object E075proDESPRO: TIBStringField
      FieldName = 'DESPRO'
      Origin = '"E075PRO"."DESPRO"'
      Size = 50
    end
  end
  object ConsE008Cep: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT(NOMCID),SIGUFS FROM E008CEP'
      '                               ORDER BY NOMCID')
    Left = 264
    Top = 296
    object ConsE008CepNOMCID: TStringField
      FieldName = 'NOMCID'
      ReadOnly = True
      Size = 60
    end
    object ConsE008CepSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
  end
  object CadUsu_TCidades: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codcid'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tCidades'
      '                        where'
      '                        usu_codcid = :codcid')
    Left = 184
    Top = 288
    object CadUsu_TCidadesUSU_CODCID: TIntegerField
      FieldName = 'USU_CODCID'
    end
    object CadUsu_TCidadesUSU_NOMCID: TStringField
      FieldName = 'USU_NOMCID'
      Size = 60
    end
    object CadUsu_TCidadesUSU_SIGUFS: TStringField
      FieldName = 'USU_SIGUFS'
      Size = 2
    end
    object CadUsu_TCidadesUSU_TOTPOP: TBCDField
      FieldName = 'USU_TOTPOP'
      Precision = 10
      Size = 0
    end
  end
end
