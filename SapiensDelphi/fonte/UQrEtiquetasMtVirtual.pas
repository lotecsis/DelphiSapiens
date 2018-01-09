unit UQrEtiquetasMtVirtual;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB;

type
  TQrEtiquetasMtVirtual = class(TQuickRep)
    DetailBand1: TQRBand;
    DSEtiquetas: TDataSource;
    QRDBText2: TQRDBText;
    procedure QuickRepAfterPreview(Sender: TObject);
  private

  public

  end;

var
  QrEtiquetasMtVirtual: TQrEtiquetasMtVirtual;

implementation

uses UDataModule4, UDataModule1;

{$R *.DFM}

procedure TQrEtiquetasMtVirtual.QuickRepAfterPreview(Sender: TObject);
var impresso : string;
begin
   DataModule4.IBQConsEtiquetasMt.First;
   while not DataModule4.IBQConsEtiquetasMt.Eof do
    begin
      DataModule4.IBDEtiquetasMt.Close;
      DataModule4.IBDEtiquetasMt.ParamByName('pcontrole').AsInteger :=
      DataModule4.IBQConsEtiquetasMtCD_CONTROLE.AsInteger;
      DataModule4.IBDEtiquetasMt.Open;
      DataModule4.IBDEtiquetasMt.Edit;
      DataModule4.IBDEtiquetasMtIMPRESSO.AsString := 'S';
      DataModule4.IBDEtiquetasMt.Post;

      DataModule4.IBQConsEtiquetasMt.Next;

    end;
     DataModule1.IBTTransacao.Commit;

end;

end.
