object Dm1: TDm1
  OldCreateOrder = False
  Height = 671
  Width = 1043
  object ConsUsu_TPreCarLib: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select usu_tprecar.*, r999usu.nomusu from usu_tprecar'
      'inner join r999usu on r999usu.codusu = usu_tprecar.usu_usulib'
      '                                    where'
      
        '                                    usu_tprecar.usu_carlib = '#39'S'#39 +
        ' and'
      
        '                                    usu_tprecar.usu_carimp = '#39'N'#39 +
        ' '
      
        '                                    order by usu_tprecar.usu_pre' +
        'car')
    Left = 51
    Top = 16
    object ConsUsu_TPreCarLibUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsUsu_TPreCarLibUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object ConsUsu_TPreCarLibUSU_HORGER: TIntegerField
      FieldName = 'USU_HORGER'
    end
    object ConsUsu_TPreCarLibUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object ConsUsu_TPreCarLibUSU_CARLIB: TStringField
      FieldName = 'USU_CARLIB'
      Size = 1
    end
    object ConsUsu_TPreCarLibUSU_DATLIB: TDateTimeField
      FieldName = 'USU_DATLIB'
    end
    object ConsUsu_TPreCarLibUSU_HORLIB: TIntegerField
      FieldName = 'USU_HORLIB'
    end
    object ConsUsu_TPreCarLibUSU_USULIB: TIntegerField
      FieldName = 'USU_USULIB'
    end
    object ConsUsu_TPreCarLibUSU_CARIMP: TStringField
      FieldName = 'USU_CARIMP'
      Size = 1
    end
    object ConsUsu_TPreCarLibNOMUSU: TStringField
      FieldName = 'NOMUSU'
      Size = 255
    end
  end
  object ConsUsu_TCarPro: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    AfterScroll = ConsUsu_TCarProAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select usu_tcarpro.*, r999usu.nomusu from usu_tcarpro'
      'inner join r999usu on r999usu.codusu = usu_tcarpro.usu_usuimp'
      '                            where usu_tcarpro.usu_carpro = '#39'N'#39
      '                            order by usu_tcarpro.usu_numane')
    Left = 144
    Top = 66
    object ConsUsu_TCarProUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TCarProUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object ConsUsu_TCarProUSU_HORIMP: TIntegerField
      FieldName = 'USU_HORIMP'
    end
    object ConsUsu_TCarProUSU_USUIMP: TIntegerField
      FieldName = 'USU_USUIMP'
    end
    object ConsUsu_TCarProUSU_CARPRO: TStringField
      FieldName = 'USU_CARPRO'
      Size = 1
    end
    object ConsUsu_TCarProNOMUSU: TStringField
      FieldName = 'NOMUSU'
      Size = 255
    end
  end
  object CadUsu_TPreCarLib: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tprecar where usu_precar = :precar')
    Left = 192
    Top = 16
    object CadUsu_TPreCarLibUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object CadUsu_TPreCarLibUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object CadUsu_TPreCarLibUSU_HORGER: TIntegerField
      FieldName = 'USU_HORGER'
    end
    object CadUsu_TPreCarLibUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object CadUsu_TPreCarLibUSU_CARLIB: TStringField
      FieldName = 'USU_CARLIB'
      Size = 1
    end
    object CadUsu_TPreCarLibUSU_DATLIB: TDateTimeField
      FieldName = 'USU_DATLIB'
    end
    object CadUsu_TPreCarLibUSU_HORLIB: TIntegerField
      FieldName = 'USU_HORLIB'
    end
    object CadUsu_TPreCarLibUSU_USULIB: TIntegerField
      FieldName = 'USU_USULIB'
    end
    object CadUsu_TPreCarLibUSU_CARIMP: TStringField
      FieldName = 'USU_CARIMP'
      Size = 1
    end
  end
  object CadUsu_TCarPro: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tcarpro where usu_numane = :numane and'
      
        '                                                  usu_carpro = '#39 +
        'N'#39)
    Left = 40
    Top = 66
    object CadUsu_TCarProUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object CadUsu_TCarProUSU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object CadUsu_TCarProUSU_HORIMP: TIntegerField
      FieldName = 'USU_HORIMP'
    end
    object CadUsu_TCarProUSU_USUIMP: TIntegerField
      FieldName = 'USU_USUIMP'
    end
    object CadUsu_TCarProUSU_CARPRO: TStringField
      FieldName = 'USU_CARPRO'
      Size = 1
    end
    object CadUsu_TCarProUSU_ITESEL: TStringField
      FieldName = 'USU_ITESEL'
      Size = 1
    end
    object CadUsu_TCarProUSU_OBSCAR: TStringField
      FieldName = 'USU_OBSCAR'
      Size = 500
    end
  end
  object ConsE075Der: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select e075der.codpro,e075der.codder,e075der.volder,e075der.usu_' +
        'coruni,'
      
        'e075der.usu_cmp1bb,e075der.usu_cmp1ae,e075der.usu_cmp2bb,e075der' +
        '.usu_cmp2en'
      'from e075der'
      'inner join e075pro on e075pro.codemp = e075der.codemp and'
      '                      e075pro.codpro = e075der.codpro'
      '                      where'
      '                      e075pro.codfam in ( '#39'01001'#39','#39'01030'#39') and'
      '                      e075pro.sitpro = '#39'A'#39
      '                      order by e075der.codpro,e075der.codder')
    Left = 35
    Top = 116
    object ConsE075DerCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE075DerCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE075DerVOLDER: TBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object ConsE075DerUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object ConsE075DerUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object ConsE075DerUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object ConsE075DerUSU_CMP2BB: TBCDField
      FieldName = 'USU_CMP2BB'
      Precision = 8
      Size = 2
    end
    object ConsE075DerUSU_CMP2EN: TBCDField
      FieldName = 'USU_CMP2EN'
      Precision = 8
      Size = 2
    end
  end
  object ConsUsu_T120Ipd: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_t120ipd.* from usu_t120ipd'
      '                     where'
      '                     usu_codpro = :codpro and'
      '                     usu_codder = :codder and'
      '                     usu_precar = :precar')
    Left = 147
    Top = 116
    object ConsUsu_T120IpdUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_T120IpdUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUsu_T120IpdUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsUsu_T120IpdUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsUsu_T120IpdUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object ConsUsu_T120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsUsu_T120IpdUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ConsUsu_T120IpdUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ConsUsu_T120IpdUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ConsUsu_T120IpdUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_T120IpdUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_T120IpdUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object ConsUsu_T120IpdUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_T120IpdUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object ConsUsu_T120IpdUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsUsu_T120IpdUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
  end
  object CadUsu_TProCar: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tprocar.* from usu_tprocar'
      '                     where'
      '                     usu_numane = :numane and'
      '                     usu_codpro  = :codpro and'
      '                     usu_codder = :codder')
    Left = 34
    Top = 167
    object CadUsu_TProCarUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object CadUsu_TProCarUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TProCarUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu_TProCarUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object CadUsu_TProCarUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object CadUsu_TProCarUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object CadUsu_TProCarUSU_PROCOR: TStringField
      FieldName = 'USU_PROCOR'
      Size = 1
    end
  end
  object ConsUsu_TProCar: TADOQuery
    Connection = Dm.ADOBanco
    AfterScroll = ConsUsu_TProCarAfterScroll
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tprocar.*, e075pro.despro from usu_tprocar'
      'inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro'
      ' where usu_tprocar.usu_numane = :numane and'
      '                       usu_tprocar.usu_codpro = :codpro ')
    Left = 146
    Top = 167
    object ConsUsu_TProCarUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TProCarUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TProCarUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TProCarUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object ConsUsu_TProCarUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ConsUsu_TProCarUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_TProCarDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsUsu_TProCarUSU_PROCOR: TStringField
      FieldName = 'USU_PROCOR'
      Size = 1
    end
  end
  object CadUsu_TCorCar: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codcor1'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codcor2'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tcorcar where usu_numane = :numane and'
      '                                usu_codpro = :codpro and'
      '                                usu_codder = :codder and'
      '                                usu_codcor1 = :codcor1 and'
      '                                usu_codcor2 = :codcor2 '
      '                                ')
    Left = 35
    Top = 217
    object CadUsu_TCorCarUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object CadUsu_TCorCarUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TCorCarUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu_TCorCarUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object CadUsu_TCorCarUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object CadUsu_TCorCarUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object CadUsu_TCorCarUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object CadUsu_TCorCarUSU_SALABE1: TBCDField
      FieldName = 'USU_SALABE1'
      Precision = 11
      Size = 2
    end
    object CadUsu_TCorCarUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object CadUsu_TCorCarUSU_SALABE2: TBCDField
      FieldName = 'USU_SALABE2'
      Precision = 11
      Size = 2
    end
    object CadUsu_TCorCarUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object CadUsu_TCorCarUSU_CORCOR: TStringField
      FieldName = 'USU_CORCOR'
      Size = 1
    end
    object CadUsu_TCorCarUSU_SELITE: TStringField
      FieldName = 'USU_SELITE'
      Size = 1
    end
    object CadUsu_TCorCarUSU_QTDCOR1: TBCDField
      FieldName = 'USU_QTDCOR1'
      Precision = 11
      Size = 2
    end
    object CadUsu_TCorCarUSU_QTDCOR2: TBCDField
      FieldName = 'USU_QTDCOR2'
      Precision = 11
      Size = 2
    end
  end
  object ConsUsu_TCorCar: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'cor001'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'cor002'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tcorcar where usu_numane = :numane and'
      '                                usu_codpro = :codpro and'
      '                                usu_codder = :codder and'
      '                                usu_codcor1 = :cor001 and'
      '                                usu_codcor2 = :cor002')
    Left = 137
    Top = 217
    object ConsUsu_TCorCarUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TCorCarUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TCorCarUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TCorCarUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object ConsUsu_TCorCarUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object ConsUsu_TCorCarUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ConsUsu_TCorCarUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_TCorCarUSU_SALABE1: TBCDField
      FieldName = 'USU_SALABE1'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCorCarUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object ConsUsu_TCorCarUSU_SALABE2: TBCDField
      FieldName = 'USU_SALABE2'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCorCarUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object ConsUsu_TCorCarUSU_CORCOR: TStringField
      FieldName = 'USU_CORCOR'
      Size = 1
    end
  end
  object ConsUsu_tCorCar1: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tcorcar.*'
      '                                         from usu_tcorcar'
      '                                         where'
      
        '                                         usu_numane = :numane an' +
        'd'
      
        '                                         usu_codpro = :codpro an' +
        'd'
      
        '                                         usu_codder = :codder an' +
        'd'
      '                                         usu_corcor in ('#39'N'#39','#39'P'#39')'
      
        '                                         ORDER BY USU_TCORCAR.US' +
        'U_CODCOR1')
    Left = 249
    Top = 217
    object ConsUsu_tCorCar1USU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_tCorCar1USU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_tCorCar1USU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_tCorCar1USU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object ConsUsu_tCorCar1USU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object ConsUsu_tCorCar1USU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ConsUsu_tCorCar1USU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_tCorCar1USU_SALABE1: TBCDField
      FieldName = 'USU_SALABE1'
      Precision = 11
      Size = 2
    end
    object ConsUsu_tCorCar1USU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object ConsUsu_tCorCar1USU_SALABE2: TBCDField
      FieldName = 'USU_SALABE2'
      Precision = 11
      Size = 2
    end
    object ConsUsu_tCorCar1USU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object ConsUsu_tCorCar1USU_CORCOR: TStringField
      FieldName = 'USU_CORCOR'
      Size = 1
    end
    object ConsUsu_tCorCar1USU_SELITE: TStringField
      FieldName = 'USU_SELITE'
      Size = 1
    end
    object ConsUsu_tCorCar1USU_QTDCOR1: TBCDField
      FieldName = 'USU_QTDCOR1'
      Precision = 11
      Size = 2
    end
    object ConsUsu_tCorCar1USU_QTDCOR2: TBCDField
      FieldName = 'USU_QTDCOR2'
      Precision = 11
      Size = 2
    end
  end
  object ConsBarraPrograsso: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <>
    SQL.Strings = (
      'select count(e075der.codpro) as QtdLinhas from e075der'
      'inner join e075pro on e075pro.codemp = e075der.codemp and'
      '                      e075pro.codpro = e075der.codpro'
      '                      where'
      '                      e075pro.codfam = '#39'01001'#39' and'
      '                      e075pro.sitpro = '#39'A'#39)
    Left = 40
    Top = 269
    object ConsBarraPrograssoQTDLINHAS: TBCDField
      FieldName = 'QTDLINHAS'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object ConsUsu_TProCar1: TADOQuery
    Connection = Dm.ADOBanco
    AfterScroll = ConsUsu_TProCar1AfterScroll
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tprocar.*, e075pro.despro from usu_tprocar'
      'inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro'
      ' where usu_tprocar.usu_numane = :numane and'
      '                       usu_tprocar.usu_codpro = :codpro ')
    Left = 250
    Top = 167
    object ConsUsu_TProCar1USU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TProCar1USU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TProCar1USU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TProCar1USU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object ConsUsu_TProCar1USU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ConsUsu_TProCar1USU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_TProCar1USU_PROCOR: TStringField
      FieldName = 'USU_PROCOR'
      Size = 1
    end
    object ConsUsu_TProCar1DESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object ConsUsu_TCorCar2: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tcorcar.*,usu_ttipcmb.usu_abrtip'
      '                                         from usu_tcorcar'
      
        'inner join usu_ttipcmb on usu_ttipcmb.usu_codtip = usu_tcorcar.u' +
        'su_tipcom'
      '                                         where'
      
        '                                         usu_numane = :numane an' +
        'd'
      
        '                                         usu_codpro = :codpro an' +
        'd'
      
        '                                         usu_codder = :codder an' +
        'd'
      '                                         usu_corcor in ('#39'S'#39','#39'P'#39')'
      ''
      ' ')
    Left = 353
    Top = 217
    object ConsUsu_TCorCar2USU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TCorCar2USU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TCorCar2USU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TCorCar2USU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object ConsUsu_TCorCar2USU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object ConsUsu_TCorCar2USU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ConsUsu_TCorCar2USU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_TCorCar2USU_SALABE1: TBCDField
      FieldName = 'USU_SALABE1'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCorCar2USU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object ConsUsu_TCorCar2USU_SALABE2: TBCDField
      FieldName = 'USU_SALABE2'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TCorCar2USU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object ConsUsu_TCorCar2USU_CORCOR: TStringField
      FieldName = 'USU_CORCOR'
      Size = 1
    end
    object ConsUsu_TCorCar2USU_ABRTIP: TStringField
      FieldName = 'USU_ABRTIP'
      Size = 15
    end
  end
  object SeExisteUsu_TSalPro: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tsalpro.* from usu_tsalpro where'
      
        '                                                           usu_c' +
        'odpro = :codpro and'
      
        '                                                           usu_c' +
        'odder = :codder')
    Left = 47
    Top = 317
    object SeExisteUsu_TSalProUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object SeExisteUsu_TSalProUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object SeExisteUsu_TSalProUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
  end
  object CadUsu_TSalPro: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tsalpro.* from usu_tsalpro where'
      
        '                                                           usu_c' +
        'odpro = :codpro and'
      
        '                                                           usu_c' +
        'odder = :codder')
    Left = 160
    Top = 318
    object CadUsu_TSalProUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TSalProUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu_TSalProUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
  end
  object SeExisteUsu_TCorSal: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codcor1'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codcor2'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tcorsal.* from usu_tcorsal where'
      '                                      usu_codpro = :codpro and'
      '                                      usu_codder = :codder and'
      '                                      usu_codcor1 = :codcor1 and'
      '                                      usu_codcor2 = :codcor2')
    Left = 48
    Top = 368
    object SeExisteUsu_TCorSalUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object SeExisteUsu_TCorSalUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object SeExisteUsu_TCorSalUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object SeExisteUsu_TCorSalUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object SeExisteUsu_TCorSalUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object SeExisteUsu_TCorSalUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
  end
  object CadUsu_TCorSal: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codcor1'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codcor2'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tcorsal.* from usu_tcorsal where'
      '                                      usu_codpro = :codpro and'
      '                                      usu_codder = :codder and'
      '                                      usu_codcor1 = :codcor1 and'
      '                                      usu_codcor2 = :codcor2')
    Left = 160
    Top = 368
    object CadUsu_TCorSalUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TCorSalUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu_TCorSalUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object CadUsu_TCorSalUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object CadUsu_TCorSalUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object CadUsu_TCorSalUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
  end
  object ConsUsu_TSalPro: TADOQuery
    Connection = Dm.ADOBanco
    AfterScroll = ConsUsu_TSalProAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select usu_tsalpro.*,e075pro.despro'
      '                       from usu_tsalpro'
      'inner join e075pro on e075pro.codpro = usu_tsalpro.usu_codpro'
      
        '                       order by e075pro.despro,usu_tsalpro.usu_c' +
        'odder')
    Left = 48
    Top = 419
    object ConsUsu_TSalProUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TSalProUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TSalProUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_TSalProDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object ConsUsu_TCorSal: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tcorsal.*, usu_ttipcmb.usu_abrtip from usu_tcorsal'
      
        'inner join usu_ttipcmb on usu_ttipcmb.usu_codtip = usu_tcorsal.u' +
        'su_tipcom'
      '                    where'
      '                    usu_tcorsal.usu_codpro = :codpro and'
      '                    usu_tcorsal.usu_codder = :codder')
    Left = 152
    Top = 419
    object ConsUsu_TCorSalUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TCorSalUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TCorSalUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object ConsUsu_TCorSalUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object ConsUsu_TCorSalUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object ConsUsu_TCorSalUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_TCorSalUSU_ABRTIP: TStringField
      FieldName = 'USU_ABRTIP'
      Size = 15
    end
  end
  object CoresBaixaCorteInd: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tcorcar.*,usu_ttipcmb.usu_abrtip'
      '                                         from usu_tcorcar'
      
        'inner join usu_ttipcmb on usu_ttipcmb.usu_codtip = usu_tcorcar.u' +
        'su_tipcom'
      '                                         where'
      
        '                                         usu_tcorcar.usu_numane ' +
        '= :numane and'
      
        '                                         usu_tcorcar.usu_codpro ' +
        '= :codpro and'
      
        '                                         usu_tcorcar.usu_codder ' +
        '= :codder and'
      
        '                                         usu_tcorcar.usu_corcor ' +
        'in ('#39'N'#39','#39'P'#39')')
    Left = 336
    Top = 318
    object CoresBaixaCorteIndUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object CoresBaixaCorteIndUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CoresBaixaCorteIndUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CoresBaixaCorteIndUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object CoresBaixaCorteIndUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object CoresBaixaCorteIndUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object CoresBaixaCorteIndUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object CoresBaixaCorteIndUSU_SALABE1: TBCDField
      FieldName = 'USU_SALABE1'
      Precision = 11
      Size = 2
    end
    object CoresBaixaCorteIndUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object CoresBaixaCorteIndUSU_SALABE2: TBCDField
      FieldName = 'USU_SALABE2'
      Precision = 11
      Size = 2
    end
    object CoresBaixaCorteIndUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object CoresBaixaCorteIndUSU_CORCOR: TStringField
      FieldName = 'USU_CORCOR'
      Size = 1
    end
    object CoresBaixaCorteIndUSU_ABRTIP: TStringField
      FieldName = 'USU_ABRTIP'
      Size = 15
    end
    object CoresBaixaCorteIndUSU_SELITE: TStringField
      FieldName = 'USU_SELITE'
      Size = 1
    end
    object CoresBaixaCorteIndUSU_QTDCOR1: TBCDField
      FieldName = 'USU_QTDCOR1'
      Precision = 11
      Size = 2
    end
    object CoresBaixaCorteIndUSU_QTDCOR2: TBCDField
      FieldName = 'USU_QTDCOR2'
      Precision = 11
      Size = 2
    end
  end
  object ProviderCoresBaixaCorteInd: TDataSetProvider
    DataSet = CoresBaixaCorteInd
    Left = 336
    Top = 368
  end
  object ClientCoresBaixaCorteInd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderCoresBaixaCorteInd'
    Left = 336
    Top = 419
    object ClientCoresBaixaCorteIndUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ClientCoresBaixaCorteIndUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ClientCoresBaixaCorteIndUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ClientCoresBaixaCorteIndUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object ClientCoresBaixaCorteIndUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object ClientCoresBaixaCorteIndUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ClientCoresBaixaCorteIndUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ClientCoresBaixaCorteIndUSU_SALABE1: TBCDField
      FieldName = 'USU_SALABE1'
      Precision = 11
      Size = 2
    end
    object ClientCoresBaixaCorteIndUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object ClientCoresBaixaCorteIndUSU_SALABE2: TBCDField
      FieldName = 'USU_SALABE2'
      Precision = 11
      Size = 2
    end
    object ClientCoresBaixaCorteIndUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object ClientCoresBaixaCorteIndUSU_CORCOR: TStringField
      FieldName = 'USU_CORCOR'
      Size = 1
    end
    object ClientCoresBaixaCorteIndUSU_ABRTIP: TStringField
      FieldName = 'USU_ABRTIP'
      Size = 15
    end
    object ClientCoresBaixaCorteIndUSU_SELITE: TStringField
      FieldName = 'USU_SELITE'
      Size = 1
    end
    object ClientCoresBaixaCorteIndUSU_QTDCOR1: TBCDField
      FieldName = 'USU_QTDCOR1'
      Precision = 11
      Size = 2
    end
    object ClientCoresBaixaCorteIndUSU_QTDCOR2: TBCDField
      FieldName = 'USU_QTDCOR2'
      Precision = 11
      Size = 2
    end
  end
  object ConsE075DerConsTec: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select codpro,codder,usu_coruni,usu_cmp1bb,usu_cmp1ae,'
      'usu_cmp2bb,usu_cmp2en             '
      ' from e075der'
      '              where'
      '              codpro = :codpro and'
      '              codder = :codder')
    Left = 268
    Top = 116
    object ConsE075DerConsTecCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE075DerConsTecCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE075DerConsTecUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object ConsE075DerConsTecUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object ConsE075DerConsTecUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object ConsE075DerConsTecUSU_CMP2BB: TBCDField
      FieldName = 'USU_CMP2BB'
      Precision = 8
      Size = 2
    end
    object ConsE075DerConsTecUSU_CMP2EN: TBCDField
      FieldName = 'USU_CMP2EN'
      Precision = 8
      Size = 2
    end
  end
  object CadUsu_TMovBax: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'seqmov'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tmovbax where'
      '                          usu_seqmov = :seqmov and'
      '                          usu_numane = :numane')
    Left = 44
    Top = 470
    object CadUsu_TMovBaxUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
    object CadUsu_TMovBaxUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object CadUsu_TMovBaxUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TMovBaxUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu_TMovBaxUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object CadUsu_TMovBaxUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object CadUsu_TMovBaxUSU_QTDMOV: TIntegerField
      FieldName = 'USU_QTDMOV'
    end
    object CadUsu_TMovBaxUSU_QTDMT1: TBCDField
      FieldName = 'USU_QTDMT1'
      Precision = 8
      Size = 2
    end
    object CadUsu_TMovBaxUSU_QTDMT2: TBCDField
      FieldName = 'USU_QTDMT2'
      Precision = 8
      Size = 2
    end
    object CadUsu_TMovBaxUSU_DATMOV: TDateTimeField
      FieldName = 'USU_DATMOV'
    end
    object CadUsu_TMovBaxUSU_HORMOV: TIntegerField
      FieldName = 'USU_HORMOV'
    end
    object CadUsu_TMovBaxUSU_USUMOV: TIntegerField
      FieldName = 'USU_USUMOV'
    end
    object CadUsu_TMovBaxUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object CadUsu_TMovBaxUSU_SITMOV: TStringField
      FieldName = 'USU_SITMOV'
      Size = 1
    end
  end
  object SeqUsu_TMovBax: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_seqmov from usu_tmovbax'
      '                                   where usu_numane = :numane '
      '                                   order by usu_seqmov desc'
      '                                   ')
    Left = 148
    Top = 470
    object SeqUsu_TMovBaxUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
  end
  object ConsUsu_TLogBaxAbe: TADOQuery
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
      'select * from usu_tlogbax where '
      '                                usu_codpro = :codpro and'
      '                                usu_sitlog = '#39'A'#39' and'
      '                                usu_tipmov = '#39'S'#39' and'
      
        '                                usu_motmov = '#39'SAIDA PARA PRODUCA' +
        'O '#39)
    Left = 284
    Top = 470
    object ConsUsu_TLogBaxAbeUSU_SEQLOG: TIntegerField
      FieldName = 'USU_SEQLOG'
    end
    object ConsUsu_TLogBaxAbeUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TLogBaxAbeUSU_QTDMOV: TBCDField
      FieldName = 'USU_QTDMOV'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TLogBaxAbeUSU_SITLOG: TStringField
      FieldName = 'USU_SITLOG'
      Size = 1
    end
    object ConsUsu_TLogBaxAbeUSU_DATFEC: TDateTimeField
      FieldName = 'USU_DATFEC'
    end
    object ConsUsu_TLogBaxAbeUSU_HORFEC: TIntegerField
      FieldName = 'USU_HORFEC'
    end
    object ConsUsu_TLogBaxAbeUSU_USUFEC: TIntegerField
      FieldName = 'USU_USUFEC'
    end
    object ConsUsu_TLogBaxAbeUSU_TIPMOV: TStringField
      FieldName = 'USU_TIPMOV'
      Size = 1
    end
    object ConsUsu_TLogBaxAbeUSU_MOTMOV: TStringField
      FieldName = 'USU_MOTMOV'
      Size = 100
    end
  end
  object CadUsu_TLogBax: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'seqlog'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tlogbax where usu_seqlog = :seqlog and'
      '                                usu_codpro = :codpro')
    Left = 576
    Top = 176
    object CadUsu_TLogBaxUSU_SEQLOG: TIntegerField
      FieldName = 'USU_SEQLOG'
    end
    object CadUsu_TLogBaxUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TLogBaxUSU_QTDMOV: TBCDField
      FieldName = 'USU_QTDMOV'
      Precision = 11
      Size = 2
    end
    object CadUsu_TLogBaxUSU_SITLOG: TStringField
      FieldName = 'USU_SITLOG'
      Size = 1
    end
    object CadUsu_TLogBaxUSU_DATFEC: TDateTimeField
      FieldName = 'USU_DATFEC'
    end
    object CadUsu_TLogBaxUSU_HORFEC: TIntegerField
      FieldName = 'USU_HORFEC'
    end
    object CadUsu_TLogBaxUSU_USUFEC: TIntegerField
      FieldName = 'USU_USUFEC'
    end
    object CadUsu_TLogBaxUSU_TIPMOV: TStringField
      FieldName = 'USU_TIPMOV'
      Size = 1
    end
    object CadUsu_TLogBaxUSU_MOTMOV: TStringField
      FieldName = 'USU_MOTMOV'
      Size = 100
    end
  end
  object SeqUsu_TLogBax: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_seqlog from usu_tlogbax where'
      '                                   usu_codpro = :codpro'
      '                                   order by usu_seqlog desc')
    Left = 673
    Top = 176
    object SeqUsu_TLogBaxUSU_SEQLOG: TIntegerField
      FieldName = 'USU_SEQLOG'
    end
  end
  object CadUsu_TLigLog: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'seqmov'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqlog'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tliglog where'
      '                         usu_seqmov = :seqmov and'
      '                         usu_numane = :numane and'
      '                         usu_seqlog = :seqlog and'
      '                         usu_codpro = :codpro')
    Left = 392
    Top = 472
    object CadUsu_TLigLogUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
    object CadUsu_TLigLogUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object CadUsu_TLigLogUSU_SEQLOG: TIntegerField
      FieldName = 'USU_SEQLOG'
    end
    object CadUsu_TLigLogUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
  end
  object ConsUsu_TMovBax: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codcor1'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codcor2'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'datmov1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'datmov2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tmovbax.*,e075pro.despro,usu_tr999usu.usu_nomusu'
      '                            from usu_tmovbax'
      'inner join e075pro on e075pro.codpro = usu_tmovbax.usu_codpro'
      
        'inner join usu_tr999usu on usu_tr999usu.usu_codusu = usu_tmovbax' +
        '.usu_usumov'
      '                           where'
      
        '                             usu_tmovbax.usu_numane = :numane an' +
        'd'
      
        '                             usu_tmovbax.usu_codpro = :codpro an' +
        'd'
      
        '                             usu_tmovbax.usu_codder = :codder an' +
        'd'
      
        '                             (usu_tmovbax.usu_codcor1 = :codcor1' +
        ' or'
      
        '                             usu_tmovbax.usu_codcor2 = :codcor2)' +
        ' and'
      
        '                             usu_tmovbax.usu_datmov between  :da' +
        'tmov1 and :datmov2')
    Left = 704
    Top = 120
    object ConsUsu_TMovBaxUSU_SEQMOV: TIntegerField
      FieldName = 'USU_SEQMOV'
    end
    object ConsUsu_TMovBaxUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsUsu_TMovBaxUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TMovBaxUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_TMovBaxUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object ConsUsu_TMovBaxUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object ConsUsu_TMovBaxUSU_QTDMOV: TIntegerField
      FieldName = 'USU_QTDMOV'
    end
    object ConsUsu_TMovBaxUSU_QTDMT1: TBCDField
      FieldName = 'USU_QTDMT1'
      Precision = 8
      Size = 2
    end
    object ConsUsu_TMovBaxUSU_QTDMT2: TBCDField
      FieldName = 'USU_QTDMT2'
      Precision = 8
      Size = 2
    end
    object ConsUsu_TMovBaxUSU_DATMOV: TDateTimeField
      FieldName = 'USU_DATMOV'
    end
    object ConsUsu_TMovBaxUSU_HORMOV: TIntegerField
      FieldName = 'USU_HORMOV'
    end
    object ConsUsu_TMovBaxUSU_USUMOV: TIntegerField
      FieldName = 'USU_USUMOV'
    end
    object ConsUsu_TMovBaxUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object ConsUsu_TMovBaxUSU_NOMUSU: TStringField
      FieldName = 'USU_NOMUSU'
      Size = 50
    end
    object ConsUsu_TMovBaxDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsUsu_TMovBaxUSU_SITMOV: TStringField
      FieldName = 'USU_SITMOV'
      Size = 1
    end
  end
  object SeExisteUsu_TProCar: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'codder'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tprocar where usu_numane = :numane and'
      '                                usu_codpro = :codpro and'
      '                                usu_codder = :codder')
    Left = 362
    Top = 167
    object SeExisteUsu_TProCarUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object SeExisteUsu_TProCarUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object SeExisteUsu_TProCarUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object SeExisteUsu_TProCarUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object SeExisteUsu_TProCarUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object SeExisteUsu_TProCarUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object SeExisteUsu_TProCarUSU_PROCOR: TStringField
      FieldName = 'USU_PROCOR'
      Size = 1
    end
  end
  object CadUsu_TCarPro2: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tcarpro where usu_numane = :numane ')
    Left = 256
    Top = 67
    object CadUsu_TCarPro2USU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object CadUsu_TCarPro2USU_DATIMP: TDateTimeField
      FieldName = 'USU_DATIMP'
    end
    object CadUsu_TCarPro2USU_HORIMP: TIntegerField
      FieldName = 'USU_HORIMP'
    end
    object CadUsu_TCarPro2USU_USUIMP: TIntegerField
      FieldName = 'USU_USUIMP'
    end
    object CadUsu_TCarPro2USU_CARPRO: TStringField
      FieldName = 'USU_CARPRO'
      Size = 1
    end
    object CadUsu_TCarPro2USU_ITESEL: TStringField
      FieldName = 'USU_ITESEL'
      Size = 1
    end
    object CadUsu_TCarPro2USU_OBSCAR: TStringField
      FieldName = 'USU_OBSCAR'
      Size = 500
    end
  end
  object ConsUsu_TLogBaxLigLog: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'seqmov'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numane'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tlogbax.* from usu_tlogbax'
      
        'inner join usu_tliglog on usu_tliglog.usu_seqlog = usu_tlogbax.u' +
        'su_seqlog and'
      
        '                          usu_tliglog.usu_codpro = usu_tlogbax.u' +
        'su_codpro'
      '                          where'
      '                          usu_tliglog.usu_seqmov = :seqmov and'
      '                          usu_tliglog.usu_numane = :numane and'
      '                          usu_tliglog.usu_codpro = :codpro')
    Left = 696
    Top = 232
    object ConsUsu_TLogBaxLigLogUSU_SEQLOG: TIntegerField
      FieldName = 'USU_SEQLOG'
    end
    object ConsUsu_TLogBaxLigLogUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TLogBaxLigLogUSU_QTDMOV: TBCDField
      FieldName = 'USU_QTDMOV'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TLogBaxLigLogUSU_SITLOG: TStringField
      FieldName = 'USU_SITLOG'
      Size = 1
    end
    object ConsUsu_TLogBaxLigLogUSU_DATFEC: TDateTimeField
      FieldName = 'USU_DATFEC'
    end
    object ConsUsu_TLogBaxLigLogUSU_HORFEC: TIntegerField
      FieldName = 'USU_HORFEC'
    end
    object ConsUsu_TLogBaxLigLogUSU_USUFEC: TIntegerField
      FieldName = 'USU_USUFEC'
    end
    object ConsUsu_TLogBaxLigLogUSU_TIPMOV: TStringField
      FieldName = 'USU_TIPMOV'
      Size = 1
    end
    object ConsUsu_TLogBaxLigLogUSU_MOTMOV: TStringField
      FieldName = 'USU_MOTMOV'
      Size = 100
    end
  end
  object ConsUsu_TLogBaxBax: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select usu_tlogbax.*  from usu_tlogbax'
      '                                   where usu_sitlog = '#39'A'#39
      
        '                                   order by usu_codpro,usu_tipmo' +
        'v')
    Left = 824
    Top = 120
    object ConsUsu_TLogBaxBaxUSU_SEQLOG: TIntegerField
      FieldName = 'USU_SEQLOG'
    end
    object ConsUsu_TLogBaxBaxUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TLogBaxBaxUSU_QTDMOV: TBCDField
      FieldName = 'USU_QTDMOV'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TLogBaxBaxUSU_SITLOG: TStringField
      FieldName = 'USU_SITLOG'
      Size = 1
    end
    object ConsUsu_TLogBaxBaxUSU_DATFEC: TDateTimeField
      FieldName = 'USU_DATFEC'
    end
    object ConsUsu_TLogBaxBaxUSU_HORFEC: TIntegerField
      FieldName = 'USU_HORFEC'
    end
    object ConsUsu_TLogBaxBaxUSU_USUFEC: TIntegerField
      FieldName = 'USU_USUFEC'
    end
    object ConsUsu_TLogBaxBaxUSU_TIPMOV: TStringField
      FieldName = 'USU_TIPMOV'
      Size = 1
    end
    object ConsUsu_TLogBaxBaxUSU_MOTMOV: TStringField
      FieldName = 'USU_MOTMOV'
      Size = 100
    end
  end
  object ConsUsu_TLogBaxPen: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select usu_tlogbax.*  from usu_tlogbax'
      '                                   where usu_sitlog = '#39'T'#39' and'
      
        '                                              usu_motmov = '#39'SAID' +
        'A PARA PRODUCAO '#39
      
        '                                   order by usu_codpro,usu_tipmo' +
        'v')
    Left = 827
    Top = 176
    object ConsUsu_TLogBaxPenUSU_SEQLOG: TIntegerField
      FieldName = 'USU_SEQLOG'
    end
    object ConsUsu_TLogBaxPenUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_TLogBaxPenUSU_QTDMOV: TBCDField
      FieldName = 'USU_QTDMOV'
      Precision = 11
      Size = 2
    end
    object ConsUsu_TLogBaxPenUSU_SITLOG: TStringField
      FieldName = 'USU_SITLOG'
      Size = 1
    end
    object ConsUsu_TLogBaxPenUSU_DATFEC: TDateTimeField
      FieldName = 'USU_DATFEC'
    end
    object ConsUsu_TLogBaxPenUSU_HORFEC: TIntegerField
      FieldName = 'USU_HORFEC'
    end
    object ConsUsu_TLogBaxPenUSU_USUFEC: TIntegerField
      FieldName = 'USU_USUFEC'
    end
    object ConsUsu_TLogBaxPenUSU_TIPMOV: TStringField
      FieldName = 'USU_TIPMOV'
      Size = 1
    end
    object ConsUsu_TLogBaxPenUSU_MOTMOV: TStringField
      FieldName = 'USU_MOTMOV'
      Size = 100
    end
  end
  object ConsHistUsu_TLogBax: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'datfec1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'datfec2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tipmov'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_tlogbax.*, usu_tr999usu.usu_nomusu'
      '                                     from usu_tlogbax'
      
        'inner join usu_tr999usu on usu_tr999usu.usu_codusu = usu_tlogbax' +
        '.usu_usufec'
      '                                     where'
      
        '                                      usu_tlogbax.usu_codpro = :' +
        'codpro and'
      
        '                                      usu_tlogbax.usu_datfec bet' +
        'ween :datfec1 and :datfec2 and'
      
        '                                      usu_tlogbax.usu_tipmov = :' +
        'tipmov'
      
        '                                      order by usu_tlogbax.usu_s' +
        'eqlog desc')
    Left = 824
    Top = 232
    object ConsHistUsu_TLogBaxUSU_SEQLOG: TIntegerField
      FieldName = 'USU_SEQLOG'
    end
    object ConsHistUsu_TLogBaxUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsHistUsu_TLogBaxUSU_QTDMOV: TBCDField
      FieldName = 'USU_QTDMOV'
      Precision = 11
      Size = 2
    end
    object ConsHistUsu_TLogBaxUSU_SITLOG: TStringField
      FieldName = 'USU_SITLOG'
      Size = 1
    end
    object ConsHistUsu_TLogBaxUSU_DATFEC: TDateTimeField
      FieldName = 'USU_DATFEC'
    end
    object ConsHistUsu_TLogBaxUSU_HORFEC: TIntegerField
      FieldName = 'USU_HORFEC'
    end
    object ConsHistUsu_TLogBaxUSU_USUFEC: TIntegerField
      FieldName = 'USU_USUFEC'
    end
    object ConsHistUsu_TLogBaxUSU_TIPMOV: TStringField
      FieldName = 'USU_TIPMOV'
      Size = 1
    end
    object ConsHistUsu_TLogBaxUSU_MOTMOV: TStringField
      FieldName = 'USU_MOTMOV'
      Size = 100
    end
    object ConsHistUsu_TLogBaxUSU_NOMUSU: TStringField
      FieldName = 'USU_NOMUSU'
      Size = 50
    end
  end
  object Cons1001_1SCarga: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select usu_t120ipd.* from usu_t120ipd'
      
        'inner join e120ipd on e120ipd.codemp = usu_t120ipd.usu_codemp an' +
        'd'
      
        '                      e120ipd.codfil = usu_t120ipd.usu_codfil an' +
        'd'
      
        '                      e120ipd.numped = usu_t120ipd.usu_numped an' +
        'd'
      '                      e120ipd.seqipd = usu_t120ipd.usu_seqipd'
      'inner join e120ped on e120ped.codemp = e120ipd.codemp and'
      '                      e120ped.codfil = e120ipd.codfil and'
      '                      e120ped.numped = e120ipd.numped'
      
        'inner join e075pro on e075pro.codemp = usu_t120ipd.usu_codemp an' +
        'd'
      '                      e075pro.codpro = usu_t120ipd.usu_codpro'
      '                      where'
      
        '                      e075pro.codfam in ('#39'01001'#39','#39'01027'#39','#39'01029'#39 +
        ','#39'01030'#39','#39'01037'#39') and'
      '                      e120ped.sitped in (1,2) and'
      '                      e120ipd.sitipd in (1,2) and'
      '                      e120ped.usu_pedtra = '#39'S'#39' and'
      '                      usu_t120ipd.usu_tectra = '#39'S'#39' and'
      '                      usu_t120ipd.usu_precar = 0')
    Left = 528
    Top = 8
    object Cons1001_1SCargaUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object Cons1001_1SCargaUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object Cons1001_1SCargaUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object Cons1001_1SCargaUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object Cons1001_1SCargaUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object Cons1001_1SCargaUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object Cons1001_1SCargaUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object Cons1001_1SCargaUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object Cons1001_1SCargaUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object Cons1001_1SCargaUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object Cons1001_1SCargaUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object Cons1001_1SCargaUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object Cons1001_1SCargaUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object Cons1001_1SCargaUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object Cons1001_1SCargaUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object Cons1001_1SCargaUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
  end
  object Cons1001_1ECargaN: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select usu_t120ipd.* from usu_t120ipd'
      
        'inner join e120ipd on e120ipd.codemp = usu_t120ipd.usu_codemp an' +
        'd'
      
        '                      e120ipd.codfil = usu_t120ipd.usu_codfil an' +
        'd'
      
        '                      e120ipd.numped = usu_t120ipd.usu_numped an' +
        'd'
      '                      e120ipd.seqipd = usu_t120ipd.usu_seqipd'
      'inner join e120ped on e120ped.codemp = e120ipd.codemp and'
      '                      e120ped.codfil = e120ipd.codfil and'
      '                      e120ped.numped = e120ipd.numped'
      
        'inner join e075pro on e075pro.codemp = usu_t120ipd.usu_codemp an' +
        'd'
      '                      e075pro.codpro = usu_t120ipd.usu_codpro'
      
        'inner join usu_tprecar on usu_tprecar.usu_precar = usu_t120ipd.u' +
        'su_precar'
      '                      where'
      
        '                      e075pro.codfam in ('#39'01001'#39','#39'01027'#39','#39'01029'#39 +
        ','#39'01030'#39','#39'01037'#39') and'
      '                      e120ped.sitped in (1,2) and'
      '                      e120ipd.sitipd in (1,2) and'
      '                      e120ped.usu_pedtra = '#39'S'#39' and'
      '                      usu_t120ipd.usu_tectra = '#39'S'#39' and'
      '                      usu_tprecar.usu_carimp = '#39'N'#39)
    Left = 648
    Top = 8
    object Cons1001_1ECargaNUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object Cons1001_1ECargaNUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object Cons1001_1ECargaNUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object Cons1001_1ECargaNUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object Cons1001_1ECargaNUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object Cons1001_1ECargaNUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object Cons1001_1ECargaNUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object Cons1001_1ECargaNUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object Cons1001_1ECargaNUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object Cons1001_1ECargaNUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object Cons1001_1ECargaNUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object Cons1001_1ECargaNUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object Cons1001_1ECargaNUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object Cons1001_1ECargaNUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object Cons1001_1ECargaNUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object Cons1001_1ECargaNUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
  end
  object ConsUsu_Temp1001_1: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usu_temp1001_1 order by usu_codpro')
    Left = 673
    Top = 59
    object ConsUsu_Temp1001_1USU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_Temp1001_1USU_QTDEST: TBCDField
      FieldName = 'USU_QTDEST'
      Precision = 11
      Size = 2
    end
  end
  object CadUsu_Temp1001_1: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codpro'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_temp1001_1 where usu_codpro = :codpro')
    Left = 528
    Top = 58
    object CadUsu_Temp1001_1USU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_Temp1001_1USU_QTDEST: TBCDField
      FieldName = 'USU_QTDEST'
      Precision = 11
      Size = 2
    end
  end
  object Cons1001_1ECargaT: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select usu_tcorcar.* from usu_tcorcar where usu_corcor in ('#39'N'#39','#39 +
        'P'#39')')
    Left = 768
    Top = 8
    object Cons1001_1ECargaTUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object Cons1001_1ECargaTUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object Cons1001_1ECargaTUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object Cons1001_1ECargaTUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object Cons1001_1ECargaTUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object Cons1001_1ECargaTUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object Cons1001_1ECargaTUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object Cons1001_1ECargaTUSU_SALABE1: TBCDField
      FieldName = 'USU_SALABE1'
      Precision = 11
      Size = 2
    end
    object Cons1001_1ECargaTUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object Cons1001_1ECargaTUSU_SALABE2: TBCDField
      FieldName = 'USU_SALABE2'
      Precision = 11
      Size = 2
    end
    object Cons1001_1ECargaTUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object Cons1001_1ECargaTUSU_CORCOR: TStringField
      FieldName = 'USU_CORCOR'
      Size = 1
    end
    object Cons1001_1ECargaTUSU_SELITE: TStringField
      FieldName = 'USU_SELITE'
      Size = 1
    end
    object Cons1001_1ECargaTUSU_QTDCOR1: TBCDField
      FieldName = 'USU_QTDCOR1'
      Precision = 11
      Size = 2
    end
    object Cons1001_1ECargaTUSU_QTDCOR2: TBCDField
      FieldName = 'USU_QTDCOR2'
      Precision = 11
      Size = 2
    end
  end
  object UltimoPreCarga: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <>
    SQL.Strings = (
      'select max(usu_precar)+1 as ultimo from usu_tprecar')
    Left = 592
    Top = 304
    object UltimoPreCargaULTIMO: TBCDField
      FieldName = 'ULTIMO'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object CadUsu_TPreCar: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_tprecar where usu_precar = :precar')
    Left = 688
    Top = 304
    object CadUsu_TPreCarUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object CadUsu_TPreCarUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object CadUsu_TPreCarUSU_HORGER: TIntegerField
      FieldName = 'USU_HORGER'
    end
    object CadUsu_TPreCarUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object CadUsu_TPreCarUSU_CARLIB: TStringField
      FieldName = 'USU_CARLIB'
      Size = 1
    end
    object CadUsu_TPreCarUSU_DATLIB: TDateTimeField
      FieldName = 'USU_DATLIB'
    end
    object CadUsu_TPreCarUSU_HORLIB: TIntegerField
      FieldName = 'USU_HORLIB'
    end
    object CadUsu_TPreCarUSU_USULIB: TIntegerField
      FieldName = 'USU_USULIB'
    end
    object CadUsu_TPreCarUSU_CARIMP: TStringField
      FieldName = 'USU_CARIMP'
      Size = 1
    end
    object CadUsu_TPreCarUSU_ETIPBI: TStringField
      FieldName = 'USU_ETIPBI'
      Size = 1
    end
    object CadUsu_TPreCarUSU_INPEDDIV: TStringField
      FieldName = 'USU_INPEDDIV'
      Size = 3
    end
  end
  object CadUsu_TIteCar: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqite'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'filped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codrep'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_titecar where'
      '                          usu_precar = :precar and'
      '                          usu_seqite = :seqite and'
      '                          usu_filped = :filped and'
      '                          usu_numped = :numped and'
      '                          usu_codrep = :codrep')
    Left = 592
    Top = 354
    object CadUsu_TIteCarUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object CadUsu_TIteCarUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object CadUsu_TIteCarUSU_FILPED: TIntegerField
      FieldName = 'USU_FILPED'
    end
    object CadUsu_TIteCarUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object CadUsu_TIteCarUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object CadUsu_TIteCarUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object CadUsu_TIteCarUSU_HORGER: TIntegerField
      FieldName = 'USU_HORGER'
    end
    object CadUsu_TIteCarUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
  end
  object SeqUsu_TIteCar: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_seqite from usu_titecar where usu_precar = :precar'
      '                                  order by usu_seqite desc')
    Left = 696
    Top = 360
    object SeqUsu_TIteCarUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
  end
  object CadE120Ped: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e120ped where codemp = :codemp and'
      '                            codfil = :codfil and'
      '                            numped = :numped')
    Left = 593
    Top = 405
    object CadE120PedCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE120PedCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE120PedNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object CadE120PedTIPPED: TIntegerField
      FieldName = 'TIPPED'
    end
    object CadE120PedPRCPED: TIntegerField
      FieldName = 'PRCPED'
    end
    object CadE120PedTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object CadE120PedTNSSER: TStringField
      FieldName = 'TNSSER'
      Size = 5
    end
    object CadE120PedDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object CadE120PedHOREMI: TIntegerField
      FieldName = 'HOREMI'
    end
    object CadE120PedDATPRV: TDateTimeField
      FieldName = 'DATPRV'
    end
    object CadE120PedHORPRV: TIntegerField
      FieldName = 'HORPRV'
    end
    object CadE120PedOBSPED: TStringField
      FieldName = 'OBSPED'
      Size = 999
    end
    object CadE120PedCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object CadE120PedCATCLI: TIntegerField
      FieldName = 'CATCLI'
    end
    object CadE120PedQTDVPF: TIntegerField
      FieldName = 'QTDVPF'
    end
    object CadE120PedQTDMFP: TIntegerField
      FieldName = 'QTDMFP'
    end
    object CadE120PedINDAGR: TStringField
      FieldName = 'INDAGR'
      Size = 1
    end
    object CadE120PedSEQENT: TIntegerField
      FieldName = 'SEQENT'
    end
    object CadE120PedSEQCOB: TIntegerField
      FieldName = 'SEQCOB'
    end
    object CadE120PedSEQCTO: TIntegerField
      FieldName = 'SEQCTO'
    end
    object CadE120PedPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object CadE120PedCODROE: TStringField
      FieldName = 'CODROE'
      Size = 3
    end
    object CadE120PedSEQROE: TIntegerField
      FieldName = 'SEQROE'
    end
    object CadE120PedCODREP: TIntegerField
      FieldName = 'CODREP'
    end
    object CadE120PedCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object CadE120PedCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object CadE120PedDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object CadE120PedCOTMFP: TBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object CadE120PedDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object CadE120PedCOTMOE: TBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object CadE120PedFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object CadE120PedCODFCR: TStringField
      FieldName = 'CODFCR'
      Size = 3
    end
    object CadE120PedDATFCR: TDateTimeField
      FieldName = 'DATFCR'
    end
    object CadE120PedCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 6
    end
    object CadE120PedPGTANT: TStringField
      FieldName = 'PGTANT'
      Size = 1
    end
    object CadE120PedCODFPG: TIntegerField
      FieldName = 'CODFPG'
    end
    object CadE120PedQTDABE: TBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object CadE120PedQTDAEN: TBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object CadE120PedCODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object CadE120PedCODRED: TIntegerField
      FieldName = 'CODRED'
    end
    object CadE120PedCODVIA: TStringField
      FieldName = 'CODVIA'
      Size = 3
    end
    object CadE120PedPLAVEI: TStringField
      FieldName = 'PLAVEI'
      Size = 10
    end
    object CadE120PedVLRFUM: TBCDField
      FieldName = 'VLRFUM'
      Precision = 15
      Size = 2
    end
    object CadE120PedQTDFRE: TBCDField
      FieldName = 'QTDFRE'
      Precision = 14
      Size = 5
    end
    object CadE120PedFORFRE: TIntegerField
      FieldName = 'FORFRE'
    end
    object CadE120PedVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object CadE120PedCIFFOB: TStringField
      FieldName = 'CIFFOB'
      Size = 1
    end
    object CadE120PedVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object CadE120PedPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object CadE120PedPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object CadE120PedPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object CadE120PedPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object CadE120PedVLRBPR: TBCDField
      FieldName = 'VLRBPR'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDPR: TBCDField
      FieldName = 'VLRDPR'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBSE: TBCDField
      FieldName = 'VLRBSE'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDSE: TBCDField
      FieldName = 'VLRDSE'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRSIC: TBCDField
      FieldName = 'VLRSIC'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBIS: TBCDField
      FieldName = 'VLRBIS'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBIN: TBCDField
      FieldName = 'VLRBIN'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRINS: TBCDField
      FieldName = 'VLRINS'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRLSE: TBCDField
      FieldName = 'VLRLSE'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRADT: TBCDField
      FieldName = 'VLRADT'
      Precision = 15
      Size = 2
    end
    object CadE120PedQTDORI: TBCDField
      FieldName = 'QTDORI'
      Precision = 14
      Size = 5
    end
    object CadE120PedVLRORI: TBCDField
      FieldName = 'VLRORI'
      Precision = 15
      Size = 2
    end
    object CadE120PedTEMPAR: TStringField
      FieldName = 'TEMPAR'
      Size = 1
    end
    object CadE120PedCODPOR: TStringField
      FieldName = 'CODPOR'
      Size = 4
    end
    object CadE120PedCODCRT: TStringField
      FieldName = 'CODCRT'
      Size = 2
    end
    object CadE120PedSITPED: TIntegerField
      FieldName = 'SITPED'
    end
    object CadE120PedCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object CadE120PedOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object CadE120PedPEDBLO: TStringField
      FieldName = 'PEDBLO'
      Size = 1
    end
    object CadE120PedUSUBLO: TBCDField
      FieldName = 'USUBLO'
      Precision = 10
      Size = 0
    end
    object CadE120PedDATBLO: TDateTimeField
      FieldName = 'DATBLO'
    end
    object CadE120PedHORBLO: TIntegerField
      FieldName = 'HORBLO'
    end
    object CadE120PedINDSIG: TStringField
      FieldName = 'INDSIG'
      Size = 1
    end
    object CadE120PedVERCAL: TIntegerField
      FieldName = 'VERCAL'
    end
    object CadE120PedHORINI: TIntegerField
      FieldName = 'HORINI'
    end
    object CadE120PedHORFIM: TIntegerField
      FieldName = 'HORFIM'
    end
    object CadE120PedUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object CadE120PedDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object CadE120PedHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object CadE120PedPERFRE: TBCDField
      FieldName = 'PERFRE'
      Precision = 5
      Size = 2
    end
    object CadE120PedPERSEG: TBCDField
      FieldName = 'PERSEG'
      Precision = 5
      Size = 2
    end
    object CadE120PedPEREMB: TBCDField
      FieldName = 'PEREMB'
      Precision = 5
      Size = 2
    end
    object CadE120PedPERENC: TBCDField
      FieldName = 'PERENC'
      Precision = 5
      Size = 2
    end
    object CadE120PedPEROUT: TBCDField
      FieldName = 'PEROUT'
      Precision = 5
      Size = 2
    end
    object CadE120PedCODSAC: TBCDField
      FieldName = 'CODSAC'
      Precision = 14
      Size = 0
    end
    object CadE120PedCODOPE: TIntegerField
      FieldName = 'CODOPE'
    end
    object CadE120PedCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object CadE120PedPEDPAL: TIntegerField
      FieldName = 'PEDPAL'
    end
    object CadE120PedACEPAR: TStringField
      FieldName = 'ACEPAR'
      Size = 1
    end
    object CadE120PedPEROF1: TBCDField
      FieldName = 'PEROF1'
      Precision = 5
      Size = 2
    end
    object CadE120PedPEROF2: TBCDField
      FieldName = 'PEROF2'
      Precision = 5
      Size = 2
    end
    object CadE120PedUSUFEC: TBCDField
      FieldName = 'USUFEC'
      Precision = 10
      Size = 0
    end
    object CadE120PedDATFEC: TDateTimeField
      FieldName = 'DATFEC'
    end
    object CadE120PedHORFEC: TIntegerField
      FieldName = 'HORFEC'
    end
    object CadE120PedCLIREL: TIntegerField
      FieldName = 'CLIREL'
    end
    object CadE120PedVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object CadE120PedCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object CadE120PedCODSRO: TStringField
      FieldName = 'CODSRO'
      Size = 3
    end
    object CadE120PedFILFAT: TIntegerField
      FieldName = 'FILFAT'
    end
    object CadE120PedCODCDI: TIntegerField
      FieldName = 'CODCDI'
    end
    object CadE120PedCODLIP: TStringField
      FieldName = 'CODLIP'
      Size = 5
    end
    object CadE120PedCEPFRE: TIntegerField
      FieldName = 'CEPFRE'
    end
    object CadE120PedVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object CadE120PedANAEMB: TStringField
      FieldName = 'ANAEMB'
      Size = 1
    end
    object CadE120PedNUMEMP: TStringField
      FieldName = 'NUMEMP'
    end
    object CadE120PedQTDANE: TIntegerField
      FieldName = 'QTDANE'
    end
    object CadE120PedDATAGE: TDateTimeField
      FieldName = 'DATAGE'
    end
    object CadE120PedFILNCO: TIntegerField
      FieldName = 'FILNCO'
    end
    object CadE120PedSNFNCO: TStringField
      FieldName = 'SNFNCO'
      Size = 3
    end
    object CadE120PedNUMNCO: TIntegerField
      FieldName = 'NUMNCO'
    end
    object CadE120PedEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object CadE120PedVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object CadE120PedVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object CadE120PedCODAPC: TIntegerField
      FieldName = 'CODAPC'
    end
    object CadE120PedSOMFRE: TStringField
      FieldName = 'SOMFRE'
      Size = 1
    end
    object CadE120PedQTDITP: TIntegerField
      FieldName = 'QTDITP'
    end
    object CadE120PedQTDITS: TIntegerField
      FieldName = 'QTDITS'
    end
    object CadE120PedPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object CadE120PedVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object CadE120PedROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object CadE120PedNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object CadE120PedUSU_FILDIV: TIntegerField
      FieldName = 'USU_FILDIV'
    end
    object CadE120PedUSU_PEDDIV: TIntegerField
      FieldName = 'USU_PEDDIV'
    end
    object CadE120PedUSU_USUDIV: TBCDField
      FieldName = 'USU_USUDIV'
      Precision = 10
      Size = 0
    end
    object CadE120PedUSU_DATDIV: TDateTimeField
      FieldName = 'USU_DATDIV'
    end
    object CadE120PedUSU_HORDIV: TIntegerField
      FieldName = 'USU_HORDIV'
    end
    object CadE120PedUSU_PEDTRA: TStringField
      FieldName = 'USU_PEDTRA'
      Size = 1
    end
    object CadE120PedUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object CadE120PedUSU_USUDES: TBCDField
      FieldName = 'USU_USUDES'
      Precision = 10
      Size = 0
    end
    object CadE120PedUSU_DATDES: TDateTimeField
      FieldName = 'USU_DATDES'
    end
    object CadE120PedUSU_HORDES: TIntegerField
      FieldName = 'USU_HORDES'
    end
  end
  object ConsE120Ipd: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e120ipd.* from e120ipd'
      'inner join e075pro on e075pro.codemp = e120ipd.codemp and'
      '                      e075pro.codpro = e120ipd.codpro'
      '                          where e120ipd.codemp = :codemp and'
      '                                e120ipd.codfil = :codfil and'
      '                                e120ipd.numped = :numped ')
    Left = 680
    Top = 408
    object ConsE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsE120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object ConsE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object ConsE120IpdTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object ConsE120IpdPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object ConsE120IpdSEQPCL: TStringField
      FieldName = 'SEQPCL'
      Size = 10
    end
    object ConsE120IpdPEDPRV: TStringField
      FieldName = 'PEDPRV'
      Size = 1
    end
    object ConsE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE120IpdCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object ConsE120IpdCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object ConsE120IpdCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ConsE120IpdCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object ConsE120IpdCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object ConsE120IpdCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object ConsE120IpdCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object ConsE120IpdCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object ConsE120IpdCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE120IpdCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object ConsE120IpdRESEST: TStringField
      FieldName = 'RESEST'
      Size = 1
    end
    object ConsE120IpdQTDPED: TBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDAEN: TBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDPOC: TBCDField
      FieldName = 'QTDPOC'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDFAT: TBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDCAN: TBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDABE: TBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDRAE: TBCDField
      FieldName = 'QTDRAE'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDNLP: TBCDField
      FieldName = 'QTDNLP'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdQTDRES: TBCDField
      FieldName = 'QTDRES'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object ConsE120IpdCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object ConsE120IpdDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object ConsE120IpdCOTMFP: TBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object ConsE120IpdDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object ConsE120IpdCOTMOE: TBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object ConsE120IpdFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object ConsE120IpdCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object ConsE120IpdPREUNI: TBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object ConsE120IpdPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object ConsE120IpdPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPEROFE: TBCDField
      FieldName = 'PEROFE'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERACR: TBCDField
      FieldName = 'PERACR'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object ConsE120IpdDATANE: TDateTimeField
      FieldName = 'DATANE'
    end
    object ConsE120IpdDATPOC: TDateTimeField
      FieldName = 'DATPOC'
    end
    object ConsE120IpdCODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object ConsE120IpdNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object ConsE120IpdCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object ConsE120IpdCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object ConsE120IpdCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object ConsE120IpdCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object ConsE120IpdVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdSITIPD: TIntegerField
      FieldName = 'SITIPD'
    end
    object ConsE120IpdCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsE120IpdOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object ConsE120IpdGERNEC: TIntegerField
      FieldName = 'GERNEC'
    end
    object ConsE120IpdGERCGA: TStringField
      FieldName = 'GERCGA'
      Size = 1
    end
    object ConsE120IpdRESMAN: TStringField
      FieldName = 'RESMAN'
      Size = 1
    end
    object ConsE120IpdINDAED: TStringField
      FieldName = 'INDAED'
      Size = 1
    end
    object ConsE120IpdNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object ConsE120IpdDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object ConsE120IpdSEQCVP: TIntegerField
      FieldName = 'SEQCVP'
    end
    object ConsE120IpdUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsE120IpdHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsE120IpdQTDPPF: TBCDField
      FieldName = 'QTDPPF'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdCMPKIT: TStringField
      FieldName = 'CMPKIT'
      Size = 1
    end
    object ConsE120IpdFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object ConsE120IpdNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object ConsE120IpdSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object ConsE120IpdUNIVEN: TStringField
      FieldName = 'UNIVEN'
      Size = 3
    end
    object ConsE120IpdQTDVEN: TBCDField
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdPREVEN: TBCDField
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdPREBRU: TBCDField
      FieldName = 'PREBRU'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object ConsE120IpdCTRCVS: TIntegerField
      FieldName = 'CTRCVS'
    end
    object ConsE120IpdCPTCVS: TDateTimeField
      FieldName = 'CPTCVS'
    end
    object ConsE120IpdSEQCVS: TIntegerField
      FieldName = 'SEQCVS'
    end
    object ConsE120IpdCODAVC: TIntegerField
      FieldName = 'CODAVC'
    end
    object ConsE120IpdCODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object ConsE120IpdCODPGR: TStringField
      FieldName = 'CODPGR'
      Size = 5
    end
    object ConsE120IpdIDXGRD: TIntegerField
      FieldName = 'IDXGRD'
    end
    object ConsE120IpdCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object ConsE120IpdCODCLC: TStringField
      FieldName = 'CODCLC'
      Size = 10
    end
    object ConsE120IpdPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdFILPRD: TIntegerField
      FieldName = 'FILPRD'
    end
    object ConsE120IpdVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ConsE120IpdINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ConsE120IpdPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object ConsE120IpdVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object ConsE120IpdFORNFC: TIntegerField
      FieldName = 'FORNFC'
    end
    object ConsE120IpdNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object ConsE120IpdSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object ConsE120IpdSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object ConsE120IpdNCTLCL: TStringField
      FieldName = 'NCTLCL'
    end
    object ConsE120IpdNRECLI: TStringField
      FieldName = 'NRECLI'
    end
    object ConsE120IpdNOSICL: TBCDField
      FieldName = 'NOSICL'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdNOSFCL: TBCDField
      FieldName = 'NOSFCL'
      Precision = 10
      Size = 0
    end
    object ConsE120IpdNOCCL1: TStringField
      FieldName = 'NOCCL1'
    end
    object ConsE120IpdNOCCL2: TStringField
      FieldName = 'NOCCL2'
    end
    object ConsE120IpdNOCCL3: TStringField
      FieldName = 'NOCCL3'
    end
    object ConsE120IpdCODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
    object ConsE120IpdCTRCVP: TIntegerField
      FieldName = 'CTRCVP'
    end
    object ConsE120IpdCPTCVP: TDateTimeField
      FieldName = 'CPTCVP'
    end
    object ConsE120IpdSEQCTR: TIntegerField
      FieldName = 'SEQCTR'
    end
    object ConsE120IpdINDAPE: TIntegerField
      FieldName = 'INDAPE'
    end
    object ConsE120IpdOBSIPD: TStringField
      FieldName = 'OBSIPD'
      Size = 999
    end
    object ConsE120IpdSEQISP: TIntegerField
      FieldName = 'SEQISP'
    end
    object ConsE120IpdEMPOCP: TIntegerField
      FieldName = 'EMPOCP'
    end
    object ConsE120IpdVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object ConsE120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsE120IpdUSU_CODTEC1: TStringField
      FieldName = 'USU_CODTEC1'
      Size = 14
    end
    object ConsE120IpdUSU_CODTEC2: TStringField
      FieldName = 'USU_CODTEC2'
      Size = 14
    end
    object ConsE120IpdUSU_QTDREP: TIntegerField
      FieldName = 'USU_QTDREP'
    end
    object ConsE120IpdUSU_QTDDIV: TBCDField
      FieldName = 'USU_QTDDIV'
      Precision = 11
      Size = 2
    end
    object ConsE120IpdUSU_MEDLAR: TBCDField
      FieldName = 'USU_MEDLAR'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_MEDCOM: TBCDField
      FieldName = 'USU_MEDCOM'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_MEDALT: TBCDField
      FieldName = 'USU_MEDALT'
      Precision = 8
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC1: TBCDField
      FieldName = 'USU_PERDESC1'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC2: TBCDField
      FieldName = 'USU_PERDESC2'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC3: TBCDField
      FieldName = 'USU_PERDESC3'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC4: TBCDField
      FieldName = 'USU_PERDESC4'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC5: TBCDField
      FieldName = 'USU_PERDESC5'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_PERDESC6: TBCDField
      FieldName = 'USU_PERDESC6'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_CANAPR: TBCDField
      FieldName = 'USU_CANAPR'
      Precision = 14
      Size = 5
    end
    object ConsE120IpdUSU_TOTDSC: TBCDField
      FieldName = 'USU_TOTDSC'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdUSU_TOTDSCORI: TBCDField
      FieldName = 'USU_TOTDSCORI'
      Precision = 5
      Size = 2
    end
    object ConsE120IpdORIRES: TStringField
      FieldName = 'ORIRES'
      Size = 1
    end
    object ConsE120IpdUSU_VLRORI: TBCDField
      FieldName = 'USU_VLRORI'
      Precision = 14
      Size = 2
    end
  end
  object CadE120Ipd: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from e120ipd where codemp = :codemp and'
      '                            codfil = :codfil and'
      '                            numped = :numped and'
      '                            seqipd = :seqipd')
    Left = 752
    Top = 408
    object CadE120IpdCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CadE120IpdCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CadE120IpdNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object CadE120IpdSEQIPD: TIntegerField
      FieldName = 'SEQIPD'
    end
    object CadE120IpdTNSPRO: TStringField
      FieldName = 'TNSPRO'
      Size = 5
    end
    object CadE120IpdPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object CadE120IpdSEQPCL: TStringField
      FieldName = 'SEQPCL'
      Size = 10
    end
    object CadE120IpdPEDPRV: TStringField
      FieldName = 'PEDPRV'
      Size = 1
    end
    object CadE120IpdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object CadE120IpdCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object CadE120IpdCPLIPD: TStringField
      FieldName = 'CPLIPD'
      Size = 250
    end
    object CadE120IpdCODFAM: TStringField
      FieldName = 'CODFAM'
      Size = 6
    end
    object CadE120IpdCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object CadE120IpdCODTIC: TStringField
      FieldName = 'CODTIC'
      Size = 3
    end
    object CadE120IpdCODTRD: TStringField
      FieldName = 'CODTRD'
      Size = 3
    end
    object CadE120IpdCODTST: TStringField
      FieldName = 'CODTST'
      Size = 3
    end
    object CadE120IpdCODSTP: TStringField
      FieldName = 'CODSTP'
      Size = 3
    end
    object CadE120IpdCODSTC: TStringField
      FieldName = 'CODSTC'
      Size = 3
    end
    object CadE120IpdCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object CadE120IpdCODLOT: TStringField
      FieldName = 'CODLOT'
      Size = 17
    end
    object CadE120IpdRESEST: TStringField
      FieldName = 'RESEST'
      Size = 1
    end
    object CadE120IpdQTDPED: TBCDField
      FieldName = 'QTDPED'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDAEN: TBCDField
      FieldName = 'QTDAEN'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDPOC: TBCDField
      FieldName = 'QTDPOC'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDFAT: TBCDField
      FieldName = 'QTDFAT'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDCAN: TBCDField
      FieldName = 'QTDCAN'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDABE: TBCDField
      FieldName = 'QTDABE'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDRAE: TBCDField
      FieldName = 'QTDRAE'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDNLP: TBCDField
      FieldName = 'QTDNLP'
      Precision = 14
      Size = 5
    end
    object CadE120IpdQTDRES: TBCDField
      FieldName = 'QTDRES'
      Precision = 14
      Size = 5
    end
    object CadE120IpdUNIMED: TStringField
      FieldName = 'UNIMED'
      Size = 3
    end
    object CadE120IpdCODMCP: TStringField
      FieldName = 'CODMCP'
      Size = 3
    end
    object CadE120IpdDATMFP: TDateTimeField
      FieldName = 'DATMFP'
    end
    object CadE120IpdCOTMFP: TBCDField
      FieldName = 'COTMFP'
      Precision = 19
      Size = 10
    end
    object CadE120IpdDATMOE: TDateTimeField
      FieldName = 'DATMOE'
    end
    object CadE120IpdCOTMOE: TBCDField
      FieldName = 'COTMOE'
      Precision = 19
      Size = 10
    end
    object CadE120IpdFECMOE: TStringField
      FieldName = 'FECMOE'
      Size = 1
    end
    object CadE120IpdCODTPR: TStringField
      FieldName = 'CODTPR'
      Size = 4
    end
    object CadE120IpdPREUNI: TBCDField
      FieldName = 'PREUNI'
      Precision = 14
      Size = 5
    end
    object CadE120IpdCODMOE: TStringField
      FieldName = 'CODMOE'
      Size = 3
    end
    object CadE120IpdPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 1
    end
    object CadE120IpdPERDSC: TBCDField
      FieldName = 'PERDSC'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPEROFE: TBCDField
      FieldName = 'PEROFE'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPERACR: TBCDField
      FieldName = 'PERACR'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPERIPI: TBCDField
      FieldName = 'PERIPI'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPERICM: TBCDField
      FieldName = 'PERICM'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPERCOM: TBCDField
      FieldName = 'PERCOM'
      Precision = 5
      Size = 2
    end
    object CadE120IpdDATENT: TDateTimeField
      FieldName = 'DATENT'
    end
    object CadE120IpdDATANE: TDateTimeField
      FieldName = 'DATANE'
    end
    object CadE120IpdDATPOC: TDateTimeField
      FieldName = 'DATPOC'
    end
    object CadE120IpdCODPVP: TStringField
      FieldName = 'CODPVP'
      Size = 8
    end
    object CadE120IpdNUMPRJ: TIntegerField
      FieldName = 'NUMPRJ'
    end
    object CadE120IpdCODFPJ: TIntegerField
      FieldName = 'CODFPJ'
    end
    object CadE120IpdCTAFIN: TIntegerField
      FieldName = 'CTAFIN'
    end
    object CadE120IpdCTARED: TIntegerField
      FieldName = 'CTARED'
    end
    object CadE120IpdCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 9
    end
    object CadE120IpdVLRFRE: TBCDField
      FieldName = 'VLRFRE'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRSEG: TBCDField
      FieldName = 'VLRSEG'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLREMB: TBCDField
      FieldName = 'VLREMB'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRENC: TBCDField
      FieldName = 'VLRENC'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLROUT: TBCDField
      FieldName = 'VLROUT'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRDAR: TBCDField
      FieldName = 'VLRDAR'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRFRD: TBCDField
      FieldName = 'VLRFRD'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLROUD: TBCDField
      FieldName = 'VLROUD'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBRU: TBCDField
      FieldName = 'VLRBRU'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRDSC: TBCDField
      FieldName = 'VLRDSC'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRDS1: TBCDField
      FieldName = 'VLRDS1'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRDS2: TBCDField
      FieldName = 'VLRDS2'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRDS3: TBCDField
      FieldName = 'VLRDS3'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRDS4: TBCDField
      FieldName = 'VLRDS4'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLROFE: TBCDField
      FieldName = 'VLROFE'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRDZF: TBCDField
      FieldName = 'VLRDZF'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBIP: TBCDField
      FieldName = 'VLRBIP'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBIC: TBCDField
      FieldName = 'VLRBIC'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRICM: TBCDField
      FieldName = 'VLRICM'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBSI: TBCDField
      FieldName = 'VLRBSI'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRICS: TBCDField
      FieldName = 'VLRICS'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBSP: TBCDField
      FieldName = 'VLRBSP'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRSTP: TBCDField
      FieldName = 'VLRSTP'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBSC: TBCDField
      FieldName = 'VLRBSC'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRSTC: TBCDField
      FieldName = 'VLRSTC'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBCO: TBCDField
      FieldName = 'VLRBCO'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRCOM: TBCDField
      FieldName = 'VLRCOM'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRLPR: TBCDField
      FieldName = 'VLRLPR'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRLOU: TBCDField
      FieldName = 'VLRLOU'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRLIQ: TBCDField
      FieldName = 'VLRLIQ'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRFIN: TBCDField
      FieldName = 'VLRFIN'
      Precision = 15
      Size = 2
    end
    object CadE120IpdSITIPD: TIntegerField
      FieldName = 'SITIPD'
    end
    object CadE120IpdCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object CadE120IpdOBSMOT: TStringField
      FieldName = 'OBSMOT'
      Size = 250
    end
    object CadE120IpdGERNEC: TIntegerField
      FieldName = 'GERNEC'
    end
    object CadE120IpdGERCGA: TStringField
      FieldName = 'GERCGA'
      Size = 1
    end
    object CadE120IpdRESMAN: TStringField
      FieldName = 'RESMAN'
      Size = 1
    end
    object CadE120IpdINDAED: TStringField
      FieldName = 'INDAED'
      Size = 1
    end
    object CadE120IpdNUMCTR: TIntegerField
      FieldName = 'NUMCTR'
    end
    object CadE120IpdDATCPT: TDateTimeField
      FieldName = 'DATCPT'
    end
    object CadE120IpdSEQCVP: TIntegerField
      FieldName = 'SEQCVP'
    end
    object CadE120IpdUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object CadE120IpdDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object CadE120IpdHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object CadE120IpdQTDPPF: TBCDField
      FieldName = 'QTDPPF'
      Precision = 14
      Size = 5
    end
    object CadE120IpdCMPKIT: TStringField
      FieldName = 'CMPKIT'
      Size = 1
    end
    object CadE120IpdFILOCP: TIntegerField
      FieldName = 'FILOCP'
    end
    object CadE120IpdNUMOCP: TIntegerField
      FieldName = 'NUMOCP'
    end
    object CadE120IpdSEQIPO: TIntegerField
      FieldName = 'SEQIPO'
    end
    object CadE120IpdUNIVEN: TStringField
      FieldName = 'UNIVEN'
      Size = 3
    end
    object CadE120IpdQTDVEN: TBCDField
      FieldName = 'QTDVEN'
      Precision = 14
      Size = 5
    end
    object CadE120IpdPREVEN: TBCDField
      FieldName = 'PREVEN'
      Precision = 14
      Size = 5
    end
    object CadE120IpdPREBRU: TBCDField
      FieldName = 'PREBRU'
      Precision = 14
      Size = 5
    end
    object CadE120IpdFILCTR: TIntegerField
      FieldName = 'FILCTR'
    end
    object CadE120IpdCTRCVS: TIntegerField
      FieldName = 'CTRCVS'
    end
    object CadE120IpdCPTCVS: TDateTimeField
      FieldName = 'CPTCVS'
    end
    object CadE120IpdSEQCVS: TIntegerField
      FieldName = 'SEQCVS'
    end
    object CadE120IpdCODAVC: TIntegerField
      FieldName = 'CODAVC'
    end
    object CadE120IpdCODFXA: TStringField
      FieldName = 'CODFXA'
      Size = 15
    end
    object CadE120IpdCODPGR: TStringField
      FieldName = 'CODPGR'
      Size = 5
    end
    object CadE120IpdIDXGRD: TIntegerField
      FieldName = 'IDXGRD'
    end
    object CadE120IpdCODMAR: TStringField
      FieldName = 'CODMAR'
      Size = 10
    end
    object CadE120IpdCODCLC: TStringField
      FieldName = 'CODCLC'
      Size = 10
    end
    object CadE120IpdPERDS1: TBCDField
      FieldName = 'PERDS1'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPERDS2: TBCDField
      FieldName = 'PERDS2'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPERDS3: TBCDField
      FieldName = 'PERDS3'
      Precision = 5
      Size = 2
    end
    object CadE120IpdPERDS4: TBCDField
      FieldName = 'PERDS4'
      Precision = 5
      Size = 2
    end
    object CadE120IpdFILPRD: TIntegerField
      FieldName = 'FILPRD'
    end
    object CadE120IpdVLRRIS: TBCDField
      FieldName = 'VLRRIS'
      Precision = 15
      Size = 2
    end
    object CadE120IpdINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object CadE120IpdINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object CadE120IpdPERPIT: TBCDField
      FieldName = 'PERPIT'
      Precision = 4
      Size = 2
    end
    object CadE120IpdVLRBPT: TBCDField
      FieldName = 'VLRBPT'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRPIT: TBCDField
      FieldName = 'VLRPIT'
      Precision = 15
      Size = 2
    end
    object CadE120IpdPERCRT: TBCDField
      FieldName = 'PERCRT'
      Precision = 4
      Size = 2
    end
    object CadE120IpdVLRBCT: TBCDField
      FieldName = 'VLRBCT'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRCRT: TBCDField
      FieldName = 'VLRCRT'
      Precision = 15
      Size = 2
    end
    object CadE120IpdPERCSL: TBCDField
      FieldName = 'PERCSL'
      Precision = 4
      Size = 2
    end
    object CadE120IpdVLRBCL: TBCDField
      FieldName = 'VLRBCL'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRCSL: TBCDField
      FieldName = 'VLRCSL'
      Precision = 15
      Size = 2
    end
    object CadE120IpdPEROUR: TBCDField
      FieldName = 'PEROUR'
      Precision = 4
      Size = 2
    end
    object CadE120IpdVLRBOR: TBCDField
      FieldName = 'VLRBOR'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLROUR: TBCDField
      FieldName = 'VLROUR'
      Precision = 15
      Size = 2
    end
    object CadE120IpdPERIRF: TBCDField
      FieldName = 'PERIRF'
      Precision = 4
      Size = 2
    end
    object CadE120IpdVLRBIR: TBCDField
      FieldName = 'VLRBIR'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRIRF: TBCDField
      FieldName = 'VLRIRF'
      Precision = 15
      Size = 2
    end
    object CadE120IpdFILNFC: TIntegerField
      FieldName = 'FILNFC'
    end
    object CadE120IpdFORNFC: TIntegerField
      FieldName = 'FORNFC'
    end
    object CadE120IpdNUMNFC: TIntegerField
      FieldName = 'NUMNFC'
    end
    object CadE120IpdSNFNFC: TStringField
      FieldName = 'SNFNFC'
      Size = 3
    end
    object CadE120IpdSEQIPC: TIntegerField
      FieldName = 'SEQIPC'
    end
    object CadE120IpdNCTLCL: TStringField
      FieldName = 'NCTLCL'
    end
    object CadE120IpdNRECLI: TStringField
      FieldName = 'NRECLI'
    end
    object CadE120IpdNOSICL: TBCDField
      FieldName = 'NOSICL'
      Precision = 10
      Size = 0
    end
    object CadE120IpdNOSFCL: TBCDField
      FieldName = 'NOSFCL'
      Precision = 10
      Size = 0
    end
    object CadE120IpdNOCCL1: TStringField
      FieldName = 'NOCCL1'
    end
    object CadE120IpdNOCCL2: TStringField
      FieldName = 'NOCCL2'
    end
    object CadE120IpdNOCCL3: TStringField
      FieldName = 'NOCCL3'
    end
    object CadE120IpdCODAGC: TStringField
      FieldName = 'CODAGC'
      Size = 5
    end
    object CadE120IpdCTRCVP: TIntegerField
      FieldName = 'CTRCVP'
    end
    object CadE120IpdCPTCVP: TDateTimeField
      FieldName = 'CPTCVP'
    end
    object CadE120IpdSEQCTR: TIntegerField
      FieldName = 'SEQCTR'
    end
    object CadE120IpdINDAPE: TIntegerField
      FieldName = 'INDAPE'
    end
    object CadE120IpdOBSIPD: TStringField
      FieldName = 'OBSIPD'
      Size = 999
    end
    object CadE120IpdSEQISP: TIntegerField
      FieldName = 'SEQISP'
    end
    object CadE120IpdEMPOCP: TIntegerField
      FieldName = 'EMPOCP'
    end
    object CadE120IpdVLRBPF: TBCDField
      FieldName = 'VLRBPF'
      Precision = 15
      Size = 2
    end
    object CadE120IpdPERPIF: TBCDField
      FieldName = 'PERPIF'
      Precision = 5
      Size = 2
    end
    object CadE120IpdVLRPIF: TBCDField
      FieldName = 'VLRPIF'
      Precision = 15
      Size = 2
    end
    object CadE120IpdVLRBCF: TBCDField
      FieldName = 'VLRBCF'
      Precision = 15
      Size = 2
    end
    object CadE120IpdPERCFF: TBCDField
      FieldName = 'PERCFF'
      Precision = 5
      Size = 2
    end
    object CadE120IpdVLRCFF: TBCDField
      FieldName = 'VLRCFF'
      Precision = 15
      Size = 2
    end
    object CadE120IpdPERDS5: TBCDField
      FieldName = 'PERDS5'
      Precision = 5
      Size = 2
    end
    object CadE120IpdVLRDS5: TBCDField
      FieldName = 'VLRDS5'
      Precision = 15
      Size = 2
    end
    object CadE120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object CadE120IpdUSU_CODTEC1: TStringField
      FieldName = 'USU_CODTEC1'
      Size = 14
    end
    object CadE120IpdUSU_CODTEC2: TStringField
      FieldName = 'USU_CODTEC2'
      Size = 14
    end
    object CadE120IpdUSU_QTDREP: TIntegerField
      FieldName = 'USU_QTDREP'
    end
    object CadE120IpdUSU_QTDDIV: TBCDField
      FieldName = 'USU_QTDDIV'
      Precision = 11
      Size = 2
    end
    object CadE120IpdUSU_MEDLAR: TBCDField
      FieldName = 'USU_MEDLAR'
      Precision = 8
      Size = 2
    end
    object CadE120IpdUSU_MEDCOM: TBCDField
      FieldName = 'USU_MEDCOM'
      Precision = 8
      Size = 2
    end
    object CadE120IpdUSU_MEDALT: TBCDField
      FieldName = 'USU_MEDALT'
      Precision = 8
      Size = 2
    end
    object CadE120IpdUSU_PERDESC1: TBCDField
      FieldName = 'USU_PERDESC1'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_PERDESC2: TBCDField
      FieldName = 'USU_PERDESC2'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_PERDESC3: TBCDField
      FieldName = 'USU_PERDESC3'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_PERDESC4: TBCDField
      FieldName = 'USU_PERDESC4'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_PERDESC5: TBCDField
      FieldName = 'USU_PERDESC5'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_PERDESC6: TBCDField
      FieldName = 'USU_PERDESC6'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_CANAPR: TBCDField
      FieldName = 'USU_CANAPR'
      Precision = 14
      Size = 5
    end
    object CadE120IpdUSU_TOTDSC: TBCDField
      FieldName = 'USU_TOTDSC'
      Precision = 5
      Size = 2
    end
    object CadE120IpdUSU_TOTDSCORI: TBCDField
      FieldName = 'USU_TOTDSCORI'
      Precision = 5
      Size = 2
    end
    object CadE120IpdORIRES: TStringField
      FieldName = 'ORIRES'
      Size = 1
    end
    object CadE120IpdUSU_VLRORI: TBCDField
      FieldName = 'USU_VLRORI'
      Precision = 14
      Size = 2
    end
  end
  object ConsUsu_T120IpdPC: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t120ipd where usu_codemp = :codemp and'
      '                                usu_codfil = :codfil and'
      '                                usu_numped = :numped and'
      '                                usu_seqipd = :seqipd')
    Left = 848
    Top = 408
    object ConsUsu_T120IpdPCUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsUsu_T120IpdPCUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsUsu_T120IpdPCUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsUsu_T120IpdPCUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsUsu_T120IpdPCUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object ConsUsu_T120IpdPCUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsUsu_T120IpdPCUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ConsUsu_T120IpdPCUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ConsUsu_T120IpdPCUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ConsUsu_T120IpdPCUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsUsu_T120IpdPCUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsUsu_T120IpdPCUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object ConsUsu_T120IpdPCUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsUsu_T120IpdPCUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object ConsUsu_T120IpdPCUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsUsu_T120IpdPCUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
  end
  object CadUsu_T120Ipd: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codemp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'codfil'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqipd'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqite'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from usu_t120ipd where usu_codemp = :codemp and'
      '                                usu_codfil = :codfil and'
      '                                usu_numped = :numped and'
      '                                usu_seqipd = :seqipd and'
      '                                usu_seqite = :seqite')
    Left = 952
    Top = 408
    object CadUsu_T120IpdUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object CadUsu_T120IpdUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object CadUsu_T120IpdUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object CadUsu_T120IpdUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object CadUsu_T120IpdUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object CadUsu_T120IpdUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object CadUsu_T120IpdUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object CadUsu_T120IpdUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object CadUsu_T120IpdUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object CadUsu_T120IpdUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_T120IpdUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu_T120IpdUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object CadUsu_T120IpdUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object CadUsu_T120IpdUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object CadUsu_T120IpdUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object CadUsu_T120IpdUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object CadUsu_T120IpdUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
  end
  object ConsUsu_TIteCar: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select usu_titecar.*,e120ped.codcli,e085cli.nomcli,e085cli.cidcl' +
        'i,e120ped.codemp ,e090rep.nomrep from usu_titecar'
      'inner join e120ped on e120ped.numped = usu_titecar.usu_numped'
      'inner join e085cli on e085cli.codcli = e120ped.codcli'
      'inner join e090rep on e090rep.codrep = usu_titecar.usu_codrep'
      '                   where usu_titecar.usu_precar = :precar'
      '                   order by usu_titecar.usu_seqite')
    Left = 608
    Top = 464
    object ConsUsu_TIteCarUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsUsu_TIteCarUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ConsUsu_TIteCarUSU_FILPED: TIntegerField
      FieldName = 'USU_FILPED'
    end
    object ConsUsu_TIteCarUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsUsu_TIteCarUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object ConsUsu_TIteCarUSU_DATGER: TDateTimeField
      FieldName = 'USU_DATGER'
    end
    object ConsUsu_TIteCarUSU_HORGER: TIntegerField
      FieldName = 'USU_HORGER'
    end
    object ConsUsu_TIteCarUSU_CODREP: TIntegerField
      FieldName = 'USU_CODREP'
    end
    object ConsUsu_TIteCarCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsUsu_TIteCarNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsUsu_TIteCarCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsUsu_TIteCarNOMREP: TStringField
      FieldName = 'NOMREP'
      Size = 100
    end
    object ConsUsu_TIteCarCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
  end
  object ConsProdSemCus: TADOQuery
    Connection = Dm.ADOBanco
    Parameters = <>
    SQL.Strings = (
      'select e075pro.despro, e075der.* from e075der'
      'inner join e075pro on e075pro.codemp = e075der.codemp and'
      '                      e075pro.codpro = e075der.codpro'
      '                      where'
      '                      e075pro.tippro = '#39'P'#39' and'
      '                      e075der.precus = 0'
      '                      order by e075pro.despro')
    Left = 585
    Top = 528
    object ConsProdSemCusDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
    object ConsProdSemCusCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsProdSemCusCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsProdSemCusCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsProdSemCusDESDER: TStringField
      FieldName = 'DESDER'
      Size = 50
    end
    object ConsProdSemCusDESCPL: TStringField
      FieldName = 'DESCPL'
      Size = 90
    end
    object ConsProdSemCusCODBAR: TBCDField
      FieldName = 'CODBAR'
      Precision = 13
      Size = 0
    end
    object ConsProdSemCusCODAGR: TIntegerField
      FieldName = 'CODAGR'
    end
    object ConsProdSemCusCODAGT: TStringField
      FieldName = 'CODAGT'
      Size = 5
    end
    object ConsProdSemCusSEQCMD: TIntegerField
      FieldName = 'SEQCMD'
    end
    object ConsProdSemCusDATVAL: TDateTimeField
      FieldName = 'DATVAL'
    end
    object ConsProdSemCusDIAVLT: TIntegerField
      FieldName = 'DIAVLT'
    end
    object ConsProdSemCusTIPCN2: TStringField
      FieldName = 'TIPCN2'
      Size = 1
    end
    object ConsProdSemCusVLRCN2: TBCDField
      FieldName = 'VLRCN2'
      Precision = 13
      Size = 6
    end
    object ConsProdSemCusTIPCN3: TStringField
      FieldName = 'TIPCN3'
      Size = 1
    end
    object ConsProdSemCusVLRCN3: TBCDField
      FieldName = 'VLRCN3'
      Precision = 13
      Size = 6
    end
    object ConsProdSemCusPRECUS: TBCDField
      FieldName = 'PRECUS'
      Precision = 15
      Size = 6
    end
    object ConsProdSemCusDATCUS: TDateTimeField
      FieldName = 'DATCUS'
    end
    object ConsProdSemCusPREMED: TBCDField
      FieldName = 'PREMED'
      Precision = 15
      Size = 6
    end
    object ConsProdSemCusDATMED: TDateTimeField
      FieldName = 'DATMED'
    end
    object ConsProdSemCusPREUEN: TBCDField
      FieldName = 'PREUEN'
      Precision = 15
      Size = 6
    end
    object ConsProdSemCusDATUEN: TDateTimeField
      FieldName = 'DATUEN'
    end
    object ConsProdSemCusPREREP: TBCDField
      FieldName = 'PREREP'
      Precision = 15
      Size = 6
    end
    object ConsProdSemCusDATREP: TDateTimeField
      FieldName = 'DATREP'
    end
    object ConsProdSemCusDIAREP: TIntegerField
      FieldName = 'DIAREP'
    end
    object ConsProdSemCusPESBRU: TBCDField
      FieldName = 'PESBRU'
      Precision = 11
      Size = 5
    end
    object ConsProdSemCusPESLIQ: TBCDField
      FieldName = 'PESLIQ'
      Precision = 11
      Size = 5
    end
    object ConsProdSemCusTOLPES: TBCDField
      FieldName = 'TOLPES'
      Precision = 5
      Size = 3
    end
    object ConsProdSemCusVOLDER: TBCDField
      FieldName = 'VOLDER'
      Precision = 11
      Size = 5
    end
    object ConsProdSemCusPERPRD: TBCDField
      FieldName = 'PERPRD'
      Precision = 4
      Size = 2
    end
    object ConsProdSemCusQTDIQL: TBCDField
      FieldName = 'QTDIQL'
      Precision = 14
      Size = 5
    end
    object ConsProdSemCusQTDCIC: TBCDField
      FieldName = 'QTDCIC'
      Precision = 14
      Size = 5
    end
    object ConsProdSemCusQTDPRD: TBCDField
      FieldName = 'QTDPRD'
      Precision = 14
      Size = 5
    end
    object ConsProdSemCusPREUIS: TBCDField
      FieldName = 'PREUIS'
      Precision = 17
      Size = 8
    end
    object ConsProdSemCusPERICS: TBCDField
      FieldName = 'PERICS'
      Precision = 5
      Size = 2
    end
    object ConsProdSemCusCODEMB: TIntegerField
      FieldName = 'CODEMB'
    end
    object ConsProdSemCusQTDEMB: TIntegerField
      FieldName = 'QTDEMB'
    end
    object ConsProdSemCusCODROT: TStringField
      FieldName = 'CODROT'
      Size = 14
    end
    object ConsProdSemCusCODROY: TIntegerField
      FieldName = 'CODROY'
    end
    object ConsProdSemCusBXAORP: TStringField
      FieldName = 'BXAORP'
      Size = 1
    end
    object ConsProdSemCusSERCCL: TStringField
      FieldName = 'SERCCL'
      Size = 3
    end
    object ConsProdSemCusNUMCCL: TStringField
      FieldName = 'NUMCCL'
      Size = 12
    end
    object ConsProdSemCusCURABC: TStringField
      FieldName = 'CURABC'
      Size = 1
    end
    object ConsProdSemCusCURAB2: TStringField
      FieldName = 'CURAB2'
      Size = 1
    end
    object ConsProdSemCusCURAB3: TStringField
      FieldName = 'CURAB3'
      Size = 1
    end
    object ConsProdSemCusCURAB4: TStringField
      FieldName = 'CURAB4'
      Size = 1
    end
    object ConsProdSemCusCODREG: TIntegerField
      FieldName = 'CODREG'
    end
    object ConsProdSemCusSITDER: TStringField
      FieldName = 'SITDER'
      Size = 1
    end
    object ConsProdSemCusCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ConsProdSemCusCTRLOT: TStringField
      FieldName = 'CTRLOT'
      Size = 1
    end
    object ConsProdSemCusCTRSEP: TStringField
      FieldName = 'CTRSEP'
      Size = 1
    end
    object ConsProdSemCusCTRVLD: TStringField
      FieldName = 'CTRVLD'
      Size = 1
    end
    object ConsProdSemCusDEPPAD: TStringField
      FieldName = 'DEPPAD'
      Size = 10
    end
    object ConsProdSemCusDEPPAA: TStringField
      FieldName = 'DEPPAA'
      Size = 10
    end
    object ConsProdSemCusINDPCE: TStringField
      FieldName = 'INDPCE'
      Size = 1
    end
    object ConsProdSemCusINDPCR: TStringField
      FieldName = 'INDPCR'
      Size = 1
    end
    object ConsProdSemCusINDKAN: TStringField
      FieldName = 'INDKAN'
      Size = 1
    end
    object ConsProdSemCusCODREF: TStringField
      FieldName = 'CODREF'
    end
    object ConsProdSemCusCODPIN: TStringField
      FieldName = 'CODPIN'
    end
    object ConsProdSemCusNOTFOR: TBCDField
      FieldName = 'NOTFOR'
      Precision = 5
      Size = 2
    end
    object ConsProdSemCusORICUS: TStringField
      FieldName = 'ORICUS'
      Size = 1
    end
    object ConsProdSemCusINFCUS: TStringField
      FieldName = 'INFCUS'
      Size = 1
    end
    object ConsProdSemCusHORCUS: TIntegerField
      FieldName = 'HORCUS'
    end
    object ConsProdSemCusUSUGER: TBCDField
      FieldName = 'USUGER'
      Precision = 10
      Size = 0
    end
    object ConsProdSemCusHORGER: TIntegerField
      FieldName = 'HORGER'
    end
    object ConsProdSemCusDATGER: TDateTimeField
      FieldName = 'DATGER'
    end
    object ConsProdSemCusUSUALT: TBCDField
      FieldName = 'USUALT'
      Precision = 10
      Size = 0
    end
    object ConsProdSemCusHORALT: TIntegerField
      FieldName = 'HORALT'
    end
    object ConsProdSemCusDATALT: TDateTimeField
      FieldName = 'DATALT'
    end
    object ConsProdSemCusCODAGE: TStringField
      FieldName = 'CODAGE'
      Size = 10
    end
    object ConsProdSemCusCODBA2: TStringField
      FieldName = 'CODBA2'
      Size = 30
    end
    object ConsProdSemCusINDEXP: TIntegerField
      FieldName = 'INDEXP'
    end
    object ConsProdSemCusDATPAL: TDateTimeField
      FieldName = 'DATPAL'
    end
    object ConsProdSemCusHORPAL: TIntegerField
      FieldName = 'HORPAL'
    end
    object ConsProdSemCusEXPWMS: TIntegerField
      FieldName = 'EXPWMS'
    end
    object ConsProdSemCusSERMVP: TStringField
      FieldName = 'SERMVP'
      Size = 14
    end
    object ConsProdSemCusAPRDFT: TStringField
      FieldName = 'APRDFT'
      Size = 1
    end
    object ConsProdSemCusCODAEM: TStringField
      FieldName = 'CODAEM'
      Size = 10
    end
    object ConsProdSemCusCODPDV: TIntegerField
      FieldName = 'CODPDV'
    end
    object ConsProdSemCusINDGEN: TStringField
      FieldName = 'INDGEN'
      Size = 1
    end
    object ConsProdSemCusQTDMLT: TBCDField
      FieldName = 'QTDMLT'
      Precision = 12
      Size = 5
    end
    object ConsProdSemCusQTDMIN: TBCDField
      FieldName = 'QTDMIN'
      Precision = 12
      Size = 5
    end
    object ConsProdSemCusQTDMAX: TBCDField
      FieldName = 'QTDMAX'
      Precision = 12
      Size = 5
    end
    object ConsProdSemCusCODEND: TStringField
      FieldName = 'CODEND'
      Size = 10
    end
    object ConsProdSemCusROTANX: TIntegerField
      FieldName = 'ROTANX'
    end
    object ConsProdSemCusNUMANX: TBCDField
      FieldName = 'NUMANX'
      Precision = 10
      Size = 0
    end
    object ConsProdSemCusINDPCQ: TStringField
      FieldName = 'INDPCQ'
      Size = 1
    end
    object ConsProdSemCusVLRCID: TBCDField
      FieldName = 'VLRCID'
      Precision = 15
      Size = 2
    end
    object ConsProdSemCusUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object ConsProdSemCusUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object ConsProdSemCusUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object ConsProdSemCusUSU_CMP2BB: TBCDField
      FieldName = 'USU_CMP2BB'
      Precision = 8
      Size = 2
    end
    object ConsProdSemCusUSU_CMP2EN: TBCDField
      FieldName = 'USU_CMP2EN'
      Precision = 8
      Size = 2
    end
    object ConsProdSemCusUSU_MEDESP: TStringField
      FieldName = 'USU_MEDESP'
      Size = 1
    end
  end
  object ValidaColchoesCarga: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'precar'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select usu_t120ipd.* from usu_t120ipd'
      
        'inner join e075pro on e075pro.codemp = usu_t120ipd.usu_codemp an' +
        'd'
      '                      e075pro.codpro = usu_t120ipd.usu_codpro'
      '                      where usu_t120ipd.usu_precar = :precar and'
      '                            e075pro.codfam in ('#39'01001'#39','#39'010030'#39')')
    Left = 144
    Top = 272
    object ValidaColchoesCargaUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ValidaColchoesCargaUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ValidaColchoesCargaUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ValidaColchoesCargaUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ValidaColchoesCargaUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object ValidaColchoesCargaUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ValidaColchoesCargaUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ValidaColchoesCargaUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ValidaColchoesCargaUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ValidaColchoesCargaUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ValidaColchoesCargaUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ValidaColchoesCargaUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object ValidaColchoesCargaUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ValidaColchoesCargaUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object ValidaColchoesCargaUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object ValidaColchoesCargaUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
  end
  object ConsProdutos_Cores: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PRECAR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_T120IPD.*,E075PRO.DESPRO'
      '               FROM USU_T120IPD'
      
        'INNER JOIN E120IPD ON E120IPD.CODEMP = USU_T120IPD.USU_CODEMP AN' +
        'D'
      
        '                      E120IPD.CODFIL = USU_T120IPD.USU_CODFIL AN' +
        'D'
      
        '                      E120IPD.NUMPED = USU_T120IPD.USU_NUMPED AN' +
        'D'
      '                      E120IPD.SEQIPD = USU_T120IPD.USU_SEQIPD'
      
        'INNER JOIN E075PRO ON E075PRO.CODEMP = USU_T120IPD.USU_CODEMP AN' +
        'D'
      '                      E075PRO.CODPRO = USU_T120IPD.USU_CODPRO'
      '               WHERE USU_T120IPD.USU_PRECAR = :PRECAR AND'
      '                     E075PRO.CODAGP = '#39'ESTOF'#39'  AND'
      '                     USU_T120IPD.USU_CODFIL = 1 AND'
      '                     E120IPD.TNSPRO IN ('#39'90100'#39','#39'90111'#39')'
      
        '                     ORDER BY USU_T120IPD.USU_CODPRO, USU_T120IP' +
        'D.USU_CODDER')
    Left = 44
    Top = 536
    object ConsProdutos_CoresUSU_CODEMP: TIntegerField
      FieldName = 'USU_CODEMP'
    end
    object ConsProdutos_CoresUSU_CODFIL: TIntegerField
      FieldName = 'USU_CODFIL'
    end
    object ConsProdutos_CoresUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object ConsProdutos_CoresUSU_SEQIPD: TIntegerField
      FieldName = 'USU_SEQIPD'
    end
    object ConsProdutos_CoresUSU_QTDCOR: TIntegerField
      FieldName = 'USU_QTDCOR'
    end
    object ConsProdutos_CoresUSU_TIPCMB: TIntegerField
      FieldName = 'USU_TIPCMB'
    end
    object ConsProdutos_CoresUSU_COR001: TStringField
      FieldName = 'USU_COR001'
      Size = 14
    end
    object ConsProdutos_CoresUSU_COR002: TStringField
      FieldName = 'USU_COR002'
      Size = 14
    end
    object ConsProdutos_CoresUSU_SEQITE: TIntegerField
      FieldName = 'USU_SEQITE'
    end
    object ConsProdutos_CoresUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsProdutos_CoresUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsProdutos_CoresUSU_TECTRA: TStringField
      FieldName = 'USU_TECTRA'
      Size = 1
    end
    object ConsProdutos_CoresUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsProdutos_CoresUSU_QTDCAN: TIntegerField
      FieldName = 'USU_QTDCAN'
    end
    object ConsProdutos_CoresUSU_NUMANE: TBCDField
      FieldName = 'USU_NUMANE'
      Precision = 12
      Size = 0
    end
    object ConsProdutos_CoresUSU_PRECAR: TIntegerField
      FieldName = 'USU_PRECAR'
    end
    object ConsProdutos_CoresUSU_NUMCOM: TIntegerField
      FieldName = 'USU_NUMCOM'
    end
    object ConsProdutos_CoresDESPRO: TStringField
      FieldName = 'DESPRO'
      Size = 100
    end
  end
  object ConsProdutosCarga: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODDER'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TPROCAR.*'
      '                  FROM USU_TPROCAR'
      '                  WHERE'
      '                  USU_TPROCAR.USU_NUMANE = :NUMANE AND'
      '                  USU_TPROCAR.USU_CODPRO = :CODPRO AND'
      '                  USU_TPROCAR.USU_CODDER = :CODDER')
    Left = 40
    Top = 584
    object ConsProdutosCargaUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsProdutosCargaUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsProdutosCargaUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsProdutosCargaUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object ConsProdutosCargaUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ConsProdutosCargaUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsProdutosCargaUSU_PROCOR: TStringField
      FieldName = 'USU_PROCOR'
      Size = 1
    end
  end
  object ConsCoresCarga: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODDER'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODCOR1'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODCOR2'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT USU_TCORCAR.* FROM USU_TCORCAR'
      '              WHERE'
      '              USU_TCORCAR.USU_NUMANE = :NUMANE AND'
      '              USU_TCORCAR.USU_CODPRO = :CODPRO AND'
      '              USU_TCORCAR.USU_CODDER = :CODDER AND'
      '              USU_TCORCAR.USU_CODCOR1 = :CODCOR1 AND'
      '              USU_TCORCAR.USU_CODCOR2 = :CODCOR2')
    Left = 144
    Top = 584
    object ConsCoresCargaUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object ConsCoresCargaUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object ConsCoresCargaUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object ConsCoresCargaUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object ConsCoresCargaUSU_QTDPED: TIntegerField
      FieldName = 'USU_QTDPED'
    end
    object ConsCoresCargaUSU_QTDPRO: TIntegerField
      FieldName = 'USU_QTDPRO'
    end
    object ConsCoresCargaUSU_QTDABE: TIntegerField
      FieldName = 'USU_QTDABE'
    end
    object ConsCoresCargaUSU_SALABE1: TBCDField
      FieldName = 'USU_SALABE1'
      Precision = 11
      Size = 2
    end
    object ConsCoresCargaUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object ConsCoresCargaUSU_SALABE2: TBCDField
      FieldName = 'USU_SALABE2'
      Precision = 11
      Size = 2
    end
    object ConsCoresCargaUSU_TIPCOM: TIntegerField
      FieldName = 'USU_TIPCOM'
    end
    object ConsCoresCargaUSU_CORCOR: TStringField
      FieldName = 'USU_CORCOR'
      Size = 1
    end
    object ConsCoresCargaUSU_SELITE: TStringField
      FieldName = 'USU_SELITE'
      Size = 1
    end
    object ConsCoresCargaUSU_QTDCOR1: TBCDField
      FieldName = 'USU_QTDCOR1'
      Precision = 11
      Size = 2
    end
    object ConsCoresCargaUSU_QTDCOR2: TBCDField
      FieldName = 'USU_QTDCOR2'
      Precision = 11
      Size = 2
    end
  end
  object ClientBaixaCorteTecEstof: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 544
    Data = {
      090100009619E0BD01000000180000000B0000000000030000000901064E554D
      414E45040001000000000006434F4450524F0100490000000100055749445448
      020002000E0006434F4444455201004900000001000557494454480200020007
      0007434F44434F52310100490000000100055749445448020002000E0007434F
      44434F52320100490000000100055749445448020002000E0006515444504544
      04000100000000000651544450524F0400010000000000065154444142450400
      010000000000065154444D4F5604000100000000000649544553454C01004900
      0000010005574944544802000200010006494D4147454D010049000000010005
      5749445448020002000A000000}
    object ClientBaixaCorteTecEstofNUMANE: TIntegerField
      FieldName = 'NUMANE'
    end
    object ClientBaixaCorteTecEstofCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ClientBaixaCorteTecEstofCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ClientBaixaCorteTecEstofCODCOR1: TStringField
      FieldName = 'CODCOR1'
      Size = 14
    end
    object ClientBaixaCorteTecEstofCODCOR2: TStringField
      FieldName = 'CODCOR2'
      Size = 14
    end
    object ClientBaixaCorteTecEstofQTDPED: TIntegerField
      FieldName = 'QTDPED'
    end
    object ClientBaixaCorteTecEstofQTDPRO: TIntegerField
      FieldName = 'QTDPRO'
    end
    object ClientBaixaCorteTecEstofQTDABE: TIntegerField
      FieldName = 'QTDABE'
    end
    object ClientBaixaCorteTecEstofQTDMOV: TIntegerField
      FieldName = 'QTDMOV'
    end
    object ClientBaixaCorteTecEstofITESEL: TStringField
      FieldName = 'ITESEL'
      Size = 1
    end
    object ClientBaixaCorteTecEstofIMAGEM: TStringField
      FieldName = 'IMAGEM'
      Size = 10
    end
  end
  object ConsE075DerConsumoTec: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODDER'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E075DER.CODEMP,E075DER.CODPRO,E075DER.CODDER,E075DER.USU_' +
        'CORUNI,'
      '       E075DER.USU_CMP1BB,E075DER.USU_CMP1AE,'
      '       E075DER.USU_CMP2BB,E075DER.USU_CMP2EN'
      '              FROM E075DER'
      '              WHERE'
      '              E075DER.CODPRO = :CODPRO AND'
      '              E075DER.CODDER = :CODDER')
    Left = 376
    Top = 544
    object ConsE075DerConsumoTecCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE075DerConsumoTecCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE075DerConsumoTecCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE075DerConsumoTecUSU_CORUNI: TBCDField
      FieldName = 'USU_CORUNI'
      Precision = 8
      Size = 2
    end
    object ConsE075DerConsumoTecUSU_CMP1BB: TBCDField
      FieldName = 'USU_CMP1BB'
      Precision = 8
      Size = 2
    end
    object ConsE075DerConsumoTecUSU_CMP1AE: TBCDField
      FieldName = 'USU_CMP1AE'
      Precision = 8
      Size = 2
    end
    object ConsE075DerConsumoTecUSU_CMP2BB: TBCDField
      FieldName = 'USU_CMP2BB'
      Precision = 8
      Size = 2
    end
    object ConsE075DerConsumoTecUSU_CMP2EN: TBCDField
      FieldName = 'USU_CMP2EN'
      Precision = 8
      Size = 2
    end
  end
  object ConsSaldoTecido: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E210EST.CODPRO,E210EST.QTDEST,USU_TSALTEC.USU_SALRES,USU_' +
        'TSALTEC.USU_SALFIL'
      '                      FROM E210EST'
      'LEFT JOIN USU_TSALTEC ON USU_TSALTEC.USU_CODPRO = E210EST.CODPRO'
      '                      WHERE'
      '                      E210EST.CODPRO = :CODPRO AND'
      '                      E210EST.CODDEP = '#39'1001'#39)
    Left = 248
    Top = 592
    object ConsSaldoTecidoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsSaldoTecidoQTDEST: TFMTBCDField
      FieldName = 'QTDEST'
      Precision = 14
      Size = 5
    end
    object ConsSaldoTecidoUSU_SALRES: TBCDField
      FieldName = 'USU_SALRES'
      Precision = 11
      Size = 2
    end
    object ConsSaldoTecidoUSU_SALFIL: TBCDField
      FieldName = 'USU_SALFIL'
      Precision = 11
      Size = 2
    end
  end
  object CadUsu_TSalTec: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_TSALTEC WHERE USU_CODPRO = :CODPRO')
    Left = 352
    Top = 600
    object CadUsu_TSalTecUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TSalTecUSU_SALRES: TBCDField
      FieldName = 'USU_SALRES'
      Precision = 11
      Size = 2
    end
    object CadUsu_TSalTecUSU_SALFIL: TBCDField
      FieldName = 'USU_SALFIL'
      Precision = 11
      Size = 2
    end
  end
  object ConsE210MvpTecEstof: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODDER'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODCOR1'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CODCOR2'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E210MVP.CODEMP,E210MVP.CODPRO,E210MVP.CODDER,E210MVP.CODD' +
        'EP,'
      '            E210MVP.DATMOV,E210MVP.SEQMOV,E210MVP.QTDMOV'
      '            FROM E210MVP'
      '            WHERE'
      '            E210MVP.USU_NUMANE = :NUMANE AND'
      '            E210MVP.USU_CODPRO = :CODPRO AND'
      '            E210MVP.USU_CODDER = :CODDER AND'
      '            E210MVP.USU_CODCOR1 = :CODCOR1 AND'
      '            E210MVP.USU_CODCOR2 = :CODCOR2')
    Left = 464
    Top = 600
    object ConsE210MvpTecEstofCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsE210MvpTecEstofCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object ConsE210MvpTecEstofCODDER: TStringField
      FieldName = 'CODDER'
      Size = 7
    end
    object ConsE210MvpTecEstofCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 10
    end
    object ConsE210MvpTecEstofDATMOV: TDateTimeField
      FieldName = 'DATMOV'
    end
    object ConsE210MvpTecEstofSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object ConsE210MvpTecEstofQTDMOV: TFMTBCDField
      FieldName = 'QTDMOV'
      Precision = 14
      Size = 5
    end
  end
  object CadUsu_TCarProObs: TADOQuery
    Connection = Dm.ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USU_TCARPROOBS WHERE USU_NUMANE = :NUMANE')
    Left = 608
    Top = 592
    object CadUsu_TCarProObsUSU_NUMANE: TIntegerField
      FieldName = 'USU_NUMANE'
    end
    object CadUsu_TCarProObsUSU_CODPRO: TStringField
      FieldName = 'USU_CODPRO'
      Size = 14
    end
    object CadUsu_TCarProObsUSU_CODDER: TStringField
      FieldName = 'USU_CODDER'
      Size = 7
    end
    object CadUsu_TCarProObsUSU_CODCOR1: TStringField
      FieldName = 'USU_CODCOR1'
      Size = 14
    end
    object CadUsu_TCarProObsUSU_CODCOR2: TStringField
      FieldName = 'USU_CODCOR2'
      Size = 14
    end
    object CadUsu_TCarProObsUSU_SEQOBS: TIntegerField
      FieldName = 'USU_SEQOBS'
    end
    object CadUsu_TCarProObsUSU_DATOBS: TDateTimeField
      FieldName = 'USU_DATOBS'
    end
    object CadUsu_TCarProObsUSU_OBSRES: TStringField
      FieldName = 'USU_OBSRES'
      Size = 1
    end
    object CadUsu_TCarProObsUSU_DESOBS: TStringField
      FieldName = 'USU_DESOBS'
      Size = 500
    end
    object CadUsu_TCarProObsUSU_TIPMOV: TStringField
      FieldName = 'USU_TIPMOV'
      Size = 1
    end
    object CadUsu_TCarProObsUSU_HOROBS: TIntegerField
      FieldName = 'USU_HOROBS'
    end
    object CadUsu_TCarProObsUSU_NUMPED: TIntegerField
      FieldName = 'USU_NUMPED'
    end
    object CadUsu_TCarProObsUSU_CODUSU: TIntegerField
      FieldName = 'USU_CODUSU'
    end
    object CadUsu_TCarProObsCheck: TStringField
      FieldKind = fkCalculated
      FieldName = 'Check'
      Size = 10
      Calculated = True
    end
    object CadUsu_TCarProObsImgTipMov: TStringField
      FieldKind = fkCalculated
      FieldName = 'ImgTipMov'
      Size = 10
      Calculated = True
    end
    object CadUsu_TCarProObsUSU_QTDMOV: TIntegerField
      FieldName = 'USU_QTDMOV'
    end
  end
  object cmdAtualizaCarProObs: TADOCommand
    CommandText = 
      'UPDATE USU_TCARPROOBS SET USU_OBSRES = '#39'S'#39' WHERE USU_NUMANE = :N' +
      'UMANE AND'#13#10'                                                 USU_' +
      'SEQOBS = :SEQOBS'
    Connection = Dm.ADOBanco
    Parameters = <
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SEQOBS'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 712
    Top = 576
  end
end
