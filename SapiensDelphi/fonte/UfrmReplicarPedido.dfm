object frmReplicarPedido: TfrmReplicarPedido
  Left = 0
  Top = 0
  Caption = 'Replicar pedido para prot'#243'tipo'
  ClientHeight = 569
  ClientWidth = 906
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
  object lbl1: TLabel
    Left = 18
    Top = 19
    Width = 32
    Height = 13
    Caption = 'Pedido'
  end
  object edtNumPed: TEdit
    Left = 56
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = edtNumPedKeyPress
  end
  object btnMostrar: TBitBtn
    Left = 183
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnMostrarClick
  end
  object dbgrd1: TDBGrid
    Left = 9
    Top = 49
    Width = 888
    Height = 61
    DataSource = dsConsE120Ped
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgrd2: TDBGrid
    Left = 9
    Top = 116
    Width = 888
    Height = 446
    DataSource = dsConsE120Ipd
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnProcessar: TBitBtn
    Left = 814
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Processar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = btnProcessarClick
  end
  object ConsE120Ped: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e085cli.nomcli, e120ped.*    '
      '  from e120ped'
      '  inner join e085cli on e085cli.codcli = e120ped.codcli'
      '  where'
      '    e120ped.numped = :numped and'
      '    e120ped.codemp = 1 and'
      '    e120ped.codfil = 1')
    Left = 624
    Top = 128
  end
  object ConsE120Ipd: TADOQuery
    Connection = DmOra.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e120ipd.*'
      '  from e120ipd'
      '   where'
      '    numped = :numped and'
      '    codemp = 1 and'
      '    codfil = 1'
      '    order by seqipd')
    Left = 624
    Top = 184
  end
  object dsConsE120Ped: TDataSource
    DataSet = ConsE120Ped
    Left = 712
    Top = 128
  end
  object dsConsE120Ipd: TDataSource
    DataSet = ConsE120Ipd
    Left = 712
    Top = 184
  end
end
