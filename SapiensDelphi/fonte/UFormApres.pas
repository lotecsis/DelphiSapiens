unit UFormApres;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, ComCtrls;

type
  TApresForm = class(TForm)
    Image1: TImage;
    ProgressBar1: TProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ApresForm: TApresForm;

implementation

{$R *.dfm}

end.
