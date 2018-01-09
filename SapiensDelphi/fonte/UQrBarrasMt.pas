unit UQrBarrasMt;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB;

type
  TQrBarrasMt = class(TQuickRep)
    DetailBand1: TQRBand;
    DsBarras: TDataSource;
    QRDBText2: TQRDBText;
    procedure QuickRepAfterPreview(Sender: TObject);
  private

  public

  end;

var
  QrBarrasMt: TQrBarrasMt;

implementation

uses UDataModule4, UDataModule3, UDataModule1;

{$R *.DFM}

procedure TQrBarrasMt.QuickRepAfterPreview(Sender: TObject);
var  impresso : string;
begin
  impresso := 'N';
  DataModule4.IBQApagaBarrasMt.Close;
  DataModule4.IBQApagaBarrasMt.Open;

  //consulta as barras a seremm impressas
  DataModule4.IBQConsBarrasMt.Close;
  DataModule4.IBQConsBarrasMt.ParamByName('pimpresso').AsString := impresso;
  DataModule4.IBQConsBarrasMt.Open;

  DataModule1.IBTTransacao.Commit;


end;

end.
