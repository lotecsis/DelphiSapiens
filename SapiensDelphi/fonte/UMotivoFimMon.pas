unit UMotivoFimMon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFMotivoFimMon = class(TForm)
    memoMotivo: TMemo;
    btnConfirmar: TBitBtn;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMotivoFimMon: TFMotivoFimMon;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFMotivoFimMon.btnConfirmarClick(Sender: TObject);
begin
  if Trim(memoMotivo.Text) <> '' then
     begin
        DmOra.CadUsu_TE085Moni.Edit;
        DmOra.CadUsu_TE085MoniUSU_MOTFIM.Value := memoMotivo.Text;
        Close;
     end;
end;

procedure TFMotivoFimMon.FormShow(Sender: TObject);
begin
memoMotivo.Clear;
ActiveControl := memoMotivo;
end;

end.
