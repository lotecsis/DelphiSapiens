unit FImprimirEtiquetaColchao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons ,Printers;

type
  //usado para a impressao
  TPassThroughData = record
      nLen: Integer;
      Data: array[0..2000] of byte;
   end;

  TImprimirEtiquetaColchao = class(TForm)
    btnImprimir: TBitBtn;
    edtProduto: TEdit;
    edtMedidas: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure ImpressaoParalela(Texto: AnsiString);
  end;

var
  ImprimirEtiquetaColchao: TImprimirEtiquetaColchao;

implementation

{$R *.dfm}

procedure TImprimirEtiquetaColchao.ImpressaoParalela(Texto: AnsiString);
var
   PTBlock: TPassThroughData;
begin
   PTBlock.nLen := Length(Texto);
   StrPCopy(@PTBlock.Data, Texto);
   Escape(printer.handle, PASSTHROUGH, 0, @PTBlock, nil);
end;

procedure TImprimirEtiquetaColchao.btnImprimirClick(Sender: TObject);
var txt : TStringList;
    etiq : string;
begin
    txt := TStringList.Create;
          txt.Add('m');
          txt.Add('L');
          txt.Add('H12');
          txt.Add('PG');
          txt.Add('A2');
          txt.Add('D11');
          txt.Add('131100004300030 ');
          txt.Add('151100003000000 '+edtProduto.Text);
          txt.Add('121100002300030 ');
          txt.Add('151100001700000 '+edtMedidas.Text);
          txt.Add('Q0001');
          txt.Add('E');

          Printer.BeginDoc;

          ImpressaoParalela(txt.Text);

          Printer.EndDoc;
end;

end.
