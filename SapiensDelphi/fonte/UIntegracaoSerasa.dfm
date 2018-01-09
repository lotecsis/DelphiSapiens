object FIntegracaoSerasa: TFIntegracaoSerasa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Integra'#231#227'o com SERASA'
  ClientHeight = 599
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 358
    Top = 62
    Width = 53
    Height = 13
    Caption = 'Remetente'
  end
  object Label2: TLabel
    Left = 353
    Top = 87
    Width = 58
    Height = 13
    Caption = 'Destinatario'
  end
  object btnConsultar: TBitBtn
    Left = 752
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Consultar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btnConsultarClick
  end
  object reResp: TRichEdit
    Left = 0
    Top = 112
    Width = 932
    Height = 265
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'reResp')
    ParentFont = False
    TabOrder = 1
  end
  object btn1: TBitBtn
    Left = 752
    Top = 39
    Width = 75
    Height = 25
    Caption = 'EnviaEmail'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btn1Click
  end
  object btnListar: TBitBtn
    Left = 752
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Listar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnListarClick
  end
  object edtRemetente: TEdit
    Left = 416
    Top = 57
    Width = 257
    Height = 21
    TabOrder = 4
  end
  object btn2: TBitBtn
    Left = 152
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Ler csv'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btn2Click
  end
  object memoClientes: TMemo
    Left = 8
    Top = 392
    Width = 916
    Height = 185
    Lines.Strings = (
      'memoClientes')
    TabOrder = 6
  end
  object edtDestinatario: TEdit
    Left = 416
    Top = 84
    Width = 257
    Height = 21
    TabOrder = 7
  end
  object IdHTTP: TIdHTTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 568
    Top = 8
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 448
    Top = 8
  end
end
