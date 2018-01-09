object FConsFuncionarios: TFConsFuncionarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Funcion'#225'rios'
  ClientHeight = 628
  ClientWidth = 932
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
    Left = 16
    Top = 13
    Width = 35
    Height = 16
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdNome: TEdit
    Left = 57
    Top = 9
    Width = 862
    Height = 22
    CharCase = ecUpperCase
    Color = clInfoBk
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnChange = EdNomeChange
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 40
    Width = 903
    Height = 537
    DataSource = DsConsFuncionarios
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_NUMCAD'
        Title.Alignment = taCenter
        Title.Caption = 'Cadastro'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_CODDEP'
        Title.Alignment = taCenter
        Title.Caption = 'Cod.Dep.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMFUN'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_TIPCOL'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_DESSIT'
        Title.Alignment = taCenter
        Title.Caption = 'Sit.'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_DESPAR'
        Title.Alignment = taCenter
        Title.Caption = 'Parentesco'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TITULAR'
        Title.Alignment = taCenter
        Title.Caption = 'Titular'
        Visible = True
      end>
  end
  object BSelecionar: TBitBtn
    Left = 819
    Top = 589
    Width = 100
    Height = 30
    Caption = 'Selecionar'
    DoubleBuffered = True
    ModalResult = 1
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object DsConsFuncionarios: TDataSource
    DataSet = DmOra.ConsFuncionarios
    Left = 664
    Top = 152
  end
end
