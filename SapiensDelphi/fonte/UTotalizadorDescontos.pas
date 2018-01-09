unit UTotalizadorDescontos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit;

type
  TFTotalizadorDescontos = class(TForm)
    edtDesc1: TCurrencyEdit;
    edtDesc2: TCurrencyEdit;
    edtDesc3: TCurrencyEdit;
    edtDesc4: TCurrencyEdit;
    edtDesc5: TCurrencyEdit;
    edtDesc6: TCurrencyEdit;
    edtTotDesc: TCurrencyEdit;
    edtTotGeral: TCurrencyEdit;
    procedure edtDesc1Exit(Sender: TObject);
    procedure edtDesc2Exit(Sender: TObject);
    procedure edtDesc3Exit(Sender: TObject);
    procedure edtDesc4Exit(Sender: TObject);
    procedure edtDesc5Exit(Sender: TObject);
    procedure edtDesc6Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    function calcula(desc1,desc2,desc3,desc4,desc5,desc6 : Real): Real;
  public
    { Public declarations }
    vnTotDesc : real;
    vaStatus : string;
    vnCodEmp,vnCodFil,vnNumCon,vnSeqIte : integer;
  end;

var
  FTotalizadorDescontos: TFTotalizadorDescontos;

implementation

{$R *.dfm}

function TFTotalizadorDescontos.calcula(desc1,desc2,desc3,desc4,desc5,desc6 : Real): Real;
var vnValor, vnTotal: Real;
begin
    vnValor := 100;
    vnValor := vnValor - (vnValor * desc1);
    vnValor := vnValor - (vnValor * desc2);
    vnValor := vnValor - (vnValor * desc3);
    vnValor := vnValor - (vnValor * desc4);
    vnValor := vnValor - (vnValor * desc5);
    vnValor := vnValor - (vnValor * desc6);
    vnTotal := 100 - vnValor;

        Result := vnTotal;

end;
procedure TFTotalizadorDescontos.edtDesc1Exit(Sender: TObject);
begin
    vnTotDesc := calcula(edtDesc1.Value/100,edtDesc2.Value/100,edtDesc3.Value/100,edtDesc4.Value/100,edtDesc5.Value/100,edtDesc6.Value/100);
    edtTotDesc.Value := vnTotDesc;
    edtTotGeral.Value := edtDesc1.Value + edtDesc2.Value + edtDesc3.Value + edtDesc4.Value + edtDesc5.Value + edtDesc6.Value;
end;

procedure TFTotalizadorDescontos.edtDesc2Exit(Sender: TObject);
begin
vnTotDesc := calcula(edtDesc1.Value/100,edtDesc2.Value/100,edtDesc3.Value/100,edtDesc4.Value/100,edtDesc5.Value/100,edtDesc6.Value/100);
    edtTotDesc.Value := vnTotDesc;
    edtTotGeral.Value := edtDesc1.Value + edtDesc2.Value + edtDesc3.Value + edtDesc4.Value + edtDesc5.Value + edtDesc6.Value;
end;

procedure TFTotalizadorDescontos.edtDesc3Exit(Sender: TObject);
begin
vnTotDesc := calcula(edtDesc1.Value/100,edtDesc2.Value/100,edtDesc3.Value/100,edtDesc4.Value/100,edtDesc5.Value/100,edtDesc6.Value/100);
    edtTotDesc.Value := vnTotDesc;
    edtTotGeral.Value := edtDesc1.Value + edtDesc2.Value + edtDesc3.Value + edtDesc4.Value + edtDesc5.Value + edtDesc6.Value;
end;

procedure TFTotalizadorDescontos.edtDesc4Exit(Sender: TObject);
begin
vnTotDesc := calcula(edtDesc1.Value/100,edtDesc2.Value/100,edtDesc3.Value/100,edtDesc4.Value/100,edtDesc5.Value/100,edtDesc6.Value/100);
    edtTotDesc.Value := vnTotDesc;
    edtTotGeral.Value := edtDesc1.Value + edtDesc2.Value + edtDesc3.Value + edtDesc4.Value + edtDesc5.Value + edtDesc6.Value;
end;

procedure TFTotalizadorDescontos.edtDesc5Exit(Sender: TObject);
begin
vnTotDesc := calcula(edtDesc1.Value/100,edtDesc2.Value/100,edtDesc3.Value/100,edtDesc4.Value/100,edtDesc5.Value/100,edtDesc6.Value/100);
    edtTotDesc.Value := vnTotDesc;
    edtTotGeral.Value := edtDesc1.Value + edtDesc2.Value + edtDesc3.Value + edtDesc4.Value + edtDesc5.Value + edtDesc6.Value;
end;

procedure TFTotalizadorDescontos.edtDesc6Change(Sender: TObject);
begin
vnTotDesc := calcula(edtDesc1.Value/100,edtDesc2.Value/100,edtDesc3.Value/100,edtDesc4.Value/100,edtDesc5.Value/100,edtDesc6.Value/100);
    edtTotDesc.Value := vnTotDesc;
    edtTotGeral.Value := edtDesc1.Value + edtDesc2.Value + edtDesc3.Value + edtDesc4.Value + edtDesc5.Value + edtDesc6.Value;
end;

procedure TFTotalizadorDescontos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.



