unit UAcompanhamentoCotasRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TFAcompanhamentoCotasRep = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Ch1: TCheckBox;
    Ch2: TCheckBox;
    Ch3: TCheckBox;
    Ch4: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAcompanhamentoCotasRep: TFAcompanhamentoCotasRep;

implementation

{$R *.dfm}

end.
