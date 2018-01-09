object FOpsaoCodigo: TFOpsaoCodigo
  Left = 395
  Top = 183
  Width = 125
  Height = 199
  HorzScrollBar.ParentColor = False
  HorzScrollBar.Visible = False
  VertScrollBar.ParentColor = False
  VertScrollBar.Visible = False
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RbTecidoEstofado: TRbRadioButton
    Left = 8
    Top = 56
    Width = 100
    Height = 17
    TabOrder = 0
    TabStop = False
    TextShadow = True
    Caption = 'Tecido Estofado'
    BorderLinesColor = clGray
    HotTrack = False
    FadeSpeed = fsMedium
    Colors.DefaultFrom = clWhite
    Colors.DefaultTo = 13745839
    Colors.OverFrom = clWhite
    Colors.OverTo = 12489846
    Colors.ClickedFrom = 13029334
    Colors.ClickedTo = 15463415
    Colors.HotTrack = clBlue
    Colors.BorderColor = clGray
    Colors.TextShadow = clWhite
    Spacing = 3
    Checked = False
    ShowFocusRect = True
    CheckColor = clRed
    RadioType = rsMedium
  end
  object RbMtPrima: TRbRadioButton
    Left = 8
    Top = 16
    Width = 100
    Height = 17
    TabOrder = 1
    TabStop = False
    TextShadow = True
    Caption = 'Mat'#233'ria Prima'
    BorderLinesColor = clGray
    HotTrack = False
    FadeSpeed = fsMedium
    Colors.DefaultFrom = clWhite
    Colors.DefaultTo = 13745839
    Colors.OverFrom = clWhite
    Colors.OverTo = 12489846
    Colors.ClickedFrom = 13029334
    Colors.ClickedTo = 15463415
    Colors.HotTrack = clBlue
    Colors.BorderColor = clGray
    Colors.TextShadow = clWhite
    Spacing = 3
    Checked = True
    ShowFocusRect = True
    CheckColor = clGreen
    RadioType = rsMedium
  end
  object RbTecidoColchao: TRbRadioButton
    Left = 8
    Top = 96
    Width = 100
    Height = 17
    TabOrder = 2
    TabStop = False
    TextShadow = True
    Caption = 'Tecido Colch'#227'o'
    BorderLinesColor = clGray
    HotTrack = False
    FadeSpeed = fsMedium
    Colors.DefaultFrom = clWhite
    Colors.DefaultTo = 13745839
    Colors.OverFrom = clWhite
    Colors.OverTo = 12489846
    Colors.ClickedFrom = 13029334
    Colors.ClickedTo = 15463415
    Colors.HotTrack = clBlue
    Colors.BorderColor = clGray
    Colors.TextShadow = clWhite
    Spacing = 3
    Checked = False
    ShowFocusRect = True
    CheckColor = clMenuHighlight
    RadioType = rsMedium
  end
  object BOk: TRbButton
    Left = 24
    Top = 128
    Width = 75
    Height = 25
    OnClick = BOkClick
    TabOrder = 3
    TextShadow = True
    ModalResult = 0
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEEBB3B9
      F6BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0DFA554C65B66DF6DC3F5C7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFF96D59B3DC0466CFF7B75FF8350DE5AB0F1B5FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF97CF9C30B6
      3A51F36068F57665F8725CFC6C3ED748A5E9AAFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF97C49B21AA2E45DE5375E7808BED9481
      EE8B5AEB674FF15F39CE449EDEA4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFFAACDAE32A43D4ACF578ADF9293E49B7DDA857FDE877BE5854DDF5B
      41E4512FB23892CF97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000BBDABE61B168
      72CF7BA0DEA69CDEA27ED68762CB6C7FD68775D97E75DC7E42D25032D64224A0
      2D91C095FFFFFFFFFFFFFFFFFFFFFFFF0000E9F4EA83C689ABD9B0B2DAB688CF
      8E59C363F6FCF7F8FDF963CB6D6DD0766ED37734C54122C7311D8D2793B496FF
      FFFFFFFFFFFFFFFF0000FFFFFFF2F9F25EC2689BD3A15EC267F4FBF5FFFFFFFF
      FFFFF4FBF55BC36465C66E66C96F26B73310B72015862193B096FFFFFFFFFFFF
      0000FFFFFFFFFFFFEEF9EF96D89BEFF9F0FFFFFFFFFFFFFFFFFFFFFFFFF5FBF6
      5ABB6366BA6E63BC6C1AA42701A10C1D8928A4BDA7FEFEFE0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FBF55ABA6269B1
      7066AC6D1A8A2401870C317C38C1D1C30000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FAF35BBC636CAD7369A56F25
      822E5E9963F2F6F20000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FBF55CBC6479B67E83BC88FCFDFCFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFF0F9F1A4D6A9F8FBF8FFFFFFFFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000}
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
end
