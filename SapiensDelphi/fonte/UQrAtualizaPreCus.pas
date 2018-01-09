unit UQrAtualizaPreCus;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TQrAtualizaPreCus = class(TQuickRep)
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
  private

  public

  end;

var
  QrAtualizaPreCus: TQrAtualizaPreCus;

implementation

uses UAtualizaPreCus, UDm1, UDm;

{$R *.DFM}

end.
