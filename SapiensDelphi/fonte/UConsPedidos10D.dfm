object FConsPedidos10D: TFConsPedidos10D
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pedidos com mais de 10 dias na empresa'
  ClientHeight = 571
  ClientWidth = 943
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
  object Label1: TLabel
    Left = 4
    Top = 6
    Width = 48
    Height = 14
    Caption = 'Pedidos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 4
    Top = 309
    Width = 57
    Height = 14
    Caption = 'Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 4
    Top = 24
    Width = 933
    Height = 273
    DataSource = DsClientPedidos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        FieldName = 'NUMPED'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATEMI'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDDIA'
        Title.Alignment = taCenter
        Title.Caption = 'Dias'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRPED'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 210
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SIGUFS'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FONCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Fone'
        Width = 90
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 4
    Top = 326
    Width = 933
    Height = 224
    DataSource = DsConsE120Ipd
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
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
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'Deriv.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPLIPD'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 260
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDPED'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pedida'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDCAN'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Canc.'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDABE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Aberto'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PREUNI'
        Title.Alignment = taCenter
        Title.Caption = 'R$ Unit.'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_TOTDSC'
        Title.Alignment = taCenter
        Title.Caption = '% Desc.'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRBRU'
        Title.Alignment = taCenter
        Title.Caption = 'Total Bruto'
        Width = 90
        Visible = True
      end>
  end
  object ConsUsu_T085Tep: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM USU_T085Tep')
    Left = 776
    Top = 280
    object ConsUsu_T085TepUSU_CODCLI: TIntegerField
      FieldName = 'USU_CODCLI'
    end
    object ConsUsu_T085TepUSU_NOMCLI: TStringField
      FieldName = 'USU_NOMCLI'
      Size = 100
    end
  end
  object ConsPedidos: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DATEMI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'CODCLI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E120PED.CODEMP,E120PED.CODFIL,E120PED.NUMPED,E120PED.TNSP' +
        'RO,E120PED.DATEMI, E120PED.CODCLI,'
      '       (SELECT SUM(E120IPD.QTDABE * E120IPD.PREUNI) FROM E120IPD'
      
        '                            WHERE E120IPD.CODEMP = E120PED.CODEM' +
        'P AND'
      
        '                                  E120IPD.CODFIL = E120PED.CODFI' +
        'L AND'
      
        '                                  E120IPD.NUMPED = E120PED.NUMPE' +
        'D) AS TOTPED,'
      
        '       E085CLI.NOMCLI,E085CLI.CIDCLI,E085CLI.SIGUFS,E085CLI.FONC' +
        'LI'
      '                            FROM E120PED'
      'INNER JOIN E085CLI ON E085CLI.CODCLI = E120PED.CODCLI'
      '                            WHERE SITPED IN (1,2) AND'
      '                            E120PED.CODFIL = 1 AND'
      
        '                            E120PED.TNSPRO IN ('#39'90100'#39','#39'90106'#39') ' +
        'AND'
      '                            E120PED.DATEMI <= :DATEMI AND'
      '                            E120PED.CODCLI = :CODCLI'
      '                            ORDER BY E120PED.DATEMI')
    Left = 784
    Top = 384
    object ConsPedidosCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsPedidosCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsPedidosNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsPedidosTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsPedidosDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsPedidosTOTPED: TFMTBCDField
      FieldName = 'TOTPED'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object ConsPedidosNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsPedidosCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsPedidosSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsPedidosCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsPedidosFONCLI: TStringField
      FieldName = 'FONCLI'
    end
  end
  object DsClientPedidos: TDataSource
    AutoEdit = False
    DataSet = ClientPedidos
    Left = 632
    Top = 384
  end
  object ConsE120Ipd: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMPED'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E120IPD.CODPRO,E120IPD.CODDER,E120IPD.CPLIPD,E120IPD.QTDP' +
        'ED,E120IPD.QTDCAN,E120IPD.QTDABE,'
      '       E120IPD.PREUNI,E120IPD.VLRBRU,E120IPD.USU_TOTDSC'
      '        FROM E120IPD'
      'INNER JOIN E120PED ON E120PED.CODEMP = E120IPD.CODEMP AND'
      '                      E120PED.CODFIL = E120IPD.CODFIL AND'
      '                      E120PED.NUMPED = E120IPD.NUMPED'
      '                      WHERE'
      '                      E120PED.CODFIL = 1 AND'
      '                      E120PED.NUMPED = :NUMPED'
      '                      ORDER BY E120IPD.SEQIPD')
    Left = 536
    Top = 384
    object ConsE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE120IpdCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object ConsE120IpdQTDPED: TFMTBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDCAN: TFMTBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDABE: TFMTBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdPREUNI: TFMTBCDField
      FieldName = 'PREUNI'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdUSU_TOTDSC: TBCDField
      FieldName = 'USU_TOTDSC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 5
      Size = 2
    end
  end
  object DsConsE120Ipd: TDataSource
    DataSet = ConsE120Ipd
    Left = 536
    Top = 432
  end
  object ClientPedidos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    AfterScroll = ClientPedidosAfterScroll
    Left = 688
    Top = 224
    Data = {
      D10000009619E0BD010000001800000009000000000003000000D100064E554D
      504544040001000000000006444154454D49040006000000000006564C525045
      44080004000000000006434F44434C490400010000000000064E4F4D434C4901
      0049000000010005574944544802000200640006434944434C49010049000000
      0100055749445448020002006400065349475546530100490000000100055749
      44544802000200020006464F4E434C4901004900000001000557494454480200
      020014000651544444494104000100000000000000}
    object ClientPedidosNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ClientPedidosDATEMI: TDateField
      FieldName = 'DATEMI'
    end
    object ClientPedidosVLRPED: TFloatField
      FieldName = 'VLRPED'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientPedidosCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ClientPedidosNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ClientPedidosCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 100
    end
    object ClientPedidosSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ClientPedidosFONCLI: TStringField
      FieldName = 'FONCLI'
    end
    object ClientPedidosQTDDIA: TIntegerField
      FieldName = 'QTDDIA'
    end
  end
end
