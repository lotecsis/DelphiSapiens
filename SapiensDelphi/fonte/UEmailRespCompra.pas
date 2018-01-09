unit UEmailRespCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls;

type
  TFEmailRespCompra = class(TForm)
    DBEEmail: TDBMemo;
    DSCompra: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEmailRespCompra: TFEmailRespCompra;

implementation

{$R *.dfm}

end.
