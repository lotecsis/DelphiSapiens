unit UImpressoraPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Printers, StdCtrls, Buttons;

type
  TFImpressoraPadrao = class(TForm)
    ListBoxLocal: TListBox;
    ListBoxRede: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    btnListar: TBitBtn;
    btnDefinirPadrao: TBitBtn;
    procedure btnListarClick(Sender: TObject);
    procedure btnDefinirPadraoClick(Sender: TObject);
    procedure ListBoxRedeClick(Sender: TObject);
  private
    { Private declarations }
    function ImpressoraPadrao: String;
    procedure DefinirImpressoraPadrao(const xNome: String);
  public
    { Public declarations }
  end;

var
  FImpressoraPadrao: TFImpressoraPadrao;

implementation

{$R *.dfm}

{ Veja a implementação abaixo para saber qual é a impressora padrão }
function TFImpressoraPadrao.ImpressoraPadrao :String; var

  aDevice : array[0..255] of char;

  aDriver : array[0..255] of char;

  aPort : array[0..255] of char;

  ahDMode : THandle;

begin

  Printer.GetPrinter(aDevice, aDriver, aPort, ahDMode);

  Result := 'Impressora padrão : ' + aDevice;

end;

procedure TFImpressoraPadrao.ListBoxRedeClick(Sender: TObject);
begin
  { DefinirImpressoraPadrao(ListBoxRede.Items.Strings[ListBoxRede.ItemIndex]);
   Caption := ImpressoraPadrao; }
end;

{ Veja a implementação abaixo para definir uma impressora padrão }
procedure TFImpressoraPadrao.DefinirImpressoraPadrao(const xNome: String);
begin
    Printer.PrinterIndex := Printer.Printers.IndexOf(xNome);
end;


procedure TFImpressoraPadrao.btnDefinirPadraoClick(Sender: TObject);
begin
   DefinirImpressoraPadrao(ListBoxRede.Items.Strings[ListBoxRede.ItemIndex]);
   Caption := ImpressoraPadrao;
end;

procedure TFImpressoraPadrao.btnListarClick(Sender: TObject);
var I : Integer;
begin
  ListBoxLocal.Clear;
  ListBoxRede.Clear;

    for I := 0 to Printer.Printers.Count - 1 do
    begin

      if Pos('\\',Printer.Printers.Strings[I]) <> 0 then

        ListBoxRede.Items.Add(Printer.Printers.Strings[I])

      else

        ListBoxLocal.Items.Add(Printer.Printers.Strings[I]);

    end;

  Caption := ImpressoraPadrao;

end;




end.



