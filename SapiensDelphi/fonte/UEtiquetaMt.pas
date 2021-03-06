unit UEtiquetaMt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RbDrawCore, RbButton, DB, Mask, DBCtrls;

type
  TFEtiquetaMt = class(TForm)
    EdDsMtNf: TEdit;
    EdCdFornecedor: TEdit;
    EdDsfornecedor: TEdit;
    EdDsMateria: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdQtde: TEdit;
    RbButton1: TRbButton;
    DataSource1: TDataSource;
    EdCdMtNf: TEdit;
    EdMatPrima: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure RbButton1Click(Sender: TObject);
    procedure EdQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCdMtNfKeyPress(Sender: TObject; var Key: Char);
    procedure EdMatPrimaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEtiquetaMt: TFEtiquetaMt;

implementation

uses UConsSimpMtNf, UDataModule4, UQrEtiquetasMtVirtual, UDataModule1;

{$R *.dfm}

procedure TFEtiquetaMt.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TFConsSimpMtNf, FConsSimpMtNf);
  if FConsSimpMtNf.ShowModal = mrOk then
    begin
      EdCdMtNf.Text := IntToStr(DataModule4.IBQConsMatNfCD_PRIMA_NF.AsInteger);
      EdDsMtNf.Text := DataModule4.IBQConsMatNfDS_PRIMA_NF.AsString;
      EdCdFornecedor.Text :=  IntToStr(DataModule4.IBQConsMatNfCD_PESSOA_JU.AsInteger);
      EdDsFornecedor.Text := DataModule4.IBQConsMatNfRZ_SOCIAL.AsString;
      EdMatPrima.Text :=  IntToStr(DataModule4.IBQConsMatNfCD_MAT_PRIMA1.AsInteger);
      EdDsMateria.Text := DataModule4.IBQConsMatNfDS_MAT_PRIMA.AsString;
   end;
end;

procedure TFEtiquetaMt.RbButton1Click(Sender: TObject);
var qtde, cont : Integer;
impresso : string;
begin
if EdQtde.Text <> '' then
  begin
    impresso := 'N';
    qtde := StrToInt(EdQtde.Text);

    DataModule4.IBDEtiquetasMt.Open;
    for cont := 1 to qtde do
      begin
        DataModule4.IBDEtiquetasMt.Insert;
        DataModule4.IBDEtiquetasMtCD_MAT_PRIMA.AsInteger := StrToInt(EdMatPrima.Text);
        DataModule4.IBDEtiquetasMtCD_MAT_PRIMA_NF.AsInteger := StrToInt(EdCdMtNf.Text);
        DataModule4.IBDEtiquetasMtDS_MAT_PRIMA.AsString := EdDsMateria.Text;
        DataModule4.IBDEtiquetasMtIMPRESSO.AsString := 'N';
        DataModule4.IBDEtiquetasMtDT_IMPRESSA.AsDateTime := Date;
        DataModule4.IBDEtiquetasMtQUANTIDADE.AsInteger := 1;
        DataModule4.IBDEtiquetasMt.Post;
      end;
      DataModule1.IBTTransacao.CommitRetaining;

      DataModule4.IBQConsEtiquetasMt.Close;
      DataModule4.IBQConsEtiquetasMt.ParamByName('pimpresso').AsString := impresso;
      DataModule4.IBQConsEtiquetasMt.Open;

      QrEtiquetasMtVirtual.Preview;
  end;

end;

procedure TFEtiquetaMt.EdQtdeKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TFEtiquetaMt.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
if key = #27 then
  begin
     Close;
  end;
end;

procedure TFEtiquetaMt.FormShow(Sender: TObject);
begin
EdDsMtNf.Clear;
EdCdFornecedor.Clear;
EdDsfornecedor.Clear;
EdDsMateria.Clear;
EdQtde.Clear;
EdCdMtNf.Clear;
EdMatPrima.Clear;

end;

procedure TFEtiquetaMt.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFEtiquetaMt.EdCdMtNfKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TFEtiquetaMt.EdMatPrimaKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

end.
