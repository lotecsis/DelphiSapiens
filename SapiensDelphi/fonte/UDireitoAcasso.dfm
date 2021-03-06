object FDireitosAcesso: TFDireitosAcesso
  Left = 197
  Top = 111
  Width = 545
  Height = 591
  BorderIcons = [biSystemMenu]
  Caption = 'Direitos de Acesso'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBEGridUsuarios: TRxDBGrid
    Left = 0
    Top = 8
    Width = 241
    Height = 473
    DataSource = DSUsuarios
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NM_USUARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Width = 220
        Visible = True
      end>
  end
  object DBEGridFormNivel: TRxDBGrid
    Left = 248
    Top = 8
    Width = 289
    Height = 473
    DataSource = DSFormNivel
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBEGridFormNivelDrawColumnCell
    OnDblClick = DBEGridFormNivelDblClick
    OnKeyPress = DBEGridFormNivelKeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LIBERADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Liberado'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_FORMULARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Formul'#225'rio'
        Width = 240
        Visible = True
      end>
  end
  object BDireitos: TRbButton
    Left = 208
    Top = 496
    Width = 75
    Height = 30
    OnClick = BDireitosClick
    TabOrder = 2
    TextShadow = True
    Caption = 'Direitos'
    ModalResult = 0
    Spacing = 2
    Layout = blGlyphLeft
    Colors.DefaultFrom = clWhite
    Colors.DefaultTo = 13745839
    Colors.OverFrom = clWhite
    Colors.OverTo = 12489846
    Colors.ClickedFrom = 13029334
    Colors.ClickedTo = 15463415
    Colors.HotTrack = clBlue
    Colors.BorderColor = clGray
    Colors.TextShadow = clWhite
    FadeSpeed = fsMedium
    ShowFocusRect = True
    HotTrack = False
    GradientBorder = True
  end
  object DSUsuarios: TDataSource
    DataSet = DataModule1.IBQConsUsuarioDireitos
    Left = 336
    Top = 504
  end
  object DSFormNivel: TDataSource
    DataSet = DataModule1.ClienteFormNivel
    Left = 288
    Top = 512
  end
end
