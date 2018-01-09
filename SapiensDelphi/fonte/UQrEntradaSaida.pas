unit UQrEntradaSaida;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, jpeg;

type
  TQrRelEntradaSaida = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand111111: TQRBand;
    QRDBText4: TQRDBText;
    TitleBand1: TQRBand;
    QRImage1: TQRImage;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    LEntSaida: TQRLabel;
    QRLabel3: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    LData1: TQRLabel;
    QRLabel9: TQRLabel;
    LData2: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
  private

  public

  end;

var
  QrRelEntradaSaida: TQrRelEntradaSaida;

implementation

uses UDataModule5;

{$R *.DFM}

end.
