unit UConsFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Buttons;

type
  TFConsFuncionarios = class(TForm)
    Label1: TLabel;
    EdNome: TEdit;
    DBGrid1: TDBGrid;
    DsConsFuncionarios: TDataSource;
    BSelecionar: TBitBtn;
    procedure EdNomeChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsFuncionarios: TFConsFuncionarios;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFConsFuncionarios.DBGrid1DblClick(Sender: TObject);
begin
  if not DmOra.ConsFuncionarios.IsEmpty then
     begin
       BSelecionar.Click;
     end;
end;

procedure TFConsFuncionarios.EdNomeChange(Sender: TObject);
begin
    DmOra.ConsFuncionarios.Close;
    DmOra.ConsFuncionarios.SQL.Clear;
    DmOra.ConsFuncionarios.SQL.Add('SELECT FUN.*,');
    DmOra.ConsFuncionarios.SQL.Add('(SELECT F.USU_NOMFUN FROM USU_TRHFUN F WHERE F.USU_NUMCAD = FUN.USU_NUMCAD AND F.USU_CODDEP = FUN.USU_NUMCAD) as TITULAR');
    DmOra.ConsFuncionarios.SQL.Add('FROM USU_TRHFun FUN');
    DmOra.ConsFuncionarios.SQL.Add('WHERE FUN.USU_SITAFA <> 7 AND');
    DmOra.ConsFuncionarios.SQL.Add('FUN.USU_NOMFUN LIKE'+QuotedStr('%'+EdNome.Text+'%'));
    DmOra.ConsFuncionarios.Open;
end;

procedure TFConsFuncionarios.FormShow(Sender: TObject);
begin
  ActiveControl := EdNome;
  EdNome.Clear;
end;

end.
