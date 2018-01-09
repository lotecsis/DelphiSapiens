object FVisuObsPedido: TFVisuObsPedido
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Observa'#231#245'es'
  ClientHeight = 400
  ClientWidth = 668
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
    Left = 8
    Top = 8
    Width = 651
    Height = 169
    DataSource = DsConsE120ObsChegou
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
        FieldName = 'SEQOBS'
        Title.Alignment = taCenter
        Title.Caption = 'Seq.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSPED'
        Title.Alignment = taCenter
        Title.Caption = 'Observa'#231#227'o'
        Width = 350
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SITOBS'
        Title.Alignment = taCenter
        Title.Caption = 'Sit.'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'OBSUSU'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'OBSDAT'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Width = 90
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 183
    Width = 651
    Height = 209
    BevelOuter = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object DBMemo1: TDBMemo
      Left = 8
      Top = 8
      Width = 636
      Height = 193
      Ctl3D = False
      DataField = 'OBSPED'
      DataSource = DsConsE120ObsChegou
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object DsConsE120ObsChegou: TDataSource
    DataSet = DmFire.ConsE120ObsChegou
    Left = 528
    Top = 96
  end
end
