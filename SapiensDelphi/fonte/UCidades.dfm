object FCidades: TFCidades
  Left = 0
  Top = 0
  Caption = 'Cidades'
  ClientHeight = 535
  ClientWidth = 812
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
  object Label1: TLabel
    Left = 10
    Top = 20
    Width = 41
    Height = 13
    Caption = 'Cidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 691
    Top = 20
    Width = 17
    Height = 13
    Caption = 'UF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdNomCid: TEdit
    Left = 57
    Top = 14
    Width = 619
    Height = 19
    CharCase = ecUpperCase
    Color = clWhite
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnChange = EdNomCidChange
  end
  object DBGrid1: TDBGrid
    Left = -2
    Top = 42
    Width = 806
    Height = 485
    DataSource = DsCadUsu_TCidades
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColExit = DBGrid1ColExit
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnEditButtonClick = DBGrid1EditButtonClick
    Columns = <
      item
        Expanded = False
        FieldName = 'USU_CODCID'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'CODIGO'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMCID'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'NOME'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_SIGUFS'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_TOTPOP'
        Title.Alignment = taCenter
        Title.Caption = 'POPULA'#199#195'O'
        Width = 90
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'USU_CODREP'
        Title.Alignment = taCenter
        Title.Caption = 'REP.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_APEREP'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'NOME REP.'
        Width = 210
        Visible = True
      end>
  end
  object EdSigUfs: TEdit
    Left = 712
    Top = 14
    Width = 33
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object DsCadUsu_TCidades: TDataSource
    DataSet = DmOra.CadUsu_TCidades
    OnStateChange = DsCadUsu_TCidadesStateChange
    Left = 464
    Top = 144
  end
end
