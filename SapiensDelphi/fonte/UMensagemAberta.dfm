object FMensagemAberta: TFMensagemAberta
  Left = 224
  Top = 150
  BorderIcons = [biSystemMenu]
  Caption = 'Mensagem'
  ClientHeight = 358
  ClientWidth = 314
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 21
    Top = 16
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label2: TLabel
    Left = 21
    Top = 48
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Label3: TLabel
    Left = 8
    Top = 80
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object DBEMensagem: TDBMemo
    Left = 8
    Top = 112
    Width = 297
    Height = 233
    DataField = 'MENSAGEM'
    DataSource = DsMensagem
    ReadOnly = True
    TabOrder = 0
  end
  object DBEData: TDBDateEdit
    Left = 48
    Top = 8
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'DT_MENSAGEM'
    DataSource = DsMensagem
    ReadOnly = True
    NumGlyphs = 2
    TabOrder = 1
  end
  object DBEHora: TDBEdit
    Left = 48
    Top = 40
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'HR_MENSAGEM'
    DataSource = DsMensagem
    ReadOnly = True
    TabOrder = 2
  end
  object DBEUsuario: TDBEdit
    Left = 48
    Top = 72
    Width = 257
    Height = 21
    DataField = 'NM_USUARIO'
    DataSource = DsMensagem
    TabOrder = 3
  end
  object DsMensagem: TDataSource
    AutoEdit = False
    Left = 272
    Top = 16
  end
end
