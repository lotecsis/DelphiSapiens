object DmRubi: TDmRubi
  OldCreateOrder = False
  Height = 460
  Width = 555
  object ADOBanco: TADOConnection
    ConnectionString = 
      'Provider=MSDAORA.1;Password=vetliderlar;User ID=vetorh;Data Sour' +
      'ce=liderlar;Persist Security Info=True'
    LoginPrompt = False
    Provider = 'MSDAORA.1'
    Left = 40
    Top = 48
  end
  object ConsR002Fem: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'DatINi'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DatFim'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      '          from r002fec'
      '          where'
      '          datfer between :DatINi and :DatFim')
    Left = 48
    Top = 112
    object ConsR002FemCODFER: TIntegerField
      FieldName = 'CODFER'
    end
    object ConsR002FemDATFER: TDateTimeField
      FieldName = 'DATFER'
    end
    object ConsR002FemDESFER: TStringField
      FieldName = 'DESFER'
      Size = 30
    end
    object ConsR002FemDISVTR: TStringField
      FieldName = 'DISVTR'
      Size = 1
    end
    object ConsR002FemUTISRV: TIntegerField
      FieldName = 'UTISRV'
    end
  end
  object ConsR054Ctd: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM R054CTD'
      
        '                                WHERE CMPCTD BETWEEN :DATINI AND' +
        ' :DATFIM AND'
      '                                   NUMCAD <> 1000'
      '                                  ')
    Left = 48
    Top = 176
    object ConsR054CtdNUMEMP: TIntegerField
      FieldName = 'NUMEMP'
    end
    object ConsR054CtdTIPCOL: TIntegerField
      FieldName = 'TIPCOL'
    end
    object ConsR054CtdNUMCAD: TIntegerField
      FieldName = 'NUMCAD'
    end
    object ConsR054CtdCMPCTD: TDateTimeField
      FieldName = 'CMPCTD'
    end
    object ConsR054CtdMOTREA: TIntegerField
      FieldName = 'MOTREA'
    end
    object ConsR054CtdREAREM: TBCDField
      FieldName = 'REAREM'
      Precision = 5
      Size = 2
    end
    object ConsR054CtdFAICON: TBCDField
      FieldName = 'FAICON'
      Precision = 4
      Size = 2
    end
    object ConsR054CtdDATREC: TDateTimeField
      FieldName = 'DATREC'
    end
    object ConsR054CtdDAT13S: TDateTimeField
      FieldName = 'DAT13S'
    end
    object ConsR054CtdPAGINS: TStringField
      FieldName = 'PAGINS'
      Size = 1
    end
    object ConsR054CtdPAG13S: TStringField
      FieldName = 'PAG13S'
      Size = 1
    end
    object ConsR054CtdFATTPO: TBCDField
      FieldName = 'FATTPO'
      Precision = 4
      Size = 2
    end
    object ConsR054CtdREMSAL: TBCDField
      FieldName = 'REMSAL'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdREMCTR: TBCDField
      FieldName = 'REMCTR'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdREMADI: TBCDField
      FieldName = 'REMADI'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdREMCOM: TBCDField
      FieldName = 'REMCOM'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdREMEXT: TBCDField
      FieldName = 'REMEXT'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdREMFER: TBCDField
      FieldName = 'REMFER'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdTOTREM: TBCDField
      FieldName = 'TOTREM'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdBINMES: TBCDField
      FieldName = 'BINMES'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdVINMES: TBCDField
      FieldName = 'VINMES'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdVIRMES: TBCDField
      FieldName = 'VIRMES'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdVMAMES: TBCDField
      FieldName = 'VMAMES'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdBIN13S: TBCDField
      FieldName = 'BIN13S'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdVIN13S: TBCDField
      FieldName = 'VIN13S'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdVIR13S: TBCDField
      FieldName = 'VIR13S'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdVALSFA: TBCDField
      FieldName = 'VALSFA'
      Precision = 11
      Size = 2
    end
    object ConsR054CtdVMA13S: TBCDField
      FieldName = 'VMA13S'
      Precision = 11
      Size = 2
    end
  end
  object ConsR034FunImp: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT NUMCAD,NOMFUN,APEFUN,DATADM,NUMCPF,SITAFA'
      '                               FROM R034FUN                   '
      '                               ORDER BY NUMCAD')
    Left = 56
    Top = 240
    object ConsR034FunImpNUMCAD: TIntegerField
      FieldName = 'NUMCAD'
    end
    object ConsR034FunImpNOMFUN: TStringField
      FieldName = 'NOMFUN'
      Size = 40
    end
    object ConsR034FunImpAPEFUN: TStringField
      FieldName = 'APEFUN'
      Size = 15
    end
    object ConsR034FunImpDATADM: TDateTimeField
      FieldName = 'DATADM'
    end
    object ConsR034FunImpNUMCPF: TBCDField
      FieldName = 'NUMCPF'
      Precision = 11
      Size = 0
    end
    object ConsR034FunImpSITAFA: TIntegerField
      FieldName = 'SITAFA'
    end
  end
  object ConsR036DepImp: TADOQuery
    Connection = ADOBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMCAD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT NUMEMP,NUMCAD,CODDEP,NOMDEP,DATNAS,NUMCPF,GRAPAR'
      ' FROM R036DEP'
      ' WHERE NUMCAD = :NUMCAD')
    Left = 64
    Top = 296
    object ConsR036DepImpNUMEMP: TIntegerField
      FieldName = 'NUMEMP'
    end
    object ConsR036DepImpNUMCAD: TIntegerField
      FieldName = 'NUMCAD'
    end
    object ConsR036DepImpCODDEP: TIntegerField
      FieldName = 'CODDEP'
    end
    object ConsR036DepImpNOMDEP: TStringField
      FieldName = 'NOMDEP'
      Size = 40
    end
    object ConsR036DepImpDATNAS: TDateTimeField
      FieldName = 'DATNAS'
    end
    object ConsR036DepImpNUMCPF: TBCDField
      FieldName = 'NUMCPF'
      Precision = 11
      Size = 0
    end
    object ConsR036DepImpGRAPAR: TIntegerField
      FieldName = 'GRAPAR'
    end
  end
end
