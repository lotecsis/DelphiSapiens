object FSaldoAdtFun: TFSaldoAdtFun
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Saldo de Adiantamentos'
  ClientHeight = 595
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 36
    Height = 13
    Caption = 'Per'#237'odo'
  end
  object Label2: TLabel
    Left = 164
    Top = 24
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label3: TLabel
    Left = 533
    Top = 554
    Width = 77
    Height = 13
    Caption = 'Valor em Aberto'
  end
  object Label4: TLabel
    Left = 296
    Top = 24
    Width = 41
    Height = 13
    Caption = 'Situa'#231#227'o'
  end
  object Label5: TLabel
    Left = 400
    Top = 554
    Width = 51
    Height = 13
    Caption = 'Valor Pago'
  end
  object Label6: TLabel
    Left = 667
    Top = 554
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 61
    Width = 818
    Height = 488
    DataSource = dsClientConsSaldoAdtFun
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = dbg1TitleClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_NUMCAD'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Registro'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMFUN'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 270
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_DATADT'
        Title.Alignment = taCenter
        Title.Caption = 'Data Adt.'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_DATVCT'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_VLRPAR'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Parcela'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_VLRPGT'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Pago'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_VLRABE'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Aberto'
        Visible = True
      end>
  end
  object edtDatIni: TDateEdit
    Left = 58
    Top = 21
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object edtDatFim: TDateEdit
    Left = 176
    Top = 21
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object btnMostrar: TBitBtn
    Left = 732
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnMostrarClick
  end
  object dbedtvnTotal: TDBEdit
    Left = 532
    Top = 568
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'vnTotal'
    DataSource = dsClientConsSaldoAdtFun
    ReadOnly = True
    TabOrder = 5
  end
  object cbbSituacao: TComboBox
    Left = 343
    Top = 21
    Width = 90
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 0
    TabOrder = 2
    Text = 'ABERTO'
    Items.Strings = (
      'ABERTO'
      'PAGO'
      'TODOS')
  end
  object dbedtvnVlrPago: TDBEdit
    Left = 400
    Top = 568
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'vnVlrPago'
    DataSource = dsClientConsSaldoAdtFun
    ReadOnly = True
    TabOrder = 6
  end
  object dbedtvnTotalGeral: TDBEdit
    Left = 663
    Top = 568
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'vnTotalGeral'
    DataSource = dsClientConsSaldoAdtFun
    ReadOnly = True
    TabOrder = 7
  end
  object dsClientConsSaldoAdtFun: TDataSource
    DataSet = DmOra.ClientConsSaldoAdtFun
    Left = 456
    Top = 264
  end
end
