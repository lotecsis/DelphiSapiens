object FConsObsPedidos: TFConsObsPedidos
  Left = 0
  Top = 0
  Caption = 'Consulta Observa'#231#245'es'
  ClientHeight = 503
  ClientWidth = 933
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
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 933
    Height = 42
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 878
    object EdDatIni: TDateEdit
      Left = 8
      Top = 11
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object EdDatFim: TDateEdit
      Left = 128
      Top = 11
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object BMostrar: TBitBtn
      Left = 836
      Top = 9
      Width = 91
      Height = 25
      Caption = 'Mostrar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BMostrarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 42
    Width = 933
    Height = 453
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 208
    ExplicitTop = 136
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 931
      Height = 58
      Align = alTop
      TabOrder = 0
      object LDsCli: TLabel
        Left = 10
        Top = 4
        Width = 4
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 10
        Top = 22
        Width = 19
        Height = 17
        DataField = 'CODREP'
        DataSource = DsConsE120Obs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 40
        Top = 22
        Width = 137
        Height = 17
        DataField = 'APEREP'
        DataSource = DsConsE120Obs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 10
        Top = 39
        Width = 41
        Height = 13
        Caption = 'Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 56
        Top = 39
        Width = 57
        Height = 17
        DataField = 'NUMPED'
        DataSource = DsConsE120Obs
      end
      object Label2: TLabel
        Left = 143
        Top = 39
        Width = 49
        Height = 13
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 312
        Top = 39
        Width = 32
        Height = 13
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 195
        Top = 39
        Width = 91
        Height = 17
        DataField = 'DATEMI'
        DataSource = DsConsE120Obs
      end
      object DBText5: TDBText
        Left = 348
        Top = 39
        Width = 65
        Height = 17
        DataField = 'VLRLIQ'
        DataSource = DsConsE120Obs
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 59
      Width = 931
      Height = 293
      Align = alClient
      DataSource = DsConsE120Obs
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'CODFIL'
          Title.Alignment = taCenter
          Title.Caption = 'FILIAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMPED'
          Title.Alignment = taCenter
          Title.Caption = 'PEDIDO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SEQOBS'
          Title.Caption = 'SEQ.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSPED'
          Title.Alignment = taCenter
          Title.Caption = 'OBSERVA'#199#195'O'
          Width = 480
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSUSU'
          Title.Alignment = taCenter
          Title.Caption = 'USUARIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSDAT'
          Title.Alignment = taCenter
          Title.Caption = 'DAT.GER.'
          Width = 100
          Visible = True
        end>
    end
    object Panel5: TPanel
      Left = 1
      Top = 352
      Width = 931
      Height = 100
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 304
      ExplicitWidth = 876
      object DBObs: TDBMemo
        Left = 4
        Top = 6
        Width = 922
        Height = 89
        Color = clWhite
        DataField = 'OBSPED'
        DataSource = DsConsE120Obs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 495
    Width = 933
    Height = 8
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 494
    ExplicitWidth = 878
  end
  object ConsE120Obs: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsE120ObsAfterScroll
    Parameters = <
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E120OBS.*,E120PED.CODCLI,E120PED.DATEMI,E120PED.VLRLIQ,E1' +
        '20PED.SITPED,E120PED.CODREP,'
      
        '       E085CLI.NOMCLI,E085CLI.CGCCPF,E085CLI.ENDCLI,E085CLI.CEPC' +
        'LI,E085CLI.BAICLI,E085CLI.NENCLI,E085CLI.FONCLI,'
      
        '       E085CLI.CIDCLI,E085CLI.SIGUFS,E090REP.NOMREP,E090REP.APER' +
        'EP'
      '       FROM E120OBS'
      'INNER JOIN E120PED ON E120PED.CODEMP = E120OBS.CODEMP AND'
      '                      E120PED.CODFIL = E120OBS.CODFIL AND'
      '                      E120PED.NUMPED = E120OBS.NUMPED'
      'INNER JOIN E085CLI ON E085CLI.CODCLI = E120PED.CODCLI'
      'INNER JOIN E090REP ON E090REP.CODREP = E120PED.CODREP'
      ''
      '                      WHERE'
      
        '                      E120PED.DATGER BETWEEN :DATINI AND :DATFIM' +
        ' AND'
      '                      E120OBS.TIPOBS = '#39'M'#39
      '                      ORDER BY E120PED.NUMPED')
    Left = 536
    Top = 264
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
    object ConsE120ObsCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE120ObsDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsE120ObsVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE120ObsSITPED: TIntegerField
      FieldName = 'SITPED'
    end
    object ConsE120ObsCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE120ObsNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsE120ObsCGCCPF: TBCDField
      FieldName = 'CGCCPF'
      Precision = 14
      Size = 0
    end
    object ConsE120ObsENDCLI: TStringField
      FieldName = 'ENDCLI'
      Size = 100
    end
    object ConsE120ObsCEPCLI: TIntegerField
      FieldName = 'CEPCLI'
    end
    object ConsE120ObsBAICLI: TStringField
      FieldName = 'BAICLI'
      Size = 75
    end
    object ConsE120ObsCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsE120ObsSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsE120ObsNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ConsE120ObsAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ConsE120ObsNENCLI: TStringField
      FieldName = 'NENCLI'
      Size = 60
    end
    object ConsE120ObsFONCLI: TStringField
      FieldName = 'FONCLI'
    end
  end
  object DsConsE120Obs: TDataSource
    DataSet = ConsE120Obs
    Left = 488
    Top = 120
  end
end
