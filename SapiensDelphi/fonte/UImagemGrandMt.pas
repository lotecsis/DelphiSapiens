unit UImagemGrandMt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, RbDrawCore, RbButton, DB;

type
  TFImagemGrandMt = class(TForm)
    Image1: TImage;
    BRemoveImagem: TSpeedButton;
    BAddImagem: TSpeedButton;
    JanelaImagem: TOpenDialog;
    BOk: TRbButton;
    DsImagem: TDataSource;
    procedure BAddImagemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BRemoveImagemClick(Sender: TObject);
    procedure DsImagemStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImagemGrandMt: TFImagemGrandMt;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFImagemGrandMt.BAddImagemClick(Sender: TObject);
var
nomeImagem, caminho,caracter : String;
i : Integer;
begin
  if JanelaImagem.Execute then
  begin
  //pega somente o nome da imagem
    caminho := JanelaImagem.FileName;
    i := length(caminho);
    while (caminho[i] <> '\') do
      begin
        nomeImagem := caminho[i] + nomeImagem;
        i := i - 1;
      end;

    DataModule1.IBDMateriaPrimaIMAGEM_GRANDE.Value := JanelaImagem.FileName;
    DataModule1.IBDMateriaPrimaNM_IMAGEM_GRANDE.AsString := nomeImagem;
    Image1.Picture.LoadFromFile(JanelaImagem.FileName);
  end;
end;

procedure TFImagemGrandMt.FormShow(Sender: TObject);
var
nada : string;
begin
nada := 'C:\SysLider\icones\nada.jpg';

if DataModule1.IBDMateriaPrimaIMAGEM.AsString = '' then
    begin
      Image1.Picture.LoadFromFile(nada);
    end
  else
    begin
     Image1.Picture.LoadFromFile(DataModule1.IBDMateriaPrimaIMAGEM_GRANDE.AsString);
    end;
end;

procedure TFImagemGrandMt.BOkClick(Sender: TObject);
begin
  Close;
end;

procedure TFImagemGrandMt.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
    begin
      Close;
    end;
end;

procedure TFImagemGrandMt.BRemoveImagemClick(Sender: TObject);
var nada : string;
begin
  nada := 'C:\SysLider\icones\nada.jpg';
if DataModule1.IBDMateriaPrimaIMAGEM_GRANDE.AsString <> '' then
  begin
    if Application.MessageBox('Deseja excluir a imagem?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
      Begin
        Image1.Picture.LoadFromFile(nada);
        DataModule1.IBDMateriaPrimaIMAGEM_GRANDE.AsString := '';
      end;
  end;
end;

procedure TFImagemGrandMt.DsImagemStateChange(Sender: TObject);
begin
if DataModule1.IBDMateriaPrima.State in [dsinsert,dsedit]then
    begin
      BAddImagem.Enabled := true;
      BRemoveImagem.Enabled := true;
    end
  else
    begin
      BAddImagem.Enabled := false;
      BRemoveImagem.Enabled := false;
    end;
end;

end.
