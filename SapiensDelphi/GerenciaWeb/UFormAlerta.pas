unit UFormAlerta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormAlerta = class(TForm)
    lblTexto: TLabel;
    lblQtdPedidos: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormAlerta: TFormAlerta;

implementation

uses UProcessaPedidos, UPrincipal;

{$R *.dfm}

procedure TFormAlerta.btn1Click(Sender: TObject);
begin
  FProcessaPedidos := TFProcessaPedidos.Create(Self);
  FProcessaPedidos.Show;
end;

procedure TFormAlerta.FormShow(Sender: TObject);
begin
  lblQtdPedidos.Caption := FPrincipal.vaTextoAlerta;
end;

end.
