object FFiltroPedRecSysRep: TFFiltroPedRecSysRep
  Left = 0
  Top = 0
  Caption = 'Resumo por Representante'
  ClientHeight = 299
  ClientWidth = 770
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
    Width = 753
    Height = 281
    DataSource = DsClientE120Resumo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
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
        FieldName = 'CODREP'
        Title.Alignment = taCenter
        Title.Caption = 'REP.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMREP'
        Title.Alignment = taCenter
        Title.Caption = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 280
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'APEREP'
        Title.Alignment = taCenter
        Title.Caption = 'APELIDO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDPED'
        Title.Alignment = taCenter
        Title.Caption = 'QTD. PEDIDO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRTOT'
        Title.Alignment = taCenter
        Title.Caption = 'VALOR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 110
        Visible = True
      end>
  end
  object ConsE120Ipd_TotRep: TIBQuery
    Database = DmFire.IBDBanco
    Transaction = DmFire.IBTransacao
    SQL.Strings = (
      
        'select sum(e120ipd.vlrbru) as VlrTot,count(distinct(e120ped.numc' +
        'on)) as QtdPed,e120ped.codrep                   '
      ' from e120ped'
      'left join e120ipd on e120ipd.codemp = e120ped.codemp and'
      '                      e120ipd.codfil = e120ped.codfil and'
      '                      e120ipd.numcon = e120ped.numcon and'
      '                      e120ipd.codrep = e120ped.codrep'
      '                                  where'
      '                                  e120ped.sitped in (1,9)'
      '                                  group by e120ped.codrep'
      '                                  order by e120ped.codrep desc')
    Left = 616
    Top = 200
    object ConsE120Ipd_TotRepVLRTOT: TFloatField
      FieldName = 'VLRTOT'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsE120Ipd_TotRepQTDPED: TIntegerField
      FieldName = 'QTDPED'
      ProviderFlags = []
    end
    object ConsE120Ipd_TotRepCODREP: TIntegerField
      FieldName = 'CODREP'
      Origin = '"E120PED"."CODREP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object ConsE090Rep: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codrep'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e090rep.codrep,e090rep.nomrep,e090rep.aperep from e090rep'
      '                                           where'
      
        '                                           e090rep.codrep = :cod' +
        'rep')
    Left = 448
    Top = 160
    object ConsE090RepCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ConsE090RepAPEREP: TStringField
      FieldName = 'APEREP'
      Size = 50
    end
    object ConsE090RepNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
  end
  object DsClientE120Resumo: TDataSource
    DataSet = ClientE120Resumo
    Left = 512
    Top = 72
  end
  object ClientE120Resumo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 624
    Top = 128
    Data = {
      960000009619E0BD010000001800000006000000000003000000960006434F44
      5245500400010000000000064E4F4D5245500100490000000100055749445448
      020002002D000641504552455001004900000001000557494454480200020014
      0006515444504544040001000000000006564C52544F54080004000000000004
      54494B4101004900000001000557494454480200020001000000}
    object ClientE120ResumoCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object ClientE120ResumoNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 45
    end
    object ClientE120ResumoAPEREP: TStringField
      FieldName = 'APEREP'
    end
    object ClientE120ResumoQTDPED: TIntegerField
      FieldName = 'QTDPED'
    end
    object ClientE120ResumoVLRTOT: TFloatField
      FieldName = 'VLRTOT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
end
