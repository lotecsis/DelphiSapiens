unit UFaleConscoVisualiza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, rxToolEdit, RXDBCtrl, DB, Mask;

type
  TFFaleConoscoVisualiza = class(TForm)
    Label1: TLabel;
    DBECdMensagem: TDBEdit;
    DsFaleConosco: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    DBENome: TDBEdit;
    Label4: TLabel;
    DBETelefone: TDBEdit;
    Label5: TLabel;
    DBEEmail: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    DBEUsuario: TDBEdit;
    DBEData: TDBDateEdit;
    DBEMensagem: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFaleConoscoVisualiza: TFFaleConoscoVisualiza;

implementation

uses UDataModule6;

{$R *.dfm}

end.
