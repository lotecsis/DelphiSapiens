object FAlteraProdPedido: TFAlteraProdPedido
  Left = 767
  Top = 606
  Caption = 'Altera Produtos'
  ClientHeight = 243
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 29
    Top = 42
    Width = 49
    Height = 13
    Caption = 'Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 70
    Width = 63
    Height = 13
    Caption = 'Deriva'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 34
    Top = 15
    Width = 44
    Height = 13
    Caption = 'Pedido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 47
    Top = 98
    Width = 31
    Height = 13
    Caption = 'Seq.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LDsCodPro: TLabel
    Left = 190
    Top = 44
    Width = 3
    Height = 13
  end
  object LDsCodDer: TLabel
    Left = 190
    Top = 71
    Width = 3
    Height = 13
  end
  object Label5: TLabel
    Left = 6
    Top = 156
    Width = 72
    Height = 13
    Caption = 'Qtd. Pedida:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 9
    Top = 129
    Width = 69
    Height = 13
    Caption = 'Pre'#231'o Unit.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 651
    Top = 179
    Width = 130
    Height = 27
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
      A7DDFF40B5FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF40B5
      FFA7DDFFFFFFFFFFFFFFFFFFFFFFFFFF23AAFF15A1FF1FABFF49C7FF5CD1FF53
      D1FF46D3FF4CD8FF49D5FF2CC1FF1FB1FF23AAFFFFFFFFFFFFFFFFFFFFFFFFFF
      14A4FF35B8FF49C7FF87E1FFA5EBFF8FE9FF73E6FF77E9FF74E7FF55D8FF1EB1
      FF14A4FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF58CAFF46C6FF82DEFFA1EAFF87
      E5FF101F9600007A00007A00007A00007A00007A00007A303093FFFFFFFFFFFF
      14A4FF73D4FF43C6FF7EDDFF9CE7FF7FE1FF0303805757EF5A5AF05151F02727
      DA0A0AB501019500007AFFFFFFFFFFFF14A4FF8FDDFF3FC5FF78DCFF96E3FF75
      DCFF0D1D96030380030380030380030380030380030380303093FFFFFFFFFFFF
      14A4FFACE6FF43C7FF73DAFF90E3FF6BD8FF3FCBFF3ECAFF3CCAFF2DBFFF33B8
      FF14A4FFFFFFFFFFFFFFFFFFFFFFFFFF1DA8FF7FD5FFB1E7FFC5F0FFC9F2FFC7
      F2FFC5F0FFC5F0FFC5F0FFC0EDFF79D3FF1EA8FFFFFFFFFFFFFFFFFFFFFFFFFF
      1EA8FF12A0FF1BABFF31BCFF3EC6FF3CC9FF37CCFF3DD1FF3ACFFF2AC0FF1AAE
      FF1DA8FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF2EB4FF47C6FF86E1FFA6EBFF90
      E9FF75E6FF79EAFF76E7FF56D9FF1EB2FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
      14A4FF55C9FF45C6FF82DEFFA3EAFF89E6FF69E0FF6BE2FF68E1FF4DD4FF1DB0
      FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF6ED1FF42C5FF7EDDFF9DE7FF81
      E2FF5CD9FF5BDAFF59D9FF43CEFF1AACFF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
      14A4FF8ADCFF3FC5FF78DAFF97E5FF77DDFF4ED3FF4DD3FF4CD3FF39C6FF16A7
      FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FFA7E5FF3AC5FF73DAFF91E2FF6E
      D9FF41CBFF40CBFF3ECBFF2FC0FF23AFFF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
      23AAFF97DEFFB6EBFFB0EBFFBCEFFFB0EBFF9FE6FF9EE6FF9DE6FFABE9FF89DC
      FF26ACFFFFFFFFFFFFFFFFFFFFFFFFFFA7DDFF40B5FF14A4FF14A4FF14A4FF14
      A4FF14A4FF14A4FF14A4FF14A4FF31AFFFA7DDFFFFFFFFFFFFFF}
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 516
    Top = 179
    Width = 130
    Height = 27
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF8E9A8FA5AEA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF97A4
      953E874096B098FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF99B5BE41813C3B853D99BA9BFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFF96ADAF44823F3E853F37893953AB5862BD695FC4675DC867
      5CC9655AC66356BE5F57B45D57A75C529657A5BDA8FFFFFF0000FFFFFF99B2B5
      4782414588453A913C32A9352EBC3329C93221D62E1BDE2914DE240ED81D07C8
      1303B00A0388050C6F0F6B9F70FFFFFF0000FFFFFF93B2B7377E3025892927AC
      2F2EC3383BDB4842EA5148F15848F4593DF24E2EE93F20D63012BB1D02940707
      6E0B6AA671FFFFFF0000FFFFFFEBF3FA76AFB6089C111DC22B41E15167D57786
      EB9192EF9C97F1A091F19686F18977DA7F52C76616B92205890A6AB071FFFFFF
      0000FFFFFFC0D8EDB3D6FC79C4C73FD94362FB70ACEBB2FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF7CE6832BCE39069D0C6DBD75FFFFFF0000FFFFFF9BC1E3
      74B7F4A1D0FF85D6BC81FA84B7F3BCFFFFFFFFFFFFFFFFFFFFFFFF9BC4FFB6DE
      EBB0F6B56FE67946BE4C96D59CFFFFFF0000FFFFFF6EA4D33797EB5AADFFAAD7
      F8AEE7BEBFF3BCFFFFFFFFFFFFFFFFFFFFFFFF96CBFF72B3FC9EE4C9C3F9C49C
      DE9FC8EACBFFFFFF0000FFFFFF4385C00076DC178BF87DBAFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF87BEF754ABFF228DE4AAE2C0EEF9EEEEF9EFFFFFFF
      0000FFFFFF3E7CB70271D60678E0378EEA68AEFA77B9FF85C1FF8AC4FF83C1FE
      7BB9F7519CF11388FD0067D70F559AB0D5BBFFFFFFFFFFFF0000FFFFFF4D82B5
      2B82DF1F83DD1A92F32FA6FF57B6FF6EC0FF71C1FF60B9FF3DAAFF1191FD0077
      E40061BE0047980B468DB0CEBDFFFFFF0000FFFFFF6790B878B7FF69B3F862BD
      FE5AC2FF60C7FF64C7FF59C2FF44B7FF35A9FD2A96EE2180D61B6CC01964BC1B
      5396B5D0BFFFFFFF0000FFFFFF9CACBB87A5C286A8C884ACCE82AFD380B1D77C
      AED779ADD777AAD477A5CE699CCE609CDE5F9AE14C7CB1BDD1C2FFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF8AA1BAAAD3FF7B9AC7BDDAC3FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99A7B3B0C2
      D4BDC0C5FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF989DA0B6B6B8FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000}
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 381
    Top = 179
    Width = 130
    Height = 27
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
      A7DDFF40B5FF14A4FF14A4FF14A4FF14A4FF14A4FF14A4FF0083060081000384
      08A7DDFFFFFFFFFFFFFFFFFFFFFFFFFF23AAFF15A1FF1FABFF49C7FF5CD1FF53
      D1FF46D3FF4CD8FF008100139E1600810023AAFFFFFFFFFFFFFFFFFFFFFFFFFF
      14A4FF35B8FF49C7FF87E1FFA5EBFF8FE9FF73E6FF77E9FF0081002CAF2D0081
      0014A4FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF58CAFF46C6FF82DEFFA1EAFF03
      870600810000810000810046C047008100008100008100108910FFFFFFFFFFFF
      14A4FF73D4FF43C6FF7EDDFF9CE7FF00810095E69698E99889E78866DD6546C2
      4521A3210B900B008100FFFFFFFFFFFF14A4FF8FDDFF3FC5FF78DCFF96E3FF03
      870600810000810000810087E588008100008100008100108910FFFFFFFFFFFF
      14A4FFACE6FF43C7FF73DAFF90E3FF6BD8FF3FCBFF3ECAFF00810090E5900081
      0014A4FFFFFFFFFFFFFFFFFFFFFFFFFF1DA8FF7FD5FFB1E7FFC5F0FFC9F2FFC7
      F2FFC5F0FFC5F0FF00810084E0870081001EA8FFFFFFFFFFFFFFFFFFFFFFFFFF
      1EA8FF12A0FF1BABFF31BCFF3EC6FF3CC9FF37CCFF3DD1FF0186060081000183
      061DA8FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF2EB4FF47C6FF86E1FFA6EBFF90
      E9FF75E6FF79EAFF76E7FF56D9FF1EB2FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
      14A4FF55C9FF45C6FF82DEFFA3EAFF89E6FF69E0FF6BE2FF68E1FF4DD4FF1DB0
      FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FF6ED1FF42C5FF7EDDFF9DE7FF81
      E2FF5CD9FF5BDAFF59D9FF43CEFF1AACFF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
      14A4FF8ADCFF3FC5FF78DAFF97E5FF77DDFF4ED3FF4DD3FF4CD3FF39C6FF16A7
      FF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF14A4FFA7E5FF3AC5FF73DAFF91E2FF6E
      D9FF41CBFF40CBFF3ECBFF2FC0FF23AFFF15A9FFFFFFFFFFFFFFFFFFFFFFFFFF
      23AAFF97DEFFB6EBFFB0EBFFBCEFFFB0EBFF9FE6FF9EE6FF9DE6FFABE9FF89DC
      FF26ACFFFFFFFFFFFFFFFFFFFFFFFFFFA7DDFF40B5FF14A4FF14A4FF14A4FF14
      A4FF14A4FF14A4FF14A4FF14A4FF31AFFFA7DDFFFFFFFFFFFFFF}
    OnClick = SpeedButton3Click
  end
  object Label7: TLabel
    Left = 12
    Top = 183
    Width = 66
    Height = 13
    Caption = 'Qtd. Canc.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 213
    Width = 70
    Height = 13
    Caption = 'Qtd. Aberto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdNumPed: TEdit
    Left = 84
    Top = 8
    Width = 100
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
  end
  object EdCodPro: TEdit
    Left = 84
    Top = 36
    Width = 100
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object EdCodDer: TEdit
    Left = 84
    Top = 64
    Width = 100
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object EdSeqIpd: TEdit
    Left = 84
    Top = 92
    Width = 100
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 381
    Top = 5
    Width = 401
    Height = 172
    TabStop = False
    DataSource = DsConsUsu_T120Ipd
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_QTDCOR'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Ped.'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_QTDABE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Abe.'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_COR001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Cor 01'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_COR002'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Cor 02'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_TIPCMB'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_QTDCAN'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Canc.'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_PRECAR'
        Title.Alignment = taCenter
        Title.Caption = 'Pr'#233'-Carga'
        Visible = True
      end>
  end
  object EdPreUni: TCurrencyEdit
    Left = 84
    Top = 121
    Width = 100
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    TabStop = False
    Alignment = taLeftJustify
    AutoSize = False
    Ctl3D = False
    DisplayFormat = ' ,0.00;- ,0.00'
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 7
  end
  object BProcessa: TBitBtn
    Left = 569
    Top = 214
    Width = 100
    Height = 27
    Caption = 'Processar'
    DoubleBuffered = True
    Enabled = False
    Glyph.Data = {
      E6040000424DE604000000000000360000002800000014000000140000000100
      180000000000B0040000120B0000120B00000000000000000000EDE9EBEDE9EB
      EDE9EBE9E5E7E6E3E5E3DFE1E0DCDEDCD9DAE3DFE1E3DFE1DAD7D9DEDADCE1DD
      DFE4E0E2E8E4E6EBE7E9ECE8EAEDE9EBEDE9EBEDE9EBEAE6E8E9E5E7E3DFE1D9
      D6D8CFCCCEC5C2C3BBB8B9B5B2B47D8995999CA2B8B5B6B4B1B3BFBBBDC7C4C5
      D2CFD0DCD9DAE6E2E4EBE7E9EDE9EBEDE9EBEBE7E9EBE7E9E8E4E6E4E0E2DFDB
      DDD9D5D7D3CFD1D9D5D7718EA5518DB5CCC9CBD6D2D4D4D0D2DAD7D9E0DCDEE6
      E2E4E8E4E6ECE8EAEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB
      EDE9EBEDE9EBC3CCD83BA9EDA1B6CCEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9
      EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBED
      E9EBDADCE454A8E348A6E9D0D8E4EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB
      EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBE6E5
      EA6FABDC39A2F473ADDDECE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBED
      E9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB98BDE0
      2F96F53BA4F5A5C3E1EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9
      EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBBED0E543A3F32B
      95FD5AB1EECFDAE8EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB
      EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBDBE0EA67B4ED2D97FA38A1
      FA7CB8E8EBE8EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBED
      E9EBEDE9EBE5E5EBACCBEA9FC7EBA8CBEBA6C9EB6DBCEF369FFA2B97FB4DB0F6
      ACCCEBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9
      EBE4E5EB78BFF14CB3F941A8F944ABF943AAF8329DF92998F937A3FA66B8F3D6
      DEEBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB
      90C3F141A8F92A98FA2C9AFA2C9BF937A2FA3FA9FA3CA7FA5ABCFA87C1F1EBE8
      EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBB2CFEF52
      B2F8319FF934A2FA30A0FA4EB3FA75C1F887C0F38EC6F483BEF4D5DEEDEDE9EB
      EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBDFE3EC76C4F840B4
      FB41B5FB42B7FC46BBFC76C7F9CAD9EEEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBED
      E9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB8CC9F55BCCFD4AC4FD
      4FC7FD4CC9FD64D3FD92C8F5EBE8EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9
      EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB99C7F269D2FC4BCBFD53CFFE52
      D0FE58D6FE83D8FCBDD4EEEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB
      EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBC3D7EE75D3FC52D4FE59D4FE5AD5FD57D4
      FD72DEFD93CBF6E3E4ECEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBED
      E9EBEDE9EBEDE9EBEDE9EBE6E6EB92D4F95DD8FD56D3FD5BD4FD5BD4FC5DD7FB
      86DCFCB5D2F0EDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9
      EBEDE9EBEDE9EBEBE8EB97CDF692E9FC78DEFC80E1FC82E1FC7DDFFC92E9FC9F
      D5F7E2E4ECEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EBEDE9EB
      EDE9EBEDE9EBABCFF08FCCF892CEF795CEF895CEF894CDF893CEF78BCAF7B5D3
      EFEDE9EBEDE9EBEDE9EB}
    ParentDoubleBuffered = False
    TabOrder = 8
    OnClick = BProcessaClick
  end
  object BSair: TBitBtn
    Left = 680
    Top = 214
    Width = 100
    Height = 25
    Caption = 'Sair'
    DoubleBuffered = True
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFD1D1CE4C48402D34293040313241333341333442343442343441
      3434423434413434413434423436372F0000FFFFFFFFFFFFFFFFFFFFFFFFC0BE
      C871687B85A4904E8F6926784B257A4B297E4E2C81512E81522E82522D81532D
      81522E85553441340000FFFFFFFFFFFFFFFFFFFFFFFFB9B8E13F3CA9ABA4D0D7
      CDC87D9284537663256541296A442E734A347650357651357752337D53364034
      0000FFFFFFFFFFFFFFFFFFFFFFFFD4D4ED1818B11A18B0A9A8CDEEE8E0C1BEC0
      73877D42685321613D2D6C4730704B31734D2F7C503440340000C8C7E8C4C4DE
      C4C3DEC8C8E19D9CC41D1DBF0000E71514BA9694B7DCDDD0D5CFD3AEACAF5C6B
      63255A3C276C442F6E492E7A4F34403400002221B01E1EC91E1ECD2222CE1818
      C50404DD0101FA0000F1110FBE807EA4CED0C2DBD7DC8E8C8E1F51342469412D
      6C472C774C34403300000000B10000F60000E50000E50000E70101EA0000DB00
      00E50000F70E0DC57975A0D8D5CA888D8B204E3324613D2B65422B7149343F32
      00000F0DB71010FF0101E50101E50101E50000E50000E30000E30000F30A0AF9
      100FC58984B5949787204B32235B3A2A5C3E2A6946343E320000100FB51B1CFF
      0101FB0202FA0303FB0202FB0000FA0101FC1213FE0202EC312FA8B8B3BD8D92
      8C1D452F21563728573B276641343E3200000907B01D1DF01D1DED1D1DEE2121
      ED2525F61313FF1515FF0A09E5403EAA706F725F5D5C888D8B1E402C1B492E22
      4B33235D3D343C3200005B59C14D4EBF4E4EBF5050C03939AD1818C52324FA11
      0FDD544FAEC1C1BF9A9C9B4C4A4B545655284435143A241E3E2B205436333C31
      0000FFFFFFFFFFFFFFFFFFFFFFFFD5D5E82020C10703C86D69B6D1D3CBC3C6C4
      A8AAA9C4C4C59A9C9D0E261811301E1732231B4C31323B300000FFFFFFFFFFFF
      FFFFFFFFFFFFBFBEE62723A57B74B4E6E8DCD4D7D3BFC1C2BDBFBFD1D3D38285
      8512291C0C2A19132C1E19472D323A300000FFFFFFFFFFFFFFFFFFFFFFFFBAB7
      C7706B89E6E8E2E9ECE8CDCFCFBFC1C1B8BABACECED08387860C22150825150F
      261915422932392E0000FFFFFFFFFFFFFFFFFFFFFFFFBBBAB5848478E5E8E5E2
      E5E6CCCECEBFC2C2BDBFBFCACACB68696A02150A0925150B2015123E2531392E
      0000FFFFFFFFFFFFFFFFFFFFFFFFBBBAB77E7D78E4E6E6E7EAEBD5D7D7C9CCCC
      AEB1B0A3A3A35053520010050C27180B2014123E2531392E0000FFFFFFFFFFFF
      FFFFFFFFFFFFBCBBB97D7C78D4D6D5C9CDCEAAAEAE8A8E8E72757688888A4F52
      520011040A2716091F12103E2531392E0000FFFFFFFFFFFFFFFFFFFFFFFFD0CF
      CD4B4A4542403B4A4A4443423D3D3C373B393542403C3A39332D2E282E322A2E
      302A30352D36342E0000}
    ParentDoubleBuffered = False
    TabOrder = 9
    TabStop = False
    OnClick = BSairClick
  end
  object EdQtdPed: TCurrencyEdit
    Left = 85
    Top = 149
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taLeftJustify
    AutoSelect = False
    AutoSize = False
    Color = 11851452
    DisplayFormat = '0'
    TabOrder = 1
    OnExit = EdQtdPedExit
  end
  object EdQtdCan: TCurrencyEdit
    Left = 85
    Top = 177
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taLeftJustify
    AutoSelect = False
    AutoSize = False
    Color = clSilver
    DisplayFormat = '0'
    TabOrder = 2
    OnExit = EdQtdCanExit
  end
  object EdQtdAbe: TCurrencyEdit
    Left = 85
    Top = 206
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    Alignment = taLeftJustify
    AutoSize = False
    Color = 12508894
    DisplayFormat = '0'
    ReadOnly = True
    TabOrder = 10
  end
  object DsConsUsu_T120Ipd: TDataSource
    DataSet = Dm2.ConsUsu_T120Ipd
    Left = 304
    Top = 8
  end
  object SapSid: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 264
    Top = 104
  end
end
