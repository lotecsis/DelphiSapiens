unit UEtiquetaCabeceira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons, Printers;

type
 //usado para a impressao
  TPassThroughData = record
      nLen: Integer;
      Data: array[0..2000] of byte;
   end;

  TFEtiquetaCabeceira = class(TForm)
    cbbNome: TComboBox;
    edtQuantidade: TCurrencyEdit;
    btnImprimir: TBitBtn;
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure ImpressaoParalela(Texto: AnsiString);
  public
    { Public declarations }
  end;

var
  FEtiquetaCabeceira: TFEtiquetaCabeceira;
  H : THandle;

implementation

{$R *.dfm}

procedure TFEtiquetaCabeceira.ImpressaoParalela(Texto: AnsiString);
var
   PTBlock: TPassThroughData;
begin
   PTBlock.nLen := Length(Texto);
   StrPCopy(@PTBlock.Data, Texto);
   Escape(printer.handle, PASSTHROUGH, 0, @PTBlock, nil);
end;

procedure TFEtiquetaCabeceira.btnImprimirClick(Sender: TObject);
var txt : TStringList;
    etiq : string;
    I : Integer;
begin

   if Trim(cbbNome.Text) = '' then
      begin
        Application.MessageBox('Informe o Produto','Aviso',MB_ICONWARNING+MB_OK);
        ActiveControl := cbbNome;
        Abort;
      end;

   if edtQuantidade.AsInteger = 0 then
      begin
        Application.MessageBox('Informe a Quantidade','Aviso',MB_ICONWARNING+MB_OK);
        ActiveControl := edtQuantidade;
        Abort;
      end;


 I := 1;
     while I <= edtQuantidade.AsInteger do
       begin
            txt := TStringList.Create;
            txt.Add('m');
            txt.Add('L');
            txt.Add('H12');
            txt.Add('PG');
            txt.Add('A2');
            txt.Add('D11');
            txt.Add('151200001100030'+cbbNome.Text);
            txt.Add('Q0001');
            txt.Add('E');

            Printer.BeginDoc;

            ImpressaoParalela(txt.Text);
            Printer.EndDoc;

            Inc(I);
       end;
end;

end.
