unit UConsDerivacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons;

type
  TFConsDerivacoes = class(TForm)
    DBGrid1: TDBGrid;
    ConsDerivacoes: TADOQuery;
    ConsDerivacoesCODPRO: TStringField;
    ConsDerivacoesCODDER: TStringField;
    ConsDerivacoesDESDER: TStringField;
    ConsDerivacoesDESCPL: TStringField;
    DsConsDerivacoes: TDataSource;
    BOk: TBitBtn;
    BCancelar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    vaCodPro : string;
  end;

var
  FConsDerivacoes: TFConsDerivacoes;

implementation

uses UDm;

{$R *.dfm}

procedure TFConsDerivacoes.FormShow(Sender: TObject);
begin
  ConsDerivacoes.Close;
  ConsDerivacoes.Parameters.ParamByName('codpro').Value := vaCodPro;
  ConsDerivacoes.Open;
end;

procedure TFConsDerivacoes.DBGrid1DblClick(Sender: TObject);
begin
    BOk.Click;
end;

procedure TFConsDerivacoes.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       BOk.Click;
     end;
end;

end.
