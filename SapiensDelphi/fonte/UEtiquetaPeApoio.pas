unit UEtiquetaPeApoio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Printers, DateUtils, Mask, rxToolEdit, rxCurrEdit;


type
 //usado para a impressao
  TPassThroughData = record
      nLen: Integer;
      Data: array[0..2000] of byte;
   end;

  TFEtiquetaPeApoio = class(TForm)
    btn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    edtQtdClick: TCurrencyEdit;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ImpressaoParalela(Texto: AnsiString);
  public
    { Public declarations }
  end;

var
  FEtiquetaPeApoio: TFEtiquetaPeApoio;
  H : THandle;

implementation

{$R *.dfm}

//procedimento para mandar a impressao das etiquetas
procedure TFEtiquetaPeApoio.FormShow(Sender: TObject);
begin
  edtQtdClick.AsInteger := 0;
end;

procedure TFEtiquetaPeApoio.ImpressaoParalela(Texto: AnsiString);
var
   PTBlock: TPassThroughData;
begin
   PTBlock.nLen := Length(Texto);
   StrPCopy(@PTBlock.Data, Texto);
   Escape(printer.handle, PASSTHROUGH, 0, @PTBlock, nil);
end;

procedure TFEtiquetaPeApoio.btn1Click(Sender: TObject);
var txt : TStringList;
    etiq : string;
    I : Integer;
begin
 I := 1;  //para vania di a17/10/2014
     while I <= 10 do
       begin
            txt := TStringList.Create;
            txt.Add('m');
            txt.Add('L');
            txt.Add('H12');
            txt.Add('PG');
            txt.Add('A2');
            txt.Add('D11');
            txt.Add('161100001100030'+'PE DE APOIO');
            txt.Add('Q0001');
            txt.Add('E');

            Printer.BeginDoc;

            ImpressaoParalela(txt.Text);
            Printer.EndDoc;

            Inc(I);
       end;

    edtQtdClick.AsInteger := edtQtdClick.AsInteger + 1;
end;

end.
