unit UQrEtiquetasProd;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB;

type
  TQrEtiquetasProd = class(TQuickRep)
    DetailBand1: TQRBand;
    DsEtiquetas: TDataSource;
    QRDBText1: TQRDBText;
    procedure QuickRepAfterPreview(Sender: TObject);
  private

  public

  end;

var
  QrEtiquetasProd: TQrEtiquetasProd;

implementation

uses UDataModule5;

{$R *.DFM}

procedure TQrEtiquetasProd.QuickRepAfterPreview(Sender: TObject);
begin
  DataModule5.ClienteEtiquetasProd.Close;
end;

end.
