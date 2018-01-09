object FVisuObsPedAst: TFVisuObsPedAst
  Left = 0
  Top = 0
  Caption = 'Observa'#231#245'es'
  ClientHeight = 444
  ClientWidth = 912
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 912
    Height = 444
    Align = alClient
    DataSource = DsConsE120Obs
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'SEQOBS'
        Title.Alignment = taCenter
        Title.Caption = 'SEQ.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOBS'
        Title.Alignment = taCenter
        Title.Caption = 'TIPO'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSPED'
        Title.Alignment = taCenter
        Title.Caption = 'OBSERVA'#199#195'O'
        Width = 780
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSDAT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSHOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLOBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLUSU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLDAT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLHOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITOBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AREOBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APRRPR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEQIPD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEQISP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NUMCOM'
        Visible = True
      end>
  end
  object ConsE120Obs: TADOQuery
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
        Name = 'NUMPED'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM E120OBS WHERE CODEMP = :CODEMP AND'
      '                            CODFIL = :CODFIL AND'
      '                            NUMPED = :NUMPED')
    Left = 384
    Top = 88
    object ConsE120ObsCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120ObsCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120ObsNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120ObsSEQOBS: TIntegerField
      FieldName = 'SEQOBS'
    end
    object ConsE120ObsTIPOBS: TStringField
      FieldName = 'TIPOBS'
      Size = 1
    end
    object ConsE120ObsCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE120ObsOBSPED: TStringField
      FieldName = 'OBSPED'
      Size = 250
    end
    object ConsE120ObsOBSUSU: TBCDField
      FieldName = 'OBSUSU'
      Precision = 10
      Size = 0
    end
    object ConsE120ObsOBSDAT: TDateTimeField
      FieldName = 'OBSDAT'
    end
    object ConsE120ObsOBSHOR: TIntegerField
      FieldName = 'OBSHOR'
    end
    object ConsE120ObsSOLOBS: TStringField
      FieldName = 'SOLOBS'
      Size = 250
    end
    object ConsE120ObsSOLUSU: TBCDField
      FieldName = 'SOLUSU'
      Precision = 10
      Size = 0
    end
    object ConsE120ObsSOLDAT: TDateTimeField
      FieldName = 'SOLDAT'
    end
    object ConsE120ObsSOLHOR: TIntegerField
      FieldName = 'SOLHOR'
    end
    object ConsE120ObsSITOBS: TStringField
      FieldName = 'SITOBS'
      Size = 1
    end
    object ConsE120ObsAREOBS: TStringField
      FieldName = 'AREOBS'
      Size = 3
    end
    object ConsE120ObsAPRRPR: TStringField
      FieldName = 'APRRPR'
      Size = 1
    end
    object ConsE120ObsSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsE120ObsSEQISP: TIntegerField
      FieldName = 'SEQISP'
    end
    object ConsE120ObsUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
  end
  object DsConsE120Obs: TDataSource
    DataSet = ConsE120Obs
    Left = 528
    Top = 176
  end
end
