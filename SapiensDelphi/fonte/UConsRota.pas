unit UConsRota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB;

type
  TFConsRota = class(TForm)
    dbg1: TDBGrid;
    Label1: TLabel;
    edtRota: TEdit;
    btnSelecionar: TBitBtn;
    dsConsRotManGer: TDataSource;
    procedure edtRotaChange(Sender: TObject);
    procedure dsConsRotManGerDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsRota: TFConsRota;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFConsRota.dbg1DblClick(Sender: TObject);
begin
  if btnSelecionar.Enabled then
     btnSelecionar.Click;
end;

procedure TFConsRota.dsConsRotManGerDataChange(Sender: TObject; Field: TField);
begin
btnSelecionar.Enabled := not DmOra.ConsRotManGer.IsEmpty;
end;

procedure TFConsRota.edtRotaChange(Sender: TObject);
begin
  DmOra.ConsRotManGer.Close;
  DmOra.ConsRotManGer.SQL.Clear;
  DmOra.ConsRotManGer.SQL.Add('select * from usu_trotmanger');
  DmOra.ConsRotManGer.SQL.Add(' where');
  DmOra.ConsRotManGer.SQL.Add(' usu_desrot like'+QuotedStr('%'+edtRota.Text+'%'));
  DmOra.ConsRotManGer.SQL.Add(' order by usu_desrot');
  DmOra.ConsRotManGer.Open;
end;

procedure TFConsRota.FormShow(Sender: TObject);
begin
 DmOra.ConsRotManGer.Open;
 DmOra.ConsRotManGer.First;
 edtRotaChange(Sender);
end;

end.
