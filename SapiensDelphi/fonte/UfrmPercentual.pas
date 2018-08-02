unit UfrmPercentual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, Mask, rxToolEdit, DateUtils, AppEvnts;

type
  TfrmPercentual = class(TForm)
    Estof101: TADOQuery;
    Estof1: TADOQuery;
    Colch101: TADOQuery;
    Colch1: TADOQuery;
    Total1: TADOQuery;
    Total101: TADOQuery;
    Colch1VALOR: TFMTBCDField;
    Estof101VALOR: TFMTBCDField;
    Colch101VALOR: TFMTBCDField;
    Estof1VALOR: TFMTBCDField;
    Total1VALOR: TFMTBCDField;
    Total101VALOR: TFMTBCDField;
    btnMostrar: TBitBtn;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lblPer1: TLabel;
    lblPer101: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lblPerEstof1: TLabel;
    lblPerEstof101: TLabel;
    lbl5: TLabel;
    lblPerColch1: TLabel;
    lblPerColch101: TLabel;
    edtPer1: TEdit;
    edtPer101: TEdit;
    edtPerEstof1: TEdit;
    edtPerEstof101: TEdit;
    edtPerColch1: TEdit;
    edtPerColch101: TEdit;
    ApplicationEvents1: TApplicationEvents;
    procedure FormShow(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lblPer1Click(Sender: TObject);
    procedure lblPer101Click(Sender: TObject);
  private
    { Private declarations }
    vaSenha : string;
  public
    { Public declarations }
  end;

var
  frmPercentual: TfrmPercentual;

implementation

uses UDmOra;

{$R *.dfm}

procedure TfrmPercentual.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  if vaSenha = 'F1+A+B' then
     begin
       edtPer1.Visible := True;
       edtPer101.Visible := True;
       edtPerEstof1.Visible := True;
       edtPerEstof101.Visible := True;
       edtPerColch1.Visible := True;
       edtPerColch101.Visible := True;
     end;
end;

procedure TfrmPercentual.btnMostrarClick(Sender: TObject);
var vnTotal, vnPer1, vnPer101 : Double;
    vnTotalEstof, vnPerEstof1, vnPerEstof101 : Double;
    vnTotalColch, vnPerColch1, vnPerColch101 : Double;
begin
  Estof1.Close;
  Estof1.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
  Estof1.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
  Estof1.Open;

  Estof101.Close;
  Estof101.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
  Estof101.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
  Estof101.Open;

  Colch1.Close;
  Colch1.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
  Colch1.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
  Colch1.Open;

  Colch101.Close;
  Colch101.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
  Colch101.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
  Colch101.Open;

  Total1.Close;
  Total1.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
  Total1.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
  Total1.Open;

  Total101.Close;
  Total101.Parameters.ParamByName('DATINI').Value := edtDatIni.Date;
  Total101.Parameters.ParamByName('DATFIM').Value := edtDatFim.Date;
  Total101.Open;

  vnTotal := Total1VALOR.AsFloat + Total101VALOR.AsFloat;
  vnPer1 := (Total1VALOR.AsFloat * 100) / vnTotal;
  vnPer101 := (Total101VALOR.AsFloat * 100) / vnTotal;
  lblPer1.Caption := FormatFloat(',0.00',vnPer1);
  lblPer101.Caption := FormatFloat(',0.00',vnPer101);
  edtPer1.text := FormatFloat(',0.00',Total1VALOR.AsFloat);
  edtPer101.text := FormatFloat(',0.00',Total101VALOR.AsFloat);

  vnTotalEstof := Estof1VALOR.AsFloat + Estof101VALOR.AsFloat;
  vnPerEstof1 := (Estof1VALOR.AsFloat * 100) / vnTotalEstof;
  vnPerEstof101 := (Estof101VALOR.AsFloat * 100) / vnTotalEstof;
  lblPerEstof1.Caption := FormatFloat(',0.00',vnPerEstof1);
  lblPerEstof101.Caption := FormatFloat(',0.00',vnPerEstof101);
  edtPerEstof1.text := FormatFloat(',0.00',Estof1VALOR.AsFloat);
  edtPerEstof101.text := FormatFloat(',0.00',Estof101VALOR.AsFloat);

  vnTotalColch := Colch1VALOR.AsFloat + Colch101VALOR.AsFloat;
  vnPerColch1 := (Colch1VALOR.AsFloat * 100) / vnTotalColch;
  vnPerColch101 := (Colch101VALOR.AsFloat * 100) / vnTotalColch;
  lblPerColch1.Caption := FormatFloat(',0.00',vnPerColch1);
  lblPerColch101.Caption := FormatFloat(',0.00',vnPerColch101);
  edtPerColch1.text := FormatFloat(',0.00',Colch1VALOR.AsFloat);
  edtPerColch101.text := FormatFloat(',0.00',Colch101VALOR.AsFloat);


end;

procedure TfrmPercentual.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
     begin
       vaSenha := 'F1';
     end;
end;

procedure TfrmPercentual.FormShow(Sender: TObject);
begin
  vaSenha := '';
  edtDatIni.Date := StartOfTheMonth(Date);
  edtDatFim.Date := EndOfTheMonth(Date);
  lblPer1.Caption := '';
  lblPer101.Caption := '';
  lblPerEstof1.Caption := '';
  lblPerEstof101.Caption := '';
  lblPerColch1.Caption := '';
  lblPerColch101.Caption := '';
end;

procedure TfrmPercentual.lblPer101Click(Sender: TObject);
begin
if vaSenha = 'F1+A' then
   vaSenha := vaSenha + '+B';
end;

procedure TfrmPercentual.lblPer1Click(Sender: TObject);
begin
if vaSenha = 'F1' then
   vaSenha := vaSenha + '+A';
end;

end.
