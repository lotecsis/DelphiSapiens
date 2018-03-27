object FLancaServConvenio: TFLancaServConvenio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Servi'#231'os de Conv'#234'nio'
  ClientHeight = 599
  ClientWidth = 941
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 19
    Width = 55
    Height = 16
    Caption = 'Servi'#231'os'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CbServicos: TComboBox
    Left = 71
    Top = 16
    Width = 289
    Height = 24
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 'CONSULTA'
    Items.Strings = (
      'CONSULTA'
      'INTERNAMENTO'
      'EXAMES_LABORATORIAIS'
      'EXAMES_DIVERSOS'
      'FISIOTERAPIA'
      'AMBULATORIO'
      'CIRURGIA'
      'CESARIANA'
      'DESCONTO_INTEGRAL')
  end
  object DBGrid1: TDBGrid
    Left = -1
    Top = 56
    Width = 942
    Height = 497
    DataSource = DsTempServ
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColExit = DBGrid1ColExit
    OnEditButtonClick = DBGrid1EditButtonClick
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'NumCad'
        Title.Alignment = taCenter
        Title.Caption = 'Cadastro'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodDep'
        Title.Alignment = taCenter
        Title.Caption = 'Dependente'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomFun'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdSer'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PreUni'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Unit.'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DatSer'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'InAdt'
        PickList.Strings = (
          'A'
          'N'
          'S')
        Title.Alignment = taCenter
        Title.Caption = 'Adiantamento'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ObsSer'
        Title.Alignment = taCenter
        Title.Caption = 'Observa'#231#245'es'
        Width = 300
        Visible = True
      end>
  end
  object BConfirmar: TBitBtn
    Left = 833
    Top = 561
    Width = 100
    Height = 30
    Caption = 'Confirmar'
    DoubleBuffered = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F00000000000000000000000000000000
      00000000000000000000000000000000000000007F7F7FBFBFBFBFBFBF000000
      FF0000FF00000000007F7F7FFF0000FF0000FFFFFFBFBFBFBFBFBF000000FF00
      00FF0000000000BFBFBFBFBFBF000000FF0000FF00000000007F7F7FFF0000FF
      0000FFFFFFBFBFBFBFBFBF000000FF0000FF0000000000BFBFBFBFBFBF000000
      FF0000FF0000000000BFBFBF7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF000000FF00
      00FF0000000000BFBFBFBFBFBF000000FF0000FF00007F7F0000000000000000
      00000000000000000000007F7F00FF0000FF0000000000BFBFBFBFBFBF000000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      00FF0000000000BFBFBFBFBFBF000000FF00007F7F0000000000000000000000
      00000000000000000000000000007F7F00FF0000000000BFBFBFBFBFBF000000
      FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF0000000000BFBFBFBFBFBF000000FF0000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000000000BFBFBFBFBFBF000000
      FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF0000000000BFBFBFBFBFBF000000FF0000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000000000BFBFBFBFBFBF000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000000000BFBFBFBFBFBF000000FF0000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000000000BFBFBFBFBFBF7F7F7F
      0000000000000000000000000000000000000000000000000000000000000000
      000000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BConfirmarClick
  end
  object DsTempServ: TDataSource
    DataSet = TempServ
    OnStateChange = DsTempServStateChange
    Left = 600
    Top = 104
  end
  object TempServ: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    AfterInsert = TempServAfterInsert
    BeforePost = TempServBeforePost
    Left = 632
    Top = 240
    Data = {
      D00000009619E0BD010000001800000009000000000003000000D00006436F64
      5365720100490000000100055749445448020002002800064E756D4361640400
      01000000000006436F6444657004000100000000000651746453657204000100
      0000000006507265556E69080004000000000006446174536572040006000000
      0000064E6F6D46756E0100490000000100055749445448020002002800064F62
      73536572010049000000010005574944544802000200C80005496E4164740100
      4900000001000557494454480200020001000000}
    object TempServCodSer: TStringField
      FieldName = 'CodSer'
      Size = 40
    end
    object TempServNumCad: TIntegerField
      FieldName = 'NumCad'
    end
    object TempServCodDep: TIntegerField
      FieldName = 'CodDep'
    end
    object TempServQtdSer: TIntegerField
      FieldName = 'QtdSer'
    end
    object TempServPreUni: TFloatField
      FieldName = 'PreUni'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object TempServDatSer: TDateField
      FieldName = 'DatSer'
      EditMask = '00/00/0000;1;_'
    end
    object TempServNomFun: TStringField
      FieldName = 'NomFun'
      Size = 40
    end
    object TempServObsSer: TStringField
      FieldName = 'ObsSer'
      Size = 200
    end
    object TempServInAdt: TStringField
      FieldName = 'InAdt'
      Size = 1
    end
  end
end
