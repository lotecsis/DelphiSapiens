unit UMensagemAberta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask, rxToolEdit, RXDBCtrl;

type
  TFMensagemAberta = class(TForm)
    DBEMensagem: TDBMemo;
    DsMensagem: TDataSource;
    DBEData: TDBDateEdit;
    DBEHora: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEUsuario: TDBEdit;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMensagemAberta: TFMensagemAberta;

implementation

uses UDataModule4;

{$R *.dfm}

end.
