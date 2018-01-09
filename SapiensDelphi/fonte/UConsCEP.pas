unit UConsCEP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, Buttons;

type
  TFConsCEP = class(TForm)
    dbg1: TDBGrid;
    Label1: TLabel;
    edtCidade: TEdit;
    Label2: TLabel;
    edtUF: TEdit;
    dsConsCEP: TDataSource;
    btnSelecionar: TBitBtn;
    procedure edtCidadeChange(Sender: TObject);
    procedure dsConsCEPDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsCEP: TFConsCEP;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFConsCEP.dbg1DblClick(Sender: TObject);
begin
  if btnSelecionar.Enabled then
     btnSelecionar.Click;
end;

procedure TFConsCEP.dsConsCEPDataChange(Sender: TObject; Field: TField);
begin
  btnSelecionar.Enabled := not DmOra.ConsCEP.IsEmpty;
end;

procedure TFConsCEP.edtCidadeChange(Sender: TObject);
begin
  DmOra.ConsCEP.Close;
  DmOra.ConsCEP.SQL.Clear;
  DmOra.ConsCEP.SQL.Add('select * from e008cep');
  DmOra.ConsCEP.SQL.Add(' where');
  DmOra.ConsCEP.SQL.Add(' nomcid like '+QuotedStr('%'+edtCidade.Text+'%'));

  if Trim(edtUF.Text) <> '' then
     begin
       DmOra.ConsCEP.SQL.Add(' and sigufs =' +QuotedStr(edtUF.Text));
     end;
  DmOra.ConsCEP.SQL.Add(' order by nomcid');
  DmOra.ConsCEP.Open;
end;

procedure TFConsCEP.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;

if Key = #27 then
     begin
       Close;
     end;
end;

procedure TFConsCEP.FormShow(Sender: TObject);
begin
 DmOra.ConsCEP.Open;
 DmOra.ConsCEP.First;
 edtCidadeChange(Sender);

end;

end.
