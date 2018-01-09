object FConsDerivacoes: TFConsDerivacoes
  Left = 553
  Top = 310
  Caption = 'FConsDerivacoes'
  ClientHeight = 270
  ClientWidth = 239
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 3
    Top = 8
    Width = 241
    Height = 225
    DataSource = DsConsDerivacoes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODDER'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESDER'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 200
        Visible = True
      end>
  end
  object BOk: TBitBtn
    Left = 4
    Top = 240
    Width = 120
    Height = 25
    Caption = 'Ok'
    DoubleBuffered = True
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
    ModalResult = 1
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object BCancelar: TBitBtn
    Left = 125
    Top = 240
    Width = 120
    Height = 25
    Caption = 'Cancelar'
    DoubleBuffered = True
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFF6F3F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF6F3F0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDBD1C5D6C9
      B9E6DFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4DCD3CBBBA8DCD2C7FF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD5CABFA89074CAB9A5B49F86E5DED6FF
      FFFFFFFFFFFFFFFFFFFFFFE4DCD4AF997FBAA48CA68E72D8CEC3FFFFFFFFFFFF
      0000FFFFFFD6CCC19A8064A2886A9E8363B0987DAF997FE6DFD8FFFFFFFFFFFF
      E4DDD5AE977CB1997E9F8364A48A6D9B8064D6CCC1FFFFFF0000F0ECE7C3B09C
      9B8063907354997D5E9E8264AF967BAE967CE8E2DBE7E1D9AD957CAF977C9D82
      62987C5D9073539A7E60B19B82EDE9E50000FBFAF9BEAF9F9A7F628C6E4F9072
      53957859987C5DA99073B8A38AB6A188A99074987B5C9477588E71528E705198
      7C5FBCAB9BFBFAF90000FFFFFFFFFFFFB09D8B967B5D896B4C8A6D4E8E71528F
      7252AF977DAE977D8F71528E7152896C4C8B6D4E95795CB3A291FFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFAF9D8A94785B826444816343866849866748866848
      86684881634486684992775AB2A190FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFFAE9D8D987D61856749795A3B7B5C3D7B5C3D78593A816345957A
      5DB1A091FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFD3CB
      C4AC9780A78F75795A3A7D5E3F7D5E3F7A5B3C987C5F957B61D7CFCAFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFC7C0BC71574191755882634482
      64458163448263448364458364458A6C4E6A513BCAC3BFFFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFFBCBCBC5742349B80648D6F508B6E4F8B6D4E94785A927556
      8B6D4E8C6E4F8E705193775A503D2FC0C0C0FFFFFFFFFFFF0000FFFFFFBEBEBE
      3A3633A79076A4896AA18668A18567A48A6CCAB9A5BEAA93A3886AA18567A186
      68A58A6A9D866D383531C1C1C1FFFFFF0000DBDAD98B7A6BC5B5A2BCA588B8A2
      87B8A287C0AB92B09980C1B1A2BCAB9BB29C83BEA990B8A287B8A287BEA78BB4
      A18B716052E1E1E00000EFEFEF7A736DACA093DAC9B5CFBEA9D8CAB8BEAC97BE
      AD9DFFFFFFFFFFFFB9A896C4B39ED7C7B5CFBEAADBCBB79D9184736C67F3F3F3
      0000FFFFFFF7F7F7665A54C5B7A9F2ECE4CABBAABDAD9BFFFFFFFFFFFFFFFFFF
      FFFFFFBAA996D2C5B6F2EBE1BEAFA169605CFAFAFAFFFFFF0000FFFFFFFFFFFF
      F8F7F7A18E7CEBE4DCBFAF9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDAC
      9AE1D8CD9A8775FBFBFBFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFF8F6F5D5CB
      C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4CABFFBFAF9FF
      FFFFFFFFFFFFFFFF0000}
    ModalResult = 2
    ParentDoubleBuffered = False
    TabOrder = 2
    TabStop = False
  end
  object ConsDerivacoes: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e075der where codpro = :codpro'
      'order by codder')
    Left = 72
    Top = 144
    object ConsDerivacoesCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsDerivacoesCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsDerivacoesDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
    object ConsDerivacoesDESCPL: TStringField
      FieldName = 'DESCPL'
      Size = 90
    end
  end
  object DsConsDerivacoes: TDataSource
    DataSet = ConsDerivacoes
    Left = 168
    Top = 136
  end
end
