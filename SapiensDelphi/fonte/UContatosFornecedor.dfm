object FContatosFornecedor: TFContatosFornecedor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contatos'
  ClientHeight = 225
  ClientWidth = 857
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
  object dbtxtNOMFOR: TDBText
    Left = 9
    Top = 12
    Width = 408
    Height = 17
    DataField = 'NOMFOR'
    DataSource = dsConsE403FprMC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = 0
    Top = 40
    Width = 858
    Height = 185
    DataSource = dsConsE095Cto
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMCTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 230
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FONCTO'
        Title.Alignment = taCenter
        Title.Caption = 'Telefone'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'RAMCTO'
        Title.Alignment = taCenter
        Title.Caption = 'Ramal'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FAXCTO'
        Title.Alignment = taCenter
        Title.Caption = 'Fax'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INTNET'
        Title.Alignment = taCenter
        Title.Caption = 'Email'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATNAS'
        Title.Alignment = taCenter
        Title.Caption = 'Anivers'#225'rio'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SETCTO'
        Title.Alignment = taCenter
        Title.Caption = 'Setor'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CARCTO'
        Title.Alignment = taCenter
        Title.Caption = 'Cargo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HOBCON'
        Title.Alignment = taCenter
        Title.Caption = 'Hobby'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIMCON'
        Title.Alignment = taCenter
        Title.Caption = 'Time'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SITCTO'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Width = 50
        Visible = True
      end>
  end
  object dsConsE095Cto: TDataSource
    DataSet = Dm3.ConsE095Cto
    Left = 624
    Top = 88
  end
  object dsConsE403FprMC: TDataSource
    DataSet = Dm3.ConsE403FprMC
    Left = 424
    Top = 112
  end
end
