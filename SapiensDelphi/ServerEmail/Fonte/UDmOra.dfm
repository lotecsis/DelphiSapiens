object DmOra: TDmOra
  OldCreateOrder = False
  Height = 516
  Width = 783
  object Banco: TADOConnection
    ConnectionString = 
      'Provider=MSDAORA.1;Password=saplider;User ID=saplider;Data Sourc' +
      'e=liderlar;Persist Security Info=True'
    LoginPrompt = False
    Provider = 'MSDAORA.1'
    Left = 32
    Top = 24
  end
  object ConsE301Tcr: TADOQuery
    Connection = Banco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT E085CLI.CODCLI,E085CLI.NOMCLI,E085CLI.CIDCLI,E085CLI.SIGU' +
        'FS,E085CLI.EMANFE,E085CLI.INTNET,'
      '       SUM(E301TCR.VLRABE) as VLRABE'
      '       FROM E301TCR'
      'INNER JOIN E085CLI ON E085CLI.CODCLI = E301TCR.CODCLI'
      'WHERE'
      'E301TCR.CODEMP = 1 AND'
      
        'E301TCR.SITTIT IN ('#39'AO'#39','#39'AN'#39','#39'AA'#39','#39'AB'#39','#39'AC'#39','#39'AE'#39','#39'AI'#39','#39'AJ'#39','#39'AP'#39',' +
        #39'AR'#39','#39'AS'#39','#39'AV'#39','#39'AX'#39','#39'CE'#39','#39'CO'#39') AND'
      'E301TCR.VCTPRO  <= :DATFIM AND'
      'E301TCR.VCTPRO > :DATINI AND'
      '((E085CLI.EMANFE <> '#39' '#39') OR (E085CLI.INTNET <> '#39' '#39')) AND'
      'E301TCR.CODFIL = 1 AND'
      'E301TCR.CODTPT IN ('#39'DPL'#39','#39'CHD'#39')'
      
        'GROUP BY E085CLI.CODCLI,E085CLI.NOMCLI,E085CLI.CIDCLI,E085CLI.SI' +
        'GUFS,E085CLI.EMANFE,E085CLI.INTNET'
      'ORDER BY E085CLI.codcli')
    Left = 128
    Top = 80
    object ConsE301TcrCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE301TcrNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsE301TcrCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Size = 60
    end
    object ConsE301TcrSIGUFS: TStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ConsE301TcrEMANFE: TStringField
      FieldName = 'EMANFE'
      Size = 100
    end
    object ConsE301TcrINTNET: TStringField
      FieldName = 'INTNET'
      Size = 100
    end
    object ConsE301TcrVLRABE: TFMTBCDField
      FieldName = 'VLRABE'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object ListaEnvio: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    AfterScroll = ListaEnvioAfterScroll
    Left = 120
    Top = 160
    Data = {
      A70000009619E0BD010000001800000006000000000003000000A70006436F64
      436C690400010000000000064E6F6D436C690100490000000100055749445448
      02000200640006456D61436C6901004900000001000557494454480200020064
      000553616C646F08000400000000000A496E5F656E766961646F010049000000
      010005574944544802000200030006496E5F53656C0100490000000100055749
      4454480200020003000000}
    object ListaEnvioCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object ListaEnvioNomCli: TStringField
      FieldName = 'NomCli'
      Size = 100
    end
    object ListaEnvioEmaCli: TStringField
      FieldName = 'EmaCli'
      Size = 100
    end
    object ListaEnvioSaldo: TFloatField
      FieldName = 'Saldo'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ListaEnvioIn_enviado: TStringField
      FieldName = 'In_enviado'
      Size = 3
    end
    object ListaEnvioIn_Sel: TStringField
      FieldName = 'In_Sel'
      Size = 3
    end
    object ListaEnvioIteSel: TStringField
      FieldKind = fkCalculated
      FieldName = 'IteSel'
      Size = 30
      Calculated = True
    end
  end
  object ConsTitulos: TADOQuery
    Connection = Banco
    CursorType = ctStatic
    OnCalcFields = ConsTitulosCalcFields
    Parameters = <
      item
        Name = 'DATFIM'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DATINI'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'CODCLI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT E085CLI.CODCLI,E085CLI.NOMCLI,'
      
        '       E301TCR.CODEMP,E301TCR.CODFIL,E301TCR.NUMTIT,E301TCR.CODT' +
        'PT,E301TCR.SITTIT,E301TCR.DATEMI,'
      '       E301TCR.VCTPRO,E301TCR.VLRABE,E301TCR.NUMNFV'
      '       FROM E301TCR'
      'INNER JOIN E085CLI ON E085CLI.CODCLI = E301TCR.CODCLI'
      'WHERE'
      'E301TCR.CODEMP = 1 AND'
      
        'E301TCR.SITTIT IN ('#39'AO'#39','#39'AN'#39','#39'AA'#39','#39'AB'#39','#39'AC'#39','#39'AE'#39','#39'AI'#39','#39'AJ'#39','#39'AP'#39',' +
        #39'AR'#39','#39'AS'#39','#39'AV'#39','#39'AX'#39','#39'CE'#39','#39'CO'#39') AND'
      'E301TCR.VCTPRO  <= :DATFIM AND'
      'E301TCR.VCTPRO > :DATINI AND'
      '((E085CLI.EMANFE <> '#39' '#39') OR (E085CLI.INTNET <> '#39' '#39')) AND'
      'E301TCR.CODFIL = 1 AND'
      'E301TCR.CODCLI = :CODCLI'
      'ORDER BY E301TCR.VCTPRO ')
    Left = 208
    Top = 80
    object ConsTitulosCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsTitulosNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
    object ConsTitulosCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object ConsTitulosCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object ConsTitulosNUMTIT: TStringField
      FieldName = 'NUMTIT'
      Size = 15
    end
    object ConsTitulosCODTPT: TStringField
      FieldName = 'CODTPT'
      Size = 3
    end
    object ConsTitulosSITTIT: TStringField
      FieldName = 'SITTIT'
      Size = 2
    end
    object ConsTitulosDATEMI: TDateTimeField
      FieldName = 'DATEMI'
    end
    object ConsTitulosVCTPRO: TDateTimeField
      FieldName = 'VCTPRO'
    end
    object ConsTitulosVLRABE: TBCDField
      FieldName = 'VLRABE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object ConsTitulosvnQtdDias: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'vnQtdDias'
      Calculated = True
    end
    object ConsTitulosNUMNFV: TIntegerField
      FieldName = 'NUMNFV'
    end
  end
end
