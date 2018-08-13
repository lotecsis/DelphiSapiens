object dmPrototipo: TdmPrototipo
  OldCreateOrder = False
  Height = 438
  Width = 577
  object Banco: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDAORA.1;Password=sappro;User ID=sappro;Data Source=li' +
      'derlar;Persist Security Info=True'
    LoginPrompt = False
    Provider = 'MSDAORA.1'
    Left = 24
    Top = 24
  end
  object CadE120Ped: TADOQuery
    Connection = Banco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e120ped.*'
      '  from e120ped'
      '  where'
      '    e120ped.numped = :numped and'
      '    e120ped.codemp = 1 and'
      '    e120ped.codfil = 1')
    Left = 104
    Top = 136
  end
  object CadE120Ipd: TADOQuery
    Connection = Banco
    Parameters = <
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
      'select e120ipd.*'
      '  from e120ipd'
      '  where'
      '    e120ipd.numped = :numped and'
      '    e120ipd.seqipd = :seqipd and'
      '    e120ipd.codemp = 1 and'
      '    e120ipd.codfil = 1')
    Left = 104
    Top = 192
  end
  object CadE120Rat: TADOQuery
    Connection = Banco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqrat'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e120rat.*'
      '  from e120rat'
      '   where numped = :numped and'
      '              seqrat = :seqrat and'
      '         codemp = 1 and'
      '         codfil = 1'
      '   order by seqrat')
    Left = 104
    Top = 248
  end
  object CadE120Obs: TADOQuery
    Connection = Banco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numped'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'seqobs'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select e120Obs.*'
      '  from e120Obs'
      '   where numped = :numped and'
      '              seqobs = :seqobs and'
      '              codemp = 1 and'
      '              codfil = 1'
      '   order by seqobs')
    Left = 104
    Top = 304
  end
  object ConsE085Cli: TADOQuery
    Connection = Banco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codcli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select codcli, nomcli'
      '  from e085cli'
      '  where'
      '    codcli = :codcli')
    Left = 208
    Top = 144
    object ConsE085CliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ConsE085CliNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 100
    end
  end
end
