object FormAlerta: TFormAlerta
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Alerta do Sistema'
  ClientHeight = 257
  ClientWidth = 266
  Color = 8454143
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblTexto: TLabel
    Left = 8
    Top = 14
    Width = 158
    Height = 19
    Caption = 'Pedidos Recebidos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblQtdPedidos: TLabel
    Left = 109
    Top = 82
    Width = 51
    Height = 97
    Alignment = taCenter
    Caption = '1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -80
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
end
